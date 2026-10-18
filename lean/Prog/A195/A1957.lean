import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C007
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C003
import Seq.B004.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A195733: Number of groups of order p#, where p# is the n-th primorial.

The programs for A195733, there is no canonical definition to state claims against.
-/

/-! ## A195733.P9294780912599697713

`∑[A323169(n+1)²]!*A141452(A029010(n))`
-/

namespace A195733.P9294780912599697713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ) * A141452 (A029010 n).toNat

end

end A195733.P9294780912599697713

/-! ## A195733.P11871375404811900131

`∑{e}[A079078(n+2), #]!*A141452(A029010(n))`
-/

namespace A195733.P11871375404811900131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079078 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) : ℤ) * A141452 (A029010 n).toNat

end

end A195733.P11871375404811900131

/-! ## A195733.P3110804602655823033

`A000005(13^ceil(n/2))!*A141452(A029010(n))`
-/

namespace A195733.P3110804602655823033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000005 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat).toNat : ℤ) * A141452 (A029010 n).toNat

end

end A195733.P3110804602655823033

/-! ## A195733.P14121749648976617806

`(A001221((n%2+n)!)+1)!*A141452(A029010(n))`
-/

namespace A195733.P14121749648976617806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001221 (Nat.factorial (n % 2 + n)) + 1).toNat : ℤ) * A141452 (A029010 n).toNat

end

end A195733.P14121749648976617806

/-!
# A195734: G.f.: exp( Sum_{n>=1} (2*sigma(n^2) - sigma(n)^2) * x^n/n ).

The programs for A195734, there is no canonical definition to state claims against.
-/

/-! ## A195734.P1151908635947021343

`A055244(n)-A321728(A321728(n))`
-/

namespace A195734.P1151908635947021343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 n - A321728 (A321728 n).toNat

end

end A195734.P1151908635947021343

/-! ## A195734.P4993373154578201019

`A002024(A011782(n)*A347764(n))`
-/

namespace A195734.P4993373154578201019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A011782 n * A347764 n).toNat

end

end A195734.P4993373154578201019

/-! ## A195734.P17203761814758105574

`A003108(A022856(3*n+4)-A259447(∑[n+1]+2))`
-/

namespace A195734.P17203761814758105574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 (A022856 (3 * n + 4) - A259447 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A195734.P17203761814758105574

/-!
# A195735: a(n) = 2*sigma(n^2) - sigma(n)^2.

The programs for A195735, the canonical program `A195735.P15509653342893064472` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195735 has offset 1).

The definition of A195735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195735.P15509653342893064472

`2*A065764(n+1)-A072861(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A195735

/-- `2*A065764(n+1)-A072861(n+1)` -/
def P15509653342893064472.Spec : Prop :=
  ∀ n, P15509653342893064472.a n = A195735 (n + 1)

theorem P15509653342893064472.correct : P15509653342893064472.Spec := by
  intro n
  simp only [A195735, Nat.add_sub_cancel]

end A195735

/-! ## A195735.P9651378954213005544

`2*A065764(n+1)-A000203(n+1)²`
-/

namespace A195735.P9651378954213005544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065764 (n + 1) - A000203 (n + 1) ^ 2

end

end A195735.P9651378954213005544

namespace A195735

/-- `2*A065764(n+1)-A000203(n+1)²` -/
def P9651378954213005544.Spec : Prop :=
  ∀ n, P9651378954213005544.a n = A195735 (n + 1)

end A195735

/-! ## A195735.P17560260051859280859

`2*A000203((n+1)²)-A072861(n+1)`
-/

namespace A195735.P17560260051859280859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 ((n + 1) ^ 2) - A072861 (n + 1)

end

end A195735.P17560260051859280859

namespace A195735

/-- `2*A000203((n+1)²)-A072861(n+1)` -/
def P17560260051859280859.Spec : Prop :=
  ∀ n, P17560260051859280859.a n = A195735 (n + 1)

end A195735

/-! ## A195735.P12928850058299210295

`2*A000203((n+1)²)-A000203(n+1)²`
-/

namespace A195735.P12928850058299210295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 ((n + 1) ^ 2) - A000203 (n + 1) ^ 2

end

end A195735.P12928850058299210295

namespace A195735

/-- `2*A000203((n+1)²)-A000203(n+1)²` -/
def P12928850058299210295.Spec : Prop :=
  ∀ n, P12928850058299210295.a n = A195735 (n + 1)

end A195735

/-! ## A195735.P5618708378798851171

`A074400((n+1)²)-A000203(n+1)²`
-/

namespace A195735.P5618708378798851171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 ((n + 1) ^ 2) - A000203 (n + 1) ^ 2

end

end A195735.P5618708378798851171

namespace A195735

/-- `A074400((n+1)²)-A000203(n+1)²` -/
def P5618708378798851171.Spec : Prop :=
  ∀ n, P5618708378798851171.a n = A195735 (n + 1)

end A195735

/-!
# A195736: E.g.f.: x = Sum_{n>=1} a(n)*x^n/n! * exp(-n^2*x).

The programs for A195736, there is no canonical definition to state claims against.
-/

/-! ## A195736.P7714482074464456132

`(n+1)*A082157(n)`
-/

namespace A195736.P7714482074464456132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A082157 n

end

end A195736.P7714482074464456132

/-! ## A195736.P12257929793157241169

`A082157(n)*A348553(n)`
-/

namespace A195736.P12257929793157241169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082157 n * A348553 n

end

end A195736.P12257929793157241169

/-! ## A195736.P3166931436270952139

`A082157(n)*A131818(A000124(n))`
-/

namespace A195736.P3166931436270952139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082157 n * A131818 (A000124 n).toNat

end

end A195736.P3166931436270952139

/-! ## A195736.P16186456651955369738

`A082157(n)*A131818(A001844(n))`
-/

namespace A195736.P16186456651955369738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082157 n * A131818 (A001844 n).toNat

end

end A195736.P16186456651955369738

/-! ## A195736.P6163725979017361888

`A082157(n)*A134226(A025747(n))`
-/

namespace A195736.P6163725979017361888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082157 n * A134226 (A025747 n).toNat

end

end A195736.P6163725979017361888

/-!
# A195737: E.g.f.: x = Sum_{n>=1} a(n)*x^n/n! * exp(-n*(n+1)/2*x).

The programs for A195737, there is no canonical definition to state claims against.
-/

/-! ## A195737.P3932185637585638497

`(n+1)*A196304(n+1)`
-/

namespace A195737.P3932185637585638497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A196304 (n + 1)

end

end A195737.P3932185637585638497

/-! ## A195737.P1083692925505047173

`(n+1)*A103353(n+1)/Δ[A000051(n)]`
-/

namespace A195737.P1083692925505047173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A103353 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ))

end

end A195737.P1083692925505047173

/-! ## A195737.P12508265741909204603

`(n+1)*A103353(n+1)/A016116(2*n)`
-/

namespace A195737.P12508265741909204603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A103353 (n + 1) : ℚ) / (A016116 (2 * n) : ℚ))

end

end A195737.P12508265741909204603

/-! ## A195737.P17708057740497959942

`A103353(n+1)/A000079(n)*A348553(n)`
-/

namespace A195737.P17708057740497959942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103353 (n + 1) : ℚ) / (A000079 n : ℚ) * (A348553 n : ℚ)

end

end A195737.P17708057740497959942

/-! ## A195737.P14134589159595951200

`(n+1)*A103353(n+1)/A261642(A000124(n))`
-/

namespace A195737.P14134589159595951200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A103353 (n + 1) : ℚ) / (A261642 (A000124 n).toNat : ℚ))

end

end A195737.P14134589159595951200

/-!
# A195738: Triangle read by rows: DR(n,d) is the number of properly d-dimensional polyominoes with n cells, modulo translations and rotations (n >= 1, 0 <= d <= n-1).

The programs for A195738, there is no canonical definition to state claims against.
-/

/-! ## A195738.P10633953469947305396

`floor(ϕ*(A085852(n)+A046080(A318576(n+1))))`
-/

namespace A195738.P10633953469947305396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A085852 n + A046080 (A318576 (n + 1)).toNat : ℝ)⌋

end

end A195738.P10633953469947305396

/-! ## A195738.P7896250569450576794

`A066096(A049430(n+1))^A014963(A314826(2*n))`
-/

namespace A195738.P7896250569450576794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066096 (A049430 (n + 1)).toNat : ℚ) ^ (A014963 (A314826 (2 * n)).toNat : ℤ)

end

end A195738.P7896250569450576794

/-! ## A195738.P8380655052601059743

`A054911(A261781(n))`
-/

namespace A195738.P8380655052601059743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054911 (A261781 n).toNat

end

end A195738.P8380655052601059743

/-! ## A195738.P14527033710947408694

`A054911(A270882(n))`
-/

namespace A195738.P14527033710947408694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054911 (A270882 n).toNat

end

end A195738.P14527033710947408694

/-! ## A195738.P16294229349416813634

`A096995(A257740(n))`
-/

namespace A195738.P16294229349416813634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096995 (A257740 n).toNat

end

end A195738.P16294229349416813634

/-!
# A195739: Triangle read by rows: DX(n,d) = number of properly d-dimensional polyominoes with n cells, modulo translations (n>=1, 0 <= d <= n-1).

The programs for A195739, there is no canonical definition to state claims against.
-/

/-! ## A195739.P7090391037557754781

`and(A001844(n), A176745(A135313(n)))`
-/

namespace A195739.P7090391037557754781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A176745 (A135313 n).toNat)

end

end A195739.P7090391037557754781

/-! ## A195739.P10520378429005518235

`and(A159754(n+1), A176745(A135313(n)))`
-/

namespace A195739.P10520378429005518235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159754 (n + 1)) (A176745 (A135313 n).toNat)

end

end A195739.P10520378429005518235

/-! ## A195739.P12076690791437150102

`and(A001844(n), A059561(A053408(n+1)))`
-/

namespace A195739.P12076690791437150102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A059561 (A053408 (n + 1)).toNat)

end

end A195739.P12076690791437150102

/-! ## A195739.P3308013269333531811

`and(A001844(n), A090501(A122622(n+1)))`
-/

namespace A195739.P3308013269333531811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001844 n) (A090501 (A122622 (n + 1)).toNat)

end

end A195739.P3308013269333531811

/-! ## A195739.P1177626299765386143

`and(A058919(A271269(3*n+2)), A379046(n+1))`
-/

namespace A195739.P1177626299765386143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058919 (A271269 (3 * n + 2)).toNat) (A379046 (n + 1))

end

end A195739.P1177626299765386143

/-!
# A195743: Number of distinct residues of prime(k)^n (mod n), prime(k) <= n.

The programs for A195743, there is no canonical definition to state claims against.
-/

/-! ## A195743.P7209983881688870933

`A235224(A084556(n)^A156061(n+1))`
-/

namespace A195743.P7209983881688870933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (SequenceMachineLib.roundAway ((A084556 n : ℚ) ^ (A156061 (n + 1) : ℤ))).toNat

end

end A195743.P7209983881688870933

/-! ## A195743.P5735710929134611987

`A235224(A084556(n)^A225395(n+1))`
-/

namespace A195743.P5735710929134611987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (SequenceMachineLib.roundAway ((A084556 n : ℚ) ^ (A225395 (n + 1) : ℤ))).toNat

end

end A195743.P5735710929134611987

/-! ## A195743.P2854253963635316012

`A235224(A276611(n)^A156061(n+1))`
-/

namespace A195743.P2854253963635316012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (SequenceMachineLib.roundAway ((A276611 n : ℚ) ^ (A156061 (n + 1) : ℤ))).toNat

end

end A195743.P2854253963635316012

/-! ## A195743.P10900790841938580207

`A235224(A276611(n)^A225395(n+1))`
-/

namespace A195743.P10900790841938580207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (SequenceMachineLib.roundAway ((A276611 n : ℚ) ^ (A225395 (n + 1) : ℤ))).toNat

end

end A195743.P10900790841938580207

/-! ## A195743.P7748680691222117847

`A235224(A276611(n)^A290103(n+1))`
-/

namespace A195743.P7748680691222117847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (SequenceMachineLib.roundAway ((A276611 n : ℚ) ^ (A290103 (n + 1) : ℤ))).toNat

end

end A195743.P7748680691222117847

/-!
# A195744: a(n) = 15*2^(n+1) + 1.

The programs for A195744, the canonical program `A195744.P16037549295852236584` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195744 has offset 0).

The definition of A195744 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*2^(n+1)+1` (program `A195744.P16037549295852236584`, by `A195744.P16037549295852236584.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A195744.P16491240474708361563

`30*2^n+1`
-/

namespace A195744.P16491240474708361563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30 * 2 ^ n + 1

end

end A195744.P16491240474708361563

namespace A195744

/-- `30*2^n+1` -/
def P16491240474708361563.Spec : Prop :=
  ∀ n, (P16491240474708361563.a n : ℤ) = A195744 n

theorem P16491240474708361563.correct : P16491240474708361563.Spec := by
  intro n
  simp only [A195744, Nat.add_sub_cancel, A195744.P16491240474708361563.a, A195744.P16037549295852236584.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A195744

/-! ## A195744.P16037549295852236584

`15*2^(n+1)+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A195744

/-- `15*2^(n+1)+1` -/
def P16037549295852236584.Spec : Prop :=
  ∀ n, (P16037549295852236584.a n : ℤ) = A195744 n

theorem P16037549295852236584.correct : P16037549295852236584.Spec := by
  intro n
  simp only [A195744]

end A195744

/-! ## A195744.P12946572286102574410

`A128470(2^n)`
-/

namespace A195744.P12946572286102574410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (2 ^ n)

end

end A195744.P12946572286102574410

namespace A195744

/-- `A128470(2^n)` -/
def P12946572286102574410.Spec : Prop :=
  ∀ n, P12946572286102574410.a n = A195744 n

end A195744

/-! ## A195744.P14278168798959624046

`xor(1, 10*3*2^n)`
-/

namespace A195744.P14278168798959624046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (10 * (3 * 2 ^ n))

end

end A195744.P14278168798959624046

namespace A195744

/-- `xor(1, 10*3*2^n)` -/
def P14278168798959624046.Spec : Prop :=
  ∀ n, (P14278168798959624046.a n : ℤ) = A195744 n

end A195744

/-! ## A195744.P262186538643580404

`2*(a(n-1)-1/2)` with `a(0)=31`
-/

namespace A195744.P262186538643580404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [31] fun n a =>
  2 * (a (n - 1) - (1 : ℚ) / 2)

end

end A195744.P262186538643580404

namespace A195744

/-- `2*(a(n-1)-1/2)` -/
def P262186538643580404.Spec : Prop :=
  ∀ n, P262186538643580404.a n = (A195744 n : ℚ)

theorem P262186538643580404.correct : P262186538643580404.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A195744, Nat.add_sub_cancel, A195744.P262186538643580404.a, A195744.P16037549295852236584.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A195744, Nat.add_sub_cancel, A195744.P262186538643580404.a, A195744.P16037549295852236584.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A195744

/-! ## A195744.P14507802415714391385

`abs(3-2*(a(n-1)+1))` with `a(0)=31`
-/

namespace A195744.P14507802415714391385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [31] fun n a =>
  |3 - 2 * (a (n - 1) + 1)|

end

end A195744.P14507802415714391385

namespace A195744

/-- `abs(3-2*(a(n-1)+1))` -/
def P14507802415714391385.Spec : Prop :=
  ∀ n, P14507802415714391385.a n = A195744 n

end A195744

/-! ## A195744.P17017167873433230917

`or(A083575(n+1), A083683(n+1))`
-/

namespace A195744.P17017167873433230917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083575 (n + 1)) (A083683 (n + 1))

end

end A195744.P17017167873433230917

namespace A195744

/-- `or(A083575(n+1), A083683(n+1))` -/
def P17017167873433230917.Spec : Prop :=
  ∀ n, P17017167873433230917.a n = A195744 n

end A195744

/-! ## A195744.P16204961653083236469

`or(A083683(n+1), A083686(n+1))`
-/

namespace A195744.P16204961653083236469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083683 (n + 1)) (A083686 (n + 1))

end

end A195744.P16204961653083236469

namespace A195744

/-- `or(A083683(n+1), A083686(n+1))` -/
def P16204961653083236469.Spec : Prop :=
  ∀ n, P16204961653083236469.a n = A195744 n

end A195744

/-! ## A195744.P14817824903493205808

`or(A083686(n+1), A083705(n+1))`
-/

namespace A195744.P14817824903493205808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083686 (n + 1)) (A083705 (n + 1))

end

end A195744.P14817824903493205808

namespace A195744

/-- `or(A083686(n+1), A083705(n+1))` -/
def P14817824903493205808.Spec : Prop :=
  ∀ n, P14817824903493205808.a n = A195744 n

end A195744

/-! ## A195744.P13592048302164450361

`or(A083683(n+1), A168596(n+1))`
-/

namespace A195744.P13592048302164450361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083683 (n + 1)) (A168596 (n + 1))

end

end A195744.P13592048302164450361

namespace A195744

/-- `or(A083683(n+1), A168596(n+1))` -/
def P13592048302164450361.Spec : Prop :=
  ∀ n, P13592048302164450361.a n = A195744 n

end A195744

/-! ## A195744.P10207983729731179713

`or(A122041(n+1), A168596(n+1))`
-/

namespace A195744.P10207983729731179713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122041 (n + 1)) (A168596 (n + 1))

end

end A195744.P10207983729731179713

namespace A195744

/-- `or(A122041(n+1), A168596(n+1))` -/
def P10207983729731179713.Spec : Prop :=
  ∀ n, P10207983729731179713.a n = A195744 n

end A195744

/-! ## A195744.P1929645943132134500

`or(1, Δ[A139700(n+1)])`
-/

namespace A195744.P1929645943132134500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A195744.P1929645943132134500

namespace A195744

/-- `or(1, Δ[A139700(n+1)])` -/
def P1929645943132134500.Spec : Prop :=
  ∀ n, P1929645943132134500.a n = A195744 n

end A195744

/-! ## A195744.P18231745057617355153

`(A196305(n+2)+3)/2`
-/

namespace A195744.P18231745057617355153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196305 (n + 2) + 3 : ℚ) / 2

end

end A195744.P18231745057617355153

namespace A195744

/-- `(A196305(n+2)+3)/2` -/
def P18231745057617355153.Spec : Prop :=
  ∀ n, P18231745057617355153.a n = (A195744 n : ℚ)

end A195744

/-! ## A195744.P3986001952667656114

`Δ[30*A000079(n)+1+n]`
-/

namespace A195744.P3986001952667656114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A000079 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195744.P3986001952667656114

namespace A195744

/-- `Δ[30*A000079(n)+1+n]` -/
def P3986001952667656114.Spec : Prop :=
  ∀ n, P3986001952667656114.a n = A195744 n

end A195744

/-! ## A195744.P6574819596117043403

`A207142(2*(n+2))/2`
-/

namespace A195744.P6574819596117043403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207142 (2 * (n + 2)) : ℚ) / 2

end

end A195744.P6574819596117043403

namespace A195744

/-- `A207142(2*(n+2))/2` -/
def P6574819596117043403.Spec : Prop :=
  ∀ n, P6574819596117043403.a n = (A195744 n : ℚ)

end A195744

/-!
# A195745: Primes of the form 15*2^k + 1.

The programs for A195745, there is no canonical definition to state claims against.
-/

/-! ## A195745.P451112028830750377

`A110286(A002258(n+1))+1`
-/

namespace A195745.P451112028830750377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110286 (A002258 (n + 1)).toNat + 1

end

end A195745.P451112028830750377

/-! ## A195745.P18435234001212987341

`A195744(A002258(n+1)-1)`
-/

namespace A195745.P18435234001212987341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195744 (A002258 (n + 1) - 1).toNat

end

end A195745.P18435234001212987341

/-! ## A195745.P6154459850342578726

`A110286(eq[A000079(n), A337882(n+3)]+1)+1`
-/

namespace A195745.P6154459850342578726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337882 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110286 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) + 1

end

end A195745.P6154459850342578726

/-! ## A195745.P13870190359473483498

`A196305(eq[A000079(n), A337882(n+3)]+1)+2`
-/

namespace A195745.P13870190359473483498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337882 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196305 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) + 2

end

end A195745.P13870190359473483498

/-! ## A195745.P15105798329011218431

`∩[A152449(n+1), A195744(n)]`
-/

namespace A195745.P15105798329011218431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195745.P15105798329011218431

/-!
# A195758: Lesser prime factor of n-th Blum number.

The programs for A195758, the canonical program `A195758.P400916838346079358` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195758 has offset 1).

The definition of A195758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5508 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195758.P1261912212943539930

`A020639(A016105(n+1))`
-/

namespace A195758.P1261912212943539930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016105 (n + 1)).toNat

end

end A195758.P1261912212943539930

namespace A195758

/-- `A020639(A016105(n+1))` -/
def P1261912212943539930.Spec : Prop :=
  ∀ n, P1261912212943539930.a n = A195758 (n + 1)

end A195758

/-! ## A195758.P3858567958171377324

`A016105(n+1)/A195759(n+1)`
-/

namespace A195758.P3858567958171377324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016105 (n + 1) : ℚ) / (A195759 (n + 1) : ℚ)

end

end A195758.P3858567958171377324

namespace A195758

/-- `A016105(n+1)/A195759(n+1)` -/
def P3858567958171377324.Spec : Prop :=
  ∀ n, P3858567958171377324.a n = (A195758 (n + 1) : ℚ)

end A195758

/-! ## A195758.P400916838346079358

`A006530(A016105(n+1)/A006530(A016105(n+1)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A195758

/-- `A006530(A016105(n+1)/A006530(A016105(n+1)))` -/
def P400916838346079358.Spec : Prop :=
  ∀ n, P400916838346079358.a n = A195758 (n + 1)

theorem P400916838346079358.correct : P400916838346079358.Spec := by
  intro n
  simp only [A195758, Nat.add_sub_cancel]

end A195758

/-! ## A195758.P18127611223223083585

`p?[A052126(A119973(n+1))]`
-/

namespace A195758.P18127611223223083585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A119973 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195758.P18127611223223083585

namespace A195758

/-- `p?[A052126(A119973(n+1))]` -/
def P18127611223223083585.Spec : Prop :=
  ∀ n, P18127611223223083585.a n = A195758 (n + 1)

end A195758

/-! ## A195758.P18143327781892242358

`p?[(A293513(n+1)-1)*A072504(n+1)]`
-/

namespace A195758.P18143327781892242358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A293513 (n + 1) - 1) * A072504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195758.P18143327781892242358

namespace A195758

/-- `p?[(A293513(n+1)-1)*A072504(n+1)]` -/
def P18143327781892242358.Spec : Prop :=
  ∀ n, P18143327781892242358.a n = A195758 (n + 1)

end A195758

/-! ## A195758.P11326929098006395666

`p?[A002620(A293513(n+1))*A072504(n+1)]`
-/

namespace A195758.P11326929098006395666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A293513 (n + 1)).toNat * A072504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195758.P11326929098006395666

namespace A195758

/-- `p?[A002620(A293513(n+1))*A072504(n+1)]` -/
def P11326929098006395666.Spec : Prop :=
  ∀ n, P11326929098006395666.a n = A195758 (n + 1)

end A195758

/-! ## A195758.P18140531894522926961

`A016105(n+1)/A072505(or(1, A016105(n+1)))`
-/

namespace A195758.P18140531894522926961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016105 (n + 1) : ℚ) / (A072505 (Int.lor 1 (A016105 (n + 1))).toNat : ℚ)

end

end A195758.P18140531894522926961

namespace A195758

/-- `A016105(n+1)/A072505(or(1, A016105(n+1)))` -/
def P18140531894522926961.Spec : Prop :=
  ∀ n, P18140531894522926961.a n = (A195758 (n + 1) : ℚ)

end A195758

/-!
# A195759: Greater prime factor of n-th Blum number.

The programs for A195759, the canonical program `A195759.P6529059110084723904` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195759 has offset 1).

The definition of A195759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195759.P6529059110084723904

`A016105(n+1)/A195758(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A195759

/-- `A016105(n+1)/A195758(n+1)` -/
def P6529059110084723904.Spec : Prop :=
  ∀ n, P6529059110084723904.a n = (A195759 (n + 1) : ℚ)

end A195759

/-! ## A195759.P1115844045382142683

`A006530(A016105(n+1))`
-/

namespace A195759.P1115844045382142683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016105 (n + 1)).toNat

end

end A195759.P1115844045382142683

namespace A195759

/-- `A006530(A016105(n+1))` -/
def P1115844045382142683.Spec : Prop :=
  ∀ n, P1115844045382142683.a n = A195759 (n + 1)

end A195759

/-! ## A195759.P10660003813618118099

`A020639(A016105(n+1)/A020639(A016105(n+1)))`
-/

namespace A195759.P10660003813618118099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A016105 (n + 1) : ℚ) / (A020639 (A016105 (n + 1)).toNat : ℚ))).toNat

end

end A195759.P10660003813618118099

namespace A195759

/-- `A020639(A016105(n+1)/A020639(A016105(n+1)))` -/
def P10660003813618118099.Spec : Prop :=
  ∀ n, P10660003813618118099.a n = A195759 (n + 1)

end A195759

/-! ## A195759.P5982584187261266233

`A072505(or(1, A016105(n+1)))`
-/

namespace A195759.P5982584187261266233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072505 (Int.lor 1 (A016105 (n + 1))).toNat

end

end A195759.P5982584187261266233

namespace A195759

/-- `A072505(or(1, A016105(n+1)))` -/
def P5982584187261266233.Spec : Prop :=
  ∀ n, P5982584187261266233.a n = A195759 (n + 1)

end A195759

/-! ## A195759.P836504670814695452

`A032742(A016105(2*n+1-n))`
-/

namespace A195759.P836504670814695452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A016105 (2 * n + 1 - n)).toNat

end

end A195759.P836504670814695452

namespace A195759

/-- `A032742(A016105(2*n+1-n))` -/
def P836504670814695452.Spec : Prop :=
  ∀ n, P836504670814695452.a n = A195759 (n + 1)

end A195759

/-! ## A195759.P2229182668450803121

`A072505(2*A016105(n+1)-A016105(n+1))`
-/

namespace A195759.P2229182668450803121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072505 (2 * A016105 (n + 1) - A016105 (n + 1)).toNat

end

end A195759.P2229182668450803121

namespace A195759

/-- `A072505(2*A016105(n+1)-A016105(n+1))` -/
def P2229182668450803121.Spec : Prop :=
  ∀ n, P2229182668450803121.a n = A195759 (n + 1)

end A195759

/-!
# A195760: G.f.: A(x) = exp( Sum_{n>=1} 5*5^A112765(n) * x^n/n ), where A112765 is the exponent of the highest power of 5 dividing n.

The programs for A195760, there is no canonical definition to state claims against.
-/

/-! ## A195760.P5135395420276054928

`∑[∑[∑[lt[(n/(n%5)!)^n, 2]+1]]]`
-/

namespace A195760.P5135395420276054928
noncomputable section

def f4 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / (Nat.factorial (n % 5) : ℚ)) ^ n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f4 j < (f5 j : ℚ)) n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195760.P5135395420276054928

/-! ## A195760.P14852128335175283579

`∑[A056926(A261636(n)²)]`
-/

namespace A195760.P14852128335175283579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A261636 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195760.P14852128335175283579

/-! ## A195760.P13175913547946149453

`∑[A261636(n)%A057796(n)]`
-/

namespace A195760.P13175913547946149453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261636 n) (A057796 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195760.P13175913547946149453

/-! ## A195760.P10504995535429587701

`∑[A261636(n)]%A061931(n+4)`
-/

namespace A195760.P10504995535429587701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A061931 (n + 4))

end

end A195760.P10504995535429587701

/-! ## A195760.P4897873819309576798

`∑[A001222(A002224(n+1))*A261636(n)]`
-/

namespace A195760.P4897873819309576798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002224 (n + 1)).toNat * A261636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195760.P4897873819309576798

/-!
# A195761: G.f.: exp( Sum_{n>=1} A055457(n) * 5^A055457(n) * x^n/n ) where 5^A055457(n) exactly divides 5*n.

The programs for A195761, there is no canonical definition to state claims against.
-/

/-! ## A195761.P17526560332810510483

`A321418(3*A227549(n+1))`
-/

namespace A195761.P17526560332810510483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321418 (3 * A227549 (n + 1)).toNat

end

end A195761.P17526560332810510483

/-! ## A195761.P14182060284204498330

`A321418(A227549(n+1)+n+n)`
-/

namespace A195761.P14182060284204498330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321418 (A227549 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A195761.P14182060284204498330

/-! ## A195761.P10404657821056058137

`A321418(3*n)%Δ[A321467(n+3)]`
-/

namespace A195761.P10404657821056058137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321467 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321418 (3 * n)) (f1 (n + 1) - f1 n)

end

end A195761.P10404657821056058137

/-! ## A195761.P5059480090628572634

`A321418(3*n)+A000007(A289501(n))`
-/

namespace A195761.P5059480090628572634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321418 (3 * n) + A000007 (A289501 n).toNat

end

end A195761.P5059480090628572634

/-! ## A195761.P9893103288376018439

`A321418(3*n)*A389094(A000110(n))`
-/

namespace A195761.P9893103288376018439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321418 (3 * n) * A389094 (A000110 n).toNat

end

end A195761.P9893103288376018439

/-!
# A195762: Right-hand diagonal of A195739.

The programs for A195762, there is no canonical definition to state claims against.
-/

/-! ## A195762.P13471931041905804626

`4*(2*(n+1))^(n-2)`
-/

namespace A195762.P13471931041905804626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (2 * (n + 1) : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A195762.P13471931041905804626

/-! ## A195762.P15550275655549837324

`(2*(n+1))^n/xor(n, -1)²`
-/

namespace A195762.P15550275655549837324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1)) ^ n : ℚ) / (Int.xor (n : ℤ) (-1) ^ 2 : ℚ)

end

end A195762.P15550275655549837324

/-!
# A195763: Number of triangular nXnXn 0..n arrays with all row sums equal to the length of the row and all diagonal sums equal to the length of the respective diagonal.

The programs for A195763, there is no canonical definition to state claims against.
-/

/-! ## A195763.P4782776166823031663

`A195768(∑[n+5]+6)`
-/

namespace A195763.P4782776166823031663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195768 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A195763.P4782776166823031663

/-! ## A195763.P1563910586124997026

`A195767(A348268(n))`
-/

namespace A195763.P1563910586124997026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195767 (A348268 n).toNat

end

end A195763.P1563910586124997026

/-! ## A195763.P6144445389598636515

`A195767(∑[A003108(n)])`
-/

namespace A195763.P6144445389598636515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195767 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A195763.P6144445389598636515

/-! ## A195763.P8290028579189442967

`A195767(∑[A195851(n)])`
-/

namespace A195763.P8290028579189442967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195767 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A195763.P8290028579189442967

/-!
# A195764: Number of triangular nXnXn 0..2 arrays with all row sums equal to the length of the row and all diagonal sums equal to the length of the respective diagonal.

The programs for A195764, there is no canonical definition to state claims against.
-/

/-! ## A195764.P6487204583255327867

`A195768(∑[n+2])`
-/

namespace A195764.P6487204583255327867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195768 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195764.P6487204583255327867

/-! ## A195764.P11703095051998137039

`or(1, A195768(A000096(n+1)))`
-/

namespace A195764.P11703095051998137039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A195768 (A000096 (n + 1)).toNat)

end

end A195764.P11703095051998137039

/-! ## A195764.P2326520777428523588

`A195768(A000096(n+1))+A107846(n)`
-/

namespace A195764.P2326520777428523588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195768 (A000096 (n + 1)).toNat + A107846 n

end

end A195764.P2326520777428523588

/-! ## A195764.P11155306048859023509

`gcd(A195768(A000096(n+1)), A321936(n))`
-/

namespace A195764.P11155306048859023509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A195768 (A000096 (n + 1)).toNat) (A321936 n)

end

end A195764.P11155306048859023509

/-! ## A195764.P4878392238812602290

`lcm(A033999(n), A195768(A000096(n+1)))`
-/

namespace A195764.P4878392238812602290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A195768 (A000096 (n + 1)).toNat)

end

end A195764.P4878392238812602290

/-!
# A195765: Number of triangular nXnXn 0..3 arrays with all row sums equal to the length of the row and all diagonal sums equal to the length of the respective diagonal.

The programs for A195765, there is no canonical definition to state claims against.
-/

/-! ## A195765.P14653662922057226197

`A195768(∑[n+3]+1)`
-/

namespace A195765.P14653662922057226197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195768 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A195765.P14653662922057226197

/-! ## A195765.P16761853283705878454

`A195768(A034856(n+2))-A184955(n)`
-/

namespace A195765.P16761853283705878454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195768 (A034856 (n + 2)).toNat - A184955 n

end

end A195765.P16761853283705878454

/-! ## A195765.P11041763358782326387

`C(A195768(A034856(n+2)), A294775(n))`
-/

namespace A195765.P11041763358782326387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A195768 (A034856 (n + 2)).toNat).toNat (A294775 n).toNat

end

end A195765.P11041763358782326387

/-! ## A195765.P1854764166386110850

`A195768(A034856(n+2))-A072769(n+1)`
-/

namespace A195765.P1854764166386110850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195768 (A034856 (n + 2)).toNat - A072769 (n + 1)

end

end A195765.P1854764166386110850

/-! ## A195765.P8973992154394813100

`A195768(A034856(n+2))-A000038(n+4)`
-/

namespace A195765.P8973992154394813100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195768 (A034856 (n + 2)).toNat - A000038 (n + 4)

end

end A195765.P8973992154394813100

/-!
# A195766: Number of triangular nXnXn 0..4 arrays with all row sums equal to the length of the row and all diagonal sums equal to the length of the respective diagonal.

The programs for A195766, there is no canonical definition to state claims against.
-/

/-! ## A195766.P7826501309888969672

`A195768(A141214(n+1))`
-/

namespace A195766.P7826501309888969672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195768 (A141214 (n + 1)).toNat

end

end A195766.P7826501309888969672

/-! ## A195766.P9200696751985466402

`A195768(A055998(n+2))`
-/

namespace A195766.P9200696751985466402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195768 (A055998 (n + 2)).toNat

end

end A195766.P9200696751985466402

/-! ## A195766.P8405775762320594842

`A195768(A155212(n)+5)`
-/

namespace A195766.P8405775762320594842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195768 (A155212 n + 5).toNat

end

end A195766.P8405775762320594842

/-! ## A195766.P12209465751068067548

`A195768(A056000(n)+7)`
-/

namespace A195766.P12209465751068067548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195768 (A056000 n + 7).toNat

end

end A195766.P12209465751068067548

/-! ## A195766.P3075308119904027603

`A195768(eq[2, A072233(n)])`
-/

namespace A195766.P3075308119904027603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195768 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195766.P3075308119904027603

/-!
# A195770: Positive integer a is repeated m times, where m is the number of 1-Pythagorean triples (a,b,c) satisfying a<=b.

The programs for A195770, there is no canonical definition to state claims against.
-/

/-! ## A195770.P5371412889898830217

`A195778(lt[A196008(n+1), A195794(n+1)])`
-/

namespace A195770.P5371412889898830217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195778 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195770.P5371412889898830217

/-! ## A195770.P2653615483321898781

`A195778(lt[A196252(n+1), A195795(n+1)])`
-/

namespace A195770.P2653615483321898781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195778 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A195770.P2653615483321898781

/-! ## A195770.P8719061303343993189

`A259361(n+1)+A198465(3*n+1)`
-/

namespace A195770.P8719061303343993189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (n + 1) + A198465 (3 * n + 1)

end

end A195770.P8719061303343993189

/-! ## A195770.P1256168141094031308

`(A259361(n+1)+A198465(A016777(n)))%22`
-/

namespace A195770.P1256168141094031308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259361 (n + 1) + A198465 (A016777 n).toNat) 22

end

end A195770.P1256168141094031308

/-! ## A195770.P15086831048451328152

`A003057(A318978(3*n+1)-comp[2*(n+1)])`
-/

namespace A195770.P15086831048451328152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A318978 (3 * n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A195770.P15086831048451328152

/-!
# A195778: Positive integers a for which there is a (-1)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A195778, there is no canonical definition to state claims against.
-/

/-! ## A195778.P8163765912839351024

`∑[C(A195795(n+1), A195794(n+1))]`
-/

namespace A195778.P8163765912839351024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A195795 (n + 1)).toNat (A195794 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195778.P8163765912839351024

/-! ## A195778.P7129805670141233376

`∑[A000007(A195794(n+1)-A195795(n+1))]`
-/

namespace A195778.P7129805670141233376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A195794 (n + 1) - A195795 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195778.P7129805670141233376

/-! ## A195778.P11542098051637192970

`∑[A000007(A195794(n+1)%A195795(n+1))]`
-/

namespace A195778.P11542098051637192970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A195794 (n + 1)) (A195795 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195778.P11542098051637192970

/-! ## A195778.P4810338702489886474

`∑[round(A196169(n+1)/A195794(n+1))]`
-/

namespace A195778.P4810338702489886474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A196169 (n + 1) : ℚ) / (A195794 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195778.P4810338702489886474

/-! ## A195778.P837581770775550499

`∑[floor(A195872(n+1)/A195794(n+1))]`
-/

namespace A195778.P837581770775550499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A195872 (n + 1) : ℚ) / (A195794 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195778.P837581770775550499

/-! ## A195778.P10548545502486504110

`∑[floor(A195872(n+1)/A195795(n+1))]`
-/

namespace A195778.P10548545502486504110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A195872 (n + 1) : ℚ) / (A195795 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195778.P10548545502486504110

/-! ## A195778.P6809927334697696622

`∑[floor(A195932(n+1)/A195794(n+1))]`
-/

namespace A195778.P6809927334697696622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A195932 (n + 1) : ℚ) / (A195794 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195778.P6809927334697696622

/-! ## A195778.P16755028124272082333

`∑[floor(A196266(n+1)/A195794(n+1))]`
-/

namespace A195778.P16755028124272082333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196266 (n + 1) : ℚ) / (A195794 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195778.P16755028124272082333

/-!
# A195793: Decimal expansion of arctan(1000000).

The programs for A195793, there is no canonical definition to state claims against.
-/

/-! ## A195793.P10617141773400050102

`A019669(n)-A193243(A261241(n+1))`
-/

namespace A195793.P10617141773400050102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019669 (n + 1) - A193243 (A261241 (n + 1)).toNat

end

end A195793.P10617141773400050102

/-!
# A195796: Positive integers a for which there is a primitive (-1)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A195796, there is no canonical definition to state claims against.
-/

/-! ## A195796.P13437359140985803005

`A323022(A002817(2*n+1))+n+1`
-/

namespace A195796.P13437359140985803005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A002817 (2 * n + 1)).toNat + (n + 1 : ℤ)

end

end A195796.P13437359140985803005

/-! ## A195796.P2299659110246208374

`A088569(2^n)+ceil(sqrt(∑[2*n]))`
-/

namespace A195796.P2299659110246208374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (2 ^ n) + ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A195796.P2299659110246208374

/-! ## A195796.P16392753970524396644

`or(record[A161357(n+1)], A045634(n))`
-/

namespace A195796.P16392753970524396644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A045634 n)

end

end A195796.P16392753970524396644

/-! ## A195796.P10271712283918875029

`or(record[A161357(n+1)], A214090(n))`
-/

namespace A195796.P10271712283918875029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A214090 n)

end

end A195796.P10271712283918875029

/-! ## A195796.P10343907327433711736

`A078650(A000051(n))+A065475(n+1)`
-/

namespace A195796.P10343907327433711736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078650 (A000051 n).toNat + A065475 (n + 1)

end

end A195796.P10343907327433711736

/-!
# A195797: Number of triangular nXnXn 0..n arrays with all rows and diagonals having the same length having the same sum, with corners zero.

The programs for A195797, there is no canonical definition to state claims against.
-/

/-! ## A195797.P8421725619525358602

`A195805(∑[4*n]+1)`
-/

namespace A195797.P8421725619525358602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195805 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A195797.P8421725619525358602

/-!
# A195798: Number of triangular n X n X n 0..1 arrays with all rows and diagonals having the same length having the same sum, with corners zero.

The programs for A195798, there is no canonical definition to state claims against.
-/

/-! ## A195798.P3775286200821133437

`A195805(∑[n+1])`
-/

namespace A195798.P3775286200821133437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195805 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195798.P3775286200821133437

/-! ## A195798.P7665499784427582147

`((-1)^n)²*A195805(A025747(n))`
-/

namespace A195798.P7665499784427582147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A195805 (A025747 n).toNat

end

end A195798.P7665499784427582147

/-! ## A195798.P7534839500619963545

`A195805(A000217(n+1))+floor(n/9)`
-/

namespace A195798.P7534839500619963545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195805 (A000217 (n + 1)).toNat + ⌊(n : ℚ) / 9⌋

end

end A195798.P7534839500619963545

/-! ## A195798.P8835594952415542881

`A195805(C(n+2, 2))^A124278(n+3)`
-/

namespace A195798.P8835594952415542881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195805 (Nat.choose (n + 2) 2) : ℚ) ^ (A124278 (n + 3) : ℤ)

end

end A195798.P8835594952415542881

/-! ## A195798.P4682549976137651318

`A195805(C(n+2, 2))%A034386(2*(n+2))`
-/

namespace A195798.P4682549976137651318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195805 (Nat.choose (n + 2) 2)) (A034386 (2 * (n + 2)))

end

end A195798.P4682549976137651318

/-!
# A195799: Number of triangular nXnXn 0..2 arrays with all rows and diagonals having the same length having the same sum, with corners zero.

The programs for A195799, there is no canonical definition to state claims against.
-/

/-! ## A195799.P12055951106641047754

`A195805(∑[n+2])`
-/

namespace A195799.P12055951106641047754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195805 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195799.P12055951106641047754

/-! ## A195799.P10187075794170737084

`A294234(n)+A195805(A000096(n+1))`
-/

namespace A195799.P10187075794170737084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n + A195805 (A000096 (n + 1)).toNat

end

end A195799.P10187075794170737084

/-! ## A195799.P17102417234263176664

`A296213(n+1)+A195805(A000096(n+1))`
-/

namespace A195799.P17102417234263176664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296213 (n + 1) + A195805 (A000096 (n + 1)).toNat

end

end A195799.P17102417234263176664

/-! ## A195799.P5644017204046081167

`A195805(A000096(n+1))%A291815(n+4)`
-/

namespace A195799.P5644017204046081167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195805 (A000096 (n + 1)).toNat) (A291815 (n + 4))

end

end A195799.P5644017204046081167

