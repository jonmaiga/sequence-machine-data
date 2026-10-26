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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A261900: Values of |G-hat_3(n)|, a sum involving Stirling numbers of the second kind.

The programs for A261900, there is no canonical definition to state claims against.
-/

/-! ## A261900.P15175672291722747622

`A024413(n^n)`
-/

namespace A261900.P15175672291722747622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024413 (n ^ n)

end

end A261900.P15175672291722747622

/-!
# A261904: Largest x such that n can be written as n = x^2 + y^2 + z^2 with x >= y >= z >= 0, or -1 if no such x exists.

The programs for A261904, there is no canonical definition to state claims against.
-/

/-! ## A261904.P16303846002523553129

`or(A064876(n), A132380(A000213(n)))`
-/

namespace A261904.P16303846002523553129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064876 n) (A132380 (A000213 n).toNat)

end

end A261904.P16303846002523553129

/-! ## A261904.P14784620571173450875

`or(A025458(A038754(n)), A261915(n))`
-/

namespace A261904.P14784620571173450875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025458 (A038754 n).toNat) (A261915 n)

end

end A261904.P14784620571173450875

/-! ## A261904.P9441115111770365501

`or(A010051(A034734(n+1)), A261915(n))`
-/

namespace A261904.P9441115111770365501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A034734 (n + 1)).toNat) (A261915 n)

end

end A261904.P9441115111770365501

/-! ## A261904.P6173940341628528412

`A261915(n)+A193095(A122941(2*n+1))`
-/

namespace A261904.P6173940341628528412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261915 n + A193095 (A122941 (2 * n + 1)).toNat

end

end A261904.P6173940341628528412

/-! ## A261904.P796049351985953184

`or(A085983(A027187(2*n+3)), A261915(n))`
-/

namespace A261904.P796049351985953184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085983 (A027187 (2 * n + 3)).toNat) (A261915 n)

end

end A261904.P796049351985953184

/-!
# A261905: Numbers m with the property that there is no number k in the range ceiling(sqrt(3m)) <= k <= floor(sqrt(4m)) with k == m (mod 2).

The programs for A261905, there is no canonical definition to state claims against.
-/

/-! ## A261905.P2557074428655234392

`eq[A232753(n+1), A307531(n)]`
-/

namespace A261905.P2557074428655234392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307531 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261905.P2557074428655234392

/-! ## A261905.P491676298175969176

`eq[A000267(n), A086520(3*n)]`
-/

namespace A261905.P491676298175969176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261905.P491676298175969176

/-! ## A261905.P9014897378997177923

`eq[A003056(A026351(n)), A307531(n)]`
-/

namespace A261905.P9014897378997177923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A026351 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307531 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261905.P9014897378997177923

/-! ## A261905.P17567609758657500379

`eq[A004173(3*n), A004173(A047398(n+1))]`
-/

namespace A261905.P17567609758657500379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004173 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004173 (A047398 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261905.P17567609758657500379

/-! ## A261905.P16272419905111950437

`lt[A301564(A301564(3*n+1)), A156901(3*n+1)]`
-/

namespace A261905.P16272419905111950437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301564 (A301564 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156901 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261905.P16272419905111950437

/-!
# A261906: Numbers that are the sum of two nonzero palindromes.

The programs for A261906, there is no canonical definition to state claims against.
-/

/-! ## A261906.P5985145575523018391

`lt[0, A319468(n)]`
-/

namespace A261906.P5985145575523018391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319468 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A261906.P5985145575523018391

/-! ## A261906.P13393825991234972599

`comp[A319477(n+1)]`
-/

namespace A261906.P13393825991234972599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A261906.P13393825991234972599

/-! ## A261906.P10314053336675180980

`∑[or(2, A067898(n+1))]-n`
-/

namespace A261906.P10314053336675180980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A067898 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A261906.P10314053336675180980

/-! ## A261906.P8146907361962018240

`lt[0, A319453(A133263(n))]`
-/

namespace A261906.P8146907361962018240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319453 (A133263 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A261906.P8146907361962018240

/-! ## A261906.P12105268095034572364

`lt[A136522(n), A260254(n)]`
-/

namespace A261906.P12105268095034572364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261906.P12105268095034572364

/-! ## A261906.P14450704222307430708

`eq[0, A067898(A319468(n)²)]`
-/

namespace A261906.P14450704222307430708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067898 (A319468 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261906.P14450704222307430708

/-! ## A261906.P11205854617346762837

`eq[1, A040790(A319468(n)²)]`
-/

namespace A261906.P11205854617346762837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 (A319468 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261906.P11205854617346762837

/-! ## A261906.P18146301333690928782

`eq[1, A178334(A319468(n)²)]`
-/

namespace A261906.P18146301333690928782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A319468 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261906.P18146301333690928782

/-! ## A261906.P14850496011290330177

`comp[eq[1, A000005(A319468(n)+1)]]`
-/

namespace A261906.P14850496011290330177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A319468 n + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A261906.P14850496011290330177

/-! ## A261906.P5932161978784050785

`eq[2, A000005(a(A319468(n))+1)]` with `a(0)=3, a(1)=1`
-/

namespace A261906.P5932161978784050785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A000005 (f2 (A319468 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261906.P5932161978784050785

/-! ## A261906.P3773025292341232169

`eq[1, A194321((6-A319468(n))²+1)]`
-/

namespace A261906.P3773025292341232169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194321 ((6 - A319468 n) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261906.P3773025292341232169

/-! ## A261906.P972634836445631982

`eq[A000038(n), A025926(A319468(n))]`
-/

namespace A261906.P972634836445631982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 (A319468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261906.P972634836445631982

/-! ## A261906.P4650203381723606174

`eq[A040790(A319468(n)), A057427(n)]`
-/

namespace A261906.P4650203381723606174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 (A319468 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261906.P4650203381723606174

/-! ## A261906.P15258442738483910401

`eq[A040790(A319468(n)), A178334(n)]`
-/

namespace A261906.P15258442738483910401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 (A319468 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261906.P15258442738483910401

/-!
# A261907: Numbers that are the sum of two nonzero palindromes but are not palindromes themselves.

The programs for A261907, there is no canonical definition to state claims against.
-/

/-! ## A261907.P5333185648226285277

`eq[1, A072137(A319387(n))]`
-/

namespace A261907.P5333185648226285277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072137 (A319387 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261907.P5333185648226285277

/-! ## A261907.P12863007480054675319

`lt[A047813(n), A262087(n)]`
-/

namespace A261907.P12863007480054675319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261907.P12863007480054675319

/-! ## A261907.P1463345097785847972

`lt[A331472(n), A262087(n)]`
-/

namespace A261907.P1463345097785847972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261907.P1463345097785847972

/-! ## A261907.P16088245260448841315

`eq[A165063(n+1), A261675(n)]`
-/

namespace A261907.P16088245260448841315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261907.P16088245260448841315

/-! ## A261907.P200358981407472842

`lt[1, A261424(n)*A262087(n)]`
-/

namespace A261907.P200358981407472842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n * A262087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A261907.P200358981407472842

/-! ## A261907.P14670827223662113126

`∩[A260255(n+1), A029742(n+1)]`
-/

namespace A261907.P14670827223662113126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261907.P14670827223662113126

/-! ## A261907.P3708797188709478173

`eq[A056965(A319387(n)), A136522(n)]`
-/

namespace A261907.P3708797188709478173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A319387 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261907.P3708797188709478173

/-! ## A261907.P15436353778123281729

`eq[A236213(n+1), A261675(n)]`
-/

namespace A261907.P15436353778123281729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261907.P15436353778123281729

/-! ## A261907.P8298045392224333372

`eq[A034077(n+2), A261675(n)]`
-/

namespace A261907.P8298045392224333372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034077 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261907.P8298045392224333372

/-! ## A261907.P11301222517067267551

`lt[1, A052036(n)*A262087(n)]`
-/

namespace A261907.P11301222517067267551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052036 n * A262087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A261907.P11301222517067267551

/-! ## A261907.P15607649988901109177

`eq[A154068(n+4), A261675(n)]`
-/

namespace A261907.P15607649988901109177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154068 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261907.P15607649988901109177

/-! ## A261907.P10712157220834053162

`eq[A261675(n), A333657(n+1)]`
-/

namespace A261907.P10712157220834053162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261907.P10712157220834053162

/-! ## A261907.P9005221898768493006

`eq[1, A178334(A319387(n)²)]`
-/

namespace A261907.P9005221898768493006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A319387 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261907.P9005221898768493006

/-!
# A261908: Numbers of the form |m - R(m)| for m in A035137, where R(m) denotes the digit-reversal of m.

The programs for A261908, there is no canonical definition to state claims against.
-/

/-! ## A261908.P8737657796522717690

`9*A261909(n+1)`
-/

namespace A261908.P8737657796522717690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A261909 (n + 1)

end

end A261908.P8737657796522717690

/-! ## A261908.P9239772032339940513

`A008591(A261909(n+1))`
-/

namespace A261908.P9239772032339940513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A261909 (n + 1)).toNat

end

end A261908.P9239772032339940513

/-! ## A261908.P8397748901767696167

`A261953(A261909(n+1)+A261909(n+1))`
-/

namespace A261908.P8397748901767696167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261953 (A261909 (n + 1) + A261909 (n + 1)).toNat

end

end A261908.P8397748901767696167

/-! ## A261908.P17926519624407122396

`9*A197652(A184945(n)!+n+1)`
-/

namespace A261908.P17926519624407122396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A197652 (Nat.factorial (A184945 n).toNat + (n + 1))

end

end A261908.P17926519624407122396

/-! ## A261908.P15874071638566884542

`∑[9^∑{d}[2^n, round(sin(#%6))]]`
-/

namespace A261908.P15874071638566884542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (∑ d ∈ Nat.divisors (f2 n), SequenceMachineLib.roundAway (Real.sin ((d % 6 : ℕ) : ℝ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261908.P15874071638566884542

/-!
# A261909: A261908(n)/9.

The programs for A261909, there is no canonical definition to state claims against.
-/

/-! ## A261909.P16404593716033393495

`A261908(n+1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A261909.P16404593716033393495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261908 (n + 1) : ℚ) / 9

end

end A261909.P16404593716033393495

/-! ## A261909.P16877694091114096077

`A106610(A261908(n+1))`
-/

namespace A261909.P16877694091114096077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A261908 (n + 1)).toNat

end

end A261909.P16877694091114096077

/-! ## A261909.P12490325279087783924

`eq[n%10, round(acot(A118768(n+1)))]`
-/

namespace A261909.P12490325279087783924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A118768 (n + 1) : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A261909.P12490325279087783924

/-! ## A261909.P2553891874451765351

`A197652(A184945(n)!+n+1)`
-/

namespace A261909.P2553891874451765351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197652 (Nat.factorial (A184945 n).toNat + (n + 1))

end

end A261909.P2553891874451765351

/-! ## A261909.P4362450377332153763

`∑[gcd(3^n, ∏{p}[2^n+1, #])²]`
-/

namespace A261909.P4362450377332153763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (3 ^ n) (∏ p ∈ Nat.primeFactors (f2 n), p) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261909.P4362450377332153763

/-!
# A261910: Numbers n which are neither palindromes nor the sum of two palindromes, with property that subtracting the largest palindrome < n from n gives a number which is the sum of two palindromes.

The programs for A261910, there is no canonical definition to state claims against.
-/

/-! ## A261910.P12822979924531873930

`lt[A262087(n), A262087(A261424(n))]`
-/

namespace A261910.P12822979924531873930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 (A261424 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261910.P12822979924531873930

/-!
# A261911: Numbers n which are neither palindromes nor the sum of two palindromes, with property that the largest palindrome which when subtracted from n yields the sum of two palindromes is not the palindromic floor of n (A261423(n)), but rather the next palindrome below that.

The programs for A261911, there is no canonical definition to state claims against.
-/

/-! ## A261911.P17170931796535056260

`∩[A035137(n+1), A261677(n+1)]`
-/

namespace A261911.P17170931796535056260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261911.P17170931796535056260

/-! ## A261911.P1981316755492793781

`∩[A261677(n+1), A319477(n+1)]`
-/

namespace A261911.P1981316755492793781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261911.P1981316755492793781

/-!
# A261914: Largest palindrome < n (or 0 if n=0).

The programs for A261914, there is no canonical definition to state claims against.
-/

/-! ## A261914.P4928156490703019580

`A261423((n-1)%(n+1))`
-/

namespace A261914.P4928156490703019580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A261914.P4928156490703019580

/-! ## A261914.P2028844137952642522

`A261423(comp[2*(n+1)]-n)`
-/

namespace A261914.P2028844137952642522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A261914.P2028844137952642522

/-! ## A261914.P16709940877003867729

`comp[A262038(n+1)+n+1]-n`
-/

namespace A261914.P16709940877003867729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (n + 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A261914.P16709940877003867729

/-! ## A261914.P13356069393862134361

`comp[A262038(n)+1+n]%(n+1)`
-/

namespace A261914.P13356069393862134361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 n + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % (n + 1)

end

end A261914.P13356069393862134361

/-! ## A261914.P17547421111974923105

`A002113(∑[char[A002113(n+2)+1]]+1)`
-/

namespace A261914.P17547421111974923105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261914.P17547421111974923105

/-!
# A261915: Smallest x such that n can be written as n = x^2 + y^2 + z^2 with x >= y >= z >= 0, or -1 if no such x exists.

The programs for A261915, there is no canonical definition to state claims against.
-/

/-! ## A261915.P2000514918843119519

`A261904(n-A072401(A172173(n)))`
-/

namespace A261915.P2000514918843119519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261904 ((n : ℤ) - A072401 (A172173 n).toNat).toNat

end

end A261915.P2000514918843119519

/-! ## A261915.P9913438443812118127

`A261904(n)-A010052(A186112(n+5))`
-/

namespace A261915.P9913438443812118127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261904 n - A010052 (A186112 (n + 5)).toNat

end

end A261915.P9913438443812118127

/-!
# A261916: Smallest p such that n can be written as n = p+q+r where p>=q>=r>=0 are palindromes.

The programs for A261916, there is no canonical definition to state claims against.
-/

/-! ## A261916.P10318345177664730541

`A002113(Δ[A002264(A141214(n))])`
-/

namespace A261916.P10318345177664730541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A141214 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (f1 (n + 1) - f1 n).toNat

end

end A261916.P10318345177664730541

/-! ## A261916.P12240760682724758096

`A002113(Δ[A008620(A141214(n))])`
-/

namespace A261916.P12240760682724758096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A141214 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (f1 (n + 1) - f1 n).toNat

end

end A261916.P12240760682724758096

/-! ## A261916.P11833535030706310034

`A265558(A008615(2*n))%record[A031285(n)]`
-/

namespace A261916.P11833535030706310034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265558 (A008615 (2 * n)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A261916.P11833535030706310034

/-! ## A261916.P1193415713246779345

`A054899(A379722(2*n+3)-A054861(n)+n)`
-/

namespace A261916.P1193415713246779345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A379722 (2 * n + 3) - A054861 n + (n : ℤ)).toNat

end

end A261916.P1193415713246779345

/-! ## A261916.P17928612724567430518

`A054899(A189117(3*n+5)+A000037(3*n+5))`
-/

namespace A261916.P17928612724567430518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A189117 (3 * n + 5) + A000037 (3 * n + 5)).toNat

end

end A261916.P17928612724567430518

/-!
# A261917: Numbers which in base 5 are the sum of two palindromes but are not palindromes themselves.

The programs for A261917, there is no canonical definition to state claims against.
-/

/-! ## A261917.P17993720833119003580

`eq[A178815(n+1), A261675(A007091(n))]`
-/

namespace A261917.P17993720833119003580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 (A007091 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261917.P17993720833119003580

/-!
# A261918: Numbers which in base 5 are neither palindromes nor the sum of two palindromes.

The programs for A261918, there is no canonical definition to state claims against.
-/

/-! ## A261918.P17530447318907695264

`A360248(A006190(n)+1)-1`
-/

namespace A261918.P17530447318907695264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360248 (A006190 n + 1).toNat - 1

end

end A261918.P17530447318907695264

/-!
# A261919: Number of n-node unlabeled graphs without isolated nodes or endpoints (i.e., no nodes of degree 0 or 1).

The programs for A261919, there is no canonical definition to state claims against.
-/

/-! ## A261919.P17437289796994548740

`A327372(∑[n])`
-/

namespace A261919.P17437289796994548740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327372 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261919.P17437289796994548740

/-! ## A261919.P5676081825957470068

`A002494(n)-A324693(round(sqrt(n²+1)))`
-/

namespace A261919.P5676081825957470068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 n - A324693 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A261919.P5676081825957470068

/-! ## A261919.P18167023817269371776

`A327372(A000217(n))^A006519(2*n+5)`
-/

namespace A261919.P18167023817269371776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327372 (A000217 n).toNat : ℚ) ^ (A006519 (2 * n + 5) : ℤ)

end

end A261919.P18167023817269371776

/-! ## A261919.P15533484815720650934

`A327075(n)+A001349(n)%A000088(n)-A324693(A028310(n))`
-/

namespace A261919.P15533484815720650934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327075 n + Int.tmod (A001349 n) (A000088 n) - A324693 (A028310 n).toNat

end

end A261919.P15533484815720650934

/-! ## A261919.P738174567901446222

`Δ[A294217(A152947(n+1))%A006897(n)]-A324693(A028310(n))`
-/

namespace A261919.P738174567901446222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294217 (A152947 (n + 1)).toNat) (A006897 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A324693 (A028310 n).toNat

end

end A261919.P738174567901446222

/-!
# A261920: In A261907 but not the sum of two palindromes whose lengths differ by 1.

The programs for A261920, there is no canonical definition to state claims against.
-/

/-! ## A261920.P14922399967064108439

`A293871(n+1)-A160357(A005817(n))`
-/

namespace A261920.P14922399967064108439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1) - A160357 (A005817 n).toNat

end

end A261920.P14922399967064108439

/-! ## A261920.P7747504629546858102

`A293871(n+1)+A033999(A131658(n+1))`
-/

namespace A261920.P7747504629546858102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1) + A033999 (A131658 (n + 1)).toNat

end

end A261920.P7747504629546858102

/-! ## A261920.P1540344510175315865

`A293871(n+1)+A033999(A048855(n))`
-/

namespace A261920.P1540344510175315865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1) + A033999 (A048855 n).toNat

end

end A261920.P1540344510175315865

/-! ## A261920.P3080621393602936719

`A293871(n+1)+A033999(A148807(n))`
-/

namespace A261920.P3080621393602936719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1) + A033999 (A148807 n).toNat

end

end A261920.P3080621393602936719

/-!
# A261921: Nonpalindromes which are the sum of two palindromes whose lengths differ by 1.

The programs for A261921, there is no canonical definition to state claims against.
-/

/-! ## A261921.P67058042709141502

`A182324(lt[A347689(n), A056967(n)])`
-/

namespace A261921.P67058042709141502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A261921.P67058042709141502

/-! ## A261921.P11597245089926857359

`A001222(4^floor(n/9))+n+12`
-/

namespace A261921.P11597245089926857359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (⌊(n : ℚ) / 9⌋ : ℤ))).toNat + (n : ℤ) + 12

end

end A261921.P11597245089926857359

/-! ## A261921.P14354188148316883478

`A261906(A007095(n)+11)`
-/

namespace A261921.P14354188148316883478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261906 (A007095 n + 11).toNat

end

end A261921.P14354188148316883478

/-! ## A261921.P17240918365482606116

`A261906(lt[0, A171765(n)])`
-/

namespace A261921.P17240918365482606116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A261921.P17240918365482606116

/-! ## A261921.P7144180173142239156

`A261906(eq[2, A215887(n)])`
-/

namespace A261921.P7144180173142239156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261921.P7144180173142239156

/-! ## A261921.P16496306423530633641

`filter[A065039(n), A377191(#)]`
-/

namespace A261921.P16496306423530633641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A261921.P16496306423530633641

/-! ## A261921.P12665672809784027258

`filter[A171397(n), A377191(#)]`
-/

namespace A261921.P12665672809784027258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A261921.P12665672809784027258

/-! ## A261921.P10211362762116055580

`filter[A119797(n+1), A377191(#)]`
-/

namespace A261921.P10211362762116055580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A261921.P10211362762116055580

/-! ## A261921.P4106597722085611055

`filter[A057367(3*n), A377191(#)]`
-/

namespace A261921.P4106597722085611055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A261921.P4106597722085611055

/-!
# A261922: a(n) = smallest nonnegative number that is not a substring of n in its binary representation.

The programs for A261922, there is no canonical definition to state claims against.
-/

/-! ## A261922.P15419245823045429750

`A261461(n)*A267442(n)`
-/

namespace A261922.P15419245823045429750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 n * A267442 n

end

end A261922.P15419245823045429750

/-! ## A261922.P57024468998871714

`A000035(A006530(n+1))*A261461(n)`
-/

namespace A261922.P57024468998871714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A006530 (n + 1)).toNat * A261461 n

end

end A261922.P57024468998871714

/-! ## A261922.P15774128823665928864

`A261461(n)%A000040(A000265(n+1))`
-/

namespace A261922.P15774128823665928864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261461 n) (A000040 (A000265 (n + 1)).toNat)

end

end A261922.P15774128823665928864

/-! ## A261922.P16259076094709431232

`A006530(A026491(n))%2*A261461(n)`
-/

namespace A261922.P16259076094709431232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A026491 n).toNat) 2 * A261461 n

end

end A261922.P16259076094709431232

/-! ## A261922.P5077673265173382067

`A261461(n)*A262281(n)/A262289(n)`
-/

namespace A261922.P5077673265173382067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261461 n * A262281 n : ℚ) / (A262289 n : ℚ)

end

end A261922.P5077673265173382067

/-! ## A261922.P12685561088966819042

`A261461(n)-A007814(A006530(n+1)+2)`
-/

namespace A261922.P12685561088966819042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 n - A007814 (A006530 (n + 1) + 2).toNat

end

end A261922.P12685561088966819042

/-! ## A261922.P12681789335510056542

`(3-A020639(A014963(n+1)+1))*A261461(n)`
-/

namespace A261922.P12681789335510056542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A020639 (A014963 (n + 1) + 1).toNat) * A261461 n

end

end A261922.P12681789335510056542

/-! ## A261922.P13282765053717359794

`A036987(A261461(n*A036987(n)))*A261461(n)`
-/

namespace A261922.P13282765053717359794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A261461 ((n : ℤ) * A036987 n).toNat).toNat * A261461 n

end

end A261922.P13282765053717359794

/-! ## A261922.P8604991735840501974

`A261461(n)-A007814(A006530(n+1)²)`
-/

namespace A261922.P8604991735840501974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 n - A007814 (A006530 (n + 1) ^ 2).toNat

end

end A261922.P8604991735840501974

/-!
# A261923: Number of steps to reach 0, starting at n, and iteration the map x -> A261922(x).

The programs for A261923, there is no canonical definition to state claims against.
-/

/-! ## A261923.P5120156941159186172

`A091460(A261922(n))*A185117(4*(n+1))`
-/

namespace A261923.P5120156941159186172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091460 (A261922 n).toNat * A185117 (4 * (n + 1))

end

end A261923.P5120156941159186172

/-! ## A261923.P3877730258659462245

`and(A000225(n), A261461(A261922(n)))`
-/

namespace A261923.P3877730258659462245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A261461 (A261922 n).toNat)

end

end A261923.P3877730258659462245

/-! ## A261923.P15382833277391639856

`A091460(A261922(n))%A126646(n)`
-/

namespace A261923.P15382833277391639856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091460 (A261922 n).toNat) (A126646 n)

end

end A261923.P15382833277391639856

/-! ## A261923.P12015507185951189348

`A091460(A261922(n))-A008683((n+1)²)`
-/

namespace A261923.P12015507185951189348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091460 (A261922 n).toNat - A008683 ((n + 1) ^ 2)

end

end A261923.P12015507185951189348

/-! ## A261923.P2552046930381834709

`A080425(A001359(n+1))*A261461(A261922(n))`
-/

namespace A261923.P2552046930381834709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A001359 (n + 1)).toNat * A261461 (A261922 n).toNat

end

end A261923.P2552046930381834709

/-! ## A261923.P10546256881656607471

`A261461(A261922(n))%A261416(n)`
-/

namespace A261923.P10546256881656607471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261461 (A261922 n).toNat) (A261416 n)

end

end A261923.P10546256881656607471

/-!
# A261924: Numbers that are the sum of two palindromes of the same length.

The programs for A261924, there is no canonical definition to state claims against.
-/

/-! ## A261924.P2719216458256759781

`lt[lcm(11, n)/11, 19]`
-/

namespace A261924.P2719216458256759781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 11 n : ℚ) / 11

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A261924.P2719216458256759781

/-! ## A261924.P7793478439148842331

`lt[A036042(A106612(n)), 6]`
-/

namespace A261924.P7793478439148842331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A106612 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A261924.P7793478439148842331

/-! ## A261924.P15451568099212542024

`lt[A309466(A106612(n)), A226796(n+1)]`
-/

namespace A261924.P15451568099212542024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309466 (A106612 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261924.P15451568099212542024

/-! ## A261924.P706244498435923462

`lt[A317081(n), A000192(A260254(n))]`
-/

namespace A261924.P706244498435923462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000192 (A260254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261924.P706244498435923462

/-! ## A261924.P8815588639142240044

`lt[A324744(n), A029548(A260254(n))]`
-/

namespace A261924.P8815588639142240044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324744 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029548 (A260254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261924.P8815588639142240044

/-!
# A261925: Nonpalindromes that are the sum of two nonzero palindromes of the same length.

The programs for A261925, there is no canonical definition to state claims against.
-/

/-! ## A261925.P14962431279549773213

`∩[A029742(n+1), A261924(n+1)]`
-/

namespace A261925.P14962431279549773213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261925.P14962431279549773213

/-! ## A261925.P6544400814546638960

`∩[A261907(n+1), A261924(n+1)]`
-/

namespace A261925.P6544400814546638960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261925.P6544400814546638960

/-! ## A261925.P2302752211166010516

`eq[A063660(A037851(n+1)), A106612(n)]`
-/

namespace A261925.P2302752211166010516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (A037851 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261925.P2302752211166010516

/-! ## A261925.P18141539869360481585

`eq[A063660(A297330(n+1)), A106612(n)]`
-/

namespace A261925.P18141539869360481585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (A297330 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261925.P18141539869360481585

/-! ## A261925.P13012143517291506307

`eq[A097601(n+1)+gcd(11, n), floor(n/10)]`
-/

namespace A261925.P13012143517291506307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 (n + 1) + (Nat.gcd 11 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 10⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A261925.P13012143517291506307

/-!
# A261926: First differences of A261416.

The programs for A261926, there is no canonical definition to state claims against.
-/

/-! ## A261926.P9298230093154268239

`Δ[A261416(n)]`
-/

namespace A261926.P9298230093154268239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261926.P9298230093154268239

/-! ## A261926.P13042718085263686958

`Δ[A262290(n)+2-2%(n+1)]`
-/

namespace A261926.P13042718085263686958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262290 n + (2 - ((2 % (n + 1) : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261926.P13042718085263686958

/-! ## A261926.P4522293654623315591

`Δ[A262281(a(n-1))+a(n-1)]` with `a(0)=2`
-/

namespace A261926.P4522293654623315591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A262281 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261926.P4522293654623315591

/-! ## A261926.P4124247718156898474

`Δ[A262289(a(n-1))+a(n-1)]` with `a(0)=2`
-/

namespace A261926.P4124247718156898474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A262289 (f1 (n - 1)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261926.P4124247718156898474

/-! ## A261926.P468849218176306744

`A262281(and(-1, A261416(n)))`
-/

namespace A261926.P468849218176306744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262281 (Int.land (-1) (A261416 n)).toNat

end

end A261926.P468849218176306744

/-! ## A261926.P18009005538563184763

`A262289(A261416(char[1]+n))`
-/

namespace A261926.P18009005538563184763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262289 (A261416 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A261926.P18009005538563184763

/-! ## A261926.P16821988023668512143

`A262281(A262290(char[1]+n))`
-/

namespace A261926.P16821988023668512143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262281 (A262290 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A261926.P16821988023668512143

/-! ## A261926.P6142048523622833361

`A262281(A261416(n)-char[1])`
-/

namespace A261926.P6142048523622833361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262281 (A261416 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A261926.P6142048523622833361

/-! ## A261926.P8158147836710563572

`A262289(A261416(n)-char[1])`
-/

namespace A261926.P8158147836710563572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262289 (A261416 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A261926.P8158147836710563572

/-! ## A261926.P4815307041626231439

`A261416(n+1)-A261416(n)`
-/

namespace A261926.P4815307041626231439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261416 (n + 1) - A261416 n

end

end A261926.P4815307041626231439

/-!
# A261927: Sum of the larger parts of the partitions of n into two squarefree parts.

The programs for A261927, there is no canonical definition to state claims against.
-/

/-! ## A261927.P9304548918533939865

`A262351(n+1)-A261985(n+1)`
-/

namespace A261927.P9304548918533939865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262351 (n + 1) - A261985 (n + 1)

end

end A261927.P9304548918533939865

/-! ## A261927.P380702965719786359

`(n+1)*A071068(n+1)-A261985(n+1)`
-/

namespace A261927.P380702965719786359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A071068 (n + 1) - A261985 (n + 1)

end

end A261927.P380702965719786359

/-! ## A261927.P16613366446933563629

`A262351(n+1)-A303221(n+1)/(n+1)`
-/

namespace A261927.P16613366446933563629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262351 (n + 1) : ℚ) - (A303221 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A261927.P16613366446933563629

/-! ## A261927.P16783007130566818677

`(n+1)*A071068(n+1)-A303221(n+1)/(n+1)`
-/

namespace A261927.P16783007130566818677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A071068 (n + 1) : ℚ) - (A303221 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A261927.P16783007130566818677

/-! ## A261927.P13174550197641915964

`(n+1)*A110654(A098235(n+1))-A261985(n+1)`
-/

namespace A261927.P13174550197641915964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110654 (A098235 (n + 1)).toNat - A261985 (n + 1)

end

end A261927.P13174550197641915964

/-! ## A261927.P4806802629280651765

`(n+1)*A004526(A098235(n+1)+1)-A261985(n+1)`
-/

namespace A261927.P4806802629280651765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004526 (A098235 (n + 1) + 1).toNat - A261985 (n + 1)

end

end A261927.P4806802629280651765

/-! ## A261927.P5613798842941639610

`floor(A071068(n+1)/acot(A000027(n+1)))-A261985(n+1)`
-/

namespace A261927.P5613798842941639610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071068 (n + 1) : ℝ) / SequenceMachineLib.acot (A000027 (n + 1) : ℝ)⌋ - A261985 (n + 1)

end

end A261927.P5613798842941639610

/-! ## A261927.P17471892259769705028

`(n+1)*(A098235(n+1)-A098236(n+1))-A261985(n+1)`
-/

namespace A261927.P17471892259769705028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A098235 (n + 1) - A098236 (n + 1)) - A261985 (n + 1)

end

end A261927.P17471892259769705028

/-!
# A261928: a(n) is the number of different pairs (x*y,x+y) mod n.

The programs for A261928, there is no canonical definition to state claims against.
-/

/-! ## A261928.P12848117070670670018

`(n+1)²-A261929(n+1)`
-/

namespace A261928.P12848117070670670018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A261929 (n + 1)

end

end A261928.P12848117070670670018

/-! ## A261928.P10365704568388591038

`(n+1)/2*A000224(4*(n+1))`
-/

namespace A261928.P10365704568388591038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A000224 (4 * (n + 1)) : ℚ)

end

end A261928.P10365704568388591038

/-! ## A261928.P11565658439515477680

`(A105612(4*(n+1))+1)*(n+1)/2`
-/

namespace A261928.P11565658439515477680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A105612 (4 * (n + 1)) + 1) * (n + 1 : ℤ) : ℚ) / 2

end

end A261928.P11565658439515477680

/-! ## A261928.P9961750263586492367

`A273943((n+1)*A000224(4*(n+1)))`
-/

namespace A261928.P9961750263586492367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 ((n + 1 : ℤ) * A000224 (4 * (n + 1))).toNat

end

end A261928.P9961750263586492367

/-! ## A261928.P17685459314123362964

`A014682((n+1)*A000224(4*(n+1)))`
-/

namespace A261928.P17685459314123362964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((n + 1 : ℤ) * A000224 (4 * (n + 1))).toNat

end

end A261928.P17685459314123362964

/-! ## A261928.P15235371173831463952

`A004525((n+1)*A000224(4*(n+1)))`
-/

namespace A261928.P15235371173831463952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 ((n + 1 : ℤ) * A000224 (4 * (n + 1))).toNat

end

end A261928.P15235371173831463952

/-! ## A261928.P13371705997444551485

`A029578(A000224(4*(n+1))*(n+1))`
-/

namespace A261928.P13371705997444551485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A000224 (4 * (n + 1)) * (n + 1 : ℤ)).toNat

end

end A261928.P13371705997444551485

/-! ## A261928.P8195074624775159003

`A032742((n+1)*A000224(4*(n+1)))`
-/

namespace A261928.P8195074624775159003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((n + 1 : ℤ) * A000224 (4 * (n + 1))).toNat

end

end A261928.P8195074624775159003

/-!
# A261929: a(n) is the number of different pairs (p,q) mod n not of the form (x*y,x+y) mod n for any (x,y).

The programs for A261929, there is no canonical definition to state claims against.
-/

/-! ## A261929.P8350480256978145182

`(n+1)²-A261928(n+1)`
-/

namespace A261929.P8350480256978145182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A261928 (n + 1)

end

end A261929.P8350480256978145182

/-! ## A261929.P13108157333304699585

`A273943(2*(n+1))²-(n+1)/2*A000224(4*(n+1))`
-/

namespace A261929.P13108157333304699585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273943 (2 * (n + 1)) ^ 2 : ℚ) - (n + 1 : ℚ) / 2 * (A000224 (4 * (n + 1)) : ℚ)

end

end A261929.P13108157333304699585

/-! ## A261929.P11647394127005770839

`A273943(2*(n+1))²-(A105612(4*(n+1))+1)*(n+1)/2`
-/

namespace A261929.P11647394127005770839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273943 (2 * (n + 1)) ^ 2 : ℚ) - ((A105612 (4 * (n + 1)) + 1) * (n + 1 : ℤ) : ℚ) / 2

end

end A261929.P11647394127005770839

/-! ## A261929.P13382483517510063041

`A273943(2*(n+1))²-A004525((n+1)*A000224(4*(n+1)))`
-/

namespace A261929.P13382483517510063041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * (n + 1)) ^ 2 - A004525 ((n + 1 : ℤ) * A000224 (4 * (n + 1))).toNat

end

end A261929.P13382483517510063041

/-! ## A261929.P9718529960247947202

`A273943(2*(n+1))²-A014682((n+1)*A000224(4*(n+1)))`
-/

namespace A261929.P9718529960247947202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * (n + 1)) ^ 2 - A014682 ((n + 1 : ℤ) * A000224 (4 * (n + 1))).toNat

end

end A261929.P9718529960247947202

/-! ## A261929.P11828816338804035847

`A273943(2*(n+1))²-A032742((n+1)*A000224(4*(n+1)))`
-/

namespace A261929.P11828816338804035847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * (n + 1)) ^ 2 - A032742 ((n + 1 : ℤ) * A000224 (4 * (n + 1))).toNat

end

end A261929.P11828816338804035847

/-! ## A261929.P16617334730536709930

`A273943(2*(n+1))²-A273943((n+1)*A000224(4*(n+1)))`
-/

namespace A261929.P16617334730536709930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * (n + 1)) ^ 2 - A273943 ((n + 1 : ℤ) * A000224 (4 * (n + 1))).toNat

end

end A261929.P16617334730536709930

/-!
# A261930: Row sums of triangle A261897.

The programs for A261930, there is no canonical definition to state claims against.
-/

/-! ## A261930.P13042640631895750733

`A245453(A259098(n))`
-/

namespace A261930.P13042640631895750733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245453 (A259098 n).toNat

end

end A261930.P13042640631895750733

/-! ## A261930.P3340671084114571325

`A018487(n+1)-A111662(n)`
-/

namespace A261930.P3340671084114571325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018487 (n + 1) - A111662 n

end

end A261930.P3340671084114571325

/-! ## A261930.P5535287289782045234

`A018487(n+1)-floor(A263941(2^n)/16)`
-/

namespace A261930.P5535287289782045234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018487 (n + 1) - ⌊(A263941 (2 ^ n) : ℚ) / 16⌋

end

end A261930.P5535287289782045234

/-! ## A261930.P11515217499268109919

`A018487(n+1)-A002265(3*ceil(3*2^(n-3)))`
-/

namespace A261930.P11515217499268109919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018487 (n + 1) - A002265 (3 * ⌈3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉).toNat

end

end A261930.P11515217499268109919

/-! ## A261930.P17604728401402136931

`A245453(A004524(ceil(3*2^(n-3))+ceil(5*2^(n-2))))`
-/

namespace A261930.P17604728401402136931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245453 (A004524 (⌈3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉ + ⌈5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉).toNat).toNat

end

end A261930.P17604728401402136931

/-!
# A261934: The first of ten consecutive positive integers the sum of the squares of which is equal to the sum of the squares of two consecutive positive integers.

The programs for A261934, there is no canonical definition to state claims against.
-/

/-! ## A261934.P15199594343200554494

`A262759(A175320(2*(n+2))+A088789(n))`
-/

namespace A261934.P15199594343200554494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262759 (A175320 (2 * (n + 2)) + A088789 n).toNat

end

end A261934.P15199594343200554494

/-!
# A261936: Number of (n+1)X(n+1) 0..1 arrays with each row nonprime and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261936, there is no canonical definition to state claims against.
-/

/-! ## A261936.P9011208769518990110

`A261942(∑[4*n]+1)`
-/

namespace A261936.P9011208769518990110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261936.P9011208769518990110

/-!
# A261937: Number of (n+1)X(2+1) 0..1 arrays with each row nonprime and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261937, there is no canonical definition to state claims against.
-/

/-! ## A261937.P17167351915220510204

`A261942(∑[n+2])`
-/

namespace A261937.P17167351915220510204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261937.P17167351915220510204

/-! ## A261937.P17941038624344403108

`record[A261942(∑[A152271(n)])]`
-/

namespace A261937.P17941038624344403108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261937.P17941038624344403108

/-! ## A261937.P2487067204202609503

`record[A261942(A117142(n+1))]`
-/

namespace A261937.P2487067204202609503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261937.P2487067204202609503

/-! ## A261937.P6398909821118506143

`record[A261942(record[A185180(n+1)])]`
-/

namespace A261937.P6398909821118506143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185180 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261937.P6398909821118506143

/-! ## A261937.P3688867842274015923

`record[A261942(record[A198453(n+1)])]`
-/

namespace A261937.P3688867842274015923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198453 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261937.P3688867842274015923

/-!
# A261938: Number of (n+1)X(3+1) 0..1 arrays with each row nonprime and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261938, there is no canonical definition to state claims against.
-/

/-! ## A261938.P4537081203701421475

`A261942(∑[n+3]+1)`
-/

namespace A261938.P4537081203701421475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261938.P4537081203701421475

/-!
# A261939: Number of (n+1)X(4+1) 0..1 arrays with each row nonprime and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261939, there is no canonical definition to state claims against.
-/

/-! ## A261939.P13956696424751248890

`A261942(∑[n+4]+3)`
-/

namespace A261939.P13956696424751248890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A261939.P13956696424751248890

/-! ## A261939.P12795365767095413308

`record[A010054(n+4)*A261942(n+1)]`
-/

namespace A261939.P12795365767095413308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 4) * A261942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261939.P12795365767095413308

/-!
# A261940: Number of (n+1)X(5+1) 0..1 arrays with each row nonprime and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261940, there is no canonical definition to state claims against.
-/

/-! ## A261940.P3192588160405576579

`A261942(∑[n+5]+6)`
-/

namespace A261940.P3192588160405576579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A261940.P3192588160405576579

/-! ## A261940.P5157714842921479719

`A046601(n+1)*A261942(Δ[A264443(n)])`
-/

namespace A261940.P5157714842921479719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046601 (n + 1) * A261942 (f1 (n + 1) - f1 n).toNat

end

end A261940.P5157714842921479719

/-!
# A261941: Number of (n+1)X(6+1) 0..1 arrays with each row nonprime and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261941, there is no canonical definition to state claims against.
-/

/-! ## A261941.P12900225483153170163

`A261942(∑[a(n-1)+1])` with `a(0)=16, a(1)=7`
-/

namespace A261941.P12900225483153170163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16, 7] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261941.P12900225483153170163

/-! ## A261941.P2291062246788751842

`A261942(A052905(n+3))`
-/

namespace A261941.P2291062246788751842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (A052905 (n + 3)).toNat

end

end A261941.P2291062246788751842

/-!
# A261943: Number of (1+1)X(n+1) 0..1 arrays with each row nonprime and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261943, there is no canonical definition to state claims against.
-/

/-! ## A261943.P13806261919138207902

`A261942(∑[n]+1)`
-/

namespace A261943.P13806261919138207902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A261943.P13806261919138207902

/-! ## A261943.P12190782226911904016

`A261942(A000124(n))+char[13]`
-/

namespace A261943.P12190782226911904016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A261943.P12190782226911904016

/-! ## A261943.P17460090632393616283

`A299905(n)+A261942(A000124(n))`
-/

namespace A261943.P17460090632393616283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 n + A261942 (A000124 n).toNat

end

end A261943.P17460090632393616283

/-! ## A261943.P769747515029752126

`A036370(n)*A261942(A000124(n))`
-/

namespace A261943.P769747515029752126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036370 n * A261942 (A000124 n).toNat

end

end A261943.P769747515029752126

/-! ## A261943.P7399086102802274470

`A123548(n)*A261942(A000124(n))`
-/

namespace A261943.P7399086102802274470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123548 n * A261942 (A000124 n).toNat

end

end A261943.P7399086102802274470

/-!
# A261944: Number of (2+1)X(n+1) 0..1 arrays with each row nonprime and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261944, there is no canonical definition to state claims against.
-/

/-! ## A261944.P9891264033144263797

`A261942(∑[n+1]+2)`
-/

namespace A261944.P9891264033144263797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A261944.P9891264033144263797

/-! ## A261944.P12855982695782382337

`record[A010054(n)*A261942(n+2)]`
-/

namespace A261944.P12855982695782382337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A261942 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261944.P12855982695782382337

/-! ## A261944.P1796270946851755669

`record[A261942(n+1)/A162975(n)]`
-/

namespace A261944.P1796270946851755669
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261942 (n + 1) : ℚ) / (A162975 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261944.P1796270946851755669

/-!
# A261945: Number of (3+1)X(n+1) 0..1 arrays with each row nonprime and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261945, there is no canonical definition to state claims against.
-/

/-! ## A261945.P12934851373877893804

`A261942(∑[n+2]+4)`
-/

namespace A261945.P12934851373877893804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A261945.P12934851373877893804

/-! ## A261945.P7393368382366657529

`ceil(acot(n))*A261942(A167614(n+1))`
-/

namespace A261945.P7393368382366657529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A261942 (A167614 (n + 1)).toNat

end

end A261945.P7393368382366657529

/-! ## A261945.P13430395112811577569

`A261942(A167614(n+1))+A064834(n)`
-/

namespace A261945.P13430395112811577569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (A167614 (n + 1)).toNat + A064834 n

end

end A261945.P13430395112811577569

/-! ## A261945.P5533953016862467103

`A261942(A167614(n+1))+A131011(n)`
-/

namespace A261945.P5533953016862467103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (A167614 (n + 1)).toNat + A131011 (n + 10)

end

end A261945.P5533953016862467103

/-! ## A261945.P3417236615057820617

`A261942(A167614(n+1))+A151795(n)`
-/

namespace A261945.P3417236615057820617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (A167614 (n + 1)).toNat + A151795 n

end

end A261945.P3417236615057820617

/-!
# A261946: Number of (4+1)X(n+1) 0..1 arrays with each row nonprime and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261946, there is no canonical definition to state claims against.
-/

/-! ## A261946.P16739334691416457966

`A261942(∑[a(n-1)+1])` with `a(0)=10, a(1)=4`
-/

namespace A261946.P16739334691416457966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261946.P16739334691416457966

/-! ## A261946.P7478671228890169609

`A261942(C(2*n+5-n, 2)-n)`
-/

namespace A261946.P7478671228890169609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (Nat.choose ((2 * n + 5 : ℤ) - (n : ℤ)).toNat 2 - n)

end

end A261946.P7478671228890169609

/-! ## A261946.P2875361139443481669

`A261942(A141214(n)+7)`
-/

namespace A261946.P2875361139443481669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (A141214 n + 7).toNat

end

end A261946.P2875361139443481669

/-! ## A261946.P11242679172375869859

`A261942(A052905(n)+9)`
-/

namespace A261946.P11242679172375869859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (A052905 n + 9).toNat

end

end A261946.P11242679172375869859

/-! ## A261946.P8332066580940641133

`A261942(A055999(n)+10)`
-/

namespace A261946.P8332066580940641133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (A055999 n + 10).toNat

end

end A261946.P8332066580940641133

/-!
# A261947: Number of (5+1) X (n+1) 0..1 arrays with each row nonprime and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261947, there is no canonical definition to state claims against.
-/

/-! ## A261947.P15253752185539491130

`A261942(C(n+5, 2)+5)`
-/

namespace A261947.P15253752185539491130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (Nat.choose (n + 5) 2 + 5)

end

end A261947.P15253752185539491130

/-! ## A261947.P3224475139836489904

`A261942(∑[a(n-1)+1])` with `a(0)=15, a(1)=5`
-/

namespace A261947.P3224475139836489904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [15, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261947.P3224475139836489904

/-! ## A261947.P11368963714660909442

`A261942(A167499(n+3))`
-/

namespace A261947.P11368963714660909442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (A167499 (n + 3)).toNat

end

end A261947.P11368963714660909442

/-! ## A261947.P9788596318073860477

`A261942(A155212(n)+13)`
-/

namespace A261947.P9788596318073860477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (A155212 n + 13).toNat

end

end A261947.P9788596318073860477

/-!
# A261948: Number of (6+1) X (n+1) 0..1 arrays with each row nonprime and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261948, there is no canonical definition to state claims against.
-/

/-! ## A261948.P14928236696970084793

`A261942(∑[a(n-1)+1])` with `a(0)=21, a(1)=6`
-/

namespace A261948.P14928236696970084793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [21, 6] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261948.P14928236696970084793

/-!
# A261949: Number of (7+1) X (n+1) 0..1 arrays with each row nonprime and column prime, read as a binary number with top and left being the most significant bits.

The programs for A261949, there is no canonical definition to state claims against.
-/

/-! ## A261949.P10845048986429440449

`A261942(∑[a(n-1)+1])` with `a(0)=28, a(1)=7`
-/

namespace A261949.P10845048986429440449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [28, 7] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261949.P10845048986429440449

/-!
# A261950: Start with a single equilateral triangle for n=0; for the odd n-th generation add a triangle at each expandable vertex of the triangles of the (n-1)-th generation (this is the "side to vertex" version); for the even n-th generation use the "vertex to vertex" version; a(n) is the number of triangles added in the n-th generation.

The programs for A261950, the canonical program `A261950.P8490719290162573377` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261950 has offset 0).

The definition of A261950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261950.P8490719290162573377

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=12, a(4)=30, a(5)=18, a(6)=45`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A261950

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P8490719290162573377.Spec : Prop :=
  ∀ n, P8490719290162573377.a n = A261950 n

theorem P8490719290162573377.correct : P8490719290162573377.Spec := by
  intro n
  simp only [A261950]

end A261950

/-!
# A261952: Start with a single equilateral triangle for n=0; for the odd n-th generation add a triangle at each expandable vertex of the triangles of the (n-1)-th generation (this is the "vertex to vertex" version); for the even n-th generation use the "side to side" version; a(n) is the number of triangles added in the n-th generation.

The programs for A261952, the canonical program `A261952.P12319966046607131847` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261952 has offset 0).

The definition of A261952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261952.P12319966046607131847

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=18, a(4)=18, a(5)=24, a(6)=27`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A261952

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P12319966046607131847.Spec : Prop :=
  ∀ n, P12319966046607131847.a n = A261952 n

theorem P12319966046607131847.correct : P12319966046607131847.Spec := by
  intro n
  simp only [A261952]

end A261952

/-! ## A261952.P1130317333154965100

`A008486(A004526(A055976(n+1)+A008486(n)))`
-/

namespace A261952.P1130317333154965100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A004526 (A055976 (n + 1) + A008486 n).toNat).toNat

end

end A261952.P1130317333154965100

namespace A261952

/-- `A008486(A004526(A055976(n+1)+A008486(n)))` -/
def P1130317333154965100.Spec : Prop :=
  ∀ n, P1130317333154965100.a n = A261952 n

end A261952

/-!
# A261953: Start with a single equilateral triangle for n=0; for the odd n-th generation add a triangle at each expandable side of the triangles of the (n-1)-th generation (this is the "side to side" version); for the even n-th generation use the "vertex to vertex" version; a(n) is the number of triangles added in the n-th generation.

The programs for A261953, the canonical program `A261953.P16704326897162781353` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261953 has offset 0).

The definition of A261953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261953.P16704326897162781353

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=12`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A261953

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P16704326897162781353.Spec : Prop :=
  ∀ n, P16704326897162781353.a n = A261953 n

theorem P16704326897162781353.correct : P16704326897162781353.Spec := by
  intro n
  simp only [A261953]

end A261953

/-! ## A261953.P14731343413574748183

`a(n-2)+9` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A261953.P14731343413574748183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  a (n - 2) + 9

end

end A261953.P14731343413574748183

namespace A261953

/-- `a(n-2)+9` -/
def P14731343413574748183.Spec : Prop :=
  ∀ n, (P14731343413574748183.a n : ℤ) = A261953 n

end A261953

/-! ## A261953.P11682637268233810123

`∑[6/a(n%2)]` with `a(0)=1, a(1)=2`
-/

namespace A261953.P11682637268233810123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  6 / f1 (n % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261953.P11682637268233810123

namespace A261953

/-- `∑[6/a(n%2)]` -/
def P11682637268233810123.Spec : Prop :=
  ∀ n, P11682637268233810123.a n = (A261953 n : ℚ)

end A261953

/-! ## A261953.P2869761952153103579

`∑[6/a(and(1, n))]` with `a(0)=1, a(1)=2`
-/

namespace A261953.P2869761952153103579
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  6 / f1 (Nat.land 1 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261953.P2869761952153103579

namespace A261953

/-- `∑[6/a(and(1, n))]` -/
def P2869761952153103579.Spec : Prop :=
  ∀ n, P2869761952153103579.a n = (A261953 n : ℚ)

end A261953

/-! ## A261953.P1754088201189639508

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=2, a(2)=6, a(3)=3`
-/

namespace A261953.P1754088201189639508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6, 3] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261953.P1754088201189639508

namespace A261953

/-- `∑[abs(a(n-2))]` -/
def P1754088201189639508.Spec : Prop :=
  ∀ n, (P1754088201189639508.a n : ℤ) = A261953 n

end A261953

/-! ## A261953.P10553751469386036271

`∑[9-a(n-1)]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A261953.P10553751469386036271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261953.P10553751469386036271

namespace A261953

/-- `∑[9-a(n-1)]` -/
def P10553751469386036271.Spec : Prop :=
  ∀ n, P10553751469386036271.a n = A261953 n

end A261953

/-! ## A261953.P16408471401083128939

`∑[∑[ogf((1+2x+5x^2+x^3)/(1+x))]]`
-/

namespace A261953.P16408471401083128939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 5, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261953.P16408471401083128939

namespace A261953

/-- `∑[∑[ogf((1+2x+5x^2+x^3)/(1+x))]]` -/
def P16408471401083128939.Spec : Prop :=
  ∀ n, P16408471401083128939.a n = A261953 n

end A261953

/-! ## A261953.P4270139601262353370

`∑[3*a(∑[(-1)^n])]` with `a(0)=1, a(1)=2`
-/

namespace A261953.P4270139601262353370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261953.P4270139601262353370

namespace A261953

/-- `∑[3*a(∑[(-1)^n])]` -/
def P4270139601262353370.Spec : Prop :=
  ∀ n, (P4270139601262353370.a n : ℤ) = A261953 n

end A261953

/-! ## A261953.P4684867709428164186

`ogf((1+2x+5x^2+x^3)/(1-x-x^2+x^3))`
-/

namespace A261953.P4684867709428164186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 5, 1] [1, -1, -1, 1] n

end

end A261953.P4684867709428164186

namespace A261953

/-- `ogf((1+2x+5x^2+x^3)/(1-x-x^2+x^3))` -/
def P4684867709428164186.Spec : Prop :=
  ∀ n, P4684867709428164186.a n = A261953 n

end A261953

/-! ## A261953.P12501721190913508033

`record[n+1-dr((n+1)*n²)]`
-/

namespace A261953.P12501721190913508033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.digitalRoot ((n + 1) * n ^ 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261953.P12501721190913508033

namespace A261953

/-- `record[n+1-dr((n+1)*n²)]` -/
def P12501721190913508033.Spec : Prop :=
  ∀ n, P12501721190913508033.a n = A261953 n

end A261953

/-! ## A261953.P1006840300009471355

`3*(3*n-2)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A261953.P1006840300009471355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * ((3 * n : ℤ) - 2) - a (n - 1)

end

end A261953.P1006840300009471355

namespace A261953

/-- `3*(3*n-2)-a(n-1)` -/
def P1006840300009471355.Spec : Prop :=
  ∀ n, P1006840300009471355.a n = A261953 n

end A261953

/-! ## A261953.P9700810902503581835

`∑[A072996(n)]+n`
-/

namespace A261953.P9700810902503581835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A261953.P9700810902503581835

namespace A261953

/-- `∑[A072996(n)]+n` -/
def P9700810902503581835.Spec : Prop :=
  ∀ n, P9700810902503581835.a n = A261953 n

end A261953

/-! ## A261953.P9202219085243013214

`A168237(n)+A008486(n)`
-/

namespace A261953.P9202219085243013214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168237 n + A008486 n

end

end A261953.P9202219085243013214

namespace A261953

/-- `A168237(n)+A008486(n)` -/
def P9202219085243013214.Spec : Prop :=
  ∀ n, P9202219085243013214.a n = A261953 n

end A261953

/-! ## A261953.P1702691514513689754

`A008706(n)-A030451(n)`
-/

namespace A261953.P1702691514513689754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A030451 n

end

end A261953.P1702691514513689754

namespace A261953

/-- `A008706(n)-A030451(n)` -/
def P1702691514513689754.Spec : Prop :=
  ∀ n, P1702691514513689754.a n = A261953 n

end A261953

/-! ## A261953.P12613884825564266855

`A301293(n)-A131743(n)`
-/

namespace A261953.P12613884825564266855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A131743 n

end

end A261953.P12613884825564266855

namespace A261953

/-- `A301293(n)-A131743(n)` -/
def P12613884825564266855.Spec : Prop :=
  ∀ n, P12613884825564266855.a n = A261953 n

end A261953

/-! ## A261953.P13594145768366210896

`A008851(n+1)+A004277(n)`
-/

namespace A261953.P13594145768366210896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008851 (n + 1) + A004277 n

end

end A261953.P13594145768366210896

namespace A261953

/-- `A008851(n+1)+A004277(n)` -/
def P13594145768366210896.Spec : Prop :=
  ∀ n, P13594145768366210896.a n = A261953 n

end A261953

/-! ## A261953.P18139519034635661581

`A047216(n+1)+A004273(n)`
-/

namespace A261953.P18139519034635661581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047216 (n + 1) + A004273 n

end

end A261953.P18139519034635661581

namespace A261953

/-- `A047216(n+1)+A004273(n)` -/
def P18139519034635661581.Spec : Prop :=
  ∀ n, P18139519034635661581.a n = A261953 n

end A261953

/-! ## A261953.P17970629413617191536

`A047352(n+1)+A028310(n)`
-/

namespace A261953.P17970629413617191536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047352 (n + 1) + A028310 n

end

end A261953.P17970629413617191536

namespace A261953

/-- `A047352(n+1)+A028310(n)` -/
def P17970629413617191536.Spec : Prop :=
  ∀ n, P17970629413617191536.a n = A261953 n

end A261953

/-! ## A261953.P2907809120295208332

`A065033(n)+A047467(n+1)`
-/

namespace A261953.P2907809120295208332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + A047467 (n + 1)

end

end A261953.P2907809120295208332

namespace A261953

/-- `A065033(n)+A047467(n+1)` -/
def P2907809120295208332.Spec : Prop :=
  ∀ n, P2907809120295208332.a n = A261953 n

end A261953

/-! ## A261953.P16417805754054466692

`A087444(n+1)+A057428(n)`
-/

namespace A261953.P16417805754054466692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087444 (n + 1) + A057428 n

end

end A261953.P16417805754054466692

namespace A261953

/-- `A087444(n+1)+A057428(n)` -/
def P16417805754054466692.Spec : Prop :=
  ∀ n, P16417805754054466692.a n = A261953 n

end A261953

/-!
# A261954: Start with a single equilateral triangle for n=0; for the odd n-th generation add a triangle at each expandable side of the triangles of the (n-1)-th generation (this is the "side to side" version); for the even n-th generation use the "side to vertex" version; a(n) is the number of triangles added in the n-th generation.

The programs for A261954, the canonical program `A261954.P7192592713755380136` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261954 has offset 0).

The definition of A261954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261954.P13506606674615398326

`a(n-2)+3^gcd(2, n*a(n-1))` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A261954.P13506606674615398326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  a (n - 2) + 3 ^ Nat.gcd 2 (n * a (n - 1))

end

end A261954.P13506606674615398326

namespace A261954

/-- `a(n-2)+3^gcd(2, n*a(n-1))` -/
def P13506606674615398326.Spec : Prop :=
  ∀ n, (P13506606674615398326.a n : ℤ) = A261954 n

end A261954

/-! ## A261954.P7192592713755380136

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=6, a(4)=12, a(5)=15, a(6)=21`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A261954

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P7192592713755380136.Spec : Prop :=
  ∀ n, P7192592713755380136.a n = A261954 n

theorem P7192592713755380136.correct : P7192592713755380136.Spec := by
  intro n
  simp only [A261954]

end A261954

/-!
# A261957: Start with a single equilateral triangle for n=0; for the odd n-th generation add a triangle at each expandable side of the triangles of the (n-1)-th generation (this is the "vertex to side" version); for the even n-th generation use the "side to side" version; a(n) is the number of triangles added in the n-th generation.

The programs for A261957, there is no canonical definition to state claims against.
-/

/-! ## A261957.P3394261574584482224

`A000005(lcm(A173682(n), A233584(n+1)))`
-/

namespace A261957.P3394261574584482224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (A173682 n) (A233584 (n + 1)))

end

end A261957.P3394261574584482224

/-!
# A261960: Number A(n,k) of compositions of n such that no part equals any of its k immediate predecessors; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A261960, there is no canonical definition to state claims against.
-/

/-! ## A261960.P1548510805580461789

`A086375(A261959(n))`
-/

namespace A261960.P1548510805580461789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086375 (A261959 n).toNat

end

end A261960.P1548510805580461789

/-! ## A261960.P9804962172006376090

`A260999(A261959(n)+1)`
-/

namespace A261960.P9804962172006376090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A261959 n + 1).toNat

end

end A261960.P9804962172006376090

/-! ## A261960.P10710345652025450633

`A208244(A222416(A261959(n))²)`
-/

namespace A261960.P10710345652025450633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208244 (A222416 (A261959 n).toNat ^ 2).toNat

end

end A261960.P10710345652025450633

/-! ## A261960.P2749269834806192399

`A088519(A261959(n))-A069513(A076748(n+1))`
-/

namespace A261960.P2749269834806192399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A261959 n).toNat - A069513 (A076748 (n + 1)).toNat

end

end A261960.P2749269834806192399

/-!
# A261961: Number of ordered set partitions of {1,2,...,n} such that no part has the same size as any of its two immediate predecessors.

The programs for A261961, there is no canonical definition to state claims against.
-/

/-! ## A261961.P705104602690769795

`A261959(∑[n+3])`
-/

namespace A261961.P705104602690769795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A261961.P705104602690769795

/-! ## A261961.P18055613140116771150

`or(1, A261959(A055998(n+1)))`
-/

namespace A261961.P18055613140116771150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A261959 (A055998 (n + 1)).toNat)

end

end A261961.P18055613140116771150

/-! ## A261961.P5577816573051061282

`A261959(A055998(n+1))+and(1, A058763(n+1))`
-/

namespace A261961.P5577816573051061282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 (A055998 (n + 1)).toNat + Int.land 1 (A058763 (n + 1))

end

end A261961.P5577816573051061282

/-! ## A261961.P9057724615216604277

`A261959(A055998(n+1))/and(1, A058757(n+1))`
-/

namespace A261961.P9057724615216604277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261959 (A055998 (n + 1)).toNat : ℚ) / (Int.land 1 (A058757 (n + 1)) : ℚ)

end

end A261961.P9057724615216604277

/-! ## A261961.P12506292709530441795

`A261959(A055998(n+1))+and(n, A006519(n+1))`
-/

namespace A261961.P12506292709530441795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 (A055998 (n + 1)).toNat + Int.land (n : ℤ) (A006519 (n + 1))

end

end A261961.P12506292709530441795

/-!
# A261962: Number of compositions of n such that no part equals any of its two immediate predecessors.

The programs for A261962, there is no canonical definition to state claims against.
-/

/-! ## A261962.P1053252105604392026

`A003242(n)-A261984(n)`
-/

namespace A261962.P1053252105604392026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n - A261984 n

end

end A261962.P1053252105604392026

/-! ## A261962.P18145034079004879270

`A032020(n)+A285981(n)-A261984(n)`
-/

namespace A261962.P18145034079004879270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n + (A285981 n - A261984 n)

end

end A261962.P18145034079004879270

/-! ## A261962.P3130693241904908795

`A025047(n)+A345195(n)-A261984(n)`
-/

namespace A261962.P3130693241904908795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025047 n + (A345195 n - A261984 n)

end

end A261962.P3130693241904908795

/-! ## A261962.P15174901691657525685

`A011782(n)-(A261984(n)+A261983(n))`
-/

namespace A261962.P15174901691657525685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A261984 n + A261983 n)

end

end A261962.P15174901691657525685

/-! ## A261962.P17203596967494308534

`Δ[A056469(n)]-(A261984(n)+A261983(n))`
-/

namespace A261962.P17203596967494308534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A261984 n + A261983 n)

end

end A261962.P17203596967494308534

/-! ## A261962.P10008890764051054293

`A106356(A152947(n+1))-A261984(n)`
-/

namespace A261962.P10008890764051054293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (A152947 (n + 1)).toNat - A261984 n

end

end A261962.P10008890764051054293

/-! ## A261962.P503576474772764062

`A091613(A152947(n+1))-A261984(A028310(n))`
-/

namespace A261962.P503576474772764062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A152947 (n + 1)).toNat - A261984 (A028310 n).toNat

end

end A261962.P503576474772764062

/-! ## A261962.P1019499675042687791

`A261960(∑[n+2]-1)-A261984(n)`
-/

namespace A261962.P1019499675042687791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261960 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A261984 n

end

end A261962.P1019499675042687791

/-!
# A261964: Chocolate numbers read as a triangle across rows: T(n,k), n >= 1, 1 <= k <= n.

The programs for A261964, there is no canonical definition to state claims against.
-/

/-! ## A261964.P14677917563655236122

`56%A205862(A193374(n))`
-/

namespace A261964.P14677917563655236122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 56 (A205862 (A193374 n).toNat)

end

end A261964.P14677917563655236122

/-! ## A261964.P1397900940684896221

`A094365(A158279(n+1)²)+1`
-/

namespace A261964.P1397900940684896221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094365 (A158279 (n + 1) ^ 2).toNat + 1

end

end A261964.P1397900940684896221

/-! ## A261964.P3399063135408355578

`A205692(A303832(n+1)+1)-3`
-/

namespace A261964.P3399063135408355578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205692 (A303832 (n + 1) + 1).toNat - 3

end

end A261964.P3399063135408355578

/-! ## A261964.P7710901430625319472

`A321029(A214080(n)+A081156(n))`
-/

namespace A261964.P7710901430625319472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321029 (A214080 n + A081156 n).toNat

end

end A261964.P7710901430625319472

/-! ## A261964.P18066927926144708598

`C(A000005(A207828(n)), A304311(n))`
-/

namespace A261964.P18066927926144708598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (A207828 n).toNat).toNat (A304311 n).toNat

end

end A261964.P18066927926144708598

/-!
# A261968: Expansion of phi(q^5) / phi(q) in powers of q where phi() is a Ramanujan theta function.

The programs for A261968, there is no canonical definition to state claims against.
-/

/-! ## A261968.P10586929856866547875

`(-1)^n*A138526(n)`
-/

namespace A261968.P10586929856866547875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A138526 n

end

end A261968.P10586929856866547875

/-! ## A261968.P14880056780988882128

`A138526(n)/A033999(n)`
-/

namespace A261968.P14880056780988882128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138526 n : ℚ) / (A033999 n : ℚ)

end

end A261968.P14880056780988882128

/-! ## A261968.P13290993900472016075

`A138526(n)*A269529(A120880(n))`
-/

namespace A261968.P13290993900472016075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138526 n * A269529 (A120880 n).toNat

end

end A261968.P13290993900472016075

/-! ## A261968.P11624827025078801542

`A138526(n)*A187307(A008585(n))`
-/

namespace A261968.P11624827025078801542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138526 n * A187307 (A008585 n).toNat

end

end A261968.P11624827025078801542

/-! ## A261968.P14623212813995563404

`A144377(5*n)`
-/

namespace A261968.P14623212813995563404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144377 (5 * n)

end

end A261968.P14623212813995563404

/-! ## A261968.P5293977443799124482

`record[A138527(n)]*A033999(n)`
-/

namespace A261968.P5293977443799124482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A033999 n

end

end A261968.P5293977443799124482

/-!
# A261969: Product of primes dividing n with maximum multiplicity.

The programs for A261969, the canonical program `A261969.P5982450597750301384` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261969 has offset 1).

The definition of A261969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A261969.P3421162795546941749

`∏{p}[A375931(n+1), #]`
-/

namespace A261969.P3421162795546941749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A261969.P3421162795546941749

namespace A261969

/-- `∏{p}[A375931(n+1), #]` -/
def P3421162795546941749.Spec : Prop :=
  ∀ n, (P3421162795546941749.a n : ℤ) = A261969 (n + 1)

end A261969

/-! ## A261969.P9044082170051151116

`A007947(A375931(n+1))`
-/

namespace A261969.P9044082170051151116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A375931 (n + 1)).toNat

end

end A261969.P9044082170051151116

namespace A261969

/-- `A007947(A375931(n+1))` -/
def P9044082170051151116.Spec : Prop :=
  ∀ n, P9044082170051151116.a n = A261969 (n + 1)

end A261969

/-! ## A261969.P4444747803617848060

`gcd(A144845(n), A375931(n+1))`
-/

namespace A261969.P4444747803617848060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144845 n) (A375931 (n + 1))

end

end A261969.P4444747803617848060

namespace A261969

/-- `gcd(A144845(n), A375931(n+1))` -/
def P4444747803617848060.Spec : Prop :=
  ∀ n, (P4444747803617848060.a n : ℤ) = A261969 (n + 1)

end A261969

/-! ## A261969.P6194354585122493717

`A007947((n+1)/A375932(n+1))`
-/

namespace A261969.P6194354585122493717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A375932 (n + 1) : ℚ))).toNat

end

end A261969.P6194354585122493717

namespace A261969

/-- `A007947((n+1)/A375932(n+1))` -/
def P6194354585122493717.Spec : Prop :=
  ∀ n, P6194354585122493717.a n = A261969 (n + 1)

end A261969

/-! ## A261969.P5982450597750301384

`A078615(n+1)/gcd(A078615(n+1), A304768(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A261969

/-- `A078615(n+1)/gcd(A078615(n+1), A304768(n+1))` -/
def P5982450597750301384.Spec : Prop :=
  ∀ n, P5982450597750301384.a n = (A261969 (n + 1) : ℚ)

end A261969

/-! ## A261969.P8182204309011783506

`A052410(A052410(A375931(A052410(n+1))))`
-/

namespace A261969.P8182204309011783506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A052410 (A375931 (A052410 (n + 1)).toNat).toNat).toNat

end

end A261969.P8182204309011783506

namespace A261969

/-- `A052410(A052410(A375931(A052410(n+1))))` -/
def P8182204309011783506.Spec : Prop :=
  ∀ n, P8182204309011783506.a n = A261969 (n + 1)

end A261969

/-! ## A261969.P15487062286045588893

`A128651(A129132(n+1)+1)`
-/

namespace A261969.P15487062286045588893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128651 (A129132 (n + 1) + 1).toNat

end

end A261969.P15487062286045588893

namespace A261969

/-- `A128651(A129132(n+1)+1)` -/
def P15487062286045588893.Spec : Prop :=
  ∀ n, P15487062286045588893.a n = A261969 (n + 1)

end A261969

/-! ## A261969.P11429831654179947948

`A128651(∑[A051903(n+1)]+1)`
-/

namespace A261969.P11429831654179947948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128651 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A261969.P11429831654179947948

namespace A261969

/-- `A128651(∑[A051903(n+1)]+1)` -/
def P11429831654179947948.Spec : Prop :=
  ∀ n, P11429831654179947948.a n = A261969 (n + 1)

end A261969

/-! ## A261969.P2185608277785931258

`A007913(gcd(A078615(n+1), A304768(n+1)))`
-/

namespace A261969.P2185608277785931258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Int.gcd (A078615 (n + 1)) (A304768 (n + 1)))

end

end A261969.P2185608277785931258

namespace A261969

/-- `A007913(gcd(A078615(n+1), A304768(n+1)))` -/
def P2185608277785931258.Spec : Prop :=
  ∀ n, P2185608277785931258.a n = A261969 (n + 1)

end A261969

/-! ## A261969.P2581167215347803234

`A007947(n+1)/A007947(A066636(n+1))`
-/

namespace A261969.P2581167215347803234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A007947 (A066636 (n + 1)).toNat : ℚ)

end

end A261969.P2581167215347803234

namespace A261969

/-- `A007947(n+1)/A007947(A066636(n+1))` -/
def P2581167215347803234.Spec : Prop :=
  ∀ n, P2581167215347803234.a n = (A261969 (n + 1) : ℚ)

end A261969

/-! ## A261969.P599525795534211743

`A015053(A015053(n+1))/A015053(A066636(n+1))`
-/

namespace A261969.P599525795534211743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015053 (A015053 (n + 1)).toNat : ℚ) / (A015053 (A066636 (n + 1)).toNat : ℚ)

end

end A261969.P599525795534211743

namespace A261969

/-- `A015053(A015053(n+1))/A015053(A066636(n+1))` -/
def P599525795534211743.Spec : Prop :=
  ∀ n, P599525795534211743.a n = (A261969 (n + 1) : ℚ)

end A261969

/-! ## A261969.P16091799224060382759

`A055231(A304768(n+1))`
-/

namespace A261969.P16091799224060382759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A304768 (n + 1)).toNat

end

end A261969.P16091799224060382759

namespace A261969

/-- `A055231(A304768(n+1))` -/
def P16091799224060382759.Spec : Prop :=
  ∀ n, P16091799224060382759.a n = A261969 (n + 1)

end A261969

/-! ## A261969.P7421423019287875605

`A304776(A066638(n+1))/A304776(A066636(n+1))`
-/

namespace A261969.P7421423019287875605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304776 (A066638 (n + 1)).toNat : ℚ) / (A304776 (A066636 (n + 1)).toNat : ℚ)

end

end A261969.P7421423019287875605

namespace A261969

/-- `A304776(A066638(n+1))/A304776(A066636(n+1))` -/
def P7421423019287875605.Spec : Prop :=
  ∀ n, P7421423019287875605.a n = (A261969 (n + 1) : ℚ)

end A261969

/-! ## A261969.P3232228323291167992

`A052410(A375931((n+1)²))`
-/

namespace A261969.P3232228323291167992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A375931 ((n + 1) ^ 2)).toNat

end

end A261969.P3232228323291167992

namespace A261969

/-- `A052410(A375931((n+1)²))` -/
def P3232228323291167992.Spec : Prop :=
  ∀ n, P3232228323291167992.a n = A261969 (n + 1)

end A261969

/-!
# A261970: Numbers whose base-b expansions, for both b=3 and b=4, include no digits other than 0 and b-1.

The programs for A261970, there is no canonical definition to state claims against.
-/

/-! ## A261970.P18004825037004049696

`∩[A117496(n+1), A001196(n)]`
-/

namespace A261970.P18004825037004049696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261970.P18004825037004049696

/-! ## A261970.P9541695614512106277

`∩[A005823(n+1), A001196(n)]`
-/

namespace A261970.P9541695614512106277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261970.P9541695614512106277

/-! ## A261970.P5838219023247598694

`∩[A055247(n+1)-1, A001196(n)]`
-/

namespace A261970.P5838219023247598694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055247 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A261970.P5838219023247598694

/-!
# A261971: Number of unit cubes that have a side on the surface of a p X p X p cube composed of p^3 unit cubes, where p is the n-th prime.

The programs for A261971, the canonical program `A261971.P11221082958945660540` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261971 has offset 1).

The definition of A261971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A261971.P11221082958945660540

`6*A001248(n+1)-12*A000040(n+1)+8`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A261971

/-- `6*A001248(n+1)-12*A000040(n+1)+8` -/
def P11221082958945660540.Spec : Prop :=
  ∀ n, P11221082958945660540.a n = A261971 (n + 1)

theorem P11221082958945660540.correct : P11221082958945660540.Spec := by
  intro n
  simp only [A261971, Nat.add_sub_cancel]

end A261971

/-! ## A261971.P8699071316736355444

`6*A006093(n+1)²+2`
-/

namespace A261971.P8699071316736355444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A006093 (n + 1) ^ 2 + 2

end

end A261971.P8699071316736355444

namespace A261971

/-- `6*A006093(n+1)²+2` -/
def P8699071316736355444.Spec : Prop :=
  ∀ n, P8699071316736355444.a n = A261971 (n + 1)

theorem P8699071316736355444.correct : P8699071316736355444.Spec := by
  intro n
  simp only [A261971, Nat.add_sub_cancel, A261971.P8699071316736355444.a, A261971.P11221082958945660540.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261971

/-! ## A261971.P4020983169720586375

`6*(A040976(n+1)+1)²+2`
-/

namespace A261971.P4020983169720586375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A040976 (n + 1) + 1) ^ 2 + 2

end

end A261971.P4020983169720586375

namespace A261971

/-- `6*(A040976(n+1)+1)²+2` -/
def P4020983169720586375.Spec : Prop :=
  ∀ n, P4020983169720586375.a n = A261971 (n + 1)

theorem P4020983169720586375.correct : P4020983169720586375.Spec := by
  intro n
  simp only [A261971, Nat.add_sub_cancel, A261971.P4020983169720586375.a, A261971.P11221082958945660540.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261971

/-! ## A261971.P11699728742042315111

`6*(1-A000040(n+1))²+2`
-/

namespace A261971.P11699728742042315111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (1 - A000040 (n + 1)) ^ 2 + 2

end

end A261971.P11699728742042315111

namespace A261971

/-- `6*(1-A000040(n+1))²+2` -/
def P11699728742042315111.Spec : Prop :=
  ∀ n, P11699728742042315111.a n = A261971 (n + 1)

theorem P11699728742042315111.correct : P11699728742042315111.Spec := by
  intro n
  simp only [A261971, Nat.add_sub_cancel, A261971.P11699728742042315111.a, A261971.P11221082958945660540.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A261971

/-! ## A261971.P1691808341616075957

`record[6*A000010(n+1)²+2]`
-/

namespace A261971.P1691808341616075957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000010 (n + 1) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261971.P1691808341616075957

namespace A261971

/-- `record[6*A000010(n+1)²+2]` -/
def P1691808341616075957.Spec : Prop :=
  ∀ n, P1691808341616075957.a n = A261971 (n + 1)

end A261971

/-! ## A261971.P13635892603296635081

`6*eq[1, A001222(n+1)]²+2`
-/

namespace A261971.P13635892603296635081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 + 2

end

end A261971.P13635892603296635081

namespace A261971

/-- `6*eq[1, A001222(n+1)]²+2` -/
def P13635892603296635081.Spec : Prop :=
  ∀ n, (P13635892603296635081.a n : ℤ) = A261971 (n + 1)

end A261971

/-! ## A261971.P5302401151875274678

`6*eq[2, A000005(n+1)]²+2`
-/

namespace A261971.P5302401151875274678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 + 2

end

end A261971.P5302401151875274678

namespace A261971

/-- `6*eq[2, A000005(n+1)]²+2` -/
def P5302401151875274678.Spec : Prop :=
  ∀ n, (P5302401151875274678.a n : ℤ) = A261971 (n + 1)

end A261971

/-! ## A261971.P9503399430371584842

`A005897(eq[2, ∏{e}[n+1, #+1]])`
-/

namespace A261971.P9503399430371584842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A261971.P9503399430371584842

namespace A261971

/-- `A005897(eq[2, ∏{e}[n+1, #+1]])` -/
def P9503399430371584842.Spec : Prop :=
  ∀ n, P9503399430371584842.a n = A261971 (n + 1)

end A261971

/-! ## A261971.P6585402955596314983

`record[A014963(n+2)^3-n^3]`
-/

namespace A261971.P6585402955596314983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 3 - (n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261971.P6585402955596314983

namespace A261971

/-- `record[A014963(n+2)^3-n^3]` -/
def P6585402955596314983.Spec : Prop :=
  ∀ n, P6585402955596314983.a n = A261971 (n + 1)

end A261971

/-! ## A261971.P3981638528210409430

`A005897(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]])`
-/

namespace A261971.P3981638528210409430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A261971.P3981638528210409430

namespace A261971

/-- `A005897(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]])` -/
def P3981638528210409430.Spec : Prop :=
  ∀ n, P3981638528210409430.a n = A261971 (n + 1)

end A261971

/-! ## A261971.P6482854889843699093

`A005897(eq[n, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]])`
-/

namespace A261971.P6482854889843699093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f4 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A261971.P6482854889843699093

namespace A261971

/-- `A005897(eq[n, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]])` -/
def P6482854889843699093.Spec : Prop :=
  ∀ n, P6482854889843699093.a n = A261971 (n + 1)

end A261971

/-! ## A261971.P14258733112339034426

`A005897(A006093(n+1))`
-/

namespace A261971.P14258733112339034426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (A006093 (n + 1)).toNat

end

end A261971.P14258733112339034426

namespace A261971

/-- `A005897(A006093(n+1))` -/
def P14258733112339034426.Spec : Prop :=
  ∀ n, P14258733112339034426.a n = A261971 (n + 1)

end A261971

/-! ## A261971.P17882082018518786606

`A005897(record[A000010(n+1)])`
-/

namespace A261971.P17882082018518786606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261971.P17882082018518786606

namespace A261971

/-- `A005897(record[A000010(n+1)])` -/
def P17882082018518786606.Spec : Prop :=
  ∀ n, P17882082018518786606.a n = A261971 (n + 1)

end A261971

/-! ## A261971.P11849435665303034458

`A005897(A000040(n+1)-1)`
-/

namespace A261971.P11849435665303034458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (A000040 (n + 1) - 1).toNat

end

end A261971.P11849435665303034458

namespace A261971

/-- `A005897(A000040(n+1)-1)` -/
def P11849435665303034458.Spec : Prop :=
  ∀ n, P11849435665303034458.a n = A261971 (n + 1)

end A261971

/-! ## A261971.P18288149297509813948

`A005897(A014689(n+1)+n)`
-/

namespace A261971.P18288149297509813948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (A014689 (n + 1) + (n : ℤ)).toNat

end

end A261971.P18288149297509813948

namespace A261971

/-- `A005897(A014689(n+1)+n)` -/
def P18288149297509813948.Spec : Prop :=
  ∀ n, P18288149297509813948.a n = A261971 (n + 1)

end A261971

/-! ## A261971.P12172505667633773470

`A005897(record[A006530(n+2)-1])`
-/

namespace A261971.P12172505667633773470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A261971.P12172505667633773470

namespace A261971

/-- `A005897(record[A006530(n+2)-1])` -/
def P12172505667633773470.Spec : Prop :=
  ∀ n, P12172505667633773470.a n = A261971 (n + 1)

end A261971

/-! ## A261971.P273627051808039657

`A033581(A000040(n+1)-1)+2`
-/

namespace A261971.P273627051808039657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 (A000040 (n + 1) - 1).toNat + 2

end

end A261971.P273627051808039657

namespace A261971

/-- `A033581(A000040(n+1)-1)+2` -/
def P273627051808039657.Spec : Prop :=
  ∀ n, P273627051808039657.a n = A261971 (n + 1)

end A261971

/-! ## A261971.P139089939696214194

`A097803(A000040(n+1)-1)-1`
-/

namespace A261971.P139089939696214194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097803 (A000040 (n + 1) - 1).toNat - 1

end

end A261971.P139089939696214194

namespace A261971

/-- `A097803(A000040(n+1)-1)-1` -/
def P139089939696214194.Spec : Prop :=
  ∀ n, P139089939696214194.a n = A261971 (n + 1)

end A261971

/-! ## A261971.P12158044141316238313

`2*A056107(eq[1, A001222(n+1)])`
-/

namespace A261971.P12158044141316238313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056107 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261971.P12158044141316238313

namespace A261971

/-- `2*A056107(eq[1, A001222(n+1)])` -/
def P12158044141316238313.Spec : Prop :=
  ∀ n, P12158044141316238313.a n = A261971 (n + 1)

end A261971

/-! ## A261971.P6204017836100995621

`2*A056107(eq[1, A345936(n+1)])`
-/

namespace A261971.P6204017836100995621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056107 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A261971.P6204017836100995621

namespace A261971

/-- `2*A056107(eq[1, A345936(n+1)])` -/
def P6204017836100995621.Spec : Prop :=
  ∀ n, P6204017836100995621.a n = A261971 (n + 1)

end A261971

/-!
# A261972: The first of three consecutive positive integers the sum of the squares of which is equal to the sum of the squares of four consecutive positive integers.

The programs for A261972, there is no canonical definition to state claims against.
-/

/-! ## A261972.P6028210042233962561

`Δ[floor((sqrt(3)+2)*a(n-1))]²` with `a(0)=2`
-/

namespace A261972.P6028210042233962561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A261972.P6028210042233962561

/-! ## A261972.P912775400105031340

`Δ[round(a(n-1)/(sqrt(3)-2))]²` with `a(0)=1`
-/

namespace A261972.P912775400105031340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (Real.sqrt (3 : ℝ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A261972.P912775400105031340

/-! ## A261972.P12303687429118817508

`∑[floor((sqrt(3)+2)*a(n-1))]²` with `a(0)=5, a(1)=14`
-/

namespace A261972.P12303687429118817508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 14] fun n f1 =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A261972.P12303687429118817508

/-! ## A261972.P14002248204074754570

`record[ceil((sqrt(3)+2)*a(n-1))]²` with `a(0)=5, a(1)=1, a(2)=5`
-/

namespace A261972.P14002248204074754570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 5] fun n f1 =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A261972.P14002248204074754570

/-! ## A261972.P3017592856089761279

`record[round((sqrt(3)+2)*a(n-1))]²` with `a(0)=5, a(1)=1, a(2)=5`
-/

namespace A261972.P3017592856089761279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 1, 5] fun n f1 =>
  SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A261972.P3017592856089761279

/-! ## A261972.P18019695125114239814

`Δ[4*a(n-1)-a(n-2)]²` with `a(0)=2, a(1)=7`
-/

namespace A261972.P18019695125114239814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A261972.P18019695125114239814

/-! ## A261972.P12062500167877612752

`Δ[(a(n-1)+1)²/a(n-2)]²` with `a(0)=3, a(1)=8`
-/

namespace A261972.P12062500167877612752
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 8] fun n f1 =>
  (f1 (n - 1) + 1) ^ 2 / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A261972.P12062500167877612752

/-! ## A261972.P11658829423097063795

`Δ[A102206(n)]²`
-/

namespace A261972.P11658829423097063795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A261972.P11658829423097063795

/-! ## A261972.P7563464092589994013

`Δ[A125905(n)]²`
-/

namespace A261972.P7563464092589994013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A261972.P7563464092589994013

/-! ## A261972.P14001306968130056564

`A001834(n+1)²`
-/

namespace A261972.P14001306968130056564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 (n + 1) ^ 2

end

end A261972.P14001306968130056564

/-!
# A261973: The first of three consecutive positive integers the sum of the squares of which is equal to the sum of the squares of eleven consecutive positive integers.

The programs for A261973, there is no canonical definition to state claims against.
-/

/-! ## A261973.P8835781693363423338

`6*A174748(n+2)-1`
-/

namespace A261973.P8835781693363423338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A174748 (n + 2) - 1

end

end A261973.P8835781693363423338

/-! ## A261973.P4148071312866806666

`lcm(6, A042010(2*n+1))-1`
-/

namespace A261973.P4148071312866806666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 6 (A042010 (2 * n + 1)) : ℤ) - 1

end

end A261973.P4148071312866806666

/-! ## A261973.P16970213661073256225

`(-1)^A202994(3*(n+1))+6*A174748(n+2)`
-/

namespace A261973.P16970213661073256225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A202994 (3 * (n + 1)) : ℤ) + (6 * A174748 (n + 2) : ℚ)

end

end A261973.P16970213661073256225

/-! ## A261973.P8156588011085135422

`(-1)^A132630(2*n+3)+6*A174748(n+2)`
-/

namespace A261973.P8156588011085135422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A132630 (2 * n + 3) : ℤ) + (6 * A174748 (n + 2) : ℚ)

end

end A261973.P8156588011085135422

/-! ## A261973.P13344805480302044916

`(-1)^A249373(3*n+4)+6*A174748(n+2)`
-/

namespace A261973.P13344805480302044916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A249373 (3 * n + 4) : ℤ) + (6 * A174748 (n + 2) : ℚ)

end

end A261973.P13344805480302044916

/-!
# A261975: Expansion of elliptic_E / elliptic_K in powers of q.

The programs for A261975, there is no canonical definition to state claims against.
-/

/-! ## A261975.P761407162420328540

`A096727(n)*A344742(A107595(n))`
-/

namespace A261975.P761407162420328540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096727 n * A344742 (A107595 n).toNat

end

end A261975.P761407162420328540

/-!
# A261977: Expansion of (elliptic_E / elliptic_K)^(1/2) in powers of q.

The programs for A261977, there is no canonical definition to state claims against.
-/

/-! ## A261977.P4861178067995677416

`A246954(C(3^n, 2))`
-/

namespace A261977.P4861178067995677416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246954 (Nat.choose (3 ^ n) 2)

end

end A261977.P4861178067995677416

/-!
# A261979: Expansion of (elliptic_K / elliptic_E)^(1/2) in powers of q.

The programs for A261979, there is no canonical definition to state claims against.
-/

/-! ## A261979.P17811600481547476692

`A111374(2*n)*A350111(A000010((n+3)²+n+2))`
-/

namespace A261979.P17811600481547476692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111374 (2 * n) * A350111 (A000010 ((n + 3) ^ 2 + (n + 2))).toNat

end

end A261979.P17811600481547476692

/-!
# A261982: Number of compositions of n with some part repeated.

The programs for A261982, there is no canonical definition to state claims against.
-/

/-! ## A261982.P1160655210316278413

`A011782(n)-A032020(n)`
-/

namespace A261982.P1160655210316278413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A032020 n

end

end A261982.P1160655210316278413

/-! ## A261982.P11465777718470827960

`A285981(n)+A261983(n)`
-/

namespace A261982.P11465777718470827960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285981 n + A261983 n

end

end A261982.P11465777718470827960

/-! ## A261982.P13077465600392958583

`A003242(n)+A261983(n)-A032020(n)`
-/

namespace A261982.P13077465600392958583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n + (A261983 n - A032020 n)

end

end A261982.P13077465600392958583

/-! ## A261982.P5027518729042593825

`A011782(n)+A285981(n)-A003242(n)`
-/

namespace A261982.P5027518729042593825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A285981 n - A003242 n)

end

end A261982.P5027518729042593825

/-! ## A261982.P6411719254250528565

`A102726(n)+A335514(n)-A032020(n)`
-/

namespace A261982.P6411719254250528565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102726 n + (A335514 n - A032020 n)

end

end A261982.P6411719254250528565

/-! ## A261982.P1731401173430932132

`A166444(n+1)-(A332305(n)+A332304(n))`
-/

namespace A261982.P1731401173430932132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) - (A332305 n + A332304 n)

end

end A261982.P1731401173430932132

/-! ## A261982.P4266180660638849661

`A011782(n)-A242447(A133263(n)-1)`
-/

namespace A261982.P4266180660638849661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A242447 (A133263 n - 1).toNat

end

end A261982.P4266180660638849661

/-!
# A261983: Number of compositions of n such that at least two adjacent parts are equal.

The programs for A261983, there is no canonical definition to state claims against.
-/

/-! ## A261983.P7104728047485503132

`A011782(n)-A003242(n)`
-/

namespace A261983.P7104728047485503132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A003242 n

end

end A261983.P7104728047485503132

/-! ## A261983.P2651978054006526337

`A261982(n)-A285981(n)`
-/

namespace A261983.P2651978054006526337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261982 n - A285981 n

end

end A261983.P2651978054006526337

/-! ## A261983.P10425640580799949661

`A345192(n)-A345195(n)`
-/

namespace A261983.P10425640580799949661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345192 n - A345195 n

end

end A261983.P10425640580799949661

/-! ## A261983.P18243611868257498310

`A032020(n)+A261982(n)-A003242(n)`
-/

namespace A261983.P18243611868257498310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n + (A261982 n - A003242 n)

end

end A261983.P18243611868257498310

/-! ## A261983.P12213278615872448377

`A011782(n)-(A285981(n)+A032020(n))`
-/

namespace A261983.P12213278615872448377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A285981 n + A032020 n)

end

end A261983.P12213278615872448377

/-! ## A261983.P3976792602706323853

`A025047(n)+A345192(n)-A003242(n)`
-/

namespace A261983.P3976792602706323853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025047 n + (A345192 n - A003242 n)

end

end A261983.P3976792602706323853

/-! ## A261983.P9061043231625480915

`A011782(n)-(A345195(n)+A025047(n))`
-/

namespace A261983.P9061043231625480915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A345195 n + A025047 n)

end

end A261983.P9061043231625480915

/-! ## A261983.P10449810778539821260

`A011782(n)-A106356(∑[n-1]+2)`
-/

namespace A261983.P10449810778539821260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A106356 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A261983.P10449810778539821260

/-! ## A261983.P13297963369720104124

`A020639(A000010(n+1))^(n-1)-A214268(2*n²)`
-/

namespace A261983.P13297963369720104124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A000010 (n + 1)).toNat : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (A214268 (2 * n ^ 2) : ℚ)

end

end A261983.P13297963369720104124

/-!
# A261984: Number of compositions of n such that the minimal distance between two identical parts equals two.

The programs for A261984, there is no canonical definition to state claims against.
-/

/-! ## A261984.P16819531677805179192

`A003242(n)-A261962(n)`
-/

namespace A261984.P16819531677805179192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n - A261962 n

end

end A261984.P16819531677805179192

/-! ## A261984.P3989715855591657898

`A032020(n)+A285981(n)-A261962(n)`
-/

namespace A261984.P3989715855591657898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n + (A285981 n - A261962 n)

end

end A261984.P3989715855591657898

/-! ## A261984.P1096750049317425981

`A025047(n)+A345195(n)-A261962(n)`
-/

namespace A261984.P1096750049317425981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025047 n + (A345195 n - A261962 n)

end

end A261984.P1096750049317425981

/-! ## A261984.P15425342714906576347

`A011782(n)-(A261983(n)+A261962(n))`
-/

namespace A261984.P15425342714906576347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A261983 n + A261962 n)

end

end A261984.P15425342714906576347

/-! ## A261984.P3145410981132497392

`A106356(C(n, 2)+1)-A261962(n)`
-/

namespace A261984.P3145410981132497392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (Nat.choose n 2 + 1) - A261962 n

end

end A261984.P3145410981132497392

/-! ## A261984.P14614488543059794611

`A106356(A152947(n+1))-A261962(n)`
-/

namespace A261984.P14614488543059794611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106356 (A152947 (n + 1)).toNat - A261962 n

end

end A261984.P14614488543059794611

/-! ## A261984.P8221919574248100307

`A091613(A152947(n+1))-A261962(A028310(n))`
-/

namespace A261984.P8221919574248100307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091613 (A152947 (n + 1)).toNat - A261962 (A028310 n).toNat

end

end A261984.P8221919574248100307

/-! ## A261984.P18102753946595071995

`A261960(∑[n+2]-1)-A261962(n)`
-/

namespace A261984.P18102753946595071995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261960 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A261962 n

end

end A261984.P18102753946595071995

/-!
# A261985: Sum of the smaller parts of the partitions of n into two squarefree parts.

The programs for A261985, there is no canonical definition to state claims against.
-/

/-! ## A261985.P1671418503401668289

`A303221(n+1)/(n+1)`
-/

namespace A261985.P1671418503401668289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303221 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A261985.P1671418503401668289

/-! ## A261985.P14476644673287232902

`A262351(n+1)-A261927(n+1)`
-/

namespace A261985.P14476644673287232902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262351 (n + 1) - A261927 (n + 1)

end

end A261985.P14476644673287232902

/-! ## A261985.P17865694933264569650

`ceil(acot(A000027(n+1))*A303221(n+1))`
-/

namespace A261985.P17865694933264569650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A000027 (n + 1) : ℝ) * (A303221 (n + 1) : ℝ)⌉

end

end A261985.P17865694933264569650

/-! ## A261985.P11731030996318222164

`(n+1)*A071068(n+1)-A261927(n+1)`
-/

namespace A261985.P11731030996318222164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A071068 (n + 1) - A261927 (n + 1)

end

end A261985.P11731030996318222164

/-! ## A261985.P5037707845674569763

`(n+1)*A110654(A098235(n+1))-A261927(n+1)`
-/

namespace A261985.P5037707845674569763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A110654 (A098235 (n + 1)).toNat - A261927 (n + 1)

end

end A261985.P5037707845674569763

/-! ## A261985.P6074872199482082075

`(n+1)*A004526(A098235(n+1)+1)-A261927(n+1)`
-/

namespace A261985.P6074872199482082075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004526 (A098235 (n + 1) + 1).toNat - A261927 (n + 1)

end

end A261985.P6074872199482082075

/-! ## A261985.P13701659441542732218

`floor(A071068(n+1)/acot(A000027(n+1)))-A261927(n+1)`
-/

namespace A261985.P13701659441542732218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071068 (n + 1) : ℝ) / SequenceMachineLib.acot (A000027 (n + 1) : ℝ)⌋ - A261927 (n + 1)

end

end A261985.P13701659441542732218

/-! ## A261985.P17322270289792240675

`(n+1)*(A098235(n+1)-A098236(n+1))-A261927(n+1)`
-/

namespace A261985.P17322270289792240675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A098235 (n + 1) - A098236 (n + 1)) - A261927 (n + 1)

end

end A261985.P17322270289792240675

/-!
# A261987: Triangle read by rows: row n lists the set of n coprime composite numbers that minimizes the difference between first and last terms, and then minimizes the average of the terms.

The programs for A261987, there is no canonical definition to state claims against.
-/

/-! ## A261987.P10483370360716868795

`∑[A140957(A024653(n))²]`
-/

namespace A261987.P10483370360716868795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140957 (A024653 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261987.P10483370360716868795

/-! ## A261987.P9092915494291554177

`∑[A140957(A004870(n+1))²]`
-/

namespace A261987.P9092915494291554177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140957 (A004870 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261987.P9092915494291554177

/-! ## A261987.P17316560001386400974

`∑[A140957(A004903(n+1))²]`
-/

namespace A261987.P17316560001386400974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140957 (A004903 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261987.P17316560001386400974

/-! ## A261987.P2195902339308406935

`∑[A140957(A024653(n))*A140957(n)]`
-/

namespace A261987.P2195902339308406935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140957 (A024653 n).toNat * A140957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261987.P2195902339308406935

/-! ## A261987.P12821023663860007419

`∑[A140957(n)^A246071(A059268(n))]`
-/

namespace A261987.P12821023663860007419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140957 n : ℚ) ^ (A246071 (A059268 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261987.P12821023663860007419

/-!
# A261988: Expansion of phi(q^9) / phi(q) in powers of q where phi() is a Ramanujan theta function.

The programs for A261988, there is no canonical definition to state claims against.
-/

/-! ## A261988.P1960166323154732924

`(-1)^n*A128770(n)`
-/

namespace A261988.P1960166323154732924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A128770 n

end

end A261988.P1960166323154732924

/-! ## A261988.P5075271252123606710

`A128770(n)/A033999(n)`
-/

namespace A261988.P5075271252123606710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128770 n : ℚ) / (A033999 n : ℚ)

end

end A261988.P5075271252123606710

/-! ## A261988.P887193056520685459

`A128770(n)/A057077(A038712(n+1))`
-/

namespace A261988.P887193056520685459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128770 n : ℚ) / (A057077 (A038712 (n + 1)).toNat : ℚ)

end

end A261988.P887193056520685459

/-! ## A261988.P10026669163253754026

`A128770(n)/A057077(2*n)`
-/

namespace A261988.P10026669163253754026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128770 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A261988.P10026669163253754026

/-! ## A261988.P12604120692358650224

`A128770(n)*A209615(2*n+1)`
-/

namespace A261988.P12604120692358650224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128770 n * A209615 (2 * n + 1)

end

end A261988.P12604120692358650224

/-! ## A261988.P6562073755439236260

`A128770(n)/A100051(A302025(3*n+5))`
-/

namespace A261988.P6562073755439236260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128770 n : ℚ) / (A100051 (A302025 (3 * n + 5)).toNat : ℚ)

end

end A261988.P6562073755439236260

/-! ## A261988.P3922430811765461922

`A128770(n)*A130595(A000217(n))`
-/

namespace A261988.P3922430811765461922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128770 n * A130595 (A000217 n).toNat

end

end A261988.P3922430811765461922

/-! ## A261988.P18133831956936873825

`A128770(n)*A219977(n²)`
-/

namespace A261988.P18133831956936873825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128770 n * A219977 (n ^ 2)

end

end A261988.P18133831956936873825

/-! ## A261988.P16794839901746689861

`A128770(n)/A087960(n²)`
-/

namespace A261988.P16794839901746689861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128770 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A261988.P16794839901746689861

/-!
# A261989: Numbers such that A017666(n) = A017668(n).

The programs for A261989, there is no canonical definition to state claims against.
-/

/-! ## A261989.P8203914698928036427

`filter[A255244(n+1), A353675(#)]`
-/

namespace A261989.P8203914698928036427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353675 (f1 j).toNat = 1) n)

end

end A261989.P8203914698928036427

/-!
# A261990: Color of the cell Langton's Ant touches on its n-th step before the color is changed by the ant; 0=white, 1=black.

The programs for A261990, there is no canonical definition to state claims against.
-/

/-! ## A261990.P16302129839493620231

`A000007(Δ[A255938(n)]+1)`
-/

namespace A261990.P16302129839493620231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (f1 (n + 1) - f1 n + 1).toNat

end

end A261990.P16302129839493620231

/-! ## A261990.P12465597512595843233

`A001883(Δ[A255938(n)]+1)`
-/

namespace A261990.P12465597512595843233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001883 (f1 (n + 1) - f1 n + 1).toNat

end

end A261990.P12465597512595843233

/-! ## A261990.P10836221220035633744

`A005803(Δ[A255938(n)]+1)`
-/

namespace A261990.P10836221220035633744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005803 (f1 (n + 1) - f1 n + 1).toNat

end

end A261990.P10836221220035633744

/-! ## A261990.P14537481653487009818

`A082784(Δ[A255938(n)]+1)`
-/

namespace A261990.P14537481653487009818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082784 (f1 (n + 1) - f1 n + 1).toNat

end

end A261990.P14537481653487009818

/-! ## A261990.P8128364659118171369

`A089801(Δ[A255938(n)]+1)`
-/

namespace A261990.P8128364659118171369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089801 (f1 (n + 1) - f1 n + 1).toNat

end

end A261990.P8128364659118171369

/-! ## A261990.P8289183490033580183

`A122865(Δ[A255938(n)]+1)`
-/

namespace A261990.P8289183490033580183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (f1 (n + 1) - f1 n + 1).toNat

end

end A261990.P8289183490033580183

/-! ## A261990.P16204593862644465444

`A271698(Δ[A255938(n)]+1)`
-/

namespace A261990.P16204593862644465444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271698 (f1 (n + 1) - f1 n + 1).toNat

end

end A261990.P16204593862644465444

/-! ## A261990.P8031785925668403120

`A000045(A255938(n)+1-A255938(n+1))`
-/

namespace A261990.P8031785925668403120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A255938 n + (1 - A255938 (n + 1))).toNat

end

end A261990.P8031785925668403120

/-! ## A261990.P15735308011123008951

`A000931(A255938(n+1)+1-A255938(n))`
-/

namespace A261990.P15735308011123008951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A255938 (n + 1) + (1 - A255938 n)).toNat

end

end A261990.P15735308011123008951

/-! ## A261990.P5320951270336009402

`A115120(A255938(n)+1-A255938(n+1))`
-/

namespace A261990.P5320951270336009402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115120 (A255938 n + (1 - A255938 (n + 1))).toNat

end

end A261990.P5320951270336009402

/-! ## A261990.P11536144732500928714

`A001222(A255938(n)+2-A255938(n+1))`
-/

namespace A261990.P11536144732500928714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A255938 n + (2 - A255938 (n + 1))).toNat

end

end A261990.P11536144732500928714

/-!
# A261991: Indices of abundant repunits: numbers n such that sigma((10^n-1)/9) > 2*(10^n-1)/9.

The programs for A261991, there is no canonical definition to state claims against.
-/

/-! ## A261991.P8403797083609917738

`lt[A211111(3*n), A080610(A211111(n))]`
-/

namespace A261991.P8403797083609917738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211111 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080610 (A211111 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261991.P8403797083609917738

/-! ## A261991.P8058773679839212125

`lt[A186711(n+1), A047781(A211111(n))]`
-/

namespace A261991.P8058773679839212125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047781 (A211111 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261991.P8058773679839212125

/-! ## A261991.P12918992849588270270

`lt[A033630(3*n), A002805(A033630(n))]`
-/

namespace A261991.P12918992849588270270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (A033630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261991.P12918992849588270270

/-! ## A261991.P2276913737402099629

`lt[A273107(A006567(2*n+3)), A304442(n)]`
-/

namespace A261991.P2276913737402099629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273107 (A006567 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A261991.P2276913737402099629

/-! ## A261991.P5532585186167104904

`A001615(lt[A335433(n+4), A023646(n+2)])`
-/

namespace A261991.P5532585186167104904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335433 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023646 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A261991.P5532585186167104904

/-!
# A261992: Expansion of psi(x) * f(-x^18)^3 / (phi(-x^3) * f(-x^3)^3) in powers of x where phi(), psi(), f() are Ramanujan theta functions.

The programs for A261992, there is no canonical definition to state claims against.
-/

/-! ## A261992.P6217739702078497096

`A139214(2*(n+2))/3`
-/

namespace A261992.P6217739702078497096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139214 (2 * (n + 2)) : ℚ) / 3

end

end A261992.P6217739702078497096

/-! ## A261992.P4714951762124111593

`A139213(2*(n+2))/6`
-/

namespace A261992.P4714951762124111593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139213 (2 * (n + 2)) : ℚ) / 6

end

end A261992.P4714951762124111593

/-! ## A261992.P16345700840609662676

`A139214(2*n+4)-A006369(A139214(2*n+4))`
-/

namespace A261992.P16345700840609662676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139214 (2 * n + 4) - A006369 (A139214 (2 * n + 4)).toNat

end

end A261992.P16345700840609662676

/-! ## A261992.P14394632781462713322

`gcd(A000330(A139213(2*n+4)), A139213(2*n+4))`
-/

namespace A261992.P14394632781462713322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000330 (A139213 (2 * n + 4)).toNat) (A139213 (2 * n + 4))

end

end A261992.P14394632781462713322

/-! ## A261992.P1324082734275435105

`Δ[A008620(∑[A139214(2*(n+1))])]`
-/

namespace A261992.P1324082734275435105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139214 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A261992.P1324082734275435105

/-!
# A261993: Number of distinct fractional parts of the numbers 1/(prime(j)-1)+...+1/(prime(k)-1) with 1 <= j <= k <= n, where the fractional part of x is given by x - floor(x).

The programs for A261993, there is no canonical definition to state claims against.
-/

/-! ## A261993.P14188634718639168637

`A133263(n)-∑[A055029(A013950(n+1))]`
-/

namespace A261993.P14188634718639168637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (A013950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261993.P14188634718639168637

/-! ## A261993.P13893118104623234274

`∑[n]+1-A341618(A214078(n)²)`
-/

namespace A261993.P13893118104623234274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A341618 (A214078 n ^ 2).toNat

end

end A261993.P13893118104623234274

/-! ## A261993.P9168143660670558101

`A055945(p?[A034877(n)])+∑[n]`
-/

namespace A261993.P9168143660670558101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034877 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A261993.P9168143660670558101

/-! ## A261993.P4953452082401295953

`∑[abs(A096693(A117791(n+3))-n)]`
-/

namespace A261993.P4953452082401295953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096693 (A117791 (n + 3)).toNat - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261993.P4953452082401295953

/-! ## A261993.P12620696606174920100

`A316341(A034386(n))+∑[n]`
-/

namespace A261993.P12620696606174920100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (A034386 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A261993.P12620696606174920100

/-!
# A261994: Number of complemented lattices on n nodes.

The programs for A261994, there is no canonical definition to state claims against.
-/

/-! ## A261994.P17590909710495247619

`A358521(A344491(n))-A358503(n)`
-/

namespace A261994.P17590909710495247619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358521 (A344491 n).toNat - A358503 n

end

end A261994.P17590909710495247619

/-! ## A261994.P734286176552600003

`A347610(A284250(n)-A344742(n+1))`
-/

namespace A261994.P734286176552600003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347610 (A284250 n - A344742 (n + 1)).toNat

end

end A261994.P734286176552600003

/-! ## A261994.P9372897256029697019

`A325039(A050027(2*n+5)%A175772(3*(n+1)))`
-/

namespace A261994.P9372897256029697019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325039 (Int.tmod (A050027 (2 * n + 5)) (A175772 (3 * (n + 1)))).toNat

end

end A261994.P9372897256029697019

/-!
# A261997: a(n) = prime(n)! - prime(n!).

The programs for A261997, the canonical program `A261997.P13916721130431095809` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A261997 has offset 1).

The definition of A261997 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)!-A000040((n+1)!)` (program `A261997.P13916721130431095809`, by `A261997.P13916721130431095809.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A261997.P14508608129924253283

`A039716(n+1)-A062439(n+1)`
-/

namespace A261997.P14508608129924253283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039716 (n + 1) - A062439 (n + 1)

end

end A261997.P14508608129924253283

namespace A261997

/-- `A039716(n+1)-A062439(n+1)` -/
def P14508608129924253283.Spec : Prop :=
  ∀ n, P14508608129924253283.a n = A261997 (n + 1)

end A261997

/-! ## A261997.P13916721130431095809

`A000040(n+1)!-A000040((n+1)!)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A261997

/-- `A000040(n+1)!-A000040((n+1)!)` -/
def P13916721130431095809.Spec : Prop :=
  ∀ n, P13916721130431095809.a n = A261997 (n + 1)

theorem P13916721130431095809.correct : P13916721130431095809.Spec := by
  intro n
  simp only [A261997, Nat.add_sub_cancel]

end A261997

/-! ## A261997.P15312008981277336610

`Δ[A007504(n)]!-A062439(n+1)`
-/

namespace A261997.P15312008981277336610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) - A062439 (n + 1)

end

end A261997.P15312008981277336610

namespace A261997

/-- `Δ[A007504(n)]!-A062439(n+1)` -/
def P15312008981277336610.Spec : Prop :=
  ∀ n, P15312008981277336610.a n = A261997 (n + 1)

end A261997

/-! ## A261997.P9292230583127350716

`p?[A259153(n)]!-A062439(n+1)`
-/

namespace A261997.P9292230583127350716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℤ) - A062439 (n + 1)

end

end A261997.P9292230583127350716

namespace A261997

/-- `p?[A259153(n)]!-A062439(n+1)` -/
def P9292230583127350716.Spec : Prop :=
  ∀ n, P9292230583127350716.a n = A261997 (n + 1)

end A261997

/-! ## A261997.P244026211257307632

`A000040(n+1)!-A062439(n+1)`
-/

namespace A261997.P244026211257307632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (n + 1)).toNat : ℤ) - A062439 (n + 1)

end

end A261997.P244026211257307632

namespace A261997

/-- `A000040(n+1)!-A062439(n+1)` -/
def P244026211257307632.Spec : Prop :=
  ∀ n, P244026211257307632.a n = A261997 (n + 1)

end A261997

/-!
# A261998: Expansion of Product_{k>=1} (1-x^k)*(1+x^k)^4.

The programs for A261998, there is no canonical definition to state claims against.
-/

/-! ## A261998.P6510806339369682585

`A003056(A000079(n)*A047343(n+1))`
-/

namespace A261998.P6510806339369682585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000079 n * A047343 (n + 1)).toNat

end

end A261998.P6510806339369682585

/-! ## A261998.P15136329338573841936

`A000196(A047343(n+1)*A126646(n))`
-/

namespace A261998.P15136329338573841936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A047343 (n + 1) * A126646 n).toNat

end

end A261998.P15136329338573841936

/-! ## A261998.P8697605572016706490

`A003056(A047343(n+1)*A145114(n))`
-/

namespace A261998.P8697605572016706490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A047343 (n + 1) * A145114 n).toNat

end

end A261998.P8697605572016706490

/-! ## A261998.P15355005169177827771

`A003056(A000051(n)*A228854(n+1))`
-/

namespace A261998.P15355005169177827771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000051 n * A228854 (n + 1)).toNat

end

end A261998.P15355005169177827771

/-! ## A261998.P10063032063671049597

`A003056(A000079(n)*A228854(n+1))`
-/

namespace A261998.P10063032063671049597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000079 n * A228854 (n + 1)).toNat

end

end A261998.P10063032063671049597

