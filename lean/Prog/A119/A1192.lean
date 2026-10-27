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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A119200: Triangular numbers composed of digits {3,7,8}.

The programs for A119200, there is no canonical definition to state claims against.
-/

/-! ## A119200.P6962545328445679150

`A000217(A119201(n+1))`
-/

namespace A119200.P6962545328445679150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119201 (n + 1)).toNat

end

end A119200.P6962545328445679150

/-!
# A119201: Numbers k such that the k-th triangular number contains only digits {3,7,8}.

The programs for A119201, there is no canonical definition to state claims against.
-/

/-! ## A119201.P1517070337743697015

`floor(sqrt(2*A119200(n+1)))`
-/

namespace A119201.P1517070337743697015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119200 (n + 1))

end

end A119201.P1517070337743697015

/-! ## A119201.P17943543081162185409

`A170965(n+1)+A005843(A119110(n+1))`
-/

namespace A119201.P17943543081162185409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170965 (n + 1) + A005843 (A119110 (n + 1)).toNat

end

end A119201.P17943543081162185409

/-!
# A119202: Triangular numbers composed of digits {4,5,6}.

The programs for A119202, there is no canonical definition to state claims against.
-/

/-! ## A119202.P12892917998073447023

`A000217(A119203(n+1))`
-/

namespace A119202.P12892917998073447023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119203 (n + 1)).toNat

end

end A119202.P12892917998073447023

/-! ## A119202.P12499029242016181384

`A161680(A119203(n+1)+1)`
-/

namespace A119202.P12499029242016181384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119203 (n + 1) + 1).toNat

end

end A119202.P12499029242016181384

/-! ## A119202.P14773446066851453336

`A179865(A119203(n+1)+1)`
-/

namespace A119202.P14773446066851453336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119203 (n + 1) + 1).toNat

end

end A119202.P14773446066851453336

/-! ## A119202.P18441011659006190777

`A002378(A119203(n+1))/A020639(2*(n+2))`
-/

namespace A119202.P18441011659006190777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A119203 (n + 1)).toNat : ℚ) / (A020639 (2 * (n + 2)) : ℚ)

end

end A119202.P18441011659006190777

/-!
# A119203: Numbers k such that the k-th triangular number contains only digits {4,5,6}.

The programs for A119203, there is no canonical definition to state claims against.
-/

/-! ## A119203.P831716725526556546

`floor(sqrt(2*A119202(n+1)))`
-/

namespace A119203.P831716725526556546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119202 (n + 1))

end

end A119203.P831716725526556546

/-! ## A119203.P14229496913893637038

`A080098(A119202(n+1))`
-/

namespace A119203.P14229496913893637038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A119202 (n + 1)).toNat

end

end A119203.P14229496913893637038

/-! ## A119203.P11185992324009128863

`A127648(A119202(n+1)-1)`
-/

namespace A119203.P11185992324009128863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (A119202 (n + 1) - 1).toNat

end

end A119203.P11185992324009128863

/-! ## A119203.P8680969739110245287

`A113881(and(-1, A119202(n+1)))`
-/

namespace A119203.P8680969739110245287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113881 (Int.land (-1) (A119202 (n + 1))).toNat

end

end A119203.P8680969739110245287

/-! ## A119203.P13228579620190280766

`lcm(A007318(n), A113881(A119202(n+1)))`
-/

namespace A119203.P13228579620190280766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A113881 (A119202 (n + 1)).toNat)

end

end A119203.P13228579620190280766

/-!
# A119204: Triangular numbers composed of digits {4,5,7}.

The programs for A119204, there is no canonical definition to state claims against.
-/

/-! ## A119204.P9386037263549939663

`C(A119205(n+1)+1, 2)`
-/

namespace A119204.P9386037263549939663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119205 (n + 1) + 1).toNat 2

end

end A119204.P9386037263549939663

/-!
# A119205: Numbers k such that the k-th triangular number contains only digits {4,5,7}.

The programs for A119205, there is no canonical definition to state claims against.
-/

/-! ## A119205.P6527683970344112494

`floor(sqrt(2*A119204(n+1)))`
-/

namespace A119205.P6527683970344112494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119204 (n + 1))

end

end A119205.P6527683970344112494

/-!
# A119208: Triangular numbers composed of digits {4,5,9}.

The programs for A119208, there is no canonical definition to state claims against.
-/

/-! ## A119208.P13906607402243698013

`A000217(A119209(n+1))`
-/

namespace A119208.P13906607402243698013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119209 (n + 1)).toNat

end

end A119208.P13906607402243698013

/-! ## A119208.P12154893346338847921

`A161680(A119209(n+1)+1)`
-/

namespace A119208.P12154893346338847921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119209 (n + 1) + 1).toNat

end

end A119208.P12154893346338847921

/-! ## A119208.P280212331710740790

`A179865(A119209(n+1)+1)`
-/

namespace A119208.P280212331710740790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119209 (n + 1) + 1).toNat

end

end A119208.P280212331710740790

/-! ## A119208.P2282824081903445480

`A069834(A119209(n+1)^A065648(n))`
-/

namespace A119208.P2282824081903445480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069834 (SequenceMachineLib.roundAway ((A119209 (n + 1) : ℚ) ^ (A065648 n : ℤ))).toNat

end

end A119208.P2282824081903445480

/-!
# A119209: Numbers k such that the k-th triangular number contains only digits {4,5,9}.

The programs for A119209, there is no canonical definition to state claims against.
-/

/-! ## A119209.P7418355320675252947

`floor(sqrt(2*A119208(n+1)))`
-/

namespace A119209.P7418355320675252947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119208 (n + 1))

end

end A119209.P7418355320675252947

/-! ## A119209.P15383363450869812289

`ceil(sqrt(2*A119208(n+1))-A015466(n))`
-/

namespace A119209.P15383363450869812289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119208 (n + 1) : ℝ) - (A015466 n : ℝ)⌉

end

end A119209.P15383363450869812289

/-! ## A119209.P3937752877458785091

`round(A034451(n+1)+sqrt(2*A119208(n+1)))`
-/

namespace A119209.P3937752877458785091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A034451 (n + 1) : ℝ) + Real.sqrt (2 * A119208 (n + 1) : ℝ))

end

end A119209.P3937752877458785091

/-! ## A119209.P16939671214573721047

`round(A034452(n+1)+sqrt(2*A119208(n+1)))`
-/

namespace A119209.P16939671214573721047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A034452 (n + 1) : ℝ) + Real.sqrt (2 * A119208 (n + 1) : ℝ))

end

end A119209.P16939671214573721047

/-! ## A119209.P958042577124418743

`round(sqrt(2*A119208(n+1)))%A030516(n+1)`
-/

namespace A119209.P958042577124418743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119208 (n + 1) : ℝ))) (A030516 (n + 1))

end

end A119209.P958042577124418743

/-!
# A119210: Triangular numbers composed of digits {4,6,7}.

The programs for A119210, there is no canonical definition to state claims against.
-/

/-! ## A119210.P12754983800439445981

`A000217(A119211(n+1))`
-/

namespace A119210.P12754983800439445981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119211 (n + 1)).toNat

end

end A119210.P12754983800439445981

/-!
# A119211: Numbers k such that the k-th triangular number contains only digits {4,6,7}.

The programs for A119211, there is no canonical definition to state claims against.
-/

/-! ## A119211.P14012511488660327124

`floor(sqrt(2*A119210(n+1)))`
-/

namespace A119211.P14012511488660327124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119210 (n + 1))

end

end A119211.P14012511488660327124

/-!
# A119212: Triangular numbers composed of digits {4,6,8}.

The programs for A119212, there is no canonical definition to state claims against.
-/

/-! ## A119212.P10339768071756348335

`A000217(A119213(n+1))`
-/

namespace A119212.P10339768071756348335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119213 (n + 1)).toNat

end

end A119212.P10339768071756348335

/-!
# A119213: Numbers k such that the k-th triangular number contains only digits {4,6,8}.

The programs for A119213, there is no canonical definition to state claims against.
-/

/-! ## A119213.P15382701927092438957

`A156562(A246149(n+1))`
-/

namespace A119213.P15382701927092438957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A246149 (n + 1)).toNat

end

end A119213.P15382701927092438957

/-!
# A119214: Triangular numbers composed of digits {4,6,9}.

The programs for A119214, there is no canonical definition to state claims against.
-/

/-! ## A119214.P10966862244439351932

`A000217(A119215(n+1))`
-/

namespace A119214.P10966862244439351932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119215 (n + 1)).toNat

end

end A119214.P10966862244439351932

/-!
# A119216: Triangular numbers composed of digits {4,7,8}.

The programs for A119216, there is no canonical definition to state claims against.
-/

/-! ## A119216.P8722055852656269856

`A000217(A119217(n+1))`
-/

namespace A119216.P8722055852656269856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119217 (n + 1)).toNat

end

end A119216.P8722055852656269856

/-!
# A119217: Numbers k such that the k-th triangular number contains only digits {4,7,8}.

The programs for A119217, there is no canonical definition to state claims against.
-/

/-! ## A119217.P15851700536862953917

`floor(sqrt(2*A119216(n+1)))`
-/

namespace A119217.P15851700536862953917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119216 (n + 1))

end

end A119217.P15851700536862953917

/-!
# A119218: Triangular numbers composed of digits {5,6,7}.

The programs for A119218, there is no canonical definition to state claims against.
-/

/-! ## A119218.P9028111702784433672

`A000217(A119219(n+1))`
-/

namespace A119218.P9028111702784433672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119219 (n + 1)).toNat

end

end A119218.P9028111702784433672

/-! ## A119218.P14666871407832281235

`A161680(A119219(n+1)+1)`
-/

namespace A119218.P14666871407832281235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119219 (n + 1) + 1).toNat

end

end A119218.P14666871407832281235

/-! ## A119218.P7537377252412818625

`A179865(A119219(n+1)+1)`
-/

namespace A119218.P7537377252412818625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119219 (n + 1) + 1).toNat

end

end A119218.P7537377252412818625

/-! ## A119218.P17354765677254353899

`A253145(A119219(n+1)-1)`
-/

namespace A119218.P17354765677254353899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A119219 (n + 1) - 1).toNat

end

end A119218.P17354765677254353899

/-! ## A119218.P9680742488217032151

`A000096(A119219(n+1)-1)+1`
-/

namespace A119218.P9680742488217032151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A119219 (n + 1) - 1).toNat + 1

end

end A119218.P9680742488217032151

/-!
# A119219: Numbers k such that the k-th triangular number contains only digits {5,6,7}.

The programs for A119219, there is no canonical definition to state claims against.
-/

/-! ## A119219.P620101886769263487

`floor(sqrt(2*A119218(n+1)))`
-/

namespace A119219.P620101886769263487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119218 (n + 1))

end

end A119219.P620101886769263487

/-! ## A119219.P17521279839189655671

`A119223(∑[A093101(n)])`
-/

namespace A119219.P17521279839189655671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A119219.P17521279839189655671

/-! ## A119219.P15771170925958330610

`filter[A119223(n+1), A054431(#)]`
-/

namespace A119219.P15771170925958330610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A054431 (f1 j).toNat = 1) n)

end

end A119219.P15771170925958330610

/-!
# A119220: Triangular numbers composed of digits {5,6,8}.

The programs for A119220, there is no canonical definition to state claims against.
-/

/-! ## A119220.P6759476622269137995

`A000217(A119221(n+1))`
-/

namespace A119220.P6759476622269137995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119221 (n + 1)).toNat

end

end A119220.P6759476622269137995

/-! ## A119220.P14123296730405284237

`A161680(A119221(n+1)+1)`
-/

namespace A119220.P14123296730405284237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119221 (n + 1) + 1).toNat

end

end A119220.P14123296730405284237

/-! ## A119220.P5711490932777273139

`A179865(A119221(n+1)+1)`
-/

namespace A119220.P5711490932777273139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119221 (n + 1) + 1).toNat

end

end A119220.P5711490932777273139

/-! ## A119220.P14580886653304508921

`A253145(A119221(n+1)-1)`
-/

namespace A119220.P14580886653304508921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A119221 (n + 1) - 1).toNat

end

end A119220.P14580886653304508921

/-!
# A119221: Numbers k such that the k-th triangular number contains only digits {5,6,8}.

The programs for A119221, there is no canonical definition to state claims against.
-/

/-! ## A119221.P6033651904781708624

`floor(sqrt(2*A119220(n+1)))`
-/

namespace A119221.P6033651904781708624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119220 (n + 1))

end

end A119221.P6033651904781708624

/-! ## A119221.P6049459862167300530

`ceil(sqrt(2*A119220(n+1))-A000041(((-1)^n)²))`
-/

namespace A119221.P6049459862167300530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119220 (n + 1) : ℝ) - (A000041 (((-1) ^ n) ^ 2).toNat : ℝ)⌉

end

end A119221.P6049459862167300530

/-! ## A119221.P13678633093772104028

`A002024(A119220(n+1))`
-/

namespace A119221.P13678633093772104028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A119220 (n + 1)).toNat

end

end A119221.P13678633093772104028

/-!
# A119222: Triangular numbers composed of digits {5,6,9}.

The programs for A119222, there is no canonical definition to state claims against.
-/

/-! ## A119222.P16236697467903487695

`A000217(A119223(n+1))`
-/

namespace A119222.P16236697467903487695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119223 (n + 1)).toNat

end

end A119222.P16236697467903487695

/-! ## A119222.P14825970690083570123

`A161680(A119223(n+1)+1)`
-/

namespace A119222.P14825970690083570123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119223 (n + 1) + 1).toNat

end

end A119222.P14825970690083570123

/-! ## A119222.P4406663642421237347

`A179865(A119223(n+1)+1)`
-/

namespace A119222.P4406663642421237347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119223 (n + 1) + 1).toNat

end

end A119222.P4406663642421237347

/-! ## A119222.P10922669123926749034

`A253145(A119223(n+1)-1)`
-/

namespace A119222.P10922669123926749034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A119223 (n + 1) - 1).toNat

end

end A119222.P10922669123926749034

/-! ## A119222.P16976169758295076968

`A131259(2*A119223(n+1))`
-/

namespace A119222.P16976169758295076968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131259 (2 * A119223 (n + 1)).toNat

end

end A119222.P16976169758295076968

/-!
# A119223: Numbers k such that the k-th triangular number contains only digits {5,6,9}.

The programs for A119223, there is no canonical definition to state claims against.
-/

/-! ## A119223.P15737438144478163918

`floor(sqrt(2*A119222(n+1)))`
-/

namespace A119223.P15737438144478163918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119222 (n + 1))

end

end A119223.P15737438144478163918

/-! ## A119223.P3613446888994327170

`A002024(A119222(n+1))`
-/

namespace A119223.P3613446888994327170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A119222 (n + 1)).toNat

end

end A119223.P3613446888994327170

/-! ## A119223.P10823318506888418177

`A003056(A119222(n+1)+1)`
-/

namespace A119223.P10823318506888418177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A119222 (n + 1) + 1).toNat

end

end A119223.P10823318506888418177

/-! ## A119223.P9647908303568758347

`A049695(A119222(n+1)+1)`
-/

namespace A119223.P9647908303568758347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049695 (A119222 (n + 1) + 1).toNat

end

end A119223.P9647908303568758347

/-!
# A119224: Triangular numbers composed of digits {5,7,8}.

The programs for A119224, there is no canonical definition to state claims against.
-/

/-! ## A119224.P9175508704235082221

`A000217(A119225(n+1))`
-/

namespace A119224.P9175508704235082221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119225 (n + 1)).toNat

end

end A119224.P9175508704235082221

/-! ## A119224.P4979993837427164283

`A161680(A119225(n+1)+1)`
-/

namespace A119224.P4979993837427164283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119225 (n + 1) + 1).toNat

end

end A119224.P4979993837427164283

/-! ## A119224.P11549133248607846960

`A179865(A119225(n+1)+1)`
-/

namespace A119224.P11549133248607846960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119225 (n + 1) + 1).toNat

end

end A119224.P11549133248607846960

/-!
# A119225: Numbers k such that the k-th triangular number contains only digits {5,7,8}.

The programs for A119225, there is no canonical definition to state claims against.
-/

/-! ## A119225.P8158665831253868529

`floor(sqrt(2*A119224(n+1)))`
-/

namespace A119225.P8158665831253868529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119224 (n + 1))

end

end A119225.P8158665831253868529

/-! ## A119225.P11480713897771253488

`round(A256974(n)+sqrt(2*A119224(n+1)))`
-/

namespace A119225.P11480713897771253488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A256974 n : ℝ) + Real.sqrt (2 * A119224 (n + 1) : ℝ))

end

end A119225.P11480713897771253488

/-! ## A119225.P14181605417016432418

`round(sqrt(2*A119224(n+1)))%A048362(n+1)`
-/

namespace A119225.P14181605417016432418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119224 (n + 1) : ℝ))) (A048362 (n + 1))

end

end A119225.P14181605417016432418

/-!
# A119226: Triangular numbers composed of digits {5,7,9}.

The programs for A119226, there is no canonical definition to state claims against.
-/

/-! ## A119226.P5192609093720207670

`C(A119227(n+1)+1, 2)`
-/

namespace A119226.P5192609093720207670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119227 (n + 1) + 1).toNat 2

end

end A119226.P5192609093720207670

/-!
# A119227: Numbers k such that the k-th triangular number contains only digits {5,7,9}.

The programs for A119227, there is no canonical definition to state claims against.
-/

/-! ## A119227.P3712015298077058591

`floor(sqrt(2*A119226(n+1)))`
-/

namespace A119227.P3712015298077058591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119226 (n + 1))

end

end A119227.P3712015298077058591

/-!
# A119228: Triangular numbers composed of digits {5,8,9}.

The programs for A119228, there is no canonical definition to state claims against.
-/

/-! ## A119228.P15982887816567747565

`C(A119229(n+1)+1, 2)`
-/

namespace A119228.P15982887816567747565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119229 (n + 1) + 1).toNat 2

end

end A119228.P15982887816567747565

/-!
# A119229: Numbers k such that the k-th triangular number contains only digits {5,8,9}.

The programs for A119229, there is no canonical definition to state claims against.
-/

/-! ## A119229.P4753057990840726197

`floor(sqrt(2*A119228(n+1)))`
-/

namespace A119229.P4753057990840726197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119228 (n + 1))

end

end A119229.P4753057990840726197

/-!
# A119230: Triangular numbers composed of digits {6,7,8}.

The programs for A119230, there is no canonical definition to state claims against.
-/

/-! ## A119230.P8708519586788007417

`A000217(A119231(n+1))`
-/

namespace A119230.P8708519586788007417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119231 (n + 1)).toNat

end

end A119230.P8708519586788007417

/-! ## A119230.P15405068109717566104

`A161680(A119231(n+1)+1)`
-/

namespace A119230.P15405068109717566104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119231 (n + 1) + 1).toNat

end

end A119230.P15405068109717566104

/-! ## A119230.P927547761597842810

`A179865(A119231(n+1)+1)`
-/

namespace A119230.P927547761597842810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119231 (n + 1) + 1).toNat

end

end A119230.P927547761597842810

/-!
# A119231: Numbers k such that the k-th triangular number contains only digits {6,7,8}.

The programs for A119231, there is no canonical definition to state claims against.
-/

/-! ## A119231.P15377725847623584742

`floor(sqrt(2*A119230(n+1)))`
-/

namespace A119231.P15377725847623584742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119230 (n + 1))

end

end A119231.P15377725847623584742

/-! ## A119231.P15084943764035397058

`ceil(sqrt(2*A119230(n+1))-A057427(n+1))`
-/

namespace A119231.P15084943764035397058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119230 (n + 1) : ℝ) - (A057427 (n + 1) : ℝ)⌉

end

end A119231.P15084943764035397058

/-! ## A119231.P7058701577019557650

`round(sqrt(2*A119230(n+1))*A000034(2*n))`
-/

namespace A119231.P7058701577019557650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119230 (n + 1) : ℝ) * (A000034 (2 * n) : ℝ))

end

end A119231.P7058701577019557650

/-! ## A119231.P11851941795028300870

`round(sqrt(2*A119230(n+1)))%A057087(n+1)`
-/

namespace A119231.P11851941795028300870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119230 (n + 1) : ℝ))) (A057087 (n + 1))

end

end A119231.P11851941795028300870

/-! ## A119231.P14476921857763963980

`round(A008683(4*(n+1))+sqrt(2*A119230(n+1)))`
-/

namespace A119231.P14476921857763963980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008683 (4 * (n + 1)) : ℝ) + Real.sqrt (2 * A119230 (n + 1) : ℝ))

end

end A119231.P14476921857763963980

/-!
# A119236: Triangular numbers composed of digits {7,8,9}.

The programs for A119236, there is no canonical definition to state claims against.
-/

/-! ## A119236.P1709882932521161078

`C(A119237(n+1)+1, 2)`
-/

namespace A119236.P1709882932521161078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119237 (n + 1) + 1).toNat 2

end

end A119236.P1709882932521161078

/-!
# A119237: Numbers k such that the k-th triangular number contains only digits {7,8,9}.

The programs for A119237, there is no canonical definition to state claims against.
-/

/-! ## A119237.P9157829230856490981

`round(sqrt(2*A119236(n+1)))`
-/

namespace A119237.P9157829230856490981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119236 (n + 1) : ℝ))

end

end A119237.P9157829230856490981

/-!
# A119238: Numbers k such that the decimal representation of k is contained as substring in that of the k-th triangular number.

The programs for A119238, there is no canonical definition to state claims against.
-/

/-! ## A119238.P14546370314620881523

`A066635(10^n-n%2)`
-/

namespace A119238.P14546370314620881523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (10 ^ n - n % 2)

end

end A119238.P14546370314620881523

/-!
# A119239: Oddly superabundant numbers: odd n with sigma(n)/n > sigma(k)/k for all odd k < n.

The programs for A119239, there is no canonical definition to state claims against.
-/

/-! ## A119239.P15747510079148066270

`A053624(A327105(n+1))%A048256(2*(n+2))`
-/

namespace A119239.P15747510079148066270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053624 (A327105 (n + 1)).toNat) (A048256 (2 * (n + 2)))

end

end A119239.P15747510079148066270

/-! ## A119239.P5550480243635298146

`record[gcd(A033107(n+1), A053624(n+1))]`
-/

namespace A119239.P5550480243635298146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033107 (n + 1)) (A053624 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119239.P5550480243635298146

/-! ## A119239.P922757662777721949

`record[A000265(A002182(comp[n²]))]`
-/

namespace A119239.P922757662777721949
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A002182 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119239.P922757662777721949

/-! ## A119239.P3296756335874536196

`record[A321802(A053624(n+1))]`
-/

namespace A119239.P3296756335874536196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A053624 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119239.P3296756335874536196

/-! ## A119239.P6720281235248196554

`filter[A053624(n+1), A189222(#)]`
-/

namespace A119239.P6720281235248196554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189222 (f1 j).toNat = 1) n)

end

end A119239.P6720281235248196554

/-!
# A119241: Number of powerful numbers (A001694) between consecutive squares n^2 and (n+1)^2.

The programs for A119241, there is no canonical definition to state claims against.
-/

/-! ## A119241.P17883999569948027884

`Δ[A361936(n+1)]-1`
-/

namespace A119241.P17883999569948027884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A119241.P17883999569948027884

/-! ## A119241.P6749467163796173550

`A002113(Δ[A361936(n+1)])`
-/

namespace A119241.P6749467163796173550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (f1 (n + 1) - f1 n).toNat

end

end A119241.P6749467163796173550

/-! ## A119241.P8983004261971324927

`A004892(Δ[A361936(n+1)])`
-/

namespace A119241.P8983004261971324927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004892 (f1 (n + 1) - f1 n).toNat

end

end A119241.P8983004261971324927

/-! ## A119241.P16562924146809804254

`A023443(Δ[A361936(n+1)])`
-/

namespace A119241.P16562924146809804254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A119241.P16562924146809804254

/-! ## A119241.P3198352149875903227

`A134665(Δ[A361936(n+1)])`
-/

namespace A119241.P3198352149875903227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134665 (f1 (n + 1) - f1 n).toNat

end

end A119241.P3198352149875903227

/-! ## A119241.P4641807695344759843

`A261334(Δ[A361936(n+1)])`
-/

namespace A119241.P4641807695344759843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261334 (f1 (n + 1) - f1 n).toNat

end

end A119241.P4641807695344759843

/-! ## A119241.P6859533775862285643

`A328116(Δ[A361936(n+1)])`
-/

namespace A119241.P6859533775862285643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328116 (f1 (n + 1) - f1 n).toNat

end

end A119241.P6859533775862285643

/-! ## A119241.P10132874660016729651

`Δ[A348018(A102631(n+1))]-1`
-/

namespace A119241.P10132874660016729651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 (A102631 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A119241.P10132874660016729651

/-! ## A119241.P16029005973536262940

`A004863(Δ[A348018(A102631(n+1))])`
-/

namespace A119241.P16029005973536262940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 (A102631 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004863 (f1 (n + 1) - f1 n).toNat

end

end A119241.P16029005973536262940

/-! ## A119241.P4928760766426926561

`A004907(Δ[A348018(A102631(n+1))])`
-/

namespace A119241.P4928760766426926561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 (A102631 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004907 (f1 (n + 1) - f1 n).toNat

end

end A119241.P4928760766426926561

/-! ## A119241.P8307266196766272077

`Δ[A348018(A102631(n+1))+A001489(n)]`
-/

namespace A119241.P8307266196766272077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 (A102631 (n + 1)).toNat + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119241.P8307266196766272077

/-! ## A119241.P6723547277134082540

`Δ[A348018(A102631(n+1))+A024000(n)]`
-/

namespace A119241.P6723547277134082540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 (A102631 (n + 1)).toNat + A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A119241.P6723547277134082540

/-!
# A119242: Least number k such that there are exactly n powerful numbers between k^2 and (k+1)^2.

The programs for A119242, there is no canonical definition to state claims against.
-/

/-! ## A119242.P1761140789979134291

`A056239(n+1)+A007431(A069321(n))`
-/

namespace A119242.P1761140789979134291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + A007431 (A069321 n).toNat

end

end A119242.P1761140789979134291

/-! ## A119242.P15643723344192805360

`A194986(A333295(n+1)+A057085(n))`
-/

namespace A119242.P15643723344192805360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194986 (A333295 (n + 1) + A057085 n).toNat

end

end A119242.P15643723344192805360

/-!
# A119243: Eigenvector of triangle A118919, so that a(n) = Sum_{k=0..floor(n/2)} A118919(n,k)*a(k).

The programs for A119243, there is no canonical definition to state claims against.
-/

/-! ## A119243.P852778685354490479

`A063272(A150492(n+1))`
-/

namespace A119243.P852778685354490479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063272 (A150492 (n + 1)).toNat

end

end A119243.P852778685354490479

/-! ## A119243.P6454520338361278255

`A264224(n+1)-A286470(A004211(n))`
-/

namespace A119243.P6454520338361278255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264224 (n + 1) - A286470 (A004211 n).toNat

end

end A119243.P6454520338361278255

/-! ## A119243.P7012704015825861127

`A264224(n+1)-A000120(A172618(n+1))`
-/

namespace A119243.P7012704015825861127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264224 (n + 1) - A000120 (A172618 (n + 1)).toNat

end

end A119243.P7012704015825861127

/-!
# A119244: Eigenvector of triangle A119245, so that a(n) = Sum_{k=0..floor(n/2)} A119245(n,k)*a(k).

The programs for A119244, there is no canonical definition to state claims against.
-/

/-! ## A119244.P14762824152843642554

`4*A130446(a(n-1))-n+1` with `a(0)=1, a(1)=1`
-/

namespace A119244.P14762824152843642554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * A130446 (a (n - 1)).toNat - (n : ℤ) + 1

end

end A119244.P14762824152843642554

/-! ## A119244.P8190272950516985137

`A110656(A151287(n+1))`
-/

namespace A119244.P8190272950516985137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A151287 (n + 1)).toNat

end

end A119244.P8190272950516985137

/-! ## A119244.P909655754675330011

`A002266(9*A106228(n))`
-/

namespace A119244.P909655754675330011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (9 * A106228 n).toNat

end

end A119244.P909655754675330011

/-!
# A119245: Triangle, read by rows, defined by: T(n,k) = (4*k+1)*binomial(2*n+1, n-2*k)/(2*n+1) for n >= 2*k >= 0.

The programs for A119245, the canonical program `A119245.P16472255334534663977` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119245 has offset 0).

The definition of A119245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119245.P529781054102373705

`A039599(comp[comp[n²]+n])`
-/

namespace A119245.P529781054102373705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A119245.P529781054102373705

namespace A119245

/-- `A039599(comp[comp[n²]+n])` -/
def P529781054102373705.Spec : Prop :=
  ∀ n, P529781054102373705.a n = A119245 n

end A119245

/-! ## A119245.P16472255334534663977

`gcd(C(3, n²), A039599(A028391(n)+n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A119245

/-- `gcd(C(3, n²), A039599(A028391(n)+n))` -/
def P16472255334534663977.Spec : Prop :=
  ∀ n, (P16472255334534663977.a n : ℤ) = A119245 n

theorem P16472255334534663977.correct : P16472255334534663977.Spec := by
  intro n
  simp only [A119245]

end A119245

/-! ## A119245.P17607903580300105993

`A050145(A008486(n)-A028392(n))`
-/

namespace A119245.P17607903580300105993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050145 (A008486 n - A028392 n).toNat

end

end A119245.P17607903580300105993

namespace A119245

/-- `A050145(A008486(n)-A028392(n))` -/
def P17607903580300105993.Spec : Prop :=
  ∀ n, P17607903580300105993.a n = A119245 n

end A119245

/-! ## A119245.P2732019232214467270

`A008313(record[2*A116942(n)])`
-/

namespace A119245.P2732019232214467270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A119245.P2732019232214467270

namespace A119245

/-- `A008313(record[2*A116942(n)])` -/
def P2732019232214467270.Spec : Prop :=
  ∀ n, P2732019232214467270.a n = A119245 n

end A119245

/-! ## A119245.P4784798952779573528

`A113313(∩[2*n+5, A292565(n+1)])`
-/

namespace A119245.P4784798952779573528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292565 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113313 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A119245.P4784798952779573528

namespace A119245

/-- `A113313(∩[2*n+5, A292565(n+1)])` -/
def P4784798952779573528.Spec : Prop :=
  ∀ n, P4784798952779573528.a n = A119245 n

end A119245

/-!
# A119246: Numbers containing in decimal representation their digital root.

The programs for A119246, there is no canonical definition to state claims against.
-/

/-! ## A119246.P16615783142274212490

`comp[A119247(n+1)]`
-/

namespace A119246.P16615783142274212490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A119246.P16615783142274212490

/-! ## A119246.P12741955828995595182

`eq[0, A061486(n)-A118759(A004185(n))]`
-/

namespace A119246.P12741955828995595182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 n - A118759 (A004185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119246.P12741955828995595182

/-! ## A119246.P8983253696858203648

`lt[A257297(A004184(n)), 1]`
-/

namespace A119246.P8983253696858203648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 (A004184 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A119246.P8983253696858203648

/-! ## A119246.P13413418682206348309

`lt[n, A367362(A367362(n))]`
-/

namespace A119246.P13413418682206348309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367362 (A367362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A119246.P13413418682206348309

/-! ## A119246.P11978679437409490647

`lt[A338829(n+1), A008685(A043276(n+1))]`
-/

namespace A119246.P11978679437409490647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008685 (A043276 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119246.P11978679437409490647

/-!
# A119247: Numbers not containing their digital root in decimal representation.

The programs for A119247, there is no canonical definition to state claims against.
-/

/-! ## A119247.P14564878259248342632

`comp[A119246(n+1)]`
-/

namespace A119247.P14564878259248342632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A119247.P14564878259248342632

/-! ## A119247.P10411297375652700756

`lt[A061486(n), A118759(A004185(n))]`
-/

namespace A119247.P10411297375652700756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A004185 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A119247.P10411297375652700756

/-! ## A119247.P4323263295392338439

`(A222254(A272576(n))+11)%A020249(A008805(n))`
-/

namespace A119247.P4323263295392338439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222254 (A272576 n).toNat + 11) (A020249 (A008805 n).toNat)

end

end A119247.P4323263295392338439

/-! ## A119247.P5917611648588317883

`A000038(A058999(n+1))+A222254(A272576(n))+11`
-/

namespace A119247.P5917611648588317883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A058999 (n + 1)).toNat + (A222254 (A272576 n).toNat + 11)

end

end A119247.P5917611648588317883

/-! ## A119247.P247885300552917274

`A000007(A101888(n+1))+A222254(A272576(n))+11`
-/

namespace A119247.P247885300552917274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A101888 (n + 1)).toNat + (A222254 (A272576 n).toNat + 11)

end

end A119247.P247885300552917274

/-! ## A119247.P14500639999375967775

`A202954(A050412(n+1))+A222254(A272576(n))+11`
-/

namespace A119247.P14500639999375967775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202954 (A050412 (n + 1)).toNat + (A222254 (A272576 n).toNat + 11)

end

end A119247.P14500639999375967775

/-! ## A119247.P5412395844837179175

`eq[n, A367362(A367362(n))]`
-/

namespace A119247.P5412395844837179175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367362 (A367362 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119247.P5412395844837179175

/-! ## A119247.P5019116793314808808

`filter[A088476(n+1), A168046(#)]`
-/

namespace A119247.P5019116793314808808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A119247.P5019116793314808808

/-! ## A119247.P17951500033193830981

`filter[A088476(n+1), A168184(#)]`
-/

namespace A119247.P17951500033193830981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A119247.P17951500033193830981

/-! ## A119247.P12370952254974878796

`filter[A088476(n+1), A209929(#)]`
-/

namespace A119247.P12370952254974878796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A119247.P12370952254974878796

/-!
# A119248: a(n) is the difference between denominator and numerator of the n-th alternating harmonic number Sum_{k=1..n} (-1)^(k+1)/k = A058313(n)/A058312(n).

The programs for A119248, the canonical program `A119248.P9120946014621865842` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119248 has offset 1).

The definition of A119248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119248.P9120946014621865842

`A075829(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A119248

/-- `A075829(n+2)` -/
def P9120946014621865842.Spec : Prop :=
  ∀ n, P9120946014621865842.a n = A119248 (n + 1)

theorem P9120946014621865842.correct : P9120946014621865842.Spec := by
  intro n
  simp only [A119248, Nat.add_sub_cancel]

end A119248

/-! ## A119248.P9372287742994382191

`A058312(n+1)-A058313(n+1)`
-/

namespace A119248.P9372287742994382191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (n + 1) - A058313 (n + 1)

end

end A119248.P9372287742994382191

namespace A119248

/-- `A058312(n+1)-A058313(n+1)` -/
def P9372287742994382191.Spec : Prop :=
  ∀ n, P9372287742994382191.a n = A119248 (n + 1)

end A119248

/-! ## A119248.P13912903997326203559

`A058312(n+1)-A075830(n+2)`
-/

namespace A119248.P13912903997326203559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (n + 1) - A075830 (n + 2)

end

end A119248.P13912903997326203559

namespace A119248

/-- `A058312(n+1)-A075830(n+2)` -/
def P13912903997326203559.Spec : Prop :=
  ∀ n, P13912903997326203559.a n = A119248 (n + 1)

end A119248

/-! ## A119248.P14326377962168917100

`∏[(n+1)/A335023(A233583(n+1))]-A058313(n+1)`
-/

namespace A119248.P14326377962168917100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A335023 (A233583 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (A058313 (n + 1) : ℚ)

end

end A119248.P14326377962168917100

namespace A119248

/-- `∏[(n+1)/A335023(A233583(n+1))]-A058313(n+1)` -/
def P14326377962168917100.Spec : Prop :=
  ∀ n, P14326377962168917100.a n = (A119248 (n + 1) : ℚ)

end A119248

/-! ## A119248.P13686277142005246185

`A075828(n+1)/A075827(n+1)*A075830(n+2)`
-/

namespace A119248.P13686277142005246185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075828 (n + 1) : ℚ) / (A075827 (n + 1) : ℚ) * (A075830 (n + 2) : ℚ)

end

end A119248.P13686277142005246185

namespace A119248

/-- `A075828(n+1)/A075827(n+1)*A075830(n+2)` -/
def P13686277142005246185.Spec : Prop :=
  ∀ n, P13686277142005246185.a n = (A119248 (n + 1) : ℚ)

end A119248

/-! ## A119248.P9143508737570484832

`Δ[A236856(n)]/A269626(n+1)-A058313(n+1)`
-/

namespace A119248.P9143508737570484832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A269626 (n + 1) : ℚ) - (A058313 (n + 1) : ℚ)

end

end A119248.P9143508737570484832

namespace A119248

/-- `Δ[A236856(n)]/A269626(n+1)-A058313(n+1)` -/
def P9143508737570484832.Spec : Prop :=
  ∀ n, P9143508737570484832.a n = (A119248 (n + 1) : ℚ)

end A119248

/-! ## A119248.P10338421697223914033

`A003418(n+1)/A269626(n+1)-A058313(n+1)`
-/

namespace A119248.P10338421697223914033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A269626 (n + 1) : ℚ) - (A058313 (n + 1) : ℚ)

end

end A119248.P10338421697223914033

namespace A119248

/-- `A003418(n+1)/A269626(n+1)-A058313(n+1)` -/
def P10338421697223914033.Spec : Prop :=
  ∀ n, P10338421697223914033.a n = (A119248 (n + 1) : ℚ)

end A119248

/-! ## A119248.P15038766137621702984

`A058312(n+1)-A025530(n+1)/A269626(n+1)`
-/

namespace A119248.P15038766137621702984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058312 (n + 1) : ℚ) - (A025530 (n + 1) : ℚ) / (A269626 (n + 1) : ℚ)

end

end A119248.P15038766137621702984

namespace A119248

/-- `A058312(n+1)-A025530(n+1)/A269626(n+1)` -/
def P15038766137621702984.Spec : Prop :=
  ∀ n, P15038766137621702984.a n = (A119248 (n + 1) : ℚ)

end A119248

/-! ## A119248.P16617648841762142895

`A051451(A065515(n+1))/A269626(n+1)-A058313(n+1)`
-/

namespace A119248.P16617648841762142895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051451 (A065515 (n + 1)).toNat : ℚ) / (A269626 (n + 1) : ℚ) - (A058313 (n + 1) : ℚ)

end

end A119248.P16617648841762142895

namespace A119248

/-- `A051451(A065515(n+1))/A269626(n+1)-A058313(n+1)` -/
def P16617648841762142895.Spec : Prop :=
  ∀ n, P16617648841762142895.a n = (A119248 (n + 1) : ℚ)

end A119248

/-! ## A119248.P9830805556112344576

`A003418(n+1)/A025530(n+1)*A058313(n+1)-A058313(n+1)`
-/

namespace A119248.P9830805556112344576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A025530 (n + 1) : ℚ) * (A058313 (n + 1) : ℚ) - (A058313 (n + 1) : ℚ)

end

end A119248.P9830805556112344576

namespace A119248

/-- `A003418(n+1)/A025530(n+1)*A058313(n+1)-A058313(n+1)` -/
def P9830805556112344576.Spec : Prop :=
  ∀ n, P9830805556112344576.a n = (A119248 (n + 1) : ℚ)

end A119248

/-! ## A119248.P8290116425990185577

`A120108(A000217(n))/A269626(n+1)-A058313(n+1)`
-/

namespace A119248.P8290116425990185577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120108 (A000217 n).toNat : ℚ) / (A269626 (n + 1) : ℚ) - (A058313 (n + 1) : ℚ)

end

end A119248.P8290116425990185577

namespace A119248

/-- `A120108(A000217(n))/A269626(n+1)-A058313(n+1)` -/
def P8290116425990185577.Spec : Prop :=
  ∀ n, P8290116425990185577.a n = (A119248 (n + 1) : ℚ)

end A119248

/-!
# A119251: Positive integers each with exactly 1 unitary prime divisor (i.e., n is included if and only if A056169(n) = 1).

The programs for A119251, the canonical program `A119251.P15176294576861690878` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119251 has offset 1).

The definition of A119251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2956 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119251.P9030312051485541992

`∩[A052485(n+1), A359178(n+1)]`
-/

namespace A119251.P9030312051485541992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119251.P9030312051485541992

namespace A119251

/-- `∩[A052485(n+1), A359178(n+1)]` -/
def P9030312051485541992.Spec : Prop :=
  ∀ n, (P9030312051485541992.a n : ℤ) = A119251 (n + 1)

end A119251

/-! ## A119251.P15176294576861690878

`eq[1, A056169(n+1)]+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A119251

/-- `eq[1, A056169(n+1)]+1` -/
def P15176294576861690878.Spec : Prop :=
  ∀ n, (P15176294576861690878.a n : ℤ) = A119251 (n + 1)

theorem P15176294576861690878.correct : P15176294576861690878.Spec := by
  intro n
  simp only [A119251, Nat.add_sub_cancel]

end A119251

/-! ## A119251.P16675543872606027566

`eq[2, A056671(n+1)]+1`
-/

namespace A119251.P16675543872606027566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119251.P16675543872606027566

namespace A119251

/-- `eq[2, A056671(n+1)]+1` -/
def P16675543872606027566.Spec : Prop :=
  ∀ n, (P16675543872606027566.a n : ℤ) = A119251 (n + 1)

end A119251

/-! ## A119251.P16529656211780957444

`eq[1, A056169(A028310(n))]`
-/

namespace A119251.P16529656211780957444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119251.P16529656211780957444

namespace A119251

/-- `eq[1, A056169(A028310(n))]` -/
def P16529656211780957444.Spec : Prop :=
  ∀ n, (P16529656211780957444.a n : ℤ) = A119251 (n + 1)

end A119251

/-! ## A119251.P7637474476017720798

`A020725(eq[1, A056169(n+1)])`
-/

namespace A119251.P7637474476017720798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A119251.P7637474476017720798

namespace A119251

/-- `A020725(eq[1, A056169(n+1)])` -/
def P7637474476017720798.Spec : Prop :=
  ∀ n, P7637474476017720798.a n = A119251 (n + 1)

end A119251

/-! ## A119251.P17173878920708730463

`eq[1, A286852(n+1)]+1`
-/

namespace A119251.P17173878920708730463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119251.P17173878920708730463

namespace A119251

/-- `eq[1, A286852(n+1)]+1` -/
def P17173878920708730463.Spec : Prop :=
  ∀ n, (P17173878920708730463.a n : ℤ) = A119251 (n + 1)

end A119251

/-! ## A119251.P9085044422383540055

`eq[A054977(n), A286852(n)]`
-/

namespace A119251.P9085044422383540055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119251.P9085044422383540055

namespace A119251

/-- `eq[A054977(n), A286852(n)]` -/
def P9085044422383540055.Spec : Prop :=
  ∀ n, (P9085044422383540055.a n : ℤ) = A119251 (n + 1)

end A119251

/-! ## A119251.P12902407160508274296

`eq[A056926(n), A286852(n)]`
-/

namespace A119251.P12902407160508274296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119251.P12902407160508274296

namespace A119251

/-- `eq[A056926(n), A286852(n)]` -/
def P12902407160508274296.Spec : Prop :=
  ∀ n, (P12902407160508274296.a n : ℤ) = A119251 (n + 1)

end A119251

/-! ## A119251.P9099794048183345661

`eq[A057427(n), A286852(n)]`
-/

namespace A119251.P9099794048183345661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119251.P9099794048183345661

namespace A119251

/-- `eq[A057427(n), A286852(n)]` -/
def P9099794048183345661.Spec : Prop :=
  ∀ n, (P9099794048183345661.a n : ℤ) = A119251 (n + 1)

end A119251

/-! ## A119251.P18167793943542915194

`eq[A141044(n), A286852(n)]`
-/

namespace A119251.P18167793943542915194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119251.P18167793943542915194

namespace A119251

/-- `eq[A141044(n), A286852(n)]` -/
def P18167793943542915194.Spec : Prop :=
  ∀ n, (P18167793943542915194.a n : ℤ) = A119251 (n + 1)

end A119251

/-! ## A119251.P4700652479111973215

`eq[A158388(n), A286852(n)]`
-/

namespace A119251.P4700652479111973215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119251.P4700652479111973215

namespace A119251

/-- `eq[A158388(n), A286852(n)]` -/
def P4700652479111973215.Spec : Prop :=
  ∀ n, (P4700652479111973215.a n : ℤ) = A119251 (n + 1)

end A119251

/-! ## A119251.P13764395820016501491

`eq[1, A286852(n)%A257088(n)]`
-/

namespace A119251.P13764395820016501491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286852 n) (A257088 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A119251.P13764395820016501491

namespace A119251

/-- `eq[1, A286852(n)%A257088(n)]` -/
def P13764395820016501491.Spec : Prop :=
  ∀ n, (P13764395820016501491.a n : ℤ) = A119251 (n + 1)

end A119251

/-! ## A119251.P15829679752469212826

`eq[A014963(A016825(n)), A286852(n)]`
-/

namespace A119251.P15829679752469212826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016825 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119251.P15829679752469212826

namespace A119251

/-- `eq[A014963(A016825(n)), A286852(n)]` -/
def P15829679752469212826.Spec : Prop :=
  ∀ n, (P15829679752469212826.a n : ℤ) = A119251 (n + 1)

end A119251

/-!
# A119252: Odd digits in decreasing order.

The programs for A119252, there is no canonical definition to state claims against.
-/

/-! ## A119252.P15744005290564858883

`A048379(A119261(n+1))`
-/

namespace A119252.P15744005290564858883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A119261 (n + 1)).toNat

end

end A119252.P15744005290564858883

/-! ## A119252.P10083970629656907650

`∩[A009995(n+1), A014261(n+1)]`
-/

namespace A119252.P10083970629656907650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119252.P10083970629656907650

/-! ## A119252.P3170443729219385644

`∩[A009995(n+1), A333369(n+1)]`
-/

namespace A119252.P3170443729219385644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119252.P3170443729219385644

/-! ## A119252.P17592211362457951445

`A139337(A119253(n+1))+A119261(n+1)`
-/

namespace A119252.P17592211362457951445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (A119253 (n + 1)).toNat + A119261 (n + 1)

end

end A119252.P17592211362457951445

/-! ## A119252.P7556660834636777711

`A139337(A119253(n+1))+A014263(A023787(n+1)+1)`
-/

namespace A119252.P7556660834636777711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (A119253 (n + 1)).toNat + A014263 (A023787 (n + 1) + 1).toNat

end

end A119252.P7556660834636777711

/-!
# A119253: Odd digits in increasing order.

The programs for A119253, there is no canonical definition to state claims against.
-/

/-! ## A119253.P14783143395468461780

`∩[A009993(n+1), A014261(n+1)]`
-/

namespace A119253.P14783143395468461780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119253.P14783143395468461780

/-! ## A119253.P13689728176175238753

`∩[A014261(n+1), A179308(n+1)]`
-/

namespace A119253.P13689728176175238753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119253.P13689728176175238753

/-! ## A119253.P10328252921516448379

`∩[A009993(n+1), A333369(n+1)]`
-/

namespace A119253.P10328252921516448379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119253.P10328252921516448379

/-! ## A119253.P10028858200753581822

`∩[A014261(n+1), A383062(n+1)]`
-/

namespace A119253.P10028858200753581822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119253.P10028858200753581822

/-! ## A119253.P315092988472368852

`∩[A179308(n+1), A333369(n+1)]`
-/

namespace A119253.P315092988472368852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119253.P315092988472368852

/-!
# A119254: Row sums of A071946.

The programs for A119254, there is no canonical definition to state claims against.
-/

/-! ## A119254.P6604677192028412243

`A175835(2*n+3)+A019446(A028270(n))`
-/

namespace A119254.P6604677192028412243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175835 (2 * n + 3) + A019446 (A028270 n).toNat

end

end A119254.P6604677192028412243

/-! ## A119254.P2420262733612067541

`A050221(A000260(n))+A050183(n)`
-/

namespace A119254.P2420262733612067541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050221 (A000260 n).toNat + A050183 n

end

end A119254.P2420262733612067541

/-! ## A119254.P12910180762584941107

`A211989(A120588(n))+A050183(n)`
-/

namespace A119254.P12910180762584941107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211989 (A120588 n).toNat + A050183 n

end

end A119254.P12910180762584941107

/-!
# A119257: A permutation of the positive integers formed by reversing the order of the composites within each run of composites (1 and primes are left alone).

The programs for A119257, the canonical program `A119257.P4892958941628964632` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119257 has offset 1).

The definition of A119257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119257.P4892958941628964632

`A151800(a(n-1))+1-A175851(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A119257

/-- `A151800(a(n-1))+1-A175851(n+1)` -/
def P4892958941628964632.Spec : Prop :=
  ∀ n, P4892958941628964632.a n = A119257 (n + 1)

theorem P4892958941628964632.correct : P4892958941628964632.Spec := by
  intro n
  simp only [A119257, Nat.add_sub_cancel]

end A119257

/-! ## A119257.P9586233983954518737

`ceil(A030664(n+1)/(n+1))`
-/

namespace A119257.P9586233983954518737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A030664 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A119257.P9586233983954518737

namespace A119257

/-- `ceil(A030664(n+1)/(n+1))` -/
def P9586233983954518737.Spec : Prop :=
  ∀ n, P9586233983954518737.a n = A119257 (n + 1)

end A119257

/-! ## A119257.P11368320901948656942

`round(A030664(A000027(n+1))/A000027(n+1))`
-/

namespace A119257.P11368320901948656942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A030664 (A000027 (n + 1)).toNat : ℚ) / (A000027 (n + 1) : ℚ))

end

end A119257.P11368320901948656942

namespace A119257

/-- `round(A030664(A000027(n+1))/A000027(n+1))` -/
def P11368320901948656942.Spec : Prop :=
  ∀ n, P11368320901948656942.a n = A119257 (n + 1)

end A119257

/-! ## A119257.P666376324660214467

`A159477(n+1)-A064722(n+1)`
-/

namespace A119257.P666376324660214467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (n + 1) - A064722 (n + 1)

end

end A119257.P666376324660214467

namespace A119257

/-- `A159477(n+1)-A064722(n+1)` -/
def P666376324660214467.Spec : Prop :=
  ∀ n, P666376324660214467.a n = A119257 (n + 1)

end A119257

/-! ## A119257.P16625644995093878196

`A159477(n+1)+1-A175851(n+1)`
-/

namespace A119257.P16625644995093878196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (n + 1) + (1 - A175851 (n + 1))

end

end A119257.P16625644995093878196

namespace A119257

/-- `A159477(n+1)+1-A175851(n+1)` -/
def P16625644995093878196.Spec : Prop :=
  ∀ n, P16625644995093878196.a n = A119257 (n + 1)

end A119257

/-! ## A119257.P16274230653151384070

`A008578(A000720(n+1)+1)+A159477(n+1)-(n+1)`
-/

namespace A119257.P16274230653151384070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (n + 1) + 1).toNat + (A159477 (n + 1) - (n + 1 : ℤ))

end

end A119257.P16274230653151384070

namespace A119257

/-- `A008578(A000720(n+1)+1)+A159477(n+1)-(n+1)` -/
def P16274230653151384070.Spec : Prop :=
  ∀ n, P16274230653151384070.a n = A119257 (n + 1)

end A119257

/-!
# A119258: Triangle read by rows: T(n,0) = T(n,n) = 1 and for 0<k<n: T(n,k) = 2*T(n-1, k-1) + T(n-1,k).

The programs for A119258, the canonical program `A119258.P10503097935816686306` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119258 has offset 0).

The definition of A119258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119258.P10503097935816686306

`2*A082137(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A119258

/-- `2*A082137(n)-a(n-1)` -/
def P10503097935816686306.Spec : Prop :=
  ∀ n, P10503097935816686306.a n = A119258 n

theorem P10503097935816686306.correct : P10503097935816686306.Spec := by
  intro n
  simp only [A119258]

end A119258

/-! ## A119258.P6922237972667976133

`A193844(A083920(n))`
-/

namespace A119258.P6922237972667976133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (A083920 n).toNat

end

end A119258.P6922237972667976133

namespace A119258

/-- `A193844(A083920(n))` -/
def P6922237972667976133.Spec : Prop :=
  ∀ n, P6922237972667976133.a n = A119258 n

end A119258

/-! ## A119258.P1101429423602269524

`A193844(A271439(n))`
-/

namespace A119258.P1101429423602269524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (A271439 n).toNat

end

end A119258.P1101429423602269524

namespace A119258

/-- `A193844(A271439(n))` -/
def P1101429423602269524.Spec : Prop :=
  ∀ n, P1101429423602269524.a n = A119258 n

end A119258

/-! ## A119258.P8966196038581106488

`A193844(n-A003056(n))`
-/

namespace A119258.P8966196038581106488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 ((n : ℤ) - A003056 n).toNat

end

end A119258.P8966196038581106488

namespace A119258

/-- `A193844(n-A003056(n))` -/
def P8966196038581106488.Spec : Prop :=
  ∀ n, P8966196038581106488.a n = A119258 n

end A119258

/-! ## A119258.P5035024693468180439

`2*A013609(n)-A193844(n)`
-/

namespace A119258.P5035024693468180439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013609 n - A193844 n

end

end A119258.P5035024693468180439

namespace A119258

/-- `2*A013609(n)-A193844(n)` -/
def P5035024693468180439.Spec : Prop :=
  ∀ n, P5035024693468180439.a n = A119258 n

end A119258

/-! ## A119258.P4374086362118407509

`abs(∑[A082137(n)*A280560(n)])`
-/

namespace A119258.P4374086362118407509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082137 n * A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A119258.P4374086362118407509

namespace A119258

/-- `abs(∑[A082137(n)*A280560(n)])` -/
def P4374086362118407509.Spec : Prop :=
  ∀ n, P4374086362118407509.a n = A119258 n

end A119258

/-! ## A119258.P8561905239393625845

`A112857(A061579(n))`
-/

namespace A119258.P8561905239393625845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112857 (A061579 n).toNat

end

end A119258.P8561905239393625845

namespace A119258

/-- `A112857(A061579(n))` -/
def P8561905239393625845.Spec : Prop :=
  ∀ n, P8561905239393625845.a n = A119258 n

end A119258

/-! ## A119258.P12386648454632006041

`A112857(A038722(n+1)-1)`
-/

namespace A119258.P12386648454632006041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112857 (A038722 (n + 1) - 1).toNat

end

end A119258.P12386648454632006041

namespace A119258

/-- `A112857(A038722(n+1)-1)` -/
def P12386648454632006041.Spec : Prop :=
  ∀ n, P12386648454632006041.a n = A119258 n

end A119258

/-! ## A119258.P17669501580472979042

`A135233(A061579(n*A023532(n)))`
-/

namespace A119258.P17669501580472979042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135233 (A061579 ((n : ℤ) * A023532 n).toNat).toNat

end

end A119258.P17669501580472979042

namespace A119258

/-- `A135233(A061579(n*A023532(n)))` -/
def P17669501580472979042.Spec : Prop :=
  ∀ n, P17669501580472979042.a n = A119258 n

end A119258

/-! ## A119258.P3393532588000870203

`gcd(A103452(n), A135233(A061579(n)))`
-/

namespace A119258.P3393532588000870203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103452 n) (A135233 (A061579 n).toNat)

end

end A119258.P3393532588000870203

namespace A119258

/-- `gcd(A103452(n), A135233(A061579(n)))` -/
def P3393532588000870203.Spec : Prop :=
  ∀ n, (P3393532588000870203.a n : ℤ) = A119258 n

end A119258

/-! ## A119258.P9889910188308074122

`A112857(A038722(n+2))`
-/

namespace A119258.P9889910188308074122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112857 (A038722 (n + 2)).toNat

end

end A119258.P9889910188308074122

namespace A119258

/-- `A112857(A038722(n+2))` -/
def P9889910188308074122.Spec : Prop :=
  ∀ n, P9889910188308074122.a n = A119258 n

end A119258

/-! ## A119258.P8862838502807993292

`A135233(A061579(n+1)+A023532(n))`
-/

namespace A119258.P8862838502807993292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135233 (A061579 (n + 1) + A023532 n).toNat

end

end A119258.P8862838502807993292

namespace A119258

/-- `A135233(A061579(n+1)+A023532(n))` -/
def P8862838502807993292.Spec : Prop :=
  ∀ n, P8862838502807993292.a n = A119258 n

end A119258

/-! ## A119258.P15812885725257288267

`A135233(A061579(n%A104684(n)))`
-/

namespace A119258.P15812885725257288267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135233 (A061579 (Int.tmod (n : ℤ) (A104684 n)).toNat).toNat

end

end A119258.P15812885725257288267

namespace A119258

/-- `A135233(A061579(n%A104684(n)))` -/
def P15812885725257288267.Spec : Prop :=
  ∀ n, P15812885725257288267.a n = A119258 n

end A119258

/-! ## A119258.P13915672678002364741

`A135233(A061579(n)%A176230(n))`
-/

namespace A119258.P13915672678002364741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135233 (Int.tmod (A061579 n) (A176230 n)).toNat

end

end A119258.P13915672678002364741

namespace A119258

/-- `A135233(A061579(n)%A176230(n))` -/
def P13915672678002364741.Spec : Prop :=
  ∀ n, P13915672678002364741.a n = A119258 n

end A119258

/-!
# A119259: Central terms of the triangle in A119258.

The programs for A119259, the canonical program `A119259.P15056154096299746551` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119259 has offset 0).

The definition of A119259 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178792, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A119259.P15056154096299746551

`2^(n+1)*C(2*n, n)-A178792(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A119259

/-- `2^(n+1)*C(2*n, n)-A178792(n)` -/
def P15056154096299746551.Spec : Prop :=
  ∀ n, P15056154096299746551.a n = A119259 n

theorem P15056154096299746551.correct : P15056154096299746551.Spec := by
  intro n
  simp only [A119259]

end A119259

/-! ## A119259.P16639606030817899702

`(A178792(n)+A064062(n))/2`
-/

namespace A119259.P16639606030817899702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178792 n + A064062 n : ℚ) / 2

end

end A119259.P16639606030817899702

namespace A119259

/-- `(A178792(n)+A064062(n))/2` -/
def P16639606030817899702.Spec : Prop :=
  ∀ n, P16639606030817899702.a n = (A119259 n : ℚ)

end A119259

/-! ## A119259.P5721191904959124957

`A116881(n)-n*A064062(n)`
-/

namespace A119259.P5721191904959124957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116881 n - (n : ℤ) * A064062 n

end

end A119259.P5721191904959124957

namespace A119259

/-- `A116881(n)-n*A064062(n)` -/
def P5721191904959124957.Spec : Prop :=
  ∀ n, P5721191904959124957.a n = A119259 n

theorem P5721191904959124957.correct : P5721191904959124957.Spec := by
  intro n
  simp only [A119259, Nat.add_sub_cancel, A119259.P5721191904959124957.a, A119259.P15056154096299746551.a, A064062, A064062.P2466146061458098928.a, A116881, A116881.P11536297269579421476.a, A178792, A178792.P3240755536533390895.a, A000984, A000984.P7946844122574426130.a, A062992, A062992.P8931874765169475408.a, A025225, A025225.P15758787713115943274.a, A052701, A052701.P6192577118575342611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119259

/-! ## A119259.P3829348601531733682

`A116881(n)-n*A115193(A000217(n))`
-/

namespace A119259.P3829348601531733682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116881 n - (n : ℤ) * A115193 (A000217 n).toNat

end

end A119259.P3829348601531733682

namespace A119259

/-- `A116881(n)-n*A115193(A000217(n))` -/
def P3829348601531733682.Spec : Prop :=
  ∀ n, P3829348601531733682.a n = A119259 n

end A119259

/-! ## A119259.P5726409959708625235

`A000079(n+1)*A000984(n)-A178792(n)`
-/

namespace A119259.P5726409959708625235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A000984 n - A178792 n

end

end A119259.P5726409959708625235

namespace A119259

/-- `A000079(n+1)*A000984(n)-A178792(n)` -/
def P5726409959708625235.Spec : Prop :=
  ∀ n, P5726409959708625235.a n = A119259 n

theorem P5726409959708625235.correct : P5726409959708625235.Spec := by
  intro n
  simp only [A119259, Nat.add_sub_cancel, A119259.P5726409959708625235.a, A119259.P15056154096299746551.a, A000079, A000079.P10855139691139572931.a, A000984, A000984.P7946844122574426130.a, A178792, A178792.P3240755536533390895.a, A064062, A064062.P2466146061458098928.a, A062992, A062992.P8931874765169475408.a, A025225, A025225.P15758787713115943274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A119259

/-! ## A119259.P17457905735086376531

`A193845(A004273(n²))`
-/

namespace A119259.P17457905735086376531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193845 (A004273 (n ^ 2)).toNat

end

end A119259.P17457905735086376531

namespace A119259

/-- `A193845(A004273(n²))` -/
def P17457905735086376531.Spec : Prop :=
  ∀ n, P17457905735086376531.a n = A119259 n

end A119259

/-! ## A119259.P4943168090271937196

`A193845(A132209(n)-2*n)`
-/

namespace A119259.P4943168090271937196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193845 (A132209 n - (2 * n : ℤ)).toNat

end

end A119259.P4943168090271937196

namespace A119259

/-- `A193845(A132209(n)-2*n)` -/
def P4943168090271937196.Spec : Prop :=
  ∀ n, P4943168090271937196.a n = A119259 n

end A119259

/-! ## A119259.P240662825524648456

`A193845(A132209(n)-n-n)`
-/

namespace A119259.P240662825524648456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193845 (A132209 n - (n : ℤ) - (n : ℤ)).toNat

end

end A119259.P240662825524648456

namespace A119259

/-- `A193845(A132209(n)-n-n)` -/
def P240662825524648456.Spec : Prop :=
  ∀ n, P240662825524648456.a n = A119259 n

end A119259

/-! ## A119259.P12724992363287447475

`A193844(2*n²)`
-/

namespace A119259.P12724992363287447475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (2 * n ^ 2)

end

end A119259.P12724992363287447475

namespace A119259

/-- `A193844(2*n²)` -/
def P12724992363287447475.Spec : Prop :=
  ∀ n, P12724992363287447475.a n = A119259 n

end A119259

/-! ## A119259.P3813644836043575894

`A112857(∑[4*n])`
-/

namespace A119259.P3813644836043575894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112857 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119259.P3813644836043575894

namespace A119259

/-- `A112857(∑[4*n])` -/
def P3813644836043575894.Spec : Prop :=
  ∀ n, P3813644836043575894.a n = A119259 n

end A119259

/-!
# A119260: Numbers with even decimal digits in increasing order.

The programs for A119260, there is no canonical definition to state claims against.
-/

/-! ## A119260.P4086638833599742081

`record[A001613(A009993(n+1))]`
-/

namespace A119260.P4086638833599742081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A009993 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119260.P4086638833599742081

/-! ## A119260.P8391836300146711788

`record[A235049(A119253(n+1))]`
-/

namespace A119260.P8391836300146711788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A119253 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119260.P8391836300146711788

/-! ## A119260.P12651312334911370936

`A014263(A023774(n+1)+1)`
-/

namespace A119260.P12651312334911370936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (A023774 (n + 1) + 1).toNat

end

end A119260.P12651312334911370936

/-! ## A119260.P8818564917467531658

`record[A306436(or(1, A119253(n+1)))]`
-/

namespace A119260.P8818564917467531658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306436 (Int.lor 1 (A119253 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119260.P8818564917467531658

/-! ## A119260.P13783723646509623904

`lt[A045841(n), char[A009993(n+1)]]`
-/

namespace A119260.P13783723646509623904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045841 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A119260.P13783723646509623904

/-!
# A119261: Numbers with even decimal digits in decreasing order.

The programs for A119261, there is no canonical definition to state claims against.
-/

/-! ## A119261.P660624551804901761

`A014263(A023787(n+1)+1)`
-/

namespace A119261.P660624551804901761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (A023787 (n + 1) + 1).toNat

end

end A119261.P660624551804901761

/-! ## A119261.P1700507487149788772

`∩[A009995(n+1), A014263(n+1)]`
-/

namespace A119261.P1700507487149788772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119261.P1700507487149788772

/-! ## A119261.P2394346080072010783

`∩[A009995(n+1), A353007(n+1)]`
-/

namespace A119261.P2394346080072010783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119261.P2394346080072010783

/-! ## A119261.P15985126444049457540

`A119252(n+1)-A139337(A119253(n+1))`
-/

namespace A119261.P15985126444049457540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119252 (n + 1) - A139337 (A119253 (n + 1)).toNat

end

end A119261.P15985126444049457540

/-! ## A119261.P5691776886158000231

`A235049(A119252(n+1))`
-/

namespace A119261.P5691776886158000231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (A119252 (n + 1)).toNat

end

end A119261.P5691776886158000231

/-!
# A119262: Number of B-trees of order infinity with n leaves, where a(n) = Sum_{k=1..floor(n/2)} a(k)*C(n-k-1,n-2*k) for n >= 2, with a(0)=0, a(1)=1.

The programs for A119262, there is no canonical definition to state claims against.
-/

/-! ## A119262.P8961396864668264414

`A016777(A049868(n))%A049871(n)`
-/

namespace A119262.P8961396864668264414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016777 (A049868 n).toNat) (A049871 n)

end

end A119262.P8961396864668264414

/-! ## A119262.P12084347332086996794

`∑[A265826(n)]-A004273(A265826(n))`
-/

namespace A119262.P12084347332086996794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004273 (A265826 n).toNat

end

end A119262.P12084347332086996794

/-! ## A119262.P10339388234573663596

`A005408(A049875(n))%A049868(n)`
-/

namespace A119262.P10339388234573663596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (A049875 n).toNat) (A049868 n)

end

end A119262.P10339388234573663596

/-! ## A119262.P8576586967257444085

`A020725(A049875(n))%A049871(n)`
-/

namespace A119262.P8576586967257444085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020725 (A049875 n).toNat) (A049871 n)

end

end A119262.P8576586967257444085

/-! ## A119262.P7239139603119827633

`A020725(A049868(n+1))%A265826(n+1)`
-/

namespace A119262.P7239139603119827633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020725 (A049868 (n + 1)).toNat) (A265826 (n + 1))

end

end A119262.P7239139603119827633

/-!
# A119264: Primes of the form k^6 + k^2 + 1.

The programs for A119264, there is no canonical definition to state claims against.
-/

/-! ## A119264.P5234197996571849547

`A071568(∩[A049407(n+1), n²])`
-/

namespace A119264.P5234197996571849547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071568 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A119264.P5234197996571849547

/-!
# A119265: Triangle read by rows, 1<=k<=n: T(n,k) = k-th divisor of the smallest odd number with exactly n divisors, A038547.

The programs for A119265, there is no canonical definition to state claims against.
-/

/-! ## A119265.P11808906996981346205

`A027750(A006218(A038547(row(n)+1)-1)+col(n)+1)`
-/

namespace A119265.P11808906996981346205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A006218 (A038547 (SequenceMachineLib.triRow n + 1) - 1).toNat + (SequenceMachineLib.triCol n + 1 : ℤ)).toNat

end

end A119265.P11808906996981346205

/-! ## A119265.P13954798287149242020

`A003961(A081532(n+1)%A031618(n+1))`
-/

namespace A119265.P13954798287149242020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.tmod (A081532 (n + 1)) (A031618 (n + 1))).toNat

end

end A119265.P13954798287149242020

/-! ## A119265.P38710323363821736

`A003961(A081532(n+1))%A128841(n+1)`
-/

namespace A119265.P38710323363821736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (A081532 (n + 1)).toNat) (A128841 (n + 1))

end

end A119265.P38710323363821736

/-! ## A119265.P9389354321015130152

`A001222(A037299(n))*A064988(A081532(n+1))`
-/

namespace A119265.P9389354321015130152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A037299 n).toNat * A064988 (A081532 (n + 1)).toNat

end

end A119265.P9389354321015130152

/-! ## A119265.P17896045582405540219

`A064988(A081532(n+1)%A058868(n))`
-/

namespace A119265.P17896045582405540219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (Int.tmod (A081532 (n + 1)) (A058868 n)).toNat

end

end A119265.P17896045582405540219

/-!
# A119266: Number of 3-dimensional partitions of n up to conjugacy.

The programs for A119266, there is no canonical definition to state claims against.
-/

/-! ## A119266.P9139747936944249656

`A119338(∑[n+3])`
-/

namespace A119266.P9139747936944249656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119338 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119266.P9139747936944249656

/-! ## A119266.P18114239294229864567

`A119269(∑[n+2]+5)`
-/

namespace A119266.P18114239294229864567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119269 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A119266.P18114239294229864567

/-! ## A119266.P6702073415639726121

`A005041(A186738(n))`
-/

namespace A119266.P6702073415639726121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A186738 n).toNat

end

end A119266.P6702073415639726121

/-! ## A119266.P4361421006585902512

`A005041(round(sqrt(A346964(n))))`
-/

namespace A119266.P4361421006585902512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (SequenceMachineLib.roundAway (Real.sqrt (A346964 n : ℝ))).toNat

end

end A119266.P4361421006585902512

/-! ## A119266.P892516687791436413

`A119338(A141214(n))+A025466(n)`
-/

namespace A119266.P892516687791436413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119338 (A141214 n).toNat + A025466 n

end

end A119266.P892516687791436413

/-!
# A119267: Number of 4-dimensional partitions of n up to conjugacy.

The programs for A119267, there is no canonical definition to state claims against.
-/

/-! ## A119267.P16572021595685971856

`A110654(A321739(n)+A034008(n))`
-/

namespace A119267.P16572021595685971856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A321739 n + A034008 n).toNat

end

end A119267.P16572021595685971856

/-! ## A119267.P7994140104995238910

`A157271(A321739(n)+A034008(n))`
-/

namespace A119267.P7994140104995238910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A321739 n + A034008 n).toNat

end

end A119267.P7994140104995238910

/-! ## A119267.P10368570647969837658

`A119338(∑[n+4]+2)`
-/

namespace A119267.P10368570647969837658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119338 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A119267.P10368570647969837658

/-! ## A119267.P5881881123172812191

`A119269(∑[n+3]+8)`
-/

namespace A119267.P5881881123172812191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119269 (∑ j ∈ Finset.range (n + 1), f1 j + 8)

end

end A119267.P5881881123172812191

/-! ## A119267.P10886567147045320713

`A067086(A352864(n))`
-/

namespace A119267.P10886567147045320713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A352864 n).toNat

end

end A119267.P10886567147045320713

/-!
# A119268: Number of infinite-dimensional partitions of n up to conjugacy.

The programs for A119268, there is no canonical definition to state claims against.
-/

/-! ## A119268.P7813679361122677257

`A119342(n)+A010051(A248873(n))`
-/

namespace A119268.P7813679361122677257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119342 n + A010051 (A248873 n).toNat

end

end A119268.P7813679361122677257

/-! ## A119268.P12438122502411307827

`A119342(n)+A083895(A279682(n))`
-/

namespace A119268.P12438122502411307827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119342 n + A083895 (A279682 n).toNat

end

end A119268.P12438122502411307827

/-! ## A119268.P9015794502121016734

`A185284(A008864(n+1))+A119342(n)`
-/

namespace A119268.P9015794502121016734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A008864 (n + 1)).toNat + A119342 n

end

end A119268.P9015794502121016734

/-! ## A119268.P134151329316080561

`A119342(n)+A079978(A140480(n+1))`
-/

namespace A119268.P134151329316080561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119342 n + A079978 (A140480 (n + 1)).toNat

end

end A119268.P134151329316080561

/-! ## A119268.P16595985365584897615

`A124762(A217154(n+1))+A119341(n)`
-/

namespace A119268.P16595985365584897615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A217154 (n + 1)).toNat + A119341 n

end

end A119268.P16595985365584897615

/-!
# A119269: Table by antidiagonals: number of m-dimensional partitions of n up to conjugacy, for n >= 1, m >= 0.

The programs for A119269, there is no canonical definition to state claims against.
-/

/-! ## A119269.P13570767261930420683

`A119338(∑[char[∑[n]]]²-n)`
-/

namespace A119269.P13570767261930420683
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119338 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A119269.P13570767261930420683

/-! ## A119269.P10804338072532124951

`A119338(A038722(n+1))%(3*(n+3))`
-/

namespace A119269.P10804338072532124951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119338 (A038722 (n + 1)).toNat) (3 * (n + 3) : ℤ)

end

end A119269.P10804338072532124951

/-! ## A119269.P11128429436416773636

`or(A000007(n), A119338(A038722(n+1)))`
-/

namespace A119269.P11128429436416773636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A119338 (A038722 (n + 1)).toNat)

end

end A119269.P11128429436416773636

/-! ## A119269.P13087746022452807244

`A324964(2*n)+A119338(A038722(n+1))`
-/

namespace A119269.P13087746022452807244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324964 (2 * n) + A119338 (A038722 (n + 1)).toNat

end

end A119269.P13087746022452807244

/-! ## A119269.P1674285879079554774

`A119338(A038722(n+1))^(A010054(n)+1)`
-/

namespace A119269.P1674285879079554774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119338 (A038722 (n + 1)).toNat : ℚ) ^ (A010054 n + 1 : ℤ)

end

end A119269.P1674285879079554774

/-! ## A119269.P15775137239747710506

`lcm(A119338(A038722(n+1)), A309873(n+1))`
-/

namespace A119269.P15775137239747710506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A119338 (A038722 (n + 1)).toNat) (A309873 (n + 1))

end

end A119269.P15775137239747710506

/-! ## A119269.P8552296415791620935

`A119338(A038722(n+1))+and(n, A055641(n))`
-/

namespace A119269.P8552296415791620935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119338 (A038722 (n + 1)).toNat + Int.land (n : ℤ) (A055641 n)

end

end A119269.P8552296415791620935

/-! ## A119269.P4909789289188352796

`A119338(A038722(n+1))+A000007(3*n+1)`
-/

namespace A119269.P4909789289188352796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119338 (A038722 (n + 1)).toNat + A000007 (3 * n + 1)

end

end A119269.P4909789289188352796

/-! ## A119269.P2674328788358096157

`A119338(A038722(n+1))+n*A209229(2*n+3)`
-/

namespace A119269.P2674328788358096157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119338 (A038722 (n + 1)).toNat + (n : ℤ) * A209229 (2 * n + 3)

end

end A119269.P2674328788358096157

/-!
# A119270: Triangle: number of exactly (m-1)-dimensional partitions of n, up to conjugacy, for n >= 1, m >= 0.

The programs for A119270, there is no canonical definition to state claims against.
-/

/-! ## A119270.P3816970372512477661

`A119339(A061579(n)%A172292(n+1))`
-/

namespace A119270.P3816970372512477661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119339 (Int.tmod (A061579 n) (A172292 (n + 1))).toNat

end

end A119270.P3816970372512477661

/-! ## A119270.P18382832906394991074

`A119339(∑[2*n]%comp[∑[n]])`
-/

namespace A119270.P18382832906394991074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119339 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A119270.P18382832906394991074

/-! ## A119270.P2845415141307510050

`A119339(∑[char[∑[n]]]²-(n+1))`
-/

namespace A119270.P2845415141307510050
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119339 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A119270.P2845415141307510050

/-! ## A119270.P9072561526623292399

`and(-1, A119339(A061579(n)))`
-/

namespace A119270.P9072561526623292399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A119339 (A061579 n).toNat)

end

end A119270.P9072561526623292399

/-! ## A119270.P16590959226089870514

`A119339(A038722(n+1)-1)%(n+2)²`
-/

namespace A119270.P16590959226089870514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119339 (A038722 (n + 1) - 1).toNat) ((n + 2) ^ 2 : ℤ)

end

end A119270.P16590959226089870514

/-! ## A119270.P6881075772751831467

`A119339(A061579(n))^A014963(4*n+2)`
-/

namespace A119270.P6881075772751831467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119339 (A061579 n).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A119270.P6881075772751831467

/-! ## A119270.P18141616037824589219

`log2(A020639(2*(n+1)))*A119339(A061579(n))`
-/

namespace A119270.P18141616037824589219
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 1)) : ℝ) * (A119339 (A061579 n).toNat : ℝ)

end

end A119270.P18141616037824589219

/-! ## A119270.P4577577416577669573

`A018252(gcd(n, n+1))*A119339(A038722(n+1)-1)`
-/

namespace A119270.P4577577416577669573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.gcd n (n + 1)) * A119339 (A038722 (n + 1) - 1).toNat

end

end A119270.P4577577416577669573

/-! ## A119270.P16115889898941509617

`A119339(A061579(n))%A000040(A007318(n))`
-/

namespace A119270.P16115889898941509617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119339 (A061579 n).toNat) (A000040 (A007318 n).toNat)

end

end A119270.P16115889898941509617

/-!
# A119271: Triangle: number of exactly (m-1)-dimensional partitions of n, for n >= 1, m >= 0.

The programs for A119271, there is no canonical definition to state claims against.
-/

/-! ## A119271.P16060116083103322796

`A096806(n)-a(n-1)` with `a(0)=1`
-/

namespace A119271.P16060116083103322796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A096806 n - a (n - 1)

end

end A119271.P16060116083103322796

/-! ## A119271.P1738171265403887047

`A000217(A097805(n))-A287272(A346061(n))`
-/

namespace A119271.P1738171265403887047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A097805 n).toNat - A287272 (A346061 n).toNat

end

end A119271.P1738171265403887047

/-! ## A119271.P4607219824471023855

`A122935(n)-A178498(A099594(n))`
-/

namespace A119271.P4607219824471023855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122935 n - A178498 (A099594 n).toNat

end

end A119271.P4607219824471023855

/-! ## A119271.P7969675071466493202

`A187446(A281891(n))`
-/

namespace A119271.P7969675071466493202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187446 (A281891 n).toNat

end

end A119271.P7969675071466493202

/-! ## A119271.P8254456786009853012

`A330960(A269955(n))`
-/

namespace A119271.P8254456786009853012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330960 (A269955 n).toNat

end

end A119271.P8254456786009853012

/-!
# A119272: Product of numerator and denominator in Stern-Brocot tree.

The programs for A119272, the canonical program `A119272.P14198164838686910294` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119272 has offset 1).

The definition of A119272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119272.P14198164838686910294

`A049449(n)-A007305(n)²`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A119272

/-- `A049449(n)-A007305(n)²` -/
def P14198164838686910294.Spec : Prop :=
  ∀ n, P14198164838686910294.a n = A119272 (n + 1)

theorem P14198164838686910294.correct : P14198164838686910294.Spec := by
  intro n
  simp only [A119272, Nat.add_sub_cancel]

end A119272

/-! ## A119272.P5581491956606540843

`(A007306(n)-A007305(n))*A007305(n)`
-/

namespace A119272.P5581491956606540843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007306 n - A007305 n) * A007305 n

end

end A119272.P5581491956606540843

namespace A119272

/-- `(A007306(n)-A007305(n))*A007305(n)` -/
def P5581491956606540843.Spec : Prop :=
  ∀ n, P5581491956606540843.a n = A119272 (n + 1)

theorem P5581491956606540843.correct : P5581491956606540843.Spec := by
  intro n
  simp only [A119272, Nat.add_sub_cancel, A119272.P5581491956606540843.a, A119272.P14198164838686910294.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049449, A049449.P5536593259919512893.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119272

/-! ## A119272.P9737364130576169707

`(A049468(n)-A049465(n))*A007305(n)`
-/

namespace A119272.P9737364130576169707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049468 n - A049465 n) * A007305 n

end

end A119272.P9737364130576169707

namespace A119272

/-- `(A049468(n)-A049465(n))*A007305(n)` -/
def P9737364130576169707.Spec : Prop :=
  ∀ n, P9737364130576169707.a n = A119272 (n + 1)

theorem P9737364130576169707.correct : P9737364130576169707.Spec := by
  intro n
  simp only [A119272, Nat.add_sub_cancel, A119272.P9737364130576169707.a, A119272.P14198164838686910294.a, A007305, A007305.P14904390197358887400.a, A049449, A049449.P5536593259919512893.a, A049465, A049465.P10062401916254781799.a, A049468, A049468.P14759900804743389918.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A003602, A003602.P7612175048291952394.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119272

/-! ## A119272.P5132355368341684283

`A049449(n)-(A007306(n)-A049448(n))²`
-/

namespace A119272.P5132355368341684283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049449 n - (A007306 n - A049448 n) ^ 2

end

end A119272.P5132355368341684283

namespace A119272

/-- `A049449(n)-(A007306(n)-A049448(n))²` -/
def P5132355368341684283.Spec : Prop :=
  ∀ n, P5132355368341684283.a n = A119272 (n + 1)

theorem P5132355368341684283.correct : P5132355368341684283.Spec := by
  intro n
  simp only [A119272, Nat.add_sub_cancel, A119272.P5132355368341684283.a, A119272.P14198164838686910294.a, A007305, A007305.P14904390197358887400.a, A007306, A007306.P17183682227013142410.a, A049448, A049448.P1299469161137968042.a, A049449, A049449.P5536593259919512893.a, A003602, A003602.P7612175048291952394.a, A004761, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119272

/-! ## A119272.P13651805719325042055

`(A049448(n)-A004277(A007305(n)))*A007305(n)`
-/

namespace A119272.P13651805719325042055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049448 n - A004277 (A007305 n).toNat) * A007305 n

end

end A119272.P13651805719325042055

namespace A119272

/-- `(A049448(n)-A004277(A007305(n)))*A007305(n)` -/
def P13651805719325042055.Spec : Prop :=
  ∀ n, P13651805719325042055.a n = A119272 (n + 1)

end A119272

/-! ## A119272.P12442259338988232735

`A272569(2*(2*n)%(n+1)+1)`
-/

namespace A119272.P12442259338988232735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272569 (2 * (2 * n % (n + 1)) + 1)

end

end A119272.P12442259338988232735

namespace A119272

/-- `A272569(2*(2*n)%(n+1)+1)` -/
def P12442259338988232735.Spec : Prop :=
  ∀ n, P12442259338988232735.a n = A119272 (n + 1)

end A119272

/-! ## A119272.P11888926015049179872

`A272569(A004274(n+1))`
-/

namespace A119272.P11888926015049179872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272569 (A004274 (n + 1)).toNat

end

end A119272.P11888926015049179872

namespace A119272

/-- `A272569(A004274(n+1))` -/
def P11888926015049179872.Spec : Prop :=
  ∀ n, P11888926015049179872.a n = A119272 (n + 1)

end A119272

/-! ## A119272.P5647695843522765988

`A272569(A004280(n+1))`
-/

namespace A119272.P5647695843522765988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272569 (A004280 (n + 1)).toNat

end

end A119272.P5647695843522765988

namespace A119272

/-- `A272569(A004280(n+1))` -/
def P5647695843522765988.Spec : Prop :=
  ∀ n, P5647695843522765988.a n = A119272 (n + 1)

end A119272

/-! ## A119272.P10488953091271501532

`A272569(A139544(n+2)/2)`
-/

namespace A119272.P10488953091271501532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272569 (SequenceMachineLib.roundAway ((A139544 (n + 2) : ℚ) / 2)).toNat

end

end A119272.P10488953091271501532

namespace A119272

/-- `A272569(A139544(n+2)/2)` -/
def P10488953091271501532.Spec : Prop :=
  ∀ n, P10488953091271501532.a n = A119272 (n + 1)

end A119272

/-! ## A119272.P5937931103383248013

`A007305(n)*A057431(2*n+1)`
-/

namespace A119272.P5937931103383248013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 n * A057431 (2 * n + 1)

end

end A119272.P5937931103383248013

namespace A119272

/-- `A007305(n)*A057431(2*n+1)` -/
def P5937931103383248013.Spec : Prop :=
  ∀ n, P5937931103383248013.a n = A119272 (n + 1)

end A119272

/-! ## A119272.P7139300156006319556

`A057431(2*n+1)*A057431(2*n)`
-/

namespace A119272.P7139300156006319556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057431 (2 * n + 1) * A057431 (2 * n)

end

end A119272.P7139300156006319556

namespace A119272

/-- `A057431(2*n+1)*A057431(2*n)` -/
def P7139300156006319556.Spec : Prop :=
  ∀ n, P7139300156006319556.a n = A119272 (n + 1)

end A119272

/-! ## A119272.P9307695951500949582

`(A007305(A206332(n+1))-A007305(n))*A007305(n)`
-/

namespace A119272.P9307695951500949582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007305 (A206332 (n + 1)).toNat - A007305 n) * A007305 n

end

end A119272.P9307695951500949582

namespace A119272

/-- `(A007305(A206332(n+1))-A007305(n))*A007305(n)` -/
def P9307695951500949582.Spec : Prop :=
  ∀ n, P9307695951500949582.a n = A119272 (n + 1)

end A119272

/-! ## A119272.P13187575534073853382

`A272569(A111284(n+1))`
-/

namespace A119272.P13187575534073853382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272569 (A111284 (n + 1)).toNat

end

end A119272.P13187575534073853382

namespace A119272

/-- `A272569(A111284(n+1))` -/
def P13187575534073853382.Spec : Prop :=
  ∀ n, P13187575534073853382.a n = A119272 (n + 1)

end A119272

/-! ## A119272.P2007824979815341333

`A272569(A139544(n+2))`
-/

namespace A119272.P2007824979815341333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272569 (A139544 (n + 2)).toNat

end

end A119272.P2007824979815341333

namespace A119272

/-- `A272569(A139544(n+2))` -/
def P2007824979815341333.Spec : Prop :=
  ∀ n, P2007824979815341333.a n = A119272 (n + 1)

end A119272

/-!
# A119273: Absolute value of the difference between largest square and largest cube each with n decimal digits.

The programs for A119273, the canonical program `A119273.P17359762583477795759` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119273 has offset 1).

The definition of A119273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119273.P17359762583477795759

`(ceil(10^((n+1)/2))-1)²-(ceil(10^((n+1)/3))-1)^3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A119273

/-- `(ceil(10^((n+1)/2))-1)²-(ceil(10^((n+1)/3))-1)^3` -/
def P17359762583477795759.Spec : Prop :=
  ∀ n, P17359762583477795759.a n = A119273 (n + 1)

theorem P17359762583477795759.correct : P17359762583477795759.Spec := by
  intro n
  simp only [A119273, Nat.add_sub_cancel]

end A119273

/-! ## A119273.P7204461110482356089

`A061433(n+1)%root(A061439(n+1), 1/3)`
-/

namespace A119273.P7204461110482356089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061433 (n + 1)) (SequenceMachineLib.roundAway ((A061439 (n + 1) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))))

end

end A119273.P7204461110482356089

namespace A119273

/-- `A061433(n+1)%root(A061439(n+1), 1/3)` -/
def P7204461110482356089.Spec : Prop :=
  ∀ n, P7204461110482356089.a n = A119273 (n + 1)

end A119273

/-! ## A119273.P3422786166153263596

`A049416(n+1)²%root(A061439(n+1), 1/3)`
-/

namespace A119273.P3422786166153263596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049416 (n + 1) ^ 2) (SequenceMachineLib.roundAway ((A061439 (n + 1) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))))

end

end A119273.P3422786166153263596

namespace A119273

/-- `A049416(n+1)²%root(A061439(n+1), 1/3)` -/
def P3422786166153263596.Spec : Prop :=
  ∀ n, P3422786166153263596.a n = A119273 (n + 1)

end A119273

/-! ## A119273.P1524978664356039743

`∑[A049415(n+1)]²%root(A061439(n+1), 1/3)`
-/

namespace A119273.P1524978664356039743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (SequenceMachineLib.roundAway ((A061439 (n + 1) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))))

end

end A119273.P1524978664356039743

namespace A119273

/-- `∑[A049415(n+1)]²%root(A061439(n+1), 1/3)` -/
def P1524978664356039743.Spec : Prop :=
  ∀ n, P1524978664356039743.a n = A119273 (n + 1)

end A119273

/-! ## A119273.P12261702017368756662

`(A017936(n+2)-1)²%root(A061439(n+1), 1/3)`
-/

namespace A119273.P12261702017368756662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A017936 (n + 2) - 1) ^ 2) (SequenceMachineLib.roundAway ((A061439 (n + 1) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))))

end

end A119273.P12261702017368756662

namespace A119273

/-- `(A017936(n+2)-1)²%root(A061439(n+1), 1/3)` -/
def P12261702017368756662.Spec : Prop :=
  ∀ n, P12261702017368756662.a n = A119273 (n + 1)

end A119273

/-!
# A119274: Triangle of coefficients of numerators in Padé approximation to exp(x).

The programs for A119274, the canonical program `A119274.P14893933880157717394` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119274 has offset 0).

The definition of A119274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119274.P14893933880157717394

`C(row(n), col(n))*(2*row(n)-col(n))!/row(n)!`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A119274

/-- `C(row(n), col(n))*(2*row(n)-col(n))!/row(n)!` -/
def P14893933880157717394.Spec : Prop :=
  ∀ n, P14893933880157717394.a n = (A119274 n : ℚ)

end A119274

/-! ## A119274.P11674263512922855926

`A113025(∑[2*n]%comp[∑[n]])`
-/

namespace A119274.P11674263512922855926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113025 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A119274.P11674263512922855926

namespace A119274

/-- `A113025(∑[2*n]%comp[∑[n]])` -/
def P11674263512922855926.Spec : Prop :=
  ∀ n, P11674263512922855926.a n = A119274 n

end A119274

/-! ## A119274.P17415683003978008861

`A113025(∑[char[∑[n]]]²-(n+1))`
-/

namespace A119274.P17415683003978008861
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113025 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A119274.P17415683003978008861

namespace A119274

/-- `A113025(∑[char[∑[n]]]²-(n+1))` -/
def P17415683003978008861.Spec : Prop :=
  ∀ n, P17415683003978008861.a n = A119274 n

end A119274

/-! ## A119274.P15984236889257976665

`A109767(n)/2^(n-C(∑[char[∑[n]]], 2))`
-/

namespace A119274.P15984236889257976665
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109767 n : ℚ) / (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ)

end

end A119274.P15984236889257976665

namespace A119274

/-- `A109767(n)/2^(n-C(∑[char[∑[n]]], 2))` -/
def P15984236889257976665.Spec : Prop :=
  ∀ n, P15984236889257976665.a n = (A119274 n : ℚ)

end A119274

/-! ## A119274.P12073004625446481423

`(C(comp[∑[n]]-n, 2)-n)!*A060693(n)`
-/

namespace A119274.P12073004625446481423
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)).toNat : ℤ) * A060693 n

end

end A119274.P12073004625446481423

namespace A119274

/-- `(C(comp[∑[n]]-n, 2)-n)!*A060693(n)` -/
def P12073004625446481423.Spec : Prop :=
  ∀ n, P12073004625446481423.a n = A119274 n

end A119274

/-! ## A119274.P9298054287350292045

`A001497(n)*A130321(n)`
-/

namespace A119274.P9298054287350292045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n * A130321 n

end

end A119274.P9298054287350292045

namespace A119274

/-- `A001497(n)*A130321(n)` -/
def P9298054287350292045.Spec : Prop :=
  ∀ n, P9298054287350292045.a n = A119274 n

end A119274

/-! ## A119274.P11701392203625464202

`A092392(n)*A094587(n)`
-/

namespace A119274.P11701392203625464202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 n * A094587 n

end

end A119274.P11701392203625464202

namespace A119274

/-- `A092392(n)*A094587(n)` -/
def P11701392203625464202.Spec : Prop :=
  ∀ n, P11701392203625464202.a n = A119274 n

end A119274

/-! ## A119274.P7851153861640642019

`A104684(n)*A119502(n)`
-/

namespace A119274.P7851153861640642019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104684 n * A119502 n

end

end A119274.P7851153861640642019

namespace A119274

/-- `A104684(n)*A119502(n)` -/
def P7851153861640642019.Spec : Prop :=
  ∀ n, P7851153861640642019.a n = A119274 n

end A119274

/-! ## A119274.P15243695861504696446

`A106187(n)*A155856(n)`
-/

namespace A119274.P15243695861504696446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106187 n * A155856 n

end

end A119274.P15243695861504696446

namespace A119274

/-- `A106187(n)*A155856(n)` -/
def P15243695861504696446.Spec : Prop :=
  ∀ n, P15243695861504696446.a n = A119274 n

end A119274

/-! ## A119274.P4846191919029308496

`A109767(n)/A059268(n)`
-/

namespace A119274.P4846191919029308496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109767 n : ℚ) / (A059268 n : ℚ)

end

end A119274.P4846191919029308496

namespace A119274

/-- `A109767(n)/A059268(n)` -/
def P4846191919029308496.Spec : Prop :=
  ∀ n, P4846191919029308496.a n = (A119274 n : ℚ)

end A119274

/-! ## A119274.P4916236617582490304

`A033184(n+1)*A173333(n+1)`
-/

namespace A119274.P4916236617582490304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (n + 1) * A173333 (n + 1)

end

end A119274.P4916236617582490304

namespace A119274

/-- `A033184(n+1)*A173333(n+1)` -/
def P4916236617582490304.Spec : Prop :=
  ∀ n, P4916236617582490304.a n = A119274 n

end A119274

/-! ## A119274.P17217208947684203454

`floor((n-C(∑[char[∑[n+1]]], 2))!/((n-C(∑[char[∑[n]]], 2))!*(C(comp[∑[n]]-n, 2)-(n+1))!))/(n-C(∑[char[∑[n]]], 2))!*C(∑[2*char[∑[n+1]]], n-C(∑[char[∑[n+1]]], 2))/C(∑[2*char[∑[n+1]]], n-C(∑[char[∑[n]]], 2))*(C(comp[∑[n]]-n, 2)-(n+1))!`
-/

namespace A119274.P17217208947684203454
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f11 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f10 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f11 j

open Classical in
def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f10 j = n then 1 else 0

def f14 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f13 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f14 j

open Classical in
def f12 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f13 j = n then 1 else 0)

def f17 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f16 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f17 j

open Classical in
def f15 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f16 j = n then 1 else 0

def f20 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f19 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f20 j

open Classical in
def f18 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f19 j = n then 1 else 0)

def f23 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f22 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f23 j

open Classical in
def f21 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f22 j = n then 1 else 0

def f25 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f24 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f25 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat * Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)⌋ : ℚ) / (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f9 j) 2 : ℤ)).toNat : ℚ) * (Nat.choose (∑ j ∈ Finset.range (n + 1), f12 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f15 j) 2 : ℤ)).toNat : ℚ) / (Nat.choose (∑ j ∈ Finset.range (n + 1), f18 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f21 j) 2 : ℤ)).toNat : ℚ) * (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f24 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)

end

end A119274.P17217208947684203454

namespace A119274

/-- `floor((n-C(∑[char[∑[n+1]]], 2))!/((n-C(∑[char[∑[n]]], 2))!*(C(comp[∑[n]]-n, 2)-(n+1))!))/(n-C(∑[char[∑[n]]], 2))!*C(∑[2*char[∑[n+1]]], n-C(∑[char[∑[n+1]]], 2))/C(∑[2*char[∑[n+1]]], n-C(∑[char[∑[n]]], 2))*(C(comp[∑[n]]-n, 2)-(n+1))!` -/
def P17217208947684203454.Spec : Prop :=
  ∀ n, P17217208947684203454.a n = (A119274 n : ℚ)

end A119274

/-! ## A119274.P3282821992377921297

`(2*row(n)-col(n))!/(col(n)!*(row(n)-col(n))!)`
-/

namespace A119274.P3282821992377921297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((2 * SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) * Nat.factorial ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ)

end

end A119274.P3282821992377921297

namespace A119274

/-- `(2*row(n)-col(n))!/(col(n)!*(row(n)-col(n))!)` -/
def P3282821992377921297.Spec : Prop :=
  ∀ n, P3282821992377921297.a n = (A119274 n : ℚ)

end A119274

/-!
# A119275: Inverse of triangle related to Padé approximation of exp(x).

The programs for A119275, the canonical program `A119275.P1197823847219350886` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119275 has offset 0).

The definition of A119275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119275.P16263460390648933918

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A104556(n)`
-/

namespace A119275.P16263460390648933918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A104556 n : ℚ)

end

end A119275.P16263460390648933918

namespace A119275

/-- `2^(C(comp[∑[n]]-n, 2)-(n+1))*A104556(n)` -/
def P16263460390648933918.Spec : Prop :=
  ∀ n, P16263460390648933918.a n = (A119275 n : ℚ)

end A119275

/-! ## A119275.P1197823847219350886

`A104556(n)*A130321(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A119275

/-- `A104556(n)*A130321(n)` -/
def P1197823847219350886.Spec : Prop :=
  ∀ n, P1197823847219350886.a n = A119275 n

theorem P1197823847219350886.correct : P1197823847219350886.Spec := by
  intro n
  simp only [A119275]

end A119275

/-! ## A119275.P7907820170986598700

`sqrt(A262616(n))*A104556(n)`
-/

namespace A119275.P7907820170986598700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A104556 n : ℝ)

end

end A119275.P7907820170986598700

namespace A119275

/-- `sqrt(A262616(n))*A104556(n)` -/
def P7907820170986598700.Spec : Prop :=
  ∀ n, P7907820170986598700.a n = (A119275 n : ℝ)

end A119275

/-! ## A119275.P5532324615321295903

`A112227(A065562(n+1)+1)`
-/

namespace A119275.P5532324615321295903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112227 (A065562 (n + 1) + 1).toNat

end

end A119275.P5532324615321295903

namespace A119275

/-- `A112227(A065562(n+1)+1)` -/
def P5532324615321295903.Spec : Prop :=
  ∀ n, P5532324615321295903.a n = A119275 n

end A119275

/-! ## A119275.P7566184317972052175

`A062001(n+1)*A104556(n)`
-/

namespace A119275.P7566184317972052175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062001 (n + 1) * A104556 n

end

end A119275.P7566184317972052175

namespace A119275

/-- `A062001(n+1)*A104556(n)` -/
def P7566184317972052175.Spec : Prop :=
  ∀ n, P7566184317972052175.a n = A119275 n

end A119275

/-! ## A119275.P2343810111596146092

`A104556(n)*A152072(n+1)`
-/

namespace A119275.P2343810111596146092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104556 n * A152072 (n + 1)

end

end A119275.P2343810111596146092

namespace A119275

/-- `A104556(n)*A152072(n+1)` -/
def P2343810111596146092.Spec : Prop :=
  ∀ n, P2343810111596146092.a n = A119275 n

end A119275

/-! ## A119275.P6032574582525983369

`A000079(A025581(n))*A104556(n)`
-/

namespace A119275.P6032574582525983369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A104556 n

end

end A119275.P6032574582525983369

namespace A119275

/-- `A000079(A025581(n))*A104556(n)` -/
def P6032574582525983369.Spec : Prop :=
  ∀ n, P6032574582525983369.a n = A119275 n

end A119275

/-! ## A119275.P5514169108759117721

`A104556(n)*A209434(n)`
-/

namespace A119275.P5514169108759117721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104556 n * A209434 n

end

end A119275.P5514169108759117721

namespace A119275

/-- `A104556(n)*A209434(n)` -/
def P5514169108759117721.Spec : Prop :=
  ∀ n, P5514169108759117721.a n = A119275 n

end A119275

/-! ## A119275.P6749695500368584779

`A094587(n)*A117362(n)`
-/

namespace A119275.P6749695500368584779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A117362 n

end

end A119275.P6749695500368584779

namespace A119275

/-- `A094587(n)*A117362(n)` -/
def P6749695500368584779.Spec : Prop :=
  ∀ n, P6749695500368584779.a n = A119275 n

end A119275

/-! ## A119275.P10765234274994947085

`A104556(n)*A209439(n)`
-/

namespace A119275.P10765234274994947085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104556 n * A209439 n

end

end A119275.P10765234274994947085

namespace A119275

/-- `A104556(n)*A209439(n)` -/
def P10765234274994947085.Spec : Prop :=
  ∀ n, P10765234274994947085.a n = A119275 n

end A119275

/-!
# A119281: Number of counting rods to represent n in the ancient Chinese rod numeral system.

The programs for A119281, the canonical program `A119281.P4500062069654907476` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119281 has offset 0).

The definition of A119281 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A102677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A119281.P4500062069654907476

`A007953(n)-4*A102677(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A119281

/-- `A007953(n)-4*A102677(n)` -/
def P4500062069654907476.Spec : Prop :=
  ∀ n, P4500062069654907476.a n = A119281 n

theorem P4500062069654907476.correct : P4500062069654907476.Spec := by
  intro n
  simp only [A119281]

end A119281

/-! ## A119281.P9961274416887960304

`∑{digits}[n, (#-2)%4+2]`
-/

namespace A119281.P9961274416887960304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Int.tmod ((x : ℤ) - 2) 4 + 2).sum

end

end A119281.P9961274416887960304

namespace A119281

/-- `∑{digits}[n, (#-2)%4+2]` -/
def P9961274416887960304.Spec : Prop :=
  ∀ n, P9961274416887960304.a n = A119281 n

end A119281

/-! ## A119281.P5646220529369415493

`∑{digits}[n, 2-(2-#)%4]`
-/

namespace A119281.P5646220529369415493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 - Int.tmod (2 - (x : ℤ)) 4).sum

end

end A119281.P5646220529369415493

namespace A119281

/-- `∑{digits}[n, 2-(2-#)%4]` -/
def P5646220529369415493.Spec : Prop :=
  ∀ n, P5646220529369415493.a n = A119281 n

end A119281

/-! ## A119281.P3313096155259395986

`∑{digits}[n, #]-4*∑{digits}[n, floor(#/6)]`
-/

namespace A119281.P3313096155259395986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 4 * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 6⌋).sum

end

end A119281.P3313096155259395986

namespace A119281

/-- `∑{digits}[n, #]-4*∑{digits}[n, floor(#/6)]` -/
def P3313096155259395986.Spec : Prop :=
  ∀ n, P3313096155259395986.a n = A119281 n

end A119281

/-! ## A119281.P1653571087023740851

`∑{digits}[n, A070772(#)]`
-/

namespace A119281.P1653571087023740851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A070772 x).sum

end

end A119281.P1653571087023740851

namespace A119281

/-- `∑{digits}[n, A070772(#)]` -/
def P1653571087023740851.Spec : Prop :=
  ∀ n, P1653571087023740851.a n = A119281 n

end A119281

/-! ## A119281.P4518656878107997769

`∑{digits}[n, A094937(#)]`
-/

namespace A119281.P4518656878107997769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A094937 x).sum

end

end A119281.P4518656878107997769

namespace A119281

/-- `∑{digits}[n, A094937(#)]` -/
def P4518656878107997769.Spec : Prop :=
  ∀ n, P4518656878107997769.a n = A119281 n

end A119281

/-! ## A119281.P5703646140090176007

`∑{digits}[n, A215089(#)]`
-/

namespace A119281.P5703646140090176007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A215089 x).sum

end

end A119281.P5703646140090176007

namespace A119281

/-- `∑{digits}[n, A215089(#)]` -/
def P5703646140090176007.Spec : Prop :=
  ∀ n, P5703646140090176007.a n = A119281 n

end A119281

/-! ## A119281.P12607991983867678817

`∑{digits}[n, A329243(#+1)]`
-/

namespace A119281.P12607991983867678817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A329243 (x + 1)).sum

end

end A119281.P12607991983867678817

namespace A119281

/-- `∑{digits}[n, A329243(#+1)]` -/
def P12607991983867678817.Spec : Prop :=
  ∀ n, P12607991983867678817.a n = A119281 n

end A119281

/-!
# A119282: Alternating sum of the first n Fibonacci numbers.

The programs for A119282, the canonical program `A119282.P657726413145377931` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119282 has offset 0).

The definition of A119282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A119282.P657726413145377931

`a(n-2)-a(n-1)-1` with `a(0)=0, a(1)=-1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A119282

/-- `a(n-2)-a(n-1)-1` -/
def P657726413145377931.Spec : Prop :=
  ∀ n, P657726413145377931.a n = A119282 n

theorem P657726413145377931.correct : P657726413145377931.Spec := by
  intro n
  simp only [A119282]

end A119282

/-! ## A119282.P11442292310477806018

`ogf(-x/(1-2x^2+x^3))`
-/

namespace A119282.P11442292310477806018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1] [1, 0, -2, 1] n

end

end A119282.P11442292310477806018

namespace A119282

/-- `ogf(-x/(1-2x^2+x^3))` -/
def P11442292310477806018.Spec : Prop :=
  ∀ n, P11442292310477806018.a n = A119282 n

end A119282

/-! ## A119282.P2840777422270732438

`-A355020(abs(1-n))`
-/

namespace A119282.P2840777422270732438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A355020 |1 - (n : ℤ)|.toNat

end

end A119282.P2840777422270732438

namespace A119282

/-- `-A355020(abs(1-n))` -/
def P2840777422270732438.Spec : Prop :=
  ∀ n, P2840777422270732438.a n = A119282 n

end A119282

/-! ## A119282.P1540408043551399389

`A051792(Δ[n²])-1`
-/

namespace A119282.P1540408043551399389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051792 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A119282.P1540408043551399389

namespace A119282

/-- `A051792(Δ[n²])-1` -/
def P1540408043551399389.Spec : Prop :=
  ∀ n, P1540408043551399389.a n = A119282 n

end A119282

/-! ## A119282.P12934328309440014249

`A033999(n)*A212804(n)-1`
-/

namespace A119282.P12934328309440014249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A212804 n - 1

end

end A119282.P12934328309440014249

namespace A119282

/-- `A033999(n)*A212804(n)-1` -/
def P12934328309440014249.Spec : Prop :=
  ∀ n, P12934328309440014249.a n = A119282 n

end A119282

/-! ## A119282.P440106836491305071

`1-A033999(n+1)*A078024(n+1)`
-/

namespace A119282.P440106836491305071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033999 (n + 1) * A078024 (n + 1)

end

end A119282.P440106836491305071

namespace A119282

/-- `1-A033999(n+1)*A078024(n+1)` -/
def P440106836491305071.Spec : Prop :=
  ∀ n, P440106836491305071.a n = A119282 n

end A119282

/-! ## A119282.P9049916926375593617

`A033999(n+1)*A152163(n+1)-1`
-/

namespace A119282.P9049916926375593617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A152163 (n + 1) - 1

end

end A119282.P9049916926375593617

namespace A119282

/-- `A033999(n+1)*A152163(n+1)-1` -/
def P9049916926375593617.Spec : Prop :=
  ∀ n, P9049916926375593617.a n = A119282 n

end A119282

/-! ## A119282.P5699491739044647775

`(A078024(n+1)+A033999(n))*A033999(n)`
-/

namespace A119282.P5699491739044647775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078024 (n + 1) + A033999 n) * A033999 n

end

end A119282.P5699491739044647775

namespace A119282

/-- `(A078024(n+1)+A033999(n))*A033999(n)` -/
def P5699491739044647775.Spec : Prop :=
  ∀ n, P5699491739044647775.a n = A119282 n

end A119282

/-! ## A119282.P4078078401396514387

`∑[a(n-2)-a(n-1)]` with `a(0)=0, a(1)=-1`
-/

namespace A119282.P4078078401396514387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119282.P4078078401396514387

namespace A119282

/-- `∑[a(n-2)-a(n-1)]` -/
def P4078078401396514387.Spec : Prop :=
  ∀ n, P4078078401396514387.a n = A119282 n

end A119282

/-! ## A119282.P6283626324637255900

`∑[A355020(n)-1]`
-/

namespace A119282.P6283626324637255900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355020 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119282.P6283626324637255900

namespace A119282

/-- `∑[A355020(n)-1]` -/
def P6283626324637255900.Spec : Prop :=
  ∀ n, P6283626324637255900.a n = A119282 n

end A119282

/-! ## A119282.P12693785994099949617

`∑[(-1)^n*A000045(n)]`
-/

namespace A119282.P12693785994099949617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119282.P12693785994099949617

namespace A119282

/-- `∑[(-1)^n*A000045(n)]` -/
def P12693785994099949617.Spec : Prop :=
  ∀ n, P12693785994099949617.a n = A119282 n

end A119282

/-! ## A119282.P2277589798254274531

`∑[A000045(n)*A033999(n)]`
-/

namespace A119282.P2277589798254274531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119282.P2277589798254274531

namespace A119282

/-- `∑[A000045(n)*A033999(n)]` -/
def P2277589798254274531.Spec : Prop :=
  ∀ n, P2277589798254274531.a n = A119282 n

end A119282

/-! ## A119282.P3588807340710729269

`∑[A000045(n)*A062157(n+1)]`
-/

namespace A119282.P3588807340710729269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A062157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119282.P3588807340710729269

namespace A119282

/-- `∑[A000045(n)*A062157(n+1)]` -/
def P3588807340710729269.Spec : Prop :=
  ∀ n, P3588807340710729269.a n = A119282 n

end A119282

/-! ## A119282.P6865327842503675485

`∑[A000045(n)*A009001(2*n)]`
-/

namespace A119282.P6865327842503675485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A009001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119282.P6865327842503675485

namespace A119282

/-- `∑[A000045(n)*A009001(2*n)]` -/
def P6865327842503675485.Spec : Prop :=
  ∀ n, P6865327842503675485.a n = A119282 n

end A119282

/-! ## A119282.P13296752720077736161

`Δ[A113312(n+1)]-1`
-/

namespace A119282.P13296752720077736161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A119282.P13296752720077736161

namespace A119282

/-- `Δ[A113312(n+1)]-1` -/
def P13296752720077736161.Spec : Prop :=
  ∀ n, P13296752720077736161.a n = A119282 n

end A119282

/-! ## A119282.P3800136860342706693

`A097131(n)-A001611(n)`
-/

namespace A119282.P3800136860342706693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097131 n - A001611 n

end

end A119282.P3800136860342706693

namespace A119282

/-- `A097131(n)-A001611(n)` -/
def P3800136860342706693.Spec : Prop :=
  ∀ n, P3800136860342706693.a n = A119282 n

end A119282

/-! ## A119282.P4360308442827172642

`A355020(n)-A112469(n)`
-/

namespace A119282.P4360308442827172642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355020 n - A112469 n

end

end A119282.P4360308442827172642

namespace A119282

/-- `A355020(n)-A112469(n)` -/
def P4360308442827172642.Spec : Prop :=
  ∀ n, P4360308442827172642.a n = A119282 n

end A119282

/-!
# A119283: Alternating sum of the squares of the first n Fibonacci numbers.

The programs for A119283, the canonical program `A119283.P13203872640390937685` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119283 has offset 0).

The definition of A119283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119283.P15541518863880739951

`ogf((-x-x^2)/(1+x-4x^2+x^3+x^4))`
-/

namespace A119283.P15541518863880739951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, -1] [1, 1, -4, 1, 1] n

end

end A119283.P15541518863880739951

namespace A119283

/-- `ogf((-x-x^2)/(1+x-4x^2+x^3+x^4))` -/
def P15541518863880739951.Spec : Prop :=
  ∀ n, P15541518863880739951.a n = A119283 n

end A119283

/-! ## A119283.P6731158464893239980

`∑[-(ceil(ϕ²*a(n-1))+1)]` with `a(0)=0`
-/

namespace A119283.P6731158464893239980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  -(⌈Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌉ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119283.P6731158464893239980

namespace A119283

/-- `∑[-(ceil(ϕ²*a(n-1))+1)]` -/
def P6731158464893239980.Spec : Prop :=
  ∀ n, P6731158464893239980.a n = A119283 n

end A119283

/-! ## A119283.P13203872640390937685

`∑[(-1)^n*A007598(n)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A119283

/-- `∑[(-1)^n*A007598(n)]` -/
def P13203872640390937685.Spec : Prop :=
  ∀ n, P13203872640390937685.a n = A119283 n

theorem P13203872640390937685.correct : P13203872640390937685.Spec := by
  intro n
  simp only [A119283]

end A119283

/-! ## A119283.P2746653558938151747

`∑[A000045(n)²*(-1)^n]`
-/

namespace A119283.P2746653558938151747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119283.P2746653558938151747

namespace A119283

/-- `∑[A000045(n)²*(-1)^n]` -/
def P2746653558938151747.Spec : Prop :=
  ∀ n, P2746653558938151747.a n = A119283 n

theorem P2746653558938151747.correct : P2746653558938151747.Spec := by
  intro n
  simp only [A119283, Nat.add_sub_cancel, A119283.P2746653558938151747.f1, A119283.P2746653558938151747.a, A119283.P13203872640390937685.f1, A119283.P13203872640390937685.a, A000045, A000045.P11838749114346432762.a, A007598, A007598.P12226372241189459830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119283

/-! ## A119283.P9777435986986075140

`∑[A212804(n+1)²*(-1)^n]`
-/

namespace A119283.P9777435986986075140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) ^ 2 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119283.P9777435986986075140

namespace A119283

/-- `∑[A212804(n+1)²*(-1)^n]` -/
def P9777435986986075140.Spec : Prop :=
  ∀ n, P9777435986986075140.a n = A119283 n

end A119283

/-! ## A119283.P16166695145021935131

`∑[(1-A001611(n))²*(-1)^n]`
-/

namespace A119283.P16166695145021935131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001611 n) ^ 2 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119283.P16166695145021935131

namespace A119283

/-- `∑[(1-A001611(n))²*(-1)^n]` -/
def P16166695145021935131.Spec : Prop :=
  ∀ n, P16166695145021935131.a n = A119283 n

theorem P16166695145021935131.correct : P16166695145021935131.Spec := by
  intro n
  simp only [A119283, Nat.add_sub_cancel, A119283.P16166695145021935131.f1, A119283.P16166695145021935131.a, A119283.P13203872640390937685.f1, A119283.P13203872640390937685.a, A001611, A001611.P16593652898942925329.a, A007598, A007598.P12226372241189459830.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119283

/-! ## A119283.P10515890358732485833

`∑[A007598(n)*A033999(n)]`
-/

namespace A119283.P10515890358732485833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119283.P10515890358732485833

namespace A119283

/-- `∑[A007598(n)*A033999(n)]` -/
def P10515890358732485833.Spec : Prop :=
  ∀ n, P10515890358732485833.a n = A119283 n

theorem P10515890358732485833.correct : P10515890358732485833.Spec := by
  intro n
  simp only [A119283, Nat.add_sub_cancel, A119283.P10515890358732485833.f1, A119283.P10515890358732485833.a, A119283.P13203872640390937685.f1, A119283.P13203872640390937685.a, A007598, A007598.P12226372241189459830.a, A033999, A033999.P17703899380244199787.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119283

/-! ## A119283.P2244718034915549964

`∑[A007598(n)*A056594(2*n)]`
-/

namespace A119283.P2244718034915549964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n * A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119283.P2244718034915549964

namespace A119283

/-- `∑[A007598(n)*A056594(2*n)]` -/
def P2244718034915549964.Spec : Prop :=
  ∀ n, P2244718034915549964.a n = A119283 n

end A119283

/-! ## A119283.P8699445182931141332

`-∑[(A002062(n)-n)*Δ[A112469(n)]]`
-/

namespace A119283.P8699445182931141332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112469 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002062 n - (n : ℤ)) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119283.P8699445182931141332

namespace A119283

/-- `-∑[(A002062(n)-n)*Δ[A112469(n)]]` -/
def P8699445182931141332.Spec : Prop :=
  ∀ n, P8699445182931141332.a n = A119283 n

end A119283

/-! ## A119283.P8342441578508167068

`∑[(1-A010673(n))*A000045(n)*A000045(n)]`
-/

namespace A119283.P8342441578508167068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * A000045 n * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119283.P8342441578508167068

namespace A119283

/-- `∑[(1-A010673(n))*A000045(n)*A000045(n)]` -/
def P8342441578508167068.Spec : Prop :=
  ∀ n, P8342441578508167068.a n = A119283 n

end A119283

/-! ## A119283.P11543025726431815606

`2*A214884(n)-A214885(n)`
-/

namespace A119283.P11543025726431815606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214884 n - A214885 n

end

end A119283.P11543025726431815606

namespace A119283

/-- `2*A214884(n)-A214885(n)` -/
def P11543025726431815606.Spec : Prop :=
  ∀ n, P11543025726431815606.a n = A119283 n

end A119283

/-! ## A119283.P13893270707458045079

`∑[A099496(n)-∑[A099496(n)]]`
-/

namespace A119283.P13893270707458045079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119283.P13893270707458045079

namespace A119283

/-- `∑[A099496(n)-∑[A099496(n)]]` -/
def P13893270707458045079.Spec : Prop :=
  ∀ n, P13893270707458045079.a n = A119283 n

end A119283

/-! ## A119283.P17047075959632083366

`∑[A333378(2*n+1)-∑[A333378(2*n+1)]]`
-/

namespace A119283.P17047075959632083366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333378 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333378 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119283.P17047075959632083366

namespace A119283

/-- `∑[A333378(2*n+1)-∑[A333378(2*n+1)]]` -/
def P17047075959632083366.Spec : Prop :=
  ∀ n, P17047075959632083366.a n = A119283 n

end A119283

/-! ## A119283.P5447500457199140894

`∑[A007598(2*n)/A075150(n)]`
-/

namespace A119283.P5447500457199140894
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007598 (2 * n) : ℚ) / (A075150 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119283.P5447500457199140894

namespace A119283

/-- `∑[A007598(2*n)/A075150(n)]` -/
def P5447500457199140894.Spec : Prop :=
  ∀ n, P5447500457199140894.a n = (A119283 n : ℚ)

end A119283

/-!
# A119284: Alternating sum of the cubes of the first n Fibonacci numbers.

The programs for A119284, the canonical program `A119284.P9734605523275152558` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119284 has offset 0).

The definition of A119284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119284.P9734605523275152558

`∑[∑[a(n-2)-a(n-1)]^3]` with `a(0)=0, a(1)=-1, a(2)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A119284

/-- `∑[∑[a(n-2)-a(n-1)]^3]` -/
def P9734605523275152558.Spec : Prop :=
  ∀ n, P9734605523275152558.a n = A119284 n

theorem P9734605523275152558.correct : P9734605523275152558.Spec := by
  intro n
  simp only [A119284]

end A119284

/-! ## A119284.P6203026588762521541

`∑[(-1)^n*A056570(n)]`
-/

namespace A119284.P6203026588762521541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A056570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119284.P6203026588762521541

namespace A119284

/-- `∑[(-1)^n*A056570(n)]` -/
def P6203026588762521541.Spec : Prop :=
  ∀ n, P6203026588762521541.a n = A119284 n

end A119284

/-! ## A119284.P889585774372106702

`∑[-(A119282(n+1)+1)^3]`
-/

namespace A119284.P889585774372106702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A119282 (n + 1) + 1) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119284.P889585774372106702

namespace A119284

/-- `∑[-(A119282(n+1)+1)^3]` -/
def P889585774372106702.Spec : Prop :=
  ∀ n, P889585774372106702.a n = A119284 n

end A119284

/-! ## A119284.P5722122998685540234

`∑[((-1)^n*A000045(n))^3]`
-/

namespace A119284.P5722122998685540234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A000045 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119284.P5722122998685540234

namespace A119284

/-- `∑[((-1)^n*A000045(n))^3]` -/
def P5722122998685540234.Spec : Prop :=
  ∀ n, P5722122998685540234.a n = A119284 n

end A119284

/-! ## A119284.P7900837702684394453

`∑[A000045(n)^3*A033999(n)]`
-/

namespace A119284.P7900837702684394453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 3 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119284.P7900837702684394453

namespace A119284

/-- `∑[A000045(n)^3*A033999(n)]` -/
def P7900837702684394453.Spec : Prop :=
  ∀ n, P7900837702684394453.a n = A119284 n

end A119284

/-! ## A119284.P7394678691510785238

`∑[Δ[A119282(n+1)+A119282(n)]^3]`
-/

namespace A119284.P7394678691510785238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 (n + 1) + A119282 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119284.P7394678691510785238

namespace A119284

/-- `∑[Δ[A119282(n+1)+A119282(n)]^3]` -/
def P7394678691510785238.Spec : Prop :=
  ∀ n, P7394678691510785238.a n = A119284 n

end A119284

/-! ## A119284.P17532899027567526113

`∑[A056570(n)/A033999(n²)]`
-/

namespace A119284.P17532899027567526113
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056570 n : ℚ) / (A033999 (n ^ 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119284.P17532899027567526113

namespace A119284

/-- `∑[A056570(n)/A033999(n²)]` -/
def P17532899027567526113.Spec : Prop :=
  ∀ n, P17532899027567526113.a n = (A119284 n : ℚ)

end A119284

/-!
# A119285: Alternating sum of the fourth powers of the first n Fibonacci numbers.

The programs for A119285, the canonical program `A119285.P16234836750788060480` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A119285 has offset 0).

The definition of A119285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A119285.P16234836750788060480

`∑[(1-A001611(n))²²*(-1)^n]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A119285

/-- `∑[(1-A001611(n))²²*(-1)^n]` -/
def P16234836750788060480.Spec : Prop :=
  ∀ n, P16234836750788060480.a n = A119285 n

theorem P16234836750788060480.correct : P16234836750788060480.Spec := by
  intro n
  simp only [A119285]

end A119285

/-! ## A119285.P8116951389379599351

`∑[A033999(n)*A056571(n)]`
-/

namespace A119285.P8116951389379599351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A056571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119285.P8116951389379599351

namespace A119285

/-- `∑[A033999(n)*A056571(n)]` -/
def P8116951389379599351.Spec : Prop :=
  ∀ n, P8116951389379599351.a n = A119285 n

theorem P8116951389379599351.correct : P8116951389379599351.Spec := by
  intro n
  simp only [A119285, Nat.add_sub_cancel, A119285.P8116951389379599351.f1, A119285.P8116951389379599351.a, A119285.P16234836750788060480.f1, A119285.P16234836750788060480.a, A001611, A001611.P16593652898942925329.a, A033999, A033999.P17703899380244199787.a, A056571, A056571.P16308411225797373877.a, A000045, A000045.P11838749114346432762.a, A007598, A007598.P12226372241189459830.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119285

/-! ## A119285.P3874198511245332678

`∑[A007598(n)²*A033999(n)]`
-/

namespace A119285.P3874198511245332678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n ^ 2 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119285.P3874198511245332678

namespace A119285

/-- `∑[A007598(n)²*A033999(n)]` -/
def P3874198511245332678.Spec : Prop :=
  ∀ n, P3874198511245332678.a n = A119285 n

theorem P3874198511245332678.correct : P3874198511245332678.Spec := by
  intro n
  simp only [A119285, Nat.add_sub_cancel, A119285.P3874198511245332678.f1, A119285.P3874198511245332678.a, A119285.P16234836750788060480.f1, A119285.P16234836750788060480.a, A001611, A001611.P16593652898942925329.a, A007598, A007598.P12226372241189459830.a, A033999, A033999.P17703899380244199787.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119285

/-! ## A119285.P11079148917661830869

`∑[A000045(n)²²*A033999(n)]`
-/

namespace A119285.P11079148917661830869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 n ^ 2) ^ 2 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119285.P11079148917661830869

namespace A119285

/-- `∑[A000045(n)²²*A033999(n)]` -/
def P11079148917661830869.Spec : Prop :=
  ∀ n, P11079148917661830869.a n = A119285 n

theorem P11079148917661830869.correct : P11079148917661830869.Spec := by
  intro n
  simp only [A119285, Nat.add_sub_cancel, A119285.P11079148917661830869.f1, A119285.P11079148917661830869.a, A119285.P16234836750788060480.f1, A119285.P16234836750788060480.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A119285

/-!
# A119286: Alternating sum of the fifth powers of the first n Fibonacci numbers.

The programs for A119286, there is no canonical definition to state claims against.
-/

/-! ## A119286.P918642914466341181

`∑[((-1)^n*A000045(n))^5]`
-/

namespace A119286.P918642914466341181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A000045 n) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119286.P918642914466341181

/-! ## A119286.P5895630109162571793

`∑[A033999(n)*A056572(n)]`
-/

namespace A119286.P5895630109162571793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A056572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119286.P5895630109162571793

/-! ## A119286.P1212649770774033976

`∑[A009531(2*n+1)*A056572(n)]`
-/

namespace A119286.P1212649770774033976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A056572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119286.P1212649770774033976

/-!
# A119287: Alternating sum of the sixth powers of the first n Fibonacci numbers.

The programs for A119287, there is no canonical definition to state claims against.
-/

/-! ## A119287.P11186402634232963611

`∑[round(ϕ^(2*n)/5)^3*(-1)^n]`
-/

namespace A119287.P11186402634232963611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (2 * n) / 5) ^ 3 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A119287.P11186402634232963611

/-!
# A119288: a(n) is the second smallest prime factor of n, or 1 if n is a prime power.

The programs for A119288, there is no canonical definition to state claims against.
-/

/-! ## A119288.P12851441231364368095

`A014673(∏{p}[n+1, #])`
-/

namespace A119288.P12851441231364368095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A119288.P12851441231364368095

/-! ## A119288.P18215567510853586741

`A292269(∏{p}[n+1, #])`
-/

namespace A119288.P18215567510853586741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A119288.P18215567510853586741

/-! ## A119288.P4805097648554930553

`A014673(A007947(n+1))`
-/

namespace A119288.P4805097648554930553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A007947 (n + 1)).toNat

end

end A119288.P4805097648554930553

/-! ## A119288.P13526509477528006480

`A020639(A028234(n+1))`
-/

namespace A119288.P13526509477528006480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028234 (n + 1)).toNat

end

end A119288.P13526509477528006480

/-! ## A119288.P14318778677204888933

`A014673(A334085(n+1))`
-/

namespace A119288.P14318778677204888933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A334085 (n + 1)).toNat

end

end A119288.P14318778677204888933

/-! ## A119288.P14571512343264322509

`A014673(A340679(n+1))`
-/

namespace A119288.P14571512343264322509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A340679 (n + 1)).toNat

end

end A119288.P14571512343264322509

/-! ## A119288.P542425909465951497

`A020639(A381639(n+1))`
-/

namespace A119288.P542425909465951497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A381639 (n + 1)).toNat

end

end A119288.P542425909465951497

/-! ## A119288.P9251099606274752921

`A014673(2*A028234(n+1))`
-/

namespace A119288.P9251099606274752921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A028234 (n + 1)).toNat

end

end A119288.P9251099606274752921

/-! ## A119288.P4980925846974748940

`A292269(2*A028234(n+1))`
-/

namespace A119288.P4980925846974748940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (2 * A028234 (n + 1)).toNat

end

end A119288.P4980925846974748940

/-! ## A119288.P7728721758432689303

`A292269(2*A381639(n+1))`
-/

namespace A119288.P7728721758432689303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292269 (2 * A381639 (n + 1)).toNat

end

end A119288.P7728721758432689303

/-! ## A119288.P16657796960095204237

`A020639(A032742(∏{p}[n+1, #]))`
-/

namespace A119288.P16657796960095204237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A032742 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A119288.P16657796960095204237

/-! ## A119288.P3332807373821669653

`A028233(A028234(∏{p}[n+1, #]))`
-/

namespace A119288.P3332807373821669653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A028234 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A119288.P3332807373821669653

/-! ## A119288.P8870602558533758281

`A277708(∏{p}[A028234(n+1), #])`
-/

namespace A119288.P8870602558533758281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277708 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A119288.P8870602558533758281

/-! ## A119288.P15337410690873458885

`A020639((n+1)/A028233(n+1))`
-/

namespace A119288.P15337410690873458885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028233 (n + 1) : ℚ))).toNat

end

end A119288.P15337410690873458885

/-! ## A119288.P1057564377266307378

`A078701((n+1)/A028233(n+1))`
-/

namespace A119288.P1057564377266307378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028233 (n + 1) : ℚ))).toNat

end

end A119288.P1057564377266307378

/-! ## A119288.P1019750172629544978

`A020639(∏{p}[n+1, #]/A020639(n+1))`
-/

namespace A119288.P1019750172629544978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A119288.P1019750172629544978

/-! ## A119288.P9527182800182272547

`A020639(gcd(n+1, ∏{d}[n+1, A006530(#)]/(n+1)))`
-/

namespace A119288.P9527182800182272547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), A006530 d : ℤ) : ℚ) / (n + 1 : ℚ))))

end

end A119288.P9527182800182272547

/-!
# A119289: Prime numbers p such that there is no prime between 10*p and 10*p+9 inclusive.

The programs for A119289, there is no canonical definition to state claims against.
-/

/-! ## A119289.P1702715455031757172

`p?[A032352(n+1)]`
-/

namespace A119289.P1702715455031757172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A119289.P1702715455031757172

/-! ## A119289.P682191073794635169

`record[A006530(A032352(n+4))]`
-/

namespace A119289.P682191073794635169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A032352 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A119289.P682191073794635169

/-! ## A119289.P15634025304748805597

`filter[A032352(n+1), A010051(#)]`
-/

namespace A119289.P15634025304748805597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A119289.P15634025304748805597

/-! ## A119289.P6851557675811464261

`filter[A032352(n+1), A323153(#)]`
-/

namespace A119289.P6851557675811464261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A119289.P6851557675811464261

/-! ## A119289.P6474112269367550698

`∩[A000040(n+1), A032352(n+1)]`
-/

namespace A119289.P6474112269367550698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119289.P6474112269367550698

/-! ## A119289.P2466945352004477322

`∩[A004139(n+1), A032352(n+1)]`
-/

namespace A119289.P2466945352004477322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119289.P2466945352004477322

/-! ## A119289.P4398419733816713713

`∩[A006005(n+1), A032352(n+1)]`
-/

namespace A119289.P4398419733816713713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119289.P4398419733816713713

/-! ## A119289.P5661766164627178005

`∩[A008578(n+1), A032352(n+1)]`
-/

namespace A119289.P5661766164627178005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119289.P5661766164627178005

/-! ## A119289.P6310789835322616060

`∩[A032352(n+1), A033946(n+1)]`
-/

namespace A119289.P6310789835322616060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119289.P6310789835322616060

/-! ## A119289.P2642633205419513123

`∩[A032352(n+1), A045319(n+1)]`
-/

namespace A119289.P2642633205419513123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119289.P2642633205419513123

/-! ## A119289.P18370449165552760112

`∩[A032352(n+1), A045344(n+1)]`
-/

namespace A119289.P18370449165552760112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119289.P18370449165552760112

/-! ## A119289.P12949894238161784041

`∩[A032352(n+1), A046022(n+1)]`
-/

namespace A119289.P12949894238161784041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119289.P12949894238161784041

/-! ## A119289.P2337307748702837650

`∩[A032352(n+1), A051948(n+1)]`
-/

namespace A119289.P2337307748702837650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119289.P2337307748702837650

/-! ## A119289.P17398188661149237602

`∩[A032352(n+1), A053813(n+1)]`
-/

namespace A119289.P17398188661149237602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119289.P17398188661149237602

/-! ## A119289.P1636301617454532733

`∩[A032352(n+1), A060634(n+1)]`
-/

namespace A119289.P1636301617454532733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119289.P1636301617454532733

/-! ## A119289.P16786497084229432264

`∩[A032352(n+1), A064728(n+1)]`
-/

namespace A119289.P16786497084229432264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119289.P16786497084229432264

/-! ## A119289.P17504677872835907612

`∩[A032352(n+1), A065091(n+1)]`
-/

namespace A119289.P17504677872835907612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119289.P17504677872835907612

/-! ## A119289.P7674672638845559299

`∩[A065396(n+1), A032352(n+1)]`
-/

namespace A119289.P7674672638845559299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119289.P7674672638845559299

/-! ## A119289.P16761669850989489013

`∩[A032352(n+1), A067126(n+1)]`
-/

namespace A119289.P16761669850989489013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119289.P16761669850989489013

/-!
# A119290: a(n) is the total number of digits in the first 10^n primes.

The programs for A119290, there is no canonical definition to state claims against.
-/

/-! ## A119290.P12659384932440465182

`A068670(10^n)`
-/

namespace A119290.P12659384932440465182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068670 (10 ^ n)

end

end A119290.P12659384932440465182

