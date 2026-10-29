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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
# A054700: Number of 6-ary Lyndon words with trace 3 mod 6.

The programs for A054700, there is no canonical definition to state claims against.
-/

/-! ## A054700.P14166939725838490912

`∑{d}[n+1, A036987(#-1)*A054665((n+1)/#)]`
-/

namespace A054700.P14166939725838490912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A054665 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054700.P14166939725838490912

/-! ## A054700.P18307323042430430526

`A054666(n+1)-A345415(A000040(3*n+1))`
-/

namespace A054700.P18307323042430430526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054666 (n + 1) - A345415 (A000040 (3 * n + 1)).toNat

end

end A054700.P18307323042430430526

/-! ## A054700.P7223987527734763701

`A054666(n+1)-A276205(A052323(n+1))`
-/

namespace A054700.P7223987527734763701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054666 (n + 1) - A276205 (A052323 (n + 1)).toNat

end

end A054700.P7223987527734763701

/-!
# A054703: Number of distinct powers of 2 modulo n.

The programs for A054703, there is no canonical definition to state claims against.
-/

/-! ## A054703.P14479888446972367683

`A007814(n+1)+A007733(n+1)`
-/

namespace A054703.P14479888446972367683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007733 (n + 1)

end

end A054703.P14479888446972367683

/-! ## A054703.P3442173468350905286

`A007733(n+1)+log2(A006519(n+1))`
-/

namespace A054703.P3442173468350905286
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007733 (n + 1) : ℝ) + Real.logb 2 (A006519 (n + 1) : ℝ)

end

end A054703.P3442173468350905286

/-! ## A054703.P7483229210712338360

`A007733(n+1)+1-Δ[A000120(n)]`
-/

namespace A054703.P7483229210712338360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A054703.P7483229210712338360

/-! ## A054703.P5729505528477029315

`A007733(n+1)+Δ[A005187(n)]-1`
-/

namespace A054703.P5729505528477029315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1) + (f1 (n + 1) - f1 n - 1)

end

end A054703.P5729505528477029315

/-! ## A054703.P1635587709165198568

`A001511(n+1)+A007733(n+1)-1`
-/

namespace A054703.P1635587709165198568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + (A007733 (n + 1) - 1)

end

end A054703.P1635587709165198568

/-! ## A054703.P16995594316845200474

`A000120(n)+1+A007733(n+1)-A000120(n+1)`
-/

namespace A054703.P16995594316845200474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1 + (A007733 (n + 1) - A000120 (n + 1))

end

end A054703.P16995594316845200474

/-! ## A054703.P17983240238887418696

`A204987(n+1)-A059841(n)`
-/

namespace A054703.P17983240238887418696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (n + 1) - A059841 n

end

end A054703.P17983240238887418696

/-! ## A054703.P12522663480100788666

`A204987(n+1)-Δ[A110654(n)]`
-/

namespace A054703.P12522663480100788666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (n + 1) - (f1 (n + 1) - f1 n)

end

end A054703.P12522663480100788666

/-! ## A054703.P11310672898578873565

`A204987(n+1)-A000035(n+1)`
-/

namespace A054703.P11310672898578873565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (n + 1) - A000035 (n + 1)

end

end A054703.P11310672898578873565

/-! ## A054703.P5312004483623267371

`A204987(n+1)-A135481(A006519(n+1))`
-/

namespace A054703.P5312004483623267371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (n + 1) - A135481 (A006519 (n + 1)).toNat

end

end A054703.P5312004483623267371

/-! ## A054703.P15118047783344704149

`A204987(A000265(n+1))+A007814(n+1)-1`
-/

namespace A054703.P15118047783344704149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (A000265 (n + 1)).toNat + (A007814 (n + 1) - 1)

end

end A054703.P15118047783344704149

/-! ## A054703.P953684127423096866

`A057427(A007814(n+1))+A204987(n+1)-1`
-/

namespace A054703.P953684127423096866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A007814 (n + 1)).toNat + (A204987 (n + 1) - 1)

end

end A054703.P953684127423096866

/-! ## A054703.P2486957003807262090

`A204987(n+1)+A135481(n)-A140670(n+1)`
-/

namespace A054703.P2486957003807262090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (n + 1) + (A135481 n - A140670 (n + 1))

end

end A054703.P2486957003807262090

/-! ## A054703.P14091030449278868321

`A007814(n+1)+A204987(n+1)-A204988(n+1)`
-/

namespace A054703.P14091030449278868321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A204987 (n + 1) - A204988 (n + 1))

end

end A054703.P14091030449278868321

/-! ## A054703.P2188092121255423446

`A204987(n+1)+A140670(n+2)-A006519(n+2)`
-/

namespace A054703.P2188092121255423446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (n + 1) + (A140670 (n + 2) - A006519 (n + 2))

end

end A054703.P2188092121255423446

/-! ## A054703.P1878381182889420047

`A204987(n+1)+A160467(n+2)-A330569(n+2)`
-/

namespace A054703.P1878381182889420047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (n + 1) + (A160467 (n + 2) - A330569 (n + 2))

end

end A054703.P1878381182889420047

/-! ## A054703.P14064683880974820101

`A050605(2*n)+A007733(n+1)`
-/

namespace A054703.P14064683880974820101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (2 * n) + A007733 (n + 1)

end

end A054703.P14064683880974820101

/-! ## A054703.P16232335495358089595

`A204987(2*(n+1))-1`
-/

namespace A054703.P16232335495358089595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204987 (2 * (n + 1)) - 1

end

end A054703.P16232335495358089595

/-! ## A054703.P4245093796031958307

`A007733(n+1)+A204988(2*(n+1))-1`
-/

namespace A054703.P4245093796031958307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1) + (A204988 (2 * (n + 1)) - 1)

end

end A054703.P4245093796031958307

/-! ## A054703.P9407300482376563670

`A204979(n+1)-1`
-/

namespace A054703.P9407300482376563670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204979 (n + 1) - 1

end

end A054703.P9407300482376563670

/-!
# A054704: Number of powers of 3 modulo n.

The programs for A054704, there is no canonical definition to state claims against.
-/

/-! ## A054704.P971032448550757313

`A007734(n+1)+A007949(n+1)`
-/

namespace A054704.P971032448550757313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (n + 1) + A007949 (n + 1)

end

end A054704.P971032448550757313

/-! ## A054704.P12688759761476420745

`A007734(n+1)+Δ[A054861(n)]`
-/

namespace A054704.P12688759761476420745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (n + 1) + (f1 (n + 1) - f1 n)

end

end A054704.P12688759761476420745

/-! ## A054704.P5044952449429320912

`A007734(n+1)+A001222(A038500(n+1))`
-/

namespace A054704.P5044952449429320912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (n + 1) + A001222 (A038500 (n + 1)).toNat

end

end A054704.P5044952449429320912

/-! ## A054704.P3497362766360091636

`A007814(A064989(n+1))+A007734(n+1)`
-/

namespace A054704.P3497362766360091636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A064989 (n + 1)).toNat + A007734 (n + 1)

end

end A054704.P3497362766360091636

/-! ## A054704.P1315750032814774111

`A007734(n+1)+A001222(A318666(n+1))`
-/

namespace A054704.P1315750032814774111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (n + 1) + A001222 (A318666 (n + 1)).toNat

end

end A054704.P1315750032814774111

/-! ## A054704.P7591405193803460401

`A057593(A238531(n)+2)+Δ[A054861(n)]`
-/

namespace A054704.P7591405193803460401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057593 (A238531 n + 2).toNat + (f1 (n + 1) - f1 n)

end

end A054704.P7591405193803460401

/-! ## A054704.P10280631339217772225

`A057593(A238531(n)+2)+A001222(A318666(n+1))`
-/

namespace A054704.P10280631339217772225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057593 (A238531 n + 2).toNat + A001222 (A318666 (n + 1)).toNat

end

end A054704.P10280631339217772225

/-! ## A054704.P12694951822172200366

`A066799(∑[n+3]+1)+Δ[A054861(n)]`
-/

namespace A054704.P12694951822172200366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066799 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + (f2 (n + 1) - f2 n)

end

end A054704.P12694951822172200366

/-! ## A054704.P16026487289258726459

`A066799(∑[n+3]+1)+A001222(A318666(n+1))`
-/

namespace A054704.P16026487289258726459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066799 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A001222 (A318666 (n + 1)).toNat

end

end A054704.P16026487289258726459

/-!
# A054705: Number of powers of 4 modulo n.

The programs for A054705, there is no canonical definition to state claims against.
-/

/-! ## A054705.P13468327516843589277

`A007735(n+1)+A244415(n+1)`
-/

namespace A054705.P13468327516843589277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (n + 1) + A244415 (n + 1)

end

end A054705.P13468327516843589277

/-! ## A054705.P3232541357501645307

`A007735(n+1)+val(A103517(n), 4)`
-/

namespace A054705.P3232541357501645307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (n + 1) + (SequenceMachineLib.valuation (A103517 n).toNat 4 : ℤ)

end

end A054705.P3232541357501645307

/-! ## A054705.P15282936285933051609

`A007735(n+1)+A004526(A001511(n+1))`
-/

namespace A054705.P15282936285933051609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (n + 1) + A004526 (A001511 (n + 1)).toNat

end

end A054705.P15282936285933051609

/-! ## A054705.P15937671385914765937

`A110654(A007814(n+1))+A007735(n+1)`
-/

namespace A054705.P15937671385914765937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A007814 (n + 1)).toNat + A007735 (n + 1)

end

end A054705.P15937671385914765937

/-! ## A054705.P12052000350587994576

`A007735(n+1)+A004526(A094267(2*n))`
-/

namespace A054705.P12052000350587994576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (n + 1) + A004526 (A094267 (2 * n)).toNat

end

end A054705.P12052000350587994576

/-!
# A054706: Number of powers of 5 modulo n.

The programs for A054706, there is no canonical definition to state claims against.
-/

/-! ## A054706.P6359987491164878368

`A007736(n+1)+A112765(n+1)`
-/

namespace A054706.P6359987491164878368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (n + 1) + A112765 (n + 1)

end

end A054706.P6359987491164878368

/-! ## A054706.P13173959770901644140

`A007736(n+1)+Δ[A027868(n)]`
-/

namespace A054706.P13173959770901644140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (n + 1) + (f1 (n + 1) - f1 n)

end

end A054706.P13173959770901644140

/-! ## A054706.P16830204592399575868

`A051628(A000265(n+1))+A007736(n+1)`
-/

namespace A054706.P16830204592399575868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (A000265 (n + 1)).toNat + A007736 (n + 1)

end

end A054706.P16830204592399575868

/-! ## A054706.P13931768556439302729

`A007736(n+1)+A001222(A000265(A132741(n+1)))`
-/

namespace A054706.P13931768556439302729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (n + 1) + A001222 (A000265 (A132741 (n + 1)).toNat).toNat

end

end A054706.P13931768556439302729

/-! ## A054706.P17505072978660391973

`A121341(A000265(n+1))+A007736(n+1)-A051626(n+1)`
-/

namespace A054706.P17505072978660391973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (A000265 (n + 1)).toNat + (A007736 (n + 1) - A051626 (n + 1))

end

end A054706.P17505072978660391973

/-!
# A054707: Number of powers of 6 modulo n.

The programs for A054707, there is no canonical definition to state claims against.
-/

/-! ## A054707.P10014559826431779631

`A007737(n+1)+A244417(n+1)`
-/

namespace A054707.P10014559826431779631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (n + 1) + A244417 (n + 1)

end

end A054707.P10014559826431779631

/-! ## A054707.P7791776337208507468

`A051903(A065331(n+1))+A007737(n+1)`
-/

namespace A054707.P7791776337208507468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A065331 (n + 1)).toNat + A007737 (n + 1)

end

end A054707.P7791776337208507468

/-! ## A054707.P510011545190992420

`A086415(A322026(n+1))+A007737(n+1)`
-/

namespace A054707.P510011545190992420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086415 (A322026 (n + 1)).toNat + A007737 (n + 1)

end

end A054707.P510011545190992420

/-! ## A054707.P10526882577659943353

`A244417(n+1)+A053449(A126760(n+1))`
-/

namespace A054707.P10526882577659943353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244417 (n + 1) + A053449 (A126760 (n + 1)).toNat

end

end A054707.P10526882577659943353

/-! ## A054707.P5599659274853016695

`A169611(A348990(n+1))+A007737(n+1)`
-/

namespace A054707.P5599659274853016695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169611 (A348990 (n + 1)).toNat + A007737 (n + 1)

end

end A054707.P5599659274853016695

/-! ## A054707.P10345141049012687773

`A007814(A244416(n+1))+A007737(n+1)`
-/

namespace A054707.P10345141049012687773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A244416 (n + 1)).toNat + A007737 (n + 1)

end

end A054707.P10345141049012687773

/-!
# A054708: Number of powers of 7 modulo n.

The programs for A054708, there is no canonical definition to state claims against.
-/

/-! ## A054708.P15619084184761917906

`A007738(n+1)+A214411(n+1)`
-/

namespace A054708.P15619084184761917906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007738 (n + 1) + A214411 (n + 1)

end

end A054708.P15619084184761917906

/-! ## A054708.P7047914834586693808

`A112765(A064989(n+1))+A007738(n+1)`
-/

namespace A054708.P7047914834586693808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A064989 (n + 1)).toNat + A007738 (n + 1)

end

end A054708.P7047914834586693808

/-! ## A054708.P5131737503718843597

`A112765(A064989(n+1))+A000010(n+1)/A327815(n+1)`
-/

namespace A054708.P5131737503718843597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112765 (A064989 (n + 1)).toNat : ℚ) + (A000010 (n + 1) : ℚ) / (A327815 (n + 1) : ℚ)

end

end A054708.P5131737503718843597

/-! ## A054708.P12230233118969013428

`A214411(n+1)+A070678(A242603(lcm(2, n+1)))`
-/

namespace A054708.P12230233118969013428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (n + 1) + A070678 (A242603 (Nat.lcm 2 (n + 1))).toNat

end

end A054708.P12230233118969013428

/-! ## A054708.P16771974451644455737

`A117118(A268354(n+1))+A007738(n+1)`
-/

namespace A054708.P16771974451644455737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117118 (A268354 (n + 1)).toNat + A007738 (n + 1)

end

end A054708.P16771974451644455737

/-! ## A054708.P7010708717579428556

`A112765(A064989(n+1))+A066799(A055999(n+4))`
-/

namespace A054708.P7010708717579428556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A064989 (n + 1)).toNat + A066799 (A055999 (n + 4)).toNat

end

end A054708.P7010708717579428556

/-!
# A054709: Number of powers of 8 modulo n.

The programs for A054709, there is no canonical definition to state claims against.
-/

/-! ## A054709.P5348788178409085566

`val(4*(n+1), 8)+A007739(n+1)`
-/

namespace A054709.P5348788178409085566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (4 * (n + 1)) 8 : ℤ) + A007739 (n + 1)

end

end A054709.P5348788178409085566

/-! ## A054709.P7135348407375931133

`A007739(n+1)+A002264(A085058(n))`
-/

namespace A054709.P7135348407375931133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007739 (n + 1) + A002264 (A085058 n).toNat

end

end A054709.P7135348407375931133

/-! ## A054709.P2447800191347683351

`A106665(A000225(n+1))+A007739(n+1)`
-/

namespace A054709.P2447800191347683351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106665 (A000225 (n + 1)).toNat + A007739 (n + 1)

end

end A054709.P2447800191347683351

/-!
# A054710: Number of powers of 10 mod n.

The programs for A054710, there is no canonical definition to state claims against.
-/

/-! ## A054710.P14583439971159452403

`A007732(n+1)+A051628(n+1)`
-/

namespace A054710.P14583439971159452403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1) + A051628 (n + 1)

end

end A054710.P14583439971159452403

/-! ## A054710.P6963368693000514273

`A084680(A132740(n+1))+A051628(n+1)`
-/

namespace A054710.P6963368693000514273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (A132740 (n + 1)).toNat + A051628 (n + 1)

end

end A054710.P6963368693000514273

/-! ## A054710.P1225722501732459159

`A051628(n+1)+A051626(A109044(n+1))`
-/

namespace A054710.P1225722501732459159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (n + 1) + A051626 (A109044 (n + 1)).toNat

end

end A054710.P1225722501732459159

/-! ## A054710.P682815997768145329

`A121341(A132741(n+1))+A007732(n+1)`
-/

namespace A054710.P682815997768145329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (A132741 (n + 1)).toNat + A007732 (n + 1)

end

end A054710.P682815997768145329

/-! ## A054710.P10765118151750483300

`A121341(A132741(n+1))+A084680(A132740(n+1))`
-/

namespace A054710.P10765118151750483300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (A132741 (n + 1)).toNat + A084680 (A132740 (n + 1)).toNat

end

end A054710.P10765118151750483300

/-! ## A054710.P1673654928261149972

`A007732(n+1)+A121341(n+1)-A051626(n+1)`
-/

namespace A054710.P1673654928261149972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (n + 1) + (A121341 (n + 1) - A051626 (n + 1))

end

end A054710.P1673654928261149972

/-! ## A054710.P5132721202491547948

`A121341(lcm(3, n+1))`
-/

namespace A054710.P5132721202491547948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (Nat.lcm 3 (n + 1))

end

end A054710.P5132721202491547948

/-! ## A054710.P18230558855839971675

`A121341(A109044(n+1))`
-/

namespace A054710.P18230558855839971675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (A109044 (n + 1)).toNat

end

end A054710.P18230558855839971675

/-! ## A054710.P1916952319876386900

`A121341(n+1)+A008683(A132740(n+1)²)`
-/

namespace A054710.P1916952319876386900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (n + 1) + A008683 (A132740 (n + 1) ^ 2).toNat

end

end A054710.P1916952319876386900

/-! ## A054710.P6920945657919254992

`A121341(A109050(n+1))`
-/

namespace A054710.P6920945657919254992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (A109050 (n + 1)).toNat

end

end A054710.P6920945657919254992

/-! ## A054710.P18144686821434699292

`A121341(n+1)+A008683(A132740((n+1)²))`
-/

namespace A054710.P18144686821434699292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (n + 1) + A008683 (A132740 ((n + 1) ^ 2)).toNat

end

end A054710.P18144686821434699292

/-!
# A054711: Multiplicative order of 11 mod n, where gcd(n, 11) = 1.

The programs for A054711, there is no canonical definition to state claims against.
-/

/-! ## A054711.P10383758487004524563

`A351524(comp[A008593(n)])`
-/

namespace A054711.P10383758487004524563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351524 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A054711.P10383758487004524563

/-! ## A054711.P7893368450351258974

`A351524(A160542(n+1))`
-/

namespace A054711.P7893368450351258974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351524 (A160542 (n + 1)).toNat

end

end A054711.P7893368450351258974

/-! ## A054711.P12447201714226431309

`A070680(lcm(2, A160542(n+1)))`
-/

namespace A054711.P12447201714226431309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070680 (Int.lcm 2 (A160542 (n + 1)))

end

end A054711.P12447201714226431309

/-! ## A054711.P12070028716891653456

`A070680(A043096(n+2))+A010815(A003374(n+1))`
-/

namespace A054711.P12070028716891653456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070680 (A043096 (n + 2)).toNat + A010815 (A003374 (n + 1)).toNat

end

end A054711.P12070028716891653456

/-! ## A054711.P9626573926812381455

`A070680(A043096(n+2))+A010815(A006508(n+4))`
-/

namespace A054711.P9626573926812381455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070680 (A043096 (n + 2)).toNat + A010815 (A006508 (n + 4)).toNat

end

end A054711.P9626573926812381455

/-!
# A054714: Number of powers of 14 modulo n.

The programs for A054714, there is no canonical definition to state claims against.
-/

/-! ## A054714.P13412295468948405850

`A001222((A235893(n+4)+1)*(n+1))`
-/

namespace A054714.P13412295468948405850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((A235893 (n + 4) + 1) * (n + 1 : ℤ)).toNat

end

end A054714.P13412295468948405850

/-! ## A054714.P13072877392545140596

`A329291(A284457(n+1))+∑{e}[n+1, #]`
-/

namespace A054714.P13072877392545140596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329291 (A284457 (n + 1)).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A054714.P13072877392545140596

/-! ## A054714.P16675071518487221246

`A318559(A339645(n+1))+∑{e}[n+1, #]`
-/

namespace A054714.P16675071518487221246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318559 (A339645 (n + 1)).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A054714.P16675071518487221246

/-! ## A054714.P3318517852915231979

`A323438(A339645(n+1))+A001222(n+1)`
-/

namespace A054714.P3318517852915231979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323438 (A339645 (n + 1)).toNat + A001222 (n + 1)

end

end A054714.P3318517852915231979

/-! ## A054714.P11356722482060459559

`A347463(A347503(n+1))+A001222(n+1)`
-/

namespace A054714.P11356722482060459559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347463 (A347503 (n + 1)).toNat + A001222 (n + 1)

end

end A054714.P11356722482060459559

/-!
# A054716: Number of powers of 16 modulo n.

The programs for A054716, there is no canonical definition to state claims against.
-/

/-! ## A054716.P4176632226922350057

`A293485(A281873(n+1))+and(1, n)`
-/

namespace A054716.P4176632226922350057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293485 (A281873 (n + 1)).toNat + (Nat.land 1 n : ℤ)

end

end A054716.P4176632226922350057

/-! ## A054716.P6019810513261617217

`A293485(A281873(n+1))+A000035(n)`
-/

namespace A054716.P6019810513261617217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293485 (A281873 (n + 1)).toNat + A000035 n

end

end A054716.P6019810513261617217

/-! ## A054716.P7708009667791546724

`A293485(A281873(n+1))+Δ[A004526(n)]`
-/

namespace A054716.P7708009667791546724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293485 (A281873 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A054716.P7708009667791546724

/-! ## A054716.P14215172581852887146

`A293485(A281873(n+1))+A059841(n+1)`
-/

namespace A054716.P14215172581852887146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293485 (A281873 (n + 1)).toNat + A059841 (n + 1)

end

end A054716.P14215172581852887146

/-! ## A054716.P10739375446840117755

`A293485(n+1)+A000035(A256292(n+1))`
-/

namespace A054716.P10739375446840117755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293485 (n + 1) + A000035 (A256292 (n + 1)).toNat

end

end A054716.P10739375446840117755

/-!
# A054717: Number of powers of 9 modulo n.

The programs for A054717, there is no canonical definition to state claims against.
-/

/-! ## A054717.P3263765049063481448

`val(3*(n+1), 9)+A007740(n+1)`
-/

namespace A054717.P3263765049063481448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (3 * (n + 1)) 9 : ℤ) + A007740 (n + 1)

end

end A054717.P3263765049063481448

/-! ## A054717.P8454624936023176138

`A244415(A064989(n+1))+A007740(n+1)`
-/

namespace A054717.P8454624936023176138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A064989 (n + 1)).toNat + A007740 (n + 1)

end

end A054717.P8454624936023176138

/-! ## A054717.P7734593907729270627

`A244415(A318666(n+1))+A007740(n+1)`
-/

namespace A054717.P7734593907729270627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A318666 (n + 1)).toNat + A007740 (n + 1)

end

end A054717.P7734593907729270627

/-! ## A054717.P17968183112714954711

`ceil(A054704(A205382(n+1))/2)`
-/

namespace A054717.P17968183112714954711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054704 (A205382 (n + 1)).toNat : ℚ) / 2⌉

end

end A054717.P17968183112714954711

/-! ## A054717.P10501294763063274082

`round(A054704(A205382(n+1))/2)%A269044(n)`
-/

namespace A054717.P10501294763063274082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A054704 (A205382 (n + 1)).toNat : ℚ) / 2)) (A269044 n)

end

end A054717.P10501294763063274082

/-!
# A054718: Number of ternary sequences with primitive period n.

The programs for A054718, there is no canonical definition to state claims against.
-/

/-! ## A054718.P2433919980754554401

`round(sqrt(n²+1))*A027376(n)`
-/

namespace A054718.P2433919980754554401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) * A027376 n

end

end A054718.P2433919980754554401

/-! ## A054718.P15876056207864557354

`A027376(n)*A028310(n)`
-/

namespace A054718.P15876056207864557354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 n * A028310 n

end

end A054718.P15876056207864557354

/-! ## A054718.P5627939665791931018

`A027376(n)*A065033(2*n)`
-/

namespace A054718.P5627939665791931018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 n * A065033 (2 * n)

end

end A054718.P5627939665791931018

/-! ## A054718.P1276010618134933601

`A027376(n)*A123108(2*n)`
-/

namespace A054718.P1276010618134933601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 n * A123108 (2 * n)

end

end A054718.P1276010618134933601

/-! ## A054718.P4977808830662332532

`A000007(n)+n*A027376(n)`
-/

namespace A054718.P4977808830662332532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A027376 n

end

end A054718.P4977808830662332532

/-! ## A054718.P12943282920700076431

`(A001867(n)-A278663(n))*round(sqrt(n²+1))`
-/

namespace A054718.P12943282920700076431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001867 n - A278663 n) * SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

end

end A054718.P12943282920700076431

/-! ## A054718.P15191710314762472256

`A008683(A008574(n))+n*A027376(n)`
-/

namespace A054718.P15191710314762472256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + (n : ℤ) * A027376 n

end

end A054718.P15191710314762472256

/-! ## A054718.P9718863852042978138

`A027376(n)/A027377(n)*A054719(n)`
-/

namespace A054718.P9718863852042978138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027376 n : ℚ) / (A027377 n : ℚ) * (A054719 n : ℚ)

end

end A054718.P9718863852042978138

/-! ## A054718.P16550920391860965596

`round(sqrt(n²+1))*A074650(∑[n+2]-1)`
-/

namespace A054718.P16550920391860965596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) * A074650 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A054718.P16550920391860965596

/-! ## A054718.P769591368755781744

`A143324(∑[n+2]-1)`
-/

namespace A054718.P769591368755781744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143324 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A054718.P769591368755781744

/-!
# A054719: Number of 4-ary sequences with primitive period n.

The programs for A054719, there is no canonical definition to state claims against.
-/

/-! ## A054719.P9198949204232995655

`round(sqrt(n²+1))*A027377(n)`
-/

namespace A054719.P9198949204232995655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) * A027377 n

end

end A054719.P9198949204232995655

/-! ## A054719.P4156174410997010291

`A027377(n)*A028310(n)`
-/

namespace A054719.P4156174410997010291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 n * A028310 n

end

end A054719.P4156174410997010291

/-! ## A054719.P4544402471789262511

`A004277(n)*A131764(n)`
-/

namespace A054719.P4544402471789262511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A131764 n

end

end A054719.P4544402471789262511

/-! ## A054719.P10775997798652280052

`A004275(n+1)*A131764(n)`
-/

namespace A054719.P10775997798652280052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1) * A131764 n

end

end A054719.P10775997798652280052

/-! ## A054719.P16818338464988298545

`A027377(n)*A065033(2*n)`
-/

namespace A054719.P16818338464988298545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 n * A065033 (2 * n)

end

end A054719.P16818338464988298545

/-! ## A054719.P13832844334009798744

`A027377(n)*A123108(2*n)`
-/

namespace A054719.P13832844334009798744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 n * A123108 (2 * n)

end

end A054719.P13832844334009798744

/-! ## A054719.P5737133606888694810

`A000007(n)+n*A027377(n)`
-/

namespace A054719.P5737133606888694810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A027377 n

end

end A054719.P5737133606888694810

/-! ## A054719.P11359480245061007211

`A026741(A008574(n))*A131764(n)`
-/

namespace A054719.P11359480245061007211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A008574 n).toNat * A131764 n

end

end A054719.P11359480245061007211

/-! ## A054719.P1989918008828584036

`A049283(A005408(n))+n*A027377(n)`
-/

namespace A054719.P1989918008828584036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A005408 n).toNat + (n : ℤ) * A027377 n

end

end A054719.P1989918008828584036

/-! ## A054719.P15520230279454504114

`A027377(n)/A027376(n)*A054718(n)`
-/

namespace A054719.P15520230279454504114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027377 n : ℚ) / (A027376 n : ℚ) * (A054718 n : ℚ)

end

end A054719.P15520230279454504114

/-! ## A054719.P10203057700554638170

`A027377(n)*A331886(∑[n]-n)`
-/

namespace A054719.P10203057700554638170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027377 n * A331886 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A054719.P10203057700554638170

/-!
# A054720: Number of 5-ary sequences with primitive period n.

The programs for A054720, there is no canonical definition to state claims against.
-/

/-! ## A054720.P5285215716390452618

`A001692(n)*A028310(n)`
-/

namespace A054720.P5285215716390452618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 n * A028310 n

end

end A054720.P5285215716390452618

/-! ## A054720.P11358769357997760554

`A001692(n)*A065033(2*n)`
-/

namespace A054720.P11358769357997760554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 n * A065033 (2 * n)

end

end A054720.P11358769357997760554

/-! ## A054720.P8276038353065193218

`A001692(n)*A123108(2*n)`
-/

namespace A054720.P8276038353065193218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 n * A123108 (2 * n)

end

end A054720.P8276038353065193218

/-! ## A054720.P4073433519169569081

`A000007(n)+n*A001692(n)`
-/

namespace A054720.P4073433519169569081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A001692 n

end

end A054720.P4073433519169569081

/-! ## A054720.P7165851678918962588

`gcd(n, A054719(n))*A001692(n)`
-/

namespace A054720.P7165851678918962588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A054719 n) : ℤ) * A001692 n

end

end A054720.P7165851678918962588

/-! ## A054720.P10544474624716860195

`A001692(n)*A008619(A004273(n))`
-/

namespace A054720.P10544474624716860195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 n * A008619 (A004273 n).toNat

end

end A054720.P10544474624716860195

/-! ## A054720.P11777760718751780190

`A000463(A004280(n+1))*A001692(n)`
-/

namespace A054720.P11777760718751780190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A004280 (n + 1)).toNat * A001692 n

end

end A054720.P11777760718751780190

/-! ## A054720.P15976894188465576354

`A001692(n)*A003963(A008578(n+1))`
-/

namespace A054720.P15976894188465576354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 n * A003963 (A008578 (n + 1)).toNat

end

end A054720.P15976894188465576354

/-! ## A054720.P17982668403228056740

`A001692(n)/A027376(n)*A054718(n)`
-/

namespace A054720.P17982668403228056740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001692 n : ℚ) / (A027376 n : ℚ) * (A054718 n : ℚ)

end

end A054720.P17982668403228056740

/-! ## A054720.P7916996365375906628

`A001692(n)/A027377(n)*A054719(n)`
-/

namespace A054720.P7916996365375906628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001692 n : ℚ) / (A027377 n : ℚ) * (A054719 n : ℚ)

end

end A054720.P7916996365375906628

/-! ## A054720.P1253498157814866603

`A001692(n)*A046854(A027379(n))`
-/

namespace A054720.P1253498157814866603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 n * A046854 (A027379 n).toNat

end

end A054720.P1253498157814866603

/-! ## A054720.P4195874817650923099

`A001692(n)/A032164(n)*A054721(n)`
-/

namespace A054720.P4195874817650923099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001692 n : ℚ) / (A032164 n : ℚ) * (A054721 n : ℚ)

end

end A054720.P4195874817650923099

/-!
# A054721: Number of 6-ary sequences with primitive period n.

The programs for A054721, there is no canonical definition to state claims against.
-/

/-! ## A054721.P3198591592277129064

`A028310(n)*A032164(n)`
-/

namespace A054721.P3198591592277129064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A032164 n

end

end A054721.P3198591592277129064

/-! ## A054721.P5554262069243431421

`A032164(n)*A123108(2*n)`
-/

namespace A054721.P5554262069243431421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032164 n * A123108 (2 * n)

end

end A054721.P5554262069243431421

/-! ## A054721.P17446604293192722871

`(A004277(n)-n)*A032164(n)`
-/

namespace A054721.P17446604293192722871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n - (n : ℤ)) * A032164 n

end

end A054721.P17446604293192722871

/-! ## A054721.P794147007992168750

`A007318(A000124(n))*A032164(n)`
-/

namespace A054721.P794147007992168750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A032164 n

end

end A054721.P794147007992168750

/-! ## A054721.P17776803419909533248

`A004525(A004277(n))*A032164(n)`
-/

namespace A054721.P17776803419909533248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004277 n).toNat * A032164 n

end

end A054721.P17776803419909533248

/-! ## A054721.P9067511360300807918

`A032164(n)*A110654(A004280(n+1))`
-/

namespace A054721.P9067511360300807918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032164 n * A110654 (A004280 (n + 1)).toNat

end

end A054721.P9067511360300807918

/-! ## A054721.P14518087994941678784

`record[A074650(A052905(n))]*A028310(n)`
-/

namespace A054721.P14518087994941678784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A028310 n

end

end A054721.P14518087994941678784

/-! ## A054721.P3065775556616370342

`record[A074650(A052905(n))]*A065033(2*n)`
-/

namespace A054721.P3065775556616370342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A065033 (2 * n)

end

end A054721.P3065775556616370342

/-!
# A054722: Triangle of coefficients of polynomials arising in enumeration of periodic sequences.

The programs for A054722, there is no canonical definition to state claims against.
-/

/-! ## A054722.P4171010365329835309

`A152175(A038722(n+1))`
-/

namespace A054722.P4171010365329835309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152175 (A038722 (n + 1)).toNat

end

end A054722.P4171010365329835309

/-! ## A054722.P14437589501265357891

`A152175(A061579(n)+1)`
-/

namespace A054722.P14437589501265357891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152175 (A061579 n + 1).toNat

end

end A054722.P14437589501265357891

/-! ## A054722.P11954085002952201876

`A152175(A114327(n)+1+n)`
-/

namespace A054722.P11954085002952201876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152175 (A114327 n + 1 + (n : ℤ)).toNat

end

end A054722.P11954085002952201876

/-! ## A054722.P681852740105358102

`A152175(A093995(n+1)-n)`
-/

namespace A054722.P681852740105358102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152175 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A054722.P681852740105358102

/-! ## A054722.P13751222314594073349

`A152175(A127739(n+1)-A002262(n))`
-/

namespace A054722.P13751222314594073349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152175 (A127739 (n + 1) - A002262 n).toNat

end

end A054722.P13751222314594073349

/-!
# A054723: Prime exponents of composite Mersenne numbers.

The programs for A054723, the canonical program `A054723.P13772969738450931539` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054723 has offset 1).

The definition of A054723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054723.P13772969738450931539

`p?[A332219(2*n+1)+2*n+1]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054723

/-- `p?[A332219(2*n+1)+2*n+1]` -/
def P13772969738450931539.Spec : Prop :=
  ∀ n, P13772969738450931539.a n = A054723 (n + 1)

theorem P13772969738450931539.correct : P13772969738450931539.Spec := by
  intro n
  simp only [A054723, Nat.add_sub_cancel]

end A054723

/-! ## A054723.P18248914315133555085

`A000040(A135980(n+1))`
-/

namespace A054723.P18248914315133555085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A135980 (n + 1)).toNat

end

end A054723.P18248914315133555085

namespace A054723

/-- `A000040(A135980(n+1))` -/
def P18248914315133555085.Spec : Prop :=
  ∀ n, P18248914315133555085.a n = A054723 (n + 1)

end A054723

/-! ## A054723.P12636230165301661706

`p?[xor(n, A332219(n+1))+1]`
-/

namespace A054723.P12636230165301661706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A332219 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054723.P12636230165301661706

namespace A054723

/-- `p?[xor(n, A332219(n+1))+1]` -/
def P12636230165301661706.Spec : Prop :=
  ∀ n, P12636230165301661706.a n = A054723 (n + 1)

end A054723

/-! ## A054723.P14410122175747013163

`A000040(lt[1, A276121(n+1)]+1)`
-/

namespace A054723.P14410122175747013163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A054723.P14410122175747013163

namespace A054723

/-- `A000040(lt[1, A276121(n+1)]+1)` -/
def P14410122175747013163.Spec : Prop :=
  ∀ n, P14410122175747013163.a n = A054723 (n + 1)

end A054723

/-! ## A054723.P4668059276616263124

`p?[comp[A048737(n+1)]]`
-/

namespace A054723.P4668059276616263124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048737 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A054723.P4668059276616263124

namespace A054723

/-- `p?[comp[A048737(n+1)]]` -/
def P4668059276616263124.Spec : Prop :=
  ∀ n, (P4668059276616263124.a n : ℤ) = A054723 (n + 1)

end A054723

/-! ## A054723.P16194697007051948234

`p?[comp[A072226(n+1)]]`
-/

namespace A054723.P16194697007051948234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A054723.P16194697007051948234

namespace A054723

/-- `p?[comp[A072226(n+1)]]` -/
def P16194697007051948234.Spec : Prop :=
  ∀ n, (P16194697007051948234.a n : ℤ) = A054723 (n + 1)

end A054723

/-! ## A054723.P15672200732162123725

`p?[A045762(n+1)]`
-/

namespace A054723.P15672200732162123725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054723.P15672200732162123725

namespace A054723

/-- `p?[A045762(n+1)]` -/
def P15672200732162123725.Spec : Prop :=
  ∀ n, P15672200732162123725.a n = A054723 (n + 1)

end A054723

/-! ## A054723.P9184213512777422741

`p?[comp[A153798(n+1)]+2]`
-/

namespace A054723.P9184213512777422741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A054723.P9184213512777422741

namespace A054723

/-- `p?[comp[A153798(n+1)]+2]` -/
def P9184213512777422741.Spec : Prop :=
  ∀ n, (P9184213512777422741.a n : ℤ) = A054723 (n + 1)

end A054723

/-! ## A054723.P11867690123158658537

`filter[A045762(n+2), A010051(#)]`
-/

namespace A054723.P11867690123158658537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A054723.P11867690123158658537

namespace A054723

/-- `filter[A045762(n+2), A010051(#)]` -/
def P11867690123158658537.Spec : Prop :=
  ∀ n, P11867690123158658537.a n = A054723 (n + 1)

end A054723

/-! ## A054723.P10138793462667972845

`∩[A000040(n+1), A045762(n+1)]`
-/

namespace A054723.P10138793462667972845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054723.P10138793462667972845

namespace A054723

/-- `∩[A000040(n+1), A045762(n+1)]` -/
def P10138793462667972845.Spec : Prop :=
  ∀ n, (P10138793462667972845.a n : ℤ) = A054723 (n + 1)

end A054723

/-! ## A054723.P378466989376457124

`∩[A004139(n+1), A045762(n+1)]`
-/

namespace A054723.P378466989376457124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054723.P378466989376457124

namespace A054723

/-- `∩[A004139(n+1), A045762(n+1)]` -/
def P378466989376457124.Spec : Prop :=
  ∀ n, (P378466989376457124.a n : ℤ) = A054723 (n + 1)

end A054723

/-! ## A054723.P11479848017825443330

`∩[A045319(n+1), A045762(n+1)]`
-/

namespace A054723.P11479848017825443330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054723.P11479848017825443330

namespace A054723

/-- `∩[A045319(n+1), A045762(n+1)]` -/
def P11479848017825443330.Spec : Prop :=
  ∀ n, (P11479848017825443330.a n : ℤ) = A054723 (n + 1)

end A054723

/-! ## A054723.P5419816081329802742

`∩[A045344(n+1), A045762(n+1)]`
-/

namespace A054723.P5419816081329802742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054723.P5419816081329802742

namespace A054723

/-- `∩[A045344(n+1), A045762(n+1)]` -/
def P5419816081329802742.Spec : Prop :=
  ∀ n, (P5419816081329802742.a n : ℤ) = A054723 (n + 1)

end A054723

/-! ## A054723.P1316036980065355464

`∩[A045762(n+1), A065091(n+1)]`
-/

namespace A054723.P1316036980065355464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054723.P1316036980065355464

namespace A054723

/-- `∩[A045762(n+1), A065091(n+1)]` -/
def P1316036980065355464.Spec : Prop :=
  ∀ n, (P1316036980065355464.a n : ℤ) = A054723 (n + 1)

end A054723

/-! ## A054723.P1515239615544860979

`∩[A045762(n+1), A157996(n+1)]`
-/

namespace A054723.P1515239615544860979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054723.P1515239615544860979

namespace A054723

/-- `∩[A045762(n+1), A157996(n+1)]` -/
def P1515239615544860979.Spec : Prop :=
  ∀ n, (P1515239615544860979.a n : ℤ) = A054723 (n + 1)

end A054723

/-! ## A054723.P6686686221768605729

`∩[A045762(n+1), A215848(n+1)]`
-/

namespace A054723.P6686686221768605729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054723.P6686686221768605729

namespace A054723

/-- `∩[A045762(n+1), A215848(n+1)]` -/
def P6686686221768605729.Spec : Prop :=
  ∀ n, (P6686686221768605729.a n : ℤ) = A054723 (n + 1)

end A054723

/-! ## A054723.P14515997929564889474

`p?[(n+1)%(A126717(n+1)+n)]`
-/

namespace A054723.P14515997929564889474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A126717 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054723.P14515997929564889474

namespace A054723

/-- `p?[(n+1)%(A126717(n+1)+n)]` -/
def P14515997929564889474.Spec : Prop :=
  ∀ n, P14515997929564889474.a n = A054723 (n + 1)

end A054723

/-! ## A054723.P10507781690426705876

`filter[A045762(n+2), A171387(#)]`
-/

namespace A054723.P10507781690426705876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A054723.P10507781690426705876

namespace A054723

/-- `filter[A045762(n+2), A171387(#)]` -/
def P10507781690426705876.Spec : Prop :=
  ∀ n, P10507781690426705876.a n = A054723 (n + 1)

end A054723

/-! ## A054723.P12845260396857840654

`filter[A045762(n+3), A080339(#)]`
-/

namespace A054723.P12845260396857840654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A054723.P12845260396857840654

namespace A054723

/-- `filter[A045762(n+3), A080339(#)]` -/
def P12845260396857840654.Spec : Prop :=
  ∀ n, P12845260396857840654.a n = A054723 (n + 1)

end A054723

/-! ## A054723.P11028811794647123849

`filter[A045762(n+3), A080545(#)]`
-/

namespace A054723.P11028811794647123849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045762 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A054723.P11028811794647123849

namespace A054723

/-- `filter[A045762(n+3), A080545(#)]` -/
def P11028811794647123849.Spec : Prop :=
  ∀ n, P11028811794647123849.a n = A054723 (n + 1)

end A054723

/-!
# A054725: a(1)=1; a(n) = Sum_{p | n} e * a(p-1), where sum is over all primes p that divide n, and e is the multiplicity of p in n.

The programs for A054725, the canonical program `A054725.P13629253926091839604` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054725 has offset 1).

The definition of A054725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054725.P17088789930188008710

`A064415(abs(1-n)+2)`
-/

namespace A054725.P17088789930188008710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (|1 - (n : ℤ)| + 2).toNat

end

end A054725.P17088789930188008710

namespace A054725

/-- `A064415(abs(1-n)+2)` -/
def P17088789930188008710.Spec : Prop :=
  ∀ n, P17088789930188008710.a n = A054725 (n + 1)

end A054725

/-! ## A054725.P2713192423509460817

`A003434(n+1)+(1-n)%2`
-/

namespace A054725.P2713192423509460817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (n + 1) + Int.tmod (1 - (n : ℤ)) 2

end

end A054725.P2713192423509460817

namespace A054725

/-- `A003434(n+1)+(1-n)%2` -/
def P2713192423509460817.Spec : Prop :=
  ∀ n, P2713192423509460817.a n = A054725 (n + 1)

end A054725

/-! ## A054725.P18267350718979985448

`A334195(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A054725.P18267350718979985448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A334195 (n + 1) + a (n - 1)

end

end A054725.P18267350718979985448

namespace A054725

/-- `A334195(n+1)+a(n-1)` -/
def P18267350718979985448.Spec : Prop :=
  ∀ n, P18267350718979985448.a n = A054725 (n + 1)

end A054725

/-! ## A054725.P18374290641520763154

`a(A109606(n+1))+n%2` with `a(0)=1, a(1)=1`
-/

namespace A054725.P18374290641520763154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A109606 (n + 1)).toNat + n % 2

end

end A054725.P18374290641520763154

namespace A054725

/-- `a(A109606(n+1))+n%2` -/
def P18374290641520763154.Spec : Prop :=
  ∀ n, (P18374290641520763154.a n : ℤ) = A054725 (n + 1)

end A054725

/-! ## A054725.P16069605748635303539

`A028310(A064415(n+1))`
-/

namespace A054725.P16069605748635303539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A064415 (n + 1)).toNat

end

end A054725.P16069605748635303539

namespace A054725

/-- `A028310(A064415(n+1))` -/
def P16069605748635303539.Spec : Prop :=
  ∀ n, P16069605748635303539.a n = A054725 (n + 1)

end A054725

/-! ## A054725.P14957612906261196508

`A064415(n+1)+A000007(n)`
-/

namespace A054725.P14957612906261196508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) + A000007 n

end

end A054725.P14957612906261196508

namespace A054725

/-- `A064415(n+1)+A000007(n)` -/
def P14957612906261196508.Spec : Prop :=
  ∀ n, P14957612906261196508.a n = A054725 (n + 1)

end A054725

/-! ## A054725.P14853612036846749516

`A049108(n+1)-A134451(n)`
-/

namespace A054725.P14853612036846749516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (n + 1) - A134451 n

end

end A054725.P14853612036846749516

namespace A054725

/-- `A049108(n+1)-A134451(n)` -/
def P14853612036846749516.Spec : Prop :=
  ∀ n, P14853612036846749516.a n = A054725 (n + 1)

end A054725

/-! ## A054725.P11672982855523712383

`gcd(A180633(n)!, A064415(n+1))`
-/

namespace A054725.P11672982855523712383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A180633 n).toNat : ℤ) (A064415 (n + 1))

end

end A054725.P11672982855523712383

namespace A054725

/-- `gcd(A180633(n)!, A064415(n+1))` -/
def P11672982855523712383.Spec : Prop :=
  ∀ n, (P11672982855523712383.a n : ℤ) = A054725 (n + 1)

end A054725

/-! ## A054725.P10017128666221129970

`A254667(A064415(n+1)+1)-1`
-/

namespace A054725.P10017128666221129970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A064415 (n + 1) + 1).toNat - 1

end

end A054725.P10017128666221129970

namespace A054725

/-- `A254667(A064415(n+1)+1)-1` -/
def P10017128666221129970.Spec : Prop :=
  ∀ n, P10017128666221129970.a n = A054725 (n + 1)

end A054725

/-! ## A054725.P13649082399568343565

`A064415(n+1)+1-A057427(n)`
-/

namespace A054725.P13649082399568343565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) + (1 - A057427 n)

end

end A054725.P13649082399568343565

namespace A054725

/-- `A064415(n+1)+1-A057427(n)` -/
def P13649082399568343565.Spec : Prop :=
  ∀ n, P13649082399568343565.a n = A054725 (n + 1)

end A054725

/-! ## A054725.P6828727110992988641

`A061373(n+1)-A064097(n+1)`
-/

namespace A054725.P6828727110992988641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (n + 1) - A064097 (n + 1)

end

end A054725.P6828727110992988641

namespace A054725

/-- `A061373(n+1)-A064097(n+1)` -/
def P6828727110992988641.Spec : Prop :=
  ∀ n, P6828727110992988641.a n = A054725 (n + 1)

theorem P6828727110992988641.correct : P6828727110992988641.Spec := by
  intro n
  simp only [A054725, Nat.add_sub_cancel, A054725.P6828727110992988641.a, A054725.P13629253926091839604.a, A061373, A061373.P17835350724076642860.a, A064097, A064097.P7596357096388061613.a, A309243, A309243.P2615360336711731693.a, A060681, A060681.P11747361826650309872.a, A171462, A171462.P186066025836437895.a, A032742, A032742.P14489579072839730134.a, A052126, A052126.P1944428405920482243.a, A006530, A006530.P13372528560459906635.a, A020639, A020639.P7578813688609615429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054725

/-! ## A054725.P11543207260595512672

`A209229(2*n+1)+A064415(n+1)`
-/

namespace A054725.P11543207260595512672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 1) + A064415 (n + 1)

end

end A054725.P11543207260595512672

namespace A054725

/-- `A209229(2*n+1)+A064415(n+1)` -/
def P11543207260595512672.Spec : Prop :=
  ∀ n, P11543207260595512672.a n = A054725 (n + 1)

end A054725

/-! ## A054725.P6195216864025789899

`A064415(n+1)+and(1, A238533(n+1))`
-/

namespace A054725.P6195216864025789899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) + Int.land 1 (A238533 (n + 1))

end

end A054725.P6195216864025789899

namespace A054725

/-- `A064415(n+1)+and(1, A238533(n+1))` -/
def P6195216864025789899.Spec : Prop :=
  ∀ n, P6195216864025789899.a n = A054725 (n + 1)

end A054725

/-! ## A054725.P9905662795792088831

`A004736(2*∑[A334195(n+1)]²+1)`
-/

namespace A054725.P9905662795792088831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1).toNat

end

end A054725.P9905662795792088831

namespace A054725

/-- `A004736(2*∑[A334195(n+1)]²+1)` -/
def P9905662795792088831.Spec : Prop :=
  ∀ n, P9905662795792088831.a n = A054725 (n + 1)

end A054725

/-! ## A054725.P13629253926091839604

`val(A309243(n+1)+A309243(n+1)², 2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A054725

/-- `val(A309243(n+1)+A309243(n+1)², 2)` -/
def P13629253926091839604.Spec : Prop :=
  ∀ n, (P13629253926091839604.a n : ℤ) = A054725 (n + 1)

theorem P13629253926091839604.correct : P13629253926091839604.Spec := by
  intro n
  simp only [A054725, Nat.add_sub_cancel]

end A054725

/-! ## A054725.P5436173629734597976

`∑[A334195(n+1)]+val(A000040(n+1), 2)`
-/

namespace A054725.P5436173629734597976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A054725.P5436173629734597976

namespace A054725

/-- `∑[A334195(n+1)]+val(A000040(n+1), 2)` -/
def P5436173629734597976.Spec : Prop :=
  ∀ n, P5436173629734597976.a n = A054725 (n + 1)

end A054725

/-! ## A054725.P2978428747441429595

`∑[A334195(n+1)]+val(A157532(n+1)+1, 3)`
-/

namespace A054725.P2978428747441429595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (SequenceMachineLib.valuation (A157532 (n + 1) + 1).toNat 3 : ℤ)

end

end A054725.P2978428747441429595

namespace A054725

/-- `∑[A334195(n+1)]+val(A157532(n+1)+1, 3)` -/
def P2978428747441429595.Spec : Prop :=
  ∀ n, P2978428747441429595.a n = A054725 (n + 1)

end A054725

/-! ## A054725.P9920969933887842437

`A049108(A000010(A000010(2*(n+1))))`
-/

namespace A054725.P9920969933887842437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (A000010 (A000010 (2 * (n + 1))).toNat).toNat

end

end A054725.P9920969933887842437

namespace A054725

/-- `A049108(A000010(A000010(2*(n+1))))` -/
def P9920969933887842437.Spec : Prop :=
  ∀ n, P9920969933887842437.a n = A054725 (n + 1)

end A054725

/-! ## A054725.P17374532274583851231

`A064415(n+1)+A008626(a(A064415(n)))` with `a(0)=1`
-/

namespace A054725.P17374532274583851231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064415 (n + 1) + A008626 (a (A064415 n).toNat).toNat

end

end A054725.P17374532274583851231

namespace A054725

/-- `A064415(n+1)+A008626(a(A064415(n)))` -/
def P17374532274583851231.Spec : Prop :=
  ∀ n, P17374532274583851231.a n = A054725 (n + 1)

end A054725

/-!
# A054726: Number of graphs with n nodes on a circle without crossing edges.

The programs for A054726, the canonical program `A054726.P3907009810118364859` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054726 has offset 0).

The definition of A054726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054726.P3907009810118364859

`((12*n-30)*a(n-1)-(4*n-16)*a(n-2))/(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A054726

/-- `((12*n-30)*a(n-1)-(4*n-16)*a(n-2))/(n-1)` -/
def P3907009810118364859.Spec : Prop :=
  ∀ n, P3907009810118364859.a n = (A054726 n : ℚ)

end A054726

/-! ## A054726.P8298073627144034499

`ceil(2^(n-1))*A006318(floor(n-atan(n)))`
-/

namespace A054726.P8298073627144034499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A006318 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A054726.P8298073627144034499

namespace A054726

/-- `ceil(2^(n-1))*A006318(floor(n-atan(n)))` -/
def P8298073627144034499.Spec : Prop :=
  ∀ n, P8298073627144034499.a n = A054726 n

end A054726

/-! ## A054726.P1212584240528390388

`A011782(n)*A132372(A161680(n))`
-/

namespace A054726.P1212584240528390388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A132372 (A161680 n).toNat

end

end A054726.P1212584240528390388

namespace A054726

/-- `A011782(n)*A132372(A161680(n))` -/
def P1212584240528390388.Spec : Prop :=
  ∀ n, P1212584240528390388.a n = A054726 n

end A054726

/-! ## A054726.P2644963329197855276

`A006318(A289207(n))*A011782(n)`
-/

namespace A054726.P2644963329197855276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 (A289207 n).toNat * A011782 n

end

end A054726.P2644963329197855276

namespace A054726

/-- `A006318(A289207(n))*A011782(n)` -/
def P2644963329197855276.Spec : Prop :=
  ∀ n, P2644963329197855276.a n = A054726 n

end A054726

/-! ## A054726.P12158627265038734302

`A011782(n)*A155069(abs(A023443(n)))`
-/

namespace A054726.P12158627265038734302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A155069 |A023443 n|.toNat

end

end A054726.P12158627265038734302

namespace A054726

/-- `A011782(n)*A155069(abs(A023443(n)))` -/
def P12158627265038734302.Spec : Prop :=
  ∀ n, P12158627265038734302.a n = A054726 n

end A054726

/-! ## A054726.P4967431963013333614

`A011782(n)*A155069(log2(A011782(n)))`
-/

namespace A054726.P4967431963013333614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A155069 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A054726.P4967431963013333614

namespace A054726

/-- `A011782(n)*A155069(log2(A011782(n)))` -/
def P4967431963013333614.Spec : Prop :=
  ∀ n, P4967431963013333614.a n = A054726 n

end A054726

/-! ## A054726.P5377761824094227100

`A326290(n)/2^n`
-/

namespace A054726.P5377761824094227100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326290 n : ℚ) / (2 ^ n : ℚ)

end

end A054726.P5377761824094227100

namespace A054726

/-- `A326290(n)/2^n` -/
def P5377761824094227100.Spec : Prop :=
  ∀ n, P5377761824094227100.a n = (A054726 n : ℚ)

end A054726

/-!
# A054727: Number of forests of rooted trees with n nodes on a circle without crossing edges.

The programs for A054727, there is no canonical definition to state claims against.
-/

/-! ## A054727.P11113098595916648274

`A194990(A000598(2*(n+1))+n)`
-/

namespace A054727.P11113098595916648274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A000598 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A054727.P11113098595916648274

/-! ## A054727.P7880530501169860432

`A304789(2*n)+A161393(n+1)`
-/

namespace A054727.P7880530501169860432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304789 (2 * n) + A161393 (n + 1)

end

end A054727.P7880530501169860432

/-!
# A054729: Numbers n such that genus of modular curve X_0(N) is never equal to n.

The programs for A054729, there is no canonical definition to state claims against.
-/

/-! ## A054729.P16060070976355226649

`eq[0, A273445(n)]`
-/

namespace A054729.P16060070976355226649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273445 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054729.P16060070976355226649

/-! ## A054729.P1710254671386822174

`eq[1, abs(A273510(n))]`
-/

namespace A054729.P1710254671386822174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273510 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054729.P1710254671386822174

/-! ## A054729.P2489953955835391879

`eq[1, -A054728(n)]`
-/

namespace A054729.P2489953955835391879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A054728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054729.P2489953955835391879

/-! ## A054729.P3526335417047770188

`eq[floor(1/(γ-n)), A054728(A028310(n))]`
-/

namespace A054729.P3526335417047770188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054728 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054729.P3526335417047770188

/-! ## A054729.P4739086083920423267

`A028310(eq[C(2, n+2)-1, A054728(n)])`
-/

namespace A054729.P4739086083920423267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A054729.P4739086083920423267

/-! ## A054729.P9524464240541162517

`eq[A273510(n)², A241235(n+1)]`
-/

namespace A054729.P9524464240541162517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273510 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054729.P9524464240541162517

/-!
# A054731: Numbers of the form x*(x + 1)*y*(y + 1)/4 where x and y are distinct.

The programs for A054731, there is no canonical definition to state claims against.
-/

/-! ## A054731.P15839310911530981444

`A053990(n+1)/4`
-/

namespace A054731.P15839310911530981444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053990 (n + 1) : ℚ) / 4

end

end A054731.P15839310911530981444

/-! ## A054731.P13335710736469141606

`A054734(n+1)/8`
-/

namespace A054731.P13335710736469141606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054734 (n + 1) : ℚ) / 8

end

end A054731.P13335710736469141606

/-! ## A054731.P12664140807746502720

`floor(floor(A053990(Δ[n²]-n)/2)/2)`
-/

namespace A054731.P12664140807746502720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A053990 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A054731.P12664140807746502720

/-! ## A054731.P8772617152322709709

`A002265(A053990(n+1))`
-/

namespace A054731.P8772617152322709709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A053990 (n + 1)).toNat

end

end A054731.P8772617152322709709

/-! ## A054731.P17557081634505404358

`A006085(A054734(n+1))`
-/

namespace A054731.P17557081634505404358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A054734 (n + 1)).toNat

end

end A054731.P17557081634505404358

/-! ## A054731.P2989482618282563737

`A008624(A053990(n+1)+1)`
-/

namespace A054731.P2989482618282563737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A053990 (n + 1) + 1).toNat

end

end A054731.P2989482618282563737

/-! ## A054731.P380406112889065612

`A025480(A053990(n+1)+1)`
-/

namespace A054731.P380406112889065612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A053990 (n + 1) + 1).toNat

end

end A054731.P380406112889065612

/-! ## A054731.P14817345883857713047

`A026730(2*A053990(n+1))`
-/

namespace A054731.P14817345883857713047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (2 * A053990 (n + 1)).toNat

end

end A054731.P14817345883857713047

/-! ## A054731.P6937643280888515854

`A106609(A054734(n+1)%A017486(n))`
-/

namespace A054731.P6937643280888515854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (Int.tmod (A054734 (n + 1)) (A017486 n)).toNat

end

end A054731.P6937643280888515854

/-! ## A054731.P1951914744964799856

`A106617(2*A054734(n+1))`
-/

namespace A054731.P1951914744964799856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (2 * A054734 (n + 1)).toNat

end

end A054731.P1951914744964799856

/-!
# A054734: Numbers of the form 2*x*(x + 1)*y*(y + 1) where x and y are distinct.

The programs for A054734, there is no canonical definition to state claims against.
-/

/-! ## A054734.P14478827644223530509

`2*A053990(n+1)`
-/

namespace A054734.P14478827644223530509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053990 (n + 1)

end

end A054734.P14478827644223530509

/-! ## A054734.P11937504770853596282

`8*A054731(n+1)`
-/

namespace A054734.P11937504770853596282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A054731 (n + 1)

end

end A054734.P11937504770853596282

/-! ## A054734.P17703317709891743754

`A053990(n+1)+A053990(Δ[n²]-n)`
-/

namespace A054734.P17703317709891743754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053990 (n + 1) + A053990 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A054734.P17703317709891743754

/-! ## A054734.P3604566645484091129

`A008590(A054731(n+1))`
-/

namespace A054734.P3604566645484091129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A054731 (n + 1)).toNat

end

end A054734.P3604566645484091129

/-! ## A054734.P4760360006100360194

`A053990(n+1)+A008586(A054731(n+1))`
-/

namespace A054734.P4760360006100360194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053990 (n + 1) + A008586 (A054731 (n + 1)).toNat

end

end A054734.P4760360006100360194

/-! ## A054734.P15695685477037647710

`A008586(A053990(n+1)/2)`
-/

namespace A054734.P15695685477037647710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (SequenceMachineLib.roundAway ((A053990 (n + 1) : ℚ) / 2)).toNat

end

end A054734.P15695685477037647710

/-! ## A054734.P7321678843993935012

`A005843(A053990(n+1))`
-/

namespace A054734.P7321678843993935012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A053990 (n + 1)).toNat

end

end A054734.P7321678843993935012

/-!
# A054735: Sums of twin prime pairs.

The programs for A054735, the canonical program `A054735.P17392456198016609014` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054735 has offset 1).

The definition of A054735 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014574, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054735.P17392456198016609014

`2*A014574(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A054735

/-- `2*A014574(n+1)` -/
def P17392456198016609014.Spec : Prop :=
  ∀ n, P17392456198016609014.a n = A054735 (n + 1)

theorem P17392456198016609014.correct : P17392456198016609014.Spec := by
  intro n
  simp only [A054735, Nat.add_sub_cancel]

end A054735

/-! ## A054735.P17853682242896929503

`A111046(n+1)/2`
-/

namespace A054735.P17853682242896929503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111046 (n + 1) : ℚ) / 2

end

end A054735.P17853682242896929503

namespace A054735

/-- `A111046(n+1)/2` -/
def P17853682242896929503.Spec : Prop :=
  ∀ n, P17853682242896929503.a n = (A054735 (n + 1) : ℚ)

theorem P17853682242896929503.correct : P17853682242896929503.Spec := by
  intro n
  simp only [A054735, Nat.add_sub_cancel, A054735.P17853682242896929503.a, A054735.P17392456198016609014.a, A014574, A014574.P4587706211531852143.a, A111046, A111046.P4495621465565882332.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P14552351031517696526.a, A000007, A000007.P6599383543502402472.a, A003557, A003557.P6364735403900941810.a, A034460, A034460.P1958235575820581513.a, A054541, A054541.P347795157194570387.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054735

/-! ## A054735.P2595310171121332265

`4*A040040(n+1)`
-/

namespace A054735.P2595310171121332265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A040040 (n + 1)

end

end A054735.P2595310171121332265

namespace A054735

/-- `4*A040040(n+1)` -/
def P2595310171121332265.Spec : Prop :=
  ∀ n, P2595310171121332265.a n = A054735 (n + 1)

end A054735

/-! ## A054735.P8219035097794158139

`2*A001359(n+1)+2`
-/

namespace A054735.P8219035097794158139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001359 (n + 1) + 2

end

end A054735.P8219035097794158139

namespace A054735

/-- `2*A001359(n+1)+2` -/
def P8219035097794158139.Spec : Prop :=
  ∀ n, P8219035097794158139.a n = A054735 (n + 1)

end A054735

/-! ## A054735.P4409249469683329421

`A082496(n+1)+1`
-/

namespace A054735.P4409249469683329421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1) + 1

end

end A054735.P4409249469683329421

namespace A054735

/-- `A082496(n+1)+1` -/
def P4409249469683329421.Spec : Prop :=
  ∀ n, P4409249469683329421.a n = A054735 (n + 1)

end A054735

/-! ## A054735.P15051070229285917980

`A108605(n+1)+2`
-/

namespace A054735.P15051070229285917980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108605 (n + 1) + 2

end

end A054735.P15051070229285917980

namespace A054735

/-- `A108605(n+1)+2` -/
def P15051070229285917980.Spec : Prop :=
  ∀ n, P15051070229285917980.a n = A054735 (n + 1)

end A054735

/-! ## A054735.P4991535454494940713

`A176810(n+1)-2`
-/

namespace A054735.P4991535454494940713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176810 (n + 1) - 2

end

end A054735.P4991535454494940713

namespace A054735

/-- `A176810(n+1)-2` -/
def P4991535454494940713.Spec : Prop :=
  ∀ n, P4991535454494940713.a n = A054735 (n + 1)

end A054735

/-! ## A054735.P13942873979325003024

`2*sqrt(A075369(n+1))`
-/

namespace A054735.P13942873979325003024
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A075369 (n + 1) : ℝ)

end

end A054735.P13942873979325003024

namespace A054735

/-- `2*sqrt(A075369(n+1))` -/
def P13942873979325003024.Spec : Prop :=
  ∀ n, P13942873979325003024.a n = (A054735 (n + 1) : ℝ)

end A054735

/-! ## A054735.P10337140327485068871

`2*(A001359(n+1)+1)`
-/

namespace A054735.P10337140327485068871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001359 (n + 1) + 1)

end

end A054735.P10337140327485068871

namespace A054735

/-- `2*(A001359(n+1)+1)` -/
def P10337140327485068871.Spec : Prop :=
  ∀ n, P10337140327485068871.a n = A054735 (n + 1)

end A054735

/-! ## A054735.P121931925569479148

`2*(A006512(n+1)-1)`
-/

namespace A054735.P121931925569479148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006512 (n + 1) - 1)

end

end A054735.P121931925569479148

namespace A054735

/-- `2*(A006512(n+1)-1)` -/
def P121931925569479148.Spec : Prop :=
  ∀ n, P121931925569479148.a n = A054735 (n + 1)

end A054735

/-! ## A054735.P5610473515564694265

`2*(A144834(n+1)+2)`
-/

namespace A054735.P5610473515564694265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A144834 (n + 1) + 2)

end

end A054735.P5610473515564694265

namespace A054735

/-- `2*(A144834(n+1)+2)` -/
def P5610473515564694265.Spec : Prop :=
  ∀ n, P5610473515564694265.a n = A054735 (n + 1)

end A054735

/-! ## A054735.P6671652235444947689

`4*(A243811(n+1)+2)`
-/

namespace A054735.P6671652235444947689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A243811 (n + 1) + 2)

end

end A054735.P6671652235444947689

namespace A054735

/-- `4*(A243811(n+1)+2)` -/
def P6671652235444947689.Spec : Prop :=
  ∀ n, P6671652235444947689.a n = A054735 (n + 1)

end A054735

/-! ## A054735.P3242833628140919101

`floor(sqrt(2*A063533(n+1)))`
-/

namespace A054735.P3242833628140919101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A063533 (n + 1))

end

end A054735.P3242833628140919101

namespace A054735

/-- `floor(sqrt(2*A063533(n+1)))` -/
def P3242833628140919101.Spec : Prop :=
  ∀ n, P3242833628140919101.a n = A054735 (n + 1)

end A054735

/-! ## A054735.P15854831319785249922

`2*floor(sqrt(A135286(n+1)))`
-/

namespace A054735.P15854831319785249922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.sqrt (A135286 (n + 1))

end

end A054735.P15854831319785249922

namespace A054735

/-- `2*floor(sqrt(A135286(n+1)))` -/
def P15854831319785249922.Spec : Prop :=
  ∀ n, P15854831319785249922.a n = A054735 (n + 1)

end A054735

/-! ## A054735.P10452785936349670296

`floor(sqrt(2*A184417(n+1)))`
-/

namespace A054735.P10452785936349670296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A184417 (n + 1))

end

end A054735.P10452785936349670296

namespace A054735

/-- `floor(sqrt(2*A184417(n+1)))` -/
def P10452785936349670296.Spec : Prop :=
  ∀ n, P10452785936349670296.a n = A054735 (n + 1)

end A054735

/-! ## A054735.P16064336931082102832

`ceil(2*sqrt(A037074(n+1)))`
-/

namespace A054735.P16064336931082102832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A037074 (n + 1) : ℝ)⌉

end

end A054735.P16064336931082102832

namespace A054735

/-- `ceil(2*sqrt(A037074(n+1)))` -/
def P16064336931082102832.Spec : Prop :=
  ∀ n, P16064336931082102832.a n = A054735 (n + 1)

end A054735

/-! ## A054735.P10955307746015416296

`ceil(2*sqrt(A120875(n+1)))`
-/

namespace A054735.P10955307746015416296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A120875 (n + 1) : ℝ)⌉

end

end A054735.P10955307746015416296

namespace A054735

/-- `ceil(2*sqrt(A120875(n+1)))` -/
def P10955307746015416296.Spec : Prop :=
  ∀ n, P10955307746015416296.a n = A054735 (n + 1)

end A054735

/-! ## A054735.P2675701015528088579

`A001359(n+1)+A006512(n+1)`
-/

namespace A054735.P2675701015528088579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + A006512 (n + 1)

end

end A054735.P2675701015528088579

namespace A054735

/-- `A001359(n+1)+A006512(n+1)` -/
def P2675701015528088579.Spec : Prop :=
  ∀ n, P2675701015528088579.a n = A054735 (n + 1)

end A054735

/-! ## A054735.P3571458123465017002

`A135284(n+1)+A001359(n+2)`
-/

namespace A054735.P3571458123465017002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135284 (n + 1) + A001359 (n + 2)

end

end A054735.P3571458123465017002

namespace A054735

/-- `A135284(n+1)+A001359(n+2)` -/
def P3571458123465017002.Spec : Prop :=
  ∀ n, P3571458123465017002.a n = A054735 (n + 1)

theorem P3571458123465017002.correct : P3571458123465017002.Spec := by
  intro n
  simp only [A054735, Nat.add_sub_cancel, A054735.P3571458123465017002.a, A054735.P17392456198016609014.a, A001359, A001359.P8865495035699438537.a, A014574, A014574.P4587706211531852143.a, A135284, A135284.P4928143440831884536.a, A077800, A077800.P16009445446139691322.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A096281, A096281.P9870488552655544131.a, A166597, A166597.P14552351031517696526.a, A000007, A000007.P6599383543502402472.a, A003557, A003557.P6364735403900941810.a, A008619, A008619.P16053834178911111118.a, A034460, A034460.P1958235575820581513.a, A054541, A054541.P347795157194570387.a, A095117, A095117.P12920599782158258117.f2, A095117.P12920599782158258117.f1, A095117.P12920599782158258117.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054735

/-! ## A054735.P714861140482224113

`A362941(n+1)-A075369(n+1)`
-/

namespace A054735.P714861140482224113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362941 (n + 1) - A075369 (n + 1)

end

end A054735.P714861140482224113

namespace A054735

/-- `A362941(n+1)-A075369(n+1)` -/
def P714861140482224113.Spec : Prop :=
  ∀ n, P714861140482224113.a n = A054735 (n + 1)

end A054735

/-!
# A054736: Smallest losing position after your opponent has taken k stones in a variation of "Fibonacci Nim".

The programs for A054736, there is no canonical definition to state claims against.
-/

/-! ## A054736.P16410406035584025374

`A003411(A009005(n+1))`
-/

namespace A054736.P16410406035584025374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003411 (A009005 (n + 1)).toNat

end

end A054736.P16410406035584025374

/-! ## A054736.P6486405218053191893

`A003411(n+4)-A000038(n)`
-/

namespace A054736.P6486405218053191893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003411 (n + 4) - A000038 n

end

end A054736.P6486405218053191893

/-! ## A054736.P2705520860831560128

`A103632(A057427(n)+n+7)`
-/

namespace A054736.P2705520860831560128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 (A057427 n + (n + 7 : ℤ)).toNat

end

end A054736.P2705520860831560128

/-! ## A054736.P13314527549287394493

`A003411(A181565(n)-A077802(n))`
-/

namespace A054736.P13314527549287394493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003411 (A181565 n - A077802 n).toNat

end

end A054736.P13314527549287394493

/-! ## A054736.P12130025643713254481

`xor(A000038(A056556(n)), A003411(n+4))`
-/

namespace A054736.P12130025643713254481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (A056556 n).toNat) (A003411 (n + 4))

end

end A054736.P12130025643713254481

/-!
# A054737: Numbers n such that n^2 can be split into two nonzero squares (perhaps with leading zeros) in exactly two different ways.

The programs for A054737, there is no canonical definition to state claims against.
-/

/-! ## A054737.P13684041731732629243

`sqrt(A054738(n))`
-/

namespace A054737.P13684041731732629243
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A054738 n : ℝ)

end

end A054737.P13684041731732629243

/-! ## A054737.P4581149729125288191

`root(A054738(n), 2%A062124(n))`
-/

namespace A054737.P4581149729125288191
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A054738 n : ℝ) ^ (1 / (Int.tmod 2 (A062124 n) : ℝ))

end

end A054737.P4581149729125288191

/-! ## A054737.P2784308145769114441

`root(A054738(n), gcd(2, A000038(n)))`
-/

namespace A054737.P2784308145769114441
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A054738 n : ℝ) ^ (1 / (Int.gcd 2 (A000038 n) : ℝ))

end

end A054737.P2784308145769114441

/-! ## A054737.P10533638354181921647

`root(A054738(n), A016789(n)%3)`
-/

namespace A054737.P10533638354181921647
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A054738 n : ℝ) ^ (1 / (Int.tmod (A016789 n) 3 : ℝ))

end

end A054737.P10533638354181921647

/-!
# A054738: Squares which can be split into two nonzero squares (perhaps with leading zeros) in exactly two different ways.

The programs for A054738, there is no canonical definition to state claims against.
-/

/-! ## A054738.P16673696488338495491

`A054737(n+1)²`
-/

namespace A054738.P16673696488338495491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054737 (n + 1) ^ 2

end

end A054738.P16673696488338495491

/-! ## A054738.P8896196932114774477

`record[A054737(A065648(n))²]`
-/

namespace A054738.P8896196932114774477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054737 (A065648 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054738.P8896196932114774477

/-! ## A054738.P5763272106794729919

`record[A054737(A106466(n))²]`
-/

namespace A054738.P5763272106794729919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054737 (A106466 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054738.P5763272106794729919

/-! ## A054738.P17187887776700386648

`A054737(n+1)^A007978(2*n+1)`
-/

namespace A054738.P17187887776700386648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054737 (n + 1) : ℚ) ^ (A007978 (2 * n + 1) : ℤ)

end

end A054738.P17187887776700386648

/-! ## A054738.P9369013353899754499

`A054737(n+1)^A020639(2*(n+1))`
-/

namespace A054738.P9369013353899754499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054737 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A054738.P9369013353899754499

/-!
# A054739: Number of inequivalent n X n matrices over GF(3) under action of dihedral group of the square D_4.

The programs for A054739, there is no canonical definition to state claims against.
-/

/-! ## A054739.P10527472376311231593

`A343097(∑[n+3]+n+3)`
-/

namespace A054739.P10527472376311231593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A054739.P10527472376311231593

/-! ## A054739.P9134720235278320981

`record[A343097(abs(A046691(n)))]`
-/

namespace A054739.P9134720235278320981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054739.P9134720235278320981

/-! ## A054739.P8994856686958479610

`record[A343097(A027379(n)-1)]`
-/

namespace A054739.P8994856686958479610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054739.P8994856686958479610

/-! ## A054739.P2019647066542798622

`record[gcd(A067586(n+4), A343097(n))]`
-/

namespace A054739.P2019647066542798622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067586 (n + 4)) (A343097 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054739.P2019647066542798622

/-!
# A054740: Cototient(n)/totient(n) when this is an integer.

The programs for A054740, there is no canonical definition to state claims against.
-/

/-! ## A054740.P9900155881320225450

`A049237(n+1)-1`
-/

namespace A054740.P9900155881320225450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049237 (n + 1) - 1

end

end A054740.P9900155881320225450

/-! ## A054740.P3840851800552534976

`A051953(A007694(n+1))/A000010(A007694(n+1))`
-/

namespace A054740.P3840851800552534976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051953 (A007694 (n + 1)).toNat : ℚ) / (A000010 (A007694 (n + 1)).toNat : ℚ)

end

end A054740.P3840851800552534976

/-! ## A054740.P11683562008999795390

`val(dr(A187778(n+1)), 3)`
-/

namespace A054740.P11683562008999795390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.digitalRoot (A187778 (n + 1))) 3

end

end A054740.P11683562008999795390

/-! ## A054740.P8374615157661663819

`a(a(A022329(n)))+1` with `a(0)=0`
-/

namespace A054740.P8374615157661663819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (a (A022329 n).toNat) + 1

end

end A054740.P8374615157661663819

/-! ## A054740.P16989101947577336024

`floor(log2(gcd(6, A007694(n+1))))`
-/

namespace A054740.P16989101947577336024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Int.gcd 6 (A007694 (n + 1)))

end

end A054740.P16989101947577336024

/-! ## A054740.P17983668186005039635

`gcd(2, a(3-A086411(n)))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A054740.P17983668186005039635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  Nat.gcd 2 (a (3 - A086411 n).toNat)

end

end A054740.P17983668186005039635

/-! ## A054740.P12073001925595851292

`A001285(a(A022329(n)))` with `a(0)=0`
-/

namespace A054740.P12073001925595851292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001285 (a (A022329 n).toNat).toNat

end

end A054740.P12073001925595851292

/-! ## A054740.P12279218190028884596

`A001316(a(A022329(n)))` with `a(0)=0`
-/

namespace A054740.P12279218190028884596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001316 (a (A022329 n).toNat).toNat

end

end A054740.P12279218190028884596

/-! ## A054740.P10704761738783937585

`A001611(a(A022329(n)))` with `a(0)=0`
-/

namespace A054740.P10704761738783937585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001611 (a (A022329 n).toNat).toNat

end

end A054740.P10704761738783937585

/-! ## A054740.P16664408942889742309

`A023105(a(A022329(n)))` with `a(0)=0`
-/

namespace A054740.P16664408942889742309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A023105 (a (A022329 n).toNat).toNat

end

end A054740.P16664408942889742309

/-! ## A054740.P4097570579887968878

`A000031(a(a(A022329(n))))` with `a(0)=0`
-/

namespace A054740.P4097570579887968878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000031 (a (a (A022329 n).toNat).toNat).toNat

end

end A054740.P4097570579887968878

/-! ## A054740.P11885385515125575567

`A000070(a(a(A022329(n))))` with `a(0)=0`
-/

namespace A054740.P11885385515125575567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000070 (a (a (A022329 n).toNat).toNat).toNat

end

end A054740.P11885385515125575567

/-! ## A054740.P11698586672582313267

`A000079(a(a(A022329(n))))` with `a(0)=0`
-/

namespace A054740.P11698586672582313267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000079 (a (a (A022329 n).toNat).toNat).toNat

end

end A054740.P11698586672582313267

/-! ## A054740.P6876241542419742907

`A001513(n)%A049237(n+1)`
-/

namespace A054740.P6876241542419742907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A049237 (n + 1))

end

end A054740.P6876241542419742907

/-! ## A054740.P3885841489094286079

`A001538(n)%A049237(n+1)`
-/

namespace A054740.P3885841489094286079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A049237 (n + 1))

end

end A054740.P3885841489094286079

/-! ## A054740.P15741744238371379097

`A002148(n)%A049237(n+1)`
-/

namespace A054740.P15741744238371379097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002148 n) (A049237 (n + 1))

end

end A054740.P15741744238371379097

/-! ## A054740.P9145872974555199224

`A004538(n)%A049237(n+1)`
-/

namespace A054740.P9145872974555199224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004538 n) (A049237 (n + 1))

end

end A054740.P9145872974555199224

/-! ## A054740.P1954614003723865862

`A004933(n)%A049237(n+1)`
-/

namespace A054740.P1954614003723865862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004933 n) (A049237 (n + 1))

end

end A054740.P1954614003723865862

/-! ## A054740.P212836178558043251

`A016969(n)%A049237(n+1)`
-/

namespace A054740.P212836178558043251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n) (A049237 (n + 1))

end

end A054740.P212836178558043251

/-! ## A054740.P3741711121247667604

`A016971(n)%A049237(n+1)`
-/

namespace A054740.P3741711121247667604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016971 n) (A049237 (n + 1))

end

end A054740.P3741711121247667604

/-!
# A054741: Numbers m such that totient(m) < cototient(m).

The programs for A054741, the canonical program `A054741.P5258379755216233543` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054741 has offset 1).

The definition of A054741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054741.P13713178940046660535

`lt[0, A318879(n+1)]+1`
-/

namespace A054741.P13713178940046660535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A054741.P13713178940046660535

namespace A054741

/-- `lt[0, A318879(n+1)]+1` -/
def P13713178940046660535.Spec : Prop :=
  ∀ n, (P13713178940046660535.a n : ℤ) = A054741 (n + 1)

end A054741

/-! ## A054741.P5258379755216233543

`eq[1, A323170(n+1)]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A054741

/-- `eq[1, A323170(n+1)]+1` -/
def P5258379755216233543.Spec : Prop :=
  ∀ n, (P5258379755216233543.a n : ℤ) = A054741 (n + 1)

theorem P5258379755216233543.correct : P5258379755216233543.Spec := by
  intro n
  simp only [A054741, Nat.add_sub_cancel]

end A054741

/-! ## A054741.P1148217812874177034

`lt[2*A000010(n+1), n]+1`
-/

namespace A054741.P1148217812874177034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A054741.P1148217812874177034

namespace A054741

/-- `lt[2*A000010(n+1), n]+1` -/
def P1148217812874177034.Spec : Prop :=
  ∀ n, (P1148217812874177034.a n : ℤ) = A054741 (n + 1)

end A054741

/-! ## A054741.P16407079166722501545

`lt[2, (n+1)/A000010(n+2)]+2`
-/

namespace A054741.P16407079166722501545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (n + 2) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 2

end

end A054741.P16407079166722501545

namespace A054741

/-- `lt[2, (n+1)/A000010(n+2)]+2` -/
def P16407079166722501545.Spec : Prop :=
  ∀ n, (P16407079166722501545.a n : ℤ) = A054741 (n + 1)

end A054741

/-! ## A054741.P13015166534628741286

`filter[A344180(n), A323170(#)]`
-/

namespace A054741.P13015166534628741286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A054741.P13015166534628741286

namespace A054741

/-- `filter[A344180(n), A323170(#)]` -/
def P13015166534628741286.Spec : Prop :=
  ∀ n, P13015166534628741286.a n = A054741 (n + 1)

end A054741

/-! ## A054741.P3728332853069130359

`filter[A002808(n+1), A323170(#)]`
-/

namespace A054741.P3728332853069130359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A054741.P3728332853069130359

namespace A054741

/-- `filter[A002808(n+1), A323170(#)]` -/
def P3728332853069130359.Spec : Prop :=
  ∀ n, P3728332853069130359.a n = A054741 (n + 1)

end A054741

/-! ## A054741.P8129779171541795902

`lt[A000010(n+1), A046699(n+1)]+1`
-/

namespace A054741.P8129779171541795902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A054741.P8129779171541795902

namespace A054741

/-- `lt[A000010(n+1), A046699(n+1)]+1` -/
def P8129779171541795902.Spec : Prop :=
  ∀ n, (P8129779171541795902.a n : ℤ) = A054741 (n + 1)

end A054741

/-! ## A054741.P6882655403190136682

`lt[A000010(n)*A020639(a(n-1)), n]` with `a(0)=2`
-/

namespace A054741.P6882655403190136682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A000010 n * A020639 (f1 (n - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A054741.P6882655403190136682

namespace A054741

/-- `lt[A000010(n)*A020639(a(n-1)), n]` -/
def P6882655403190136682.Spec : Prop :=
  ∀ n, (P6882655403190136682.a n : ℤ) = A054741 (n + 1)

end A054741

/-! ## A054741.P6758730538570547156

`filter[A119432(n+1), A202238(#)]`
-/

namespace A054741.P6758730538570547156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A054741.P6758730538570547156

namespace A054741

/-- `filter[A119432(n+1), A202238(#)]` -/
def P6758730538570547156.Spec : Prop :=
  ∀ n, P6758730538570547156.a n = A054741 (n + 1)

end A054741

/-! ## A054741.P16137180573432346488

`filter[A387721(n+1), A323170(#)]`
-/

namespace A054741.P16137180573432346488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A054741.P16137180573432346488

namespace A054741

/-- `filter[A387721(n+1), A323170(#)]` -/
def P16137180573432346488.Spec : Prop :=
  ∀ n, P16137180573432346488.a n = A054741 (n + 1)

end A054741

/-! ## A054741.P18378660618910030188

`∩[A119432(n+1), A387721(n+1)]`
-/

namespace A054741.P18378660618910030188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054741.P18378660618910030188

namespace A054741

/-- `∩[A119432(n+1), A387721(n+1)]` -/
def P18378660618910030188.Spec : Prop :=
  ∀ n, (P18378660618910030188.a n : ℤ) = A054741 (n + 1)

end A054741

/-! ## A054741.P17924296575144677845

`lt[n, 4*A082023(n)]`
-/

namespace A054741.P17924296575144677845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A054741.P17924296575144677845

namespace A054741

/-- `lt[n, 4*A082023(n)]` -/
def P17924296575144677845.Spec : Prop :=
  ∀ n, (P17924296575144677845.a n : ℤ) = A054741 (n + 1)

end A054741

/-! ## A054741.P5532633301885805044

`lt[A297111(n+1), n]+1`
-/

namespace A054741.P5532633301885805044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A054741.P5532633301885805044

namespace A054741

/-- `lt[A297111(n+1), n]+1` -/
def P5532633301885805044.Spec : Prop :=
  ∀ n, (P5532633301885805044.a n : ℤ) = A054741 (n + 1)

end A054741

/-! ## A054741.P299381773905369130

`filter[A377723(n+1), A323170(#)]`
-/

namespace A054741.P299381773905369130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A054741.P299381773905369130

namespace A054741

/-- `filter[A377723(n+1), A323170(#)]` -/
def P299381773905369130.Spec : Prop :=
  ∀ n, P299381773905369130.a n = A054741 (n + 1)

end A054741

/-! ## A054741.P7948041248227087552

`filter[A350803(n+1), A323170(#)]`
-/

namespace A054741.P7948041248227087552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A054741.P7948041248227087552

namespace A054741

/-- `filter[A350803(n+1), A323170(#)]` -/
def P7948041248227087552.Spec : Prop :=
  ∀ n, P7948041248227087552.a n = A054741 (n + 1)

end A054741

/-! ## A054741.P1163648170385193755

`filter[A324560(n+1), A323170(#)]`
-/

namespace A054741.P1163648170385193755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A054741.P1163648170385193755

namespace A054741

/-- `filter[A324560(n+1), A323170(#)]` -/
def P1163648170385193755.Spec : Prop :=
  ∀ n, P1163648170385193755.a n = A054741 (n + 1)

end A054741

/-! ## A054741.P6963794146402467342

`filter[A080671(n+1), A323170(#)]`
-/

namespace A054741.P6963794146402467342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A054741.P6963794146402467342

namespace A054741

/-- `filter[A080671(n+1), A323170(#)]` -/
def P6963794146402467342.Spec : Prop :=
  ∀ n, P6963794146402467342.a n = A054741 (n + 1)

end A054741

/-! ## A054741.P14163289983795378465

`filter[A355822(n+1), A323170(#)]`
-/

namespace A054741.P14163289983795378465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A054741.P14163289983795378465

namespace A054741

/-- `filter[A355822(n+1), A323170(#)]` -/
def P14163289983795378465.Spec : Prop :=
  ∀ n, P14163289983795378465.a n = A054741 (n + 1)

end A054741

/-! ## A054741.P15789312329326994640

`filter[A080672(n+1), A323170(#)]`
-/

namespace A054741.P15789312329326994640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A054741.P15789312329326994640

namespace A054741

/-- `filter[A080672(n+1), A323170(#)]` -/
def P15789312329326994640.Spec : Prop :=
  ∀ n, P15789312329326994640.a n = A054741 (n + 1)

end A054741

/-! ## A054741.P16806249297075910446

`filter[A070331(n+1), A323170(#)]`
-/

namespace A054741.P16806249297075910446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A054741.P16806249297075910446

namespace A054741

/-- `filter[A070331(n+1), A323170(#)]` -/
def P16806249297075910446.Spec : Prop :=
  ∀ n, P16806249297075910446.a n = A054741 (n + 1)

end A054741

/-!
# A054743: If n = Product p_i^e_i then p_i < e_i (where e_i > 0) for all i.

The programs for A054743, there is no canonical definition to state claims against.
-/

/-! ## A054743.P3663685027298981102

`record[A368329(n+1)]`
-/

namespace A054743.P3663685027298981102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054743.P3663685027298981102

/-! ## A054743.P14504488832709674554

`A036966(record[A303601(n+1)+A066016(n+1)])`
-/

namespace A054743.P14504488832709674554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303601 (n + 1) + A066016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054743.P14504488832709674554

/-! ## A054743.P15671419715990409945

`A277128(A064704(n+1))`
-/

namespace A054743.P15671419715990409945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277128 (A064704 (n + 1)).toNat

end

end A054743.P15671419715990409945

/-! ## A054743.P9922226470027643080

`A277128(A083136(n+1))`
-/

namespace A054743.P9922226470027643080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277128 (A083136 (n + 1)).toNat

end

end A054743.P9922226470027643080

/-! ## A054743.P15282456094481728566

`A277128(A087027(n)+1)`
-/

namespace A054743.P15282456094481728566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277128 (A087027 n + 1).toNat

end

end A054743.P15282456094481728566

/-!
# A054744: p-full numbers: numbers such that if any prime p divides it, then so does p^p.

The programs for A054744, there is no canonical definition to state claims against.
-/

/-! ## A054744.P5322990016094390878

`record[A368333(n+1)]`
-/

namespace A054744.P5322990016094390878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054744.P5322990016094390878

/-! ## A054744.P8772929838698229852

`record[A003557(n+1)*A327936(n+1)]`
-/

namespace A054744.P8772929838698229852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A327936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054744.P8772929838698229852

/-! ## A054744.P12615292650824224781

`filter[A325127(n+1), A236861(#)]`
-/

namespace A054744.P12615292650824224781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236861 (f1 j).toNat = 1) n)

end

end A054744.P12615292650824224781

/-! ## A054744.P9332877115747484338

`record[A254109(A325127(n+1))]`
-/

namespace A054744.P9332877115747484338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254109 (A325127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054744.P9332877115747484338

/-! ## A054744.P415987216704071429

`∩[A275199(n+1), A325127(n+1)]`
-/

namespace A054744.P415987216704071429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054744.P415987216704071429

/-!
# A054745: Number of nonisomorphic binary n-state automata without output under input permutations.

The programs for A054745, there is no canonical definition to state claims against.
-/

/-! ## A054745.P10105917430953407868

`A225772(round(sqrt(n²+1)))+A001372(n)`
-/

namespace A054745.P10105917430953407868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225772 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A001372 n

end

end A054745.P10105917430953407868

/-! ## A054745.P943167603095953713

`A225772(A028310(n))+A254529(n)/n!`
-/

namespace A054745.P943167603095953713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225772 (A028310 n).toNat : ℚ) + (A254529 n : ℚ) / (Nat.factorial n : ℚ)

end

end A054745.P943167603095953713

/-! ## A054745.P6436479473954051048

`A225772(A028310(n))+A126285(n)-A127911(n)`
-/

namespace A054745.P6436479473954051048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225772 (A028310 n).toNat + (A126285 n - A127911 n)

end

end A054745.P6436479473954051048

/-! ## A054745.P17599798950547619052

`A225772(A028310(n))+A254529(n)/A000142(n)`
-/

namespace A054745.P17599798950547619052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225772 (A028310 n).toNat : ℚ) + (A254529 n : ℚ) / (A000142 n : ℚ)

end

end A054745.P17599798950547619052

/-! ## A054745.P1607653556523661315

`A259471(∑[n]+1)+A225772(A028310(n))`
-/

namespace A054745.P1607653556523661315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259471 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A225772 (A028310 n).toNat

end

end A054745.P1607653556523661315

/-!
# A054748: Number of inequivalent n-state 1-input n-output automata.

The programs for A054748, there is no canonical definition to state claims against.
-/

/-! ## A054748.P7799761243431063841

`A023978(comp[∑[n]]^n+1)-3`
-/

namespace A054748.P7799761243431063841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023978 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ n + 1) - 3

end

end A054748.P7799761243431063841

/-!
# A054749: Number of inequivalent connected n-state 1-input n-output automata.

The programs for A054749, there is no canonical definition to state claims against.
-/

/-! ## A054749.P17613551339276736138

`A307852(n+1)+A006879(n)`
-/

namespace A054749.P17613551339276736138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307852 (n + 1) + A006879 n

end

end A054749.P17613551339276736138

/-!
# A054750: Smallest prime number whose digits sum to n-th prime.

The programs for A054750, there is no canonical definition to state claims against.
-/

/-! ## A054750.P15746197458802033106

`A067180(record[p?[A305820(n)]])`
-/

namespace A054750.P15746197458802033106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305820 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054750.P15746197458802033106

/-! ## A054750.P7721479477443489772

`A067180(p?[A325456(n+1)])`
-/

namespace A054750.P7721479477443489772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054750.P7721479477443489772

/-! ## A054750.P2647442891446345376

`A067180(p?[A331914(n+1)])`
-/

namespace A054750.P2647442891446345376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054750.P2647442891446345376

/-! ## A054750.P16795746844305820724

`A067180(p?[A305820(n)-1])`
-/

namespace A054750.P16795746844305820724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305820 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054750.P16795746844305820724

/-! ## A054750.P5856546177346102290

`A067180(A000040(n+1)%A178860(3*n+4))`
-/

namespace A054750.P5856546177346102290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (Int.tmod (A000040 (n + 1)) (A178860 (3 * n + 4))).toNat

end

end A054750.P5856546177346102290

/-!
# A054751: Number of inequivalent n X n matrices over GF(4) under action of dihedral group of the square D_4.

The programs for A054751, there is no canonical definition to state claims against.
-/

/-! ## A054751.P1007239815965320206

`record[A343097(A052905(n))]`
-/

namespace A054751.P1007239815965320206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054751.P1007239815965320206

/-! ## A054751.P5375923624951079021

`A343097(A052905(n+2))`
-/

namespace A054751.P5375923624951079021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (A052905 (n + 2)).toNat

end

end A054751.P5375923624951079021

/-! ## A054751.P14486750024182811206

`A343097(eq[4, A025581(n)])`
-/

namespace A054751.P14486750024182811206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054751.P14486750024182811206

/-! ## A054751.P8091408902694601700

`record[A343097(A055999(n)+1)]`
-/

namespace A054751.P8091408902694601700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054751.P8091408902694601700

/-! ## A054751.P6479426701134877708

`A343097(eq[5, A004736(n+1)])`
-/

namespace A054751.P6479426701134877708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054751.P6479426701134877708

/-!
# A054752: Number of inequivalent n X n matrices over GF(5) under action of dihedral group of the square D_4.

The programs for A054752, there is no canonical definition to state claims against.
-/

/-! ## A054752.P830753975647609776

`A343097((n+4)²-∑[n+1])`
-/

namespace A054752.P830753975647609776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054752.P830753975647609776

/-! ## A054752.P1398364516148631564

`record[A343097(A055999(n))]`
-/

namespace A054752.P1398364516148631564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054752.P1398364516148631564

/-! ## A054752.P3397593733838612305

`record[A343097(A052905(n)-1)]`
-/

namespace A054752.P3397593733838612305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054752.P3397593733838612305

/-! ## A054752.P9699179101742202720

`record[A343097(A027379(n)+n)]`
-/

namespace A054752.P9699179101742202720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (A027379 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054752.P9699179101742202720

/-! ## A054752.P17824096925963459866

`record[A343097(A055998(n)+n)]`
-/

namespace A054752.P17824096925963459866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (A055998 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054752.P17824096925963459866

/-!
# A054753: Numbers which are the product of a prime and the square of a different prime (p^2 * q).

The programs for A054753, the canonical program `A054753.P14709416938439353488` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054753 has offset 1).

The definition of A054753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5623 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054753.P185848192532542479

`sqrt(A189988(n+1))`
-/

namespace A054753.P185848192532542479
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A189988 (n + 1) : ℝ)

end

end A054753.P185848192532542479

namespace A054753

/-- `sqrt(A189988(n+1))` -/
def P185848192532542479.Spec : Prop :=
  ∀ n, P185848192532542479.a n = (A054753 (n + 1) : ℝ)

end A054753

/-! ## A054753.P11369031803386787135

`A179694(n+1)^(1/3)`
-/

namespace A054753.P11369031803386787135
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A179694 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A054753.P11369031803386787135

namespace A054753

/-- `A179694(n+1)^(1/3)` -/
def P11369031803386787135.Spec : Prop :=
  ∀ n, P11369031803386787135.a n = (A054753 (n + 1) : ℝ)

end A054753

/-! ## A054753.P4236964695516623889

`A179694(n+1)/A189988(n+1)`
-/

namespace A054753.P4236964695516623889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179694 (n + 1) : ℚ) / (A189988 (n + 1) : ℚ)

end

end A054753.P4236964695516623889

namespace A054753

/-- `A179694(n+1)/A189988(n+1)` -/
def P4236964695516623889.Spec : Prop :=
  ∀ n, P4236964695516623889.a n = (A054753 (n + 1) : ℚ)

end A054753

/-! ## A054753.P1800387199473184796

`filter[A080258(n+1), A066829(#)]`
-/

namespace A054753.P1800387199473184796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A054753.P1800387199473184796

namespace A054753

/-- `filter[A080258(n+1), A066829(#)]` -/
def P1800387199473184796.Spec : Prop :=
  ∀ n, P1800387199473184796.a n = A054753 (n + 1)

end A054753

/-! ## A054753.P9180738071968192508

`filter[A030515(n+1), A212793(#)]`
-/

namespace A054753.P9180738071968192508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A054753.P9180738071968192508

namespace A054753

/-- `filter[A030515(n+1), A212793(#)]` -/
def P9180738071968192508.Spec : Prop :=
  ∀ n, P9180738071968192508.a n = A054753 (n + 1)

end A054753

/-! ## A054753.P10234392929554369207

`filter[A080258(n+1), A212793(#)]`
-/

namespace A054753.P10234392929554369207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A054753.P10234392929554369207

namespace A054753

/-- `filter[A080258(n+1), A212793(#)]` -/
def P10234392929554369207.Spec : Prop :=
  ∀ n, P10234392929554369207.a n = A054753 (n + 1)

end A054753

/-! ## A054753.P12983461231647415920

`filter[A286228(n+1), A066829(#)]`
-/

namespace A054753.P12983461231647415920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A054753.P12983461231647415920

namespace A054753

/-- `filter[A286228(n+1), A066829(#)]` -/
def P12983461231647415920.Spec : Prop :=
  ∀ n, P12983461231647415920.a n = A054753 (n + 1)

end A054753

/-! ## A054753.P15624364857166490588

`filter[A030515(n+1), A353798(#)]`
-/

namespace A054753.P15624364857166490588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A054753.P15624364857166490588

namespace A054753

/-- `filter[A030515(n+1), A353798(#)]` -/
def P15624364857166490588.Spec : Prop :=
  ∀ n, P15624364857166490588.a n = A054753 (n + 1)

end A054753

/-! ## A054753.P12109336338316333718

`filter[A030515(n+1), A355447(#)]`
-/

namespace A054753.P12109336338316333718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A054753.P12109336338316333718

namespace A054753

/-- `filter[A030515(n+1), A355447(#)]` -/
def P12109336338316333718.Spec : Prop :=
  ∀ n, P12109336338316333718.a n = A054753 (n + 1)

end A054753

/-! ## A054753.P3205406379077492401

`filter[A030515(n+1), A355823(#)]`
-/

namespace A054753.P3205406379077492401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A054753.P3205406379077492401

namespace A054753

/-- `filter[A030515(n+1), A355823(#)]` -/
def P3205406379077492401.Spec : Prop :=
  ∀ n, P3205406379077492401.a n = A054753 (n + 1)

end A054753

/-! ## A054753.P8291150710853706164

`filter[A064499(n+1), A359471(#)]`
-/

namespace A054753.P8291150710853706164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A054753.P8291150710853706164

namespace A054753

/-- `filter[A064499(n+1), A359471(#)]` -/
def P8291150710853706164.Spec : Prop :=
  ∀ n, P8291150710853706164.a n = A054753 (n + 1)

end A054753

/-! ## A054753.P11736168661119738959

`filter[A064499(n+1), A359474(#)]`
-/

namespace A054753.P11736168661119738959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A054753.P11736168661119738959

namespace A054753

/-- `filter[A064499(n+1), A359474(#)]` -/
def P11736168661119738959.Spec : Prop :=
  ∀ n, P11736168661119738959.a n = A054753 (n + 1)

end A054753

/-! ## A054753.P3250922703697662521

`filter[A064499(n+1), A359475(#)]`
-/

namespace A054753.P3250922703697662521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A054753.P3250922703697662521

namespace A054753

/-- `filter[A064499(n+1), A359475(#)]` -/
def P3250922703697662521.Spec : Prop :=
  ∀ n, P3250922703697662521.a n = A054753 (n + 1)

end A054753

/-! ## A054753.P18418145397452989679

`filter[A081619(n+1), A353798(#)]`
-/

namespace A054753.P18418145397452989679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A054753.P18418145397452989679

namespace A054753

/-- `filter[A081619(n+1), A353798(#)]` -/
def P18418145397452989679.Spec : Prop :=
  ∀ n, P18418145397452989679.a n = A054753 (n + 1)

end A054753

/-! ## A054753.P14709416938439353488

`filter[A081619(n+1), A359475(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054753

/-- `filter[A081619(n+1), A359475(#)]` -/
def P14709416938439353488.Spec : Prop :=
  ∀ n, P14709416938439353488.a n = A054753 (n + 1)

theorem P14709416938439353488.correct : P14709416938439353488.Spec := by
  intro n
  simp only [A054753, Nat.add_sub_cancel]

end A054753

/-! ## A054753.P1117375239471416682

`filter[A253388(n+1), A212793(#)]`
-/

namespace A054753.P1117375239471416682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A054753.P1117375239471416682

namespace A054753

/-- `filter[A253388(n+1), A212793(#)]` -/
def P1117375239471416682.Spec : Prop :=
  ∀ n, P1117375239471416682.a n = A054753 (n + 1)

end A054753

/-! ## A054753.P10416336629232882918

`filter[A285508(n+1), A212793(#)]`
-/

namespace A054753.P10416336629232882918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A054753.P10416336629232882918

namespace A054753

/-- `filter[A285508(n+1), A212793(#)]` -/
def P10416336629232882918.Spec : Prop :=
  ∀ n, P10416336629232882918.a n = A054753 (n + 1)

end A054753

/-! ## A054753.P2203110790292814114

`filter[A187039(n+1), A353798(#)]`
-/

namespace A054753.P2203110790292814114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A054753.P2203110790292814114

namespace A054753

/-- `filter[A187039(n+1), A353798(#)]` -/
def P2203110790292814114.Spec : Prop :=
  ∀ n, P2203110790292814114.a n = A054753 (n + 1)

end A054753

/-! ## A054753.P10933735730013567702

`filter[A187042(n+1), A353798(#)]`
-/

namespace A054753.P10933735730013567702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A054753.P10933735730013567702

namespace A054753

/-- `filter[A187042(n+1), A353798(#)]` -/
def P10933735730013567702.Spec : Prop :=
  ∀ n, P10933735730013567702.a n = A054753 (n + 1)

end A054753

/-! ## A054753.P1479186066360801655

`filter[A187039(n+1), A359474(#)]`
-/

namespace A054753.P1479186066360801655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A054753.P1479186066360801655

namespace A054753

/-- `filter[A187039(n+1), A359474(#)]` -/
def P1479186066360801655.Spec : Prop :=
  ∀ n, P1479186066360801655.a n = A054753 (n + 1)

end A054753

/-!
# A054754: Totient(n) and cototient(n) are squares.

The programs for A054754, there is no canonical definition to state claims against.
-/

/-! ## A054754.P15157950434535269213

`∪[A054755(n+1), A054756(n+1)]`
-/

namespace A054754.P15157950434535269213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054754.P15157950434535269213

/-! ## A054754.P6882740147309244514

`∩[A039770(n+1), A063752(n+1)]`
-/

namespace A054754.P6882740147309244514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054754.P6882740147309244514

/-! ## A054754.P6179519415252198354

`filter[A039770(n+1), A325321(#)]`
-/

namespace A054754.P6179519415252198354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325321 (f1 j).toNat = 1) n)

end

end A054754.P6179519415252198354

/-! ## A054754.P12003115129900982872

`eq[A280988(n+1), A325321(n+1)]+1`
-/

namespace A054754.P12003115129900982872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325321 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054754.P12003115129900982872

/-! ## A054754.P11971015358442998694

`∏{e}[3^n, A054755(#)]`
-/

namespace A054754.P11971015358442998694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A054755 (Nat.factorization (f1 n) p)

end

end A054754.P11971015358442998694

/-!
# A054755: Odd powers of primes of the form q = x^2 + 1 (A002496).

The programs for A054755, there is no canonical definition to state claims against.
-/

/-! ## A054755.P10891199375572761474

`∩[A054754(n+1), A089653(n+1)]`
-/

namespace A054755.P10891199375572761474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054755.P10891199375572761474

/-! ## A054755.P4314607371384135333

`filter[A039770(n+1), A069513(#)]`
-/

namespace A054755.P4314607371384135333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A054755.P4314607371384135333

/-! ## A054755.P7187324555912046542

`filter[A054754(n+1), A069513(#)]`
-/

namespace A054755.P7187324555912046542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A054755.P7187324555912046542

/-! ## A054755.P6111021959121492111

`filter[A054754(n+2), A354923(#)]`
-/

namespace A054755.P6111021959121492111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054754 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A054755.P6111021959121492111

/-! ## A054755.P7620468772915033551

`filter[A054754(n+2), A354924(#)]`
-/

namespace A054755.P7620468772915033551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054754 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A054755.P7620468772915033551

/-! ## A054755.P15270876680754858971

`∩[A039770(n+1), A059046(n+1)]`
-/

namespace A054755.P15270876680754858971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054755.P15270876680754858971

/-! ## A054755.P13647985693775434143

`∩[A054754(n+1), A059046(n+1)]`
-/

namespace A054755.P13647985693775434143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054755.P13647985693775434143

/-! ## A054755.P17153294151102785962

`∩[A054754(n+1), A071139(n+1)]`
-/

namespace A054755.P17153294151102785962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054755.P17153294151102785962

/-! ## A054755.P2875292358100378845

`∩[A039770(n+1), A246551(n+1)]`
-/

namespace A054755.P2875292358100378845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054755.P2875292358100378845

/-! ## A054755.P10087730502682765033

`∩[A039770(n+1), A246655(n+1)]`
-/

namespace A054755.P10087730502682765033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054755.P10087730502682765033

/-!
# A054756: Numbers k such that phi(k) and cototient(k) are squares but k is not in A054755.

The programs for A054756, there is no canonical definition to state claims against.
-/

/-! ## A054756.P14364797902982876564

`record[A054754(n+1)^A158052(A054754(n+1))]`
-/

namespace A054756.P14364797902982876564
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054754 (n + 1) : ℚ) ^ (A158052 (A054754 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054756.P14364797902982876564

/-!
# A054759: Number of Eulerian orientations of the n X n square lattice (with wrap-around), i.e., number of arrow configurations on n X n grid that satisfy the square ice rule.

The programs for A054759, there is no canonical definition to state claims against.
-/

/-! ## A054759.P10400113967570809612

`A298119(∑[4*n]+1)`
-/

namespace A054759.P10400113967570809612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298119 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A054759.P10400113967570809612

/-! ## A054759.P1893550458792569974

`lcm(2, A298119(A001844(n)))`
-/

namespace A054759.P1893550458792569974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A298119 (A001844 n).toNat)

end

end A054759.P1893550458792569974

/-! ## A054759.P7955361657565584157

`record[A298119(A330613(n+1))]`
-/

namespace A054759.P7955361657565584157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298119 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054759.P7955361657565584157

/-!
# A054760: Table T(n,k) = order of (n,k)-cage (smallest n-regular graph of girth k), n >= 2, k >= 3, read by antidiagonals.

The programs for A054760, there is no canonical definition to state claims against.
-/

/-! ## A054760.P14613170661430704429

`A185200(n)/2`
-/

namespace A054760.P14613170661430704429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185200 n : ℚ) / 2

end

end A054760.P14613170661430704429

/-! ## A054760.P17389652011450810667

`A001281(A185200(n))`
-/

namespace A054760.P17389652011450810667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A185200 n).toNat

end

end A054760.P17389652011450810667

/-! ## A054760.P8899898198149737831

`A004524(A185200(n)+1)`
-/

namespace A054760.P8899898198149737831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A185200 n + 1).toNat

end

end A054760.P8899898198149737831

/-! ## A054760.P5587476084854736021

`A004526(A185200(n)+1)`
-/

namespace A054760.P5587476084854736021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A185200 n + 1).toNat

end

end A054760.P5587476084854736021

/-! ## A054760.P13525007967180913995

`A028242(A185200(n)+1)`
-/

namespace A054760.P13525007967180913995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A185200 n + 1).toNat

end

end A054760.P13525007967180913995

/-!
# A054761: Number of positive braids with n crossings of 5 strands.

The programs for A054761, the canonical program `A054761.P1162483112321295970` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054761 has offset 0).

The definition of A054761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054761.P1162483112321295970

`ogf(1/(1-4x+3x^2+3x^3-2x^4-2x^6+x^10))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A054761

/-- `ogf(1/(1-4x+3x^2+3x^3-2x^4-2x^6+x^10))` -/
def P1162483112321295970.Spec : Prop :=
  ∀ n, P1162483112321295970.a n = A054761 n

theorem P1162483112321295970.correct : P1162483112321295970.Spec := by
  intro n
  simp only [A054761]

end A054761

/-! ## A054761.P5391721904202245652

`A253188(A291229(n))`
-/

namespace A054761.P5391721904202245652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253188 (A291229 n).toNat

end

end A054761.P5391721904202245652

namespace A054761

/-- `A253188(A291229(n))` -/
def P5391721904202245652.Spec : Prop :=
  ∀ n, P5391721904202245652.a n = A054761 n

end A054761

/-!
# A054763: Residues of consecutive prime differences modulo 6.

The programs for A054763, the canonical program `A054763.P11453275678035021289` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054763 has offset 1).

The definition of A054763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054763.P11453275678035021289

`A001223(n+1)%6`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054763

/-- `A001223(n+1)%6` -/
def P11453275678035021289.Spec : Prop :=
  ∀ n, P11453275678035021289.a n = A054763 (n + 1)

theorem P11453275678035021289.correct : P11453275678035021289.Spec := by
  intro n
  simp only [A054763, Nat.add_sub_cancel]

end A054763

/-! ## A054763.P810914405600314858

`(A000040(n+2)-A000040(n+1))%6`
-/

namespace A054763.P810914405600314858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2) - A000040 (n + 1)) 6

end

end A054763.P810914405600314858

namespace A054763

/-- `(A000040(n+2)-A000040(n+1))%6` -/
def P810914405600314858.Spec : Prop :=
  ∀ n, P810914405600314858.a n = A054763 (n + 1)

end A054763

/-! ## A054763.P3627184888282185213

`A129701(n+1)%6`
-/

namespace A054763.P3627184888282185213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129701 (n + 1)) 6

end

end A054763.P3627184888282185213

namespace A054763

/-- `A129701(n+1)%6` -/
def P3627184888282185213.Spec : Prop :=
  ∀ n, P3627184888282185213.a n = A054763 (n + 1)

end A054763

/-! ## A054763.P18369926967675703603

`(A046933(n+1)+1)%6`
-/

namespace A054763.P18369926967675703603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046933 (n + 1) + 1) 6

end

end A054763.P18369926967675703603

namespace A054763

/-- `(A046933(n+1)+1)%6` -/
def P18369926967675703603.Spec : Prop :=
  ∀ n, P18369926967675703603.a n = A054763 (n + 1)

theorem P18369926967675703603.correct : P18369926967675703603.Spec := by
  intro n
  simp only [A054763, Nat.add_sub_cancel, A054763.P18369926967675703603.a, A054763.P11453275678035021289.a, A001223, A001223.P5034056745985311719.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054763

/-! ## A054763.P16591079970344902246

`Δ[A001748(n+1)/3]%6`
-/

namespace A054763.P16591079970344902246
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) 6

end

end A054763.P16591079970344902246

namespace A054763

/-- `Δ[A001748(n+1)/3]%6` -/
def P16591079970344902246.Spec : Prop :=
  ∀ n, P16591079970344902246.a n = A054763 (n + 1)

end A054763

/-! ## A054763.P12759291351171066319

`Δ[A001749(n+1)/4]%6`
-/

namespace A054763.P12759291351171066319
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) 6

end

end A054763.P12759291351171066319

namespace A054763

/-- `Δ[A001749(n+1)/4]%6` -/
def P12759291351171066319.Spec : Prop :=
  ∀ n, P12759291351171066319.a n = A054763 (n + 1)

end A054763

/-! ## A054763.P18244700508794104702

`A010875(A001223(n+1))`
-/

namespace A054763.P18244700508794104702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A001223 (n + 1)).toNat

end

end A054763.P18244700508794104702

namespace A054763

/-- `A010875(A001223(n+1))` -/
def P18244700508794104702.Spec : Prop :=
  ∀ n, P18244700508794104702.a n = A054763 (n + 1)

end A054763

/-! ## A054763.P409318083711427125

`A010875(A046933(n+1)+1)`
-/

namespace A054763.P409318083711427125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A046933 (n + 1) + 1).toNat

end

end A054763.P409318083711427125

namespace A054763

/-- `A010875(A046933(n+1)+1)` -/
def P409318083711427125.Spec : Prop :=
  ∀ n, P409318083711427125.a n = A054763 (n + 1)

end A054763

/-! ## A054763.P2574310654990847313

`(A001043(n+1)%A000040(n+1))%6`
-/

namespace A054763.P2574310654990847313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A001043 (n + 1)) (A000040 (n + 1))) 6

end

end A054763.P2574310654990847313

namespace A054763

/-- `(A001043(n+1)%A000040(n+1))%6` -/
def P2574310654990847313.Spec : Prop :=
  ∀ n, P2574310654990847313.a n = A054763 (n + 1)

end A054763

/-! ## A054763.P4434343600458115626

`A075526(n+1)%6`
-/

namespace A054763.P4434343600458115626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075526 (n + 1)) 6

end

end A054763.P4434343600458115626

namespace A054763

/-- `A075526(n+1)%6` -/
def P4434343600458115626.Spec : Prop :=
  ∀ n, P4434343600458115626.a n = A054763 (n + 1)

end A054763

/-! ## A054763.P5658103577539865554

`A054541(n+2)%6`
-/

namespace A054763.P5658103577539865554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054541 (n + 2)) 6

end

end A054763.P5658103577539865554

namespace A054763

/-- `A054541(n+2)%6` -/
def P5658103577539865554.Spec : Prop :=
  ∀ n, P5658103577539865554.a n = A054763 (n + 1)

end A054763

/-! ## A054763.P12746131125358001242

`A125266(n+2)%6`
-/

namespace A054763.P12746131125358001242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125266 (n + 2)) 6

end

end A054763.P12746131125358001242

namespace A054763

/-- `A125266(n+2)%6` -/
def P12746131125358001242.Spec : Prop :=
  ∀ n, P12746131125358001242.a n = A054763 (n + 1)

end A054763

/-! ## A054763.P6462566193115870084

`Δ[A000040(n+1)]%6`
-/

namespace A054763.P6462566193115870084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 6

end

end A054763.P6462566193115870084

namespace A054763

/-- `Δ[A000040(n+1)]%6` -/
def P6462566193115870084.Spec : Prop :=
  ∀ n, P6462566193115870084.a n = A054763 (n + 1)

theorem P6462566193115870084.correct : P6462566193115870084.Spec := by
  intro n
  simp only [A054763, Nat.add_sub_cancel, A054763.P6462566193115870084.f1, A054763.P6462566193115870084.a, A054763.P11453275678035021289.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054763

/-! ## A054763.P14481071565112763433

`Δ[A006093(n+1)]%6`
-/

namespace A054763.P14481071565112763433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 6

end

end A054763.P14481071565112763433

namespace A054763

/-- `Δ[A006093(n+1)]%6` -/
def P14481071565112763433.Spec : Prop :=
  ∀ n, P14481071565112763433.a n = A054763 (n + 1)

theorem P14481071565112763433.correct : P14481071565112763433.Spec := by
  intro n
  simp only [A054763, Nat.add_sub_cancel, A054763.P14481071565112763433.f1, A054763.P14481071565112763433.a, A054763.P11453275678035021289.a, A001223, A001223.P5034056745985311719.a, A006093, A006093.P2906174024863549003.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054763

/-! ## A054763.P11668383385784566739

`Δ[A008864(n+1)]%6`
-/

namespace A054763.P11668383385784566739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 6

end

end A054763.P11668383385784566739

namespace A054763

/-- `Δ[A008864(n+1)]%6` -/
def P11668383385784566739.Spec : Prop :=
  ∀ n, P11668383385784566739.a n = A054763 (n + 1)

theorem P11668383385784566739.correct : P11668383385784566739.Spec := by
  intro n
  simp only [A054763, Nat.add_sub_cancel, A054763.P11668383385784566739.f1, A054763.P11668383385784566739.a, A054763.P11453275678035021289.a, A001223, A001223.P5034056745985311719.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054763

/-! ## A054763.P13328677050891211738

`Δ[A040976(n+1)]%6`
-/

namespace A054763.P13328677050891211738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 6

end

end A054763.P13328677050891211738

namespace A054763

/-- `Δ[A040976(n+1)]%6` -/
def P13328677050891211738.Spec : Prop :=
  ∀ n, P13328677050891211738.a n = A054763 (n + 1)

theorem P13328677050891211738.correct : P13328677050891211738.Spec := by
  intro n
  simp only [A054763, Nat.add_sub_cancel, A054763.P13328677050891211738.f1, A054763.P13328677050891211738.a, A054763.P11453275678035021289.a, A001223, A001223.P5034056745985311719.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054763

/-! ## A054763.P5671597074371056038

`A010875(A075526(n+1))`
-/

namespace A054763.P5671597074371056038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A075526 (n + 1)).toNat

end

end A054763.P5671597074371056038

namespace A054763

/-- `A010875(A075526(n+1))` -/
def P5671597074371056038.Spec : Prop :=
  ∀ n, P5671597074371056038.a n = A054763 (n + 1)

end A054763

/-! ## A054763.P10567986708473995397

`A010875(A054541(n+2))`
-/

namespace A054763.P10567986708473995397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A054541 (n + 2)).toNat

end

end A054763.P10567986708473995397

namespace A054763

/-- `A010875(A054541(n+2))` -/
def P10567986708473995397.Spec : Prop :=
  ∀ n, P10567986708473995397.a n = A054763 (n + 1)

end A054763

/-! ## A054763.P2030459303110537812

`A010875(A125266(n+2))`
-/

namespace A054763.P2030459303110537812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A125266 (n + 2)).toNat

end

end A054763.P2030459303110537812

namespace A054763

/-- `A010875(A125266(n+2))` -/
def P2030459303110537812.Spec : Prop :=
  ∀ n, P2030459303110537812.a n = A054763 (n + 1)

end A054763

/-! ## A054763.P11023456762842653025

`A010875(Δ[A000040(n+1)])`
-/

namespace A054763.P11023456762842653025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (f1 (n + 1) - f1 n).toNat

end

end A054763.P11023456762842653025

namespace A054763

/-- `A010875(Δ[A000040(n+1)])` -/
def P11023456762842653025.Spec : Prop :=
  ∀ n, P11023456762842653025.a n = A054763 (n + 1)

end A054763

/-!
# A054765: a(n+2) = (2n+3)*a(n+1) + (n+1)^2*a(n), a(0) = 0, a(1) = 1.

The programs for A054765, there is no canonical definition to state claims against.
-/

/-! ## A054765.P2844663410148889224

`(2*n-1)*a(n-1)+(n-1)²*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A054765.P2844663410148889224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((2 * n : ℤ) - 1) * a (n - 1) + ((n : ℤ) - 1) ^ 2 * a (n - 2)

end

end A054765.P2844663410148889224

/-! ## A054765.P8270528404299723157

`A012244(n)-A054766(n)`
-/

namespace A054765.P8270528404299723157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012244 n - A054766 n

end

end A054765.P8270528404299723157

/-! ## A054765.P3976821100200139897

`A054768(n)+2*A054766(n)`
-/

namespace A054765.P3976821100200139897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054768 n + 2 * A054766 n

end

end A054765.P3976821100200139897

/-! ## A054765.P7366279552388977802

`A012244(n)-(A012244(n)-A054768(n))/3`
-/

namespace A054765.P7366279552388977802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012244 n : ℚ) - (A012244 n - A054768 n : ℚ) / 3

end

end A054765.P7366279552388977802

/-! ## A054765.P494482520276406345

`A000142(n)+A019581(A028310(n))-A054766(n)`
-/

namespace A054765.P494482520276406345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (A019581 (A028310 n).toNat - A054766 n)

end

end A054765.P494482520276406345

/-! ## A054765.P5647718971933998431

`A000142(n)/A000079(n)*A006139(n)-A054766(n)`
-/

namespace A054765.P5647718971933998431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000079 n : ℚ) * (A006139 n : ℚ) - (A054766 n : ℚ)

end

end A054765.P5647718971933998431

/-!
# A054766: a(n+2) = (2*n + 3)*a(n+1) + (n + 1)^2*a(n), a(0) = 1, a(1) = 0.

The programs for A054766, there is no canonical definition to state claims against.
-/

/-! ## A054766.P8041080309562909018

`A012244(n)-A054765(n)`
-/

namespace A054766.P8041080309562909018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012244 n - A054765 n

end

end A054766.P8041080309562909018

/-! ## A054766.P11587156902249455748

`(A054765(n)-A054768(n))/2`
-/

namespace A054766.P11587156902249455748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054765 n - A054768 n : ℚ) / 2

end

end A054766.P11587156902249455748

/-! ## A054766.P10560857849559282710

`(A012244(n)-A054768(n))/3`
-/

namespace A054766.P10560857849559282710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012244 n - A054768 n : ℚ) / 3

end

end A054766.P10560857849559282710

/-! ## A054766.P341659516277511650

`A012244(n)%A054765(A000038(n)+n)`
-/

namespace A054766.P341659516277511650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A012244 n) (A054765 (A000038 n + (n : ℤ)).toNat)

end

end A054766.P341659516277511650

/-! ## A054766.P3199312912958901090

`A000142(n)+A019581(A028310(n))-A054765(n)`
-/

namespace A054766.P3199312912958901090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (A019581 (A028310 n).toNat - A054765 n)

end

end A054766.P3199312912958901090

/-!
# A054767: Period of the sequence of Bell numbers A000110 (mod n).

The programs for A054767, there is no canonical definition to state claims against.
-/

/-! ## A054767.P5690497822643934631

`A113957((n^(n%2)+n)^and(n, Δ[-n²]))`
-/

namespace A054767.P5690497822643934631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113957 (SequenceMachineLib.roundAway ((n ^ (n % 2) + n : ℚ) ^ (Int.land (n : ℤ) (f1 (n + 1) - f1 n) : ℤ))).toNat

end

end A054767.P5690497822643934631

/-!
# A054768: a(n+2) = (2n+3)*a(n+1) + (n+1)^2*a(n).

The programs for A054768, there is no canonical definition to state claims against.
-/

/-! ## A054768.P14631799764338709726

`A054765(n)-2*A054766(n)`
-/

namespace A054768.P14631799764338709726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054765 n - 2 * A054766 n

end

end A054768.P14631799764338709726

/-! ## A054768.P241711907167881749

`A012244(n)-3*A054766(n)`
-/

namespace A054768.P241711907167881749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012244 n - 3 * A054766 n

end

end A054768.P241711907167881749

/-! ## A054768.P3247715038962343342

`A054765(n)+2*A054766(n)*A153881(n+2)`
-/

namespace A054768.P3247715038962343342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054765 n + 2 * A054766 n * A153881 (n + 2)

end

end A054768.P3247715038962343342

/-!
# A054769: Number of integer n-tuples {x(1),x(2),...,x(n)} with the following properties: (1) x(1)=1 and, for k>1, if d=x(k)-x(k-1), then (2) d is relatively prime to x(k-1) and (3) d=x(i) for some i in {1,2,...,k-1}.

The programs for A054769, there is no canonical definition to state claims against.
-/

/-! ## A054769.P15631095450033036590

`A318612(A137247(n)+1)`
-/

namespace A054769.P15631095450033036590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318612 (A137247 n + 1).toNat

end

end A054769.P15631095450033036590

/-! ## A054769.P10505264479041866740

`A076471(A263777(n)+4)`
-/

namespace A054769.P10505264479041866740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076471 (A263777 n + 4).toNat

end

end A054769.P10505264479041866740

/-! ## A054769.P8728539253146341870

`A171895(A127083(n)-A014081(n))`
-/

namespace A054769.P8728539253146341870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171895 (A127083 n - A014081 n).toNat

end

end A054769.P8728539253146341870

/-!
# A054770: Numbers that are not the sum of distinct Lucas numbers 1,3,4,7,11, ... (A000204).

The programs for A054770, the canonical program `A054770.P15166911810664870650` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054770 has offset 1).

The definition of A054770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054770.P15166911810664870650

`floor((5+sqrt(5))/2*(n+1))-1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A054770

/-- `floor((5+sqrt(5))/2*(n+1))-1` -/
def P15166911810664870650.Spec : Prop :=
  ∀ n, P15166911810664870650.a n = A054770 (n + 1)

theorem P15166911810664870650.correct : P15166911810664870650.Spec := by
  intro n
  simp only [A054770, Nat.add_sub_cancel]

end A054770

/-! ## A054770.P13655433136154631598

`floor(∑[n+1+ϕ]-C(n, 2))`
-/

namespace A054770.P13655433136154631598
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) + Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose n 2 : ℝ)⌋

end

end A054770.P13655433136154631598

namespace A054770

/-- `floor(∑[n+1+ϕ]-C(n, 2))` -/
def P13655433136154631598.Spec : Prop :=
  ∀ n, P13655433136154631598.a n = A054770 (n + 1)

end A054770

/-! ## A054770.P6268043437055452282

`floor(ϕ²*C(n+1, n)+n)`
-/

namespace A054770.P6268043437055452282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ 2 * (Nat.choose (n + 1) n : ℝ) + (n : ℝ)⌋

end

end A054770.P6268043437055452282

namespace A054770

/-- `floor(ϕ²*C(n+1, n)+n)` -/
def P6268043437055452282.Spec : Prop :=
  ∀ n, P6268043437055452282.a n = A054770 (n + 1)

end A054770

/-! ## A054770.P1494305669249255617

`ceil(lcm(2, 2*n)+ϕ*(n+1))`
-/

namespace A054770.P1494305669249255617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (2 * n) : ℝ) + Real.goldenRatio * (n + 1 : ℝ)⌉

end

end A054770.P1494305669249255617

namespace A054770

/-- `ceil(lcm(2, 2*n)+ϕ*(n+1))` -/
def P1494305669249255617.Spec : Prop :=
  ∀ n, P1494305669249255617.a n = A054770 (n + 1)

end A054770

/-! ## A054770.P16402134318562475989

`floor(or(1, 2*n)+ϕ*(n+1))`
-/

namespace A054770.P16402134318562475989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (2 * n) : ℝ) + Real.goldenRatio * (n + 1 : ℝ)⌋

end

end A054770.P16402134318562475989

namespace A054770

/-- `floor(or(1, 2*n)+ϕ*(n+1))` -/
def P16402134318562475989.Spec : Prop :=
  ∀ n, P16402134318562475989.a n = A054770 (n + 1)

end A054770

/-! ## A054770.P13891436917115324783

`floor(xor(1, 2*n)+ϕ*(n+1))`
-/

namespace A054770.P13891436917115324783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (2 * n) : ℝ) + Real.goldenRatio * (n + 1 : ℝ)⌋

end

end A054770.P13891436917115324783

namespace A054770

/-- `floor(xor(1, 2*n)+ϕ*(n+1))` -/
def P13891436917115324783.Spec : Prop :=
  ∀ n, P13891436917115324783.a n = A054770 (n + 1)

end A054770

/-! ## A054770.P9315888144025464683

`ceil(2*n+ϕ*C(n+1, n))`
-/

namespace A054770.P9315888144025464683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) + Real.goldenRatio * (Nat.choose (n + 1) n : ℝ)⌉

end

end A054770.P9315888144025464683

namespace A054770

/-- `ceil(2*n+ϕ*C(n+1, n))` -/
def P9315888144025464683.Spec : Prop :=
  ∀ n, P9315888144025464683.a n = A054770 (n + 1)

end A054770

/-! ## A054770.P416582572054830521

`ceil(xor(1, 2*n+1)+ϕ*(n+1))`
-/

namespace A054770.P416582572054830521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n + 1) : ℝ) + Real.goldenRatio * (n + 1 : ℝ)⌉

end

end A054770.P416582572054830521

namespace A054770

/-- `ceil(xor(1, 2*n+1)+ϕ*(n+1))` -/
def P416582572054830521.Spec : Prop :=
  ∀ n, P416582572054830521.a n = A054770 (n + 1)

end A054770

/-! ## A054770.P7094865776664123502

`ceil(and(2*n+1, 2*n)+ϕ*(n+1))`
-/

namespace A054770.P7094865776664123502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land (2 * n + 1) (2 * n) : ℝ) + Real.goldenRatio * (n + 1 : ℝ)⌉

end

end A054770.P7094865776664123502

namespace A054770

/-- `ceil(and(2*n+1, 2*n)+ϕ*(n+1))` -/
def P7094865776664123502.Spec : Prop :=
  ∀ n, P7094865776664123502.a n = A054770 (n + 1)

end A054770

/-! ## A054770.P10227120270560226450

`floor(ϕ*gcd(n+1, ∑[2*n])+2*n+1)`
-/

namespace A054770.P10227120270560226450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) + (2 * n + 1 : ℝ)⌋

end

end A054770.P10227120270560226450

namespace A054770

/-- `floor(ϕ*gcd(n+1, ∑[2*n])+2*n+1)` -/
def P10227120270560226450.Spec : Prop :=
  ∀ n, P10227120270560226450.a n = A054770 (n + 1)

end A054770

/-! ## A054770.P14264956493222682426

`Δ[A054347(n)+n²]`
-/

namespace A054770.P14264956493222682426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054770.P14264956493222682426

namespace A054770

/-- `Δ[A054347(n)+n²]` -/
def P14264956493222682426.Spec : Prop :=
  ∀ n, P14264956493222682426.a n = A054770 (n + 1)

end A054770

/-! ## A054770.P18103113514889618592

`floor(ϕ*lcm(n+1, A006530(n+1))+2*n+1)`
-/

namespace A054770.P18103113514889618592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Int.lcm (n + 1 : ℤ) (A006530 (n + 1)) : ℝ) + (2 * n + 1 : ℝ)⌋

end

end A054770.P18103113514889618592

namespace A054770

/-- `floor(ϕ*lcm(n+1, A006530(n+1))+2*n+1)` -/
def P18103113514889618592.Spec : Prop :=
  ∀ n, P18103113514889618592.a n = A054770 (n + 1)

end A054770

/-! ## A054770.P3724211806843521021

`A399306(A063732(n+2))`
-/

namespace A054770.P3724211806843521021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399306 (A063732 (n + 2)).toNat

end

end A054770.P3724211806843521021

namespace A054770

/-- `A399306(A063732(n+2))` -/
def P3724211806843521021.Spec : Prop :=
  ∀ n, P3724211806843521021.a n = A054770 (n + 1)

end A054770

/-! ## A054770.P298663199049571465

`record[A064786(n+1)+n]`
-/

namespace A054770.P298663199049571465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064786 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054770.P298663199049571465

namespace A054770

/-- `record[A064786(n+1)+n]` -/
def P298663199049571465.Spec : Prop :=
  ∀ n, P298663199049571465.a n = A054770 (n + 1)

end A054770

/-! ## A054770.P14359871526178346039

`A287775(Δ[n²])`
-/

namespace A054770.P14359871526178346039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287775 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A054770.P14359871526178346039

namespace A054770

/-- `A287775(Δ[n²])` -/
def P14359871526178346039.Spec : Prop :=
  ∀ n, P14359871526178346039.a n = A054770 (n + 1)

end A054770

/-! ## A054770.P8211864169991491049

`∩[A287775(n+1), A399306(n+1)]`
-/

namespace A054770.P8211864169991491049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054770.P8211864169991491049

namespace A054770

/-- `∩[A287775(n+1), A399306(n+1)]` -/
def P8211864169991491049.Spec : Prop :=
  ∀ n, (P8211864169991491049.a n : ℤ) = A054770 (n + 1)

end A054770

/-! ## A054770.P3398074976809965681

`A081241(A081241(A001950(n+1)+n))`
-/

namespace A054770.P3398074976809965681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081241 (A081241 (A001950 (n + 1) + (n : ℤ)).toNat).toNat

end

end A054770.P3398074976809965681

namespace A054770

/-- `A081241(A081241(A001950(n+1)+n))` -/
def P3398074976809965681.Spec : Prop :=
  ∀ n, P3398074976809965681.a n = A054770 (n + 1)

end A054770

/-! ## A054770.P3516910882178747863

`A111202(A050140(n+1))`
-/

namespace A054770.P3516910882178747863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111202 (A050140 (n + 1)).toNat

end

end A054770.P3516910882178747863

namespace A054770

/-- `A111202(A050140(n+1))` -/
def P3516910882178747863.Spec : Prop :=
  ∀ n, P3516910882178747863.a n = A054770 (n + 1)

end A054770

/-!
# A054771: Number of nonnegative integer 3 X 3 matrices with sum of elements equal to n, up to rotational symmetry.

The programs for A054771, the canonical program `A054771.P5420274074981605146` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054771 has offset 0).

The definition of A054771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054771.P5420274074981605146

`ogf((1-2x+6x^2+2x^3+2x^4+2x^5+6x^6-2x^7+x^8)/(1-5x+8x^2-16x^4+24x^5-16x^6-8x^7+34x^8-34x^9+8x^10+16x^11-24x^12+16x^13-8x^15+5x^16-x^17))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A054771

/-- `ogf((1-2x+6x^2+2x^3+2x^4+2x^5+6x^6-2x^7+x^8)/(1-5x+8x^2-16x^4+24x^5-16x^6-8x^7+34x^8-34x^9+8x^10+16x^11-24x^12+16x^13-8x^15+5x^16-x^17))` -/
def P5420274074981605146.Spec : Prop :=
  ∀ n, P5420274074981605146.a n = A054771 n

theorem P5420274074981605146.correct : P5420274074981605146.Spec := by
  intro n
  simp only [A054771]

end A054771

/-! ## A054771.P11955264246383856256

`2*A054343(n)-A038163(n)`
-/

namespace A054771.P11955264246383856256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054343 n - A038163 n

end

end A054771.P11955264246383856256

namespace A054771

/-- `2*A054343(n)-A038163(n)` -/
def P11955264246383856256.Spec : Prop :=
  ∀ n, P11955264246383856256.a n = A054771 n

end A054771

/-! ## A054771.P6953355748395883071

`A343874(∑[n+3]+6)`
-/

namespace A054771.P6953355748395883071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343874 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A054771.P6953355748395883071

namespace A054771

/-- `A343874(∑[n+3]+6)` -/
def P6953355748395883071.Spec : Prop :=
  ∀ n, P6953355748395883071.a n = A054771 n

end A054771

/-! ## A054771.P5822720422084373438

`record[A343874(A152950(n+2))]`
-/

namespace A054771.P5822720422084373438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343874 (A152950 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054771.P5822720422084373438

namespace A054771

/-- `record[A343874(A152950(n+2))]` -/
def P5822720422084373438.Spec : Prop :=
  ∀ n, P5822720422084373438.a n = A054771 n

end A054771

/-! ## A054771.P2121623229177007439

`record[A343874(A000096(n)+4)]`
-/

namespace A054771.P2121623229177007439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343874 (A000096 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054771.P2121623229177007439

namespace A054771

/-- `record[A343874(A000096(n)+4)]` -/
def P2121623229177007439.Spec : Prop :=
  ∀ n, P2121623229177007439.a n = A054771 n

end A054771

/-!
# A054773: Number of nonnegative integer 4 X 4 matrices with sum of elements equal to n, up to rotational symmetry.

The programs for A054773, there is no canonical definition to state claims against.
-/

/-! ## A054773.P5011077525734095790

`A343874(eq[4, A002262(n)])`
-/

namespace A054773.P5011077525734095790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343874 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054773.P5011077525734095790

/-! ## A054773.P2080777328314664743

`A343874(A167499(n+3)-1)`
-/

namespace A054773.P2080777328314664743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343874 (A167499 (n + 3) - 1).toNat

end

end A054773.P2080777328314664743

/-! ## A054773.P16210746770869814218

`record[A343874(A152950(n+1)+1)]`
-/

namespace A054773.P16210746770869814218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343874 (A152950 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054773.P16210746770869814218

/-! ## A054773.P5814466914683213215

`A343874(Δ[A026054(n+3)-n²])`
-/

namespace A054773.P5814466914683213215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343874 (f1 (n + 1) - f1 n).toNat

end

end A054773.P5814466914683213215

/-! ## A054773.P1012955201505552194

`A343874(A052905(n+3)-2*(n+1))`
-/

namespace A054773.P1012955201505552194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343874 (A052905 (n + 3) - (2 * (n + 1) : ℤ)).toNat

end

end A054773.P1012955201505552194

/-!
# A054774: Numbers of the form 2^i*5^j where i+j is odd.

The programs for A054774, there is no canonical definition to state claims against.
-/

/-! ## A054774.P13397044035456187387

`A003592(eq[2, A003592(n+1)%3]+1)`
-/

namespace A054774.P13397044035456187387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003592 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A054774.P13397044035456187387

/-! ## A054774.P191625049912360114

`A158911(eq[2, (A158911(n+1)+1)%3]+1)+1`
-/

namespace A054774.P191625049912360114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158911 (n + 1) + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158911 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A054774.P191625049912360114

/-! ## A054774.P5978522851958782223

`A337801(eq[2, A337801(n+1)%3]+1)`
-/

namespace A054774.P5978522851958782223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337801 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A054774.P5978522851958782223

/-! ## A054774.P18109788922238147149

`A051037(eq[2, A051037(n+1)%3]+1)`
-/

namespace A054774.P18109788922238147149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051037 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A054774.P18109788922238147149

/-! ## A054774.P17988151948288647079

`filter[A003592(n+1), A066829(#)]`
-/

namespace A054774.P17988151948288647079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A054774.P17988151948288647079

/-!
# A054775: Positive multiples of 6 which are not the midpoint of a pair of twin primes.

The programs for A054775, the canonical program `A054775.P16087756340691914254` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054775 has offset 1).

The definition of A054775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054775.P16087756340691914254

`6*A067611(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A054775

/-- `6*A067611(n+1)` -/
def P16087756340691914254.Spec : Prop :=
  ∀ n, P16087756340691914254.a n = A054775 (n + 1)

theorem P16087756340691914254.correct : P16087756340691914254.Spec := by
  intro n
  simp only [A054775, Nat.add_sub_cancel]

end A054775

/-! ## A054775.P2967087691109466654

`6*(comp[A002822(n+1)-1]+1)`
-/

namespace A054775.P2967087691109466654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A054775.P2967087691109466654

namespace A054775

/-- `6*(comp[A002822(n+1)-1]+1)` -/
def P2967087691109466654.Spec : Prop :=
  ∀ n, (P2967087691109466654.a n : ℤ) = A054775 (n + 1)

end A054775

/-! ## A054775.P7457628631002083496

`∪[A259826(n+1), A273088(n+1)]`
-/

namespace A054775.P7457628631002083496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054775.P7457628631002083496

namespace A054775

/-- `∪[A259826(n+1), A273088(n+1)]` -/
def P7457628631002083496.Spec : Prop :=
  ∀ n, (P7457628631002083496.a n : ℤ) = A054775 (n + 1)

end A054775

/-! ## A054775.P17462005867007938485

`6*(lt[A100923(n+1), 1]+1)`
-/

namespace A054775.P17462005867007938485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100923 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A054775.P17462005867007938485

namespace A054775

/-- `6*(lt[A100923(n+1), 1]+1)` -/
def P17462005867007938485.Spec : Prop :=
  ∀ n, (P17462005867007938485.a n : ℤ) = A054775 (n + 1)

end A054775

/-! ## A054775.P2730832178986023262

`6*(lt[7, A182482(n+1)/(n+1)]+1)`
-/

namespace A054775.P2730832178986023262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182482 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1)

end

end A054775.P2730832178986023262

namespace A054775

/-- `6*(lt[7, A182482(n+1)/(n+1)]+1)` -/
def P2730832178986023262.Spec : Prop :=
  ∀ n, (P2730832178986023262.a n : ℤ) = A054775 (n + 1)

end A054775

/-! ## A054775.P11734147281665038553

`filter[A230628(n+1), A292438(#)]`
-/

namespace A054775.P11734147281665038553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A054775.P11734147281665038553

namespace A054775

/-- `filter[A230628(n+1), A292438(#)]` -/
def P11734147281665038553.Spec : Prop :=
  ∀ n, P11734147281665038553.a n = A054775 (n + 1)

end A054775

/-! ## A054775.P7206379700021661589

`A008458(A067611(n+1))`
-/

namespace A054775.P7206379700021661589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A067611 (n + 1)).toNat

end

end A054775.P7206379700021661589

namespace A054775

/-- `A008458(A067611(n+1))` -/
def P7206379700021661589.Spec : Prop :=
  ∀ n, P7206379700021661589.a n = A054775 (n + 1)

end A054775

/-! ## A054775.P12022526870552065036

`A008588(A067611(-xor(n, -1)))`
-/

namespace A054775.P12022526870552065036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A067611 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A054775.P12022526870552065036

namespace A054775

/-- `A008588(A067611(-xor(n, -1)))` -/
def P12022526870552065036.Spec : Prop :=
  ∀ n, P12022526870552065036.a n = A054775 (n + 1)

end A054775

/-! ## A054775.P17354096584235865803

`filter[A008458(n+1), A292438(#)]`
-/

namespace A054775.P17354096584235865803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A054775.P17354096584235865803

namespace A054775

/-- `filter[A008458(n+1), A292438(#)]` -/
def P17354096584235865803.Spec : Prop :=
  ∀ n, P17354096584235865803.a n = A054775 (n + 1)

end A054775

/-! ## A054775.P7130652229318857522

`filter[A008588(n+1), A292438(#)]`
-/

namespace A054775.P7130652229318857522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A054775.P7130652229318857522

namespace A054775

/-- `filter[A008588(n+1), A292438(#)]` -/
def P7130652229318857522.Spec : Prop :=
  ∀ n, P7130652229318857522.a n = A054775 (n + 1)

end A054775

/-! ## A054775.P8014283850116109133

`A008588(A067611(or(n+1, (n+1)%4)))`
-/

namespace A054775.P8014283850116109133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A067611 (Nat.lor (n + 1) ((n + 1) % 4))).toNat

end

end A054775.P8014283850116109133

namespace A054775

/-- `A008588(A067611(or(n+1, (n+1)%4)))` -/
def P8014283850116109133.Spec : Prop :=
  ∀ n, P8014283850116109133.a n = A054775 (n + 1)

end A054775

/-! ## A054775.P2971488306195378827

`A008588(A067611(n+1)+A000007(n+1))`
-/

namespace A054775.P2971488306195378827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A067611 (n + 1) + A000007 (n + 1)).toNat

end

end A054775.P2971488306195378827

namespace A054775

/-- `A008588(A067611(n+1)+A000007(n+1))` -/
def P2971488306195378827.Spec : Prop :=
  ∀ n, P2971488306195378827.a n = A054775 (n + 1)

end A054775

/-! ## A054775.P18110461785520579898

`filter[A309118(2*(n+1)), A292438(#)]`
-/

namespace A054775.P18110461785520579898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309118 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A054775.P18110461785520579898

namespace A054775

/-- `filter[A309118(2*(n+1)), A292438(#)]` -/
def P18110461785520579898.Spec : Prop :=
  ∀ n, P18110461785520579898.a n = A054775 (n + 1)

end A054775

/-! ## A054775.P18136280600322721375

`filter[A106832(2*(n+1)), A292438(#)]`
-/

namespace A054775.P18136280600322721375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106832 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A054775.P18136280600322721375

namespace A054775

/-- `filter[A106832(2*(n+1)), A292438(#)]` -/
def P18136280600322721375.Spec : Prop :=
  ∀ n, P18136280600322721375.a n = A054775 (n + 1)

end A054775

/-! ## A054775.P18025054629318174242

`filter[A165998(2*n+1), A292438(#)]`
-/

namespace A054775.P18025054629318174242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A054775.P18025054629318174242

namespace A054775

/-- `filter[A165998(2*n+1), A292438(#)]` -/
def P18025054629318174242.Spec : Prop :=
  ∀ n, P18025054629318174242.a n = A054775 (n + 1)

end A054775

/-! ## A054775.P4407178939974058082

`filter[A168328(2*(n+1)), A292438(#)]`
-/

namespace A054775.P4407178939974058082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168328 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A054775.P4407178939974058082

namespace A054775

/-- `filter[A168328(2*(n+1)), A292438(#)]` -/
def P4407178939974058082.Spec : Prop :=
  ∀ n, P4407178939974058082.a n = A054775 (n + 1)

end A054775

/-! ## A054775.P17901752052642740488

`filter[A175029(2*(n+1)), A292438(#)]`
-/

namespace A054775.P17901752052642740488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175029 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A054775.P17901752052642740488

namespace A054775

/-- `filter[A175029(2*(n+1)), A292438(#)]` -/
def P17901752052642740488.Spec : Prop :=
  ∀ n, P17901752052642740488.a n = A054775 (n + 1)

end A054775

/-! ## A054775.P10450315995439620320

`filter[A189327(2*(n+1)), A292438(#)]`
-/

namespace A054775.P10450315995439620320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189327 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A054775.P10450315995439620320

namespace A054775

/-- `filter[A189327(2*(n+1)), A292438(#)]` -/
def P10450315995439620320.Spec : Prop :=
  ∀ n, P10450315995439620320.a n = A054775 (n + 1)

end A054775

/-! ## A054775.P10346668799644869320

`filter[A193767(2*(n+1)), A292438(#)]`
-/

namespace A054775.P10346668799644869320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193767 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A054775.P10346668799644869320

namespace A054775

/-- `filter[A193767(2*(n+1)), A292438(#)]` -/
def P10346668799644869320.Spec : Prop :=
  ∀ n, P10346668799644869320.a n = A054775 (n + 1)

end A054775

/-! ## A054775.P14468992620878826533

`filter[A100319(n+1), A079979(#)]`
-/

namespace A054775.P14468992620878826533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A054775.P14468992620878826533

namespace A054775

/-- `filter[A100319(n+1), A079979(#)]` -/
def P14468992620878826533.Spec : Prop :=
  ∀ n, P14468992620878826533.a n = A054775 (n + 1)

end A054775

/-!
# A054776: a(n) = 3*n*(3*n-1)*(3*n-2).

The programs for A054776, the canonical program `A054776.P18099874300018265278` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054776 has offset 0).

The definition of A054776 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(3*n-1)*(3*n-2)` (program `A054776.P18099874300018265278`, by `A054776.P18099874300018265278.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054776.P9026315615330379420

`ogf((6x+96x^2+60x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A054776.P9026315615330379420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 96, 60] [1, -4, 6, -4, 1] n

end

end A054776.P9026315615330379420

namespace A054776

/-- `ogf((6x+96x^2+60x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P9026315615330379420.Spec : Prop :=
  ∀ n, P9026315615330379420.a n = A054776 n

end A054776

/-! ## A054776.P18099874300018265278

`3*n*(3*n-1)*(3*n-2)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A054776

/-- `3*n*(3*n-1)*(3*n-2)` -/
def P18099874300018265278.Spec : Prop :=
  ∀ n, P18099874300018265278.a n = A054776 n

theorem P18099874300018265278.correct : P18099874300018265278.Spec := by
  intro n
  simp only [A054776]

end A054776

/-! ## A054776.P3589628794941552934

`A007531(3*n)`
-/

namespace A054776.P3589628794941552934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (3 * n)

end

end A054776.P3589628794941552934

namespace A054776

/-- `A007531(3*n)` -/
def P3589628794941552934.Spec : Prop :=
  ∀ n, P3589628794941552934.a n = A054776 n

theorem P3589628794941552934.correct : P3589628794941552934.Spec := by
  intro n
  simp only [A054776, Nat.add_sub_cancel, A054776.P3589628794941552934.a, A054776.P18099874300018265278.a, A007531, A007531.P15538264737483534371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054776

/-! ## A054776.P9128176668829312462

`6*C(3*n, 3)`
-/

namespace A054776.P9128176668829312462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (3 * n) 3

end

end A054776.P9128176668829312462

namespace A054776

/-- `6*C(3*n, 3)` -/
def P9128176668829312462.Spec : Prop :=
  ∀ n, (P9128176668829312462.a n : ℤ) = A054776 n

theorem P9128176668829312462.correct : P9128176668829312462.Spec := by
  intro n
  simp only [A054776, Nat.add_sub_cancel, A054776.P9128176668829312462.a, A054776.P18099874300018265278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054776

/-! ## A054776.P5918362666154378088

`record[n^gcd(3, n+1)-n]`
-/

namespace A054776.P5918362666154378088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ Nat.gcd 3 (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054776.P5918362666154378088

namespace A054776

/-- `record[n^gcd(3, n+1)-n]` -/
def P5918362666154378088.Spec : Prop :=
  ∀ n, P5918362666154378088.a n = A054776 n

end A054776

/-! ## A054776.P7489402816697449297

`lcm(A000567(n), A152743(n))`
-/

namespace A054776.P7489402816697449297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000567 n) (A152743 n)

end

end A054776.P7489402816697449297

namespace A054776

/-- `lcm(A000567(n), A152743(n))` -/
def P7489402816697449297.Spec : Prop :=
  ∀ n, (P7489402816697449297.a n : ℤ) = A054776 n

end A054776

/-! ## A054776.P16644099221120443770

`lcm(A049450(n), A152751(n))`
-/

namespace A054776.P16644099221120443770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049450 n) (A152751 n)

end

end A054776.P16644099221120443770

namespace A054776

/-- `lcm(A049450(n), A152751(n))` -/
def P16644099221120443770.Spec : Prop :=
  ∀ n, (P16644099221120443770.a n : ℤ) = A054776 n

end A054776

/-! ## A054776.P4277946242857196814

`A008486(n)*A152751(n)-A152751(n)`
-/

namespace A054776.P4277946242857196814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n * A152751 n - A152751 n

end

end A054776.P4277946242857196814

namespace A054776

/-- `A008486(n)*A152751(n)-A152751(n)` -/
def P4277946242857196814.Spec : Prop :=
  ∀ n, P4277946242857196814.a n = A054776 n

end A054776

/-! ## A054776.P3350632242821306750

`A006566(n)*A228889(n+1)/A228888(n+1)`
-/

namespace A054776.P3350632242821306750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006566 n * A228889 (n + 1) : ℚ) / (A228888 (n + 1) : ℚ)

end

end A054776.P3350632242821306750

namespace A054776

/-- `A006566(n)*A228889(n+1)/A228888(n+1)` -/
def P3350632242821306750.Spec : Prop :=
  ∀ n, P3350632242821306750.a n = (A054776 n : ℚ)

end A054776

/-! ## A054776.P8290359299306087901

`A280058(3*n)/2`
-/

namespace A054776.P8290359299306087901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280058 (3 * n) : ℚ) / 2

end

end A054776.P8290359299306087901

namespace A054776

/-- `A280058(3*n)/2` -/
def P8290359299306087901.Spec : Prop :=
  ∀ n, P8290359299306087901.a n = (A054776 n : ℚ)

theorem P8290359299306087901.correct : P8290359299306087901.Spec := by
  intro n
  simp only [A054776, Nat.add_sub_cancel, A054776.P8290359299306087901.a, A054776.P18099874300018265278.a, A280058, A280058.P16968223727792884466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054776

/-! ## A054776.P14936769354442299309

`record[A007531(Δ[A085787(n)])]`
-/

namespace A054776.P14936769354442299309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054776.P14936769354442299309

namespace A054776

/-- `record[A007531(Δ[A085787(n)])]` -/
def P14936769354442299309.Spec : Prop :=
  ∀ n, P14936769354442299309.a n = A054776 n

end A054776

/-! ## A054776.P15082445144842492234

`A052762(3*n+1)/(3*n+1)`
-/

namespace A054776.P15082445144842492234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052762 (3 * n + 1) : ℚ) / (3 * n + 1 : ℚ)

end

end A054776.P15082445144842492234

namespace A054776

/-- `A052762(3*n+1)/(3*n+1)` -/
def P15082445144842492234.Spec : Prop :=
  ∀ n, P15082445144842492234.a n = (A054776 n : ℚ)

theorem P15082445144842492234.correct : P15082445144842492234.Spec := by
  intro n
  simp only [A054776, Nat.add_sub_cancel, A054776.P15082445144842492234.a, A054776.P18099874300018265278.a, A052762, A052762.P17182617027547716710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054776

/-! ## A054776.P3317456861342039264

`A060423(6*n)`
-/

namespace A054776.P3317456861342039264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060423 (6 * n)

end

end A054776.P3317456861342039264

namespace A054776

/-- `A060423(6*n)` -/
def P3317456861342039264.Spec : Prop :=
  ∀ n, P3317456861342039264.a n = A054776 n

end A054776

/-! ## A054776.P3325846152806069606

`A185292(A122709(n))`
-/

namespace A054776.P3325846152806069606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185292 (A122709 n).toNat

end

end A054776.P3325846152806069606

namespace A054776

/-- `A185292(A122709(n))` -/
def P3325846152806069606.Spec : Prop :=
  ∀ n, P3325846152806069606.a n = A054776 n

end A054776

/-! ## A054776.P8466089901851517613

`A185292(A179805(n+1))`
-/

namespace A054776.P8466089901851517613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185292 (A179805 (n + 1)).toNat

end

end A054776.P8466089901851517613

namespace A054776

/-- `A185292(A179805(n+1))` -/
def P8466089901851517613.Spec : Prop :=
  ∀ n, P8466089901851517613.a n = A054776 n

end A054776

/-!
# A054777: a(n) = 4*n*(4*n-1)*(4*n-2)*(4*n-3).

The programs for A054777, the canonical program `A054777.P991679116214926285` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054777 has offset 0).

The definition of A054777 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(4*n-1)*(4*n-2)*(4*n-3)` (program `A054777.P991679116214926285`, by `A054777.P991679116214926285.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054777.P991679116214926285

`4*n*(4*n-1)*(4*n-2)*(4*n-3)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A054777

/-- `4*n*(4*n-1)*(4*n-2)*(4*n-3)` -/
def P991679116214926285.Spec : Prop :=
  ∀ n, P991679116214926285.a n = A054777 n

theorem P991679116214926285.correct : P991679116214926285.Spec := by
  intro n
  simp only [A054777]

end A054777

/-! ## A054777.P13774199864106109911

`A052762(4*n)`
-/

namespace A054777.P13774199864106109911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 (4 * n)

end

end A054777.P13774199864106109911

namespace A054777

/-- `A052762(4*n)` -/
def P13774199864106109911.Spec : Prop :=
  ∀ n, P13774199864106109911.a n = A054777 n

theorem P13774199864106109911.correct : P13774199864106109911.Spec := by
  intro n
  simp only [A054777, Nat.add_sub_cancel, A054777.P13774199864106109911.a, A054777.P991679116214926285.a, A052762, A052762.P17182617027547716710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054777

/-! ## A054777.P16946524711089636798

`record[A052762(lcm(2, n)+2)]`
-/

namespace A054777.P16946524711089636798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 (Nat.lcm 2 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054777.P16946524711089636798

namespace A054777

/-- `record[A052762(lcm(2, n)+2)]` -/
def P16946524711089636798.Spec : Prop :=
  ∀ n, P16946524711089636798.a n = A054777 n

end A054777

/-! ## A054777.P9709488344822780848

`A052787(4*n+1)/(4*n+1)`
-/

namespace A054777.P9709488344822780848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052787 (4 * n + 1) : ℚ) / (4 * n + 1 : ℚ)

end

end A054777.P9709488344822780848

namespace A054777

/-- `A052787(4*n+1)/(4*n+1)` -/
def P9709488344822780848.Spec : Prop :=
  ∀ n, P9709488344822780848.a n = (A054777 n : ℚ)

theorem P9709488344822780848.correct : P9709488344822780848.Spec := by
  intro n
  simp only [A054777, Nat.add_sub_cancel, A054777.P9709488344822780848.a, A054777.P991679116214926285.a, A052787, A052787.P3134947303530466889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054777

/-! ## A054777.P1331922828516604041

`record[A052762(Δ[A001082(n+1)])]`
-/

namespace A054777.P1331922828516604041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054777.P1331922828516604041

namespace A054777

/-- `record[A052762(Δ[A001082(n+1)])]` -/
def P1331922828516604041.Spec : Prop :=
  ∀ n, P1331922828516604041.a n = A054777 n

end A054777

/-! ## A054777.P5697478857302411097

`record[A052762(gcd(n², A007531(n)))]`
-/

namespace A054777.P5697478857302411097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 (Int.gcd (n ^ 2 : ℤ) (A007531 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054777.P5697478857302411097

namespace A054777

/-- `record[A052762(gcd(n², A007531(n)))]` -/
def P5697478857302411097.Spec : Prop :=
  ∀ n, P5697478857302411097.a n = A054777 n

end A054777

/-! ## A054777.P4691828142746849085

`gcd(A052787(4*n), A334281(4*n))`
-/

namespace A054777.P4691828142746849085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052787 (4 * n)) (A334281 (4 * n))

end

end A054777.P4691828142746849085

namespace A054777

/-- `gcd(A052787(4*n), A334281(4*n))` -/
def P4691828142746849085.Spec : Prop :=
  ∀ n, (P4691828142746849085.a n : ℤ) = A054777 n

end A054777

/-! ## A054777.P8658016627165911526

`record[A052762(and(n+1, n+1-A020639(n+1)))]`
-/

namespace A054777.P8658016627165911526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 (Int.land (n + 1 : ℤ) ((n + 1 : ℤ) - A020639 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054777.P8658016627165911526

namespace A054777

/-- `record[A052762(and(n+1, n+1-A020639(n+1)))]` -/
def P8658016627165911526.Spec : Prop :=
  ∀ n, P8658016627165911526.a n = A054777 n

end A054777

/-!
# A054778: a(n) = 5n*(5n-1)*(5n-2)*(5n-3)*(5n-4).

The programs for A054778, the canonical program `A054778.P13779732605117203561` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054778 has offset 0).

The definition of A054778 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n*(5*n-1)*(5*n-2)*(5*n-3)*(5*n-4)` (program `A054778.P13779732605117203561`, by `A054778.P13779732605117203561.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054778.P18297225841636366093

`120*C(5*n, 5)`
-/

namespace A054778.P18297225841636366093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  120 * Nat.choose (5 * n) 5

end

end A054778.P18297225841636366093

namespace A054778

/-- `120*C(5*n, 5)` -/
def P18297225841636366093.Spec : Prop :=
  ∀ n, (P18297225841636366093.a n : ℤ) = A054778 n

theorem P18297225841636366093.correct : P18297225841636366093.Spec := by
  intro n
  simp only [A054778, Nat.add_sub_cancel, A054778.P18297225841636366093.a, A054778.P13779732605117203561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054778

/-! ## A054778.P13779732605117203561

`5*n*(5*n-1)*(5*n-2)*(5*n-3)*(5*n-4)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A054778

/-- `5*n*(5*n-1)*(5*n-2)*(5*n-3)*(5*n-4)` -/
def P13779732605117203561.Spec : Prop :=
  ∀ n, P13779732605117203561.a n = A054778 n

theorem P13779732605117203561.correct : P13779732605117203561.Spec := by
  intro n
  simp only [A054778]

end A054778

/-! ## A054778.P14406375520729019799

`A052787(5*n)`
-/

namespace A054778.P14406375520729019799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052787 (5 * n)

end

end A054778.P14406375520729019799

namespace A054778

/-- `A052787(5*n)` -/
def P14406375520729019799.Spec : Prop :=
  ∀ n, P14406375520729019799.a n = A054778 n

theorem P14406375520729019799.correct : P14406375520729019799.Spec := by
  intro n
  simp only [A054778, Nat.add_sub_cancel, A054778.P14406375520729019799.a, A054778.P13779732605117203561.a, A052787, A052787.P3134947303530466889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A054778

/-! ## A054778.P11508098631988805365

`A001095(5*n)-5*n`
-/

namespace A054778.P11508098631988805365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001095 (5 * n) - (5 * n : ℤ)

end

end A054778.P11508098631988805365

namespace A054778

/-- `A001095(5*n)-5*n` -/
def P11508098631988805365.Spec : Prop :=
  ∀ n, P11508098631988805365.a n = A054778 n

theorem P11508098631988805365.correct : P11508098631988805365.Spec := by
  intro n
  simp only [A054778, Nat.add_sub_cancel, A054778.P11508098631988805365.a, A054778.P13779732605117203561.a, A001095, A001095.P5999656701398893294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054778

/-! ## A054778.P975902008009231736

`A053625(5*n+1)/(5*n+1)`
-/

namespace A054778.P975902008009231736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053625 (5 * n + 1) : ℚ) / (5 * n + 1 : ℚ)

end

end A054778.P975902008009231736

namespace A054778

/-- `A053625(5*n+1)/(5*n+1)` -/
def P975902008009231736.Spec : Prop :=
  ∀ n, P975902008009231736.a n = (A054778 n : ℚ)

theorem P975902008009231736.correct : P975902008009231736.Spec := by
  intro n
  simp only [A054778, Nat.add_sub_cancel, A054778.P975902008009231736.a, A054778.P13779732605117203561.a, A053625, A053625.P9911558398274709758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054778

/-! ## A054778.P3726232674378994258

`lcm(2, A052787(A008706(n)))`
-/

namespace A054778.P3726232674378994258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A052787 (A008706 n).toNat)

end

end A054778.P3726232674378994258

namespace A054778

/-- `lcm(2, A052787(A008706(n)))` -/
def P3726232674378994258.Spec : Prop :=
  ∀ n, (P3726232674378994258.a n : ℤ) = A054778 n

end A054778

/-!
# A054779: a(n) = 6n*(6n-1)*(6n-2)*(6n-3)*(6n-4)*(6n-5).

The programs for A054779, the canonical program `A054779.P15744182192818486596` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054779 has offset 0).

The definition of A054779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054779.P15744182192818486596

`A053625(6*n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A054779

/-- `A053625(6*n)` -/
def P15744182192818486596.Spec : Prop :=
  ∀ n, P15744182192818486596.a n = A054779 n

theorem P15744182192818486596.correct : P15744182192818486596.Spec := by
  intro n
  simp only [A054779]

end A054779

/-! ## A054779.P4044809173868186787

`A001096(6*n)-6*n`
-/

namespace A054779.P4044809173868186787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001096 (6 * n) - (6 * n : ℤ)

end

end A054779.P4044809173868186787

namespace A054779

/-- `A001096(6*n)-6*n` -/
def P4044809173868186787.Spec : Prop :=
  ∀ n, P4044809173868186787.a n = A054779 n

theorem P4044809173868186787.correct : P4044809173868186787.Spec := by
  intro n
  simp only [A054779, Nat.add_sub_cancel, A054779.P4044809173868186787.a, A054779.P15744182192818486596.a, A001096, A001096.P17984634652378150633.a, A053625, A053625.P9911558398274709758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054779

/-! ## A054779.P5309218727096770151

`record[A053625(A165998(n))]`
-/

namespace A054779.P5309218727096770151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053625 (A165998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054779.P5309218727096770151

namespace A054779

/-- `record[A053625(A165998(n))]` -/
def P5309218727096770151.Spec : Prop :=
  ∀ n, P5309218727096770151.a n = A054779 n

end A054779

/-! ## A054779.P8407334753973170915

`lcm(2, A053625(A008458(n)))`
-/

namespace A054779.P8407334753973170915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A053625 (A008458 n).toNat)

end

end A054779.P8407334753973170915

namespace A054779

/-- `lcm(2, A053625(A008458(n)))` -/
def P8407334753973170915.Spec : Prop :=
  ∀ n, (P8407334753973170915.a n : ℤ) = A054779 n

end A054779

/-! ## A054779.P11496089607558853733

`A185292(A179805(2*n+1))*A185292(A179805(2*n))`
-/

namespace A054779.P11496089607558853733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185292 (A179805 (2 * n + 1)).toNat * A185292 (A179805 (2 * n)).toNat

end

end A054779.P11496089607558853733

namespace A054779

/-- `A185292(A179805(2*n+1))*A185292(A179805(2*n))` -/
def P11496089607558853733.Spec : Prop :=
  ∀ n, P11496089607558853733.a n = A054779 n

end A054779

/-!
# A054780: Number of n-covers of a labeled n-set.

The programs for A054780, the canonical program `A054780.P15830686772221877550` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054780 has offset 0).

The definition of A054780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054780.P15830686772221877550

`∑{#}[n, (-1)^#*C(n, #)*C(2^(n-#)-1, n)]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A054780

/-- `∑{#}[n, (-1)^#*C(n, #)*C(2^(n-#)-1, n)]` -/
def P15830686772221877550.Spec : Prop :=
  ∀ n, P15830686772221877550.a n = A054780 n

theorem P15830686772221877550.correct : P15830686772221877550.Spec := by
  intro n
  simp only [A054780]

end A054780

/-! ## A054780.P13429190155428351403

`A055154(A255047(n))`
-/

namespace A054780.P13429190155428351403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055154 (A255047 n).toNat

end

end A054780.P13429190155428351403

namespace A054780

/-- `A055154(A255047(n))` -/
def P13429190155428351403.Spec : Prop :=
  ∀ n, P13429190155428351403.a n = A054780 n

end A054780

/-! ## A054780.P6001036750737346854

`A055154(A153010(n+1))`
-/

namespace A054780.P6001036750737346854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055154 (A153010 (n + 1)).toNat

end

end A054780.P6001036750737346854

namespace A054780

/-- `A055154(A153010(n+1))` -/
def P6001036750737346854.Spec : Prop :=
  ∀ n, P6001036750737346854.a n = A054780 n

end A054780

/-! ## A054780.P1897538639529468329

`A055154(A296965(n)+1)`
-/

namespace A054780.P1897538639529468329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055154 (A296965 n + 1).toNat

end

end A054780.P1897538639529468329

namespace A054780

/-- `A055154(A296965(n)+1)` -/
def P1897538639529468329.Spec : Prop :=
  ∀ n, P1897538639529468329.a n = A054780 n

end A054780

/-! ## A054780.P1826554022648982057

`A055154(or(1, A296965(n)))`
-/

namespace A054780.P1826554022648982057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055154 (Int.lor 1 (A296965 n)).toNat

end

end A054780.P1826554022648982057

namespace A054780

/-- `A055154(or(1, A296965(n)))` -/
def P1826554022648982057.Spec : Prop :=
  ∀ n, P1826554022648982057.a n = A054780 n

end A054780

/-!
# A054781: First position of n in continued fraction for Khinchin's constant.

The programs for A054781, there is no canonical definition to state claims against.
-/

/-! ## A054781.P14762430101836702315

`A224851(n+1)+1`
-/

namespace A054781.P14762430101836702315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224851 (n + 1) + 1

end

end A054781.P14762430101836702315

/-!
# A054782: Number of primes <= the n-th Fibonacci number.

The programs for A054782, there is no canonical definition to state claims against.
-/

/-! ## A054782.P8682680368420792046

`∑[A076777(abs(1-n))]`
-/

namespace A054782.P8682680368420792046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076777 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054782.P8682680368420792046

/-! ## A054782.P11922686204304679122

`A076777(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A054782.P11922686204304679122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A076777 (n - 1) + a (n - 1)

end

end A054782.P11922686204304679122

/-! ## A054782.P10987782779234715473

`∑[A076777(n)]-A076777(n)`
-/

namespace A054782.P10987782779234715473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A076777 n

end

end A054782.P10987782779234715473

/-! ## A054782.P16805033493461606369

`A182564(n)+char[A001605(n+1)]`
-/

namespace A054782.P16805033493461606369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182564 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A054782.P16805033493461606369

/-! ## A054782.P12151177381508516967

`A182564(n)+char[eq[0, A079677(n)]]`
-/

namespace A054782.P12151177381508516967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079677 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182564 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A054782.P12151177381508516967

/-!
# A054783: (n^2)-th Fibonacci number.

The programs for A054783, the canonical program `A054783.P10815641831821132624` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054783 has offset 0).

The definition of A054783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054783.P10815641831821132624

`A000045(n²)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A054783

/-- `A000045(n²)` -/
def P10815641831821132624.Spec : Prop :=
  ∀ n, P10815641831821132624.a n = A054783 n

theorem P10815641831821132624.correct : P10815641831821132624.Spec := by
  intro n
  simp only [A054783]

end A054783

/-! ## A054783.P4859022840653032763

`round(ϕ^n²/sqrt(5))`
-/

namespace A054783.P4859022840653032763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n ^ 2 / Real.sqrt (5 : ℝ))

end

end A054783.P4859022840653032763

namespace A054783

/-- `round(ϕ^n²/sqrt(5))` -/
def P4859022840653032763.Spec : Prop :=
  ∀ n, P4859022840653032763.a n = A054783 n

end A054783

/-! ## A054783.P13181467865142963668

`A333378(n²)`
-/

namespace A054783.P13181467865142963668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333378 (n ^ 2)

end

end A054783.P13181467865142963668

namespace A054783

/-- `A333378(n²)` -/
def P13181467865142963668.Spec : Prop :=
  ∀ n, P13181467865142963668.a n = A054783 n

end A054783

/-! ## A054783.P16316409245989534001

`abs(A173344(n²))`
-/

namespace A054783.P16316409245989534001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A173344 (n ^ 2)|

end

end A054783.P16316409245989534001

namespace A054783

/-- `abs(A173344(n²))` -/
def P16316409245989534001.Spec : Prop :=
  ∀ n, P16316409245989534001.a n = A054783 n

end A054783

/-!
# A054784: Integers n such that sigma(2n) - sigma(n) is a power of 2, where sigma is the sum of the divisors of n.

The programs for A054784, the canonical program `A054784.P4050351329649829973` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054784 has offset 1).

The definition of A054784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054784.P8937918425133060667

`filter[A219174(n+1), A336923(#)]`
-/

namespace A054784.P8937918425133060667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336923 (f1 j).toNat = 1) n)

end

end A054784.P8937918425133060667

namespace A054784

/-- `filter[A219174(n+1), A336923(#)]` -/
def P8937918425133060667.Spec : Prop :=
  ∀ n, P8937918425133060667.a n = A054784 (n + 1)

end A054784

/-! ## A054784.P7536980394989876161

`filter[A219174(n+1), A353627(#)]`
-/

namespace A054784.P7536980394989876161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A054784.P7536980394989876161

namespace A054784

/-- `filter[A219174(n+1), A353627(#)]` -/
def P7536980394989876161.Spec : Prop :=
  ∀ n, P7536980394989876161.a n = A054784 (n + 1)

end A054784

/-! ## A054784.P4073749240798959322

`filter[A305810(n+1), A336923(#)]`
-/

namespace A054784.P4073749240798959322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336923 (f1 j).toNat = 1) n)

end

end A054784.P4073749240798959322

namespace A054784

/-- `filter[A305810(n+1), A336923(#)]` -/
def P4073749240798959322.Spec : Prop :=
  ∀ n, P4073749240798959322.a n = A054784 (n + 1)

end A054784

/-! ## A054784.P11740944704373567075

`filter[A305900(n+1), A336923(#)]`
-/

namespace A054784.P11740944704373567075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336923 (f1 j).toNat = 1) n)

end

end A054784.P11740944704373567075

namespace A054784

/-- `filter[A305900(n+1), A336923(#)]` -/
def P11740944704373567075.Spec : Prop :=
  ∀ n, P11740944704373567075.a n = A054784 (n + 1)

end A054784

/-! ## A054784.P15798897296736118254

`filter[A235028(n+2), A336923(#)]`
-/

namespace A054784.P15798897296736118254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235028 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336923 (f1 j).toNat = 1) n)

end

end A054784.P15798897296736118254

namespace A054784

/-- `filter[A235028(n+2), A336923(#)]` -/
def P15798897296736118254.Spec : Prop :=
  ∀ n, P15798897296736118254.a n = A054784 (n + 1)

end A054784

/-! ## A054784.P6279637894285792699

`record[(n+1)/A007310(A336922(n+1)+1)]`
-/

namespace A054784.P6279637894285792699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007310 (A336922 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054784.P6279637894285792699

namespace A054784

/-- `record[(n+1)/A007310(A336922(n+1)+1)]` -/
def P6279637894285792699.Spec : Prop :=
  ∀ n, P6279637894285792699.a n = (A054784 (n + 1) : ℚ)

end A054784

/-! ## A054784.P7079984441502135248

`record[(n+1)/A164269(A336922(n+1)²+1)]`
-/

namespace A054784.P7079984441502135248
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A164269 (A336922 (n + 1) ^ 2 + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054784.P7079984441502135248

namespace A054784

/-- `record[(n+1)/A164269(A336922(n+1)²+1)]` -/
def P7079984441502135248.Spec : Prop :=
  ∀ n, P7079984441502135248.a n = (A054784 (n + 1) : ℚ)

end A054784

/-! ## A054784.P5425462793403681927

`filter[A004144(n+1), A336923(#)]`
-/

namespace A054784.P5425462793403681927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336923 (f1 j).toNat = 1) n)

end

end A054784.P5425462793403681927

namespace A054784

/-- `filter[A004144(n+1), A336923(#)]` -/
def P5425462793403681927.Spec : Prop :=
  ∀ n, P5425462793403681927.a n = A054784 (n + 1)

end A054784

/-! ## A054784.P3515617203659433048

`filter[A382546(n+1), A336923(#)]`
-/

namespace A054784.P3515617203659433048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336923 (f1 j).toNat = 1) n)

end

end A054784.P3515617203659433048

namespace A054784

/-- `filter[A382546(n+1), A336923(#)]` -/
def P3515617203659433048.Spec : Prop :=
  ∀ n, P3515617203659433048.a n = A054784 (n + 1)

end A054784

/-! ## A054784.P4050351329649829973

`eq[1, A336923(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054784

/-- `eq[1, A336923(n+1)]+1` -/
def P4050351329649829973.Spec : Prop :=
  ∀ n, (P4050351329649829973.a n : ℤ) = A054784 (n + 1)

theorem P4050351329649829973.correct : P4050351329649829973.Spec := by
  intro n
  simp only [A054784, Nat.add_sub_cancel]

end A054784

/-! ## A054784.P15290496981503782592

`lt[A336361(n+1), 2]+1`
-/

namespace A054784.P15290496981503782592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336361 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A054784.P15290496981503782592

namespace A054784

/-- `lt[A336361(n+1), 2]+1` -/
def P15290496981503782592.Spec : Prop :=
  ∀ n, (P15290496981503782592.a n : ℤ) = A054784 (n + 1)

end A054784

/-! ## A054784.P6340826954126442544

`filter[A070932(n+2), A336923(#)]`
-/

namespace A054784.P6340826954126442544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070932 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336923 (f1 j).toNat = 1) n)

end

end A054784.P6340826954126442544

namespace A054784

/-- `filter[A070932(n+2), A336923(#)]` -/
def P6340826954126442544.Spec : Prop :=
  ∀ n, P6340826954126442544.a n = A054784 (n + 1)

end A054784

/-! ## A054784.P15833110152174221648

`eq[1, A318876(A318876(n+1))]+1`
-/

namespace A054784.P15833110152174221648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318876 (A318876 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054784.P15833110152174221648

namespace A054784

/-- `eq[1, A318876(A318876(n+1))]+1` -/
def P15833110152174221648.Spec : Prop :=
  ∀ n, (P15833110152174221648.a n : ℤ) = A054784 (n + 1)

end A054784

/-! ## A054784.P13217478885409272561

`filter[A035246(n+1), A336923(#)]`
-/

namespace A054784.P13217478885409272561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336923 (f1 j).toNat = 1) n)

end

end A054784.P13217478885409272561

namespace A054784

/-- `filter[A035246(n+1), A336923(#)]` -/
def P13217478885409272561.Spec : Prop :=
  ∀ n, P13217478885409272561.a n = A054784 (n + 1)

end A054784

/-! ## A054784.P10241188425655580799

`filter[A268377(n+1), A336923(#)]`
-/

namespace A054784.P10241188425655580799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336923 (f1 j).toNat = 1) n)

end

end A054784.P10241188425655580799

namespace A054784

/-- `filter[A268377(n+1), A336923(#)]` -/
def P10241188425655580799.Spec : Prop :=
  ∀ n, P10241188425655580799.a n = A054784 (n + 1)

end A054784

/-! ## A054784.P14516563176258522631

`filter[A317294(n+1), A336923(#)]`
-/

namespace A054784.P14516563176258522631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336923 (f1 j).toNat = 1) n)

end

end A054784.P14516563176258522631

namespace A054784

/-- `filter[A317294(n+1), A336923(#)]` -/
def P14516563176258522631.Spec : Prop :=
  ∀ n, P14516563176258522631.a n = A054784 (n + 1)

end A054784

/-! ## A054784.P5025750441716391735

`filter[A209921(n+1), A336923(#)]`
-/

namespace A054784.P5025750441716391735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336923 (f1 j).toNat = 1) n)

end

end A054784.P5025750441716391735

namespace A054784

/-- `filter[A209921(n+1), A336923(#)]` -/
def P5025750441716391735.Spec : Prop :=
  ∀ n, P5025750441716391735.a n = A054784 (n + 1)

end A054784

/-! ## A054784.P5406173174918225921

`filter[A225837(n+1), A336923(#)]`
-/

namespace A054784.P5406173174918225921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336923 (f1 j).toNat = 1) n)

end

end A054784.P5406173174918225921

namespace A054784

/-- `filter[A225837(n+1), A336923(#)]` -/
def P5406173174918225921.Spec : Prop :=
  ∀ n, P5406173174918225921.a n = A054784 (n + 1)

end A054784

/-! ## A054784.P5043316306777485914

`eq[1, A347240(A347240(n+1))]+1`
-/

namespace A054784.P5043316306777485914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347240 (A347240 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054784.P5043316306777485914

namespace A054784

/-- `eq[1, A347240(A347240(n+1))]+1` -/
def P5043316306777485914.Spec : Prop :=
  ∀ n, (P5043316306777485914.a n : ℤ) = A054784 (n + 1)

end A054784

/-!
# A054785: a(n) = sigma(2n) - sigma(n), where sigma is the sum of divisors of n, A000203.

The programs for A054785, the canonical program `A054785.P16543829673478475701` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054785 has offset 1).

The definition of A054785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(2*(n+1))-A000203(n+1)` (program `A054785.P16543829673478475701`, by `A054785.P16543829673478475701.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054785.P15699579488212647133

`2*A002131(n+1)`
-/

namespace A054785.P15699579488212647133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002131 (n + 1)

end

end A054785.P15699579488212647133

namespace A054785

/-- `2*A002131(n+1)` -/
def P15699579488212647133.Spec : Prop :=
  ∀ n, P15699579488212647133.a n = A054785 (n + 1)

end A054785

/-! ## A054785.P5701598532263366676

`A000203(n+1)+A000593(n+1)`
-/

namespace A054785.P5701598532263366676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000593 (n + 1)

end

end A054785.P5701598532263366676

namespace A054785

/-- `A000203(n+1)+A000593(n+1)` -/
def P5701598532263366676.Spec : Prop :=
  ∀ n, P5701598532263366676.a n = A054785 (n + 1)

end A054785

/-! ## A054785.P16543829673478475701

`A000203(2*(n+1))-A000203(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A054785

/-- `A000203(2*(n+1))-A000203(n+1)` -/
def P16543829673478475701.Spec : Prop :=
  ∀ n, P16543829673478475701.a n = A054785 (n + 1)

theorem P16543829673478475701.correct : P16543829673478475701.Spec := by
  intro n
  simp only [A054785, Nat.add_sub_cancel]

end A054785

/-! ## A054785.P17989682724037736429

`∑{d}[n+1, lcm(2, #)]`
-/

namespace A054785.P17989682724037736429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.lcm 2 d

end

end A054785.P17989682724037736429

namespace A054785

/-- `∑{d}[n+1, lcm(2, #)]` -/
def P17989682724037736429.Spec : Prop :=
  ∀ n, (P17989682724037736429.a n : ℤ) = A054785 (n + 1)

end A054785

/-! ## A054785.P5701657581735414972

`∑{d}[n+1, #*#%2]+∑{d}[n+1, #]`
-/

namespace A054785.P5701657581735414972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d * (d % 2) + ∑ d ∈ Nat.divisors (f2 n), d

end

end A054785.P5701657581735414972

namespace A054785

/-- `∑{d}[n+1, #*#%2]+∑{d}[n+1, #]` -/
def P5701657581735414972.Spec : Prop :=
  ∀ n, (P5701657581735414972.a n : ℤ) = A054785 (n + 1)

end A054785

/-! ## A054785.P4046986594858444861

`A326066(2*(n+1))`
-/

namespace A054785.P4046986594858444861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326066 (2 * (n + 1))

end

end A054785.P4046986594858444861

namespace A054785

/-- `A326066(2*(n+1))` -/
def P4046986594858444861.Spec : Prop :=
  ∀ n, P4046986594858444861.a n = A054785 (n + 1)

end A054785

/-! ## A054785.P10363706603755685999

`∑{d}[n+1, A109043(#)]`
-/

namespace A054785.P10363706603755685999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109043 d

end

end A054785.P10363706603755685999

namespace A054785

/-- `∑{d}[n+1, A109043(#)]` -/
def P10363706603755685999.Spec : Prop :=
  ∀ n, P10363706603755685999.a n = A054785 (n + 1)

end A054785

/-! ## A054785.P11443892336455068252

`abs(2*A186690(n+1))`
-/

namespace A054785.P11443892336455068252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A186690 (n + 1)|

end

end A054785.P11443892336455068252

namespace A054785

/-- `abs(2*A186690(n+1))` -/
def P11443892336455068252.Spec : Prop :=
  ∀ n, P11443892336455068252.a n = A054785 (n + 1)

end A054785

/-! ## A054785.P1602295970714497359

`2/(n+1)*A228274(n+1)`
-/

namespace A054785.P1602295970714497359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A228274 (n + 1) : ℚ)

end

end A054785.P1602295970714497359

namespace A054785

/-- `2/(n+1)*A228274(n+1)` -/
def P1602295970714497359.Spec : Prop :=
  ∀ n, P1602295970714497359.a n = (A054785 (n + 1) : ℚ)

end A054785

/-! ## A054785.P4861319647853857783

`A010694(n)*A327095(n+1)`
-/

namespace A054785.P4861319647853857783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 n * A327095 (n + 1)

end

end A054785.P4861319647853857783

namespace A054785

/-- `A010694(n)*A327095(n+1)` -/
def P4861319647853857783.Spec : Prop :=
  ∀ n, P4861319647853857783.a n = A054785 (n + 1)

end A054785

/-! ## A054785.P2306249947871952054

`A062731(n+1)-Δ[A160664(n)]`
-/

namespace A054785.P2306249947871952054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (n + 1) - (f1 (n + 1) - f1 n)

end

end A054785.P2306249947871952054

namespace A054785

/-- `A062731(n+1)-Δ[A160664(n)]` -/
def P2306249947871952054.Spec : Prop :=
  ∀ n, P2306249947871952054.a n = A054785 (n + 1)

end A054785

/-! ## A054785.P12065377671643221668

`A113184(n+1)+A046897(n+1)`
-/

namespace A054785.P12065377671643221668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113184 (n + 1) + A046897 (n + 1)

end

end A054785.P12065377671643221668

namespace A054785

/-- `A113184(n+1)+A046897(n+1)` -/
def P12065377671643221668.Spec : Prop :=
  ∀ n, P12065377671643221668.a n = A054785 (n + 1)

end A054785

/-! ## A054785.P2771755903245349083

`A215947(n+1)+A002129(n+1)`
-/

namespace A054785.P2771755903245349083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215947 (n + 1) + A002129 (n + 1)

end

end A054785.P2771755903245349083

namespace A054785

/-- `A215947(n+1)+A002129(n+1)` -/
def P2771755903245349083.Spec : Prop :=
  ∀ n, P2771755903245349083.a n = A054785 (n + 1)

end A054785

/-! ## A054785.P13517984015975973885

`A286015(n+1)+A079247(n+1)`
-/

namespace A054785.P13517984015975973885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286015 (n + 1) + A079247 (n + 1)

end

end A054785.P13517984015975973885

namespace A054785

/-- `A286015(n+1)+A079247(n+1)` -/
def P13517984015975973885.Spec : Prop :=
  ∀ n, P13517984015975973885.a n = A054785 (n + 1)

end A054785

/-! ## A054785.P285064009270120711

`A346878(n+1)+A033879(n+1)`
-/

namespace A054785.P285064009270120711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346878 (n + 1) + A033879 (n + 1)

end

end A054785.P285064009270120711

namespace A054785

/-- `A346878(n+1)+A033879(n+1)` -/
def P285064009270120711.Spec : Prop :=
  ∀ n, P285064009270120711.a n = A054785 (n + 1)

end A054785

/-! ## A054785.P13728052998968041330

`A326990(n+1)+A088580(n+1)`
-/

namespace A054785.P13728052998968041330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326990 (n + 1) + A088580 (n + 1)

end

end A054785.P13728052998968041330

namespace A054785

/-- `A326990(n+1)+A088580(n+1)` -/
def P13728052998968041330.Spec : Prop :=
  ∀ n, P13728052998968041330.a n = A054785 (n + 1)

end A054785

/-! ## A054785.P13467895744894571429

`A353149(n+1)+A204217(n+1)`
-/

namespace A054785.P13467895744894571429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353149 (n + 1) + A204217 (n + 1)

end

end A054785.P13467895744894571429

namespace A054785

/-- `A353149(n+1)+A204217(n+1)` -/
def P13467895744894571429.Spec : Prop :=
  ∀ n, P13467895744894571429.a n = A054785 (n + 1)

end A054785

/-! ## A054785.P13161063945170247325

`A327095(n+1)+A285895(n+1)`
-/

namespace A054785.P13161063945170247325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327095 (n + 1) + A285895 (n + 1)

end

end A054785.P13161063945170247325

namespace A054785

/-- `A327095(n+1)+A285895(n+1)` -/
def P13161063945170247325.Spec : Prop :=
  ∀ n, P13161063945170247325.a n = A054785 (n + 1)

end A054785

/-! ## A054785.P14416037108301597780

`A062731(n+1)-A000203(n+1)`
-/

namespace A054785.P14416037108301597780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062731 (n + 1) - A000203 (n + 1)

end

end A054785.P14416037108301597780

namespace A054785

/-- `A062731(n+1)-A000203(n+1)` -/
def P14416037108301597780.Spec : Prop :=
  ∀ n, P14416037108301597780.a n = A054785 (n + 1)

theorem P14416037108301597780.correct : P14416037108301597780.Spec := by
  intro n
  simp only [A054785, Nat.add_sub_cancel, A054785.P14416037108301597780.a, A054785.P16543829673478475701.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062731, A062731.P15391118010266102110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054785

/-! ## A054785.P14262112217682355738

`A074400(n+1)-A146076(n+1)`
-/

namespace A054785.P14262112217682355738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - A146076 (n + 1)

end

end A054785.P14262112217682355738

namespace A054785

/-- `A074400(n+1)-A146076(n+1)` -/
def P14262112217682355738.Spec : Prop :=
  ∀ n, P14262112217682355738.a n = A054785 (n + 1)

end A054785

/-!
# A054789: Earliest sequence with a(a(n)) = 9n.

The programs for A054789, there is no canonical definition to state claims against.
-/

/-! ## A054789.P16011597435211159706

`A179198(A014681(n)+A000096(n))`
-/

namespace A054789.P16011597435211159706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179198 (A014681 n + A000096 n).toNat

end

end A054789.P16011597435211159706

/-! ## A054789.P3899467706982759045

`A014681(n)*A040345(A000244(n))`
-/

namespace A054789.P3899467706982759045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n * A040345 (A000244 n).toNat

end

end A054789.P3899467706982759045

/-! ## A054789.P3379403689103287054

`A014681(n)*A055491(A003946(n))`
-/

namespace A054789.P3379403689103287054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n * A055491 (A003946 n).toNat

end

end A054789.P3379403689103287054

/-! ## A054789.P17580125663989748944

`A010690(A003462(n+1))*A014681(n)`
-/

namespace A054789.P17580125663989748944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 (A003462 (n + 1)).toNat * A014681 n

end

end A054789.P17580125663989748944

/-! ## A054789.P12312098927128581194

`A010690(A037278(n+1))*A014681(n)`
-/

namespace A054789.P12312098927128581194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010690 (A037278 (n + 1)).toNat * A014681 n

end

end A054789.P12312098927128581194

/-!
# A054790: Earliest sequence with a(a(n))=10n.

The programs for A054790, there is no canonical definition to state claims against.
-/

/-! ## A054790.P8628688187880428620

`A010130(A001353(n))*A014681(n)`
-/

namespace A054790.P8628688187880428620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 (A001353 n).toNat * A014681 n

end

end A054790.P8628688187880428620

/-! ## A054790.P5315205871924989544

`A010130(A001791(n))*A014681(n)`
-/

namespace A054790.P5315205871924989544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 (A001791 n).toNat * A014681 n

end

end A054790.P5315205871924989544

/-! ## A054790.P18048847265208883496

`A010691(A037278(n+1))*A014681(n)`
-/

namespace A054790.P18048847265208883496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010691 (A037278 (n + 1)).toNat * A014681 n

end

end A054790.P18048847265208883496

/-! ## A054790.P6392245662595338955

`A010691(A054793(n+2))*A014681(n)`
-/

namespace A054790.P6392245662595338955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010691 (A054793 (n + 2)).toNat * A014681 n

end

end A054790.P6392245662595338955

/-!
# A054791: Earliest sequence with a(a(n)) = n^2.

The programs for A054791, there is no canonical definition to state claims against.
-/

/-! ## A054791.P3063649377540605196

`A062319(A089856(n))%A316372(n+1)`
-/

namespace A054791.P3063649377540605196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062319 (A089856 n).toNat) (A316372 (n + 1))

end

end A054791.P3063649377540605196

/-! ## A054791.P12141155787363692087

`A167531(A028310(n))%A316372(n+1)`
-/

namespace A054791.P12141155787363692087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167531 (A028310 n).toNat) (A316372 (n + 1))

end

end A054791.P12141155787363692087

/-! ## A054791.P15977783468578976225

`A167531(A114800(n))%A167512(n+4)`
-/

namespace A054791.P15977783468578976225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167531 (A114800 n).toNat) (A167512 (n + 4))

end

end A054791.P15977783468578976225

/-!
# A054792: Earliest sequence with a(a(n)) = n^3.

The programs for A054792, there is no canonical definition to state claims against.
-/

/-! ## A054792.P15223484351787239378

`A278540(A041179(n))-1+n`
-/

namespace A054792.P15223484351787239378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278540 (A041179 n).toNat - 1 + (n : ℤ)

end

end A054792.P15223484351787239378

/-! ## A054792.P14524887428056866488

`A278250(A106134(n+1))-1+n`
-/

namespace A054792.P14524887428056866488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278250 (A106134 (n + 1)).toNat - 1 + (n : ℤ)

end

end A054792.P14524887428056866488

/-! ## A054792.P2487140461992166088

`A278223(A029158(n^3+n))+n-1`
-/

namespace A054792.P2487140461992166088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (A029158 (n ^ 3 + n)).toNat + ((n : ℤ) - 1)

end

end A054792.P2487140461992166088

/-! ## A054792.P11214752143792557161

`A080261(n)^A010684(A001353(n))`
-/

namespace A054792.P11214752143792557161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080261 n : ℚ) ^ (A010684 (A001353 n).toNat : ℤ)

end

end A054792.P11214752143792557161

/-!
# A054793: Earliest sequence with a(a(n)) = n^4.

The programs for A054793, there is no canonical definition to state claims against.
-/

/-! ## A054793.P4864353690354028816

`A080261(n)^A040005(A000522(n))`
-/

namespace A054793.P4864353690354028816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080261 n : ℚ) ^ (A040005 (A000522 n).toNat : ℤ)

end

end A054793.P4864353690354028816

/-! ## A054793.P1256670839827616936

`A309491(A293841(n))+n`
-/

namespace A054793.P1256670839827616936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309491 (A293841 n).toNat + (n : ℤ)

end

end A054793.P1256670839827616936

/-!
# A054794: Numbers of form 5+n^2+n or 5+2*n^2.

The programs for A054794, the canonical program `A054794.P16189127481799383904` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054794 has offset 1).

The definition of A054794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054794.P16189127481799383904

`∪[∑[2*n], 2*n²]+5`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A054794

/-- `∪[∑[2*n], 2*n²]+5` -/
def P16189127481799383904.Spec : Prop :=
  ∀ n, (P16189127481799383904.a n : ℤ) = A054794 (n + 1)

theorem P16189127481799383904.correct : P16189127481799383904.Spec := by
  intro n
  simp only [A054794, Nat.add_sub_cancel]

end A054794

/-! ## A054794.P1995038967666243604

`A052293(n+1)-6`
-/

namespace A054794.P1995038967666243604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052293 (n + 1) - 6

end

end A054794.P1995038967666243604

namespace A054794

/-- `A052293(n+1)-6` -/
def P1995038967666243604.Spec : Prop :=
  ∀ n, P1995038967666243604.a n = A054794 (n + 1)

theorem P1995038967666243604.correct : P1995038967666243604.Spec := by
  intro n
  simp only [A054794, Nat.add_sub_cancel, A054794.P1995038967666243604.a, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, A052293, A052293.P3349466566879565360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054794

/-! ## A054794.P15615591916081609688

`A054796(n+1)-12`
-/

namespace A054794.P15615591916081609688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054796 (n + 1) - 12

end

end A054794.P15615591916081609688

namespace A054794

/-- `A054796(n+1)-12` -/
def P15615591916081609688.Spec : Prop :=
  ∀ n, P15615591916081609688.a n = A054794 (n + 1)

theorem P15615591916081609688.correct : P15615591916081609688.Spec := by
  intro n
  simp only [A054794, Nat.add_sub_cancel, A054794.P15615591916081609688.a, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, A054796, A054796.P2330397691738017337.a, A054795, A054795.P8527574853343151229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054794

/-! ## A054794.P13539448339626565378

`A054056(n+1)-24`
-/

namespace A054794.P13539448339626565378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054056 (n + 1) - 24

end

end A054794.P13539448339626565378

namespace A054794

/-- `A054056(n+1)-24` -/
def P13539448339626565378.Spec : Prop :=
  ∀ n, P13539448339626565378.a n = A054794 (n + 1)

theorem P13539448339626565378.correct : P13539448339626565378.Spec := by
  intro n
  simp only [A054794, Nat.add_sub_cancel, A054794.P13539448339626565378.a, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, A054056, A054056.P7272504195874728976.a, A054795, A054795.P8527574853343151229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054794

/-! ## A054794.P17721754100539145765

`A054795(n+1)-36/2`
-/

namespace A054794.P17721754100539145765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054795 (n + 1) : ℚ) - (36 : ℚ) / 2

end

end A054794.P17721754100539145765

namespace A054794

/-- `A054795(n+1)-36/2` -/
def P17721754100539145765.Spec : Prop :=
  ∀ n, P17721754100539145765.a n = (A054794 (n + 1) : ℚ)

theorem P17721754100539145765.correct : P17721754100539145765.Spec := by
  intro n
  simp only [A054794, Nat.add_sub_cancel, A054794.P17721754100539145765.a, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, A054795, A054795.P8527574853343151229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054794

/-! ## A054794.P15402610440732037977

`A054057(n+1)+A023478(n)-n`
-/

namespace A054794.P15402610440732037977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054057 (n + 1) + (A023478 n - (n : ℤ))

end

end A054794.P15402610440732037977

namespace A054794

/-- `A054057(n+1)+A023478(n)-n` -/
def P15402610440732037977.Spec : Prop :=
  ∀ n, P15402610440732037977.a n = A054794 (n + 1)

theorem P15402610440732037977.correct : P15402610440732037977.Spec := by
  intro n
  simp only [A054794, Nat.add_sub_cancel, A054794.P15402610440732037977.a, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, A023478, A023478.P13335276018786921324.a, A054057, A054057.P9083325440450604952.a, A054056, A054056.P7272504195874728976.a, A054795, A054795.P8527574853343151229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054794

/-! ## A054794.P12480298323596517812

`2*A054795(n+1)-A054057(n+1)`
-/

namespace A054794.P12480298323596517812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054795 (n + 1) - A054057 (n + 1)

end

end A054794.P12480298323596517812

namespace A054794

/-- `2*A054795(n+1)-A054057(n+1)` -/
def P12480298323596517812.Spec : Prop :=
  ∀ n, P12480298323596517812.a n = A054794 (n + 1)

theorem P12480298323596517812.correct : P12480298323596517812.Spec := by
  intro n
  simp only [A054794, Nat.add_sub_cancel, A054794.P12480298323596517812.a, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, A054057, A054057.P9083325440450604952.a, A054795, A054795.P8527574853343151229.a, A054056, A054056.P7272504195874728976.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054794

/-! ## A054794.P4944619545696709449

`A054057(n+1)-A257649(((-1)^n)²)`
-/

namespace A054794.P4944619545696709449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054057 (n + 1) - A257649 (((-1) ^ n) ^ 2).toNat

end

end A054794.P4944619545696709449

namespace A054794

/-- `A054057(n+1)-A257649(((-1)^n)²)` -/
def P4944619545696709449.Spec : Prop :=
  ∀ n, P4944619545696709449.a n = A054794 (n + 1)

end A054794

/-! ## A054794.P12288118825635615572

`A180318(Δ[A172112(n+1)])+A054796(n+1)`
-/

namespace A054794.P12288118825635615572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180318 (f1 (n + 1) - f1 n).toNat + A054796 (n + 1)

end

end A054794.P12288118825635615572

namespace A054794

/-- `A180318(Δ[A172112(n+1)])+A054796(n+1)` -/
def P12288118825635615572.Spec : Prop :=
  ∀ n, P12288118825635615572.a n = A054794 (n + 1)

end A054794

/-! ## A054794.P3605070679351243478

`A023460(A054057(n+1)-n)+A023460(n)`
-/

namespace A054794.P3605070679351243478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023460 (A054057 (n + 1) - (n : ℤ)).toNat + A023460 n

end

end A054794.P3605070679351243478

namespace A054794

/-- `A023460(A054057(n+1)-n)+A023460(n)` -/
def P3605070679351243478.Spec : Prop :=
  ∀ n, P3605070679351243478.a n = A054794 (n + 1)

end A054794

/-! ## A054794.P16495985200481086610

`A023448(A052293(n+1))`
-/

namespace A054794.P16495985200481086610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A052293 (n + 1)).toNat

end

end A054794.P16495985200481086610

namespace A054794

/-- `A023448(A052293(n+1))` -/
def P16495985200481086610.Spec : Prop :=
  ∀ n, P16495985200481086610.a n = A054794 (n + 1)

end A054794

/-! ## A054794.P2225010062762716245

`A023466(A054056(n+1))`
-/

namespace A054794.P2225010062762716245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023466 (A054056 (n + 1)).toNat

end

end A054794.P2225010062762716245

namespace A054794

/-- `A023466(A054056(n+1))` -/
def P2225010062762716245.Spec : Prop :=
  ∀ n, P2225010062762716245.a n = A054794 (n + 1)

end A054794

/-! ## A054794.P3108424547929863158

`A023478(A054057(n+1))`
-/

namespace A054794.P3108424547929863158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023478 (A054057 (n + 1)).toNat

end

end A054794.P3108424547929863158

namespace A054794

/-- `A023478(A054057(n+1))` -/
def P3108424547929863158.Spec : Prop :=
  ∀ n, P3108424547929863158.a n = A054794 (n + 1)

end A054794

/-! ## A054794.P3792392026951472404

`A023454(A054796(n+1))`
-/

namespace A054794.P3792392026951472404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023454 (A054796 (n + 1)).toNat

end

end A054794.P3792392026951472404

namespace A054794

/-- `A023454(A054796(n+1))` -/
def P3792392026951472404.Spec : Prop :=
  ∀ n, P3792392026951472404.a n = A054794 (n + 1)

end A054794

/-! ## A054794.P10893247973579774271

`A023460(A054795(n+1))`
-/

namespace A054794.P10893247973579774271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023460 (A054795 (n + 1)).toNat

end

end A054794.P10893247973579774271

namespace A054794

/-- `A023460(A054795(n+1))` -/
def P10893247973579774271.Spec : Prop :=
  ∀ n, P10893247973579774271.a n = A054794 (n + 1)

end A054794

/-! ## A054794.P2016083019788022893

`A023472(A054796(n+1)+18)`
-/

namespace A054794.P2016083019788022893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023472 (A054796 (n + 1) + 18).toNat

end

end A054794.P2016083019788022893

namespace A054794

/-- `A023472(A054796(n+1)+18)` -/
def P2016083019788022893.Spec : Prop :=
  ∀ n, P2016083019788022893.a n = A054794 (n + 1)

end A054794

/-!
# A054795: Numbers of form 23+n^2+n or 23+2*n^2.

The programs for A054795, the canonical program `A054795.P8527574853343151229` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054795 has offset 1).

The definition of A054795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054795.P10857829795102919591

`A054796(n+1)+6`
-/

namespace A054795.P10857829795102919591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054796 (n + 1) + 6

end

end A054795.P10857829795102919591

namespace A054795

/-- `A054796(n+1)+6` -/
def P10857829795102919591.Spec : Prop :=
  ∀ n, P10857829795102919591.a n = A054795 (n + 1)

theorem P10857829795102919591.correct : P10857829795102919591.Spec := by
  intro n
  simp only [A054795, Nat.add_sub_cancel, A054795.P10857829795102919591.a, A054795.P8527574853343151229.a, A054794, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, A054796, A054796.P2330397691738017337.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054795

/-! ## A054795.P17792611512703375522

`A054056(n+1)-6`
-/

namespace A054795.P17792611512703375522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054056 (n + 1) - 6

end

end A054795.P17792611512703375522

namespace A054795

/-- `A054056(n+1)-6` -/
def P17792611512703375522.Spec : Prop :=
  ∀ n, P17792611512703375522.a n = A054795 (n + 1)

theorem P17792611512703375522.correct : P17792611512703375522.Spec := by
  intro n
  simp only [A054795, Nat.add_sub_cancel, A054795.P17792611512703375522.a, A054795.P8527574853343151229.a, A054056, A054056.P7272504195874728976.a, A054794, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054795

/-! ## A054795.P12051216428165078888

`A052293(n+1)+12`
-/

namespace A054795.P12051216428165078888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052293 (n + 1) + 12

end

end A054795.P12051216428165078888

namespace A054795

/-- `A052293(n+1)+12` -/
def P12051216428165078888.Spec : Prop :=
  ∀ n, P12051216428165078888.a n = A054795 (n + 1)

theorem P12051216428165078888.correct : P12051216428165078888.Spec := by
  intro n
  simp only [A054795, Nat.add_sub_cancel, A054795.P12051216428165078888.a, A054795.P8527574853343151229.a, A052293, A052293.P3349466566879565360.a, A054794, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054795

/-! ## A054795.P8527574853343151229

`A054794(n+1)+18`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A054795

/-- `A054794(n+1)+18` -/
def P8527574853343151229.Spec : Prop :=
  ∀ n, P8527574853343151229.a n = A054795 (n + 1)

theorem P8527574853343151229.correct : P8527574853343151229.Spec := by
  intro n
  simp only [A054795, Nat.add_sub_cancel]

end A054795

/-! ## A054795.P17996704090984106120

`A054057(n+1)-18`
-/

namespace A054795.P17996704090984106120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054057 (n + 1) - 18

end

end A054795.P17996704090984106120

namespace A054795

/-- `A054057(n+1)-18` -/
def P17996704090984106120.Spec : Prop :=
  ∀ n, P17996704090984106120.a n = A054795 (n + 1)

theorem P17996704090984106120.correct : P17996704090984106120.Spec := by
  intro n
  simp only [A054795, Nat.add_sub_cancel, A054795.P17996704090984106120.a, A054795.P8527574853343151229.a, A054057, A054057.P9083325440450604952.a, A054794, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, A054056, A054056.P7272504195874728976.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054795

/-! ## A054795.P2914551240594256836

`A020715(A054796(n+1))`
-/

namespace A054795.P2914551240594256836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (A054796 (n + 1)).toNat

end

end A054795.P2914551240594256836

namespace A054795

/-- `A020715(A054796(n+1))` -/
def P2914551240594256836.Spec : Prop :=
  ∀ n, P2914551240594256836.a n = A054795 (n + 1)

end A054795

/-! ## A054795.P5726987216999536220

`A023448(A054056(n+1))`
-/

namespace A054795.P5726987216999536220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A054056 (n + 1)).toNat

end

end A054795.P5726987216999536220

namespace A054795

/-- `A023448(A054056(n+1))` -/
def P5726987216999536220.Spec : Prop :=
  ∀ n, P5726987216999536220.a n = A054795 (n + 1)

end A054795

/-! ## A054795.P1056393490666863629

`A023460(A054057(n+1))`
-/

namespace A054795.P1056393490666863629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023460 (A054057 (n + 1)).toNat

end

end A054795.P1056393490666863629

namespace A054795

/-- `A023460(A054057(n+1))` -/
def P1056393490666863629.Spec : Prop :=
  ∀ n, P1056393490666863629.a n = A054795 (n + 1)

end A054795

/-! ## A054795.P3685985527813611602

`A033662(A052293(n+1))`
-/

namespace A054795.P3685985527813611602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033662 (A052293 (n + 1)).toNat

end

end A054795.P3685985527813611602

namespace A054795

/-- `A033662(A052293(n+1))` -/
def P3685985527813611602.Spec : Prop :=
  ∀ n, P3685985527813611602.a n = A054795 (n + 1)

end A054795

/-! ## A054795.P8595773069131149461

`A023454(2*A054056(n+1))/2`
-/

namespace A054795.P8595773069131149461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023454 (2 * A054056 (n + 1)).toNat : ℚ) / 2

end

end A054795.P8595773069131149461

namespace A054795

/-- `A023454(2*A054056(n+1))/2` -/
def P8595773069131149461.Spec : Prop :=
  ∀ n, P8595773069131149461.a n = (A054795 (n + 1) : ℚ)

end A054795

/-! ## A054795.P1308087854636085771

`A023478(2*A054057(n+1))/2`
-/

namespace A054795.P1308087854636085771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023478 (2 * A054057 (n + 1)).toNat : ℚ) / 2

end

end A054795.P1308087854636085771

namespace A054795

/-- `A023478(2*A054057(n+1))/2` -/
def P1308087854636085771.Spec : Prop :=
  ∀ n, P1308087854636085771.a n = (A054795 (n + 1) : ℚ)

end A054795

/-!
# A054796: Numbers of form 17+n^2+n or 17+2*n^2.

The programs for A054796, the canonical program `A054796.P2330397691738017337` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054796 has offset 1).

The definition of A054796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054796.P8135999092067649065

`A052293(n+1)+6`
-/

namespace A054796.P8135999092067649065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052293 (n + 1) + 6

end

end A054796.P8135999092067649065

namespace A054796

/-- `A052293(n+1)+6` -/
def P8135999092067649065.Spec : Prop :=
  ∀ n, P8135999092067649065.a n = A054796 (n + 1)

theorem P8135999092067649065.correct : P8135999092067649065.Spec := by
  intro n
  simp only [A054796, Nat.add_sub_cancel, A054796.P8135999092067649065.a, A054796.P2330397691738017337.a, A052293, A052293.P3349466566879565360.a, A054795, A054795.P8527574853343151229.a, A054794, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054796

/-! ## A054796.P2330397691738017337

`A054795(n+1)-6`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054796

/-- `A054795(n+1)-6` -/
def P2330397691738017337.Spec : Prop :=
  ∀ n, P2330397691738017337.a n = A054796 (n + 1)

theorem P2330397691738017337.correct : P2330397691738017337.Spec := by
  intro n
  simp only [A054796, Nat.add_sub_cancel]

end A054796

/-! ## A054796.P9493468875060704962

`A054794(n+1)+12`
-/

namespace A054796.P9493468875060704962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054794 (n + 1) + 12

end

end A054796.P9493468875060704962

namespace A054796

/-- `A054794(n+1)+12` -/
def P9493468875060704962.Spec : Prop :=
  ∀ n, P9493468875060704962.a n = A054796 (n + 1)

theorem P9493468875060704962.correct : P9493468875060704962.Spec := by
  intro n
  simp only [A054796, Nat.add_sub_cancel, A054796.P9493468875060704962.a, A054796.P2330397691738017337.a, A054794, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, A054795, A054795.P8527574853343151229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054796

/-! ## A054796.P5569145245655408086

`A054056(n+1)-12`
-/

namespace A054796.P5569145245655408086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054056 (n + 1) - 12

end

end A054796.P5569145245655408086

namespace A054796

/-- `A054056(n+1)-12` -/
def P5569145245655408086.Spec : Prop :=
  ∀ n, P5569145245655408086.a n = A054796 (n + 1)

theorem P5569145245655408086.correct : P5569145245655408086.Spec := by
  intro n
  simp only [A054796, Nat.add_sub_cancel, A054796.P5569145245655408086.a, A054796.P2330397691738017337.a, A054056, A054056.P7272504195874728976.a, A054795, A054795.P8527574853343151229.a, A054794, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054796

/-! ## A054796.P264502801806554016

`A054057(n+1)-24`
-/

namespace A054796.P264502801806554016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054057 (n + 1) - 24

end

end A054796.P264502801806554016

namespace A054796

/-- `A054057(n+1)-24` -/
def P264502801806554016.Spec : Prop :=
  ∀ n, P264502801806554016.a n = A054796 (n + 1)

theorem P264502801806554016.correct : P264502801806554016.Spec := by
  intro n
  simp only [A054796, Nat.add_sub_cancel, A054796.P264502801806554016.a, A054796.P2330397691738017337.a, A054057, A054057.P9083325440450604952.a, A054795, A054795.P8527574853343151229.a, A054056, A054056.P7272504195874728976.a, A054794, A054794.P16189127481799383904.f2, A054794.P16189127481799383904.f1, A054794.P16189127481799383904.f3, A054794.P16189127481799383904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A054796

/-! ## A054796.P1780234263369668036

`A020715(A052293(n+1))`
-/

namespace A054796.P1780234263369668036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (A052293 (n + 1)).toNat

end

end A054796.P1780234263369668036

namespace A054796

/-- `A020715(A052293(n+1))` -/
def P1780234263369668036.Spec : Prop :=
  ∀ n, P1780234263369668036.a n = A054796 (n + 1)

end A054796

/-! ## A054796.P13918857910108644987

`A023454(A054056(n+1))`
-/

namespace A054796.P13918857910108644987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023454 (A054056 (n + 1)).toNat

end

end A054796.P13918857910108644987

namespace A054796

/-- `A023454(A054056(n+1))` -/
def P13918857910108644987.Spec : Prop :=
  ∀ n, P13918857910108644987.a n = A054796 (n + 1)

end A054796

/-! ## A054796.P4956916406590395764

`A023466(A054057(n+1))`
-/

namespace A054796.P4956916406590395764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023466 (A054057 (n + 1)).toNat

end

end A054796.P4956916406590395764

namespace A054796

/-- `A023466(A054057(n+1))` -/
def P4956916406590395764.Spec : Prop :=
  ∀ n, P4956916406590395764.a n = A054796 (n + 1)

end A054796

/-! ## A054796.P3071274534633910771

`A023448(A054795(n+1))`
-/

namespace A054796.P3071274534633910771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A054795 (n + 1)).toNat

end

end A054796.P3071274534633910771

namespace A054796

/-- `A023448(A054795(n+1))` -/
def P3071274534633910771.Spec : Prop :=
  ∀ n, P3071274534633910771.a n = A054796 (n + 1)

end A054796

/-! ## A054796.P1831439000485695661

`A033662(A054794(n+1))`
-/

namespace A054796.P1831439000485695661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033662 (A054794 (n + 1)).toNat

end

end A054796.P1831439000485695661

namespace A054796

/-- `A033662(A054794(n+1))` -/
def P1831439000485695661.Spec : Prop :=
  ∀ n, P1831439000485695661.a n = A054796 (n + 1)

end A054796

/-! ## A054796.P12218287509917548936

`A023466(2*A054056(n+1))/2`
-/

namespace A054796.P12218287509917548936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023466 (2 * A054056 (n + 1)).toNat : ℚ) / 2

end

end A054796.P12218287509917548936

namespace A054796

/-- `A023466(2*A054056(n+1))/2` -/
def P12218287509917548936.Spec : Prop :=
  ∀ n, P12218287509917548936.a n = (A054796 (n + 1) : ℚ)

end A054796

/-! ## A054796.P314935664483358341

`A023454(2*A054795(n+1))/2`
-/

namespace A054796.P314935664483358341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023454 (2 * A054795 (n + 1)).toNat : ℚ) / 2

end

end A054796.P314935664483358341

namespace A054796

/-- `A023454(2*A054795(n+1))/2` -/
def P314935664483358341.Spec : Prop :=
  ∀ n, P314935664483358341.a n = (A054796 (n + 1) : ℚ)

end A054796

/-!
# A054797: Smallest prime number whose digits sum to the n-th palindromic prime.

The programs for A054797, there is no canonical definition to state claims against.
-/

/-! ## A054797.P11920428362669741985

`A067180(A002385(n+1))`
-/

namespace A054797.P11920428362669741985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (A002385 (n + 1)).toNat

end

end A054797.P11920428362669741985

/-! ## A054797.P7025483277984356078

`A067180(A077652(n+1))`
-/

namespace A054797.P7025483277984356078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (A077652 (n + 1)).toNat

end

end A054797.P7025483277984356078

/-! ## A054797.P7698148597133754390

`A067180(A088562(n+1))`
-/

namespace A054797.P7698148597133754390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (A088562 (n + 1)).toNat

end

end A054797.P7698148597133754390

/-! ## A054797.P3416491847001647463

`A067180(A069217(n+2))`
-/

namespace A054797.P3416491847001647463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (A069217 (n + 2)).toNat

end

end A054797.P3416491847001647463

/-! ## A054797.P9804415624962996390

`A067180(p?[A002113(n+1)])`
-/

namespace A054797.P9804415624962996390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054797.P9804415624962996390

/-!
# A054799: Integers n such that sigma(n+2) = sigma(n) + 2, where sigma = A000203, the sum of divisors of n.

The programs for A054799, there is no canonical definition to state claims against.
-/

/-! ## A054799.P5088335266116356265

`A217259(n+1)-1`
-/

namespace A054799.P5088335266116356265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1) - 1

end

end A054799.P5088335266116356265

/-! ## A054799.P12775155502309899225

`abs(A217259(n+1)+(-1)^A017653(n))`
-/

namespace A054799.P12775155502309899225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A217259 (n + 1) : ℚ) + (-1 : ℚ) ^ (A017653 n : ℤ)|

end

end A054799.P12775155502309899225

/-! ## A054799.P9078467207641697832

`abs(A217259(n+1)+A118438(ceil(1/(n+1))))`
-/

namespace A054799.P9078467207641697832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A217259 (n + 1) + A118438 ⌈1 / (n + 1 : ℚ)⌉.toNat|

end

end A054799.P9078467207641697832

/-! ## A054799.P2717886021758392597

`2*A008683(A007918(n))+A217259(n+1)+1`
-/

namespace A054799.P2717886021758392597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008683 (A007918 n).toNat + (A217259 (n + 1) + 1)

end

end A054799.P2717886021758392597

/-! ## A054799.P11701925659941713630

`A260952(A000010(ceil(2/(n+1))))+A217259(n+1)`
-/

namespace A054799.P11701925659941713630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260952 (A000010 ⌈2 / (n + 1 : ℚ)⌉.toNat).toNat + A217259 (n + 1)

end

end A054799.P11701925659941713630

/-! ## A054799.P5477457504112663711

`A228826(A016813(n))+A217259(n+1)`
-/

namespace A054799.P5477457504112663711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228826 (A016813 n).toNat + A217259 (n + 1)

end

end A054799.P5477457504112663711

/-! ## A054799.P17179187803212376292

`abs(A217259(n+1)+A008683(A046117(n+1)))`
-/

namespace A054799.P17179187803212376292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A217259 (n + 1) + A008683 (A046117 (n + 1)).toNat|

end

end A054799.P17179187803212376292

/-! ## A054799.P13200904897941947294

`abs(A217259(n+1)+A008683(A092146(n+1)))`
-/

namespace A054799.P13200904897941947294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A217259 (n + 1) + A008683 (A092146 (n + 1)).toNat|

end

end A054799.P13200904897941947294

/-! ## A054799.P7928349257060248536

`abs(A217259(n+1)+A008683(A006512(n+1)))`
-/

namespace A054799.P7928349257060248536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A217259 (n + 1) + A008683 (A006512 (n + 1)).toNat|

end

end A054799.P7928349257060248536

/-! ## A054799.P12947110870517844530

`abs(A217259(n+1)+A008683(A046132(n+1)))`
-/

namespace A054799.P12947110870517844530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A217259 (n + 1) + A008683 (A046132 (n + 1)).toNat|

end

end A054799.P12947110870517844530

/-! ## A054799.P15587186389442172445

`A330025(A017341(n))+A217259(n+1)`
-/

namespace A054799.P15587186389442172445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A017341 n).toNat + A217259 (n + 1)

end

end A054799.P15587186389442172445

/-! ## A054799.P7481512880978609768

`eq[A000203(n+1)+2, A000203(n+3)]+1`
-/

namespace A054799.P7481512880978609768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A054799.P7481512880978609768

/-! ## A054799.P3387968509404036343

`A023443(A217259(n+1))`
-/

namespace A054799.P3387968509404036343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A217259 (n + 1)).toNat

end

end A054799.P3387968509404036343

/-! ## A054799.P14214780570401258108

`A289207(A217259(n+1)+1)`
-/

namespace A054799.P14214780570401258108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A217259 (n + 1) + 1).toNat

end

end A054799.P14214780570401258108

/-! ## A054799.P13877479247128306401

`A023445(A217259(n+1)+2)`
-/

namespace A054799.P13877479247128306401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A217259 (n + 1) + 2).toNat

end

end A054799.P13877479247128306401

/-! ## A054799.P886385837274808021

`A199969(A217259(n+1))%A000040(7*n+6)`
-/

namespace A054799.P886385837274808021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199969 (A217259 (n + 1)).toNat) (A000040 (7 * n + 6))

end

end A054799.P886385837274808021

/-! ## A054799.P1717910012450988812

`A199969(A217259(n+1))+2%A020639(2*(n+1))`
-/

namespace A054799.P1717910012450988812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A217259 (n + 1)).toNat + Int.tmod 2 (A020639 (2 * (n + 1)))

end

end A054799.P1717910012450988812

/-! ## A054799.P15565433473861002789

`A199969(A217259(n+1))+(n+2)%A006530(n+2)`
-/

namespace A054799.P15565433473861002789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A217259 (n + 1)).toNat + Int.tmod (n + 2 : ℤ) (A006530 (n + 2))

end

end A054799.P15565433473861002789

/-! ## A054799.P15729348415474650739

`A199969(A217259(n+1))+A008683(4*A000040(n+1))`
-/

namespace A054799.P15729348415474650739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A217259 (n + 1)).toNat + A008683 (4 * A000040 (n + 1)).toNat

end

end A054799.P15729348415474650739

