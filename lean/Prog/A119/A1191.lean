import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C003
import Seq.B001.C011
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C001
import Seq.B004.C002
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A119100: Numbers k such that the k-th triangular number contains only digits {1,2,4}.

The programs for A119100, there is no canonical definition to state claims against.
-/

/-! ## A119100.P2920846326530465901

`floor(sqrt(2*A119099(n+1)))`
-/

namespace A119100.P2920846326530465901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119099 (n + 1))

end

end A119100.P2920846326530465901

/-!
# A119101: Triangular numbers composed of digits {1,2,5}.

The programs for A119101, there is no canonical definition to state claims against.
-/

/-! ## A119101.P9056288575616009869

`A000217(A119102(n+1))`
-/

namespace A119101.P9056288575616009869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119102 (n + 1)).toNat

end

end A119101.P9056288575616009869

/-! ## A119101.P2541642245711773017

`A161680(A119102(n+1)+1)`
-/

namespace A119101.P2541642245711773017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119102 (n + 1) + 1).toNat

end

end A119101.P2541642245711773017

/-! ## A119101.P5664584813197828062

`A179865(A119102(n+1)+1)`
-/

namespace A119101.P5664584813197828062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119102 (n + 1) + 1).toNat

end

end A119101.P5664584813197828062

/-! ## A119101.P17023961131126614862

`A257942(A119102(n+1)-1)`
-/

namespace A119101.P17023961131126614862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257942 (A119102 (n + 1) - 1).toNat

end

end A119101.P17023961131126614862

/-! ## A119101.P3059327710168362770

`∩[A080228(n+1), A247021(n+1)]`
-/

namespace A119101.P3059327710168362770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119101.P3059327710168362770

/-!
# A119102: Numbers k such that the k-th triangular number contains only digits {1,2,5}.

The programs for A119102, there is no canonical definition to state claims against.
-/

/-! ## A119102.P14536565310434989649

`floor(sqrt(2*A119101(n+1)))`
-/

namespace A119102.P14536565310434989649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119101 (n + 1))

end

end A119102.P14536565310434989649

/-! ## A119102.P4175566444656758656

`round(sqrt(2*A119101(n+1))/A054977(n))`
-/

namespace A119102.P4175566444656758656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119101 (n + 1) : ℝ) / (A054977 n : ℝ))

end

end A119102.P4175566444656758656

/-! ## A119102.P1090462750206499775

`round(sqrt(2*A119101(n+1)))%A042370(n)`
-/

namespace A119102.P1090462750206499775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119101 (n + 1) : ℝ))) (A042370 n)

end

end A119102.P1090462750206499775

/-! ## A119102.P11641887444303281157

`ceil(sqrt(2*A119101(n+1))-A000034(2*n))`
-/

namespace A119102.P11641887444303281157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119101 (n + 1) : ℝ) - (A000034 (2 * n) : ℝ)⌉

end

end A119102.P11641887444303281157

/-! ## A119102.P1731861630453669940

`ceil(A033999(2*n+1)+sqrt(2*A119101(n+1)))`
-/

namespace A119102.P1731861630453669940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033999 (2 * n + 1) : ℝ) + Real.sqrt (2 * A119101 (n + 1) : ℝ)⌉

end

end A119102.P1731861630453669940

/-!
# A119103: Triangular numbers composed of digits {1,2,6}.

The programs for A119103, there is no canonical definition to state claims against.
-/

/-! ## A119103.P5469842700627227424

`A000217(A119104(n+1))`
-/

namespace A119103.P5469842700627227424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119104 (n + 1)).toNat

end

end A119103.P5469842700627227424

/-! ## A119103.P4911777580124100906

`A161680(A119104(n+1)+1)`
-/

namespace A119103.P4911777580124100906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119104 (n + 1) + 1).toNat

end

end A119103.P4911777580124100906

/-! ## A119103.P8304044319669212498

`A179865(A119104(n+1)+1)`
-/

namespace A119103.P8304044319669212498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119104 (n + 1) + 1).toNat

end

end A119103.P8304044319669212498

/-! ## A119103.P1835992703334310169

`A000124(A119104(n+1))-A291168(n)`
-/

namespace A119103.P1835992703334310169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A119104 (n + 1)).toNat - A291168 n

end

end A119103.P1835992703334310169

/-! ## A119103.P9715945855529160380

`A000124(A119104(n+1))-A053878(n+2)`
-/

namespace A119103.P9715945855529160380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A119104 (n + 1)).toNat - A053878 (n + 2)

end

end A119103.P9715945855529160380

/-!
# A119104: Numbers k such that the k-th triangular number contains only digits {1,2,6}.

The programs for A119104, there is no canonical definition to state claims against.
-/

/-! ## A119104.P11869987572251762390

`floor(sqrt(2*A119103(n+1)))`
-/

namespace A119104.P11869987572251762390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119103 (n + 1))

end

end A119104.P11869987572251762390

/-! ## A119104.P4118340156094584766

`round(sqrt(2*A119103(n+1)))%A017118(n)`
-/

namespace A119104.P4118340156094584766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119103 (n + 1) : ℝ))) (A017118 n)

end

end A119104.P4118340156094584766

/-! ## A119104.P17050730412171105475

`ceil(sqrt(2*A119103(n+1))-A000035(2*n+1))`
-/

namespace A119104.P17050730412171105475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119103 (n + 1) : ℝ) - (A000035 (2 * n + 1) : ℝ)⌉

end

end A119104.P17050730412171105475

/-! ## A119104.P5831581325765136194

`floor((2*A119103(n+1))^(A000079(n)/A000079(n+1)))`
-/

namespace A119104.P5831581325765136194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A119103 (n + 1) : ℝ) ^ ((A000079 n : ℚ) / (A000079 (n + 1) : ℚ) : ℝ)⌋

end

end A119104.P5831581325765136194

/-! ## A119104.P4217440383033443534

`A000027(round(sqrt(2*A119103(n+1))))`
-/

namespace A119104.P4217440383033443534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (2 * A119103 (n + 1) : ℝ))).toNat

end

end A119104.P4217440383033443534

/-!
# A119105: Triangular numbers composed of digits {1,2,7}.

The programs for A119105, there is no canonical definition to state claims against.
-/

/-! ## A119105.P6998150920128079536

`A000217(A119106(n+1))`
-/

namespace A119105.P6998150920128079536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119106 (n + 1)).toNat

end

end A119105.P6998150920128079536

/-! ## A119105.P16295149423313526841

`A048155(A119106(n+1)+1)`
-/

namespace A119105.P16295149423313526841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048155 (A119106 (n + 1) + 1).toNat

end

end A119105.P16295149423313526841

/-! ## A119105.P4431177332164483332

`A161680(A119106(n+1)+1)`
-/

namespace A119105.P4431177332164483332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119106 (n + 1) + 1).toNat

end

end A119105.P4431177332164483332

/-! ## A119105.P13994512262642669252

`A179865(A119106(n+1)+1)`
-/

namespace A119105.P13994512262642669252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119106 (n + 1) + 1).toNat

end

end A119105.P13994512262642669252

/-!
# A119106: Numbers k such that the k-th triangular number contains only digits {1,2,7}.

The programs for A119106, there is no canonical definition to state claims against.
-/

/-! ## A119106.P10330461209884673406

`floor(sqrt(2*A119105(n+1)))`
-/

namespace A119106.P10330461209884673406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119105 (n + 1))

end

end A119106.P10330461209884673406

/-! ## A119106.P10838847002985235077

`A294317(A119105(n+1))/2`
-/

namespace A119106.P10838847002985235077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294317 (A119105 (n + 1)).toNat : ℚ) / 2

end

end A119106.P10838847002985235077

/-!
# A119107: Triangular numbers composed of digits {1,2,8}.

The programs for A119107, there is no canonical definition to state claims against.
-/

/-! ## A119107.P8371659565370956326

`A000217(A119108(n+1))`
-/

namespace A119107.P8371659565370956326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119108 (n + 1)).toNat

end

end A119107.P8371659565370956326

/-! ## A119107.P1225829373402869738

`C(A119108(A000027(n+1))+1, 2)`
-/

namespace A119107.P1225829373402869738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119108 (A000027 (n + 1)).toNat + 1).toNat 2

end

end A119107.P1225829373402869738

/-! ## A119107.P7876101134540710494

`A161680(A119108(n+1)+1)`
-/

namespace A119107.P7876101134540710494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119108 (n + 1) + 1).toNat

end

end A119107.P7876101134540710494

/-! ## A119107.P2935206624503980743

`A179865(A119108(n+1)+1)`
-/

namespace A119107.P2935206624503980743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119108 (n + 1) + 1).toNat

end

end A119107.P2935206624503980743

/-! ## A119107.P8436742288743233436

`1-A080956(A119108(n+1)+1)`
-/

namespace A119107.P8436742288743233436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080956 (A119108 (n + 1) + 1).toNat

end

end A119107.P8436742288743233436

/-!
# A119108: Numbers k such that the k-th triangular number contains only digits {1,2,8}.

The programs for A119108, there is no canonical definition to state claims against.
-/

/-! ## A119108.P8748852584601302196

`floor(sqrt(2*A119107(n+1)))`
-/

namespace A119108.P8748852584601302196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119107 (n + 1))

end

end A119108.P8748852584601302196

/-! ## A119108.P10489368358233770629

`ceil(sqrt(2*A119107(n+1))-A260897(n+1))`
-/

namespace A119108.P10489368358233770629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119107 (n + 1) : ℝ) - (A260897 (n + 1) : ℝ)⌉

end

end A119108.P10489368358233770629

/-! ## A119108.P6192765566788590381

`round(sqrt(2*A119107(n+1)))%A138425(n+1)`
-/

namespace A119108.P6192765566788590381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119107 (n + 1) : ℝ))) (A138425 (n + 1))

end

end A119108.P6192765566788590381

/-! ## A119108.P12562497535222564884

`ceil(sqrt(2*A119107(n+1))-A266303(2*n)²)`
-/

namespace A119108.P12562497535222564884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119107 (n + 1) : ℝ) - (A266303 (2 * n) ^ 2 : ℝ)⌉

end

end A119108.P12562497535222564884

/-!
# A119109: Triangular numbers composed of digits {1,2,9}.

The programs for A119109, there is no canonical definition to state claims against.
-/

/-! ## A119109.P17017020107371349971

`A000217(A119110(n+1))`
-/

namespace A119109.P17017020107371349971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119110 (n + 1)).toNat

end

end A119109.P17017020107371349971

/-! ## A119109.P6174966451778898190

`A000217(floor(A119201(n+1)/2))`
-/

namespace A119109.P6174966451778898190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ⌊(A119201 (n + 1) : ℚ) / 2⌋.toNat

end

end A119109.P6174966451778898190

/-!
# A119110: Numbers k such that the k-th triangular number contains only digits {1,2,9}.

The programs for A119110, there is no canonical definition to state claims against.
-/

/-! ## A119110.P16053729147455325570

`floor(sqrt(2*A119109(n+1)))`
-/

namespace A119110.P16053729147455325570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119109 (n + 1))

end

end A119110.P16053729147455325570

/-! ## A119110.P14850557838460826319

`A328399(A119201(n+1)-2)`
-/

namespace A119110.P14850557838460826319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A119201 (n + 1) - 2).toNat

end

end A119110.P14850557838460826319

/-!
# A119111: Triangular numbers composed of digits {1,3,4}.

The programs for A119111, there is no canonical definition to state claims against.
-/

/-! ## A119111.P10648038761672976849

`A000217(A119112(n+1))`
-/

namespace A119111.P10648038761672976849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119112 (n + 1)).toNat

end

end A119111.P10648038761672976849

/-!
# A119112: Numbers k such that the k-th triangular number contains only digits {1,3,4}.

The programs for A119112, there is no canonical definition to state claims against.
-/

/-! ## A119112.P10851231217166323884

`round(sqrt(2*A119111(n+1)))`
-/

namespace A119112.P10851231217166323884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119111 (n + 1) : ℝ))

end

end A119112.P10851231217166323884

/-!
# A119113: Triangular numbers composed of digits {1,3,5}.

The programs for A119113, there is no canonical definition to state claims against.
-/

/-! ## A119113.P18256433685876849805

`A000217(A119114(n+1))`
-/

namespace A119113.P18256433685876849805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119114 (n + 1)).toNat

end

end A119113.P18256433685876849805

/-! ## A119113.P6642091647240675786

`A161680(A119114(n+1)+1)`
-/

namespace A119113.P6642091647240675786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119114 (n + 1) + 1).toNat

end

end A119113.P6642091647240675786

/-! ## A119113.P4756981389502637694

`1-A080956(A119114(n+1)+1)`
-/

namespace A119113.P4756981389502637694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080956 (A119114 (n + 1) + 1).toNat

end

end A119113.P4756981389502637694

/-! ## A119113.P10494254116932487426

`A000124(A119114(n+1))-A071625(2*n+3)`
-/

namespace A119113.P10494254116932487426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A119114 (n + 1)).toNat - A071625 (2 * n + 3)

end

end A119113.P10494254116932487426

/-! ## A119113.P11458302294576534102

`A198148(2*A119114(n+1))`
-/

namespace A119113.P11458302294576534102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198148 (2 * A119114 (n + 1)).toNat

end

end A119113.P11458302294576534102

/-!
# A119114: Numbers k such that the k-th triangular number contains only digits {1,3,5}.

The programs for A119114, there is no canonical definition to state claims against.
-/

/-! ## A119114.P1290653537756964480

`floor(sqrt(2*A119113(n+1)))`
-/

namespace A119114.P1290653537756964480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119113 (n + 1))

end

end A119114.P1290653537756964480

/-! ## A119114.P12033700243319753527

`round(A025439(n)+sqrt(2*A119113(n+1)))`
-/

namespace A119114.P12033700243319753527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A025439 n : ℝ) + Real.sqrt (2 * A119113 (n + 1) : ℝ))

end

end A119114.P12033700243319753527

/-! ## A119114.P16788791362331100727

`ceil(sqrt(2*A119113(n+1))-A304042(n))`
-/

namespace A119114.P16788791362331100727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119113 (n + 1) : ℝ) - (A304042 n : ℝ)⌉

end

end A119114.P16788791362331100727

/-! ## A119114.P11886077546480589111

`round(sqrt(2*A119113(n+1))^A178334(n))`
-/

namespace A119114.P11886077546480589111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119113 (n + 1) : ℝ) ^ (A178334 n : ℤ))

end

end A119114.P11886077546480589111

/-! ## A119114.P8448684374673798041

`round(sqrt(2*A119113(n+1)))%A016973(n)`
-/

namespace A119114.P8448684374673798041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119113 (n + 1) : ℝ))) (A016973 n)

end

end A119114.P8448684374673798041

/-!
# A119115: Triangular numbers composed of digits {1,3,6}.

The programs for A119115, there is no canonical definition to state claims against.
-/

/-! ## A119115.P8447859596154623709

`A000217(A119116(n+1))`
-/

namespace A119115.P8447859596154623709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119116 (n + 1)).toNat

end

end A119115.P8447859596154623709

/-! ## A119115.P14125984695433891128

`A161680(A119116(n+1)+1)`
-/

namespace A119115.P14125984695433891128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119116 (n + 1) + 1).toNat

end

end A119115.P14125984695433891128

/-! ## A119115.P4015674789991679799

`A179865(A119116(n+1)+1)`
-/

namespace A119115.P4015674789991679799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119116 (n + 1) + 1).toNat

end

end A119115.P4015674789991679799

/-! ## A119115.P13226282492322641595

`A160791(2*A119116(n+1))`
-/

namespace A119115.P13226282492322641595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (2 * A119116 (n + 1)).toNat

end

end A119115.P13226282492322641595

/-!
# A119116: Numbers k such that the k-th triangular number contains only digits {1,3,6}.

The programs for A119116, there is no canonical definition to state claims against.
-/

/-! ## A119116.P17579814161046902537

`floor(sqrt(2*A119115(n+1)))`
-/

namespace A119116.P17579814161046902537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119115 (n + 1))

end

end A119116.P17579814161046902537

/-! ## A119116.P1551211542613943070

`A080098(A119115(n+1))`
-/

namespace A119116.P1551211542613943070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A119115 (n + 1)).toNat

end

end A119116.P1551211542613943070

/-! ## A119116.P12542076062087175712

`A048720(A119115(n+1)+1)+1`
-/

namespace A119116.P12542076062087175712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (A119115 (n + 1) + 1).toNat + 1

end

end A119116.P12542076062087175712

/-! ## A119116.P3592456239086206375

`A268830(A119115(n+1)%A001579(n))`
-/

namespace A119116.P3592456239086206375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 (Int.tmod (A119115 (n + 1)) (A001579 n)).toNat

end

end A119116.P3592456239086206375

/-!
# A119117: Triangular numbers composed of digits {1,3,7}.

The programs for A119117, there is no canonical definition to state claims against.
-/

/-! ## A119117.P2324626300393221561

`A000217(A119118(n+1))`
-/

namespace A119117.P2324626300393221561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119118 (n + 1)).toNat

end

end A119117.P2324626300393221561

/-! ## A119117.P15879043086713483343

`A000124(A119118(n+1))-A194285(n+1)`
-/

namespace A119117.P15879043086713483343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A119118 (n + 1)).toNat - A194285 (n + 1)

end

end A119117.P15879043086713483343

/-!
# A119118: Numbers k such that the k-th triangular number contains only digits {1,3,7}.

The programs for A119118, there is no canonical definition to state claims against.
-/

/-! ## A119118.P9473250162256194279

`round(sqrt(2*A119117(n+1)))`
-/

namespace A119118.P9473250162256194279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119117 (n + 1) : ℝ))

end

end A119118.P9473250162256194279

/-!
# A119119: Triangular numbers composed of digits {1,3,8}.

The programs for A119119, there is no canonical definition to state claims against.
-/

/-! ## A119119.P15042967323769457382

`A000217(A119120(n+1))`
-/

namespace A119119.P15042967323769457382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119120 (n + 1)).toNat

end

end A119119.P15042967323769457382

/-! ## A119119.P12632378283702187202

`C(A119120(A000027(n+1))+1, 2)`
-/

namespace A119119.P12632378283702187202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119120 (A000027 (n + 1)).toNat + 1).toNat 2

end

end A119119.P12632378283702187202

/-!
# A119120: Numbers k such that the k-th triangular number contains only digits {1,3,8}.

The programs for A119120, there is no canonical definition to state claims against.
-/

/-! ## A119120.P7482484920618949728

`floor(sqrt(2*A119119(n+1)))`
-/

namespace A119120.P7482484920618949728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119119 (n + 1))

end

end A119120.P7482484920618949728

/-!
# A119121: Triangular numbers composed of digits {1,3,9}.

The programs for A119121, there is no canonical definition to state claims against.
-/

/-! ## A119121.P15379147824288030597

`A000217(A119122(n+1))`
-/

namespace A119121.P15379147824288030597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119122 (n + 1)).toNat

end

end A119121.P15379147824288030597

/-!
# A119122: Numbers k such that the k-th triangular number contains only digits {1,3,9}.

The programs for A119122, there is no canonical definition to state claims against.
-/

/-! ## A119122.P5466984092167973146

`floor(sqrt(2*A119121(n+1)))`
-/

namespace A119122.P5466984092167973146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119121 (n + 1))

end

end A119122.P5466984092167973146

/-!
# A119123: Triangular numbers composed of digits {1,4,5}.

The programs for A119123, there is no canonical definition to state claims against.
-/

/-! ## A119123.P18341076358279298997

`A000217(A119124(n+1))`
-/

namespace A119123.P18341076358279298997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119124 (n + 1)).toNat

end

end A119123.P18341076358279298997

/-! ## A119123.P15747746841251266728

`C(A119124(A000027(n+1))+1, 2)`
-/

namespace A119123.P15747746841251266728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119124 (A000027 (n + 1)).toNat + 1).toNat 2

end

end A119123.P15747746841251266728

/-! ## A119123.P4401324745946795785

`A064038(A119124(n+1)+1)`
-/

namespace A119123.P4401324745946795785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064038 (A119124 (n + 1) + 1).toNat

end

end A119123.P4401324745946795785

/-! ## A119123.P3310715698238509320

`A161680(A119124(n+1)+1)`
-/

namespace A119123.P3310715698238509320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119124 (n + 1) + 1).toNat

end

end A119123.P3310715698238509320

/-!
# A119124: Numbers k such that the k-th triangular number contains only digits {1,4,5}.

The programs for A119124, there is no canonical definition to state claims against.
-/

/-! ## A119124.P9244489449879997990

`floor(sqrt(2*A119123(n+1)))`
-/

namespace A119124.P9244489449879997990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119123 (n + 1))

end

end A119124.P9244489449879997990

/-! ## A119124.P18368062509582776448

`A080098(A119123(n+1))`
-/

namespace A119124.P18368062509582776448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A119123 (n + 1)).toNat

end

end A119124.P18368062509582776448

/-!
# A119125: Triangular numbers composed of digits {1,4,6}.

The programs for A119125, there is no canonical definition to state claims against.
-/

/-! ## A119125.P15047699390354698666

`A000217(A119126(n+1))`
-/

namespace A119125.P15047699390354698666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119126 (n + 1)).toNat

end

end A119125.P15047699390354698666

/-! ## A119125.P8046444784781822465

`C(A119126(A000027(n+1))+1, 2)`
-/

namespace A119125.P8046444784781822465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119126 (A000027 (n + 1)).toNat + 1).toNat 2

end

end A119125.P8046444784781822465

/-! ## A119125.P4074108787826230253

`A161680(A119126(n+1)+1)`
-/

namespace A119125.P4074108787826230253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119126 (n + 1) + 1).toNat

end

end A119125.P4074108787826230253

/-! ## A119125.P14408494053105436129

`A179865(A119126(n+1)+1)`
-/

namespace A119125.P14408494053105436129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119126 (n + 1) + 1).toNat

end

end A119125.P14408494053105436129

/-! ## A119125.P16250271537247796741

`A000124(A119126(n+1))-A005135(n)`
-/

namespace A119125.P16250271537247796741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A119126 (n + 1)).toNat - A005135 n

end

end A119125.P16250271537247796741

/-!
# A119126: Numbers k such that the k-th triangular number contains only digits {1,4,6}.

The programs for A119126, there is no canonical definition to state claims against.
-/

/-! ## A119126.P4685467368933717377

`floor(sqrt(2*A119125(n+1)))`
-/

namespace A119126.P4685467368933717377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119125 (n + 1))

end

end A119126.P4685467368933717377

/-! ## A119126.P12453808207459178005

`ceil(sqrt(2*A119125(n+1))-A262681(n))`
-/

namespace A119126.P12453808207459178005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119125 (n + 1) : ℝ) - (A262681 n : ℝ)⌉

end

end A119126.P12453808207459178005

/-! ## A119126.P1355895204724190359

`round(sqrt(2*A119125(n+1)))%A017298(n)`
-/

namespace A119126.P1355895204724190359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119125 (n + 1) : ℝ))) (A017298 n)

end

end A119126.P1355895204724190359

/-! ## A119126.P10072648538888030450

`ceil(sqrt(2*A119125(n+1))-A318809(n+1))`
-/

namespace A119126.P10072648538888030450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119125 (n + 1) : ℝ) - (A318809 (n + 1) : ℝ)⌉

end

end A119126.P10072648538888030450

/-! ## A119126.P2028252844929088663

`round(sqrt(2*A119125(n+1))^A052409(n²+1))`
-/

namespace A119126.P2028252844929088663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119125 (n + 1) : ℝ) ^ (A052409 (n ^ 2 + 1) : ℤ))

end

end A119126.P2028252844929088663

/-!
# A119127: Numbers k such that the k-th triangular number contains only digits {1,4,7}.

The programs for A119127, there is no canonical definition to state claims against.
-/

/-! ## A119127.P846866280556992449

`round(sqrt(2*A079654(n+1)))`
-/

namespace A119127.P846866280556992449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A079654 (n + 1) : ℝ))

end

end A119127.P846866280556992449

/-!
# A119128: Triangular numbers composed of digits {1,4,8}.

The programs for A119128, there is no canonical definition to state claims against.
-/

/-! ## A119128.P5832806008306301572

`C(A119129(n+1)+1, 2)`
-/

namespace A119128.P5832806008306301572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119129 (n + 1) + 1).toNat 2

end

end A119128.P5832806008306301572

/-!
# A119129: Numbers k such that the k-th triangular number contains only digits {1,4,8}.

The programs for A119129, there is no canonical definition to state claims against.
-/

/-! ## A119129.P6050895750645194233

`round(sqrt(2*A119128(n+1)))`
-/

namespace A119129.P6050895750645194233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119128 (n + 1) : ℝ))

end

end A119129.P6050895750645194233

/-!
# A119130: Triangular numbers composed of digits {1,4,9}.

The programs for A119130, there is no canonical definition to state claims against.
-/

/-! ## A119130.P11781102823107725946

`A000217(A119131(n+1))`
-/

namespace A119130.P11781102823107725946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119131 (n + 1)).toNat

end

end A119130.P11781102823107725946

/-!
# A119131: Numbers k such that the k-th triangular number contains only digits {1,4,9}.

The programs for A119131, there is no canonical definition to state claims against.
-/

/-! ## A119131.P10058142450090367371

`floor(sqrt(2*A119130(n+1)))`
-/

namespace A119131.P10058142450090367371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119130 (n + 1))

end

end A119131.P10058142450090367371

/-!
# A119132: Triangular numbers composed of digits {1,5,6}.

The programs for A119132, there is no canonical definition to state claims against.
-/

/-! ## A119132.P14865482550620017400

`A000217(A119133(n+1))`
-/

namespace A119132.P14865482550620017400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119133 (n + 1)).toNat

end

end A119132.P14865482550620017400

/-! ## A119132.P3886316010966597138

`A161680(A119133(n+1)+1)`
-/

namespace A119132.P3886316010966597138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119133 (n + 1) + 1).toNat

end

end A119132.P3886316010966597138

/-! ## A119132.P11652758611102356854

`A179865(A119133(n+1)+1)`
-/

namespace A119132.P11652758611102356854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119133 (n + 1) + 1).toNat

end

end A119132.P11652758611102356854

/-! ## A119132.P9914820294521578148

`1-A080956(A119133(n+1)+1)`
-/

namespace A119132.P9914820294521578148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080956 (A119133 (n + 1) + 1).toNat

end

end A119132.P9914820294521578148

/-!
# A119133: Numbers k such that the k-th triangular number contains only digits {1,5,6}.

The programs for A119133, there is no canonical definition to state claims against.
-/

/-! ## A119133.P3080225747663533632

`floor(sqrt(2*A119132(n+1)))`
-/

namespace A119133.P3080225747663533632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119132 (n + 1))

end

end A119133.P3080225747663533632

/-! ## A119133.P1432068985139271975

`round(sqrt(2*A119132(n+1))^A178334(n))`
-/

namespace A119133.P1432068985139271975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119132 (n + 1) : ℝ) ^ (A178334 n : ℤ))

end

end A119133.P1432068985139271975

/-! ## A119133.P3661286364957762599

`round(sqrt(2*A119132(n+1)))%A017057(n)`
-/

namespace A119133.P3661286364957762599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119132 (n + 1) : ℝ))) (A017057 n)

end

end A119133.P3661286364957762599

/-! ## A119133.P7682076439274143021

`round(sqrt(A134779(n)+2*A119132(n+1)))-1`
-/

namespace A119133.P7682076439274143021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A134779 n + 2 * A119132 (n + 1) : ℝ)) - 1

end

end A119133.P7682076439274143021

/-! ## A119133.P18060614009807792996

`round(sqrt(A000027(n+1)+2*A119132(n+1)))-1`
-/

namespace A119133.P18060614009807792996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A000027 (n + 1) + 2 * A119132 (n + 1) : ℝ)) - 1

end

end A119133.P18060614009807792996

/-! ## A119133.P14760144043864253281

`round(sqrt(2*A119132(n+1)-A000040(n+1)+1))`
-/

namespace A119133.P14760144043864253281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119132 (n + 1) - A000040 (n + 1) + 1 : ℝ))

end

end A119133.P14760144043864253281

/-! ## A119133.P3111420038239869330

`round(sqrt(2*A119132(n+1)-A001263(n+1)+1))`
-/

namespace A119133.P3111420038239869330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119132 (n + 1) - A001263 (n + 1) + 1 : ℝ))

end

end A119133.P3111420038239869330

/-! ## A119133.P460828543820091167

`round(sqrt(A008277(n+1)+2*A119132(n+1)))-1`
-/

namespace A119133.P460828543820091167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008277 (n + 1) + 2 * A119132 (n + 1) : ℝ)) - 1

end

end A119133.P460828543820091167

/-! ## A119133.P1454359355507257885

`round(sqrt(2*A119132(n+1)+A028310(n)+1))-1`
-/

namespace A119133.P1454359355507257885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119132 (n + 1) + (A028310 n + 1) : ℝ)) - 1

end

end A119133.P1454359355507257885

/-! ## A119133.P13912709774415475032

`round(sqrt(A065475(n+1)+2*A119132(n+1)))-1`
-/

namespace A119133.P13912709774415475032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A065475 (n + 1) + 2 * A119132 (n + 1) : ℝ)) - 1

end

end A119133.P13912709774415475032

/-!
# A119134: Triangular numbers composed of digits {1,5,7}.

The programs for A119134, there is no canonical definition to state claims against.
-/

/-! ## A119134.P15906761229101513591

`A000217(A119135(n+1))`
-/

namespace A119134.P15906761229101513591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119135 (n + 1)).toNat

end

end A119134.P15906761229101513591

/-! ## A119134.P8864622958125379610

`∩[A117960(n+1), A247021(n+1)]`
-/

namespace A119134.P8864622958125379610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119134.P8864622958125379610

/-! ## A119134.P17534058219638618309

`A161680(A119135(n+1)+1)`
-/

namespace A119134.P17534058219638618309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119135 (n + 1) + 1).toNat

end

end A119134.P17534058219638618309

/-! ## A119134.P4564518171786554821

`A179865(A119135(n+1)+1)`
-/

namespace A119134.P4564518171786554821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119135 (n + 1) + 1).toNat

end

end A119134.P4564518171786554821

/-! ## A119134.P9486353259535920957

`A000124(A119135(n+1))-A071625(2*n+3)`
-/

namespace A119134.P9486353259535920957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A119135 (n + 1)).toNat - A071625 (2 * n + 3)

end

end A119134.P9486353259535920957

/-!
# A119135: Numbers k such that the k-th triangular number contains only digits {1,5,7}.

The programs for A119135, there is no canonical definition to state claims against.
-/

/-! ## A119135.P2112071553401785009

`floor(sqrt(2*A119134(n+1)))`
-/

namespace A119135.P2112071553401785009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119134 (n + 1))

end

end A119135.P2112071553401785009

/-! ## A119135.P2327037461495118600

`ceil(sqrt(2*A119134(n+1))-A038712(2*n+1))`
-/

namespace A119135.P2327037461495118600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119134 (n + 1) : ℝ) - (A038712 (2 * n + 1) : ℝ)⌉

end

end A119135.P2327037461495118600

/-! ## A119135.P15397556579030803767

`ceil(sqrt(2*A119134(n+1))-A014963(12*n+6))`
-/

namespace A119135.P15397556579030803767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119134 (n + 1) : ℝ) - (A014963 (12 * n + 6) : ℝ)⌉

end

end A119135.P15397556579030803767

/-! ## A119135.P10507990772754772

`round(sqrt(2*A119134(n+1)))%A065657(n+1)`
-/

namespace A119135.P10507990772754772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119134 (n + 1) : ℝ))) (A065657 (n + 1))

end

end A119135.P10507990772754772

/-!
# A119136: Triangular numbers composed of digits {1,5,8}.

The programs for A119136, there is no canonical definition to state claims against.
-/

/-! ## A119136.P11010430141342260667

`A000217(A119137(n+1))`
-/

namespace A119136.P11010430141342260667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119137 (n + 1)).toNat

end

end A119136.P11010430141342260667

/-! ## A119136.P6620044972946955579

`C(A119137(A000027(n+1))+1, 2)`
-/

namespace A119136.P6620044972946955579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119137 (A000027 (n + 1)).toNat + 1).toNat 2

end

end A119136.P6620044972946955579

/-! ## A119136.P16731596354275597329

`A064038(A119137(n+1)+1)`
-/

namespace A119136.P16731596354275597329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064038 (A119137 (n + 1) + 1).toNat

end

end A119136.P16731596354275597329

/-! ## A119136.P14956931438623015783

`A179865(A119137(n+1)+1)`
-/

namespace A119136.P14956931438623015783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119137 (n + 1) + 1).toNat

end

end A119136.P14956931438623015783

/-! ## A119136.P10823695494618507756

`A286388(2*A119137(n+1))`
-/

namespace A119136.P10823695494618507756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286388 (2 * A119137 (n + 1)).toNat

end

end A119136.P10823695494618507756

/-!
# A119137: Numbers k such that the k-th triangular number contains only digits {1,5,8}.

The programs for A119137, there is no canonical definition to state claims against.
-/

/-! ## A119137.P16146899947999068346

`floor(sqrt(2*A119136(n+1)))`
-/

namespace A119137.P16146899947999068346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119136 (n + 1))

end

end A119137.P16146899947999068346

/-! ## A119137.P15791392488922152684

`round(A025443(n)+sqrt(2*A119136(n+1)))`
-/

namespace A119137.P15791392488922152684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A025443 n : ℝ) + Real.sqrt (2 * A119136 (n + 1) : ℝ))

end

end A119137.P15791392488922152684

/-! ## A119137.P12085078382072406984

`ceil(sqrt(2*A119136(n+1))-A084904(n)!)`
-/

namespace A119137.P12085078382072406984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119136 (n + 1) : ℝ) - (Nat.factorial (A084904 n).toNat : ℝ)⌉

end

end A119137.P12085078382072406984

/-! ## A119137.P541700748859117317

`round(sqrt(2*A119136(n+1)))%A126643(n+1)`
-/

namespace A119137.P541700748859117317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119136 (n + 1) : ℝ))) (A126643 (n + 1))

end

end A119137.P541700748859117317

/-! ## A119137.P14780105906158183942

`round(sqrt(2*A119136(n+1))^(A098058(n+1)%2))`
-/

namespace A119137.P14780105906158183942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119136 (n + 1) : ℝ) ^ (Int.tmod (A098058 (n + 1)) 2 : ℤ))

end

end A119137.P14780105906158183942

/-!
# A119138: Triangular numbers composed of digits {1,5,9}.

The programs for A119138, there is no canonical definition to state claims against.
-/

/-! ## A119138.P757782927040857070

`A000217(A119139(n+1))`
-/

namespace A119138.P757782927040857070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119139 (n + 1)).toNat

end

end A119138.P757782927040857070

/-! ## A119138.P6404661748644806297

`A161680(A119139(n+1)+1)`
-/

namespace A119138.P6404661748644806297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119139 (n + 1) + 1).toNat

end

end A119138.P6404661748644806297

/-! ## A119138.P2090873253563932692

`A179865(A119139(n+1)+1)`
-/

namespace A119138.P2090873253563932692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119139 (n + 1) + 1).toNat

end

end A119138.P2090873253563932692

/-! ## A119138.P8747819570380703800

`A160791(2*A119139(n+1))`
-/

namespace A119138.P8747819570380703800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (2 * A119139 (n + 1)).toNat

end

end A119138.P8747819570380703800

/-!
# A119139: Numbers k such that the k-th triangular number contains only digits {1,5,9}.

The programs for A119139, there is no canonical definition to state claims against.
-/

/-! ## A119139.P1561109173593711891

`floor(sqrt(2*A119138(n+1)))`
-/

namespace A119139.P1561109173593711891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119138 (n + 1))

end

end A119139.P1561109173593711891

/-! ## A119139.P220947176604733636

`A002024(A119138(n+1))`
-/

namespace A119139.P220947176604733636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A119138 (n + 1)).toNat

end

end A119139.P220947176604733636

/-! ## A119139.P3202929518978235271

`A003056(A119138(n+1)+1)`
-/

namespace A119139.P3202929518978235271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A119138 (n + 1) + 1).toNat

end

end A119139.P3202929518978235271

/-! ## A119139.P13650280034971637252

`A007318(A119138(n+1)+1)`
-/

namespace A119139.P13650280034971637252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A119138 (n + 1) + 1).toNat

end

end A119139.P13650280034971637252

/-!
# A119140: Triangular numbers composed of digits {1,6,7}.

The programs for A119140, there is no canonical definition to state claims against.
-/

/-! ## A119140.P12422457543209834978

`A000217(A119141(n+1))`
-/

namespace A119140.P12422457543209834978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119141 (n + 1)).toNat

end

end A119140.P12422457543209834978

/-! ## A119140.P12648425509440305798

`A161680(A119141(n+1)+1)`
-/

namespace A119140.P12648425509440305798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119141 (n + 1) + 1).toNat

end

end A119140.P12648425509440305798

/-! ## A119140.P9768877646563624566

`A179865(A119141(n+1)+1)`
-/

namespace A119140.P9768877646563624566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119141 (n + 1) + 1).toNat

end

end A119140.P9768877646563624566

/-! ## A119140.P3888378912744264285

`A160791(2*A119141(n+1))`
-/

namespace A119140.P3888378912744264285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 (2 * A119141 (n + 1)).toNat

end

end A119140.P3888378912744264285

/-! ## A119140.P15973028755754536630

`A212342(A119141(n+1))+A178334(n)`
-/

namespace A119140.P15973028755754536630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212342 (A119141 (n + 1)).toNat + A178334 n

end

end A119140.P15973028755754536630

/-!
# A119141: Numbers k such that the k-th triangular number contains only digits {1,6,7}.

The programs for A119141, there is no canonical definition to state claims against.
-/

/-! ## A119141.P1905510592839453758

`floor(sqrt(2*A119140(n+1)))`
-/

namespace A119141.P1905510592839453758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119140 (n + 1))

end

end A119141.P1905510592839453758

/-! ## A119141.P12727468298271465098

`round(A185284(n)+sqrt(2*A119140(n+1)))`
-/

namespace A119141.P12727468298271465098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185284 n : ℝ) + Real.sqrt (2 * A119140 (n + 1) : ℝ))

end

end A119141.P12727468298271465098

/-! ## A119141.P14197020671429670789

`round(sqrt(2*A119140(n+1)))%A017501(n)`
-/

namespace A119141.P14197020671429670789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119140 (n + 1) : ℝ))) (A017501 n)

end

end A119141.P14197020671429670789

/-! ## A119141.P2242009882250172086

`round(A000007(n+1)+sqrt(2*A119140(n+1)))`
-/

namespace A119141.P2242009882250172086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℝ) + Real.sqrt (2 * A119140 (n + 1) : ℝ))

end

end A119141.P2242009882250172086

/-! ## A119141.P10693002701613576039

`A327853(A119140(n+1))+1`
-/

namespace A119141.P10693002701613576039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327853 (A119140 (n + 1)).toNat + 1

end

end A119141.P10693002701613576039

/-!
# A119142: Triangular numbers composed of digits {1,6,8}.

The programs for A119142, there is no canonical definition to state claims against.
-/

/-! ## A119142.P5642493119090378000

`A000217(A119143(n+1))`
-/

namespace A119142.P5642493119090378000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119143 (n + 1)).toNat

end

end A119142.P5642493119090378000

/-! ## A119142.P1585069337059484986

`A161680(A119143(n+1)+1)`
-/

namespace A119142.P1585069337059484986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119143 (n + 1) + 1).toNat

end

end A119142.P1585069337059484986

/-! ## A119142.P18017662752515573873

`A000124(A119143(n+1))-A025162(n+1)`
-/

namespace A119142.P18017662752515573873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A119143 (n + 1)).toNat - A025162 (n + 1)

end

end A119142.P18017662752515573873

/-! ## A119142.P4048107530290040481

`A000124(A119143(n+1))-A161895(n+1)`
-/

namespace A119142.P4048107530290040481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A119143 (n + 1)).toNat - A161895 (n + 1)

end

end A119142.P4048107530290040481

/-!
# A119143: Numbers k such that the k-th triangular number contains only digits {1,6,8}.

The programs for A119143, there is no canonical definition to state claims against.
-/

/-! ## A119143.P12001863610497867607

`floor(sqrt(2*A119142(n+1)))`
-/

namespace A119143.P12001863610497867607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119142 (n + 1))

end

end A119143.P12001863610497867607

/-! ## A119143.P8881047427779261148

`ceil(sqrt(2*A119142(n+1))-A193518(n+1))`
-/

namespace A119143.P8881047427779261148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119142 (n + 1) : ℝ) - (A193518 (n + 1) : ℝ)⌉

end

end A119143.P8881047427779261148

/-!
# A119144: Triangular numbers composed of digits {1,6,9}.

The programs for A119144, there is no canonical definition to state claims against.
-/

/-! ## A119144.P18055329922713905194

`A000217(A119145(n+1))`
-/

namespace A119144.P18055329922713905194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119145 (n + 1)).toNat

end

end A119144.P18055329922713905194

/-! ## A119144.P1576638134665688629

`A161680(A119145(n+1)+1)`
-/

namespace A119144.P1576638134665688629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119145 (n + 1) + 1).toNat

end

end A119144.P1576638134665688629

/-! ## A119144.P10317290960692434079

`A124093(2*A119145(n+1))`
-/

namespace A119144.P10317290960692434079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124093 (2 * A119145 (n + 1)).toNat

end

end A119144.P10317290960692434079

/-! ## A119144.P1957566497907323265

`A000124(A119145(n+1))-A178788(n)`
-/

namespace A119144.P1957566497907323265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A119145 (n + 1)).toNat - A178788 n

end

end A119144.P1957566497907323265

/-!
# A119145: Numbers k such that the k-th triangular number contains only digits {1,6,9}.

The programs for A119145, there is no canonical definition to state claims against.
-/

/-! ## A119145.P17140260327823678763

`floor(sqrt(2*A119144(n+1)))`
-/

namespace A119145.P17140260327823678763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119144 (n + 1))

end

end A119145.P17140260327823678763

/-! ## A119145.P15134815320986198424

`A003991(A119144(n+1)%A119230(n+1))`
-/

namespace A119145.P15134815320986198424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (Int.tmod (A119144 (n + 1)) (A119230 (n + 1))).toNat

end

end A119145.P15134815320986198424

/-!
# A119146: Triangular numbers composed of digits {1,7,8}.

The programs for A119146, there is no canonical definition to state claims against.
-/

/-! ## A119146.P9549976760162575596

`A000217(A119147(n+1))`
-/

namespace A119146.P9549976760162575596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119147 (n + 1)).toNat

end

end A119146.P9549976760162575596

/-! ## A119146.P371921678660433262

`A161680(A119147(n+1)+1)`
-/

namespace A119146.P371921678660433262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119147 (n + 1) + 1).toNat

end

end A119146.P371921678660433262

/-! ## A119146.P3614040890041355119

`A179865(A119147(n+1)+1)`
-/

namespace A119146.P3614040890041355119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119147 (n + 1) + 1).toNat

end

end A119146.P3614040890041355119

/-! ## A119146.P14707344170257546694

`1-A080956(A119147(n+1)+1)`
-/

namespace A119146.P14707344170257546694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080956 (A119147 (n + 1) + 1).toNat

end

end A119146.P14707344170257546694

/-!
# A119147: Numbers k such that the k-th triangular number contains only digits {1,7,8}.

The programs for A119147, there is no canonical definition to state claims against.
-/

/-! ## A119147.P8216850417338526989

`floor(sqrt(2*A119146(n+1)))`
-/

namespace A119147.P8216850417338526989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119146 (n + 1))

end

end A119147.P8216850417338526989

/-! ## A119147.P8859860299658443874

`A080098(A119146(n+1))`
-/

namespace A119147.P8859860299658443874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A119146 (n + 1)).toNat

end

end A119147.P8859860299658443874

/-!
# A119148: Triangular numbers composed of digits {1,7,9}.

The programs for A119148, there is no canonical definition to state claims against.
-/

/-! ## A119148.P913720737142540317

`A000217(A119149(n+1))`
-/

namespace A119148.P913720737142540317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119149 (n + 1)).toNat

end

end A119148.P913720737142540317

/-! ## A119148.P7800712698831485815

`C(A119149(A348519(n+1))+1, 2)`
-/

namespace A119148.P7800712698831485815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119149 (A348519 (n + 1)).toNat + 1).toNat 2

end

end A119148.P7800712698831485815

/-!
# A119149: Numbers k such that the k-th triangular number contains only digits {1,7,9}.

The programs for A119149, there is no canonical definition to state claims against.
-/

/-! ## A119149.P4669654885833148498

`floor(sqrt(2*A119148(n+1)))`
-/

namespace A119149.P4669654885833148498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119148 (n + 1))

end

end A119149.P4669654885833148498

/-!
# A119150: Triangular numbers composed of digits {1,8,9}.

The programs for A119150, there is no canonical definition to state claims against.
-/

/-! ## A119150.P15082498093827076862

`A000217(A119151(n+1))`
-/

namespace A119150.P15082498093827076862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119151 (n + 1)).toNat

end

end A119150.P15082498093827076862

/-! ## A119150.P14344667198425763954

`A064038(A119151(n+1)+1)`
-/

namespace A119150.P14344667198425763954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064038 (A119151 (n + 1) + 1).toNat

end

end A119150.P14344667198425763954

/-! ## A119150.P11989715959268880489

`A161680(A119151(n+1)+1)`
-/

namespace A119150.P11989715959268880489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119151 (n + 1) + 1).toNat

end

end A119150.P11989715959268880489

/-! ## A119150.P4694630975459616031

`A179865(A119151(n+1)+1)`
-/

namespace A119150.P4694630975459616031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119151 (n + 1) + 1).toNat

end

end A119150.P4694630975459616031

/-! ## A119150.P16420228790570409575

`A286388(2*A119151(n+1))`
-/

namespace A119150.P16420228790570409575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286388 (2 * A119151 (n + 1)).toNat

end

end A119150.P16420228790570409575

/-!
# A119151: Numbers k such that the k-th triangular number contains only digits {1,8,9}.

The programs for A119151, there is no canonical definition to state claims against.
-/

/-! ## A119151.P5467414549513467370

`floor(sqrt(2*A119150(n+1)))`
-/

namespace A119151.P5467414549513467370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119150 (n + 1))

end

end A119151.P5467414549513467370

/-! ## A119151.P802465432904651704

`round(sqrt(2*A119150(n+1))^A002828(n²))`
-/

namespace A119151.P802465432904651704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119150 (n + 1) : ℝ) ^ (A002828 (n ^ 2) : ℤ))

end

end A119151.P802465432904651704

/-! ## A119151.P11126662819530507745

`round(A000007(n+1)+sqrt(2*A119150(n+1)))`
-/

namespace A119151.P11126662819530507745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℝ) + Real.sqrt (2 * A119150 (n + 1) : ℝ))

end

end A119151.P11126662819530507745

/-!
# A119152: Triangular numbers composed of digits {2,3,5}.

The programs for A119152, there is no canonical definition to state claims against.
-/

/-! ## A119152.P371037710122841141

`A000217(A119153(n+1))`
-/

namespace A119152.P371037710122841141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119153 (n + 1)).toNat

end

end A119152.P371037710122841141

/-! ## A119152.P11393027478932241540

`∩[A111483(n+1), A247016(n+1)]`
-/

namespace A119152.P11393027478932241540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119152.P11393027478932241540

/-! ## A119152.P16676802019546857832

`A161680(A119153(n+1)+1)`
-/

namespace A119152.P16676802019546857832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119153 (n + 1) + 1).toNat

end

end A119152.P16676802019546857832

/-! ## A119152.P17633231592927019273

`A179865(A119153(n+1)+1)`
-/

namespace A119152.P17633231592927019273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119153 (n + 1) + 1).toNat

end

end A119152.P17633231592927019273

/-! ## A119152.P8307303168045859004

`A253145(A119153(n+1)-1)`
-/

namespace A119152.P8307303168045859004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A119153 (n + 1) - 1).toNat

end

end A119152.P8307303168045859004

/-!
# A119153: Numbers k such that the k-th triangular number contains only digits {2,3,5}.

The programs for A119153, there is no canonical definition to state claims against.
-/

/-! ## A119153.P2125128384659135722

`floor(sqrt(2*A119152(n+1)+1))`
-/

namespace A119153.P2125128384659135722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119152 (n + 1) + 1)

end

end A119153.P2125128384659135722

/-!
# A119154: Triangular numbers composed of digits {2,3,6}.

The programs for A119154, there is no canonical definition to state claims against.
-/

/-! ## A119154.P1455342434146615130

`A000217(A119155(n+1))`
-/

namespace A119154.P1455342434146615130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119155 (n + 1)).toNat

end

end A119154.P1455342434146615130

/-! ## A119154.P16078282914640373214

`C(A119155(n+1)+A033999(n)², 2)`
-/

namespace A119154.P16078282914640373214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119155 (n + 1) + A033999 n ^ 2).toNat 2

end

end A119154.P16078282914640373214

/-! ## A119154.P16900144504104371418

`A000217(record[A119155(C(comp[∑[n]]-n, 2)-n)])`
-/

namespace A119154.P16900144504104371418
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119155 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A119154.P16900144504104371418

/-! ## A119154.P18132710408051157788

`A161680(A119155(n+1)+1)`
-/

namespace A119154.P18132710408051157788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119155 (n + 1) + 1).toNat

end

end A119154.P18132710408051157788

/-!
# A119155: Numbers k such that the k-th triangular number contains only digits {2,3,6}.

The programs for A119155, there is no canonical definition to state claims against.
-/

/-! ## A119155.P2032529908072958227

`round(sqrt(2*A119154(n+1)))`
-/

namespace A119155.P2032529908072958227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119154 (n + 1) : ℝ))

end

end A119155.P2032529908072958227

/-! ## A119155.P10624837302958900579

`A080098(A119154(n+1))`
-/

namespace A119155.P10624837302958900579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A119154 (n + 1)).toNat

end

end A119155.P10624837302958900579

/-!
# A119156: Triangular numbers composed of digits {2,3,8}.

The programs for A119156, there is no canonical definition to state claims against.
-/

/-! ## A119156.P6008706066280774218

`C(A119157(n+1)+1, 2)`
-/

namespace A119156.P6008706066280774218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119157 (n + 1) + 1).toNat 2

end

end A119156.P6008706066280774218

/-!
# A119157: Numbers k such that the k-th triangular number contains only digits {2,3,8}.

The programs for A119157, there is no canonical definition to state claims against.
-/

/-! ## A119157.P13054546973525029513

`floor(sqrt(2*A119156(n+1)))`
-/

namespace A119157.P13054546973525029513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119156 (n + 1))

end

end A119157.P13054546973525029513

/-!
# A119158: Triangular numbers composed of digits {2,4,5}.

The programs for A119158, there is no canonical definition to state claims against.
-/

/-! ## A119158.P1105367002660863490

`A000217(A119159(n+1))`
-/

namespace A119158.P1105367002660863490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119159 (n + 1)).toNat

end

end A119158.P1105367002660863490

/-! ## A119158.P4210106736217164146

`C(A119159(n+1)+1, A000096(floor(n/18)+1))`
-/

namespace A119158.P4210106736217164146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119159 (n + 1) + 1).toNat (A000096 (⌊(n : ℚ) / 18⌋ + 1).toNat).toNat

end

end A119158.P4210106736217164146

/-!
# A119159: Numbers k such that the k-th triangular number contains only digits {2,4,5}.

The programs for A119159, there is no canonical definition to state claims against.
-/

/-! ## A119159.P16932337258379844945

`floor(sqrt(2*A119158(n+1)))`
-/

namespace A119159.P16932337258379844945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119158 (n + 1))

end

end A119159.P16932337258379844945

/-! ## A119159.P8411175749264502690

`round(sqrt(A040003(2*n+1)*A119158(n+1)))`
-/

namespace A119159.P8411175749264502690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A040003 (2 * n + 1) * A119158 (n + 1) : ℝ))

end

end A119159.P8411175749264502690

/-!
# A119160: Triangular numbers composed of digits {2,4,6}.

The programs for A119160, there is no canonical definition to state claims against.
-/

/-! ## A119160.P2397684837299930426

`A000217(A119161(n+1))`
-/

namespace A119160.P2397684837299930426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119161 (n + 1)).toNat

end

end A119160.P2397684837299930426

/-!
# A119161: Numbers k such that the k-th triangular number contains only digits {2,4,6}.

The programs for A119161, there is no canonical definition to state claims against.
-/

/-! ## A119161.P17438616595100799295

`floor(sqrt(2*A119160(n+1)))`
-/

namespace A119161.P17438616595100799295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119160 (n + 1))

end

end A119161.P17438616595100799295

/-!
# A119162: Triangular numbers composed of digits {2,4,8}.

The programs for A119162, there is no canonical definition to state claims against.
-/

/-! ## A119162.P8106062318229146481

`C(A119163(n+1)+1, 2)`
-/

namespace A119162.P8106062318229146481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119163 (n + 1) + 1).toNat 2

end

end A119162.P8106062318229146481

/-!
# A119163: Numbers k such that the k-th triangular number contains only digits {2,4,8}.

The programs for A119163, there is no canonical definition to state claims against.
-/

/-! ## A119163.P13826784008407778177

`floor(sqrt(2*A119162(n+1)))`
-/

namespace A119163.P13826784008407778177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119162 (n + 1))

end

end A119163.P13826784008407778177

/-! ## A119163.P6789368215387531421

`round(sqrt(A074264(n+1)*A119162(n+1)))`
-/

namespace A119163.P6789368215387531421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A074264 (n + 1) * A119162 (n + 1) : ℝ))

end

end A119163.P6789368215387531421

/-! ## A119163.P4756998984592936334

`ceil(sqrt(2*A119162(n+1))-A210529(n+1))`
-/

namespace A119163.P4756998984592936334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119162 (n + 1) : ℝ) - (A210529 (n + 1) : ℝ)⌉

end

end A119163.P4756998984592936334

/-!
# A119164: Triangular numbers composed of digits {2,5,6}.

The programs for A119164, there is no canonical definition to state claims against.
-/

/-! ## A119164.P9206233401173170904

`A000217(A119165(n+1))`
-/

namespace A119164.P9206233401173170904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119165 (n + 1)).toNat

end

end A119164.P9206233401173170904

/-! ## A119164.P12416149065157682774

`A161680(A119165(n+1)+1)`
-/

namespace A119164.P12416149065157682774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119165 (n + 1) + 1).toNat

end

end A119164.P12416149065157682774

/-! ## A119164.P15054622628107502125

`A179865(A119165(n+1)+1)`
-/

namespace A119164.P15054622628107502125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119165 (n + 1) + 1).toNat

end

end A119164.P15054622628107502125

/-! ## A119164.P6452025407476388531

`A253145(A119165(n+1)-1)`
-/

namespace A119164.P6452025407476388531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A119165 (n + 1) - 1).toNat

end

end A119164.P6452025407476388531

/-! ## A119164.P8606867280761473799

`A000124(A119165(n+1))-A008835(n+1)`
-/

namespace A119164.P8606867280761473799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A119165 (n + 1)).toNat - A008835 (n + 1)

end

end A119164.P8606867280761473799

/-!
# A119165: Numbers k such that the k-th triangular number contains only digits {2,5,6}.

The programs for A119165, there is no canonical definition to state claims against.
-/

/-! ## A119165.P4521504115395378172

`floor(sqrt(2*A119164(n+1)))`
-/

namespace A119165.P4521504115395378172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119164 (n + 1))

end

end A119165.P4521504115395378172

/-! ## A119165.P8716353330082268369

`round(sqrt(2*A119164(n+1)))%A034496(n)`
-/

namespace A119165.P8716353330082268369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119164 (n + 1) : ℝ))) (A034496 n)

end

end A119165.P8716353330082268369

/-! ## A119165.P9174786089026074725

`A002024(A119164(n+1))`
-/

namespace A119165.P9174786089026074725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A119164 (n + 1)).toNat

end

end A119165.P9174786089026074725

/-!
# A119166: Triangular numbers composed of digits {2,5,7}.

The programs for A119166, there is no canonical definition to state claims against.
-/

/-! ## A119166.P16379251163913019657

`C(A119167(n+1)+1, 2)`
-/

namespace A119166.P16379251163913019657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119167 (n + 1) + 1).toNat 2

end

end A119166.P16379251163913019657

/-!
# A119168: Triangular numbers composed of digits {2,5,8}.

The programs for A119168, there is no canonical definition to state claims against.
-/

/-! ## A119168.P15709387902488675980

`A000217(A119169(n+1))`
-/

namespace A119168.P15709387902488675980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119169 (n + 1)).toNat

end

end A119168.P15709387902488675980

/-! ## A119168.P5770980931389446634

`A161680(A119169(n+1)+1)`
-/

namespace A119168.P5770980931389446634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119169 (n + 1) + 1).toNat

end

end A119168.P5770980931389446634

/-!
# A119170: Triangular numbers composed of digits {2,5,9}.

The programs for A119170, there is no canonical definition to state claims against.
-/

/-! ## A119170.P12640458706733038976

`A000217(A119171(n+1))`
-/

namespace A119170.P12640458706733038976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119171 (n + 1)).toNat

end

end A119170.P12640458706733038976

/-! ## A119170.P5500756703923959028

`A000124(A119171(n+1))-A373354(n+1)`
-/

namespace A119170.P5500756703923959028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A119171 (n + 1)).toNat - A373354 (n + 1)

end

end A119170.P5500756703923959028

/-!
# A119171: Numbers k such that the k-th triangular number contains only digits {2,5,9}.

The programs for A119171, there is no canonical definition to state claims against.
-/

/-! ## A119171.P104302415128629215

`floor(sqrt(2*A119170(n+1)))`
-/

namespace A119171.P104302415128629215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119170 (n + 1))

end

end A119171.P104302415128629215

/-!
# A119172: Triangular numbers composed of digits {2,6,7}.

The programs for A119172, there is no canonical definition to state claims against.
-/

/-! ## A119172.P4449074753687169374

`A000217(A119173(n+1))`
-/

namespace A119172.P4449074753687169374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119173 (n + 1)).toNat

end

end A119172.P4449074753687169374

/-! ## A119172.P3337977281963795863

`C(A119173(A269171(n+1))+1, 2)`
-/

namespace A119172.P3337977281963795863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119173 (A269171 (n + 1)).toNat + 1).toNat 2

end

end A119172.P3337977281963795863

/-!
# A119173: Numbers k such that the k-th triangular number contains only digits {2,6,7}.

The programs for A119173, there is no canonical definition to state claims against.
-/

/-! ## A119173.P6515266364937148046

`A002024(A119172(n+1))`
-/

namespace A119173.P6515266364937148046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A119172 (n + 1)).toNat

end

end A119173.P6515266364937148046

/-!
# A119174: Triangular numbers composed of digits {2,6,8}.

The programs for A119174, there is no canonical definition to state claims against.
-/

/-! ## A119174.P10875889740461652368

`A000217(A119175(n+1))`
-/

namespace A119174.P10875889740461652368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119175 (n + 1)).toNat

end

end A119174.P10875889740461652368

/-! ## A119174.P15727356779159031266

`A161680(A119175(n+1)+1)`
-/

namespace A119174.P15727356779159031266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119175 (n + 1) + 1).toNat

end

end A119174.P15727356779159031266

/-! ## A119174.P14588600608017713393

`A179865(A119175(n+1)+1)`
-/

namespace A119174.P14588600608017713393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119175 (n + 1) + 1).toNat

end

end A119174.P14588600608017713393

/-!
# A119175: Numbers k such that the k-th triangular number contains only digits {2,6,8}.

The programs for A119175, there is no canonical definition to state claims against.
-/

/-! ## A119175.P7117384817520402368

`floor(sqrt(2*A119174(n+1)))`
-/

namespace A119175.P7117384817520402368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119174 (n + 1))

end

end A119175.P7117384817520402368

/-!
# A119176: Triangular numbers composed of digits {2,6,9}.

The programs for A119176, there is no canonical definition to state claims against.
-/

/-! ## A119176.P2768067693289158347

`(A119177(n+1)+A119177(n+1)²)/2`
-/

namespace A119176.P2768067693289158347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119177 (n + 1) + A119177 (n + 1) ^ 2 : ℚ) / 2

end

end A119176.P2768067693289158347

/-!
# A119177: Numbers k such that the k-th triangular number contains only digits {2,6,9}.

The programs for A119177, there is no canonical definition to state claims against.
-/

/-! ## A119177.P7856191538410527902

`floor(sqrt(2*A119176(n+1)))`
-/

namespace A119177.P7856191538410527902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119176 (n + 1))

end

end A119177.P7856191538410527902

/-!
# A119178: Triangular numbers composed of digits {2,7,8}.

The programs for A119178, there is no canonical definition to state claims against.
-/

/-! ## A119178.P10937509087155769125

`A000217(A119179(n+1))`
-/

namespace A119178.P10937509087155769125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119179 (n + 1)).toNat

end

end A119178.P10937509087155769125

/-! ## A119178.P9214033665492677268

`A161680(A119179(n+1)+1)`
-/

namespace A119178.P9214033665492677268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119179 (n + 1) + 1).toNat

end

end A119178.P9214033665492677268

/-! ## A119178.P12370252041163920270

`A179865(A119179(n+1)+1)`
-/

namespace A119178.P12370252041163920270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119179 (n + 1) + 1).toNat

end

end A119178.P12370252041163920270

/-! ## A119178.P17203132181914492586

`A253145(A119179(n+1)-1)`
-/

namespace A119178.P17203132181914492586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A119179 (n + 1) - 1).toNat

end

end A119178.P17203132181914492586

/-! ## A119178.P15632807004245366905

`A000096(A119179(n+1)-1)+1`
-/

namespace A119178.P15632807004245366905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A119179 (n + 1) - 1).toNat + 1

end

end A119178.P15632807004245366905

/-!
# A119179: Numbers k such that the k-th triangular number contains only digits {2,7,8}.

The programs for A119179, there is no canonical definition to state claims against.
-/

/-! ## A119179.P9126919799943758919

`floor(sqrt(2*A119178(n+1)))`
-/

namespace A119179.P9126919799943758919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119178 (n + 1))

end

end A119179.P9126919799943758919

/-! ## A119179.P3909914116341351635

`round(sqrt(2*A119178(n+1))+6*A025443(n))`
-/

namespace A119179.P3909914116341351635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119178 (n + 1) : ℝ) + (6 * A025443 n : ℝ))

end

end A119179.P3909914116341351635

/-! ## A119179.P4667639360061464036

`round(sqrt(2*A119178(n+1)))%A252827(n+1)`
-/

namespace A119179.P4667639360061464036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119178 (n + 1) : ℝ))) (A252827 (n + 1))

end

end A119179.P4667639360061464036

/-! ## A119179.P4019029424871782920

`ceil(sqrt(2*A119178(n+1))-A125169(n)%2)`
-/

namespace A119179.P4019029424871782920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119178 (n + 1) : ℝ) - (Int.tmod (A125169 n) 2 : ℝ)⌉

end

end A119179.P4019029424871782920

/-! ## A119179.P6586223034472680805

`round(sqrt(2*A119178(n+1))*A073575(2*n+1))`
-/

namespace A119179.P6586223034472680805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119178 (n + 1) : ℝ) * (A073575 (2 * n + 1) : ℝ))

end

end A119179.P6586223034472680805

/-!
# A119182: Triangular numbers composed of digits {3,4,5}.

The programs for A119182, there is no canonical definition to state claims against.
-/

/-! ## A119182.P7128540479220944894

`A000217(A119183(n+1))`
-/

namespace A119182.P7128540479220944894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119183 (n + 1)).toNat

end

end A119182.P7128540479220944894

/-! ## A119182.P10208846286352711870

`A064038(A119183(n+1)+1)`
-/

namespace A119182.P10208846286352711870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064038 (A119183 (n + 1) + 1).toNat

end

end A119182.P10208846286352711870

/-! ## A119182.P4964206644497903740

`A161680(A119183(n+1)+1)`
-/

namespace A119182.P4964206644497903740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119183 (n + 1) + 1).toNat

end

end A119182.P4964206644497903740

/-! ## A119182.P1958152035845330446

`A179865(A119183(n+1)+1)`
-/

namespace A119182.P1958152035845330446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119183 (n + 1) + 1).toNat

end

end A119182.P1958152035845330446

/-! ## A119182.P5997005685423509100

`A000124(A119183(n+1))-A040544(2*n+3)`
-/

namespace A119182.P5997005685423509100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A119183 (n + 1)).toNat - A040544 (2 * n + 3)

end

end A119182.P5997005685423509100

/-!
# A119183: Numbers k such that the k-th triangular number contains only digits {3,4,5}.

The programs for A119183, there is no canonical definition to state claims against.
-/

/-! ## A119183.P9176558001333631144

`floor(sqrt(2*A119182(n+1)))`
-/

namespace A119183.P9176558001333631144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119182 (n + 1))

end

end A119183.P9176558001333631144

/-! ## A119183.P16756589276221053209

`round(sqrt(2*A119182(n+1)))%A232678(n+1)`
-/

namespace A119183.P16756589276221053209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119182 (n + 1) : ℝ))) (A232678 (n + 1))

end

end A119183.P16756589276221053209

/-! ## A119183.P8953480018990125768

`ceil(A033999(2*n+1)+sqrt(2*A119182(n+1)))`
-/

namespace A119183.P8953480018990125768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033999 (2 * n + 1) : ℝ) + Real.sqrt (2 * A119182 (n + 1) : ℝ)⌉

end

end A119183.P8953480018990125768

/-! ## A119183.P6581630646928872356

`ceil(sqrt(2*A119182(n+1))-A014963(46*(n+2)))`
-/

namespace A119183.P6581630646928872356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119182 (n + 1) : ℝ) - (A014963 (46 * (n + 2)) : ℝ)⌉

end

end A119183.P6581630646928872356

/-!
# A119184: Triangular numbers composed of digits {3,4,6}.

The programs for A119184, there is no canonical definition to state claims against.
-/

/-! ## A119184.P2844239992815442480

`A000217(A119185(n+1))`
-/

namespace A119184.P2844239992815442480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119185 (n + 1)).toNat

end

end A119184.P2844239992815442480

/-! ## A119184.P11308109320815879732

`∩[A284633(n+1), ∑[n]]`
-/

namespace A119184.P11308109320815879732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284633 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A119184.P11308109320815879732

/-!
# A119185: Numbers k such that the k-th triangular number contains only digits {3,4,6}.

The programs for A119185, there is no canonical definition to state claims against.
-/

/-! ## A119185.P2618739798773878522

`floor(sqrt(2*A119184(n+1)))`
-/

namespace A119185.P2618739798773878522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119184 (n + 1))

end

end A119185.P2618739798773878522

/-! ## A119185.P1004831559615069313

`A119195(∑[C(n, 5)+1])`
-/

namespace A119185.P1004831559615069313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 5 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119195 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A119185.P1004831559615069313

/-!
# A119186: Triangular numbers composed of digits {3,5,6}.

The programs for A119186, there is no canonical definition to state claims against.
-/

/-! ## A119186.P5760125901829109790

`A000217(A119187(n+1))`
-/

namespace A119186.P5760125901829109790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119187 (n + 1)).toNat

end

end A119186.P5760125901829109790

/-! ## A119186.P3913767878002548665

`A161680(A119187(n+1)+1)`
-/

namespace A119186.P3913767878002548665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119187 (n + 1) + 1).toNat

end

end A119186.P3913767878002548665

/-! ## A119186.P17640085289007691774

`A179865(A119187(n+1)+1)`
-/

namespace A119186.P17640085289007691774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119187 (n + 1) + 1).toNat

end

end A119186.P17640085289007691774

/-! ## A119186.P18263682559329716510

`A253145(A119187(n+1)-1)`
-/

namespace A119186.P18263682559329716510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A119187 (n + 1) - 1).toNat

end

end A119186.P18263682559329716510

/-!
# A119187: Numbers k such that the k-th triangular number contains only digits {3,5,6}.

The programs for A119187, there is no canonical definition to state claims against.
-/

/-! ## A119187.P1007312467519607368

`floor(sqrt(2*A119186(n+1)))`
-/

namespace A119187.P1007312467519607368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119186 (n + 1))

end

end A119187.P1007312467519607368

/-! ## A119187.P9673923175236471492

`ceil(sqrt(2*A119186(n+1))-A016068(n))`
-/

namespace A119187.P9673923175236471492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A119186 (n + 1) : ℝ) - (A016068 n : ℝ)⌉

end

end A119187.P9673923175236471492

/-! ## A119187.P16723445040744281180

`round(sqrt(2*A119186(n+1)))%A010904(n)`
-/

namespace A119187.P16723445040744281180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A119186 (n + 1) : ℝ))) (A010904 n)

end

end A119187.P16723445040744281180

/-! ## A119187.P1104177726453174882

`round(sqrt(2*A119186(n+1)-A014963(n+2)))`
-/

namespace A119187.P1104177726453174882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119186 (n + 1) - A014963 (n + 2) : ℝ))

end

end A119187.P1104177726453174882

/-! ## A119187.P9410206035037106493

`round(A035363(2*n+1)+sqrt(2*A119186(n+1)))`
-/

namespace A119187.P9410206035037106493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A035363 (2 * n + 1) : ℝ) + Real.sqrt (2 * A119186 (n + 1) : ℝ))

end

end A119187.P9410206035037106493

/-!
# A119192: Triangular numbers composed of digits {3,5,9}.

The programs for A119192, there is no canonical definition to state claims against.
-/

/-! ## A119192.P15878511561513914852

`A000217(A119193(n+1))`
-/

namespace A119192.P15878511561513914852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119193 (n + 1)).toNat

end

end A119192.P15878511561513914852

/-!
# A119193: Numbers k such that the k-th triangular number contains only digits {3,5,9}.

The programs for A119193, there is no canonical definition to state claims against.
-/

/-! ## A119193.P6408323482645666146

`floor(sqrt(2*A119192(n+1)))`
-/

namespace A119193.P6408323482645666146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119192 (n + 1))

end

end A119193.P6408323482645666146

/-!
# A119194: Triangular numbers composed of digits {3,6,7}.

The programs for A119194, there is no canonical definition to state claims against.
-/

/-! ## A119194.P18228469344751977660

`A000217(A119195(n+1))`
-/

namespace A119194.P18228469344751977660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119195 (n + 1)).toNat

end

end A119194.P18228469344751977660

/-! ## A119194.P959434414381173902

`A161680(A119195(n+1)+1)`
-/

namespace A119194.P959434414381173902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119195 (n + 1) + 1).toNat

end

end A119194.P959434414381173902

/-! ## A119194.P3245473272152794840

`A179865(A119195(n+1)+1)`
-/

namespace A119194.P3245473272152794840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119195 (n + 1) + 1).toNat

end

end A119194.P3245473272152794840

/-! ## A119194.P4352060614073267135

`A000124(A119195(n+1))-A019433(2*(n+1))`
-/

namespace A119194.P4352060614073267135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A119195 (n + 1)).toNat - A019433 (2 * (n + 1))

end

end A119194.P4352060614073267135

/-!
# A119195: Numbers k such that the k-th triangular number contains only digits {3,6,7}.

The programs for A119195, there is no canonical definition to state claims against.
-/

/-! ## A119195.P5327407420872790247

`round(sqrt(2*A119194(n+1)))`
-/

namespace A119195.P5327407420872790247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A119194 (n + 1) : ℝ))

end

end A119195.P5327407420872790247

/-! ## A119195.P3902495841052414546

`A080098(A119194(n+1))`
-/

namespace A119195.P3902495841052414546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A119194 (n + 1)).toNat

end

end A119195.P3902495841052414546

/-!
# A119196: Triangular numbers composed of digits {3,6,8}.

The programs for A119196, there is no canonical definition to state claims against.
-/

/-! ## A119196.P963304584317312048

`A000217(A119197(n+1))`
-/

namespace A119196.P963304584317312048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119197 (n + 1)).toNat

end

end A119196.P963304584317312048

/-! ## A119196.P11368680928582753745

`A161680(A119197(n+1)+1)`
-/

namespace A119196.P11368680928582753745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119197 (n + 1) + 1).toNat

end

end A119196.P11368680928582753745

/-!
# A119197: Numbers k such that the k-th triangular number contains only digits {3,6,8}.

The programs for A119197, there is no canonical definition to state claims against.
-/

/-! ## A119197.P8403006389907186815

`floor(sqrt(2*A119196(n+1)))`
-/

namespace A119197.P8403006389907186815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119196 (n + 1))

end

end A119197.P8403006389907186815

/-!
# A119198: Triangular numbers composed of digits {3,6,9}.

The programs for A119198, there is no canonical definition to state claims against.
-/

/-! ## A119198.P448921213368748958

`A000217(A119199(n+1))`
-/

namespace A119198.P448921213368748958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A119199 (n + 1)).toNat

end

end A119198.P448921213368748958

/-! ## A119198.P17528500924858024877

`A161680(A119199(n+1)+1)`
-/

namespace A119198.P17528500924858024877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A119199 (n + 1) + 1).toNat

end

end A119198.P17528500924858024877

/-! ## A119198.P7864649555321190689

`A179865(A119199(n+1)+1)`
-/

namespace A119198.P7864649555321190689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A119199 (n + 1) + 1).toNat

end

end A119198.P7864649555321190689

/-! ## A119198.P5208843054390801026

`A134869(A119199(n+1))-A000040(n+2)%2`
-/

namespace A119198.P5208843054390801026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (A119199 (n + 1)).toNat - Int.tmod (A000040 (n + 2)) 2

end

end A119198.P5208843054390801026

/-!
# A119199: Numbers k such that the k-th triangular number contains only digits {3,6,9}.

The programs for A119199, there is no canonical definition to state claims against.
-/

/-! ## A119199.P5256856151400487216

`floor(sqrt(2*A119198(n+1)))`
-/

namespace A119199.P5256856151400487216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A119198 (n + 1))

end

end A119199.P5256856151400487216

