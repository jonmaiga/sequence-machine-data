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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
# A346100: a(n) = A100995(gcd(n, A064989(A319626(A324886(n))))).

The programs for A346100, there is no canonical definition to state claims against.
-/

/-! ## A346100.P4805687205708930026

`A100995(A346099(n+1))`
-/

namespace A346100.P4805687205708930026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A346099 (n + 1)).toNat

end

end A346100.P4805687205708930026

/-! ## A346100.P5238757821076312833

`A347708(A346099(n+1)²)`
-/

namespace A346100.P5238757821076312833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347708 (A346099 (n + 1) ^ 2).toNat

end

end A346100.P5238757821076312833

/-! ## A346100.P12011317272836489088

`A046079(2*A346099(n+1))`
-/

namespace A346100.P12011317272836489088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (2 * A346099 (n + 1)).toNat

end

end A346100.P12011317272836489088

/-! ## A346100.P13470552885702853524

`∑{d}[A346099(n+1), A001221(#)]`
-/

namespace A346100.P13470552885702853524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A346100.P13470552885702853524

/-! ## A346100.P2471658450491219667

`∑{d}[A346099(n+1), A316314(#)]`
-/

namespace A346100.P2471658450491219667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A316314 d

end

end A346100.P2471658450491219667

/-! ## A346100.P1660589725692621118

`A342001(A346099(n+1)²)/2`
-/

namespace A346100.P1660589725692621118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (A346099 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A346100.P1660589725692621118

/-! ## A346100.P9143547497934214556

`A342001(A346099(n+1))%A005891(n)`
-/

namespace A346100.P9143547497934214556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342001 (A346099 (n + 1)).toNat) (A005891 n)

end

end A346100.P9143547497934214556

/-! ## A346100.P16385725085300474659

`A056595(A346099(n+1)²)`
-/

namespace A346100.P16385725085300474659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056595 (A346099 (n + 1) ^ 2).toNat

end

end A346100.P16385725085300474659

/-!
# A346101: "Inverted variant" of A276086: a(n) = A276086(A289234(n)).

The programs for A346101, there is no canonical definition to state claims against.
-/

/-! ## A346101.P32061563998173534

`A276086(A289234(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346101.P32061563998173534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A289234 n).toNat

end

end A346101.P32061563998173534

/-! ## A346101.P10070084859330945605

`A328475(A289234(n))*A328580(n)`
-/

namespace A346101.P10070084859330945605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328475 (A289234 n).toNat * A328580 n

end

end A346101.P10070084859330945605

/-! ## A346101.P11311869586439605471

`A346233(A289234(A328623(n)))`
-/

namespace A346101.P11311869586439605471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346233 (A289234 (A328623 n).toNat).toNat

end

end A346101.P11311869586439605471

/-! ## A346101.P1173783021360973473

`A328617(A276086(n))`
-/

namespace A346101.P1173783021360973473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328617 (A276086 n).toNat

end

end A346101.P1173783021360973473

/-! ## A346101.P6309097314662563433

`A328617(A346102(A328622(A328622(A328622(n)))))`
-/

namespace A346101.P6309097314662563433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328617 (A346102 (A328622 (A328622 (A328622 n).toNat).toNat).toNat).toNat

end

end A346101.P6309097314662563433

/-!
# A346102: a(n) = A276086(A328622(n)).

The programs for A346102, there is no canonical definition to state claims against.
-/

/-! ## A346102.P5691048174502787118

`A276086(A328622(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346102.P5691048174502787118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A328622 n).toNat

end

end A346102.P5691048174502787118

/-! ## A346102.P4635097652824231460

`A328571(n)*A328572(A328622(n))`
-/

namespace A346102.P4635097652824231460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 n * A328572 (A328622 n).toNat

end

end A346102.P4635097652824231460

/-! ## A346102.P1047870029233027502

`A346101(A328623(A289234(n)))`
-/

namespace A346102.P1047870029233027502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346101 (A328623 (A289234 n).toNat).toNat

end

end A346102.P1047870029233027502

/-! ## A346102.P11724853209265046151

`A328580(n)+A328476(A328622(n))`
-/

namespace A346102.P11724853209265046151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328580 n + A328476 (A328622 n).toNat

end

end A346102.P11724853209265046151

/-! ## A346102.P14109887209923452710

`A328627(A328625(A328622(n)%A000040(n+1)))`
-/

namespace A346102.P14109887209923452710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328627 (A328625 (Int.tmod (A328622 n) (A000040 (n + 1))).toNat).toNat

end

end A346102.P14109887209923452710

/-! ## A346102.P16819173268016754880

`A328618(A276086(n))`
-/

namespace A346102.P16819173268016754880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328618 (A276086 n).toNat

end

end A346102.P16819173268016754880

/-! ## A346102.P11211982097992801428

`A328618(A327860(n)-A342016(n))`
-/

namespace A346102.P11211982097992801428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328618 (A327860 n - A342016 n).toNat

end

end A346102.P11211982097992801428

/-!
# A346105: a(n) = A276085(A108951(n)).

The programs for A346105, there is no canonical definition to state claims against.
-/

/-! ## A346105.P6961287616957299286

`A372576(A181811(n+1))+A328769(n+1)/(n+1)`
-/

namespace A346105.P6961287616957299286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372576 (A181811 (n + 1)).toNat : ℚ) + (A328769 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A346105.P6961287616957299286

/-! ## A346105.P11618623363706136464

`A376413(A372575(n+1))+A372576(A181811(n+1))`
-/

namespace A346105.P11618623363706136464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376413 (A372575 (n + 1)).toNat + A372576 (A181811 (n + 1)).toNat

end

end A346105.P11618623363706136464

/-! ## A346105.P355583239555542478

`A372576(A108951(n+1))`
-/

namespace A346105.P355583239555542478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A108951 (n + 1)).toNat

end

end A346105.P355583239555542478

/-! ## A346105.P13498177450173357274

`∑{d}[A108951(n+1), A276085(A014963(#))]`
-/

namespace A346105.P13498177450173357274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A276085 (A014963 d).toNat

end

end A346105.P13498177450173357274

/-!
# A346106: a(n) = A108951(A346096(n)), where A346096(n) gives the numerator of the primorial deflation of A276086(A108951(n)).

The programs for A346106, there is no canonical definition to state claims against.
-/

/-! ## A346106.P2001529996548693963

`A324886(n+1)*A346107(n+1)`
-/

namespace A346106.P2001529996548693963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324886 (n + 1) * A346107 (n + 1)

end

end A346106.P2001529996548693963

/-! ## A346106.P17277489529631994644

`A108951(A346096(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346106.P17277489529631994644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A346096 (n + 1)).toNat

end

end A346106.P17277489529631994644

/-! ## A346106.P7426458379088273630

`A108951(A319626(A324886(n+1)))`
-/

namespace A346106.P7426458379088273630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A319626 (A324886 (n + 1)).toNat).toNat

end

end A346106.P7426458379088273630

/-! ## A346106.P4840295156553028236

`A117366(n+1)*A324896(n+1)*A346107(n+1)`
-/

namespace A346106.P4840295156553028236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (n + 1) * A324896 (n + 1) * A346107 (n + 1)

end

end A346106.P4840295156553028236

/-! ## A346106.P11255360502544201739

`A344592(n+1)*A346091(n+1)*A346107(n+1)`
-/

namespace A346106.P11255360502544201739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344592 (n + 1) * A346091 (n + 1) * A346107 (n + 1)

end

end A346106.P11255360502544201739

/-! ## A346106.P1639060314194363895

`A045965(A006530(n+1))*A324896(n+1)*A346107(n+1)`
-/

namespace A346106.P1639060314194363895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (A006530 (n + 1)).toNat * A324896 (n + 1) * A346107 (n + 1)

end

end A346106.P1639060314194363895

/-! ## A346106.P10523722894788803742

`A006530(A119416(n+1))*A324896(n+1)*A346107(n+1)`
-/

namespace A346106.P10523722894788803742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A119416 (n + 1)).toNat * A324896 (n + 1) * A346107 (n + 1)

end

end A346106.P10523722894788803742

/-!
# A346107: a(n) = A108951(A346097(n)), where A346097(n) gives the denominator of the primorial deflation of A276086(A108951(n)).

The programs for A346107, there is no canonical definition to state claims against.
-/

/-! ## A346107.P10961367573523450635

`A346106(n+1)/A324886(n+1)`
-/

namespace A346107.P10961367573523450635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346106 (n + 1) : ℚ) / (A324886 (n + 1) : ℚ)

end

end A346107.P10961367573523450635

/-! ## A346107.P17850479657335917061

`A108951(A346097(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346107.P17850479657335917061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A346097 (n + 1)).toNat

end

end A346107.P17850479657335917061

/-! ## A346107.P2080443016739300451

`A108951(A319627(A324886(n+1)))`
-/

namespace A346107.P2080443016739300451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (A319627 (A324886 (n + 1)).toNat).toNat

end

end A346107.P2080443016739300451

/-! ## A346107.P17597875662347035703

`A346106(n+1)/(A346095(n+1)*A346096(n+1))`
-/

namespace A346107.P17597875662347035703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346106 (n + 1) : ℚ) / (A346095 (n + 1) * A346096 (n + 1) : ℚ)

end

end A346107.P17597875662347035703

/-! ## A346107.P13386844887992233365

`A346106(n+1)/floor(A324887(n+1)/A108951(n+1))`
-/

namespace A346107.P13386844887992233365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346106 (n + 1) : ℚ) / (⌊(A324887 (n + 1) : ℚ) / (A108951 (n + 1) : ℚ)⌋ : ℚ)

end

end A346107.P13386844887992233365

/-! ## A346107.P2274187900541784543

`A346106(n+1)/(A045965(A006530(n+1))*A324896(n+1))`
-/

namespace A346107.P2274187900541784543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346106 (n + 1) : ℚ) / (A045965 (A006530 (n + 1)).toNat * A324896 (n + 1) : ℚ)

end

end A346107.P2274187900541784543

/-! ## A346107.P2544554875374510294

`A346106(n+1)/(A006530(A119416(n+1))*A324896(n+1))`
-/

namespace A346107.P2544554875374510294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346106 (n + 1) : ℚ) / (A006530 (A119416 (n + 1)).toNat * A324896 (n + 1) : ℚ)

end

end A346107.P2544554875374510294

/-! ## A346107.P6040108240196242570

`A346106(n+1)/(A006530(A285639(n+1))*A324896(n+1))`
-/

namespace A346107.P6040108240196242570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346106 (n + 1) : ℚ) / (A006530 (A285639 (n + 1)).toNat * A324896 (n + 1) : ℚ)

end

end A346107.P6040108240196242570

/-!
# A346108: a(n) = A276085(A108951(A346096(n))), where A346096(n) gives the numerator of the primorial deflation of A276086(A108951(n)).

The programs for A346108, there is no canonical definition to state claims against.
-/

/-! ## A346108.P9768342415275626581

`A108951(n+1)+A346109(n+1)`
-/

namespace A346108.P9768342415275626581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) + A346109 (n + 1)

end

end A346108.P9768342415275626581

/-! ## A346108.P18051000012269849447

`A346105(A346096(n+1))`
-/

namespace A346108.P18051000012269849447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346105 (A346096 (n + 1)).toNat

end

end A346108.P18051000012269849447

/-! ## A346108.P5478011941803026540

`A346109(n+1)+A331188(A119416(n+1))`
-/

namespace A346108.P5478011941803026540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346109 (n + 1) + A331188 (A119416 (n + 1)).toNat

end

end A346108.P5478011941803026540

/-! ## A346108.P100580441952641446

`A346109(n+1)+A331188(A129598(n+1))`
-/

namespace A346108.P100580441952641446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346109 (n + 1) + A331188 (A129598 (n + 1)).toNat

end

end A346108.P100580441952641446

/-! ## A346108.P14032905094614175981

`A346109(n+1)+A181811(A003961(n+1))`
-/

namespace A346108.P14032905094614175981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346109 (n + 1) + A181811 (A003961 (n + 1)).toNat

end

end A346108.P14032905094614175981

/-!
# A346109: a(n) = A276085(A108951(A346097(n))), where A346097(n) gives the denominator of the primorial deflation of A276086(A108951(n)).

The programs for A346109, there is no canonical definition to state claims against.
-/

/-! ## A346109.P1491630986724518028

`A346108(n+1)-A108951(n+1)`
-/

namespace A346109.P1491630986724518028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346108 (n + 1) - A108951 (n + 1)

end

end A346109.P1491630986724518028

/-! ## A346109.P7417404148511146439

`A346105(A346097(n+1))`
-/

namespace A346109.P7417404148511146439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346105 (A346097 (n + 1)).toNat

end

end A346109.P7417404148511146439

/-! ## A346109.P2982295120080150135

`A346108(n+1)-A329602((n+1)²)`
-/

namespace A346109.P2982295120080150135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346108 (n + 1) - A329602 ((n + 1) ^ 2)

end

end A346109.P2982295120080150135

/-! ## A346109.P9744608562699909276

`A346108(A000027(n+1))%A108951(n+1)`
-/

namespace A346109.P9744608562699909276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346108 (A000027 (n + 1)).toNat) (A108951 (n + 1))

end

end A346109.P9744608562699909276

/-! ## A346109.P13168066283198271661

`A346108(n+1)-A181811(A003961(n+1))`
-/

namespace A346109.P13168066283198271661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346108 (n + 1) - A181811 (A003961 (n + 1)).toNat

end

end A346109.P13168066283198271661

/-!
# A346112: Size of the smallest regular polygon chain for a regular polygon with n sides.

The programs for A346112, there is no canonical definition to state claims against.
-/

/-! ## A346112.P6128319377514842710

`A030788(Δ[A045134(n+1)])+2`
-/

namespace A346112.P6128319377514842710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030788 (f1 (n + 1) - f1 n).toNat + 2

end

end A346112.P6128319377514842710

/-! ## A346112.P6484850240519153732

`(A083093(3*(n+1))*A204418(A001769(n))+3)*gcd(2, n)`
-/

namespace A346112.P6484850240519153732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083093 (3 * (n + 1)) * A204418 (A001769 n).toNat + 3) * (Nat.gcd 2 n : ℤ)

end

end A346112.P6484850240519153732

/-!
# A346114: a(n+1) = 1 + Sum_{k=1..n} a(gcd(n,k)).

The programs for A346114, there is no canonical definition to state claims against.
-/

/-! ## A346114.P7593267728190678367

`A344511(A049128(n+1))+∑[n]`
-/

namespace A346114.P7593267728190678367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344511 (A049128 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A346114.P7593267728190678367

/-! ## A346114.P2879579793088060035

`A035300(n)-A293539(A061129(n))`
-/

namespace A346114.P2879579793088060035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035300 n - A293539 (A061129 n).toNat

end

end A346114.P2879579793088060035

/-! ## A346114.P6321789057297250834

`A003318(n+1)-A101638(A024212(n+1))`
-/

namespace A346114.P6321789057297250834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003318 (n + 1) - A101638 (A024212 (n + 1)).toNat

end

end A346114.P6321789057297250834

/-! ## A346114.P10924729771294506450

`eq[A014963(2*(n+2)), A130534(A325368(n+1))]`
-/

namespace A346114.P10924729771294506450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (A325368 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346114.P10924729771294506450

/-!
# A346117: a(1) = a(2) = 1; a(n+2) = 1 + Sum_{d|n} a(d).

The programs for A346117, there is no canonical definition to state claims against.
-/

/-! ## A346117.P10688128376947953231

`A345141(floor(acot(n))+1+n)+A007439(n+1)`
-/

namespace A346117.P10688128376947953231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345141 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1 + (n : ℤ)).toNat + A007439 (n + 1)

end

end A346117.P10688128376947953231

/-! ## A346117.P14926261953798141101

`A345141(A028310(n)+1)+A007439(n+1)`
-/

namespace A346117.P14926261953798141101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345141 (A028310 n + 1).toNat + A007439 (n + 1)

end

end A346117.P14926261953798141101

/-! ## A346117.P2602742071171835501

`A345141(A000007(n)+n+1)+A007439(n+1)`
-/

namespace A346117.P2602742071171835501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345141 (A000007 n + (n + 1 : ℤ)).toNat + A007439 (n + 1)

end

end A346117.P2602742071171835501

/-! ## A346117.P9973057091320393298

`A007439(n+1)+A057427(n)*A345141(n+1)`
-/

namespace A346117.P9973057091320393298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007439 (n + 1) + A057427 n * A345141 (n + 1)

end

end A346117.P9973057091320393298

/-! ## A346117.P12679310491771561267

`A007439(n+1)+A345141(n+1)%A000123(n)`
-/

namespace A346117.P12679310491771561267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007439 (n + 1) + Int.tmod (A345141 (n + 1)) (A000123 n)

end

end A346117.P12679310491771561267

/-! ## A346117.P636301077644433972

`A345141(n+1)+A007439(n+1)%A000079(n)`
-/

namespace A346117.P636301077644433972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345141 (n + 1) + Int.tmod (A007439 (n + 1)) (A000079 n)

end

end A346117.P636301077644433972

/-!
# A346122: n times the n-th digit of the decimal expansion of Pi.

The programs for A346122, there is no canonical definition to state claims against.
-/

/-! ## A346122.P12572029346704339838

`(n+1)*A000796(n)`
-/

namespace A346122.P12572029346704339838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000796 (n + 1)

end

end A346122.P12572029346704339838

/-! ## A346122.P17465229478018186883

`(n+1)*Δ[A059582(n)]`
-/

namespace A346122.P17465229478018186883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A346122.P17465229478018186883

/-! ## A346122.P6410085173803808652

`(n+1)*(9-A030644(n))`
-/

namespace A346122.P6410085173803808652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (9 - A030644 (n + 1))

end

end A346122.P6410085173803808652

/-! ## A346122.P7651934545870159344

`(n+1)*A001355(Δ[n²])`
-/

namespace A346122.P7651934545870159344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A346122.P7651934545870159344

/-! ## A346122.P4415273731856873061

`(n+1)*A076790(Δ[n²])`
-/

namespace A346122.P4415273731856873061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076790 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A346122.P4415273731856873061

/-! ## A346122.P10313890950701079117

`(n+1)*A110766(Δ[n²])`
-/

namespace A346122.P10313890950701079117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110766 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A346122.P10313890950701079117

/-! ## A346122.P2773810782674846521

`(n+1)*sqrt(A072448(n+1))`
-/

namespace A346122.P2773810782674846521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A072448 (n + 1) : ℝ)

end

end A346122.P2773810782674846521

/-! ## A346122.P3236139610652033105

`(n+1)*A095709(∑[n]+1)`
-/

namespace A346122.P3236139610652033105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A095709 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A346122.P3236139610652033105

/-! ## A346122.P2366446492001092305

`(n+1)*A138114(∑[n+1])`
-/

namespace A346122.P2366446492001092305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A138114 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346122.P2366446492001092305

/-! ## A346122.P6575723295765989684

`(n+1)*(A123152(n+1)-1)`
-/

namespace A346122.P6575723295765989684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A123152 (n + 1) - 1)

end

end A346122.P6575723295765989684

/-!
# A346123: Numbers m such that no self-avoiding walk of length m + 1 on the honeycomb net fits into the smallest circle that can enclose a walk of length m.

The programs for A346123, there is no canonical definition to state claims against.
-/

/-! ## A346123.P16089320554147918335

`eq[A023969(A271489(n)), A267708(n+2)]`
-/

namespace A346123.P16089320554147918335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 (A271489 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346123.P16089320554147918335

/-!
# A346126: Numbers m such that no self-avoiding walk of length m + 1 on the hexagonal lattice fits into the smallest circle that can enclose a walk of length m.

The programs for A346126, there is no canonical definition to state claims against.
-/

/-! ## A346126.P7371913709039594556

`eq[1, A001222(∑{d}[n-1, A257179(n)^#]+1)]+1`
-/

namespace A346126.P7371913709039594556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f3 n).natAbs, A257179 n ^ d + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346126.P7371913709039594556

/-! ## A346126.P496913123710062712

`A065090(n+1)+A010060(A300689(2*n+1))`
-/

namespace A346126.P496913123710062712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1) + A010060 (A300689 (2 * n + 1)).toNat

end

end A346126.P496913123710062712

/-! ## A346126.P3296666240688934912

`A192002(A342050(2*n+3))+A192002(n+1)`
-/

namespace A346126.P3296666240688934912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192002 (A342050 (2 * n + 3)).toNat + A192002 (n + 1)

end

end A346126.P3296666240688934912

/-! ## A346126.P8077505072096025900

`lt[A316524(A296188(2*n+3)), A219347(2*n)]`
-/

namespace A346126.P8077505072096025900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A296188 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346126.P8077505072096025900

/-! ## A346126.P13194035226046612561

`A104273(A001316(3*n+2))+A004526(3*n+1)`
-/

namespace A346126.P13194035226046612561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104273 (A001316 (3 * n + 2)).toNat + A004526 (3 * n + 1)

end

end A346126.P13194035226046612561

/-!
# A346127: Numbers m such that no self-avoiding walk that can make turns from the set +-Pi/7, +-3*Pi/7, +-5*Pi/7, of length m + 1 fits into the smallest circle that can enclose a walk of length m.

The programs for A346127, there is no canonical definition to state claims against.
-/

/-! ## A346127.P256478560744765176

`eq[A010054(A091177(n+2)), A185284(n)]`
-/

namespace A346127.P256478560744765176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A091177 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346127.P256478560744765176

/-! ## A346127.P13723331064137426767

`eq[A010054(A133677(n+3)), A185284(n)]`
-/

namespace A346127.P13723331064137426767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A133677 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346127.P13723331064137426767

/-! ## A346127.P4208627435955212032

`lt[A279005(n), A279008(2*n)²]`
-/

namespace A346127.P4208627435955212032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279008 (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346127.P4208627435955212032

/-! ## A346127.P16830856887256377033

`lt[A292560(A057611(2*(n+1))), 2*A339369(n)]`
-/

namespace A346127.P16830856887256377033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292560 (A057611 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339369 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346127.P16830856887256377033

/-!
# A346128: Numbers m such that no self-avoiding walk that can make turns from the set 0, +-Pi/4, +-Pi/2, +-3*Pi/4, of length m + 1 fits into the smallest circle that can enclose a walk of length m.

The programs for A346128, there is no canonical definition to state claims against.
-/

/-! ## A346128.P8942337321695228476

`comp[A285509(6*n+4)]+1`
-/

namespace A346128.P8942337321695228476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285509 (6 * n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A346128.P8942337321695228476

/-! ## A346128.P13533463394823912533

`comp[xor(xor(1, n), A243497(2*n))]`
-/

namespace A346128.P13533463394823912533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.xor 1 n : ℤ) (A243497 (2 * n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346128.P13533463394823912533

/-! ## A346128.P3742182845280135628

`∑[∏{p}[A265158(∑[n+1]+2), #]]`
-/

namespace A346128.P3742182845280135628
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265158 (∑ j ∈ Finset.range (n + 1), f3 j + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346128.P3742182845280135628

/-! ## A346128.P5314851715039760435

`comp[A086810(2*(n+3))+comp[2*(n+1)]]`
-/

namespace A346128.P5314851715039760435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (2 * (n + 3)) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346128.P5314851715039760435

/-! ## A346128.P3586031941886077567

`∑[A257800(A329790(2*n+5))+1]`
-/

namespace A346128.P3586031941886077567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257800 (A329790 (2 * n + 5)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346128.P3586031941886077567

/-!
# A346129: Numbers m such that no self-avoiding walk that can make turns from the set +-Pi/9, +-Pi/3, +-5*Pi/9, +-7*Pi/9, of length m + 1 fits into the smallest circle that can enclose a walk of length m.

The programs for A346129, there is no canonical definition to state claims against.
-/

/-! ## A346129.P11403646953807220488

`round(∑[root(n+1, A194051(n+1))])`
-/

namespace A346129.P11403646953807220488
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (A194051 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346129.P11403646953807220488

/-! ## A346129.P12737332290018220478

`comp[∑[A114557(n+1)]-n]+1`
-/

namespace A346129.P12737332290018220478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114557 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A346129.P12737332290018220478

/-! ## A346129.P15087534173894856730

`comp[A364839(2*(n+1))+2*n]`
-/

namespace A346129.P15087534173894856730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364839 (2 * (n + 1)) + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346129.P15087534173894856730

/-! ## A346129.P11579071546726362845

`comp[ceil(n²/2)-A162909(n+1)]`
-/

namespace A346129.P11579071546726362845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉ - A162909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346129.P11579071546726362845

/-! ## A346129.P17630013196211241998

`comp[A241315(2*n+1)+n-2+n]`
-/

namespace A346129.P17630013196211241998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241315 (2 * n + 1) + ((n : ℤ) - 2) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346129.P17630013196211241998

/-!
# A346130: Numbers m such that no self-avoiding walk that can make turns from the set 0, +-Pi/5, +-2*Pi/5, +-3*Pi/5, +-4*Pi/5, of length m + 1 fits into the smallest circle that can enclose a walk of length m.

The programs for A346130, there is no canonical definition to state claims against.
-/

/-! ## A346130.P5719177629840580632

`comp[lcm(A007376(2*n), A207852(n))]`
-/

namespace A346130.P5719177629840580632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007376 (2 * n)) (A207852 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A346130.P5719177629840580632

/-! ## A346130.P17605979788331365796

`comp[A123053(n+1)*A334138(n+1)]`
-/

namespace A346130.P17605979788331365796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123053 (n + 1) * A334138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346130.P17605979788331365796

/-! ## A346130.P8108225286018159105

`∑[gcd(A143898(n+1), A247606(n+1))]`
-/

namespace A346130.P8108225286018159105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143898 (n + 1)) (A247606 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346130.P8108225286018159105

/-! ## A346130.P8665764675002537942

`∑[A188172(A038722(∑{d}[n+1, #]))+1]`
-/

namespace A346130.P8665764675002537942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188172 (A038722 (∑ d ∈ Nat.divisors (f2 n), d)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346130.P8665764675002537942

/-! ## A346130.P15761491565609994335

`lt[A165830(2*n+3), A165978(2*n+1)]`
-/

namespace A346130.P15761491565609994335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165830 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165978 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346130.P15761491565609994335

/-!
# A346131: Numbers m such that no self-avoiding walk that can make turns from the set +-Pi/11, +-3*Pi/11, +-5*Pi/11, +-7*Pi/11, +-9*Pi/11, of length m + 1 fits into the smallest circle that can enclose a walk of length m.

The programs for A346131, there is no canonical definition to state claims against.
-/

/-! ## A346131.P16915719675846574344

`lt[gcd(n, A325698(2*(n+1))), 4]`
-/

namespace A346131.P16915719675846574344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A325698 (2 * (n + 1)))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346131.P16915719675846574344

/-! ## A346131.P17307034364534446867

`A304736(A284725(n+1))+n`
-/

namespace A346131.P17307034364534446867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304736 (A284725 (n + 1)).toNat + (n : ℤ)

end

end A346131.P17307034364534446867

/-! ## A346131.P16108449381468777273

`comp[A341279(A131858(3*n+1))]`
-/

namespace A346131.P16108449381468777273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A131858 (3 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346131.P16108449381468777273

/-! ## A346131.P4324488805469888595

`∪[A140238(n+1), A235933(n+1)]`
-/

namespace A346131.P4324488805469888595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A346131.P4324488805469888595

/-! ## A346131.P17918096738450260041

`∪[3^n, lt[A001281(n), A062399(n)]]`
-/

namespace A346131.P17918096738450260041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062399 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f4 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A346131.P17918096738450260041

/-!
# A346132: Numbers m such that no self-avoiding walk that can make turns from the set 0, +-Pi/6, +-2*Pi/6, +-3*Pi/6, +-4*Pi/6, +-5*Pi/6, of length m + 1 fits into the smallest circle that can enclose a walk of length m.

The programs for A346132, there is no canonical definition to state claims against.
-/

/-! ## A346132.P7974875669439570173

`∑[A037162(A292745(n))]`
-/

namespace A346132.P7974875669439570173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037162 (A292745 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346132.P7974875669439570173

/-! ## A346132.P6820210247573330845

`∑[A062985(A097283(n+1))]`
-/

namespace A346132.P6820210247573330845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062985 (A097283 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346132.P6820210247573330845

/-! ## A346132.P13524843101278714675

`∑[A011973(A184720(n+1))]`
-/

namespace A346132.P13524843101278714675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 (A184720 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346132.P13524843101278714675

/-! ## A346132.P3883986713041477154

`∑[A011793(A208342(n+1))]`
-/

namespace A346132.P3883986713041477154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011793 (A208342 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346132.P3883986713041477154

/-! ## A346132.P17005296944992860440

`∑[A008287(A339399(n+1))]`
-/

namespace A346132.P17005296944992860440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008287 (A339399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346132.P17005296944992860440

/-!
# A346133: Numbers N = A * B such that N (reversed digits) = A (reversed digits) * B (reversed digits). A single-digit number is its own reversal and neither A nor B has a leading zero. No pair (A, B) has both A and B palindromic or simple-digit. The reversed products are not included in the sequence.

The programs for A346133, there is no canonical definition to state claims against.
-/

/-! ## A346133.P13238811482213187813

`∩[A131058(n+1), A346290(n+1)]`
-/

namespace A346133.P13238811482213187813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346133.P13238811482213187813

/-! ## A346133.P11475881895042202157

`∩[A239016(n+1), A346290(n+1)]`
-/

namespace A346133.P11475881895042202157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346133.P11475881895042202157

/-! ## A346133.P6190253131864914182

`∩[A102823(n), A346290(n+1)]`
-/

namespace A346133.P6190253131864914182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102823 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346133.P6190253131864914182

/-! ## A346133.P3020798299737782932

`∩[A102827(n), A346290(n+1)]`
-/

namespace A346133.P3020798299737782932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102827 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346133.P3020798299737782932

/-! ## A346133.P1224131880669077758

`∩[A138234(n), A346290(n+1)]`
-/

namespace A346133.P1224131880669077758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138234 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346133.P1224131880669077758

/-!
# A346134: The sum S of the maximum number of consecutive primes starting with 2 such that S <= prime(n)^2.

The programs for A346134, there is no canonical definition to state claims against.
-/

/-! ## A346134.P8802822284631790146

`p?[round(8*n/7)]²-A037125(p?[round(8*n/7)]²)`
-/

namespace A346134.P8802822284631790146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 - A037125 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2).toNat

end

end A346134.P8802822284631790146

/-! ## A346134.P4110882903338106920

`A007504(A350174(A000040(n+1)²))`
-/

namespace A346134.P4110882903338106920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A350174 (A000040 (n + 1) ^ 2).toNat).toNat

end

end A346134.P4110882903338106920

/-! ## A346134.P13002365433349140320

`A001248(n+1)-A037125(A001248(n+1))`
-/

namespace A346134.P13002365433349140320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A037125 (A001248 (n + 1)).toNat

end

end A346134.P13002365433349140320

/-! ## A346134.P9992958478043885029

`A066872(n+1)-A037125(A066872(n+1))`
-/

namespace A346134.P9992958478043885029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) - A037125 (A066872 (n + 1)).toNat

end

end A346134.P9992958478043885029

/-! ## A346134.P1205490391033083672

`A000040(n+1)²-A037125(Δ[A007504(n)]²)`
-/

namespace A346134.P1205490391033083672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A037125 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A346134.P1205490391033083672

/-!
# A346136: a(n) is the number of iterations that n requires to reach 1 under the map n -> A346063(n).

The programs for A346136, there is no canonical definition to state claims against.
-/

/-! ## A346136.P11740011724498048542

`A303660(∏{e}[A301407(3*n+1), #])`
-/

namespace A346136.P11740011724498048542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301407 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303660 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A346136.P11740011724498048542

/-! ## A346136.P9310896636406688244

`A182850(A304175(n+1)+A046523(n+1))`
-/

namespace A346136.P9310896636406688244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (A304175 (n + 1) + A046523 (n + 1)).toNat

end

end A346136.P9310896636406688244

/-!
# A346137: Numbers k such that k^3 = x^3 + y^3 + z^3, x > y > z >= 0, has at least 2 distinct solutions.

The programs for A346137, there is no canonical definition to state claims against.
-/

/-! ## A346137.P12716655147482961006

`lt[1, A316359(n+1)]+1`
-/

namespace A346137.P12716655147482961006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316359 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A346137.P12716655147482961006

/-! ## A346137.P4213250369844354493

`lt[1, A316359(A028310(n))]`
-/

namespace A346137.P4213250369844354493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316359 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346137.P4213250369844354493

/-! ## A346137.P13438227792462699375

`A065475(lt[1, A316359(n+1)])`
-/

namespace A346137.P13438227792462699375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A346137.P13438227792462699375

/-! ## A346137.P8284291881524371517

`lt[1, A316359(A233583(n+1))]`
-/

namespace A346137.P8284291881524371517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316359 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346137.P8284291881524371517

/-! ## A346137.P18205300597153235526

`lt[1, A316359(A000038(n)+n)]`
-/

namespace A346137.P18205300597153235526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316359 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346137.P18205300597153235526

/-!
# A346139: Numbers k that require fewer than k steps to reach 1 under the 3x+1 map.

The programs for A346139, there is no canonical definition to state claims against.
-/

/-! ## A346139.P13492688632106939573

`comp[lt[n, A006577(n+1)]]+1`
-/

namespace A346139.P13492688632106939573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A346139.P13492688632106939573

/-! ## A346139.P3854868771037792794

`comp[A082984(n+1)-C(2, n²)]`
-/

namespace A346139.P3854868771037792794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082984 (n + 1) - (Nat.choose 2 (n ^ 2) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346139.P3854868771037792794

/-! ## A346139.P401733049065302268

`comp[A082984(n+2)-floor(acot(n)²)]`
-/

namespace A346139.P401733049065302268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082984 (n + 2) - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346139.P401733049065302268

/-! ## A346139.P5953863608270480195

`lt[A352890(A005940(n+1)), n]`
-/

namespace A346139.P5953863608270480195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352890 (A005940 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A346139.P5953863608270480195

/-! ## A346139.P10984692719159730154

`comp[A082984(n+1)-A130706(n)]`
-/

namespace A346139.P10984692719159730154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082984 (n + 1) - A130706 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346139.P10984692719159730154

/-! ## A346139.P76623983629182822

`comp[A082984(n+1)%A000070(n)]`
-/

namespace A346139.P76623983629182822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082984 (n + 1)) (A000070 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346139.P76623983629182822

/-! ## A346139.P4620774495620259359

`lt[A064433(n+1), log(A083706(n))]`
-/

namespace A346139.P4620774495620259359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A083706 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A346139.P4620774495620259359

/-! ## A346139.P2071072043707460842

`eq[char[A082984(n+1)], A094497(n)]`
-/

namespace A346139.P2071072043707460842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082984 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094497 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A346139.P2071072043707460842

/-! ## A346139.P10103198761064846841

`comp[record[(n+1)%A335870(2*(n+1))]%A088900(n+1)]`
-/

namespace A346139.P10103198761064846841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A335870 (2 * (n + 1)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) (A088900 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346139.P10103198761064846841

/-!
# A346140: Numbers m such that there exist positive integers i <= m and j >= m such that m = Sum_{k=i..j} A001065(k), where A001065(k) = sum of the proper divisors of k, and i and j do not both equal m.

The programs for A346140, there is no canonical definition to state claims against.
-/

/-! ## A346140.P8763337559473155562

`lt[A014675(A299607(n+1)), A025142(2*(n+1))]`
-/

namespace A346140.P8763337559473155562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (A299607 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025142 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346140.P8763337559473155562

/-!
# A346142: a(n) is the number of linear orthogonal cellular automata pairs with maximal period 2^2n-1.

The programs for A346142, there is no canonical definition to state claims against.
-/

/-! ## A346142.P12454956663228165263

`A162226(A304940(n))`
-/

namespace A346142.P12454956663228165263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (A304940 n).toNat

end

end A346142.P12454956663228165263

/-! ## A346142.P6804589309563736382

`A162226(∏[A083954(n)])`
-/

namespace A346142.P6804589309563736382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162226 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346142.P6804589309563736382

/-!
# A346143: Number of maximal irredundant sets in the n-triangular grid graph.

The programs for A346143, there is no canonical definition to state claims against.
-/

/-! ## A346143.P8781990145298021832

`A345922(3*n*a(n-3))` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A346143.P8781990145298021832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  A345922 (3 * ((n : ℤ) * a (n - 3))).toNat

end

end A346143.P8781990145298021832

/-!
# A346145: Primes of the form k^2 + 25.

The programs for A346145, the canonical program `A346145.P11009931622025033277` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346145 has offset 1).

The definition of A346145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346145.P11009931622025033277

`p?[n²+25]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346145

/-- `p?[n²+25]` -/
def P11009931622025033277.Spec : Prop :=
  ∀ n, (P11009931622025033277.a n : ℤ) = A346145 (n + 1)

theorem P11009931622025033277.correct : P11009931622025033277.Spec := by
  intro n
  simp only [A346145, Nat.add_sub_cancel]

end A346145

/-! ## A346145.P1227051330341481076

`or(1, p?[n^2+25])`
-/

namespace A346145.P1227051330341481076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A346145.P1227051330341481076

namespace A346145

/-- `or(1, p?[n^2+25])` -/
def P1227051330341481076.Spec : Prop :=
  ∀ n, (P1227051330341481076.a n : ℤ) = A346145 (n + 1)

end A346145

/-! ## A346145.P5438476811061246240

`∏{p}[p?[n*(n+2)+26], #]`
-/

namespace A346145.P5438476811061246240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2) + 26

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A346145.P5438476811061246240

namespace A346145

/-- `∏{p}[p?[n*(n+2)+26], #]` -/
def P5438476811061246240.Spec : Prop :=
  ∀ n, (P5438476811061246240.a n : ℤ) = A346145 (n + 1)

end A346145

/-! ## A346145.P1273549213068235293

`record[A020639((n+2)²+25)]`
-/

namespace A346145.P1273549213068235293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 2) ^ 2 + 25)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346145.P1273549213068235293

namespace A346145

/-- `record[A020639((n+2)²+25)]` -/
def P1273549213068235293.Spec : Prop :=
  ∀ n, P1273549213068235293.a n = A346145 (n + 1)

end A346145

/-! ## A346145.P5456270239408809417

`record[A006530((2*(n+1))²+25)]`
-/

namespace A346145.P5456270239408809417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((2 * (n + 1)) ^ 2 + 25)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346145.P5456270239408809417

namespace A346145

/-- `record[A006530((2*(n+1))²+25)]` -/
def P5456270239408809417.Spec : Prop :=
  ∀ n, P5456270239408809417.a n = A346145 (n + 1)

end A346145

/-!
# A346146: Numbers m such that there are no primes of the form 2^m + 2^k - 1, for 0 < k < m.

The programs for A346146, there is no canonical definition to state claims against.
-/

/-! ## A346146.P8976443912407606095

`lt[A179291(n+1), 2]+1`
-/

namespace A346146.P8976443912407606095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179291 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A346146.P8976443912407606095

/-! ## A346146.P5463244097871638526

`eq[A000007(n), A179291(n+1)]+1`
-/

namespace A346146.P5463244097871638526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A346146.P5463244097871638526

/-! ## A346146.P12763881693430016625

`eq[A036987(n), A179291(n+1)]+1`
-/

namespace A346146.P12763881693430016625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A346146.P12763881693430016625

/-! ## A346146.P15177669105352883610

`eq[A000045(C(2, n²)), A179291(n+1)]+1`
-/

namespace A346146.P15177669105352883610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n ^ 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A346146.P15177669105352883610

/-! ## A346146.P12518871156612564708

`eq[A054144(C(2, n²)), A179291(n+1)]+1`
-/

namespace A346146.P12518871156612564708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054144 (Nat.choose 2 (n ^ 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A346146.P12518871156612564708

/-! ## A346146.P17530237075347790313

`eq[A061199(A014963(n+2)), A179291(n+1)]+1`
-/

namespace A346146.P17530237075347790313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A014963 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A346146.P17530237075347790313

/-!
# A346147: Primes p such that p*p' mod (p+p') and floor(p*p'/(p+p')) are prime, where p' is the next prime after p.

The programs for A346147, there is no canonical definition to state claims against.
-/

/-! ## A346147.P2456638066290631558

`A141246(A275303(n+1))`
-/

namespace A346147.P2456638066290631558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141246 (A275303 (n + 1)).toNat

end

end A346147.P2456638066290631558

/-!
# A346148: Square array read by descending antidiagonals: T(n, k) = mu^n(k) where mu^1(k) = mu(k) = A008683(k) and for each n >= 1, mu^(n+1)(k) is the Dirichlet convolution of mu(k) and mu^n(k).

The programs for A346148, there is no canonical definition to state claims against.
-/

/-! ## A346148.P7450181574612936657

`A130777(n)-A363805(A368984(n))`
-/

namespace A346148.P7450181574612936657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130777 n - A363805 (A368984 n).toNat

end

end A346148.P7450181574612936657

/-! ## A346148.P17760957277895249790

`xor(A057078(A018625(n+1)), A097805(n))`
-/

namespace A346148.P17760957277895249790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057078 (A018625 (n + 1)).toNat) (A097805 n)

end

end A346148.P17760957277895249790

/-!
# A346149: a(n) is the least integer k > 1 such that n^k + n + 1 is prime, or 0 if there is no such k.

The programs for A346149, there is no canonical definition to state claims against.
-/

/-! ## A346149.P7573294929208599619

`A122856(lcm(A002129(2*n+5), A048941(3*n+5)))`
-/

namespace A346149.P7573294929208599619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 (Int.lcm (A002129 (2 * n + 5)) (A048941 (3 * n + 5)))

end

end A346149.P7573294929208599619

/-! ## A346149.P12126658146144920515

`A001842(xor(lcm(2, n)/2, A048630(n+1)))`
-/

namespace A346149.P12126658146144920515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (Int.xor (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)) (A048630 (n + 1))).toNat

end

end A346149.P12126658146144920515

/-! ## A346149.P13370796953805514919

`A001842(xor(n/gcd(2, n), A048630(n+1)))`
-/

namespace A346149.P13370796953805514919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (Int.xor (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 n : ℚ))) (A048630 (n + 1))).toNat

end

end A346149.P13370796953805514919

/-! ## A346149.P1278813456246151670

`A001842(xor(n/(2-n%2), A048630(n+1)))`
-/

namespace A346149.P1278813456246151670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (Int.xor (SequenceMachineLib.roundAway ((n : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ))) (A048630 (n + 1))).toNat

end

end A346149.P1278813456246151670

/-! ## A346149.P5837583942784061667

`A001842(xor(n/(2-and(1, n)), A048630(n+1)))`
-/

namespace A346149.P5837583942784061667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (Int.xor (SequenceMachineLib.roundAway ((n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ))) (A048630 (n + 1))).toNat

end

end A346149.P5837583942784061667

/-!
# A346150: Alternating runs of primes and composites, with the runs of primes being of composite length and the runs of composites being of prime length.

The programs for A346150, there is no canonical definition to state claims against.
-/

/-! ## A346150.P6875090051606056473

`A236675(A138561(n+1))`
-/

namespace A346150.P6875090051606056473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236675 (A138561 (n + 1)).toNat

end

end A346150.P6875090051606056473

/-!
# A346151: a(n) is the smallest integer k > 0 such that 1 - tanh(k) < 10^(-n).

The programs for A346151, there is no canonical definition to state claims against.
-/

/-! ## A346151.P14080582803586447769

`ceil(sqrt(∑[n+2]/22)+n)`
-/

namespace A346151.P14080582803586447769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 22 : ℝ) + (n : ℝ)⌉

end

end A346151.P14080582803586447769

/-! ## A346151.P8729160921798548105

`floor(log(A356698(n+3)))`
-/

namespace A346151.P8729160921798548105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A356698 (n + 3) : ℝ)⌋

end

end A346151.P8729160921798548105

/-! ## A346151.P7857745916776219009

`round(log(A116797(n+2)))`
-/

namespace A346151.P7857745916776219009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A116797 (n + 2) : ℝ))

end

end A346151.P7857745916776219009

/-! ## A346151.P5283428321663749433

`round(log(A116822(n+2)))`
-/

namespace A346151.P5283428321663749433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A116822 (n + 2) : ℝ))

end

end A346151.P5283428321663749433

/-! ## A346151.P16402675140281315070

`comp[10*n-A233473(n)]`
-/

namespace A346151.P16402675140281315070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) - A233473 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A346151.P16402675140281315070

/-! ## A346151.P8291488612028953017

`round(log(A035071(n+1)))-1`
-/

namespace A346151.P8291488612028953017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A035071 (n + 1) : ℝ)) - 1

end

end A346151.P8291488612028953017

/-! ## A346151.P17678624602811433637

`A008620(ceil(n/log(9)))+n`
-/

namespace A346151.P17678624602811433637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 ⌈(n : ℝ) / Real.log (9 : ℝ)⌉.toNat + (n : ℤ)

end

end A346151.P17678624602811433637

/-! ## A346151.P17183831018298474597

`round((A304609(n+1)-9)/99)`
-/

namespace A346151.P17183831018298474597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A304609 (n + 1) - 9 : ℚ) / 99)

end

end A346151.P17183831018298474597

/-! ## A346151.P10988878896231143588

`A002264(ceil(n/log(9)))+1+n`
-/

namespace A346151.P10988878896231143588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ⌈(n : ℝ) / Real.log (9 : ℝ)⌉.toNat + 1 + (n : ℤ)

end

end A346151.P10988878896231143588

/-! ## A346151.P1902718471033645216

`A077168(A002264(ceil(n/log(9))))+n`
-/

namespace A346151.P1902718471033645216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A002264 ⌈(n : ℝ) / Real.log (9 : ℝ)⌉.toNat).toNat + (n : ℤ)

end

end A346151.P1902718471033645216

/-!
# A346152: a(n) is the least prime divisor p_j of n such that if n = Product_{i=1..k} p_i^e_i and p_1 < p_2 < ... < p_k, then Product_{i=1..j-1} p_i^e_i <= sqrt(n) < Product_{i=j..k} p_i^e_i. a(1) = 1.

The programs for A346152, the canonical program `A346152.P18238004036830526411` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346152 has offset 1).

The definition of A346152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346152.P18238004036830526411

`A217581(((n+1)/A217581(n+1))²)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A346152

/-- `A217581(((n+1)/A217581(n+1))²)` -/
def P18238004036830526411.Spec : Prop :=
  ∀ n, P18238004036830526411.a n = A346152 (n + 1)

theorem P18238004036830526411.correct : P18238004036830526411.Spec := by
  intro n
  simp only [A346152, Nat.add_sub_cancel]

end A346152

/-! ## A346152.P11512189815401020804

`A217581(A020338(n+1)/A217581(n+1))`
-/

namespace A346152.P11512189815401020804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (SequenceMachineLib.roundAway ((A020338 (n + 1) : ℚ) / (A217581 (n + 1) : ℚ))).toNat

end

end A346152.P11512189815401020804

namespace A346152

/-- `A217581(A020338(n+1)/A217581(n+1))` -/
def P11512189815401020804.Spec : Prop :=
  ∀ n, P11512189815401020804.a n = A346152 (n + 1)

end A346152

/-! ## A346152.P15311062477183618596

`A006530(A354933(n+1)%A236710(n+1))`
-/

namespace A346152.P15311062477183618596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A354933 (n + 1)) (A236710 (n + 1))).toNat

end

end A346152.P15311062477183618596

namespace A346152

/-- `A006530(A354933(n+1)%A236710(n+1))` -/
def P15311062477183618596.Spec : Prop :=
  ∀ n, P15311062477183618596.a n = A346152 (n + 1)

end A346152

/-! ## A346152.P12296057851747009786

`A217581(2*A354933((n+1)²))`
-/

namespace A346152.P12296057851747009786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (2 * A354933 ((n + 1) ^ 2)).toNat

end

end A346152.P12296057851747009786

namespace A346152

/-- `A217581(2*A354933((n+1)²))` -/
def P12296057851747009786.Spec : Prop :=
  ∀ n, P12296057851747009786.a n = A346152 (n + 1)

end A346152

/-! ## A346152.P637989725864490696

`A006530(A354933(n+1)^A194334(n+1))`
-/

namespace A346152.P637989725864490696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A354933 (n + 1) : ℚ) ^ (A194334 (n + 1) : ℤ))).toNat

end

end A346152.P637989725864490696

namespace A346152

/-- `A006530(A354933(n+1)^A194334(n+1))` -/
def P637989725864490696.Spec : Prop :=
  ∀ n, P637989725864490696.a n = A346152 (n + 1)

end A346152

/-! ## A346152.P15811006629632586688

`A006530(A354933(n+1))%A218056(2*(n+1))`
-/

namespace A346152.P15811006629632586688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A354933 (n + 1)).toNat) (A218056 (2 * (n + 1)))

end

end A346152.P15811006629632586688

namespace A346152

/-- `A006530(A354933(n+1))%A218056(2*(n+1))` -/
def P15811006629632586688.Spec : Prop :=
  ∀ n, P15811006629632586688.a n = A346152 (n + 1)

end A346152

/-!
# A346153: a(n) = A346152(n!).

The programs for A346153, there is no canonical definition to state claims against.
-/

/-! ## A346153.P6539741346157383346

`A196169(A196169(or(n, A075635(n+1))))`
-/

namespace A346153.P6539741346157383346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196169 (A196169 (Int.lor (n : ℤ) (A075635 (n + 1))).toNat).toNat

end

end A346153.P6539741346157383346

/-! ## A346153.P7290624525742640400

`or(A235224(A005496(n)), A267870(n))`
-/

namespace A346153.P7290624525742640400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A235224 (A005496 n).toNat) (A267870 n)

end

end A346153.P7290624525742640400

/-!
# A346155: Partial sums of A007978.

The programs for A346155, there is no canonical definition to state claims against.
-/

/-! ## A346155.P12347498065279994193

`∑[A007978(n+1)]`
-/

namespace A346155.P12347498065279994193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346155.P12347498065279994193

/-! ## A346155.P10526801320481839405

`∑[A055874(n+1)+1]`
-/

namespace A346155.P10526801320481839405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346155.P10526801320481839405

/-! ## A346155.P14185874145864987335

`∑[A346563(n+1)-(n+1)]`
-/

namespace A346155.P14185874145864987335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346563 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346155.P14185874145864987335

/-! ## A346155.P15395003770261138386

`∑[A053669(n+1)-A061853(n+1)]`
-/

namespace A346155.P15395003770261138386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) - A061853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346155.P15395003770261138386

/-! ## A346155.P13470524690449725651

`∑[sqrt(A089090(n+1))-A061853(n+1)]`
-/

namespace A346155.P13470524690449725651
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A089090 (n + 1) : ℝ) - (A061853 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346155.P13470524690449725651

/-! ## A346155.P4458633469152138902

`A007978(n*A318829(n+1)+1)+a(n-1)` with `a(0)=2`
-/

namespace A346155.P4458633469152138902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A007978 ((n : ℤ) * A318829 (n + 1) + 1).toNat + a (n - 1)

end

end A346155.P4458633469152138902

/-! ## A346155.P10977994205245111924

`∑[A055881((n+1)*A052126(n+1))+1]`
-/

namespace A346155.P10977994205245111924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 ((n + 1 : ℤ) * A052126 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346155.P10977994205245111924

/-! ## A346155.P4559045326135634561

`∑[A337686(∑[n+1]-A004526(n+1))]`
-/

namespace A346155.P4559045326135634561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337686 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A004526 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346155.P4559045326135634561

/-! ## A346155.P13921830384245201925

`∑[A398062(∑[n+1])]`
-/

namespace A346155.P13921830384245201925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398062 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346155.P13921830384245201925

/-! ## A346155.P14373245350478881910

`∑[A055881((n+1)²)+1]`
-/

namespace A346155.P14373245350478881910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346155.P14373245350478881910

/-! ## A346155.P4487161456740251324

`∑[A230403((n+1)²)+2]`
-/

namespace A346155.P4487161456740251324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 ((n + 1) ^ 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346155.P4487161456740251324

/-!
# A346156: Primes of the form x^k+x+1 where k >= 2 and x >= 1.

The programs for A346156, there is no canonical definition to state claims against.
-/

/-! ## A346156.P7253681585031020004

`p?[A253913(n+1)+1]`
-/

namespace A346156.P7253681585031020004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253913 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346156.P7253681585031020004

/-! ## A346156.P14918614588182431211

`record[A006530(A253913(n+2)+1)]`
-/

namespace A346156.P14918614588182431211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A253913 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346156.P14918614588182431211

/-! ## A346156.P13424092793874360943

`record[A020639(A253913(n+2)+1)]`
-/

namespace A346156.P13424092793874360943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A253913 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346156.P13424092793874360943

/-! ## A346156.P11802341863061381913

`∩[A000040(n+1), A253913(n+1)+1]`
-/

namespace A346156.P11802341863061381913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253913 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346156.P11802341863061381913

/-! ## A346156.P2348304581047024604

`p?[A141310(A253913(n+1))]`
-/

namespace A346156.P2348304581047024604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A253913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346156.P2348304581047024604

/-!
# A346157: Total number of left-to-right maxima in Dyck paths of semilength n.

The programs for A346157, there is no canonical definition to state claims against.
-/

/-! ## A346157.P9987499631477404099

`A054899(record[A001335(n)])`
-/

namespace A346157.P9987499631477404099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346157.P9987499631477404099

/-! ## A346157.P11475295290651906853

`A054899(A001335(n+2))`
-/

namespace A346157.P11475295290651906853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A001335 (n + 2)).toNat

end

end A346157.P11475295290651906853

/-! ## A346157.P15372933402664280837

`A002265(ceil(sqrt(A002295(n+1)))+1)`
-/

namespace A346157.P15372933402664280837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (⌈Real.sqrt (A002295 (n + 1) : ℝ)⌉ + 1).toNat

end

end A346157.P15372933402664280837

/-! ## A346157.P18135121465891684098

`A033190(n)-A008618(Δ[3^n]-1)`
-/

namespace A346157.P18135121465891684098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033190 n - A008618 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat

end

end A346157.P18135121465891684098

/-!
# A346158: Total number of weak left-to-right maxima in Dyck paths of semilength n.

The programs for A346158, there is no canonical definition to state claims against.
-/

/-! ## A346158.P5136685100245791188

`A194247(A393488(n+1))`
-/

namespace A346158.P5136685100245791188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194247 (A393488 (n + 1)).toNat

end

end A346158.P5136685100245791188

/-! ## A346158.P16135930964594295344

`∑[∑[A278026(A205406(n+1))]]`
-/

namespace A346158.P16135930964594295344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278026 (A205406 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346158.P16135930964594295344

/-! ## A346158.P15794335009183720359

`∑[A078483(n)%A196849(n+1)]`
-/

namespace A346158.P15794335009183720359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078483 n) (A196849 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346158.P15794335009183720359

/-! ## A346158.P6549036160582033988

`A002265(A294012(n)+A149891(n))`
-/

namespace A346158.P6549036160582033988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A294012 (n + 10) + A149891 n).toNat

end

end A346158.P6549036160582033988

/-!
# A346161: Prime numbers p such that the number of iterations of map A039634 required for p to reach 2 sets a new record.

The programs for A346161, there is no canonical definition to state claims against.
-/

/-! ## A346161.P4441321160955338183

`A223934(A084403(n+1))`
-/

namespace A346161.P4441321160955338183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223934 (A084403 (n + 1)).toNat

end

end A346161.P4441321160955338183

/-! ## A346161.P15018741904451302484

`A233583(∏[A036013(n+1)])`
-/

namespace A346161.P15018741904451302484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346161.P15018741904451302484

/-! ## A346161.P10978986203095742513

`A233583(∏[A152271(n)+1])`
-/

namespace A346161.P10978986203095742513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346161.P10978986203095742513

/-!
# A346164: Number of n X n matrices over GF(2) whose characteristic polynomial is squarefree.

The programs for A346164, there is no canonical definition to state claims against.
-/

/-! ## A346164.P109747445211065922

`A328203(∏[∏[(or(2, n)+n)/2]])`
-/

namespace A346164.P109747445211065922
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n + n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328203 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A346164.P109747445211065922

/-!
# A346165: Number of n X n invertible matrices whose characteristic polynomial is squarefree.

The programs for A346165, there is no canonical definition to state claims against.
-/

/-! ## A346165.P14822061543038923433

`A346164(n)-C(2^n, 2)*a(n-1)` with `a(0)=1`
-/

namespace A346165.P14822061543038923433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A346164 n - (Nat.choose (2 ^ n) 2 : ℤ) * a (n - 1)

end

end A346165.P14822061543038923433

/-! ## A346165.P13944339691512448156

`A346164(n)-a(n-1)*A006516(n)` with `a(0)=1`
-/

namespace A346165.P13944339691512448156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A346164 n - a (n - 1) * A006516 n

end

end A346165.P13944339691512448156

/-! ## A346165.P13935086007184404262

`A346164(n)-a(n-1)*A007179(2*n)` with `a(0)=1`
-/

namespace A346165.P13935086007184404262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A346164 n - a (n - 1) * A007179 (2 * n)

end

end A346165.P13935086007184404262

/-! ## A346165.P6803085598420520183

`A346164(n)-a(n-1)*A137173(2*n)` with `a(0)=1`
-/

namespace A346165.P6803085598420520183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A346164 n - a (n - 1) * A137173 (2 * n)

end

end A346165.P6803085598420520183

/-!
# A346166: a(n) is the smallest integer k >= 0 such that cosh(k) > 10^(n^2).

The programs for A346166, there is no canonical definition to state claims against.
-/

/-! ## A346166.P17547568766358359864

`A177849(10*A022281(n))`
-/

namespace A346166.P17547568766358359864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (10 * A022281 n).toNat

end

end A346166.P17547568766358359864

/-! ## A346166.P9489578166140095225

`A194979((9*n-7*A051022(n))²+1)`
-/

namespace A346166.P9489578166140095225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (((9 * n : ℤ) - 7 * A051022 n) ^ 2 + 1).toNat

end

end A346166.P9489578166140095225

/-! ## A346166.P8687875540204338476

`A172471(A229146(n)+A018176(n))`
-/

namespace A346166.P8687875540204338476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A229146 n + A018176 n).toNat

end

end A346166.P8687875540204338476

/-! ## A346166.P8494100028231405293

`A110592(A188492(n))+A002620(3*n)`
-/

namespace A346166.P8494100028231405293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A188492 n).toNat + A002620 (3 * n)

end

end A346166.P8494100028231405293

/-! ## A346166.P16517747307063782884

`A172471(A018176(n)-(n-A229146(n)))`
-/

namespace A346166.P16517747307063782884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A018176 n - ((n : ℤ) - A229146 n)).toNat

end

end A346166.P16517747307063782884

/-!
# A346167: Primes p such that p*p! + 1 is also prime.

The programs for A346167, there is no canonical definition to state claims against.
-/

/-! ## A346167.P8714240662089274555

`p?[A090703(n+1)]`
-/

namespace A346167.P8714240662089274555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346167.P8714240662089274555

/-! ## A346167.P6316025633307846346

`p?[A049432(n+1)-1]`
-/

namespace A346167.P6316025633307846346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049432 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346167.P6316025633307846346

/-! ## A346167.P5269022076154589784

`p?[record[A090703(A065648(n))]]`
-/

namespace A346167.P5269022076154589784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090703 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346167.P5269022076154589784

/-! ## A346167.P14662101331382396303

`p?[record[A090703(A117910(n))]]`
-/

namespace A346167.P14662101331382396303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090703 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346167.P14662101331382396303

/-! ## A346167.P15376501862747431933

`filter[A090703(n+1), A010051(#)]`
-/

namespace A346167.P15376501862747431933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A346167.P15376501862747431933

/-!
# A346168: Primes p such that p*p! - 1 is prime.

The programs for A346168, there is no canonical definition to state claims against.
-/

/-! ## A346168.P1493921839452015916

`p?[A090704(n+1)]`
-/

namespace A346168.P1493921839452015916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346168.P1493921839452015916

/-! ## A346168.P13127319411591109075

`p?[A049433(n+1)-1]`
-/

namespace A346168.P13127319411591109075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049433 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A346168.P13127319411591109075

/-! ## A346168.P3966151712063733194

`filter[A090704(n+1), A010051(#)]`
-/

namespace A346168.P3966151712063733194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A346168.P3966151712063733194

/-! ## A346168.P10980412549448215460

`filter[A090704(n+1), A080339(#)]`
-/

namespace A346168.P10980412549448215460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A346168.P10980412549448215460

/-!
# A346169: a(n) = floor(cosh(n+1) - cosh(n)).

The programs for A346169, the canonical program `A346169.P18143324603818119222` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346169 has offset 0).

The definition of A346169 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(cosh(n+1)-cosh(n))` (program `A346169.P18143324603818119222`, by `A346169.P18143324603818119222.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A346169.P18143324603818119222

`floor(cosh(n+1)-cosh(n))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346169

/-- `floor(cosh(n+1)-cosh(n))` -/
def P18143324603818119222.Spec : Prop :=
  ∀ n, P18143324603818119222.a n = A346169 n

theorem P18143324603818119222.correct : P18143324603818119222.Spec := by
  intro n
  simp only [A346169]

end A346169

/-! ## A346169.P12558150225952225648

`floor(Δ[exp(n)/2])`
-/

namespace A346169.P12558150225952225648
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (n : ℝ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A346169.P12558150225952225648

namespace A346169

/-- `floor(Δ[exp(n)/2])` -/
def P12558150225952225648.Spec : Prop :=
  ∀ n, P12558150225952225648.a n = A346169 n

end A346169

/-! ## A346169.P321256407774397440

`abs(floor(Δ[cosh(n)]))`
-/

namespace A346169.P321256407774397440
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊f1 (n + 1) - f1 n⌋|

end

end A346169.P321256407774397440

namespace A346169

/-- `abs(floor(Δ[cosh(n)]))` -/
def P321256407774397440.Spec : Prop :=
  ∀ n, P321256407774397440.a n = A346169 n

end A346169

/-! ## A346169.P7813358341411745058

`ceil(Δ[cosh(n)])-1`
-/

namespace A346169.P7813358341411745058
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉ - 1

end

end A346169.P7813358341411745058

namespace A346169

/-- `ceil(Δ[cosh(n)])-1` -/
def P7813358341411745058.Spec : Prop :=
  ∀ n, P7813358341411745058.a n = A346169 n

end A346169

/-! ## A346169.P15663540157780552266

`abs(ceil(Δ[-cosh(n)]))`
-/

namespace A346169.P15663540157780552266
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -Real.cosh (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈f1 (n + 1) - f1 n⌉|

end

end A346169.P15663540157780552266

namespace A346169

/-- `abs(ceil(Δ[-cosh(n)]))` -/
def P15663540157780552266.Spec : Prop :=
  ∀ n, P15663540157780552266.a n = A346169 n

end A346169

/-! ## A346169.P6821023491045425278

`-ceil(Δ[-cosh(n)])`
-/

namespace A346169.P6821023491045425278
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -Real.cosh (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈f1 (n + 1) - f1 n⌉

end

end A346169.P6821023491045425278

namespace A346169

/-- `-ceil(Δ[-cosh(n)])` -/
def P6821023491045425278.Spec : Prop :=
  ∀ n, P6821023491045425278.a n = A346169 n

end A346169

/-! ## A346169.P689185039855147114

`ceil(cosh(n+1)-(cosh(n)+1))`
-/

namespace A346169.P689185039855147114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (n + 1 : ℝ) - (Real.cosh (n : ℝ) + 1)⌉

end

end A346169.P689185039855147114

namespace A346169

/-- `ceil(cosh(n+1)-(cosh(n)+1))` -/
def P689185039855147114.Spec : Prop :=
  ∀ n, P689185039855147114.a n = A346169 n

end A346169

/-!
# A346174: Inverse binomial transform of A317614.

The programs for A346174, the canonical program `A346174.P3717322679535396033` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346174 has offset 0).

The definition of A346174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346174.P3717322679535396033

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=30, a(4)=120, a(5)=420`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346174

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P3717322679535396033.Spec : Prop :=
  ∀ n, P3717322679535396033.a n = A346174 n

theorem P3717322679535396033.correct : P3717322679535396033.Spec := by
  intro n
  simp only [A346174]

end A346174

/-! ## A346174.P1617733965548500159

`ceil(n*2^(n-3)*∑[n+1])`
-/

namespace A346174.P1617733965548500159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌉

end

end A346174.P1617733965548500159

namespace A346174

/-- `ceil(n*2^(n-3)*∑[n+1])` -/
def P1617733965548500159.Spec : Prop :=
  ∀ n, P1617733965548500159.a n = A346174 n

end A346174

/-! ## A346174.P323146703808987174

`round(n*2^(n-3)*C(n+2, 2))`
-/

namespace A346174.P323146703808987174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) * (Nat.choose (n + 2) 2 : ℚ))

end

end A346174.P323146703808987174

namespace A346174

/-- `round(n*2^(n-3)*C(n+2, 2))` -/
def P323146703808987174.Spec : Prop :=
  ∀ n, P323146703808987174.a n = A346174 n

end A346174

/-! ## A346174.P4614311861134997397

`∑[n]*Δ[A049610(n)]`
-/

namespace A346174.P4614311861134997397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (f2 (n + 1) - f2 n)

end

end A346174.P4614311861134997397

namespace A346174

/-- `∑[n]*Δ[A049610(n)]` -/
def P4614311861134997397.Spec : Prop :=
  ∀ n, P4614311861134997397.a n = A346174 n

end A346174

/-! ## A346174.P12353374786003909314

`∑[n]*A045623(abs(1-n))`
-/

namespace A346174.P12353374786003909314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A045623 |1 - (n : ℤ)|.toNat

end

end A346174.P12353374786003909314

namespace A346174

/-- `∑[n]*A045623(abs(1-n))` -/
def P12353374786003909314.Spec : Prop :=
  ∀ n, P12353374786003909314.a n = A346174 n

end A346174

/-! ## A346174.P7603651027171163350

`∑[n]*∑[round(A045623(n)/4)]`
-/

namespace A346174.P7603651027171163350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A045623 n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A346174.P7603651027171163350

namespace A346174

/-- `∑[n]*∑[round(A045623(n)/4)]` -/
def P7603651027171163350.Spec : Prop :=
  ∀ n, P7603651027171163350.a n = A346174 n

end A346174

/-! ## A346174.P9091631291980418936

`Δ[A049610(n)]*A000217(n)`
-/

namespace A346174.P9091631291980418936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000217 n

end

end A346174.P9091631291980418936

namespace A346174

/-- `Δ[A049610(n)]*A000217(n)` -/
def P9091631291980418936.Spec : Prop :=
  ∀ n, P9091631291980418936.a n = A346174 n

end A346174

/-! ## A346174.P1199422116685894740

`(A045891(n)-A034008(n))*∑[n]`
-/

namespace A346174.P1199422116685894740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A045891 n - A034008 n) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A346174.P1199422116685894740

namespace A346174

/-- `(A045891(n)-A034008(n))*∑[n]` -/
def P1199422116685894740.Spec : Prop :=
  ∀ n, P1199422116685894740.a n = A346174 n

end A346174

/-! ## A346174.P12335336097246322643

`floor((∑[∑[3*n]]*A011782(n)+2)/4)`
-/

namespace A346174.P12335336097246322643
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A011782 n + 2 : ℚ) / 4⌋

end

end A346174.P12335336097246322643

namespace A346174

/-- `floor((∑[∑[3*n]]*A011782(n)+2)/4)` -/
def P12335336097246322643.Spec : Prop :=
  ∀ n, P12335336097246322643.a n = A346174 n

end A346174

/-! ## A346174.P14443368105801714732

`A000217(n)*A105306(A000217(n)+2)`
-/

namespace A346174.P14443368105801714732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A105306 (A000217 n + 2).toNat

end

end A346174.P14443368105801714732

namespace A346174

/-- `A000217(n)*A105306(A000217(n)+2)` -/
def P14443368105801714732.Spec : Prop :=
  ∀ n, P14443368105801714732.a n = A346174 n

end A346174

/-! ## A346174.P17539215210514710656

`A000217(n)*A201780(A000217(n)+1)`
-/

namespace A346174.P17539215210514710656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A201780 (A000217 n + 1).toNat

end

end A346174.P17539215210514710656

namespace A346174

/-- `A000217(n)*A201780(A000217(n)+1)` -/
def P17539215210514710656.Spec : Prop :=
  ∀ n, P17539215210514710656.a n = A346174 n

end A346174

/-!
# A346175: a(0)=0. If a(n) is a novel term, a(n+1)=a(a(n)). If a(n) has appeared before, a(n+1)=number of prior terms equal to a(n).

The programs for A346175, there is no canonical definition to state claims against.
-/

/-! ## A346175.P5753316232128808233

`A372196(n+1)-1`
-/

namespace A346175.P5753316232128808233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372196 (n + 1) - 1

end

end A346175.P5753316232128808233

/-! ## A346175.P4430260977898923050

`A070198(n)%A372196(n+1)`
-/

namespace A346175.P4430260977898923050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A372196 (n + 1))

end

end A346175.P4430260977898923050

/-! ## A346175.P1130218264719595684

`A198277(n)%A372196(n+1)`
-/

namespace A346175.P1130218264719595684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A372196 (n + 1))

end

end A346175.P1130218264719595684

/-! ## A346175.P831915272293950055

`A030494(n+1)%A372196(n+1)`
-/

namespace A346175.P831915272293950055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A372196 (n + 1))

end

end A346175.P831915272293950055

/-! ## A346175.P11333572120966237059

`A072828(n+1)%A372196(n+1)`
-/

namespace A346175.P11333572120966237059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A372196 (n + 1))

end

end A346175.P11333572120966237059

/-! ## A346175.P7194217339735897997

`A079782(n+1)%A372196(n+1)`
-/

namespace A346175.P7194217339735897997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A372196 (n + 1))

end

end A346175.P7194217339735897997

/-! ## A346175.P17244061180021298583

`A083685(n+1)%A372196(n+1)`
-/

namespace A346175.P17244061180021298583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A372196 (n + 1))

end

end A346175.P17244061180021298583

/-! ## A346175.P10930771293951048322

`A083800(n+1)%A372196(n+1)`
-/

namespace A346175.P10930771293951048322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A372196 (n + 1))

end

end A346175.P10930771293951048322

/-! ## A346175.P14207312642203791836

`A121934(n+1)%A372196(n+1)`
-/

namespace A346175.P14207312642203791836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A372196 (n + 1))

end

end A346175.P14207312642203791836

/-! ## A346175.P7223335753645568073

`A218862(n)%A372196(n+1)`
-/

namespace A346175.P7223335753645568073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218862 n) (A372196 (n + 1))

end

end A346175.P7223335753645568073

/-!
# A346178: Expansion of (1-2*x)/(1-10*x).

The programs for A346178, the canonical program `A346178.P3119445699311968599` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346178 has offset 0).

The definition of A346178 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1-10x))` (program `A346178.P3119445699311968599`, by `A346178.P3119445699311968599.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A346178.P3119445699311968599

`ogf((1-2x)/(1-10x))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346178

/-- `ogf((1-2x)/(1-10x))` -/
def P3119445699311968599.Spec : Prop :=
  ∀ n, P3119445699311968599.a n = A346178 n

theorem P3119445699311968599.correct : P3119445699311968599.Spec := by
  intro n
  simp only [A346178]

end A346178

/-! ## A346178.P7219220169824681617

`10*a(n-1)` with `a(0)=1, a(1)=8`
-/

namespace A346178.P7219220169824681617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  10 * a (n - 1)

end

end A346178.P7219220169824681617

namespace A346178

/-- `10*a(n-1)` -/
def P7219220169824681617.Spec : Prop :=
  ∀ n, (P7219220169824681617.a n : ℤ) = A346178 n

end A346178

/-! ## A346178.P8295382849465424122

`ceil(8*10^(n-1))`
-/

namespace A346178.P8295382849465424122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈8 * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A346178.P8295382849465424122

namespace A346178

/-- `ceil(8*10^(n-1))` -/
def P8295382849465424122.Spec : Prop :=
  ∀ n, P8295382849465424122.a n = A346178 n

end A346178

/-! ## A346178.P10275713563156694487

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=8, a(2)=10`
-/

namespace A346178.P10275713563156694487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 10] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A346178.P10275713563156694487

namespace A346178

/-- `abs(∏[-a(n-1)])` -/
def P10275713563156694487.Spec : Prop :=
  ∀ n, P10275713563156694487.a n = A346178 n

end A346178

/-! ## A346178.P8828093674138721307

`4/(ceil(sin(n)²)+4)*10^n`
-/

namespace A346178.P8828093674138721307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (⌈Real.sin (n : ℝ) ^ 2⌉ + 4 : ℚ) * (10 ^ n : ℚ)

end

end A346178.P8828093674138721307

namespace A346178

/-- `4/(ceil(sin(n)²)+4)*10^n` -/
def P8828093674138721307.Spec : Prop :=
  ∀ n, P8828093674138721307.a n = (A346178 n : ℚ)

end A346178

/-! ## A346178.P4521546681694817766

`2^n*A005054(n)`
-/

namespace A346178.P4521546681694817766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A005054 n

end

end A346178.P4521546681694817766

namespace A346178

/-- `2^n*A005054(n)` -/
def P4521546681694817766.Spec : Prop :=
  ∀ n, P4521546681694817766.a n = A346178 n

end A346178

/-! ## A346178.P632723849183303760

`abs(10*a(A023443(n)))` with `a(0)=1, a(1)=8`
-/

namespace A346178.P632723849183303760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  10 * a (A023443 n).toNat

end

end A346178.P632723849183303760

namespace A346178

/-- `abs(10*a(A023443(n)))` -/
def P632723849183303760.Spec : Prop :=
  ∀ n, (P632723849183303760.a n : ℤ) = A346178 n

end A346178

/-! ## A346178.P6665357313508188560

`round(2^(n-1)*A128625(n))`
-/

namespace A346178.P6665357313508188560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A128625 n : ℚ))

end

end A346178.P6665357313508188560

namespace A346178

/-- `round(2^(n-1)*A128625(n))` -/
def P6665357313508188560.Spec : Prop :=
  ∀ n, P6665357313508188560.a n = A346178 n

end A346178

/-! ## A346178.P8459737707586316732

`A004655(4*n-ceil(sin(n)²))`
-/

namespace A346178.P8459737707586316732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004655 ((4 * n : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A346178.P8459737707586316732

namespace A346178

/-- `A004655(4*n-ceil(sin(n)²))` -/
def P8459737707586316732.Spec : Prop :=
  ∀ n, P8459737707586316732.a n = A346178 n

end A346178

/-! ## A346178.P11548565017049944906

`(A000038(n)+8)*10^(n-1)`
-/

namespace A346178.P11548565017049944906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n + 8 : ℚ) * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A346178.P11548565017049944906

namespace A346178

/-- `(A000038(n)+8)*10^(n-1)` -/
def P11548565017049944906.Spec : Prop :=
  ∀ n, P11548565017049944906.a n = (A346178 n : ℚ)

end A346178

/-! ## A346178.P11267386740829647465

`A180412(A022144(n))`
-/

namespace A346178.P11267386740829647465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180412 (A022144 n).toNat

end

end A346178.P11267386740829647465

namespace A346178

/-- `A180412(A022144(n))` -/
def P11267386740829647465.Spec : Prop :=
  ∀ n, P11267386740829647465.a n = A346178 n

end A346178

/-! ## A346178.P10943604670004905051

`A011782(n)*A128625(n)`
-/

namespace A346178.P10943604670004905051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A128625 n

end

end A346178.P10943604670004905051

namespace A346178

/-- `A011782(n)*A128625(n)` -/
def P10943604670004905051.Spec : Prop :=
  ∀ n, P10943604670004905051.a n = A346178 n

end A346178

/-! ## A346178.P17198661414287140262

`∑[A055996(n)]-A178501(n)`
-/

namespace A346178.P17198661414287140262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178501 n

end

end A346178.P17198661414287140262

namespace A346178

/-- `∑[A055996(n)]-A178501(n)` -/
def P17198661414287140262.Spec : Prop :=
  ∀ n, P17198661414287140262.a n = A346178 n

end A346178

/-! ## A346178.P3177856305592384564

`A004655(A130824(2*n)/2)`
-/

namespace A346178.P3177856305592384564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004655 (SequenceMachineLib.roundAway ((A130824 (2 * n) : ℚ) / 2)).toNat

end

end A346178.P3177856305592384564

namespace A346178

/-- `A004655(A130824(2*n)/2)` -/
def P3177856305592384564.Spec : Prop :=
  ∀ n, P3177856305592384564.a n = A346178 n

end A346178

/-! ## A346178.P13678153484092331527

`A005054(n)*A011782(n+1)`
-/

namespace A346178.P13678153484092331527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n * A011782 (n + 1)

end

end A346178.P13678153484092331527

namespace A346178

/-- `A005054(n)*A011782(n+1)` -/
def P13678153484092331527.Spec : Prop :=
  ∀ n, P13678153484092331527.a n = A346178 n

end A346178

/-! ## A346178.P14556249167494682699

`A005054(n)*A131577(n+1)`
-/

namespace A346178.P14556249167494682699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n * A131577 (n + 1)

end

end A346178.P14556249167494682699

namespace A346178

/-- `A005054(n)*A131577(n+1)` -/
def P14556249167494682699.Spec : Prop :=
  ∀ n, P14556249167494682699.a n = A346178 n

end A346178

/-! ## A346178.P6255517819820462603

`A011557(n)-2*A178501(n)`
-/

namespace A346178.P6255517819820462603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n - 2 * A178501 n

end

end A346178.P6255517819820462603

namespace A346178

/-- `A011557(n)-2*A178501(n)` -/
def P6255517819820462603.Spec : Prop :=
  ∀ n, P6255517819820462603.a n = A346178 n

end A346178

/-! ## A346178.P14237713439730076459

`A000079(n)*A026395(2*n)`
-/

namespace A346178.P14237713439730076459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A026395 (2 * n)

end

end A346178.P14237713439730076459

namespace A346178

/-- `A000079(n)*A026395(2*n)` -/
def P14237713439730076459.Spec : Prop :=
  ∀ n, P14237713439730076459.a n = A346178 n

end A346178

/-! ## A346178.P2916270857061085217

`gcd(2, A090019(n))*A093141(n)`
-/

namespace A346178.P2916270857061085217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A090019 n) : ℤ) * A093141 n

end

end A346178.P2916270857061085217

namespace A346178

/-- `gcd(2, A090019(n))*A093141(n)` -/
def P2916270857061085217.Spec : Prop :=
  ∀ n, P2916270857061085217.a n = A346178 n

end A346178

/-! ## A346178.P344435140903548001

`A178501(n+1)-2*A178501(n)`
-/

namespace A346178.P344435140903548001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (n + 1) - 2 * A178501 n

end

end A346178.P344435140903548001

namespace A346178

/-- `A178501(n+1)-2*A178501(n)` -/
def P344435140903548001.Spec : Prop :=
  ∀ n, P344435140903548001.a n = A346178 n

end A346178

/-!
# A346180: a(n) = prime(n) + n if n is prime, a(n) = prime(n) otherwise.

The programs for A346180, the canonical program `A346180.P6210635577582370619` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346180 has offset 1).

The definition of A346180 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061397, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A346180.P6210635577582370619

`A000040(n+1)+A061397(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A346180

/-- `A000040(n+1)+A061397(n+1)` -/
def P6210635577582370619.Spec : Prop :=
  ∀ n, P6210635577582370619.a n = A346180 (n + 1)

theorem P6210635577582370619.correct : P6210635577582370619.Spec := by
  intro n
  simp only [A346180, Nat.add_sub_cancel]

end A346180

/-! ## A346180.P3499982840244514538

`A061397(n+1)+Δ[A007504(n)]`
-/

namespace A346180.P3499982840244514538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) + (f1 (n + 1) - f1 n)

end

end A346180.P3499982840244514538

namespace A346180

/-- `A061397(n+1)+Δ[A007504(n)]` -/
def P3499982840244514538.Spec : Prop :=
  ∀ n, P3499982840244514538.a n = A346180 (n + 1)

end A346180

/-! ## A346180.P1857899408815407605

`A143545(n+1)+A014689(n+1)`
-/

namespace A346180.P1857899408815407605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143545 (n + 1) + A014689 (n + 1)

end

end A346180.P1857899408815407605

namespace A346180

/-- `A143545(n+1)+A014689(n+1)` -/
def P1857899408815407605.Spec : Prop :=
  ∀ n, P1857899408815407605.a n = A346180 (n + 1)

theorem P1857899408815407605.correct : P1857899408815407605.Spec := by
  intro n
  simp only [A346180, Nat.add_sub_cancel, A346180.P1857899408815407605.a, A346180.P6210635577582370619.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P3456970834266250440.a, A061397, A061397.P17730824645895443051.a, A143545, A143545.P10821814786316977648.a, A000027, A000027.P10331202704469894836.a, A006093, A006093.P2906174024863549003.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A346180

/-! ## A346180.P11561160866939716832

`A100486(n+1)-A063084(n+1)`
-/

namespace A346180.P11561160866939716832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (n + 1) - A063084 (n + 1)

end

end A346180.P11561160866939716832

namespace A346180

/-- `A100486(n+1)-A063084(n+1)` -/
def P11561160866939716832.Spec : Prop :=
  ∀ n, P11561160866939716832.a n = A346180 (n + 1)

end A346180

/-! ## A346180.P10144766487141423412

`A014688(n+1)-A191558(n+1)`
-/

namespace A346180.P10144766487141423412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A191558 (n + 1)

end

end A346180.P10144766487141423412

namespace A346180

/-- `A014688(n+1)-A191558(n+1)` -/
def P10144766487141423412.Spec : Prop :=
  ∀ n, P10144766487141423412.a n = A346180 (n + 1)

end A346180

/-! ## A346180.P5222540652030822702

`A006093(n+1)+A061397(n+1)+1`
-/

namespace A346180.P5222540652030822702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A061397 (n + 1) + 1)

end

end A346180.P5222540652030822702

namespace A346180

/-- `A006093(n+1)+A061397(n+1)+1` -/
def P5222540652030822702.Spec : Prop :=
  ∀ n, P5222540652030822702.a n = A346180 (n + 1)

theorem P5222540652030822702.correct : P5222540652030822702.Spec := by
  intro n
  simp only [A346180, Nat.add_sub_cancel, A346180.P5222540652030822702.a, A346180.P6210635577582370619.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A061397, A061397.P17730824645895443051.a, A000027, A000027.P10331202704469894836.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A346180

/-! ## A346180.P15944904830576466818

`A006093(n+1)+A143545(n+1)-n`
-/

namespace A346180.P15944904830576466818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A143545 (n + 1) - (n : ℤ))

end

end A346180.P15944904830576466818

namespace A346180

/-- `A006093(n+1)+A143545(n+1)-n` -/
def P15944904830576466818.Spec : Prop :=
  ∀ n, P15944904830576466818.a n = A346180 (n + 1)

theorem P15944904830576466818.correct : P15944904830576466818.Spec := by
  intro n
  simp only [A346180, Nat.add_sub_cancel, A346180.P15944904830576466818.a, A346180.P6210635577582370619.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A061397, A061397.P17730824645895443051.a, A143545, A143545.P10821814786316977648.a, A000027, A000027.P10331202704469894836.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A346180

/-! ## A346180.P8026477661155728737

`A000040(n+1)+(n+1)%A014963(n+1)²`
-/

namespace A346180.P8026477661155728737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + Int.tmod (n + 1 : ℤ) (A014963 (n + 1) ^ 2)

end

end A346180.P8026477661155728737

namespace A346180

/-- `A000040(n+1)+(n+1)%A014963(n+1)²` -/
def P8026477661155728737.Spec : Prop :=
  ∀ n, P8026477661155728737.a n = A346180 (n + 1)

end A346180

/-! ## A346180.P1530995458185869589

`A000040(n+1)+(n+1)*char[record[A000010(n+1)]]`
-/

namespace A346180.P1530995458185869589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (((n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ)

end

end A346180.P1530995458185869589

namespace A346180

/-- `A000040(n+1)+(n+1)*char[record[A000010(n+1)]]` -/
def P1530995458185869589.Spec : Prop :=
  ∀ n, P1530995458185869589.a n = A346180 (n + 1)

end A346180

/-! ## A346180.P5349902646928407566

`A006093(n+1)+A000203(A089026(n+1))`
-/

namespace A346180.P5349902646928407566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + A000203 (A089026 (n + 1)).toNat

end

end A346180.P5349902646928407566

namespace A346180

/-- `A006093(n+1)+A000203(A089026(n+1))` -/
def P5349902646928407566.Spec : Prop :=
  ∀ n, P5349902646928407566.a n = A346180 (n + 1)

end A346180

/-! ## A346180.P18359467948658684801

`A008472(A089026(n+1))+A000040(n+1)`
-/

namespace A346180.P18359467948658684801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A089026 (n + 1)).toNat + A000040 (n + 1)

end

end A346180.P18359467948658684801

namespace A346180

/-- `A008472(A089026(n+1))+A000040(n+1)` -/
def P18359467948658684801.Spec : Prop :=
  ∀ n, P18359467948658684801.a n = A346180 (n + 1)

end A346180

/-! ## A346180.P10244056527047981158

`A040976(n+1)+A008472(A089026(n+1))+2`
-/

namespace A346180.P10244056527047981158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (A008472 (A089026 (n + 1)).toNat + 2)

end

end A346180.P10244056527047981158

namespace A346180

/-- `A040976(n+1)+A008472(A089026(n+1))+2` -/
def P10244056527047981158.Spec : Prop :=
  ∀ n, P10244056527047981158.a n = A346180 (n + 1)

end A346180

/-! ## A346180.P11375261685431176657

`A007504(n+1)+A061397(n+1)-A007504(n)`
-/

namespace A346180.P11375261685431176657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A061397 (n + 1) - A007504 n)

end

end A346180.P11375261685431176657

namespace A346180

/-- `A007504(n+1)+A061397(n+1)-A007504(n)` -/
def P11375261685431176657.Spec : Prop :=
  ∀ n, P11375261685431176657.a n = A346180 (n + 1)

end A346180

/-! ## A346180.P6279179796469104311

`A000040(n+1)+A000720(n+1)-A063084(n+1)`
-/

namespace A346180.P6279179796469104311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A000720 (n + 1) - A063084 (n + 1))

end

end A346180.P6279179796469104311

namespace A346180

/-- `A000040(n+1)+A000720(n+1)-A063084(n+1)` -/
def P6279179796469104311.Spec : Prop :=
  ∀ n, P6279179796469104311.a n = A346180 (n + 1)

end A346180

/-! ## A346180.P8393929994387699554

`A000040(n+1)+A008472(n+1)*A010051(n+1)`
-/

namespace A346180.P8393929994387699554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A008472 (n + 1) * A010051 (n + 1)

end

end A346180.P8393929994387699554

namespace A346180

/-- `A000040(n+1)+A008472(n+1)*A010051(n+1)` -/
def P8393929994387699554.Spec : Prop :=
  ∀ n, P8393929994387699554.a n = A346180 (n + 1)

end A346180

/-! ## A346180.P649357898108984399

`A000040(n+1)+A010051(n+1)*A039634(n+1)`
-/

namespace A346180.P649357898108984399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A010051 (n + 1) * A039634 (n + 1)

end

end A346180.P649357898108984399

namespace A346180

/-- `A000040(n+1)+A010051(n+1)*A039634(n+1)` -/
def P649357898108984399.Spec : Prop :=
  ∀ n, P649357898108984399.a n = A346180 (n + 1)

end A346180

/-! ## A346180.P15465307916891371249

`A000040(n+1)+A010051(n+1)*A039635(n+1)`
-/

namespace A346180.P15465307916891371249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A010051 (n + 1) * A039635 (n + 1)

end

end A346180.P15465307916891371249

namespace A346180

/-- `A000040(n+1)+A010051(n+1)*A039635(n+1)` -/
def P15465307916891371249.Spec : Prop :=
  ∀ n, P15465307916891371249.a n = A346180 (n + 1)

end A346180

/-! ## A346180.P8426866214702576085

`A000040(n+1)+A010051(n+1)*A089026(n+1)`
-/

namespace A346180.P8426866214702576085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A010051 (n + 1) * A089026 (n + 1)

end

end A346180.P8426866214702576085

namespace A346180

/-- `A000040(n+1)+A010051(n+1)*A089026(n+1)` -/
def P8426866214702576085.Spec : Prop :=
  ∀ n, P8426866214702576085.a n = A346180 (n + 1)

end A346180

/-! ## A346180.P2188863556047988768

`A000040(n+1)+A074828(n+1)-A006530(A074828(n+1))`
-/

namespace A346180.P2188863556047988768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A074828 (n + 1) - A006530 (A074828 (n + 1)).toNat)

end

end A346180.P2188863556047988768

namespace A346180

/-- `A000040(n+1)+A074828(n+1)-A006530(A074828(n+1))` -/
def P2188863556047988768.Spec : Prop :=
  ∀ n, P2188863556047988768.a n = A346180 (n + 1)

end A346180

/-! ## A346180.P12685935353690707915

`A061397(n+1)+A008578(n+2)`
-/

namespace A346180.P12685935353690707915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) + A008578 (n + 2)

end

end A346180.P12685935353690707915

namespace A346180

/-- `A061397(n+1)+A008578(n+2)` -/
def P12685935353690707915.Spec : Prop :=
  ∀ n, P12685935353690707915.a n = A346180 (n + 1)

end A346180

/-!
# A346182: a(n) = A346463(n) / radical(A346463(n)).

The programs for A346182, there is no canonical definition to state claims against.
-/

/-! ## A346182.P4059257350807609174

`gcd(A289699(n+1), A343498(n+1))`
-/

namespace A346182.P4059257350807609174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A289699 (n + 1)) (A343498 (n + 1))

end

end A346182.P4059257350807609174

/-! ## A346182.P8984392605812859135

`gcd(A193414(A000010(3*(n+1))), A286476(2*(n+1)))`
-/

namespace A346182.P8984392605812859135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193414 (A000010 (3 * (n + 1))).toNat) (A286476 (2 * (n + 1)))

end

end A346182.P8984392605812859135

/-!
# A346183: a(n) = Sum_{k=0..n} binomial(n,k) * binomial((k+1)^2, n).

The programs for A346183, there is no canonical definition to state claims against.
-/

/-! ## A346183.P15103283624548733444

`A076024(n)+A000203(A076876(3*n))`
-/

namespace A346183.P15103283624548733444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076024 n + A000203 (A076876 (3 * n)).toNat

end

end A346183.P15103283624548733444

/-!
# A346184: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(k^2, n).

The programs for A346184, there is no canonical definition to state claims against.
-/

/-! ## A346184.P5599533522825354718

`A059893(A073225(∑[n]))`
-/

namespace A346184.P5599533522825354718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A073225 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A346184.P5599533522825354718

/-!
# A346185: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(n-1,k)^3 * a(k).

The programs for A346185, there is no canonical definition to state claims against.
-/

/-! ## A346185.P11778036144506315105

`A008620(A026741(n)+A020558(n))`
-/

namespace A346185.P11778036144506315105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A026741 n + A020558 n).toNat

end

end A346185.P11778036144506315105

/-! ## A346185.P15143272168528441098

`A173276(n)+A002264(A020558(n))`
-/

namespace A346185.P15143272168528441098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173276 n + A002264 (A020558 n).toNat

end

end A346185.P15143272168528441098

/-!
# A346186: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(n-1,k)^3 * a(k) * a(n-k-1).

The programs for A346186, there is no canonical definition to state claims against.
-/

/-! ## A346186.P11371062459736592573

`A000010(A215067(A000041(n+2)))`
-/

namespace A346186.P11371062459736592573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A215067 (A000041 (n + 2)).toNat).toNat

end

end A346186.P11371062459736592573

/-! ## A346186.P993180979013115676

`A000010(or(A145271(n), A193550(n)))`
-/

namespace A346186.P993180979013115676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lor (A145271 n) (A193550 n)).toNat

end

end A346186.P993180979013115676

/-!
# A346187: a(0) = 1; a(n) = Sum_{k=0..n-1} binomial(n,k)^3 * a(k) * a(n-k-1).

The programs for A346187, there is no canonical definition to state claims against.
-/

/-! ## A346187.P13037566234333800824

`A002487(A230823(2*n))*A288757(n+1)`
-/

namespace A346187.P13037566234333800824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A230823 (2 * n)).toNat * A288757 (n + 1)

end

end A346187.P13037566234333800824

/-!
# A346188: a(1) = 1; a(n+1) = Sum_{d|n} binomial(n,d) * a(n/d).

The programs for A346188, there is no canonical definition to state claims against.
-/

/-! ## A346188.P5922359808902336296

`2*n!-A340654(∏[2*(n+1)]-∏[2*n+1])`
-/

namespace A346188.P5922359808902336296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial n : ℤ) - A340654 (∏ j ∈ Finset.range (n + 1), f1 j - ∏ j ∈ Finset.range (n + 1), f2 j)

end

end A346188.P5922359808902336296

/-! ## A346188.P1992512446026948657

`A111856(A075581(n))+1`
-/

namespace A346188.P1992512446026948657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111856 (A075581 n).toNat + 1

end

end A346188.P1992512446026948657

/-!
# A346189: a(n) is the number of permutations on [n] with no strong fixed points or small descents.

The programs for A346189, there is no canonical definition to state claims against.
-/

/-! ## A346189.P12341661287451747482

`A052186(n+1)-A346198(n+1)`
-/

namespace A346189.P12341661287451747482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052186 (n + 1) - A346198 (n + 1)

end

end A346189.P12341661287451747482

/-! ## A346189.P1847100745046936089

`A000255(n)-A346199(n+1)`
-/

namespace A346189.P1847100745046936089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 n - A346199 (n + 1)

end

end A346189.P1847100745046936089

/-! ## A346189.P11355215752586930738

`abs(Δ[A182386(n)])-A346199(n+1)`
-/

namespace A346189.P11355215752586930738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A346199 (n + 1)

end

end A346189.P11355215752586930738

/-! ## A346189.P6228772927907333063

`A162969(Δ[n²])-A346199(n+1)`
-/

namespace A346189.P6228772927907333063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162969 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A346199 (n + 1)

end

end A346189.P6228772927907333063

/-! ## A346189.P1880883824204501068

`abs(Δ[A179508(n+1)])-A346199(n+1)`
-/

namespace A346189.P1880883824204501068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A346199 (n + 1)

end

end A346189.P1880883824204501068

/-!
# A346194: Total sum of the left-to-right strict peak maxima in all Dyck paths of semilength n.

The programs for A346194, there is no canonical definition to state claims against.
-/

/-! ## A346194.P15320938436112127092

`A110654(n*A110490(n))`
-/

namespace A346194.P15320938436112127092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((n : ℤ) * A110490 n).toNat

end

end A346194.P15320938436112127092

/-! ## A346194.P8288978731032293032

`A325039(∑[comp[a(n-2)+7]+n])` with `a(0)=1, a(1)=0, a(2)=6, a(3)=8`
-/

namespace A346194.P8288978731032293032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 6, 8] fun n f2 =>
  f2 (n - 2) + 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325039 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346194.P8288978731032293032

/-! ## A346194.P14500616017656692711

`A008679(∑[A050476(n)])`
-/

namespace A346194.P14500616017656692711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346194.P14500616017656692711

/-!
# A346195: Total sum of the left-to-right weak peak maxima in all Dyck paths of semilength n.

The programs for A346195, there is no canonical definition to state claims against.
-/

/-! ## A346195.P4394811464730832407

`A006368(A000984(n))-A261003(n)`
-/

namespace A346195.P4394811464730832407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A000984 n).toNat - A261003 n

end

end A346195.P4394811464730832407

/-! ## A346195.P320005487007266462

`A048105(A052003(2*(n+1)))-(A144904(n+1)-A371842(n))`
-/

namespace A346195.P320005487007266462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (A052003 (2 * (n + 1))).toNat - (A144904 (n + 1) - A371842 n)

end

end A346195.P320005487007266462

/-! ## A346195.P8027781821944293857

`A151844(4^n-(n+1))`
-/

namespace A346195.P8027781821944293857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151844 (4 ^ n - (n + 1))

end

end A346195.P8027781821944293857

/-!
# A346196: a(n) = Sum_{d|n} (d!)^n.

The programs for A346196, the canonical program `A346196.P11394602686164736681` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346196 has offset 1).

The definition of A346196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346196.P11394602686164736681

`∑{d}[n+1, #!^(n+1)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346196

/-- `∑{d}[n+1, #!^(n+1)]` -/
def P11394602686164736681.Spec : Prop :=
  ∀ n, (P11394602686164736681.a n : ℤ) = A346196 (n + 1)

theorem P11394602686164736681.correct : P11394602686164736681.Spec := by
  intro n
  simp only [A346196, Nat.add_sub_cancel]

end A346196

/-!
# A346197: a(n) is the minimum number of pebbles such that any assignment of those pebbles on K_5 is a next-player winning game in the two-player impartial (n+1,n) pebbling game.

The programs for A346197, there is no canonical definition to state claims against.
-/

/-! ## A346197.P1924806958925789387

`∑[gcd(3, a(n-2)-n²)+5]+5` with `a(0)=2, a(1)=8`
-/

namespace A346197.P1924806958925789387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n f1 =>
  Int.gcd 3 ((f1 (n - 2) : ℤ) - (n ^ 2 : ℤ)) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A346197.P1924806958925789387

/-! ## A346197.P4626792067905181520

`or(1, ∑[7-A257000(n)])`
-/

namespace A346197.P4626792067905181520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A257000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346197.P4626792067905181520

/-! ## A346197.P12673926607455036923

`2*n+A285658(n+1)+5`
-/

namespace A346197.P12673926607455036923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A285658 (n + 1) + 5)

end

end A346197.P12673926607455036923

/-! ## A346197.P6157673153224484509

`or(1, ∑[7-char[A000040(n+1)]])`
-/

namespace A346197.P6157673153224484509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346197.P6157673153224484509

/-! ## A346197.P14618331019109029521

`2*(A285659(n+1)+2*n+3)-1`
-/

namespace A346197.P14618331019109029521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A285659 (n + 1) + (2 * n + 3 : ℤ)) - 1

end

end A346197.P14618331019109029521

/-!
# A346198: a(n) is the number of permutations on [n] with no strong fixed points but contains at least one small descent.

The programs for A346198, there is no canonical definition to state claims against.
-/

/-! ## A346198.P1326209483076773619

`A052186(n+1)-A346189(n+1)`
-/

namespace A346198.P1326209483076773619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052186 (n + 1) - A346189 (n + 1)

end

end A346198.P1326209483076773619

/-! ## A346198.P857960742895537590

`A180191(n+1)-A346204(n+1)`
-/

namespace A346198.P857960742895537590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180191 (n + 1) - A346204 (n + 1)

end

end A346198.P857960742895537590

/-! ## A346198.P12356904123912964245

`(n+1)!-A000255(n)-A346204(n+1)`
-/

namespace A346198.P12356904123912964245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A000255 n - A346204 (n + 1)

end

end A346198.P12356904123912964245

/-! ## A346198.P6372440641269483348

`∏[A000027(n+1)]-(A346204(n+1)+A000255(n))`
-/

namespace A346198.P6372440641269483348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (A346204 (n + 1) + A000255 n)

end

end A346198.P6372440641269483348

/-!
# A346199: a(n) is the number of permutations on [n] with at least one strong fixed point and no small descents.

The programs for A346199, there is no canonical definition to state claims against.
-/

/-! ## A346199.P8737136587386390169

`A000255(n)-A346189(n+1)`
-/

namespace A346199.P8737136587386390169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 n - A346189 (n + 1)

end

end A346199.P8737136587386390169

/-! ## A346199.P414686055206861180

`A006932(n+1)-A346204(n+1)`
-/

namespace A346199.P414686055206861180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006932 (n + 1) - A346204 (n + 1)

end

end A346199.P414686055206861180

/-! ## A346199.P378861213330277534

`A010027(∑[n+1])-A346189(n+1)`
-/

namespace A346199.P378861213330277534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010027 (∑ j ∈ Finset.range (n + 1), f1 j) - A346189 (n + 1)

end

end A346199.P378861213330277534

/-! ## A346199.P1675130419286291491

`A116854(∑[n]+1)-A346189(n+1)`
-/

namespace A346199.P1675130419286291491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116854 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A346189 (n + 1)

end

end A346199.P1675130419286291491

/-! ## A346199.P8030280159776514898

`A000255(n)-(A052186(n+1)-A346198(n+1))`
-/

namespace A346199.P8030280159776514898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 n - (A052186 (n + 1) - A346198 (n + 1))

end

end A346199.P8030280159776514898

