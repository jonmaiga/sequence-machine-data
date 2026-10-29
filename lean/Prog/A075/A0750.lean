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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C041
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
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
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
# A075000: Smallest number such that n*a(n) is a concatenation of n consecutive integers; or 0 if no such number exists.

The programs for A075000, there is no canonical definition to state claims against.
-/

/-! ## A075000.P11968795583833780684

`A077306(n+1)/(n+1)`
-/

namespace A075000.P11968795583833780684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077306 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A075000.P11968795583833780684

/-!
# A075003: Floor[ concatenation of n+1 and n divided by 2 ].

The programs for A075003, the canonical program `A075003.P17913588332677353199` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075003 has offset 0).

The definition of A075003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075003.P17913588332677353199

`ceil(A111708(n)/2+n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A075003

/-- `ceil(A111708(n)/2+n)` -/
def P17913588332677353199.Spec : Prop :=
  ∀ n, P17913588332677353199.a n = A075003 n

theorem P17913588332677353199.correct : P17913588332677353199.Spec := by
  intro n
  simp only [A075003]

end A075003

/-! ## A075003.P14211224212372835434

`A065033(A111708(n))+n`
-/

namespace A075003.P14211224212372835434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A111708 n).toNat + (n : ℤ)

end

end A075003.P14211224212372835434

namespace A075003

/-- `A065033(A111708(n))+n` -/
def P14211224212372835434.Spec : Prop :=
  ∀ n, P14211224212372835434.a n = A075003 n

end A075003

/-! ## A075003.P5871910080094106324

`A004526(A111708(n)+1)+n`
-/

namespace A075003.P5871910080094106324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A111708 n + 1).toNat + (n : ℤ)

end

end A075003.P5871910080094106324

namespace A075003

/-- `A004526(A111708(n)+1)+n` -/
def P5871910080094106324.Spec : Prop :=
  ∀ n, P5871910080094106324.a n = A075003 n

end A075003

/-! ## A075003.P8455397415391588361

`A123108(A111708(n)+1)+n`
-/

namespace A075003.P8455397415391588361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A111708 n + 1).toNat + (n : ℤ)

end

end A075003.P8455397415391588361

namespace A075003

/-- `A123108(A111708(n)+1)+n` -/
def P8455397415391588361.Spec : Prop :=
  ∀ n, P8455397415391588361.a n = A075003 n

end A075003

/-! ## A075003.P16629516906942598158

`A008619(A111708(n)-1)+n`
-/

namespace A075003.P16629516906942598158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A111708 n - 1).toNat + (n : ℤ)

end

end A075003.P16629516906942598158

namespace A075003

/-- `A008619(A111708(n)-1)+n` -/
def P16629516906942598158.Spec : Prop :=
  ∀ n, P16629516906942598158.a n = A075003 n

end A075003

/-! ## A075003.P17683140556381172972

`A110654(A111708(n)+2*n)`
-/

namespace A075003.P17683140556381172972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A111708 n + (2 * n : ℤ)).toNat

end

end A075003.P17683140556381172972

namespace A075003

/-- `A110654(A111708(n)+2*n)` -/
def P17683140556381172972.Spec : Prop :=
  ∀ n, P17683140556381172972.a n = A075003 n

end A075003

/-!
# A075004: Floor[ concatenation of n+2, n+1 and n divided by 3 ].

The programs for A075004, there is no canonical definition to state claims against.
-/

/-! ## A075004.P11877985141086291957

`A127424(n+1)/3`
-/

namespace A075004.P11877985141086291957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127424 (n + 1) : ℚ) / 3

end

end A075004.P11877985141086291957

/-! ## A075004.P12646444625690929698

`record[A127424(A331742(n))/3]`
-/

namespace A075004.P12646444625690929698
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127424 (A331742 n).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075004.P12646444625690929698

/-! ## A075004.P2315034680235049618

`A255588(A127424(n+1))`
-/

namespace A075004.P2315034680235049618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255588 (A127424 (n + 1)).toNat

end

end A075004.P2315034680235049618

/-!
# A075011: Floor[ concatenation of numbers from n to 1 divided by concatenation of numbers from 1 to n].

The programs for A075011, there is no canonical definition to state claims against.
-/

/-! ## A075011.P728926171750341451

`round(sqrt(n²+1))-A344420(A056525(n+1))`
-/

namespace A075011.P728926171750341451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - A344420 (A056525 (n + 1)).toNat

end

end A075011.P728926171750341451

/-! ## A075011.P14550531315291588990

`floor(A067090(n+1)/A067089(n+1))`
-/

namespace A075011.P14550531315291588990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067090 (n + 1) : ℚ) / (A067089 (n + 1) : ℚ)⌋

end

end A075011.P14550531315291588990

/-! ## A075011.P4602798317422690643

`floor(A000422(n+1)/A007908(n+1))`
-/

namespace A075011.P4602798317422690643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000422 (n + 1) : ℚ) / (A007908 (n + 1) : ℚ)⌋

end

end A075011.P4602798317422690643

/-! ## A075011.P18399307130945922919

`(A000422(n+1)-A095249(n+1))/A007908(n+1)`
-/

namespace A075011.P18399307130945922919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000422 (n + 1) - A095249 (n + 1) : ℚ) / (A007908 (n + 1) : ℚ)

end

end A075011.P18399307130945922919

/-!
# A075019: a(1) = 1; for n > 1, a(n) = the smallest prime divisor of the number C(n) formed from the concatenation of 1,2,3,... up to n.

The programs for A075019, there is no canonical definition to state claims against.
-/

/-! ## A075019.P16383009394231197497

`A267068(A093835(n))`
-/

namespace A075019.P16383009394231197497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267068 (A093835 n).toNat

end

end A075019.P16383009394231197497

/-! ## A075019.P9885554727687888676

`A138960(A083434(n+1))`
-/

namespace A075019.P9885554727687888676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138960 (A083434 (n + 1)).toNat

end

end A075019.P9885554727687888676

/-! ## A075019.P12123287044455802374

`A138960(A128290(n+1))`
-/

namespace A075019.P12123287044455802374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138960 (A128290 (n + 1)).toNat

end

end A075019.P12123287044455802374

/-! ## A075019.P11571681216662023885

`A138960(A128606(n+1))`
-/

namespace A075019.P11571681216662023885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138960 (A128606 (n + 1)).toNat

end

end A075019.P11571681216662023885

/-! ## A075019.P17908613893982744150

`A138960(A249182(n+1))`
-/

namespace A075019.P17908613893982744150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138960 (A249182 (n + 1)).toNat

end

end A075019.P17908613893982744150

/-!
# A075021: a(1) = 1; for n>1, a(n) = the largest prime divisor of the number C(n) formed from the concatenation of n, n-1, n-2, n-3, ... down to 1.

The programs for A075021, there is no canonical definition to state claims against.
-/

/-! ## A075021.P13065419238458618789

`A006530(A000422(n+1))`
-/

namespace A075021.P13065419238458618789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000422 (n + 1)).toNat

end

end A075021.P13065419238458618789

/-! ## A075021.P8571430158432371872

`A138963(record[A307974(n)])`
-/

namespace A075021.P8571430158432371872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075021.P8571430158432371872

/-! ## A075021.P7190194514331526562

`A000027(A138963(n+1))`
-/

namespace A075021.P7190194514331526562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A138963 (n + 1)).toNat

end

end A075021.P7190194514331526562

/-! ## A075021.P11731058175839735332

`A138963(A001104(n+1))`
-/

namespace A075021.P11731058175839735332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138963 (A001104 (n + 1)).toNat

end

end A075021.P11731058175839735332

/-!
# A075022: a(1) = 1; for n>1, a(n) = the largest prime divisor of the number C(n) formed from the concatenation of 1,2,3,... up to n.

The programs for A075022, there is no canonical definition to state claims against.
-/

/-! ## A075022.P12612809205389009115

`A073844(A001104(n+1))`
-/

namespace A075022.P12612809205389009115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073844 (A001104 (n + 1)).toNat

end

end A075022.P12612809205389009115

/-! ## A075022.P11754367724255551021

`A073844(A002998(n+1))`
-/

namespace A075022.P11754367724255551021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073844 (A002998 (n + 1)).toNat

end

end A075022.P11754367724255551021

/-! ## A075022.P4831889813784777865

`A073844(A028431(n+1))`
-/

namespace A075022.P4831889813784777865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073844 (A028431 (n + 1)).toNat

end

end A075022.P4831889813784777865

/-! ## A075022.P16234131106350114559

`A073844(A032555(n+1))`
-/

namespace A075022.P16234131106350114559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073844 (A032555 (n + 1)).toNat

end

end A075022.P16234131106350114559

/-! ## A075022.P13225031350819604191

`A073844(A032557(n+1))`
-/

namespace A075022.P13225031350819604191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073844 (A032557 (n + 1)).toNat

end

end A075022.P13225031350819604191

/-!
# A075023: a(n) = the smallest prime divisor of A173426(n) = concatenation of (1, 2, 3,..., n, n-1, ..., 1) for n > 1; a(1) = 1.

The programs for A075023, there is no canonical definition to state claims against.
-/

/-! ## A075023.P9712707709166603047

`A385579((n+1)²)`
-/

namespace A075023.P9712707709166603047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385579 ((n + 1) ^ 2)

end

end A075023.P9712707709166603047

/-! ## A075023.P10394924508828231342

`A077805(Δ[∑[A001045(n)]²])`
-/

namespace A075023.P10394924508828231342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077805 (f1 (n + 1) - f1 n).toNat

end

end A075023.P10394924508828231342

/-! ## A075023.P14471628853365625738

`A261411(∑[A008292(n+1)^(n-4)])`
-/

namespace A075023.P14471628853365625738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) ^ ((n : ℤ) - 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261411 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A075023.P14471628853365625738

/-!
# A075024: a(n) is the largest prime divisor of the number A173426(n) = concatenate(1,2,...,n-1,n,n-1,...,2,1); a(1) = 1.

The programs for A075024, there is no canonical definition to state claims against.
-/

/-! ## A075024.P9075004845736742434

`A077806(A066524(n+1))`
-/

namespace A075024.P9075004845736742434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077806 (A066524 (n + 1)).toNat

end

end A075024.P9075004845736742434

/-! ## A075024.P9841271341724706121

`A077806((n+1)*A000225(n+1))`
-/

namespace A075024.P9841271341724706121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077806 ((n + 1 : ℤ) * A000225 (n + 1)).toNat

end

end A075024.P9841271341724706121

/-! ## A075024.P3372002782282303866

`A005422(n+1)%A031991(n+1)`
-/

namespace A075024.P3372002782282303866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005422 (n + 1)) (A031991 (n + 1))

end

end A075024.P3372002782282303866

/-! ## A075024.P7601358050348900414

`A089812(A210696(n))+A005422(n+1)`
-/

namespace A075024.P7601358050348900414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089812 (A210696 n).toNat + A005422 (n + 1)

end

end A075024.P7601358050348900414

/-! ## A075024.P16487444664103074445

`A005422(n+1)-A000122(A005425(n))`
-/

namespace A075024.P16487444664103074445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005422 (n + 1) - A000122 (A005425 n).toNat

end

end A075024.P16487444664103074445

/-!
# A075025: Numbers k such that d(k) < d(k-1) and d(k) < d(k+1), where d(k) is the number of divisors of k.

The programs for A075025, there is no canonical definition to state claims against.
-/

/-! ## A075025.P17443778625006791799

`∪[A215848(n+1), A075026(n)]`
-/

namespace A075025.P17443778625006791799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075026 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075025.P17443778625006791799

/-! ## A075025.P1910463698809354404

`∩[A074775(n+1), A074827(n+1)+1]`
-/

namespace A075025.P1910463698809354404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075025.P1910463698809354404

/-! ## A075025.P8309619222803753333

`∩[A074775(n+1), A020725(A074827(n+1))]`
-/

namespace A075025.P8309619222803753333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A074827 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075025.P8309619222803753333

/-! ## A075025.P15953488472034713138

`lt[A033577(A210442(n)), A182155(n+1)]`
-/

namespace A075025.P15953488472034713138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033577 (A210442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075025.P15953488472034713138

/-! ## A075025.P9837271075958123063

`lt[A262253(A331991(n+1)), A363336(n)]`
-/

namespace A075025.P9837271075958123063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262253 (A331991 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075025.P9837271075958123063

/-!
# A075026: Define a number k to occupy a divisor cavity if d(k-1) > d(k) < d(k+1) where d(k) is the number of divisors of k. Sequence gives composite numbers occupying a divisor cavity.

The programs for A075026, there is no canonical definition to state claims against.
-/

/-! ## A075026.P8634908714089022608

`filter[A075025(n+1), A005171(#)]`
-/

namespace A075026.P8634908714089022608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A075026.P8634908714089022608

/-! ## A075026.P5749576048280605312

`filter[A075025(n+1), A066247(#)]`
-/

namespace A075026.P5749576048280605312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A075026.P5749576048280605312

/-! ## A075026.P10432074616320165976

`filter[A075025(n+1), A202238(#)]`
-/

namespace A075026.P10432074616320165976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A075026.P10432074616320165976

/-! ## A075026.P7689633594604070305

`filter[A075025(n+1), A292438(#)]`
-/

namespace A075026.P7689633594604070305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A075026.P7689633594604070305

/-! ## A075026.P5557734079120527287

`filter[A075025(n+1), A323162(#)]`
-/

namespace A075026.P5557734079120527287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A075026.P5557734079120527287

/-! ## A075026.P13569990385139326836

`∩[A002808(n+1), A075025(n+1)]`
-/

namespace A075026.P13569990385139326836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075026.P13569990385139326836

/-! ## A075026.P14361509267234922377

`∩[A018252(n+1), A075025(n+1)]`
-/

namespace A075026.P14361509267234922377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075026.P14361509267234922377

/-! ## A075026.P18131091748788451570

`∩[A075025(n+1), A141468(n+1)]`
-/

namespace A075026.P18131091748788451570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075026.P18131091748788451570

/-! ## A075026.P4171567516237084158

`∩[A075025(n+1), A125493(n+1)]`
-/

namespace A075026.P4171567516237084158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075026.P4171567516237084158

/-! ## A075026.P6534343106660741307

`∩[A075025(n+1), A079364(n+1)]`
-/

namespace A075026.P6534343106660741307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075026.P6534343106660741307

/-! ## A075026.P9790522591986957556

`∩[A075025(n+1), A171845(n+1)]`
-/

namespace A075026.P9790522591986957556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075026.P9790522591986957556

/-! ## A075026.P486601418400015642

`∩[A075025(n+1), A110087(n+1)]`
-/

namespace A075026.P486601418400015642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075026.P486601418400015642

/-! ## A075026.P15991921337684974504

`∩[A005381(n+1), A075025(n+1)]`
-/

namespace A075026.P15991921337684974504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075026.P15991921337684974504

/-! ## A075026.P6922135399547562123

`∩[A068780(n+1), A075025(n+1)]`
-/

namespace A075026.P6922135399547562123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075026.P6922135399547562123

/-! ## A075026.P5822561703359863825

`∩[A075025(n+1), A164276(n+1)]`
-/

namespace A075026.P5822561703359863825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075026.P5822561703359863825

/-! ## A075026.P6874336685600770915

`∩[A075025(n+1), A078542(n+1)]`
-/

namespace A075026.P6874336685600770915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075026.P6874336685600770915

/-! ## A075026.P1122884462529268272

`∩[A056653(n+1), A075025(n+1)]`
-/

namespace A075026.P1122884462529268272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075026.P1122884462529268272

/-! ## A075026.P5141804193942384590

`∩[A062973(n+1), A075025(n+1)]`
-/

namespace A075026.P5141804193942384590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075026.P5141804193942384590

/-! ## A075026.P3791911395270012360

`∩[A065090(n+1), A075025(n+1)]`
-/

namespace A075026.P3791911395270012360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075026.P3791911395270012360

/-! ## A075026.P17778550932526411536

`∩[A075025(n+1), A171581(n+1)]`
-/

namespace A075026.P17778550932526411536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075026.P17778550932526411536

/-!
# A075027: Numbers k such that d(k-1) < d(k) > d(k+1), d = A000005.

The programs for A075027, there is no canonical definition to state claims against.
-/

/-! ## A075027.P1994268632766240360

`∩[A074827(n+1), A240171(n+1)]`
-/

namespace A075027.P1994268632766240360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075027.P1994268632766240360

/-! ## A075027.P13048079703240521776

`∩[A074775(n+1)+1, A074827(n+1)]`
-/

namespace A075027.P13048079703240521776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074775 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075027.P13048079703240521776

/-! ## A075027.P15133933540185966659

`∩[A020725(A074775(n+1)), A074827(n+1)]`
-/

namespace A075027.P15133933540185966659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A074775 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075027.P15133933540185966659

/-! ## A075027.P10639941166410342664

`∩[A354591(n+1), A099260(n)]`
-/

namespace A075027.P10639941166410342664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099260 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075027.P10639941166410342664

/-! ## A075027.P12991660673599465297

`filter[A111689(2*(n+1)), A379968(#)]`
-/

namespace A075027.P12991660673599465297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111689 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379968 (f1 j).toNat = 1) n)

end

end A075027.P12991660673599465297

/-!
# A075028: a(1) = 1, then a(n) = the smallest number k such that the number of divisors of the n numbers from k through k+n-1 are in strictly ascending order.

The programs for A075028, there is no canonical definition to state claims against.
-/

/-! ## A075028.P11143431962275648125

`A284596(A194981(n+1)+A112519(n))`
-/

namespace A075028.P11143431962275648125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284596 (A194981 (n + 1) + A112519 n).toNat

end

end A075028.P11143431962275648125

/-! ## A075028.P4594731613092445477

`A284596(A160731(or(1, n)))`
-/

namespace A075028.P4594731613092445477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284596 (A160731 (Nat.lor 1 n)).toNat

end

end A075028.P4594731613092445477

/-!
# A075029: a(n) is the smallest number k such that the number of divisors of the n numbers from k through k+n-1 are decreasing.

The programs for A075029, there is no canonical definition to state claims against.
-/

/-! ## A075029.P15403903862813722101

`A050354(A094420(n))*A188112(3*n+2)`
-/

namespace A075029.P15403903862813722101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050354 (A094420 n).toNat * A188112 (3 * n + 2)

end

end A075029.P15403903862813722101

/-!
# A075031: a(n) is the smallest number k such that the number of divisors of the n numbers from k through k+n-1 are nonincreasing.

The programs for A075031, there is no canonical definition to state claims against.
-/

/-! ## A075031.P3841806538311300555

`A352928(A352749(n+1)!)`
-/

namespace A075031.P3841806538311300555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352928 (Nat.factorial (A352749 (n + 1)).toNat)

end

end A075031.P3841806538311300555

/-! ## A075031.P13435632291799721455

`A395965(A058197(a(n-2)+2))` with `a(0)=1, a(1)=2`
-/

namespace A075031.P13435632291799721455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A395965 (A058197 (a (n - 2) + 2).toNat).toNat

end

end A075031.P13435632291799721455

/-!
# A075032: Numbers k such that tau(k) <= tau(k+1) <= tau(k+2) where tau(k) = number of divisors of k.

The programs for A075032, there is no canonical definition to state claims against.
-/

/-! ## A075032.P1206645177412275385

`eq[1, Δ[A112275(n+1)]]+1`
-/

namespace A075032.P1206645177412275385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A075032.P1206645177412275385

/-! ## A075032.P6132428770679290719

`eq[1, 7%A257372(n)]`
-/

namespace A075032.P6132428770679290719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A257372 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075032.P6132428770679290719

/-! ## A075032.P12847457505594654861

`lt[A257372(n), A122553(n)²]`
-/

namespace A075032.P12847457505594654861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075032.P12847457505594654861

/-! ## A075032.P5127064729986655468

`eq[6, lcm(A237425(n), A257372(n))]`
-/

namespace A075032.P5127064729986655468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A237425 n) (A257372 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075032.P5127064729986655468

/-!
# A075033: Numbers k such that tau(k) <= tau(k+1) <= tau(k+2) <= tau(k+3) where tau(k) = number of divisors of k.

The programs for A075033, there is no canonical definition to state claims against.
-/

/-! ## A075033.P4763284759417560340

`∩[A075032(n+1)-1, A075032(n+1)]`
-/

namespace A075033.P4763284759417560340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075032 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075033.P4763284759417560340

/-! ## A075033.P5798893969129962707

`A075032(eq[1, A075032(n+2)-A075032(n+1)]+1)`
-/

namespace A075033.P5798893969129962707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075032 (n + 2) - A075032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075033.P5798893969129962707

/-! ## A075033.P4012351088623694602

`∩[A075032(n+1), A023443(A075032(n+1))]`
-/

namespace A075033.P4012351088623694602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A075032 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075033.P4012351088623694602

/-! ## A075033.P17976485193154637513

`lt[A091862(A005891(n)), A355452(n+1)]`
-/

namespace A075033.P17976485193154637513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091862 (A005891 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075033.P17976485193154637513

/-! ## A075033.P10973707676645422133

`∩[A075032(n+1), A308416(n+1)]`
-/

namespace A075033.P10973707676645422133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075033.P10973707676645422133

/-!
# A075035: Numbers k such that tau(k) >= tau(k+1) >= tau(k+2) >= tau(k+3) where tau(k) = number of divisors of k.

The programs for A075035, there is no canonical definition to state claims against.
-/

/-! ## A075035.P101434659911226430

`∩[A075034(n+1)-1, A075034(n+1)]`
-/

namespace A075035.P101434659911226430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075034 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075035.P101434659911226430

/-! ## A075035.P12961966439460653505

`A075034(eq[1, A075034(n+2)-A075034(n+1)]+1)`
-/

namespace A075035.P12961966439460653505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075034 (n + 2) - A075034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075035.P12961966439460653505

/-! ## A075035.P7634232306925563921

`∩[A075034(n+1), A023443(A075034(n+1))]`
-/

namespace A075035.P7634232306925563921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A075034 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075035.P7634232306925563921

/-! ## A075035.P9575499621754537080

`∩[A075034(n+1), A133012(n+1)]`
-/

namespace A075035.P9575499621754537080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075035.P9575499621754537080

/-! ## A075035.P1200596954343049597

`∩[A075034(n+1), A179892(n+1)]`
-/

namespace A075035.P1200596954343049597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075035.P1200596954343049597

/-!
# A075036: Smaller of two smallest consecutive numbers with 2n divisors.

The programs for A075036, there is no canonical definition to state claims against.
-/

/-! ## A075036.P14169352525921290110

`A364890((n+1)*A057921(A070010(n+1)))`
-/

namespace A075036.P14169352525921290110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364890 ((n + 1 : ℤ) * A057921 (A070010 (n + 1)).toNat).toNat

end

end A075036.P14169352525921290110

/-! ## A075036.P2606033314938247256

`A364890(A060778(A364890(n+1))+n+1)`
-/

namespace A075036.P2606033314938247256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364890 (A060778 (A364890 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A075036.P2606033314938247256

/-!
# A075039: Smallest of three consecutive squarefree numbers having equal numbers of prime factors.

The programs for A075039, the canonical program `A075039.P15668940356083047975` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075039 has offset 1).

The definition of A075039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1036 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075039.P15257601410528419058

`∩[A052214(n+1), A086263(n+1)]`
-/

namespace A075039.P15257601410528419058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075039.P15257601410528419058

namespace A075039

/-- `∩[A052214(n+1), A086263(n+1)]` -/
def P15257601410528419058.Spec : Prop :=
  ∀ n, (P15257601410528419058.a n : ℤ) = A075039 (n + 1)

end A075039

/-! ## A075039.P15166451481104267802

`∩[A086263(n+1), A359746(n+1)]`
-/

namespace A075039.P15166451481104267802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075039.P15166451481104267802

namespace A075039

/-- `∩[A086263(n+1), A359746(n+1)]` -/
def P15166451481104267802.Spec : Prop :=
  ∀ n, (P15166451481104267802.a n : ℤ) = A075039 (n + 1)

end A075039

/-! ## A075039.P9068590570080049929

`∩[A005238(n+1), A073251(n+1)]`
-/

namespace A075039.P9068590570080049929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075039.P9068590570080049929

namespace A075039

/-- `∩[A005238(n+1), A073251(n+1)]` -/
def P9068590570080049929.Spec : Prop :=
  ∀ n, (P9068590570080049929.a n : ℤ) = A075039 (n + 1)

end A075039

/-! ## A075039.P3862886034993942086

`∩[A045939(n+1), A073251(n+1)]`
-/

namespace A075039.P3862886034993942086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075039.P3862886034993942086

namespace A075039

/-- `∩[A045939(n+1), A073251(n+1)]` -/
def P3862886034993942086.Spec : Prop :=
  ∀ n, (P3862886034993942086.a n : ℤ) = A075039 (n + 1)

end A075039

/-! ## A075039.P4849689878574478628

`∩[A052214(n+1), A073251(n+1)]`
-/

namespace A075039.P4849689878574478628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075039.P4849689878574478628

namespace A075039

/-- `∩[A052214(n+1), A073251(n+1)]` -/
def P4849689878574478628.Spec : Prop :=
  ∀ n, (P4849689878574478628.a n : ℤ) = A075039 (n + 1)

end A075039

/-! ## A075039.P17189074144199297577

`∩[A073251(n+1), A359746(n+1)]`
-/

namespace A075039.P17189074144199297577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075039.P17189074144199297577

namespace A075039

/-- `∩[A073251(n+1), A359746(n+1)]` -/
def P17189074144199297577.Spec : Prop :=
  ∀ n, (P17189074144199297577.a n : ℤ) = A075039 (n + 1)

end A075039

/-! ## A075039.P15668940356083047975

`∩[A006073(n+1), A073251(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A075039

/-- `∩[A006073(n+1), A073251(n+1)]` -/
def P15668940356083047975.Spec : Prop :=
  ∀ n, (P15668940356083047975.a n : ℤ) = A075039 (n + 1)

theorem P15668940356083047975.correct : P15668940356083047975.Spec := by
  intro n
  simp only [A075039, Nat.add_sub_cancel]

end A075039

/-! ## A075039.P5882389581541253506

`record[A007947(A052214(n+1))]`
-/

namespace A075039.P5882389581541253506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A052214 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075039.P5882389581541253506

namespace A075039

/-- `record[A007947(A052214(n+1))]` -/
def P5882389581541253506.Spec : Prop :=
  ∀ n, P5882389581541253506.a n = A075039 (n + 1)

end A075039

/-! ## A075039.P810312690863069114

`filter[A052214(n+1), A008966(#)]`
-/

namespace A075039.P810312690863069114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A075039.P810312690863069114

namespace A075039

/-- `filter[A052214(n+1), A008966(#)]` -/
def P810312690863069114.Spec : Prop :=
  ∀ n, P810312690863069114.a n = A075039 (n + 1)

end A075039

/-! ## A075039.P12134999266414022925

`filter[A359746(n+1), A008966(#)]`
-/

namespace A075039.P12134999266414022925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A075039.P12134999266414022925

namespace A075039

/-- `filter[A359746(n+1), A008966(#)]` -/
def P12134999266414022925.Spec : Prop :=
  ∀ n, P12134999266414022925.a n = A075039 (n + 1)

end A075039

/-! ## A075039.P8483983007775436971

`filter[A052214(n+1), A354353(#)]`
-/

namespace A075039.P8483983007775436971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A075039.P8483983007775436971

namespace A075039

/-- `filter[A052214(n+1), A354353(#)]` -/
def P8483983007775436971.Spec : Prop :=
  ∀ n, P8483983007775436971.a n = A075039 (n + 1)

end A075039

/-! ## A075039.P6826521858150590019

`filter[A052214(n+1), A354819(#)]`
-/

namespace A075039.P6826521858150590019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A075039.P6826521858150590019

namespace A075039

/-- `filter[A052214(n+1), A354819(#)]` -/
def P6826521858150590019.Spec : Prop :=
  ∀ n, P6826521858150590019.a n = A075039 (n + 1)

end A075039

/-! ## A075039.P2444786577019056038

`filter[A052214(n+1), A380469(#)]`
-/

namespace A075039.P2444786577019056038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A075039.P2444786577019056038

namespace A075039

/-- `filter[A052214(n+1), A380469(#)]` -/
def P2444786577019056038.Spec : Prop :=
  ∀ n, P2444786577019056038.a n = A075039 (n + 1)

end A075039

/-! ## A075039.P5903624479585052678

`∩[A086263(n+1), A279767(n+1)]`
-/

namespace A075039.P5903624479585052678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075039.P5903624479585052678

namespace A075039

/-- `∩[A086263(n+1), A279767(n+1)]` -/
def P5903624479585052678.Spec : Prop :=
  ∀ n, (P5903624479585052678.a n : ℤ) = A075039 (n + 1)

end A075039

/-! ## A075039.P2451865903210336404

`∩[A005117(n+1), A052214(n+1)]`
-/

namespace A075039.P2451865903210336404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075039.P2451865903210336404

namespace A075039

/-- `∩[A005117(n+1), A052214(n+1)]` -/
def P2451865903210336404.Spec : Prop :=
  ∀ n, (P2451865903210336404.a n : ℤ) = A075039 (n + 1)

end A075039

/-! ## A075039.P9171164629452583056

`∩[A005238(n+1), A007675(n+1)]`
-/

namespace A075039.P9171164629452583056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075039.P9171164629452583056

namespace A075039

/-- `∩[A005238(n+1), A007675(n+1)]` -/
def P9171164629452583056.Spec : Prop :=
  ∀ n, (P9171164629452583056.a n : ℤ) = A075039 (n + 1)

end A075039

/-! ## A075039.P917227692334470660

`∩[A006073(n+1), A007675(n+1)]`
-/

namespace A075039.P917227692334470660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075039.P917227692334470660

namespace A075039

/-- `∩[A006073(n+1), A007675(n+1)]` -/
def P917227692334470660.Spec : Prop :=
  ∀ n, (P917227692334470660.a n : ℤ) = A075039 (n + 1)

end A075039

/-! ## A075039.P7789304850050665225

`∩[A007675(n+1), A045939(n+1)]`
-/

namespace A075039.P7789304850050665225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075039.P7789304850050665225

namespace A075039

/-- `∩[A007675(n+1), A045939(n+1)]` -/
def P7789304850050665225.Spec : Prop :=
  ∀ n, (P7789304850050665225.a n : ℤ) = A075039 (n + 1)

end A075039

/-! ## A075039.P7418269108855881948

`∩[A007675(n+1), A052214(n+1)]`
-/

namespace A075039.P7418269108855881948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075039.P7418269108855881948

namespace A075039

/-- `∩[A007675(n+1), A052214(n+1)]` -/
def P7418269108855881948.Spec : Prop :=
  ∀ n, (P7418269108855881948.a n : ℤ) = A075039 (n + 1)

end A075039

/-! ## A075039.P8981499470022075525

`∩[A007675(n+1), A359746(n+1)]`
-/

namespace A075039.P8981499470022075525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075039.P8981499470022075525

namespace A075039

/-- `∩[A007675(n+1), A359746(n+1)]` -/
def P8981499470022075525.Spec : Prop :=
  ∀ n, (P8981499470022075525.a n : ℤ) = A075039 (n + 1)

end A075039

/-!
# A075045: Coefficients A_n for the s=3 tennis ball problem.

The programs for A075045, the canonical program `A075045.P11269630062704232670` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075045 has offset 0).

The definition of A075045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075045.P11269630062704232670

`∑{#}[n, 3^(n-#)*C(2*n+#+3, #)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A075045

/-- `∑{#}[n, 3^(n-#)*C(2*n+#+3, #)]` -/
def P11269630062704232670.Spec : Prop :=
  ∀ n, P11269630062704232670.a n = (A075045 n : ℚ)

end A075045

/-! ## A075045.P16583210045826636983

`A036829(n+2)-A006256(n+1)`
-/

namespace A075045.P16583210045826636983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036829 (n + 2) - A006256 (n + 1)

end

end A075045.P16583210045826636983

namespace A075045

/-- `A036829(n+2)-A006256(n+1)` -/
def P16583210045826636983.Spec : Prop :=
  ∀ n, P16583210045826636983.a n = A075045 n

end A075045

/-! ## A075045.P17967514433029592386

`A036829(floor(atan(n+1))+n+1)%A006256(n+1)`
-/

namespace A075045.P17967514433029592386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036829 (⌊Real.arctan (n + 1 : ℝ)⌋ + (n + 1 : ℤ)).toNat) (A006256 (n + 1))

end

end A075045.P17967514433029592386

namespace A075045

/-- `A036829(floor(atan(n+1))+n+1)%A006256(n+1)` -/
def P17967514433029592386.Spec : Prop :=
  ∀ n, P17967514433029592386.a n = A075045 n

end A075045

/-! ## A075045.P15733299458222525590

`A106516(A064226(n+1))`
-/

namespace A075045.P15733299458222525590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106516 (A064226 (n + 1)).toNat

end

end A075045.P15733299458222525590

namespace A075045

/-- `A106516(A064226(n+1))` -/
def P15733299458222525590.Spec : Prop :=
  ∀ n, P15733299458222525590.a n = A075045 n

end A075045

/-! ## A075045.P12465372639393694406

`A106516(A000096(3*n+4)-n/2-n/2)`
-/

namespace A075045.P12465372639393694406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106516 (SequenceMachineLib.roundAway ((A000096 (3 * n + 4) : ℚ) - (n : ℚ) / 2 - (n : ℚ) / 2)).toNat

end

end A075045.P12465372639393694406

namespace A075045

/-- `A106516(A000096(3*n+4)-n/2-n/2)` -/
def P12465372639393694406.Spec : Prop :=
  ∀ n, P12465372639393694406.a n = A075045 n

end A075045

/-!
# A075048: 10-smooth numbers that show their prime factors.

The programs for A075048, there is no canonical definition to state claims against.
-/

/-! ## A075048.P12093090836830619655

`A357132(∑[char[4*n]]+n)`
-/

namespace A075048.P12093090836830619655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357132 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A075048.P12093090836830619655

/-! ## A075048.P305480991049158496

`∩[A059405(n+1), A202267(n+1)]`
-/

namespace A075048.P305480991049158496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075048.P305480991049158496

/-! ## A075048.P17731938466717794601

`A067183(A000961(n+2)-A034851(n))`
-/

namespace A075048.P17731938466717794601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067183 (A000961 (n + 2) - A034851 n).toNat

end

end A075048.P17731938466717794601

/-! ## A075048.P7973107808654668856

`A067183(lt[A171918(n+1), A003056(n)])`
-/

namespace A075048.P7973107808654668856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067183 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A075048.P7973107808654668856

/-! ## A075048.P1973594253555949805

`A067183(∑[A322452(2*(n+2))+A295297(n+5)]+1)`
-/

namespace A075048.P1973594253555949805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322452 (2 * (n + 2)) + A295297 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067183 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A075048.P1973594253555949805

/-!
# A075049: Numbers k such that every digit of k is a divisor of k and every divisor of k in the range [2,9] occurs at least once as a digit of k.

The programs for A075049, there is no canonical definition to state claims against.
-/

/-! ## A075049.P10299012325304111412

`lt[lcm(gcd(11, C(9, n))+n, 2*n), 10*n]`
-/

namespace A075049.P10299012325304111412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.gcd 11 (Nat.choose 9 n) + n) (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075049.P10299012325304111412

/-! ## A075049.P13739617593463082368

`A181819(∏[floor(3/acot(n/9))])`
-/

namespace A075049.P13739617593463082368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot ((n : ℚ) / 9 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075049.P13739617593463082368

/-! ## A075049.P17344876158508653924

`record[A261423(A195825(n))]`
-/

namespace A075049.P17344876158508653924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (A195825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075049.P17344876158508653924

/-! ## A075049.P12938203616694144389

`A181819(∏[A108037(n)+1])`
-/

namespace A075049.P12938203616694144389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075049.P12938203616694144389

/-! ## A075049.P16357629080724894585

`record[A261423(A194812(n+1))]`
-/

namespace A075049.P16357629080724894585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (A194812 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075049.P16357629080724894585

/-!
# A075050: Primes for which the eight closest primes are smaller.

The programs for A075050, there is no canonical definition to state claims against.
-/

/-! ## A075050.P4194020410668298645

`A075043(comp[∑[2*n]]%p?[6^n+6^n-1])`
-/

namespace A075050.P4194020410668298645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) + ((6 ^ n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075043 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n))).toNat

end

end A075050.P4194020410668298645

/-!
# A075051: Smallest prime for which the n closest primes are smaller.

The programs for A075051, there is no canonical definition to state claims against.
-/

/-! ## A075051.P7136034032417173240

`A080077(A159002(n+1))`
-/

namespace A075051.P7136034032417173240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080077 (A159002 (n + 1)).toNat

end

end A075051.P7136034032417173240

/-! ## A075051.P17385643839194989317

`A104096(A104055(n))%A104050(3*n+2)`
-/

namespace A075051.P17385643839194989317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104096 (A104055 n).toNat) (A104050 (3 * n + 2))

end

end A075051.P17385643839194989317

/-!
# A075052: Write down squares and cubes in order, as in A002760. The sequence gives the first differences between terms.

The programs for A075052, the canonical program `A075052.P11734281029159209410` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075052 has offset 1).

The definition of A075052 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002760, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A075052.P11734281029159209410

`A002760(n+2)-A002760(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075052

/-- `A002760(n+2)-A002760(n+1)` -/
def P11734281029159209410.Spec : Prop :=
  ∀ n, P11734281029159209410.a n = A075052 (n + 1)

theorem P11734281029159209410.correct : P11734281029159209410.Spec := by
  intro n
  simp only [A075052, Nat.add_sub_cancel]

end A075052

/-! ## A075052.P3567878903092420276

`Δ[∪[n^3, n²]]`
-/

namespace A075052.P3567878903092420276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A075052.P3567878903092420276

namespace A075052

/-- `Δ[∪[n^3, n²]]` -/
def P3567878903092420276.Spec : Prop :=
  ∀ n, P3567878903092420276.a n = A075052 (n + 1)

end A075052

/-! ## A075052.P627465522923413981

`Δ[A002760(n+1)]`
-/

namespace A075052.P627465522923413981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075052.P627465522923413981

namespace A075052

/-- `Δ[A002760(n+1)]` -/
def P627465522923413981.Spec : Prop :=
  ∀ n, P627465522923413981.a n = A075052 (n + 1)

theorem P627465522923413981.correct : P627465522923413981.Spec := by
  intro n
  simp only [A075052, Nat.add_sub_cancel, A075052.P627465522923413981.f1, A075052.P627465522923413981.a, A075052.P11734281029159209410.a, SequenceMachineLib.memo_apply]

end A075052

/-! ## A075052.P14321201821425606611

`Δ[record[A002760(A344180(n))]]`
-/

namespace A075052.P14321201821425606611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075052.P14321201821425606611

namespace A075052

/-- `Δ[record[A002760(A344180(n))]]` -/
def P14321201821425606611.Spec : Prop :=
  ∀ n, P14321201821425606611.a n = A075052 (n + 1)

end A075052

/-! ## A075052.P17882376786039000814

`Δ[record[A002760(A133310(n))]]`
-/

namespace A075052.P17882376786039000814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075052.P17882376786039000814

namespace A075052

/-- `Δ[record[A002760(A133310(n))]]` -/
def P17882376786039000814.Spec : Prop :=
  ∀ n, P17882376786039000814.a n = A075052 (n + 1)

end A075052

/-! ## A075052.P17552922040917880608

`Δ[record[A125643(A262519(n))]]`
-/

namespace A075052.P17552922040917880608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125643 (A262519 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075052.P17552922040917880608

namespace A075052

/-- `Δ[record[A125643(A262519(n))]]` -/
def P17552922040917880608.Spec : Prop :=
  ∀ n, P17552922040917880608.a n = A075052 (n + 1)

end A075052

/-! ## A075052.P3298149395969279460

`Δ[record[A125643(A027750(n+1))]]`
-/

namespace A075052.P3298149395969279460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125643 (A027750 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075052.P3298149395969279460

namespace A075052

/-- `Δ[record[A125643(A027750(n+1))]]` -/
def P3298149395969279460.Spec : Prop :=
  ∀ n, P3298149395969279460.a n = A075052 (n + 1)

end A075052

/-! ## A075052.P5115683658674870272

`Δ[record[A125643(A126760(n+1))]]`
-/

namespace A075052.P5115683658674870272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125643 (A126760 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075052.P5115683658674870272

namespace A075052

/-- `Δ[record[A125643(A126760(n+1))]]` -/
def P5115683658674870272.Spec : Prop :=
  ∀ n, P5115683658674870272.a n = A075052 (n + 1)

end A075052

/-! ## A075052.P10703779234009455319

`Δ[record[A125643(A328472(n+1))]]`
-/

namespace A075052.P10703779234009455319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125643 (A328472 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075052.P10703779234009455319

namespace A075052

/-- `Δ[record[A125643(A328472(n+1))]]` -/
def P10703779234009455319.Spec : Prop :=
  ∀ n, P10703779234009455319.a n = A075052 (n + 1)

end A075052

/-! ## A075052.P4609329682584171054

`Δ[record[A125643(A027751(n+1))]]`
-/

namespace A075052.P4609329682584171054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125643 (A027751 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075052.P4609329682584171054

namespace A075052

/-- `Δ[record[A125643(A027751(n+1))]]` -/
def P4609329682584171054.Spec : Prop :=
  ∀ n, P4609329682584171054.a n = A075052 (n + 1)

end A075052

/-!
# A075053: Number of primes (counted with repetition) that can be formed by rearranging some or all of the digits of n.

The programs for A075053, there is no canonical definition to state claims against.
-/

/-! ## A075053.P6598146459391826378

`A328517(xor(1, xor(n, A178688(n+1))))`
-/

namespace A075053.P6598146459391826378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328517 (Int.xor 1 (Int.xor (n : ℤ) (A178688 (n + 1)))).toNat

end

end A075053.P6598146459391826378

/-! ## A075053.P7507564623579237953

`A328517(xor(A004442(n), A178688(n+1)))`
-/

namespace A075053.P7507564623579237953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328517 (Int.xor (A004442 n) (A178688 (n + 1))).toNat

end

end A075053.P7507564623579237953

/-! ## A075053.P10836307693887699886

`A328516(n)^A040598(n)²`
-/

namespace A075053.P10836307693887699886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328516 n : ℚ) ^ (A040598 n ^ 2 : ℤ)

end

end A075053.P10836307693887699886

/-! ## A075053.P4241299517803515560

`A039993(C(A181821(n+1)+1, n²)+n)`
-/

namespace A075053.P4241299517803515560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039993 (Nat.choose (A181821 (n + 1) + 1).toNat (n ^ 2) + n)

end

end A075053.P4241299517803515560

/-! ## A075053.P1610483807553160374

`A328516(A039993(A076449(n)))`
-/

namespace A075053.P1610483807553160374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328516 (A039993 (A076449 n).toNat).toNat

end

end A075053.P1610483807553160374

/-!
# A075054: Smallest k such that (n+1)(n+2)...(n+k) is divisible by n!.

The programs for A075054, there is no canonical definition to state claims against.
-/

/-! ## A075054.P13592311121904366784

`A158366(n+1)-A000038(A004455(n))`
-/

namespace A075054.P13592311121904366784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158366 (n + 1) - A000038 (A004455 n).toNat

end

end A075054.P13592311121904366784

/-! ## A075054.P3573178470649894064

`(-1)^A167591(a(n-1)+1)+n` with `a(0)=1`
-/

namespace A075054.P3573178470649894064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (-1 : ℚ) ^ (A167591 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat : ℤ) + (n : ℚ)

end

end A075054.P3573178470649894064

/-! ## A075054.P10024610694817907786

`n-A300547(abs(A291207(n)))`
-/

namespace A075054.P10024610694817907786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A300547 |A291207 n|.toNat

end

end A075054.P10024610694817907786

/-! ## A075054.P15182583776157407362

`A034947(n+1)^A167591(n+1)+n`
-/

namespace A075054.P15182583776157407362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034947 (n + 1) : ℚ) ^ (A167591 (n + 1) : ℤ) + (n : ℚ)

end

end A075054.P15182583776157407362

/-! ## A075054.P16960516086567428813

`1-A000038(A342372(n+1))+n`
-/

namespace A075054.P16960516086567428813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000038 (A342372 (n + 1)).toNat + (n : ℤ)

end

end A075054.P16960516086567428813

/-!
# A075055: Smallest integer of the form product (n+1)(n+2)...(n+k)/n!.

The programs for A075055, there is no canonical definition to state claims against.
-/

/-! ## A075055.P12054363368703687613

`gcd(A000984(n), A141681(A042633(n)))`
-/

namespace A075055.P12054363368703687613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000984 n) (A141681 (A042633 n).toNat)

end

end A075055.P12054363368703687613

/-! ## A075055.P11934578015249170585

`A028310(C(A055952(n), A233583(n+1)))`
-/

namespace A075055.P11934578015249170585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.choose (A055952 n).toNat (A233583 (n + 1)).toNat)

end

end A075055.P11934578015249170585

/-! ## A075055.P1988693223473606333

`gcd(A001405(2*n), A058275(A136019(3*n+5)))`
-/

namespace A075055.P1988693223473606333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001405 (2 * n)) (A058275 (A136019 (3 * n + 5)).toNat)

end

end A075055.P1988693223473606333

/-!
# A075056: a(1) = 0, then smallest square such that a(n+1) - a(n) is a palindrome.

The programs for A075056, there is no canonical definition to state claims against.
-/

/-! ## A075056.P5513084296990690903

`or(n, A051767(2*(n+1)))²`
-/

namespace A075056.P5513084296990690903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A051767 (2 * (n + 1))) ^ 2

end

end A075056.P5513084296990690903

/-! ## A075056.P4326335763842264283

`A000290(C(∑[C(n, 2)]+n+1, 63)+n)`
-/

namespace A075056.P4326335763842264283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + n + 1) 63 + n)

end

end A075056.P4326335763842264283

/-! ## A075056.P2029392492167839714

`A052046(∑[A003229(C(n, 6))])`
-/

namespace A075056.P2029392492167839714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 (Nat.choose n 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052046 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075056.P2029392492167839714

/-! ## A075056.P10210827108868384231

`(A280799(A000142(n))²+n)²`
-/

namespace A075056.P10210827108868384231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280799 (A000142 n).toNat ^ 2 + (n : ℤ)) ^ 2

end

end A075056.P10210827108868384231

/-!
# A075057: a(1) = 0, then smallest triangular number such that a(n+1)- a(n) is a palindrome.

The programs for A075057, there is no canonical definition to state claims against.
-/

/-! ## A075057.P2577276522619362545

`∑[A072482(n)]`
-/

namespace A075057.P2577276522619362545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075057.P2577276522619362545

/-! ## A075057.P7600308087916142255

`A069693(∑[A146788(n+1)])`
-/

namespace A075057.P7600308087916142255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069693 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075057.P7600308087916142255

/-! ## A075057.P14036269513581083637

`A000217(lt[A214871(n+1), 13])`
-/

namespace A075057.P14036269513581083637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214871 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A075057.P14036269513581083637

/-! ## A075057.P4550200329468424932

`A000217(lt[A211956(2*n+1), 15])`
-/

namespace A075057.P4550200329468424932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211956 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A075057.P4550200329468424932

/-! ## A075057.P16294214693905503943

`A069693(∑[A064551(floor(3*n/7))])`
-/

namespace A075057.P16294214693905503943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064551 ⌊3 * ((n : ℚ) / 7)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069693 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075057.P16294214693905503943

/-!
# A075058: Lexicographically earliest infinite sequence of distinct positive numbers with the property that every positive integer is a sum of distinct terms (see algorithm below).

The programs for A075058, there is no canonical definition to state claims against.
-/

/-! ## A075058.P16995202635731938752

`A068524(n+1)-C(2, n+2)`
-/

namespace A075058.P16995202635731938752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068524 (n + 1) - (Nat.choose 2 (n + 2) : ℤ)

end

end A075058.P16995202635731938752

/-! ## A075058.P192717554175158941

`A068524(n+1)-A000007(n)`
-/

namespace A075058.P192717554175158941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068524 (n + 1) - A000007 n

end

end A075058.P192717554175158941

/-! ## A075058.P2735007077618584774

`A068524(n+1)/A054977(n)`
-/

namespace A075058.P2735007077618584774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068524 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A075058.P2735007077618584774

/-! ## A075058.P10145922371131088368

`A068524(n+1)-A019590(n+2)`
-/

namespace A075058.P10145922371131088368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068524 (n + 1) - A019590 (n + 2)

end

end A075058.P10145922371131088368

/-! ## A075058.P14432273652719665101

`A068524(n+1)-and(1, A000079(n))`
-/

namespace A075058.P14432273652719665101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068524 (n + 1) - Int.land 1 (A000079 n)

end

end A075058.P14432273652719665101

/-! ## A075058.P10053637903688395211

`A068524(n+1)/A014963(A323309(2*(n+1)))`
-/

namespace A075058.P10053637903688395211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068524 (n + 1) : ℚ) / (A014963 (A323309 (2 * (n + 1))).toNat : ℚ)

end

end A075058.P10053637903688395211

/-! ## A075058.P5052851794361587988

`C(A068524(n+1), C(2, A016813(n))!)`
-/

namespace A075058.P5052851794361587988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A068524 (n + 1)).toNat (Nat.factorial (Nat.choose 2 (A016813 n).toNat))

end

end A075058.P5052851794361587988

/-! ## A075058.P524638346675560313

`C(A068524(n+1), A319522(C(2, n+1)+1))`
-/

namespace A075058.P524638346675560313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A068524 (n + 1)).toNat (A319522 (Nat.choose 2 (n + 1) + 1)).toNat

end

end A075058.P524638346675560313

/-! ## A075058.P7993639270029047787

`C(A068524(n+1), A161673(C(2, n+2)+2))`
-/

namespace A075058.P7993639270029047787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A068524 (n + 1)).toNat (A161673 (Nat.choose 2 (n + 2) + 2)).toNat

end

end A075058.P7993639270029047787

/-! ## A075058.P4545554139532372717

`C(A068524(n+1), A014963(A068522(2*(n+2))))`
-/

namespace A075058.P4545554139532372717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A068524 (n + 1)).toNat (A014963 (A068522 (2 * (n + 2))).toNat).toNat

end

end A075058.P4545554139532372717

/-! ## A075058.P10414546091812905279

`A068524(n+1)-and(1, Δ[A068524(n+2)])`
-/

namespace A075058.P10414546091812905279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068524 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068524 (n + 1) - Int.land 1 (f1 (n + 1) - f1 n)

end

end A075058.P10414546091812905279

/-!
# A075059: a(n) = 1 + lcm(1, 2, ..., n) = 1 + A003418(n).

The programs for A075059, the canonical program `A075059.P13005941669399506084` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075059 has offset 0).

The definition of A075059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075059.P13005941669399506084

`1+A003418(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075059

/-- `1+A003418(n)` -/
def P13005941669399506084.Spec : Prop :=
  ∀ n, P13005941669399506084.a n = A075059 n

theorem P13005941669399506084.correct : P13005941669399506084.Spec := by
  intro n
  simp only [A075059]

end A075059

/-! ## A075059.P2654780481029312899

`lcm(n, 1-a(n-1))+1` with `a(0)=2`
-/

namespace A075059.P2654780481029312899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (n : ℤ) (1 - (a (n - 1) : ℤ)) + 1

end

end A075059.P2654780481029312899

namespace A075059

/-- `lcm(n, 1-a(n-1))+1` -/
def P2654780481029312899.Spec : Prop :=
  ∀ n, (P2654780481029312899.a n : ℤ) = A075059 n

end A075059

/-! ## A075059.P13227689670149739366

`A139550(2*n)+1`
-/

namespace A075059.P13227689670149739366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139550 (2 * n) + 1

end

end A075059.P13227689670149739366

namespace A075059

/-- `A139550(2*n)+1` -/
def P13227689670149739366.Spec : Prop :=
  ∀ n, P13227689670149739366.a n = A075059 n

end A075059

/-! ## A075059.P3343258791153951163

`A195507(n+1)-n`
-/

namespace A075059.P3343258791153951163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195507 (n + 1) - (n : ℤ)

end

end A075059.P3343258791153951163

namespace A075059

/-- `A195507(n+1)-n` -/
def P3343258791153951163.Spec : Prop :=
  ∀ n, P3343258791153951163.a n = A075059 n

theorem P3343258791153951163.correct : P3343258791153951163.Spec := by
  intro n
  simp only [A075059, Nat.add_sub_cancel, A075059.P3343258791153951163.a, A075059.P13005941669399506084.a, A003418, A003418.P6976248655893080794.a, A195507, A195507.P13812271573965113829.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075059

/-! ## A075059.P14777883460566401095

`∏[A014963(∏{p}[n, #])]+1`
-/

namespace A075059.P14777883460566401095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A075059.P14777883460566401095

namespace A075059

/-- `∏[A014963(∏{p}[n, #])]+1` -/
def P14777883460566401095.Spec : Prop :=
  ∀ n, P14777883460566401095.a n = A075059 n

end A075059

/-! ## A075059.P4961377469236639324

`∑[A119944(abs(1-n))]+1`
-/

namespace A075059.P4961377469236639324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119944 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A075059.P4961377469236639324

namespace A075059

/-- `∑[A119944(abs(1-n))]+1` -/
def P4961377469236639324.Spec : Prop :=
  ∀ n, P4961377469236639324.a n = A075059 n

end A075059

/-! ## A075059.P15277178867858048281

`∏[A014963(floor(acot(n)+n))]+1`
-/

namespace A075059.P15277178867858048281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A075059.P15277178867858048281

namespace A075059

/-- `∏[A014963(floor(acot(n)+n))]+1` -/
def P15277178867858048281.Spec : Prop :=
  ∀ n, P15277178867858048281.a n = A075059 n

end A075059

/-! ## A075059.P4913375326060035309

`A119944(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A075059.P4913375326060035309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A119944 (n - 1) + a (n - 1)

end

end A075059.P4913375326060035309

namespace A075059

/-- `A119944(n-1)+a(n-1)` -/
def P4913375326060035309.Spec : Prop :=
  ∀ n, P4913375326060035309.a n = A075059 n

end A075059

/-! ## A075059.P8805942121990938820

`∏[A014963(round(sqrt(n²+1)))]+1`
-/

namespace A075059.P8805942121990938820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A075059.P8805942121990938820

namespace A075059

/-- `∏[A014963(round(sqrt(n²+1)))]+1` -/
def P8805942121990938820.Spec : Prop :=
  ∀ n, P8805942121990938820.a n = A075059 n

end A075059

/-! ## A075059.P9061236218672711838

`(a(n-1)-1)*A014963(n)+1` with `a(0)=2`
-/

namespace A075059.P9061236218672711838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (a (n - 1) - 1) * A014963 n + 1

end

end A075059.P9061236218672711838

namespace A075059

/-- `(a(n-1)-1)*A014963(n)+1` -/
def P9061236218672711838.Spec : Prop :=
  ∀ n, P9061236218672711838.a n = A075059 n

end A075059

/-! ## A075059.P3969365794277909993

`round(∏[A014963(abs(1-n)+1)]/2)+1`
-/

namespace A075059.P3969365794277909993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2) + 1

end

end A075059.P3969365794277909993

namespace A075059

/-- `round(∏[A014963(abs(1-n)+1)]/2)+1` -/
def P3969365794277909993.Spec : Prop :=
  ∀ n, P3969365794277909993.a n = A075059 n

end A075059

/-! ## A075059.P562952710139329745

`A070198(A028310(n)-1)+2`
-/

namespace A075059.P562952710139329745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 (A028310 n - 1).toNat + 2

end

end A075059.P562952710139329745

namespace A075059

/-- `A070198(A028310(n)-1)+2` -/
def P562952710139329745.Spec : Prop :=
  ∀ n, P562952710139329745.a n = A075059 n

end A075059

/-! ## A075059.P15696685786488077482

`A060357(n)+1-A060361(n)`
-/

namespace A075059.P15696685786488077482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 n + (1 - A060361 n)

end

end A075059.P15696685786488077482

namespace A075059

/-- `A060357(n)+1-A060361(n)` -/
def P15696685786488077482.Spec : Prop :=
  ∀ n, P15696685786488077482.a n = A075059 n

theorem P15696685786488077482.correct : P15696685786488077482.Spec := by
  intro n
  simp only [A075059, Nat.add_sub_cancel, A075059.P15696685786488077482.a, A075059.P13005941669399506084.a, A003418, A003418.P6976248655893080794.a, A060357, A060357.P5151139434586093012.a, A060361, A060361.P4009678370881410838.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075059

/-! ## A075059.P9093971410643614538

`A000793(n)*A225558(n)+1`
-/

namespace A075059.P9093971410643614538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000793 n * A225558 n + 1

end

end A075059.P9093971410643614538

namespace A075059

/-- `A000793(n)*A225558(n)+1` -/
def P9093971410643614538.Spec : Prop :=
  ∀ n, P9093971410643614538.a n = A075059 n

end A075059

/-! ## A075059.P5312180547362308347

`A056040(n)*A180000(n)+1`
-/

namespace A075059.P5312180547362308347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n * A180000 n + 1

end

end A075059.P5312180547362308347

namespace A075059

/-- `A056040(n)*A180000(n)+1` -/
def P5312180547362308347.Spec : Prop :=
  ∀ n, P5312180547362308347.a n = A075059 n

end A075059

/-! ## A075059.P3480120548966425892

`A001405(n)*A263673(n)+1`
-/

namespace A075059.P3480120548966425892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A263673 n + 1

end

end A075059.P3480120548966425892

namespace A075059

/-- `A001405(n)*A263673(n)+1` -/
def P3480120548966425892.Spec : Prop :=
  ∀ n, P3480120548966425892.a n = A075059 n

end A075059

/-! ## A075059.P227061028037165320

`A002944(n+1)*A048671(n+1)+1`
-/

namespace A075059.P227061028037165320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (n + 1) * A048671 (n + 1) + 1

end

end A075059.P227061028037165320

namespace A075059

/-- `A002944(n+1)*A048671(n+1)+1` -/
def P227061028037165320.Spec : Prop :=
  ∀ n, P227061028037165320.a n = A075059 n

end A075059

/-! ## A075059.P11207939898800273043

`A060401(n+1)-(A119944(n)+n)`
-/

namespace A075059.P11207939898800273043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060401 (n + 1) - (A119944 n + (n : ℤ))

end

end A075059.P11207939898800273043

namespace A075059

/-- `A060401(n+1)-(A119944(n)+n)` -/
def P11207939898800273043.Spec : Prop :=
  ∀ n, P11207939898800273043.a n = A075059 n

theorem P11207939898800273043.correct : P11207939898800273043.Spec := by
  intro n
  simp only [A075059, Nat.add_sub_cancel, A075059.P11207939898800273043.a, A075059.P13005941669399506084.a, A003418, A003418.P6976248655893080794.a, A060401, A060401.P17035692861748186501.a, A119944, A119944.P17068462013719077516.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075059

/-! ## A075059.P13249018705234472114

`∏[A014963(n+1)]/A014963(n+1)+1`
-/

namespace A075059.P13249018705234472114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A014963 (n + 1) : ℚ) + 1

end

end A075059.P13249018705234472114

namespace A075059

/-- `∏[A014963(n+1)]/A014963(n+1)+1` -/
def P13249018705234472114.Spec : Prop :=
  ∀ n, P13249018705234472114.a n = (A075059 n : ℚ)

end A075059

/-! ## A075059.P10303153300279245372

`A034472(n)-A347302(n)`
-/

namespace A075059.P10303153300279245372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n - A347302 n

end

end A075059.P10303153300279245372

namespace A075059

/-- `A034472(n)-A347302(n)` -/
def P10303153300279245372.Spec : Prop :=
  ∀ n, P10303153300279245372.a n = A075059 n

theorem P10303153300279245372.correct : P10303153300279245372.Spec := by
  intro n
  simp only [A075059, Nat.add_sub_cancel, A075059.P10303153300279245372.a, A075059.P13005941669399506084.a, A003418, A003418.P6976248655893080794.a, A034472, A034472.P6935477064191477456.a, A347302, A347302.P12145525369688810272.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075059

/-!
# A075061: Triangle in A075059 read by rows.

The programs for A075061, the canonical program `A075061.P6005277005558474816` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075061 has offset 1).

The definition of A075061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075061.P12284567057178900853

`A003418(∑[char[∑[n]]])+1-C(∑[char[∑[n]]], 2)+n`
-/

namespace A075061.P12284567057178900853
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (∑ j ∈ Finset.range (n + 1), f1 j) + (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ))

end

end A075061.P12284567057178900853

namespace A075061

/-- `A003418(∑[char[∑[n]]])+1-C(∑[char[∑[n]]], 2)+n` -/
def P12284567057178900853.Spec : Prop :=
  ∀ n, P12284567057178900853.a n = A075061 (n + 1)

end A075061

/-! ## A075061.P988190091603769633

`A060401(∑[char[∑[n]]])-(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A075061.P988190091603769633
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060401 (∑ j ∈ Finset.range (n + 1), f1 j) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A075061.P988190091603769633

namespace A075061

/-- `A060401(∑[char[∑[n]]])-(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P988190091603769633.Spec : Prop :=
  ∀ n, P988190091603769633.a n = A075061 (n + 1)

end A075061

/-! ## A075061.P3062832058521754136

`A075059(comp[C(n, 2)-1]-n)+A002262(n)`
-/

namespace A075061.P3062832058521754136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n) + A002262 n

end

end A075061.P3062832058521754136

namespace A075061

/-- `A075059(comp[C(n, 2)-1]-n)+A002262(n)` -/
def P3062832058521754136.Spec : Prop :=
  ∀ n, P3062832058521754136.a n = A075061 (n + 1)

end A075061

/-! ## A075061.P6005277005558474816

`A003418(∑[A010054(n)])+A002260(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075061

/-- `A003418(∑[A010054(n)])+A002260(n+1)` -/
def P6005277005558474816.Spec : Prop :=
  ∀ n, P6005277005558474816.a n = A075061 (n + 1)

theorem P6005277005558474816.correct : P6005277005558474816.Spec := by
  intro n
  simp only [A075061, Nat.add_sub_cancel]

end A075061

/-! ## A075061.P352636713852741647

`A003418(A002024(n+1))+A002260(n+1)`
-/

namespace A075061.P352636713852741647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A002024 (n + 1)).toNat + A002260 (n + 1)

end

end A075061.P352636713852741647

namespace A075061

/-- `A003418(A002024(n+1))+A002260(n+1)` -/
def P352636713852741647.Spec : Prop :=
  ∀ n, P352636713852741647.a n = A075061 (n + 1)

end A075061

/-! ## A075061.P7031466912858767106

`(A120435(n+1)+1)*A002260(n+1)`
-/

namespace A075061.P7031466912858767106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120435 (n + 1) + 1) * A002260 (n + 1)

end

end A075061.P7031466912858767106

namespace A075061

/-- `(A120435(n+1)+1)*A002260(n+1)` -/
def P7031466912858767106.Spec : Prop :=
  ∀ n, P7031466912858767106.a n = A075061 (n + 1)

end A075061

/-! ## A075061.P6275994620367878368

`(A120435(n+1)+1)*sqrt(A133819(n+1))`
-/

namespace A075061.P6275994620367878368
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A120435 (n + 1) + 1 : ℝ) * Real.sqrt (A133819 (n + 1) : ℝ)

end

end A075061.P6275994620367878368

namespace A075061

/-- `(A120435(n+1)+1)*sqrt(A133819(n+1))` -/
def P6275994620367878368.Spec : Prop :=
  ∀ n, P6275994620367878368.a n = (A075061 (n + 1) : ℝ)

end A075061

/-! ## A075061.P4186621678033237335

`A120108(A057944(n))+A002260(n+1)`
-/

namespace A075061.P4186621678033237335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 (A057944 n).toNat + A002260 (n + 1)

end

end A075061.P4186621678033237335

namespace A075061

/-- `A120108(A057944(n))+A002260(n+1)` -/
def P4186621678033237335.Spec : Prop :=
  ∀ n, P4186621678033237335.a n = A075061 (n + 1)

end A075061

/-!
# A075062: Row sums of triangle in A075059.

The programs for A075062, the canonical program `A075062.P14867312179758516467` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075062 has offset 1).

The definition of A075062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075062.P14867312179758516467

`(n+1)*A075059(n+1)+A000217(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075062

/-- `(n+1)*A075059(n+1)+A000217(n)` -/
def P14867312179758516467.Spec : Prop :=
  ∀ n, P14867312179758516467.a n = A075062 (n + 1)

theorem P14867312179758516467.correct : P14867312179758516467.Spec := by
  intro n
  simp only [A075062, Nat.add_sub_cancel]

end A075062

/-! ## A075062.P1410556106940472621

`A081528(n+1)+∑[n+1]`
-/

namespace A075062.P1410556106940472621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081528 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A075062.P1410556106940472621

namespace A075062

/-- `A081528(n+1)+∑[n+1]` -/
def P1410556106940472621.Spec : Prop :=
  ∀ n, P1410556106940472621.a n = A075062 (n + 1)

end A075062

/-! ## A075062.P6100998616017292201

`(n+1)*A060401(n+1)-∑[n]`
-/

namespace A075062.P6100998616017292201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060401 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A075062.P6100998616017292201

namespace A075062

/-- `(n+1)*A060401(n+1)-∑[n]` -/
def P6100998616017292201.Spec : Prop :=
  ∀ n, P6100998616017292201.a n = A075062 (n + 1)

end A075062

/-! ## A075062.P13900108864251364447

`∑[n+2]+(n+1)*A070198(n)`
-/

namespace A075062.P13900108864251364447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 1 : ℤ) * A070198 n

end

end A075062.P13900108864251364447

namespace A075062

/-- `∑[n+2]+(n+1)*A070198(n)` -/
def P13900108864251364447.Spec : Prop :=
  ∀ n, P13900108864251364447.a n = A075062 (n + 1)

end A075062

/-! ## A075062.P13871214119657036160

`∑[n+1]+(n+1)*A003418(n+1)`
-/

namespace A075062.P13871214119657036160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n + 1 : ℤ) * A003418 (n + 1)

end

end A075062.P13871214119657036160

namespace A075062

/-- `∑[n+1]+(n+1)*A003418(n+1)` -/
def P13871214119657036160.Spec : Prop :=
  ∀ n, P13871214119657036160.a n = A075062 (n + 1)

end A075062

/-!
# A075063: Smallest prime == 1 mod first n composite numbers.

The programs for A075063, there is no canonical definition to state claims against.
-/

/-! ## A075063.P12477170881001509907

`A034694(A025543(n+1))`
-/

namespace A075063.P12477170881001509907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A025543 (n + 1)).toNat

end

end A075063.P12477170881001509907

/-! ## A075063.P17587851029470119524

`A034694(lcm(A003418(n), A296358(n+1)))`
-/

namespace A075063.P17587851029470119524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (Int.lcm (A003418 n) (A296358 (n + 1)))

end

end A075063.P17587851029470119524

/-! ## A075063.P2269048322263927319

`A034694(A146590(n+1)*A296358(n+1))`
-/

namespace A075063.P2269048322263927319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A146590 (n + 1) * A296358 (n + 1)).toNat

end

end A075063.P2269048322263927319

/-!
# A075064: Smallest composite number == 1 mod first n prime numbers.

The programs for A075064, there is no canonical definition to state claims against.
-/

/-! ## A075064.P16472263192442364290

`A061767(A002110(n+1))`
-/

namespace A075064.P16472263192442364290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (A002110 (n + 1)).toNat

end

end A075064.P16472263192442364290

/-!
# A075066: Alternately odd and even composite numbers complementing the parity of the index.

The programs for A075066, there is no canonical definition to state claims against.
-/

/-! ## A075066.P11727539926312565902

`A075065(xor(1, n+2))`
-/

namespace A075066.P11727539926312565902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075065 (Nat.xor 1 (n + 2))

end

end A075066.P11727539926312565902

/-! ## A075066.P14291705383884684425

`A075065(gcd(3, n%2)+n)`
-/

namespace A075066.P14291705383884684425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075065 (Nat.gcd 3 (n % 2) + n)

end

end A075066.P14291705383884684425

/-! ## A075066.P5345009638788044118

`A075065((-1)^n+n+2)`
-/

namespace A075066.P5345009638788044118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075065 ((-1) ^ n + (n + 2 : ℤ)).toNat

end

end A075066.P5345009638788044118

/-!
# A075067: Start of the first run of exactly n consecutive odd composite numbers.

The programs for A075067, there is no canonical definition to state claims against.
-/

/-! ## A075067.P12781073938879765117

`A045881(n+2)+1`
-/

namespace A075067.P12781073938879765117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045881 (n + 2) + 1

end

end A075067.P12781073938879765117

/-! ## A075067.P10662027381554389950

`A000230(n+2)+2`
-/

namespace A075067.P10662027381554389950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (n + 2) + 2

end

end A075067.P10662027381554389950

/-! ## A075067.P1558510067619822269

`A231609(∑[n+1]+1)+2`
-/

namespace A075067.P1558510067619822269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 2

end

end A075067.P1558510067619822269

/-! ## A075067.P9442500055953490550

`A174350(∑[n+2]+1)+2`
-/

namespace A075067.P9442500055953490550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 2

end

end A075067.P9442500055953490550

/-! ## A075067.P1407496533652213508

`A087378(n+2)-n`
-/

namespace A075067.P1407496533652213508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087378 (n + 2) - (n : ℤ)

end

end A075067.P1407496533652213508

/-! ## A075067.P4441875853446136351

`A182874(n+1)+A001632(n+2)-A182875(n+1)`
-/

namespace A075067.P4441875853446136351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182874 (n + 1) + (A001632 (n + 2) - A182875 (n + 1))

end

end A075067.P4441875853446136351

/-!
# A075068: Product of prime(n) primes starting from prime(n).

The programs for A075068, there is no canonical definition to state claims against.
-/

/-! ## A075068.P16514423234023158877

`A002110(p?[round(8*n/7)]+n)/A002110(n)`
-/

namespace A075068.P16514423234023158877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ)).toNat : ℚ) / (A002110 n : ℚ)

end

end A075068.P16514423234023158877

/-! ## A075068.P1215586747933402088

`A110342(p?[comp[n²]])`
-/

namespace A075068.P1215586747933402088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110342 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A075068.P1215586747933402088

/-!
# A075069: Product of prime(n) consecutive numbers starting from prime(n).

The programs for A075069, there is no canonical definition to state claims against.
-/

/-! ## A075069.P16966119520594169650

`A262204(n+1)/2`
-/

namespace A075069.P16966119520594169650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262204 (n + 1) : ℚ) / 2

end

end A075069.P16966119520594169650

/-! ## A075069.P5694704362001407671

`record[A075366(n+2)/2]`
-/

namespace A075069.P5694704362001407671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075366 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075069.P5694704362001407671

/-! ## A075069.P11366360343627276742

`A000407(record[A000010(n+1)])`
-/

namespace A075069.P11366360343627276742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000407 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075069.P11366360343627276742

/-! ## A075069.P9604604801784759064

`A000407(A000040(n+1)-1)`
-/

namespace A075069.P9604604801784759064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000407 (A000040 (n + 1) - 1).toNat

end

end A075069.P9604604801784759064

/-! ## A075069.P15078559458070438879

`A000407(eq[n, A000010(n+1)])`
-/

namespace A075069.P15078559458070438879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000407 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075069.P15078559458070438879

/-!
# A075070: a(n) = n-th compositorial number / (product of those primes which divide the n-th compositorial number).

The programs for A075070, there is no canonical definition to state claims against.
-/

/-! ## A075070.P6935780577192964830

`lcm(A002110(n), A036691(n))/A002110(n)`
-/

namespace A075070.P6935780577192964830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002110 n) (A036691 n) : ℚ) / (A002110 n : ℚ)

end

end A075070.P6935780577192964830

/-! ## A075070.P16285817636489515702

`A036691(n)/∏{p}[A036691(n), #]`
-/

namespace A075070.P16285817636489515702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036691 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036691 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ)

end

end A075070.P16285817636489515702

/-! ## A075070.P11539068760957177511

`A096865(A165817(n))/A327001(n)`
-/

namespace A075070.P11539068760957177511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096865 (A165817 n).toNat : ℚ) / (A327001 n : ℚ)

end

end A075070.P11539068760957177511

/-!
# A075071: n! divided by product of factorials of all proper divisors of n, as n runs through the values for which the result is an integer.

The programs for A075071, there is no canonical definition to state claims against.
-/

/-! ## A075071.P11986898794417414911

`A250269(n+1)/A006466(A002064(n))`
-/

namespace A075071.P11986898794417414911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250269 (n + 1) : ℚ) / (A006466 (A002064 n).toNat : ℚ)

end

end A075071.P11986898794417414911

/-! ## A075071.P17160421927247773392

`A250269(n+1)/A000688(A120588(n))`
-/

namespace A075071.P17160421927247773392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250269 (n + 1) : ℚ) / (A000688 (A120588 n).toNat : ℚ)

end

end A075071.P17160421927247773392

/-! ## A075071.P14100377051346460624

`A250269(n+1)/A000688(A134184(n))`
-/

namespace A075071.P14100377051346460624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250269 (n + 1) : ℚ) / (A000688 (A134184 n).toNat : ℚ)

end

end A075071.P14100377051346460624

/-! ## A075071.P15704736376704239697

`A250269(n+1)/A156264(A003239(n))`
-/

namespace A075071.P15704736376704239697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250269 (n + 1) : ℚ) / (A156264 (A003239 n).toNat : ℚ)

end

end A075071.P15704736376704239697

/-! ## A075071.P14590347581360396163

`A250269(n+1)/A003989(A157705(n))`
-/

namespace A075071.P14590347581360396163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250269 (n + 1) : ℚ) / (A003989 (A157705 n).toNat : ℚ)

end

end A075071.P14590347581360396163

/-!
# A075072: a(1) = 1; for n > 1, a(n) = n! divided by product of factorials of all prime divisors of n.

The programs for A075072, there is no canonical definition to state claims against.
-/

/-! ## A075072.P3142924411348348153

`(n+1)!/∏{p}[n+1, #!]`
-/

namespace A075072.P3142924411348348153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial p : ℕ) : ℚ)

end

end A075072.P3142924411348348153

/-! ## A075072.P14729218950440839258

`A144880(∑{d}[A298338(n), #])`
-/

namespace A075072.P14729218950440839258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144880 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A075072.P14729218950440839258

/-! ## A075072.P7100313809367635937

`A001710(and(A284824(n), A338835(n)))`
-/

namespace A075072.P7100313809367635937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (Int.land (A284824 n) (A338835 n)).toNat

end

end A075072.P7100313809367635937

/-! ## A075072.P471924190182844317

`A001710(A212358(n+1)*A342968(n))`
-/

namespace A075072.P471924190182844317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (A212358 (n + 1) * A342968 n).toNat

end

end A075072.P471924190182844317

/-!
# A075073: Numbers k such that k-th perfect power - k is prime: A001597(k) - k is prime.

The programs for A075073, there is no canonical definition to state claims against.
-/

/-! ## A075073.P5521521891688131319

`eq[1, ∑{e}[A001597(n+1)-(n+1), #]]+1`
-/

namespace A075073.P5521521891688131319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A075073.P5521521891688131319

/-!
# A075074: Integers pertaining to A099520: a(n) = {b(n)+b(n+1)}/n where b(n) is the n-th term of A099520.

The programs for A075074, there is no canonical definition to state claims against.
-/

/-! ## A075074.P15914604424004499065

`(A099520(n+2)+A099520(n+1))/(n+1)`
-/

namespace A075074.P15914604424004499065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099520 (n + 2) + A099520 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A075074.P15914604424004499065

/-! ## A075074.P16563031105155489201

`A282162(3*A132581(n))`
-/

namespace A075074.P16563031105155489201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 (3 * A132581 n).toNat

end

end A075074.P16563031105155489201

/-!
# A075076: Integers pertaining to A075075: a(n) = b(n-1)*b(n+1)/b(n) where b(n) is the n-th term of A075075.

The programs for A075076, there is no canonical definition to state claims against.
-/

/-! ## A075076.P14217582394057234101

`ratio[A075075(n+2)]*A075075(n+1)`
-/

namespace A075076.P14217582394057234101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075075 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A075075 (n + 1) : ℚ)

end

end A075076.P14217582394057234101

/-! ## A075076.P8236842213699884412

`A075075(n+3)/ratio[A075075(n+1)]`
-/

namespace A075076.P8236842213699884412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075075 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075075 (n + 3) : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A075076.P8236842213699884412

/-! ## A075076.P18320588209055212259

`∑{e}[A187180(n+1)+A084264(n), #]*A088177(n+4)`
-/

namespace A075076.P18320588209055212259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187180 (n + 1) + A084264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A088177 (n + 4)

end

end A075076.P18320588209055212259

/-! ## A075076.P2340254388465504874

`A001222(A298647(n)+A088975(n))*A088177(n+4)`
-/

namespace A075076.P2340254388465504874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A298647 n + A088975 n).toNat * A088177 (n + 4)

end

end A075076.P2340254388465504874

/-! ## A075076.P9287563167882939416

`A001222(A298647(n)+A127824(n))*A088177(n+4)`
-/

namespace A075076.P9287563167882939416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A298647 n + A127824 n).toNat * A088177 (n + 4)

end

end A075076.P9287563167882939416

/-!
# A075079: Numbers k in A001597 such that 2*k + 1 is prime.

The programs for A075079, there is no canonical definition to state claims against.
-/

/-! ## A075079.P4736568707071755721

`∩[A001597(n+1), A067812(n+1)]`
-/

namespace A075079.P4736568707071755721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075079.P4736568707071755721

/-! ## A075079.P6144151233836348708

`∩[A067812(n+1), A396856(n+1)]`
-/

namespace A075079.P6144151233836348708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075079.P6144151233836348708

/-! ## A075079.P2086958791023789592

`∩[A001597(n+1), A005097(n+1)]`
-/

namespace A075079.P2086958791023789592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075079.P2086958791023789592

/-! ## A075079.P9275458441717806822

`∩[A001597(n+1), A102781(n+1)]`
-/

namespace A075079.P9275458441717806822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075079.P9275458441717806822

/-! ## A075079.P11880166187719859031

`filter[A001597(n+1), A101264(#)]`
-/

namespace A075079.P11880166187719859031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A075079.P11880166187719859031

/-!
# A075083: Largest composite number formed by permuting the digits of n, or 0 if no such number exists.

The programs for A075083, there is no canonical definition to state claims against.
-/

/-! ## A075083.P16531896277086200132

`A004186((1-∑{p}[n+1, C(#, n)]+n)%A293347(n))`
-/

namespace A075083.P16531896277086200132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (Int.tmod (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ)) (A293347 n)).toNat

end

end A075083.P16531896277086200132

/-! ## A075083.P3871108584678583252

`A033075(n+1)%A323797(∏{p}[∏{p}[n+1, #%n], #])`
-/

namespace A075083.P3871108584678583252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p % n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033075 (n + 1)) (A323797 (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A075083.P3871108584678583252

/-! ## A075083.P8617207872521339607

`A004186(1-∑{p}[n+1, C(#, n)]+n)%A293348(n+1)`
-/

namespace A075083.P8617207872521339607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004186 (1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ)).toNat) (A293348 (n + 1))

end

end A075083.P8617207872521339607

/-! ## A075083.P16394647981658160939

`A190219(n+1)%A190219(A109886(n))`
-/

namespace A075083.P16394647981658160939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190219 (n + 1)) (A190219 (A109886 n).toNat)

end

end A075083.P16394647981658160939

/-! ## A075083.P6249079060326315486

`A191558(A068637(n+1))%A293347(n)`
-/

namespace A075083.P6249079060326315486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191558 (A068637 (n + 1)).toNat) (A293347 n)

end

end A075083.P6249079060326315486

/-!
# A075084: Number of composite numbers c with n <= c <= 2*n.

The programs for A075084, the canonical program `A075084.P2425940748409505263` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075084 has offset 1).

The definition of A075084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075084.P17834889391036229997

`ceil(A307989(n+1)+sin(n)²)`
-/

namespace A075084.P17834889391036229997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A307989 (n + 1) : ℝ) + Real.sin (n : ℝ) ^ 2⌉

end

end A075084.P17834889391036229997

namespace A075084

/-- `ceil(A307989(n+1)+sin(n)²)` -/
def P17834889391036229997.Spec : Prop :=
  ∀ n, P17834889391036229997.a n = A075084 (n + 1)

end A075084

/-! ## A075084.P2425940748409505263

`2-A035250(abs(1-n)+2)+n`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A075084

/-- `2-A035250(abs(1-n)+2)+n` -/
def P2425940748409505263.Spec : Prop :=
  ∀ n, P2425940748409505263.a n = A075084 (n + 1)

theorem P2425940748409505263.correct : P2425940748409505263.Spec := by
  intro n
  simp only [A075084, Nat.add_sub_cancel]

end A075084

/-! ## A075084.P15403839497677498795

`(n+2-A035250(n+1))%(n+1)`
-/

namespace A075084.P15403839497677498795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 2 : ℤ) - A035250 (n + 1)) (n + 1 : ℤ)

end

end A075084.P15403839497677498795

namespace A075084

/-- `(n+2-A035250(n+1))%(n+1)` -/
def P15403839497677498795.Spec : Prop :=
  ∀ n, P15403839497677498795.a n = A075084 (n + 1)

end A075084

/-! ## A075084.P14598107728153242555

`n+2-A035250(round(sqrt(n²+1))+1)`
-/

namespace A075084.P14598107728153242555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A035250 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

end

end A075084.P14598107728153242555

namespace A075084

/-- `n+2-A035250(round(sqrt(n²+1))+1)` -/
def P14598107728153242555.Spec : Prop :=
  ∀ n, P14598107728153242555.a n = A075084 (n + 1)

end A075084

/-! ## A075084.P3924271636253017020

`A307989(n+1)+A057427(n)`
-/

namespace A075084.P3924271636253017020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307989 (n + 1) + A057427 n

end

end A075084.P3924271636253017020

namespace A075084

/-- `A307989(n+1)+A057427(n)` -/
def P3924271636253017020.Spec : Prop :=
  ∀ n, P3924271636253017020.a n = A075084 (n + 1)

end A075084

/-! ## A075084.P4772011799112360163

`A307989(n+1)-A057428(n)`
-/

namespace A075084.P4772011799112360163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307989 (n + 1) - A057428 n

end

end A075084.P4772011799112360163

namespace A075084

/-- `A307989(n+1)-A057428(n)` -/
def P4772011799112360163.Spec : Prop :=
  ∀ n, P4772011799112360163.a n = A075084 (n + 1)

end A075084

/-! ## A075084.P4247276976918371469

`A376759(n+1)+A066247(n+1)`
-/

namespace A075084.P4247276976918371469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376759 (n + 1) + A066247 (n + 1)

end

end A075084.P4247276976918371469

namespace A075084

/-- `A376759(n+1)+A066247(n+1)` -/
def P4247276976918371469.Spec : Prop :=
  ∀ n, P4247276976918371469.a n = A075084 (n + 1)

end A075084

/-! ## A075084.P3268170897446457613

`A307989(n+1)+A132126(2*n+1)`
-/

namespace A075084.P3268170897446457613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307989 (n + 1) + A132126 (2 * n + 1)

end

end A075084.P3268170897446457613

namespace A075084

/-- `A307989(n+1)+A132126(2*n+1)` -/
def P3268170897446457613.Spec : Prop :=
  ∀ n, P3268170897446457613.a n = A075084 (n + 1)

end A075084

/-! ## A075084.P14792632415757003264

`A210469(n+1)+∑[C(n, ∏{d}[n, #])]`
-/

namespace A075084.P14792632415757003264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A075084.P14792632415757003264

namespace A075084

/-- `A210469(n+1)+∑[C(n, ∏{d}[n, #])]` -/
def P14792632415757003264.Spec : Prop :=
  ∀ n, P14792632415757003264.a n = A075084 (n + 1)

end A075084

/-! ## A075084.P7398331311097022615

`A065855(2*(n+1))-A065855(A065033(2*n))`
-/

namespace A075084.P7398331311097022615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (2 * (n + 1)) - A065855 (A065033 (2 * n)).toNat

end

end A075084.P7398331311097022615

namespace A075084

/-- `A065855(2*(n+1))-A065855(A065033(2*n))` -/
def P7398331311097022615.Spec : Prop :=
  ∀ n, P7398331311097022615.a n = A075084 (n + 1)

end A075084

/-! ## A075084.P455760359431652720

`(A307989(n+1)+1)%A000032(n+1)`
-/

namespace A075084.P455760359431652720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307989 (n + 1) + 1) (A000032 (n + 1))

end

end A075084.P455760359431652720

namespace A075084

/-- `(A307989(n+1)+1)%A000032(n+1)` -/
def P455760359431652720.Spec : Prop :=
  ∀ n, P455760359431652720.a n = A075084 (n + 1)

end A075084

/-!
# A075088: Smallest triangular number with n prime factors (counted with multiplicity).

The programs for A075088, there is no canonical definition to state claims against.
-/

/-! ## A075088.P2327112405005257887

`C(A076550(n)+1, 2)`
-/

namespace A075088.P2327112405005257887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A076550 n + 1).toNat 2

end

end A075088.P2327112405005257887

/-! ## A075088.P3830956126272407308

`A083001(n+1)/2`
-/

namespace A075088.P3830956126272407308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083001 (n + 1) : ℚ) / 2

end

end A075088.P3830956126272407308

/-! ## A075088.P8395801925440967382

`2^A089263(A004767(n))*A083001(n+1)`
-/

namespace A075088.P8395801925440967382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A089263 (A004767 n).toNat : ℤ) * (A083001 (n + 1) : ℚ)

end

end A075088.P8395801925440967382

/-! ## A075088.P10529008528641035354

`C(floor(A155850(n+3)/2)+1, 2)`
-/

namespace A075088.P10529008528641035354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(A155850 (n + 3) : ℚ) / 2⌋ + 1).toNat 2

end

end A075088.P10529008528641035354

/-! ## A075088.P13682945064216389115

`A000217(A076550(n))`
-/

namespace A075088.P13682945064216389115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A076550 n).toNat

end

end A075088.P13682945064216389115

/-!
# A075089: Smallest prime == 1 mod n-th composite number.

The programs for A075089, there is no canonical definition to state claims against.
-/

/-! ## A075089.P4090890101705271930

`A034694(comp[p?[2*n+1]-3]+3)`
-/

namespace A075089.P4090890101705271930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3)

end

end A075089.P4090890101705271930

/-! ## A075089.P7070003429546561933

`A034694(Δ[A053767(n)])`
-/

namespace A075089.P7070003429546561933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f1 (n + 1) - f1 n).toNat

end

end A075089.P7070003429546561933

/-! ## A075089.P5277961792878418820

`A034694(comp[A351078(n)])`
-/

namespace A075089.P5277961792878418820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A075089.P5277961792878418820

/-! ## A075089.P16293327184646429229

`A034694(A002808(n+1))`
-/

namespace A075089.P16293327184646429229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A002808 (n + 1)).toNat

end

end A075089.P16293327184646429229

/-! ## A075089.P6071593867700199547

`A034694(A018252(n+2))`
-/

namespace A075089.P6071593867700199547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A018252 (n + 2)).toNat

end

end A075089.P6071593867700199547

/-! ## A075089.P7597396209824827682

`A034694(A141468(n+3))`
-/

namespace A075089.P7597396209824827682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A141468 (n + 3)).toNat

end

end A075089.P7597396209824827682

/-! ## A075089.P778937136878697753

`A034694(lt[0, A082023(n)])`
-/

namespace A075089.P778937136878697753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A075089.P778937136878697753

/-! ## A075089.P10873624183635642046

`A034694(lt[1, A003415(n)])`
-/

namespace A075089.P10873624183635642046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A075089.P10873624183635642046

/-! ## A075089.P1278317519641842079

`A034694(lt[1, A032741(n)])`
-/

namespace A075089.P1278317519641842079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A075089.P1278317519641842079

/-! ## A075089.P7034980447387049945

`A034694(A072668(n+1)+1)`
-/

namespace A075089.P7034980447387049945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A072668 (n + 1) + 1).toNat

end

end A075089.P7034980447387049945

/-! ## A075089.P12631492339062151727

`A034694(A060462(n+2)+1)`
-/

namespace A075089.P12631492339062151727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A060462 (n + 2) + 1).toNat

end

end A075089.P12631492339062151727

/-! ## A075089.P17482679693835608794

`A034694(A079696(n+1)-1)`
-/

namespace A075089.P17482679693835608794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A079696 (n + 1) - 1).toNat

end

end A075089.P17482679693835608794

/-! ## A075089.P1917367986291215709

`p?[A034694(n+2)+A010051(n+2)]`
-/

namespace A075089.P1917367986291215709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 2) + A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075089.P1917367986291215709

/-!
# A075090: Even perfect powers: numbers of the form (2*m)^k for some m>=1 and k>=2.

The programs for A075090, there is no canonical definition to state claims against.
-/

/-! ## A075090.P8122350413483291624

`A389765(n+1)+1`
-/

namespace A075090.P8122350413483291624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389765 (n + 1) + 1

end

end A075090.P8122350413483291624

/-! ## A075090.P5071647969094216081

`A389957(n+1)-1`
-/

namespace A075090.P5071647969094216081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389957 (n + 1) - 1

end

end A075090.P5071647969094216081

/-! ## A075090.P7959384176475298422

`ceil(sqrt(A389956(n+1)))`
-/

namespace A075090.P7959384176475298422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A389956 (n + 1) : ℝ)⌉

end

end A075090.P7959384176475298422

/-! ## A075090.P1473407857383279599

`∪[A020707(n), A391756(n+1)]`
-/

namespace A075090.P1473407857383279599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075090.P1473407857383279599

/-! ## A075090.P11368477595883791916

`∪[A304250(n+1), A391756(n+1)]`
-/

namespace A075090.P11368477595883791916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075090.P11368477595883791916

/-! ## A075090.P13861581767486672335

`∪[A322793(n+1), A391756(n+1)]`
-/

namespace A075090.P13861581767486672335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075090.P13861581767486672335

/-! ## A075090.P5313173179485174869

`(A389957(n+1)+A389956(n+1))/A389957(n+1)`
-/

namespace A075090.P5313173179485174869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389957 (n + 1) + A389956 (n + 1) : ℚ) / (A389957 (n + 1) : ℚ)

end

end A075090.P5313173179485174869

/-! ## A075090.P874405409944156096

`A001597(eq[2, A076396(n+1)]+1)`
-/

namespace A075090.P874405409944156096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075090.P874405409944156096

/-! ## A075090.P3196206506185016007

`A001597(eq[0, A001597(n+1)%2]+1)`
-/

namespace A075090.P3196206506185016007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001597 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075090.P3196206506185016007

/-! ## A075090.P11615358228428543560

`A001597(eq[2, gcd(2, A001597(n+1))]+1)`
-/

namespace A075090.P11615358228428543560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001597 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A075090.P11615358228428543560

/-! ## A075090.P3789257198111753289

`record[A072103(n+1)%or(1, A072103(n+1))]`
-/

namespace A075090.P3789257198111753289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072103 (n + 1)) (Int.lor 1 (A072103 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075090.P3789257198111753289

/-! ## A075090.P3950520142915656375

`∩[A001597(n+1), A390010(n+1)]`
-/

namespace A075090.P3950520142915656375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075090.P3950520142915656375

/-! ## A075090.P7013015373424693487

`A001597(comp[n*and(1, A001597(n+1))]+1)`
-/

namespace A075090.P7013015373424693487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A001597 (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A075090.P7013015373424693487

/-! ## A075090.P4794156173323063733

`record[A000265(A045542(n+1))+1]`
-/

namespace A075090.P4794156173323063733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A045542 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075090.P4794156173323063733

/-! ## A075090.P3347780625497889778

`∩[A390010(n+1), A396856(n+1)]`
-/

namespace A075090.P3347780625497889778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075090.P3347780625497889778

/-! ## A075090.P16978332732328904371

`∩[2*n, A001597(n+1)]`
-/

namespace A075090.P16978332732328904371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075090.P16978332732328904371

/-! ## A075090.P9410008858300478501

`∩[2*n, A396856(n+3)]`
-/

namespace A075090.P9410008858300478501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075090.P9410008858300478501

/-! ## A075090.P9991339937341991677

`filter[A001597(n+1), A121262(#)]`
-/

namespace A075090.P9991339937341991677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A075090.P9991339937341991677

/-! ## A075090.P14257663212239124826

`filter[A396856(n+1), A121262(#)]`
-/

namespace A075090.P14257663212239124826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A075090.P14257663212239124826

/-! ## A075090.P13758411908903734025

`∩[A001597(n+1), A008586(n)]`
-/

namespace A075090.P13758411908903734025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075090.P13758411908903734025

/-!
# A075091: Sum of Lucas numbers and reflected Lucas numbers (comment to A061084).

The programs for A075091, the canonical program `A075091.P15218586549247608598` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075091 has offset 0).

The definition of A075091 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075091.P2765625862512118235

`ogf((4-6x^2)/(1-3x^2+x^4))`
-/

namespace A075091.P2765625862512118235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, -6] [1, 0, -3, 0, 1] n

end

end A075091.P2765625862512118235

namespace A075091

/-- `ogf((4-6x^2)/(1-3x^2+x^4))` -/
def P2765625862512118235.Spec : Prop :=
  ∀ n, P2765625862512118235.a n = A075091 n

end A075091

/-! ## A075091.P15218586549247608598

`3*a(n-2)-a(n-4)` with `a(0)=4, a(1)=0, a(2)=6, a(3)=0`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A075091

/-- `3*a(n-2)-a(n-4)` -/
def P15218586549247608598.Spec : Prop :=
  ∀ n, P15218586549247608598.a n = A075091 n

theorem P15218586549247608598.correct : P15218586549247608598.Spec := by
  intro n
  simp only [A075091]

end A075091

/-! ## A075091.P17955239159870431142

`char[2*n]*A292616(n)`
-/

namespace A075091.P17955239159870431142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A292616 n

end

end A075091.P17955239159870431142

namespace A075091

/-- `char[2*n]*A292616(n)` -/
def P17955239159870431142.Spec : Prop :=
  ∀ n, P17955239159870431142.a n = A075091 n

end A075091

/-! ## A075091.P9372428623329629864

`and(2, gcd(2, n))*A000032(n)`
-/

namespace A075091.P9372428623329629864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 (Nat.gcd 2 n) : ℤ) * A000032 n

end

end A075091.P9372428623329629864

namespace A075091

/-- `and(2, gcd(2, n))*A000032(n)` -/
def P9372428623329629864.Spec : Prop :=
  ∀ n, P9372428623329629864.a n = A075091 n

end A075091

/-! ## A075091.P6557111195918569566

`A355021(n)+A001612(n)`
-/

namespace A075091.P6557111195918569566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355021 n + A001612 n

end

end A075091.P6557111195918569566

namespace A075091

/-- `A355021(n)+A001612(n)` -/
def P6557111195918569566.Spec : Prop :=
  ∀ n, P6557111195918569566.a n = A075091 n

end A075091

/-! ## A075091.P1834779987081810954

`lcm(A056594(n), A292616(n))`
-/

namespace A075091.P1834779987081810954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A292616 n)

end

end A075091.P1834779987081810954

namespace A075091

/-- `lcm(A056594(n), A292616(n))` -/
def P1834779987081810954.Spec : Prop :=
  ∀ n, (P1834779987081810954.a n : ℤ) = A075091 n

end A075091

/-! ## A075091.P9222380892538630076

`A001612(n)+∑[A075193(n)]`
-/

namespace A075091.P9222380892538630076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075091.P9222380892538630076

namespace A075091

/-- `A001612(n)+∑[A075193(n)]` -/
def P9222380892538630076.Spec : Prop :=
  ∀ n, P9222380892538630076.a n = A075091 n

end A075091

/-! ## A075091.P1329845875602029169

`A061084(n+1)+A000032(n)`
-/

namespace A075091.P1329845875602029169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) + A000032 n

end

end A075091.P1329845875602029169

namespace A075091

/-- `A061084(n+1)+A000032(n)` -/
def P1329845875602029169.Spec : Prop :=
  ∀ n, P1329845875602029169.a n = A075091 n

end A075091

/-! ## A075091.P15833783488258688815

`A000032(n)+A355021(n)+1`
-/

namespace A075091.P15833783488258688815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A355021 n + 1)

end

end A075091.P15833783488258688815

namespace A075091

/-- `A000032(n)+A355021(n)+1` -/
def P15833783488258688815.Spec : Prop :=
  ∀ n, P15833783488258688815.a n = A075091 n

end A075091

/-! ## A075091.P16874403410113573729

`A010673(n+1)*A000032(n)`
-/

namespace A075091.P16874403410113573729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (n + 1) * A000032 n

end

end A075091.P16874403410113573729

namespace A075091

/-- `A010673(n+1)*A000032(n)` -/
def P16874403410113573729.Spec : Prop :=
  ∀ n, P16874403410113573729.a n = A075091 n

end A075091

/-! ## A075091.P11719123140047012786

`(A033999(n)+1)*A000032(n)`
-/

namespace A075091.P11719123140047012786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + 1) * A000032 n

end

end A075091.P11719123140047012786

namespace A075091

/-- `(A033999(n)+1)*A000032(n)` -/
def P11719123140047012786.Spec : Prop :=
  ∀ n, P11719123140047012786.a n = A075091 n

end A075091

/-! ## A075091.P5661399523678159295

`(A033999(n)+1)*A005247(n)`
-/

namespace A075091.P5661399523678159295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + 1) * A005247 n

end

end A075091.P5661399523678159295

namespace A075091

/-- `(A033999(n)+1)*A005247(n)` -/
def P5661399523678159295.Spec : Prop :=
  ∀ n, P5661399523678159295.a n = A075091 n

end A075091

/-! ## A075091.P862179197924937828

`(A033999(n)+1)*A020878(n)`
-/

namespace A075091.P862179197924937828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + 1) * A020878 n

end

end A075091.P862179197924937828

namespace A075091

/-- `(A033999(n)+1)*A020878(n)` -/
def P862179197924937828.Spec : Prop :=
  ∀ n, P862179197924937828.a n = A075091 n

end A075091

/-! ## A075091.P9241473083463729150

`(2-A010673(n))*A000032(n)`
-/

namespace A075091.P9241473083463729150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010673 n) * A000032 n

end

end A075091.P9241473083463729150

namespace A075091

/-- `(2-A010673(n))*A000032(n)` -/
def P9241473083463729150.Spec : Prop :=
  ∀ n, P9241473083463729150.a n = A075091 n

end A075091

/-! ## A075091.P16696914449725800080

`2*A000032(n)*A059841(n)`
-/

namespace A075091.P16696914449725800080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000032 n * A059841 n)

end

end A075091.P16696914449725800080

namespace A075091

/-- `2*A000032(n)*A059841(n)` -/
def P16696914449725800080.Spec : Prop :=
  ∀ n, P16696914449725800080.a n = A075091 n

end A075091

/-! ## A075091.P11491590060574370718

`2*A059841(n)*A062724(n)`
-/

namespace A075091.P11491590060574370718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A059841 n * A062724 n)

end

end A075091.P11491590060574370718

namespace A075091

/-- `2*A059841(n)*A062724(n)` -/
def P11491590060574370718.Spec : Prop :=
  ∀ n, P11491590060574370718.a n = A075091 n

end A075091

/-! ## A075091.P6202348785836948359

`2*A000032(n)*A056594(n)²`
-/

namespace A075091.P6202348785836948359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n * A056594 n ^ 2

end

end A075091.P6202348785836948359

namespace A075091

/-- `2*A000032(n)*A056594(n)²` -/
def P6202348785836948359.Spec : Prop :=
  ∀ n, P6202348785836948359.a n = A075091 n

end A075091

/-! ## A075091.P7183883009316013617

`Δ[A109613(n+1)]*A000032(n)`
-/

namespace A075091.P7183883009316013617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000032 n

end

end A075091.P7183883009316013617

namespace A075091

/-- `Δ[A109613(n+1)]*A000032(n)` -/
def P7183883009316013617.Spec : Prop :=
  ∀ n, P7183883009316013617.a n = A075091 n

end A075091

/-! ## A075091.P1990111341183262680

`(2-Δ[A109613(n)])*A000032(n)`
-/

namespace A075091.P1990111341183262680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) * A000032 n

end

end A075091.P1990111341183262680

namespace A075091

/-- `(2-Δ[A109613(n)])*A000032(n)` -/
def P1990111341183262680.Spec : Prop :=
  ∀ n, P1990111341183262680.a n = A075091 n

end A075091

/-! ## A075091.P11415312458273978555

`A127218(2*n)+A061084(n+1)`
-/

namespace A075091.P11415312458273978555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * n) + A061084 (n + 1)

end

end A075091.P11415312458273978555

namespace A075091

/-- `A127218(2*n)+A061084(n+1)` -/
def P11415312458273978555.Spec : Prop :=
  ∀ n, P11415312458273978555.a n = A075091 n

end A075091

/-!
# A075092: Sum of generalized tribonacci numbers (A001644) and reflected generalized tribonacci numbers (A073145).

The programs for A075092, the canonical program `A075092.P6266007929729109464` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075092 has offset 0).

The definition of A075092 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075092.P4657424349820774806

`ogf((6-4x^2-12x^3-2x^4)/(1-x^2-4x^3-x^4+x^6))`
-/

namespace A075092.P4657424349820774806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 0, -4, -12, -2] [1, 0, -1, -4, -1, 0, 1] n

end

end A075092.P4657424349820774806

namespace A075092

/-- `ogf((6-4x^2-12x^3-2x^4)/(1-x^2-4x^3-x^4+x^6))` -/
def P4657424349820774806.Spec : Prop :=
  ∀ n, P4657424349820774806.a n = A075092 n

end A075092

/-! ## A075092.P6266007929729109464

`a(n-2)+4*a(n-3)+a(n-4)-a(n-6)` with `a(0)=6, a(1)=0, a(2)=2, a(3)=12, a(4)=6, a(5)=20`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A075092

/-- `a(n-2)+4*a(n-3)+a(n-4)-a(n-6)` -/
def P6266007929729109464.Spec : Prop :=
  ∀ n, P6266007929729109464.a n = A075092 n

theorem P6266007929729109464.correct : P6266007929729109464.Spec := by
  intro n
  simp only [A075092]

end A075092

/-! ## A075092.P16223065063523722001

`A073145(n)+A001644(n)`
-/

namespace A075092.P16223065063523722001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 n + A001644 n

end

end A075092.P16223065063523722001

namespace A075092

/-- `A073145(n)+A001644(n)` -/
def P16223065063523722001.Spec : Prop :=
  ∀ n, P16223065063523722001.a n = A075092 n

end A075092

/-! ## A075092.P7605229415205581594

`A073145(n)+A075418(n)-A075298(n)`
-/

namespace A075092.P7605229415205581594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 n + (A075418 n - A075298 n)

end

end A075092.P7605229415205581594

namespace A075092

/-- `A073145(n)+A075418(n)-A075298(n)` -/
def P7605229415205581594.Spec : Prop :=
  ∀ n, P7605229415205581594.a n = A075092 n

end A075092

/-! ## A075092.P5102328542793728058

`A190913(n)+A190914(n)-A075091(n)`
-/

namespace A075092.P5102328542793728058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190913 n + (A190914 n - A075091 n)

end

end A075092.P5102328542793728058

namespace A075092

/-- `A190913(n)+A190914(n)-A075091(n)` -/
def P5102328542793728058.Spec : Prop :=
  ∀ n, P5102328542793728058.a n = A075092 n

end A075092

/-! ## A075092.P9615523220973533666

`A073145(n+1)+A075418(n)+A073145(n)`
-/

namespace A075092.P9615523220973533666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 (n + 1) + (A075418 n + A073145 n)

end

end A075092.P9615523220973533666

namespace A075092

/-- `A073145(n+1)+A075418(n)+A073145(n)` -/
def P9615523220973533666.Spec : Prop :=
  ∀ n, P9615523220973533666.a n = A075092 n

end A075092

/-! ## A075092.P5666633268547183528

`A073145(n)+Δ[Δ[A214727(n+1)]]`
-/

namespace A075092.P5666633268547183528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 n + (f1 (n + 1) - f1 n)

end

end A075092.P5666633268547183528

namespace A075092

/-- `A073145(n)+Δ[Δ[A214727(n+1)]]` -/
def P5666633268547183528.Spec : Prop :=
  ∀ n, P5666633268547183528.a n = A075092 n

end A075092

/-!
# A075096: Number of simple graphs g on n nodes with |Aut(g)| = 4.

The programs for A075096, there is no canonical definition to state claims against.
-/

/-! ## A075096.P16502098520542229391

`A328841(A025841(n!))`
-/

namespace A075096.P16502098520542229391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328841 (A025841 (Nat.factorial n)).toNat

end

end A075096.P16502098520542229391

/-! ## A075096.P11947355182359323161

`A033182(A030881(n+1))`
-/

namespace A075096.P11947355182359323161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A030881 (n + 1)).toNat

end

end A075096.P11947355182359323161

/-!
# A075097: Number of simple graphs g on n nodes with |Aut(g)| = 6.

The programs for A075097, there is no canonical definition to state claims against.
-/

/-! ## A075097.P10932954316653721446

`lcm(2, A242062(A243549(n+1)))`
-/

namespace A075097.P10932954316653721446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A242062 (A243549 (n + 1)).toNat)

end

end A075097.P10932954316653721446

/-! ## A075097.P15308991729942107168

`A110656(n+2)*A348325(A100866(n+1))`
-/

namespace A075097.P15308991729942107168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (n + 2) * A348325 (A100866 (n + 1)).toNat

end

end A075097.P15308991729942107168

/-! ## A075097.P14061435541628010629

`lcm(A162512(n+1), A348325(A100866(n+1)))`
-/

namespace A075097.P14061435541628010629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A162512 (n + 1)) (A348325 (A100866 (n + 1)).toNat)

end

end A075097.P14061435541628010629

