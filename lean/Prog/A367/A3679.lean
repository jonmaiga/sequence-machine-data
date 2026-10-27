import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
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
# A367901: Number of sets of subsets of {1..n} contradicting a strict version of the axiom of choice.

The programs for A367901, there is no canonical definition to state claims against.
-/

/-! ## A367901.P11537193324282391260

`2^2^n-A367902(n)`
-/

namespace A367901.P11537193324282391260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ 2 ^ n : ℤ) - A367902 n

end

end A367901.P11537193324282391260

/-! ## A367901.P17675511460738080837

`A367903(n)+A058891(n+1)`
-/

namespace A367901.P17675511460738080837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367903 n + A058891 (n + 1)

end

end A367901.P17675511460738080837

/-!
# A367902: Number of sets of nonempty subsets of {1..n} satisfying a strict version of the axiom of choice.

The programs for A367902, there is no canonical definition to state claims against.
-/

/-! ## A367902.P7312365670940069676

`A370636(2^n-1)`
-/

namespace A367902.P7312365670940069676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370636 (2 ^ n - 1)

end

end A367902.P7312365670940069676

/-! ## A367902.P17978714487337284576

`A367904(n)+A367772(n)`
-/

namespace A367902.P17978714487337284576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367904 n + A367772 n

end

end A367902.P17978714487337284576

/-! ## A367902.P6183594237317783699

`A058891(n+1)-A367903(n)`
-/

namespace A367902.P6183594237317783699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058891 (n + 1) - A367903 n

end

end A367902.P6183594237317783699

/-! ## A367902.P10955717051802190284

`A000079(A000079(n))-A367901(n)`
-/

namespace A367902.P10955717051802190284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000079 n).toNat - A367901 n

end

end A367902.P10955717051802190284

/-! ## A367902.P14143846525508664707

`A011782(A011782(n+1))-A367903(n)`
-/

namespace A367902.P14143846525508664707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A011782 (n + 1)).toNat - A367903 n

end

end A367902.P14143846525508664707

/-!
# A367903: Number of sets of nonempty subsets of {1..n} contradicting a strict version of the axiom of choice.

The programs for A367903, there is no canonical definition to state claims against.
-/

/-! ## A367903.P12059109868680967175

`A058891(n+1)-A367902(n)`
-/

namespace A367903.P12059109868680967175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058891 (n + 1) - A367902 n

end

end A367903.P12059109868680967175

/-! ## A367903.P10992899656405593856

`A370589(2^n)`
-/

namespace A367903.P10992899656405593856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370589 (2 ^ n)

end

end A367903.P10992899656405593856

/-!
# A367904: Number of sets of nonempty subsets of {1..n} with only one possible way to choose a sequence of different vertices of each edge.

The programs for A367904, there is no canonical definition to state claims against.
-/

/-! ## A367904.P16774187542106662394

`A367902(n)-A367772(n)`
-/

namespace A367904.P16774187542106662394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367902 n - A367772 n

end

end A367904.P16774187542106662394

/-!
# A367905: Number of ways to choose a sequence of different binary indices, one of each binary index of n.

The programs for A367905, there is no canonical definition to state claims against.
-/

/-! ## A367905.P16877128706586722576

`A368183(n)+A000007(A144151(n))`
-/

namespace A367905.P16877128706586722576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368183 n + A000007 (A144151 n).toNat

end

end A367905.P16877128706586722576

/-! ## A367905.P16737204690116771694

`A368183(n)+A083929(A239261(n))`
-/

namespace A367905.P16737204690116771694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368183 n + A083929 (A239261 n).toNat

end

end A367905.P16737204690116771694

/-! ## A367905.P13067687263661775257

`A368183(n)+A083929(A326633(n))`
-/

namespace A367905.P13067687263661775257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368183 n + A083929 (A326633 n).toNat

end

end A367905.P13067687263661775257

/-! ## A367905.P5814019162758060702

`A368167(A251072(n))*A368183(n)`
-/

namespace A367905.P5814019162758060702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368167 (A251072 n).toNat * A368183 n

end

end A367905.P5814019162758060702

/-! ## A367905.P1991552111175471151

`A368183(n)+A010054(A096891(n+1))`
-/

namespace A367905.P1991552111175471151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368183 n + A010054 (A096891 (n + 1)).toNat

end

end A367905.P1991552111175471151

/-! ## A367905.P4195084283068617431

`A368183(n)+A010051(A157265(n+1))`
-/

namespace A367905.P4195084283068617431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368183 n + A010051 (A157265 (n + 1)).toNat

end

end A367905.P4195084283068617431

/-! ## A367905.P4058312214013675305

`A368183(n)+A000007(A333617(n+1))`
-/

namespace A367905.P4058312214013675305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368183 n + A000007 (A333617 (n + 1)).toNat

end

end A367905.P4058312214013675305

/-! ## A367905.P5640470166087441875

`A368183(n)+A000007(A353834(n+1))`
-/

namespace A367905.P5640470166087441875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368183 n + A000007 (A353834 (n + 1)).toNat

end

end A367905.P5640470166087441875

/-! ## A367905.P12851218692504645634

`A368183(n)+A000007(A357632(n+1))`
-/

namespace A367905.P12851218692504645634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368183 n + A000007 (A357632 (n + 1)).toNat

end

end A367905.P12851218692504645634

/-! ## A367905.P11289050737221318974

`A074206(A069681(n+1))*A368183(n)`
-/

namespace A367905.P11289050737221318974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A069681 (n + 1)).toNat * A368183 n

end

end A367905.P11289050737221318974

/-!
# A367906: Numbers k such that it is possible to choose a different binary index of each binary index of k.

The programs for A367906, there is no canonical definition to state claims against.
-/

/-! ## A367906.P385539574478309215

`lt[1, (n+1)*A367905(n)]`
-/

namespace A367906.P385539574478309215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A367905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A367906.P385539574478309215

/-! ## A367906.P13598925111265252096

`lt[A000007(n), A367905(n)]`
-/

namespace A367906.P13598925111265252096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367906.P13598925111265252096

/-! ## A367906.P14775455381444919727

`lt[A000038(n), A367905(n)]`
-/

namespace A367906.P14775455381444919727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367906.P14775455381444919727

/-! ## A367906.P8209256428131289684

`lt[A054977(n), A367905(n)+1]`
-/

namespace A367906.P8209256428131289684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367906.P8209256428131289684

/-! ## A367906.P9263850964797669814

`eq[A054977(n), A054977(A367905(n))]`
-/

namespace A367906.P9263850964797669814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A367905 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367906.P9263850964797669814

/-! ## A367906.P10532213557489392447

`eq[A057427(n), A057427(A367905(n))]`
-/

namespace A367906.P10532213557489392447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A367905 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367906.P10532213557489392447

/-! ## A367906.P9118773648667963661

`eq[A057428(n), A057428(A367905(n))]`
-/

namespace A367906.P9118773648667963661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A367905 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367906.P9118773648667963661

/-! ## A367906.P13026465549360780448

`eq[A158388(n), A158388(A367905(n))]`
-/

namespace A367906.P13026465549360780448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A367905 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367906.P13026465549360780448

/-! ## A367906.P10419501611959687338

`∪[A367908(n+1), A367909(n+1)]`
-/

namespace A367906.P10419501611959687338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A367906.P10419501611959687338

/-!
# A367907: Numbers n such that it is not possible to choose a different binary index of each binary index of n.

The programs for A367907, there is no canonical definition to state claims against.
-/

/-! ## A367907.P10639289071658530581

`eq[0, A367905(n)]`
-/

namespace A367907.P10639289071658530581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367907.P10639289071658530581

/-! ## A367907.P3375336977468562124

`lt[A367905(n+1), 1]+1`
-/

namespace A367907.P3375336977468562124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A367907.P3375336977468562124

/-! ## A367907.P8426841905196480109

`comp[A367906(n+1)-1]+1`
-/

namespace A367907.P8426841905196480109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367906 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A367907.P8426841905196480109

/-! ## A367907.P6144065999846697083

`comp[A367906(n-a(2%n))]` with `a(0)=0`
-/

namespace A367907.P6144065999846697083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A367906 ((n : ℤ) - f1 (2 % n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A367907.P6144065999846697083

/-! ## A367907.P16347308965532162803

`A000027(lt[A367905(n), 1])`
-/

namespace A367907.P16347308965532162803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A367907.P16347308965532162803

/-! ## A367907.P10914692668079782407

`lt[A001221(A367905(n)+1), 1]`
-/

namespace A367907.P10914692668079782407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A367905 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A367907.P10914692668079782407

/-! ## A367907.P15144429976393797880

`lt[A001965(A367905(n)+1), 2]`
-/

namespace A367907.P15144429976393797880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 (A367905 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A367907.P15144429976393797880

/-! ## A367907.P11572918706468373876

`lt[A068504(A367905(n)+1), 2]`
-/

namespace A367907.P11572918706468373876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068504 (A367905 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A367907.P11572918706468373876

/-! ## A367907.P9939855144301438084

`lt[A072589(A367905(n)+1), 2]`
-/

namespace A367907.P9939855144301438084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072589 (A367905 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A367907.P9939855144301438084

/-! ## A367907.P12839028238024930639

`lt[A367905(n), A054977(n+1)]`
-/

namespace A367907.P12839028238024930639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367907.P12839028238024930639

/-! ## A367907.P9518926305871691016

`lt[A367905(A001281(2*n)), 1]`
-/

namespace A367907.P9518926305871691016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 (A001281 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A367907.P9518926305871691016

/-!
# A367908: Numbers n such that there is only one way to choose a different binary index of each binary index of n.

The programs for A367908, there is no canonical definition to state claims against.
-/

/-! ## A367908.P10685157629984081621

`eq[A054977(n), A367905(n)]`
-/

namespace A367908.P10685157629984081621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367908.P10685157629984081621

/-! ## A367908.P14350310575099020934

`eq[A057427(n), A367905(n)]`
-/

namespace A367908.P14350310575099020934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367908.P14350310575099020934

/-! ## A367908.P5375677374755219699

`eq[A158388(n), A367905(n)]`
-/

namespace A367908.P5375677374755219699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367908.P5375677374755219699

/-! ## A367908.P873643592631052349

`eq[A057428(n)², A367905(n)]`
-/

namespace A367908.P873643592631052349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367908.P873643592631052349

/-! ## A367908.P2789714603907569173

`eq[1, A367905(n)+A000038(n)]`
-/

namespace A367908.P2789714603907569173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 n + A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367908.P2789714603907569173

/-! ## A367908.P16570957417763895293

`eq[A276337(A000120(n)), A367905(n)]`
-/

namespace A367908.P16570957417763895293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276337 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367908.P16570957417763895293

/-! ## A367908.P14130026070564797881

`eq[A003415(A006530(n+1)), A367905(n)]`
-/

namespace A367908.P14130026070564797881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A006530 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367908.P14130026070564797881

/-! ## A367908.P14234026140433112739

`eq[A094603(A000040(n+1)), A367905(n)]`
-/

namespace A367908.P14234026140433112739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094603 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367908.P14234026140433112739

/-!
# A367909: Numbers n such that there is more than one way to choose a different binary index of each binary index of n.

The programs for A367909, there is no canonical definition to state claims against.
-/

/-! ## A367909.P12684836498539481472

`lt[1, A367905(n)]`
-/

namespace A367909.P12684836498539481472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367905 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A367909.P12684836498539481472

/-! ## A367909.P14006355049213197900

`eq[1, A060990(A367905(n)²)]`
-/

namespace A367909.P14006355049213197900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A367905 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367909.P14006355049213197900

/-! ## A367909.P14053335304582756483

`eq[1, A000195(A367905(n)+1)]`
-/

namespace A367909.P14053335304582756483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A367905 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367909.P14053335304582756483

/-! ## A367909.P13864772996890329118

`eq[A159075(n)+1, A040716(A367905(n))]`
-/

namespace A367909.P13864772996890329118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040716 (A367905 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367909.P13864772996890329118

/-! ## A367909.P13866003771124335804

`eq[A033999(2*(n+2)), A060990(A367905(n))]`
-/

namespace A367909.P13866003771124335804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060990 (A367905 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367909.P13866003771124335804

/-! ## A367909.P3214047211468276974

`eq[A010693(2*(n+2)), A172471(A367905(n))]`
-/

namespace A367909.P3214047211468276974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A367905 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367909.P3214047211468276974

/-!
# A367911: Sorted positions of first appearances in A367905.

The programs for A367911, there is no canonical definition to state claims against.
-/

/-! ## A367911.P15202821404767115150

`record[A367910(A367905(n))]`
-/

namespace A367911.P15202821404767115150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367910 (A367905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367911.P15202821404767115150

/-! ## A367911.P16381739722154885475

`A003149(n)+A001222(A226354(n+1))`
-/

namespace A367911.P16381739722154885475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003149 n + A001222 (A226354 (n + 1)).toNat

end

end A367911.P16381739722154885475

/-!
# A367912: Number of multisets that can be obtained by choosing a binary index of each binary index of n.

The programs for A367912, there is no canonical definition to state claims against.
-/

/-! ## A367912.P1495522470439318556

`A318283(∏{p}[A019565(n), A232551(#)])+1`
-/

namespace A367912.P1495522470439318556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A232551 p).toNat + 1

end

end A367912.P1495522470439318556

/-! ## A367912.P7824454281561891988

`A318283(∏{p}[A019565(n), A338898(#)])+1`
-/

namespace A367912.P7824454281561891988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A338898 p).toNat + 1

end

end A367912.P7824454281561891988

/-! ## A367912.P15685896140402944196

`A318283(A368109(n))+1`
-/

namespace A367912.P15685896140402944196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (A368109 n).toNat + 1

end

end A367912.P15685896140402944196

/-! ## A367912.P2231737046497383884

`A292587(2*A368109(n))`
-/

namespace A367912.P2231737046497383884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292587 (2 * A368109 n).toNat

end

end A367912.P2231737046497383884

/-! ## A367912.P11431361534579580231

`A110591(3^A368109(n))`
-/

namespace A367912.P11431361534579580231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A368109 n : ℤ))).toNat

end

end A367912.P11431361534579580231

/-! ## A367912.P8927696086614798752

`A113232(A368109(n)%A375488(n+4))`
-/

namespace A367912.P8927696086614798752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113232 (Int.tmod (A368109 n) (A375488 (n + 4))).toNat

end

end A367912.P8927696086614798752

/-! ## A367912.P2501934181007471506

`A101544(A368109(n))%A270796(n+1)`
-/

namespace A367912.P2501934181007471506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101544 (A368109 n).toNat) (A270796 (n + 1))

end

end A367912.P2501934181007471506

/-! ## A367912.P6827807461605484748

`A368918(A368109(n))%A317719(n+1)`
-/

namespace A367912.P6827807461605484748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368918 (A368109 n).toNat) (A317719 (n + 1))

end

end A367912.P6827807461605484748

/-! ## A367912.P17553317502151579205

`A305900(gcd(A087080(2*(n+1)), A368109(n)))`
-/

namespace A367912.P17553317502151579205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (Int.gcd (A087080 (2 * (n + 1))) (A368109 n))

end

end A367912.P17553317502151579205

/-! ## A367912.P11129644125605147438

`A122349(A368109(n))%A235399(n+1)`
-/

namespace A367912.P11129644125605147438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122349 (A368109 n).toNat) (A235399 (n + 1))

end

end A367912.P11129644125605147438

/-!
# A367913: Least number k such that there are exactly n ways to choose a multiset consisting of a binary index of each binary index of k.

The programs for A367913, there is no canonical definition to state claims against.
-/

/-! ## A367913.P445568410519316043

`A000695(gcd(A051753(n+1), A355069(n+1)))`
-/

namespace A367913.P445568410519316043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (Int.gcd (A051753 (n + 1)) (A355069 (n + 1)))

end

end A367913.P445568410519316043

/-!
# A367914: Movement sequence in the counter-clockwise undulating spiral, whereby 1, 2, 3, 4 represent moves to the right, down, left and up.

The programs for A367914, there is no canonical definition to state claims against.
-/

/-! ## A367914.P15543307999932727618

`A010873(2*n)+A010873(A100795(n+1))`
-/

namespace A367914.P15543307999932727618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (2 * n) + A010873 (A100795 (n + 1)).toNat

end

end A367914.P15543307999932727618

/-! ## A367914.P14757692556969358255

`gcd(A211031(n), A324111(A029952(2*n+3)))`
-/

namespace A367914.P14757692556969358255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211031 n) (A324111 (A029952 (2 * n + 3)).toNat)

end

end A367914.P14757692556969358255

/-!
# A367915: Sorted positions of first appearances in A367912 (number of multisets that can be obtained by choosing a binary index of each binary index).

The programs for A367915, there is no canonical definition to state claims against.
-/

/-! ## A367915.P4553855227779705216

`A368112(A082743(n))`
-/

namespace A367915.P4553855227779705216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368112 (A082743 n).toNat

end

end A367915.P4553855227779705216

/-! ## A367915.P3228792214291526630

`A368112(A381225(n))`
-/

namespace A367915.P3228792214291526630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368112 (A381225 n).toNat

end

end A367915.P3228792214291526630

/-! ## A367915.P229751748574281850

`A368112(A001104(n+1))`
-/

namespace A367915.P229751748574281850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368112 (A001104 (n + 1)).toNat

end

end A367915.P229751748574281850

/-! ## A367915.P15751492239610467091

`A368112(A002998(n+1))`
-/

namespace A367915.P15751492239610467091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368112 (A002998 (n + 1)).toNat

end

end A367915.P15751492239610467091

/-! ## A367915.P18051528620831414853

`A368112(A023106(n+1))`
-/

namespace A367915.P18051528620831414853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368112 (A023106 (n + 1)).toNat

end

end A367915.P18051528620831414853

/-!
# A367916: Number of sets of nonempty subsets of {1..n} with the same number of edges as covered vertices.

The programs for A367916, there is no canonical definition to state claims against.
-/

/-! ## A367916.P7634274235876397192

`A075362(A300627(n)+n)`
-/

namespace A367916.P7634274235876397192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A300627 n + (n : ℤ)).toNat

end

end A367916.P7634274235876397192

/-!
# A367917: BII-numbers of set-systems with the same number of edges as covered vertices.

The programs for A367917, there is no canonical definition to state claims against.
-/

/-! ## A367917.P12519955244505023910

`eq[1, A368183(n)]`
-/

namespace A367917.P12519955244505023910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367917.P12519955244505023910

/-! ## A367917.P11769921890538236652

`eq[a(and(n, n-1))+1, A326702(n)]` with `a(0)=0`
-/

namespace A367917.P11769921890538236652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367917.P11769921890538236652

/-! ## A367917.P5819928576920244159

`eq[A000120(n), A326702(n)]`
-/

namespace A367917.P5819928576920244159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367917.P5819928576920244159

/-! ## A367917.P8716194391684115348

`eq[A179868(n), A326702(n)]`
-/

namespace A367917.P8716194391684115348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179868 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367917.P8716194391684115348

/-! ## A367917.P6201853268605877067

`eq[log2(A001316(n)), A326702(n)]`
-/

namespace A367917.P6201853268605877067
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A367917.P6201853268605877067

/-!
# A367919: Expansion of e.g.f. exp(4*(exp(x) - 1) - x).

The programs for A367919, there is no canonical definition to state claims against.
-/

/-! ## A367919.P4617065918742648554

`A124132(2^(n+1)-(n+1))`
-/

namespace A367919.P4617065918742648554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124132 (2 ^ (n + 1) - (n + 1))

end

end A367919.P4617065918742648554

/-!
# A367920: Expansion of e.g.f. exp(4*(exp(x) - 1) - 2*x).

The programs for A367920, there is no canonical definition to state claims against.
-/

/-! ## A367920.P3438516124060143286

`A036152(n)+A004523(A378565(n))`
-/

namespace A367920.P3438516124060143286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036152 n + A004523 (A378565 n).toNat

end

end A367920.P3438516124060143286

/-! ## A367920.P5577910097311467813

`A008980(n)-A200082(A200074(n))`
-/

namespace A367920.P5577910097311467813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008980 n - A200082 (A200074 n).toNat

end

end A367920.P5577910097311467813

/-!
# A367921: Expansion of e.g.f. exp(4*(exp(x) - 1) - 3*x).

The programs for A367921, there is no canonical definition to state claims against.
-/

/-! ## A367921.P5991562443960362286

`A295741(A115605(n+1))`
-/

namespace A367921.P5991562443960362286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295741 (A115605 (n + 1)).toNat

end

end A367921.P5991562443960362286

/-! ## A367921.P11382732429031621980

`A051953(5*A350467(n))`
-/

namespace A367921.P11382732429031621980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (5 * A350467 n).toNat

end

end A367921.P11382732429031621980

/-!
# A367922: Expansion of e.g.f. 1/(1 - x + 2*log(1 - x)).

The programs for A367922, there is no canonical definition to state claims against.
-/

/-! ## A367922.P15902044117264390349

`A259194(A199412(n))+A046951(n+1)`
-/

namespace A367922.P15902044117264390349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259194 (A199412 n).toNat + A046951 (n + 1)

end

end A367922.P15902044117264390349

/-!
# A367924: Expansion of e.g.f. 1/(3 - x - 2*exp(x)).

The programs for A367924, there is no canonical definition to state claims against.
-/

/-! ## A367924.P8216570798778841141

`A310096(n*a(n-1))` with `a(0)=1`
-/

namespace A367924.P8216570798778841141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A310096 ((n : ℤ) * a (n - 1)).toNat

end

end A367924.P8216570798778841141

/-!
# A367925: Expansion of e.g.f. 1/(4 - x - 3*exp(x)).

The programs for A367925, there is no canonical definition to state claims against.
-/

/-! ## A367925.P10762918379113960550

`A227469(n)+A004760(A228509(n))`
-/

namespace A367925.P10762918379113960550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227469 n + A004760 (A228509 n).toNat

end

end A367925.P10762918379113960550

/-!
# A367926: a(n) is the number of 2 X 2 matrices over the integers mod n that are invertible mod n for every permutation of their elements.

The programs for A367926, there is no canonical definition to state claims against.
-/

/-! ## A367926.P7334661599326876446

`A007426(A272501(n)+10)`
-/

namespace A367926.P7334661599326876446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (A272501 n + 10).toNat

end

end A367926.P7334661599326876446

/-!
# A367931: a(n) is the smallest number k such that k*n is an exponentially odious number (A270428).

The programs for A367931, there is no canonical definition to state claims against.
-/

/-! ## A367931.P17646726735499394781

`A367933(n+1)/(n+1)`
-/

namespace A367931.P17646726735499394781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367933 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A367931.P17646726735499394781

/-! ## A367931.P18378345274505316538

`A028310(A367933(n+1)%A028310(n))`
-/

namespace A367931.P18378345274505316538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A367933 (n + 1)) (A028310 n)).toNat

end

end A367931.P18378345274505316538

/-! ## A367931.P16744479310983263171

`A375240(A270419(n+1)²)`
-/

namespace A367931.P16744479310983263171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375240 (A270419 (n + 1) ^ 2).toNat

end

end A367931.P16744479310983263171

/-! ## A367931.P6188299122700151072

`A050985(A062379(A003557(n+1)²))`
-/

namespace A367931.P6188299122700151072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A062379 (A003557 (n + 1) ^ 2).toNat).toNat

end

end A367931.P6188299122700151072

/-! ## A367931.P14380081227862696384

`A295658(A011262(n+1))%A014311(A001055(n+4))`
-/

namespace A367931.P14380081227862696384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295658 (A011262 (n + 1)).toNat) (A014311 (A001055 (n + 4)).toNat)

end

end A367931.P14380081227862696384

/-! ## A367931.P10348114174211739252

`A050985(A062379(A062378((n+1)²)))`
-/

namespace A367931.P10348114174211739252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A062379 (A062378 ((n + 1) ^ 2)).toNat).toNat

end

end A367931.P10348114174211739252

/-! ## A367931.P9655456229409317153

`A050985(A073753(A062379((n+1)²)))`
-/

namespace A367931.P9655456229409317153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A073753 (A062379 ((n + 1) ^ 2)).toNat).toNat

end

end A367931.P9655456229409317153

/-! ## A367931.P11489819898405227103

`A186646(A270419(n+1)%A325676(n+3))`
-/

namespace A367931.P11489819898405227103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186646 (Int.tmod (A270419 (n + 1)) (A325676 (n + 3))).toNat

end

end A367931.P11489819898405227103

/-! ## A367931.P9162756897227350825

`A371384(A318650(n+1))`
-/

namespace A367931.P9162756897227350825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371384 (A318650 (n + 1)).toNat

end

end A367931.P9162756897227350825

/-! ## A367931.P8561889688733438452

`gcd(A057381(n), A365297(n+1))`
-/

namespace A367931.P8561889688733438452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057381 n) (A365297 (n + 1))

end

end A367931.P8561889688733438452

/-!
# A367932: a(n) is the smallest number k such that k*n is an exponentially evil number (A262675).

The programs for A367932, there is no canonical definition to state claims against.
-/

/-! ## A367932.P6100434544660672476

`A367934(n+1)/(n+1)`
-/

namespace A367932.P6100434544660672476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367934 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A367932.P6100434544660672476

/-! ## A367932.P10491963378411299661

`A367699((n+1)*A365683(n+1))`
-/

namespace A367932.P10491963378411299661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367699 ((n + 1 : ℤ) * A365683 (n + 1)).toNat

end

end A367932.P10491963378411299661

/-! ## A367932.P12080570021574572406

`A367699(∏{p}[n+1, gcd(n+1, #^3)]*A367699(n+1))`
-/

namespace A367932.P12080570021574572406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367699 (((∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 3) : ℕ) : ℤ) * A367699 (n + 1)).toNat

end

end A367932.P12080570021574572406

/-! ## A367932.P17891127347811918172

`A365683(lcm(n+1, ∏{p}[n+1, #^3])/A365683(n+1))`
-/

namespace A367932.P17891127347811918172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365683 (SequenceMachineLib.roundAway ((Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p ^ 3) : ℚ) / (A365683 (n + 1) : ℚ))).toNat

end

end A367932.P17891127347811918172

/-! ## A367932.P8593903808508754677

`A056555(A056554(n+1)*A058035(n+1))`
-/

namespace A367932.P8593903808508754677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056555 (A056554 (n + 1) * A058035 (n + 1)).toNat

end

end A367932.P8593903808508754677

/-! ## A367932.P5797524470679079082

`A050985(A360539(n+1)*A367699(n+1))`
-/

namespace A367932.P5797524470679079082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A360539 (n + 1) * A367699 (n + 1)).toNat

end

end A367932.P5797524470679079082

/-! ## A367932.P17269492808605005534

`A367699(A360539(n+1)*A367699(n+1))`
-/

namespace A367932.P17269492808605005534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367699 (A360539 (n + 1) * A367699 (n + 1)).toNat

end

end A367932.P17269492808605005534

/-! ## A367932.P3488737847362310234

`A365296(A365298(n+1)/A365335(n+1))`
-/

namespace A367932.P3488737847362310234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365296 (SequenceMachineLib.roundAway ((A365298 (n + 1) : ℚ) / (A365335 (n + 1) : ℚ))).toNat

end

end A367932.P3488737847362310234

/-!
# A367933: a(n) is the smallest multiple of n that is an exponentially odious number (A270428).

The programs for A367933, there is no canonical definition to state claims against.
-/

/-! ## A367933.P8014240402418115888

`(n+1)*A367931(n+1)`
-/

namespace A367933.P8014240402418115888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A367931 (n + 1)

end

end A367933.P8014240402418115888

/-! ## A367933.P7967904366445702072

`A353897((n+1)*A008834(n+1))/A000188(A365297(n+1))`
-/

namespace A367933.P7967904366445702072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353897 ((n + 1 : ℤ) * A008834 (n + 1)).toNat : ℚ) / (A000188 (A365297 (n + 1)).toNat : ℚ)

end

end A367933.P7967904366445702072

/-! ## A367933.P488103658292662108

`A011262(A011262(n+1))*A295658(A011262(n+1))`
-/

namespace A367933.P488103658292662108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A011262 (n + 1)).toNat * A295658 (A011262 (n + 1)).toNat

end

end A367933.P488103658292662108

/-! ## A367933.P7054707369230271944

`(n+1)*A186646(A270419(n+1)%A325676(n+3))`
-/

namespace A367933.P7054707369230271944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A186646 (Int.tmod (A270419 (n + 1)) (A325676 (n + 3))).toNat

end

end A367933.P7054707369230271944

/-! ## A367933.P12836439222923336302

`sqrt(A055491(n+1))*A071975(A304203(n+1))`
-/

namespace A367933.P12836439222923336302
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055491 (n + 1) : ℝ) * (A071975 (A304203 (n + 1)).toNat : ℝ)

end

end A367933.P12836439222923336302

/-! ## A367933.P10372636141638218044

`(n+1)/(n+1-A326055(n+1))*A071975(A304203(n+1))`
-/

namespace A367933.P10372636141638218044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A326055 (n + 1) : ℚ) * (A071975 (A304203 (n + 1)).toNat : ℚ)

end

end A367933.P10372636141638218044

/-! ## A367933.P14965232904969527224

`A019554((n+1)*A356194(n+1))`
-/

namespace A367933.P14965232904969527224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 ((n + 1 : ℤ) * A356194 (n + 1)).toNat

end

end A367933.P14965232904969527224

/-!
# A367934: a(n) is the smallest multiple of n that is an exponentially evil number (A262675).

The programs for A367934, there is no canonical definition to state claims against.
-/

/-! ## A367934.P11931528067522145854

`(n+1)*A367932(n+1)`
-/

namespace A367934.P11931528067522145854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A367932 (n + 1)

end

end A367934.P11931528067522145854

/-! ## A367934.P6497490443013123600

`A356193(A053149(n+1)/A056552(n+1))`
-/

namespace A367934.P6497490443013123600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356193 (SequenceMachineLib.roundAway ((A053149 (n + 1) : ℚ) / (A056552 (n + 1) : ℚ))).toNat

end

end A367934.P6497490443013123600

/-!
# A367936: Lexicographically earliest sequence of distinct positive integers such that the sum of the distinct prime factors of a(n) + a(n + 1) is a composite number.

The programs for A367936, there is no canonical definition to state claims against.
-/

/-! ## A367936.P2419085290262450810

`A316729(A077741(n+1))%14`
-/

namespace A367936.P2419085290262450810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316729 (A077741 (n + 1)).toNat) 14

end

end A367936.P2419085290262450810

/-!
# A367938: Expansion of e.g.f. exp(exp(3*x) - 1 - 2*x).

The programs for A367938, there is no canonical definition to state claims against.
-/

/-! ## A367938.P14392631197404538954

`or(n, A248034(A127060(n)))`
-/

namespace A367938.P14392631197404538954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A248034 (A127060 n).toNat)

end

end A367938.P14392631197404538954

/-!
# A367939: Expansion of e.g.f. exp(exp(4*x) - 1 - 2*x).

The programs for A367939, there is no canonical definition to state claims against.
-/

/-! ## A367939.P9104040848789359307

`lcm(A000079(n), A124311(n))`
-/

namespace A367939.P9104040848789359307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A124311 n)

end

end A367939.P9104040848789359307

/-! ## A367939.P17937210125383344633

`abs(A011782(n+1)*A124311(n))`
-/

namespace A367939.P17937210125383344633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (n + 1) * A124311 n|

end

end A367939.P17937210125383344633

/-! ## A367939.P16166827940393145856

`abs(A124311(n)*A131577(n+1))`
-/

namespace A367939.P16166827940393145856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124311 n * A131577 (n + 1)|

end

end A367939.P16166827940393145856

/-!
# A367940: Expansion of e.g.f. exp(exp(4*x) - 1 - 3*x).

The programs for A367940, there is no canonical definition to state claims against.
-/

/-! ## A367940.P17004116082420691279

`A017077(lcm(A209331(n), A367223(n)))`
-/

namespace A367940.P17004116082420691279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (Int.lcm (A209331 n) (A367223 n))

end

end A367940.P17004116082420691279

/-!
# A367945: Expansion of e.g.f. exp(2*(exp(2*x) - 1) - x).

The programs for A367945, there is no canonical definition to state claims against.
-/

/-! ## A367945.P9934430660270317469

`or(1, A361079(A001449(n)))`
-/

namespace A367945.P9934430660270317469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A361079 (A001449 n).toNat)

end

end A367945.P9934430660270317469

/-!
# A367946: Expansion of e.g.f. exp(2*(exp(2*x) - 1) + x).

The programs for A367946, there is no canonical definition to state claims against.
-/

/-! ## A367946.P5345225563001456803

`A004526(Δ[A355165(n)])`
-/

namespace A367946.P5345225563001456803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A367946.P5345225563001456803

/-!
# A367947: Semiprimes s such that 2*s+1 is prime.

The programs for A367947, there is no canonical definition to state claims against.
-/

/-! ## A367947.P4314344242635604022

`(A063640(n+1)-1)/2`
-/

namespace A367947.P4314344242635604022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063640 (n + 1) - 1 : ℚ) / 2

end

end A367947.P4314344242635604022

/-! ## A367947.P7129851984551485279

`floor(A063640(n+1)/2)`
-/

namespace A367947.P7129851984551485279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063640 (n + 1) : ℚ) / 2⌋

end

end A367947.P7129851984551485279

/-! ## A367947.P15711599663499941524

`(p?[2*A001358(n+1)+1]-1)/2`
-/

namespace A367947.P15711599663499941524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001358 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A367947.P15711599663499941524

/-! ## A367947.P2074325545274348152

`filter[A067812(n+1), A064911(#)]`
-/

namespace A367947.P2074325545274348152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A367947.P2074325545274348152

/-! ## A367947.P10827176927601122670

`filter[A067812(n+1), A101040(#)]`
-/

namespace A367947.P10827176927601122670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A367947.P10827176927601122670

/-! ## A367947.P2679931089513131344

`∩[A001358(n+1), A067812(n+1)]`
-/

namespace A367947.P2679931089513131344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367947.P2679931089513131344

/-! ## A367947.P3461251690349413039

`filter[A005097(n+1), A064911(#)]`
-/

namespace A367947.P3461251690349413039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A367947.P3461251690349413039

/-! ## A367947.P1043353645609044120

`filter[A130290(n+1), A064911(#)]`
-/

namespace A367947.P1043353645609044120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A367947.P1043353645609044120

/-! ## A367947.P100604543472157290

`filter[A102781(n+2), A064911(#)]`
-/

namespace A367947.P100604543472157290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A367947.P100604543472157290

/-! ## A367947.P15917981903844458624

`∩[A001358(n+1), A005097(n+1)]`
-/

namespace A367947.P15917981903844458624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367947.P15917981903844458624

/-! ## A367947.P13075581832932777342

`∩[A001358(n+1), A102781(n+1)]`
-/

namespace A367947.P13075581832932777342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367947.P13075581832932777342

/-! ## A367947.P2300025639279368719

`filter[A139791(n+1), A064911(#)]`
-/

namespace A367947.P2300025639279368719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A367947.P2300025639279368719

/-! ## A367947.P494062337489772963

`∩[A001358(n+1), A139791(n+1)]`
-/

namespace A367947.P494062337489772963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367947.P494062337489772963

/-! ## A367947.P3657195507330631296

`filter[A001358(n+2), A101264(#)]`
-/

namespace A367947.P3657195507330631296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A367947.P3657195507330631296

/-! ## A367947.P13352375483343157531

`filter[A176540(n+2), A101264(#)]`
-/

namespace A367947.P13352375483343157531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A367947.P13352375483343157531

/-! ## A367947.P12523096429009169569

`filter[A079111(n+1), A064911(#)]`
-/

namespace A367947.P12523096429009169569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A367947.P12523096429009169569

/-! ## A367947.P7988259838340204521

`∩[A001358(n+1), A079111(n+1)]`
-/

namespace A367947.P7988259838340204521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367947.P7988259838340204521

/-! ## A367947.P13535759457266919844

`filter[A129767(2*(n+1)), A101264(#)]`
-/

namespace A367947.P13535759457266919844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A367947.P13535759457266919844

/-! ## A367947.P17792351292956692395

`eq[A049716(n+1), A105700(n)]`
-/

namespace A367947.P17792351292956692395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367947.P17792351292956692395

/-! ## A367947.P10744393810721003464

`eq[A099774(n+1), A105700(n)]`
-/

namespace A367947.P10744393810721003464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A367947.P10744393810721003464

/-!
# A367951: Fixed point of the morphism 1 -> {1,3}, t -> {t-2,t,t,t+2} (for t > 1), starting from {1}.

The programs for A367951, there is no canonical definition to state claims against.
-/

/-! ## A367951.P8410488070583148931

`A091084(A192751(n+1))`
-/

namespace A367951.P8410488070583148931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091084 (A192751 (n + 1)).toNat

end

end A367951.P8410488070583148931

/-! ## A367951.P4724924116492149786

`A214073(A164412(n+4))`
-/

namespace A367951.P4724924116492149786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214073 (A164412 (n + 4)).toNat

end

end A367951.P4724924116492149786

/-! ## A367951.P7264820222845393789

`A130250(A053383(2^n))`
-/

namespace A367951.P7264820222845393789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130250 (A053383 (2 ^ n)).toNat

end

end A367951.P7264820222845393789

/-! ## A367951.P5602887602622115870

`A267116(6*A110403(n+1))`
-/

namespace A367951.P5602887602622115870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267116 (6 * A110403 (n + 1)).toNat

end

end A367951.P5602887602622115870

/-! ## A367951.P14730811883443070346

`or(A093879(2^n), A305300(n+5))`
-/

namespace A367951.P14730811883443070346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A093879 (2 ^ n)) (A305300 (n + 5))

end

end A367951.P14730811883443070346

/-!
# A367953: Fixed point of the morphism 2 -> {2,2,4}, t -> {t-2,t,t,t+2} (for t > 2), starting from {2}.

The programs for A367953, there is no canonical definition to state claims against.
-/

/-! ## A367953.P16167154352392364912

`A367951(Δ[n²])+1`
-/

namespace A367953.P16167154352392364912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367951 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A367953.P16167154352392364912

/-! ## A367953.P12010923529581497684

`xor(1, A367951(2*(n+1)))`
-/

namespace A367953.P12010923529581497684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A367951 (2 * (n + 1)))

end

end A367953.P12010923529581497684

/-! ## A367953.P17318754937744468377

`A260255(A367951(2*(n+1)))`
-/

namespace A367953.P17318754937744468377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260255 (A367951 (2 * (n + 1))).toNat

end

end A367953.P17318754937744468377

/-! ## A367953.P2954660178771479516

`A000027(A367951(2*(n+1))-1)`
-/

namespace A367953.P2954660178771479516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A367951 (2 * (n + 1)) - 1).toNat

end

end A367953.P2954660178771479516

/-! ## A367953.P6711791275285670074

`∑{e}[A008776(A367951(2*n+1)), #]`
-/

namespace A367953.P6711791275285670074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008776 (A367951 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A367953.P6711791275285670074

/-!
# A367954: Total number of steps of Euclid's GCD algorithm to calculate gcd(x,y) for all pairs x,y in the range 1 <= x < y <= n.

The programs for A367954, there is no canonical definition to state claims against.
-/

/-! ## A367954.P5698579158213986820

`A367690(n+1)-A367892(n+1)`
-/

namespace A367954.P5698579158213986820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367690 (n + 1) - A367892 (n + 1)

end

end A367954.P5698579158213986820

/-! ## A367954.P3791295901800735429

`∑[A049827(n+2)-1]`
-/

namespace A367954.P3791295901800735429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049827 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367954.P3791295901800735429

/-! ## A367954.P11104839371484960272

`∑[A049826(n+1)+n]`
-/

namespace A367954.P11104839371484960272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049826 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367954.P11104839371484960272

/-! ## A367954.P11636210128538551672

`A049818(n+1)+∑[2*n]`
-/

namespace A367954.P11636210128538551672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049818 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A367954.P11636210128538551672

/-! ## A367954.P13013585615989738930

`A367892(n+1)-A080956(n)`
-/

namespace A367954.P13013585615989738930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367892 (n + 1) - A080956 n

end

end A367954.P13013585615989738930

/-!
# A367955: Number T(n,k) of partitions of [n] whose block maxima sum to k, triangle T(n,k), n>=0, n<=k<=n*(n+1)/2, read by rows.

The programs for A367955, there is no canonical definition to state claims against.
-/

/-! ## A367955.P1898258667677868059

`A193073(A276391(n+1)+A261984(n))`
-/

namespace A367955.P1898258667677868059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193073 (A276391 (n + 1) + A261984 n).toNat

end

end A367955.P1898258667677868059

/-! ## A367955.P1886968191432729442

`A356233(A188919(n)^A001221(3*(n+1)))`
-/

namespace A367955.P1886968191432729442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356233 (SequenceMachineLib.roundAway ((A188919 n : ℚ) ^ (A001221 (3 * (n + 1)) : ℤ))).toNat

end

end A367955.P1886968191432729442

/-!
# A367962: Triangle read by rows. T(n, k) = Sum_{j=0..k} (n!/j!).

The programs for A367962, the canonical program `A367962.P16852134589639979687` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367962 has offset 0).

The definition of A367962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367962.P16852134589639979687

`A334156(n+1)/A002024(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A367962

/-- `A334156(n+1)/A002024(n+1)` -/
def P16852134589639979687.Spec : Prop :=
  ∀ n, P16852134589639979687.a n = (A367962 n : ℚ)

end A367962

/-! ## A367962.P8876614123716566885

`A119502(n)*A371686(n)`
-/

namespace A367962.P8876614123716566885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A371686 n

end

end A367962.P8876614123716566885

namespace A367962

/-- `A119502(n)*A371686(n)` -/
def P8876614123716566885.Spec : Prop :=
  ∀ n, P8876614123716566885.a n = A367962 n

end A367962

/-!
# A367963: a(n) = Sum_{j=0..n} (2*n)! / (n!*(n - j)!).

The programs for A367963, there is no canonical definition to state claims against.
-/

/-! ## A367963.P14182747658595612439

`∑[floor(Δ[e*n!])+1]*A000108(n)`
-/

namespace A367963.P14182747658595612439
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 * (Nat.factorial n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000108 n

end

end A367963.P14182747658595612439

/-! ## A367963.P14952984912494557650

`A000522(n)*A000984(n)`
-/

namespace A367963.P14952984912494557650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n * A000984 n

end

end A367963.P14952984912494557650

/-! ## A367963.P17389593779728257474

`∑[A001339(n)]*A000108(n)`
-/

namespace A367963.P17389593779728257474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000108 n

end

end A367963.P17389593779728257474

/-! ## A367963.P107602810762435571

`A000108(n)*A007526(n+1)`
-/

namespace A367963.P107602810762435571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A007526 (n + 1)

end

end A367963.P107602810762435571

/-! ## A367963.P16898827977774806480

`A000522(n)*A056040(2*n)`
-/

namespace A367963.P16898827977774806480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n * A056040 (2 * n)

end

end A367963.P16898827977774806480

/-!
# A367964: Triangle of 2-parameter triangular numbers, read by rows. T(n, k) = (n*(n + 1) + k*(k + 1)) / 2.

The programs for A367964, the canonical program `A367964.P15333321417896263776` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367964 has offset 0).

The definition of A367964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367964.P15333321417896263776

`(row(n)*(row(n)+1)+col(n)*(col(n)+1))/2`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A367964

/-- `(row(n)*(row(n)+1)+col(n)*(col(n)+1))/2` -/
def P15333321417896263776.Spec : Prop :=
  ∀ n, P15333321417896263776.a n = (A367964 n : ℚ)

end A367964

/-! ## A367964.P17917531212554919807

`C(row(n)-col(n), 2)+(col(n)+1)*row(n)`
-/

namespace A367964.P17917531212554919807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat 2 + (SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triRow n

end

end A367964.P17917531212554919807

namespace A367964

/-- `C(row(n)-col(n), 2)+(col(n)+1)*row(n)` -/
def P17917531212554919807.Spec : Prop :=
  ∀ n, (P17917531212554919807.a n : ℤ) = A367964 n

end A367964

/-! ## A367964.P1387178061800525478

`C(A002262(n), 2)+n`
-/

namespace A367964.P1387178061800525478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 n).toNat 2 + n

end

end A367964.P1387178061800525478

namespace A367964

/-- `C(A002262(n), 2)+n` -/
def P1387178061800525478.Spec : Prop :=
  ∀ n, (P1387178061800525478.a n : ℤ) = A367964 n

end A367964

/-! ## A367964.P12816125496968035854

`C(log2(A059268(n)), 2)+n`
-/

namespace A367964.P12816125496968035854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat 2 + n

end

end A367964.P12816125496968035854

namespace A367964

/-- `C(log2(A059268(n)), 2)+n` -/
def P12816125496968035854.Spec : Prop :=
  ∀ n, (P12816125496968035854.a n : ℤ) = A367964 n

end A367964

/-! ## A367964.P16053588172314673558

`C(A144328(n+1), 2)+n`
-/

namespace A367964.P16053588172314673558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A144328 (n + 1)).toNat 2 + n

end

end A367964.P16053588172314673558

namespace A367964

/-- `C(A144328(n+1), 2)+n` -/
def P16053588172314673558.Spec : Prop :=
  ∀ n, (P16053588172314673558.a n : ℤ) = A367964 n

end A367964

/-! ## A367964.P156192609235071413

`A161680(A002262(n))+n`
-/

namespace A367964.P156192609235071413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A002262 n).toNat + (n : ℤ)

end

end A367964.P156192609235071413

namespace A367964

/-- `A161680(A002262(n))+n` -/
def P156192609235071413.Spec : Prop :=
  ∀ n, P156192609235071413.a n = A367964 n

end A367964

/-! ## A367964.P8257639159252155278

`A112367(n)+A057944(n)`
-/

namespace A367964.P8257639159252155278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A057944 n

end

end A367964.P8257639159252155278

namespace A367964

/-- `A112367(n)+A057944(n)` -/
def P8257639159252155278.Spec : Prop :=
  ∀ n, P8257639159252155278.a n = A367964 n

end A367964

/-! ## A367964.P29972644464926522

`A126890(n)-A087401(n)`
-/

namespace A367964.P29972644464926522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126890 n - A087401 n

end

end A367964.P29972644464926522

namespace A367964

/-- `A126890(n)-A087401(n)` -/
def P29972644464926522.Spec : Prop :=
  ∀ n, P29972644464926522.a n = A367964 n

end A367964

/-! ## A367964.P7845061452133759046

`A176798(n)-A303273(n)`
-/

namespace A367964.P7845061452133759046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176798 n - A303273 n

end

end A367964.P7845061452133759046

namespace A367964

/-- `A176798(n)-A303273(n)` -/
def P7845061452133759046.Spec : Prop :=
  ∀ n, P7845061452133759046.a n = A367964 n

end A367964

/-! ## A367964.P7286967798717916370

`A064801(n+1)-A271668(n)`
-/

namespace A367964.P7286967798717916370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1) - A271668 n

end

end A367964.P7286967798717916370

namespace A367964

/-- `A064801(n+1)-A271668(n)` -/
def P7286967798717916370.Spec : Prop :=
  ∀ n, P7286967798717916370.a n = A367964 n

end A367964

/-! ## A367964.P6543807499076202022

`A130269(n+1)-A002024(n+1)`
-/

namespace A367964.P6543807499076202022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130269 (n + 1) - A002024 (n + 1)

end

end A367964.P6543807499076202022

namespace A367964

/-- `A130269(n+1)-A002024(n+1)` -/
def P6543807499076202022.Spec : Prop :=
  ∀ n, P6543807499076202022.a n = A367964 n

end A367964

/-! ## A367964.P9425086547619181637

`A093995(n+1)-A049777(n+1)`
-/

namespace A367964.P9425086547619181637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093995 (n + 1) - A049777 (n + 1)

end

end A367964.P9425086547619181637

namespace A367964

/-- `A093995(n+1)-A049777(n+1)` -/
def P9425086547619181637.Spec : Prop :=
  ∀ n, P9425086547619181637.a n = A367964 n

end A367964

/-! ## A367964.P17903682835818188770

`A131422(n+1)-A094727(n+1)`
-/

namespace A367964.P17903682835818188770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131422 (n + 1) - A094727 (n + 1)

end

end A367964.P17903682835818188770

namespace A367964

/-- `A131422(n+1)-A094727(n+1)` -/
def P17903682835818188770.Spec : Prop :=
  ∀ n, P17903682835818188770.a n = A367964 n

end A367964

/-! ## A367964.P8713360728050195114

`A228312(n+1)-A182491(n+1)`
-/

namespace A367964.P8713360728050195114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228312 (n + 1) - A182491 (n + 1)

end

end A367964.P8713360728050195114

namespace A367964

/-- `A228312(n+1)-A182491(n+1)` -/
def P8713360728050195114.Spec : Prop :=
  ∀ n, P8713360728050195114.a n = A367964 n

end A367964

/-!
# A367965: a(n) = (1/8)*(4*n^2 + 6*n + (-1)^n*(2*n*(n + 1) - 1) + 1).

The programs for A367965, the canonical program `A367965.P4231374435710970210` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367965 has offset 0).

The definition of A367965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367965.P4231374435710970210

`1/8*(4*n²+6*n+(-1)^n*(2*n*(n+1)-1)+1)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A367965

/-- `1/8*(4*n²+6*n+(-1)^n*(2*n*(n+1)-1)+1)` -/
def P4231374435710970210.Spec : Prop :=
  ∀ n, P4231374435710970210.a n = (A367965 n : ℚ)

end A367965

/-! ## A367965.P10065250913384723407

`n*or(1, n)-a(n-1)` with `a(0)=0`
-/

namespace A367965.P10065250913384723407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n * Nat.lor 1 n : ℤ) - a (n - 1)

end

end A367965.P10065250913384723407

namespace A367965

/-- `n*or(1, n)-a(n-1)` -/
def P10065250913384723407.Spec : Prop :=
  ∀ n, P10065250913384723407.a n = A367965 n

end A367965

/-! ## A367965.P4721283531438795633

`n*((n+1)%2+n)-a(n-1)` with `a(0)=0`
-/

namespace A367965.P4721283531438795633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n * ((n + 1) % 2 + n) : ℕ) : ℤ) - a (n - 1)

end

end A367965.P4721283531438795633

namespace A367965

/-- `n*((n+1)%2+n)-a(n-1)` -/
def P4721283531438795633.Spec : Prop :=
  ∀ n, P4721283531438795633.a n = A367965 n

end A367965

/-! ## A367965.P7029182889945238399

`n*(1-(n%2-n))-a(n-1)` with `a(0)=0`
-/

namespace A367965.P7029182889945238399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (1 - (((n % 2 : ℕ) : ℤ) - (n : ℤ))) - a (n - 1)

end

end A367965.P7029182889945238399

namespace A367965

/-- `n*(1-(n%2-n))-a(n-1)` -/
def P7029182889945238399.Spec : Prop :=
  ∀ n, P7029182889945238399.a n = A367965 n

end A367965

/-! ## A367965.P6891952877342912560

`n*(gcd(2, n)-1+n)-a(n-1)` with `a(0)=0`
-/

namespace A367965.P6891952877342912560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * ((Nat.gcd 2 n : ℤ) - 1 + (n : ℤ)) - a (n - 1)

end

end A367965.P6891952877342912560

namespace A367965

/-- `n*(gcd(2, n)-1+n)-a(n-1)` -/
def P6891952877342912560.Spec : Prop :=
  ∀ n, P6891952877342912560.a n = A367965 n

end A367965

/-! ## A367965.P6935607511180676671

`A093353(n)+A083392(n)`
-/

namespace A367965.P6935607511180676671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 n + A083392 n

end

end A367965.P6935607511180676671

namespace A367965

/-- `A093353(n)+A083392(n)` -/
def P6935607511180676671.Spec : Prop :=
  ∀ n, P6935607511180676671.a n = A367965 n

end A367965

/-! ## A367965.P4336676472020713906

`A083364(n)-A006000(n)`
-/

namespace A367965.P4336676472020713906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083364 n - A006000 n

end

end A367965.P4336676472020713906

namespace A367965

/-- `A083364(n)-A006000(n)` -/
def P4336676472020713906.Spec : Prop :=
  ∀ n, P4336676472020713906.a n = A367965 n

end A367965

/-! ## A367965.P8459349444246969903

`A097066(n)-A110326(n)`
-/

namespace A367965.P8459349444246969903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097066 n - A110326 n

end

end A367965.P8459349444246969903

namespace A367965

/-- `A097066(n)-A110326(n)` -/
def P8459349444246969903.Spec : Prop :=
  ∀ n, P8459349444246969903.a n = A367965 n

end A367965

/-! ## A367965.P1943383427549588753

`A100256(n)%A186424(n)`
-/

namespace A367965.P1943383427549588753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100256 n) (A186424 n)

end

end A367965.P1943383427549588753

namespace A367965

/-- `A100256(n)%A186424(n)` -/
def P1943383427549588753.Spec : Prop :=
  ∀ n, P1943383427549588753.a n = A367965 n

end A367965

/-! ## A367965.P1280395889580289785

`A240134(n+1)+A008794(n)`
-/

namespace A367965.P1280395889580289785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240134 (n + 1) + A008794 n

end

end A367965.P1280395889580289785

namespace A367965

/-- `A240134(n+1)+A008794(n)` -/
def P1280395889580289785.Spec : Prop :=
  ∀ n, P1280395889580289785.a n = A367965 n

end A367965

/-! ## A367965.P2608604603817219402

`A136047(n+1)-A059329(n)`
-/

namespace A367965.P2608604603817219402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (n + 1) - A059329 n

end

end A367965.P2608604603817219402

namespace A367965

/-- `A136047(n+1)-A059329(n)` -/
def P2608604603817219402.Spec : Prop :=
  ∀ n, P2608604603817219402.a n = A367965 n

end A367965

/-! ## A367965.P14270219856795164930

`A062317(n+1)-A271391(n)`
-/

namespace A367965.P14270219856795164930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062317 (n + 1) - A271391 n

end

end A367965.P14270219856795164930

namespace A367965

/-- `A062317(n+1)-A271391(n)` -/
def P14270219856795164930.Spec : Prop :=
  ∀ n, P14270219856795164930.a n = A367965 n

end A367965

/-! ## A367965.P11634228051428434916

`A131805(n)+A066106(n)/2`
-/

namespace A367965.P11634228051428434916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131805 n : ℚ) + (A066106 n : ℚ) / 2

end

end A367965.P11634228051428434916

namespace A367965

/-- `A131805(n)+A066106(n)/2` -/
def P11634228051428434916.Spec : Prop :=
  ∀ n, P11634228051428434916.a n = (A367965 n : ℚ)

end A367965

/-! ## A367965.P2328061363616378191

`A092364(n+1)%A142463(n)`
-/

namespace A367965.P2328061363616378191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092364 (n + 1)) (A142463 n)

end

end A367965.P2328061363616378191

namespace A367965

/-- `A092364(n+1)%A142463(n)` -/
def P2328061363616378191.Spec : Prop :=
  ∀ n, P2328061363616378191.a n = A367965 n

end A367965

/-! ## A367965.P7225188897529074155

`A138179(n+1)%A132899(n+1)`
-/

namespace A367965.P7225188897529074155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138179 (n + 1)) (A132899 (n + 1))

end

end A367965.P7225188897529074155

namespace A367965

/-- `A138179(n+1)%A132899(n+1)` -/
def P7225188897529074155.Spec : Prop :=
  ∀ n, P7225188897529074155.a n = A367965 n

end A367965

/-! ## A367965.P12927899627710861052

`A008619(n+1)*A014682(n+1)-A014682(n+1)`
-/

namespace A367965.P12927899627710861052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) * A014682 (n + 1) - A014682 (n + 1)

end

end A367965.P12927899627710861052

namespace A367965

/-- `A008619(n+1)*A014682(n+1)-A014682(n+1)` -/
def P12927899627710861052.Spec : Prop :=
  ∀ n, P12927899627710861052.a n = A367965 n

end A367965

/-! ## A367965.P249371804453283869

`A008619(n+1)*A123684(n+1)-A026741(n+1)`
-/

namespace A367965.P249371804453283869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) * A123684 (n + 1) - A026741 (n + 1)

end

end A367965.P249371804453283869

namespace A367965

/-- `A008619(n+1)*A123684(n+1)-A026741(n+1)` -/
def P249371804453283869.Spec : Prop :=
  ∀ n, P249371804453283869.a n = A367965 n

end A367965

/-! ## A367965.P9712407154218066152

`A002620(n+1)+A000035(n+1)*A000217(n)`
-/

namespace A367965.P9712407154218066152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + A000035 (n + 1) * A000217 n

end

end A367965.P9712407154218066152

namespace A367965

/-- `A002620(n+1)+A000035(n+1)*A000217(n)` -/
def P9712407154218066152.Spec : Prop :=
  ∀ n, P9712407154218066152.a n = A367965 n

end A367965

/-! ## A367965.P13088940124748090456

`A004526(n+1)+A004526(n)*A123684(n+1)`
-/

namespace A367965.P13088940124748090456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + A004526 n * A123684 (n + 1)

end

end A367965.P13088940124748090456

namespace A367965

/-- `A004526(n+1)+A004526(n)*A123684(n+1)` -/
def P13088940124748090456.Spec : Prop :=
  ∀ n, P13088940124748090456.a n = A367965 n

end A367965

/-! ## A367965.P17883486298561123369

`A129889(n+1)+A093178(n+1)*A129889(n)`
-/

namespace A367965.P17883486298561123369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129889 (n + 1) + A093178 (n + 1) * A129889 n

end

end A367965.P17883486298561123369

namespace A367965

/-- `A129889(n+1)+A093178(n+1)*A129889(n)` -/
def P17883486298561123369.Spec : Prop :=
  ∀ n, P17883486298561123369.a n = A367965 n

end A367965

/-!
# A367966: Smallest Sophie Germain prime >= 2^n.

The programs for A367966, there is no canonical definition to state claims against.
-/

/-! ## A367966.P8953392886723884386

`floor(A033299(A000225(n+1))/2)`
-/

namespace A367966.P8953392886723884386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033299 (A000225 (n + 1)).toNat : ℚ) / 2⌋

end

end A367966.P8953392886723884386

/-! ## A367966.P14500182180284781091

`A212300(A359974(n+1))`
-/

namespace A367966.P14500182180284781091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212300 (A359974 (n + 1)).toNat

end

end A367966.P14500182180284781091

/-! ## A367966.P16406693010620915972

`A318719(A306293(n)+A219198(n))`
-/

namespace A367966.P16406693010620915972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318719 (A306293 n + A219198 (n + 17)).toNat

end

end A367966.P16406693010620915972

/-! ## A367966.P9518545578070136653

`A103146(A139582(n)-A316674(n))`
-/

namespace A367966.P9518545578070136653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103146 (A139582 n - A316674 n).toNat

end

end A367966.P9518545578070136653

/-!
# A367967: a(n) = 3/4*(3^(n + 1) - 2*n - 4*n^2 - 3).

The programs for A367967, the canonical program `A367967.P11582602338870093189` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367967 has offset 0).

The definition of A367967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3/4*(3^(n+1)-2*n-4*n²-3)` (program `A367967.P10993588424326683636`, by `A367967.P10993588424326683636.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A367967.P10993588424326683636

`3/4*(3^(n+1)-2*n-4*n²-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367967.P10993588424326683636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * ((3 ^ (n + 1) : ℤ) - (2 * n : ℤ) - (4 * n ^ 2 : ℤ) - 3 : ℚ)

end

end A367967.P10993588424326683636

namespace A367967

/-- `3/4*(3^(n+1)-2*n-4*n²-3)` -/
def P10993588424326683636.Spec : Prop :=
  ∀ n, P10993588424326683636.a n = (A367967 n : ℚ)

theorem P10993588424326683636.correct : P10993588424326683636.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A367967, Nat.add_sub_cancel, A367967.P10993588424326683636.a, A367967.P11582602338870093189.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A367967, Nat.add_sub_cancel, A367967.P10993588424326683636.a, A367967.P11582602338870093189.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A367967

/-! ## A367967.P11582602338870093189

`6*a(n-1)-12*a(n-2)+10*a(n-3)-3*a(n-4)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=27`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A367967

/-- `6*a(n-1)-12*a(n-2)+10*a(n-3)-3*a(n-4)` -/
def P11582602338870093189.Spec : Prop :=
  ∀ n, P11582602338870093189.a n = A367967 n

theorem P11582602338870093189.correct : P11582602338870093189.Spec := by
  intro n
  simp only [A367967]

end A367967

/-! ## A367967.P4130401393010770536

`∑[∑[3*(a(n-1)+4)]]` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A367967.P4130401393010770536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3] fun n f2 =>
  3 * (f2 (n - 1) + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367967.P4130401393010770536

namespace A367967

/-- `∑[∑[3*(a(n-1)+4)]]` -/
def P4130401393010770536.Spec : Prop :=
  ∀ n, (P4130401393010770536.a n : ℤ) = A367967 n

end A367967

/-! ## A367967.P16146665076945139182

`A000340(n)-A056108(n)`
-/

namespace A367967.P16146665076945139182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000340 n - A056108 n

end

end A367967.P16146665076945139182

namespace A367967

/-- `A000340(n)-A056108(n)` -/
def P16146665076945139182.Spec : Prop :=
  ∀ n, P16146665076945139182.a n = A367967 n

end A367967

/-! ## A367967.P6258905453049944118

`∑[A029858(n+1)]-A033428(n)`
-/

namespace A367967.P6258905453049944118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033428 n

end

end A367967.P6258905453049944118

namespace A367967

/-- `∑[A029858(n+1)]-A033428(n)` -/
def P6258905453049944118.Spec : Prop :=
  ∀ n, P6258905453049944118.a n = A367967 n

end A367967

/-! ## A367967.P266195914066053501

`A353094(n+1)-A141631(n+1)`
-/

namespace A367967.P266195914066053501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353094 (n + 1) - A141631 (n + 1)

end

end A367967.P266195914066053501

namespace A367967

/-- `A353094(n+1)-A141631(n+1)` -/
def P266195914066053501.Spec : Prop :=
  ∀ n, P266195914066053501.a n = A367967 n

end A367967

/-!
# A367968: Number of 6-cycles in the n-Dorogovtsev-Goltsev-Mendes graph.

The programs for A367968, the canonical program `A367968.P1917753891815266156` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367968 has offset 0).

The definition of A367968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367968.P1917753891815266156

`(65*3^n-84*n-6*n²-40*n^3-65)/8`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A367968

/-- `(65*3^n-84*n-6*n²-40*n^3-65)/8` -/
def P1917753891815266156.Spec : Prop :=
  ∀ n, P1917753891815266156.a n = (A367968 n : ℚ)

end A367968

/-!
# A367969: Number of partitions of [n] whose block maxima sum to k, where k is chosen so as to maximize this number.

The programs for A367969, there is no canonical definition to state claims against.
-/

/-! ## A367969.P16295440430315077242

`A372306(A304200(n))`
-/

namespace A367969.P16295440430315077242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372306 (A304200 n).toNat

end

end A367969.P16295440430315077242

/-! ## A367969.P15365105962415135345

`A346288(A366095(n))`
-/

namespace A367969.P15365105962415135345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346288 (A366095 n).toNat

end

end A367969.P15365105962415135345

/-! ## A367969.P15588556622390962304

`A091247(n)+A003056(A275554(n))`
-/

namespace A367969.P15588556622390962304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 n + A003056 (A275554 n).toNat

end

end A367969.P15588556622390962304

/-! ## A367969.P9539123522551967557

`A072786(A307399(n))+A003724(n)`
-/

namespace A367969.P9539123522551967557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072786 (A307399 n).toNat + A003724 n

end

end A367969.P9539123522551967557

/-!
# A367970: Least k such that 5*n*k+1 is a prime.

The programs for A367970, there is no canonical definition to state claims against.
-/

/-! ## A367970.P15195219323239632466

`ceil(A070849(n+1)/A016861(n+1))`
-/

namespace A367970.P15195219323239632466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A070849 (n + 1) : ℚ) / (A016861 (n + 1) : ℚ)⌉

end

end A367970.P15195219323239632466

/-! ## A367970.P5341553343132200897

`A034693(5*(n+1))`
-/

namespace A367970.P5341553343132200897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (5 * (n + 1))

end

end A367970.P5341553343132200897

/-! ## A367970.P7746583881653451404

`A087377(A081587(n+1))`
-/

namespace A367970.P7746583881653451404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087377 (A081587 (n + 1)).toNat

end

end A367970.P7746583881653451404

/-! ## A367970.P12859330840971000691

`A087377(A000124(Δ[∑[5*n]-n]))`
-/

namespace A367970.P12859330840971000691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087377 (A000124 (f1 (n + 1) - f1 n).toNat).toNat

end

end A367970.P12859330840971000691

/-! ## A367970.P1128713820244633743

`gcd(A000005(3*n+2), A342585(A005898(2*n)))`
-/

namespace A367970.P1128713820244633743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (3 * n + 2)) (A342585 (A005898 (2 * n)).toNat)

end

end A367970.P1128713820244633743

/-!
# A367971: Expansion of e.g.f. exp(exp(-x) - 1)/(1 - x).

The programs for A367971, there is no canonical definition to state claims against.
-/

/-! ## A367971.P9432901832189642665

`A292935(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A367971.P9432901832189642665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A292935 n + (n : ℤ) * a (n - 1)

end

end A367971.P9432901832189642665

/-!
# A367972: Expansion of e.g.f. exp(exp(2*x) - 1)/(1 - x).

The programs for A367972, there is no canonical definition to state claims against.
-/

/-! ## A367972.P8394017751444499994

`A055882(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A367972.P8394017751444499994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055882 n + (n : ℤ) * a (n - 1)

end

end A367972.P8394017751444499994

/-! ## A367972.P3831258800170531661

`A004396(A061130(n)+A001715(n+3))`
-/

namespace A367972.P3831258800170531661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A061130 n + A001715 (n + 3)).toNat

end

end A367972.P3831258800170531661

/-!
# A367973: Expansion of e.g.f. exp(exp(x) - 1)/(1 - 2*x).

The programs for A367973, there is no canonical definition to state claims against.
-/

/-! ## A367973.P4367154600764833484

`A000110(n)+2*n*a(n-1)` with `a(0)=1`
-/

namespace A367973.P4367154600764833484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000110 n + 2 * ((n : ℤ) * a (n - 1))

end

end A367973.P4367154600764833484

/-! ## A367973.P11481621005641872062

`A000110(n)+a(n-1)*A005843(n)` with `a(0)=1`
-/

namespace A367973.P11481621005641872062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000110 n + a (n - 1) * A005843 n

end

end A367973.P11481621005641872062

/-!
# A367975: Zumkeller numbers q such that q+2 is also a Zumkeller number.

The programs for A367975, there is no canonical definition to state claims against.
-/

/-! ## A367975.P13868124435535868037

`∩[A083207(n+1)-2, A083207(n+1)]`
-/

namespace A367975.P13868124435535868037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367975.P13868124435535868037

/-! ## A367975.P16373124211474380067

`∩[A246198(n+1)-2, A246198(n+1)]`
-/

namespace A367975.P16373124211474380067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246198 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367975.P16373124211474380067

/-! ## A367975.P18325299944797429891

`lt[A103977(n+2), A179527(A028310(n))]`
-/

namespace A367975.P18325299944797429891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367975.P18325299944797429891

/-! ## A367975.P3403159795738211389

`∩[A083207(n+1), A289207(A083207(n+1))]`
-/

namespace A367975.P3403159795738211389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A083207 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367975.P3403159795738211389

/-!
# A367977: Expansion of e.g.f. exp(-x) / (2 - exp(2*x)).

The programs for A367977, there is no canonical definition to state claims against.
-/

/-! ## A367977.P15028370226346383492

`2^-n*A367982(n)`
-/

namespace A367977.P15028370226346383492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (-(n : ℤ) : ℤ) * (A367982 n : ℚ)

end

end A367977.P15028370226346383492

/-! ## A367977.P9316947924250726230

`A367982(n)/A000079(n)`
-/

namespace A367977.P9316947924250726230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367982 n : ℚ) / (A000079 n : ℚ)

end

end A367977.P9316947924250726230

/-! ## A367977.P15700686303093459124

`A367982(n)/∑[A011782(n)]`
-/

namespace A367977.P15700686303093459124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367982 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A367977.P15700686303093459124

/-! ## A367977.P950791186914518582

`A367982(n)/Δ[A242475(n)]`
-/

namespace A367977.P950791186914518582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242475 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367982 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A367977.P950791186914518582

/-! ## A367977.P2758417050703378154

`A367982(n)/A011782(n+1)`
-/

namespace A367977.P2758417050703378154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367982 n : ℚ) / (A011782 (n + 1) : ℚ)

end

end A367977.P2758417050703378154

/-!
# A367979: Expansion of e.g.f. exp(-x) / (2 - exp(3*x)).

The programs for A367979, there is no canonical definition to state claims against.
-/

/-! ## A367979.P5080275387297753432

`A110654(A355218(n)-n%2)`
-/

namespace A367979.P5080275387297753432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A355218 n - ((n % 2 : ℕ) : ℤ)).toNat

end

end A367979.P5080275387297753432

/-!
# A367980: Expansion of e.g.f. exp(-2*x) / (2 - exp(3*x)).

The programs for A367980, there is no canonical definition to state claims against.
-/

/-! ## A367980.P2708535680189075575

`A141324(and(A141357(n), A141361(n)))`
-/

namespace A367980.P2708535680189075575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141324 (Int.land (A141357 n) (A141361 n)).toNat

end

end A367980.P2708535680189075575

/-!
# A367981: Expansion of e.g.f. exp(-x) / (2 - exp(4*x)).

The programs for A367981, there is no canonical definition to state claims against.
-/

/-! ## A367981.P14173363852527701011

`(A355220(n)+A057077(2*(n+2)))/2`
-/

namespace A367981.P14173363852527701011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355220 n + A057077 (2 * (n + 2)) : ℚ) / 2

end

end A367981.P14173363852527701011

/-!
# A367982: Expansion of e.g.f. exp(-2*x) / (2 - exp(4*x)).

The programs for A367982, there is no canonical definition to state claims against.
-/

/-! ## A367982.P6081280022465159253

`2^n*A367977(n)`
-/

namespace A367982.P6081280022465159253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A367977 n

end

end A367982.P6081280022465159253

/-! ## A367982.P8927665613765336764

`lcm(A000079(n), A367977(n))`
-/

namespace A367982.P8927665613765336764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A367977 n)

end

end A367982.P8927665613765336764

/-!
# A367985: Number of 4-cycles in the n-cycle complement and (n+1)-wheel complement graph.

The programs for A367985, the canonical program `A367985.P5472025968918316697` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367985 has offset 3).

The definition of A367985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367985.P5472025968918316697

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=3, a(4)=14, a(5)=42, a(6)=99`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A367985

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5472025968918316697.Spec : Prop :=
  ∀ n, P5472025968918316697.a n = A367985 (n + 3)

theorem P5472025968918316697.correct : P5472025968918316697.Spec := by
  intro n
  simp only [A367985, Nat.add_sub_cancel]

end A367985

/-! ## A367985.P17147503812331474560

`∑[A060354(n)-comp[2*(n+2)]]`
-/

namespace A367985.P17147503812331474560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060354 n - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367985.P17147503812331474560

namespace A367985

/-- `∑[A060354(n)-comp[2*(n+2)]]` -/
def P17147503812331474560.Spec : Prop :=
  ∀ n, P17147503812331474560.a n = A367985 (n + 3)

end A367985

/-! ## A367985.P3502427309090103273

`A161680(A161680(n))-A161680(A289207(n))`
-/

namespace A367985.P3502427309090103273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A161680 n).toNat - A161680 (A289207 n).toNat

end

end A367985.P3502427309090103273

namespace A367985

/-- `A161680(A161680(n))-A161680(A289207(n))` -/
def P3502427309090103273.Spec : Prop :=
  ∀ n, P3502427309090103273.a n = A367985 (n + 3)

end A367985

/-!
# A367986: Number of 4-cycles in the n-Mycielski graph.

The programs for A367986, there is no canonical definition to state claims against.
-/

/-! ## A367986.P14834660420763677075

`A011557(2*(n+1))%A242031(A000798(n))`
-/

namespace A367986.P14834660420763677075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011557 (2 * (n + 1))) (A242031 (A000798 n).toNat)

end

end A367986.P14834660420763677075

/-! ## A367986.P3514836685827066273

`A000009(3*n+1)*A338332(A011948(n+6))`
-/

namespace A367986.P3514836685827066273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (3 * n + 1) * A338332 (A011948 (n + 6)).toNat

end

end A367986.P3514836685827066273

/-!
# A367987: The number of square divisors of the largest unitary divisor of n that is a square.

The programs for A367987, the canonical program `A367987.P14204999189059379175` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367987 has offset 1).

The definition of A367987 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367987.P14204999189059379175

`A000005(A071974(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A367987

/-- `A000005(A071974(n+1))` -/
def P14204999189059379175.Spec : Prop :=
  ∀ n, P14204999189059379175.a n = A367987 (n + 1)

theorem P14204999189059379175.correct : P14204999189059379175.Spec := by
  intro n
  simp only [A367987, Nat.add_sub_cancel]

end A367987

/-! ## A367987.P16157732241667879493

`A046951(A350388(n+1))`
-/

namespace A367987.P16157732241667879493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A350388 (n + 1)).toNat

end

end A367987.P16157732241667879493

namespace A367987

/-- `A046951(A350388(n+1))` -/
def P16157732241667879493.Spec : Prop :=
  ∀ n, P16157732241667879493.a n = A367987 (n + 1)

end A367987

/-! ## A367987.P6949004040328521408

`A046951(A071974(n+1)²)`
-/

namespace A367987.P6949004040328521408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A071974 (n + 1) ^ 2).toNat

end

end A367987.P6949004040328521408

namespace A367987

/-- `A046951(A071974(n+1)²)` -/
def P6949004040328521408.Spec : Prop :=
  ∀ n, P6949004040328521408.a n = A367987 (n + 1)

end A367987

/-! ## A367987.P1108824106187067433

`A322483(n+1)/A368470(n+1)`
-/

namespace A367987.P1108824106187067433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322483 (n + 1) : ℚ) / (A368470 (n + 1) : ℚ)

end

end A367987.P1108824106187067433

namespace A367987

/-- `A322483(n+1)/A368470(n+1)` -/
def P1108824106187067433.Spec : Prop :=
  ∀ n, P1108824106187067433.a n = (A367987 (n + 1) : ℚ)

end A367987

/-! ## A367987.P8700814424453859283

`∑{d}[n+1, A008836(#)*A365551((n+1)/#)]`
-/

namespace A367987.P8700814424453859283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A365551 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A367987.P8700814424453859283

namespace A367987

/-- `∑{d}[n+1, A008836(#)*A365551((n+1)/#)]` -/
def P8700814424453859283.Spec : Prop :=
  ∀ n, P8700814424453859283.a n = A367987 (n + 1)

end A367987

/-! ## A367987.P710473013152680471

`∑{d}[n+1, A303915(#)*A365488((n+1)/#)]`
-/

namespace A367987.P710473013152680471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A303915 d * A365488 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A367987.P710473013152680471

namespace A367987

/-- `∑{d}[n+1, A303915(#)*A365488((n+1)/#)]` -/
def P710473013152680471.Spec : Prop :=
  ∀ n, P710473013152680471.a n = A367987 (n + 1)

end A367987

/-! ## A367987.P4366993712904693713

`A046951(A071974(n+1)*A071974(n+1))`
-/

namespace A367987.P4366993712904693713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A071974 (n + 1) * A071974 (n + 1)).toNat

end

end A367987.P4366993712904693713

namespace A367987

/-- `A046951(A071974(n+1)*A071974(n+1))` -/
def P4366993712904693713.Spec : Prop :=
  ∀ n, P4366993712904693713.a n = A367987 (n + 1)

end A367987

/-! ## A367987.P11613968444738216933

`A322483(n+1)/A322483(A350389(n+1))`
-/

namespace A367987.P11613968444738216933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322483 (n + 1) : ℚ) / (A322483 (A350389 (n + 1)).toNat : ℚ)

end

end A367987.P11613968444738216933

namespace A367987

/-- `A322483(n+1)/A322483(A350389(n+1))` -/
def P11613968444738216933.Spec : Prop :=
  ∀ n, P11613968444738216933.a n = (A367987 (n + 1) : ℚ)

end A367987

/-! ## A367987.P10865854707568435086

`A368470(A350390(n+1)/A350389(n+1))`
-/

namespace A367987.P10865854707568435086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368470 (SequenceMachineLib.roundAway ((A350390 (n + 1) : ℚ) / (A350389 (n + 1) : ℚ))).toNat

end

end A367987.P10865854707568435086

namespace A367987

/-- `A368470(A350390(n+1)/A350389(n+1))` -/
def P10865854707568435086.Spec : Prop :=
  ∀ n, P10865854707568435086.a n = A367987 (n + 1)

end A367987

/-! ## A367987.P12217059852963595636

`A368470(A350390(n+1))/A368470(n+1)`
-/

namespace A367987.P12217059852963595636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368470 (A350390 (n + 1)).toNat : ℚ) / (A368470 (n + 1) : ℚ)

end

end A367987.P12217059852963595636

namespace A367987

/-- `A368470(A350390(n+1))/A368470(n+1)` -/
def P12217059852963595636.Spec : Prop :=
  ∀ n, P12217059852963595636.a n = (A367987 (n + 1) : ℚ)

end A367987

/-! ## A367987.P2925173252607772474

`A055642(A365401(n+1)²²)`
-/

namespace A367987.P2925173252607772474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((A365401 (n + 1) ^ 2) ^ 2).toNat

end

end A367987.P2925173252607772474

namespace A367987

/-- `A055642(A365401(n+1)²²)` -/
def P2925173252607772474.Spec : Prop :=
  ∀ n, P2925173252607772474.a n = A367987 (n + 1)

end A367987

/-! ## A367987.P8168523378516768661

`A368470(A350389(n+1)*A350390(n+1))`
-/

namespace A367987.P8168523378516768661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368470 (A350389 (n + 1) * A350390 (n + 1)).toNat

end

end A367987.P8168523378516768661

namespace A367987

/-- `A368470(A350389(n+1)*A350390(n+1))` -/
def P8168523378516768661.Spec : Prop :=
  ∀ n, P8168523378516768661.a n = A367987 (n + 1)

end A367987

/-!
# A367988: The sum of the divisors of the square root of the largest unitary divisor of n that is a square.

The programs for A367988, the canonical program `A367988.P14682528638246534316` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367988 has offset 1).

The definition of A367988 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071974, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367988.P14682528638246534316

`A000203(A071974(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A367988

/-- `A000203(A071974(n+1))` -/
def P14682528638246534316.Spec : Prop :=
  ∀ n, P14682528638246534316.a n = A367988 (n + 1)

theorem P14682528638246534316.correct : P14682528638246534316.Spec := by
  intro n
  simp only [A367988, Nat.add_sub_cancel]

end A367988

/-! ## A367988.P2322614374744719870

`∑{d}[sqrt(A350388(n+1)), #]`
-/

namespace A367988.P2322614374744719870
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A350388 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A367988.P2322614374744719870

namespace A367988

/-- `∑{d}[sqrt(A350388(n+1)), #]` -/
def P2322614374744719870.Spec : Prop :=
  ∀ n, (P2322614374744719870.a n : ℤ) = A367988 (n + 1)

end A367988

/-! ## A367988.P9420088244142876531

`A069290(A350388(n+1))`
-/

namespace A367988.P9420088244142876531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A350388 (n + 1)).toNat

end

end A367988.P9420088244142876531

namespace A367988

/-- `A069290(A350388(n+1))` -/
def P9420088244142876531.Spec : Prop :=
  ∀ n, P9420088244142876531.a n = A367988 (n + 1)

end A367988

/-! ## A367988.P2749777728598305522

`A000203(sqrt(A350388(n+1)))`
-/

namespace A367988.P2749777728598305522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A350388 (n + 1) : ℝ))).toNat

end

end A367988.P2749777728598305522

namespace A367988

/-- `A000203(sqrt(A350388(n+1)))` -/
def P2749777728598305522.Spec : Prop :=
  ∀ n, P2749777728598305522.a n = A367988 (n + 1)

end A367988

/-! ## A367988.P1050041037591380566

`A000203(A019554(n+1)/A071975(n+1))`
-/

namespace A367988.P1050041037591380566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A019554 (n + 1) : ℚ) / (A071975 (n + 1) : ℚ))).toNat

end

end A367988.P1050041037591380566

namespace A367988

/-- `A000203(A019554(n+1)/A071975(n+1))` -/
def P1050041037591380566.Spec : Prop :=
  ∀ n, P1050041037591380566.a n = A367988 (n + 1)

end A367988

/-!
# A367989: The sum of square divisors of the largest unitary divisor of n that is a square.

The programs for A367989, the canonical program `A367989.P10767245961528974005` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367989 has offset 1).

The definition of A367989 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A350388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367989.P10767245961528974005

`A035316(A350388(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A367989

/-- `A035316(A350388(n+1))` -/
def P10767245961528974005.Spec : Prop :=
  ∀ n, P10767245961528974005.a n = A367989 (n + 1)

theorem P10767245961528974005.correct : P10767245961528974005.Spec := by
  intro n
  simp only [A367989, Nat.add_sub_cancel]

end A367989

/-! ## A367989.P16156380363783296465

`∑{d}[A071974(n+1), #²]`
-/

namespace A367989.P16156380363783296465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A367989.P16156380363783296465

namespace A367989

/-- `∑{d}[A071974(n+1), #²]` -/
def P16156380363783296465.Spec : Prop :=
  ∀ n, (P16156380363783296465.a n : ℤ) = A367989 (n + 1)

end A367989

/-! ## A367989.P13310641118183950015

`A001157(A071974(n+1))`
-/

namespace A367989.P13310641118183950015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A071974 (n + 1)).toNat

end

end A367989.P13310641118183950015

namespace A367989

/-- `A001157(A071974(n+1))` -/
def P13310641118183950015.Spec : Prop :=
  ∀ n, P13310641118183950015.a n = A367989 (n + 1)

end A367989

/-! ## A367989.P240043340969754542

`A035316((n+1)/A350389(n+1))`
-/

namespace A367989.P240043340969754542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350389 (n + 1) : ℚ))).toNat

end

end A367989.P240043340969754542

namespace A367989

/-- `A035316((n+1)/A350389(n+1))` -/
def P240043340969754542.Spec : Prop :=
  ∀ n, P240043340969754542.a n = A367989 (n + 1)

end A367989

/-! ## A367989.P17698063160946605908

`A035316((n+1)/A368167(n+1))`
-/

namespace A367989.P17698063160946605908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368167 (n + 1) : ℚ))).toNat

end

end A367989.P17698063160946605908

namespace A367989

/-- `A035316((n+1)/A368167(n+1))` -/
def P17698063160946605908.Spec : Prop :=
  ∀ n, P17698063160946605908.a n = A367989 (n + 1)

end A367989

/-!
# A367990: Sum of the squarefree divisors of the largest unitary divisor of n that is a square.

The programs for A367990, the canonical program `A367990.P363802912855232684` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367990 has offset 1).

The definition of A367990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367990.P363802912855232684

`A000203(A336643(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A367990

/-- `A000203(A336643(n+1))` -/
def P363802912855232684.Spec : Prop :=
  ∀ n, P363802912855232684.a n = A367990 (n + 1)

theorem P363802912855232684.correct : P363802912855232684.Spec := by
  intro n
  simp only [A367990, Nat.add_sub_cancel]

end A367990

/-! ## A367990.P5840908138514484968

`A048250(A350388(n+1))`
-/

namespace A367990.P5840908138514484968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A350388 (n + 1)).toNat

end

end A367990.P5840908138514484968

namespace A367990

/-- `A048250(A350388(n+1))` -/
def P5840908138514484968.Spec : Prop :=
  ∀ n, P5840908138514484968.a n = A367990 (n + 1)

end A367990

/-! ## A367990.P3185353967799021071

`A048250(n+1)/A367991(n+1)`
-/

namespace A367990.P3185353967799021071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A367991 (n + 1) : ℚ)

end

end A367990.P3185353967799021071

namespace A367990

/-- `A048250(n+1)/A367991(n+1)` -/
def P3185353967799021071.Spec : Prop :=
  ∀ n, P3185353967799021071.a n = (A367990 (n + 1) : ℚ)

end A367990

/-! ## A367990.P2169429092994576191

`∑{d}[∏{p}[n+1, #^val(n+1, #²)]²/floor((n+1)/∏{p}[n+1, #]), #]`
-/

namespace A367990.P2169429092994576191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℚ) / (⌊(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)⌋ : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A367990.P2169429092994576191

namespace A367990

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)]²/floor((n+1)/∏{p}[n+1, #]), #]` -/
def P2169429092994576191.Spec : Prop :=
  ∀ n, (P2169429092994576191.a n : ℤ) = A367990 (n + 1)

end A367990

/-! ## A367990.P7503145057974393086

`∏{p}[A071974(n+1), #+1]`
-/

namespace A367990.P7503145057974393086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A367990.P7503145057974393086

namespace A367990

/-- `∏{p}[A071974(n+1), #+1]` -/
def P7503145057974393086.Spec : Prop :=
  ∀ n, (P7503145057974393086.a n : ℤ) = A367990 (n + 1)

end A367990

/-! ## A367990.P16300463084767403416

`∏{p}[A331738(n+1), #+1]`
-/

namespace A367990.P16300463084767403416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A367990.P16300463084767403416

namespace A367990

/-- `∏{p}[A331738(n+1), #+1]` -/
def P16300463084767403416.Spec : Prop :=
  ∀ n, (P16300463084767403416.a n : ℤ) = A367990 (n + 1)

end A367990

/-! ## A367990.P6927611470428367086

`A069290(A066990(n+1))`
-/

namespace A367990.P6927611470428367086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A066990 (n + 1)).toNat

end

end A367990.P6927611470428367086

namespace A367990

/-- `A069290(A066990(n+1))` -/
def P6927611470428367086.Spec : Prop :=
  ∀ n, P6927611470428367086.a n = A367990 (n + 1)

end A367990

/-! ## A367990.P14703602149956049107

`A295295(A365296(n+1))`
-/

namespace A367990.P14703602149956049107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295295 (A365296 (n + 1)).toNat

end

end A367990.P14703602149956049107

namespace A367990

/-- `A295295(A365296(n+1))` -/
def P14703602149956049107.Spec : Prop :=
  ∀ n, P14703602149956049107.a n = A367990 (n + 1)

end A367990

/-! ## A367990.P5202439523434709245

`A033634(A336643(n+1)²)`
-/

namespace A367990.P5202439523434709245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A336643 (n + 1) ^ 2).toNat

end

end A367990.P5202439523434709245

namespace A367990

/-- `A033634(A336643(n+1)²)` -/
def P5202439523434709245.Spec : Prop :=
  ∀ n, P5202439523434709245.a n = A367990 (n + 1)

end A367990

/-! ## A367990.P17489540803349030241

`A048250(A336643(n+1)²)`
-/

namespace A367990.P17489540803349030241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A336643 (n + 1) ^ 2).toNat

end

end A367990.P17489540803349030241

namespace A367990

/-- `A048250(A336643(n+1)²)` -/
def P17489540803349030241.Spec : Prop :=
  ∀ n, P17489540803349030241.a n = A367990 (n + 1)

end A367990

/-! ## A367990.P14306448449042489926

`A117658(A336643(n+1)²)`
-/

namespace A367990.P14306448449042489926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117658 (A336643 (n + 1) ^ 2).toNat

end

end A367990.P14306448449042489926

namespace A367990

/-- `A117658(A336643(n+1)²)` -/
def P14306448449042489926.Spec : Prop :=
  ∀ n, P14306448449042489926.a n = A367990 (n + 1)

end A367990

/-! ## A367990.P9834077693806006952

`A365337(A336643(n+1)²)`
-/

namespace A367990.P9834077693806006952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365337 (A336643 (n + 1) ^ 2).toNat

end

end A367990.P9834077693806006952

namespace A367990

/-- `A365337(A336643(n+1)²)` -/
def P9834077693806006952.Spec : Prop :=
  ∀ n, P9834077693806006952.a n = A367990 (n + 1)

end A367990

/-! ## A367990.P1286415965489005257

`A367988(A336643(n+1)²)`
-/

namespace A367990.P1286415965489005257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367988 (A336643 (n + 1) ^ 2).toNat

end

end A367990.P1286415965489005257

namespace A367990

/-- `A367988(A336643(n+1)²)` -/
def P1286415965489005257.Spec : Prop :=
  ∀ n, P1286415965489005257.a n = A367990 (n + 1)

end A367990

/-! ## A367990.P12918724412822462039

`A000203((n+1)/A350390(n+1))`
-/

namespace A367990.P12918724412822462039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350390 (n + 1) : ℚ))).toNat

end

end A367990.P12918724412822462039

namespace A367990

/-- `A000203((n+1)/A350390(n+1))` -/
def P12918724412822462039.Spec : Prop :=
  ∀ n, P12918724412822462039.a n = A367990 (n + 1)

end A367990

/-! ## A367990.P4030336553063997478

`A000203(A356191(n+1)/(n+1))`
-/

namespace A367990.P4030336553063997478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A356191 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A367990.P4030336553063997478

namespace A367990

/-- `A000203(A356191(n+1)/(n+1))` -/
def P4030336553063997478.Spec : Prop :=
  ∀ n, P4030336553063997478.a n = A367990 (n + 1)

end A367990

/-! ## A367990.P13111504345431112147

`A033634((n+1)/A350390(n+1))`
-/

namespace A367990.P13111504345431112147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350390 (n + 1) : ℚ))).toNat

end

end A367990.P13111504345431112147

namespace A367990

/-- `A033634((n+1)/A350390(n+1))` -/
def P13111504345431112147.Spec : Prop :=
  ∀ n, P13111504345431112147.a n = A367990 (n + 1)

end A367990

/-! ## A367990.P18000465340917993818

`A034448((n+1)/A350390(n+1))`
-/

namespace A367990.P18000465340917993818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350390 (n + 1) : ℚ))).toNat

end

end A367990.P18000465340917993818

namespace A367990

/-- `A034448((n+1)/A350390(n+1))` -/
def P18000465340917993818.Spec : Prop :=
  ∀ n, P18000465340917993818.a n = A367990 (n + 1)

end A367990

/-! ## A367990.P5422165978581888479

`A034448(A356191(n+1)/(n+1))`
-/

namespace A367990.P5422165978581888479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((A356191 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A367990.P5422165978581888479

namespace A367990

/-- `A034448(A356191(n+1)/(n+1))` -/
def P5422165978581888479.Spec : Prop :=
  ∀ n, P5422165978581888479.a n = A367990 (n + 1)

end A367990

/-! ## A367990.P3302642899036276975

`A384556(n+1)/A007947(n+1)`
-/

namespace A367990.P3302642899036276975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384556 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A367990.P3302642899036276975

namespace A367990

/-- `A384556(n+1)/A007947(n+1)` -/
def P3302642899036276975.Spec : Prop :=
  ∀ n, P3302642899036276975.a n = (A367990 (n + 1) : ℚ)

end A367990

/-! ## A367990.P11357871379265381717

`A365174((n+1)/A350390(n+1))`
-/

namespace A367990.P11357871379265381717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365174 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350390 (n + 1) : ℚ))).toNat

end

end A367990.P11357871379265381717

namespace A367990

/-- `A365174((n+1)/A350390(n+1))` -/
def P11357871379265381717.Spec : Prop :=
  ∀ n, P11357871379265381717.a n = A367990 (n + 1)

end A367990

/-!
# A367991: The sum of the divisors of the squarefree part of n.

The programs for A367991, the canonical program `A367991.P5779548576678775471` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367991 has offset 1).

The definition of A367991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367991.P3104304211931720064

`A000203(A007913(n+1))`
-/

namespace A367991.P3104304211931720064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007913 (n + 1)).toNat

end

end A367991.P3104304211931720064

namespace A367991

/-- `A000203(A007913(n+1))` -/
def P3104304211931720064.Spec : Prop :=
  ∀ n, P3104304211931720064.a n = A367991 (n + 1)

end A367991

/-! ## A367991.P5779548576678775471

`A048250(n+1)/A367990(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A367991

/-- `A048250(n+1)/A367990(n+1)` -/
def P5779548576678775471.Spec : Prop :=
  ∀ n, P5779548576678775471.a n = (A367991 (n + 1) : ℚ)

end A367991

/-! ## A367991.P600372733271342700

`∑{d}[Δ[A069891(n)], #]`
-/

namespace A367991.P600372733271342700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A367991.P600372733271342700

namespace A367991

/-- `∑{d}[Δ[A069891(n)], #]` -/
def P600372733271342700.Spec : Prop :=
  ∀ n, (P600372733271342700.a n : ℤ) = A367991 (n + 1)

end A367991

/-! ## A367991.P3599024087187743031

`∑{d}[sqrt(A055491(n+1)), #]`
-/

namespace A367991.P3599024087187743031
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055491 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A367991.P3599024087187743031

namespace A367991

/-- `∑{d}[sqrt(A055491(n+1)), #]` -/
def P3599024087187743031.Spec : Prop :=
  ∀ n, (P3599024087187743031.a n : ℤ) = A367991 (n + 1)

end A367991

/-! ## A367991.P15232367442151847852

`∏{p}[A071975(n+1), #+1]`
-/

namespace A367991.P15232367442151847852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A367991.P15232367442151847852

namespace A367991

/-- `∏{p}[A071975(n+1), #+1]` -/
def P15232367442151847852.Spec : Prop :=
  ∀ n, (P15232367442151847852.a n : ℤ) = A367991 (n + 1)

end A367991

/-! ## A367991.P1838123861060122289

`∏{p}[A350389(n+1), #+1]`
-/

namespace A367991.P1838123861060122289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 1)

end

end A367991.P1838123861060122289

namespace A367991

/-- `∏{p}[A350389(n+1), #+1]` -/
def P1838123861060122289.Spec : Prop :=
  ∀ n, (P1838123861060122289.a n : ℤ) = A367991 (n + 1)

end A367991

/-! ## A367991.P1419347685372059847

`A000203(Δ[A069891(n)])`
-/

namespace A367991.P1419347685372059847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat

end

end A367991.P1419347685372059847

namespace A367991

/-- `A000203(Δ[A069891(n)])` -/
def P1419347685372059847.Spec : Prop :=
  ∀ n, P1419347685372059847.a n = A367991 (n + 1)

end A367991

/-! ## A367991.P2344370697468732250

`A069915(Δ[A069891(n)])`
-/

namespace A367991.P2344370697468732250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069915 (f1 (n + 1) - f1 n).toNat

end

end A367991.P2344370697468732250

namespace A367991

/-- `A069915(Δ[A069891(n)])` -/
def P2344370697468732250.Spec : Prop :=
  ∀ n, P2344370697468732250.a n = A367991 (n + 1)

end A367991

/-! ## A367991.P4402054892344446556

`A048250(A071975(n+1))`
-/

namespace A367991.P4402054892344446556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A071975 (n + 1)).toNat

end

end A367991.P4402054892344446556

namespace A367991

/-- `A048250(A071975(n+1))` -/
def P4402054892344446556.Spec : Prop :=
  ∀ n, P4402054892344446556.a n = A367991 (n + 1)

end A367991

/-! ## A367991.P6575986365561447291

`A092261(A038387(n+1))`
-/

namespace A367991.P6575986365561447291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (A038387 (n + 1)).toNat

end

end A367991.P6575986365561447291

namespace A367991

/-- `A092261(A038387(n+1))` -/
def P6575986365561447291.Spec : Prop :=
  ∀ n, P6575986365561447291.a n = A367991 (n + 1)

end A367991

/-! ## A367991.P16422480731056634852

`A092261(A066990(n+1))`
-/

namespace A367991.P16422480731056634852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (A066990 (n + 1)).toNat

end

end A367991.P16422480731056634852

namespace A367991

/-- `A092261(A066990(n+1))` -/
def P16422480731056634852.Spec : Prop :=
  ∀ n, P16422480731056634852.a n = A367991 (n + 1)

end A367991

/-! ## A367991.P14435647680166167089

`A048250(A350389(n+1))`
-/

namespace A367991.P14435647680166167089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A350389 (n + 1)).toNat

end

end A367991.P14435647680166167089

namespace A367991

/-- `A048250(A350389(n+1))` -/
def P14435647680166167089.Spec : Prop :=
  ∀ n, P14435647680166167089.a n = A367991 (n + 1)

end A367991

/-! ## A367991.P1679536127027782117

`A092261(A365296(n+1))`
-/

namespace A367991.P1679536127027782117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (A365296 (n + 1)).toNat

end

end A367991.P1679536127027782117

namespace A367991

/-- `A092261(A365296(n+1))` -/
def P1679536127027782117.Spec : Prop :=
  ∀ n, P1679536127027782117.a n = A367991 (n + 1)

end A367991

/-! ## A367991.P13612458654248199232

`A000203(sqrt(A055491(n+1)))`
-/

namespace A367991.P13612458654248199232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A055491 (n + 1) : ℝ))).toNat

end

end A367991.P13612458654248199232

namespace A367991

/-- `A000203(sqrt(A055491(n+1)))` -/
def P13612458654248199232.Spec : Prop :=
  ∀ n, P13612458654248199232.a n = A367991 (n + 1)

end A367991

/-! ## A367991.P13999412342363663880

`∑{d}[A366244(A053165(n+1)), #]`
-/

namespace A367991.P13999412342363663880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366244 (A053165 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A367991.P13999412342363663880

namespace A367991

/-- `∑{d}[A366244(A053165(n+1)), #]` -/
def P13999412342363663880.Spec : Prop :=
  ∀ n, (P13999412342363663880.a n : ℤ) = A367991 (n + 1)

end A367991

/-! ## A367991.P9079148199036339815

`A000203(n+1-A326128(n+1))`
-/

namespace A367991.P9079148199036339815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1 : ℤ) - A326128 (n + 1)).toNat

end

end A367991.P9079148199036339815

namespace A367991

/-- `A000203(n+1-A326128(n+1))` -/
def P9079148199036339815.Spec : Prop :=
  ∀ n, P9079148199036339815.a n = A367991 (n + 1)

end A367991

/-! ## A367991.P14928620424282068002

`A048250(n+1-A326128(n+1))`
-/

namespace A367991.P14928620424282068002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 ((n + 1 : ℤ) - A326128 (n + 1)).toNat

end

end A367991.P14928620424282068002

namespace A367991

/-- `A048250(n+1-A326128(n+1))` -/
def P14928620424282068002.Spec : Prop :=
  ∀ n, P14928620424282068002.a n = A367991 (n + 1)

end A367991

/-! ## A367991.P5490038376243741901

`A000203((n+1)/A008833(n+1))`
-/

namespace A367991.P5490038376243741901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A367991.P5490038376243741901

namespace A367991

/-- `A000203((n+1)/A008833(n+1))` -/
def P5490038376243741901.Spec : Prop :=
  ∀ n, P5490038376243741901.a n = A367991 (n + 1)

end A367991

/-! ## A367991.P2753412400699633090

`A033634((n+1)/A008833(n+1))`
-/

namespace A367991.P2753412400699633090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A008833 (n + 1) : ℚ))).toNat

end

end A367991.P2753412400699633090

namespace A367991

/-- `A033634((n+1)/A008833(n+1))` -/
def P2753412400699633090.Spec : Prop :=
  ∀ n, P2753412400699633090.a n = A367991 (n + 1)

end A367991

/-!
# A367992: Smallest nonprime that is the n-th prime plus a multiple of the (n-1)-st primorial.

The programs for A367992, there is no canonical definition to state claims against.
-/

/-! ## A367992.P7627117583128281865

`A278232(A143010(n))+A053251(3*n+4)`
-/

namespace A367992.P7627117583128281865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278232 (A143010 n).toNat + A053251 (3 * n + 4)

end

end A367992.P7627117583128281865

/-!
# A367993: Number of 4-cycles in the n X n white bishop graph.

The programs for A367993, the canonical program `A367993.P9570335076320147374` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367993 has offset 2).

The definition of A367993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367993.P9570335076320147374

`(n+1)²*(2*(n+2)²-4*(n+2)-3+3*(-1)^(n+2))/24`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A367993

/-- `(n+1)²*(2*(n+2)²-4*(n+2)-3+3*(-1)^(n+2))/24` -/
def P9570335076320147374.Spec : Prop :=
  ∀ n, P9570335076320147374.a n = (A367993 (n + 2) : ℚ)

end A367993

/-! ## A367993.P7101742067486859014

`(n+1)*∑[∑[2*n-lcm(2, n)]]`
-/

namespace A367993.P7101742067486859014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.lcm 2 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A367993.P7101742067486859014

namespace A367993

/-- `(n+1)*∑[∑[2*n-lcm(2, n)]]` -/
def P7101742067486859014.Spec : Prop :=
  ∀ n, P7101742067486859014.a n = A367993 (n + 2)

end A367993

/-! ## A367993.P4678928173251621367

`(n+1)*∑[∑[n*and(1, n+1)]]`
-/

namespace A367993.P4678928173251621367
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A367993.P4678928173251621367

namespace A367993

/-- `(n+1)*∑[∑[n*and(1, n+1)]]` -/
def P4678928173251621367.Spec : Prop :=
  ∀ n, (P4678928173251621367.a n : ℤ) = A367993 (n + 2)

end A367993

/-! ## A367993.P17101149415019236812

`(n+1)*∑[A110660(n)]`
-/

namespace A367993.P17101149415019236812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A367993.P17101149415019236812

namespace A367993

/-- `(n+1)*∑[A110660(n)]` -/
def P17101149415019236812.Spec : Prop :=
  ∀ n, P17101149415019236812.a n = A367993 (n + 2)

end A367993

/-! ## A367993.P8579750348121296454

`(n+1)*(A361275(n+1)-1)`
-/

namespace A367993.P8579750348121296454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A361275 (n + 1) - 1)

end

end A367993.P8579750348121296454

namespace A367993

/-- `(n+1)*(A361275(n+1)-1)` -/
def P8579750348121296454.Spec : Prop :=
  ∀ n, P8579750348121296454.a n = A367993 (n + 2)

end A367993

/-! ## A367993.P10617034212575595

`A294286(n+1)+A002415(n)`
-/

namespace A367993.P10617034212575595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294286 (n + 1) + A002415 n

end

end A367993.P10617034212575595

namespace A367993

/-- `A294286(n+1)+A002415(n)` -/
def P10617034212575595.Spec : Prop :=
  ∀ n, P10617034212575595.a n = A367993 (n + 2)

end A367993

/-! ## A367993.P15129322969033284283

`(n+1)*A006584(n+1)`
-/

namespace A367993.P15129322969033284283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006584 (n + 1)

end

end A367993.P15129322969033284283

namespace A367993

/-- `(n+1)*A006584(n+1)` -/
def P15129322969033284283.Spec : Prop :=
  ∀ n, P15129322969033284283.a n = A367993 (n + 2)

end A367993

/-! ## A367993.P3034175531039466331

`A002415(n+1)-A142150(n+1)²`
-/

namespace A367993.P3034175531039466331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) - A142150 (n + 1) ^ 2

end

end A367993.P3034175531039466331

namespace A367993

/-- `A002415(n+1)-A142150(n+1)²` -/
def P3034175531039466331.Spec : Prop :=
  ∀ n, P3034175531039466331.a n = A367993 (n + 2)

end A367993

/-! ## A367993.P16586956327795413208

`(n+1)*A280186(n+2)`
-/

namespace A367993.P16586956327795413208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A280186 (n + 2)

end

end A367993.P16586956327795413208

namespace A367993

/-- `(n+1)*A280186(n+2)` -/
def P16586956327795413208.Spec : Prop :=
  ∀ n, P16586956327795413208.a n = A367993 (n + 2)

end A367993

/-! ## A367993.P6881293170853014245

`∑[A295287(2*n+1)]`
-/

namespace A367993.P6881293170853014245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295287 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367993.P6881293170853014245

namespace A367993

/-- `∑[A295287(2*n+1)]` -/
def P6881293170853014245.Spec : Prop :=
  ∀ n, P6881293170853014245.a n = A367993 (n + 2)

end A367993

/-! ## A367993.P4439142537823853173

`∑[A295292(2*n+1)]`
-/

namespace A367993.P4439142537823853173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295292 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367993.P4439142537823853173

namespace A367993

/-- `∑[A295292(2*n+1)]` -/
def P4439142537823853173.Spec : Prop :=
  ∀ n, P4439142537823853173.a n = A367993 (n + 2)

end A367993

/-! ## A367993.P6598093193760880823

`∑[A295318(2*n+1)]`
-/

namespace A367993.P6598093193760880823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295318 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367993.P6598093193760880823

namespace A367993

/-- `∑[A295318(2*n+1)]` -/
def P6598093193760880823.Spec : Prop :=
  ∀ n, P6598093193760880823.a n = A367993 (n + 2)

end A367993

/-! ## A367993.P18445181469212022796

`∑[A295320(2*n+1)]`
-/

namespace A367993.P18445181469212022796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295320 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367993.P18445181469212022796

namespace A367993

/-- `∑[A295320(2*n+1)]` -/
def P18445181469212022796.Spec : Prop :=
  ∀ n, P18445181469212022796.a n = A367993 (n + 2)

end A367993

/-! ## A367993.P3635503468081749035

`∑[∑[A071045(n²)]]`
-/

namespace A367993.P3635503468081749035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367993.P3635503468081749035

namespace A367993

/-- `∑[∑[A071045(n²)]]` -/
def P3635503468081749035.Spec : Prop :=
  ∀ n, P3635503468081749035.a n = A367993 (n + 2)

end A367993

/-!
# A367995: a(n) is the denominator of the probability that the free polyomino with binary code A246521(n+1) appears as the image of a simple random walk on the square lattice.

The programs for A367995, there is no canonical definition to state claims against.
-/

/-! ## A367995.P4043687878058496082

`A367994(n+1)/(A368000(n+1)/A368001(n+1)*A335573(n+2))`
-/

namespace A367995.P4043687878058496082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367994 (n + 1) : ℚ) / ((A368000 (n + 1) : ℚ) / (A368001 (n + 1) : ℚ) * (A335573 (n + 2) : ℚ))

end

end A367995.P4043687878058496082

/-! ## A367995.P5340955415061826290

`A000265(A368001(n+1))`
-/

namespace A367995.P5340955415061826290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A368001 (n + 1)).toNat

end

end A367995.P5340955415061826290

/-! ## A367995.P12553771967066938562

`A117358(lcm(8, A368001(n+1)))`
-/

namespace A367995.P12553771967066938562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (Int.lcm 8 (A368001 (n + 1)))

end

end A367995.P12553771967066938562

/-!
# A367996: Numerator of the least probability that a particular free polyomino with n cells appears as the image of a simple random walk on the square lattice.

The programs for A367996, there is no canonical definition to state claims against.
-/

/-! ## A367996.P15010842833123449427

`A133170(A280194(n))+1`
-/

namespace A367996.P15010842833123449427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133170 (A280194 n).toNat + 1

end

end A367996.P15010842833123449427

/-! ## A367996.P9130395165193964208

`A359907(A218002(n)+2)`
-/

namespace A367996.P9130395165193964208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359907 (A218002 n + 2).toNat

end

end A367996.P9130395165193964208

/-!
# A367998: Numerator of the greatest probability that a particular free polyomino with n cells appears as the image of a simple random walk on the square lattice.

The programs for A367998, there is no canonical definition to state claims against.
-/

/-! ## A367998.P7311062312868856935

`A360245(n!)`
-/

namespace A367998.P7311062312868856935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360245 (Nat.factorial n)

end

end A367998.P7311062312868856935

/-!
# A367999: Denominator of the greatest probability that a particular free polyomino with n cells appears as the image of a simple random walk on the square lattice.

The programs for A367999, there is no canonical definition to state claims against.
-/

/-! ## A367999.P15814457459684334548

`A000265(A368005(n+1))`
-/

namespace A367999.P15814457459684334548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A368005 (n + 1)).toNat

end

end A367999.P15814457459684334548

/-! ## A367999.P12180737840962906745

`A367995(A135491(n)^A307972(n))`
-/

namespace A367999.P12180737840962906745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367995 (SequenceMachineLib.roundAway ((A135491 n : ℚ) ^ (A307972 n : ℤ))).toNat

end

end A367999.P12180737840962906745

