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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A348600: Triangle read by rows: T(n,k) is the number of (unlabeled) connected graphs with n nodes and metric dimension k, 0 <= k < n.

The programs for A348600, there is no canonical definition to state claims against.
-/

/-! ## A348600.P10255787758220624567

`A028444(A004248(n))`
-/

namespace A348600.P10255787758220624567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028444 (A004248 n).toNat

end

end A348600.P10255787758220624567

/-! ## A348600.P17101861511066021474

`A028444(A048723(n))`
-/

namespace A348600.P17101861511066021474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028444 (A048723 n).toNat

end

end A348600.P17101861511066021474

/-! ## A348600.P14598390416494992467

`A028444(A058716(n))`
-/

namespace A348600.P14598390416494992467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028444 (A058716 n).toNat

end

end A348600.P14598390416494992467

/-! ## A348600.P15425468466864329942

`A028444(A088455(n))`
-/

namespace A348600.P15425468466864329942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028444 (A088455 n).toNat

end

end A348600.P15425468466864329942

/-! ## A348600.P6888454679462367440

`A108611(8*A294219(n))`
-/

namespace A348600.P6888454679462367440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (8 * A294219 n).toNat

end

end A348600.P6888454679462367440

/-!
# A348601: Nonexponential multiply-perfect numbers: numbers k such that k | A160135(k).

The programs for A348601, there is no canonical definition to state claims against.
-/

/-! ## A348601.P16127460945365880864

`eq[n, A160135(round(acot(n)+n))]`
-/

namespace A348601.P16127460945365880864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160135 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348601.P16127460945365880864

/-!
# A348604: Nonexponential abundant numbers: numbers k such that A160135(k) > k.

The programs for A348604, there is no canonical definition to state claims against.
-/

/-! ## A348604.P16891002786248661173

`lt[n+1, A160135(n+1)]+1`
-/

namespace A348604.P16891002786248661173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A348604.P16891002786248661173

/-! ## A348604.P10797262226071780530

`lt[n+1, A160135(A028310(n))]`
-/

namespace A348604.P10797262226071780530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160135 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348604.P10797262226071780530

/-! ## A348604.P3527911870163566033

`A020725(lt[n+1, A160135(n+1)])`
-/

namespace A348604.P3527911870163566033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A348604.P3527911870163566033

/-! ## A348604.P15419500440382754703

`A153152(lt[n+1, A160135(n+1)])`
-/

namespace A348604.P15419500440382754703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A348604.P15419500440382754703

/-! ## A348604.P15438891187934981666

`A181569(lt[A126164(n+1)+1+n, A001065(n+1)])`
-/

namespace A348604.P15438891187934981666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126164 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348604.P15438891187934981666

/-!
# A348605: Odd nonexponential abundant numbers: odd numbers k such that A160135(k) > k.

The programs for A348605, there is no canonical definition to state claims against.
-/

/-! ## A348605.P4437088207290902162

`A293186(A073571(n+1)%A195566(2*n+5))`
-/

namespace A348605.P4437088207290902162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293186 (Int.tmod (A073571 (n + 1)) (A195566 (2 * n + 5))).toNat

end

end A348605.P4437088207290902162

/-! ## A348605.P9759177003251495001

`A293186(floor(A218987(n)/A293161(3*(n+1))))`
-/

namespace A348605.P9759177003251495001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293186 ⌊(A218987 n : ℚ) / (A293161 (3 * (n + 1)) : ℚ)⌋.toNat

end

end A348605.P9759177003251495001

/-!
# A348608: a(n) = Sum_{d|n, d <= sqrt(n)} (-1)^(d + n/d) * d.

The programs for A348608, there is no canonical definition to state claims against.
-/

/-! ## A348608.P1352648244510480507

`A037213(n+1)-A348953(n+1)`
-/

namespace A348608.P1352648244510480507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n + 1) - A348953 (n + 1)

end

end A348608.P1352648244510480507

/-! ## A348608.P10985369232769374269

`Δ[A000217(A000196(n))]-A348953(n+1)`
-/

namespace A348608.P10985369232769374269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000196 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A348953 (n + 1)

end

end A348608.P10985369232769374269

/-! ## A348608.P12692309614104328310

`A066839(n+1)-(A348953(n+1)+A070039(n+1))`
-/

namespace A348608.P12692309614104328310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066839 (n + 1) - (A348953 (n + 1) + A070039 (n + 1))

end

end A348608.P12692309614104328310

/-! ## A348608.P2775807203249510189

`A070038(n+1)-(A348953(n+1)+A238535(n+1))`
-/

namespace A348608.P2775807203249510189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) - (A348953 (n + 1) + A238535 (n + 1))

end

end A348608.P2775807203249510189

/-! ## A348608.P9044605703554627103

`A224777(A000124(n))-A348953(n+1)`
-/

namespace A348608.P9044605703554627103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224777 (A000124 n).toNat - A348953 (n + 1)

end

end A348608.P9044605703554627103

/-!
# A348610: Number of alternating ordered factorizations of n.

The programs for A348610, there is no canonical definition to state claims against.
-/

/-! ## A348610.P15921166107798425039

`A002033(n)-A348613(n+1)`
-/

namespace A348610.P15921166107798425039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - A348613 (n + 1)

end

end A348610.P15921166107798425039

/-! ## A348610.P12108785591676428210

`Δ[A173382(n)]-A348613(n+1)`
-/

namespace A348610.P12108785591676428210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A348613 (n + 1)

end

end A348610.P12108785591676428210

/-! ## A348610.P10870285579470681321

`A074206(n+1)-A348613(n+1)`
-/

namespace A348610.P10870285579470681321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1) - A348613 (n + 1)

end

end A348610.P10870285579470681321

/-! ## A348610.P11322363463211503103

`A004525(A067824(n+1))-A348613(n+1)`
-/

namespace A348610.P11322363463211503103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A067824 (n + 1)).toNat - A348613 (n + 1)

end

end A348610.P11322363463211503103

/-! ## A348610.P1818888971372067110

`A345182(A045966(n+1))-A348613(n+1)`
-/

namespace A348610.P1818888971372067110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345182 (A045966 (n + 1)).toNat - A348613 (n + 1)

end

end A348610.P1818888971372067110

/-! ## A348610.P14912332464609613821

`A345182(A297002(n+1))-A348613(n+1)`
-/

namespace A348610.P14912332464609613821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345182 (A297002 (n + 1)).toNat - A348613 (n + 1)

end

end A348610.P14912332464609613821

/-! ## A348610.P8700158248345293095

`A345182(A332818(n+1))-A348613(n+1)`
-/

namespace A348610.P8700158248345293095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345182 (A332818 (n + 1)).toNat - A348613 (n + 1)

end

end A348610.P8700158248345293095

/-! ## A348610.P14887869693706158933

`A348611(n+1)+A348616(n+1)-A348613(n+1)`
-/

namespace A348610.P14887869693706158933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348611 (n + 1) + (A348616 (n + 1) - A348613 (n + 1))

end

end A348610.P14887869693706158933

/-! ## A348610.P12335162114349264728

`A349059(n+1)+A350139(n+1)-A348613(n+1)`
-/

namespace A348610.P12335162114349264728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349059 (n + 1) + (A350139 (n + 1) - A348613 (n + 1))

end

end A348610.P12335162114349264728

/-! ## A348610.P18023824889368786465

`A186539(A050334(n+1)%A109648(n))`
-/

namespace A348610.P18023824889368786465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186539 (Int.tmod (A050334 (n + 1)) (A109648 n)).toNat

end

end A348610.P18023824889368786465

/-!
# A348611: Number of ordered factorizations of n with no adjacent equal factors.

The programs for A348611, there is no canonical definition to state claims against.
-/

/-! ## A348611.P12917439270967884908

`A074206(n+1)-A348616(n+1)`
-/

namespace A348611.P12917439270967884908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1) - A348616 (n + 1)

end

end A348611.P12917439270967884908

/-! ## A348611.P14147132822086916386

`A002033(n)-A348616(n+1)`
-/

namespace A348611.P14147132822086916386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - A348616 (n + 1)

end

end A348611.P14147132822086916386

/-! ## A348611.P738439816287328033

`Δ[A173382(n)]-A348616(n+1)`
-/

namespace A348611.P738439816287328033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A348616 (n + 1)

end

end A348611.P738439816287328033

/-! ## A348611.P6719348946185140247

`∑{d}[n+1, #*A323910((n+1)/#)]-A348616(n+1)`
-/

namespace A348611.P6719348946185140247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A323910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A348616 (n + 1)

end

end A348611.P6719348946185140247

/-! ## A348611.P14946338908462617469

`A348610(n+1)+A348613(n+1)-A348616(n+1)`
-/

namespace A348611.P14946338908462617469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348610 (n + 1) + (A348613 (n + 1) - A348616 (n + 1))

end

end A348611.P14946338908462617469

/-! ## A348611.P2219552441624159114

`A349059(n+1)+A350139(n+1)-A348616(n+1)`
-/

namespace A348611.P2219552441624159114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349059 (n + 1) + (A350139 (n + 1) - A348616 (n + 1))

end

end A348611.P2219552441624159114

/-! ## A348611.P10441968398740427863

`∑{d}[n+1, A008683(#)*A067824((n+1)/#)]-A348616(n+1)`
-/

namespace A348611.P10441968398740427863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A067824 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A348616 (n + 1)

end

end A348611.P10441968398740427863

/-!
# A348612: Numbers k such that the k-th composition in standard order is not an anti-run, i.e., has adjacent equal parts.

The programs for A348612, there is no canonical definition to state claims against.
-/

/-! ## A348612.P4717520766903028073

`comp[A333489(n+1)]`
-/

namespace A348612.P4717520766903028073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A348612.P4717520766903028073

/-! ## A348612.P339369767365529284

`lt[A124767(n), a(floor(n/2))+n%2]` with `a(0)=0`
-/

namespace A348612.P339369767365529284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A348612.P339369767365529284

/-! ## A348612.P7673496578477662290

`lt[A124767(n), A000120(n)]`
-/

namespace A348612.P7673496578477662290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348612.P7673496578477662290

/-! ## A348612.P7343797577576616272

`lt[A000079(A373953(n)), n]`
-/

namespace A348612.P7343797577576616272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A373953 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A348612.P7343797577576616272

/-! ## A348612.P1260280162841026806

`comp[record[A333489(A133310(n))]]`
-/

namespace A348612.P1260280162841026806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A348612.P1260280162841026806

/-! ## A348612.P10202175606973022680

`comp[record[A333489(A152271(n))]]`
-/

namespace A348612.P10202175606973022680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A348612.P10202175606973022680

/-! ## A348612.P2267178396136177207

`comp[record[A333489(A262519(n))]]`
-/

namespace A348612.P2267178396136177207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (A262519 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A348612.P2267178396136177207

/-! ## A348612.P508347194776545878

`comp[record[A333489(A290094(n))]]`
-/

namespace A348612.P508347194776545878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (A290094 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A348612.P508347194776545878

/-! ## A348612.P7872703168500047735

`comp[record[A333489(A324347(n))]]`
-/

namespace A348612.P7872703168500047735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A348612.P7872703168500047735

/-! ## A348612.P25726661533678091

`∪[A349799(n+1), A354904(n+1)]`
-/

namespace A348612.P25726661533678091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A348612.P25726661533678091

/-!
# A348613: Number of non-alternating ordered factorizations of n.

The programs for A348613, there is no canonical definition to state claims against.
-/

/-! ## A348613.P17362117601988679426

`A002033(n)-A348610(A046523(n+1))`
-/

namespace A348613.P17362117601988679426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - A348610 (A046523 (n + 1)).toNat

end

end A348613.P17362117601988679426

/-! ## A348613.P10762169732362764752

`A002033(n)-A348610(A071364(n+1))`
-/

namespace A348613.P10762169732362764752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - A348610 (A071364 (n + 1)).toNat

end

end A348613.P10762169732362764752

/-! ## A348613.P9044021878636567319

`A002033(n)-A348610(A005451(n+1))`
-/

namespace A348613.P9044021878636567319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - A348610 (A005451 (n + 1)).toNat

end

end A348613.P9044021878636567319

/-! ## A348613.P8164346306756421328

`A002033(n)-A348610(n+1)`
-/

namespace A348613.P8164346306756421328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - A348610 (n + 1)

end

end A348613.P8164346306756421328

/-! ## A348613.P6321217462081313856

`Δ[A173382(n)]-A348610(n+1)`
-/

namespace A348613.P6321217462081313856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A348610 (n + 1)

end

end A348613.P6321217462081313856

/-! ## A348613.P15112580924614894242

`A074206(n+1)-A348610(n+1)`
-/

namespace A348613.P15112580924614894242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1) - A348610 (n + 1)

end

end A348613.P15112580924614894242

/-! ## A348613.P6675858459553439306

`A004525(A067824(n+1))-A348610(n+1)`
-/

namespace A348613.P6675858459553439306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A067824 (n + 1)).toNat - A348610 (n + 1)

end

end A348613.P6675858459553439306

/-! ## A348613.P7221272138325896145

`A348611(n+1)+A348616(n+1)-A348610(n+1)`
-/

namespace A348613.P7221272138325896145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348611 (n + 1) + (A348616 (n + 1) - A348610 (n + 1))

end

end A348613.P7221272138325896145

/-! ## A348613.P11792910673355071645

`A349059(n+1)+A350139(n+1)-A348610(n+1)`
-/

namespace A348613.P11792910673355071645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349059 (n + 1) + (A350139 (n + 1) - A348610 (n + 1))

end

end A348613.P11792910673355071645

/-!
# A348614: Numbers k such that the k-th composition in standard order has sum equal to twice its alternating sum.

The programs for A348614, there is no canonical definition to state claims against.
-/

/-! ## A348614.P16748522786648293872

`eq[2*A124754(n), A029837(n+1)]`
-/

namespace A348614.P16748522786648293872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348614.P16748522786648293872

/-! ## A348614.P279292761802805539

`eq[A124754(n), A142150(A070939(n))]`
-/

namespace A348614.P279292761802805539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A070939 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348614.P279292761802805539

/-! ## A348614.P5355396757350151585

`eq[A001281(A029837(n+1)), A124754(n)]`
-/

namespace A348614.P5355396757350151585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A029837 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348614.P5355396757350151585

/-! ## A348614.P397314468138989274

`eq[A004524(A070939(n)+1), A124754(n)]`
-/

namespace A348614.P397314468138989274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A070939 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348614.P397314468138989274

/-! ## A348614.P10658410463196500769

`eq[A004524(A070939(2*n)), A124754(n)]`
-/

namespace A348614.P10658410463196500769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A070939 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348614.P10658410463196500769

/-!
# A348615: Number of non-alternating permutations of {1...n}.

The programs for A348615, there is no canonical definition to state claims against.
-/

/-! ## A348615.P11122651752919384872

`n!-A001250(n)`
-/

namespace A348615.P11122651752919384872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A001250 n

end

end A348615.P11122651752919384872

/-! ## A348615.P5912960783356182511

`n!-A008282(∑[n]+2)`
-/

namespace A348615.P5912960783356182511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A008282 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A348615.P5912960783356182511

/-! ## A348615.P12537546881968699811

`A000142(n)-A001250(n)`
-/

namespace A348615.P12537546881968699811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A001250 n

end

end A348615.P12537546881968699811

/-! ## A348615.P18015473832386350982

`Δ[A003422(n)]-A001250(n)`
-/

namespace A348615.P18015473832386350982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001250 n

end

end A348615.P18015473832386350982

/-! ## A348615.P6233495242476565401

`2*(A001710(n)-A000111(n))`
-/

namespace A348615.P6233495242476565401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001710 n - A000111 n)

end

end A348615.P6233495242476565401

/-!
# A348616: Number of ordered factorizations of n with adjacent equal factors.

The programs for A348616, there is no canonical definition to state claims against.
-/

/-! ## A348616.P3719204066132099607

`A074206(n+1)-A348611(n+1)`
-/

namespace A348616.P3719204066132099607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1) - A348611 (n + 1)

end

end A348616.P3719204066132099607

/-! ## A348616.P2507260324624412059

`A002033(n)-A348611(n+1)`
-/

namespace A348616.P2507260324624412059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - A348611 (n + 1)

end

end A348616.P2507260324624412059

/-! ## A348616.P5893435988081100755

`Δ[A173382(n)]-A348611(n+1)`
-/

namespace A348616.P5893435988081100755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A348611 (n + 1)

end

end A348616.P5893435988081100755

/-! ## A348616.P8410948082187645581

`∑{d}[n+1, A174725(#)]-A348611(n+1)`
-/

namespace A348616.P8410948082187645581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174725 d - A348611 (n + 1)

end

end A348616.P8410948082187645581

/-! ## A348616.P9928631103369544256

`ceil(A067824(n+1)/2-A348611(n+1))`
-/

namespace A348616.P9928631103369544256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067824 (n + 1) : ℚ) / 2 - (A348611 (n + 1) : ℚ)⌉

end

end A348616.P9928631103369544256

/-! ## A348616.P5564650878498144618

`A004525(A067824(n+1))-A348611(n+1)`
-/

namespace A348616.P5564650878498144618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A067824 (n + 1)).toNat - A348611 (n + 1)

end

end A348616.P5564650878498144618

/-! ## A348616.P16036064181813067199

`A050324(A101296(n+1))-A348611(n+1)`
-/

namespace A348616.P16036064181813067199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050324 (A101296 (n + 1)).toNat - A348611 (n + 1)

end

end A348616.P16036064181813067199

/-! ## A348616.P11716055058474820332

`A348610(n+1)+A348613(n+1)-A348611(n+1)`
-/

namespace A348616.P11716055058474820332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348610 (n + 1) + (A348613 (n + 1) - A348611 (n + 1))

end

end A348616.P11716055058474820332

/-! ## A348616.P16333435358267812841

`A349059(n+1)+A350139(n+1)-A348611(n+1)`
-/

namespace A348616.P16333435358267812841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349059 (n + 1) + (A350139 (n + 1) - A348611 (n + 1))

end

end A348616.P16333435358267812841

/-! ## A348616.P11499217115681633132

`∑{d}[n+1, A000010(#)*A323912((n+1)/#)]-A348611(n+1)`
-/

namespace A348616.P11499217115681633132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A323912 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A348611 (n + 1)

end

end A348616.P11499217115681633132

/-!
# A348617: Numbers whose sum of prime indices is twice their negated alternating sum.

The programs for A348617, there is no canonical definition to state claims against.
-/

/-! ## A348617.P9263013787564789167

`filter[A349160(n+1), A065043(#)]`
-/

namespace A348617.P9263013787564789167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A348617.P9263013787564789167

/-! ## A348617.P2705807382280493013

`filter[A349160(n+1), A353331(#)]`
-/

namespace A348617.P2705807382280493013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353331 (f1 j).toNat = 1) n)

end

end A348617.P2705807382280493013

/-! ## A348617.P16005541474243649334

`∩[A028260(n+1), A349160(n+1)]`
-/

namespace A348617.P16005541474243649334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348617.P16005541474243649334

/-! ## A348617.P7914241107704091249

`∩[A322014(n+1), A349160(n+1)]`
-/

namespace A348617.P7914241107704091249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348617.P7914241107704091249

/-! ## A348617.P7551367501555335615

`∩[A340784(n+1), A349160(n+1)]`
-/

namespace A348617.P7551367501555335615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348617.P7551367501555335615

/-!
# A348618: a(n) = (1+(-1)^n)/2*4^n*(C((3*n)/2-1,n))+(1-(-1)^n)/2*((C((3*n-1)/2,n))*(C(3*n-1,(3*n-1)/2)))/(C(n-1,(n-1)/2)).

The programs for A348618, the canonical program `A348618.P16052363181870275259` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348618 has offset 0).

The definition of A348618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348618.P16052363181870275259

`ceil(A244038(n)/3)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A348618

/-- `ceil(A244038(n)/3)` -/
def P16052363181870275259.Spec : Prop :=
  ∀ n, P16052363181870275259.a n = A348618 n

theorem P16052363181870275259.correct : P16052363181870275259.Spec := by
  intro n
  simp only [A348618]

end A348618

/-! ## A348618.P2094772808464839903

`A205813(∑[4*n])`
-/

namespace A348618.P2094772808464839903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205813 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A348618.P2094772808464839903

namespace A348618

/-- `A205813(∑[4*n])` -/
def P2094772808464839903.Spec : Prop :=
  ∀ n, P2094772808464839903.a n = A348618 n

end A348618

/-! ## A348618.P13058492522282151965

`A054335(A004273(n²))`
-/

namespace A348618.P13058492522282151965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A004273 (n ^ 2)).toNat

end

end A348618.P13058492522282151965

namespace A348618

/-- `A054335(A004273(n²))` -/
def P13058492522282151965.Spec : Prop :=
  ∀ n, P13058492522282151965.a n = A348618 n

end A348618

/-! ## A348618.P3914272531821664132

`A054335(A163985(n²))`
-/

namespace A348618.P3914272531821664132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A163985 (n ^ 2)).toNat

end

end A348618.P3914272531821664132

namespace A348618

/-- `A054335(A163985(n²))` -/
def P3914272531821664132.Spec : Prop :=
  ∀ n, P3914272531821664132.a n = A348618 n

end A348618

/-! ## A348618.P16917495391544599106

`A054335(A014681(2*n²))`
-/

namespace A348618.P16917495391544599106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A014681 (2 * n ^ 2)).toNat

end

end A348618.P16917495391544599106

namespace A348618

/-- `A054335(A014681(2*n²))` -/
def P16917495391544599106.Spec : Prop :=
  ∀ n, P16917495391544599106.a n = A348618 n

end A348618

/-!
# A348619: a(n) = #G_{2n}(3n) for n >= 0, where G_{K}(N) is the set of pure K-sparse gapset of genus N.

The programs for A348619, there is no canonical definition to state claims against.
-/

/-! ## A348619.P13218224836755233150

`A018013(n)-A047895(A018010(n))`
-/

namespace A348619.P13218224836755233150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018013 n - A047895 (A018010 n).toNat

end

end A348619.P13218224836755233150

/-! ## A348619.P13568605321603918170

`A018013(n)-A060571(A323790(n))`
-/

namespace A348619.P13568605321603918170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018013 n - A060571 (A323790 n).toNat

end

end A348619.P13568605321603918170

/-! ## A348619.P13540101161844334994

`A018013(n)-A355737(A210108(n))`
-/

namespace A348619.P13540101161844334994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018013 n - A355737 (A210108 n).toNat

end

end A348619.P13540101161844334994

/-!
# A348620: Total of the chromatic numbers of all simple graphs on n nodes.

The programs for A348620, there is no canonical definition to state claims against.
-/

/-! ## A348620.P18203087631988953028

`∑{#}[n, (#+1)*A084268(C(n+1, 2)+#+1)]`
-/

namespace A348620.P18203087631988953028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A084268 (Nat.choose (n + 1) 2 + (k + 1))

end

end A348620.P18203087631988953028

/-! ## A348620.P1649933083971550586

`A345706(A112798(n+2)+A058331(n))`
-/

namespace A348620.P1649933083971550586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345706 (A112798 (n + 2) + A058331 n).toNat

end

end A348620.P1649933083971550586

/-!
# A348621: The number of additions required to compute the permanent of general n X n matrices using Ryser's formula without Gray code ordering.

The programs for A348621, the canonical program `A348621.P804587375574621141` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348621 has offset 1).

The definition of A348621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348621.P804587375574621141

`((n+1)²-2*(n+1)+2)*2^n+n+1-2`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A348621

/-- `((n+1)²-2*(n+1)+2)*2^n+n+1-2` -/
def P804587375574621141.Spec : Prop :=
  ∀ n, P804587375574621141.a n = A348621 (n + 1)

theorem P804587375574621141.correct : P804587375574621141.Spec := by
  intro n
  simp only [A348621, Nat.add_sub_cancel]

end A348621

/-! ## A348621.P7907941050908877143

`ogf((4x-11x^2+14x^3-8x^4)/(1-8x+25x^2-38x^3+28x^4-8x^5))`
-/

namespace A348621.P7907941050908877143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -11, 14, -8] [1, -8, 25, -38, 28, -8] n

end

end A348621.P7907941050908877143

namespace A348621

/-- `ogf((4x-11x^2+14x^3-8x^4)/(1-8x+25x^2-38x^3+28x^4-8x^5))` -/
def P7907941050908877143.Spec : Prop :=
  ∀ n, P7907941050908877143.a n = A348621 (n + 1)

end A348621

/-! ## A348621.P15153906009121494180

`∑[A084850(n)+or(1, -2^n)]`
-/

namespace A348621.P15153906009121494180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084850 n + Int.lor 1 (-(2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348621.P15153906009121494180

namespace A348621

/-- `∑[A084850(n)+or(1, -2^n)]` -/
def P15153906009121494180.Spec : Prop :=
  ∀ n, P15153906009121494180.a n = A348621 (n + 1)

end A348621

/-! ## A348621.P2629295619462791793

`xor((n²+1)*A060546(2*n), abs(1-n))`
-/

namespace A348621.P2629295619462791793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n ^ 2 + 1 : ℤ) * A060546 (2 * n)) |1 - (n : ℤ)|

end

end A348621.P2629295619462791793

namespace A348621

/-- `xor((n²+1)*A060546(2*n), abs(1-n))` -/
def P2629295619462791793.Spec : Prop :=
  ∀ n, P2629295619462791793.a n = A348621 (n + 1)

end A348621

/-! ## A348621.P6769705228496264191

`abs(A048493(n)-A055580(n))`
-/

namespace A348621.P6769705228496264191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048493 n - A055580 n|

end

end A348621.P6769705228496264191

namespace A348621

/-- `abs(A048493(n)-A055580(n))` -/
def P6769705228496264191.Spec : Prop :=
  ∀ n, P6769705228496264191.a n = A348621 (n + 1)

end A348621

/-! ## A348621.P13348239909684618439

`∑[A057427(n)+n*A001792(n)]`
-/

namespace A348621.P13348239909684618439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (n : ℤ) * A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348621.P13348239909684618439

namespace A348621

/-- `∑[A057427(n)+n*A001792(n)]` -/
def P13348239909684618439.Spec : Prop :=
  ∀ n, P13348239909684618439.a n = A348621 (n + 1)

end A348621

/-! ## A348621.P823578774357244457

`∑[n*A001792(n)-A057428(n)]`
-/

namespace A348621.P823578774357244457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001792 n - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348621.P823578774357244457

namespace A348621

/-- `∑[n*A001792(n)-A057428(n)]` -/
def P823578774357244457.Spec : Prop :=
  ∀ n, P823578774357244457.a n = A348621 (n + 1)

end A348621

/-!
# A348622: Triangular array read by rows: T(n,k) is the number of periodic n X n matrices over GF(2) having rank k, n>=0, 0<=k<=n.

The programs for A348622, the canonical program `A348622.P8696413895643228713` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348622 has offset 0).

The definition of A348622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348622.P8696413895643228713

`A002884(row(n))/A002884(row(n)-col(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A348622

/-- `A002884(row(n))/A002884(row(n)-col(n))` -/
def P8696413895643228713.Spec : Prop :=
  ∀ n, P8696413895643228713.a n = (A348622 n : ℚ)

end A348622

/-! ## A348622.P13756821999103826527

`sqrt(A118185(n))/A022166(n)*A286331(n)`
-/

namespace A348622.P13756821999103826527
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118185 n : ℝ) / (A022166 n : ℝ) * (A286331 n : ℝ)

end

end A348622.P13756821999103826527

namespace A348622

/-- `sqrt(A118185(n))/A022166(n)*A286331(n)` -/
def P13756821999103826527.Spec : Prop :=
  ∀ n, P13756821999103826527.a n = (A348622 n : ℝ)

end A348622

/-! ## A348622.P3684566502543828076

`A117401(n)*A288853(n)`
-/

namespace A348622.P3684566502543828076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117401 n * A288853 n

end

end A348622.P3684566502543828076

namespace A348622

/-- `A117401(n)*A288853(n)` -/
def P3684566502543828076.Spec : Prop :=
  ∀ n, P3684566502543828076.a n = A348622 n

end A348622

/-! ## A348622.P11074248092160281387

`sqrt(A118185(n))*A288853(n)`
-/

namespace A348622.P11074248092160281387
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118185 n : ℝ) * (A288853 n : ℝ)

end

end A348622.P11074248092160281387

namespace A348622

/-- `sqrt(A118185(n))*A288853(n)` -/
def P11074248092160281387.Spec : Prop :=
  ∀ n, P11074248092160281387.a n = (A348622 n : ℝ)

end A348622

/-! ## A348622.P1354973588771208702

`A000079(A004247(n))*A288853(n)`
-/

namespace A348622.P1354973588771208702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004247 n).toNat * A288853 n

end

end A348622.P1354973588771208702

namespace A348622

/-- `A000079(A004247(n))*A288853(n)` -/
def P1354973588771208702.Spec : Prop :=
  ∀ n, P1354973588771208702.a n = A348622 n

end A348622

/-!
# A348623: a(1) = 1; for n > 1 a(n) = a(n-1) + A001227(a(n-1)).

The programs for A348623, the canonical program `A348623.P9735768034356136830` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348623 has offset 1).

The definition of A348623 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A001227(a(n-1))` (program `A348623.P9735768034356136830`, by `A348623.P9735768034356136830.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A348623.P9735768034356136830

`a(n-1)+A001227(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A348623

/-- `a(n-1)+A001227(a(n-1))` -/
def P9735768034356136830.Spec : Prop :=
  ∀ n, P9735768034356136830.a n = A348623 (n + 1)

theorem P9735768034356136830.correct : P9735768034356136830.Spec := by
  intro n
  simp only [A348623, Nat.add_sub_cancel]

end A348623

/-! ## A348623.P16915654570460510214

`1*a(n-1)+A001227(a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348623.P16915654570460510214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 * a (n - 1) + A001227 (a (n - 1)).toNat

end

end A348623.P16915654570460510214

namespace A348623

/-- `1*a(n-1)+A001227(a(n-1))` -/
def P16915654570460510214.Spec : Prop :=
  ∀ n, P16915654570460510214.a n = A348623 (n + 1)

theorem P16915654570460510214.correct : P16915654570460510214.Spec := by
  intro n
  simp only [A348623, Nat.add_sub_cancel, A348623.P16915654570460510214.a, A348623.P9735768034356136830.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A348623

/-! ## A348623.P7268705600555245269

`A000005(A000265(a(n-1)))+a(n-1)` with `a(0)=1`
-/

namespace A348623.P7268705600555245269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (A000265 (a (n - 1)).toNat).toNat + a (n - 1)

end

end A348623.P7268705600555245269

namespace A348623

/-- `A000005(A000265(a(n-1)))+a(n-1)` -/
def P7268705600555245269.Spec : Prop :=
  ∀ n, P7268705600555245269.a n = A348623 (n + 1)

end A348623

/-! ## A348623.P6430874169468452317

`A000005(A336158(a(n-1)))+a(n-1)` with `a(0)=1`
-/

namespace A348623.P6430874169468452317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (A336158 (a (n - 1)).toNat).toNat + a (n - 1)

end

end A348623.P6430874169468452317

namespace A348623

/-- `A000005(A336158(a(n-1)))+a(n-1)` -/
def P6430874169468452317.Spec : Prop :=
  ∀ n, P6430874169468452317.a n = A348623 (n + 1)

end A348623

/-! ## A348623.P2182559437107082270

`a(n-1)+A069283(a(n-1))+1` with `a(0)=1`
-/

namespace A348623.P2182559437107082270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A069283 (a (n - 1)).toNat + 1)

end

end A348623.P2182559437107082270

namespace A348623

/-- `a(n-1)+A069283(a(n-1))+1` -/
def P2182559437107082270.Spec : Prop :=
  ∀ n, P2182559437107082270.a n = A348623 (n + 1)

end A348623

/-! ## A348623.P17099392184659861368

`A000005(A064989(a(n-1)))+a(n-1)` with `a(0)=1`
-/

namespace A348623.P17099392184659861368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (A064989 (a (n - 1)).toNat).toNat + a (n - 1)

end

end A348623.P17099392184659861368

namespace A348623

/-- `A000005(A064989(a(n-1)))+a(n-1)` -/
def P17099392184659861368.Spec : Prop :=
  ∀ n, P17099392184659861368.a n = A348623 (n + 1)

end A348623

/-! ## A348623.P11509700438169741262

`A320107(2*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A348623.P11509700438169741262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320107 (2 * a (n - 1)).toNat + a (n - 1)

end

end A348623.P11509700438169741262

namespace A348623

/-- `A320107(2*a(n-1))+a(n-1)` -/
def P11509700438169741262.Spec : Prop :=
  ∀ n, P11509700438169741262.a n = A348623 (n + 1)

end A348623

/-! ## A348623.P6540212153698855479

`A091954(2*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A348623.P6540212153698855479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091954 (2 * a (n - 1)).toNat + a (n - 1)

end

end A348623.P6540212153698855479

namespace A348623

/-- `A091954(2*a(n-1))+a(n-1)` -/
def P6540212153698855479.Spec : Prop :=
  ∀ n, P6540212153698855479.a n = A348623 (n + 1)

end A348623

/-! ## A348623.P5352123772921337435

`A091954(a(n-1)+a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A348623.P5352123772921337435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091954 (a (n - 1) + a (n - 1)).toNat + a (n - 1)

end

end A348623.P5352123772921337435

namespace A348623

/-- `A091954(a(n-1)+a(n-1))+a(n-1)` -/
def P5352123772921337435.Spec : Prop :=
  ∀ n, P5352123772921337435.a n = A348623 (n + 1)

end A348623

/-! ## A348623.P8044538462302677858

`A298735(a(n-1)*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A348623.P8044538462302677858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298735 (a (n - 1) * a (n - 1)).toNat + a (n - 1)

end

end A348623.P8044538462302677858

namespace A348623

/-- `A298735(a(n-1)*a(n-1))+a(n-1)` -/
def P8044538462302677858.Spec : Prop :=
  ∀ n, P8044538462302677858.a n = A348623 (n + 1)

end A348623

/-!
# A348627: Numbers that are both exponential and nonexponential abundant numbers.

The programs for A348627, there is no canonical definition to state claims against.
-/

/-! ## A348627.P940852039070339099

`filter[A129575(n+1), A190938(#)]`
-/

namespace A348627.P940852039070339099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190938 (f1 j).toNat = 1) n)

end

end A348627.P940852039070339099

/-! ## A348627.P3217555659115606684

`filter[A321206(n+1), A190938(#)]`
-/

namespace A348627.P3217555659115606684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A190938 (f1 j).toNat = 1) n)

end

end A348627.P3217555659115606684

/-! ## A348627.P4803590569116803762

`filter[A129575(n+2), A189094(#)]`
-/

namespace A348627.P4803590569116803762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129575 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189094 (f1 j).toNat = 1) n)

end

end A348627.P4803590569116803762

/-!
# A348628: Numbers k such that k and k+1 have the same sum of nonexponential divisors (A160135).

The programs for A348628, there is no canonical definition to state claims against.
-/

/-! ## A348628.P9859648357992798800

`A319095(A049943(n+1))+n`
-/

namespace A348628.P9859648357992798800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319095 (A049943 (n + 1)).toNat + (n : ℤ)

end

end A348628.P9859648357992798800

/-!
# A348629: Nonexponential highly abundant numbers: numbers m such that nesigma(m) > nesigma(k) for all k < m, where nesigma(k) is the sum of nonexponential divisors of n (A160135).

The programs for A348629, there is no canonical definition to state claims against.
-/

/-! ## A348629.P9434161746100545318

`lt[A019320(n), ∑[A181783(n)]]`
-/

namespace A348629.P9434161746100545318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348629.P9434161746100545318

/-! ## A348629.P15224433456957441557

`lt[A019320(n), ∑[A185620(n)]]`
-/

namespace A348629.P15224433456957441557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348629.P15224433456957441557

/-! ## A348629.P4006658793432219726

`eq[A109043(n), A175067(A123883(n+1))]`
-/

namespace A348629.P4006658793432219726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175067 (A123883 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348629.P4006658793432219726

/-! ## A348629.P12387488539855919749

`eq[A175067(A123883(n+1)), A233583(n+1)]`
-/

namespace A348629.P12387488539855919749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175067 (A123883 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348629.P12387488539855919749

/-! ## A348629.P8725702369774039338

`record[∑{digits}[A333966(n+1), #]]`
-/

namespace A348629.P8725702369774039338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333966 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348629.P8725702369774039338

/-!
# A348630: Nonexponential superabundant numbers: numbers m such that nesigma(m)/m > nesigma(k)/k for all k < m, where nesigma(m) is the sum of nonexponential divisors of m (A160135).

The programs for A348630, there is no canonical definition to state claims against.
-/

/-! ## A348630.P15189961856529163224

`A261394(A062119(n+1)*A296072(n+1))`
-/

namespace A348630.P15189961856529163224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261394 (A062119 (n + 1) * A296072 (n + 1)).toNat

end

end A348630.P15189961856529163224

/-! ## A348630.P10494693047678982809

`A261394(A062119(n+1)/A296072(n+1))`
-/

namespace A348630.P10494693047678982809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261394 (SequenceMachineLib.roundAway ((A062119 (n + 1) : ℚ) / (A296072 (n + 1) : ℚ))).toNat

end

end A348630.P10494693047678982809

/-!
# A348631: Nonexponential weird numbers: nonexponential abundant numbers (A348604) that are not equal to the sum of any subset of their nonexponential divisors.

The programs for A348631, there is no canonical definition to state claims against.
-/

/-! ## A348631.P5072397843661396671

`∩[A064114(n+1), A364862(n+1)]`
-/

namespace A348631.P5072397843661396671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348631.P5072397843661396671

/-! ## A348631.P1470291239922611676

`record[A007947(A064114(n+1))]`
-/

namespace A348631.P1470291239922611676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A064114 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348631.P1470291239922611676

/-! ## A348631.P9197142336531206865

`record[A007913(A292986(n+1))]`
-/

namespace A348631.P9197142336531206865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A292986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348631.P9197142336531206865

/-! ## A348631.P6797721882042642309

`record[A007913(A306984(n+1))]`
-/

namespace A348631.P6797721882042642309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A306984 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348631.P6797721882042642309

/-! ## A348631.P148745516908241958

`filter[A006037(n+1), A005361(#)]`
-/

namespace A348631.P148745516908241958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005361 (f1 j).toNat = 1) n)

end

end A348631.P148745516908241958

/-! ## A348631.P18240603889435396721

`filter[A006037(n+1), A008966(#)]`
-/

namespace A348631.P18240603889435396721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A348631.P18240603889435396721

/-! ## A348631.P15095694308793557845

`filter[A064114(n+1), A008966(#)]`
-/

namespace A348631.P15095694308793557845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A348631.P15095694308793557845

/-! ## A348631.P14937790420357852357

`filter[A292986(n+1), A008966(#)]`
-/

namespace A348631.P14937790420357852357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A348631.P14937790420357852357

/-! ## A348631.P5525250775181351874

`filter[A306984(n+1), A008966(#)]`
-/

namespace A348631.P5525250775181351874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A348631.P5525250775181351874

/-! ## A348631.P16867560798219450239

`filter[A349285(n+1), A008966(#)]`
-/

namespace A348631.P16867560798219450239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A348631.P16867560798219450239

/-! ## A348631.P15718024538009162702

`filter[A006037(n+1), A354353(#)]`
-/

namespace A348631.P15718024538009162702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A348631.P15718024538009162702

/-! ## A348631.P5769759971152747268

`filter[A006037(n+1), A354819(#)]`
-/

namespace A348631.P5769759971152747268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A348631.P5769759971152747268

/-! ## A348631.P7298436310816195811

`filter[A006037(n+1), A359374(#)]`
-/

namespace A348631.P7298436310816195811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A348631.P7298436310816195811

/-! ## A348631.P11706833749531268683

`filter[A006037(n+1), A359377(#)]`
-/

namespace A348631.P11706833749531268683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A348631.P11706833749531268683

/-! ## A348631.P13625317638681243919

`filter[A006037(n+1), A359550(#)]`
-/

namespace A348631.P13625317638681243919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A348631.P13625317638681243919

/-! ## A348631.P600437946662533051

`filter[A006037(n+1), A359820(#)]`
-/

namespace A348631.P600437946662533051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A348631.P600437946662533051

/-! ## A348631.P6568793781376974031

`filter[A006037(n+1), A371087(#)]`
-/

namespace A348631.P6568793781376974031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A348631.P6568793781376974031

/-! ## A348631.P329188567970270908

`filter[A006037(n+1), A377870(#)]`
-/

namespace A348631.P329188567970270908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377870 (f1 j).toNat = 1) n)

end

end A348631.P329188567970270908

/-! ## A348631.P5911597195763481127

`filter[A006037(n+1), A380469(#)]`
-/

namespace A348631.P5911597195763481127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A348631.P5911597195763481127

/-! ## A348631.P8679250195152497833

`filter[A064114(n+1), A354353(#)]`
-/

namespace A348631.P8679250195152497833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A348631.P8679250195152497833

/-!
# A348632: Nonexponential highly composite numbers: where the number of nonexponential divisors (A160097) increases to a record.

The programs for A348632, there is no canonical definition to state claims against.
-/

/-! ## A348632.P3215100167355501420

`∩[A060702(n+1), A194096(n+1)]`
-/

namespace A348632.P3215100167355501420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348632.P3215100167355501420

/-! ## A348632.P7285853905758290925

`A075617(A194096(n+2))`
-/

namespace A348632.P7285853905758290925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075617 (A194096 (n + 2)).toNat

end

end A348632.P7285853905758290925

/-! ## A348632.P12744453129903784491

`∩[A194096(n+1), A296484(n)]`
-/

namespace A348632.P12744453129903784491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296484 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348632.P12744453129903784491

/-! ## A348632.P10595931727573449535

`A194096(n+2)-A051390(A049747(2*n+1))`
-/

namespace A348632.P10595931727573449535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194096 (n + 2) - A051390 (A049747 (2 * n + 1)).toNat

end

end A348632.P10595931727573449535

/-!
# A348633: Lexicographically earliest sequence of distinct primes where the concatenation of all terms alternates a 1 digit with a not-1 digit.

The programs for A348633, there is no canonical definition to state claims against.
-/

/-! ## A348633.P12515706831615835621

`p?[A332461(A276103(n+1))]`
-/

namespace A348633.P12515706831615835621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332461 (A276103 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A348633.P12515706831615835621

/-! ## A348633.P12216495223406339686

`p?[A276103(n+1)%A141214(n)]`
-/

namespace A348633.P12216495223406339686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276103 (n + 1)) (A141214 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A348633.P12216495223406339686

/-! ## A348633.P8636998313085185189

`p?[∏{d}[A276103(n+1), A006530(#)]]`
-/

namespace A348633.P8636998313085185189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276103 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, A006530 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A348633.P8636998313085185189

/-! ## A348633.P14956492847510828341

`p?[∏{d}[A276103(n+1), A020639(#)]]`
-/

namespace A348633.P14956492847510828341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276103 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, A020639 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A348633.P14956492847510828341

/-! ## A348633.P3297367438327967598

`p?[A276103(n+1)]%A211763(n+1)`
-/

namespace A348633.P3297367438327967598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A211763 (n + 1))

end

end A348633.P3297367438327967598

/-!
# A348634: Number of transitive relations on an n-set with exactly five ordered pairs.

The programs for A348634, there is no canonical definition to state claims against.
-/

/-! ## A348634.P9945252983819989744

`A394732(n)-A394722(n)`
-/

namespace A348634.P9945252983819989744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394732 n - A394722 n

end

end A348634.P9945252983819989744

/-!
# A348636: Greedy Cantor's Dust Partition.

The programs for A348636, the canonical program `A348636.P17645639586115979662` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348636 has offset 1).

The definition of A348636 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265316, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348636.P17645639586115979662

`A265316(n+1)+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A348636

/-- `A265316(n+1)+1` -/
def P17645639586115979662.Spec : Prop :=
  ∀ n, P17645639586115979662.a n = A348636 (n + 1)

theorem P17645639586115979662.correct : P17645639586115979662.Spec := by
  intro n
  simp only [A348636, Nat.add_sub_cancel]

end A348636

/-! ## A348636.P14769427599250762096

`A261691(2*n)+1`
-/

namespace A348636.P14769427599250762096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261691 (2 * n) + 1

end

end A348636.P14769427599250762096

namespace A348636

/-- `A261691(2*n)+1` -/
def P14769427599250762096.Spec : Prop :=
  ∀ n, P14769427599250762096.a n = A348636 (n + 1)

end A348636

/-! ## A348636.P11475250213617738479

`record[A261691(and(n, n+1))+1]`
-/

namespace A348636.P11475250213617738479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261691 (Nat.land n (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348636.P11475250213617738479

namespace A348636

/-- `record[A261691(and(n, n+1))+1]` -/
def P11475250213617738479.Spec : Prop :=
  ∀ n, P11475250213617738479.a n = A348636 (n + 1)

end A348636

/-! ## A348636.P3835599719168765237

`A262057(∑[n]+1)+1`
-/

namespace A348636.P3835599719168765237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262057 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A348636.P3835599719168765237

namespace A348636

/-- `A262057(∑[n]+1)+1` -/
def P3835599719168765237.Spec : Prop :=
  ∀ n, P3835599719168765237.a n = A348636 (n + 1)

end A348636

/-! ## A348636.P1008929100738571842

`record[A262057(n+1)+1]`
-/

namespace A348636.P1008929100738571842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262057 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348636.P1008929100738571842

namespace A348636

/-- `record[A262057(n+1)+1]` -/
def P1008929100738571842.Spec : Prop :=
  ∀ n, P1008929100738571842.a n = A348636 (n + 1)

end A348636

/-! ## A348636.P7141709455424524983

`A293030(∑[n+1])`
-/

namespace A348636.P7141709455424524983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293030 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A348636.P7141709455424524983

namespace A348636

/-- `A293030(∑[n+1])` -/
def P7141709455424524983.Spec : Prop :=
  ∀ n, P7141709455424524983.a n = A348636 (n + 1)

end A348636

/-!
# A348640: Denominators of the remainders in the greedy Egyptian fraction representation of 1 with square denominators (A348626).

The programs for A348640, there is no canonical definition to state claims against.
-/

/-! ## A348640.P7576783504273292870

`A382719(n)+A348641(n)`
-/

namespace A348640.P7576783504273292870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382719 n + A348641 n

end

end A348640.P7576783504273292870

/-! ## A348640.P365950939444891736

`A261341(or(A000792(n), A222944(n+1)))`
-/

namespace A348640.P365950939444891736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261341 (Int.lor (A000792 n) (A222944 (n + 1))).toNat

end

end A348640.P365950939444891736

/-! ## A348640.P4038237792067584043

`A261341(or(A222944(n+1), A334683(n)))`
-/

namespace A348640.P4038237792067584043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261341 (Int.lor (A222944 (n + 1)) (A334683 n)).toNat

end

end A348640.P4038237792067584043

/-!
# A348641: Numerators of the remainders in the greedy Egyptian fraction representation of 1 with square denominators (A348626).

The programs for A348641, there is no canonical definition to state claims against.
-/

/-! ## A348641.P11908045693092059662

`A348640(n)-A382719(n)`
-/

namespace A348641.P11908045693092059662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348640 n - A382719 n

end

end A348641.P11908045693092059662

/-!
# A348642: a(n) = Product_{k=1..A003056(n)} prime(k)^T(n,k), with row n of T = row n of A237591.

The programs for A348642, there is no canonical definition to state claims against.
-/

/-! ## A348642.P17589103300826035011

`A057335(A348473(n+1))`
-/

namespace A348642.P17589103300826035011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (A348473 (n + 1)).toNat

end

end A348642.P17589103300826035011

/-! ## A348642.P1469181396648975034

`A122111(A348475(n+1))`
-/

namespace A348642.P1469181396648975034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A348475 (n + 1)).toNat

end

end A348642.P1469181396648975034

/-! ## A348642.P1158928128444977942

`eq[A010301(n), A351952(n)]`
-/

namespace A348642.P1158928128444977942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010301 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348642.P1158928128444977942

/-! ## A348642.P12383837592658638007

`A317848(∏[p?[A328749(n)]])`
-/

namespace A348642.P12383837592658638007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317848 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A348642.P12383837592658638007

/-!
# A348643: a(n) = (16*n + 1)*(2592*n^2 + 288*n + 7).

The programs for A348643, the canonical program `A348643.P12611216607101264373` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348643 has offset 0).

The definition of A348643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348643.P12611216607101264373

`(16*n+1)*(288*n*(9*n+1)+7)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A348643

/-- `(16*n+1)*(288*n*(9*n+1)+7)` -/
def P12611216607101264373.Spec : Prop :=
  ∀ n, (P12611216607101264373.a n : ℤ) = A348643 n

theorem P12611216607101264373.correct : P12611216607101264373.Spec := by
  intro n
  simp only [A348643]

end A348643

/-!
# A348644: a(n) = (18*n + 1)*(24*n + 1)*(144*n + 11).

The programs for A348644, the canonical program `A348644.P4483524187703313777` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348644 has offset 0).

The definition of A348644 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(18*n+1)*(24*n+1)*(144*n+11)` (program `A348644.P4483524187703313777`, by `A348644.P4483524187703313777.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A348644.P4483524187703313777

`(18*n+1)*(24*n+1)*(144*n+11)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A348644

/-- `(18*n+1)*(24*n+1)*(144*n+11)` -/
def P4483524187703313777.Spec : Prop :=
  ∀ n, (P4483524187703313777.a n : ℤ) = A348644 n

theorem P4483524187703313777.correct : P4483524187703313777.Spec := by
  intro n
  simp only [A348644]

end A348644

/-!
# A348645: a(n) = (12*n + 1)*(5184*n^2 + 540*n + 13).

The programs for A348645, the canonical program `A348645.P8845155929259285772` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348645 has offset 0).

The definition of A348645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348645.P8845155929259285772

`(12*n+1)*(108*n*(48*n+5)+13)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A348645

/-- `(12*n+1)*(108*n*(48*n+5)+13)` -/
def P8845155929259285772.Spec : Prop :=
  ∀ n, (P8845155929259285772.a n : ℤ) = A348645 n

theorem P8845155929259285772.correct : P8845155929259285772.Spec := by
  intro n
  simp only [A348645]

end A348645

/-!
# A348646: a(n) = (72*n + 5)*(1296*n^2 + 153*n + 4).

The programs for A348646, the canonical program `A348646.P404398735262539910` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348646 has offset 0).

The definition of A348646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348646.P404398735262539910

`(72*n+5)*(9*n*(144*n+17)+4)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A348646

/-- `(72*n+5)*(9*n*(144*n+17)+4)` -/
def P404398735262539910.Spec : Prop :=
  ∀ n, (P404398735262539910.a n : ℤ) = A348646 n

theorem P404398735262539910.correct : P404398735262539910.Spec := by
  intro n
  simp only [A348646]

end A348646

/-!
# A348647: Irregular table read by rows; the n-th row contains the lengths of the runs of consecutive terms with the same parity in the n-th row of Pascal's triangle (A007318).

The programs for A348647, the canonical program `A348647.P9920592203306078487` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348647 has offset 0).

The definition of A348647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6305 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348647.P9920592203306078487

`Δ[record[n-A080098(n)]]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A348647

/-- `Δ[record[n-A080098(n)]]` -/
def P9920592203306078487.Spec : Prop :=
  ∀ n, P9920592203306078487.a n = A348647 n

theorem P9920592203306078487.correct : P9920592203306078487.Spec := by
  intro n
  simp only [A348647]

end A348647

/-! ## A348647.P18114928867733658302

`(A185587(n+1)+1)/2`
-/

namespace A348647.P18114928867733658302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185587 (n + 1) + 1 : ℚ) / 2

end

end A348647.P18114928867733658302

namespace A348647

/-- `(A185587(n+1)+1)/2` -/
def P18114928867733658302.Spec : Prop :=
  ∀ n, P18114928867733658302.a n = (A348647 n : ℚ)

theorem P18114928867733658302.correct : P18114928867733658302.Spec := by
  intro n
  simp only [A348647, Nat.add_sub_cancel, A348647.P18114928867733658302.a, A348647.P9920592203306078487.f2, A348647.P9920592203306078487.f1, A348647.P9920592203306078487.a, A080098, A080098.P7543541268193481793.a, A185587, A185587.P7291945286253065846.a, A002262, A002262.P17823619022233514403.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A348647

/-! ## A348647.P7120459253368663267

`A000463(A185587(n+1))`
-/

namespace A348647.P7120459253368663267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A185587 (n + 1)).toNat

end

end A348647.P7120459253368663267

namespace A348647

/-- `A000463(A185587(n+1))` -/
def P7120459253368663267.Spec : Prop :=
  ∀ n, P7120459253368663267.a n = A348647 n

end A348647

/-! ## A348647.P8784965758151687071

`A252463(A185587(n+1)+1)`
-/

namespace A348647.P8784965758151687071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A185587 (n + 1) + 1).toNat

end

end A348647.P8784965758151687071

namespace A348647

/-- `A252463(A185587(n+1)+1)` -/
def P8784965758151687071.Spec : Prop :=
  ∀ n, P8784965758151687071.a n = A348647 n

end A348647

/-! ## A348647.P3987099730782843214

`A008619(A185587(n+1)-1)`
-/

namespace A348647.P3987099730782843214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A185587 (n + 1) - 1).toNat

end

end A348647.P3987099730782843214

namespace A348647

/-- `A008619(A185587(n+1)-1)` -/
def P3987099730782843214.Spec : Prop :=
  ∀ n, P3987099730782843214.a n = A348647 n

end A348647

/-! ## A348647.P14960173555753329789

`A003602(2*A185587(n+1))`
-/

namespace A348647.P14960173555753329789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (2 * A185587 (n + 1)).toNat

end

end A348647.P14960173555753329789

namespace A348647

/-- `A003602(2*A185587(n+1))` -/
def P14960173555753329789.Spec : Prop :=
  ∀ n, P14960173555753329789.a n = A348647 n

end A348647

/-! ## A348647.P6712420026446820869

`A008624(2*A185587(n+1))`
-/

namespace A348647.P6712420026446820869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A185587 (n + 1)).toNat

end

end A348647.P6712420026446820869

namespace A348647

/-- `A008624(2*A185587(n+1))` -/
def P6712420026446820869.Spec : Prop :=
  ∀ n, P6712420026446820869.a n = A348647 n

end A348647

/-! ## A348647.P16757757120007412517

`A008612(3*A185587(n+1))`
-/

namespace A348647.P16757757120007412517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (3 * A185587 (n + 1)).toNat

end

end A348647.P16757757120007412517

namespace A348647

/-- `A008612(3*A185587(n+1))` -/
def P16757757120007412517.Spec : Prop :=
  ∀ n, P16757757120007412517.a n = A348647 n

end A348647

/-! ## A348647.P18273266556846268326

`A001057(or(1, A185587(n+1)))`
-/

namespace A348647.P18273266556846268326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.lor 1 (A185587 (n + 1))).toNat

end

end A348647.P18273266556846268326

namespace A348647

/-- `A001057(or(1, A185587(n+1)))` -/
def P18273266556846268326.Spec : Prop :=
  ∀ n, P18273266556846268326.a n = A348647 n

end A348647

/-! ## A348647.P5550552176821054615

`A003602(or(1, A185587(n+1)))`
-/

namespace A348647.P5550552176821054615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.lor 1 (A185587 (n + 1))).toNat

end

end A348647.P5550552176821054615

namespace A348647

/-- `A003602(or(1, A185587(n+1)))` -/
def P5550552176821054615.Spec : Prop :=
  ∀ n, P5550552176821054615.a n = A348647 n

end A348647

/-! ## A348647.P12213831658007257682

`A008619(or(1, A185587(n+1)))`
-/

namespace A348647.P12213831658007257682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor 1 (A185587 (n + 1))).toNat

end

end A348647.P12213831658007257682

namespace A348647

/-- `A008619(or(1, A185587(n+1)))` -/
def P12213831658007257682.Spec : Prop :=
  ∀ n, P12213831658007257682.a n = A348647 n

end A348647

/-! ## A348647.P4469388696044852487

`A003602(A185587(n+1)+2)-1`
-/

namespace A348647.P4469388696044852487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A185587 (n + 1) + 2).toNat - 1

end

end A348647.P4469388696044852487

namespace A348647

/-- `A003602(A185587(n+1)+2)-1` -/
def P4469388696044852487.Spec : Prop :=
  ∀ n, P4469388696044852487.a n = A348647 n

end A348647

/-! ## A348647.P8923126020194332868

`A001057(A185587(n+1)%(n+8))`
-/

namespace A348647.P8923126020194332868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.tmod (A185587 (n + 1)) (n + 8 : ℤ)).toNat

end

end A348647.P8923126020194332868

namespace A348647

/-- `A001057(A185587(n+1)%(n+8))` -/
def P8923126020194332868.Spec : Prop :=
  ∀ n, P8923126020194332868.a n = A348647 n

end A348647

/-! ## A348647.P9247593174846579622

`A008624(A185587(n+1)+A185587(n+1)+1)`
-/

namespace A348647.P9247593174846579622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A185587 (n + 1) + (A185587 (n + 1) + 1)).toNat

end

end A348647.P9247593174846579622

namespace A348647

/-- `A008624(A185587(n+1)+A185587(n+1)+1)` -/
def P9247593174846579622.Spec : Prop :=
  ∀ n, P9247593174846579622.a n = A348647 n

end A348647

/-! ## A348647.P10790635033191753924

`Δ[record[n*A193842(n)%2]]`
-/

namespace A348647.P10790635033191753924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A193842 n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348647.P10790635033191753924

namespace A348647

/-- `Δ[record[n*A193842(n)%2]]` -/
def P10790635033191753924.Spec : Prop :=
  ∀ n, P10790635033191753924.a n = A348647 n

end A348647

/-! ## A348647.P17300005954221370361

`Δ[eq[1, A050600(A003056(n)+1+n)]]`
-/

namespace A348647.P17300005954221370361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 (A003056 n + 1 + (n : ℤ)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A348647.P17300005954221370361

namespace A348647

/-- `Δ[eq[1, A050600(A003056(n)+1+n)]]` -/
def P17300005954221370361.Spec : Prop :=
  ∀ n, P17300005954221370361.a n = A348647 n

end A348647

/-!
# A348648: Triangle T(n, k), n >= 0, 0 <= k <= n, read by rows; the even terms of Pascal's triangle (A007318) are clustered as wXwXw subtriangles with w = 2^s-1 for some s > 0; if A007318(n, k) is even then T(n, k) gives the corresponding s otherwise T(n, k) = 0.

The programs for A348648, there is no canonical definition to state claims against.
-/

/-! ## A348648.P11237287249536358620

`A007814(A116188(n))%A270831(n+1)`
-/

namespace A348648.P11237287249536358620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (A116188 n).toNat) (A270831 (n + 1))

end

end A348648.P11237287249536358620

/-! ## A348648.P4031196930004331327

`A358233(A081577(n)*A320629(n+1))`
-/

namespace A348648.P4031196930004331327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358233 (A081577 n * A320629 (n + 1)).toNat

end

end A348648.P4031196930004331327

/-! ## A348648.P2562100271525362385

`A358233(lcm(A081577(n), A320629(n+1)))`
-/

namespace A348648.P2562100271525362385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358233 (Int.lcm (A081577 n) (A320629 (n + 1)))

end

end A348648.P2562100271525362385

/-! ## A348648.P10443753094609206039

`A230642(A146959(n))`
-/

namespace A348648.P10443753094609206039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230642 (A146959 n).toNat

end

end A348648.P10443753094609206039

/-! ## A348648.P8466373718595845488

`A001222(A303808(n+1)^A050602(n))`
-/

namespace A348648.P8466373718595845488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A303808 (n + 1) : ℚ) ^ (A050602 n : ℤ))).toNat

end

end A348648.P8466373718595845488

/-!
# A348649: Odd numbers in the triangle of Stirling numbers of the second kind (A008277).

The programs for A348649, the canonical program `A348649.P8889696184983406131` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348649 has offset 1).

The definition of A348649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348649.P8889696184983406131

`A008277(eq[1, A008277(n+1)%2]+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A348649

/-- `A008277(eq[1, A008277(n+1)%2]+1)` -/
def P8889696184983406131.Spec : Prop :=
  ∀ n, P8889696184983406131.a n = A348649 (n + 1)

theorem P8889696184983406131.correct : P8889696184983406131.Spec := by
  intro n
  simp only [A348649, Nat.add_sub_cancel]

end A348649

/-! ## A348649.P4269977252892095651

`A008277(eq[1, and(1, A008277(n+1))]+1)`
-/

namespace A348649.P4269977252892095651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A008277 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A348649.P4269977252892095651

namespace A348649

/-- `A008277(eq[1, and(1, A008277(n+1))]+1)` -/
def P4269977252892095651.Spec : Prop :=
  ∀ n, P4269977252892095651.a n = A348649 (n + 1)

end A348649

/-! ## A348649.P10826899823623320198

`A008277(record[n*and(1, A008277(n+1))]+1)`
-/

namespace A348649.P10826899823623320198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A008277 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A348649.P10826899823623320198

namespace A348649

/-- `A008277(record[n*and(1, A008277(n+1))]+1)` -/
def P10826899823623320198.Spec : Prop :=
  ∀ n, P10826899823623320198.a n = A348649 (n + 1)

end A348649

/-! ## A348649.P12250447258122079143

`A008277(record[(n+1)^and(1, A008277(n+1))])`
-/

namespace A348649.P12250447258122079143
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.land 1 (A008277 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A348649.P12250447258122079143

namespace A348649

/-- `A008277(record[(n+1)^and(1, A008277(n+1))])` -/
def P12250447258122079143.Spec : Prop :=
  ∀ n, P12250447258122079143.a n = A348649 (n + 1)

end A348649

/-! ## A348649.P6801810944171386481

`A008277(eq[1, gcd(2, A001497(n))]+1)`
-/

namespace A348649.P6801810944171386481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001497 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A348649.P6801810944171386481

namespace A348649

/-- `A008277(eq[1, gcd(2, A001497(n))]+1)` -/
def P6801810944171386481.Spec : Prop :=
  ∀ n, P6801810944171386481.a n = A348649 (n + 1)

end A348649

/-!
# A348650: Even numbers in the triangle of Stirling numbers of the second kind (A008277).

The programs for A348650, the canonical program `A348650.P9202256715591682184` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348650 has offset 4).

The definition of A348650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2727 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348650.P9202256715591682184

`A008277(eq[0, A008277(n+1)%2]+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A348650

/-- `A008277(eq[0, A008277(n+1)%2]+1)` -/
def P9202256715591682184.Spec : Prop :=
  ∀ n, P9202256715591682184.a n = A348650 (n + 4)

theorem P9202256715591682184.correct : P9202256715591682184.Spec := by
  intro n
  simp only [A348650, Nat.add_sub_cancel]

end A348650

/-! ## A348650.P4851401652724157572

`A008277(eq[2, gcd(2, A008277(n+1))]+1)`
-/

namespace A348650.P4851401652724157572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A008277 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A348650.P4851401652724157572

namespace A348650

/-- `A008277(eq[2, gcd(2, A008277(n+1))]+1)` -/
def P4851401652724157572.Spec : Prop :=
  ∀ n, P4851401652724157572.a n = A348650 (n + 4)

end A348650

/-! ## A348650.P15879450087124911903

`A008277(lt[A008277(n+1)²%2, 1]+1)`
-/

namespace A348650.P15879450087124911903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008277 (n + 1) ^ 2) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A348650.P15879450087124911903

namespace A348650

/-- `A008277(lt[A008277(n+1)²%2, 1]+1)` -/
def P15879450087124911903.Spec : Prop :=
  ∀ n, P15879450087124911903.a n = A348650 (n + 4)

end A348650

/-! ## A348650.P7811273732047944235

`filter[A008277(n+1), A000034(#)]`
-/

namespace A348650.P7811273732047944235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000034 (f1 j).toNat = 1) n)

end

end A348650.P7811273732047944235

namespace A348650

/-- `filter[A008277(n+1), A000034(#)]` -/
def P7811273732047944235.Spec : Prop :=
  ∀ n, P7811273732047944235.a n = A348650 (n + 4)

end A348650

/-! ## A348650.P16141220409667415081

`filter[A008277(n+1), A010684(#)]`
-/

namespace A348650.P16141220409667415081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010684 (f1 j).toNat = 1) n)

end

end A348650.P16141220409667415081

namespace A348650

/-- `filter[A008277(n+1), A010684(#)]` -/
def P16141220409667415081.Spec : Prop :=
  ∀ n, P16141220409667415081.a n = A348650 (n + 4)

end A348650

/-!
# A348651: Number of ones in the binary expansion of (n!)!.

The programs for A348651, there is no canonical definition to state claims against.
-/

/-! ## A348651.P13204910314243323548

`A079584(n!)`
-/

namespace A348651.P13204910314243323548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079584 (Nat.factorial n)

end

end A348651.P13204910314243323548

/-! ## A348651.P4768866316344549906

`A079584(A000142(n))`
-/

namespace A348651.P4768866316344549906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079584 (A000142 n).toNat

end

end A348651.P4768866316344549906

/-! ## A348651.P13728042758984595200

`A079584(A033646(n))`
-/

namespace A348651.P13728042758984595200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079584 (A033646 n).toNat

end

end A348651.P13728042758984595200

/-! ## A348651.P104108352415188268

`A079584(A033647(n))`
-/

namespace A348651.P104108352415188268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079584 (A033647 n).toNat

end

end A348651.P104108352415188268

/-!
# A348656: Numbers with record values of the denominator of the harmonic mean of their unitary divisors.

The programs for A348656, there is no canonical definition to state claims against.
-/

/-! ## A348656.P8105204989510192573

`A381098(A323392(n+1))`
-/

namespace A348656.P8105204989510192573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381098 (A323392 (n + 1)).toNat

end

end A348656.P8105204989510192573

/-! ## A348656.P14197281844566674105

`record[and(A027379(2*n), A065279(n+2))]`
-/

namespace A348656.P14197281844566674105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027379 (2 * n)) (A065279 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348656.P14197281844566674105

/-! ## A348656.P13275635238041360109

`record[A322084(n+1)%A123068(2*(n+2))]`
-/

namespace A348656.P13275635238041360109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322084 (n + 1)) (A123068 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348656.P13275635238041360109

/-! ## A348656.P15505378919871245707

`record[A227843(n+1)%A222241(2*(n+2))]`
-/

namespace A348656.P15505378919871245707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227843 (n + 1)) (A222241 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348656.P15505378919871245707

/-!
# A348660: a(n) = Sum_{d|n, d <= sqrt(n)} (-1)^(n/d + 1) * d.

The programs for A348660, there is no canonical definition to state claims against.
-/

/-! ## A348660.P8130150820761943046

`A333782(n+1)-(A348954(n+1)+A333810(n+1))`
-/

namespace A348660.P8130150820761943046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333782 (n + 1) - (A348954 (n + 1) + A333810 (n + 1))

end

end A348660.P8130150820761943046

/-!
# A348662: a(n) = Sum_{m=0..n} (-1)^m * ( Sum_{k=0..m} binomial(n,k) )^2.

The programs for A348662, there is no canonical definition to state claims against.
-/

/-! ## A348662.P39991393097766205

`A178450(A001612(n)^n)`
-/

namespace A348662.P39991393097766205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178450 (A001612 n ^ n).toNat

end

end A348662.P39991393097766205

/-!
# A348663: Number of tree polyominoes with width 3 and height n.

The programs for A348663, there is no canonical definition to state claims against.
-/

/-! ## A348663.P8597200452971605954

`A002264(5*A255613(n))`
-/

namespace A348663.P8597200452971605954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (5 * A255613 n).toNat

end

end A348663.P8597200452971605954

/-!
# A348665: Number of partitions of n into 3 parts whose smallest and middle parts divide n.

The programs for A348665, the canonical program `A348665.P3571881152255844530` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348665 has offset 1).

The definition of A348665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348665.P12116852726419247995

`∑{#}[∑{d}[n+1, 2%#/2], #]`
-/

namespace A348665.P12116852726419247995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ((2 % d : ℕ) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (SequenceMachineLib.roundAway (f1 n) + 1).toNat, k

end

end A348665.P12116852726419247995

namespace A348665

/-- `∑{#}[∑{d}[n+1, 2%#/2], #]` -/
def P12116852726419247995.Spec : Prop :=
  ∀ n, (P12116852726419247995.a n : ℤ) = A348665 (n + 1)

end A348665

/-! ## A348665.P3571881152255844530

`C(A076984(n+1), 2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A348665

/-- `C(A076984(n+1), 2)` -/
def P3571881152255844530.Spec : Prop :=
  ∀ n, (P3571881152255844530.a n : ℤ) = A348665 (n + 1)

theorem P3571881152255844530.correct : P3571881152255844530.Spec := by
  intro n
  simp only [A348665, Nat.add_sub_cancel]

end A348665

/-! ## A348665.P17796784086563841344

`∑{#}[A023645(n+1), #]`
-/

namespace A348665.P17796784086563841344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k

end

end A348665.P17796784086563841344

namespace A348665

/-- `∑{#}[A023645(n+1), #]` -/
def P17796784086563841344.Spec : Prop :=
  ∀ n, (P17796784086563841344.a n : ℤ) = A348665 (n + 1)

end A348665

/-! ## A348665.P3289634242139844122

`C(Δ[A006218(n)]-n%2, 2)`
-/

namespace A348665.P3289634242139844122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n - ((n % 2 : ℕ) : ℤ)).toNat 2

end

end A348665.P3289634242139844122

namespace A348665

/-- `C(Δ[A006218(n)]-n%2, 2)` -/
def P3289634242139844122.Spec : Prop :=
  ∀ n, (P3289634242139844122.a n : ℤ) = A348665 (n + 1)

end A348665

/-! ## A348665.P12649474589252706597

`C(A000005(n+1)-char[Δ[n²]], 2)`
-/

namespace A348665.P12649474589252706597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat 2

end

end A348665.P12649474589252706597

namespace A348665

/-- `C(A000005(n+1)-char[Δ[n²]], 2)` -/
def P12649474589252706597.Spec : Prop :=
  ∀ n, (P12649474589252706597.a n : ℤ) = A348665 (n + 1)

end A348665

/-! ## A348665.P13778319173374355567

`A000217(∏{e}[n+1, #+1]-gcd(2, n+1))`
-/

namespace A348665.P13778319173374355567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) - Nat.gcd 2 (n + 1))

end

end A348665.P13778319173374355567

namespace A348665

/-- `A000217(∏{e}[n+1, #+1]-gcd(2, n+1))` -/
def P13778319173374355567.Spec : Prop :=
  ∀ n, P13778319173374355567.a n = A348665 (n + 1)

end A348665

/-! ## A348665.P5001285189845053402

`A000217(A023645(n+1))`
-/

namespace A348665.P5001285189845053402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A023645 (n + 1)).toNat

end

end A348665.P5001285189845053402

namespace A348665

/-- `A000217(A023645(n+1))` -/
def P5001285189845053402.Spec : Prop :=
  ∀ n, P5001285189845053402.a n = A348665 (n + 1)

end A348665

/-! ## A348665.P4701269652693826145

`A057944(A337363(n+1))`
-/

namespace A348665.P4701269652693826145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (A337363 (n + 1)).toNat

end

end A348665.P4701269652693826145

namespace A348665

/-- `A057944(A337363(n+1))` -/
def P4701269652693826145.Spec : Prop :=
  ∀ n, P4701269652693826145.a n = A348665 (n + 1)

end A348665

/-! ## A348665.P8737757985507890014

`A000217(A062558(n+1)-2)`
-/

namespace A348665.P8737757985507890014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A062558 (n + 1) - 2).toNat

end

end A348665.P8737757985507890014

namespace A348665

/-- `A000217(A062558(n+1)-2)` -/
def P8737757985507890014.Spec : Prop :=
  ∀ n, P8737757985507890014.a n = A348665 (n + 1)

end A348665

/-! ## A348665.P172320646645250842

`A335567(n+1)%A109613(n)`
-/

namespace A348665.P172320646645250842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335567 (n + 1)) (A109613 n)

end

end A348665.P172320646645250842

namespace A348665

/-- `A335567(n+1)%A109613(n)` -/
def P172320646645250842.Spec : Prop :=
  ∀ n, P172320646645250842.a n = A348665 (n + 1)

end A348665

/-! ## A348665.P6686832100342148910

`A023645(n+1)/2*A076984(n+1)`
-/

namespace A348665.P6686832100342148910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023645 (n + 1) : ℚ) / 2 * (A076984 (n + 1) : ℚ)

end

end A348665.P6686832100342148910

namespace A348665

/-- `A023645(n+1)/2*A076984(n+1)` -/
def P6686832100342148910.Spec : Prop :=
  ∀ n, P6686832100342148910.a n = (A348665 (n + 1) : ℚ)

end A348665

/-! ## A348665.P17147435640494323079

`A000217(A000005(n+1)-or(1, n+1)+n)`
-/

namespace A348665.P17147435640494323079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000005 (n + 1) - (Nat.lor 1 (n + 1) : ℤ) + (n : ℤ)).toNat

end

end A348665.P17147435640494323079

namespace A348665

/-- `A000217(A000005(n+1)-or(1, n+1)+n)` -/
def P17147435640494323079.Spec : Prop :=
  ∀ n, P17147435640494323079.a n = A348665 (n + 1)

end A348665

/-! ## A348665.P5900221949687205343

`A000217(A049820(n+1))%A109613(n)`
-/

namespace A348665.P5900221949687205343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A049820 (n + 1)).toNat) (A109613 n)

end

end A348665.P5900221949687205343

namespace A348665

/-- `A000217(A049820(n+1))%A109613(n)` -/
def P5900221949687205343.Spec : Prop :=
  ∀ n, P5900221949687205343.a n = A348665 (n + 1)

end A348665

/-! ## A348665.P6930410030229074567

`A000217(A055212(n+1)+A005087(n+1))`
-/

namespace A348665.P6930410030229074567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A055212 (n + 1) + A005087 (n + 1)).toNat

end

end A348665.P6930410030229074567

namespace A348665

/-- `A000217(A055212(n+1)+A005087(n+1))` -/
def P6930410030229074567.Spec : Prop :=
  ∀ n, P6930410030229074567.a n = A348665 (n + 1)

end A348665

/-! ## A348665.P10852365741098753983

`A000217(A109613(n)-(A049820(n+1)+1))`
-/

namespace A348665.P10852365741098753983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A109613 n - (A049820 (n + 1) + 1)).toNat

end

end A348665.P10852365741098753983

namespace A348665

/-- `A000217(A109613(n)-(A049820(n+1)+1))` -/
def P10852365741098753983.Spec : Prop :=
  ∀ n, P10852365741098753983.a n = A348665 (n + 1)

end A348665

/-! ## A348665.P983998520223555753

`A000217(A338117(2*(n+1))-A000035(n))`
-/

namespace A348665.P983998520223555753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A338117 (2 * (n + 1)) - A000035 n).toNat

end

end A348665.P983998520223555753

namespace A348665

/-- `A000217(A338117(2*(n+1))-A000035(n))` -/
def P983998520223555753.Spec : Prop :=
  ∀ n, P983998520223555753.a n = A348665 (n + 1)

end A348665

/-! ## A348665.P14640196840269495867

`A004526(A023645(n+1)+A023645(n+1)²)`
-/

namespace A348665.P14640196840269495867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A023645 (n + 1) + A023645 (n + 1) ^ 2).toNat

end

end A348665.P14640196840269495867

namespace A348665

/-- `A004526(A023645(n+1)+A023645(n+1)²)` -/
def P14640196840269495867.Spec : Prop :=
  ∀ n, P14640196840269495867.a n = A348665 (n + 1)

end A348665

/-! ## A348665.P12867605154645916865

`A110654(A023645(n+1)+A023645(n+1)²)`
-/

namespace A348665.P12867605154645916865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A023645 (n + 1) + A023645 (n + 1) ^ 2).toNat

end

end A348665.P12867605154645916865

namespace A348665

/-- `A110654(A023645(n+1)+A023645(n+1)²)` -/
def P12867605154645916865.Spec : Prop :=
  ∀ n, P12867605154645916865.a n = A348665 (n + 1)

end A348665

/-! ## A348665.P15846257853951781957

`A110654(A076984(n+1)²-A076984(n+1))`
-/

namespace A348665.P15846257853951781957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A076984 (n + 1) ^ 2 - A076984 (n + 1)).toNat

end

end A348665.P15846257853951781957

namespace A348665

/-- `A110654(A076984(n+1)²-A076984(n+1))` -/
def P15846257853951781957.Spec : Prop :=
  ∀ n, P15846257853951781957.a n = A348665 (n + 1)

end A348665

/-! ## A348665.P14559808929763566309

`A004526((A023645(n+1)+1)*A023645(n+1))`
-/

namespace A348665.P14559808929763566309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((A023645 (n + 1) + 1) * A023645 (n + 1)).toNat

end

end A348665.P14559808929763566309

namespace A348665

/-- `A004526((A023645(n+1)+1)*A023645(n+1))` -/
def P14559808929763566309.Spec : Prop :=
  ∀ n, P14559808929763566309.a n = A348665 (n + 1)

end A348665

/-!
# A348666: a(n) is the number of quiddities of 3-periodic dissections of (n + 2)-gons.

The programs for A348666, there is no canonical definition to state claims against.
-/

/-! ## A348666.P14396106594349334669

`A261585(A059738(n)+6)`
-/

namespace A348666.P14396106594349334669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A059738 n + 6).toNat

end

end A348666.P14396106594349334669

/-! ## A348666.P18160166447311858980

`A008615(5*A227373(n))`
-/

namespace A348666.P18160166447311858980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (5 * A227373 n).toNat

end

end A348666.P18160166447311858980

/-! ## A348666.P434053820425325826

`A002266(Δ[A302287(n)]+6)`
-/

namespace A348666.P434053820425325826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (f1 (n + 1) - f1 n + 6).toNat

end

end A348666.P434053820425325826

/-!
# A348670: Decimal expansion of 10 - Pi^2.

The programs for A348670, there is no canonical definition to state claims against.
-/

/-! ## A348670.P15340244778986006548

`∑[-Δ[A002388(n)]]`
-/

namespace A348670.P15340244778986006548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002388 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348670.P15340244778986006548

/-! ## A348670.P14423771786719536390

`9-A002388(n+1)`
-/

namespace A348670.P14423771786719536390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A002388 (n + 1 + 1)

end

end A348670.P14423771786719536390

/-!
# A348674: Number of distinct values that can be produced by splitting n and adding the parts.

The programs for A348674, there is no canonical definition to state claims against.
-/

/-! ## A348674.P14232129946571793390

`A055642(C(n, A178334(n+1)))`
-/

namespace A348674.P14232129946571793390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Nat.choose n (A178334 (n + 1)).toNat)

end

end A348674.P14232129946571793390

/-! ## A348674.P8207614069544708490

`∑[char[A305701(A242527(n+1)+1)]]`
-/

namespace A348674.P8207614069544708490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305701 (A242527 (n + 1) + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348674.P8207614069544708490

/-! ## A348674.P290861968174685447

`∑[char[A297065(A208510(2*n+1))]]`
-/

namespace A348674.P290861968174685447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297065 (A208510 (2 * n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348674.P290861968174685447

/-!
# A348675: a(n) = Sum_{k=0..n-1} Omega(n^2-k^2).

The programs for A348675, the canonical program `A348675.P1585181289966239300` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348675 has offset 1).

The definition of A348675 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A001222((n+1)²-#²)]` (program `A348675.P1585181289966239300`, by `A348675.P1585181289966239300.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A348675.P1585181289966239300

`∑{#}[n, A001222((n+1)²-#²)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A348675

/-- `∑{#}[n, A001222((n+1)²-#²)]` -/
def P1585181289966239300.Spec : Prop :=
  ∀ n, P1585181289966239300.a n = A348675 (n + 1)

theorem P1585181289966239300.correct : P1585181289966239300.Spec := by
  intro n
  simp only [A348675, Nat.add_sub_cancel]

end A348675

/-! ## A348675.P4451127171625879023

`∑[A069904(Δ[n²])]+n`
-/

namespace A348675.P4451127171625879023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A348675.P4451127171625879023

namespace A348675

/-- `∑[A069904(Δ[n²])]+n` -/
def P4451127171625879023.Spec : Prop :=
  ∀ n, P4451127171625879023.a n = A348675 (n + 1)

end A348675

/-! ## A348675.P10773320862054353111

`A022559(2*(n+1))-1`
-/

namespace A348675.P10773320862054353111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (2 * (n + 1)) - 1

end

end A348675.P10773320862054353111

namespace A348675

/-- `A022559(2*(n+1))-1` -/
def P10773320862054353111.Spec : Prop :=
  ∀ n, P10773320862054353111.a n = A348675 (n + 1)

end A348675

/-! ## A348675.P4795310680121560108

`Δ[∑[A022559(2*n)]-n]`
-/

namespace A348675.P4795310680121560108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348675.P4795310680121560108

namespace A348675

/-- `Δ[∑[A022559(2*n)]-n]` -/
def P4795310680121560108.Spec : Prop :=
  ∀ n, P4795310680121560108.a n = A348675 (n + 1)

end A348675

/-! ## A348675.P1321700197406009926

`∑[A091304(n+1)+A001222(n+1)]+n`
-/

namespace A348675.P1321700197406009926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (n + 1) + A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A348675.P1321700197406009926

namespace A348675

/-- `∑[A091304(n+1)+A001222(n+1)]+n` -/
def P1321700197406009926.Spec : Prop :=
  ∀ n, P1321700197406009926.a n = A348675 (n + 1)

end A348675

/-! ## A348675.P2587386564963806958

`∑[∑{e}[∑[4*n+1], #]]+n`
-/

namespace A348675.P2587386564963806958
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A348675.P2587386564963806958

namespace A348675

/-- `∑[∑{e}[∑[4*n+1], #]]+n` -/
def P2587386564963806958.Spec : Prop :=
  ∀ n, (P2587386564963806958.a n : ℤ) = A348675 (n + 1)

end A348675

/-! ## A348675.P7196440923821998602

`∑[∑{e}[record[(n+3)^gcd(2, n+1)-(n+3)], #]]`
-/

namespace A348675.P7196440923821998602
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ Nat.gcd 2 (n + 1) : ℤ) - (n + 3 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348675.P7196440923821998602

namespace A348675

/-- `∑[∑{e}[record[(n+3)^gcd(2, n+1)-(n+3)], #]]` -/
def P7196440923821998602.Spec : Prop :=
  ∀ n, (P7196440923821998602.a n : ℤ) = A348675 (n + 1)

end A348675

/-! ## A348675.P6170098898594538973

`∑[∑{e}[A280344(n), #]]`
-/

namespace A348675.P6170098898594538973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280344 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348675.P6170098898594538973

namespace A348675

/-- `∑[∑{e}[A280344(n), #]]` -/
def P6170098898594538973.Spec : Prop :=
  ∀ n, (P6170098898594538973.a n : ℤ) = A348675 (n + 1)

end A348675

/-! ## A348675.P12588899999117188472

`A001222((2*n+1)*(n+1))+a(n-1)+1` with `a(0)=0`
-/

namespace A348675.P12588899999117188472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001222 ((2 * n + 1) * (n + 1)) + (a (n - 1) + 1)

end

end A348675.P12588899999117188472

namespace A348675

/-- `A001222((2*n+1)*(n+1))+a(n-1)+1` -/
def P12588899999117188472.Spec : Prop :=
  ∀ n, P12588899999117188472.a n = A348675 (n + 1)

end A348675

/-! ## A348675.P14690117086122598790

`∑[A001222(∑[8*n+2])]-1`
-/

namespace A348675.P14690117086122598790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A348675.P14690117086122598790

namespace A348675

/-- `∑[A001222(∑[8*n+2])]-1` -/
def P14690117086122598790.Spec : Prop :=
  ∀ n, P14690117086122598790.a n = A348675 (n + 1)

end A348675

/-! ## A348675.P4300073688885494601

`∑[A001222(floor((2/acot(n))²)+6*n)]`
-/

namespace A348675.P4300073688885494601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (⌊(2 / SequenceMachineLib.acot (n : ℝ)) ^ 2⌋ + (6 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348675.P4300073688885494601

namespace A348675

/-- `∑[A001222(floor((2/acot(n))²)+6*n)]` -/
def P4300073688885494601.Spec : Prop :=
  ∀ n, P4300073688885494601.a n = A348675 (n + 1)

end A348675

/-!
# A348676: Triangle read by rows, T(n, k) = 2^(n - HammingWeight(k)), for 0 <= k <= n.

The programs for A348676, the canonical program `A348676.P8007674311015286809` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348676 has offset 0).

The definition of A348676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348676.P8007674311015286809

`2^(row(n)-A000120(col(n)))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A348676

/-- `2^(row(n)-A000120(col(n)))` -/
def P8007674311015286809.Spec : Prop :=
  ∀ n, P8007674311015286809.a n = (A348676 n : ℚ)

end A348676

/-! ## A348676.P4371140755340467702

`2^A348687(n)`
-/

namespace A348676.P4371140755340467702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A348687 n : ℤ)

end

end A348676.P4371140755340467702

namespace A348676

/-- `2^A348687(n)` -/
def P4371140755340467702.Spec : Prop :=
  ∀ n, P4371140755340467702.a n = (A348676 n : ℚ)

end A348676

/-! ## A348676.P11501419844339719908

`∏[char[∑[n]]+1]/A117973(n-C(∑[char[∑[n]]], 2))`
-/

namespace A348676.P11501419844339719908
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A117973 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2) : ℚ)

end

end A348676.P11501419844339719908

namespace A348676

/-- `∏[char[∑[n]]+1]/A117973(n-C(∑[char[∑[n]]], 2))` -/
def P11501419844339719908.Spec : Prop :=
  ∀ n, P11501419844339719908.a n = (A348676 n : ℚ)

end A348676

/-! ## A348676.P12101559874106906312

`∏[char[∑[n+1]]+1]/A001316(n-C(∑[char[∑[n]]], 2))`
-/

namespace A348676.P12101559874106906312
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A001316 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2) : ℚ)

end

end A348676.P12101559874106906312

namespace A348676

/-- `∏[char[∑[n+1]]+1]/A001316(n-C(∑[char[∑[n]]], 2))` -/
def P12101559874106906312.Spec : Prop :=
  ∀ n, P12101559874106906312.a n = (A348676 n : ℚ)

end A348676

/-! ## A348676.P5788394043331250088

`A001316(∏[char[∑[n+1]]+1]-(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A348676.P5788394043331250088
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ))).toNat

end

end A348676.P5788394043331250088

namespace A348676

/-- `A001316(∏[char[∑[n+1]]+1]-(1-C(∑[char[∑[n]]], 2)+n))` -/
def P5788394043331250088.Spec : Prop :=
  ∀ n, P5788394043331250088.a n = A348676 n

end A348676

/-! ## A348676.P14960483799394930974

`A000079(A348687(n))`
-/

namespace A348676.P14960483799394930974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A348687 n).toNat

end

end A348676.P14960483799394930974

namespace A348676

/-- `A000079(A348687(n))` -/
def P14960483799394930974.Spec : Prop :=
  ∀ n, P14960483799394930974.a n = A348676 n

end A348676

/-! ## A348676.P8562395583976152732

`A080100(A129143(n+1))`
-/

namespace A348676.P8562395583976152732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A129143 (n + 1)).toNat

end

end A348676.P8562395583976152732

namespace A348676

/-- `A080100(A129143(n+1))` -/
def P8562395583976152732.Spec : Prop :=
  ∀ n, P8562395583976152732.a n = A348676 n

end A348676

/-! ## A348676.P3224499120556718017

`A011782(A348687(n)+1)`
-/

namespace A348676.P3224499120556718017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A348687 n + 1).toNat

end

end A348676.P3224499120556718017

namespace A348676

/-- `A011782(A348687(n)+1)` -/
def P3224499120556718017.Spec : Prop :=
  ∀ n, P3224499120556718017.a n = A348676 n

end A348676

/-! ## A348676.P7768889401082507745

`A131577(A348687(n)+1)`
-/

namespace A348676.P7768889401082507745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A348687 n + 1).toNat

end

end A348676.P7768889401082507745

namespace A348676

/-- `A131577(A348687(n)+1)` -/
def P7768889401082507745.Spec : Prop :=
  ∀ n, P7768889401082507745.a n = A348676 n

end A348676

/-! ## A348676.P2580853758385173886

`A034008(A348687(n)+2)`
-/

namespace A348676.P2580853758385173886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A348687 n + 2).toNat

end

end A348676.P2580853758385173886

namespace A348676

/-- `A034008(A348687(n)+2)` -/
def P2580853758385173886.Spec : Prop :=
  ∀ n, P2580853758385173886.a n = A348676 n

end A348676

/-!
# A348677: a(n) is the difference between A262275(n) and the next lower prime.

The programs for A348677, the canonical program `A348677.P12041509539647670039` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348677 has offset 1).

The definition of A348677 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348677.P12041509539647670039

`A001223(A000720(A262275(n+1))-1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A348677

/-- `A001223(A000720(A262275(n+1))-1)` -/
def P12041509539647670039.Spec : Prop :=
  ∀ n, P12041509539647670039.a n = A348677 (n + 1)

theorem P12041509539647670039.correct : P12041509539647670039.Spec := by
  intro n
  simp only [A348677, Nat.add_sub_cancel]

end A348677

/-! ## A348677.P15940745648326266379

`A262275(n+1)-A358274(n+1)`
-/

namespace A348677.P15940745648326266379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262275 (n + 1) - A358274 (n + 1)

end

end A348677.P15940745648326266379

namespace A348677

/-- `A262275(n+1)-A358274(n+1)` -/
def P15940745648326266379.Spec : Prop :=
  ∀ n, P15940745648326266379.a n = A348677 (n + 1)

theorem P15940745648326266379.correct : P15940745648326266379.Spec := by
  intro n
  simp only [A348677, Nat.add_sub_cancel, A348677.P15940745648326266379.a, A348677.P12041509539647670039.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001223, A001223.P5034056745985311719.a, A262275, A262275.P16352779062524655968.a, A358274, A358274.P17704842436153696573.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006450, A006450.P16445646407241112379.a, A121543, A121543.P10944832784654695596.f1, A121543.P10944832784654695596.f2, A121543.P10944832784654695596.a, A049084, A049084.P10934933317972537770.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A348677

/-! ## A348677.P311513381695428209

`A001223(A333242(n+1)-1)`
-/

namespace A348677.P311513381695428209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A333242 (n + 1) - 1).toNat

end

end A348677.P311513381695428209

namespace A348677

/-- `A001223(A333242(n+1)-1)` -/
def P311513381695428209.Spec : Prop :=
  ∀ n, P311513381695428209.a n = A348677 (n + 1)

end A348677

/-! ## A348677.P6655302976862626404

`A001223(A000010(A333242(n+1)))`
-/

namespace A348677.P6655302976862626404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000010 (A333242 (n + 1)).toNat).toNat

end

end A348677.P6655302976862626404

namespace A348677

/-- `A001223(A000010(A333242(n+1)))` -/
def P6655302976862626404.Spec : Prop :=
  ∀ n, P6655302976862626404.a n = A348677 (n + 1)

end A348677

/-! ## A348677.P15964105414024096979

`A109578(A333242(n+1)-1)`
-/

namespace A348677.P15964105414024096979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109578 (A333242 (n + 1) - 1).toNat

end

end A348677.P15964105414024096979

namespace A348677

/-- `A109578(A333242(n+1)-1)` -/
def P15964105414024096979.Spec : Prop :=
  ∀ n, P15964105414024096979.a n = A348677 (n + 1)

end A348677

/-! ## A348677.P13940386570410137566

`A262275(n+1)-A333242(A333242(n+1)-(n+1))`
-/

namespace A348677.P13940386570410137566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262275 (n + 1) - A333242 (A333242 (n + 1) - (n + 1 : ℤ)).toNat

end

end A348677.P13940386570410137566

namespace A348677

/-- `A262275(n+1)-A333242(A333242(n+1)-(n+1))` -/
def P13940386570410137566.Spec : Prop :=
  ∀ n, P13940386570410137566.a n = A348677 (n + 1)

end A348677

/-! ## A348677.P2767361545961309027

`A054541(A333242(n+1))`
-/

namespace A348677.P2767361545961309027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A333242 (n + 1)).toNat

end

end A348677.P2767361545961309027

namespace A348677

/-- `A054541(A333242(n+1))` -/
def P2767361545961309027.Spec : Prop :=
  ∀ n, P2767361545961309027.a n = A348677 (n + 1)

end A348677

/-! ## A348677.P4271270723162741921

`A001223(A000720(A358274(n+1)))`
-/

namespace A348677.P4271270723162741921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000720 (A358274 (n + 1)).toNat).toNat

end

end A348677.P4271270723162741921

namespace A348677

/-- `A001223(A000720(A358274(n+1)))` -/
def P4271270723162741921.Spec : Prop :=
  ∀ n, P4271270723162741921.a n = A348677 (n + 1)

end A348677

/-! ## A348677.P14755532606779606390

`A001223(A000720(A151799(A262275(n+1))))`
-/

namespace A348677.P14755532606779606390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000720 (A151799 (A262275 (n + 1)).toNat).toNat).toNat

end

end A348677.P14755532606779606390

namespace A348677

/-- `A001223(A000720(A151799(A262275(n+1))))` -/
def P14755532606779606390.Spec : Prop :=
  ∀ n, P14755532606779606390.a n = A348677 (n + 1)

end A348677

/-! ## A348677.P8369282997465940522

`A175851(A262275(n+1)-1)`
-/

namespace A348677.P8369282997465940522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A262275 (n + 1) - 1).toNat

end

end A348677.P8369282997465940522

namespace A348677

/-- `A175851(A262275(n+1)-1)` -/
def P8369282997465940522.Spec : Prop :=
  ∀ n, P8369282997465940522.a n = A348677 (n + 1)

end A348677

/-! ## A348677.P12214436621721464812

`A175851(xor(1, A262275(n+1)))`
-/

namespace A348677.P12214436621721464812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (Int.xor 1 (A262275 (n + 1))).toNat

end

end A348677.P12214436621721464812

namespace A348677

/-- `A175851(xor(1, A262275(n+1)))` -/
def P12214436621721464812.Spec : Prop :=
  ∀ n, P12214436621721464812.a n = A348677 (n + 1)

end A348677

/-! ## A348677.P8670406265794115437

`A096501(A262275(n+1))`
-/

namespace A348677.P8670406265794115437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A262275 (n + 1)).toNat

end

end A348677.P8670406265794115437

namespace A348677

/-- `A096501(A262275(n+1))` -/
def P8670406265794115437.Spec : Prop :=
  ∀ n, P8670406265794115437.a n = A348677 (n + 1)

end A348677

/-! ## A348677.P9571051929635975641

`A049711(A262275(n+1))`
-/

namespace A348677.P9571051929635975641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A262275 (n + 1)).toNat

end

end A348677.P9571051929635975641

namespace A348677

/-- `A049711(A262275(n+1))` -/
def P9571051929635975641.Spec : Prop :=
  ∀ n, P9571051929635975641.a n = A348677 (n + 1)

end A348677

/-! ## A348677.P14264604438098643406

`A013632(A358274(n+1))`
-/

namespace A348677.P14264604438098643406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A358274 (n + 1)).toNat

end

end A348677.P14264604438098643406

namespace A348677

/-- `A013632(A358274(n+1))` -/
def P14264604438098643406.Spec : Prop :=
  ∀ n, P14264604438098643406.a n = A348677 (n + 1)

end A348677

/-! ## A348677.P12653279759537363775

`A096501(A000720(A333243(n+1)))`
-/

namespace A348677.P12653279759537363775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A000720 (A333243 (n + 1)).toNat).toNat

end

end A348677.P12653279759537363775

namespace A348677

/-- `A096501(A000720(A333243(n+1)))` -/
def P12653279759537363775.Spec : Prop :=
  ∀ n, P12653279759537363775.a n = A348677 (n + 1)

end A348677

/-!
# A348678: Triangle read by rows, T(n, k) = denominator([x^k] M(n, x)) where M(n,x) are the Mandelbrot-Larsen polynomials defined in A347928.

The programs for A348678, there is no canonical definition to state claims against.
-/

/-! ## A348678.P12852563920110133279

`gcd(16, A120236(A013611(n)))`
-/

namespace A348678.P12852563920110133279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 16 (A120236 (A013611 n).toNat)

end

end A348678.P12852563920110133279

/-! ## A348678.P17206773754853566882

`A161175(n+1)^A001221(A121265(n))`
-/

namespace A348678.P17206773754853566882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161175 (n + 1) : ℚ) ^ (A001221 (A121265 (n + 10)).toNat : ℤ)

end

end A348678.P17206773754853566882

/-! ## A348678.P12739949316398678885

`A278973(A034386(n)%A210587(n+2))`
-/

namespace A348678.P12739949316398678885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278973 (Int.tmod (A034386 n) (A210587 (n + 2))).toNat

end

end A348678.P12739949316398678885

/-! ## A348678.P10032050612155987412

`gcd(A277748(A277749(n+1)), A322230(n))`
-/

namespace A348678.P10032050612155987412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A277748 (A277749 (n + 1)).toNat) (A322230 n)

end

end A348678.P10032050612155987412

/-!
# A348679: Triangle read by rows, T(n, k) = numerator([x^k] M(n, x)) where M(n,x) are the Mandelbrot-Larsen polynomials defined in A347928.

The programs for A348679, there is no canonical definition to state claims against.
-/

/-! ## A348679.P9532817666855549208

`A347928(n)/gcd(A011782(n), A347928(n))`
-/

namespace A348679.P9532817666855549208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347928 n : ℚ) / (Int.gcd (A011782 n) (A347928 n) : ℚ)

end

end A348679.P9532817666855549208

/-! ## A348679.P17245277540385211517

`lcm(A016116(n), A347928(n))/A016116(n)`
-/

namespace A348679.P17245277540385211517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A016116 n) (A347928 n) : ℚ) / (A016116 n : ℚ)

end

end A348679.P17245277540385211517

/-! ## A348679.P14249371305902780951

`A030101(A030101(A347928(n)))`
-/

namespace A348679.P14249371305902780951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030101 (A347928 n).toNat).toNat

end

end A348679.P14249371305902780951

/-! ## A348679.P9755295487061692944

`A331804(A347928(n)*A348678(n))`
-/

namespace A348679.P9755295487061692944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331804 (A347928 n * A348678 n).toNat

end

end A348679.P9755295487061692944

/-! ## A348679.P16119965244378038270

`A331804(lcm(A016116(n), A347928(n)))`
-/

namespace A348679.P16119965244378038270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331804 (Int.lcm (A016116 n) (A347928 n))

end

end A348679.P16119965244378038270

/-!
# A348684: Triangle read by rows, T(n, k) = 2*n - HammingWeight(k), for 0 <= k <= n.

The programs for A348684, the canonical program `A348684.P12169976630315914591` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348684 has offset 0).

The definition of A348684 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*row(n)-A000120(col(n))` (program `A348684.P12169976630315914591`, by `A348684.P12169976630315914591.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A348684.P12169976630315914591

`2*row(n)-A000120(col(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A348684

/-- `2*row(n)-A000120(col(n))` -/
def P12169976630315914591.Spec : Prop :=
  ∀ n, P12169976630315914591.a n = A348684 n

theorem P12169976630315914591.correct : P12169976630315914591.Spec := by
  intro n
  simp only [A348684]

end A348684

/-! ## A348684.P16249120931068452416

`A348687(n)+row(n)`
-/

namespace A348684.P16249120931068452416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348687 n + (SequenceMachineLib.triRow n : ℤ)

end

end A348684.P16249120931068452416

namespace A348684

/-- `A348687(n)+row(n)` -/
def P16249120931068452416.Spec : Prop :=
  ∀ n, P16249120931068452416.a n = A348684 n

theorem P16249120931068452416.correct : P16249120931068452416.Spec := by
  intro n
  simp only [A348684, Nat.add_sub_cancel, A348684.P16249120931068452416.a, A348684.P12169976630315914591.a, A000120, A000120.P2816527436160941581.a, A348687, A348687.P4022831136540431270.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348684

/-! ## A348684.P9150095797393865989

`row(n)+log2(A348676(n))`
-/

namespace A348684.P9150095797393865989
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℝ) + Real.logb 2 (A348676 n : ℝ)

end

end A348684.P9150095797393865989

namespace A348684

/-- `row(n)+log2(A348676(n))` -/
def P9150095797393865989.Spec : Prop :=
  ∀ n, P9150095797393865989.a n = (A348684 n : ℝ)

end A348684

/-! ## A348684.P9467505442944364562

`∑[2*char[∑[n]]]-1-A000120(2*(n-C(∑[char[∑[n]]], 2))+1)`
-/

namespace A348684.P9467505442944364562
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - A000120 (2 * ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)) + 1).toNat

end

end A348684.P9467505442944364562

namespace A348684

/-- `∑[2*char[∑[n]]]-1-A000120(2*(n-C(∑[char[∑[n]]], 2))+1)` -/
def P9467505442944364562.Spec : Prop :=
  ∀ n, P9467505442944364562.a n = A348684 n

end A348684

/-! ## A348684.P925196743826417381

`A003056(n)+log2(A348676(n))`
-/

namespace A348684.P925196743826417381
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A003056 n : ℝ) + Real.logb 2 (A348676 n : ℝ)

end

end A348684.P925196743826417381

namespace A348684

/-- `A003056(n)+log2(A348676(n))` -/
def P925196743826417381.Spec : Prop :=
  ∀ n, P925196743826417381.a n = (A348684 n : ℝ)

end A348684

/-! ## A348684.P16601825808985099942

`log2(A137688(n)*A348676(n))`
-/

namespace A348684.P16601825808985099942
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A137688 n * A348676 n : ℝ)

end

end A348684.P16601825808985099942

namespace A348684

/-- `log2(A137688(n)*A348676(n))` -/
def P16601825808985099942.Spec : Prop :=
  ∀ n, P16601825808985099942.a n = (A348684 n : ℝ)

end A348684

/-! ## A348684.P6617312274386175621

`log2(A140513(n)*A348676(n))-1`
-/

namespace A348684.P6617312274386175621
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A140513 n * A348676 n : ℝ) - 1

end

end A348684.P6617312274386175621

namespace A348684

/-- `log2(A140513(n)*A348676(n))-1` -/
def P6617312274386175621.Spec : Prop :=
  ∀ n, P6617312274386175621.a n = (A348684 n : ℝ)

end A348684

/-! ## A348684.P1147632441331896601

`A003057(n+2)+A348687(n)-2`
-/

namespace A348684.P1147632441331896601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) + (A348687 n - 2)

end

end A348684.P1147632441331896601

namespace A348684

/-- `A003057(n+2)+A348687(n)-2` -/
def P1147632441331896601.Spec : Prop :=
  ∀ n, P1147632441331896601.a n = A348684 n

end A348684

/-! ## A348684.P12660474875373357367

`A014132(n+1)+A348687(n)-(n+2)`
-/

namespace A348684.P12660474875373357367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) + (A348687 n - (n + 2 : ℤ))

end

end A348684.P12660474875373357367

namespace A348684

/-- `A014132(n+1)+A348687(n)-(n+2)` -/
def P12660474875373357367.Spec : Prop :=
  ∀ n, P12660474875373357367.a n = A348684 n

end A348684

/-! ## A348684.P13791682158834749102

`2*A003056(n)-A000120(A002262(n))`
-/

namespace A348684.P13791682158834749102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003056 n - A000120 (A002262 n).toNat

end

end A348684.P13791682158834749102

namespace A348684

/-- `2*A003056(n)-A000120(A002262(n))` -/
def P13791682158834749102.Spec : Prop :=
  ∀ n, P13791682158834749102.a n = A348684 n

end A348684

/-!
# A348685: Triangle read by rows, T(n, k) = 2^(2*n - HammingWeight(k)), for 0 <= k <= n.

The programs for A348685, the canonical program `A348685.P3101043904728789932` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348685 has offset 0).

The definition of A348685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348685.P3101043904728789932

`2^(2*row(n)-A000120(col(n)))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A348685

/-- `2^(2*row(n)-A000120(col(n)))` -/
def P3101043904728789932.Spec : Prop :=
  ∀ n, P3101043904728789932.a n = (A348685 n : ℚ)

end A348685

/-! ## A348685.P17174244229663692085

`2^A348684(n)`
-/

namespace A348685.P17174244229663692085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A348684 n : ℤ)

end

end A348685.P17174244229663692085

namespace A348685

/-- `2^A348684(n)` -/
def P17174244229663692085.Spec : Prop :=
  ∀ n, P17174244229663692085.a n = (A348685 n : ℚ)

end A348685

/-! ## A348685.P10415059798296323857

`∏[char[∑[n+1]]+1]*A348676(n)`
-/

namespace A348685.P10415059798296323857
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A348676 n

end

end A348685.P10415059798296323857

namespace A348685

/-- `∏[char[∑[n+1]]+1]*A348676(n)` -/
def P10415059798296323857.Spec : Prop :=
  ∀ n, P10415059798296323857.a n = A348685 n

end A348685

/-! ## A348685.P2134844120271739520

`2^(A348687(n)+∑[char[∑[n+1]]])`
-/

namespace A348685.P2134844120271739520
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A348687 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A348685.P2134844120271739520

namespace A348685

/-- `2^(A348687(n)+∑[char[∑[n+1]]])` -/
def P2134844120271739520.Spec : Prop :=
  ∀ n, P2134844120271739520.a n = (A348685 n : ℚ)

end A348685

/-! ## A348685.P2320861642653410943

`A000079(A348684(n))`
-/

namespace A348685.P2320861642653410943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A348684 n).toNat

end

end A348685.P2320861642653410943

namespace A348685

/-- `A000079(A348684(n))` -/
def P2320861642653410943.Spec : Prop :=
  ∀ n, P2320861642653410943.a n = A348685 n

end A348685

/-!
# A348687: Triangle read by rows, T(n, k) = n - HammingWeight(k), for 0 <= k <= n.

The programs for A348687, the canonical program `A348687.P4022831136540431270` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348687 has offset 0).

The definition of A348687 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)-A000120(col(n))` (program `A348687.P4022831136540431270`, by `A348687.P4022831136540431270.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A348687.P4022831136540431270

`row(n)-A000120(col(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A348687

/-- `row(n)-A000120(col(n))` -/
def P4022831136540431270.Spec : Prop :=
  ∀ n, P4022831136540431270.a n = A348687 n

theorem P4022831136540431270.correct : P4022831136540431270.Spec := by
  intro n
  simp only [A348687]

end A348687

/-! ## A348687.P2596053162173066695

`row(n)-∑{e}[A019565(col(n)), #]`
-/

namespace A348687.P2596053162173066695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.triCol n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A348687.P2596053162173066695

namespace A348687

/-- `row(n)-∑{e}[A019565(col(n)), #]` -/
def P2596053162173066695.Spec : Prop :=
  ∀ n, P2596053162173066695.a n = A348687 n

end A348687

/-! ## A348687.P16274462925811505191

`∑[char[∑[n+1]]]-A000120(n-C(∑[char[∑[n]]], 2))`
-/

namespace A348687.P16274462925811505191
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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000120 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2)

end

end A348687.P16274462925811505191

namespace A348687

/-- `∑[char[∑[n+1]]]-A000120(n-C(∑[char[∑[n]]], 2))` -/
def P16274462925811505191.Spec : Prop :=
  ∀ n, P16274462925811505191.a n = A348687 n

end A348687

/-! ## A348687.P940511886273969148

`A023416(∏[char[∑[n+1]]+1]+n-C(∑[char[∑[n]]], 2))`
-/

namespace A348687.P940511886273969148
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))).toNat

end

end A348687.P940511886273969148

namespace A348687

/-- `A023416(∏[char[∑[n+1]]+1]+n-C(∑[char[∑[n]]], 2))` -/
def P940511886273969148.Spec : Prop :=
  ∀ n, P940511886273969148.a n = A348687 n

end A348687

/-! ## A348687.P146337859496339767

`∑[char[∑[n+1]]]-A318655(2^(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A348687.P146337859496339767
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

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A318655 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) : ℤ))).toNat

end

end A348687.P146337859496339767

namespace A348687

/-- `∑[char[∑[n+1]]]-A318655(2^(n-C(∑[char[∑[n]]], 2)))` -/
def P146337859496339767.Spec : Prop :=
  ∀ n, P146337859496339767.a n = A348687 n

end A348687

/-! ## A348687.P10993225449698129494

`A005187(n-C(∑[char[∑[n]]], 2))+∑[2*n]%comp[∑[n]]-n`
-/

namespace A348687.P10993225449698129494
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) + ((((∑ j ∈ Finset.range (n + 1), f4 j) % SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n : ℕ) : ℤ) - (n : ℤ))

end

end A348687.P10993225449698129494

namespace A348687

/-- `A005187(n-C(∑[char[∑[n]]], 2))+∑[2*n]%comp[∑[n]]-n` -/
def P10993225449698129494.Spec : Prop :=
  ∀ n, P10993225449698129494.a n = A348687 n

end A348687

/-! ## A348687.P7183872689393084331

`A011371(n-C(∑[char[∑[n]]], 2))+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A348687.P7183872689393084331
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
  A011371 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A348687.P7183872689393084331

namespace A348687

/-- `A011371(n-C(∑[char[∑[n]]], 2))+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P7183872689393084331.Spec : Prop :=
  ∀ n, P7183872689393084331.a n = A348687 n

end A348687

/-! ## A348687.P12344961359895377700

`A317946(2^(n-C(∑[char[∑[n]]], 2)))+C(comp[∑[n]]-n, 2)-(n+1)`
-/

namespace A348687.P12344961359895377700
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
  A317946 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A348687.P12344961359895377700

namespace A348687

/-- `A317946(2^(n-C(∑[char[∑[n]]], 2)))+C(comp[∑[n]]-n, 2)-(n+1)` -/
def P12344961359895377700.Spec : Prop :=
  ∀ n, P12344961359895377700.a n = A348687 n

end A348687

/-! ## A348687.P14611786906974772769

`A023416(A129143(n+1))`
-/

namespace A348687.P14611786906974772769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A129143 (n + 1)).toNat

end

end A348687.P14611786906974772769

namespace A348687

/-- `A023416(A129143(n+1))` -/
def P14611786906974772769.Spec : Prop :=
  ∀ n, P14611786906974772769.a n = A348687 n

end A348687

/-! ## A348687.P9410449511445591591

`A025581(n)+val(A233543(n), 2)`
-/

namespace A348687.P9410449511445591591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (SequenceMachineLib.valuation (A233543 n).toNat 2 : ℤ)

end

end A348687.P9410449511445591591

namespace A348687

/-- `A025581(n)+val(A233543(n), 2)` -/
def P9410449511445591591.Spec : Prop :=
  ∀ n, P9410449511445591591.a n = A348687 n

end A348687

/-!
# A348688: a(n) = sigma(n) + sigma(n+1) + sigma(n+2) - sigma(n+3), where sigma is the sum of divisors.

The programs for A348688, the canonical program `A348688.P16272872754842661944` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348688 has offset 1).

The definition of A348688 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)+A000203(n+2)+A000203(n+3)-A000203(n+4)` (program `A348688.P16272872754842661944`, by `A348688.P16272872754842661944.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A348688.P16272872754842661944

`A000203(n+1)+A000203(n+2)+A000203(n+3)-A000203(n+4)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A348688

/-- `A000203(n+1)+A000203(n+2)+A000203(n+3)-A000203(n+4)` -/
def P16272872754842661944.Spec : Prop :=
  ∀ n, P16272872754842661944.a n = A348688 (n + 1)

theorem P16272872754842661944.correct : P16272872754842661944.Spec := by
  intro n
  simp only [A348688, Nat.add_sub_cancel]

end A348688

/-! ## A348688.P17626449757133993604

`A348689(n+2)+∑{d}[n+1, #]`
-/

namespace A348688.P17626449757133993604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348689 (n + 2) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A348688.P17626449757133993604

namespace A348688

/-- `A348689(n+2)+∑{d}[n+1, #]` -/
def P17626449757133993604.Spec : Prop :=
  ∀ n, P17626449757133993604.a n = A348688 (n + 1)

theorem P17626449757133993604.correct : P17626449757133993604.Spec := by
  intro n
  simp only [A348688, Nat.add_sub_cancel, A348688.P17626449757133993604.f1, A348688.P17626449757133993604.a, A348688.P16272872754842661944.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A348689, A348689.P12370375901714539931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348688

/-! ## A348688.P3335815958123957525

`A348689(n+2)+A000203(n+1)`
-/

namespace A348688.P3335815958123957525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348689 (n + 2) + A000203 (n + 1)

end

end A348688.P3335815958123957525

namespace A348688

/-- `A348689(n+2)+A000203(n+1)` -/
def P3335815958123957525.Spec : Prop :=
  ∀ n, P3335815958123957525.a n = A348688 (n + 1)

theorem P3335815958123957525.correct : P3335815958123957525.Spec := by
  intro n
  simp only [A348688, Nat.add_sub_cancel, A348688.P3335815958123957525.a, A348688.P16272872754842661944.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A348689, A348689.P12370375901714539931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348688

/-! ## A348688.P13752293633192766110

`A348689(n+2)+A245092(2*n+1)`
-/

namespace A348688.P13752293633192766110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348689 (n + 2) + A245092 (2 * n + 1)

end

end A348688.P13752293633192766110

namespace A348688

/-- `A348689(n+2)+A245092(2*n+1)` -/
def P13752293633192766110.Spec : Prop :=
  ∀ n, P13752293633192766110.a n = A348688 (n + 1)

end A348688

/-! ## A348688.P9697120966274253830

`A092403(n+1)-A053222(n+3)`
-/

namespace A348688.P9697120966274253830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092403 (n + 1) - A053222 (n + 3)

end

end A348688.P9697120966274253830

namespace A348688

/-- `A092403(n+1)-A053222(n+3)` -/
def P9697120966274253830.Spec : Prop :=
  ∀ n, P9697120966274253830.a n = A348688 (n + 1)

theorem P9697120966274253830.correct : P9697120966274253830.Spec := by
  intro n
  simp only [A348688, Nat.add_sub_cancel, A348688.P9697120966274253830.a, A348688.P16272872754842661944.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A053222, A053222.P10935068220858784370.a, A092403, A092403.P9702063797173032194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348688

/-! ## A348688.P14711971497797252220

`A074400(n+1)-Δ[Δ[A092403(n+1)]]`
-/

namespace A348688.P14711971497797252220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092403 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) - (f1 (n + 1) - f1 n)

end

end A348688.P14711971497797252220

namespace A348688

/-- `A074400(n+1)-Δ[Δ[A092403(n+1)]]` -/
def P14711971497797252220.Spec : Prop :=
  ∀ n, P14711971497797252220.a n = A348688 (n + 1)

theorem P14711971497797252220.correct : P14711971497797252220.Spec := by
  intro n
  simp only [A348688, Nat.add_sub_cancel, A348688.P14711971497797252220.f2, A348688.P14711971497797252220.f1, A348688.P14711971497797252220.a, A348688.P16272872754842661944.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, A092403, A092403.P9702063797173032194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348688

/-! ## A348688.P7547605929777639327

`A092403(n+1)-Δ[A245092(2*n+5)]`
-/

namespace A348688.P7547605929777639327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092403 (n + 1) - (f1 (n + 1) - f1 n)

end

end A348688.P7547605929777639327

namespace A348688

/-- `A092403(n+1)-Δ[A245092(2*n+5)]` -/
def P7547605929777639327.Spec : Prop :=
  ∀ n, P7547605929777639327.a n = A348688 (n + 1)

end A348688

/-! ## A348688.P14672633350733041594

`A160664(n+4)-(A160664(n)+A074400(n+4))`
-/

namespace A348688.P14672633350733041594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (n + 4) - (A160664 n + A074400 (n + 4))

end

end A348688.P14672633350733041594

namespace A348688

/-- `A160664(n+4)-(A160664(n)+A074400(n+4))` -/
def P14672633350733041594.Spec : Prop :=
  ∀ n, P14672633350733041594.a n = A348688 (n + 1)

end A348688

/-! ## A348688.P10532498361978784026

`A348689(n+2)+A000720(A067161(n+1))`
-/

namespace A348688.P10532498361978784026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348689 (n + 2) + A000720 (A067161 (n + 1)).toNat

end

end A348688.P10532498361978784026

namespace A348688

/-- `A348689(n+2)+A000720(A067161(n+1))` -/
def P10532498361978784026.Spec : Prop :=
  ∀ n, P10532498361978784026.a n = A348688 (n + 1)

end A348688

/-!
# A348689: a(n) = sigma(n) + sigma(n+1) - sigma(n+2), where sigma is the sum of divisors.

The programs for A348689, the canonical program `A348689.P12370375901714539931` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348689 has offset 1).

The definition of A348689 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)+A000203(n+2)-A000203(n+3)` (program `A348689.P12370375901714539931`, by `A348689.P12370375901714539931.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A348689.P12370375901714539931

`A000203(n+1)+A000203(n+2)-A000203(n+3)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A348689

/-- `A000203(n+1)+A000203(n+2)-A000203(n+3)` -/
def P12370375901714539931.Spec : Prop :=
  ∀ n, P12370375901714539931.a n = A348689 (n + 1)

theorem P12370375901714539931.correct : P12370375901714539931.Spec := by
  intro n
  simp only [A348689, Nat.add_sub_cancel]

end A348689

/-! ## A348689.P5432048005021015589

`∑{d}[n+1, #]-Δ[A000203(n+2)]`
-/

namespace A348689.P5432048005021015589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A348689.P5432048005021015589

namespace A348689

/-- `∑{d}[n+1, #]-Δ[A000203(n+2)]` -/
def P5432048005021015589.Spec : Prop :=
  ∀ n, P5432048005021015589.a n = A348689 (n + 1)

theorem P5432048005021015589.correct : P5432048005021015589.Spec := by
  intro n
  simp only [A348689, Nat.add_sub_cancel, A348689.P5432048005021015589.f1, A348689.P5432048005021015589.f2, A348689.P5432048005021015589.a, A348689.P12370375901714539931.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348689

/-! ## A348689.P458289713267582867

`Δ[A160664(n)-A000203(n+2)]`
-/

namespace A348689.P458289713267582867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n - A000203 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348689.P458289713267582867

namespace A348689

/-- `Δ[A160664(n)-A000203(n+2)]` -/
def P458289713267582867.Spec : Prop :=
  ∀ n, P458289713267582867.a n = A348689 (n + 1)

end A348689

/-! ## A348689.P7769042846059727607

`A092403(n+1)-A000203(n+3)`
-/

namespace A348689.P7769042846059727607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092403 (n + 1) - A000203 (n + 3)

end

end A348689.P7769042846059727607

namespace A348689

/-- `A092403(n+1)-A000203(n+3)` -/
def P7769042846059727607.Spec : Prop :=
  ∀ n, P7769042846059727607.a n = A348689 (n + 1)

end A348689

/-! ## A348689.P7766803433181317430

`A000203(n+1)-Δ[A000203(n+2)]`
-/

namespace A348689.P7766803433181317430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (f1 (n + 1) - f1 n)

end

end A348689.P7766803433181317430

namespace A348689

/-- `A000203(n+1)-Δ[A000203(n+2)]` -/
def P7766803433181317430.Spec : Prop :=
  ∀ n, P7766803433181317430.a n = A348689 (n + 1)

theorem P7766803433181317430.correct : P7766803433181317430.Spec := by
  intro n
  simp only [A348689, Nat.add_sub_cancel, A348689.P7766803433181317430.f1, A348689.P7766803433181317430.a, A348689.P12370375901714539931.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A348689

/-! ## A348689.P17880286723474921670

`A088580(n+1)-Δ[A155085(n+2)]`
-/

namespace A348689.P17880286723474921670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (f1 (n + 1) - f1 n)

end

end A348689.P17880286723474921670

namespace A348689

/-- `A088580(n+1)-Δ[A155085(n+2)]` -/
def P17880286723474921670.Spec : Prop :=
  ∀ n, P17880286723474921670.a n = A348689 (n + 1)

theorem P17880286723474921670.correct : P17880286723474921670.Spec := by
  intro n
  simp only [A348689, Nat.add_sub_cancel, A348689.P17880286723474921670.f1, A348689.P17880286723474921670.a, A348689.P12370375901714539931.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348689

/-! ## A348689.P8924577463982045339

`A000203(n+1)-A053222(n+2)`
-/

namespace A348689.P8924577463982045339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A053222 (n + 2)

end

end A348689.P8924577463982045339

namespace A348689

/-- `A000203(n+1)-A053222(n+2)` -/
def P8924577463982045339.Spec : Prop :=
  ∀ n, P8924577463982045339.a n = A348689 (n + 1)

theorem P8924577463982045339.correct : P8924577463982045339.Spec := by
  intro n
  simp only [A348689, Nat.add_sub_cancel, A348689.P8924577463982045339.a, A348689.P12370375901714539931.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A053222, A053222.P10935068220858784370.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348689

/-! ## A348689.P14093218715187871128

`A039653(n+1)-A053246(n+2)`
-/

namespace A348689.P14093218715187871128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) - A053246 (n + 2)

end

end A348689.P14093218715187871128

namespace A348689

/-- `A039653(n+1)-A053246(n+2)` -/
def P14093218715187871128.Spec : Prop :=
  ∀ n, P14093218715187871128.a n = A348689 (n + 1)

end A348689

/-! ## A348689.P7525945611807655894

`A039653(n+1)+1-A053222(n+2)`
-/

namespace A348689.P7525945611807655894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + (1 - A053222 (n + 2))

end

end A348689.P7525945611807655894

namespace A348689

/-- `A039653(n+1)+1-A053222(n+2)` -/
def P7525945611807655894.Spec : Prop :=
  ∀ n, P7525945611807655894.a n = A348689 (n + 1)

end A348689

/-! ## A348689.P5724876646954003065

`∑{d}[n+1, #]-A340793(n+3)`
-/

namespace A348689.P5724876646954003065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A340793 (n + 3)

end

end A348689.P5724876646954003065

namespace A348689

/-- `∑{d}[n+1, #]-A340793(n+3)` -/
def P5724876646954003065.Spec : Prop :=
  ∀ n, P5724876646954003065.a n = A348689 (n + 1)

theorem P5724876646954003065.correct : P5724876646954003065.Spec := by
  intro n
  simp only [A348689, Nat.add_sub_cancel, A348689.P5724876646954003065.f1, A348689.P5724876646954003065.a, A348689.P12370375901714539931.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A340793, A340793.P1700930985006359286.f1, A340793.P1700930985006359286.f2, A340793.P1700930985006359286.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348689

/-! ## A348689.P283638681605756086

`∑{d}[n+1, #]-Δ[A039653(n+2)]`
-/

namespace A348689.P283638681605756086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A348689.P283638681605756086

namespace A348689

/-- `∑{d}[n+1, #]-Δ[A039653(n+2)]` -/
def P283638681605756086.Spec : Prop :=
  ∀ n, P283638681605756086.a n = A348689 (n + 1)

end A348689

/-! ## A348689.P6646122864342303548

`∑{d}[n+1, #]-Δ[A245092(2*n+3)]`
-/

namespace A348689.P6646122864342303548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A348689.P6646122864342303548

namespace A348689

/-- `∑{d}[n+1, #]-Δ[A245092(2*n+3)]` -/
def P6646122864342303548.Spec : Prop :=
  ∀ n, P6646122864342303548.a n = A348689 (n + 1)

end A348689

/-! ## A348689.P10652095611992465903

`Δ[A160664(n)-A039653(n+2)]`
-/

namespace A348689.P10652095611992465903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n - A039653 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348689.P10652095611992465903

namespace A348689

/-- `Δ[A160664(n)-A039653(n+2)]` -/
def P10652095611992465903.Spec : Prop :=
  ∀ n, P10652095611992465903.a n = A348689 (n + 1)

end A348689

/-! ## A348689.P16762791444114476773

`Δ[A160664(n)-A088580(n+2)]`
-/

namespace A348689.P16762791444114476773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n - A088580 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348689.P16762791444114476773

namespace A348689

/-- `Δ[A160664(n)-A088580(n+2)]` -/
def P16762791444114476773.Spec : Prop :=
  ∀ n, P16762791444114476773.a n = A348689 (n + 1)

end A348689

/-! ## A348689.P3458627940057155573

`Δ[A160664(n)]-A340793(n+3)`
-/

namespace A348689.P3458627940057155573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A340793 (n + 3)

end

end A348689.P3458627940057155573

namespace A348689

/-- `Δ[A160664(n)]-A340793(n+3)` -/
def P3458627940057155573.Spec : Prop :=
  ∀ n, P3458627940057155573.a n = A348689 (n + 1)

end A348689

/-! ## A348689.P15080448868944008483

`A000203(n+1)-A340793(n+3)`
-/

namespace A348689.P15080448868944008483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A340793 (n + 3)

end

end A348689.P15080448868944008483

namespace A348689

/-- `A000203(n+1)-A340793(n+3)` -/
def P15080448868944008483.Spec : Prop :=
  ∀ n, P15080448868944008483.a n = A348689 (n + 1)

theorem P15080448868944008483.correct : P15080448868944008483.Spec := by
  intro n
  simp only [A348689, Nat.add_sub_cancel, A348689.P15080448868944008483.a, A348689.P12370375901714539931.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A340793, A340793.P1700930985006359286.f1, A340793.P1700930985006359286.f2, A340793.P1700930985006359286.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348689

/-! ## A348689.P3477650988225423255

`Δ[A160664(n)-Δ[A024916(n+1)]]`
-/

namespace A348689.P3477650988225423255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348689.P3477650988225423255

namespace A348689

/-- `Δ[A160664(n)-Δ[A024916(n+1)]]` -/
def P3477650988225423255.Spec : Prop :=
  ∀ n, P3477650988225423255.a n = A348689 (n + 1)

end A348689

/-! ## A348689.P7137869164495780994

`A245092(2*n+1)-A340793(n+3)`
-/

namespace A348689.P7137869164495780994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A340793 (n + 3)

end

end A348689.P7137869164495780994

namespace A348689

/-- `A245092(2*n+1)-A340793(n+3)` -/
def P7137869164495780994.Spec : Prop :=
  ∀ n, P7137869164495780994.a n = A348689 (n + 1)

end A348689

/-! ## A348689.P14552966727419227625

`A088580(n+1)-1-Δ[A088580(n+2)]`
-/

namespace A348689.P14552966727419227625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - 1 - (f1 (n + 1) - f1 n)

end

end A348689.P14552966727419227625

namespace A348689

/-- `A088580(n+1)-1-Δ[A088580(n+2)]` -/
def P14552966727419227625.Spec : Prop :=
  ∀ n, P14552966727419227625.a n = A348689 (n + 1)

theorem P14552966727419227625.correct : P14552966727419227625.Spec := by
  intro n
  simp only [A348689, Nat.add_sub_cancel, A348689.P14552966727419227625.f1, A348689.P14552966727419227625.a, A348689.P12370375901714539931.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A348689

/-! ## A348689.P2285582433680598725

`A245092(2*n+1)-Δ[A245092(2*n+3)]`
-/

namespace A348689.P2285582433680598725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A348689.P2285582433680598725

namespace A348689

/-- `A245092(2*n+1)-Δ[A245092(2*n+3)]` -/
def P2285582433680598725.Spec : Prop :=
  ∀ n, P2285582433680598725.a n = A348689 (n + 1)

end A348689

/-!
# A348690: For any nonnegative number n with binary expansion Sum_{k >= 0} b_k * 2^k, a(n) is the real part of f(n) = Sum_{k >= 0} b_k * (i^Sum_{j = 0..k-1} b_j) * (1+i)^k (where i denotes the imaginary unit); sequence A348691 gives the imaginary part.

The programs for A348690, there is no canonical definition to state claims against.
-/

/-! ## A348690.P5147110757606386395

`A348691(2*n)-A348691(n)`
-/

namespace A348690.P5147110757606386395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348691 (2 * n) - A348691 n

end

end A348690.P5147110757606386395

/-! ## A348690.P590086364303003997

`(A348691(2*n+1)+A348691(n))%(n+1)`
-/

namespace A348690.P590086364303003997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348691 (2 * n + 1) + A348691 n) (n + 1 : ℤ)

end

end A348690.P590086364303003997

/-! ## A348690.P7318540399501619501

`A348691(4*n)/2`
-/

namespace A348690.P7318540399501619501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348691 (4 * n) : ℚ) / 2

end

end A348690.P7318540399501619501

/-! ## A348690.P9177721413137247813

`floor(A348691(A008586(n))/2)`
-/

namespace A348690.P9177721413137247813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A348691 (A008586 n).toNat : ℚ) / 2⌋

end

end A348690.P9177721413137247813

/-! ## A348690.P1043100989705213188

`(A348691(A008586(n))/2)%A000124(n)`
-/

namespace A348690.P1043100989705213188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A348691 (A008586 n).toNat : ℚ) / 2)) (A000124 n)

end

end A348690.P1043100989705213188

/-! ## A348690.P1722231753837476798

`2^A008683(A020483(n))*A348691(4*n)`
-/

namespace A348690.P1722231753837476798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A348691 (4 * n) : ℚ)

end

end A348690.P1722231753837476798

/-!
# A348691: For any nonnegative number n with binary expansion Sum_{k >= 0} b_k * 2^k, a(n) is the imaginary part of f(n) = Sum_{k >= 0} b_k * (i^Sum_{j = 0..k-1} b_j) * (1+i)^k (where i denotes the imaginary unit); sequence A348690 gives the real part.

The programs for A348691, there is no canonical definition to state claims against.
-/

/-! ## A348691.P5281708671045081137

`A348690(n)-A348690(2*n)`
-/

namespace A348691.P5281708671045081137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348690 n - A348690 (2 * n)

end

end A348691.P5281708671045081137

/-! ## A348691.P11276466506750428329

`-(A348690(4*n)/2)`
-/

namespace A348691.P11276466506750428329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A348690 (4 * n) : ℚ) / 2)

end

end A348691.P11276466506750428329

/-! ## A348691.P14811903963010433394

`A348690(4*n+3)/2`
-/

namespace A348691.P14811903963010433394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348690 (4 * n + 3) : ℚ) / 2

end

end A348691.P14811903963010433394

/-! ## A348691.P6237199796534569036

`floor(A348690(A016825(n)+1)/2)`
-/

namespace A348691.P6237199796534569036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A348690 (A016825 n + 1).toNat : ℚ) / 2⌋

end

end A348691.P6237199796534569036

/-!
# A348692: Triangle whose n-th row lists the integers m such that A000178(n) / m! is a square, where A000178(n) = n$ = 1!*2!*...*n! is the superfactorial of n; if there is no such m, then n-th row = 0.

The programs for A348692, there is no canonical definition to state claims against.
-/

/-! ## A348692.P14617068563861108937

`A035181(A124437(n+1)+A124418(n))`
-/

namespace A348692.P14617068563861108937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035181 (A124437 (n + 1) + A124418 n).toNat

end

end A348692.P14617068563861108937

/-! ## A348692.P6214047830552445614

`A179416(n)*A280521(A008930(n+3))`
-/

namespace A348692.P6214047830552445614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179416 n * A280521 (A008930 (n + 3)).toNat

end

end A348692.P6214047830552445614

/-!
# A348694: a(n) is the least number k such that the numerator of the harmonic mean of the divisors of k is equal to n, or -1 if no such k exists.

The programs for A348694, there is no canonical definition to state claims against.
-/

/-! ## A348694.P1881178037417731156

`∏{p}[n+1, #]*A285175(A038348(2*n+3))`
-/

namespace A348694.P1881178037417731156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A285175 (A038348 (2 * n + 3)).toNat

end

end A348694.P1881178037417731156

/-! ## A348694.P3175271178154907706

`A027748(n+1)*A129392(A060753(n+1))`
-/

namespace A348694.P3175271178154907706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (n + 1) * A129392 (A060753 (n + 1)).toNat

end

end A348694.P3175271178154907706

/-!
# A348699: Primes with a prime number of prime digits.

The programs for A348699, there is no canonical definition to state claims against.
-/

/-! ## A348699.P3088493756422179784

`∑{p}[A154385(n+5)², #]`
-/

namespace A348699.P3088493756422179784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154385 (n + 5) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A348699.P3088493756422179784

/-! ## A348699.P468251622926774703

`A194603(A154385(n+5)+1)`
-/

namespace A348699.P468251622926774703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (A154385 (n + 5) + 1).toNat

end

end A348699.P468251622926774703

/-! ## A348699.P1019863602698377297

`A233583(A154385(n+5)+1)`
-/

namespace A348699.P1019863602698377297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A154385 (n + 5) + 1).toNat

end

end A348699.P1019863602698377297

/-! ## A348699.P17788731124087783380

`A054576(10*A154385(n+5))`
-/

namespace A348699.P17788731124087783380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (10 * A154385 (n + 5)).toNat

end

end A348699.P17788731124087783380

/-! ## A348699.P406340684754509821

`A054576(lcm(10, A154385(n+5)))`
-/

namespace A348699.P406340684754509821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (Int.lcm 10 (A154385 (n + 5)))

end

end A348699.P406340684754509821

/-! ## A348699.P7051391737832924982

`A001281(10*A154385(n+5))/5`
-/

namespace A348699.P7051391737832924982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001281 (10 * A154385 (n + 5)).toNat : ℚ) / 5

end

end A348699.P7051391737832924982

/-! ## A348699.P4106015549981857058

`A004525(10*A154385(n+5))/5`
-/

namespace A348699.P4106015549981857058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 (10 * A154385 (n + 5)).toNat : ℚ) / 5

end

end A348699.P4106015549981857058

/-! ## A348699.P17788792120108141590

`A004526(10*A154385(n+5))/5`
-/

namespace A348699.P17788792120108141590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (10 * A154385 (n + 5)).toNat : ℚ) / 5

end

end A348699.P17788792120108141590

/-! ## A348699.P7991262348103161454

`∩[A127957(n+1), A154385(n+1)]`
-/

namespace A348699.P7991262348103161454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348699.P7991262348103161454

