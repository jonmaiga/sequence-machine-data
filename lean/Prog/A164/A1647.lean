import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
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
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
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
# A164700: Base 10 integers n such that n base 7 is a substring of n base 3.

The programs for A164700, there is no canonical definition to state claims against.
-/

/-! ## A164700.P8133940844620914924

`A053994(∑[char[∑[n]]]²)+n`
-/

namespace A164700.P8133940844620914924
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053994 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) + (n : ℤ)

end

end A164700.P8133940844620914924

/-! ## A164700.P13699106188962673264

`A320810(A282957(n))+n`
-/

namespace A164700.P13699106188962673264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320810 (A282957 n).toNat + (n : ℤ)

end

end A164700.P13699106188962673264

/-!
# A164701: a(n) = the smallest positive integer such that neither a(n) nor a(n)+1 are coprime to A024619(n), where A024619 is the sequence of positive integers that are not powers of primes.

The programs for A164701, there is no canonical definition to state claims against.
-/

/-! ## A164701.P8574985983638190204

`A128707(A360529(n+1)²)+1`
-/

namespace A164701.P8574985983638190204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128707 (A360529 (n + 1) ^ 2).toNat + 1

end

end A164701.P8574985983638190204

/-!
# A164703: a(n) = 8*a(n-2) for n > 2; a(1) = 1, a(2) = 16.

The programs for A164703, the canonical program `A164703.P16804852355851094920` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164703 has offset 1).

The definition of A164703 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-2)` (program `A164703.P16804852355851094920`, by `A164703.P16804852355851094920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164703.P16804852355851094920

`8*a(n-2)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164703

/-- `8*a(n-2)` -/
def P16804852355851094920.Spec : Prop :=
  ∀ n, (P16804852355851094920.a n : ℤ) = A164703 (n + 1)

theorem P16804852355851094920.correct : P16804852355851094920.Spec := by
  intro n
  simp only [A164703, Nat.add_sub_cancel]

end A164703

/-! ## A164703.P5908708690783103516

`(3+(-1)^(n+1))*2^(1/4*(6*(n+1)-7+3*(-1)^(n+1)))`
-/

namespace A164703.P5908708690783103516
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 + (-1) ^ (n + 1) : ℝ) * (2 : ℝ) ^ ((1 : ℚ) / 4 * ((6 * (n + 1) : ℤ) - 7 + 3 * (-1) ^ (n + 1) : ℚ) : ℝ)

end

end A164703.P5908708690783103516

namespace A164703

/-- `(3+(-1)^(n+1))*2^(1/4*(6*(n+1)-7+3*(-1)^(n+1)))` -/
def P5908708690783103516.Spec : Prop :=
  ∀ n, P5908708690783103516.a n = (A164703 (n + 1) : ℝ)

end A164703

/-! ## A164703.P14917170625995342075

`ogf((1+16x)/(1-8x^2))`
-/

namespace A164703.P14917170625995342075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 16] [1, 0, -8] n

end

end A164703.P14917170625995342075

namespace A164703

/-- `ogf((1+16x)/(1-8x^2))` -/
def P14917170625995342075.Spec : Prop :=
  ∀ n, P14917170625995342075.a n = A164703 (n + 1)

end A164703

/-! ## A164703.P5070090807441995814

`∏[8/a(n-1)]` with `a(0)=1, a(1)=16`
-/

namespace A164703.P5070090807441995814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  8 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A164703.P5070090807441995814

namespace A164703

/-- `∏[8/a(n-1)]` -/
def P5070090807441995814.Spec : Prop :=
  ∀ n, P5070090807441995814.a n = (A164703 (n + 1) : ℚ)

end A164703

/-! ## A164703.P10226508016031064366

`2^(∑[5*n%2]-n)`
-/

namespace A164703.P10226508016031064366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℤ)

end

end A164703.P10226508016031064366

namespace A164703

/-- `2^(∑[5*n%2]-n)` -/
def P10226508016031064366.Spec : Prop :=
  ∀ n, P10226508016031064366.a n = (A164703 (n + 1) : ℚ)

end A164703

/-! ## A164703.P8132225044819642468

`2^∑[3-a(n-1)]` with `a(0)=0, a(1)=4`
-/

namespace A164703.P8132225044819642468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A164703.P8132225044819642468

namespace A164703

/-- `2^∑[3-a(n-1)]` -/
def P8132225044819642468.Spec : Prop :=
  ∀ n, P8132225044819642468.a n = (A164703 (n + 1) : ℚ)

end A164703

/-! ## A164703.P8127844034257002409

`A112032(3*n+1)`
-/

namespace A164703.P8127844034257002409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112032 (3 * n + 1)

end

end A164703.P8127844034257002409

namespace A164703

/-- `A112032(3*n+1)` -/
def P8127844034257002409.Spec : Prop :=
  ∀ n, P8127844034257002409.a n = A164703 (n + 1)

end A164703

/-! ## A164703.P8137371922589948576

`A164587(3*n+1)`
-/

namespace A164703.P8137371922589948576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164587 (3 * n + 1)

end

end A164703.P8137371922589948576

namespace A164703

/-- `A164587(3*n+1)` -/
def P8137371922589948576.Spec : Prop :=
  ∀ n, P8137371922589948576.a n = A164703 (n + 1)

end A164703

/-! ## A164703.P14435440248961872461

`2^A166517(n+1)/2`
-/

namespace A164703.P14435440248961872461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A166517 (n + 1) : ℤ) / 2

end

end A164703.P14435440248961872461

namespace A164703

/-- `2^A166517(n+1)/2` -/
def P14435440248961872461.Spec : Prop :=
  ∀ n, P14435440248961872461.a n = (A164703 (n + 1) : ℚ)

end A164703

/-! ## A164703.P9245998167450610170

`A016116(3*xor(1, n+1))`
-/

namespace A164703.P9245998167450610170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (3 * Nat.xor 1 (n + 1))

end

end A164703.P9245998167450610170

namespace A164703

/-- `A016116(3*xor(1, n+1))` -/
def P9245998167450610170.Spec : Prop :=
  ∀ n, P9245998167450610170.a n = A164703 (n + 1)

end A164703

/-! ## A164703.P5043552993499888452

`A135530(∑[A010686(n)])`
-/

namespace A164703.P5043552993499888452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164703.P5043552993499888452

namespace A164703

/-- `A135530(∑[A010686(n)])` -/
def P5043552993499888452.Spec : Prop :=
  ∀ n, P5043552993499888452.a n = A164703 (n + 1)

end A164703

/-! ## A164703.P1827306513365111541

`A016116(A136320(n+1))`
-/

namespace A164703.P1827306513365111541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A136320 (n + 1)).toNat

end

end A164703.P1827306513365111541

namespace A164703

/-- `A016116(A136320(n+1))` -/
def P1827306513365111541.Spec : Prop :=
  ∀ n, P1827306513365111541.a n = A164703 (n + 1)

end A164703

/-! ## A164703.P11339563933224081043

`A011782(A166517(n+1))`
-/

namespace A164703.P11339563933224081043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A166517 (n + 1)).toNat

end

end A164703.P11339563933224081043

namespace A164703

/-- `A011782(A166517(n+1))` -/
def P11339563933224081043.Spec : Prop :=
  ∀ n, P11339563933224081043.a n = A164703 (n + 1)

end A164703

/-! ## A164703.P7622626538589253625

`A143095(A047264(n+1))`
-/

namespace A164703.P7622626538589253625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (A047264 (n + 1)).toNat

end

end A164703.P7622626538589253625

namespace A164703

/-- `A143095(A047264(n+1))` -/
def P7622626538589253625.Spec : Prop :=
  ∀ n, P7622626538589253625.a n = A164703 (n + 1)

end A164703

/-! ## A164703.P12621893512044325550

`A076736(A166542(n+1))`
-/

namespace A164703.P12621893512044325550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 (A166542 (n + 1)).toNat

end

end A164703.P12621893512044325550

namespace A164703

/-- `A076736(A166542(n+1))` -/
def P12621893512044325550.Spec : Prop :=
  ∀ n, P12621893512044325550.a n = A164703 (n + 1)

end A164703

/-! ## A164703.P9365665461753213913

`A076736(A047257(n+2))`
-/

namespace A164703.P9365665461753213913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076736 (A047257 (n + 2)).toNat

end

end A164703.P9365665461753213913

namespace A164703

/-- `A076736(A047257(n+2))` -/
def P9365665461753213913.Spec : Prop :=
  ∀ n, P9365665461753213913.a n = A164703 (n + 1)

end A164703

/-! ## A164703.P11833325678663215044

`A135530(A047225(n+2))`
-/

namespace A164703.P11833325678663215044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (A047225 (n + 2)).toNat

end

end A164703.P11833325678663215044

namespace A164703

/-- `A135530(A047225(n+2))` -/
def P11833325678663215044.Spec : Prop :=
  ∀ n, P11833325678663215044.a n = A164703 (n + 1)

end A164703

/-!
# A164704: A006886 mod 9.

The programs for A164704, there is no canonical definition to state claims against.
-/

/-! ## A164704.P12190103287033967939

`A006886(n+1)%3`
-/

namespace A164704.P12190103287033967939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006886 (n + 1)) 3

end

end A164704.P12190103287033967939

/-! ## A164704.P9407274028112732787

`A000007(val(A006886(n+1), 3))`
-/

namespace A164704.P9407274028112732787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A006886 (n + 1)).toNat 3)

end

end A164704.P9407274028112732787

/-! ## A164704.P17152757097278974280

`A014016(val(A006886(n+1), 3))`
-/

namespace A164704.P17152757097278974280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014016 (SequenceMachineLib.valuation (A006886 (n + 1)).toNat 3)

end

end A164704.P17152757097278974280

/-! ## A164704.P2937618778896559289

`A023924(val(A006886(n+1), 3))`
-/

namespace A164704.P2937618778896559289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023924 (SequenceMachineLib.valuation (A006886 (n + 1)).toNat 3)

end

end A164704.P2937618778896559289

/-! ## A164704.P14900415476399487850

`A025922(val(A006886(n+1), 3))`
-/

namespace A164704.P14900415476399487850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 (SequenceMachineLib.valuation (A006886 (n + 1)).toNat 3)

end

end A164704.P14900415476399487850

/-! ## A164704.P9040468513605177653

`A046765(val(A006886(n+1), 3))`
-/

namespace A164704.P9040468513605177653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046765 (SequenceMachineLib.valuation (A006886 (n + 1)).toNat 3)

end

end A164704.P9040468513605177653

/-! ## A164704.P16409867164277740841

`A008612(val(A006886(n+1), 9))`
-/

namespace A164704.P16409867164277740841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (SequenceMachineLib.valuation (A006886 (n + 1)).toNat 9)

end

end A164704.P16409867164277740841

/-! ## A164704.P13089100236756862816

`A000035(val(A006886(n+1), 3)!)`
-/

namespace A164704.P13089100236756862816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.factorial (SequenceMachineLib.valuation (A006886 (n + 1)).toNat 3))

end

end A164704.P13089100236756862816

/-! ## A164704.P9506489199646015438

`A000045(val(A006886(n+1)+2, 3))`
-/

namespace A164704.P9506489199646015438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (A006886 (n + 1) + 2).toNat 3)

end

end A164704.P9506489199646015438

/-! ## A164704.P14592835911003409448

`A000038(val(A006886(n+1), 3))/2`
-/

namespace A164704.P14592835911003409448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (SequenceMachineLib.valuation (A006886 (n + 1)).toNat 3) : ℚ) / 2

end

end A164704.P14592835911003409448

/-! ## A164704.P11617061019725154031

`1-A000081(val(A006886(n+1), 9))`
-/

namespace A164704.P11617061019725154031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000081 (SequenceMachineLib.valuation (A006886 (n + 1)).toNat 9)

end

end A164704.P11617061019725154031

/-! ## A164704.P225609461592794599

`1-A003056(val(A006886(n+1), 9))`
-/

namespace A164704.P225609461592794599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A003056 (SequenceMachineLib.valuation (A006886 (n + 1)).toNat 9)

end

end A164704.P225609461592794599

/-! ## A164704.P1532841598646045101

`A000035(2^val(A006886(n+1), 3))`
-/

namespace A164704.P1532841598646045101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 ^ SequenceMachineLib.valuation (A006886 (n + 1)).toNat 3)

end

end A164704.P1532841598646045101

/-! ## A164704.P10317470982815159866

`A008683(10-val(A006886(n+1), 9))`
-/

namespace A164704.P10317470982815159866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (10 - SequenceMachineLib.valuation (A006886 (n + 1)).toNat 9)

end

end A164704.P10317470982815159866

/-! ## A164704.P4139451515135779740

`and(1, A000079(val(A006886(n+1), 3)))`
-/

namespace A164704.P4139451515135779740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000079 (SequenceMachineLib.valuation (A006886 (n + 1)).toNat 3))

end

end A164704.P4139451515135779740

/-! ## A164704.P5333756770547982770

`val(A000032(val(A006886(n+1), 9)), 2)`
-/

namespace A164704.P5333756770547982770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000032 (SequenceMachineLib.valuation (A006886 (n + 1)).toNat 9)).toNat 2

end

end A164704.P5333756770547982770

/-! ## A164704.P4453069610195311400

`and(1, A001018(val(A006886(n+1), 9)))`
-/

namespace A164704.P4453069610195311400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001018 (SequenceMachineLib.valuation (A006886 (n + 1)).toNat 9))

end

end A164704.P4453069610195311400

/-! ## A164704.P8652933547534847418

`and(1, A002126(val(A006886(n+1), 9)))`
-/

namespace A164704.P8652933547534847418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002126 (SequenceMachineLib.valuation (A006886 (n + 1)).toNat 9))

end

end A164704.P8652933547534847418

/-! ## A164704.P2648217347073504217

`A008683(val(A006886(n+1), 9)+26)`
-/

namespace A164704.P2648217347073504217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.valuation (A006886 (n + 1)).toNat 9 + 26)

end

end A164704.P2648217347073504217

/-! ## A164704.P2545205471291006182

`A000038(n)^val(A006886(n+1), 3)`
-/

namespace A164704.P2545205471291006182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ SequenceMachineLib.valuation (A006886 (n + 1)).toNat 3

end

end A164704.P2545205471291006182

/-!
# A164705: T(n,k) = binomial(2n-k,n) * 2^(k-1), T(0,0)=1; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A164705, the canonical program `A164705.P302139925214532792` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164705 has offset 0).

The definition of A164705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164705.P302139925214532792

`ceil(A276418(n)/2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A164705

/-- `ceil(A276418(n)/2)` -/
def P302139925214532792.Spec : Prop :=
  ∀ n, P302139925214532792.a n = A164705 n

theorem P302139925214532792.correct : P302139925214532792.Spec := by
  intro n
  simp only [A164705]

end A164705

/-! ## A164705.P6548860627810657049

`A276418(n)/A036453(n+1)`
-/

namespace A164705.P6548860627810657049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276418 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A164705.P6548860627810657049

namespace A164705

/-- `A276418(n)/A036453(n+1)` -/
def P6548860627810657049.Spec : Prop :=
  ∀ n, P6548860627810657049.a n = (A164705 n : ℚ)

end A164705

/-! ## A164705.P16781751881066782520

`A276418(n)/A006530(A001316(n))`
-/

namespace A164705.P16781751881066782520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276418 n : ℚ) / (A006530 (A001316 n).toNat : ℚ)

end

end A164705.P16781751881066782520

namespace A164705

/-- `A276418(n)/A006530(A001316(n))` -/
def P16781751881066782520.Spec : Prop :=
  ∀ n, P16781751881066782520.a n = (A164705 n : ℚ)

end A164705

/-! ## A164705.P2630878391032786588

`A273943(A276418(n))`
-/

namespace A164705.P2630878391032786588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A276418 n).toNat

end

end A164705.P2630878391032786588

namespace A164705

/-- `A273943(A276418(n))` -/
def P2630878391032786588.Spec : Prop :=
  ∀ n, P2630878391032786588.a n = A164705 n

end A164705

/-!
# A164706: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^8 = I.

The programs for A164706, there is no canonical definition to state claims against.
-/

/-! ## A164706.P12622944806673485249

`record[Δ[A134683(n+1)]-A185255(2*n)]`
-/

namespace A164706.P12622944806673485249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A185255 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164706.P12622944806673485249

/-! ## A164706.P18439521433255190418

`floor(5*4^(n-1))-A185255(A000029(n))`
-/

namespace A164706.P18439521433255190418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A000029 n).toNat

end

end A164706.P18439521433255190418

/-! ## A164706.P14663809144108135865

`floor(5*4^(n-1))-A185255(A130824(n))`
-/

namespace A164706.P14663809144108135865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A130824 n).toNat

end

end A164706.P14663809144108135865

/-! ## A164706.P13693075947705097263

`floor(5*4^(n-1))-A185264(A131090(n))`
-/

namespace A164706.P13693075947705097263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185264 (A131090 n).toNat

end

end A164706.P13693075947705097263

/-! ## A164706.P2626117334002783091

`floor(5*4^(n-1))-A185255(A190003(n+1))`
-/

namespace A164706.P2626117334002783091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (A190003 (n + 1)).toNat

end

end A164706.P2626117334002783091

/-!
# A164707: A positive integer n is included if all runs of 1's in binary n are of the same length.

The programs for A164707, the canonical program `A164707.P3274029201984026829` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164707 has offset 1).

The definition of A164707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164707.P3274029201984026829

`eq[1, A001221(A246029(n))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A164707

/-- `eq[1, A001221(A246029(n))]` -/
def P3274029201984026829.Spec : Prop :=
  ∀ n, (P3274029201984026829.a n : ℤ) = A164707 (n + 1)

theorem P3274029201984026829.correct : P3274029201984026829.Spec := by
  intro n
  simp only [A164707, Nat.add_sub_cancel]

end A164707

/-! ## A164707.P7717596901543742050

`lt[1, A100995(A246029(n)²)]`
-/

namespace A164707.P7717596901543742050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A246029 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A164707.P7717596901543742050

namespace A164707

/-- `lt[1, A100995(A246029(n)²)]` -/
def P7717596901543742050.Spec : Prop :=
  ∀ n, (P7717596901543742050.a n : ℤ) = A164707 (n + 1)

end A164707

/-! ## A164707.P5946064165599105847

`eq[1, A161895(A161820(n+1))]+1`
-/

namespace A164707.P5946064165599105847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161895 (A161820 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A164707.P5946064165599105847

namespace A164707

/-- `eq[1, A161895(A161820(n+1))]+1` -/
def P5946064165599105847.Spec : Prop :=
  ∀ n, (P5946064165599105847.a n : ℤ) = A164707 (n + 1)

end A164707

/-! ## A164707.P16035389688098122469

`eq[A038374(n+1), A144790(n+1)]+1`
-/

namespace A164707.P16035389688098122469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A164707.P16035389688098122469

namespace A164707

/-- `eq[A038374(n+1), A144790(n+1)]+1` -/
def P16035389688098122469.Spec : Prop :=
  ∀ n, (P16035389688098122469.a n : ℤ) = A164707 (n + 1)

end A164707

/-! ## A164707.P1919515122223900213

`lt[A054977(n), A100995(A246029(n))+1]`
-/

namespace A164707.P1919515122223900213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A246029 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164707.P1919515122223900213

namespace A164707

/-- `lt[A054977(n), A100995(A246029(n))+1]` -/
def P1919515122223900213.Spec : Prop :=
  ∀ n, (P1919515122223900213.a n : ℤ) = A164707 (n + 1)

end A164707

/-! ## A164707.P969386723626193787

`lt[1, A100995(A246029(n))+A057427(n)]`
-/

namespace A164707.P969386723626193787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A246029 n).toNat + A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A164707.P969386723626193787

namespace A164707

/-- `lt[1, A100995(A246029(n))+A057427(n)]` -/
def P969386723626193787.Spec : Prop :=
  ∀ n, (P969386723626193787.a n : ℤ) = A164707 (n + 1)

end A164707

/-! ## A164707.P12175419528737473468

`eq[A161895(A161822(n+1)), A161895(n+1)]+1`
-/

namespace A164707.P12175419528737473468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161895 (A161822 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161895 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A164707.P12175419528737473468

namespace A164707

/-- `eq[A161895(A161822(n+1)), A161895(n+1)]+1` -/
def P12175419528737473468.Spec : Prop :=
  ∀ n, (P12175419528737473468.a n : ℤ) = A164707 (n + 1)

end A164707

/-! ## A164707.P18237195057761586990

`eq[A297770(A161822(n+1)), A297770(n+1)]+1`
-/

namespace A164707.P18237195057761586990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A161822 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A164707.P18237195057761586990

namespace A164707

/-- `eq[A297770(A161822(n+1)), A297770(n+1)]+1` -/
def P18237195057761586990.Spec : Prop :=
  ∀ n, (P18237195057761586990.a n : ℤ) = A164707 (n + 1)

end A164707

/-! ## A164707.P13965026080821791825

`eq[2, A034444(A246029(2*n))]`
-/

namespace A164707.P13965026080821791825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A246029 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164707.P13965026080821791825

namespace A164707

/-- `eq[2, A034444(A246029(2*n))]` -/
def P13965026080821791825.Spec : Prop :=
  ∀ n, (P13965026080821791825.a n : ℤ) = A164707 (n + 1)

end A164707

/-! ## A164707.P16009527869778932129

`eq[1, A304455(A246029(n)²)]`
-/

namespace A164707.P16009527869778932129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (A246029 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164707.P16009527869778932129

namespace A164707

/-- `eq[1, A304455(A246029(n)²)]` -/
def P16009527869778932129.Spec : Prop :=
  ∀ n, (P16009527869778932129.a n : ℤ) = A164707 (n + 1)

end A164707

/-! ## A164707.P2471039262359747534

`eq[A246029(n)², A286875(A246029(n)²)]`
-/

namespace A164707.P2471039262359747534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286875 (A246029 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164707.P2471039262359747534

namespace A164707

/-- `eq[A246029(n)², A286875(A246029(n)²)]` -/
def P2471039262359747534.Spec : Prop :=
  ∀ n, (P2471039262359747534.a n : ℤ) = A164707 (n + 1)

end A164707

/-! ## A164707.P8107834973166881862

`eq[2, A034444(A246029(n)²)]`
-/

namespace A164707.P8107834973166881862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A246029 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164707.P8107834973166881862

namespace A164707

/-- `eq[2, A034444(A246029(n)²)]` -/
def P8107834973166881862.Spec : Prop :=
  ∀ n, (P8107834973166881862.a n : ℤ) = A164707 (n + 1)

end A164707

/-! ## A164707.P4082491889291026619

`eq[2, A182850(A246029(n)²)]`
-/

namespace A164707.P4082491889291026619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A246029 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164707.P4082491889291026619

namespace A164707

/-- `eq[2, A182850(A246029(n)²)]` -/
def P4082491889291026619.Spec : Prop :=
  ∀ n, (P4082491889291026619.a n : ℤ) = A164707 (n + 1)

end A164707

/-! ## A164707.P14732149511100382975

`eq[A000007(n), A061670(A246029(n)²)]`
-/

namespace A164707.P14732149511100382975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (A246029 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164707.P14732149511100382975

namespace A164707

/-- `eq[A000007(n), A061670(A246029(n)²)]` -/
def P14732149511100382975.Spec : Prop :=
  ∀ n, (P14732149511100382975.a n : ℤ) = A164707 (n + 1)

end A164707

/-! ## A164707.P7955389471167897628

`eq[1, A071625(A278222(n))]`
-/

namespace A164707.P7955389471167897628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A278222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164707.P7955389471167897628

namespace A164707

/-- `eq[1, A071625(A278222(n))]` -/
def P7955389471167897628.Spec : Prop :=
  ∀ n, (P7955389471167897628.a n : ℤ) = A164707 (n + 1)

end A164707

/-!
# A164708: Those positive integers missing from sequence A164707. Those positive integers that, when written in binary, contain at least two runs of 1's that are of differing lengths.

The programs for A164708, there is no canonical definition to state claims against.
-/

/-! ## A164708.P151776871860093126

`comp[lcm(n, or(2*n, -n))]`
-/

namespace A164708.P151776871860093126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (Int.lor (2 * n : ℤ) (-(n : ℤ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A164708.P151776871860093126

/-! ## A164708.P13373137342913800089

`lt[gcd(n, and(n, 2*n)), n-and(n, 2*n)]`
-/

namespace A164708.P13373137342913800089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.land n (2 * n))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (2 * n) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A164708.P13373137342913800089

/-! ## A164708.P3232728668382859576

`comp[lcm(or(n, floor(n/2))-n, and(n, n+1)/2)]`
-/

namespace A164708.P3232728668382859576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ)) (SequenceMachineLib.roundAway ((Nat.land n (n + 1) : ℚ) / 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A164708.P3232728668382859576

/-! ## A164708.P12535775604727523147

`comp[lcm(n, A229763(n))]`
-/

namespace A164708.P12535775604727523147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A229763 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A164708.P12535775604727523147

/-! ## A164708.P17812253254062569642

`comp[A164707(n+1)-1]+1`
-/

namespace A164708.P17812253254062569642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A164708.P17812253254062569642

/-! ## A164708.P15141206915981647808

`lt[1, A001221(A246029(n))]`
-/

namespace A164708.P15141206915981647808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A246029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A164708.P15141206915981647808

/-! ## A164708.P921679165298765436

`eq[2, A056624(A253069(n))]`
-/

namespace A164708.P921679165298765436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (A253069 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164708.P921679165298765436

/-! ## A164708.P1150677539601459360

`lt[1, A071625(A278222(n))]`
-/

namespace A164708.P1150677539601459360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A278222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A164708.P1150677539601459360

/-! ## A164708.P992075132251569966

`eq[4, A086275(A072272(n))]`
-/

namespace A164708.P992075132251569966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086275 (A072272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164708.P992075132251569966

/-! ## A164708.P7432346570851932617

`eq[2, A071625(A005940(n+1))]`
-/

namespace A164708.P7432346570851932617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A005940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164708.P7432346570851932617

/-!
# A164709: A positive integer n is included if all runs of 1's in binary n are of the same length, and if there are at least two runs of 1's.

The programs for A164709, the canonical program `A164709.P12181322775602558519` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164709 has offset 1).

The definition of A164709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164709.P12181322775602558519

`eq[1, A304455(A246029(n))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A164709

/-- `eq[1, A304455(A246029(n))]` -/
def P12181322775602558519.Spec : Prop :=
  ∀ n, (P12181322775602558519.a n : ℤ) = A164709 (n + 1)

theorem P12181322775602558519.correct : P12181322775602558519.Spec := by
  intro n
  simp only [A164709, Nat.add_sub_cancel]

end A164709

/-! ## A164709.P191483931545931974

`∩[A101082(n+1), A164707(n+1)]`
-/

namespace A164709.P191483931545931974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164709.P191483931545931974

namespace A164709

/-- `∩[A101082(n+1), A164707(n+1)]` -/
def P191483931545931974.Spec : Prop :=
  ∀ n, (P191483931545931974.a n : ℤ) = A164709 (n + 1)

end A164709

/-! ## A164709.P5611599918031356129

`∩[A164707(n+1), A257739(n+1)]`
-/

namespace A164709.P5611599918031356129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164709.P5611599918031356129

namespace A164709

/-- `∩[A164707(n+1), A257739(n+1)]` -/
def P5611599918031356129.Spec : Prop :=
  ∀ n, (P5611599918031356129.a n : ℤ) = A164709 (n + 1)

end A164709

/-! ## A164709.P3811392397413271823

`∩[A164707(n+1), A277706(n+1)]`
-/

namespace A164709.P3811392397413271823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164709.P3811392397413271823

namespace A164709

/-- `∩[A164707(n+1), A277706(n+1)]` -/
def P3811392397413271823.Spec : Prop :=
  ∀ n, (P3811392397413271823.a n : ℤ) = A164709 (n + 1)

end A164709

/-! ## A164709.P17279270424601018933

`eq[A000007(n), A061670(A246029(n))]`
-/

namespace A164709.P17279270424601018933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061670 (A246029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164709.P17279270424601018933

namespace A164709

/-- `eq[A000007(n), A061670(A246029(n))]` -/
def P17279270424601018933.Spec : Prop :=
  ∀ n, (P17279270424601018933.a n : ℤ) = A164709 (n + 1)

end A164709

/-! ## A164709.P12321943604621842670

`lt[A054977(n), A100995(A246029(n))]`
-/

namespace A164709.P12321943604621842670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A246029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164709.P12321943604621842670

namespace A164709

/-- `lt[A054977(n), A100995(A246029(n))]` -/
def P12321943604621842670.Spec : Prop :=
  ∀ n, (P12321943604621842670.a n : ℤ) = A164709 (n + 1)

end A164709

/-! ## A164709.P15695749652006164604

`lt[A057427(n), A100995(A246029(n))]`
-/

namespace A164709.P15695749652006164604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A246029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164709.P15695749652006164604

namespace A164709

/-- `lt[A057427(n), A100995(A246029(n))]` -/
def P15695749652006164604.Spec : Prop :=
  ∀ n, (P15695749652006164604.a n : ℤ) = A164709 (n + 1)

end A164709

/-! ## A164709.P8272748380009479710

`eq[A246029(2*n), A286875(A246029(n))]`
-/

namespace A164709.P8272748380009479710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286875 (A246029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164709.P8272748380009479710

namespace A164709

/-- `eq[A246029(2*n), A286875(A246029(n))]` -/
def P8272748380009479710.Spec : Prop :=
  ∀ n, (P8272748380009479710.a n : ℤ) = A164709 (n + 1)

end A164709

/-! ## A164709.P10990605112842222500

`eq[2, A304455(A278222(n))]`
-/

namespace A164709.P10990605112842222500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (A278222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164709.P10990605112842222500

namespace A164709

/-- `eq[2, A304455(A278222(n))]` -/
def P10990605112842222500.Spec : Prop :=
  ∀ n, (P10990605112842222500.a n : ℤ) = A164709 (n + 1)

end A164709

/-! ## A164709.P404308449042493899

`eq[2, A325355(A072272(n))]`
-/

namespace A164709.P404308449042493899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325355 (A072272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164709.P404308449042493899

namespace A164709

/-- `eq[2, A325355(A072272(n))]` -/
def P404308449042493899.Spec : Prop :=
  ∀ n, (P404308449042493899.a n : ℤ) = A164709 (n + 1)

end A164709

/-!
# A164710: A positive integer n is included if all runs of 0's in binary n are of the same length.

The programs for A164710, the canonical program `A164710.P2502700066780517803` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164710 has offset 1).

The definition of A164710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1607 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164710.P2187010288403378757

`eq[0, A318886(A333219(n+1))]`
-/

namespace A164710.P2187010288403378757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318886 (A333219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164710.P2187010288403378757

namespace A164710

/-- `eq[0, A318886(A333219(n+1))]` -/
def P2187010288403378757.Spec : Prop :=
  ∀ n, (P2187010288403378757.a n : ℤ) = A164710 (n + 1)

end A164710

/-! ## A164710.P12622147872421338890

`eq[1, A161895(A090077(n+1))]+1`
-/

namespace A164710.P12622147872421338890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161895 (A090077 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A164710.P12622147872421338890

namespace A164710

/-- `eq[1, A161895(A090077(n+1))]+1` -/
def P12622147872421338890.Spec : Prop :=
  ∀ n, (P12622147872421338890.a n : ℤ) = A164710 (n + 1)

end A164710

/-! ## A164710.P4563151290312104070

`eq[1, A161895(A161822(n+1))]+1`
-/

namespace A164710.P4563151290312104070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161895 (A161822 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A164710.P4563151290312104070

namespace A164710

/-- `eq[1, A161895(A161822(n+1))]+1` -/
def P4563151290312104070.Spec : Prop :=
  ∀ n, (P4563151290312104070.a n : ℤ) = A164710 (n + 1)

end A164710

/-! ## A164710.P14217538249142568159

`eq[A057427(n), A340365(A333219(n+1))]`
-/

namespace A164710.P14217538249142568159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340365 (A333219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164710.P14217538249142568159

namespace A164710

/-- `eq[A057427(n), A340365(A333219(n+1))]` -/
def P14217538249142568159.Spec : Prop :=
  ∀ n, (P14217538249142568159.a n : ℤ) = A164710 (n + 1)

end A164710

/-! ## A164710.P2502700066780517803

`eq[A087116(n)*A087117(n), A080791(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A164710

/-- `eq[A087116(n)*A087117(n), A080791(n)]` -/
def P2502700066780517803.Spec : Prop :=
  ∀ n, (P2502700066780517803.a n : ℤ) = A164710 (n + 1)

theorem P2502700066780517803.correct : P2502700066780517803.Spec := by
  intro n
  simp only [A164710, Nat.add_sub_cancel]

end A164710

/-! ## A164710.P1792036570789192185

`eq[A161895(A161820(n+1)), A161895(n+1)]+1`
-/

namespace A164710.P1792036570789192185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161895 (A161820 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161895 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A164710.P1792036570789192185

namespace A164710

/-- `eq[A161895(A161820(n+1)), A161895(n+1)]+1` -/
def P1792036570789192185.Spec : Prop :=
  ∀ n, (P1792036570789192185.a n : ℤ) = A164710 (n + 1)

end A164710

/-! ## A164710.P10910969467885044670

`eq[A007814(A161822(2*n+1)), A087117(n)]`
-/

namespace A164710.P10910969467885044670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A161822 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164710.P10910969467885044670

namespace A164710

/-- `eq[A007814(A161822(2*n+1)), A087117(n)]` -/
def P10910969467885044670.Spec : Prop :=
  ∀ n, (P10910969467885044670.a n : ℤ) = A164710 (n + 1)

end A164710

/-! ## A164710.P4745354897594786106

`eq[A087117(n+1), A144789(n+1)]+1`
-/

namespace A164710.P4745354897594786106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144789 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A164710.P4745354897594786106

namespace A164710

/-- `eq[A087117(n+1), A144789(n+1)]+1` -/
def P4745354897594786106.Spec : Prop :=
  ∀ n, (P4745354897594786106.a n : ℤ) = A164710 (n + 1)

end A164710

/-! ## A164710.P6421770239661480999

`eq[A087117(n), A144789(A028310(n))]`
-/

namespace A164710.P6421770239661480999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144789 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A164710.P6421770239661480999

namespace A164710

/-- `eq[A087117(n), A144789(A028310(n))]` -/
def P6421770239661480999.Spec : Prop :=
  ∀ n, (P6421770239661480999.a n : ℤ) = A164710 (n + 1)

end A164710

/-! ## A164710.P16111748941891948302

`eq[n, A322463(A193592(A001105(n)))]`
-/

namespace A164710.P16111748941891948302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322463 (A193592 (A001105 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164710.P16111748941891948302

namespace A164710

/-- `eq[n, A322463(A193592(A001105(n)))]` -/
def P16111748941891948302.Spec : Prop :=
  ∀ n, (P16111748941891948302.a n : ℤ) = A164710 (n + 1)

end A164710

/-!
# A164711: Those positive integers missing from sequence A164710. Those positive integers that, when written in binary, contain at least two runs of 0's that are of differing lengths.

The programs for A164711, there is no canonical definition to state claims against.
-/

/-! ## A164711.P5193717857362417555

`comp[A164710(n+1)-1]+1`
-/

namespace A164711.P5193717857362417555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164710 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A164711.P5193717857362417555

/-! ## A164711.P748467403337049710

`eq[2, A005087(A358506(n+1))]`
-/

namespace A164711.P748467403337049710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A358506 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164711.P748467403337049710

/-! ## A164711.P17678387327955968817

`lt[3, A325355(A005940(n+1))]`
-/

namespace A164711.P17678387327955968817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325355 (A005940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A164711.P17678387327955968817

/-! ## A164711.P6185400156567657881

`comp[∪[A164710(n+1), A000578(n)]]`
-/

namespace A164711.P6185400156567657881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164710 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A164711.P6185400156567657881

/-! ## A164711.P8780696887489906392

`lt[1, A161895(A161822(n+1))]+1`
-/

namespace A164711.P8780696887489906392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161895 (A161822 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A164711.P8780696887489906392

/-! ## A164711.P15124808915619518597

`lt[2, A124765(A233569(2*n+1))]`
-/

namespace A164711.P15124808915619518597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A233569 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A164711.P15124808915619518597

/-! ## A164711.P15012220933614255295

`eq[3, A297770(A161822(2*n+1))]`
-/

namespace A164711.P15012220933614255295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A161822 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164711.P15012220933614255295

/-! ## A164711.P1485804000000807763

`lt[A279209(A233569(n)), A087117(n)]`
-/

namespace A164711.P1485804000000807763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279209 (A233569 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164711.P1485804000000807763

/-!
# A164712: A positive integer n is included if all runs of 0's in binary n are of the same length, and if there are at least two runs of 0's.

The programs for A164712, there is no canonical definition to state claims against.
-/

/-! ## A164712.P2486455153891098336

`eq[3, A297770(A233569(2*n+1))]`
-/

namespace A164712.P2486455153891098336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A233569 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164712.P2486455153891098336

/-! ## A164712.P4730837159092516694

`eq[3, A325355(A005940(n+1))]`
-/

namespace A164712.P4730837159092516694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325355 (A005940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A164712.P4730837159092516694

/-! ## A164712.P4903643767278095535

`∩[A335236(n+1), A164710(n+3)]`
-/

namespace A164712.P4903643767278095535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164710 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164712.P4903643767278095535

/-! ## A164712.P4547823084862482374

`∩[A087119(n+1), A164710(n+3)]`
-/

namespace A164712.P4547823084862482374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164710 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164712.P4547823084862482374

/-!
# A164713: A positive integer n is included if all runs of 0's in binary n are of the same length, and if all runs of 1's in binary n are of the same length.

The programs for A164713, the canonical program `A164713.P3719375188681482526` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164713 has offset 1).

The definition of A164713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164713.P3719375188681482526

`∩[A164707(n+1), A164710(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A164713

/-- `∩[A164707(n+1), A164710(n+1)]` -/
def P3719375188681482526.Spec : Prop :=
  ∀ n, (P3719375188681482526.a n : ℤ) = A164713 (n + 1)

theorem P3719375188681482526.correct : P3719375188681482526.Spec := by
  intro n
  simp only [A164713, Nat.add_sub_cancel]

end A164713

/-! ## A164713.P4592653341425178660

`eq[1, A161895(n+1)]+1`
-/

namespace A164713.P4592653341425178660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161895 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A164713.P4592653341425178660

namespace A164713

/-- `eq[1, A161895(n+1)]+1` -/
def P4592653341425178660.Spec : Prop :=
  ∀ n, (P4592653341425178660.a n : ℤ) = A164713 (n + 1)

end A164713

/-! ## A164713.P12621573582305399927

`lt[A297770(n+1), 3]+1`
-/

namespace A164713.P12621573582305399927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A164713.P12621573582305399927

namespace A164713

/-- `lt[A297770(n+1), 3]+1` -/
def P12621573582305399927.Spec : Prop :=
  ∀ n, (P12621573582305399927.a n : ℤ) = A164713 (n + 1)

end A164713

/-! ## A164713.P6586595049672620293

`record[A000027(n+1)/A161895(n+1)]`
-/

namespace A164713.P6586595049672620293
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A161895 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164713.P6586595049672620293

namespace A164713

/-- `record[A000027(n+1)/A161895(n+1)]` -/
def P6586595049672620293.Spec : Prop :=
  ∀ n, P6586595049672620293.a n = (A164713 (n + 1) : ℚ)

end A164713

/-! ## A164713.P9413065551778058761

`record[A005408(n)-n*A161895(n+1)]`
-/

namespace A164713.P9413065551778058761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) * A161895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164713.P9413065551778058761

namespace A164713

/-- `record[A005408(n)-n*A161895(n+1)]` -/
def P9413065551778058761.Spec : Prop :=
  ∀ n, P9413065551778058761.a n = A164713 (n + 1)

end A164713

/-! ## A164713.P752761324171055614

`record[A324347(n)/A161895(A324347(n))]`
-/

namespace A164713.P752761324171055614
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324347 n : ℚ) / (A161895 (A324347 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164713.P752761324171055614

namespace A164713

/-- `record[A324347(n)/A161895(A324347(n))]` -/
def P752761324171055614.Spec : Prop :=
  ∀ n, P752761324171055614.a n = (A164713 (n + 1) : ℚ)

end A164713

/-! ## A164713.P12132400994378979888

`record[A286544(n)/A161895(A286544(n))]`
-/

namespace A164713.P12132400994378979888
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286544 n : ℚ) / (A161895 (A286544 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164713.P12132400994378979888

namespace A164713

/-- `record[A286544(n)/A161895(A286544(n))]` -/
def P12132400994378979888.Spec : Prop :=
  ∀ n, P12132400994378979888.a n = (A164713 (n + 1) : ℚ)

end A164713

/-! ## A164713.P3490803102717373490

`record[A008619(2*n)/A161895(n+1)]`
-/

namespace A164713.P3490803102717373490
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A161895 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164713.P3490803102717373490

namespace A164713

/-- `record[A008619(2*n)/A161895(n+1)]` -/
def P3490803102717373490.Spec : Prop :=
  ∀ n, P3490803102717373490.a n = (A164713 (n + 1) : ℚ)

end A164713

/-! ## A164713.P3569089329358129869

`record[A029579(2*n)/A161895(n+1)]`
-/

namespace A164713.P3569089329358129869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029579 (2 * n) : ℚ) / (A161895 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164713.P3569089329358129869

namespace A164713

/-- `record[A029579(2*n)/A161895(n+1)]` -/
def P3569089329358129869.Spec : Prop :=
  ∀ n, P3569089329358129869.a n = (A164713 (n + 1) : ℚ)

end A164713

/-! ## A164713.P15839008913104297152

`record[A065033(n)/A161895(A065033(n))]`
-/

namespace A164713.P15839008913104297152
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 n : ℚ) / (A161895 (A065033 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164713.P15839008913104297152

namespace A164713

/-- `record[A065033(n)/A161895(A065033(n))]` -/
def P15839008913104297152.Spec : Prop :=
  ∀ n, P15839008913104297152.a n = (A164713 (n + 1) : ℚ)

end A164713

/-! ## A164713.P951677928724025917

`record[A080513(n)/A161895(A080513(n))]`
-/

namespace A164713.P951677928724025917
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080513 n : ℚ) / (A161895 (A080513 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164713.P951677928724025917

namespace A164713

/-- `record[A080513(n)/A161895(A080513(n))]` -/
def P951677928724025917.Spec : Prop :=
  ∀ n, P951677928724025917.a n = (A164713 (n + 1) : ℚ)

end A164713

/-! ## A164713.P295015148171348634

`record[A159481(n)/A161895(A159481(n))]`
-/

namespace A164713.P295015148171348634
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159481 n : ℚ) / (A161895 (A159481 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164713.P295015148171348634

namespace A164713

/-- `record[A159481(n)/A161895(A159481(n))]` -/
def P295015148171348634.Spec : Prop :=
  ∀ n, P295015148171348634.a n = (A164713 (n + 1) : ℚ)

end A164713

/-! ## A164713.P668287989083192335

`record[A008611(3*n)/A161895(n+1)]`
-/

namespace A164713.P668287989083192335
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 (3 * n) : ℚ) / (A161895 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164713.P668287989083192335

namespace A164713

/-- `record[A008611(3*n)/A161895(n+1)]` -/
def P668287989083192335.Spec : Prop :=
  ∀ n, P668287989083192335.a n = (A164713 (n + 1) : ℚ)

end A164713

/-!
# A164714: A positive integer n is included if all runs of 0's in binary n are of the same length, and if all runs of 1's in binary n are of the same length, and if there are at least two runs of 0's and at least two runs of 1's.

The programs for A164714, there is no canonical definition to state claims against.
-/

/-! ## A164714.P15350790040787031424

`∩[A164707(n+1), A164712(n+1)]`
-/

namespace A164714.P15350790040787031424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164714.P15350790040787031424

/-! ## A164714.P15298810353880927174

`∩[A164712(n+1), A164713(n+1)]`
-/

namespace A164714.P15298810353880927174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164714.P15298810353880927174

/-! ## A164714.P12780369201819118342

`∩[A164709(n+1), A164712(n+1)]`
-/

namespace A164714.P12780369201819118342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164714.P12780369201819118342

/-! ## A164714.P6476389558874276115

`∩[eq[1, A161895(n+1)]+1, A164712(n+1)]`
-/

namespace A164714.P6476389558874276115
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161895 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A164714.P6476389558874276115

/-! ## A164714.P1598594992613562243

`lt[A161895(A028310(n)), A087116(n)]`
-/

namespace A164714.P1598594992613562243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161895 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A164714.P1598594992613562243

/-!
# A164715: Length of cycle mentioned in A099010.

The programs for A164715, there is no canonical definition to state claims against.
-/

/-! ## A164715.P18432428829295778924

`filter[A164717(n+2), A164980(#)]`
-/

namespace A164715.P18432428829295778924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164717 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164980 (f1 j).toNat = 1) n)

end

end A164715.P18432428829295778924

/-! ## A164715.P7839677404729732794

`filter[A164717(n+2), A189727(#)]`
-/

namespace A164715.P7839677404729732794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164717 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189727 (f1 j).toNat = 1) n)

end

end A164715.P7839677404729732794

/-! ## A164715.P13942988790619082284

`filter[A164717(n+2), A267922(#)]`
-/

namespace A164715.P13942988790619082284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164717 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267922 (f1 j).toNat = 1) n)

end

end A164715.P13942988790619082284

/-! ## A164715.P14811060196427740595

`filter[A164717(n+2), A324732(#)]`
-/

namespace A164715.P14811060196427740595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164717 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324732 (f1 j).toNat = 1) n)

end

end A164715.P14811060196427740595

/-! ## A164715.P2533330181744858419

`filter[A164717(n+2), A354807(#)]`
-/

namespace A164715.P2533330181744858419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164717 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (f1 j).toNat = 1) n)

end

end A164715.P2533330181744858419

/-! ## A164715.P13405145974023016385

`filter[A164717(n+2), A360122(#)]`
-/

namespace A164715.P13405145974023016385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164717 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360122 (f1 j).toNat = 1) n)

end

end A164715.P13405145974023016385

/-! ## A164715.P8106056623352033964

`filter[A164717(n+2), A361113(#)]`
-/

namespace A164715.P8106056623352033964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164717 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361113 (f1 j).toNat = 1) n)

end

end A164715.P8106056623352033964

/-! ## A164715.P8935773756122964448

`filter[A164717(n+2), A368914(#)]`
-/

namespace A164715.P8935773756122964448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164717 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368914 (f1 j).toNat = 1) n)

end

end A164715.P8935773756122964448

/-! ## A164715.P12794841095536007199

`filter[A164717(n+2), A369006(#)]`
-/

namespace A164715.P12794841095536007199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164717 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369006 (f1 j).toNat = 1) n)

end

end A164715.P12794841095536007199

/-! ## A164715.P7237482094763105917

`filter[A164717(n+2), A374128(#)]`
-/

namespace A164715.P7237482094763105917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164717 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A164715.P7237482094763105917

/-! ## A164715.P6634130525322381685

`filter[A164717(n+2), A377868(#)]`
-/

namespace A164715.P6634130525322381685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164717 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377868 (f1 j).toNat = 1) n)

end

end A164715.P6634130525322381685

/-!
# A164716: Consider the Kaprekar map n->K(n) defined in A151949. Sequence gives numbers belonging to cycles, including fixed points.

The programs for A164716, there is no canonical definition to state claims against.
-/

/-! ## A164716.P14036046017038190148

`∪[A099010(n+1), A164718(n+1)]`
-/

namespace A164716.P14036046017038190148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164716.P14036046017038190148

/-! ## A164716.P6277658638224142996

`∪[A099009(n+1), A099010(n+1)]%A099009(n+2)`
-/

namespace A164716.P6277658638224142996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099010 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A099009 (n + 2))

end

end A164716.P6277658638224142996

/-!
# A164718: Consider the Kaprekar map n->K(n) defined in A151949. Sequence gives least elements of each cycle, including fixed points.

The programs for A164718, there is no canonical definition to state claims against.
-/

/-! ## A164718.P10759517230819693255

`∪[A099009(n+1), A164720(n+1)]%A164726(n+5)`
-/

namespace A164718.P10759517230819693255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164720 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A164726 (n + 5))

end

end A164718.P10759517230819693255

/-! ## A164718.P2108304994693887178

`∪[A099009(A032559(n+1)), A164720(n+1)]`
-/

namespace A164718.P2108304994693887178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099009 (A032559 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164718.P2108304994693887178

/-! ## A164718.P12758081686827268972

`∪[A099009(n+1), A164720(A164699(n+1))]`
-/

namespace A164718.P12758081686827268972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164720 (A164699 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164718.P12758081686827268972

/-! ## A164718.P7759190412203658609

`∪[9*A132155(n+1), A164720(A164699(n+1))]`
-/

namespace A164718.P7759190412203658609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A132155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164720 (A164699 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164718.P7759190412203658609

/-!
# A164720: Consider the Kaprekar map n->K(n) defined in A151949. Sequence gives least elements of each cycle of length > 1.

The programs for A164720, there is no canonical definition to state claims against.
-/

/-! ## A164720.P1509171019756085526

`∩[A099010(n+1), A164718(n+1)]`
-/

namespace A164720.P1509171019756085526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164720.P1509171019756085526

/-!
# A164721: Length of cycle mentioned in A164720.

The programs for A164721, there is no canonical definition to state claims against.
-/

/-! ## A164721.P4121812360280650546

`A164719(lt[1, A164719(n+1)]+1)`
-/

namespace A164721.P4121812360280650546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164719 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A164721.P4121812360280650546

/-! ## A164721.P17145585508576567771

`A008620(p?[A007310(A164719(n+1))])`
-/

namespace A164721.P17145585508576567771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A164719 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A164721.P17145585508576567771

/-! ## A164721.P15833825284967751511

`filter[A164719(n+3), A164980(#)]`
-/

namespace A164721.P15833825284967751511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164719 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164980 (f1 j).toNat = 1) n)

end

end A164721.P15833825284967751511

/-! ## A164721.P8818679135503234933

`filter[A164719(n+3), A189727(#)]`
-/

namespace A164721.P8818679135503234933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164719 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189727 (f1 j).toNat = 1) n)

end

end A164721.P8818679135503234933

/-! ## A164721.P9854069604254512452

`filter[A164719(n+3), A267922(#)]`
-/

namespace A164721.P9854069604254512452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164719 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267922 (f1 j).toNat = 1) n)

end

end A164721.P9854069604254512452

/-! ## A164721.P11538050127932952061

`filter[A164719(n+3), A324732(#)]`
-/

namespace A164721.P11538050127932952061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164719 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324732 (f1 j).toNat = 1) n)

end

end A164721.P11538050127932952061

/-! ## A164721.P4767744125976690538

`filter[A164719(n+3), A354807(#)]`
-/

namespace A164721.P4767744125976690538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164719 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354807 (f1 j).toNat = 1) n)

end

end A164721.P4767744125976690538

/-! ## A164721.P3655093944595428061

`filter[A164719(n+3), A360122(#)]`
-/

namespace A164721.P3655093944595428061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164719 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360122 (f1 j).toNat = 1) n)

end

end A164721.P3655093944595428061

/-! ## A164721.P2144549005267471297

`filter[A164719(n+3), A361113(#)]`
-/

namespace A164721.P2144549005267471297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164719 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361113 (f1 j).toNat = 1) n)

end

end A164721.P2144549005267471297

/-! ## A164721.P3827497870984117202

`filter[A164719(n+3), A368914(#)]`
-/

namespace A164721.P3827497870984117202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164719 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368914 (f1 j).toNat = 1) n)

end

end A164721.P3827497870984117202

/-! ## A164721.P9638175118091341648

`filter[A164719(n+3), A369006(#)]`
-/

namespace A164721.P9638175118091341648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164719 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369006 (f1 j).toNat = 1) n)

end

end A164721.P9638175118091341648

/-! ## A164721.P8351271220607683347

`filter[A164719(n+3), A374128(#)]`
-/

namespace A164721.P8351271220607683347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164719 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A164721.P8351271220607683347

/-! ## A164721.P3875228359521411057

`filter[A164719(n+3), A377868(#)]`
-/

namespace A164721.P3875228359521411057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164719 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377868 (f1 j).toNat = 1) n)

end

end A164721.P3875228359521411057

/-!
# A164722: Numbers whose sum of distinct prime factors is a square.

The programs for A164722, the canonical program `A164722.P9583709512373322785` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164722 has offset 1).

The definition of A164722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164722.P9583709512373322785

`eq[1, A010052(A008472(n+1))]+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164722

/-- `eq[1, A010052(A008472(n+1))]+1` -/
def P9583709512373322785.Spec : Prop :=
  ∀ n, (P9583709512373322785.a n : ℤ) = A164722 (n + 1)

theorem P9583709512373322785.correct : P9583709512373322785.Spec := by
  intro n
  simp only [A164722, Nat.add_sub_cancel]

end A164722

/-! ## A164722.P15959327389031596542

`record[A010052(A008472(n+1))*A028310(n+1)]`
-/

namespace A164722.P15959327389031596542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A008472 (n + 1)).toNat * A028310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164722.P15959327389031596542

namespace A164722

/-- `record[A010052(A008472(n+1))*A028310(n+1)]` -/
def P15959327389031596542.Spec : Prop :=
  ∀ n, P15959327389031596542.a n = A164722 (n + 1)

end A164722

/-! ## A164722.P9656304723909014266

`record[(A005408(n)-n)*A010052(A008472(n+1))]`
-/

namespace A164722.P9656304723909014266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ)) * A010052 (A008472 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164722.P9656304723909014266

namespace A164722

/-- `record[(A005408(n)-n)*A010052(A008472(n+1))]` -/
def P9656304723909014266.Spec : Prop :=
  ∀ n, P9656304723909014266.a n = A164722 (n + 1)

end A164722

/-! ## A164722.P2168480577115433020

`record[A008619(2*n)*A010052(A008472(n+1))]`
-/

namespace A164722.P2168480577115433020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A010052 (A008472 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164722.P2168480577115433020

namespace A164722

/-- `record[A008619(2*n)*A010052(A008472(n+1))]` -/
def P2168480577115433020.Spec : Prop :=
  ∀ n, P2168480577115433020.a n = A164722 (n + 1)

end A164722

/-! ## A164722.P14440725034123523476

`record[A010052(A008472(n+1))*A029579(2*n)]`
-/

namespace A164722.P14440725034123523476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A008472 (n + 1)).toNat * A029579 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164722.P14440725034123523476

namespace A164722

/-- `record[A010052(A008472(n+1))*A029579(2*n)]` -/
def P14440725034123523476.Spec : Prop :=
  ∀ n, P14440725034123523476.a n = A164722 (n + 1)

end A164722

/-!
# A164723: Numbers belonging to cycles of length 2 under the Kaprekar map A151949.

The programs for A164723, there is no canonical definition to state claims against.
-/

/-! ## A164723.P8377880568697472909

`A099010(eq[2, A164715(n+1)]+1)`
-/

namespace A164723.P8377880568697472909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A164723.P8377880568697472909

/-!
# A164725: Numbers belonging to cycles of length 3 under the Kaprekar map A151949.

The programs for A164725, there is no canonical definition to state claims against.
-/

/-! ## A164725.P13538828620115909469

`A099010(eq[3, A164715(n+1)]+1)`
-/

namespace A164725.P13538828620115909469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A164725.P13538828620115909469

/-!
# A164726: Least element of each cycle of length 3 under the Kaprekar map A151949.

The programs for A164726, there is no canonical definition to state claims against.
-/

/-! ## A164726.P12765008148656734695

`A164718(eq[3, A164719(n+1)]+1)`
-/

namespace A164726.P12765008148656734695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A164726.P12765008148656734695

/-! ## A164726.P5688345308887559755

`A164720(eq[3, A164721(n+1)]+1)`
-/

namespace A164726.P5688345308887559755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A164726.P5688345308887559755

/-! ## A164726.P9692268192638642017

`∩[A164718(n+1), A164725(n+1)]`
-/

namespace A164726.P9692268192638642017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164726.P9692268192638642017

/-! ## A164726.P3267854074074183861

`∩[A164720(n+1), A164725(n+1)]`
-/

namespace A164726.P3267854074074183861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164726.P3267854074074183861

/-!
# A164727: Numbers belonging to cycles of length 5 under the Kaprekar map A151949.

The programs for A164727, there is no canonical definition to state claims against.
-/

/-! ## A164727.P9737465926751194934

`A099010(eq[5, A164715(n+1)]+1)`
-/

namespace A164727.P9737465926751194934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A164727.P9737465926751194934

/-!
# A164728: Least element of each cycle of length 5 under the Kaprekar map A151949.

The programs for A164728, there is no canonical definition to state claims against.
-/

/-! ## A164728.P3998447630470992914

`A164718(eq[5, A164719(n+1)]+1)`
-/

namespace A164728.P3998447630470992914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A164728.P3998447630470992914

/-!
# A164729: Numbers belonging to cycles of length 7 under the Kaprekar map A151949.

The programs for A164729, there is no canonical definition to state claims against.
-/

/-! ## A164729.P6971242194653736170

`A099010(eq[7, A164715(n+1)]+1)`
-/

namespace A164729.P6971242194653736170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A164729.P6971242194653736170

/-! ## A164729.P16981699767102908856

`A099010(A178914(n)+A077168(2*n))`
-/

namespace A164729.P16981699767102908856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099010 (A178914 n + A077168 (2 * n)).toNat

end

end A164729.P16981699767102908856

/-!
# A164730: Least element of each cycle of length 7 under the Kaprekar map A151949.

The programs for A164730, there is no canonical definition to state claims against.
-/

/-! ## A164730.P16070835957453613212

`A164729(7*n+1)`
-/

namespace A164730.P16070835957453613212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164729 (7 * n + 1)

end

end A164730.P16070835957453613212

/-! ## A164730.P5993965842251635841

`∩[A164720(n+1), A164729(n+1)]`
-/

namespace A164730.P5993965842251635841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164730.P5993965842251635841

/-!
# A164733: Number of n-digit fixed points under the Kaprekar map A151949.

The programs for A164733, there is no canonical definition to state claims against.
-/

/-! ## A164733.P5283944392340116993

`A257992(A058545(n)+A017913(n))`
-/

namespace A164733.P5283944392340116993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A058545 n + A017913 n).toNat

end

end A164733.P5283944392340116993

/-! ## A164733.P4660393572157740777

`and(A029097(n), A268687(A278539(n+1)))`
-/

namespace A164733.P4660393572157740777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029097 n) (A268687 (A278539 (n + 1)).toNat)

end

end A164733.P4660393572157740777

/-! ## A164733.P9781753171111946040

`A089052(p?[A111338(n+1)])`
-/

namespace A164733.P9781753171111946040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A164733.P9781753171111946040

/-! ## A164733.P9161994501489534940

`A265262(A265278(n)+A194979(n+1))`
-/

namespace A164733.P9161994501489534940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265262 (A265278 n + A194979 (n + 1)).toNat

end

end A164733.P9161994501489534940

/-! ## A164733.P9464580202100305364

`A152177(A352929(n+1))%A254858(n)`
-/

namespace A164733.P9464580202100305364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152177 (A352929 (n + 1)).toNat) (A254858 n)

end

end A164733.P9464580202100305364

/-!
# A164734: Number of n-digit cycles of length 2 under the Kaprekar map A151949.

The programs for A164734, there is no canonical definition to state claims against.
-/

/-! ## A164734.P5990523681018096909

`A327051(A326032(n)*A327531(n+1))`
-/

namespace A164734.P5990523681018096909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327051 (A326032 n * A327531 (n + 1)).toNat

end

end A164734.P5990523681018096909

/-! ## A164734.P3445816432757186961

`A327051(lcm(A326032(n), A327531(n+1)))`
-/

namespace A164734.P3445816432757186961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327051 (Int.lcm (A326032 n) (A327531 (n + 1)))

end

end A164734.P3445816432757186961

/-! ## A164734.P6376325719917252222

`A073484(A174301(n)+A119793(n+1))`
-/

namespace A164734.P6376325719917252222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073484 (A174301 n + A119793 (n + 1)).toNat

end

end A164734.P6376325719917252222

/-! ## A164734.P15580528316823337338

`A060952(3*A236938(n))`
-/

namespace A164734.P15580528316823337338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (3 * A236938 n).toNat

end

end A164734.P15580528316823337338

/-! ## A164734.P16995686917663441410

`A125005(xor(20, A014193(n+1)))`
-/

namespace A164734.P16995686917663441410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (Int.xor 20 (A014193 (n + 1))).toNat

end

end A164734.P16995686917663441410

/-!
# A164735: Number of n-digit cycles of length 3 under the Kaprekar map A151949.

The programs for A164735, there is no canonical definition to state claims against.
-/

/-! ## A164735.P15526918765046312724

`A264924(A152271(n)%A055160(n+1))`
-/

namespace A164735.P15526918765046312724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264924 (Int.tmod (A152271 n) (A055160 (n + 1))).toNat

end

end A164735.P15526918765046312724

/-! ## A164735.P10168468398750599284

`A152271(A264924(n))*A264924(A152271(n))`
-/

namespace A164735.P10168468398750599284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A264924 n).toNat * A264924 (A152271 n).toNat

end

end A164735.P10168468398750599284

/-! ## A164735.P14687347639625482388

`A319413(A280699(n+1))`
-/

namespace A164735.P14687347639625482388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319413 (A280699 (n + 1)).toNat

end

end A164735.P14687347639625482388

/-! ## A164735.P17681936834271120229

`A319413(ceil(sqrt(A221364(n))))`
-/

namespace A164735.P17681936834271120229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319413 ⌈Real.sqrt (A221364 n : ℝ)⌉.toNat

end

end A164735.P17681936834271120229

/-! ## A164735.P9376792586309416610

`A000749(A001222(A098615(n)))`
-/

namespace A164735.P9376792586309416610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (A001222 (A098615 n).toNat).toNat

end

end A164735.P9376792586309416610

/-!
# A164737: a(n) = 8*a(n-2) for n > 2; a(1) = 5, a(2) = 12.

The programs for A164737, the canonical program `A164737.P1326012281297323984` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164737 has offset 1).

The definition of A164737 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-2)` (program `A164737.P1326012281297323984`, by `A164737.P1326012281297323984.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164737.P1326012281297323984

`8*a(n-2)` with `a(0)=5, a(1)=12`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164737

/-- `8*a(n-2)` -/
def P1326012281297323984.Spec : Prop :=
  ∀ n, (P1326012281297323984.a n : ℤ) = A164737 (n + 1)

theorem P1326012281297323984.correct : P1326012281297323984.Spec := by
  intro n
  simp only [A164737, Nat.add_sub_cancel]

end A164737

/-! ## A164737.P16517348466536705336

`(13-7*(-1)^(n+1))*2^((6*(n+1)-11+3*(-1)^(n+1))/4)`
-/

namespace A164737.P16517348466536705336
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (13 - 7 * (-1) ^ (n + 1) : ℝ) * (2 : ℝ) ^ (((6 * (n + 1) : ℤ) - 11 + 3 * (-1) ^ (n + 1) : ℚ) / 4 : ℝ)

end

end A164737.P16517348466536705336

namespace A164737

/-- `(13-7*(-1)^(n+1))*2^((6*(n+1)-11+3*(-1)^(n+1))/4)` -/
def P16517348466536705336.Spec : Prop :=
  ∀ n, P16517348466536705336.a n = (A164737 (n + 1) : ℝ)

end A164737

/-! ## A164737.P9563424263381339926

`ogf((5+12x)/(1-8x^2))`
-/

namespace A164737.P9563424263381339926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 12] [1, 0, -8] n

end

end A164737.P9563424263381339926

namespace A164737

/-- `ogf((5+12x)/(1-8x^2))` -/
def P9563424263381339926.Spec : Prop :=
  ∀ n, P9563424263381339926.a n = A164737 (n + 1)

end A164737

/-! ## A164737.P10781240879030117404

`A164095(3*n+1)`
-/

namespace A164737.P10781240879030117404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164095 (3 * n + 1)

end

end A164737.P10781240879030117404

namespace A164737

/-- `A164095(3*n+1)` -/
def P10781240879030117404.Spec : Prop :=
  ∀ n, P10781240879030117404.a n = A164737 (n + 1)

end A164737

/-! ## A164737.P3346248699515173645

`abs(Δ[A094014(n+1)/2])`
-/

namespace A164737.P3346248699515173645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094014 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A164737.P3346248699515173645

namespace A164737

/-- `abs(Δ[A094014(n+1)/2])` -/
def P3346248699515173645.Spec : Prop :=
  ∀ n, P3346248699515173645.a n = (A164737 (n + 1) : ℚ)

end A164737

/-! ## A164737.P16019354099403466854

`A029747(A130877(n+2))`
-/

namespace A164737.P16019354099403466854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A130877 (n + 2)).toNat

end

end A164737.P16019354099403466854

namespace A164737

/-- `A029747(A130877(n+2))` -/
def P16019354099403466854.Spec : Prop :=
  ∀ n, P16019354099403466854.a n = A164737 (n + 1)

end A164737

/-! ## A164737.P14753591154942746316

`lcm(A010717(n), A094015(n))`
-/

namespace A164737.P14753591154942746316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010717 n) (A094015 n)

end

end A164737.P14753591154942746316

namespace A164737

/-- `lcm(A010717(n), A094015(n))` -/
def P14753591154942746316.Spec : Prop :=
  ∀ n, (P14753591154942746316.a n : ℤ) = A164737 (n + 1)

end A164737

/-! ## A164737.P9264247798885577542

`A029747(∑[5-A000035(n)])`
-/

namespace A164737.P9264247798885577542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164737.P9264247798885577542

namespace A164737

/-- `A029747(∑[5-A000035(n)])` -/
def P9264247798885577542.Spec : Prop :=
  ∀ n, P9264247798885577542.a n = A164737 (n + 1)

end A164737

/-! ## A164737.P7024230715697311556

`A029747(∑[6-A000034(n)])`
-/

namespace A164737.P7024230715697311556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164737.P7024230715697311556

namespace A164737

/-- `A029747(∑[6-A000034(n)])` -/
def P7024230715697311556.Spec : Prop :=
  ∀ n, P7024230715697311556.a n = A164737 (n + 1)

end A164737

/-! ## A164737.P12297119613549395739

`A094015(n+1)+A094015(n)`
-/

namespace A164737.P12297119613549395739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094015 (n + 1) + A094015 n

end

end A164737.P12297119613549395739

namespace A164737

/-- `A094015(n+1)+A094015(n)` -/
def P12297119613549395739.Spec : Prop :=
  ∀ n, P12297119613549395739.a n = A164737 (n + 1)

end A164737

/-! ## A164737.P17508315548586896975

`lcm(A040024(n), A164675(n+1))`
-/

namespace A164737.P17508315548586896975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040024 n) (A164675 (n + 1))

end

end A164737.P17508315548586896975

namespace A164737

/-- `lcm(A040024(n), A164675(n+1))` -/
def P17508315548586896975.Spec : Prop :=
  ∀ n, (P17508315548586896975.a n : ℤ) = A164737 (n + 1)

end A164737

/-! ## A164737.P18042503238635735804

`lcm(A071044(n), A162396(3*n+1))`
-/

namespace A164737.P18042503238635735804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071044 n) (A162396 (3 * n + 1))

end

end A164737.P18042503238635735804

namespace A164737

/-- `lcm(A071044(n), A162396(3*n+1))` -/
def P18042503238635735804.Spec : Prop :=
  ∀ n, (P18042503238635735804.a n : ℤ) = A164737 (n + 1)

end A164737

/-! ## A164737.P3041188255705601778

`A137529(2*(n+1))+A137529(2*n)`
-/

namespace A164737.P3041188255705601778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137529 (2 * (n + 1)) + A137529 (2 * n)

end

end A164737.P3041188255705601778

namespace A164737

/-- `A137529(2*(n+1))+A137529(2*n)` -/
def P3041188255705601778.Spec : Prop :=
  ∀ n, P3041188255705601778.a n = A164737 (n + 1)

end A164737

/-! ## A164737.P10183026914105981667

`A090989(3*n+1)+A077957(3*n)`
-/

namespace A164737.P10183026914105981667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090989 (3 * n + 1) + A077957 (3 * n)

end

end A164737.P10183026914105981667

namespace A164737

/-- `A090989(3*n+1)+A077957(3*n)` -/
def P10183026914105981667.Spec : Prop :=
  ∀ n, P10183026914105981667.a n = A164737 (n + 1)

end A164737

/-! ## A164737.P16851565778840633371

`A143095(3*n+1)+A143095(3*n)`
-/

namespace A164737.P16851565778840633371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (3 * n + 1) + A143095 (3 * n)

end

end A164737.P16851565778840633371

namespace A164737

/-- `A143095(3*n+1)+A143095(3*n)` -/
def P16851565778840633371.Spec : Prop :=
  ∀ n, P16851565778840633371.a n = A164737 (n + 1)

end A164737

/-! ## A164737.P17560315822581776991

`∑[Δ[A029749(3*n+1)]*A016116(n)]`
-/

namespace A164737.P17560315822581776991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029749 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164737.P17560315822581776991

namespace A164737

/-- `∑[Δ[A029749(3*n+1)]*A016116(n)]` -/
def P17560315822581776991.Spec : Prop :=
  ∀ n, P17560315822581776991.a n = A164737 (n + 1)

end A164737

/-! ## A164737.P18159308324516577551

`A163978(3*n+2)+A131575(3*n+1)`
-/

namespace A164737.P18159308324516577551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (3 * n + 2) + A131575 (3 * n + 1)

end

end A164737.P18159308324516577551

namespace A164737

/-- `A163978(3*n+2)+A131575(3*n+1)` -/
def P18159308324516577551.Spec : Prop :=
  ∀ n, P18159308324516577551.a n = A164737 (n + 1)

end A164737

/-!
# A164738: Triangle read by rows. Row 0 = {2}; left half of row n+1 = row n, right half = row n reversed with each term replaced by the next prime.

The programs for A164738, the canonical program `A164738.P7688680176698315187` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164738 has offset 0).

The definition of A164738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164738.P7688680176698315187

`A057334(A233280(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A164738

/-- `A057334(A233280(n+1))` -/
def P7688680176698315187.Spec : Prop :=
  ∀ n, P7688680176698315187.a n = A164738 n

theorem P7688680176698315187.correct : P7688680176698315187.Spec := by
  intro n
  simp only [A164738]

end A164738

/-! ## A164738.P17882392790987897477

`A000040(A088696(n+1))`
-/

namespace A164738.P17882392790987897477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A088696 (n + 1)).toNat

end

end A164738.P17882392790987897477

namespace A164738

/-- `A000040(A088696(n+1))` -/
def P17882392790987897477.Spec : Prop :=
  ∀ n, P17882392790987897477.a n = A164738 n

end A164738

/-! ## A164738.P6552549000359123605

`A019565(A164281(n))`
-/

namespace A164738.P6552549000359123605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A164281 n).toNat

end

end A164738.P6552549000359123605

namespace A164738

/-- `A019565(A164281(n))` -/
def P6552549000359123605.Spec : Prop :=
  ∀ n, P6552549000359123605.a n = A164738 n

end A164738

/-! ## A164738.P12959674434515902597

`A005940(A164281(n)+1)`
-/

namespace A164738.P12959674434515902597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A164281 n + 1).toNat

end

end A164738.P12959674434515902597

namespace A164738

/-- `A005940(A164281(n)+1)` -/
def P12959674434515902597.Spec : Prop :=
  ∀ n, P12959674434515902597.a n = A164738 n

end A164738

/-! ## A164738.P8574997005150961365

`A333219(A164281(n)+1)`
-/

namespace A164738.P8574997005150961365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (A164281 n + 1).toNat

end

end A164738.P8574997005150961365

namespace A164738

/-- `A333219(A164281(n)+1)` -/
def P8574997005150961365.Spec : Prop :=
  ∀ n, P8574997005150961365.a n = A164738 n

end A164738

/-! ## A164738.P16738734269368212738

`A105560(2*A164281(n))`
-/

namespace A164738.P16738734269368212738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (2 * A164281 n).toNat

end

end A164738.P16738734269368212738

namespace A164738

/-- `A105560(2*A164281(n))` -/
def P16738734269368212738.Spec : Prop :=
  ∀ n, P16738734269368212738.a n = A164738 n

end A164738

/-! ## A164738.P5395921819367818006

`A122111(2*A164281(n))`
-/

namespace A164738.P5395921819367818006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (2 * A164281 n).toNat

end

end A164738.P5395921819367818006

namespace A164738

/-- `A122111(2*A164281(n))` -/
def P5395921819367818006.Spec : Prop :=
  ∀ n, P5395921819367818006.a n = A164738 n

end A164738

/-! ## A164738.P6221595394873853612

`A000040(log2(A164281(n))+1)`
-/

namespace A164738.P6221595394873853612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.logb 2 (A164281 n : ℝ) + 1)).toNat

end

end A164738.P6221595394873853612

namespace A164738

/-- `A000040(log2(A164281(n))+1)` -/
def P6221595394873853612.Spec : Prop :=
  ∀ n, P6221595394873853612.a n = A164738 n

end A164738

/-! ## A164738.P11819436027785891344

`A000040(log2(2*A164281(n)))`
-/

namespace A164738.P11819436027785891344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway (Real.logb 2 (2 * A164281 n : ℝ))).toNat

end

end A164738.P11819436027785891344

namespace A164738

/-- `A000040(log2(2*A164281(n)))` -/
def P11819436027785891344.Spec : Prop :=
  ∀ n, P11819436027785891344.a n = A164738 n

end A164738

/-! ## A164738.P10984292595634629125

`A000040(val(A164281(n), 2)+1)`
-/

namespace A164738.P10984292595634629125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.valuation (A164281 n).toNat 2 + 1)

end

end A164738.P10984292595634629125

namespace A164738

/-- `A000040(val(A164281(n), 2)+1)` -/
def P10984292595634629125.Spec : Prop :=
  ∀ n, P10984292595634629125.a n = A164738 n

end A164738

/-! ## A164738.P7319451446826496369

`A000040(val(2*A164281(n), 2))`
-/

namespace A164738.P7319451446826496369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.valuation (2 * A164281 n).toNat 2)

end

end A164738.P7319451446826496369

namespace A164738

/-- `A000040(val(2*A164281(n), 2))` -/
def P7319451446826496369.Spec : Prop :=
  ∀ n, P7319451446826496369.a n = A164738 n

end A164738

/-! ## A164738.P11839500481937131762

`A105560(A164281(n)+A164281(n))`
-/

namespace A164738.P11839500481937131762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A164281 n + A164281 n).toNat

end

end A164738.P11839500481937131762

namespace A164738

/-- `A105560(A164281(n)+A164281(n))` -/
def P11839500481937131762.Spec : Prop :=
  ∀ n, P11839500481937131762.a n = A164738 n

end A164738

/-! ## A164738.P15880961799996640637

`A094290(A164279(n))`
-/

namespace A164738.P15880961799996640637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094290 (A164279 n).toNat

end

end A164738.P15880961799996640637

namespace A164738

/-- `A094290(A164279(n))` -/
def P15880961799996640637.Spec : Prop :=
  ∀ n, P15880961799996640637.a n = A164738 n

end A164738

/-!
# A164739: Prime numbers in which the difference between the largest digit and the smallest digit is a digit in the same prime.

The programs for A164739, there is no canonical definition to state claims against.
-/

/-! ## A164739.P12279342966179623544

`∩[A191044(n+1), A330859(n)]`
-/

namespace A164739.P12279342966179623544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330859 (n + 100)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164739.P12279342966179623544

/-!
# A164740: (2^p-(p+2))/p as p runs through the primes.

The programs for A164740, there is no canonical definition to state claims against.
-/

/-! ## A164740.P12252465498507171750

`A318731(p?[comp[n²]])`
-/

namespace A164740.P12252465498507171750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318731 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A164740.P12252465498507171750

/-! ## A164740.P15609589579846145921

`A064535(n+1)-1`
-/

namespace A164740.P15609589579846145921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064535 (n + 1) - 1

end

end A164740.P15609589579846145921

/-! ## A164740.P4071195698775599667

`xor(2, A008965(p?[comp[n²]]))`
-/

namespace A164740.P4071195698775599667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A008965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A164740.P4071195698775599667

/-! ## A164740.P3115690779395523109

`record[A064535(abs(1-n))-1]`
-/

namespace A164740.P3115690779395523109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064535 |1 - (n : ℤ)|.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164740.P3115690779395523109

/-! ## A164740.P16572014332517608013

`A000031(p?[abs(xor(n, -2))])-3`
-/

namespace A164740.P16572014332517608013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 3

end

end A164740.P16572014332517608013

/-! ## A164740.P17405243334472881447

`A318731(A000040(n+1))`
-/

namespace A164740.P17405243334472881447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318731 (A000040 (n + 1)).toNat

end

end A164740.P17405243334472881447

/-! ## A164740.P5706900564252049659

`A001037(p?[A091203(n)])-1`
-/

namespace A164740.P5706900564252049659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A164740.P5706900564252049659

/-! ## A164740.P8907929762303724927

`A052823(A216884(n+1))-1`
-/

namespace A164740.P8907929762303724927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (A216884 (n + 1)).toNat - 1

end

end A164740.P8907929762303724927

/-! ## A164740.P5114642147683998539

`A001037(A008578(n+2))-1`
-/

namespace A164740.P5114642147683998539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (A008578 (n + 2)).toNat - 1

end

end A164740.P5114642147683998539

/-!
# A164741: Number of reduced words of length n in Coxeter group on 6 generators S_i with relations (S_i)^2 = (S_i S_j)^8 = I.

The programs for A164741, there is no canonical definition to state claims against.
-/

/-! ## A164741.P4499287986192498364

`floor(6*5^(n-1))-A002262(A111432(n))`
-/

namespace A164741.P4499287986192498364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A002262 (A111432 n).toNat

end

end A164741.P4499287986192498364

/-! ## A164741.P9760746229762354762

`A000007(n+1)+A166500(n)-A002262(A111432(n))`
-/

namespace A164741.P9760746229762354762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A166500 n - A002262 (A111432 n).toNat)

end

end A164741.P9760746229762354762

/-! ## A164741.P1930320770723868877

`(A166500(n)-A002262(A111432(n)))*A280193(2*n+1)²`
-/

namespace A164741.P1930320770723868877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166500 n - A002262 (A111432 n).toNat) * A280193 (2 * n + 1) ^ 2

end

end A164741.P1930320770723868877

/-! ## A164741.P17599544538339720647

`A111432(A002262(n))+A166500(n)-A002262(A111432(n))`
-/

namespace A164741.P17599544538339720647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111432 (A002262 n).toNat + (A166500 n - A002262 (A111432 n).toNat)

end

end A164741.P17599544538339720647

/-!
# A164742: Number of reduced words of length n in Coxeter group on 7 generators S_i with relations (S_i)^2 = (S_i S_j)^8 = I.

The programs for A164742, there is no canonical definition to state claims against.
-/

/-! ## A164742.P14018232341774525504

`A003949(n)-A241467(A079901(n))`
-/

namespace A164742.P14018232341774525504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003949 n - A241467 (A079901 n).toNat

end

end A164742.P14018232341774525504

/-!
# A164743: Digital root of 3*A000045(n).

The programs for A164743, the canonical program `A164743.P5989493387288468885` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164743 has offset 1).

The definition of A164743 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049341, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A164743.P5989493387288468885

`A049341(n+7)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164743

/-- `A049341(n+7)` -/
def P5989493387288468885.Spec : Prop :=
  ∀ n, P5989493387288468885.a n = A164743 (n + 1)

theorem P5989493387288468885.correct : P5989493387288468885.Spec := by
  intro n
  simp only [A164743, Nat.add_sub_cancel]

end A164743

/-!
# A164754: Number of n X 2 1..4 arrays with all 1's connected, all 2's connected, all 3's connected, all 4's connected, 1 in the upper left corner, 2 in the upper right corner, 3 in the lower left corner, 4 in the lower right corner, and with no element having more than 2 neighbors with the same value.

The programs for A164754, the canonical program `A164754.P4855497659905934754` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164754 has offset 2).

The definition of A164754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164754.P4855497659905934754

`abs(2-∑[8*n+1])`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164754

/-- `abs(2-∑[8*n+1])` -/
def P4855497659905934754.Spec : Prop :=
  ∀ n, P4855497659905934754.a n = A164754 (n + 2)

theorem P4855497659905934754.correct : P4855497659905934754.Spec := by
  intro n
  simp only [A164754, Nat.add_sub_cancel]

end A164754

/-! ## A164754.P16585943497412795454

`∑[or(1, 8*n-char[1])]`
-/

namespace A164754.P16585943497412795454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((8 * n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164754.P16585943497412795454

namespace A164754

/-- `∑[or(1, 8*n-char[1])]` -/
def P16585943497412795454.Spec : Prop :=
  ∀ n, P16585943497412795454.a n = A164754 (n + 2)

end A164754

/-! ## A164754.P10386628289787510207

`∑[a(n-1)+8]` with `a(0)=1, a(1)=7, a(2)=17`
-/

namespace A164754.P10386628289787510207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 17] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164754.P10386628289787510207

namespace A164754

/-- `∑[a(n-1)+8]` -/
def P10386628289787510207.Spec : Prop :=
  ∀ n, (P10386628289787510207.a n : ℤ) = A164754 (n + 2)

end A164754

/-! ## A164754.P2211220585637910349

`abs(or(1, ∑[-(8*n)]))+n`
-/

namespace A164754.P2211220585637910349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(8 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)| + (n : ℤ)

end

end A164754.P2211220585637910349

namespace A164754

/-- `abs(or(1, ∑[-(8*n)]))+n` -/
def P2211220585637910349.Spec : Prop :=
  ∀ n, P2211220585637910349.a n = A164754 (n + 2)

end A164754

/-! ## A164754.P571098698609748658

`abs(comp[lcm(2, n)]²-2)+n`
-/

namespace A164754.P571098698609748658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 : ℤ) - 2| + (n : ℤ)

end

end A164754.P571098698609748658

namespace A164754

/-- `abs(comp[lcm(2, n)]²-2)+n` -/
def P571098698609748658.Spec : Prop :=
  ∀ n, P571098698609748658.a n = A164754 (n + 2)

end A164754

/-! ## A164754.P10003997272199260053

`abs(xor(1, ∑[-(8*n)]))+n`
-/

namespace A164754.P10003997272199260053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(8 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)| + (n : ℤ)

end

end A164754.P10003997272199260053

namespace A164754

/-- `abs(xor(1, ∑[-(8*n)]))+n` -/
def P10003997272199260053.Spec : Prop :=
  ∀ n, P10003997272199260053.a n = A164754 (n + 2)

end A164754

/-! ## A164754.P5924479595315378464

`∑[ogf((1+5x+4x^2-2x^3)/(1-2x+x^2))]`
-/

namespace A164754.P5924479595315378464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 4, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164754.P5924479595315378464

namespace A164754

/-- `∑[ogf((1+5x+4x^2-2x^3)/(1-2x+x^2))]` -/
def P5924479595315378464.Spec : Prop :=
  ∀ n, P5924479595315378464.a n = A164754 (n + 2)

end A164754

/-! ## A164754.P5159185038201778301

`ogf((1+5x+4x^2-2x^3)/(1-3x+3x^2-x^3))`
-/

namespace A164754.P5159185038201778301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 4, -2] [1, -3, 3, -1] n

end

end A164754.P5159185038201778301

namespace A164754

/-- `ogf((1+5x+4x^2-2x^3)/(1-3x+3x^2-x^3))` -/
def P5159185038201778301.Spec : Prop :=
  ∀ n, P5159185038201778301.a n = A164754 (n + 2)

end A164754

/-! ## A164754.P15364098212711352755

`xor(1, Δ[n²]²)+abs(1-n)`
-/

namespace A164754.P15364098212711352755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) + |1 - (n : ℤ)|

end

end A164754.P15364098212711352755

namespace A164754

/-- `xor(1, Δ[n²]²)+abs(1-n)` -/
def P15364098212711352755.Spec : Prop :=
  ∀ n, P15364098212711352755.a n = A164754 (n + 2)

end A164754

/-! ## A164754.P12746418655548134664

`8*n+a(n-1)+1` with `a(0)=1, a(1)=8`
-/

namespace A164754.P12746418655548134664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  8 * n + (a (n - 1) + 1)

end

end A164754.P12746418655548134664

namespace A164754

/-- `8*n+a(n-1)+1` -/
def P12746418655548134664.Spec : Prop :=
  ∀ n, (P12746418655548134664.a n : ℤ) = A164754 (n + 2)

end A164754

/-! ## A164754.P8077847475934875372

`(n-2)%(n+1)+(2*n+1)²`
-/

namespace A164754.P8077847475934875372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 2) (n + 1 : ℤ) + ((2 * n + 1) ^ 2 : ℤ)

end

end A164754.P8077847475934875372

namespace A164754

/-- `(n-2)%(n+1)+(2*n+1)²` -/
def P8077847475934875372.Spec : Prop :=
  ∀ n, P8077847475934875372.a n = A164754 (n + 2)

end A164754

/-! ## A164754.P17419147678458957854

`and(-2, (2*n+1)²)+abs(1-n)`
-/

namespace A164754.P17419147678458957854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((2 * n + 1) ^ 2 : ℤ) + |1 - (n : ℤ)|

end

end A164754.P17419147678458957854

namespace A164754

/-- `and(-2, (2*n+1)²)+abs(1-n)` -/
def P17419147678458957854.Spec : Prop :=
  ∀ n, P17419147678458957854.a n = A164754 (n + 2)

end A164754

/-! ## A164754.P3268965332954134303

`lcm(n-1, (2*n+1)*(n-1))+(n+3)*2*n`
-/

namespace A164754.P3268965332954134303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) ((2 * n + 1 : ℤ) * ((n : ℤ) - 1)) + (n + 3) * (2 * n)

end

end A164754.P3268965332954134303

namespace A164754

/-- `lcm(n-1, (2*n+1)*(n-1))+(n+3)*2*n` -/
def P3268965332954134303.Spec : Prop :=
  ∀ n, (P3268965332954134303.a n : ℤ) = A164754 (n + 2)

end A164754

/-! ## A164754.P16036824974002411885

`abs(A184882(n))+n`
-/

namespace A164754.P16036824974002411885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A184882 n| + (n : ℤ)

end

end A164754.P16036824974002411885

namespace A164754

/-- `abs(A184882(n))+n` -/
def P16036824974002411885.Spec : Prop :=
  ∀ n, P16036824974002411885.a n = A164754 (n + 2)

end A164754

/-! ## A164754.P4332702424782867084

`2*A132209(n)+n+1`
-/

namespace A164754.P4332702424782867084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132209 n + (n + 1 : ℤ)

end

end A164754.P4332702424782867084

namespace A164754

/-- `2*A132209(n)+n+1` -/
def P4332702424782867084.Spec : Prop :=
  ∀ n, P4332702424782867084.a n = A164754 (n + 2)

end A164754

/-! ## A164754.P9565803203059061323

`A133655(n)+A001107(n)`
-/

namespace A164754.P9565803203059061323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 n + A001107 n

end

end A164754.P9565803203059061323

namespace A164754

/-- `A133655(n)+A001107(n)` -/
def P9565803203059061323.Spec : Prop :=
  ∀ n, P9565803203059061323.a n = A164754 (n + 2)

end A164754

/-! ## A164754.P15937085187210686886

`A131098(n+1)+A007742(n)`
-/

namespace A164754.P15937085187210686886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 1) + A007742 n

end

end A164754.P15937085187210686886

namespace A164754

/-- `A131098(n+1)+A007742(n)` -/
def P15937085187210686886.Spec : Prop :=
  ∀ n, P15937085187210686886.a n = A164754 (n + 2)

end A164754

/-! ## A164754.P11835320821353972307

`A130824(n)+A054567(n+1)`
-/

namespace A164754.P11835320821353972307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A054567 (n + 1)

end

end A164754.P11835320821353972307

namespace A164754

/-- `A130824(n)+A054567(n+1)` -/
def P11835320821353972307.Spec : Prop :=
  ∀ n, P11835320821353972307.a n = A164754 (n + 2)

end A164754

/-! ## A164754.P9617884157186110567

`A187297(n+1)+A016777(n)`
-/

namespace A164754.P9617884157186110567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187297 (n + 1) + A016777 n

end

end A164754.P9617884157186110567

namespace A164754

/-- `A187297(n+1)+A016777(n)` -/
def P9617884157186110567.Spec : Prop :=
  ∀ n, P9617884157186110567.a n = A164754 (n + 2)

end A164754

/-! ## A164754.P6598120803086298327

`A183905(n+1)+A022265(n)`
-/

namespace A164754.P6598120803086298327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183905 (n + 1) + A022265 n

end

end A164754.P6598120803086298327

namespace A164754

/-- `A183905(n+1)+A022265(n)` -/
def P6598120803086298327.Spec : Prop :=
  ∀ n, P6598120803086298327.a n = A164754 (n + 2)

end A164754

/-!
# A164764: G.f. satisfies: the coefficient of x^n in A(x)^n = 2^(n^2) for n>=1 with A(0)=1.

The programs for A164764, there is no canonical definition to state claims against.
-/

/-! ## A164764.P17413745905439578560

`A055471(A007134(n+1)+n)`
-/

namespace A164764.P17413745905439578560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (A007134 (n + 1) + (n : ℤ)).toNat

end

end A164764.P17413745905439578560

/-!
# A164765: Partial sums of [A080782^2].

The programs for A164765, the canonical program `A164765.P1820550728272305609` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164765 has offset 1).

The definition of A164765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164765.P1820550728272305609

`∑[((n+1)%3+n)²]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164765

/-- `∑[((n+1)%3+n)²]` -/
def P1820550728272305609.Spec : Prop :=
  ∀ n, (P1820550728272305609.a n : ℤ) = A164765 (n + 1)

theorem P1820550728272305609.correct : P1820550728272305609.Spec := by
  intro n
  simp only [A164765, Nat.add_sub_cancel]

end A164765

/-! ## A164765.P11729116643944592293

`∑[∑[floor(a(n-3))]²]` with `a(0)=1, a(1)=2, a(2)=-1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A164765.P11729116643944592293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -1, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164765.P11729116643944592293

namespace A164765

/-- `∑[∑[floor(a(n-3))]²]` -/
def P11729116643944592293.Spec : Prop :=
  ∀ n, P11729116643944592293.a n = A164765 (n + 1)

end A164765

/-! ## A164765.P10104887173101686906

`∑[(A064429(n)+1)²]`
-/

namespace A164765.P10104887173101686906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064429 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164765.P10104887173101686906

namespace A164765

/-- `∑[(A064429(n)+1)²]` -/
def P10104887173101686906.Spec : Prop :=
  ∀ n, P10104887173101686906.a n = A164765 (n + 1)

end A164765

/-! ## A164765.P6871246535931978600

`∑[A080782(n+1)²]`
-/

namespace A164765.P6871246535931978600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164765.P6871246535931978600

namespace A164765

/-- `∑[A080782(n+1)²]` -/
def P6871246535931978600.Spec : Prop :=
  ∀ n, P6871246535931978600.a n = A164765 (n + 1)

end A164765

/-! ## A164765.P12480263838519289408

`∑[∑[A143098(n+1)]²]`
-/

namespace A164765.P12480263838519289408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143098 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164765.P12480263838519289408

namespace A164765

/-- `∑[∑[A143098(n+1)]²]` -/
def P12480263838519289408.Spec : Prop :=
  ∀ n, P12480263838519289408.a n = A164765 (n + 1)

end A164765

/-! ## A164765.P9187317995283195625

`∑[n²]+A092200(n)²`
-/

namespace A164765.P9187317995283195625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A092200 n ^ 2

end

end A164765.P9187317995283195625

namespace A164765

/-- `∑[n²]+A092200(n)²` -/
def P9187317995283195625.Spec : Prop :=
  ∀ n, P9187317995283195625.a n = A164765 (n + 1)

end A164765

/-! ## A164765.P7855781008611401909

`∑[(A102283(n)+1+n)²]`
-/

namespace A164765.P7855781008611401909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102283 n + 1 + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164765.P7855781008611401909

namespace A164765

/-- `∑[(A102283(n)+1+n)²]` -/
def P7855781008611401909.Spec : Prop :=
  ∀ n, P7855781008611401909.a n = A164765 (n + 1)

end A164765

/-! ## A164765.P3573298017451506570

`∑[(∑[A061347(n+1)]+n)²]`
-/

namespace A164765.P3573298017451506570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164765.P3573298017451506570

namespace A164765

/-- `∑[(∑[A061347(n+1)]+n)²]` -/
def P3573298017451506570.Spec : Prop :=
  ∀ n, P3573298017451506570.a n = A164765 (n + 1)

end A164765

/-! ## A164765.P2917673339558895704

`∑[(n+1-A057078(n+1))²]`
-/

namespace A164765.P2917673339558895704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A057078 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164765.P2917673339558895704

namespace A164765

/-- `∑[(n+1-A057078(n+1))²]` -/
def P2917673339558895704.Spec : Prop :=
  ∀ n, P2917673339558895704.a n = A164765 (n + 1)

end A164765

/-! ## A164765.P12686079398006260886

`∑[(n-A016777(A004396(n)))²]`
-/

namespace A164765.P12686079398006260886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A016777 (A004396 n).toNat) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164765.P12686079398006260886

namespace A164765

/-- `∑[(n-A016777(A004396(n)))²]` -/
def P12686079398006260886.Spec : Prop :=
  ∀ n, P12686079398006260886.a n = A164765 (n + 1)

end A164765

/-! ## A164765.P18346070598516004743

`∑[(A010872(n+1)+n)²]`
-/

namespace A164765.P18346070598516004743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010872 (n + 1) + (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164765.P18346070598516004743

namespace A164765

/-- `∑[(A010872(n+1)+n)²]` -/
def P18346070598516004743.Spec : Prop :=
  ∀ n, P18346070598516004743.a n = A164765 (n + 1)

end A164765

/-! ## A164765.P16822558146661533768

`A000330(n)+A130481(n+1)²`
-/

namespace A164765.P16822558146661533768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + A130481 (n + 1) ^ 2

end

end A164765.P16822558146661533768

namespace A164765

/-- `A000330(n)+A130481(n+1)²` -/
def P16822558146661533768.Spec : Prop :=
  ∀ n, P16822558146661533768.a n = A164765 (n + 1)

end A164765

/-! ## A164765.P9974331528232338020

`∑[∑[A131290(2*n)]²]`
-/

namespace A164765.P9974331528232338020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131290 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164765.P9974331528232338020

namespace A164765

/-- `∑[∑[A131290(2*n)]²]` -/
def P9974331528232338020.Spec : Prop :=
  ∀ n, P9974331528232338020.a n = A164765 (n + 1)

end A164765

/-!
# A164766: Smallest number m such that exactly n odd numbers can be seen as proper subsequences of m in decimal representation.

The programs for A164766, there is no canonical definition to state claims against.
-/

/-! ## A164766.P6192521219506747284

`A090499(∑[A056940(2*(n+1))])`
-/

namespace A164766.P6192521219506747284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090499 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164766.P6192521219506747284

/-!
# A164767: Primes obtained from other primes by taking the factorial of each digit and adding them up.

The programs for A164767, there is no canonical definition to state claims against.
-/

/-! ## A164767.P1007206843476570426

`A061602(A084405(n+2))`
-/

namespace A164767.P1007206843476570426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 (A084405 (n + 2)).toNat

end

end A164767.P1007206843476570426

/-! ## A164767.P5774512350671926192

`p?[∑{digits}[p?[2*n+1], #!]]`
-/

namespace A164767.P5774512350671926192
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A164767.P5774512350671926192

/-! ## A164767.P6477291157456925252

`p?[A061602(p?[2*n+1])]`
-/

namespace A164767.P6477291157456925252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164767.P6477291157456925252

/-! ## A164767.P4295265977919037766

`p?[∑{digits}[A000040(n+2), #!]]`
-/

namespace A164767.P4295265977919037766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => Nat.factorial x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A164767.P4295265977919037766

/-! ## A164767.P5840814588097268369

`p?[A061602(A065091(n+1))]`
-/

namespace A164767.P5840814588097268369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 (A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164767.P5840814588097268369

/-!
# A164768: First differences of A003592.

The programs for A164768, there is no canonical definition to state claims against.
-/

/-! ## A164768.P12184298153436095486

`A003592(n+2)-A003592(n+1)`
-/

namespace A164768.P12184298153436095486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 2) - A003592 (n + 1)

end

end A164768.P12184298153436095486

/-! ## A164768.P4972147270980357069

`Δ[A003592(n+1)]`
-/

namespace A164768.P4972147270980357069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164768.P4972147270980357069

/-! ## A164768.P2193945864827044440

`Δ[A158911(n+1)]`
-/

namespace A164768.P2193945864827044440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164768.P2193945864827044440

/-! ## A164768.P3276029894953259084

`Δ[A086761(n+1)/5]`
-/

namespace A164768.P3276029894953259084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086761 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164768.P3276029894953259084

/-! ## A164768.P17743828821605247991

`Δ[A033846(n+1)/10]`
-/

namespace A164768.P17743828821605247991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033846 (n + 1) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164768.P17743828821605247991

/-! ## A164768.P2439578160926742280

`A158911(n+2)-A158911(n+1)`
-/

namespace A164768.P2439578160926742280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158911 (n + 2) - A158911 (n + 1)

end

end A164768.P2439578160926742280

/-! ## A164768.P14801001126074429374

`Δ[eq[1, A077196(n+1)]]`
-/

namespace A164768.P14801001126074429374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A164768.P14801001126074429374

/-!
# A164770: Numbers k with the property that the average digit of k^2 is 2.

The programs for A164770, there is no canonical definition to state claims against.
-/

/-! ## A164770.P17458966155770152333

`sqrt(A316482(n+1))`
-/

namespace A164770.P17458966155770152333
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A316482 (n + 1) : ℝ)

end

end A164770.P17458966155770152333

/-! ## A164770.P6205721608843661328

`root(A316482(n+1), 2%A016898(n))`
-/

namespace A164770.P6205721608843661328
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316482 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A016898 n) : ℝ))

end

end A164770.P6205721608843661328

/-! ## A164770.P18194795816424842428

`root(A316482(n+1), 2)%A316487(n+1)`
-/

namespace A164770.P18194795816424842428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A316482 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A316487 (n + 1))

end

end A164770.P18194795816424842428

/-! ## A164770.P6735180252062791053

`root(A316482(n+1), A133265(A133265(n)))`
-/

namespace A164770.P6735180252062791053
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316482 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A164770.P6735180252062791053

/-! ## A164770.P5922844502481847147

`A000027(root(A316482(n+1), 2))`
-/

namespace A164770.P5922844502481847147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A316482 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A164770.P5922844502481847147

/-! ## A164770.P17482117360492792402

`∑{e}[A001248(n+1), root(A316482(n+1), #)]`
-/

namespace A164770.P17482117360492792402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A316482 (n + 1) : ℝ) ^ (1 / (Nat.factorization (f1 n).natAbs p : ℝ))

end

end A164770.P17482117360492792402

/-!
# A164771: Numbers k such that the average digit of k^2 is 1.

The programs for A164771, there is no canonical definition to state claims against.
-/

/-! ## A164771.P4217227199915473518

`sqrt(A316481(n+1))`
-/

namespace A164771.P4217227199915473518
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A316481 (n + 1) : ℝ)

end

end A164771.P4217227199915473518

/-! ## A164771.P13886232822650670507

`root(A316481(n+1), ratio[A000079(n)])`
-/

namespace A164771.P13886232822650670507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316481 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A164771.P13886232822650670507

/-! ## A164771.P17263736716749251499

`root(A316481(n+1), 2)*A007318(∑[n])`
-/

namespace A164771.P17263736716749251499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316481 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A164771.P17263736716749251499

/-! ## A164771.P7750535779037250639

`root(A316481(n+1), p?[A182145(n+1)])`
-/

namespace A164771.P7750535779037250639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182145 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316481 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A164771.P7750535779037250639

/-! ## A164771.P2156987123630458039

`root(A316481(n+1), A000032(C(2, n+2)))`
-/

namespace A164771.P2156987123630458039
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316481 (n + 1) : ℝ) ^ (1 / (A000032 (Nat.choose 2 (n + 2)) : ℝ))

end

end A164771.P2156987123630458039

/-!
# A164773: Numbers k with property that average digit of k^2 is s=7.

The programs for A164773, there is no canonical definition to state claims against.
-/

/-! ## A164773.P5039717265100098976

`sqrt(A316487(n+1))`
-/

namespace A164773.P5039717265100098976
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A316487 (n + 1) : ℝ)

end

end A164773.P5039717265100098976

/-! ## A164773.P1281373050149488291

`root(A316487(n+1), 2%A016898(n))`
-/

namespace A164773.P1281373050149488291
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316487 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A016898 n) : ℝ))

end

end A164773.P1281373050149488291

/-! ## A164773.P9460097911814994026

`root(A316487(n+1), 2)*char[A309991(n)]`
-/

namespace A164773.P9460097911814994026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309991 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316487 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)

end

end A164773.P9460097911814994026

/-! ## A164773.P1744780113677308524

`root(A316487(n+1), 2)%A316482(n+1)`
-/

namespace A164773.P1744780113677308524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A316487 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A316482 (n + 1))

end

end A164773.P1744780113677308524

/-! ## A164773.P6789428774281800840

`A278225(n)%2+root(A316487(n+1), 2)`
-/

namespace A164773.P6789428774281800840
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A278225 n) 2 : ℝ) + (A316487 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A164773.P6789428774281800840

/-! ## A164773.P6271633073139422852

`root(A316487(n+1), 2)*gcd(7, A017017(n))`
-/

namespace A164773.P6271633073139422852
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316487 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (Int.gcd 7 (A017017 n) : ℝ)

end

end A164773.P6271633073139422852

/-! ## A164773.P15071993207902674065

`root(A316487(n+1), A133265(A133265(n)))`
-/

namespace A164773.P15071993207902674065
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316487 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A164773.P15071993207902674065

/-! ## A164773.P10719749597216804336

`A000027(root(A316487(n+1), 2))`
-/

namespace A164773.P10719749597216804336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A316487 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A164773.P10719749597216804336

/-! ## A164773.P10159246946325366447

`∑{e}[A001248(n+1), root(A316487(n+1), #)]`
-/

namespace A164773.P10159246946325366447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A316487 (n + 1) : ℝ) ^ (1 / (Nat.factorization (f1 n).natAbs p : ℝ))

end

end A164773.P10159246946325366447

/-! ## A164773.P11081085197483810569

`A316487(n+1)^(A007318(A000217(n))/2)`
-/

namespace A164773.P11081085197483810569
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316487 (n + 1) : ℝ) ^ ((A007318 (A000217 n).toNat : ℚ) / 2 : ℝ)

end

end A164773.P11081085197483810569

/-!
# A164774: Numbers k with property that average digit of k^2 is s=5.

The programs for A164774, there is no canonical definition to state claims against.
-/

/-! ## A164774.P16423577700051073229

`sqrt(A316485(n+1))`
-/

namespace A164774.P16423577700051073229
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A316485 (n + 1) : ℝ)

end

end A164774.P16423577700051073229

/-! ## A164774.P14552376601089873533

`root(A316485(n+1), 2)*(A007318(n)%2)!`
-/

namespace A164774.P14552376601089873533
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316485 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (Nat.factorial (Int.tmod (A007318 n) 2).toNat : ℝ)

end

end A164774.P14552376601089873533

/-! ## A164774.P9560213579125835758

`root(A316485(n+1), 2)%A000032(n+14)`
-/

namespace A164774.P9560213579125835758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A316485 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000032 (n + 14))

end

end A164774.P9560213579125835758

/-! ## A164774.P5800347174272354117

`root(A316485(n+1), ratio[A000079(n)])`
-/

namespace A164774.P5800347174272354117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316485 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A164774.P5800347174272354117

/-! ## A164774.P14416302317560679992

`root(A316485(n+1), 2)*A007318(∑[n])`
-/

namespace A164774.P14416302317560679992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316485 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A164774.P14416302317560679992

/-!
# A164775: a(n) is the number of positive integers <= 10^n that can be expressed as a sum of two squares.

The programs for A164775, there is no canonical definition to state claims against.
-/

/-! ## A164775.P6509961693712511100

`A180416(n+1)+ceil(sqrt(10^(n+1)))`
-/

namespace A164775.P6509961693712511100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180416 (n + 1) + ⌈Real.sqrt (10 ^ (n + 1) : ℝ)⌉

end

end A164775.P6509961693712511100

/-! ## A164775.P340193154017818151

`∑[A180426(n+1)+A062940(n+1)]`
-/

namespace A164775.P340193154017818151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180426 (n + 1) + A062940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164775.P340193154017818151

/-! ## A164775.P12267607341217079690

`A017936(n+2)+∑[A180426(n+1)]`
-/

namespace A164775.P12267607341217079690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164775.P12267607341217079690

/-! ## A164775.P3055700529355524632

`A049416(n+1)+A180416(n+1)+1`
-/

namespace A164775.P3055700529355524632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049416 (n + 1) + (A180416 (n + 1) + 1)

end

end A164775.P3055700529355524632

/-!
# A164776: Numbers k with property that average digit of k^2 is s=4.

The programs for A164776, there is no canonical definition to state claims against.
-/

/-! ## A164776.P8219491113296298861

`sqrt(A316484(n+1))`
-/

namespace A164776.P8219491113296298861
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A316484 (n + 1) : ℝ)

end

end A164776.P8219491113296298861

/-! ## A164776.P12708137317349851298

`∑{d}[root(A316484(n+1), 2), A000010(#)]`
-/

namespace A164776.P12708137317349851298
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316484 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A164776.P12708137317349851298

/-! ## A164776.P16524815209043290267

`root(A316484(n+1), ratio[A000079(n)])`
-/

namespace A164776.P16524815209043290267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316484 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A164776.P16524815209043290267

/-! ## A164776.P12198920018155544950

`∏{d}[root(A316484(n+1), 2), A014963(#)]`
-/

namespace A164776.P12198920018155544950
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316484 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A014963 d

end

end A164776.P12198920018155544950

/-! ## A164776.P15896558450264050025

`root(A316484(n+1), 2)*A007318(∑[n])`
-/

namespace A164776.P15896558450264050025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316484 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A164776.P15896558450264050025

/-!
# A164778: Numbers n with property that average digit of n^2 is s=6.

The programs for A164778, there is no canonical definition to state claims against.
-/

/-! ## A164778.P4434961634479020782

`sqrt(A316486(n+1))`
-/

namespace A164778.P4434961634479020782
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A316486 (n + 1) : ℝ)

end

end A164778.P4434961634479020782

/-! ## A164778.P1316042895072352715

`root(A316486(n+1), 2%A016898(n))`
-/

namespace A164778.P1316042895072352715
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316486 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A016898 n) : ℝ))

end

end A164778.P1316042895072352715

/-! ## A164778.P12400224669948691378

`root(A316486(n+1), A020639(2*(2*n+1)))`
-/

namespace A164778.P12400224669948691378
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316486 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (2 * n + 1)) : ℝ))

end

end A164778.P12400224669948691378

/-! ## A164778.P9246045781232555899

`root(A316486(n+1), A001316(A001316(n)))`
-/

namespace A164778.P9246045781232555899
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316486 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A164778.P9246045781232555899

/-! ## A164778.P13877719854925789110

`root(A316486(n+1), A133265(A133265(n)))`
-/

namespace A164778.P13877719854925789110
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316486 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A164778.P13877719854925789110

/-! ## A164778.P6212746273073134686

`root(A316486(n+1), ratio[A000079(n)])`
-/

namespace A164778.P6212746273073134686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316486 (n + 1) : ℝ) ^ (1 / ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ))

end

end A164778.P6212746273073134686

/-! ## A164778.P15552596983976451283

`∑{e}[A001248(n+1), root(A316486(n+1), #)]`
-/

namespace A164778.P15552596983976451283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A316486 (n + 1) : ℝ) ^ (1 / (Nat.factorization (f1 n).natAbs p : ℝ))

end

end A164778.P15552596983976451283

/-!
# A164782: Numbers k with property that average digit of k^2 is 3.

The programs for A164782, there is no canonical definition to state claims against.
-/

/-! ## A164782.P7282261653181164268

`sqrt(A316483(n+1))`
-/

namespace A164782.P7282261653181164268
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A316483 (n + 1) : ℝ)

end

end A164782.P7282261653181164268

/-! ## A164782.P7069213176612317520

`A000027(root(A316483(n+1), 2))`
-/

namespace A164782.P7069213176612317520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A316483 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A164782.P7069213176612317520

/-! ## A164782.P4211619239965927929

`root(A316483(n+1), 2%A016898(n))`
-/

namespace A164782.P4211619239965927929
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316483 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A016898 n) : ℝ))

end

end A164782.P4211619239965927929

/-! ## A164782.P41671889031272182

`root(A316483(n+1), A133265(A133265(n)))`
-/

namespace A164782.P41671889031272182
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316483 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A164782.P41671889031272182

/-! ## A164782.P4069966254547485107

`A316483(n+1)^2^A008683(A006450(n+1))`
-/

namespace A164782.P4069966254547485107
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316483 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) : ℝ)

end

end A164782.P4069966254547485107

/-! ## A164782.P6591225408124076106

`∑{e}[A001248(n+1), root(A316483(n+1), #)]`
-/

namespace A164782.P6591225408124076106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A316483 (n + 1) : ℝ) ^ (1 / (Nat.factorization (f1 n).natAbs p : ℝ))

end

end A164782.P6591225408124076106

/-!
# A164783: a(n) = 7^n - 6.

The programs for A164783, the canonical program `A164783.P11609401415042404550` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164783 has offset 1).

The definition of A164783 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^(n+1)-6` (program `A164783.P11609401415042404550`, by `A164783.P11609401415042404550.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164783.P11609401415042404550

`7^(n+1)-6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164783

/-- `7^(n+1)-6` -/
def P11609401415042404550.Spec : Prop :=
  ∀ n, P11609401415042404550.a n = A164783 (n + 1)

theorem P11609401415042404550.correct : P11609401415042404550.Spec := by
  intro n
  simp only [A164783, Nat.add_sub_cancel]

end A164783

/-! ## A164783.P14169898401151932300

`∑[7*a(n-1)]` with `a(0)=1, a(1)=42`
-/

namespace A164783.P14169898401151932300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 42] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164783.P14169898401151932300

namespace A164783

/-- `∑[7*a(n-1)]` -/
def P14169898401151932300.Spec : Prop :=
  ∀ n, (P14169898401151932300.a n : ℤ) = A164783 (n + 1)

end A164783

/-! ## A164783.P17923752381931862319

`record[7^abs(1-n)-6]`
-/

namespace A164783.P17923752381931862319
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164783.P17923752381931862319

namespace A164783

/-- `record[7^abs(1-n)-6]` -/
def P17923752381931862319.Spec : Prop :=
  ∀ n, P17923752381931862319.a n = (A164783 (n + 1) : ℚ)

end A164783

/-! ## A164783.P616549561912910964

`∑[lcm(7^n, Δ[floor(7^(n-1))])]`
-/

namespace A164783.P616549561912910964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (7 ^ n : ℤ) (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164783.P616549561912910964

namespace A164783

/-- `∑[lcm(7^n, Δ[floor(7^(n-1))])]` -/
def P616549561912910964.Spec : Prop :=
  ∀ n, (P616549561912910964.a n : ℤ) = A164783 (n + 1)

end A164783

/-! ## A164783.P15376058054373072404

`abs(6-A000420(n+1))`
-/

namespace A164783.P15376058054373072404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - A000420 (n + 1)|

end

end A164783.P15376058054373072404

namespace A164783

/-- `abs(6-A000420(n+1))` -/
def P15376058054373072404.Spec : Prop :=
  ∀ n, P15376058054373072404.a n = A164783 (n + 1)

end A164783

/-! ## A164783.P4144892277822075188

`abs(5-∑[A055272(n+1)])`
-/

namespace A164783.P4144892277822075188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A164783.P4144892277822075188

namespace A164783

/-- `abs(5-∑[A055272(n+1)])` -/
def P4144892277822075188.Spec : Prop :=
  ∀ n, P4144892277822075188.a n = A164783 (n + 1)

end A164783

/-! ## A164783.P7159104319035694515

`Δ[∑[A000420(n)]-6*n]`
-/

namespace A164783.P7159104319035694515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (6 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164783.P7159104319035694515

namespace A164783

/-- `Δ[∑[A000420(n)]-6*n]` -/
def P7159104319035694515.Spec : Prop :=
  ∀ n, P7159104319035694515.a n = A164783 (n + 1)

end A164783

/-! ## A164783.P10140563038282572872

`∑[a(A000038(n))*Δ[7^n]]` with `a(0)=1`
-/

namespace A164783.P10140563038282572872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A000038 n).toNat * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164783.P10140563038282572872

namespace A164783

/-- `∑[a(A000038(n))*Δ[7^n]]` -/
def P10140563038282572872.Spec : Prop :=
  ∀ n, P10140563038282572872.a n = A164783 (n + 1)

end A164783

/-! ## A164783.P7785889958491821524

`Δ[A023000(n+1)-A016921(n)]`
-/

namespace A164783.P7785889958491821524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 (n + 1) - A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164783.P7785889958491821524

namespace A164783

/-- `Δ[A023000(n+1)-A016921(n)]` -/
def P7785889958491821524.Spec : Prop :=
  ∀ n, P7785889958491821524.a n = A164783 (n + 1)

end A164783

/-! ## A164783.P6257532452263222210

`Δ[∑[A000420(n)]+2-A016957(n)]`
-/

namespace A164783.P6257532452263222210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 - A016957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164783.P6257532452263222210

namespace A164783

/-- `Δ[∑[A000420(n)]+2-A016957(n)]` -/
def P6257532452263222210.Spec : Prop :=
  ∀ n, P6257532452263222210.a n = A164783 (n + 1)

end A164783

/-! ## A164783.P6674978487369201844

`∑[7^n*A002445(gcd(n, A020500(n+1)))]`
-/

namespace A164783.P6674978487369201844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A002445 (Int.gcd (n : ℤ) (A020500 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164783.P6674978487369201844

namespace A164783

/-- `∑[7^n*A002445(gcd(n, A020500(n+1)))]` -/
def P6674978487369201844.Spec : Prop :=
  ∀ n, P6674978487369201844.a n = A164783 (n + 1)

end A164783

/-! ## A164783.P248165051768539669

`A199487(n+1)%A199485(n)`
-/

namespace A164783.P248165051768539669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199487 (n + 1)) (A199485 n)

end

end A164783.P248165051768539669

namespace A164783

/-- `A199487(n+1)%A199485(n)` -/
def P248165051768539669.Spec : Prop :=
  ∀ n, P248165051768539669.a n = A164783 (n + 1)

end A164783

/-!
# A164784: a(n) = 6^n-5.

The programs for A164784, the canonical program `A164784.P7207783566350058825` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164784 has offset 1).

The definition of A164784 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^(n+1)-5` (program `A164784.P7207783566350058825`, by `A164784.P7207783566350058825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164784.P7207783566350058825

`6^(n+1)-5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164784

/-- `6^(n+1)-5` -/
def P7207783566350058825.Spec : Prop :=
  ∀ n, P7207783566350058825.a n = A164784 (n + 1)

theorem P7207783566350058825.correct : P7207783566350058825.Spec := by
  intro n
  simp only [A164784, Nat.add_sub_cancel]

end A164784

/-! ## A164784.P14475499369657035011

`ogf((1+24x)/(1-7x+6x^2))`
-/

namespace A164784.P14475499369657035011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 24] [1, -7, 6] n

end

end A164784.P14475499369657035011

namespace A164784

/-- `ogf((1+24x)/(1-7x+6x^2))` -/
def P14475499369657035011.Spec : Prop :=
  ∀ n, P14475499369657035011.a n = A164784 (n + 1)

end A164784

/-! ## A164784.P7507983275872208865

`∑[6*a(n-1)]` with `a(0)=1, a(1)=30`
-/

namespace A164784.P7507983275872208865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 30] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164784.P7507983275872208865

namespace A164784

/-- `∑[6*a(n-1)]` -/
def P7507983275872208865.Spec : Prop :=
  ∀ n, (P7507983275872208865.a n : ℤ) = A164784 (n + 1)

end A164784

/-! ## A164784.P10715985034460797047

`record[6^abs(1-n)-5]`
-/

namespace A164784.P10715985034460797047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164784.P10715985034460797047

namespace A164784

/-- `record[6^abs(1-n)-5]` -/
def P10715985034460797047.Spec : Prop :=
  ∀ n, P10715985034460797047.a n = (A164784 (n + 1) : ℚ)

end A164784

/-! ## A164784.P16536118722904391917

`or(1, A178672(n+1))`
-/

namespace A164784.P16536118722904391917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A178672 (n + 1))

end

end A164784.P16536118722904391917

namespace A164784

/-- `or(1, A178672(n+1))` -/
def P16536118722904391917.Spec : Prop :=
  ∀ n, P16536118722904391917.a n = A164784 (n + 1)

end A164784

/-! ## A164784.P3927510882132702312

`abs(5-A000400(n+1))`
-/

namespace A164784.P3927510882132702312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A000400 (n + 1)|

end

end A164784.P3927510882132702312

namespace A164784

/-- `abs(5-A000400(n+1))` -/
def P3927510882132702312.Spec : Prop :=
  ∀ n, P3927510882132702312.a n = A164784 (n + 1)

end A164784

/-! ## A164784.P16285923893869483114

`abs(6-A062394(n+1))`
-/

namespace A164784.P16285923893869483114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - A062394 (n + 1)|

end

end A164784.P16285923893869483114

namespace A164784

/-- `abs(6-A062394(n+1))` -/
def P16285923893869483114.Spec : Prop :=
  ∀ n, P16285923893869483114.a n = A164784 (n + 1)

end A164784

/-! ## A164784.P6023604116563563265

`abs(5-A026549(2*(n+1)))`
-/

namespace A164784.P6023604116563563265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A026549 (2 * (n + 1))|

end

end A164784.P6023604116563563265

namespace A164784

/-- `abs(5-A026549(2*(n+1)))` -/
def P6023604116563563265.Spec : Prop :=
  ∀ n, P6023604116563563265.a n = A164784 (n + 1)

end A164784

/-! ## A164784.P15402054980650873417

`∑[6^n*(5-C(4, A001844(n)))]`
-/

namespace A164784.P15402054980650873417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * (5 - (Nat.choose 4 (A001844 n).toNat : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164784.P15402054980650873417

namespace A164784

/-- `∑[6^n*(5-C(4, A001844(n)))]` -/
def P15402054980650873417.Spec : Prop :=
  ∀ n, P15402054980650873417.a n = A164784 (n + 1)

end A164784

/-! ## A164784.P6694762247546209000

`∑[lcm(A000400(n), A052934(n))]`
-/

namespace A164784.P6694762247546209000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000400 n) (A052934 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164784.P6694762247546209000

namespace A164784

/-- `∑[lcm(A000400(n), A052934(n))]` -/
def P6694762247546209000.Spec : Prop :=
  ∀ n, (P6694762247546209000.a n : ℤ) = A164784 (n + 1)

end A164784

/-! ## A164784.P16557211822151420450

`∑[(5*6^n)^A048766(A048766(n))]`
-/

namespace A164784.P16557211822151420450
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 6 ^ n : ℚ) ^ (A048766 (A048766 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164784.P16557211822151420450

namespace A164784

/-- `∑[(5*6^n)^A048766(A048766(n))]` -/
def P16557211822151420450.Spec : Prop :=
  ∀ n, P16557211822151420450.a n = (A164784 (n + 1) : ℚ)

end A164784

/-! ## A164784.P795291867899326964

`∑[6^n*A001844(A243978(C(2, n²)))]`
-/

namespace A164784.P795291867899326964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A001844 (A243978 (Nat.choose 2 (n ^ 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164784.P795291867899326964

namespace A164784

/-- `∑[6^n*A001844(A243978(C(2, n²)))]` -/
def P795291867899326964.Spec : Prop :=
  ∀ n, P795291867899326964.a n = A164784 (n + 1)

end A164784

/-! ## A164784.P2031583246690469400

`abs(5-6*A013613(A000096(n)))`
-/

namespace A164784.P2031583246690469400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - 6 * A013613 (A000096 n).toNat|

end

end A164784.P2031583246690469400

namespace A164784

/-- `abs(5-6*A013613(A000096(n)))` -/
def P2031583246690469400.Spec : Prop :=
  ∀ n, P2031583246690469400.a n = A164784 (n + 1)

end A164784

/-! ## A164784.P7088649204050660745

`abs(5-A013613(A000096(n+1)))`
-/

namespace A164784.P7088649204050660745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - A013613 (A000096 (n + 1)).toNat|

end

end A164784.P7088649204050660745

namespace A164784

/-- `abs(5-A013613(A000096(n+1)))` -/
def P7088649204050660745.Spec : Prop :=
  ∀ n, P7088649204050660745.a n = A164784 (n + 1)

end A164784

/-!
# A164785: a(n) = 5^n - 4.

The programs for A164785, the canonical program `A164785.P17587648812554454758` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164785 has offset 1).

The definition of A164785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^(n+1)-4` (program `A164785.P17587648812554454758`, by `A164785.P17587648812554454758.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164785.P17587648812554454758

`5^(n+1)-4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164785

/-- `5^(n+1)-4` -/
def P17587648812554454758.Spec : Prop :=
  ∀ n, P17587648812554454758.a n = A164785 (n + 1)

theorem P17587648812554454758.correct : P17587648812554454758.Spec := by
  intro n
  simp only [A164785, Nat.add_sub_cancel]

end A164785

/-! ## A164785.P17731457369142837300

`ogf((1+15x)/(1-6x+5x^2))`
-/

namespace A164785.P17731457369142837300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 15] [1, -6, 5] n

end

end A164785.P17731457369142837300

namespace A164785

/-- `ogf((1+15x)/(1-6x+5x^2))` -/
def P17731457369142837300.Spec : Prop :=
  ∀ n, P17731457369142837300.a n = A164785 (n + 1)

end A164785

/-! ## A164785.P3572575375185239099

`xor(1, 5*(5^n-1))`
-/

namespace A164785.P3572575375185239099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (5 * ((5 ^ n : ℤ) - 1))

end

end A164785.P3572575375185239099

namespace A164785

/-- `xor(1, 5*(5^n-1))` -/
def P3572575375185239099.Spec : Prop :=
  ∀ n, P3572575375185239099.a n = A164785 (n + 1)

end A164785

/-! ## A164785.P13095164912184535571

`∑[5*a(n-1)]` with `a(0)=1, a(1)=20`
-/

namespace A164785.P13095164912184535571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164785.P13095164912184535571

namespace A164785

/-- `∑[5*a(n-1)]` -/
def P13095164912184535571.Spec : Prop :=
  ∀ n, (P13095164912184535571.a n : ℤ) = A164785 (n + 1)

end A164785

/-! ## A164785.P5290391915810751511

`record[5^abs(1-n)-4]`
-/

namespace A164785.P5290391915810751511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164785.P5290391915810751511

namespace A164785

/-- `record[5^abs(1-n)-4]` -/
def P5290391915810751511.Spec : Prop :=
  ∀ n, P5290391915810751511.a n = (A164785 (n + 1) : ℚ)

end A164785

/-! ## A164785.P8455218305352970165

`∑[5^n*4%(3*(n+1))]`
-/

namespace A164785.P8455218305352970165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n * (4 % (3 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164785.P8455218305352970165

namespace A164785

/-- `∑[5^n*4%(3*(n+1))]` -/
def P8455218305352970165.Spec : Prop :=
  ∀ n, (P8455218305352970165.a n : ℤ) = A164785 (n + 1)

end A164785

/-! ## A164785.P15689329302968480366

`5*(4-(4/5-a(n-1)))` with `a(0)=1`
-/

namespace A164785.P15689329302968480366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * (4 - ((4 : ℚ) / 5 - a (n - 1)))

end

end A164785.P15689329302968480366

namespace A164785

/-- `5*(4-(4/5-a(n-1)))` -/
def P15689329302968480366.Spec : Prop :=
  ∀ n, P15689329302968480366.a n = (A164785 (n + 1) : ℚ)

theorem P15689329302968480366.correct : P15689329302968480366.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A164785, Nat.add_sub_cancel, A164785.P15689329302968480366.a, A164785.P17587648812554454758.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A164785, Nat.add_sub_cancel, A164785.P15689329302968480366.a, A164785.P17587648812554454758.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A164785

/-! ## A164785.P12873687871700982410

`or(1, A178671(n+1))`
-/

namespace A164785.P12873687871700982410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A178671 (n + 1))

end

end A164785.P12873687871700982410

namespace A164785

/-- `or(1, A178671(n+1))` -/
def P12873687871700982410.Spec : Prop :=
  ∀ n, P12873687871700982410.a n = A164785 (n + 1)

end A164785

/-! ## A164785.P15261263645433312153

`abs(4-A000351(n+1))`
-/

namespace A164785.P15261263645433312153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A000351 (n + 1)|

end

end A164785.P15261263645433312153

namespace A164785

/-- `abs(4-A000351(n+1))` -/
def P15261263645433312153.Spec : Prop :=
  ∀ n, P15261263645433312153.a n = A164785 (n + 1)

end A164785

/-! ## A164785.P12990047987966305478

`(A064385(n+1)-5)/2`
-/

namespace A164785.P12990047987966305478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064385 (n + 1) - 5 : ℚ) / 2

end

end A164785.P12990047987966305478

namespace A164785

/-- `(A064385(n+1)-5)/2` -/
def P12990047987966305478.Spec : Prop :=
  ∀ n, P12990047987966305478.a n = (A164785 (n + 1) : ℚ)

end A164785

/-! ## A164785.P5100523579853831463

`Δ[∑[5^n]-A004767(n)]`
-/

namespace A164785.P5100523579853831463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A164785.P5100523579853831463

namespace A164785

/-- `Δ[∑[5^n]-A004767(n)]` -/
def P5100523579853831463.Spec : Prop :=
  ∀ n, P5100523579853831463.a n = A164785 (n + 1)

end A164785

/-!
# A164786: a(n) = 8^n-7.

The programs for A164786, the canonical program `A164786.P1490110742875963263` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164786 has offset 1).

The definition of A164786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^(n+1)-7` (program `A164786.P1490110742875963263`, by `A164786.P1490110742875963263.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A164786.P1490110742875963263

`8^(n+1)-7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A164786

/-- `8^(n+1)-7` -/
def P1490110742875963263.Spec : Prop :=
  ∀ n, P1490110742875963263.a n = A164786 (n + 1)

theorem P1490110742875963263.correct : P1490110742875963263.Spec := by
  intro n
  simp only [A164786, Nat.add_sub_cancel]

end A164786

/-! ## A164786.P20417230816645960

`xor(6, ∑[7*8^n])`
-/

namespace A164786.P20417230816645960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * 8 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A164786.P20417230816645960

namespace A164786

/-- `xor(6, ∑[7*8^n])` -/
def P20417230816645960.Spec : Prop :=
  ∀ n, (P20417230816645960.a n : ℤ) = A164786 (n + 1)

end A164786

/-! ## A164786.P6068883609231781097

`∑[8*a(n-1)]` with `a(0)=1, a(1)=56`
-/

namespace A164786.P6068883609231781097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 56] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164786.P6068883609231781097

namespace A164786

/-- `∑[8*a(n-1)]` -/
def P6068883609231781097.Spec : Prop :=
  ∀ n, (P6068883609231781097.a n : ℤ) = A164786 (n + 1)

end A164786

/-! ## A164786.P814001816572664549

`abs(or(7, -8^(n+1)))`
-/

namespace A164786.P814001816572664549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 7 (-(8 ^ (n + 1) : ℤ))|

end

end A164786.P814001816572664549

namespace A164786

/-- `abs(or(7, -8^(n+1)))` -/
def P814001816572664549.Spec : Prop :=
  ∀ n, P814001816572664549.a n = A164786 (n + 1)

end A164786

/-! ## A164786.P11162690155531155980

`-or(7, -8^(n+1))`
-/

namespace A164786.P11162690155531155980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 7 (-(8 ^ (n + 1) : ℤ))

end

end A164786.P11162690155531155980

namespace A164786

/-- `-or(7, -8^(n+1))` -/
def P11162690155531155980.Spec : Prop :=
  ∀ n, P11162690155531155980.a n = A164786 (n + 1)

end A164786

/-! ## A164786.P3140400868119161880

`abs(xor(7, -8^(n+1)))`
-/

namespace A164786.P3140400868119161880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 7 (-(8 ^ (n + 1) : ℤ))|

end

end A164786.P3140400868119161880

namespace A164786

/-- `abs(xor(7, -8^(n+1)))` -/
def P3140400868119161880.Spec : Prop :=
  ∀ n, P3140400868119161880.a n = A164786 (n + 1)

end A164786

/-! ## A164786.P14886673825692548516

`-xor(7, -8^(n+1))`
-/

namespace A164786.P14886673825692548516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 7 (-(8 ^ (n + 1) : ℤ))

end

end A164786.P14886673825692548516

namespace A164786

/-- `-xor(7, -8^(n+1))` -/
def P14886673825692548516.Spec : Prop :=
  ∀ n, P14886673825692548516.a n = A164786 (n + 1)

end A164786

/-! ## A164786.P8916477895619097857

`record[8^abs(1-n)-7]`
-/

namespace A164786.P8916477895619097857
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164786.P8916477895619097857

namespace A164786

/-- `record[8^abs(1-n)-7]` -/
def P8916477895619097857.Spec : Prop :=
  ∀ n, P8916477895619097857.a n = (A164786 (n + 1) : ℚ)

end A164786

/-! ## A164786.P17087270335701704996

`or(1, 8*or(7, a(n-1)))` with `a(0)=1`
-/

namespace A164786.P17087270335701704996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (8 * Nat.lor 7 (a (n - 1)))

end

end A164786.P17087270335701704996

namespace A164786

/-- `or(1, 8*or(7, a(n-1)))` -/
def P17087270335701704996.Spec : Prop :=
  ∀ n, (P17087270335701704996.a n : ℤ) = A164786 (n + 1)

end A164786

/-! ## A164786.P11423542265354454550

`A048490(3*n)`
-/

namespace A164786.P11423542265354454550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048490 (3 * n)

end

end A164786.P11423542265354454550

namespace A164786

/-- `A048490(3*n)` -/
def P11423542265354454550.Spec : Prop :=
  ∀ n, P11423542265354454550.a n = A164786 (n + 1)

end A164786

/-! ## A164786.P7779829232120070923

`abs(9-A056469(3*n+4))`
-/

namespace A164786.P7779829232120070923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |9 - A056469 (3 * n + 4)|

end

end A164786.P7779829232120070923

namespace A164786

/-- `abs(9-A056469(3*n+4))` -/
def P7779829232120070923.Spec : Prop :=
  ∀ n, P7779829232120070923.a n = A164786 (n + 1)

end A164786

/-!
# A164787: Polynomial expansion of p(x)=1/(1 - 3 x + 2 x^2 + 2 x^3 - 4 x^4 + 4 x^5 - 2 x^6 - 2 x^7 + 3 x^8 - x^9 - x^17 + 3 x^18 - 2 x^19 - 2 x^20 + 4 x^21 - 4 x^22 + 2 x^23 + 2 x^24 - 3 x^25 + x^26).

The programs for A164787, there is no canonical definition to state claims against.
-/

/-! ## A164787.P7178253621254344626

`∑[A008804(A001222(2^n))]`
-/

namespace A164787.P7178253621254344626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (A001222 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164787.P7178253621254344626

/-! ## A164787.P12384293318698314937

`A059995(∑[10*A008804(n)])`
-/

namespace A164787.P12384293318698314937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A008804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A164787.P12384293318698314937

/-! ## A164787.P5126196772618107999

`∑[A008804(n)%A337268(n)]`
-/

namespace A164787.P5126196772618107999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008804 n) (A337268 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A164787.P5126196772618107999

/-! ## A164787.P12314552228977382817

`∑[A008804(n)]%A326131(n+1)`
-/

namespace A164787.P12314552228977382817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A326131 (n + 1))

end

end A164787.P12314552228977382817

/-! ## A164787.P13397243843867585129

`∑[A008804(n)]%A123277(n)`
-/

namespace A164787.P13397243843867585129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A123277 (n + 34))

end

end A164787.P13397243843867585129

/-!
# A164788: Numbers such that the sum of the distinct prime factors is a cube.

The programs for A164788, the canonical program `A164788.P18376608569673635882` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A164788 has offset 1).

The definition of A164788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A164788.P18376608569673635882

`eq[1, A010057(A008472(n+1))]+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A164788

/-- `eq[1, A010057(A008472(n+1))]+1` -/
def P18376608569673635882.Spec : Prop :=
  ∀ n, (P18376608569673635882.a n : ℤ) = A164788 (n + 1)

theorem P18376608569673635882.correct : P18376608569673635882.Spec := by
  intro n
  simp only [A164788, Nat.add_sub_cancel]

end A164788

/-! ## A164788.P4801511756304329555

`A320634(A028387(n)+A000720(n+1))`
-/

namespace A164788.P4801511756304329555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320634 (A028387 n + A000720 (n + 1)).toNat

end

end A164788.P4801511756304329555

namespace A164788

/-- `A320634(A028387(n)+A000720(n+1))` -/
def P4801511756304329555.Spec : Prop :=
  ∀ n, P4801511756304329555.a n = A164788 (n + 1)

end A164788

/-!
# A164798: a(n) = the smallest integer >= n such that a(n)!/(n-1)! is divisible by every prime from 2 to the largest prime divisor of a(n)!/(n-1)!. (a(1)=1.)

The programs for A164798, there is no canonical definition to state claims against.
-/

/-! ## A164798.P8562078752723293061

`A164799(n+1)+n`
-/

namespace A164798.P8562078752723293061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164799 (n + 1) + (n : ℤ)

end

end A164798.P8562078752723293061

/-! ## A164798.P12490590865512262088

`gcd(A079455(n+1), A079583(n))+n`
-/

namespace A164798.P12490590865512262088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079455 (n + 1)) (A079583 n) + n

end

end A164798.P12490590865512262088

/-! ## A164798.P16701950750529811370

`gcd(A003350(A059570(n+1)), A178381(n))+n`
-/

namespace A164798.P16701950750529811370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003350 (A059570 (n + 1)).toNat) (A178381 n) + n

end

end A164798.P16701950750529811370

/-! ## A164798.P7718545292666644084

`A339399(A339399(2*(n+1))+A180185(n))+n`
-/

namespace A164798.P7718545292666644084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (A339399 (2 * (n + 1)) + A180185 n).toNat + (n : ℤ)

end

end A164798.P7718545292666644084

/-! ## A164798.P15841041145070902052

`gcd(A286003(A171966(n+3)), A349992(n+1))+n`
-/

namespace A164798.P15841041145070902052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A286003 (A171966 (n + 3)).toNat) (A349992 (n + 1)) + n

end

end A164798.P15841041145070902052

/-!
# A164799: a(n) = the smallest positive integer such that the product of a(n) consecutive integers, where n is the smallest, is divisible by every prime from 2 to the largest prime divisor of the product. (a(1)=1.)

The programs for A164799, there is no canonical definition to state claims against.
-/

/-! ## A164799.P8523551280920422034

`A164798(n+1)-n`
-/

namespace A164799.P8523551280920422034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164798 (n + 1) - (n : ℤ)

end

end A164799.P8523551280920422034

/-! ## A164799.P2632451069325851664

`abs(A164798(n+1)+A001489(n))`
-/

namespace A164799.P2632451069325851664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A164798 (n + 1) + A001489 n|

end

end A164799.P2632451069325851664

/-! ## A164799.P15641813307846248594

`A053615(A164798(n+1)+n²)`
-/

namespace A164799.P15641813307846248594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A164798 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A164799.P15641813307846248594

/-! ## A164799.P5203091940334076080

`(A164798(n+1)+4)%A020705(n)`
-/

namespace A164799.P5203091940334076080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164798 (n + 1) + 4) (A020705 n)

end

end A164799.P5203091940334076080

/-! ## A164799.P4530538232800513786

`A164798(n+1)%A195663(∑[n])+1`
-/

namespace A164799.P4530538232800513786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164798 (n + 1)) (A195663 (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A164799.P4530538232800513786

/-! ## A164799.P1660519987793667058

`A002260(A164798(n+1)+∑[n+2]+4)`
-/

namespace A164799.P1660519987793667058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A164798 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 4 : ℕ) : ℤ)).toNat

end

end A164799.P1660519987793667058

/-! ## A164799.P13425287258451552448

`A002262(A164798(n+1)+∑[n+2]+4)`
-/

namespace A164799.P13425287258451552448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A164798 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 4 : ℕ) : ℤ)).toNat

end

end A164799.P13425287258451552448

/-! ## A164799.P3113871233418084994

`A053616(A164798(n+1)+A001844(n))`
-/

namespace A164799.P3113871233418084994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A164798 (n + 1) + A001844 n).toNat

end

end A164799.P3113871233418084994

/-! ## A164799.P9739352916116311745

`A062050(A164798(n+1)+A035327(n))`
-/

namespace A164799.P9739352916116311745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A164798 (n + 1) + A035327 n).toNat

end

end A164799.P9739352916116311745

/-! ## A164799.P3870803905627668357

`A020705(A164798(n+1))%A020705(n)`
-/

namespace A164799.P3870803905627668357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020705 (A164798 (n + 1)).toNat) (A020705 n)

end

end A164799.P3870803905627668357

