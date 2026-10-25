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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A280500: Square array for division in ring GF(2)[X]: A(r,c) = r/c, or 0 if c is not a divisor of r, where the binary expansion of each number defines the corresponding (0,1)-polynomial.

The programs for A280500, there is no canonical definition to state claims against.
-/

/-! ## A280500.P13978498289799666165

`A176919(A038722(n+1)*A333275(A141759(n)))`
-/

namespace A280500.P13978498289799666165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176919 (A038722 (n + 1) * A333275 (A141759 n).toNat).toNat

end

end A280500.P13978498289799666165

/-! ## A280500.P6098584444356534244

`A176919(A038722(n+1)/A333275(A141759(n)))`
-/

namespace A280500.P6098584444356534244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176919 (SequenceMachineLib.roundAway ((A038722 (n + 1) : ℚ) / (A333275 (A141759 n).toNat : ℚ))).toNat

end

end A280500.P6098584444356534244

/-! ## A280500.P13585596022406883614

`A176919(A038722(n+1)*A117358(A112714(n+1)))`
-/

namespace A280500.P13585596022406883614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176919 (A038722 (n + 1) * A117358 (A112714 (n + 1)).toNat).toNat

end

end A280500.P13585596022406883614

/-! ## A280500.P10459683283473931881

`A176919(A038722(n+1)%A038722(A178574(n+1)))`
-/

namespace A280500.P10459683283473931881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176919 (Int.tmod (A038722 (n + 1)) (A038722 (A178574 (n + 1)).toNat)).toNat

end

end A280500.P10459683283473931881

/-! ## A280500.P11735124511584201974

`A018293(A007318(n+2))*A286561(n+1)`
-/

namespace A280500.P11735124511584201974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018293 (A007318 (n + 2)).toNat * A286561 (n + 1)

end

end A280500.P11735124511584201974

/-!
# A280501: "Blue kernel" of n: a(n) = A091255(n, A193231(n)).

The programs for A280501, there is no canonical definition to state claims against.
-/

/-! ## A280501.P892019203293491543

`A280499(A280502(n+1)+∑[n])`
-/

namespace A280501.P892019203293491543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280499 (A280502 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280501.P892019203293491543

/-! ## A280501.P6272546388463161128

`A280494(A000124(n+1)-A280502(n+1))`
-/

namespace A280501.P6272546388463161128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280494 (A000124 (n + 1) - A280502 (n + 1)).toNat

end

end A280501.P6272546388463161128

/-!
# A280502: a(n) = A280500(n, A280501(n)).

The programs for A280502, there is no canonical definition to state claims against.
-/

/-! ## A280502.P13106864011069161917

`A280499(A280501(n+1)+∑[n])`
-/

namespace A280502.P13106864011069161917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280499 (A280501 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280502.P13106864011069161917

/-! ## A280502.P4504875839825342516

`A280494(∑[n+1]+1-A280501(n+1))`
-/

namespace A280502.P4504875839825342516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280494 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A280501 (n + 1)).toNat

end

end A280502.P4504875839825342516

/-!
# A280503: a(n) = A091255(n,A056539(n)).

The programs for A280503, there is no canonical definition to state claims against.
-/

/-! ## A280503.P17070541794489117970

`A280499(A280504(n+1)+∑[n])`
-/

namespace A280503.P17070541794489117970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280499 (A280504 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280503.P17070541794489117970

/-! ## A280503.P11106248677255604878

`A280494(A000124(n+1)-A280504(n+1))`
-/

namespace A280503.P11106248677255604878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280494 (A000124 (n + 1) - A280504 (n + 1)).toNat

end

end A280503.P11106248677255604878

/-! ## A280503.P8197554666596207335

`A141709(A141709(n+1))/A141709(A280504(n+1))`
-/

namespace A280503.P8197554666596207335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141709 (A141709 (n + 1)).toNat : ℚ) / (A141709 (A280504 (n + 1)).toNat : ℚ)

end

end A280503.P8197554666596207335

/-! ## A280503.P7041208640901980403

`A120229(A120229(n+1))/A280504(n+1)`
-/

namespace A280503.P7041208640901980403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120229 (A120229 (n + 1)).toNat : ℚ) / (A280504 (n + 1) : ℚ)

end

end A280503.P7041208640901980403

/-! ## A280503.P12505001612155115434

`A194101(A194100(n+1))/A280504(n+1)`
-/

namespace A280503.P12505001612155115434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194101 (A194100 (n + 1)).toNat : ℚ) / (A280504 (n + 1) : ℚ)

end

end A280503.P12505001612155115434

/-!
# A280504: a(n) = A280500(n,A280503(n)).

The programs for A280504, there is no canonical definition to state claims against.
-/

/-! ## A280504.P7583616173652976750

`A280499(A280503(n+1)+∑[n])`
-/

namespace A280504.P7583616173652976750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280499 (A280503 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280504.P7583616173652976750

/-! ## A280504.P16447077885955079923

`A280494(∑[n+1]+1-A280503(n+1))`
-/

namespace A280504.P16447077885955079923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280494 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A280503 (n + 1)).toNat

end

end A280504.P16447077885955079923

/-! ## A280504.P255792567245280184

`A355525(A000040(n+1))/A280503(n+1)`
-/

namespace A280504.P255792567245280184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355525 (A000040 (n + 1)).toNat : ℚ) / (A280503 (n + 1) : ℚ)

end

end A280504.P255792567245280184

/-! ## A280504.P1951945389780006396

`(n+1)/A280503(n+1)%A280532(n+3)`
-/

namespace A280504.P1951945389780006396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.tmod (A280503 (n + 1)) (A280532 (n + 3)) : ℚ)

end

end A280504.P1951945389780006396

/-! ## A280504.P8668086591626852789

`A120229(A120229(n+1))/A280503(n+1)`
-/

namespace A280504.P8668086591626852789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120229 (A120229 (n + 1)).toNat : ℚ) / (A280503 (n + 1) : ℚ)

end

end A280504.P8668086591626852789

/-!
# A280505: The palindromic kernel of n in base 2 (with carryless GF(2)[X] factorization): a(n) = A091255(n,A057889(n)).

The programs for A280505, there is no canonical definition to state claims against.
-/

/-! ## A280505.P17522179618783557393

`2^val(n+1, 2)*A280503((n+1)/2^val(n+1, 2))`
-/

namespace A280505.P17522179618783557393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A280503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A280505.P17522179618783557393

/-! ## A280505.P9523981856155253884

`A006519(n+1)*A280503(A000265(n+1))`
-/

namespace A280505.P9523981856155253884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A280503 (A000265 (n + 1)).toNat

end

end A280505.P9523981856155253884

/-! ## A280505.P8986806289010014382

`lcm(A006519(n+3+n+n), A280503(A000265(n+1)))`
-/

namespace A280505.P8986806289010014382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (n + 3 + n + n)) (A280503 (A000265 (n + 1)).toNat)

end

end A280505.P8986806289010014382

/-! ## A280505.P11284918415634759996

`A280499(A280506(n+1)+∑[n])`
-/

namespace A280505.P11284918415634759996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280499 (A280506 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A280505.P11284918415634759996

/-! ## A280505.P10372986210827131933

`A280494(∑[n+1]+1-A280506(n+1))`
-/

namespace A280505.P10372986210827131933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280494 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A280506 (n + 1)).toNat

end

end A280505.P10372986210827131933

/-!
# A280506: Nonpalindromic part of n in base 2 (with carryless GF(2)[X] factorization): a(n) = A280500(n,A280505(n)).

The programs for A280506, there is no canonical definition to state claims against.
-/

/-! ## A280506.P1239635540734750468

`A280504((n+1)*2^-val(n+1, 2))`
-/

namespace A280506.P1239635540734750468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280504 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ))).toNat

end

end A280506.P1239635540734750468

/-! ## A280506.P7881246217830678373

`A280504(2^(log2(n+1)-val(n+1, 2)))`
-/

namespace A280506.P7881246217830678373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280504 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)))).toNat

end

end A280506.P7881246217830678373

/-! ## A280506.P1119602801547827630

`A280504((n+1)/and(n+1, -(n+1)))`
-/

namespace A280506.P1119602801547827630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280504 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A280506.P1119602801547827630

/-! ## A280506.P17444013491865374706

`A280504(A000265(n+1))`
-/

namespace A280506.P17444013491865374706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280504 (A000265 (n + 1)).toNat

end

end A280506.P17444013491865374706

/-! ## A280506.P11265487828844956757

`A280504(A153733(n)+1)`
-/

namespace A280506.P11265487828844956757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280504 (A153733 n + 1).toNat

end

end A280506.P11265487828844956757

/-! ## A280506.P17796683624070782483

`A280504(A322250(n+1)+1)`
-/

namespace A280506.P17796683624070782483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280504 (A322250 (n + 1) + 1).toNat

end

end A280506.P17796683624070782483

/-! ## A280506.P10332765934838237329

`A280504(or(1, 2*A025480(n)+1))`
-/

namespace A280506.P10332765934838237329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280504 (Int.lor 1 (2 * A025480 n + 1)).toNat

end

end A280506.P10332765934838237329

/-! ## A280506.P2766436037186950495

`A280504(gcd(A060435(n+1), n+1))`
-/

namespace A280506.P2766436037186950495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280504 (Int.gcd (A060435 (n + 1)) (n + 1 : ℤ))

end

end A280506.P2766436037186950495

/-!
# A280507: a(n) = n XOR A193231(n).

The programs for A280507, there is no canonical definition to state claims against.
-/

/-! ## A280507.P6763870896243988760

`xor(n, A193231(n))`
-/

namespace A280507.P6763870896243988760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A193231 n)

end

end A280507.P6763870896243988760

/-! ## A280507.P9949491743699451994

`A234612(xor(A003188(n), A234612(n)))`
-/

namespace A280507.P9949491743699451994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (Int.xor (A003188 n) (A234612 n)).toNat

end

end A280507.P9949491743699451994

/-! ## A280507.P11248677802506991274

`xor(n, A234612(floor(xor(n, 2*n)/2)))`
-/

namespace A280507.P11248677802506991274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A234612 ⌊(Nat.xor n (2 * n) : ℚ) / 2⌋.toNat)

end

end A280507.P11248677802506991274

/-! ## A280507.P5717699606719856467

`xor(n, A234612(xor(n, n-∑[n%2])))`
-/

namespace A280507.P5717699606719856467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A234612 (Int.xor (n : ℤ) ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat)

end

end A280507.P5717699606719856467

/-! ## A280507.P1086895111834690326

`xor(n, A234612(xor(n, (or(1, n)-1)/2)))`
-/

namespace A280507.P1086895111834690326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A234612 (Int.xor (n : ℤ) (SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2))).toNat)

end

end A280507.P1086895111834690326

/-! ## A280507.P9401664231107317536

`xor(n, A234612(ceil(xor(n-1, 2*n)/2)))`
-/

namespace A280507.P9401664231107317536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A234612 ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉.toNat)

end

end A280507.P9401664231107317536

/-! ## A280507.P5307024923144986232

`xor(n, A234612(round(xor(n+1, 2*n+1)/2)))`
-/

namespace A280507.P5307024923144986232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A234612 (SequenceMachineLib.roundAway ((Nat.xor (n + 1) (2 * n + 1) : ℚ) / 2)).toNat)

end

end A280507.P5307024923144986232

/-! ## A280507.P962071196782272100

`xor(n, A234612(A003188(n)))`
-/

namespace A280507.P962071196782272100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A234612 (A003188 n).toNat)

end

end A280507.P962071196782272100

/-! ## A280507.P8425341677581024202

`xor(n, A006068(A234612(n)))`
-/

namespace A280507.P8425341677581024202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A006068 (A234612 n).toNat)

end

end A280507.P8425341677581024202

/-! ## A280507.P15576274737970264710

`xor(n, A234612(xor(n, A004526(n))))`
-/

namespace A280507.P15576274737970264710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A234612 (Int.xor (n : ℤ) (A004526 n)).toNat)

end

end A280507.P15576274737970264710

/-! ## A280507.P15812393253921112001

`xor(n, A234612(xor(A109613(n)-1, 2*n)/2))`
-/

namespace A280507.P15812393253921112001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A234612 (SequenceMachineLib.roundAway ((Int.xor (A109613 n - 1) (2 * n : ℤ) : ℚ) / 2)).toNat)

end

end A280507.P15812393253921112001

/-! ## A280507.P10090138950673026076

`xor(n, A234612(or(n, 2*n)+A008619(n)-(2*n+1)))`
-/

namespace A280507.P10090138950673026076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A234612 ((Nat.lor n (2 * n) : ℤ) + (A008619 n - (2 * n + 1 : ℤ))).toNat)

end

end A280507.P10090138950673026076

/-! ## A280507.P5289483083971758109

`xor(n, A234613(2*n)/2)`
-/

namespace A280507.P5289483083971758109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((A234613 (2 * n) : ℚ) / 2))

end

end A280507.P5289483083971758109

/-! ## A280507.P12770688844579342529

`xor(n, A245812(A234026(n)))`
-/

namespace A280507.P12770688844579342529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A245812 (A234026 n).toNat)

end

end A280507.P12770688844579342529

/-! ## A280507.P6250862097900670069

`xor(n, A165199(A245443(n)))`
-/

namespace A280507.P6250862097900670069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A165199 (A245443 n).toNat)

end

end A280507.P6250862097900670069

/-! ## A280507.P15457713755671792465

`A059906(A118666(n))`
-/

namespace A280507.P15457713755671792465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (A118666 n).toNat

end

end A280507.P15457713755671792465

/-!
# A280508: a(n) = n XOR A057889(n).

The programs for A280508, the canonical program `A280508.P2465948265885217128` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280508 has offset 0).

The definition of A280508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280508.P2465948265885217128

`xor(n, A057889(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A280508

/-- `xor(n, A057889(n))` -/
def P2465948265885217128.Spec : Prop :=
  ∀ n, P2465948265885217128.a n = A280508 n

theorem P2465948265885217128.correct : P2465948265885217128.Spec := by
  intro n
  simp only [A280508]

end A280508

/-! ## A280508.P2645295593586232797

`xor(n, A266642(A263272(n)))`
-/

namespace A280508.P2645295593586232797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A266642 (A263272 n).toNat)

end

end A280508.P2645295593586232797

namespace A280508

/-- `xor(n, A266642(A263272(n)))` -/
def P2645295593586232797.Spec : Prop :=
  ∀ n, P2645295593586232797.a n = A280508 n

end A280508

/-! ## A280508.P17724871761122627778

`xor(n, A266642(A264984(n)/2))`
-/

namespace A280508.P17724871761122627778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A266642 (SequenceMachineLib.roundAway ((A264984 n : ℚ) / 2)).toNat)

end

end A280508.P17724871761122627778

namespace A280508

/-- `xor(n, A266642(A264984(n)/2))` -/
def P17724871761122627778.Spec : Prop :=
  ∀ n, P17724871761122627778.a n = A280508 n

end A280508

/-! ## A280508.P4630628149945373140

`xor(n, A263272(A266641(n)))`
-/

namespace A280508.P4630628149945373140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A263272 (A266641 n).toNat)

end

end A280508.P4630628149945373140

namespace A280508

/-- `xor(n, A263272(A266641(n)))` -/
def P4630628149945373140.Spec : Prop :=
  ∀ n, P4630628149945373140.a n = A280508 n

end A280508

/-! ## A280508.P1173036900387760026

`xor(n, A265369(A264966(n)))`
-/

namespace A280508.P1173036900387760026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A265369 (A264966 n).toNat)

end

end A280508.P1173036900387760026

namespace A280508

/-- `xor(n, A265369(A264966(n)))` -/
def P1173036900387760026.Spec : Prop :=
  ∀ n, P1173036900387760026.a n = A280508 n

end A280508

/-! ## A280508.P12074705458272929416

`xor(n, A264966(A263273(n)))`
-/

namespace A280508.P12074705458272929416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A264966 (A263273 n).toNat)

end

end A280508.P12074705458272929416

namespace A280508

/-- `xor(n, A264966(A263273(n)))` -/
def P12074705458272929416.Spec : Prop :=
  ∀ n, P12074705458272929416.a n = A280508 n

end A280508

/-! ## A280508.P444926587570906795

`xor(n, A263273(A264965(n)))`
-/

namespace A280508.P444926587570906795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A263273 (A264965 n).toNat)

end

end A280508.P444926587570906795

namespace A280508

/-- `xor(n, A263273(A264965(n)))` -/
def P444926587570906795.Spec : Prop :=
  ∀ n, P444926587570906795.a n = A280508 n

end A280508

/-! ## A280508.P9092671821389852640

`xor(n, A264965(A265369(n)))`
-/

namespace A280508.P9092671821389852640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A264965 (A265369 n).toNat)

end

end A280508.P9092671821389852640

namespace A280508

/-- `xor(n, A264965(A265369(n)))` -/
def P9092671821389852640.Spec : Prop :=
  ∀ n, P9092671821389852640.a n = A280508 n

end A280508

/-!
# A280509: a(n) = A051064(A246200(n)); 3-adic valuation of A057889(3*n).

The programs for A280509, the canonical program `A280509.P5809525915846432635` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280509 has offset 1).

The definition of A280509 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246200, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280509.P5809525915846432635

`A051064(A246200(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A280509

/-- `A051064(A246200(n+1))` -/
def P5809525915846432635.Spec : Prop :=
  ∀ n, P5809525915846432635.a n = A280509 (n + 1)

theorem P5809525915846432635.correct : P5809525915846432635.Spec := by
  intro n
  simp only [A280509, Nat.add_sub_cancel]

end A280509

/-! ## A280509.P1012716719449663440

`val(A057889(3*(n+1)), 3)`
-/

namespace A280509.P1012716719449663440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A057889 (3 * (n + 1))).toNat 3

end

end A280509.P1012716719449663440

namespace A280509

/-- `val(A057889(3*(n+1)), 3)` -/
def P1012716719449663440.Spec : Prop :=
  ∀ n, (P1012716719449663440.a n : ℤ) = A280509 (n + 1)

end A280509

/-! ## A280509.P11702148051023603823

`A007949(A057889(3*(n+1)))`
-/

namespace A280509.P11702148051023603823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A057889 (3 * (n + 1))).toNat

end

end A280509.P11702148051023603823

namespace A280509

/-- `A007949(A057889(3*(n+1)))` -/
def P11702148051023603823.Spec : Prop :=
  ∀ n, P11702148051023603823.a n = A280509 (n + 1)

end A280509

/-! ## A280509.P14028640564731984847

`A051064(A264967(n+1))`
-/

namespace A280509.P14028640564731984847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A264967 (n + 1)).toNat

end

end A280509.P14028640564731984847

namespace A280509

/-- `A051064(A264967(n+1))` -/
def P14028640564731984847.Spec : Prop :=
  ∀ n, P14028640564731984847.a n = A280509 (n + 1)

end A280509

/-! ## A280509.P16490454275109006639

`A051064(A266643(n+1))`
-/

namespace A280509.P16490454275109006639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (A266643 (n + 1)).toNat

end

end A280509.P16490454275109006639

namespace A280509

/-- `A051064(A266643(n+1))` -/
def P16490454275109006639.Spec : Prop :=
  ∀ n, P16490454275109006639.a n = A280509 (n + 1)

end A280509

/-! ## A280509.P5949397575499290486

`val(A030101(A166466(n+1)), 3)`
-/

namespace A280509.P5949397575499290486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A030101 (A166466 (n + 1)).toNat).toNat 3

end

end A280509.P5949397575499290486

namespace A280509

/-- `val(A030101(A166466(n+1)), 3)` -/
def P5949397575499290486.Spec : Prop :=
  ∀ n, (P5949397575499290486.a n : ℤ) = A280509 (n + 1)

end A280509

/-! ## A280509.P11485211385095154224

`val(A030101(3*(n+1)), 3)`
-/

namespace A280509.P11485211385095154224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A030101 (3 * (n + 1))).toNat 3

end

end A280509.P11485211385095154224

namespace A280509

/-- `val(A030101(3*(n+1)), 3)` -/
def P11485211385095154224.Spec : Prop :=
  ∀ n, (P11485211385095154224.a n : ℤ) = A280509 (n + 1)

end A280509

/-!
# A280510: Index sequence of the Thue-Morse sequence (A010060) as a block-fractal sequence.

The programs for A280510, the canonical program `A280510.P15411263887369726679` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280510 has offset 1).

The definition of A280510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280510.P15411263887369726679

`2*a(floor(n/2))` with `a(0)=3, a(1)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280510

/-- `2*a(floor(n/2))` -/
def P15411263887369726679.Spec : Prop :=
  ∀ n, (P15411263887369726679.a n : ℤ) = A280510 (n + 1)

theorem P15411263887369726679.correct : P15411263887369726679.Spec := by
  intro n
  simp only [A280510, Nat.add_sub_cancel]

end A280510

/-! ## A280510.P7226347825907612780

`3*and(n, a(n-1))` with `a(0)=3`
-/

namespace A280510.P7226347825907612780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 * Nat.land n (a (n - 1))

end

end A280510.P7226347825907612780

namespace A280510

/-- `3*and(n, a(n-1))` -/
def P7226347825907612780.Spec : Prop :=
  ∀ n, (P7226347825907612780.a n : ℤ) = A280510 (n + 1)

end A280510

/-! ## A280510.P4309270812459557685

`lcm(3, and(n, a(n-1)))` with `a(0)=3`
-/

namespace A280510.P4309270812459557685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lcm 3 (Nat.land n (a (n - 1)))

end

end A280510.P4309270812459557685

namespace A280510

/-- `lcm(3, and(n, a(n-1)))` -/
def P4309270812459557685.Spec : Prop :=
  ∀ n, (P4309270812459557685.a n : ℤ) = A280510 (n + 1)

end A280510

/-! ## A280510.P16602634390354332885

`3*2^floor(log2(or(1, n)))`
-/

namespace A280510.P16602634390354332885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 2 ^ Nat.log 2 (Nat.lor 1 n)

end

end A280510.P16602634390354332885

namespace A280510

/-- `3*2^floor(log2(or(1, n)))` -/
def P16602634390354332885.Spec : Prop :=
  ∀ n, (P16602634390354332885.a n : ℤ) = A280510 (n + 1)

end A280510

/-! ## A280510.P11681499744547864074

`lcm(6, 2^ceil(log2(n+1)))/2`
-/

namespace A280510.P11681499744547864074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 6 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))) : ℚ) / 2

end

end A280510.P11681499744547864074

namespace A280510

/-- `lcm(6, 2^ceil(log2(n+1)))/2` -/
def P11681499744547864074.Spec : Prop :=
  ∀ n, P11681499744547864074.a n = (A280510 (n + 1) : ℚ)

end A280510

/-! ## A280510.P9990027012885786642

`3*ceil(2^(ceil(log2(n+1))-1))`
-/

namespace A280510.P9990027012885786642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ - 1 : ℤ)⌉

end

end A280510.P9990027012885786642

namespace A280510

/-- `3*ceil(2^(ceil(log2(n+1))-1))` -/
def P9990027012885786642.Spec : Prop :=
  ∀ n, P9990027012885786642.a n = A280510 (n + 1)

end A280510

/-! ## A280510.P8902777030257303139

`a(floor(n/2))/(1-1/2)` with `a(0)=3, a(1)=3`
-/

namespace A280510.P8902777030257303139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 3] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat / (1 - (1 : ℚ) / 2)

end

end A280510.P8902777030257303139

namespace A280510

/-- `a(floor(n/2))/(1-1/2)` -/
def P8902777030257303139.Spec : Prop :=
  ∀ n, P8902777030257303139.a n = (A280510 (n + 1) : ℚ)

end A280510

/-! ## A280510.P15150496605979323022

`3*n-(3*n)%a(n-1)` with `a(0)=3`
-/

namespace A280510.P15150496605979323022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (3 * n : ℤ) - Int.tmod (3 * n : ℤ) (a (n - 1))

end

end A280510.P15150496605979323022

namespace A280510

/-- `3*n-(3*n)%a(n-1)` -/
def P15150496605979323022.Spec : Prop :=
  ∀ n, P15150496605979323022.a n = A280510 (n + 1)

end A280510

/-! ## A280510.P6412134512680556285

`A265026(or(1, n))`
-/

namespace A280510.P6412134512680556285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265026 (Nat.lor 1 n)

end

end A280510.P6412134512680556285

namespace A280510

/-- `A265026(or(1, n))` -/
def P6412134512680556285.Spec : Prop :=
  ∀ n, P6412134512680556285.a n = A280510 (n + 1)

end A280510

/-! ## A280510.P10734337339333139785

`A099892(n)+a(n-1)` with `a(0)=3, a(1)=3`
-/

namespace A280510.P10734337339333139785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n a =>
  A099892 n + a (n - 1)

end

end A280510.P10734337339333139785

namespace A280510

/-- `A099892(n)+a(n-1)` -/
def P10734337339333139785.Spec : Prop :=
  ∀ n, P10734337339333139785.a n = A280510 (n + 1)

end A280510

/-! ## A280510.P13948238871385410563

`A003945(A070939(n))`
-/

namespace A280510.P13948238871385410563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (A070939 n).toNat

end

end A280510.P13948238871385410563

namespace A280510

/-- `A003945(A070939(n))` -/
def P13948238871385410563.Spec : Prop :=
  ∀ n, P13948238871385410563.a n = A280510 (n + 1)

end A280510

/-! ## A280510.P6898456297383078675

`A265026(A109613(n))`
-/

namespace A280510.P6898456297383078675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265026 (A109613 n).toNat

end

end A280510.P6898456297383078675

namespace A280510

/-- `A265026(A109613(n))` -/
def P6898456297383078675.Spec : Prop :=
  ∀ n, P6898456297383078675.a n = A280510 (n + 1)

end A280510

/-! ## A280510.P10053819342478837836

`A007283(A070939(n)-1)`
-/

namespace A280510.P10053819342478837836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 (A070939 n - 1).toNat

end

end A280510.P10053819342478837836

namespace A280510

/-- `A007283(A070939(n)-1)` -/
def P10053819342478837836.Spec : Prop :=
  ∀ n, P10053819342478837836.a n = A280510 (n + 1)

end A280510

/-! ## A280510.P11814617312620970253

`A003188(A062383(or(1, n)))`
-/

namespace A280510.P11814617312620970253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A062383 (Nat.lor 1 n)).toNat

end

end A280510.P11814617312620970253

namespace A280510

/-- `A003188(A062383(or(1, n)))` -/
def P11814617312620970253.Spec : Prop :=
  ∀ n, P11814617312620970253.a n = A280510 (n + 1)

end A280510

/-! ## A280510.P16323492852320046885

`A003188(A035327(n)+n+1)`
-/

namespace A280510.P16323492852320046885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A035327 n + (n + 1 : ℤ)).toNat

end

end A280510.P16323492852320046885

namespace A280510

/-- `A003188(A035327(n)+n+1)` -/
def P16323492852320046885.Spec : Prop :=
  ∀ n, P16323492852320046885.a n = A280510 (n + 1)

end A280510

/-! ## A280510.P16971735917444653407

`A063946(A035327(n)+n+1)`
-/

namespace A280510.P16971735917444653407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A035327 n + (n + 1 : ℤ)).toNat

end

end A280510.P16971735917444653407

namespace A280510

/-- `A063946(A035327(n)+n+1)` -/
def P16971735917444653407.Spec : Prop :=
  ∀ n, P16971735917444653407.a n = A280510 (n + 1)

end A280510

/-! ## A280510.P16301835612014638458

`A038572(A035327(n)+n+2)`
-/

namespace A280510.P16301835612014638458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A035327 n + (n + 2 : ℤ)).toNat

end

end A280510.P16301835612014638458

namespace A280510

/-- `A038572(A035327(n)+n+2)` -/
def P16301835612014638458.Spec : Prop :=
  ∀ n, P16301835612014638458.a n = A280510 (n + 1)

end A280510

/-! ## A280510.P17329936436779701936

`A156552(A000040(A070939(n))²)`
-/

namespace A280510.P17329936436779701936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A000040 (A070939 n).toNat ^ 2).toNat

end

end A280510.P17329936436779701936

namespace A280510

/-- `A156552(A000040(A070939(n))²)` -/
def P17329936436779701936.Spec : Prop :=
  ∀ n, P17329936436779701936.a n = A280510 (n + 1)

end A280510

/-! ## A280510.P8380280536364935878

`A062383(n)+A062383(A123108(n))`
-/

namespace A280510.P8380280536364935878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n + A062383 (A123108 n).toNat

end

end A280510.P8380280536364935878

namespace A280510

/-- `A062383(n)+A062383(A123108(n))` -/
def P8380280536364935878.Spec : Prop :=
  ∀ n, P8380280536364935878.a n = A280510 (n + 1)

end A280510

/-! ## A280510.P1761006369540313070

`A004755(A004761(n+2)-n)`
-/

namespace A280510.P1761006369540313070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (A004761 (n + 2) - (n : ℤ)).toNat

end

end A280510.P1761006369540313070

namespace A280510

/-- `A004755(A004761(n+2)-n)` -/
def P1761006369540313070.Spec : Prop :=
  ∀ n, P1761006369540313070.a n = A280510 (n + 1)

end A280510

/-!
# A280511: Index sequence of the block-fractal sequence A001468.

The programs for A280511, the canonical program `A280511.P11922694693869200803` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280511 has offset 1).

The definition of A280511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280511.P907512748730614335

`A166013(2*n+3)-(n+1)`
-/

namespace A280511.P907512748730614335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166013 (2 * n + 3) - (n + 1 : ℤ)

end

end A280511.P907512748730614335

namespace A280511

/-- `A166013(2*n+3)-(n+1)` -/
def P907512748730614335.Spec : Prop :=
  ∀ n, P907512748730614335.a n = A280511 (n + 1)

end A280511

/-! ## A280511.P17828355820363813598

`A094967(A130233(n+1))`
-/

namespace A280511.P17828355820363813598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (A130233 (n + 1)).toNat

end

end A280511.P17828355820363813598

namespace A280511

/-- `A094967(A130233(n+1))` -/
def P17828355820363813598.Spec : Prop :=
  ∀ n, P17828355820363813598.a n = A280511 (n + 1)

end A280511

/-! ## A280511.P17564890011691466645

`A001519(A130260(n+2))`
-/

namespace A280511.P17564890011691466645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A130260 (n + 2)).toNat

end

end A280511.P17564890011691466645

namespace A280511

/-- `A001519(A130260(n+2))` -/
def P17564890011691466645.Spec : Prop :=
  ∀ n, P17564890011691466645.a n = A280511 (n + 1)

end A280511

/-! ## A280511.P14184688266723520375

`A094967(A072648(n+2))`
-/

namespace A280511.P14184688266723520375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (A072648 (n + 2)).toNat

end

end A280511.P14184688266723520375

namespace A280511

/-- `A094967(A072648(n+2))` -/
def P14184688266723520375.Spec : Prop :=
  ∀ n, P14184688266723520375.a n = A280511 (n + 1)

end A280511

/-! ## A280511.P11767488415948971699

`A094967(A131234(n+2))`
-/

namespace A280511.P11767488415948971699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (A131234 (n + 2)).toNat

end

end A280511.P11767488415948971699

namespace A280511

/-- `A094967(A131234(n+2))` -/
def P11767488415948971699.Spec : Prop :=
  ∀ n, P11767488415948971699.a n = A280511 (n + 1)

end A280511

/-! ## A280511.P11922694693869200803

`A001519(A130259(n+1)+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A280511

/-- `A001519(A130259(n+1)+1)` -/
def P11922694693869200803.Spec : Prop :=
  ∀ n, P11922694693869200803.a n = A280511 (n + 1)

theorem P11922694693869200803.correct : P11922694693869200803.Spec := by
  intro n
  simp only [A280511, Nat.add_sub_cancel]

end A280511

/-! ## A280511.P10117422844095578875

`A000045(or(1, A130233(n+1)))`
-/

namespace A280511.P10117422844095578875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.lor 1 (A130233 (n + 1))).toNat

end

end A280511.P10117422844095578875

namespace A280511

/-- `A000045(or(1, A130233(n+1)))` -/
def P10117422844095578875.Spec : Prop :=
  ∀ n, P10117422844095578875.a n = A280511 (n + 1)

end A280511

/-! ## A280511.P10443728718283391500

`A049997(A130259(n+1)²+1)`
-/

namespace A280511.P10443728718283391500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049997 (A130259 (n + 1) ^ 2 + 1).toNat

end

end A280511.P10443728718283391500

namespace A280511

/-- `A049997(A130259(n+1)²+1)` -/
def P10443728718283391500.Spec : Prop :=
  ∀ n, P10443728718283391500.a n = A280511 (n + 1)

end A280511

/-! ## A280511.P1004477904558847923

`A000045(or(1, ∑[A010056(n+1)]+1))`
-/

namespace A280511.P1004477904558847923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A280511.P1004477904558847923

namespace A280511

/-- `A000045(or(1, ∑[A010056(n+1)]+1))` -/
def P1004477904558847923.Spec : Prop :=
  ∀ n, P1004477904558847923.a n = A280511 (n + 1)

end A280511

/-! ## A280511.P4287646341138815854

`A001519(A130262(n+2)-A130262(n+1))`
-/

namespace A280511.P4287646341138815854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A130262 (n + 2) - A130262 (n + 1)).toNat

end

end A280511.P4287646341138815854

namespace A280511

/-- `A001519(A130262(n+2)-A130262(n+1))` -/
def P4287646341138815854.Spec : Prop :=
  ∀ n, P4287646341138815854.a n = A280511 (n + 1)

end A280511

/-! ## A280511.P16425086781623390754

`A001519(A130239(A000045(A130234(n+2))))`
-/

namespace A280511.P16425086781623390754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A130239 (A000045 (A130234 (n + 2)).toNat).toNat).toNat

end

end A280511.P16425086781623390754

namespace A280511

/-- `A001519(A130239(A000045(A130234(n+2))))` -/
def P16425086781623390754.Spec : Prop :=
  ∀ n, P16425086781623390754.a n = A280511 (n + 1)

end A280511

/-! ## A280511.P17296076929699944326

`A082524(A280513(n+2)+n)`
-/

namespace A280511.P17296076929699944326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082524 (A280513 (n + 2) + (n : ℤ)).toNat

end

end A280511.P17296076929699944326

namespace A280511

/-- `A082524(A280513(n+2)+n)` -/
def P17296076929699944326.Spec : Prop :=
  ∀ n, P17296076929699944326.a n = A280511 (n + 1)

end A280511

/-! ## A280511.P8191505906999848932

`A152063(A130260(n+2)²)`
-/

namespace A280511.P8191505906999848932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152063 (A130260 (n + 2) ^ 2).toNat

end

end A280511.P8191505906999848932

namespace A280511

/-- `A152063(A130260(n+2)²)` -/
def P8191505906999848932.Spec : Prop :=
  ∀ n, P8191505906999848932.a n = A280511 (n + 1)

end A280511

/-! ## A280511.P4099651170526184675

`A280514(A280513(n+2)+n)`
-/

namespace A280511.P4099651170526184675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280514 (A280513 (n + 2) + (n : ℤ)).toNat

end

end A280511.P4099651170526184675

namespace A280511

/-- `A280514(A280513(n+2)+n)` -/
def P4099651170526184675.Spec : Prop :=
  ∀ n, P4099651170526184675.a n = A280511 (n + 1)

end A280511

/-! ## A280511.P11858846432838055797

`A124229(A345291(n+1))`
-/

namespace A280511.P11858846432838055797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124229 (A345291 (n + 1)).toNat

end

end A280511.P11858846432838055797

namespace A280511

/-- `A124229(A345291(n+1))` -/
def P11858846432838055797.Spec : Prop :=
  ∀ n, P11858846432838055797.a n = A280511 (n + 1)

end A280511

/-! ## A280511.P11025964885906740235

`A280513(2*(A280513(n+2)+n+1)+1)`
-/

namespace A280511.P11025964885906740235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280513 (2 * (A280513 (n + 2) + (n + 1 : ℤ)) + 1).toNat

end

end A280511.P11025964885906740235

namespace A280511

/-- `A280513(2*(A280513(n+2)+n+1)+1)` -/
def P11025964885906740235.Spec : Prop :=
  ∀ n, P11025964885906740235.a n = A280511 (n + 1)

end A280511

/-! ## A280511.P1883754160534294794

`A084531(A054347(n+1)+1)`
-/

namespace A280511.P1883754160534294794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084531 (A054347 (n + 1) + 1).toNat

end

end A280511.P1883754160534294794

namespace A280511

/-- `A084531(A054347(n+1)+1)` -/
def P1883754160534294794.Spec : Prop :=
  ∀ n, P1883754160534294794.a n = A280511 (n + 1)

end A280511

/-! ## A280511.P8475557852389992902

`A084531(A283733(n+1)-(n+1))`
-/

namespace A280511.P8475557852389992902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084531 (A283733 (n + 1) - (n + 1 : ℤ)).toNat

end

end A280511.P8475557852389992902

namespace A280511

/-- `A084531(A283733(n+1)-(n+1))` -/
def P8475557852389992902.Spec : Prop :=
  ∀ n, P8475557852389992902.a n = A280511 (n + 1)

end A280511

/-!
# A280512: Index sequence of the Thue-Morse sequence (A010060, using offset 1) as a reverse block-fractal sequence.

The programs for A280512, there is no canonical definition to state claims against.
-/

/-! ## A280512.P517675480877973352

`4^∑[char[4^n]]-n`
-/

namespace A280512.P517675480877973352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n : ℤ)

end

end A280512.P517675480877973352

/-! ## A280512.P17016352285992816978

`gcd(1-a(n-1), n*C(3, a(n-1)))` with `a(0)=1`
-/

namespace A280512.P17016352285992816978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (1 - (a (n - 1) : ℤ)) (n * Nat.choose 3 (a (n - 1)) : ℤ)

end

end A280512.P17016352285992816978

/-! ## A280512.P12299020583259956768

`gcd(a(n-1)-1, n*(3-3%a(n-1)))` with `a(0)=1`
-/

namespace A280512.P12299020583259956768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd ((a (n - 1) : ℤ) - 1) ((n : ℤ) * (3 - ((3 % a (n - 1) : ℕ) : ℤ)))

end

end A280512.P12299020583259956768

/-! ## A280512.P3646684486012543626

`abs(n-A217871(n)²)`
-/

namespace A280512.P3646684486012543626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A217871 n ^ 2|

end

end A280512.P3646684486012543626

/-! ## A280512.P12170157955441240083

`abs(A016116(A070941(n))²-n)`
-/

namespace A280512.P12170157955441240083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016116 (A070941 n).toNat ^ 2 - (n : ℤ)|

end

end A280512.P12170157955441240083

/-! ## A280512.P223684917357482401

`∑{d}[n-A217871(n)², A000010(#)]`
-/

namespace A280512.P223684917357482401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A217871 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A280512.P223684917357482401

/-! ## A280512.P9939133417483932625

`A000196((n-A217871(n)²)²)`
-/

namespace A280512.P9939133417483932625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (((n : ℤ) - A217871 n ^ 2) ^ 2).toNat

end

end A280512.P9939133417483932625

/-!
# A280513: Index sequence of the reverse block-fractal sequence A001468.

The programs for A280513, the canonical program `A280513.P6202625206943010125` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280513 has offset 1).

The definition of A280513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280513.P4540583222039567257

`A001906(Δ[A130262(n)])-n`
-/

namespace A280513.P4540583222039567257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (f1 (n + 1) - f1 n).toNat - (n : ℤ)

end

end A280513.P4540583222039567257

namespace A280513

/-- `A001906(Δ[A130262(n)])-n` -/
def P4540583222039567257.Spec : Prop :=
  ∀ n, P4540583222039567257.a n = A280513 (n + 1)

end A280513

/-! ## A280513.P9059747179407210533

`A001906(A130260(n+1))-n`
-/

namespace A280513.P9059747179407210533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A130260 (n + 1)).toNat - (n : ℤ)

end

end A280513.P9059747179407210533

namespace A280513

/-- `A001906(A130260(n+1))-n` -/
def P9059747179407210533.Spec : Prop :=
  ∀ n, P9059747179407210533.a n = A280513 (n + 1)

end A280513

/-! ## A280513.P6202625206943010125

`A001906(A130259(n)+1)-n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A280513

/-- `A001906(A130259(n)+1)-n` -/
def P6202625206943010125.Spec : Prop :=
  ∀ n, P6202625206943010125.a n = A280513 (n + 1)

theorem P6202625206943010125.correct : P6202625206943010125.Spec := by
  intro n
  simp only [A280513, Nat.add_sub_cancel]

end A280513

/-! ## A280513.P13143596040804755843

`A001906(∑[char[A001906(n)]])-n`
-/

namespace A280513.P13143596040804755843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A280513.P13143596040804755843

namespace A280513

/-- `A001906(∑[char[A001906(n)]])-n` -/
def P13143596040804755843.Spec : Prop :=
  ∀ n, P13143596040804755843.a n = A280513 (n + 1)

end A280513

/-! ## A280513.P6574833290057659817

`A000045(2*A130260(n+1))-n`
-/

namespace A280513.P6574833290057659817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * A130260 (n + 1)).toNat - (n : ℤ)

end

end A280513.P6574833290057659817

namespace A280513

/-- `A000045(2*A130260(n+1))-n` -/
def P6574833290057659817.Spec : Prop :=
  ∀ n, P6574833290057659817.a n = A280513 (n + 1)

end A280513

/-! ## A280513.P8810756652741227232

`A280514(A280511(n+1)-1+n)`
-/

namespace A280513.P8810756652741227232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280514 (A280511 (n + 1) - 1 + (n : ℤ)).toNat

end

end A280513.P8810756652741227232

namespace A280513

/-- `A280514(A280511(n+1)-1+n)` -/
def P8810756652741227232.Spec : Prop :=
  ∀ n, P8810756652741227232.a n = A280513 (n + 1)

end A280513

/-! ## A280513.P5172904961959955733

`A084531(A054347(A000201(n+1)))-n`
-/

namespace A280513.P5172904961959955733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084531 (A054347 (A000201 (n + 1)).toNat).toNat - (n : ℤ)

end

end A280513.P5172904961959955733

namespace A280513

/-- `A084531(A054347(A000201(n+1)))-n` -/
def P5172904961959955733.Spec : Prop :=
  ∀ n, P5172904961959955733.a n = A280513 (n + 1)

end A280513

/-!
# A280514: Index sequence of the reverse block-fractal sequence A003849.

The programs for A280514, the canonical program `A280514.P1420355641287953879` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280514 has offset 1).

The definition of A280514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280514.P12062021103784987907

`A361989(n+1)+1`
-/

namespace A280514.P12062021103784987907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361989 (n + 1) + 1

end

end A280514.P12062021103784987907

namespace A280514

/-- `A361989(n+1)+1` -/
def P12062021103784987907.Spec : Prop :=
  ∀ n, P12062021103784987907.a n = A280514 (n + 1)

end A280514

/-! ## A280514.P1420355641287953879

`A246104(n+1)-(n+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A280514

/-- `A246104(n+1)-(n+2)` -/
def P1420355641287953879.Spec : Prop :=
  ∀ n, P1420355641287953879.a n = A280514 (n + 1)

theorem P1420355641287953879.correct : P1420355641287953879.Spec := by
  intro n
  simp only [A280514, Nat.add_sub_cancel]

end A280514

/-! ## A280514.P17572975517899782463

`A256654(n+3)-(n+2)`
-/

namespace A280514.P17572975517899782463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256654 (n + 3) - (n + 2 : ℤ)

end

end A280514.P17572975517899782463

namespace A280514

/-- `A256654(n+3)-(n+2)` -/
def P17572975517899782463.Spec : Prop :=
  ∀ n, P17572975517899782463.a n = A280514 (n + 1)

end A280514

/-! ## A280514.P14178793047005253321

`A194029(A132665(n+1)+1)`
-/

namespace A280514.P14178793047005253321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194029 (A132665 (n + 1) + 1).toNat

end

end A280514.P14178793047005253321

namespace A280514

/-- `A194029(A132665(n+1)+1)` -/
def P14178793047005253321.Spec : Prop :=
  ∀ n, P14178793047005253321.a n = A280514 (n + 1)

end A280514

/-! ## A280514.P4203389636285692608

`A001911(A095791(n+1))-n`
-/

namespace A280514.P4203389636285692608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (A095791 (n + 1)).toNat - (n : ℤ)

end

end A280514.P4203389636285692608

namespace A280514

/-- `A001911(A095791(n+1))-n` -/
def P4203389636285692608.Spec : Prop :=
  ∀ n, P4203389636285692608.a n = A280514 (n + 1)

end A280514

/-! ## A280514.P7337794931834988028

`A023444(A246104(n+1)-n)`
-/

namespace A280514.P7337794931834988028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A246104 (n + 1) - (n : ℤ)).toNat

end

end A280514.P7337794931834988028

namespace A280514

/-- `A023444(A246104(n+1)-n)` -/
def P7337794931834988028.Spec : Prop :=
  ∀ n, P7337794931834988028.a n = A280514 (n + 1)

end A280514

/-! ## A280514.P15967059659038184835

`A001911(∑[char[A001911(n)]])-n`
-/

namespace A280514.P15967059659038184835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A280514.P15967059659038184835

namespace A280514

/-- `A001911(∑[char[A001911(n)]])-n` -/
def P15967059659038184835.Spec : Prop :=
  ∀ n, P15967059659038184835.a n = A280514 (n + 1)

end A280514

/-! ## A280514.P15393846398378337241

`A000045(A108852(n+2))-(n+2)`
-/

namespace A280514.P15393846398378337241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A108852 (n + 2)).toNat - (n + 2 : ℤ)

end

end A280514.P15393846398378337241

namespace A280514

/-- `A000045(A108852(n+2))-(n+2)` -/
def P15393846398378337241.Spec : Prop :=
  ∀ n, P15393846398378337241.a n = A280514 (n + 1)

end A280514

/-! ## A280514.P15469413244683890263

`A000071(A130233(n+2)+1)-(n+1)`
-/

namespace A280514.P15469413244683890263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A130233 (n + 2) + 1).toNat - (n + 1 : ℤ)

end

end A280514.P15469413244683890263

namespace A280514

/-- `A000071(A130233(n+2)+1)-(n+1)` -/
def P15469413244683890263.Spec : Prop :=
  ∀ n, P15469413244683890263.a n = A280514 (n + 1)

end A280514

/-! ## A280514.P14553514854834185898

`A087172(A000201(n+1)+2)-(n+2)`
-/

namespace A280514.P14553514854834185898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A000201 (n + 1) + 2).toNat - (n + 2 : ℤ)

end

end A280514.P14553514854834185898

namespace A280514

/-- `A087172(A000201(n+1)+2)-(n+2)` -/
def P14553514854834185898.Spec : Prop :=
  ∀ n, P14553514854834185898.a n = A280514 (n + 1)

end A280514

/-! ## A280514.P5981261329924271626

`A000201(A000071(A130233(n+2)))-n`
-/

namespace A280514.P5981261329924271626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A000071 (A130233 (n + 2)).toNat).toNat - (n : ℤ)

end

end A280514.P5981261329924271626

namespace A280514

/-- `A000201(A000071(A130233(n+2)))-n` -/
def P5981261329924271626.Spec : Prop :=
  ∀ n, P5981261329924271626.a n = A280514 (n + 1)

end A280514

/-! ## A280514.P14291494118144874226

`A087172(A003622(A087172(n+2)))-(n+2)`
-/

namespace A280514.P14291494118144874226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (A003622 (A087172 (n + 2)).toNat).toNat - (n + 2 : ℤ)

end

end A280514.P14291494118144874226

namespace A280514

/-- `A087172(A003622(A087172(n+2)))-(n+2)` -/
def P14291494118144874226.Spec : Prop :=
  ∀ n, P14291494118144874226.a n = A280514 (n + 1)

end A280514

/-! ## A280514.P1544763915929376392

`A166013(A166012(A072649(n+2)))-(n+2)`
-/

namespace A280514.P1544763915929376392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166013 (A166012 (A072649 (n + 2)).toNat).toNat - (n + 2 : ℤ)

end

end A280514.P1544763915929376392

namespace A280514

/-- `A166013(A166012(A072649(n+2)))-(n+2)` -/
def P1544763915929376392.Spec : Prop :=
  ∀ n, P1544763915929376392.a n = A280514 (n + 1)

end A280514

/-!
# A280516: Amicable pairs where only deficient aliquot parts are considered.

The programs for A280516, there is no canonical definition to state claims against.
-/

/-! ## A280516.P6343450283455474527

`A000027(A287026(n+3))`
-/

namespace A280516.P6343450283455474527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A287026 (n + 3)).toNat

end

end A280516.P6343450283455474527

/-! ## A280516.P3729877395633497375

`A287026(A024647(n)+3)`
-/

namespace A280516.P3729877395633497375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287026 (A024647 n + 3).toNat

end

end A280516.P3729877395633497375

/-! ## A280516.P8636048700030448908

`A287026(A183533(n+3))`
-/

namespace A280516.P8636048700030448908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287026 (A183533 (n + 3)).toNat

end

end A280516.P8636048700030448908

/-! ## A280516.P666441396058642918

`A287026(∑[A287021(n)]+2)`
-/

namespace A280516.P666441396058642918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287026 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A280516.P666441396058642918

/-!
# A280518: Number of increasing sequences of n positive integers with reciprocals adding up to an integer.

The programs for A280518, there is no canonical definition to state claims against.
-/

/-! ## A280518.P12696028591575652060

`A006585(n+1)+A006585(round(acot(n)+n))`
-/

namespace A280518.P12696028591575652060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006585 (n + 1) + A006585 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A280518.P12696028591575652060

/-! ## A280518.P6144137065282621533

`A006585(n+1)+A006585(A233583(n+1))`
-/

namespace A280518.P6144137065282621533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006585 (n + 1) + A006585 (A233583 (n + 1)).toNat

end

end A280518.P6144137065282621533

/-! ## A280518.P15030548847195217895

`A006585(n+1)+A006585(A058360(n+5))`
-/

namespace A280518.P15030548847195217895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006585 (n + 1) + A006585 (A058360 (n + 5)).toNat

end

end A280518.P15030548847195217895

/-!
# A280519: Triangle read by rows: T(n,k) = number of sequences of n positive integers with reciprocals adding up to k (k=1,2,...,n).

The programs for A280519, there is no canonical definition to state claims against.
-/

/-! ## A280519.P12337258220158110510

`A100862(A048794(n)+1)`
-/

namespace A280519.P12337258220158110510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100862 (A048794 n + 1).toNat

end

end A280519.P12337258220158110510

/-! ## A280519.P4654857139740985899

`A341126(A243424(n)+8)`
-/

namespace A280519.P4654857139740985899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341126 (A243424 n + 8).toNat

end

end A280519.P4654857139740985899

/-! ## A280519.P2553670474258160424

`A341126(or(8, A243424(n)))`
-/

namespace A280519.P2553670474258160424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341126 (Int.lor 8 (A243424 n)).toNat

end

end A280519.P2553670474258160424

/-!
# A280520: Triangle read by rows: T(n,k) = number of increasing sequences of n positive integers with reciprocals adding up to k (k=1,2,...,A055980(n)).

The programs for A280520, there is no canonical definition to state claims against.
-/

/-! ## A280520.P9880768387300261516

`A006585(A361923(n+1)+A005044(n+4))`
-/

namespace A280520.P9880768387300261516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006585 (A361923 (n + 1) + A005044 (n + 4)).toNat

end

end A280520.P9880768387300261516

/-!
# A280521: From the "Fibonachos" game: Number of phases of the following routine: during each phase, the player removes objects from a pile of n objects as the Fibonacci sequence until the pile contains fewer objects than the next Fibonacci number. The phases continue until the pile is empty.

The programs for A280521, the canonical program `A280521.P10058425785882284930` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280521 has offset 1).

The definition of A280521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280521.P4400685602069172347

`A280522(n+1)+1`
-/

namespace A280521.P4400685602069172347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280522 (n + 1) + 1

end

end A280521.P4400685602069172347

namespace A280521

/-- `A280522(n+1)+1` -/
def P4400685602069172347.Spec : Prop :=
  ∀ n, P4400685602069172347.a n = A280521 (n + 1)

theorem P4400685602069172347.correct : P4400685602069172347.Spec := by
  intro n
  simp only [A280521, Nat.add_sub_cancel, A280521.P4400685602069172347.a, A280521.P10058425785882284930.a, A280522, A280522.P9598191447435810035.a, A288602, A288602.P9324771817530744836.a, A283794, A283794.P5491480845354649629.f1, A283794.P5491480845354649629.a, A288931, A288931.P10856556094994457970.f1, A288931.P10856556094994457970.a, A288929, A288929.P9658926497667176175.f2, A288929.P9658926497667176175.f1, A288929.P9658926497667176175.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280521

/-! ## A280521.P10058425785882284930

`A288602(n+2)%(n+2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A280521

/-- `A288602(n+2)%(n+2)` -/
def P10058425785882284930.Spec : Prop :=
  ∀ n, P10058425785882284930.a n = A280521 (n + 1)

theorem P10058425785882284930.correct : P10058425785882284930.Spec := by
  intro n
  simp only [A280521, Nat.add_sub_cancel]

end A280521

/-! ## A280521.P1873112114892305533

`A283794(n+2)-(2*n+3)`
-/

namespace A280521.P1873112114892305533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283794 (n + 2) - (2 * n + 3 : ℤ)

end

end A280521.P1873112114892305533

namespace A280521

/-- `A283794(n+2)-(2*n+3)` -/
def P1873112114892305533.Spec : Prop :=
  ∀ n, P1873112114892305533.a n = A280521 (n + 1)

end A280521

/-! ## A280521.P10508820948891898556

`∑[A283794(n+2)-(A283794(n+1)+2)]`
-/

namespace A280521.P10508820948891898556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283794 (n + 2) - (A283794 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280521.P10508820948891898556

namespace A280521

/-- `∑[A283794(n+2)-(A283794(n+1)+2)]` -/
def P10508820948891898556.Spec : Prop :=
  ∀ n, P10508820948891898556.a n = A280521 (n + 1)

end A280521

/-! ## A280521.P18374899169592610772

`A007895(A383977(n+1))`
-/

namespace A280521.P18374899169592610772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A383977 (n + 1)).toNat

end

end A280521.P18374899169592610772

namespace A280521

/-- `A007895(A383977(n+1))` -/
def P18374899169592610772.Spec : Prop :=
  ∀ n, P18374899169592610772.a n = A280521 (n + 1)

end A280521

/-! ## A280521.P10386197112327489648

`A280522(A219638(n+1))`
-/

namespace A280521.P10386197112327489648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280522 (A219638 (n + 1)).toNat

end

end A280521.P10386197112327489648

namespace A280521

/-- `A280522(A219638(n+1))` -/
def P10386197112327489648.Spec : Prop :=
  ∀ n, P10386197112327489648.a n = A280521 (n + 1)

end A280521

/-! ## A280521.P8158719430727893940

`A000120(A004743(n+1)+1)`
-/

namespace A280521.P8158719430727893940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004743 (n + 1) + 1).toNat

end

end A280521.P8158719430727893940

namespace A280521

/-- `A000120(A004743(n+1)+1)` -/
def P8158719430727893940.Spec : Prop :=
  ∀ n, P8158719430727893940.a n = A280521 (n + 1)

end A280521

/-! ## A280521.P17333626928476988601

`A007302(A004743(n+1)+1)`
-/

namespace A280521.P17333626928476988601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A004743 (n + 1) + 1).toNat

end

end A280521.P17333626928476988601

namespace A280521

/-- `A007302(A004743(n+1)+1)` -/
def P17333626928476988601.Spec : Prop :=
  ∀ n, P17333626928476988601.a n = A280521 (n + 1)

end A280521

/-! ## A280521.P7059046833809382759

`A280737(A004743(n+1)+1)+1`
-/

namespace A280521.P7059046833809382759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (A004743 (n + 1) + 1).toNat + 1

end

end A280521.P7059046833809382759

namespace A280521

/-- `A280737(A004743(n+1)+1)+1` -/
def P7059046833809382759.Spec : Prop :=
  ∀ n, P7059046833809382759.a n = A280521 (n + 1)

end A280521

/-! ## A280521.P17039969373477035601

`A007302(A004743(n+2))`
-/

namespace A280521.P17039969373477035601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A004743 (n + 2)).toNat

end

end A280521.P17039969373477035601

namespace A280521

/-- `A007302(A004743(n+2))` -/
def P17039969373477035601.Spec : Prop :=
  ∀ n, P17039969373477035601.a n = A280521 (n + 1)

end A280521

/-! ## A280521.P10284370957787269656

`A069010(eq[A000120(n+1), A069010(n)])`
-/

namespace A280521.P10284370957787269656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A280521.P10284370957787269656

namespace A280521

/-- `A069010(eq[A000120(n+1), A069010(n)])` -/
def P10284370957787269656.Spec : Prop :=
  ∀ n, P10284370957787269656.a n = A280521 (n + 1)

end A280521

/-!
# A280522: The number of restarts for the routine described by A280521.

The programs for A280522, the canonical program `A280522.P9598191447435810035` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280522 has offset 1).

The definition of A280522 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A280521, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280522.P9598191447435810035

`A280521(n+1)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A280522

/-- `A280521(n+1)-1` -/
def P9598191447435810035.Spec : Prop :=
  ∀ n, P9598191447435810035.a n = A280522 (n + 1)

theorem P9598191447435810035.correct : P9598191447435810035.Spec := by
  intro n
  simp only [A280522, Nat.add_sub_cancel]

end A280522

/-! ## A280522.P17991040581114018620

`A127229(n+5)%A280521(n+1)`
-/

namespace A280522.P17991040581114018620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A280521 (n + 1))

end

end A280522.P17991040581114018620

namespace A280522

/-- `A127229(n+5)%A280521(n+1)` -/
def P17991040581114018620.Spec : Prop :=
  ∀ n, P17991040581114018620.a n = A280522 (n + 1)

end A280522

/-! ## A280522.P13593093611284066615

`(A020725(n+1)*A280521(n+1)+n)%(n+1)`
-/

namespace A280522.P13593093611284066615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020725 (n + 1) * A280521 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A280522.P13593093611284066615

namespace A280522

/-- `(A020725(n+1)*A280521(n+1)+n)%(n+1)` -/
def P13593093611284066615.Spec : Prop :=
  ∀ n, P13593093611284066615.a n = A280522 (n + 1)

end A280522

/-! ## A280522.P13940250763139094496

`(A000217(2*n)*A280521(n+1)+n)%(n+1)`
-/

namespace A280522.P13940250763139094496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (2 * n) * A280521 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A280522.P13940250763139094496

namespace A280522

/-- `(A000217(2*n)*A280521(n+1)+n)%(n+1)` -/
def P13940250763139094496.Spec : Prop :=
  ∀ n, P13940250763139094496.a n = A280522 (n + 1)

end A280522

/-! ## A280522.P2875315649324002423

`A283794(n+2)%(n+2)`
-/

namespace A280522.P2875315649324002423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283794 (n + 2)) (n + 2 : ℤ)

end

end A280522.P2875315649324002423

namespace A280522

/-- `A283794(n+2)%(n+2)` -/
def P2875315649324002423.Spec : Prop :=
  ∀ n, P2875315649324002423.a n = A280522 (n + 1)

end A280522

/-! ## A280522.P7009085380866723276

`A288602(n+2)-(2*n+5)`
-/

namespace A280522.P7009085380866723276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288602 (n + 2) - (2 * n + 5 : ℤ)

end

end A280522.P7009085380866723276

namespace A280522

/-- `A288602(n+2)-(2*n+5)` -/
def P7009085380866723276.Spec : Prop :=
  ∀ n, P7009085380866723276.a n = A280522 (n + 1)

end A280522

/-! ## A280522.P15140835024405718743

`A283794(A020725(n+1))-2*A020725(n+1)`
-/

namespace A280522.P15140835024405718743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283794 (A020725 (n + 1)).toNat - 2 * A020725 (n + 1)

end

end A280522.P15140835024405718743

namespace A280522

/-- `A283794(A020725(n+1))-2*A020725(n+1)` -/
def P15140835024405718743.Spec : Prop :=
  ∀ n, P15140835024405718743.a n = A280522 (n + 1)

end A280522

/-! ## A280522.P13383476088094763492

`A007895(A383977(n+1))-1`
-/

namespace A280522.P13383476088094763492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A383977 (n + 1)).toNat - 1

end

end A280522.P13383476088094763492

namespace A280522

/-- `A007895(A383977(n+1))-1` -/
def P13383476088094763492.Spec : Prop :=
  ∀ n, P13383476088094763492.a n = A280522 (n + 1)

end A280522

/-! ## A280522.P14518951844266327964

`A007895(A066628(A383977(n+1)))`
-/

namespace A280522.P14518951844266327964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A066628 (A383977 (n + 1)).toNat).toNat

end

end A280522.P14518951844266327964

namespace A280522

/-- `A007895(A066628(A383977(n+1)))` -/
def P14518951844266327964.Spec : Prop :=
  ∀ n, P14518951844266327964.a n = A280522 (n + 1)

end A280522

/-! ## A280522.P5935506180810875815

`eq[1, A288375(n+2)]%(n+1)`
-/

namespace A280522.P5935506180810875815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % (n + 1)

end

end A280522.P5935506180810875815

namespace A280522

/-- `eq[1, A288375(n+2)]%(n+1)` -/
def P5935506180810875815.Spec : Prop :=
  ∀ n, (P5935506180810875815.a n : ℤ) = A280522 (n + 1)

end A280522

/-! ## A280522.P3243231927796778694

`A033264(A004743(n+1))`
-/

namespace A280522.P3243231927796778694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (A004743 (n + 1)).toNat

end

end A280522.P3243231927796778694

namespace A280522

/-- `A033264(A004743(n+1))` -/
def P3243231927796778694.Spec : Prop :=
  ∀ n, P3243231927796778694.a n = A280522 (n + 1)

end A280522

/-! ## A280522.P14274415629898603335

`A280737(A004743(n+1)+1)`
-/

namespace A280522.P14274415629898603335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (A004743 (n + 1) + 1).toNat

end

end A280522.P14274415629898603335

namespace A280522

/-- `A280737(A004743(n+1)+1)` -/
def P14274415629898603335.Spec : Prop :=
  ∀ n, P14274415629898603335.a n = A280522 (n + 1)

end A280522

/-! ## A280522.P11584313971402742693

`A000120(A004743(n+1)+1)-1`
-/

namespace A280522.P11584313971402742693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004743 (n + 1) + 1).toNat - 1

end

end A280522.P11584313971402742693

namespace A280522

/-- `A000120(A004743(n+1)+1)-1` -/
def P11584313971402742693.Spec : Prop :=
  ∀ n, P11584313971402742693.a n = A280522 (n + 1)

end A280522

/-! ## A280522.P3345937012760297721

`A280737(A004743(n+2))`
-/

namespace A280522.P3345937012760297721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (A004743 (n + 2)).toNat

end

end A280522.P3345937012760297721

namespace A280522

/-- `A280737(A004743(n+2))` -/
def P3345937012760297721.Spec : Prop :=
  ∀ n, P3345937012760297721.a n = A280522 (n + 1)

end A280522

/-! ## A280522.P7610352795174658414

`A196305(n)%A280521(n+1)`
-/

namespace A280522.P7610352795174658414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196305 n) (A280521 (n + 1))

end

end A280522.P7610352795174658414

namespace A280522

/-- `A196305(n)%A280521(n+1)` -/
def P7610352795174658414.Spec : Prop :=
  ∀ n, P7610352795174658414.a n = A280522 (n + 1)

end A280522

/-! ## A280522.P14988668534020503346

`A083800(n+1)%A280521(n+1)`
-/

namespace A280522.P14988668534020503346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A280521 (n + 1))

end

end A280522.P14988668534020503346

namespace A280522

/-- `A083800(n+1)%A280521(n+1)` -/
def P14988668534020503346.Spec : Prop :=
  ∀ n, P14988668534020503346.a n = A280522 (n + 1)

end A280522

/-! ## A280522.P1229410454008285007

`A070198(n)%A280521(n+1)`
-/

namespace A280522.P1229410454008285007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A280521 (n + 1))

end

end A280522.P1229410454008285007

namespace A280522

/-- `A070198(n)%A280521(n+1)` -/
def P1229410454008285007.Spec : Prop :=
  ∀ n, P1229410454008285007.a n = A280522 (n + 1)

end A280522

/-! ## A280522.P17438601479358803701

`A079782(n+1)%A280521(n+1)`
-/

namespace A280522.P17438601479358803701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A280521 (n + 1))

end

end A280522.P17438601479358803701

namespace A280522

/-- `A079782(n+1)%A280521(n+1)` -/
def P17438601479358803701.Spec : Prop :=
  ∀ n, P17438601479358803701.a n = A280522 (n + 1)

end A280522

/-! ## A280522.P17587265174739288714

`A083685(n+1)%A280521(n+1)`
-/

namespace A280522.P17587265174739288714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A280521 (n + 1))

end

end A280522.P17587265174739288714

namespace A280522

/-- `A083685(n+1)%A280521(n+1)` -/
def P17587265174739288714.Spec : Prop :=
  ∀ n, P17587265174739288714.a n = A280522 (n + 1)

end A280522

/-! ## A280522.P17314184439418074055

`A121934(n+1)%A280521(n+1)`
-/

namespace A280522.P17314184439418074055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A280521 (n + 1))

end

end A280522.P17314184439418074055

namespace A280522

/-- `A121934(n+1)%A280521(n+1)` -/
def P17314184439418074055.Spec : Prop :=
  ∀ n, P17314184439418074055.a n = A280522 (n + 1)

end A280522

/-!
# A280523: a(n) = Fibonacci(2n + 1) - n.

The programs for A280523, the canonical program `A280523.P16785060247725291007` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280523 has offset 1).

The definition of A280523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280523.P16785060247725291007

`5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=10, a(3)=30`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280523

/-- `5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` -/
def P16785060247725291007.Spec : Prop :=
  ∀ n, P16785060247725291007.a n = A280523 (n + 1)

theorem P16785060247725291007.correct : P16785060247725291007.Spec := by
  intro n
  simp only [A280523, Nat.add_sub_cancel]

end A280523

/-! ## A280523.P170941463963224878

`3*a(n-1)-a(n-2)+n` with `a(0)=1, a(1)=3`
-/

namespace A280523.P170941463963224878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) - a (n - 2) + (n : ℤ)

end

end A280523.P170941463963224878

namespace A280523

/-- `3*a(n-1)-a(n-2)+n` -/
def P170941463963224878.Spec : Prop :=
  ∀ n, P170941463963224878.a n = A280523 (n + 1)

end A280523

/-! ## A280523.P15303252438196160659

`3*a(n-1)-(a(n-2)-n)` with `a(0)=1, a(1)=3`
-/

namespace A280523.P15303252438196160659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) - (a (n - 2) - (n : ℤ))

end

end A280523.P15303252438196160659

namespace A280523

/-- `3*a(n-1)-(a(n-2)-n)` -/
def P15303252438196160659.Spec : Prop :=
  ∀ n, P15303252438196160659.a n = A280523 (n + 1)

end A280523

/-! ## A280523.P9250662735621270745

`a(n-1)+a(n-1)+a(n-1)-a(n-2)+n` with `a(0)=1, a(1)=3`
-/

namespace A280523.P9250662735621270745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2) + (n : ℤ)))

end

end A280523.P9250662735621270745

namespace A280523

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-2)+n` -/
def P9250662735621270745.Spec : Prop :=
  ∀ n, P9250662735621270745.a n = A280523 (n + 1)

end A280523

/-! ## A280523.P16757922745727402400

`a(n-1)-(a(n-2)-a(n-1)-a(n-1)-n)` with `a(0)=1, a(1)=3`
-/

namespace A280523.P16757922745727402400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1) - (n : ℤ))

end

end A280523.P16757922745727402400

namespace A280523

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1)-n)` -/
def P16757922745727402400.Spec : Prop :=
  ∀ n, P16757922745727402400.a n = A280523 (n + 1)

end A280523

/-! ## A280523.P9520989446843231867

`A215004(2*n)`
-/

namespace A280523.P9520989446843231867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215004 (2 * n)

end

end A280523.P9520989446843231867

namespace A280523

/-- `A215004(2*n)` -/
def P9520989446843231867.Spec : Prop :=
  ∀ n, P9520989446843231867.a n = A280523 (n + 1)

end A280523

/-! ## A280523.P13167671452865699363

`A215006(Δ[n²])`
-/

namespace A280523.P13167671452865699363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215006 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A280523.P13167671452865699363

namespace A280523

/-- `A215006(Δ[n²])` -/
def P13167671452865699363.Spec : Prop :=
  ∀ n, P13167671452865699363.a n = A280523 (n + 1)

end A280523

/-! ## A280523.P5784770943307739387

`∑[A035508(n)]+1`
-/

namespace A280523.P5784770943307739387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A280523.P5784770943307739387

namespace A280523

/-- `∑[A035508(n)]+1` -/
def P5784770943307739387.Spec : Prop :=
  ∀ n, P5784770943307739387.a n = A280523 (n + 1)

end A280523

/-! ## A280523.P5702932997800811536

`A152891(n+1)+1`
-/

namespace A280523.P5702932997800811536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152891 (n + 1) + 1

end

end A280523.P5702932997800811536

namespace A280523

/-- `A152891(n+1)+1` -/
def P5702932997800811536.Spec : Prop :=
  ∀ n, P5702932997800811536.a n = A280523 (n + 1)

end A280523

/-! ## A280523.P7189458751003510578

`A027941(n+1)-n`
-/

namespace A280523.P7189458751003510578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (n + 1) - (n : ℤ)

end

end A280523.P7189458751003510578

namespace A280523

/-- `A027941(n+1)-n` -/
def P7189458751003510578.Spec : Prop :=
  ∀ n, P7189458751003510578.a n = A280523 (n + 1)

end A280523

/-! ## A280523.P5750450756400151874

`A048575(n)-(n+1)`
-/

namespace A280523.P5750450756400151874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n - (n + 1 : ℤ)

end

end A280523.P5750450756400151874

namespace A280523

/-- `A048575(n)-(n+1)` -/
def P5750450756400151874.Spec : Prop :=
  ∀ n, P5750450756400151874.a n = A280523 (n + 1)

end A280523

/-! ## A280523.P13021981398926101941

`A293064(n+3)-n`
-/

namespace A280523.P13021981398926101941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 (n + 3) - (n : ℤ)

end

end A280523.P13021981398926101941

namespace A280523

/-- `A293064(n+3)-n` -/
def P13021981398926101941.Spec : Prop :=
  ∀ n, P13021981398926101941.a n = A280523 (n + 1)

end A280523

/-! ## A280523.P15033351819658200986

`A054451(2*n)-n`
-/

namespace A280523.P15033351819658200986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054451 (2 * n) - (n : ℤ)

end

end A280523.P15033351819658200986

namespace A280523

/-- `A054451(2*n)-n` -/
def P15033351819658200986.Spec : Prop :=
  ∀ n, P15033351819658200986.a n = A280523 (n + 1)

end A280523

/-! ## A280523.P2714793402031963249

`∑[record[A333599(n+1)]]`
-/

namespace A280523.P2714793402031963249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333599 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280523.P2714793402031963249

namespace A280523

/-- `∑[record[A333599(n+1)]]` -/
def P2714793402031963249.Spec : Prop :=
  ∀ n, P2714793402031963249.a n = A280523 (n + 1)

end A280523

/-! ## A280523.P8694756300890191144

`A052952(Δ[n²])-n`
-/

namespace A280523.P8694756300890191144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A280523.P8694756300890191144

namespace A280523

/-- `A052952(Δ[n²])-n` -/
def P8694756300890191144.Spec : Prop :=
  ∀ n, P8694756300890191144.a n = A280523 (n + 1)

end A280523

/-! ## A280523.P9140071373001025441

`∑[∑[A122367(n)]]-n`
-/

namespace A280523.P9140071373001025441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A280523.P9140071373001025441

namespace A280523

/-- `∑[∑[A122367(n)]]-n` -/
def P9140071373001025441.Spec : Prop :=
  ∀ n, P9140071373001025441.a n = A280523 (n + 1)

end A280523

/-! ## A280523.P4887066919672140293

`∑[A333599(2*n)]+1`
-/

namespace A280523.P4887066919672140293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333599 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A280523.P4887066919672140293

namespace A280523

/-- `∑[A333599(2*n)]+1` -/
def P4887066919672140293.Spec : Prop :=
  ∀ n, P4887066919672140293.a n = A280523 (n + 1)

end A280523

/-! ## A280523.P11241752197895310291

`∑[A001906(n+1)]-n`
-/

namespace A280523.P11241752197895310291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A280523.P11241752197895310291

namespace A280523

/-- `∑[A001906(n+1)]-n` -/
def P11241752197895310291.Spec : Prop :=
  ∀ n, P11241752197895310291.a n = A280523 (n + 1)

end A280523

/-!
# A280524: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 278", based on the 5-celled von Neumann neighborhood.

The programs for A280524, there is no canonical definition to state claims against.
-/

/-! ## A280524.P15769849551750862357

`A007088(A280526(n))`
-/

namespace A280524.P15769849551750862357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280526 n).toNat

end

end A280524.P15769849551750862357

/-! ## A280524.P8524111119252784327

`A305989(A280525(n))`
-/

namespace A280524.P8524111119252784327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A280525 n).toNat

end

end A280524.P8524111119252784327

/-! ## A280524.P12989088965799380172

`A185544(2*A280526(n))`
-/

namespace A280524.P12989088965799380172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280526 n).toNat

end

end A280524.P12989088965799380172

/-! ## A280524.P4804217513869270935

`A185544(lcm(2, A280526(n)))`
-/

namespace A280524.P4804217513869270935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A280526 n))

end

end A280524.P4804217513869270935

/-! ## A280524.P759476633863669344

`A305989(A126646(n+1)-A283254(n+1))`
-/

namespace A280524.P759476633863669344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A126646 (n + 1) - A283254 (n + 1)).toNat

end

end A280524.P759476633863669344

/-!
# A280525: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 278", based on the 5-celled von Neumann neighborhood.

The programs for A280525, there is no canonical definition to state claims against.
-/

/-! ## A280525.P17300220111556433769

`A126646(n+1)-A283254(n+1)`
-/

namespace A280525.P17300220111556433769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 1) - A283254 (n + 1)

end

end A280525.P17300220111556433769

/-! ## A280525.P13684815435784557044

`A000079(n+2)-1-A283254(n+1)`
-/

namespace A280525.P13684815435784557044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) - 1 - A283254 (n + 1)

end

end A280525.P13684815435784557044

/-! ## A280525.P15940311409915705449

`A126646(A028310(n)+1)%A283254(n+1)`
-/

namespace A280525.P15940311409915705449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 (A028310 n + 1).toNat) (A283254 (n + 1))

end

end A280525.P15940311409915705449

/-! ## A280525.P2043849183526104129

`A126646(A057427(n)+n)%A283254(n+1)`
-/

namespace A280525.P2043849183526104129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 (A057427 n + (n : ℤ)).toNat) (A283254 (n + 1))

end

end A280525.P2043849183526104129

/-! ## A280525.P14203999877459571703

`A126646(A000007(n)+1+n)%A283254(n+1)`
-/

namespace A280525.P14203999877459571703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 (A000007 n + 1 + (n : ℤ)).toNat) (A283254 (n + 1))

end

end A280525.P14203999877459571703

/-! ## A280525.P10715446266406126864

`xor(A126646(A057427(n+1)+n), A283254(n+1))`
-/

namespace A280525.P10715446266406126864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A126646 (A057427 (n + 1) + (n : ℤ)).toNat) (A283254 (n + 1))

end

end A280525.P10715446266406126864

/-!
# A280526: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 278", based on the 5-celled von Neumann neighborhood.

The programs for A280526, there is no canonical definition to state claims against.
-/

/-! ## A280526.P3916428369920787706

`A280525(n)-A055945(A280525(n))`
-/

namespace A280526.P3916428369920787706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280525 n - A055945 (A280525 n).toNat

end

end A280526.P3916428369920787706

/-! ## A280526.P12143370675167773846

`A030101(A280525(n))`
-/

namespace A280526.P12143370675167773846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A280525 n).toNat

end

end A280526.P12143370675167773846

/-! ## A280526.P1971905251597719442

`A325401(2*A280525(n))`
-/

namespace A280526.P1971905251597719442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A280525 n).toNat

end

end A280526.P1971905251597719442

/-! ## A280526.P17846757628927287626

`A325401(lcm(2, A280525(n)))`
-/

namespace A280526.P17846757628927287626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A280525 n))

end

end A280526.P17846757628927287626

/-! ## A280526.P16004852229431717833

`A030101(A126646(n+1)-A283254(n+1))`
-/

namespace A280526.P16004852229431717833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A126646 (n + 1) - A283254 (n + 1)).toNat

end

end A280526.P16004852229431717833

/-!
# A280527: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 283", based on the 5-celled von Neumann neighborhood.

The programs for A280527, there is no canonical definition to state claims against.
-/

/-! ## A280527.P1553314204405171245

`A007088(A280529(n))`
-/

namespace A280527.P1553314204405171245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280529 n).toNat

end

end A280527.P1553314204405171245

/-! ## A280527.P2578919429620866750

`A185544(2*A280529(n))`
-/

namespace A280527.P2578919429620866750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280529 n).toNat

end

end A280527.P2578919429620866750

/-! ## A280527.P12382178141875689739

`A281277(A004891(n+1))`
-/

namespace A280527.P12382178141875689739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281277 (A004891 (n + 1)).toNat

end

end A280527.P12382178141875689739

/-! ## A280527.P17520392644584463205

`A281277(A004902(n+1))`
-/

namespace A280527.P17520392644584463205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281277 (A004902 (n + 1)).toNat

end

end A280527.P17520392644584463205

/-!
# A280528: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 283", based on the 5-celled von Neumann neighborhood.

The programs for A280528, there is no canonical definition to state claims against.
-/

/-! ## A280528.P10808932304353756812

`A007088(A280530(n))`
-/

namespace A280528.P10808932304353756812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280530 n).toNat

end

end A280528.P10808932304353756812

/-! ## A280528.P6297558099880870952

`A185544(2*A280530(n))`
-/

namespace A280528.P6297558099880870952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280530 n).toNat

end

end A280528.P6297558099880870952

/-! ## A280528.P11330873126371057537

`A185544(A280530(n)+A280530(n))`
-/

namespace A280528.P11330873126371057537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A280530 n + A280530 n).toNat

end

end A280528.P11330873126371057537

/-! ## A280528.P6728130442355009460

`A281278(A004891(n+1))`
-/

namespace A280528.P6728130442355009460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281278 (A004891 (n + 1)).toNat

end

end A280528.P6728130442355009460

/-!
# A280529: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 283", based on the 5-celled von Neumann neighborhood.

The programs for A280529, there is no canonical definition to state claims against.
-/

/-! ## A280529.P13521725622774422375

`A281279(A004891(n+1))`
-/

namespace A280529.P13521725622774422375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281279 (A004891 (n + 1)).toNat

end

end A280529.P13521725622774422375

/-! ## A280529.P8634841569809659163

`A281279(A004902(n+1))`
-/

namespace A280529.P8634841569809659163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281279 (A004902 (n + 1)).toNat

end

end A280529.P8634841569809659163

/-! ## A280529.P10164383569631557067

`A281279(A004913(n+1))`
-/

namespace A280529.P10164383569631557067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281279 (A004913 (n + 1)).toNat

end

end A280529.P10164383569631557067

/-! ## A280529.P6727811489833427678

`A281279(A032551(n+1))`
-/

namespace A280529.P6727811489833427678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281279 (A032551 (n + 1)).toNat

end

end A280529.P6727811489833427678

/-!
# A280532: a(1) = a(2) = 1, a(n) = A014777(a(n-1) + a(n-2)), n >= 3.

The programs for A280532, there is no canonical definition to state claims against.
-/

/-! ## A280532.P1457990613628595651

`A014777(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280532.P1457990613628595651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A014777 (a (n - 1) + a (n - 2)).toNat

end

end A280532.P1457990613628595651

/-! ## A280532.P322075721078207340

`A014777(a(n-1)-floor(-a(n-2)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A280532.P322075721078207340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A014777 (a (n - 1) - (-a (n - 2))).toNat

end

end A280532.P322075721078207340

/-! ## A280532.P503216827421698492

`A014777(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A280532.P503216827421698492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A014777 (a (n - 1) - (-a (n - 2))).toNat

end

end A280532.P503216827421698492

/-! ## A280532.P18139362757297070104

`A176341(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A280532.P18139362757297070104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A176341 (a (n - 1) + a (n - 2)).toNat

end

end A280532.P18139362757297070104

/-!
# A280535: Number of partitions of n into two parts with the smaller part squarefree and the larger part prime.

The programs for A280535, there is no canonical definition to state claims against.
-/

/-! ## A280535.P17781350536019339039

`∑{e}[A328733(A005731(n+1)), #]`
-/

namespace A280535.P17781350536019339039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328733 (A005731 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A280535.P17781350536019339039

/-! ## A280535.P17649253597412158129

`A351824(n+1)-A088705(A326114(n))`
-/

namespace A280535.P17649253597412158129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351824 (n + 1) - A088705 (A326114 n).toNat

end

end A280535.P17649253597412158129

/-! ## A280535.P14886862205299279922

`A001222(A002522(n))-A319000(A108838(n+2))`
-/

namespace A280535.P14886862205299279922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002522 n).toNat - A319000 (A108838 (n + 2)).toNat

end

end A280535.P14886862205299279922

/-! ## A280535.P12266503191994009199

`A020639(A265381(n))%A086063(n)`
-/

namespace A280535.P12266503191994009199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A265381 n).toNat) (A086063 n)

end

end A280535.P12266503191994009199

/-! ## A280535.P3426037384339802251

`A153246(A000217(n+1)-A001222(n+3))`
-/

namespace A280535.P3426037384339802251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153246 (A000217 (n + 1) - A001222 (n + 3)).toNat

end

end A280535.P3426037384339802251

/-!
# A280536: Numbers n such that the sum of the first n primes reduced by some power of 2 is prime.

The programs for A280536, there is no canonical definition to state claims against.
-/

/-! ## A280536.P8915516688952492264

`eq[1, A318451(A007504(A000007(n)+n))]`
-/

namespace A280536.P8915516688952492264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (A007504 (A000007 n + (n : ℤ)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280536.P8915516688952492264

/-! ## A280536.P7444970888387907340

`eq[2, A327640(A007504(n))]`
-/

namespace A280536.P7444970888387907340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327640 (A007504 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280536.P7444970888387907340

/-! ## A280536.P6479567087217272012

`eq[1, A069283(A014284(n+1)-1)]`
-/

namespace A280536.P6479567087217272012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A014284 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280536.P6479567087217272012

/-! ## A280536.P14969265047391786281

`eq[1, A069283(A036439(n+1)-2)]`
-/

namespace A280536.P14969265047391786281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A036439 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280536.P14969265047391786281

/-! ## A280536.P6625552934373651082

`eq[1, A069283(A175965(n+2)-2)]`
-/

namespace A280536.P6625552934373651082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A175965 (n + 2) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280536.P6625552934373651082

/-!
# A280540: G.f.: Product_{i>=1, j>=1} 1/(1 - x^(i*j))^(i*j).

The programs for A280540, there is no canonical definition to state claims against.
-/

/-! ## A280540.P350208190345788987

`A103679(A014234(n+1)-A014260(n))`
-/

namespace A280540.P350208190345788987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103679 (A014234 (n + 1) - A014260 n).toNat

end

end A280540.P350208190345788987

/-! ## A280540.P7843136565360994448

`A330123(A005169(n+3)-A022328(n+1))`
-/

namespace A280540.P7843136565360994448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330123 (A005169 (n + 3) - A022328 (n + 1)).toNat

end

end A280540.P7843136565360994448

/-! ## A280540.P17392302410871790058

`A160719(A000097(n)-A350189(n))+A002865(n)²`
-/

namespace A280540.P17392302410871790058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160719 (A000097 n - A350189 n).toNat + A002865 n ^ 2

end

end A280540.P17392302410871790058

/-!
# A280541: G.f.: Product_{i>=1, j>=1} (1 + x^(i*j))^(i*j).

The programs for A280541, there is no canonical definition to state claims against.
-/

/-! ## A280541.P12644758657744648138

`A054404(A143229(n)+A032793(n+1))`
-/

namespace A280541.P12644758657744648138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A143229 n + A032793 (n + 1)).toNat

end

end A280541.P12644758657744648138

/-! ## A280541.P16625757419995897969

`A054237(A200755(n+1))`
-/

namespace A280541.P16625757419995897969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054237 (A200755 (n + 1)).toNat

end

end A280541.P16625757419995897969

/-! ## A280541.P675635854168510091

`A164903(A129757(n+1))`
-/

namespace A280541.P675635854168510091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164903 (A129757 (n + 1)).toNat

end

end A280541.P675635854168510091

/-!
# A280542: Expansion of 1/(1 - Sum_{k>=2} x^(k^2)).

The programs for A280542, there is no canonical definition to state claims against.
-/

/-! ## A280542.P8460834941355521135

`A274886(A275009(n))*A275001(n)`
-/

namespace A280542.P8460834941355521135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274886 (A275009 n).toNat * A275001 n

end

end A280542.P8460834941355521135

/-! ## A280542.P4421414429622221930

`lcm(A238877(A274324(n)), A275001(n))`
-/

namespace A280542.P4421414429622221930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A238877 (A274324 n).toNat) (A275001 n)

end

end A280542.P4421414429622221930

/-! ## A280542.P4232262132423180346

`A033183(n)*A285718(∑[A033286(n+1)])`
-/

namespace A280542.P4232262132423180346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 n * A285718 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A280542.P4232262132423180346

/-! ## A280542.P6391052105389844386

`A285718(∑[A033286(n+1)]^A033183(n))`
-/

namespace A280542.P6391052105389844386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A033183 n : ℤ))).toNat

end

end A280542.P6391052105389844386

/-! ## A280542.P13212883277571150242

`A124766(A376622(n)*A376648(n))`
-/

namespace A280542.P13212883277571150242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A376622 n * A376648 n).toNat

end

end A280542.P13212883277571150242

/-!
# A280543: Expansion of 1/(1 - x - Sum_{k>=2} floor(1/omega(k))*x^k), where omega(k) is the number of distinct prime factors (A001221).

The programs for A280543, there is no canonical definition to state claims against.
-/

/-! ## A280543.P9814221229089236622

`A282566(n)-A046660(A052937(n))`
-/

namespace A280543.P9814221229089236622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282566 n - A046660 (A052937 n).toNat

end

end A280543.P9814221229089236622

/-! ## A280543.P9282219360700282989

`A282566(n)-A102683(A001654(n))`
-/

namespace A280543.P9282219360700282989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282566 n - A102683 (A001654 n).toNat

end

end A280543.P9282219360700282989

/-! ## A280543.P6872819211081034766

`A282566(n)-A188300(A077939(n))`
-/

namespace A280543.P6872819211081034766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282566 n - A188300 (A077939 n).toNat

end

end A280543.P6872819211081034766

/-! ## A280543.P10236988028131633600

`A282566(n)-A302110(A056324(n))`
-/

namespace A280543.P10236988028131633600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282566 n - A302110 (A056324 n).toNat

end

end A280543.P10236988028131633600

/-! ## A280543.P13437232440720564004

`A282566(n)-A185284(A292060(n))`
-/

namespace A280543.P13437232440720564004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282566 n - A185284 (A292060 n).toNat

end

end A280543.P13437232440720564004

/-!
# A280544: Expansion of 1/(1 - Sum_{k>=2} (1 - floor(2/d(k)))*x^k), where d(k) is the number of divisors (A000005).

The programs for A280544, there is no canonical definition to state claims against.
-/

/-! ## A280544.P13668412262834539153

`Δ[Δ[A135664(A023860(n+1))]]`
-/

namespace A280544.P13668412262834539153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A023860 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280544.P13668412262834539153

/-! ## A280544.P6139161780696785395

`A125072(C(10*n+13, A101048(n)))`
-/

namespace A280544.P6139161780696785395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125072 (Nat.choose (10 * n + 13) (A101048 n).toNat)

end

end A280544.P6139161780696785395

/-! ## A280544.P6475983076783689910

`A281617(n)+A000035(A000079(n))`
-/

namespace A280544.P6475983076783689910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281617 n + A000035 (A000079 n).toNat

end

end A280544.P6475983076783689910

/-! ## A280544.P2428945313994720645

`A281617(n)+A000007(A000225(n))`
-/

namespace A280544.P2428945313994720645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281617 n + A000007 (A000225 n).toNat

end

end A280544.P2428945313994720645

/-! ## A280544.P17933366348102622844

`A281617(n)+A000007(A027375(n))`
-/

namespace A280544.P17933366348102622844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281617 n + A000007 (A027375 n).toNat

end

end A280544.P17933366348102622844

/-!
# A280548: Number of n X n 0..1 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280548, there is no canonical definition to state claims against.
-/

/-! ## A280548.P405334498985511090

`A280554(∑[4*n]+1)`
-/

namespace A280548.P405334498985511090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A280548.P405334498985511090

/-! ## A280548.P2564360919035373008

`lcm(2, A280554(A001844(n)))`
-/

namespace A280548.P2564360919035373008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A280554 (A001844 n).toNat)

end

end A280548.P2564360919035373008

/-! ## A280548.P16064977606619286247

`A280554(A001844(n))+A025469(n)`
-/

namespace A280548.P16064977606619286247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A001844 n).toNat + A025469 n

end

end A280548.P16064977606619286247

/-! ## A280548.P89831914629862654

`A280554(A001844(n))+A105519(n)`
-/

namespace A280548.P89831914629862654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A001844 n).toNat + A105519 n

end

end A280548.P89831914629862654

/-! ## A280548.P653335303996413412

`A280554(A001844(n))+A184955(n)`
-/

namespace A280548.P653335303996413412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A001844 n).toNat + A184955 n

end

end A280548.P653335303996413412

/-!
# A280549: Number of n X 3 0..1 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280549, there is no canonical definition to state claims against.
-/

/-! ## A280549.P3248110208804625937

`A280554(∑[n+2]+4)`
-/

namespace A280549.P3248110208804625937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280549.P3248110208804625937

/-! ## A280549.P6282803701074285853

`record[A280554(A061579(n)+4)]`
-/

namespace A280549.P6282803701074285853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A061579 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280549.P6282803701074285853

/-! ## A280549.P10131450086253165666

`record[A280554(A038722(n+1)+3)]`
-/

namespace A280549.P10131450086253165666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A038722 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280549.P10131450086253165666

/-! ## A280549.P16227146219645015175

`or(char[1], A280554(A167614(n+1)))`
-/

namespace A280549.P16227146219645015175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A280554 (A167614 (n + 1)).toNat)

end

end A280549.P16227146219645015175

/-! ## A280549.P4886560956926406466

`A280554(A167614(n+1))+A025469(n)`
-/

namespace A280549.P4886560956926406466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A167614 (n + 1)).toNat + A025469 n

end

end A280549.P4886560956926406466

/-!
# A280550: Number of n X 4 0..1 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280550, there is no canonical definition to state claims against.
-/

/-! ## A280550.P9097423628554756693

`A280554(∑[n+3]+7)`
-/

namespace A280550.P9097423628554756693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A280550.P9097423628554756693

/-! ## A280550.P15404724282260926244

`A280554(A141214(n)+7)+char[30]`
-/

namespace A280550.P15404724282260926244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A280550.P15404724282260926244

/-! ## A280550.P12516132069074807048

`A280554(A055999(n)+10)+char[30]`
-/

namespace A280550.P12516132069074807048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A280550.P12516132069074807048

/-! ## A280550.P8382367063573809329

`A280554(A167614(n+2)+1)+char[30]`
-/

namespace A280550.P8382367063573809329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A280550.P8382367063573809329

/-! ## A280550.P9668890451661992545

`A007318(C(2, n))*A280554(A055999(n)+10)`
-/

namespace A280550.P9668890451661992545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A280554 (A055999 n + 10).toNat

end

end A280550.P9668890451661992545

/-!
# A280551: Number of n X 5 0..1 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280551, there is no canonical definition to state claims against.
-/

/-! ## A280551.P13116334737736375621

`A280554(A167499(n+3))`
-/

namespace A280551.P13116334737736375621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A167499 (n + 3)).toNat

end

end A280551.P13116334737736375621

/-! ## A280551.P9867023027434259246

`A280554(A155212(n)+13)`
-/

namespace A280551.P9867023027434259246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A155212 n + 13).toNat

end

end A280551.P9867023027434259246

/-! ## A280551.P17643901915453353513

`A280554(A056000(n)+15)`
-/

namespace A280551.P17643901915453353513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A056000 n + 15).toNat

end

end A280551.P17643901915453353513

/-! ## A280551.P16194008235360974574

`A280554(eq[7, A066657(n)])`
-/

namespace A280551.P16194008235360974574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280551.P16194008235360974574

/-! ## A280551.P10916856906885691218

`A280554(A167614(n+3)+2)`
-/

namespace A280551.P10916856906885691218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A167614 (n + 3) + 2).toNat

end

end A280551.P10916856906885691218

/-!
# A280552: Number of n X 6 0..1 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280552, there is no canonical definition to state claims against.
-/

/-! ## A280552.P13538089907543444264

`A280554(A056115(n)+21)`
-/

namespace A280552.P13538089907543444264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A056115 n + 21).toNat

end

end A280552.P13538089907543444264

/-! ## A280552.P8220225880735776040

`A280554(A167499(n+4)+1)`
-/

namespace A280552.P8220225880735776040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A167499 (n + 4) + 1).toNat

end

end A280552.P8220225880735776040

/-! ## A280552.P9094997263288794355

`A280554(A167614(n+4)+3)`
-/

namespace A280552.P9094997263288794355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A167614 (n + 4) + 3).toNat

end

end A280552.P9094997263288794355

/-! ## A280552.P6233349436614251494

`A280554(A000124(n+5)+5)`
-/

namespace A280552.P6233349436614251494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A000124 (n + 5) + 5).toNat

end

end A280552.P6233349436614251494

/-! ## A280552.P15471643086011072034

`A280554(A000096(n+4)+7)`
-/

namespace A280552.P15471643086011072034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A000096 (n + 4) + 7).toNat

end

end A280552.P15471643086011072034

/-!
# A280553: Number of n X 7 0..1 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280553, there is no canonical definition to state claims against.
-/

/-! ## A280553.P10755352490903997278

`A280554(eq[11, A066657(n)])`
-/

namespace A280553.P10755352490903997278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280553.P10755352490903997278

/-! ## A280553.P16232514178367600589

`A280554(A167614(n+5)+4)`
-/

namespace A280553.P16232514178367600589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A167614 (n + 5) + 4).toNat

end

end A280553.P16232514178367600589

/-! ## A280553.P3784511941240476263

`A280554(A000124(n+6)+6)`
-/

namespace A280553.P3784511941240476263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A000124 (n + 6) + 6).toNat

end

end A280553.P3784511941240476263

/-! ## A280553.P6064995827726423308

`A280554(A000096(n+5)+8)`
-/

namespace A280553.P6064995827726423308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A000096 (n + 5) + 8).toNat

end

end A280553.P6064995827726423308

/-! ## A280553.P7930016686117354963

`A280554(A000217(n+6)+7)`
-/

namespace A280553.P7930016686117354963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280554 (A000217 (n + 6) + 7).toNat

end

end A280553.P7930016686117354963

/-!
# A280554: T(n,k)=Number of nXk 0..1 arrays with no element equal to more than one of its horizontal and vertical neighbors, with the exception of exactly two elements, and with new values introduced in order 0 sequentially upwards.

The programs for A280554, there is no canonical definition to state claims against.
-/

/-! ## A280554.P6655444210312815228

`A003056(A225696(n)²)-A225696(n)`
-/

namespace A280554.P6655444210312815228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A225696 n ^ 2).toNat - A225696 n

end

end A280554.P6655444210312815228

/-!
# A280556: a(n) = Sum_{k=1..n} k^2 * (k+1)!.

The programs for A280556, the canonical program `A280556.P7886758185825160214` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280556 has offset 0).

The definition of A280556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280556.P7886758185825160214

`(n-1)*(n+2)!+2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A280556

/-- `(n-1)*(n+2)!+2` -/
def P7886758185825160214.Spec : Prop :=
  ∀ n, P7886758185825160214.a n = A280556 n

theorem P7886758185825160214.correct : P7886758185825160214.Spec := by
  intro n
  simp only [A280556]

end A280556

/-! ## A280556.P8339744652049848358

`∑[n²*(n+1)!]`
-/

namespace A280556.P8339744652049848358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * Nat.factorial (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280556.P8339744652049848358

namespace A280556

/-- `∑[n²*(n+1)!]` -/
def P8339744652049848358.Spec : Prop :=
  ∀ n, (P8339744652049848358.a n : ℤ) = A280556 n

end A280556

/-! ## A280556.P14469951687737229409

`∑[n²*∏[n+1]]`
-/

namespace A280556.P14469951687737229409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 * (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280556.P14469951687737229409

namespace A280556

/-- `∑[n²*∏[n+1]]` -/
def P14469951687737229409.Spec : Prop :=
  ∀ n, (P14469951687737229409.a n : ℤ) = A280556 n

end A280556

/-! ## A280556.P12852986310433708997

`2*∑[n*n!*∑[n]]`
-/

namespace A280556.P12852986310433708997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280556.P12852986310433708997

namespace A280556

/-- `2*∑[n*n!*∑[n]]` -/
def P12852986310433708997.Spec : Prop :=
  ∀ n, (P12852986310433708997.a n : ℤ) = A280556 n

end A280556

/-! ## A280556.P16247902214228303582

`lcm(2, (n-1)*∏[n+2]+2)`
-/

namespace A280556.P16247902214228303582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((n : ℤ) - 1) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2)

end

end A280556.P16247902214228303582

namespace A280556

/-- `lcm(2, (n-1)*∏[n+2]+2)` -/
def P16247902214228303582.Spec : Prop :=
  ∀ n, (P16247902214228303582.a n : ℤ) = A280556 n

end A280556

/-! ## A280556.P13813240652999350207

`or(1, (n-1)*∏[n+2])+1`
-/

namespace A280556.P13813240652999350207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n : ℤ) - 1) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) + 1

end

end A280556.P13813240652999350207

namespace A280556

/-- `or(1, (n-1)*∏[n+2])+1` -/
def P13813240652999350207.Spec : Prop :=
  ∀ n, P13813240652999350207.a n = A280556 n

end A280556

/-! ## A280556.P8094932639300798864

`xor(1, (n-1)*∏[n+2])+1`
-/

namespace A280556.P8094932639300798864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n : ℤ) - 1) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) + 1

end

end A280556.P8094932639300798864

namespace A280556

/-- `xor(1, (n-1)*∏[n+2])+1` -/
def P8094932639300798864.Spec : Prop :=
  ∀ n, P8094932639300798864.a n = A280556 n

end A280556

/-! ## A280556.P8292979503472528308

`a(n-1)+n²*∏[n+1]` with `a(0)=0`
-/

namespace A280556.P8292979503472528308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n ^ 2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A280556.P8292979503472528308

namespace A280556

/-- `a(n-1)+n²*∏[n+1]` -/
def P8292979503472528308.Spec : Prop :=
  ∀ n, (P8292979503472528308.a n : ℤ) = A280556 n

end A280556

/-! ## A280556.P7524770082536477065

`gcd(2, 2*n)+(n-1)*∏[n+2]`
-/

namespace A280556.P7524770082536477065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (2 * n) : ℤ) + ((n : ℤ) - 1) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A280556.P7524770082536477065

namespace A280556

/-- `gcd(2, 2*n)+(n-1)*∏[n+2]` -/
def P7524770082536477065.Spec : Prop :=
  ∀ n, P7524770082536477065.a n = A280556 n

end A280556

/-! ## A280556.P16491994436811058379

`(n-1)*∏[C(n+2, n+1)]+2`
-/

namespace A280556.P16491994436811058379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2

end

end A280556.P16491994436811058379

namespace A280556

/-- `(n-1)*∏[C(n+2, n+1)]+2` -/
def P16491994436811058379.Spec : Prop :=
  ∀ n, P16491994436811058379.a n = A280556 n

end A280556

/-!
# A280558: Numbers k such that (13*10^k + 89) / 3 is prime.

The programs for A280558, there is no canonical definition to state claims against.
-/

/-! ## A280558.P11478685283703865273

`A341112(A341112(n+6)+A088163(n))`
-/

namespace A280558.P11478685283703865273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341112 (A341112 (n + 6) + A088163 n).toNat

end

end A280558.P11478685283703865273

/-! ## A280558.P16908250978025787544

`record[A048276(∑[A069889(n)])]`
-/

namespace A280558.P16908250978025787544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069889 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048276 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280558.P16908250978025787544

/-! ## A280558.P16951770425097030969

`record[A373989(A090260(n+1))]`
-/

namespace A280558.P16951770425097030969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373989 (A090260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280558.P16951770425097030969

/-! ## A280558.P4720321266320435360

`lt[A301314(A212656(n)), n+1]`
-/

namespace A280558.P4720321266320435360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301314 (A212656 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A280558.P4720321266320435360

/-! ## A280558.P7281469076469985044

`record[lcm(A303710(n+1), A320658(n+1))]`
-/

namespace A280558.P7281469076469985044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A303710 (n + 1)) (A320658 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280558.P7281469076469985044

/-!
# A280560: a(n) = (-1)^n * 2 if n!=0, with a(0) = 1.

The programs for A280560, the canonical program `A280560.P10846611347778956273` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280560 has offset 0).

The definition of A280560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280560.P10846611347778956273

`A084100(2*n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A280560

/-- `A084100(2*n)` -/
def P10846611347778956273.Spec : Prop :=
  ∀ n, P10846611347778956273.a n = A280560 n

theorem P10846611347778956273.correct : P10846611347778956273.Spec := by
  intro n
  simp only [A280560]

end A280560

/-!
# A280561: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 286", based on the 5-celled von Neumann neighborhood.

The programs for A280561, there is no canonical definition to state claims against.
-/

/-! ## A280561.P11440546301455855530

`A007088(A280563(n))`
-/

namespace A280561.P11440546301455855530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280563 n).toNat

end

end A280561.P11440546301455855530

/-! ## A280561.P8115446264150307614

`A007088(∑[A198633(n)]-A282986(n+1))`
-/

namespace A280561.P8115446264150307614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∑ j ∈ Finset.range (n + 1), f1 j - A282986 (n + 1)).toNat

end

end A280561.P8115446264150307614

/-! ## A280561.P14283111559435704006

`A007088(∑[A198633(n)]%A282986(n+1))`
-/

namespace A280561.P14283111559435704006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A282986 (n + 1))).toNat

end

end A280561.P14283111559435704006

/-! ## A280561.P4799631971454269758

`A007088(A126646(n+1)-A282986(n+1))`
-/

namespace A280561.P4799631971454269758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 (n + 1) - A282986 (n + 1)).toNat

end

end A280561.P4799631971454269758

/-! ## A280561.P9968744611225448077

`A007088(A000225(n+2)-A282986(n+1))`
-/

namespace A280561.P9968744611225448077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A000225 (n + 2) - A282986 (n + 1)).toNat

end

end A280561.P9968744611225448077

/-!
# A280562: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 286", based on the 5-celled von Neumann neighborhood.

The programs for A280562, there is no canonical definition to state claims against.
-/

/-! ## A280562.P14157896259713950793

`A007088(A280564(n))`
-/

namespace A280562.P14157896259713950793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280564 n).toNat

end

end A280562.P14157896259713950793

/-! ## A280562.P5828594849597887619

`A305989(A280563(n))`
-/

namespace A280562.P5828594849597887619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A280563 n).toNat

end

end A280562.P5828594849597887619

/-! ## A280562.P4305763016416684752

`A185544(2*A280564(n))`
-/

namespace A280562.P4305763016416684752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280564 n).toNat

end

end A280562.P4305763016416684752

/-! ## A280562.P4513908678287629007

`A185544(lcm(2, A280564(n)))`
-/

namespace A280562.P4513908678287629007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A280564 n))

end

end A280562.P4513908678287629007

/-! ## A280562.P2772980029089927032

`A305989(∑[A198633(n)]-A282986(n+1))`
-/

namespace A280562.P2772980029089927032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (∑ j ∈ Finset.range (n + 1), f1 j - A282986 (n + 1)).toNat

end

end A280562.P2772980029089927032

/-!
# A280563: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 286", based on the 5-celled von Neumann neighborhood.

The programs for A280563, there is no canonical definition to state claims against.
-/

/-! ## A280563.P7305685527284100310

`∑[A198633(n)]-A282986(n+1)`
-/

namespace A280563.P7305685527284100310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A282986 (n + 1)

end

end A280563.P7305685527284100310

/-! ## A280563.P7363828689100309048

`A126646(n+1)-A282986(n+1)`
-/

namespace A280563.P7363828689100309048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 1) - A282986 (n + 1)

end

end A280563.P7363828689100309048

/-! ## A280563.P1036288839794325095

`A000225(n+2)-A282986(n+1)`
-/

namespace A280563.P1036288839794325095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 2) - A282986 (n + 1)

end

end A280563.P1036288839794325095

/-! ## A280563.P4989893361391121451

`A198633(n+1)-(A282986(n+1)+1)`
-/

namespace A280563.P4989893361391121451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (n + 1) - (A282986 (n + 1) + 1)

end

end A280563.P4989893361391121451

/-! ## A280563.P11172404006923275843

`Δ[A000325(n+2)]-A282986(n+1)`
-/

namespace A280563.P11172404006923275843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A282986 (n + 1)

end

end A280563.P11172404006923275843

/-! ## A280563.P14328922593947445750

`A000325(n+3)-A282986(n+1)-A000325(n+2)`
-/

namespace A280563.P14328922593947445750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (n + 3) - A282986 (n + 1) - A000325 (n + 2)

end

end A280563.P14328922593947445750

/-!
# A280564: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 286", based on the 5-celled von Neumann neighborhood.

The programs for A280564, there is no canonical definition to state claims against.
-/

/-! ## A280564.P9596469499179859044

`A325401(lcm((n+1)/∏{p}[n+1, #], A280563(n)))`
-/

namespace A280564.P9596469499179859044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A280563 n))

end

end A280564.P9596469499179859044

/-! ## A280564.P431272499104856061

`A280563(n)-A055945(A280563(n))`
-/

namespace A280564.P431272499104856061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280563 n - A055945 (A280563 n).toNat

end

end A280564.P431272499104856061

/-! ## A280564.P4333637581637491205

`A325401(A160467(n+1)*A280563(n))`
-/

namespace A280564.P4333637581637491205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A160467 (n + 1) * A280563 n).toNat

end

end A280564.P4333637581637491205

/-! ## A280564.P13591064663626457220

`A325401(lcm(A160467(n+1), A280563(n)))`
-/

namespace A280564.P13591064663626457220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm (A160467 (n + 1)) (A280563 n))

end

end A280564.P13591064663626457220

/-! ## A280564.P16433912610587993861

`A325401((A126646(n+1)-A282986(n+1))*A160467(n+1))`
-/

namespace A280564.P16433912610587993861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 ((A126646 (n + 1) - A282986 (n + 1)) * A160467 (n + 1)).toNat

end

end A280564.P16433912610587993861

/-!
# A280565: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 291", based on the 5-celled von Neumann neighborhood.

The programs for A280565, there is no canonical definition to state claims against.
-/

/-! ## A280565.P16492968258463165912

`A007088(A280567(n))`
-/

namespace A280565.P16492968258463165912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280567 n).toNat

end

end A280565.P16492968258463165912

/-! ## A280565.P7791760825231226225

`A185544(2*A280567(n))`
-/

namespace A280565.P7791760825231226225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280567 n).toNat

end

end A280565.P7791760825231226225

/-!
# A280566: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 291", based on the 5-celled von Neumann neighborhood.

The programs for A280566, there is no canonical definition to state claims against.
-/

/-! ## A280566.P16450404062681607004

`A007088(A280568(n))`
-/

namespace A280566.P16450404062681607004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A280568 n).toNat

end

end A280566.P16450404062681607004

/-! ## A280566.P1651141049949603364

`A185544(2*A280568(n))`
-/

namespace A280566.P1651141049949603364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A280568 n).toNat

end

end A280566.P1651141049949603364

/-!
# A280567: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 291", based on the 5-celled von Neumann neighborhood.

The programs for A280567, there is no canonical definition to state claims against.
-/

/-! ## A280567.P11493066609696577775

`A280835(n-A340988(A280568(n)))`
-/

namespace A280567.P11493066609696577775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280835 ((n : ℤ) - A340988 ((A280568 n).toNat + 91)).toNat

end

end A280567.P11493066609696577775

/-! ## A280567.P15701101508973391560

`xor(A280835(n), A340988(A280568(n)))`
-/

namespace A280567.P15701101508973391560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A280835 n) (A340988 ((A280568 n).toNat + 91))

end

end A280567.P15701101508973391560

/-!
# A280569: a(n) = (-1)^n * 2 if n = 5*k and n!=0, otherwise a(n) = (-1)^n.

The programs for A280569, the canonical program `A280569.P16408018769860519565` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280569 has offset 0).

The definition of A280569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280569.P16408018769860519565

`gcd(2, A250120(n))/(-1)^n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A280569

/-- `gcd(2, A250120(n))/(-1)^n` -/
def P16408018769860519565.Spec : Prop :=
  ∀ n, P16408018769860519565.a n = (A280569 n : ℚ)

end A280569

/-!
# A280570: E.g.f. satisfies: A(x - Integral A(x) dx) = x + Integral 3*A(x) dx.

The programs for A280570, there is no canonical definition to state claims against.
-/

/-! ## A280570.P5493667930451218811

`A284679(or(A001353(n), A209917(n)))`
-/

namespace A280570.P5493667930451218811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (Int.lor (A001353 n) (A209917 n)).toNat

end

end A280570.P5493667930451218811

/-!
# A280576: Primes formed from the concatenation of previousprime(n) and n.

The programs for A280576, there is no canonical definition to state claims against.
-/

/-! ## A280576.P10506587993999996243

`A049851(A034808(n+1))`
-/

namespace A280576.P10506587993999996243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (A034808 (n + 1)).toNat

end

end A280576.P10506587993999996243

/-! ## A280576.P2884172191956341489

`p?[A049851(n+3)]`
-/

namespace A280576.P2884172191956341489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280576.P2884172191956341489

/-! ## A280576.P2254182475659435551

`filter[A049851(n+3), A010051(#)]`
-/

namespace A280576.P2254182475659435551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049851 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A280576.P2254182475659435551

/-! ## A280576.P8995092139711528040

`record[A020639(A049851(2*n+3))]`
-/

namespace A280576.P8995092139711528040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A049851 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280576.P8995092139711528040

/-!
# A280577: a(n) = eulerphi(n) + floor(n/2).

The programs for A280577, the canonical program `A280577.P14731675543969906002` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280577 has offset 1).

The definition of A280577 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280577.P14731675543969906002

`A000010(n+1)+A004526(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A280577

/-- `A000010(n+1)+A004526(n+1)` -/
def P14731675543969906002.Spec : Prop :=
  ∀ n, P14731675543969906002.a n = A280577 (n + 1)

theorem P14731675543969906002.correct : P14731675543969906002.Spec := by
  intro n
  simp only [A280577, Nat.add_sub_cancel]

end A280577

/-! ## A280577.P14764019770642556786

`Δ[A002088(n)]+ceil(n/2)`
-/

namespace A280577.P14764019770642556786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌈(n : ℚ) / 2⌉

end

end A280577.P14764019770642556786

namespace A280577

/-- `Δ[A002088(n)]+ceil(n/2)` -/
def P14764019770642556786.Spec : Prop :=
  ∀ n, P14764019770642556786.a n = A280577 (n + 1)

end A280577

/-! ## A280577.P15418536045267308540

`Δ[A005728(n)]+ceil(n/2)`
-/

namespace A280577.P15418536045267308540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌈(n : ℚ) / 2⌉

end

end A280577.P15418536045267308540

namespace A280577

/-- `Δ[A005728(n)]+ceil(n/2)` -/
def P15418536045267308540.Spec : Prop :=
  ∀ n, P15418536045267308540.a n = A280577 (n + 1)

end A280577

/-! ## A280577.P4385364772849443050

`A109606(n+1)+ceil(n/2)+1`
-/

namespace A280577.P4385364772849443050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (⌈(n : ℚ) / 2⌉ + 1)

end

end A280577.P4385364772849443050

namespace A280577

/-- `A109606(n+1)+ceil(n/2)+1` -/
def P4385364772849443050.Spec : Prop :=
  ∀ n, P4385364772849443050.a n = A280577 (n + 1)

end A280577

/-! ## A280577.P16915755668976921438

`round(A000010(lcm(2, n+1))+n/2)`
-/

namespace A280577.P16915755668976921438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000010 (Nat.lcm 2 (n + 1)) : ℚ) + (n : ℚ) / 2)

end

end A280577.P16915755668976921438

namespace A280577

/-- `round(A000010(lcm(2, n+1))+n/2)` -/
def P16915755668976921438.Spec : Prop :=
  ∀ n, P16915755668976921438.a n = A280577 (n + 1)

end A280577

/-! ## A280577.P11724297453773506833

`∑[and(1, n)+1]-A051953(n+1)`
-/

namespace A280577.P11724297453773506833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A051953 (n + 1)

end

end A280577.P11724297453773506833

namespace A280577

/-- `∑[and(1, n)+1]-A051953(n+1)` -/
def P11724297453773506833.Spec : Prop :=
  ∀ n, P11724297453773506833.a n = A280577 (n + 1)

end A280577

/-! ## A280577.P16077488693668004621

`round(A000010(C(n+1, n))+n/2)`
-/

namespace A280577.P16077488693668004621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000010 (Nat.choose (n + 1) n) : ℚ) + (n : ℚ) / 2)

end

end A280577.P16077488693668004621

namespace A280577

/-- `round(A000010(C(n+1, n))+n/2)` -/
def P16077488693668004621.Spec : Prop :=
  ∀ n, P16077488693668004621.a n = A280577 (n + 1)

end A280577

/-! ## A280577.P7165648799617161878

`A000010(-xor(n, -1))+round(n/2)`
-/

namespace A280577.P7165648799617161878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (-Int.xor (n : ℤ) (-1)).toNat + SequenceMachineLib.roundAway ((n : ℚ) / 2)

end

end A280577.P7165648799617161878

namespace A280577

/-- `A000010(-xor(n, -1))+round(n/2)` -/
def P7165648799617161878.Spec : Prop :=
  ∀ n, P7165648799617161878.a n = A280577 (n + 1)

end A280577

/-! ## A280577.P12581435666052023151

`round(A000010(n-log2(1/2))+n/2)`
-/

namespace A280577.P12581435666052023151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000010 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) + (n : ℚ) / 2)

end

end A280577.P12581435666052023151

namespace A280577

/-- `round(A000010(n-log2(1/2))+n/2)` -/
def P12581435666052023151.Spec : Prop :=
  ∀ n, P12581435666052023151.a n = A280577 (n + 1)

end A280577

/-! ## A280577.P7300648534989084269

`∑[and(1, n)]+A000010(2*n+1-n)`
-/

namespace A280577.P7300648534989084269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A000010 (2 * n + 1 - n)

end

end A280577.P7300648534989084269

namespace A280577

/-- `∑[and(1, n)]+A000010(2*n+1-n)` -/
def P7300648534989084269.Spec : Prop :=
  ∀ n, P7300648534989084269.a n = A280577 (n + 1)

end A280577

/-! ## A280577.P7866665514723318008

`floor(A000010(2*n-(n-1))+(n+1)/2)`
-/

namespace A280577.P7866665514723318008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) + (n + 1 : ℚ) / 2⌋

end

end A280577.P7866665514723318008

namespace A280577

/-- `floor(A000010(2*n-(n-1))+(n+1)/2)` -/
def P7866665514723318008.Spec : Prop :=
  ∀ n, P7866665514723318008.a n = A280577 (n + 1)

end A280577

/-! ## A280577.P6361308050192480758

`A110654(n)+A000010(n+1)`
-/

namespace A280577.P6361308050192480758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + A000010 (n + 1)

end

end A280577.P6361308050192480758

namespace A280577

/-- `A110654(n)+A000010(n+1)` -/
def P6361308050192480758.Spec : Prop :=
  ∀ n, P6361308050192480758.a n = A280577 (n + 1)

end A280577

/-! ## A280577.P3074047183986236125

`A075328(n)-A053158(n+1)`
-/

namespace A280577.P3074047183986236125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075328 n - A053158 (n + 1)

end

end A280577.P3074047183986236125

namespace A280577

/-- `A075328(n)-A053158(n+1)` -/
def P3074047183986236125.Spec : Prop :=
  ∀ n, P3074047183986236125.a n = A280577 (n + 1)

end A280577

/-! ## A280577.P16968022314687159705

`A121048(n+1)-A008619(n)`
-/

namespace A280577.P16968022314687159705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - A008619 n

end

end A280577.P16968022314687159705

namespace A280577

/-- `A121048(n+1)-A008619(n)` -/
def P16968022314687159705.Spec : Prop :=
  ∀ n, P16968022314687159705.a n = A280577 (n + 1)

end A280577

/-! ## A280577.P3147300009976383484

`A007494(n)-A219428(n+1)`
-/

namespace A280577.P3147300009976383484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n - A219428 (n + 1)

end

end A280577.P3147300009976383484

namespace A280577

/-- `A007494(n)-A219428(n+1)` -/
def P3147300009976383484.Spec : Prop :=
  ∀ n, P3147300009976383484.a n = A280577 (n + 1)

end A280577

/-! ## A280577.P11514134371518120705

`A000010(n+1)+abs(A001057(n))`
-/

namespace A280577.P11514134371518120705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + |A001057 n|

end

end A280577.P11514134371518120705

namespace A280577

/-- `A000010(n+1)+abs(A001057(n))` -/
def P11514134371518120705.Spec : Prop :=
  ∀ n, P11514134371518120705.a n = A280577 (n + 1)

end A280577

/-! ## A280577.P5198492711670206240

`A073757(n+1)+A003165(n+1)`
-/

namespace A280577.P5198492711670206240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) + A003165 (n + 1)

end

end A280577.P5198492711670206240

namespace A280577

/-- `A073757(n+1)+A003165(n+1)` -/
def P5198492711670206240.Spec : Prop :=
  ∀ n, P5198492711670206240.a n = A280577 (n + 1)

theorem P5198492711670206240.correct : P5198492711670206240.Spec := by
  intro n
  simp only [A280577, Nat.add_sub_cancel, A280577.P5198492711670206240.a, A280577.P14731675543969906002.a, A000010, A000010.P4673923239450215316.a, A003165, A003165.P18392943898696329135.a, A004526, A004526.P10084182425416171735.a, A073757, A073757.P6861480467973211752.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A280577

/-! ## A280577.P9155631314360065546

`A000010(n+1)+A080513(n)-1`
-/

namespace A280577.P9155631314360065546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A080513 n - 1)

end

end A280577.P9155631314360065546

namespace A280577

/-- `A000010(n+1)+A080513(n)-1` -/
def P9155631314360065546.Spec : Prop :=
  ∀ n, P9155631314360065546.a n = A280577 (n + 1)

end A280577

/-! ## A280577.P6497933980529019526

`A294732(n+2)-A016035(n+1)`
-/

namespace A280577.P6497933980529019526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294732 (n + 2) - A016035 (n + 1)

end

end A280577.P6497933980529019526

namespace A280577

/-- `A294732(n+2)-A016035(n+1)` -/
def P6497933980529019526.Spec : Prop :=
  ∀ n, P6497933980529019526.a n = A280577 (n + 1)

end A280577

/-! ## A280577.P17868294360570582196

`A000010(n+1)+A002620(n+1)-A002620(n)`
-/

namespace A280577.P17868294360570582196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A002620 (n + 1) - A002620 n)

end

end A280577.P17868294360570582196

namespace A280577

/-- `A000010(n+1)+A002620(n+1)-A002620(n)` -/
def P17868294360570582196.Spec : Prop :=
  ∀ n, P17868294360570582196.a n = A280577 (n + 1)

end A280577

/-!
# A280578: Integers that are fixed points of some iteration of f(x) = phi(x) + floor(x/2), see A280577.

The programs for A280578, there is no canonical definition to state claims against.
-/

/-! ## A280578.P6213112005243134945

`eq[0, A097027(n+1)]+1`
-/

namespace A280578.P6213112005243134945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A280578.P6213112005243134945

/-! ## A280578.P11643649444130692570

`lt[A097027(n+1), A054977(n)]+1`
-/

namespace A280578.P11643649444130692570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A280578.P11643649444130692570

/-! ## A280578.P4694008214009388654

`A000027(record[gcd(n+1, A097027(n+1))])`
-/

namespace A280578.P4694008214009388654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A097027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A280578.P4694008214009388654

/-! ## A280578.P15995447531781914549

`eq[A097026(n+1), A097028(n+1)]+1`
-/

namespace A280578.P15995447531781914549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097028 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A280578.P15995447531781914549

/-! ## A280578.P16211213527270486939

`A006519(2*n+5)+lt[A097027(n+1), 1]`
-/

namespace A280578.P16211213527270486939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097027 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 5) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A280578.P16211213527270486939

/-!
# A280580: Triangle read by rows: T(n,k) = binomial(2*n,2*k)*binomial(2*n-2*k,n-k)/(n+1-k) for 0<=k<=n.

The programs for A280580, the canonical program `A280580.P3824912328366219957` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280580 has offset 0).

The definition of A280580 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280580.P3824912328366219957

`A000108(A025581(n))*A086645(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A280580

/-- `A000108(A025581(n))*A086645(n)` -/
def P3824912328366219957.Spec : Prop :=
  ∀ n, P3824912328366219957.a n = A280580 n

theorem P3824912328366219957.correct : P3824912328366219957.Spec := by
  intro n
  simp only [A280580]

end A280580

/-! ## A280580.P3538483859602635928

`A342982(n)/A342982(A112367(n))`
-/

namespace A280580.P3538483859602635928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342982 n : ℚ) / (A342982 (A112367 n).toNat : ℚ)

end

end A280580.P3538483859602635928

namespace A280580

/-- `A342982(n)/A342982(A112367(n))` -/
def P3538483859602635928.Spec : Prop :=
  ∀ n, P3538483859602635928.a n = (A280580 n : ℚ)

end A280580

/-! ## A280580.P2545493659229976432

`A097610(A185868(n+1)-1)`
-/

namespace A280580.P2545493659229976432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 (A185868 (n + 1) - 1).toNat

end

end A280580.P2545493659229976432

namespace A280580

/-- `A097610(A185868(n+1)-1)` -/
def P2545493659229976432.Spec : Prop :=
  ∀ n, P2545493659229976432.a n = A280580 n

end A280580

/-! ## A280580.P9645114221764880069

`A048854(n)/A004736(n+1)!`
-/

namespace A280580.P9645114221764880069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048854 n : ℚ) / (Nat.factorial (A004736 (n + 1)).toNat : ℚ)

end

end A280580.P9645114221764880069

namespace A280580

/-- `A048854(n)/A004736(n+1)!` -/
def P9645114221764880069.Spec : Prop :=
  ∀ n, P9645114221764880069.a n = (A280580 n : ℚ)

end A280580

/-! ## A280580.P11306666239212675815

`A001263(n+1)/A105278(n+1)*A048854(n)`
-/

namespace A280580.P11306666239212675815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A105278 (n + 1) : ℚ) * (A048854 n : ℚ)

end

end A280580.P11306666239212675815

namespace A280580

/-- `A001263(n+1)/A105278(n+1)*A048854(n)` -/
def P11306666239212675815.Spec : Prop :=
  ∀ n, P11306666239212675815.a n = (A280580 n : ℚ)

end A280580

/-! ## A280580.P8546371961706954844

`A097610(eq[0, A155998(n)])`
-/

namespace A280580.P8546371961706954844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097610 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280580.P8546371961706954844

namespace A280580

/-- `A097610(eq[0, A155998(n)])` -/
def P8546371961706954844.Spec : Prop :=
  ∀ n, P8546371961706954844.a n = A280580 n

end A280580

/-!
# A280581: a(n) = the product of divisors of sum of divisors of n.

The programs for A280581, the canonical program `A280581.P8181820732496802656` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280581 has offset 1).

The definition of A280581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280581.P8181820732496802656

`A007955(A000203(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A280581

/-- `A007955(A000203(n+1))` -/
def P8181820732496802656.Spec : Prop :=
  ∀ n, P8181820732496802656.a n = A280581 (n + 1)

theorem P8181820732496802656.correct : P8181820732496802656.Spec := by
  intro n
  simp only [A280581, Nat.add_sub_cancel]

end A280581

/-! ## A280581.P10115335811577229287

`∏{d}[∑{d}[n+1, #], #]`
-/

namespace A280581.P10115335811577229287
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A280581.P10115335811577229287

namespace A280581

/-- `∏{d}[∑{d}[n+1, #], #]` -/
def P10115335811577229287.Spec : Prop :=
  ∀ n, (P10115335811577229287.a n : ℤ) = A280581 (n + 1)

end A280581

/-! ## A280581.P11510602985519419104

`2^∑{d}[∑{d}[n+1, #], log2(#)]`
-/

namespace A280581.P11510602985519419104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (d : ℝ))

end

end A280581.P11510602985519419104

namespace A280581

/-- `2^∑{d}[∑{d}[n+1, #], log2(#)]` -/
def P11510602985519419104.Spec : Prop :=
  ∀ n, P11510602985519419104.a n = (A280581 (n + 1) : ℝ)

end A280581

/-! ## A280581.P2262273287989679026

`∏{d}[Δ[A160664(n)], #]`
-/

namespace A280581.P2262273287989679026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A280581.P2262273287989679026

namespace A280581

/-- `∏{d}[Δ[A160664(n)], #]` -/
def P2262273287989679026.Spec : Prop :=
  ∀ n, (P2262273287989679026.a n : ℤ) = A280581 (n + 1)

end A280581

/-! ## A280581.P6060826982516206606

`A007955(∑{d}[n+1, #])`
-/

namespace A280581.P6060826982516206606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A280581.P6060826982516206606

namespace A280581

/-- `A007955(∑{d}[n+1, #])` -/
def P6060826982516206606.Spec : Prop :=
  ∀ n, P6060826982516206606.a n = A280581 (n + 1)

end A280581

/-! ## A280581.P15178458938645107827

`∏{d}[A143348(n+1), #]`
-/

namespace A280581.P15178458938645107827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A280581.P15178458938645107827

namespace A280581

/-- `∏{d}[A143348(n+1), #]` -/
def P15178458938645107827.Spec : Prop :=
  ∀ n, (P15178458938645107827.a n : ℤ) = A280581 (n + 1)

end A280581

/-! ## A280581.P5790108179057091792

`∏{d}[sqrt(A072861(n+1)), #]`
-/

namespace A280581.P5790108179057091792
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A280581.P5790108179057091792

namespace A280581

/-- `∏{d}[sqrt(A072861(n+1)), #]` -/
def P5790108179057091792.Spec : Prop :=
  ∀ n, (P5790108179057091792.a n : ℤ) = A280581 (n + 1)

end A280581

/-! ## A280581.P11850900193635937930

`∏{d}[A039653(n+1)+1, #]`
-/

namespace A280581.P11850900193635937930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A280581.P11850900193635937930

namespace A280581

/-- `∏{d}[A039653(n+1)+1, #]` -/
def P11850900193635937930.Spec : Prop :=
  ∀ n, (P11850900193635937930.a n : ℤ) = A280581 (n + 1)

end A280581

/-! ## A280581.P1547605991500091521

`∏{d}[1-A088580(n+1), #]`
-/

namespace A280581.P1547605991500091521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088580 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A280581.P1547605991500091521

namespace A280581

/-- `∏{d}[1-A088580(n+1), #]` -/
def P1547605991500091521.Spec : Prop :=
  ∀ n, (P1547605991500091521.a n : ℤ) = A280581 (n + 1)

end A280581

/-! ## A280581.P5147684047513505008

`∏{d}[A245092(2*n+1), #]`
-/

namespace A280581.P5147684047513505008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A280581.P5147684047513505008

namespace A280581

/-- `∏{d}[A245092(2*n+1), #]` -/
def P5147684047513505008.Spec : Prop :=
  ∀ n, (P5147684047513505008.a n : ℤ) = A280581 (n + 1)

end A280581

/-! ## A280581.P15362949725695191563

`∏{d}[A262610(2*n+1), #]`
-/

namespace A280581.P15362949725695191563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262610 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A280581.P15362949725695191563

namespace A280581

/-- `∏{d}[A262610(2*n+1), #]` -/
def P15362949725695191563.Spec : Prop :=
  ∀ n, (P15362949725695191563.a n : ℤ) = A280581 (n + 1)

end A280581

/-! ## A280581.P16075514647982946929

`∏{d}[A326065(2*(n+1)), #]`
-/

namespace A280581.P16075514647982946929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A280581.P16075514647982946929

namespace A280581

/-- `∏{d}[A326065(2*(n+1)), #]` -/
def P16075514647982946929.Spec : Prop :=
  ∀ n, (P16075514647982946929.a n : ℤ) = A280581 (n + 1)

end A280581

/-! ## A280581.P1046445254670148847

`∏{d}[A146076(2*(n+1))/2, #]`
-/

namespace A280581.P1046445254670148847
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146076 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A280581.P1046445254670148847

namespace A280581

/-- `∏{d}[A146076(2*(n+1))/2, #]` -/
def P1046445254670148847.Spec : Prop :=
  ∀ n, (P1046445254670148847.a n : ℤ) = A280581 (n + 1)

end A280581

/-! ## A280581.P7738931928117549495

`∏{d}[A155085(n+1)-(n+1), #]`
-/

namespace A280581.P7738931928117549495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A280581.P7738931928117549495

namespace A280581

/-- `∏{d}[A155085(n+1)-(n+1), #]` -/
def P7738931928117549495.Spec : Prop :=
  ∀ n, (P7738931928117549495.a n : ℤ) = A280581 (n + 1)

end A280581

/-! ## A280581.P18388889535672391148

`A007955(Δ[A160664(n)])`
-/

namespace A280581.P18388889535672391148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (f1 (n + 1) - f1 n).toNat

end

end A280581.P18388889535672391148

namespace A280581

/-- `A007955(Δ[A160664(n)])` -/
def P18388889535672391148.Spec : Prop :=
  ∀ n, P18388889535672391148.a n = A280581 (n + 1)

end A280581

/-! ## A280581.P9395189642368069293

`A007955(A262610(Δ[n²]))`
-/

namespace A280581.P9395189642368069293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A262610 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A280581.P9395189642368069293

namespace A280581

/-- `A007955(A262610(Δ[n²]))` -/
def P9395189642368069293.Spec : Prop :=
  ∀ n, P9395189642368069293.a n = A280581 (n + 1)

end A280581

/-! ## A280581.P12738819205069369424

`A007955(A088580(n+1)-1)`
-/

namespace A280581.P12738819205069369424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A088580 (n + 1) - 1).toNat

end

end A280581.P12738819205069369424

namespace A280581

/-- `A007955(A088580(n+1)-1)` -/
def P12738819205069369424.Spec : Prop :=
  ∀ n, P12738819205069369424.a n = A280581 (n + 1)

theorem P12738819205069369424.correct : P12738819205069369424.Spec := by
  intro n
  simp only [A280581, Nat.add_sub_cancel, A280581.P12738819205069369424.a, A280581.P8181820732496802656.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007955, A007955.P14752630106558465512.a, A088580, A088580.P3089093194242277422.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280581

/-! ## A280581.P18126984180977030008

`A007955(A074400(n+1)/2)`
-/

namespace A280581.P18126984180977030008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A280581.P18126984180977030008

namespace A280581

/-- `A007955(A074400(n+1)/2)` -/
def P18126984180977030008.Spec : Prop :=
  ∀ n, P18126984180977030008.a n = A280581 (n + 1)

end A280581

/-! ## A280581.P3287383664597837721

`∑{d}[A000203(n+1), A174940(#)]`
-/

namespace A280581.P3287383664597837721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A174940 d

end

end A280581.P3287383664597837721

namespace A280581

/-- `∑{d}[A000203(n+1), A174940(#)]` -/
def P3287383664597837721.Spec : Prop :=
  ∀ n, P3287383664597837721.a n = A280581 (n + 1)

end A280581

/-! ## A280581.P6840324459939478743

`A007955(A001065(n+1)+n+1)`
-/

namespace A280581.P6840324459939478743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A280581.P6840324459939478743

namespace A280581

/-- `A007955(A001065(n+1)+n+1)` -/
def P6840324459939478743.Spec : Prop :=
  ∀ n, P6840324459939478743.a n = A280581 (n + 1)

theorem P6840324459939478743.correct : P6840324459939478743.Spec := by
  intro n
  simp only [A280581, Nat.add_sub_cancel, A280581.P6840324459939478743.a, A280581.P8181820732496802656.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007955, A007955.P14752630106558465512.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280581

/-!
# A280582: a(n) = the product of divisors of product of divisors of n.

The programs for A280582, there is no canonical definition to state claims against.
-/

/-! ## A280582.P18274453927485241643

`∏{d}[∏{d}[n+1, #], #]`
-/

namespace A280582.P18274453927485241643
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A280582.P18274453927485241643

/-! ## A280582.P3854440315415445156

`∏{d}[ratio[∏{d}[n, #]]*∏{d}[n, #], #]`
-/

namespace A280582.P3854440315415445156
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) * ((∏ d ∈ Nat.divisors (f4 n), d : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A280582.P3854440315415445156

/-! ## A280582.P13830245277360199931

`∏{d}[A007955(n+1), #]`
-/

namespace A280582.P13830245277360199931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A280582.P13830245277360199931

/-! ## A280582.P10757084883373375263

`∏{d}[A131738(∏{d}[A131738(n), #]-1), #]`
-/

namespace A280582.P10757084883373375263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (∏ d ∈ Nat.divisors (f2 n).natAbs, d - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A280582.P10757084883373375263

/-! ## A280582.P18245407139111314638

`A078599(n+1)*A178649(2^∑{d}[n+1, log2(#)])`
-/

namespace A280582.P18245407139111314638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078599 (n + 1) * A178649 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (d : ℝ)))).toNat

end

end A280582.P18245407139111314638

/-!
# A280583: a(n) = product of divisors of the number of divisors of n.

The programs for A280583, the canonical program `A280583.P392735101268352223` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280583 has offset 1).

The definition of A280583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280583.P392735101268352223

`A007955(A000005(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A280583

/-- `A007955(A000005(n+1))` -/
def P392735101268352223.Spec : Prop :=
  ∀ n, P392735101268352223.a n = A280583 (n + 1)

theorem P392735101268352223.correct : P392735101268352223.Spec := by
  intro n
  simp only [A280583, Nat.add_sub_cancel]

end A280583

/-! ## A280583.P9026882763771030790

`∏{d}[∏{e}[n+1, #+1], #]`
-/

namespace A280583.P9026882763771030790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A280583.P9026882763771030790

namespace A280583

/-- `∏{d}[∏{e}[n+1, #+1], #]` -/
def P9026882763771030790.Spec : Prop :=
  ∀ n, (P9026882763771030790.a n : ℤ) = A280583 (n + 1)

end A280583

/-! ## A280583.P3168327059704058803

`∏{d}[∑{d}[n+1, gcd(n, #)], #]`
-/

namespace A280583.P3168327059704058803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A280583.P3168327059704058803

namespace A280583

/-- `∏{d}[∑{d}[n+1, gcd(n, #)], #]` -/
def P3168327059704058803.Spec : Prop :=
  ∀ n, (P3168327059704058803.a n : ℤ) = A280583 (n + 1)

end A280583

/-! ## A280583.P16377067809154581018

`∏{d}[∑{d}[n+1, #+1]-∑{d}[n+1, #], #]`
-/

namespace A280583.P16377067809154581018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), (d + 1) : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A280583.P16377067809154581018

namespace A280583

/-- `∏{d}[∑{d}[n+1, #+1]-∑{d}[n+1, #], #]` -/
def P16377067809154581018.Spec : Prop :=
  ∀ n, (P16377067809154581018.a n : ℤ) = A280583 (n + 1)

end A280583

/-! ## A280583.P12691693554755032530

`∏{d}[Δ[A006218(n)], #]`
-/

namespace A280583.P12691693554755032530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A280583.P12691693554755032530

namespace A280583

/-- `∏{d}[Δ[A006218(n)], #]` -/
def P12691693554755032530.Spec : Prop :=
  ∀ n, (P12691693554755032530.a n : ℤ) = A280583 (n + 1)

end A280583

/-! ## A280583.P8916845140413984868

`∏{d}[A329484(n+1), #]`
-/

namespace A280583.P8916845140413984868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A280583.P8916845140413984868

namespace A280583

/-- `∏{d}[A329484(n+1), #]` -/
def P8916845140413984868.Spec : Prop :=
  ∀ n, (P8916845140413984868.a n : ℤ) = A280583 (n + 1)

end A280583

/-! ## A280583.P3094890467249405913

`∏{d}[sqrt(A035116(n+1)), #]`
-/

namespace A280583.P3094890467249405913
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035116 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A280583.P3094890467249405913

namespace A280583

/-- `∏{d}[sqrt(A035116(n+1)), #]` -/
def P3094890467249405913.Spec : Prop :=
  ∀ n, (P3094890467249405913.a n : ℤ) = A280583 (n + 1)

end A280583

/-! ## A280583.P1325808402841308951

`∏{d}[A032741(n+1)+1, #]`
-/

namespace A280583.P1325808402841308951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A280583.P1325808402841308951

namespace A280583

/-- `∏{d}[A032741(n+1)+1, #]` -/
def P1325808402841308951.Spec : Prop :=
  ∀ n, (P1325808402841308951.a n : ℤ) = A280583 (n + 1)

end A280583

/-! ## A280583.P10712694154789842782

`∏{d}[A320111(2*(n+1)), #]`
-/

namespace A280583.P10712694154789842782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A280583.P10712694154789842782

namespace A280583

/-- `∏{d}[A320111(2*(n+1)), #]` -/
def P10712694154789842782.Spec : Prop :=
  ∀ n, (P10712694154789842782.a n : ℤ) = A280583 (n + 1)

end A280583

/-! ## A280583.P6765077338628225316

`A007955(A032741(n+1)+1)`
-/

namespace A280583.P6765077338628225316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A032741 (n + 1) + 1).toNat

end

end A280583.P6765077338628225316

namespace A280583

/-- `A007955(A032741(n+1)+1)` -/
def P6765077338628225316.Spec : Prop :=
  ∀ n, P6765077338628225316.a n = A280583 (n + 1)

end A280583

/-! ## A280583.P8839440480105931142

`∑{d}[A000005(n+1), A174940(#)]`
-/

namespace A280583.P8839440480105931142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A174940 d

end

end A280583.P8839440480105931142

namespace A280583

/-- `∑{d}[A000005(n+1), A174940(#)]` -/
def P8839440480105931142.Spec : Prop :=
  ∀ n, P8839440480105931142.a n = A280583 (n + 1)

end A280583

/-! ## A280583.P15648513286628418545

`A007955(1-A049820(n+1)+n)`
-/

namespace A280583.P15648513286628418545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (1 - A049820 (n + 1) + (n : ℤ)).toNat

end

end A280583.P15648513286628418545

namespace A280583

/-- `A007955(1-A049820(n+1)+n)` -/
def P15648513286628418545.Spec : Prop :=
  ∀ n, P15648513286628418545.a n = A280583 (n + 1)

theorem P15648513286628418545.correct : P15648513286628418545.Spec := by
  intro n
  simp only [A280583, Nat.add_sub_cancel, A280583.P15648513286628418545.a, A280583.P392735101268352223.a, A000005, A000005.P16091521709108585461.a, A007955, A007955.P14752630106558465512.a, A049820, A049820.P9428372222244335888.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280583

/-! ## A280583.P8459299573334626296

`A007955(A038040(n+1)/(n+1))`
-/

namespace A280583.P8459299573334626296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A280583.P8459299573334626296

namespace A280583

/-- `A007955(A038040(n+1)/(n+1))` -/
def P8459299573334626296.Spec : Prop :=
  ∀ n, P8459299573334626296.a n = A280583 (n + 1)

end A280583

/-! ## A280583.P9594385046741613844

`A000005(n+1)*A007956(∏{e}[n+1, #+1])`
-/

namespace A280583.P9594385046741613844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A007956 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A280583.P9594385046741613844

namespace A280583

/-- `A000005(n+1)*A007956(∏{e}[n+1, #+1])` -/
def P9594385046741613844.Spec : Prop :=
  ∀ n, P9594385046741613844.a n = A280583 (n + 1)

end A280583

/-! ## A280583.P5092270838865794062

`A007955(A038548(n+1)+floor(∏{e}[n+1, #+1]/2))`
-/

namespace A280583.P5092270838865794062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A038548 (n + 1) + ⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌋).toNat

end

end A280583.P5092270838865794062

namespace A280583

/-- `A007955(A038548(n+1)+floor(∏{e}[n+1, #+1]/2))` -/
def P5092270838865794062.Spec : Prop :=
  ∀ n, P5092270838865794062.a n = A280583 (n + 1)

theorem P5092270838865794062.correct : P5092270838865794062.Spec := by
  intro n
  simp only [A280583, Nat.add_sub_cancel, A280583.P5092270838865794062.f1, A280583.P5092270838865794062.a, A280583.P392735101268352223.a, A000005, A000005.P16091521709108585461.a, A007955, A007955.P14752630106558465512.a, A038548, A038548.P12593795823109361725.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A056924, A056924.P8846060015044098494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280583

/-! ## A280583.P5359595342685887209

`A007955(floor(∏{e}[n+1, #+1]/2)+A072670(n)+1)`
-/

namespace A280583.P5359595342685887209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌋ + (A072670 n + 1)).toNat

end

end A280583.P5359595342685887209

namespace A280583

/-- `A007955(floor(∏{e}[n+1, #+1]/2)+A072670(n)+1)` -/
def P5359595342685887209.Spec : Prop :=
  ∀ n, P5359595342685887209.a n = A280583 (n + 1)

theorem P5359595342685887209.correct : P5359595342685887209.Spec := by
  intro n
  simp only [A280583, Nat.add_sub_cancel, A280583.P5359595342685887209.f1, A280583.P5359595342685887209.a, A280583.P392735101268352223.a, A000005, A000005.P16091521709108585461.a, A007955, A007955.P14752630106558465512.a, A072670, A072670.P17694124448625562099.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A038548, A038548.P12593795823109361725.a, A056924, A056924.P8846060015044098494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280583

/-! ## A280583.P12493570733671373863

`A007955(floor(∏{e}[n+1, #+1]/2)+A161840(n+1)/2+1)`
-/

namespace A280583.P12493570733671373863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (SequenceMachineLib.roundAway ((⌊((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌋ : ℚ) + ((A161840 (n + 1) : ℚ) / 2 + 1))).toNat

end

end A280583.P12493570733671373863

namespace A280583

/-- `A007955(floor(∏{e}[n+1, #+1]/2)+A161840(n+1)/2+1)` -/
def P12493570733671373863.Spec : Prop :=
  ∀ n, P12493570733671373863.a n = A280583 (n + 1)

end A280583

/-! ## A280583.P11653696526304948309

`A007955(A006218(n+1)-A006218(n))`
-/

namespace A280583.P11653696526304948309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A006218 (n + 1) - A006218 n).toNat

end

end A280583.P11653696526304948309

namespace A280583

/-- `A007955(A006218(n+1)-A006218(n))` -/
def P11653696526304948309.Spec : Prop :=
  ∀ n, P11653696526304948309.a n = A280583 (n + 1)

end A280583

/-! ## A280583.P11311284523066935166

`A007955(A048105(n+1)+A034444(n+1))`
-/

namespace A280583.P11311284523066935166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A048105 (n + 1) + A034444 (n + 1)).toNat

end

end A280583.P11311284523066935166

namespace A280583

/-- `A007955(A048105(n+1)+A034444(n+1))` -/
def P11311284523066935166.Spec : Prop :=
  ∀ n, P11311284523066935166.a n = A280583 (n + 1)

theorem P11311284523066935166.correct : P11311284523066935166.Spec := by
  intro n
  simp only [A280583, Nat.add_sub_cancel, A280583.P11311284523066935166.a, A280583.P392735101268352223.a, A000005, A000005.P16091521709108585461.a, A007955, A007955.P14752630106558465512.a, A034444, A034444.P6574915864346323298.a, A048105, A048105.P14513846835403787716.a, A001221, A001221.P10258181745752134128.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A280583

/-! ## A280583.P798166828209543608

`A007955(A056924(n+1)+A038548(n+1))`
-/

namespace A280583.P798166828209543608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A056924 (n + 1) + A038548 (n + 1)).toNat

end

end A280583.P798166828209543608

namespace A280583

/-- `A007955(A056924(n+1)+A038548(n+1))` -/
def P798166828209543608.Spec : Prop :=
  ∀ n, P798166828209543608.a n = A280583 (n + 1)

theorem P798166828209543608.correct : P798166828209543608.Spec := by
  intro n
  simp only [A280583, Nat.add_sub_cancel, A280583.P798166828209543608.a, A280583.P392735101268352223.a, A000005, A000005.P16091521709108585461.a, A007955, A007955.P14752630106558465512.a, A038548, A038548.P12593795823109361725.a, A056924, A056924.P8846060015044098494.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A280583

/-!
# A280586: Expansion of Product_{p prime, k>=2} 1/(1 - x^(p^k)).

The programs for A280586, there is no canonical definition to state claims against.
-/

/-! ## A280586.P13621817930821779555

`A112344(abs(A131818(C(4*n, 2)+2)-n)+2)`
-/

namespace A280586.P13621817930821779555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112344 (|A131818 (Nat.choose (4 * n) 2 + 2) - (n : ℤ)| + 2).toNat

end

end A280586.P13621817930821779555

/-! ## A280586.P17463728573048743750

`A112344(A028310(n))+A000035(A005901(n))`
-/

namespace A280586.P17463728573048743750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112344 (A028310 n).toNat + A000035 (A005901 n).toNat

end

end A280586.P17463728573048743750

/-! ## A280586.P2107823211328829094

`A112344(A028310(n))^A109038(A259346(n+1))`
-/

namespace A280586.P2107823211328829094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112344 (A028310 n).toNat : ℚ) ^ (A109038 (A259346 (n + 1)).toNat : ℤ)

end

end A280586.P2107823211328829094

/-! ## A280586.P15136307376286678794

`A112344(C(A088011(n+1), A139250(3*n+1))+n)`
-/

namespace A280586.P15136307376286678794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112344 (Nat.choose (A088011 (n + 1)).toNat (A139250 (3 * n + 1)).toNat + n)

end

end A280586.P15136307376286678794

/-!
# A280589: Sum of odd divisors of Bell(n).

The programs for A280589, there is no canonical definition to state claims against.
-/

/-! ## A280589.P11156007396094290888

`A000593(A000110(n))`
-/

namespace A280589.P11156007396094290888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A000110 n).toNat

end

end A280589.P11156007396094290888

/-! ## A280589.P8706240318439338469

`∑{d}[A292935(n), lcm(2, #)-#]`
-/

namespace A280589.P8706240318439338469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((Nat.lcm 2 d : ℤ) - (d : ℤ))

end

end A280589.P8706240318439338469

/-! ## A280589.P2558162395779171056

`∑{d}[A033306(∑[n]), #*and(1, #)]`
-/

namespace A280589.P2558162395779171056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033306 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * Nat.land 1 d

end

end A280589.P2558162395779171056

/-! ## A280589.P16469949658545913745

`∑{d}[A327884(∑[n]), #*and(1, #)]`
-/

namespace A280589.P16469949658545913745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327884 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * Nat.land 1 d

end

end A280589.P16469949658545913745

/-! ## A280589.P15530932405480191751

`∑{d}[A292935(n)/A061462(n), #]`
-/

namespace A280589.P15530932405480191751
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292935 n : ℚ) / (A061462 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A280589.P15530932405480191751

/-!
# A280592: Numbers n such that phi(n) is a Fibonacci number.

The programs for A280592, there is no canonical definition to state claims against.
-/

/-! ## A280592.P18340652292613632007

`lt[dr(A014417(A000010(n+1))), 2]+1`
-/

namespace A280592.P18340652292613632007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A014417 (A000010 (n + 1)).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A280592.P18340652292613632007

/-! ## A280592.P10235866278040996826

`record[A000027(n+1)^(2-A007895(A000010(n+1)))]`
-/

namespace A280592.P10235866278040996826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) ^ (2 - A007895 (A000010 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280592.P10235866278040996826

/-! ## A280592.P8966104751076745484

`record[A328617(n+1)^(2-A007895(A000010(n+1)))]`
-/

namespace A280592.P8966104751076745484
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328617 (n + 1) : ℚ) ^ (2 - A007895 (A000010 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280592.P8966104751076745484

/-! ## A280592.P11569965636828225904

`eq[A007895(A225530(n)), A054977(n)]`
-/

namespace A280592.P11569965636828225904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280592.P11569965636828225904

/-! ## A280592.P8196553173419712999

`eq[A007895(A225530(n)), A057427(n)]`
-/

namespace A280592.P8196553173419712999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280592.P8196553173419712999

/-!
# A280593: Natural numbers whose digits can be formed by typing adjacent keys on a 123-456-789 keypad without repeating a digit.

The programs for A280593, there is no canonical definition to state claims against.
-/

/-! ## A280593.P2087097928752054685

`∩[A280594(n+1), A281942(n+2)]`
-/

namespace A280593.P2087097928752054685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281942 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280593.P2087097928752054685

/-! ## A280593.P18049895788199544770

`∩[A280594(n+1), A281943(n+2)]`
-/

namespace A280593.P18049895788199544770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281943 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280593.P18049895788199544770

/-! ## A280593.P3740634756723257095

`∩[A280595(n+1), A281943(n+2)]`
-/

namespace A280593.P3740634756723257095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281943 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280593.P3740634756723257095

/-! ## A280593.P1427844179553871704

`∩[A281942(n+1), A281943(n+2)]`
-/

namespace A280593.P1427844179553871704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281943 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280593.P1427844179553871704

/-! ## A280593.P9091032164468388886

`∩[A215009(n+1), A280595(n+2)]`
-/

namespace A280593.P9091032164468388886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280595 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280593.P9091032164468388886

/-! ## A280593.P5822348256481422009

`∩[A215009(n+1), A281942(n+2)]`
-/

namespace A280593.P5822348256481422009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281942 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280593.P5822348256481422009

/-! ## A280593.P970471991675965529

`∩[A052382(n+1), A280594(n+1)]`
-/

namespace A280593.P970471991675965529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280593.P970471991675965529

/-! ## A280593.P4306873881405156123

`∩[A052382(n+1), A280595(n+1)]`
-/

namespace A280593.P4306873881405156123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280593.P4306873881405156123

/-! ## A280593.P12982419841690365942

`∩[A052382(n+1), A281942(n+1)]`
-/

namespace A280593.P12982419841690365942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280593.P12982419841690365942

/-! ## A280593.P16546033053333901727

`∩[A052382(n+1), A281943(n+1)]`
-/

namespace A280593.P16546033053333901727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280593.P16546033053333901727

/-! ## A280593.P14180149336219736085

`filter[A280594(n+1), A168046(#)]`
-/

namespace A280593.P14180149336219736085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A280593.P14180149336219736085

/-! ## A280593.P4347192440621821506

`filter[A280595(n+1), A168046(#)]`
-/

namespace A280593.P4347192440621821506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A280593.P4347192440621821506

/-! ## A280593.P9260547036426358552

`filter[A280594(n+1), A168184(#)]`
-/

namespace A280593.P9260547036426358552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A280593.P9260547036426358552

/-! ## A280593.P13450277792017764268

`filter[A281942(n+1), A168046(#)]`
-/

namespace A280593.P13450277792017764268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A280593.P13450277792017764268

/-! ## A280593.P12599797951258859913

`filter[A281943(n+1), A168046(#)]`
-/

namespace A280593.P12599797951258859913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A280593.P12599797951258859913

/-! ## A280593.P13264445615235031778

`filter[A281942(n+1), A168184(#)]`
-/

namespace A280593.P13264445615235031778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A280593.P13264445615235031778

/-! ## A280593.P4207423336377258349

`filter[A280594(n+2), A228710(#)]`
-/

namespace A280593.P4207423336377258349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280594 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A280593.P4207423336377258349

/-! ## A280593.P13663345789986599947

`∩[A067251(n+1), A280594(n+1)]`
-/

namespace A280593.P13663345789986599947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280593.P13663345789986599947

/-! ## A280593.P15338945289003888713

`∩[A067251(n+1), A281942(n+1)]`
-/

namespace A280593.P15338945289003888713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280593.P15338945289003888713

/-! ## A280593.P17325905549517848402

`∩[A110303(n+1), A280594(n+1)]`
-/

namespace A280593.P17325905549517848402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280593.P17325905549517848402

/-!
# A280594: Nonnegative numbers whose digits can be formed by typing adjacent keys on a 123-456-789-X0X keypad without repeating a digit.

The programs for A280594, there is no canonical definition to state claims against.
-/

/-! ## A280594.P17846301903844700223

`∩[A130696(n+1), A280595(n+1)]`
-/

namespace A280594.P17846301903844700223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280594.P17846301903844700223

/-! ## A280594.P58963685942157593

`A281942(n+1)%A114173(n)`
-/

namespace A280594.P58963685942157593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281942 (n + 1)) (A114173 n)

end

end A280594.P58963685942157593

/-! ## A280594.P14865768328440046714

`A280595(n+1)%A093908(n+1)`
-/

namespace A280594.P14865768328440046714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280595 (n + 1)) (A093908 (n + 1))

end

end A280594.P14865768328440046714

/-! ## A280594.P6562381266110578042

`A280595(n+1)+A025441(A060546(n))`
-/

namespace A280594.P6562381266110578042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280595 (n + 1) + A025441 (A060546 n).toNat

end

end A280594.P6562381266110578042

/-! ## A280594.P10566068380889856583

`A281942(n+1)+A025441(A060546(n))`
-/

namespace A280594.P10566068380889856583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281942 (n + 1) + A025441 (A060546 n).toNat

end

end A280594.P10566068380889856583

/-!
# A280595: Nonnegative numbers whose digits can be formed by typing adjacent keys on a 123-456-789-00X keypad without repeating a digit.

The programs for A280595, there is no canonical definition to state claims against.
-/

/-! ## A280595.P3462589522719374674

`A281942(n+1)%A127581(n)`
-/

namespace A280595.P3462589522719374674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281942 (n + 1)) (A127581 n)

end

end A280595.P3462589522719374674

/-! ## A280595.P17666612553151704449

`C(A281942(n+1), A066086(A016116(n)))`
-/

namespace A280595.P17666612553151704449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A281942 (n + 1)).toNat (A066086 (A016116 n).toNat).toNat

end

end A280595.P17666612553151704449

/-! ## A280595.P8050806830910834751

`A281942(n+1)+A000035(A284634(n+1))`
-/

namespace A280595.P8050806830910834751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281942 (n + 1) + A000035 (A284634 (n + 1)).toNat

end

end A280595.P8050806830910834751

/-! ## A280595.P2279035877057512586

`and(A281942(n+1), A356877(n))`
-/

namespace A280595.P2279035877057512586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281942 (n + 1)) (A356877 n)

end

end A280595.P2279035877057512586

/-! ## A280595.P6534700669384751207

`and(A281942(n+1), A359085(n+1))`
-/

namespace A280595.P6534700669384751207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281942 (n + 1)) (A359085 (n + 1))

end

end A280595.P6534700669384751207

/-!
# A280596: Expansion of Product_{p prime, k>=2} (1 + x^(p^k)).

The programs for A280596, there is no canonical definition to state claims against.
-/

/-! ## A280596.P13093468704682702328

`A055086(A112345(n)^A008835(n+1))`
-/

namespace A280596.P13093468704682702328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (SequenceMachineLib.roundAway ((A112345 n : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A280596.P13093468704682702328

/-! ## A280596.P14647602164437394943

`A089792(A112345(n)^A008835(n+1))`
-/

namespace A280596.P14647602164437394943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089792 (SequenceMachineLib.roundAway ((A112345 n : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A280596.P14647602164437394943

/-! ## A280596.P17154989276895856373

`A112318(A112345(n)%A112269(n+1))`
-/

namespace A280596.P17154989276895856373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (Int.tmod (A112345 n) (A112269 (n + 1))).toNat

end

end A280596.P17154989276895856373

/-! ## A280596.P13520416114262682652

`A049472(A112345(n)^A008835(n+1)+1)`
-/

namespace A280596.P13520416114262682652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (SequenceMachineLib.roundAway ((A112345 n : ℚ) ^ (A008835 (n + 1) : ℤ) + 1)).toNat

end

end A280596.P13520416114262682652

/-! ## A280596.P15982824730218549890

`A056239(A112345(n)^A008835(n+1)+1)`
-/

namespace A280596.P15982824730218549890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((A112345 n : ℚ) ^ (A008835 (n + 1) : ℤ) + 1)).toNat

end

end A280596.P15982824730218549890

/-! ## A280596.P4068484893737955363

`A064097(A112345(n)^A008835(n+1)+1)`
-/

namespace A280596.P4068484893737955363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (SequenceMachineLib.roundAway ((A112345 n : ℚ) ^ (A008835 (n + 1) : ℤ) + 1)).toNat

end

end A280596.P4068484893737955363

/-! ## A280596.P1712781172932333672

`A000267(A112345(n)^A008835(n+1))-1`
-/

namespace A280596.P1712781172932333672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (SequenceMachineLib.roundAway ((A112345 n : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat - 1

end

end A280596.P1712781172932333672

/-! ## A280596.P11925635553971505829

`A003056(∑{d}[A112345(n)^A008835(n+1), #])`
-/

namespace A280596.P11925635553971505829
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112345 n : ℚ) ^ (A008835 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d)

end

end A280596.P11925635553971505829

/-! ## A280596.P12068030022716815249

`∑{d}[A112345(n)^A008835(n+1), A043568(#)]`
-/

namespace A280596.P12068030022716815249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112345 n : ℚ) ^ (A008835 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A043568 d

end

end A280596.P12068030022716815249

/-!
# A280597: Number of n X n 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280597, there is no canonical definition to state claims against.
-/

/-! ## A280597.P7675959752924868944

`A280604(∑[4*n]+1)`
-/

namespace A280597.P7675959752924868944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280604 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A280597.P7675959752924868944

/-! ## A280597.P15009956170198962226

`A280604((n+1)²+n²)%(9^(n+1))`
-/

namespace A280597.P15009956170198962226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280604 ((n + 1) ^ 2 + n ^ 2)) (9 ^ (n + 1) : ℤ)

end

end A280597.P15009956170198962226

/-! ## A280597.P14520053383031104599

`record[A280604(Δ[A235355(n)])]`
-/

namespace A280597.P14520053383031104599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280604 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280597.P14520053383031104599

/-! ## A280597.P16023785647381477395

`A280604(A001844(n))+char[19]`
-/

namespace A280597.P16023785647381477395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280604 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A280597.P16023785647381477395

/-! ## A280597.P6244689987915047713

`record[A003982(n)*A280604(n+1)]`
-/

namespace A280597.P6244689987915047713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A280604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280597.P6244689987915047713

/-!
# A280598: Number of n X 2 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280598, there is no canonical definition to state claims against.
-/

/-! ## A280598.P3424208889088714993

`A301323(∑[n+1]+2)`
-/

namespace A280598.P3424208889088714993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A280598.P3424208889088714993

/-! ## A280598.P5258463471089525720

`record[A301323(A049636(n))]`
-/

namespace A280598.P5258463471089525720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A049636 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280598.P5258463471089525720

/-! ## A280598.P3462286768991118411

`record[A301323(A007494(n+1))]`
-/

namespace A280598.P3462286768991118411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A007494 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280598.P3462286768991118411

/-! ## A280598.P11523709944450225000

`record[A301323(A061579(n)+3)]`
-/

namespace A280598.P11523709944450225000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A061579 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280598.P11523709944450225000

/-! ## A280598.P8393871753161699335

`record[A301323(A265227(n+1)+2)]`
-/

namespace A280598.P8393871753161699335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A265227 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280598.P8393871753161699335

/-!
# A280599: Number of n X 3 0..1 arrays with no element equal to more than two of its horizontal, vertical and antidiagonal neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A280599, there is no canonical definition to state claims against.
-/

/-! ## A280599.P9869018129486414924

`A301323(∑[n+2]+4)`
-/

namespace A280599.P9869018129486414924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280599.P9869018129486414924

/-! ## A280599.P3302230081760722314

`or(char[2], A301323(A167614(n+1)))`
-/

namespace A280599.P3302230081760722314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A301323 (A167614 (n + 1)).toNat)

end

end A280599.P3302230081760722314

/-! ## A280599.P9954836994934658171

`A301323(A167614(n+1))+A025466(n)`
-/

namespace A280599.P9954836994934658171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A167614 (n + 1)).toNat + A025466 n

end

end A280599.P9954836994934658171

/-! ## A280599.P18397992208271373539

`A301323(A167614(n+1))+A025469(n)`
-/

namespace A280599.P18397992208271373539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A167614 (n + 1)).toNat + A025469 n

end

end A280599.P18397992208271373539

/-! ## A280599.P11073549059130334204

`A301323(A167614(n+1))+A066035(n)`
-/

namespace A280599.P11073549059130334204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301323 (A167614 (n + 1)).toNat + A066035 n

end

end A280599.P11073549059130334204

