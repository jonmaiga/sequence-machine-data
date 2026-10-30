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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B000.C046
import Seq.B000.C049
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A122903: Numbers m such that in Z/mZ the number of squares is equal to the number of invertible elements.

The programs for A122903, there is no canonical definition to state claims against.
-/

/-! ## A122903.P4037735630756684872

`lcm(record[(-1)^(n%3)+n], A332650(n+1))`
-/

namespace A122903.P4037735630756684872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A332650 (n + 1))

end

end A122903.P4037735630756684872

/-! ## A122903.P6940758249650946518

`A180859(n+2)*A360748(n)`
-/

namespace A122903.P6940758249650946518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180859 (n + 2) * A360748 n

end

end A122903.P6940758249650946518

/-! ## A122903.P5023305036177203915

`lcm(A103877(n), A332650(n+1))`
-/

namespace A122903.P5023305036177203915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103877 n) (A332650 (n + 1))

end

end A122903.P5023305036177203915

/-!
# A122904: Numbers m such that in Z/mZ the number of squares is strictly less than the number of invertible elements.

The programs for A122904, there is no canonical definition to state claims against.
-/

/-! ## A122904.P10045900933188415672

`comp[A122907(n+1)-1]+1`
-/

namespace A122904.P10045900933188415672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122907 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A122904.P10045900933188415672

/-! ## A122904.P12078335195755936774

`lt[A051953(n+1), A095972(n+1)]+1`
-/

namespace A122904.P12078335195755936774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A122904.P12078335195755936774

/-! ## A122904.P16687834185486927401

`A020725(lt[A051953(n+1), A095972(n+1)])`
-/

namespace A122904.P16687834185486927401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122904.P16687834185486927401

/-! ## A122904.P13900446195122916988

`A020725(lt[A105612(n+1)+1, A000010(n+1)])`
-/

namespace A122904.P13900446195122916988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122904.P13900446195122916988

/-! ## A122904.P7350794096653697104

`A020725(lt[A105612(n+1)+2, A039649(n+1)])`
-/

namespace A122904.P7350794096653697104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122904.P7350794096653697104

/-! ## A122904.P9606482227795947383

`A020725(lt[A105612(n+1)+A051953(n+1), n])`
-/

namespace A122904.P9606482227795947383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) + A051953 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A122904.P9606482227795947383

/-! ## A122904.P6743064165188072689

`eq[char[A122907(n+1)], A000007(n)]`
-/

namespace A122904.P6743064165188072689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122907 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A122904.P6743064165188072689

/-! ## A122904.P2519049039077787627

`eq[char[A122907(n+1)], A000038(n)]`
-/

namespace A122904.P2519049039077787627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122907 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A122904.P2519049039077787627

/-! ## A122904.P14991369311374884601

`eq[A282610(n)%3, char[A122907(n+1)]]`
-/

namespace A122904.P14991369311374884601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282610 n) 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122907 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A122904.P14991369311374884601

/-! ## A122904.P9111403057206682348

`eq[A036263(n+1)%2, char[A122907(n+1)]]`
-/

namespace A122904.P9111403057206682348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036263 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122907 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A122904.P9111403057206682348

/-!
# A122905: Numbers m such that in Z/mZ the number of squares is strictly greater than the number of invertible elements.

The programs for A122905, there is no canonical definition to state claims against.
-/

/-! ## A122905.P8085253290961257965

`lt[A095972(n+1), A051953(n+1)]+1`
-/

namespace A122905.P8085253290961257965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A122905.P8085253290961257965

/-! ## A122905.P1067169252408379050

`A020725(lt[A095972(n+1), A051953(n+1)])`
-/

namespace A122905.P1067169252408379050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122905.P1067169252408379050

/-! ## A122905.P10096856210384027073

`A020725(lt[A000010(n+1), A105612(n+1)+1])`
-/

namespace A122905.P10096856210384027073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122905.P10096856210384027073

/-! ## A122905.P1502904925261498429

`A020725(lt[A039649(n+1), A105612(n+1)+2])`
-/

namespace A122905.P1502904925261498429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122905.P1502904925261498429

/-! ## A122905.P406050707350540519

`A020725(lt[n, A105612(n+1)+A051953(n+1)])`
-/

namespace A122905.P406050707350540519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) + A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A122905.P406050707350540519

/-! ## A122905.P631376910066974509

`A020725(lt[sqrt(A127473(n+1)), A105612(n+1)+1])`
-/

namespace A122905.P631376910066974509
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)

end

end A122905.P631376910066974509

/-! ## A122905.P14284080472090308944

`A020725(lt[A000010(n+1), 1-A095972(n+1)+n])`
-/

namespace A122905.P14284080472090308944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A095972 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122905.P14284080472090308944

/-! ## A122905.P2423686369473376169

`A020725(lt[n-A219428(n+1), A105612(n+1)+1])`
-/

namespace A122905.P2423686369473376169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122905.P2423686369473376169

/-! ## A122905.P5060306432041068589

`A020725(lt[A319998(2*(n+1))/2, A105612(n+1)+1])`
-/

namespace A122905.P5060306432041068589
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319998 (2 * (n + 1)) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A122905.P5060306432041068589

/-! ## A122905.P5512351566300432903

`A020725(lt[2-A062830(n+1)+n, A105612(n+1)+1])`
-/

namespace A122905.P5512351566300432903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A062830 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122905.P5512351566300432903

/-! ## A122905.P7327906403399359481

`A020725(lt[A002618(n+1)/(n+1), A105612(n+1)+1])`
-/

namespace A122905.P7327906403399359481
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A122905.P7327906403399359481

/-! ## A122905.P6467290632637839929

`A020725(lt[A053191(n+1)%(n+2), A105612(n+1)+1])`
-/

namespace A122905.P6467290632637839929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053191 (n + 1)) (n + 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122905.P6467290632637839929

/-! ## A122905.P8699092870193400410

`A020725(lt[A000203(n+1)-A051612(n+1), A105612(n+1)+1])`
-/

namespace A122905.P8699092870193400410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A051612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122905.P8699092870193400410

/-! ## A122905.P3588074095780498174

`A020725(lt[A065387(n+1)-A000203(n+1), A105612(n+1)+1])`
-/

namespace A122905.P3588074095780498174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122905.P3588074095780498174

/-! ## A122905.P9793758410131795020

`A020725(lt[A000040(n+1)-A104192(n+1), A105612(n+1)+1])`
-/

namespace A122905.P9793758410131795020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A104192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122905.P9793758410131795020

/-!
# A122906: Numbers m such that in Z/mZ the number of squares is less than or equal to the number of invertible elements.

The programs for A122906, there is no canonical definition to state claims against.
-/

/-! ## A122906.P8406994447682024435

`comp[A122905(n+1)-1]+1`
-/

namespace A122906.P8406994447682024435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122905 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A122906.P8406994447682024435

/-! ## A122906.P9727425124320815650

`lt[n-A000010(n+1), A095972(n+1)]+1`
-/

namespace A122906.P9727425124320815650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A122906.P9727425124320815650

/-! ## A122906.P10341611004119429417

`lt[A105612(n+1), 2-A062830(n+1)+n]+1`
-/

namespace A122906.P10341611004119429417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A062830 (n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A122906.P10341611004119429417

/-! ## A122906.P6947039273619918477

`lt[A105612(n+1), A062570(A026741(n+1))]+1`
-/

namespace A122906.P6947039273619918477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A026741 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A122906.P6947039273619918477

/-! ## A122906.P9174208540600213445

`lt[n, A006370(A338224(n+1))]+1`
-/

namespace A122906.P9174208540600213445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A338224 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A122906.P9174208540600213445

/-! ## A122906.P16595076965280408666

`A257063(A053229(n+1))%A316885(n+4)`
-/

namespace A122906.P16595076965280408666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257063 (A053229 (n + 1)).toNat) (A316885 (n + 4))

end

end A122906.P16595076965280408666

/-! ## A122906.P15234712294536941948

`A257063(A053229(n+1))+A000038((n+3)²+n)`
-/

namespace A122906.P15234712294536941948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257063 (A053229 (n + 1)).toNat + A000038 ((n + 3) ^ 2 + n)

end

end A122906.P15234712294536941948

/-! ## A122906.P277308788619080665

`A257063(A053229(n+1))+A061376(A061351(n))`
-/

namespace A122906.P277308788619080665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257063 (A053229 (n + 1)).toNat + A061376 (A061351 n).toNat

end

end A122906.P277308788619080665

/-! ## A122906.P10393139559497368771

`A257063(or(A053229(n+1), A151878(n)))`
-/

namespace A122906.P10393139559497368771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257063 (Int.lor (A053229 (n + 1)) (A151878 n)).toNat

end

end A122906.P10393139559497368771

/-!
# A122907: Numbers m such that in Z/mZ the number of squares is greater than or equal to the number of invertible elements.

The programs for A122907, there is no canonical definition to state claims against.
-/

/-! ## A122907.P9718553440858086626

`lt[A007431(n)²², A116504(n+1)]`
-/

namespace A122907.P9718553440858086626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007431 n ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116504 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122907.P9718553440858086626

/-! ## A122907.P2601093159549633333

`lt[A007431(n), A116504(A122668(n+1))]`
-/

namespace A122907.P2601093159549633333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116504 (A122668 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122907.P2601093159549633333

/-! ## A122907.P11312260559757449857

`eq[A057427(n), A225637(A007431(n))]`
-/

namespace A122907.P11312260559757449857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225637 (A007431 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122907.P11312260559757449857

/-! ## A122907.P3808423429724981792

`lt[A007431(n), A088689(A001359(2*n+1))]`
-/

namespace A122907.P3808423429724981792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088689 (A001359 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122907.P3808423429724981792

/-! ## A122907.P9654265711594414810

`lt[A225600(A007431(n)), A130130(2*n)]`
-/

namespace A122907.P9654265711594414810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225600 (A007431 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122907.P9654265711594414810

/-!
# A122908: A central binomial scaling of the Riordan array (1+x,x) (A097806).

The programs for A122908, there is no canonical definition to state claims against.
-/

/-! ## A122908.P17814329243999023875

`A096921(n)*A097806(n)`
-/

namespace A122908.P17814329243999023875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096921 n * A097806 n

end

end A122908.P17814329243999023875

/-! ## A122908.P12007699014792709819

`lcm(A096921(n), A167374(n))`
-/

namespace A122908.P12007699014792709819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A096921 n) (A167374 n)

end

end A122908.P12007699014792709819

/-! ## A122908.P9468110696130825593

`A097806(n)*A183253(n+2)`
-/

namespace A122908.P9468110696130825593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A183253 (n + 2)

end

end A122908.P9468110696130825593

/-! ## A122908.P7037253879622163027

`C(A096921(n), A141690(n+1))`
-/

namespace A122908.P7037253879622163027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A096921 n).toNat (A141690 (n + 1)).toNat

end

end A122908.P7037253879622163027

/-! ## A122908.P13527151592243909079

`C(A096921(n), A096921(n+2))`
-/

namespace A122908.P13527151592243909079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A096921 n).toNat (A096921 (n + 2)).toNat

end

end A122908.P13527151592243909079

/-! ## A122908.P3964887764303204542

`A173881(n+1)%2*A096921(n)`
-/

namespace A122908.P3964887764303204542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173881 (n + 1)) 2 * A096921 n

end

end A122908.P3964887764303204542

/-! ## A122908.P2715034878292560761

`A001405(A002262(n))*A097806(n)`
-/

namespace A122908.P2715034878292560761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A002262 n).toNat * A097806 n

end

end A122908.P2715034878292560761

/-! ## A122908.P3465664827459436991

`abs(A008683(A130321(n))*A096921(n))`
-/

namespace A122908.P3465664827459436991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A130321 n).toNat * A096921 n|

end

end A122908.P3465664827459436991

/-! ## A122908.P3703748638062950765

`A001405(A144328(n+1))*A097806(n)`
-/

namespace A122908.P3703748638062950765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A144328 (n + 1)).toNat * A097806 n

end

end A122908.P3703748638062950765

/-! ## A122908.P15322587346043898931

`A097806(n)*A210736(A002260(n+1))`
-/

namespace A122908.P15322587346043898931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A210736 (A002260 (n + 1)).toNat

end

end A122908.P15322587346043898931

/-!
# A122909: a(n) = F(n+1)*F(2n+2) + F(n)*F(2n).

The programs for A122909, the canonical program `A122909.P6939435732731705742` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122909 has offset 0).

The definition of A122909 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)*A000045(2*n+2)+A000045(n)*A000045(2*n)` (program `A122909.P6939435732731705742`, by `A122909.P6939435732731705742.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122909.P688743246711253472

`ogf((1+x+x^2+x^3)/(1-3x-6x^2+3x^3+x^4))`
-/

namespace A122909.P688743246711253472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 1] [1, -3, -6, 3, 1] n

end

end A122909.P688743246711253472

namespace A122909

/-- `ogf((1+x+x^2+x^3)/(1-3x-6x^2+3x^3+x^4))` -/
def P688743246711253472.Spec : Prop :=
  ∀ n, P688743246711253472.a n = A122909 n

end A122909

/-! ## A122909.P6939435732731705742

`A000045(n+1)*A000045(2*n+2)+A000045(n)*A000045(2*n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A122909

/-- `A000045(n+1)*A000045(2*n+2)+A000045(n)*A000045(2*n)` -/
def P6939435732731705742.Spec : Prop :=
  ∀ n, P6939435732731705742.a n = A122909 n

theorem P6939435732731705742.correct : P6939435732731705742.Spec := by
  intro n
  simp only [A122909]

end A122909

/-! ## A122909.P2380570618535790159

`(2*A163063(n)-A061084(n))/5`
-/

namespace A122909.P2380570618535790159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A163063 n - A061084 n : ℚ) / 5

end

end A122909.P2380570618535790159

namespace A122909

/-- `(2*A163063(n)-A061084(n))/5` -/
def P2380570618535790159.Spec : Prop :=
  ∀ n, P2380570618535790159.a n = (A122909 n : ℚ)

end A122909

/-! ## A122909.P8070498975684362683

`A037451(n+1)+A037451(n)`
-/

namespace A122909.P8070498975684362683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037451 (n + 1) + A037451 n

end

end A122909.P8070498975684362683

namespace A122909

/-- `A037451(n+1)+A037451(n)` -/
def P8070498975684362683.Spec : Prop :=
  ∀ n, P8070498975684362683.a n = A122909 n

theorem P8070498975684362683.correct : P8070498975684362683.Spec := by
  intro n
  simp only [A122909, Nat.add_sub_cancel, A122909.P8070498975684362683.a, A122909.P6939435732731705742.a, A000045, A000045.P11838749114346432762.a, A037451, A037451.P4252489188112269908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A122909

/-! ## A122909.P11527749551766377572

`A099014(n+1)-A056570(n)`
-/

namespace A122909.P11527749551766377572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099014 (n + 1) - A056570 n

end

end A122909.P11527749551766377572

namespace A122909

/-- `A099014(n+1)-A056570(n)` -/
def P11527749551766377572.Spec : Prop :=
  ∀ n, P11527749551766377572.a n = A122909 n

end A122909

/-! ## A122909.P6466871805876068936

`Δ[Δ[A001911(n)]*A001519(n)]`
-/

namespace A122909.P6466871805876068936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122909.P6466871805876068936

namespace A122909

/-- `Δ[Δ[A001911(n)]*A001519(n)]` -/
def P6466871805876068936.Spec : Prop :=
  ∀ n, P6466871805876068936.a n = A122909 n

end A122909

/-! ## A122909.P11496461041625608392

`Δ[A000045(n+2)*A001519(n)]`
-/

namespace A122909.P11496461041625608392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122909.P11496461041625608392

namespace A122909

/-- `Δ[A000045(n+2)*A001519(n)]` -/
def P11496461041625608392.Spec : Prop :=
  ∀ n, P11496461041625608392.a n = A122909 n

end A122909

/-! ## A122909.P3608820443903001265

`Δ[(A000071(n+2)+1)*A001519(n)]`
-/

namespace A122909.P3608820443903001265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 2) + 1) * A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122909.P3608820443903001265

namespace A122909

/-- `Δ[(A000071(n+2)+1)*A001519(n)]` -/
def P3608820443903001265.Spec : Prop :=
  ∀ n, P3608820443903001265.a n = A122909 n

end A122909

/-! ## A122909.P11995956707273496817

`A066259(n+1)+A066258(n)-A056570(n)`
-/

namespace A122909.P11995956707273496817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066259 (n + 1) + (A066258 n - A056570 n)

end

end A122909.P11995956707273496817

namespace A122909

/-- `A066259(n+1)+A066258(n)-A056570(n)` -/
def P11995956707273496817.Spec : Prop :=
  ∀ n, P11995956707273496817.a n = A122909 n

end A122909

/-! ## A122909.P14260892417016041660

`A066259(n+2)-(A056570(n)+A033887(n+1))`
-/

namespace A122909.P14260892417016041660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066259 (n + 2) - (A056570 n + A033887 (n + 1))

end

end A122909.P14260892417016041660

namespace A122909

/-- `A066259(n+2)-(A056570(n)+A033887(n+1))` -/
def P14260892417016041660.Spec : Prop :=
  ∀ n, P14260892417016041660.a n = A122909 n

end A122909

/-!
# A122910: Expansion of (1-2x-3x^2)/((1-2x)(1+4x)(1-8x)).

The programs for A122910, the canonical program `A122910.P2616532062647791437` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122910 has offset 0).

The definition of A122910 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x-3x^2)/(1-6x-24x^2+64x^3))` (program `A122910.P2616532062647791437`, by `A122910.P2616532062647791437.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122910.P2616532062647791437

`ogf((1-2x-3x^2)/(1-6x-24x^2+64x^3))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122910

/-- `ogf((1-2x-3x^2)/(1-6x-24x^2+64x^3))` -/
def P2616532062647791437.Spec : Prop :=
  ∀ n, P2616532062647791437.a n = A122910 n

theorem P2616532062647791437.correct : P2616532062647791437.Spec := by
  intro n
  simp only [A122910]

end A122910

/-! ## A122910.P5605098427663243689

`6*a(n-1)+24*a(n-2)-64*a(n-3)` with `a(0)=1, a(1)=4, a(2)=45`
-/

namespace A122910.P5605098427663243689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 45] fun n a =>
  6 * a (n - 1) + 24 * a (n - 2) - 64 * a (n - 3)

end

end A122910.P5605098427663243689

namespace A122910

/-- `6*a(n-1)+24*a(n-2)-64*a(n-3)` -/
def P5605098427663243689.Spec : Prop :=
  ∀ n, P5605098427663243689.a n = A122910 n

end A122910

/-! ## A122910.P13465113662379871521

`5*8^n/8+7*(-4)^n/24+2^n/12`
-/

namespace A122910.P13465113662379871521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * 8 ^ n : ℚ) / 8 + (7 * (-4) ^ n : ℚ) / 24 + (2 ^ n : ℚ) / 12

end

end A122910.P13465113662379871521

namespace A122910

/-- `5*8^n/8+7*(-4)^n/24+2^n/12` -/
def P13465113662379871521.Spec : Prop :=
  ∀ n, P13465113662379871521.a n = (A122910 n : ℚ)

end A122910

/-!
# A122911: Expansion of (1+x)*(1-6*x-25*x^2)/((1+2x)(1-4x)(1+8x)(1-16x)).

The programs for A122911, the canonical program `A122911.P17480980547006842859` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122911 has offset 0).

The definition of A122911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122911.P17480980547006842859

`85*16^n/192+203*(-8)^n/576+55*4^n/288+(-2)^n/72`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122911

/-- `85*16^n/192+203*(-8)^n/576+55*4^n/288+(-2)^n/72` -/
def P17480980547006842859.Spec : Prop :=
  ∀ n, P17480980547006842859.a n = (A122911 n : ℚ)

end A122911

/-!
# A122912: Smallest prime of the form (k^2 * 2^n + 1).

The programs for A122912, there is no canonical definition to state claims against.
-/

/-! ## A122912.P12151243004071304718

`A331807(record[Δ[A123252(n+1)]])`
-/

namespace A122912.P12151243004071304718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123252 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331807 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A122912.P12151243004071304718

/-! ## A122912.P12806967207050754556

`p?[(A321095(n)-a(A025480(n-1)))*n²+1]` with `a(0)=3`
-/

namespace A122912.P12806967207050754556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  (A321095 n - f1 (A025480 (n - 1)).toNat) * (n ^ 2 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122912.P12806967207050754556

/-!
# A122913: Minimum numbers k such that (k^2*2^n + 1) is prime.

The programs for A122913, there is no canonical definition to state claims against.
-/

/-! ## A122913.P12296619776626860805

`sqrt((A122912(n+1)-1)/2^(n+1))`
-/

namespace A122913.P12296619776626860805
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A122912 (n + 1) - 1 : ℚ) / (2 ^ (n + 1) : ℚ) : ℝ)

end

end A122913.P12296619776626860805

/-! ## A122913.P11532456381412981234

`floor(sqrt(A122912(n+1)/A126646(n)))`
-/

namespace A122913.P11532456381412981234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A122912 (n + 1) : ℚ) / (A126646 n : ℚ) : ℝ)⌋

end

end A122913.P11532456381412981234

/-! ## A122913.P10375011139467661284

`A193807(2^(n+1))`
-/

namespace A122913.P10375011139467661284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193807 (2 ^ (n + 1))

end

end A122913.P10375011139467661284

/-! ## A122913.P17432202693000814088

`A193807(Δ[A095121(n)])%20`
-/

namespace A122913.P17432202693000814088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193807 (f1 (n + 1) - f1 n).toNat) 20

end

end A122913.P17432202693000814088

/-! ## A122913.P643357422050947187

`A193807(A000079(n+1))%56`
-/

namespace A122913.P643357422050947187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193807 (A000079 (n + 1)).toNat) 56

end

end A122913.P643357422050947187

/-!
# A122918: Expansion of (1+x)^2/(1+x+x^2)^2.

The programs for A122918, the canonical program `A122918.P17001793735053914088` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122918 has offset 0).

The definition of A122918 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1+2x+3x^2+2x^3+x^4))` (program `A122918.P17001793735053914088`, by `A122918.P17001793735053914088.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122918.P17001793735053914088

`ogf((1+2x+x^2)/(1+2x+3x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122918

/-- `ogf((1+2x+x^2)/(1+2x+3x^2+2x^3+x^4))` -/
def P17001793735053914088.Spec : Prop :=
  ∀ n, P17001793735053914088.a n = A122918 n

theorem P17001793735053914088.correct : P17001793735053914088.Spec := by
  intro n
  simp only [A122918]

end A122918

/-! ## A122918.P204401987377678618

`A008611(n)*A061347(n+1)`
-/

namespace A122918.P204401987377678618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A061347 (n + 1)

end

end A122918.P204401987377678618

namespace A122918

/-- `A008611(n)*A061347(n+1)` -/
def P204401987377678618.Spec : Prop :=
  ∀ n, P204401987377678618.a n = A122918 n

end A122918

/-! ## A122918.P3866482691621608694

`(A099254(2*n)+A049347(n))/2`
-/

namespace A122918.P3866482691621608694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099254 (2 * n) + A049347 n : ℚ) / 2

end

end A122918.P3866482691621608694

namespace A122918

/-- `(A099254(2*n)+A049347(n))/2` -/
def P3866482691621608694.Spec : Prop :=
  ∀ n, P3866482691621608694.a n = (A122918 n : ℚ)

end A122918

/-! ## A122918.P11428114502978123380

`∑[2*A162397(n+1)]-A162397(n+1)`
-/

namespace A122918.P11428114502978123380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A162397 (n + 1)

end

end A122918.P11428114502978123380

namespace A122918

/-- `∑[2*A162397(n+1)]-A162397(n+1)` -/
def P11428114502978123380.Spec : Prop :=
  ∀ n, P11428114502978123380.a n = A122918 n

end A122918

/-! ## A122918.P9375411216901575048

`(A330396(A236348(n))-n)*A008611(n)`
-/

namespace A122918.P9375411216901575048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A330396 (A236348 n).toNat - (n : ℤ)) * A008611 n

end

end A122918.P9375411216901575048

namespace A122918

/-- `(A330396(A236348(n))-n)*A008611(n)` -/
def P9375411216901575048.Spec : Prop :=
  ∀ n, P9375411216901575048.a n = A122918 n

end A122918

/-! ## A122918.P16919094179102115644

`(A057078(n)-A057078(n+1))*A008611(n)`
-/

namespace A122918.P16919094179102115644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057078 n - A057078 (n + 1)) * A008611 n

end

end A122918.P16919094179102115644

namespace A122918

/-- `(A057078(n)-A057078(n+1))*A008611(n)` -/
def P16919094179102115644.Spec : Prop :=
  ∀ n, P16919094179102115644.a n = A122918 n

end A122918

/-! ## A122918.P7546716652575951215

`(A076118(n+1)-A076118(n))*A033999(n)`
-/

namespace A122918.P7546716652575951215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076118 (n + 1) - A076118 n) * A033999 n

end

end A122918.P7546716652575951215

namespace A122918

/-- `(A076118(n+1)-A076118(n))*A033999(n)` -/
def P7546716652575951215.Spec : Prop :=
  ∀ n, P7546716652575951215.a n = A122918 n

end A122918

/-! ## A122918.P4128156796371948151

`(A147534(n+1)-A004396(n))*A061347(n+1)`
-/

namespace A122918.P4128156796371948151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A147534 (n + 1) - A004396 n) * A061347 (n + 1)

end

end A122918.P4128156796371948151

namespace A122918

/-- `(A147534(n+1)-A004396(n))*A061347(n+1)` -/
def P4128156796371948151.Spec : Prop :=
  ∀ n, P4128156796371948151.a n = A122918 n

end A122918

/-! ## A122918.P2495721822349086055

`(A076118(n)-A076118(n+1))/A033999(n+1)`
-/

namespace A122918.P2495721822349086055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076118 n - A076118 (n + 1) : ℚ) / (A033999 (n + 1) : ℚ)

end

end A122918.P2495721822349086055

namespace A122918

/-- `(A076118(n)-A076118(n+1))/A033999(n+1)` -/
def P2495721822349086055.Spec : Prop :=
  ∀ n, P2495721822349086055.a n = (A122918 n : ℚ)

end A122918

/-! ## A122918.P13250828347921267801

`Δ[Δ[A186731(n)]]`
-/

namespace A122918.P13250828347921267801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122918.P13250828347921267801

namespace A122918

/-- `Δ[Δ[A186731(n)]]` -/
def P13250828347921267801.Spec : Prop :=
  ∀ n, P13250828347921267801.a n = A122918 n

end A122918

/-! ## A122918.P13231016736619501245

`Δ[A298791(n)-A298790(n)]`
-/

namespace A122918.P13231016736619501245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298791 n - A298790 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122918.P13231016736619501245

namespace A122918

/-- `Δ[A298791(n)-A298790(n)]` -/
def P13231016736619501245.Spec : Prop :=
  ∀ n, P13231016736619501245.a n = A122918 n

end A122918

/-! ## A122918.P972088306904293334

`A102899(n+1)-A186731(n+1)`
-/

namespace A122918.P972088306904293334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102899 (n + 1) - A186731 (n + 1)

end

end A122918.P972088306904293334

namespace A122918

/-- `A102899(n+1)-A186731(n+1)` -/
def P972088306904293334.Spec : Prop :=
  ∀ n, P972088306904293334.a n = A122918 n

end A122918

/-! ## A122918.P1107241299077126717

`A298789(n+1)-A298788(n+1)`
-/

namespace A122918.P1107241299077126717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298789 (n + 1) - A298788 (n + 1)

end

end A122918.P1107241299077126717

namespace A122918

/-- `A298789(n+1)-A298788(n+1)` -/
def P1107241299077126717.Spec : Prop :=
  ∀ n, P1107241299077126717.a n = A122918 n

end A122918

/-! ## A122918.P10064463591652367345

`2*A102899(n+1)-A186101(n+1)`
-/

namespace A122918.P10064463591652367345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102899 (n + 1) - A186101 (n + 1)

end

end A122918.P10064463591652367345

namespace A122918

/-- `2*A102899(n+1)-A186101(n+1)` -/
def P10064463591652367345.Spec : Prop :=
  ∀ n, P10064463591652367345.a n = A122918 n

end A122918

/-! ## A122918.P8315663549033498971

`A186101(n+1)-2*A186731(n+1)`
-/

namespace A122918.P8315663549033498971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 (n + 1) - 2 * A186731 (n + 1)

end

end A122918.P8315663549033498971

namespace A122918

/-- `A186101(n+1)-2*A186731(n+1)` -/
def P8315663549033498971.Spec : Prop :=
  ∀ n, P8315663549033498971.a n = A122918 n

end A122918

/-! ## A122918.P13617325862801378506

`(A004483(A004483(n))-n)*A008611(n)`
-/

namespace A122918.P13617325862801378506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004483 (A004483 n).toNat - (n : ℤ)) * A008611 n

end

end A122918.P13617325862801378506

namespace A122918

/-- `(A004483(A004483(n))-n)*A008611(n)` -/
def P13617325862801378506.Spec : Prop :=
  ∀ n, P13617325862801378506.a n = A122918 n

end A122918

/-! ## A122918.P7127806710159599378

`A008620(n)+A079978(n)-A088439(n+1)`
-/

namespace A122918.P7127806710159599378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n + (A079978 n - A088439 (n + 1))

end

end A122918.P7127806710159599378

namespace A122918

/-- `A008620(n)+A079978(n)-A088439(n+1)` -/
def P7127806710159599378.Spec : Prop :=
  ∀ n, P7127806710159599378.a n = A122918 n

end A122918

/-! ## A122918.P10184388592441379481

`A298789(n+1)+A298790(n)-A298790(n+1)`
-/

namespace A122918.P10184388592441379481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298789 (n + 1) + (A298790 n - A298790 (n + 1))

end

end A122918.P10184388592441379481

namespace A122918

/-- `A298789(n+1)+A298790(n)-A298790(n+1)` -/
def P10184388592441379481.Spec : Prop :=
  ∀ n, P10184388592441379481.a n = A122918 n

end A122918

/-! ## A122918.P14723863880190090115

`A298791(n+1)-(A298791(n)+A298788(n+1))`
-/

namespace A122918.P14723863880190090115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298791 (n + 1) - (A298791 n + A298788 (n + 1))

end

end A122918.P14723863880190090115

namespace A122918

/-- `A298791(n+1)-(A298791(n)+A298788(n+1))` -/
def P14723863880190090115.Spec : Prop :=
  ∀ n, P14723863880190090115.a n = A122918 n

end A122918

/-! ## A122918.P3469489232685499847

`A008611(n)*A057079(2*n)`
-/

namespace A122918.P3469489232685499847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A057079 (2 * n)

end

end A122918.P3469489232685499847

namespace A122918

/-- `A008611(n)*A057079(2*n)` -/
def P3469489232685499847.Spec : Prop :=
  ∀ n, P3469489232685499847.a n = A122918 n

end A122918

/-!
# A122919: Inverse of Riordan array (1/(1+x+x^2),x/(1+x)^2).

The programs for A122919, the canonical program `A122919.P16004870726118325551` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122919 has offset 0).

The definition of A122919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122919.P12880417564322986249

`T(n-1,k+1)+T(n-1,k-1)+2*T(n-1,k)` with `a(0)=1, a(1)=1`
-/

namespace A122919.P12880417564322986249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUpRight a n + (SequenceMachineLib.triUpLeft a n + 2 * SequenceMachineLib.triUp a n)

end

end A122919.P12880417564322986249

namespace A122919

/-- `T(n-1,k+1)+T(n-1,k-1)+2*T(n-1,k)` -/
def P12880417564322986249.Spec : Prop :=
  ∀ n, (P12880417564322986249.a n : ℤ) = A122919 n

end A122919

/-! ## A122919.P10438322051960223115

`T(n-1,k)+T(n-1,k-1)+T(n-1,k)+T(n-1,k+1)` with `a(0)=1, a(1)=1`
-/

namespace A122919.P10438322051960223115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + SequenceMachineLib.triUpRight a n)

end

end A122919.P10438322051960223115

namespace A122919

/-- `T(n-1,k)+T(n-1,k-1)+T(n-1,k)+T(n-1,k+1)` -/
def P10438322051960223115.Spec : Prop :=
  ∀ n, (P10438322051960223115.a n : ℤ) = A122919 n

end A122919

/-! ## A122919.P16004870726118325551

`A039598(n)-A128899(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A122919

/-- `A039598(n)-A128899(n+1)` -/
def P16004870726118325551.Spec : Prop :=
  ∀ n, P16004870726118325551.a n = A122919 n

theorem P16004870726118325551.correct : P16004870726118325551.Spec := by
  intro n
  simp only [A122919]

end A122919

/-! ## A122919.P15824916966363458200

`A128899(comp[∑[n]])-A128899(n+1)`
-/

namespace A122919.P15824916966363458200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A128899 (n + 1)

end

end A122919.P15824916966363458200

namespace A122919

/-- `A128899(comp[∑[n]])-A128899(n+1)` -/
def P15824916966363458200.Spec : Prop :=
  ∀ n, P15824916966363458200.a n = A122919 n

end A122919

/-! ## A122919.P9939910738847779156

`A039598(n)-(A039599(n)-A128899(n))`
-/

namespace A122919.P9939910738847779156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 n - (A039599 n - A128899 n)

end

end A122919.P9939910738847779156

namespace A122919

/-- `A039598(n)-(A039599(n)-A128899(n))` -/
def P9939910738847779156.Spec : Prop :=
  ∀ n, P9939910738847779156.a n = A122919 n

end A122919

/-! ## A122919.P4500501592488745556

`A050166(A061579(n))-A128899(n+1)`
-/

namespace A122919.P4500501592488745556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 (A061579 n).toNat - A128899 (n + 1)

end

end A122919.P4500501592488745556

namespace A122919

/-- `A050166(A061579(n))-A128899(n+1)` -/
def P4500501592488745556.Spec : Prop :=
  ∀ n, P4500501592488745556.a n = A122919 n

end A122919

/-! ## A122919.P7873519394338822718

`A008313(A064801(n+1))-A128899(n+1)`
-/

namespace A122919.P7873519394338822718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 (A064801 (n + 1)).toNat - A128899 (n + 1)

end

end A122919.P7873519394338822718

namespace A122919

/-- `A008313(A064801(n+1))-A128899(n+1)` -/
def P7873519394338822718.Spec : Prop :=
  ∀ n, P7873519394338822718.a n = A122919 n

end A122919

/-! ## A122919.P8759942569196328328

`A053121(A185869(n+1))-A128899(n+1)`
-/

namespace A122919.P8759942569196328328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A185869 (n + 1)).toNat - A128899 (n + 1)

end

end A122919.P8759942569196328328

namespace A122919

/-- `A053121(A185869(n+1))-A128899(n+1)` -/
def P8759942569196328328.Spec : Prop :=
  ∀ n, P8759942569196328328.a n = A122919 n

end A122919

/-! ## A122919.P16449263296488529961

`A008482(A292565(n+1))-A128899(n+1)`
-/

namespace A122919.P16449263296488529961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 (A292565 (n + 1)).toNat - A128899 (n + 1)

end

end A122919.P16449263296488529961

namespace A122919

/-- `A008482(A292565(n+1))-A128899(n+1)` -/
def P16449263296488529961.Spec : Prop :=
  ∀ n, P16449263296488529961.a n = A122919 n

end A122919

/-!
# A122920: Diagonal sums of number triangle A122919.

The programs for A122920, the canonical program `A122920.P14462649340630122191` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122920 has offset 0).

The definition of A122920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122920.P15079260968452640167

`Δ[Δ[A135336(n)]]`
-/

namespace A122920.P15079260968452640167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135336 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122920.P15079260968452640167

namespace A122920

/-- `Δ[Δ[A135336(n)]]` -/
def P15079260968452640167.Spec : Prop :=
  ∀ n, P15079260968452640167.a n = A122920 n

end A122920

/-! ## A122920.P14462649340630122191

`Δ[record[A000957(n)]]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A122920

/-- `Δ[record[A000957(n)]]` -/
def P14462649340630122191.Spec : Prop :=
  ∀ n, P14462649340630122191.a n = A122920 n

theorem P14462649340630122191.correct : P14462649340630122191.Spec := by
  intro n
  simp only [A122920]

end A122920

/-! ## A122920.P11246260414445608371

`Δ[A000957(2+n)]`
-/

namespace A122920.P11246260414445608371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122920.P11246260414445608371

namespace A122920

/-- `Δ[A000957(2+n)]` -/
def P11246260414445608371.Spec : Prop :=
  ∀ n, P11246260414445608371.a n = A122920 n

end A122920

/-! ## A122920.P18074542262526583280

`Δ[abs(A064310(n+2))]`
-/

namespace A122920.P18074542262526583280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A064310 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122920.P18074542262526583280

namespace A122920

/-- `Δ[abs(A064310(n+2))]` -/
def P18074542262526583280.Spec : Prop :=
  ∀ n, P18074542262526583280.a n = A122920 n

end A122920

/-! ## A122920.P1652716993226621842

`Δ[abs(A126983(n+2))]`
-/

namespace A122920.P1652716993226621842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126983 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122920.P1652716993226621842

namespace A122920

/-- `Δ[abs(A126983(n+2))]` -/
def P1652716993226621842.Spec : Prop :=
  ∀ n, P1652716993226621842.a n = A122920 n

end A122920

/-! ## A122920.P7544468252686244217

`Δ[A065600(∑[n+1])]`
-/

namespace A122920.P7544468252686244217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122920.P7544468252686244217

namespace A122920

/-- `Δ[A065600(∑[n+1])]` -/
def P7544468252686244217.Spec : Prop :=
  ∀ n, P7544468252686244217.a n = A122920 n

end A122920

/-! ## A122920.P18187554452180041833

`Δ[record[A065600(n+1)]]`
-/

namespace A122920.P18187554452180041833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122920.P18187554452180041833

namespace A122920

/-- `Δ[record[A065600(n+1)]]` -/
def P18187554452180041833.Spec : Prop :=
  ∀ n, P18187554452180041833.a n = A122920 n

end A122920

/-! ## A122920.P10249038512375231118

`A118973(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A122920.P10249038512375231118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A118973 (n + 1) - a (n - 1)

end

end A122920.P10249038512375231118

namespace A122920

/-- `A118973(n+1)-a(n-1)` -/
def P10249038512375231118.Spec : Prop :=
  ∀ n, P10249038512375231118.a n = A122920 n

end A122920

/-! ## A122920.P3640444509023923409

`A104629(n)-record[A000957(n)]`
-/

namespace A122920.P3640444509023923409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104629 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122920.P3640444509023923409

namespace A122920

/-- `A104629(n)-record[A000957(n)]` -/
def P3640444509023923409.Spec : Prop :=
  ∀ n, P3640444509023923409.a n = A122920 n

end A122920

/-! ## A122920.P9179337658234635297

`A126983(n+2)+A104629(n)`
-/

namespace A122920.P9179337658234635297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126983 (n + 2) + A104629 n

end

end A122920.P9179337658234635297

namespace A122920

/-- `A126983(n+2)+A104629(n)` -/
def P9179337658234635297.Spec : Prop :=
  ∀ n, P9179337658234635297.a n = A122920 n

end A122920

/-! ## A122920.P5991312772945845441

`A104629(n)-A000957(n+2)`
-/

namespace A122920.P5991312772945845441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104629 n - A000957 (n + 2)

end

end A122920.P5991312772945845441

namespace A122920

/-- `A104629(n)-A000957(n+2)` -/
def P5991312772945845441.Spec : Prop :=
  ∀ n, P5991312772945845441.a n = A122920 n

end A122920

/-! ## A122920.P3413118459446453055

`A126983(n+2)+A000957(n+3)`
-/

namespace A122920.P3413118459446453055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126983 (n + 2) + A000957 (n + 3)

end

end A122920.P3413118459446453055

namespace A122920

/-- `A126983(n+2)+A000957(n+3)` -/
def P3413118459446453055.Spec : Prop :=
  ∀ n, P3413118459446453055.a n = A122920 n

end A122920

/-! ## A122920.P8440496569399304892

`A000957(n+3)-A000957(n+2)`
-/

namespace A122920.P8440496569399304892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (n + 3) - A000957 (n + 2)

end

end A122920.P8440496569399304892

namespace A122920

/-- `A000957(n+3)-A000957(n+2)` -/
def P8440496569399304892.Spec : Prop :=
  ∀ n, P8440496569399304892.a n = A122920 n

end A122920

/-! ## A122920.P1186305744460560600

`A126983(n+2)-A126983(n+3)`
-/

namespace A122920.P1186305744460560600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126983 (n + 2) - A126983 (n + 3)

end

end A122920.P1186305744460560600

namespace A122920

/-- `A126983(n+2)-A126983(n+3)` -/
def P1186305744460560600.Spec : Prop :=
  ∀ n, P1186305744460560600.a n = A122920 n

end A122920

/-! ## A122920.P7684689902289037984

`A104629(n)+A135336(n)-A135336(n+1)`
-/

namespace A122920.P7684689902289037984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104629 n + (A135336 n - A135336 (n + 1))

end

end A122920.P7684689902289037984

namespace A122920

/-- `A104629(n)+A135336(n)-A135336(n+1)` -/
def P7684689902289037984.Spec : Prop :=
  ∀ n, P7684689902289037984.a n = A122920 n

end A122920

/-! ## A122920.P1563909249836065805

`A389115(n)+A389115(n)-A289447(n+1)`
-/

namespace A122920.P1563909249836065805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389115 n + (A389115 n - A289447 (n + 1))

end

end A122920.P1563909249836065805

namespace A122920

/-- `A389115(n)+A389115(n)-A289447(n+1)` -/
def P1563909249836065805.Spec : Prop :=
  ∀ n, P1563909249836065805.a n = A122920 n

end A122920

/-! ## A122920.P7149775847475744715

`A104629(n)+A104629(n)-A000958(n+2)`
-/

namespace A122920.P7149775847475744715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104629 n + (A104629 n - A000958 (n + 2))

end

end A122920.P7149775847475744715

namespace A122920

/-- `A104629(n)+A104629(n)-A000958(n+2)` -/
def P7149775847475744715.Spec : Prop :=
  ∀ n, P7149775847475744715.a n = A122920 n

end A122920

/-! ## A122920.P13917036392385473794

`A000245(n+1)+A000958(n+1)-A000958(n+2)`
-/

namespace A122920.P13917036392385473794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A000958 (n + 1) - A000958 (n + 2))

end

end A122920.P13917036392385473794

namespace A122920

/-- `A000245(n+1)+A000958(n+1)-A000958(n+2)` -/
def P13917036392385473794.Spec : Prop :=
  ∀ n, P13917036392385473794.a n = A122920 n

end A122920

/-! ## A122920.P15903607821963755301

`A000958(n+1)+A071724(n+1)-A000958(n+2)`
-/

namespace A122920.P15903607821963755301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000958 (n + 1) + (A071724 (n + 1) - A000958 (n + 2))

end

end A122920.P15903607821963755301

namespace A122920

/-- `A000958(n+1)+A071724(n+1)-A000958(n+2)` -/
def P15903607821963755301.Spec : Prop :=
  ∀ n, P15903607821963755301.a n = A122920 n

end A122920

/-! ## A122920.P1263931168438960697

`Δ[A126093(∑[n]+1)]`
-/

namespace A122920.P1263931168438960697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126093 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122920.P1263931168438960697

namespace A122920

/-- `Δ[A126093(∑[n]+1)]` -/
def P1263931168438960697.Spec : Prop :=
  ∀ n, P1263931168438960697.a n = A122920 n

end A122920

/-!
# A122921: Express n as the sum of four squares, x^2+y^2+z^2+w^2, x>=y>=z>=w>=0, minimizing the value of x. a(n) is that x.

The programs for A122921, there is no canonical definition to state claims against.
-/

/-! ## A122921.P6082496435821150889

`A261915(n-A122922(n)²)`
-/

namespace A122921.P6082496435821150889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261915 ((n : ℤ) - A122922 n ^ 2).toNat

end

end A122921.P6082496435821150889

/-! ## A122921.P1736689988956582674

`A261915(n-A122923(n)²)`
-/

namespace A122921.P1736689988956582674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261915 ((n : ℤ) - A122923 n ^ 2).toNat

end

end A122921.P1736689988956582674

/-! ## A122921.P5657197763620264448

`A261915(n-A122924(n)²)`
-/

namespace A122921.P5657197763620264448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261915 ((n : ℤ) - A122924 n ^ 2).toNat

end

end A122921.P5657197763620264448

/-!
# A122922: Express n as the sum of four squares, x^2+y^2+z^2+w^2, x>=y>=z>=w>=0, minimizing the value of x, then minimizing y for that x. a(n) is that y.

The programs for A122922, there is no canonical definition to state claims against.
-/

/-! ## A122922.P16308924011074320162

`A261915(n-A122921(n)²)`
-/

namespace A122922.P16308924011074320162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261915 ((n : ℤ) - A122921 n ^ 2).toNat

end

end A122922.P16308924011074320162

/-! ## A122922.P4863074383729676469

`A261915(n-A000290(A122921(n)))`
-/

namespace A122922.P4863074383729676469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261915 ((n : ℤ) - A000290 (A122921 n).toNat).toNat

end

end A122922.P4863074383729676469

/-!
# A122923: Express n as the sum of four squares, x^2+y^2+z^2+w^2, x>=y>=z>=w>=0, sequentially minimizing the value of x, y and z. a(n) is that z.

The programs for A122923, there is no canonical definition to state claims against.
-/

/-! ## A122923.P10067606063429214400

`A297155(xor(A189064(n+1), A249617(n)))`
-/

namespace A122923.P10067606063429214400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (Int.xor (A189064 (n + 1)) (A249617 n)).toNat

end

end A122923.P10067606063429214400

/-! ## A122923.P4479486852305170895

`A037827(∑[A124644(A339428(n+1))])`
-/

namespace A122923.P4479486852305170895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124644 (A339428 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122923.P4479486852305170895

/-! ## A122923.P15000302521520051981

`A005087(A016777(Δ[ceil(6^(n/4))]))`
-/

namespace A122923.P15000302521520051981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(6 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A016777 (f1 (n + 1) - f1 n).toNat).toNat

end

end A122923.P15000302521520051981

/-! ## A122923.P5339338054750958969

`∑{p}[A035380(n+1), A001222(A000045(#))]`
-/

namespace A122923.P5339338054750958969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (A000045 p).toNat

end

end A122923.P5339338054750958969

/-!
# A122924: Express n as the sum of four squares, x^2+y^2+z^2+w^2, x>=y>=z>=w>=0, sequentially minimizing the value of x, y and z. a(n) is that w.

The programs for A122924, there is no canonical definition to state claims against.
-/

/-! ## A122924.P5296785611233521309

`C(A014081(A316293(n)), A229995(3*n))`
-/

namespace A122924.P5296785611233521309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014081 (A316293 n).toNat).toNat (A229995 (3 * n)).toNat

end

end A122924.P5296785611233521309

/-! ## A122924.P17899205389301968111

`∏{d}[n+1, #²]%A329329(A214626(n))`
-/

namespace A122924.P17899205389301968111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ) (A329329 (A214626 n).toNat)

end

end A122924.P17899205389301968111

/-! ## A122924.P16605686873283736075

`A107805(3*n+1)%A231813(4*n+5)`
-/

namespace A122924.P16605686873283736075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107805 (3 * n + 1)) (A231813 (4 * n + 5))

end

end A122924.P16605686873283736075

/-! ## A122924.P5335480262849180041

`A001221(gcd(A078812(n), A139199(n+1)))`
-/

namespace A122924.P5335480262849180041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A078812 n) (A139199 (n + 1)))

end

end A122924.P5335480262849180041

/-! ## A122924.P12237293540295575771

`A181450(n+1)%A126988(A004739(n+1))`
-/

namespace A122924.P12237293540295575771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181450 (n + 1)) (A126988 (A004739 (n + 1)).toNat)

end

end A122924.P12237293540295575771

/-!
# A122925: Index of first occurrence of n in A122921.

The programs for A122925, there is no canonical definition to state claims against.
-/

/-! ## A122925.P16975062796316083847

`A122926(n)%p?[(2*n+1)²+(n-1)*∑[(n+1)*2*n]]`
-/

namespace A122925.P16975062796316083847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) + ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122926 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A122925.P16975062796316083847

/-! ## A122925.P4853335880084278161

`A122926(A055649(n))`
-/

namespace A122925.P4853335880084278161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122926 (A055649 n).toNat

end

end A122925.P4853335880084278161

/-! ## A122925.P13455658028217142001

`A122926(A061378(n))`
-/

namespace A122925.P13455658028217142001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122926 (A061378 n).toNat

end

end A122925.P13455658028217142001

/-! ## A122925.P14245907801865380995

`A122926(A062399(n))`
-/

namespace A122925.P14245907801865380995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122926 (A062399 n).toNat

end

end A122925.P14245907801865380995

/-! ## A122925.P11647023081162217465

`A122926(A120126(n))`
-/

namespace A122925.P11647023081162217465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122926 (A120126 n).toNat

end

end A122925.P11647023081162217465

/-!
# A122926: Index of first occurrence of n or larger in A122921.

The programs for A122926, there is no canonical definition to state claims against.
-/

/-! ## A122926.P9348727811186494203

`A122925(A113263(A005941(n+1))+n)`
-/

namespace A122926.P9348727811186494203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122925 (A113263 (A005941 (n + 1)).toNat + (n : ℤ)).toNat

end

end A122926.P9348727811186494203

/-! ## A122926.P6279623204801097430

`A122925(A249157(n+1))`
-/

namespace A122926.P6279623204801097430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122925 (A249157 (n + 1)).toNat

end

end A122926.P6279623204801097430

/-! ## A122926.P12346164759937285785

`A122925(A102823(n)%eq[72, lcm(72, n)])`
-/

namespace A122926.P12346164759937285785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  72

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 72 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122925 (Int.tmod (A102823 n) (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)).toNat

end

end A122926.P12346164759937285785

/-! ## A122926.P18432224624872215730

`A122925(A056962(eq[n, A056960(n)]))`
-/

namespace A122926.P18432224624872215730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122925 (A056962 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A122926.P18432224624872215730

/-! ## A122926.P14310588109868930332

`A122925(A056963(eq[n, A056960(n)]))`
-/

namespace A122926.P14310588109868930332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122925 (A056963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A122926.P14310588109868930332

/-!
# A122927: Number of occurrences of n in A122921.

The programs for A122927, there is no canonical definition to state claims against.
-/

/-! ## A122927.P18281867570664018806

`A172323(n)+A007953(A205486(n))`
-/

namespace A122927.P18281867570664018806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172323 n + A007953 (A205486 n).toNat

end

end A122927.P18281867570664018806

/-!
# A122928: Coefficients of a q-series inspired by Andrews and Ramanujan.

The programs for A122928, there is no canonical definition to state claims against.
-/

/-! ## A122928.P2430182254664121698

`A098693(n^floor(atan(n+1)))`
-/

namespace A122928.P2430182254664121698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098693 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ))).toNat

end

end A122928.P2430182254664121698

/-! ## A122928.P57772781848977748

`A098693(n+1-floor(atan(n+1)))`
-/

namespace A122928.P57772781848977748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098693 ((n + 1 : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋).toNat

end

end A122928.P57772781848977748

/-! ## A122928.P11671442781746105309

`A098693(A028310(n))`
-/

namespace A122928.P11671442781746105309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098693 (A028310 n).toNat

end

end A122928.P11671442781746105309

/-! ## A122928.P17371370610276165408

`A098693(A000007(n)+n)`
-/

namespace A122928.P17371370610276165408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098693 (A000007 n + (n : ℤ)).toNat

end

end A122928.P17371370610276165408

/-! ## A122928.P3175072127149201174

`ceil(A098151(n)/2)`
-/

namespace A122928.P3175072127149201174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098151 n : ℚ) / 2⌉

end

end A122928.P3175072127149201174

/-! ## A122928.P10600895107409068495

`A098151(n)/A040000(n)`
-/

namespace A122928.P10600895107409068495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098151 n : ℚ) / (A040000 n : ℚ)

end

end A122928.P10600895107409068495

/-! ## A122928.P12887297973985359119

`A098151(A000007(n)+n)/2`
-/

namespace A122928.P12887297973985359119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098151 (A000007 n + (n : ℤ)).toNat : ℚ) / 2

end

end A122928.P12887297973985359119

/-! ## A122928.P859330836178523467

`A098151(n)/(2-A000007(n))`
-/

namespace A122928.P859330836178523467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098151 n : ℚ) / (2 - A000007 n : ℚ)

end

end A122928.P859330836178523467

/-! ## A122928.P14073470496683288622

`A098151(n)/(A052839(n)-A111133(n))`
-/

namespace A122928.P14073470496683288622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098151 n : ℚ) / (A052839 n - A111133 n : ℚ)

end

end A122928.P14073470496683288622

/-! ## A122928.P8870167526812760110

`lcm(2, A132002(n))/2`
-/

namespace A122928.P8870167526812760110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A132002 n) : ℚ) / 2

end

end A122928.P8870167526812760110

/-! ## A122928.P8433292755526328355

`A132002(n)/A280560(n)`
-/

namespace A122928.P8433292755526328355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132002 n : ℚ) / (A280560 n : ℚ)

end

end A122928.P8433292755526328355

/-! ## A122928.P8120380292204152831

`A098151(n)/A020639(A000118(n))`
-/

namespace A122928.P8120380292204152831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098151 n : ℚ) / (A020639 (A000118 n).toNat : ℚ)

end

end A122928.P8120380292204152831

/-! ## A122928.P910005217214317534

`abs(ceil(A139137(3*n)/2))`
-/

namespace A122928.P910005217214317534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(A139137 (3 * n) : ℚ) / 2⌉|

end

end A122928.P910005217214317534

/-! ## A122928.P4147464325397466375

`A098151(n)/A000122(n²)`
-/

namespace A122928.P4147464325397466375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098151 n : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A122928.P4147464325397466375

/-!
# A122930: Triangular array read by rows, based on the Zeckendorf expansion of n and containing the golden rectangle sequence A001629.

The programs for A122930, the canonical program `A122930.P328468433382286565` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122930 has offset 1).

The definition of A122930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122930.P328468433382286565

`A106345(A089633(n))*A193588(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A122930

/-- `A106345(A089633(n))*A193588(n)` -/
def P328468433382286565.Spec : Prop :=
  ∀ n, P328468433382286565.a n = A122930 (n + 1)

theorem P328468433382286565.correct : P328468433382286565.Spec := by
  intro n
  simp only [A122930, Nat.add_sub_cancel]

end A122930

/-!
# A122931: Row sums of triangular array A122930.

The programs for A122931, the canonical program `A122931.P9109639114546519688` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122931 has offset 1).

The definition of A122931 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122931.P10558355329570179476

`ogf((1-x)/(1-3x-x^2+5x^3+x^4-x^5))`
-/

namespace A122931.P10558355329570179476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -3, -1, 5, 1, -1] n

end

end A122931.P10558355329570179476

namespace A122931

/-- `ogf((1-x)/(1-3x-x^2+5x^3+x^4-x^5))` -/
def P10558355329570179476.Spec : Prop :=
  ∀ n, P10558355329570179476.a n = A122931 (n + 1)

end A122931

/-! ## A122931.P9109639114546519688

`A301809(n+2)-A000045(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A122931

/-- `A301809(n+2)-A000045(n+1)` -/
def P9109639114546519688.Spec : Prop :=
  ∀ n, P9109639114546519688.a n = A122931 (n + 1)

theorem P9109639114546519688.correct : P9109639114546519688.Spec := by
  intro n
  simp only [A122931, Nat.add_sub_cancel]

end A122931

/-! ## A122931.P10404555615636925667

`∑{#}[n, A000045(#+1)²*A000045(n+1-#)]`
-/

namespace A122931.P10404555615636925667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000045 (k + 1) ^ 2 * A000045 (n + 1 - k)

end

end A122931.P10404555615636925667

namespace A122931

/-- `∑{#}[n, A000045(#+1)²*A000045(n+1-#)]` -/
def P10404555615636925667.Spec : Prop :=
  ∀ n, P10404555615636925667.a n = A122931 (n + 1)

end A122931

/-! ## A122931.P5360974341596609390

`A191797(n+3)-A191797(n+2)`
-/

namespace A122931.P5360974341596609390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 (n + 3) - A191797 (n + 2)

end

end A122931.P5360974341596609390

namespace A122931

/-- `A191797(n+3)-A191797(n+2)` -/
def P5360974341596609390.Spec : Prop :=
  ∀ n, P5360974341596609390.a n = A122931 (n + 1)

end A122931

/-! ## A122931.P10557758698008774722

`A000045(n+1)*(A000045(n+4)-1)/2`
-/

namespace A122931.P10557758698008774722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) * (A000045 (n + 4) - 1) : ℚ) / 2

end

end A122931.P10557758698008774722

namespace A122931

/-- `A000045(n+1)*(A000045(n+4)-1)/2` -/
def P10557758698008774722.Spec : Prop :=
  ∀ n, P10557758698008774722.a n = (A122931 (n + 1) : ℚ)

end A122931

/-! ## A122931.P15285753096159015141

`(A000045(n+3)²-A000045(n+2)²-A000045(n+3)+A000045(n+2))/2`
-/

namespace A122931.P15285753096159015141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 3) ^ 2 - A000045 (n + 2) ^ 2 - A000045 (n + 3) + A000045 (n + 2) : ℚ) / 2

end

end A122931.P15285753096159015141

namespace A122931

/-- `(A000045(n+3)²-A000045(n+2)²-A000045(n+3)+A000045(n+2))/2` -/
def P15285753096159015141.Spec : Prop :=
  ∀ n, P15285753096159015141.a n = (A122931 (n + 1) : ℚ)

end A122931

/-! ## A122931.P4957509264869241440

`A027994(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A122931.P4957509264869241440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A027994 n + a (n - 2)

end

end A122931.P4957509264869241440

namespace A122931

/-- `A027994(n)+a(n-2)` -/
def P4957509264869241440.Spec : Prop :=
  ∀ n, P4957509264869241440.a n = A122931 (n + 1)

end A122931

/-! ## A122931.P14209686716828756973

`A056014(n)+A014742(n)`
-/

namespace A122931.P14209686716828756973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056014 n + A014742 n

end

end A122931.P14209686716828756973

namespace A122931

/-- `A056014(n)+A014742(n)` -/
def P14209686716828756973.Spec : Prop :=
  ∀ n, P14209686716828756973.a n = A122931 (n + 1)

end A122931

/-! ## A122931.P10789499741562463745

`A191797(n+1)+A001654(n+1)`
-/

namespace A122931.P10789499741562463745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 (n + 1) + A001654 (n + 1)

end

end A122931.P10789499741562463745

namespace A122931

/-- `A191797(n+1)+A001654(n+1)` -/
def P10789499741562463745.Spec : Prop :=
  ∀ n, P10789499741562463745.a n = A122931 (n + 1)

end A122931

/-! ## A122931.P9263315051947784224

`A109454(n+2)+A000045(n+2)`
-/

namespace A122931.P9263315051947784224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109454 (n + 2) + A000045 (n + 2)

end

end A122931.P9263315051947784224

namespace A122931

/-- `A109454(n+2)+A000045(n+2)` -/
def P9263315051947784224.Spec : Prop :=
  ∀ n, P9263315051947784224.a n = A122931 (n + 1)

end A122931

/-! ## A122931.P13710932211895817979

`A094292(n+1)+A000045(n+1)²`
-/

namespace A122931.P13710932211895817979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094292 (n + 1) + A000045 (n + 1) ^ 2

end

end A122931.P13710932211895817979

namespace A122931

/-- `A094292(n+1)+A000045(n+1)²` -/
def P13710932211895817979.Spec : Prop :=
  ∀ n, P13710932211895817979.a n = A122931 (n + 1)

end A122931

/-! ## A122931.P13208906688218898291

`A111569(2*n+1)+A094292(n+1)`
-/

namespace A122931.P13208906688218898291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 (2 * n + 1) + A094292 (n + 1)

end

end A122931.P13208906688218898291

namespace A122931

/-- `A111569(2*n+1)+A094292(n+1)` -/
def P13208906688218898291.Spec : Prop :=
  ∀ n, P13208906688218898291.a n = A122931 (n + 1)

end A122931

/-! ## A122931.P11701332664803690834

`A001654(n+1)+C(A000045(n+1), 2)`
-/

namespace A122931.P11701332664803690834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1) + (Nat.choose (A000045 (n + 1)).toNat 2 : ℤ)

end

end A122931.P11701332664803690834

namespace A122931

/-- `A001654(n+1)+C(A000045(n+1), 2)` -/
def P11701332664803690834.Spec : Prop :=
  ∀ n, P11701332664803690834.a n = A122931 (n + 1)

end A122931

/-! ## A122931.P9525008437054924366

`A191797(n+1)+∑[A000045(n+1)²]`
-/

namespace A122931.P9525008437054924366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191797 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122931.P9525008437054924366

namespace A122931

/-- `A191797(n+1)+∑[A000045(n+1)²]` -/
def P9525008437054924366.Spec : Prop :=
  ∀ n, P9525008437054924366.a n = A122931 (n + 1)

end A122931

/-! ## A122931.P12264658510579110173

`A032089(2*(n+1))+A000045(n+1)²`
-/

namespace A122931.P12264658510579110173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032089 (2 * (n + 1)) + A000045 (n + 1) ^ 2

end

end A122931.P12264658510579110173

namespace A122931

/-- `A032089(2*(n+1))+A000045(n+1)²` -/
def P12264658510579110173.Spec : Prop :=
  ∀ n, P12264658510579110173.a n = A122931 (n + 1)

end A122931

/-! ## A122931.P4876595043258486284

`A032089(2*(n+1))+A123231(2*n+1)²`
-/

namespace A122931.P4876595043258486284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032089 (2 * (n + 1)) + A123231 (2 * n + 1) ^ 2

end

end A122931.P4876595043258486284

namespace A122931

/-- `A032089(2*(n+1))+A123231(2*n+1)²` -/
def P4876595043258486284.Spec : Prop :=
  ∀ n, P4876595043258486284.a n = A122931 (n + 1)

end A122931

/-! ## A122931.P8399449568008861995

`A032089(2*(n+1))+A272912(2*n+1)²`
-/

namespace A122931.P8399449568008861995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032089 (2 * (n + 1)) + A272912 (2 * n + 1) ^ 2

end

end A122931.P8399449568008861995

namespace A122931

/-- `A032089(2*(n+1))+A272912(2*n+1)²` -/
def P8399449568008861995.Spec : Prop :=
  ∀ n, P8399449568008861995.a n = A122931 (n + 1)

end A122931

/-! ## A122931.P10114149075532324916

`A301809(n+2)+A001629(n)-A010049(n+1)`
-/

namespace A122931.P10114149075532324916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301809 (n + 2) + (A001629 n - A010049 (n + 1))

end

end A122931.P10114149075532324916

namespace A122931

/-- `A301809(n+2)+A001629(n)-A010049(n+1)` -/
def P10114149075532324916.Spec : Prop :=
  ∀ n, P10114149075532324916.a n = A122931 (n + 1)

end A122931

/-! ## A122931.P11297870287137829979

`A001654(n+1)+A033192(n+1)-A000045(n+1)`
-/

namespace A122931.P11297870287137829979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1) + (A033192 (n + 1) - A000045 (n + 1))

end

end A122931.P11297870287137829979

namespace A122931

/-- `A001654(n+1)+A033192(n+1)-A000045(n+1)` -/
def P11297870287137829979.Spec : Prop :=
  ∀ n, P11297870287137829979.a n = A122931 (n + 1)

end A122931

/-!
# A122932: a(n) = A000085(n) - A000079(n-1).

The programs for A122932, the canonical program `A122932.P15590536832610869506` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122932 has offset 1).

The definition of A122932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122932.P15590536832610869506

`A000085(n+1)-A000079(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A122932

/-- `A000085(n+1)-A000079(n)` -/
def P15590536832610869506.Spec : Prop :=
  ∀ n, P15590536832610869506.a n = A122932 (n + 1)

theorem P15590536832610869506.correct : P15590536832610869506.Spec := by
  intro n
  simp only [A122932, Nat.add_sub_cancel]

end A122932

/-! ## A122932.P7201539534526035190

`∏[n/a(n-1)+1]-2^n` with `a(0)=1`
-/

namespace A122932.P7201539534526035190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℚ)

end

end A122932.P7201539534526035190

namespace A122932

/-- `∏[n/a(n-1)+1]-2^n` -/
def P7201539534526035190.Spec : Prop :=
  ∀ n, P7201539534526035190.a n = (A122932 (n + 1) : ℚ)

end A122932

/-! ## A122932.P100257796140814091

`Δ[A245176(n)-2^n]`
-/

namespace A122932.P100257796140814091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245176 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122932.P100257796140814091

namespace A122932

/-- `Δ[A245176(n)-2^n]` -/
def P100257796140814091.Spec : Prop :=
  ∀ n, P100257796140814091.a n = A122932 (n + 1)

end A122932

/-! ## A122932.P10232696000289032720

`record[A099020(n)]-2^n`
-/

namespace A122932.P10232696000289032720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 ^ n : ℤ)

end

end A122932.P10232696000289032720

namespace A122932

/-- `record[A099020(n)]-2^n` -/
def P10232696000289032720.Spec : Prop :=
  ∀ n, P10232696000289032720.a n = A122932 (n + 1)

end A122932

/-! ## A122932.P17364476987282166042

`A000085(n+1)-2^n`
-/

namespace A122932.P17364476987282166042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 1) - (2 ^ n : ℤ)

end

end A122932.P17364476987282166042

namespace A122932

/-- `A000085(n+1)-2^n` -/
def P17364476987282166042.Spec : Prop :=
  ∀ n, P17364476987282166042.a n = A122932 (n + 1)

theorem P17364476987282166042.correct : P17364476987282166042.Spec := by
  intro n
  simp only [A122932, Nat.add_sub_cancel, A122932.P17364476987282166042.a, A122932.P15590536832610869506.a, A000079, A000079.P10855139691139572931.a, A000085, A000085.P6317799103021482191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A122932

/-! ## A122932.P6155480940171771464

`A001189(n+1)-A000225(n)`
-/

namespace A122932.P6155480940171771464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001189 (n + 1) - A000225 n

end

end A122932.P6155480940171771464

namespace A122932

/-- `A001189(n+1)-A000225(n)` -/
def P6155480940171771464.Spec : Prop :=
  ∀ n, P6155480940171771464.a n = A122932 (n + 1)

end A122932

/-! ## A122932.P4628688503068316022

`record[A293808(n)]-record[A059268(n)]`
-/

namespace A122932.P4628688503068316022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A122932.P4628688503068316022

namespace A122932

/-- `record[A293808(n)]-record[A059268(n)]` -/
def P4628688503068316022.Spec : Prop :=
  ∀ n, P4628688503068316022.a n = A122932 (n + 1)

end A122932

/-! ## A122932.P14471474124518952925

`A052548(n)+A000085(n+1)-A052548(n+1)`
-/

namespace A122932.P14471474124518952925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052548 n + A000085 (n + 1) - A052548 (n + 1)

end

end A122932.P14471474124518952925

namespace A122932

/-- `A052548(n)+A000085(n+1)-A052548(n+1)` -/
def P14471474124518952925.Spec : Prop :=
  ∀ n, P14471474124518952925.a n = A122932 (n + 1)

theorem P14471474124518952925.correct : P14471474124518952925.Spec := by
  intro n
  simp only [A122932, Nat.add_sub_cancel, A122932.P14471474124518952925.a, A122932.P15590536832610869506.a, A000079, A000079.P10855139691139572931.a, A000085, A000085.P6317799103021482191.a, A052548, A052548.P18180923888402085992.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A122932

/-! ## A122932.P17202942963093078931

`record[A238750(n)]-2^n`
-/

namespace A122932.P17202942963093078931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 ^ n : ℤ)

end

end A122932.P17202942963093078931

namespace A122932

/-- `record[A238750(n)]-2^n` -/
def P17202942963093078931.Spec : Prop :=
  ∀ n, P17202942963093078931.a n = A122932 (n + 1)

end A122932

/-!
# A122933: a(n)-th prime is equal to the sum_{i=1..k} pi(i) for some k (cf. A000720).

The programs for A122933, the canonical program `A122933.P6364578972157114850` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122933 has offset 1).

The definition of A122933 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122516, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122933.P6364578972157114850

`A000720(A122516(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A122933

/-- `A000720(A122516(n+1))` -/
def P6364578972157114850.Spec : Prop :=
  ∀ n, P6364578972157114850.a n = A122933 (n + 1)

theorem P6364578972157114850.correct : P6364578972157114850.Spec := by
  intro n
  simp only [A122933, Nat.add_sub_cancel]

end A122933

/-! ## A122933.P3861137642618410558

`A000720(p?[A046992(n+1)])`
-/

namespace A122933.P3861137642618410558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122933.P3861137642618410558

namespace A122933

/-- `A000720(p?[A046992(n+1)])` -/
def P3861137642618410558.Spec : Prop :=
  ∀ n, P3861137642618410558.a n = A122933 (n + 1)

end A122933

/-! ## A122933.P713635055073651203

`A058933(p?[A046992(n+1)])`
-/

namespace A122933.P713635055073651203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122933.P713635055073651203

namespace A122933

/-- `A058933(p?[A046992(n+1)])` -/
def P713635055073651203.Spec : Prop :=
  ∀ n, P713635055073651203.a n = A122933 (n + 1)

end A122933

/-! ## A122933.P2219736337439812616

`A061395(p?[A046992(n+1)])`
-/

namespace A122933.P2219736337439812616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122933.P2219736337439812616

namespace A122933

/-- `A061395(p?[A046992(n+1)])` -/
def P2219736337439812616.Spec : Prop :=
  ∀ n, P2219736337439812616.a n = A122933 (n + 1)

end A122933

/-! ## A122933.P2086783821540455937

`A065770(p?[A046992(n+1)])`
-/

namespace A122933.P2086783821540455937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122933.P2086783821540455937

namespace A122933

/-- `A065770(p?[A046992(n+1)])` -/
def P2086783821540455937.Spec : Prop :=
  ∀ n, P2086783821540455937.a n = A122933 (n + 1)

end A122933

/-! ## A122933.P13752149329420854915

`A066328(p?[A046992(n+1)])`
-/

namespace A122933.P13752149329420854915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122933.P13752149329420854915

namespace A122933

/-- `A066328(p?[A046992(n+1)])` -/
def P13752149329420854915.Spec : Prop :=
  ∀ n, P13752149329420854915.a n = A122933 (n + 1)

end A122933

/-! ## A122933.P5156346217366135458

`A000720(p?[A002815(n)-n])`
-/

namespace A122933.P5156346217366135458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122933.P5156346217366135458

namespace A122933

/-- `A000720(p?[A002815(n)-n])` -/
def P5156346217366135458.Spec : Prop :=
  ∀ n, P5156346217366135458.a n = A122933 (n + 1)

end A122933

/-! ## A122933.P16174560154432089350

`A000720(p?[∑[A000720(n+1)]])`
-/

namespace A122933.P16174560154432089350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122933.P16174560154432089350

namespace A122933

/-- `A000720(p?[∑[A000720(n+1)]])` -/
def P16174560154432089350.Spec : Prop :=
  ∀ n, P16174560154432089350.a n = A122933 (n + 1)

end A122933

/-! ## A122933.P3851357048585405982

`A000720(p?[A061536(n+1)-1])`
-/

namespace A122933.P3851357048585405982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061536 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122933.P3851357048585405982

namespace A122933

/-- `A000720(p?[A061536(n+1)-1])` -/
def P3851357048585405982.Spec : Prop :=
  ∀ n, P3851357048585405982.a n = A122933 (n + 1)

theorem P3851357048585405982.correct : P3851357048585405982.Spec := by
  intro n
  simp only [A122933, Nat.add_sub_cancel, A122933.P3851357048585405982.f1, A122933.P3851357048585405982.a, A122933.P6364578972157114850.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A061536, A061536.P1966979558929038729.a, A122516, A122516.P15119530128524371559.f1, A122516.P15119530128524371559.a, A046992, A046992.P5723550036857346414.a, A002815, A002815.P11144953744924913715.f1, A002815.P11144953744924913715.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A122933

/-!
# A122934: Triangle T(n,k) = number of partitions of n into k parts, with each part size divisible by the next.

The programs for A122934, there is no canonical definition to state claims against.
-/

/-! ## A122934.P977132579784838636

`A063056(A265315(n))`
-/

namespace A122934.P977132579784838636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063056 (A265315 n).toNat

end

end A122934.P977132579784838636

/-! ## A122934.P7978333875290744026

`A175062(A369227(n+1))`
-/

namespace A122934.P7978333875290744026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175062 (A369227 (n + 1)).toNat

end

end A122934.P7978333875290744026

/-! ## A122934.P11124403745479185723

`gcd(A072170(n), A355863(n))`
-/

namespace A122934.P11124403745479185723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072170 n) (A355863 n)

end

end A122934.P11124403745479185723

/-! ## A122934.P16489538246671366010

`A191358(A221975(n+1)+1)`
-/

namespace A122934.P16489538246671366010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191358 (A221975 (n + 1) + 1).toNat

end

end A122934.P16489538246671366010

/-! ## A122934.P7901823463742751632

`gcd(A219347(n), A274137(n+1))`
-/

namespace A122934.P7901823463742751632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A219347 n) (A274137 (n + 1))

end

end A122934.P7901823463742751632

/-!
# A122935: Triangle T(n,k), 0 <= k <= n, read by rows given by [0, 1, 0, 1, 0, 0, 0, 0, 0, ...] DELTA [1, 0, 1, 0, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

The programs for A122935, there is no canonical definition to state claims against.
-/

/-! ## A122935.P7863313502687064194

`A090181(n)-A305258(A090181(n))`
-/

namespace A122935.P7863313502687064194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 n - A305258 (A090181 n).toNat

end

end A122935.P7863313502687064194

/-! ## A122935.P7010110266773392636

`A111660(2*A090181(n))`
-/

namespace A122935.P7010110266773392636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A090181 n).toNat

end

end A122935.P7010110266773392636

/-! ## A122935.P11490504991645880403

`A111660(A005843(A090181(n)))`
-/

namespace A122935.P11490504991645880403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A005843 (A090181 n).toNat).toNat

end

end A122935.P11490504991645880403

/-! ## A122935.P376741251418502440

`A120565(A032766(A097805(n)²))`
-/

namespace A122935.P376741251418502440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120565 (A032766 (A097805 n ^ 2).toNat).toNat

end

end A122935.P376741251418502440

/-! ## A122935.P7775451000850176338

`A178798(A123125(n))+A090181(n)`
-/

namespace A122935.P7775451000850176338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A123125 n).toNat + A090181 n

end

end A122935.P7775451000850176338

/-!
# A122936: 2-Round numbers: numbers n such that every number less than n and relatively prime to n has at most two prime factors (counting multiplicities).

The programs for A122936, there is no canonical definition to state claims against.
-/

/-! ## A122936.P3074319715567431339

`eq[A036997(n+1), A144740(n+1)]+1`
-/

namespace A122936.P3074319715567431339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144740 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A122936.P3074319715567431339

/-! ## A122936.P5582979514336774380

`∑[A103817(A311312(A211524(n)))]`
-/

namespace A122936.P5582979514336774380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103817 (A311312 (A211524 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122936.P5582979514336774380

/-! ## A122936.P3876717952279575389

`lt[A144764(n+1), 1]+1`
-/

namespace A122936.P3876717952279575389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144764 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A122936.P3876717952279575389

/-! ## A122936.P11946643276503219979

`eq[1, A240131(A144764(n+1)+1)]+1`
-/

namespace A122936.P11946643276503219979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240131 (A144764 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122936.P11946643276503219979

/-! ## A122936.P10651131166097504701

`lt[A032574(n+1), A381579(A163894(n))]`
-/

namespace A122936.P10651131166097504701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381579 (A163894 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122936.P10651131166097504701

/-!
# A122937: 3-Round numbers: numbers n such that every number less than n and relatively prime to n has at most three prime factors (counting multiplicities).

The programs for A122937, there is no canonical definition to state claims against.
-/

/-! ## A122937.P5886205156687045067

`record[(n+1)%(A020639(A328571(n+1))^4)]`
-/

namespace A122937.P5886205156687045067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A020639 (A328571 (n + 1)).toNat ^ 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122937.P5886205156687045067

/-! ## A122937.P16712007242002577944

`lt[A219198(xor(1, n²+1)), and(3*n², -3)]`
-/

namespace A122937.P16712007242002577944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219198 (Nat.xor 1 (n ^ 2 + 1) + 17)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n ^ 2 : ℤ) (-3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122937.P16712007242002577944

/-! ## A122937.P16868407920326337299

`lt[A007439(n+1), A059851(A130091(2*(n+1)))]`
-/

namespace A122937.P16868407920326337299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (A130091 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122937.P16868407920326337299

/-! ## A122937.P8044292375908646868

`lt[A270890(gcd(floor((n+1)/2), n+1)), n]`
-/

namespace A122937.P8044292375908646868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270890 (Int.gcd ⌊(n + 1 : ℚ) / 2⌋ (n + 1 : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A122937.P8044292375908646868

/-! ## A122937.P15937423749236066903

`lt[A270890(A152271(n)), n]`
-/

namespace A122937.P15937423749236066903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270890 (A152271 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A122937.P15937423749236066903

/-!
# A122938: G.f. A(x) satisfies: A(x+x^2) = A(x)^2/(1+x).

The programs for A122938, there is no canonical definition to state claims against.
-/

/-! ## A122938.P12913326759500475828

`A028310(A165071(n)+A032186(n+1))`
-/

namespace A122938.P12913326759500475828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A165071 n + A032186 (n + 1)).toNat

end

end A122938.P12913326759500475828

/-! ## A122938.P11555216681565799909

`A028310(A032186(n+1)-A349632(n+1))`
-/

namespace A122938.P11555216681565799909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A032186 (n + 1) - A349632 (n + 1)).toNat

end

end A122938.P11555216681565799909

/-! ## A122938.P493818735493043949

`A054523(A000569(2*(n+2)))+A032186(n+1)`
-/

namespace A122938.P493818735493043949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (A000569 (2 * (n + 2))).toNat + A032186 (n + 1)

end

end A122938.P493818735493043949

/-! ## A122938.P1701585367360167289

`A098489(A032155(2*(n+2)))+A032186(n+1)`
-/

namespace A122938.P1701585367360167289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098489 (A032155 (2 * (n + 2))).toNat + A032186 (n + 1)

end

end A122938.P1701585367360167289

/-!
# A122939: G.f. A(x) satisfies: A(x+x^2) = A(x)^2/(1+x)^2.

The programs for A122939, there is no canonical definition to state claims against.
-/

/-! ## A122939.P9651849236683396320

`∑[A289133(A052898(n))]`
-/

namespace A122939.P9651849236683396320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 (A052898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122939.P9651849236683396320

/-! ## A122939.P14820580411979478889

`∑[A008618(A017077(n!))]`
-/

namespace A122939.P14820580411979478889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A017077 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122939.P14820580411979478889

/-! ## A122939.P10178932806087343727

`A305501(A014517(n+1))+A014517(n)`
-/

namespace A122939.P10178932806087343727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305501 (A014517 (n + 1)).toNat + A014517 n

end

end A122939.P10178932806087343727

/-!
# A122940: L.g.f.: A(x) satisfies: A(x+x^2) = 2*A(x) - log(1+x) with A(0)=0; thus A(x) = log(B(x)), where B(x) is g.f. of A122938.

The programs for A122940, there is no canonical definition to state claims against.
-/

/-! ## A122940.P5037544585280285811

`A062491(∑[A317077(n)])`
-/

namespace A122940.P5037544585280285811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062491 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122940.P5037544585280285811

/-! ## A122940.P3663855356764621166

`Δ[A002265(A052186(n+1))]+1`
-/

namespace A122940.P3663855356764621166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A052186 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A122940.P3663855356764621166

/-!
# A122941: Rectangular table, read by antidiagonals, where the g.f. of row n is Sum_{i>=0} F_i(x)^n / 2^(i+1), where F_0(x)=x, F_{n+1}(x) = F_n(x+x^2), for n>=1.

The programs for A122941, there is no canonical definition to state claims against.
-/

/-! ## A122941.P7088038620187338974

`A013939(A008279(n))+A000265(2^n)`
-/

namespace A122941.P7088038620187338974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (A008279 n).toNat + A000265 (2 ^ n)

end

end A122941.P7088038620187338974

/-! ## A122941.P10729763072373433204

`A344180(2^n)+A013939(A008279(n))`
-/

namespace A122941.P10729763072373433204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (2 ^ n) + A013939 (A008279 n).toNat

end

end A122941.P10729763072373433204

/-! ## A122941.P2412306963485797814

`A325367(A008279(n))%A093773(3*n+1)`
-/

namespace A122941.P2412306963485797814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325367 (A008279 n).toNat) (A093773 (3 * n + 1))

end

end A122941.P2412306963485797814

/-! ## A122941.P12690504437494152236

`A325367(A008279(n)%A007534(2*n+3))`
-/

namespace A122941.P12690504437494152236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325367 (Int.tmod (A008279 n) (A007534 (2 * n + 3))).toNat

end

end A122941.P12690504437494152236

/-! ## A122941.P5555094999235376876

`A013939(A008279(n))+A001221(A198633(n))`
-/

namespace A122941.P5555094999235376876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (A008279 n).toNat + A001221 (A198633 n).toNat

end

end A122941.P5555094999235376876

/-!
# A122942: Partial product of n-th n-almost prime (A101695) divided by product of the first n primes, rounded down.

The programs for A122942, there is no canonical definition to state claims against.
-/

/-! ## A122942.P10566235027940990760

`A073757(∏[∑[or(1, n)]])`
-/

namespace A122942.P10566235027940990760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A122942.P10566235027940990760

/-!
# A122943: Odd numbers n ordered by n/2^BigOmega(n), where BigOmega(n) is the number of prime divisors of n with repetition.

The programs for A122943, the canonical program `A122943.P845399076993296391` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122943 has offset 1).

The definition of A122943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122943.P2086177310264799578

`A000265(A101695(n+1))`
-/

namespace A122943.P2086177310264799578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A101695 (n + 1)).toNat

end

end A122943.P2086177310264799578

namespace A122943

/-- `A000265(A101695(n+1))` -/
def P2086177310264799578.Spec : Prop :=
  ∀ n, P2086177310264799578.a n = A122943 (n + 1)

end A122943

/-! ## A122943.P15436679360541381515

`A000265(A109636(n+1))`
-/

namespace A122943.P15436679360541381515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A109636 (n + 1)).toNat

end

end A122943.P15436679360541381515

namespace A122943

/-- `A000265(A109636(n+1))` -/
def P15436679360541381515.Spec : Prop :=
  ∀ n, P15436679360541381515.a n = A122943 (n + 1)

end A122943

/-! ## A122943.P845399076993296391

`A171435(lcm(gcd(8, 1-n²), A046314(n+1)))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A122943

/-- `A171435(lcm(gcd(8, 1-n²), A046314(n+1)))` -/
def P845399076993296391.Spec : Prop :=
  ∀ n, P845399076993296391.a n = A122943 (n + 1)

theorem P845399076993296391.correct : P845399076993296391.Spec := by
  intro n
  simp only [A122943, Nat.add_sub_cancel]

end A122943

/-! ## A122943.P16432849660993723410

`A000265(A020639(Δ[n^3]+1)*A069272(n+1)/4)`
-/

namespace A122943.P16432849660993723410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A020639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat * A069272 (n + 1) : ℚ) / 4)).toNat

end

end A122943.P16432849660993723410

namespace A122943

/-- `A000265(A020639(Δ[n^3]+1)*A069272(n+1)/4)` -/
def P16432849660993723410.Spec : Prop :=
  ∀ n, P16432849660993723410.a n = A122943 (n + 1)

end A122943

/-! ## A122943.P2457307202190681136

`A171435(A020639(Δ[n^3]+1)*A069272(n+1)/4)`
-/

namespace A122943.P2457307202190681136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (SequenceMachineLib.roundAway ((A020639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat * A069272 (n + 1) : ℚ) / 4)).toNat

end

end A122943.P2457307202190681136

namespace A122943

/-- `A171435(A020639(Δ[n^3]+1)*A069272(n+1)/4)` -/
def P2457307202190681136.Spec : Prop :=
  ∀ n, P2457307202190681136.a n = A122943 (n + 1)

end A122943

/-! ## A122943.P2863519766605950319

`A000265(lcm(2, A046314(n+1)))`
-/

namespace A122943.P2863519766605950319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lcm 2 (A046314 (n + 1)))

end

end A122943.P2863519766605950319

namespace A122943

/-- `A000265(lcm(2, A046314(n+1)))` -/
def P2863519766605950319.Spec : Prop :=
  ∀ n, P2863519766605950319.a n = A122943 (n + 1)

end A122943

/-! ## A122943.P11572603491888435972

`A000265(∑{e}[A001248(n+1), #*A046312(n+1)])`
-/

namespace A122943.P11572603491888435972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A046312 (n + 1)).toNat

end

end A122943.P11572603491888435972

namespace A122943

/-- `A000265(∑{e}[A001248(n+1), #*A046312(n+1)])` -/
def P11572603491888435972.Spec : Prop :=
  ∀ n, P11572603491888435972.a n = A122943 (n + 1)

end A122943

/-! ## A122943.P12366638400058310331

`A000265(A046312(n+1)%A165599(n))`
-/

namespace A122943.P12366638400058310331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.tmod (A046312 (n + 1)) (A165599 n)).toNat

end

end A122943.P12366638400058310331

namespace A122943

/-- `A000265(A046312(n+1)%A165599(n))` -/
def P12366638400058310331.Spec : Prop :=
  ∀ n, P12366638400058310331.a n = A122943 (n + 1)

end A122943

/-! ## A122943.P5736543903834765451

`A000265(A046312(n+1))%p?[A052905(n)+9]`
-/

namespace A122943.P5736543903834765451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A046312 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A122943.P5736543903834765451

namespace A122943

/-- `A000265(A046312(n+1))%p?[A052905(n)+9]` -/
def P5736543903834765451.Spec : Prop :=
  ∀ n, P5736543903834765451.a n = A122943 (n + 1)

end A122943

/-! ## A122943.P1058892068822518893

`A000265(2*A046314(n+1)/A083952(n))`
-/

namespace A122943.P1058892068822518893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((2 * A046314 (n + 1) : ℚ) / (A083952 n : ℚ))).toNat

end

end A122943.P1058892068822518893

namespace A122943

/-- `A000265(2*A046314(n+1)/A083952(n))` -/
def P1058892068822518893.Spec : Prop :=
  ∀ n, P1058892068822518893.a n = A122943 (n + 1)

end A122943

/-! ## A122943.P12993344575609233098

`A171435(A046312(n+1))%A251467(n+1)`
-/

namespace A122943.P12993344575609233098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171435 (A046312 (n + 1)).toNat) (A251467 (n + 1))

end

end A122943.P12993344575609233098

namespace A122943

/-- `A171435(A046312(n+1))%A251467(n+1)` -/
def P12993344575609233098.Spec : Prop :=
  ∀ n, P12993344575609233098.a n = A122943 (n + 1)

end A122943

/-! ## A122943.P3834803629542855155

`A000265(A046312(n+1))%A279830(n+1)`
-/

namespace A122943.P3834803629542855155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A046312 (n + 1)).toNat) (A279830 (n + 1))

end

end A122943.P3834803629542855155

namespace A122943

/-- `A000265(A046312(n+1))%A279830(n+1)` -/
def P3834803629542855155.Spec : Prop :=
  ∀ n, P3834803629542855155.a n = A122943 (n + 1)

end A122943

/-! ## A122943.P4715226425674110989

`A000265(A010121(n)*A046312(n+1))`
-/

namespace A122943.P4715226425674110989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A010121 n * A046312 (n + 1)).toNat

end

end A122943.P4715226425674110989

namespace A122943

/-- `A000265(A010121(n)*A046312(n+1))` -/
def P4715226425674110989.Spec : Prop :=
  ∀ n, P4715226425674110989.a n = A122943 (n + 1)

end A122943

/-! ## A122943.P3686241551918605492

`A000265(A046312(n+1)*A071928(n+1))`
-/

namespace A122943.P3686241551918605492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A046312 (n + 1) * A071928 (n + 1)).toNat

end

end A122943.P3686241551918605492

namespace A122943

/-- `A000265(A046312(n+1)*A071928(n+1))` -/
def P3686241551918605492.Spec : Prop :=
  ∀ n, P3686241551918605492.a n = A122943 (n + 1)

end A122943

/-! ## A122943.P10039012329588519527

`A000265(A069272(n+1))`
-/

namespace A122943.P10039012329588519527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A069272 (n + 1)).toNat

end

end A122943.P10039012329588519527

namespace A122943

/-- `A000265(A069272(n+1))` -/
def P10039012329588519527.Spec : Prop :=
  ∀ n, P10039012329588519527.a n = A122943 (n + 1)

end A122943

/-! ## A122943.P13122001686047091335

`A000265(2*A046314(n+1))`
-/

namespace A122943.P13122001686047091335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A046314 (n + 1)).toNat

end

end A122943.P13122001686047091335

namespace A122943

/-- `A000265(2*A046314(n+1))` -/
def P13122001686047091335.Spec : Prop :=
  ∀ n, P13122001686047091335.a n = A122943 (n + 1)

end A122943

/-! ## A122943.P304149427693330839

`A171435(2*A046314(n+1))`
-/

namespace A122943.P304149427693330839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A046314 (n + 1)).toNat

end

end A122943.P304149427693330839

namespace A122943

/-- `A171435(2*A046314(n+1))` -/
def P304149427693330839.Spec : Prop :=
  ∀ n, P304149427693330839.a n = A122943 (n + 1)

end A122943

/-! ## A122943.P12684700580586793261

`A000265(A069273(n+1)/2)`
-/

namespace A122943.P12684700580586793261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A069273 (n + 1) : ℚ) / 2)).toNat

end

end A122943.P12684700580586793261

namespace A122943

/-- `A000265(A069273(n+1)/2)` -/
def P12684700580586793261.Spec : Prop :=
  ∀ n, P12684700580586793261.a n = A122943 (n + 1)

end A122943

/-! ## A122943.P15226436907113357064

`A000265(4*A046312(n+1))`
-/

namespace A122943.P15226436907113357064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (4 * A046312 (n + 1)).toNat

end

end A122943.P15226436907113357064

namespace A122943

/-- `A000265(4*A046312(n+1))` -/
def P15226436907113357064.Spec : Prop :=
  ∀ n, P15226436907113357064.a n = A122943 (n + 1)

end A122943

/-! ## A122943.P9931335440346184347

`A000265(A069275(n+1)/8)`
-/

namespace A122943.P9931335440346184347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A069275 (n + 1) : ℚ) / 8)).toNat

end

end A122943.P9931335440346184347

namespace A122943

/-- `A000265(A069275(n+1)/8)` -/
def P9931335440346184347.Spec : Prop :=
  ∀ n, P9931335440346184347.a n = A122943 (n + 1)

end A122943

/-!
# A122946: a(0)=a(1)=0, a(2)=2; for n >= 3, a(n) = a(n-1) + 4*a(n-3).

The programs for A122946, the canonical program `A122946.P4360769733323283658` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122946 has offset 0).

The definition of A122946 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+4*a(n-3)` (program `A122946.P4360769733323283658`, by `A122946.P4360769733323283658.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122946.P4119848276980643550

`ogf(2x^2/(1-x-4x^3))`
-/

namespace A122946.P4119848276980643550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, -1, 0, -4] n

end

end A122946.P4119848276980643550

namespace A122946

/-- `ogf(2x^2/(1-x-4x^3))` -/
def P4119848276980643550.Spec : Prop :=
  ∀ n, P4119848276980643550.a n = A122946 n

end A122946

/-! ## A122946.P4360769733323283658

`a(n-1)+4*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122946

/-- `a(n-1)+4*a(n-3)` -/
def P4360769733323283658.Spec : Prop :=
  ∀ n, (P4360769733323283658.a n : ℤ) = A122946 n

theorem P4360769733323283658.correct : P4360769733323283658.Spec := by
  intro n
  simp only [A122946]

end A122946

/-! ## A122946.P17740430982361258330

`a(n-1)+lcm(8, a(n-3))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A122946.P17740430982361258330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  a (n - 1) + Nat.lcm 8 (a (n - 3))

end

end A122946.P17740430982361258330

namespace A122946

/-- `a(n-1)+lcm(8, a(n-3))` -/
def P17740430982361258330.Spec : Prop :=
  ∀ n, (P17740430982361258330.a n : ℤ) = A122946 n

end A122946

/-! ## A122946.P6348028219708167069

`5*a(n-3)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A122946.P6348028219708167069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  5 * a (n - 3) - (a (n - 3) - a (n - 1))

end

end A122946.P6348028219708167069

namespace A122946

/-- `5*a(n-3)-(a(n-3)-a(n-1))` -/
def P6348028219708167069.Spec : Prop :=
  ∀ n, P6348028219708167069.a n = A122946 n

end A122946

/-! ## A122946.P4838153496718273557

`2*a(n-1)-A110512(n)` with `a(0)=0`
-/

namespace A122946.P4838153496718273557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) - A110512 n

end

end A122946.P4838153496718273557

namespace A122946

/-- `2*a(n-1)-A110512(n)` -/
def P4838153496718273557.Spec : Prop :=
  ∀ n, P4838153496718273557.a n = A122946 n

end A122946

/-! ## A122946.P4908777940955359315

`Δ[A089977(n)/2]`
-/

namespace A122946.P4908777940955359315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089977 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122946.P4908777940955359315

namespace A122946

/-- `Δ[A089977(n)/2]` -/
def P4908777940955359315.Spec : Prop :=
  ∀ n, P4908777940955359315.a n = (A122946 n : ℚ)

end A122946

/-! ## A122946.P11490370930983685251

`Δ[(A110512(n)+A000079(n))/4]`
-/

namespace A122946.P11490370930983685251
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110512 n + A000079 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122946.P11490370930983685251

namespace A122946

/-- `Δ[(A110512(n)+A000079(n))/4]` -/
def P11490370930983685251.Spec : Prop :=
  ∀ n, P11490370930983685251.a n = (A122946 n : ℚ)

end A122946

/-!
# A122947: Triangular sequence: 1, 1 - x, -1 - x + x^2, 1 + 3 x + x^2 - x^3, 1 - x - 4 x^2 - x^3 +x^4, -1 - x + 6 x^2 + 8 x^3 + x^4 - x^5, -1 + 3 x + 6 x^2 - 7 x^3 - 10 x^4 - x^5 + x^6.

The programs for A122947, there is no canonical definition to state claims against.
-/

/-! ## A122947.P12644998620630025377

`A122944(n+1)+A087436(A060440(n+1))`
-/

namespace A122947.P12644998620630025377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122944 (n + 1) + A087436 (A060440 (n + 1)).toNat

end

end A122947.P12644998620630025377

/-! ## A122947.P3071901672565831831

`or(A096751(A066273(n+1)), A122944(n+1))`
-/

namespace A122947.P3071901672565831831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A096751 (A066273 (n + 1)).toNat) (A122944 (n + 1))

end

end A122947.P3071901672565831831

/-! ## A122947.P18284055226153197417

`or(A122944(n+1), A363914(A179456(2*n)))`
-/

namespace A122947.P18284055226153197417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122944 (n + 1)) (A363914 (A179456 (2 * n)).toNat)

end

end A122947.P18284055226153197417

/-! ## A122947.P6632925195516686725

`or(A122944(n+1), A284878(A000079(n)))`
-/

namespace A122947.P6632925195516686725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122944 (n + 1)) (A284878 (A000079 n).toNat)

end

end A122947.P6632925195516686725

/-! ## A122947.P16989879493164859173

`or(A010060(A276532(n)), A122944(n+1))`
-/

namespace A122947.P16989879493164859173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A276532 n).toNat) (A122944 (n + 1))

end

end A122947.P16989879493164859173

/-!
# A122948: First row sum of the 5 X 5 matrix M^n, where M = {{0, -1, 0, 0, 0}, {-1, 1, -1, 0, 0}, {0, -1, 1, -1, 0}, {0, 0, -1, 1, -1}, {0, 0, 0, -1, 1}}, n>=0.

The programs for A122948, the canonical program `A122948.P7405391779081674854` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122948 has offset 0).

The definition of A122948 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122948.P2945303313755292979

`ogf((1-5x+7x^2-2x^3)/(1-4x+2x^2+5x^3-2x^4-x^5))`
-/

namespace A122948.P2945303313755292979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 7, -2] [1, -4, 2, 5, -2, -1] n

end

end A122948.P2945303313755292979

namespace A122948

/-- `ogf((1-5x+7x^2-2x^3)/(1-4x+2x^2+5x^3-2x^4-x^5))` -/
def P2945303313755292979.Spec : Prop :=
  ∀ n, P2945303313755292979.a n = A122948 n

end A122948

/-! ## A122948.P7405391779081674854

`4*a(n-1)-2*a(n-2)-5*a(n-3)+2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-1, a(4)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122948

/-- `4*a(n-1)-2*a(n-2)-5*a(n-3)+2*a(n-4)+a(n-5)` -/
def P7405391779081674854.Spec : Prop :=
  ∀ n, P7405391779081674854.a n = A122948 n

theorem P7405391779081674854.correct : P7405391779081674854.Spec := by
  intro n
  simp only [A122948]

end A122948

/-! ## A122948.P2943856319875406519

`A259480(A000389(n))+A062157(3*n+1)`
-/

namespace A122948.P2943856319875406519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259480 (A000389 n).toNat + A062157 (3 * n + 1)

end

end A122948.P2943856319875406519

namespace A122948

/-- `A259480(A000389(n))+A062157(3*n+1)` -/
def P2943856319875406519.Spec : Prop :=
  ∀ n, P2943856319875406519.a n = A122948 n

end A122948

/-!
# A122949: Number of ordered pairs of permutations generating a transitive group.

The programs for A122949, there is no canonical definition to state claims against.
-/

/-! ## A122949.P8944839515432152745

`n!*A233824(n+1)`
-/

namespace A122949.P8944839515432152745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A233824 (n + 1)

end

end A122949.P8944839515432152745

/-! ## A122949.P14263902524790135718

`n!*A003319(n+2)`
-/

namespace A122949.P14263902524790135718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A003319 (n + 2)

end

end A122949.P14263902524790135718

/-! ## A122949.P9401660620133675487

`abs(A158882(n+2))*n!`
-/

namespace A122949.P9401660620133675487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158882 (n + 2)| * (Nat.factorial n : ℤ)

end

end A122949.P9401660620133675487

/-! ## A122949.P15937157091233128665

`record[A085771(n)]*A000142(n)`
-/

namespace A122949.P15937157091233128665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000142 n

end

end A122949.P15937157091233128665

/-! ## A122949.P16010682194549418732

`record[A104980(n)]*A000142(n)`
-/

namespace A122949.P16010682194549418732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000142 n

end

end A122949.P16010682194549418732

/-!
# A122950: Triangle T(n,k), 0 <= k <= n, read by rows, given by [0, 0, 1, -1, 0, 0, 0, 0, 0, 0, ...] DELTA [1, 1, -1, 0, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

The programs for A122950, the canonical program `A122950.P6314849876889762775` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122950 has offset 0).

The definition of A122950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122950.P6314849876889762775

`T(n-1,k-1)+T(n-2,k-1)+T(row(n)-2, col(n)-2)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122950

/-- `T(n-1,k-1)+T(n-2,k-1)+T(row(n)-2, col(n)-2)` -/
def P6314849876889762775.Spec : Prop :=
  ∀ n, (P6314849876889762775.a n : ℤ) = A122950 n

theorem P6314849876889762775.correct : P6314849876889762775.Spec := by
  intro n
  simp only [A122950]

end A122950

/-! ## A122950.P2513792860908533748

`A236076(A066182(n+1)-A002024(n+1))`
-/

namespace A122950.P2513792860908533748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236076 (A066182 (n + 1) - A002024 (n + 1)).toNat

end

end A122950.P2513792860908533748

namespace A122950

/-- `A236076(A066182(n+1)-A002024(n+1))` -/
def P2513792860908533748.Spec : Prop :=
  ∀ n, P2513792860908533748.a n = A122950 n

end A122950

/-! ## A122950.P5897124684865398299

`A236076(A066182(n+1)+1-A003057(n+2))`
-/

namespace A122950.P5897124684865398299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236076 (A066182 (n + 1) + (1 - A003057 (n + 2))).toNat

end

end A122950.P5897124684865398299

namespace A122950

/-- `A236076(A066182(n+1)+1-A003057(n+2))` -/
def P5897124684865398299.Spec : Prop :=
  ∀ n, P5897124684865398299.a n = A122950 n

end A122950

/-! ## A122950.P1887608681074871977

`or(A182114(n), A247505(A350914(n)))`
-/

namespace A122950.P1887608681074871977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A182114 n) (A247505 (A350914 n).toNat)

end

end A122950.P1887608681074871977

namespace A122950

/-- `or(A182114(n), A247505(A350914(n)))` -/
def P1887608681074871977.Spec : Prop :=
  ∀ n, P1887608681074871977.a n = A122950 n

end A122950

/-! ## A122950.P15627181653276684274

`A371265(A374766(n)^A386904(2*n+5))`
-/

namespace A122950.P15627181653276684274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371265 (SequenceMachineLib.roundAway ((A374766 n : ℚ) ^ (A386904 (2 * n + 5) : ℤ))).toNat

end

end A122950.P15627181653276684274

namespace A122950

/-- `A371265(A374766(n)^A386904(2*n+5))` -/
def P15627181653276684274.Spec : Prop :=
  ∀ n, P15627181653276684274.a n = A122950 n

end A122950

/-!
# A122951: Number of walks from (0,0) to (n,n) in the region x >= y with the steps (1,0), (0,1), (2,0) and (0,2).

The programs for A122951, there is no canonical definition to state claims against.
-/

/-! ## A122951.P7190068668014977688

`A028310(A127620(n))`
-/

namespace A122951.P7190068668014977688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A127620 n).toNat

end

end A122951.P7190068668014977688

/-! ## A122951.P12442347551603591290

`A023443(A127620(n)+1)`
-/

namespace A122951.P12442347551603591290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A127620 n + 1).toNat

end

end A122951.P12442347551603591290

/-! ## A122951.P8606384480655934017

`A289207(A127620(n)+2)`
-/

namespace A122951.P8606384480655934017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A127620 n + 2).toNat

end

end A122951.P8606384480655934017

/-!
# A122953: a(n) = number of distinct positive integers represented in binary which are substrings of binary expansion of n.

The programs for A122953, there is no canonical definition to state claims against.
-/

/-! ## A122953.P5381849314475394805

`A078822(n+1)-A043545(n+1)`
-/

namespace A122953.P5381849314475394805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078822 (n + 1) - A043545 (n + 1)

end

end A122953.P5381849314475394805

/-! ## A122953.P17900157499010090175

`Δ[eq[1, A165416(n+1)]]`
-/

namespace A122953.P17900157499010090175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165416 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A122953.P17900157499010090175

/-! ## A122953.P8934011055617690431

`Δ[lt[A334096(n+1)%A165416(n+1), 1]]`
-/

namespace A122953.P8934011055617690431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334096 (n + 1)) (A165416 (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A122953.P8934011055617690431

/-! ## A122953.P13932857397166561329

`A078822(n+1)+A272851(n+1)-A272886(n+1)`
-/

namespace A122953.P13932857397166561329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078822 (n + 1) + (A272851 (n + 1) - A272886 (n + 1))

end

end A122953.P13932857397166561329

/-!
# A122954: a(1) = 1. a(n) = number of earlier terms which, when written in binary, are substrings of binary n.

The programs for A122954, there is no canonical definition to state claims against.
-/

/-! ## A122954.P16614626984728490129

`A000120(xor(A095292(n+5), A243753(2*n+3)))`
-/

namespace A122954.P16614626984728490129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A095292 (n + 5)) (A243753 (2 * n + 3))).toNat

end

end A122954.P16614626984728490129

/-!
# A122955: Numbers k such that although the number of digits in 5^k is larger, the sum of the digits is less than that of the previous power of 5.

The programs for A122955, there is no canonical definition to state claims against.
-/

/-! ## A122955.P10079143612919417741

`eq[A134318(A008615(n)), A184159(n+1)]`
-/

namespace A122955.P10079143612919417741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134318 (A008615 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184159 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122955.P10079143612919417741

/-!
# A122957: Numbers n such that if m > n, phi(m) >= phi(n).

The programs for A122957, there is no canonical definition to state claims against.
-/

/-! ## A122957.P2067764836817614823

`record[A032447(n+1)]`
-/

namespace A122957.P2067764836817614823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122957.P2067764836817614823

/-! ## A122957.P17652852607085024152

`record[A032447(A065033(n))%A020742(n)]`
-/

namespace A122957.P17652852607085024152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032447 (A065033 n).toNat) (A020742 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122957.P17652852607085024152

/-! ## A122957.P1512111629212161856

`record[A065033(A035113(n+1))]`
-/

namespace A122957.P1512111629212161856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A035113 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122957.P1512111629212161856

/-! ## A122957.P4209935258533870890

`record[A378638(n+1)]`
-/

namespace A122957.P4209935258533870890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122957.P4209935258533870890

/-! ## A122957.P7199522019246411103

`record[A194507(n+1)%A025010(n+1)]`
-/

namespace A122957.P7199522019246411103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194507 (n + 1)) (A025010 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122957.P7199522019246411103

/-! ## A122957.P1712627343172205491

`record[A194507(n+1)]%A192585(n+2)`
-/

namespace A122957.P1712627343172205491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194507 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A192585 (n + 2))

end

end A122957.P1712627343172205491

/-! ## A122957.P757345934390014882

`record[A194507(n+1)%A315042(A315042(n))]`
-/

namespace A122957.P757345934390014882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194507 (n + 1)) (A315042 (A315042 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122957.P757345934390014882

/-! ## A122957.P16036584834833614759

`record[A194507(n+1)+A161696(A053032(n+1))]`
-/

namespace A122957.P16036584834833614759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194507 (n + 1) + A161696 (A053032 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122957.P16036584834833614759

/-!
# A122958: a(0)=1, a(n) = 2 - 2^(n-1) for n>0.

The programs for A122958, the canonical program `A122958.P17438442665224267042` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122958 has offset 0).

The definition of A122958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122958.P6956017930918514409

`ogf((1-2x-x^2)/(1-3x+2x^2))`
-/

namespace A122958.P6956017930918514409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -3, 2] n

end

end A122958.P6956017930918514409

namespace A122958

/-- `ogf((1-2x-x^2)/(1-3x+2x^2))` -/
def P6956017930918514409.Spec : Prop :=
  ∀ n, P6956017930918514409.a n = A122958 n

end A122958

/-! ## A122958.P17438442665224267042

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122958

/-- `3*a(n-1)-2*a(n-2)` -/
def P17438442665224267042.Spec : Prop :=
  ∀ n, P17438442665224267042.a n = A122958 n

theorem P17438442665224267042.correct : P17438442665224267042.Spec := by
  intro n
  simp only [A122958]

end A122958

/-! ## A122958.P10302582366604041531

`2-ceil(2^(n-1))`
-/

namespace A122958.P10302582366604041531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A122958.P10302582366604041531

namespace A122958

/-- `2-ceil(2^(n-1))` -/
def P10302582366604041531.Spec : Prop :=
  ∀ n, P10302582366604041531.a n = A122958 n

end A122958

/-! ## A122958.P13799214865098457044

`∑[ogf((-1+2x+x^2)/(-1+2x))]`
-/

namespace A122958.P13799214865098457044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122958.P13799214865098457044

namespace A122958

/-- `∑[ogf((-1+2x+x^2)/(-1+2x))]` -/
def P13799214865098457044.Spec : Prop :=
  ∀ n, P13799214865098457044.a n = A122958 n

end A122958

/-! ## A122958.P4422669457765370913

`round(acos(0)-2^(n-1))`
-/

namespace A122958.P4422669457765370913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arccos (0 : ℝ) - ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A122958.P4422669457765370913

namespace A122958

/-- `round(acos(0)-2^(n-1))` -/
def P4422669457765370913.Spec : Prop :=
  ∀ n, P4422669457765370913.a n = A122958 n

end A122958

/-! ## A122958.P5533341722016706529

`round(tan(1)-2^(n-1))`
-/

namespace A122958.P5533341722016706529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (1 : ℝ) - ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A122958.P5533341722016706529

namespace A122958

/-- `round(tan(1)-2^(n-1))` -/
def P5533341722016706529.Spec : Prop :=
  ∀ n, P5533341722016706529.a n = A122958 n

end A122958

/-! ## A122958.P13238700367046259117

`round(asin(1)-2^(n-1))`
-/

namespace A122958.P13238700367046259117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arcsin (1 : ℝ) - ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A122958.P13238700367046259117

namespace A122958

/-- `round(asin(1)-2^(n-1))` -/
def P13238700367046259117.Spec : Prop :=
  ∀ n, P13238700367046259117.a n = A122958 n

end A122958

/-! ## A122958.P17214263015532258362

`round(cosh(1)-2^(n-1))`
-/

namespace A122958.P17214263015532258362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (1 : ℝ) - ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A122958.P17214263015532258362

namespace A122958

/-- `round(cosh(1)-2^(n-1))` -/
def P17214263015532258362.Spec : Prop :=
  ∀ n, P17214263015532258362.a n = A122958 n

end A122958

/-! ## A122958.P1680722200995253462

`round(cot(10)-2^(n-1))`
-/

namespace A122958.P1680722200995253462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (10 : ℝ) - ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A122958.P1680722200995253462

namespace A122958

/-- `round(cot(10)-2^(n-1))` -/
def P1680722200995253462.Spec : Prop :=
  ∀ n, P1680722200995253462.a n = A122958 n

end A122958

/-! ## A122958.P15566752331423506917

`floor(sinh(ϕ)-2^(n-1))`
-/

namespace A122958.P15566752331423506917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh Real.goldenRatio - ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌋

end

end A122958.P15566752331423506917

namespace A122958

/-- `floor(sinh(ϕ)-2^(n-1))` -/
def P15566752331423506917.Spec : Prop :=
  ∀ n, P15566752331423506917.a n = A122958 n

end A122958

/-! ## A122958.P9807822309798998670

`2*(a(n-1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A122958.P9807822309798998670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 1) - 1)

end

end A122958.P9807822309798998670

namespace A122958

/-- `2*(a(n-1)-1)` -/
def P9807822309798998670.Spec : Prop :=
  ∀ n, P9807822309798998670.a n = A122958 n

end A122958

/-! ## A122958.P6283767742992774612

`-lcm(2, 1-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A122958.P6283767742992774612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  -(Int.lcm 2 (1 - a (n - 1)) : ℤ)

end

end A122958.P6283767742992774612

namespace A122958

/-- `-lcm(2, 1-a(n-1))` -/
def P6283767742992774612.Spec : Prop :=
  ∀ n, P6283767742992774612.a n = A122958 n

end A122958

/-! ## A122958.P14927589203625475982

`floor(gcd(2, 2*n)-2^(n-1))`
-/

namespace A122958.P14927589203625475982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 2 (2 * n) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A122958.P14927589203625475982

namespace A122958

/-- `floor(gcd(2, 2*n)-2^(n-1))` -/
def P14927589203625475982.Spec : Prop :=
  ∀ n, P14927589203625475982.a n = A122958 n

end A122958

/-! ## A122958.P5640834191151851482

`round(a(n-1)-2^(n-2))` with `a(0)=1`
-/

namespace A122958.P5640834191151851482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A122958.P5640834191151851482

namespace A122958

/-- `round(a(n-1)-2^(n-2))` -/
def P5640834191151851482.Spec : Prop :=
  ∀ n, P5640834191151851482.a n = A122958 n

end A122958

/-! ## A122958.P17419236516523580149

`-floor(2^(n-2)-a(n-1))` with `a(0)=1`
-/

namespace A122958.P17419236516523580149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -⌊(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - (a (n - 1) : ℚ)⌋

end

end A122958.P17419236516523580149

namespace A122958

/-- `-floor(2^(n-2)-a(n-1))` -/
def P17419236516523580149.Spec : Prop :=
  ∀ n, P17419236516523580149.a n = A122958 n

end A122958

/-! ## A122958.P2300907155532314846

`(1-a(n-1))/(1/2-1)` with `a(0)=1, a(1)=1`
-/

namespace A122958.P2300907155532314846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - a (n - 1)) / ((1 : ℚ) / 2 - 1)

end

end A122958.P2300907155532314846

namespace A122958

/-- `(1-a(n-1))/(1/2-1)` -/
def P2300907155532314846.Spec : Prop :=
  ∀ n, P2300907155532314846.a n = (A122958 n : ℚ)

end A122958

/-! ## A122958.P15592107966714013473

`floor(a(n-1)+a(n-1)-2)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A122958.P15592107966714013473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 1) - 2)

end

end A122958.P15592107966714013473

namespace A122958

/-- `floor(a(n-1)+a(n-1)-2)` -/
def P15592107966714013473.Spec : Prop :=
  ∀ n, P15592107966714013473.a n = A122958 n

end A122958

/-! ## A122958.P13472327406173744282

`floor(a(n-1)-(2-a(n-1)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A122958.P13472327406173744282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (2 - a (n - 1))

end

end A122958.P13472327406173744282

namespace A122958

/-- `floor(a(n-1)-(2-a(n-1)))` -/
def P13472327406173744282.Spec : Prop :=
  ∀ n, P13472327406173744282.a n = A122958 n

end A122958

/-! ## A122958.P11014027323871440288

`ceil(a(n-1)+a(n-1)-2)` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A122958.P11014027323871440288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 1) - 2)

end

end A122958.P11014027323871440288

namespace A122958

/-- `ceil(a(n-1)+a(n-1)-2)` -/
def P11014027323871440288.Spec : Prop :=
  ∀ n, P11014027323871440288.a n = A122958 n

end A122958

/-! ## A122958.P4180219146968187110

`ceil(a(n-1)-(2-a(n-1)))` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A122958.P4180219146968187110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (2 - a (n - 1))

end

end A122958.P4180219146968187110

namespace A122958

/-- `ceil(a(n-1)-(2-a(n-1)))` -/
def P4180219146968187110.Spec : Prop :=
  ∀ n, P4180219146968187110.a n = A122958 n

end A122958

/-!
# A122959: a(0) = 1, a(n) = (-1)^n*(2-2^(n-1)) for n>0.

The programs for A122959, the canonical program `A122959.P10239028203702405483` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122959 has offset 0).

The definition of A122959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122959.P10239028203702405483

`ogf((1+2x-x^2)/(1+3x+2x^2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122959

/-- `ogf((1+2x-x^2)/(1+3x+2x^2))` -/
def P10239028203702405483.Spec : Prop :=
  ∀ n, P10239028203702405483.a n = A122959 n

theorem P10239028203702405483.correct : P10239028203702405483.Spec := by
  intro n
  simp only [A122959]

end A122959

/-! ## A122959.P13814337055063546123

`2*((-1)^(n+1)-a(n-1))` with `a(0)=1, a(1)=-1`
-/

namespace A122959.P13814337055063546123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  2 * ((-1) ^ (n + 1) - a (n - 1))

end

end A122959.P13814337055063546123

namespace A122959

/-- `2*((-1)^(n+1)-a(n-1))` -/
def P13814337055063546123.Spec : Prop :=
  ∀ n, P13814337055063546123.a n = A122959 n

end A122959

/-! ## A122959.P6777707632827989106

`(2^(n-1)-2)*a(gcd(2, n)-1)` with `a(0)=1`
-/

namespace A122959.P6777707632827989106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 2) * a (Nat.gcd 2 n - 1)

end

end A122959.P6777707632827989106

namespace A122959

/-- `(2^(n-1)-2)*a(gcd(2, n)-1)` -/
def P6777707632827989106.Spec : Prop :=
  ∀ n, P6777707632827989106.a n = (A122959 n : ℚ)

end A122959

/-! ## A122959.P17577049579946469763

`a(n-2)-3*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A122959.P17577049579946469763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  a (n - 2) - 3 * (a (n - 1) + a (n - 2))

end

end A122959.P17577049579946469763

namespace A122959

/-- `a(n-2)-3*(a(n-1)+a(n-2))` -/
def P17577049579946469763.Spec : Prop :=
  ∀ n, P17577049579946469763.a n = A122959 n

end A122959

/-! ## A122959.P9317323713550776568

`Δ[A167193(abs(1-n))]`
-/

namespace A122959.P9317323713550776568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167193 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122959.P9317323713550776568

namespace A122959

/-- `Δ[A167193(abs(1-n))]` -/
def P9317323713550776568.Spec : Prop :=
  ∀ n, P9317323713550776568.a n = A122959 n

end A122959

/-! ## A122959.P4942939115296388553

`(-1)^n*A122958(n)`
-/

namespace A122959.P4942939115296388553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A122958 n

end

end A122959.P4942939115296388553

namespace A122959

/-- `(-1)^n*A122958(n)` -/
def P4942939115296388553.Spec : Prop :=
  ∀ n, P4942939115296388553.a n = A122959 n

end A122959

/-! ## A122959.P4846590261649282203

`A122958(n)/A033999(n)`
-/

namespace A122959.P4846590261649282203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122958 n : ℚ) / (A033999 n : ℚ)

end

end A122959.P4846590261649282203

namespace A122959

/-- `A122958(n)/A033999(n)` -/
def P4846590261649282203.Spec : Prop :=
  ∀ n, P4846590261649282203.a n = (A122959 n : ℚ)

end A122959

/-! ## A122959.P14282946420894824433

`(2-A011782(n))*A033999(n)`
-/

namespace A122959.P14282946420894824433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A011782 n) * A033999 n

end

end A122959.P14282946420894824433

namespace A122959

/-- `(2-A011782(n))*A033999(n)` -/
def P14282946420894824433.Spec : Prop :=
  ∀ n, P14282946420894824433.a n = A122959 n

end A122959

/-! ## A122959.P4577263309687756727

`(2-A011782(n))*ratio[A057077(n)]`
-/

namespace A122959.P4577263309687756727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - A011782 n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A122959.P4577263309687756727

namespace A122959

/-- `(2-A011782(n))*ratio[A057077(n)]` -/
def P4577263309687756727.Spec : Prop :=
  ∀ n, P4577263309687756727.a n = (A122959 n : ℚ)

end A122959

/-! ## A122959.P5911907605673273043

`(2-A011782(n))*A034947(A005408(n))`
-/

namespace A122959.P5911907605673273043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A011782 n) * A034947 (A005408 n).toNat

end

end A122959.P5911907605673273043

namespace A122959

/-- `(2-A011782(n))*A034947(A005408(n))` -/
def P5911907605673273043.Spec : Prop :=
  ∀ n, P5911907605673273043.a n = A122959 n

end A122959

/-! ## A122959.P516074544714005469

`(2-A011782(n))*A057077(A004277(n))`
-/

namespace A122959.P516074544714005469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A011782 n) * A057077 (A004277 n).toNat

end

end A122959.P516074544714005469

namespace A122959

/-- `(2-A011782(n))*A057077(A004277(n))` -/
def P516074544714005469.Spec : Prop :=
  ∀ n, P516074544714005469.a n = A122959 n

end A122959

/-! ## A122959.P6080145889461453324

`A248155(n)+A225883(n)`
-/

namespace A122959.P6080145889461453324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248155 n + A225883 n

end

end A122959.P6080145889461453324

namespace A122959

/-- `A248155(n)+A225883(n)` -/
def P6080145889461453324.Spec : Prop :=
  ∀ n, P6080145889461453324.a n = A122959 n

end A122959

/-! ## A122959.P10229330771457645407

`A084214(n)-A094359(n)-A094359(n)`
-/

namespace A122959.P10229330771457645407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 n - A094359 n - A094359 n

end

end A122959.P10229330771457645407

namespace A122959

/-- `A084214(n)-A094359(n)-A094359(n)` -/
def P10229330771457645407.Spec : Prop :=
  ∀ n, P10229330771457645407.a n = A122959 n

end A122959

/-! ## A122959.P8027659843922489492

`A280560(n)-A155559(n)/A280560(n)`
-/

namespace A122959.P8027659843922489492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280560 n : ℚ) - (A155559 n : ℚ) / (A280560 n : ℚ)

end

end A122959.P8027659843922489492

namespace A122959

/-- `A280560(n)-A155559(n)/A280560(n)` -/
def P8027659843922489492.Spec : Prop :=
  ∀ n, P8027659843922489492.a n = (A122959 n : ℚ)

end A122959

/-! ## A122959.P7461952656712424780

`A269019(n)-A283507(n)`
-/

namespace A122959.P7461952656712424780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269019 n - A283507 n

end

end A122959.P7461952656712424780

namespace A122959

/-- `A269019(n)-A283507(n)` -/
def P7461952656712424780.Spec : Prop :=
  ∀ n, P7461952656712424780.a n = A122959 n

end A122959

/-! ## A122959.P11298636912691888870

`A084214(n)-2*A094359(n)`
-/

namespace A122959.P11298636912691888870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 n - 2 * A094359 n

end

end A122959.P11298636912691888870

namespace A122959

/-- `A084214(n)-2*A094359(n)` -/
def P11298636912691888870.Spec : Prop :=
  ∀ n, P11298636912691888870.a n = A122959 n

end A122959

/-! ## A122959.P1528474396733787734

`A000079(n+1)/A117575(2*n+1)-A117575(2*n)`
-/

namespace A122959.P1528474396733787734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) : ℚ) / (A117575 (2 * n + 1) : ℚ) - (A117575 (2 * n) : ℚ)

end

end A122959.P1528474396733787734

namespace A122959

/-- `A000079(n+1)/A117575(2*n+1)-A117575(2*n)` -/
def P1528474396733787734.Spec : Prop :=
  ∀ n, P1528474396733787734.a n = (A122959 n : ℚ)

end A122959

/-!
# A122960: Triangle T(n,k), 0 <= k <= n, read by rows given by [0, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, ...] DELTA [1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

The programs for A122960, the canonical program `A122960.P1556329167515398814` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122960 has offset 0).

The definition of A122960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122960.P1556329167515398814

`A202023(A209293(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A122960

/-- `A202023(A209293(n+1))` -/
def P1556329167515398814.Spec : Prop :=
  ∀ n, P1556329167515398814.a n = A122960 n

theorem P1556329167515398814.correct : P1556329167515398814.Spec := by
  intro n
  simp only [A122960]

end A122960

/-! ## A122960.P8563994962425228839

`A119467(A316669(n+1)-1)`
-/

namespace A122960.P8563994962425228839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 (A316669 (n + 1) - 1).toNat

end

end A122960.P8563994962425228839

namespace A122960

/-- `A119467(A316669(n+1)-1)` -/
def P8563994962425228839.Spec : Prop :=
  ∀ n, P8563994962425228839.a n = A122960 n

end A122960

/-! ## A122960.P2999779169352264375

`A119467(A158821(n)-1+n)`
-/

namespace A122960.P2999779169352264375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 (A158821 n - 1 + (n : ℤ)).toNat

end

end A122960.P2999779169352264375

namespace A122960

/-- `A119467(A158821(n)-1+n)` -/
def P2999779169352264375.Spec : Prop :=
  ∀ n, P2999779169352264375.a n = A122960 n

end A122960

/-! ## A122960.P14864794469639933920

`A119467(n-(1-A158821(n)))`
-/

namespace A122960.P14864794469639933920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 ((n : ℤ) - (1 - A158821 n)).toNat

end

end A122960.P14864794469639933920

namespace A122960

/-- `A119467(n-(1-A158821(n)))` -/
def P14864794469639933920.Spec : Prop :=
  ∀ n, P14864794469639933920.a n = A122960 n

end A122960

/-! ## A122960.P812606058489172961

`A119467(A023443(A158821(n)+n))`
-/

namespace A122960.P812606058489172961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 (A023443 (A158821 n + (n : ℤ)).toNat).toNat

end

end A122960.P812606058489172961

namespace A122960

/-- `A119467(A023443(A158821(n)+n))` -/
def P812606058489172961.Spec : Prop :=
  ∀ n, P812606058489172961.a n = A122960 n

end A122960

/-! ## A122960.P18435137647880002034

`A133567(A038722(n+1))-A198321(n+1)`
-/

namespace A122960.P18435137647880002034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133567 (A038722 (n + 1)).toNat - A198321 (n + 1)

end

end A122960.P18435137647880002034

namespace A122960

/-- `A133567(A038722(n+1))-A198321(n+1)` -/
def P18435137647880002034.Spec : Prop :=
  ∀ n, P18435137647880002034.a n = A122960 n

end A122960

/-! ## A122960.P18067407553959405422

`A119467(A316964(n))`
-/

namespace A122960.P18067407553959405422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119467 (A316964 n).toNat

end

end A122960.P18067407553959405422

namespace A122960

/-- `A119467(A316964(n))` -/
def P18067407553959405422.Spec : Prop :=
  ∀ n, P18067407553959405422.a n = A122960 n

end A122960

/-!
# A122963: Triangular numbers with semiprime indices.

The programs for A122963, the canonical program `A122963.P7876350588843979509` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122963 has offset 1).

The definition of A122963 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122963.P7876350588843979509

`A000217(A001358(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A122963

/-- `A000217(A001358(n+1))` -/
def P7876350588843979509.Spec : Prop :=
  ∀ n, P7876350588843979509.a n = A122963 (n + 1)

theorem P7876350588843979509.correct : P7876350588843979509.Spec := by
  intro n
  simp only [A122963, Nat.add_sub_cancel]

end A122963

/-! ## A122963.P13856615482372756201

`C(A088707(n+1), 2)`
-/

namespace A122963.P13856615482372756201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A088707 (n + 1)).toNat 2

end

end A122963.P13856615482372756201

namespace A122963

/-- `C(A088707(n+1), 2)` -/
def P13856615482372756201.Spec : Prop :=
  ∀ n, (P13856615482372756201.a n : ℤ) = A122963 (n + 1)

end A122963

/-! ## A122963.P5605961697838330779

`C(A001358(n+1)+1, 2)`
-/

namespace A122963.P5605961697838330779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001358 (n + 1) + 1).toNat 2

end

end A122963.P5605961697838330779

namespace A122963

/-- `C(A001358(n+1)+1, 2)` -/
def P5605961697838330779.Spec : Prop :=
  ∀ n, (P5605961697838330779.a n : ℤ) = A122963 (n + 1)

end A122963

/-! ## A122963.P10272154623427069823

`C(A186621(1+n)+2, 2)`
-/

namespace A122963.P10272154623427069823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A186621 (1 + n) + 2).toNat 2

end

end A122963.P10272154623427069823

namespace A122963

/-- `C(A186621(1+n)+2, 2)` -/
def P10272154623427069823.Spec : Prop :=
  ∀ n, (P10272154623427069823.a n : ℤ) = A122963 (n + 1)

end A122963

/-! ## A122963.P14251432822757758794

`C(A100493(n+1)-n, 2)`
-/

namespace A122963.P14251432822757758794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A100493 (n + 1) - (n : ℤ)).toNat 2

end

end A122963.P14251432822757758794

namespace A122963

/-- `C(A100493(n+1)-n, 2)` -/
def P14251432822757758794.Spec : Prop :=
  ∀ n, (P14251432822757758794.a n : ℤ) = A122963 (n + 1)

end A122963

/-! ## A122963.P689357871048179195

`A001358(n+1)/2*A088707(n+1)`
-/

namespace A122963.P689357871048179195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001358 (n + 1) : ℚ) / 2 * (A088707 (n + 1) : ℚ)

end

end A122963.P689357871048179195

namespace A122963

/-- `A001358(n+1)/2*A088707(n+1)` -/
def P689357871048179195.Spec : Prop :=
  ∀ n, P689357871048179195.a n = (A122963 (n + 1) : ℚ)

end A122963

/-! ## A122963.P6988115666383228228

`A000217(A176540(n+2))`
-/

namespace A122963.P6988115666383228228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A176540 (n + 2)).toNat

end

end A122963.P6988115666383228228

namespace A122963

/-- `A000217(A176540(n+2))` -/
def P6988115666383228228.Spec : Prop :=
  ∀ n, P6988115666383228228.a n = A122963 (n + 1)

end A122963

/-! ## A122963.P24724188118258957

`A000217(A088707(n+1)-1)`
-/

namespace A122963.P24724188118258957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A088707 (n + 1) - 1).toNat

end

end A122963.P24724188118258957

namespace A122963

/-- `A000217(A088707(n+1)-1)` -/
def P24724188118258957.Spec : Prop :=
  ∀ n, P24724188118258957.a n = A122963 (n + 1)

end A122963

/-! ## A122963.P9215571178688578715

`C(eq[2, ∑{e}[n, #]]+1, 2)`
-/

namespace A122963.P9215571178688578715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) 2

end

end A122963.P9215571178688578715

namespace A122963

/-- `C(eq[2, ∑{e}[n, #]]+1, 2)` -/
def P9215571178688578715.Spec : Prop :=
  ∀ n, (P9215571178688578715.a n : ℤ) = A122963 (n + 1)

end A122963

/-! ## A122963.P13380816507287251482

`A161680(A088707(n+1))`
-/

namespace A122963.P13380816507287251482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A088707 (n + 1)).toNat

end

end A122963.P13380816507287251482

namespace A122963

/-- `A161680(A088707(n+1))` -/
def P13380816507287251482.Spec : Prop :=
  ∀ n, P13380816507287251482.a n = A122963 (n + 1)

end A122963

/-! ## A122963.P16436333410324436829

`A253145(A186621(n+1))`
-/

namespace A122963.P16436333410324436829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A186621 (n + 1)).toNat

end

end A122963.P16436333410324436829

namespace A122963

/-- `A253145(A186621(n+1))` -/
def P16436333410324436829.Spec : Prop :=
  ∀ n, P16436333410324436829.a n = A122963 (n + 1)

end A122963

/-! ## A122963.P8806282189300569850

`A161680(A001358(n+1)+1)`
-/

namespace A122963.P8806282189300569850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A001358 (n + 1) + 1).toNat

end

end A122963.P8806282189300569850

namespace A122963

/-- `A161680(A001358(n+1)+1)` -/
def P8806282189300569850.Spec : Prop :=
  ∀ n, P8806282189300569850.a n = A122963 (n + 1)

end A122963

/-! ## A122963.P13018465174182361399

`A100542(A001358(2*n+1-n))`
-/

namespace A122963.P13018465174182361399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100542 (A001358 (2 * n + 1 - n)).toNat

end

end A122963.P13018465174182361399

namespace A122963

/-- `A100542(A001358(2*n+1-n))` -/
def P13018465174182361399.Spec : Prop :=
  ∀ n, P13018465174182361399.a n = A122963 (n + 1)

end A122963

/-! ## A122963.P16091609004105359042

`A075303(A075818(n+1))`
-/

namespace A122963.P16091609004105359042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075303 (A075818 (n + 1)).toNat

end

end A122963.P16091609004105359042

namespace A122963

/-- `A075303(A075818(n+1))` -/
def P16091609004105359042.Spec : Prop :=
  ∀ n, P16091609004105359042.a n = A122963 (n + 1)

end A122963

/-! ## A122963.P15029518341709264010

`∑{#}[A001358(n+1), #]`
-/

namespace A122963.P15029518341709264010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, k

end

end A122963.P15029518341709264010

namespace A122963

/-- `∑{#}[A001358(n+1), #]` -/
def P15029518341709264010.Spec : Prop :=
  ∀ n, (P15029518341709264010.a n : ℤ) = A122963 (n + 1)

end A122963

/-! ## A122963.P16960725721450141252

`∑{#}[lt[1, A105700(n)], #]`
-/

namespace A122963.P16960725721450141252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), k

end

end A122963.P16960725721450141252

namespace A122963

/-- `∑{#}[lt[1, A105700(n)], #]` -/
def P16960725721450141252.Spec : Prop :=
  ∀ n, (P16960725721450141252.a n : ℤ) = A122963 (n + 1)

end A122963

/-! ## A122963.P1948925917339746142

`∑{#}[sqrt(A074985(n+1)), #]`
-/

namespace A122963.P1948925917339746142
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (SequenceMachineLib.roundAway (f1 n) + 1).toNat, k

end

end A122963.P1948925917339746142

namespace A122963

/-- `∑{#}[sqrt(A074985(n+1)), #]` -/
def P1948925917339746142.Spec : Prop :=
  ∀ n, (P1948925917339746142.a n : ℤ) = A122963 (n + 1)

end A122963

/-!
# A122964: Semiprimes with triangular indices.

The programs for A122964, the canonical program `A122964.P799509311134070434` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122964 has offset 1).

The definition of A122964 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122964.P799509311134070434

`A001358((n+1)*(n+2)/2)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A122964

/-- `A001358((n+1)*(n+2)/2)` -/
def P799509311134070434.Spec : Prop :=
  ∀ n, P799509311134070434.a n = A122964 (n + 1)

theorem P799509311134070434.correct : P799509311134070434.Spec := by
  intro n
  simp only [A122964, Nat.add_sub_cancel]

end A122964

/-! ## A122964.P10412700303667604800

`A001358(C(2+n, 2))`
-/

namespace A122964.P10412700303667604800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (Nat.choose (2 + n) 2)

end

end A122964.P10412700303667604800

namespace A122964

/-- `A001358(C(2+n, 2))` -/
def P10412700303667604800.Spec : Prop :=
  ∀ n, P10412700303667604800.a n = A122964 (n + 1)

end A122964

/-! ## A122964.P15134183187670253932

`A001358(∑[abs(xor(n, -1))])`
-/

namespace A122964.P15134183187670253932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122964.P15134183187670253932

namespace A122964

/-- `A001358(∑[abs(xor(n, -1))])` -/
def P15134183187670253932.Spec : Prop :=
  ∀ n, P15134183187670253932.a n = A122964 (n + 1)

end A122964

/-! ## A122964.P4839173583069118137

`A001358(abs(xor(∑[n], -1))+n)`
-/

namespace A122964.P4839173583069118137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (|Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-1)| + (n : ℤ)).toNat

end

end A122964.P4839173583069118137

namespace A122964

/-- `A001358(abs(xor(∑[n], -1))+n)` -/
def P4839173583069118137.Spec : Prop :=
  ∀ n, P4839173583069118137.a n = A122964 (n + 1)

end A122964

/-! ## A122964.P4651456943051181338

`A001358(∑[1+a(n-1)])` with `a(0)=1`
-/

namespace A122964.P4651456943051181338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  1 + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122964.P4651456943051181338

namespace A122964

/-- `A001358(∑[1+a(n-1)])` -/
def P4651456943051181338.Spec : Prop :=
  ∀ n, P4651456943051181338.a n = A122964 (n + 1)

end A122964

/-! ## A122964.P303695792903361065

`A001358(∑[(n+1)%(n+3)])`
-/

namespace A122964.P303695792903361065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122964.P303695792903361065

namespace A122964

/-- `A001358(∑[(n+1)%(n+3)])` -/
def P303695792903361065.Spec : Prop :=
  ∀ n, P303695792903361065.a n = A122964 (n + 1)

end A122964

/-! ## A122964.P17663770177037724694

`A001358(∑[and(n+1, n+1)])`
-/

namespace A122964.P17663770177037724694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122964.P17663770177037724694

namespace A122964

/-- `A001358(∑[and(n+1, n+1)])` -/
def P17663770177037724694.Spec : Prop :=
  ∀ n, P17663770177037724694.a n = A122964 (n + 1)

end A122964

/-! ## A122964.P11902233878441938236

`A001358(∑[gcd(n, n)]+n+1)`
-/

namespace A122964.P11902233878441938236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))

end

end A122964.P11902233878441938236

namespace A122964

/-- `A001358(∑[gcd(n, n)]+n+1)` -/
def P11902233878441938236.Spec : Prop :=
  ∀ n, P11902233878441938236.a n = A122964 (n + 1)

end A122964

/-! ## A122964.P7638123165705399036

`A001358(∑[lcm(n, n)]+n+1)`
-/

namespace A122964.P7638123165705399036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))

end

end A122964.P7638123165705399036

namespace A122964

/-- `A001358(∑[lcm(n, n)]+n+1)` -/
def P7638123165705399036.Spec : Prop :=
  ∀ n, P7638123165705399036.a n = A122964 (n + 1)

end A122964

/-! ## A122964.P4581533253852031048

`record[A001358(A260220(n))]`
-/

namespace A122964.P4581533253852031048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A260220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122964.P4581533253852031048

namespace A122964

/-- `record[A001358(A260220(n))]` -/
def P4581533253852031048.Spec : Prop :=
  ∀ n, P4581533253852031048.a n = A122964 (n + 1)

end A122964

/-! ## A122964.P5131374446389097371

`record[A001358(A257506(n+1))]`
-/

namespace A122964.P5131374446389097371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A257506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122964.P5131374446389097371

namespace A122964

/-- `record[A001358(A257506(n+1))]` -/
def P5131374446389097371.Spec : Prop :=
  ∀ n, P5131374446389097371.a n = A122964 (n + 1)

end A122964

/-! ## A122964.P12550855492321405157

`record[A001358(A278504(n+1))]`
-/

namespace A122964.P12550855492321405157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A278504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122964.P12550855492321405157

namespace A122964

/-- `record[A001358(A278504(n+1))]` -/
def P12550855492321405157.Spec : Prop :=
  ∀ n, P12550855492321405157.a n = A122964 (n + 1)

end A122964

/-! ## A122964.P14132349359396219524

`and(-1, A001358(A000217(n+1)))`
-/

namespace A122964.P14132349359396219524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A001358 (A000217 (n + 1)).toNat)

end

end A122964.P14132349359396219524

namespace A122964

/-- `and(-1, A001358(A000217(n+1)))` -/
def P14132349359396219524.Spec : Prop :=
  ∀ n, P14132349359396219524.a n = A122964 (n + 1)

end A122964

/-! ## A122964.P18056604618071519706

`lcm((-1)^n, A001358(Δ[A000292(n)]))`
-/

namespace A122964.P18056604618071519706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A001358 (f1 (n + 1) - f1 n).toNat)

end

end A122964.P18056604618071519706

namespace A122964

/-- `lcm((-1)^n, A001358(Δ[A000292(n)]))` -/
def P18056604618071519706.Spec : Prop :=
  ∀ n, (P18056604618071519706.a n : ℤ) = A122964 (n + 1)

end A122964

/-! ## A122964.P16838972675581121202

`record[A001358(A055802(n^(n%2)+1))]`
-/

namespace A122964.P16838972675581121202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A055802 (n ^ (n % 2) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122964.P16838972675581121202

namespace A122964

/-- `record[A001358(A055802(n^(n%2)+1))]` -/
def P16838972675581121202.Spec : Prop :=
  ∀ n, P16838972675581121202.a n = A122964 (n + 1)

end A122964

/-! ## A122964.P2552134419542214255

`-xor(A001358(A000096(n)+1)-1, -1)`
-/

namespace A122964.P2552134419542214255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (A001358 (A000096 n + 1).toNat - 1) (-1)

end

end A122964.P2552134419542214255

namespace A122964

/-- `-xor(A001358(A000096(n)+1)-1, -1)` -/
def P2552134419542214255.Spec : Prop :=
  ∀ n, P2552134419542214255.a n = A122964 (n + 1)

end A122964

/-! ## A122964.P4117110063176689080

`record[A001358(A000217(A286551(n)))]`
-/

namespace A122964.P4117110063176689080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A000217 (A286551 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122964.P4117110063176689080

namespace A122964

/-- `record[A001358(A000217(A286551(n)))]` -/
def P4117110063176689080.Spec : Prop :=
  ∀ n, P4117110063176689080.a n = A122964 (n + 1)

end A122964

/-! ## A122964.P14709267755334236197

`A001358(A000217(n+1))%A156813(n+1)`
-/

namespace A122964.P14709267755334236197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001358 (A000217 (n + 1)).toNat) (A156813 (n + 1))

end

end A122964.P14709267755334236197

namespace A122964

/-- `A001358(A000217(n+1))%A156813(n+1)` -/
def P14709267755334236197.Spec : Prop :=
  ∀ n, P14709267755334236197.a n = A122964 (n + 1)

end A122964

/-! ## A122964.P15203760265452098847

`record[A001358(A038722(n+1))]`
-/

namespace A122964.P15203760265452098847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122964.P15203760265452098847

namespace A122964

/-- `record[A001358(A038722(n+1))]` -/
def P15203760265452098847.Spec : Prop :=
  ∀ n, P15203760265452098847.a n = A122964 (n + 1)

end A122964

/-! ## A122964.P15416131720564460664

`sqrt(A074985(∑[n+1]))`
-/

namespace A122964.P15416131720564460664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A122964.P15416131720564460664

namespace A122964

/-- `sqrt(A074985(∑[n+1]))` -/
def P15416131720564460664.Spec : Prop :=
  ∀ n, P15416131720564460664.a n = (A122964 (n + 1) : ℝ)

end A122964

/-!
# A122965: a(0)=0, a(1)=1; at n>1 a(n) = a(n-1) + (sum of numbers<n among a(0),a(1),..,a(n-1) which are coprime to n).

The programs for A122965, there is no canonical definition to state claims against.
-/

/-! ## A122965.P9300970270721542164

`eq[A003641(n+1), A067924(n+1)]`
-/

namespace A122965.P9300970270721542164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067924 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122965.P9300970270721542164

/-! ## A122965.P4479228884926464904

`eq[∑{e}[n+1, #], A085021(A235799(n+1)+1)]`
-/

namespace A122965.P4479228884926464904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085021 (A235799 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A122965.P4479228884926464904

/-! ## A122965.P6746277123983913608

`A091996(n+1)-A318559(A173270(n))`
-/

namespace A122965.P6746277123983913608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091996 (n + 1) - A318559 (A173270 n).toNat

end

end A122965.P6746277123983913608

/-! ## A122965.P43672038424155230

`A181821(n+1)-A083040(A343668(n))`
-/

namespace A122965.P43672038424155230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1) - A083040 (A343668 n).toNat

end

end A122965.P43672038424155230

/-! ## A122965.P11994237244021058820

`A056556(A006190(n)*A034444(n+3))`
-/

namespace A122965.P11994237244021058820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A006190 n * A034444 (n + 3)).toNat

end

end A122965.P11994237244021058820

/-!
# A122968: 27th powers: a(n) = n^27.

The programs for A122968, the canonical program `A122968.P1080899051256054066` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122968 has offset 0).

The definition of A122968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5055 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122968.P1080899051256054066

`n^27`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122968

/-- `n^27` -/
def P1080899051256054066.Spec : Prop :=
  ∀ n, (P1080899051256054066.a n : ℤ) = A122968 n

theorem P1080899051256054066.correct : P1080899051256054066.Spec := by
  intro n
  simp only [A122968]

end A122968

/-!
# A122969: 28th powers: a(n) = n^28.

The programs for A122969, the canonical program `A122969.P3238754592113231616` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122969 has offset 0).

The definition of A122969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3728 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122969.P3238754592113231616

`n^28`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122969

/-- `n^28` -/
def P3238754592113231616.Spec : Prop :=
  ∀ n, (P3238754592113231616.a n : ℤ) = A122969 n

theorem P3238754592113231616.correct : P3238754592113231616.Spec := by
  intro n
  simp only [A122969]

end A122969

/-!
# A122970: 29th powers: a(n) = n^29.

The programs for A122970, the canonical program `A122970.P12936910295847487467` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122970 has offset 0).

The definition of A122970 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2808 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122970.P12936910295847487467

`n^29`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122970

/-- `n^29` -/
def P12936910295847487467.Spec : Prop :=
  ∀ n, (P12936910295847487467.a n : ℤ) = A122970 n

theorem P12936910295847487467.correct : P12936910295847487467.Spec := by
  intro n
  simp only [A122970]

end A122970

/-!
# A122971: 30th powers: a(n) = n^30.

The programs for A122971, the canonical program `A122971.P1176914498025228369` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122971 has offset 0).

The definition of A122971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122971.P1176914498025228369

`n^30`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122971

/-- `n^30` -/
def P1176914498025228369.Spec : Prop :=
  ∀ n, (P1176914498025228369.a n : ℤ) = A122971 n

theorem P1176914498025228369.correct : P1176914498025228369.Spec := by
  intro n
  simp only [A122971]

end A122971

/-!
# A122972: a(1) = 1, a(2) = 2; for n>2, a(n+1) = a(n)*(n-1) + a(n-1)*n.

The programs for A122972, the canonical program `A122972.P6467779270363481591` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122972 has offset 1).

The definition of A122972 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122972.P6467779270363481591

`a(n-1)*(n-1)+a(n-2)*n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122972

/-- `a(n-1)*(n-1)+a(n-2)*n` -/
def P6467779270363481591.Spec : Prop :=
  ∀ n, P6467779270363481591.a n = A122972 (n + 1)

theorem P6467779270363481591.correct : P6467779270363481591.Spec := by
  intro n
  simp only [A122972, Nat.add_sub_cancel]

end A122972

/-! ## A122972.P17258595640200417133

`3*n!-a(n-1)` with `a(0)=1`
-/

namespace A122972.P17258595640200417133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 * Nat.factorial n : ℤ) - a (n - 1)

end

end A122972.P17258595640200417133

namespace A122972

/-- `3*n!-a(n-1)` -/
def P17258595640200417133.Spec : Prop :=
  ∀ n, P17258595640200417133.a n = A122972 (n + 1)

end A122972

/-! ## A122972.P3202894529031438474

`∏[n/a(n-1)+n-1]` with `a(0)=1, a(1)=2`
-/

namespace A122972.P3202894529031438474
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n : ℚ) / f1 (n - 1) + ((n : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122972.P3202894529031438474

namespace A122972

/-- `∏[n/a(n-1)+n-1]` -/
def P3202894529031438474.Spec : Prop :=
  ∀ n, P3202894529031438474.a n = (A122972 (n + 1) : ℚ)

end A122972

/-! ## A122972.P5869350771340305435

`(n-1)*a(n-1)+n*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A122972.P5869350771340305435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n : ℤ) - 1) * a (n - 1) + (n : ℤ) * a (n - 2)

end

end A122972.P5869350771340305435

namespace A122972

/-- `(n-1)*a(n-1)+n*a(n-2)` -/
def P5869350771340305435.Spec : Prop :=
  ∀ n, P5869350771340305435.a n = A122972 (n + 1)

end A122972

/-! ## A122972.P2164841820884852885

`n*a(n-1)-(a(n-1)-n*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A122972.P2164841820884852885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) * a (n - 1) - (a (n - 1) - (n : ℤ) * a (n - 2))

end

end A122972.P2164841820884852885

namespace A122972

/-- `n*a(n-1)-(a(n-1)-n*a(n-2))` -/
def P2164841820884852885.Spec : Prop :=
  ∀ n, P2164841820884852885.a n = A122972 (n + 1)

end A122972

/-! ## A122972.P3382474381970011056

`A052560(n)-a(n-1)` with `a(0)=1`
-/

namespace A122972.P3382474381970011056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052560 n - a (n - 1)

end

end A122972.P3382474381970011056

namespace A122972

/-- `A052560(n)-a(n-1)` -/
def P3382474381970011056.Spec : Prop :=
  ∀ n, P3382474381970011056.a n = A122972 (n + 1)

end A122972

/-! ## A122972.P9778919284812978962

`3*A000142(n)-a(n-1)` with `a(0)=1`
-/

namespace A122972.P9778919284812978962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A000142 n - a (n - 1)

end

end A122972.P9778919284812978962

namespace A122972

/-- `3*A000142(n)-a(n-1)` -/
def P9778919284812978962.Spec : Prop :=
  ∀ n, P9778919284812978962.a n = A122972 (n + 1)

end A122972

/-! ## A122972.P7334637554766934009

`A033999(n)+3*A005165(n)`
-/

namespace A122972.P7334637554766934009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 3 * A005165 n

end

end A122972.P7334637554766934009

namespace A122972

/-- `A033999(n)+3*A005165(n)` -/
def P7334637554766934009.Spec : Prop :=
  ∀ n, P7334637554766934009.a n = A122972 (n + 1)

end A122972

/-! ## A122972.P14569962909537173247

`A153229(n+1)+2*A005165(n)`
-/

namespace A122972.P14569962909537173247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153229 (n + 1) + 2 * A005165 n

end

end A122972.P14569962909537173247

namespace A122972

/-- `A153229(n+1)+2*A005165(n)` -/
def P14569962909537173247.Spec : Prop :=
  ∀ n, P14569962909537173247.a n = A122972 (n + 1)

end A122972

/-! ## A122972.P5881701390026784884

`A137267(∑[n+3]+1)-a(n-1)` with `a(0)=1`
-/

namespace A122972.P5881701390026784884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A137267 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - a (n - 1)

end

end A122972.P5881701390026784884

namespace A122972

/-- `A137267(∑[n+3]+1)-a(n-1)` -/
def P5881701390026784884.Spec : Prop :=
  ∀ n, P5881701390026784884.a n = A122972 (n + 1)

end A122972

/-!
# A122973: Number of vertices on the surface of an icosahedron.

The programs for A122973, the canonical program `A122973.P8884996453562385531` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122973 has offset 0).

The definition of A122973 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122973.P4703264262238902993

`ogf((1+7x-14x^2)/(1-5x+4x^2))`
-/

namespace A122973.P4703264262238902993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, -14] [1, -5, 4] n

end

end A122973.P4703264262238902993

namespace A122973

/-- `ogf((1+7x-14x^2)/(1-5x+4x^2))` -/
def P4703264262238902993.Spec : Prop :=
  ∀ n, P4703264262238902993.a n = A122973 n

end A122973

/-! ## A122973.P8884996453562385531

`5*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=12, a(2)=42`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122973

/-- `5*a(n-1)-4*a(n-2)` -/
def P8884996453562385531.Spec : Prop :=
  ∀ n, P8884996453562385531.a n = A122973 n

theorem P8884996453562385531.correct : P8884996453562385531.Spec := by
  intro n
  simp only [A122973]

end A122973

/-! ## A122973.P12249707346108145294

`4*a(n-1)-6` with `a(0)=1, a(1)=12`
-/

namespace A122973.P12249707346108145294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  4 * a (n - 1) - 6

end

end A122973.P12249707346108145294

namespace A122973

/-- `4*a(n-1)-6` -/
def P12249707346108145294.Spec : Prop :=
  ∀ n, P12249707346108145294.a n = A122973 n

end A122973

/-! ## A122973.P13596074184884948817

`record[6-(a(n-2)+a(n-2))]` with `a(0)=1, a(1)=12`
-/

namespace A122973.P13596074184884948817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  6 - (f1 (n - 2) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122973.P13596074184884948817

namespace A122973

/-- `record[6-(a(n-2)+a(n-2))]` -/
def P13596074184884948817.Spec : Prop :=
  ∀ n, P13596074184884948817.a n = A122973 n

end A122973

/-! ## A122973.P773389140209048799

`record[6-a(n-2)-a(n-2)]` with `a(0)=1, a(1)=12`
-/

namespace A122973.P773389140209048799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  6 - f1 (n - 2) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122973.P773389140209048799

namespace A122973

/-- `record[6-a(n-2)-a(n-2)]` -/
def P773389140209048799.Spec : Prop :=
  ∀ n, P773389140209048799.a n = A122973 n

end A122973

/-! ## A122973.P18224070139353239760

`lcm(3, a(n-1)+lcm(3, 2-a(n-1)))` with `a(0)=1`
-/

namespace A122973.P18224070139353239760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 3 (a (n - 1) + Int.lcm 3 (2 - (a (n - 1) : ℤ)))

end

end A122973.P18224070139353239760

namespace A122973

/-- `lcm(3, a(n-1)+lcm(3, 2-a(n-1)))` -/
def P18224070139353239760.Spec : Prop :=
  ∀ n, (P18224070139353239760.a n : ℤ) = A122973 n

end A122973

/-! ## A122973.P14704957376708118587

`record[Δ[A098646(n)]+2]`
-/

namespace A122973.P14704957376708118587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098646 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122973.P14704957376708118587

namespace A122973

/-- `record[Δ[A098646(n)]+2]` -/
def P14704957376708118587.Spec : Prop :=
  ∀ n, P14704957376708118587.a n = A122973 n

end A122973

/-! ## A122973.P12779251297992880071

`xor(1, A146523(2*n))+1`
-/

namespace A122973.P12779251297992880071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A146523 (2 * n)) + 1

end

end A122973.P12779251297992880071

namespace A122973

/-- `xor(1, A146523(2*n))+1` -/
def P12779251297992880071.Spec : Prop :=
  ∀ n, P12779251297992880071.a n = A122973 n

end A122973

/-! ## A122973.P8184612980769521572

`record[Δ[A308709(2*n+1)]+2]`
-/

namespace A122973.P8184612980769521572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308709 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122973.P8184612980769521572

namespace A122973

/-- `record[Δ[A308709(2*n+1)]+2]` -/
def P8184612980769521572.Spec : Prop :=
  ∀ n, P8184612980769521572.a n = A122973 n

end A122973

/-! ## A122973.P3001607744384193391

`A146523(2*n)+2*A057427(n)`
-/

namespace A122973.P3001607744384193391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146523 (2 * n) + 2 * A057427 n

end

end A122973.P3001607744384193391

namespace A122973

/-- `A146523(2*n)+2*A057427(n)` -/
def P3001607744384193391.Spec : Prop :=
  ∀ n, P3001607744384193391.a n = A122973 n

end A122973

/-! ## A122973.P3521521363200040238

`A146523(2*n)-A049071(2*n)`
-/

namespace A122973.P3521521363200040238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146523 (2 * n) - A049071 (2 * n)

end

end A122973.P3521521363200040238

namespace A122973

/-- `A146523(2*n)-A049071(2*n)` -/
def P3521521363200040238.Spec : Prop :=
  ∀ n, P3521521363200040238.a n = A122973 n

end A122973

/-! ## A122973.P5046903793808678101

`A011782(2*n)+xor(2, 2*A000079(n)²)`
-/

namespace A122973.P5046903793808678101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) + Int.xor 2 (2 * A000079 n ^ 2)

end

end A122973.P5046903793808678101

namespace A122973

/-- `A011782(2*n)+xor(2, 2*A000079(n)²)` -/
def P5046903793808678101.Spec : Prop :=
  ∀ n, P5046903793808678101.a n = A122973 n

end A122973

/-! ## A122973.P10497293377051365816

`lcm(2, A248155(2*n+1))-A123344(2*n)`
-/

namespace A122973.P10497293377051365816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A248155 (2 * n + 1)) : ℤ) - A123344 (2 * n)

end

end A122973.P10497293377051365816

namespace A122973

/-- `lcm(2, A248155(2*n+1))-A123344(2*n)` -/
def P10497293377051365816.Spec : Prop :=
  ∀ n, P10497293377051365816.a n = A122973 n

end A122973

/-! ## A122973.P544961564167416557

`and(1-A055010(2*n), A290829(2*n+1))`
-/

namespace A122973.P544961564167416557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A055010 (2 * n)) (A290829 (2 * n + 1))

end

end A122973.P544961564167416557

namespace A122973

/-- `and(1-A055010(2*n), A290829(2*n+1))` -/
def P544961564167416557.Spec : Prop :=
  ∀ n, P544961564167416557.a n = A122973 n

end A122973

/-! ## A122973.P1638777563816350777

`and(2-A003945(2*n), A006977(2*n+1))`
-/

namespace A122973.P1638777563816350777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - A003945 (2 * n)) (A006977 (2 * n + 1))

end

end A122973.P1638777563816350777

namespace A122973

/-- `and(2-A003945(2*n), A006977(2*n+1))` -/
def P1638777563816350777.Spec : Prop :=
  ∀ n, P1638777563816350777.a n = A122973 n

end A122973

/-! ## A122973.P3319454958547022345

`and(2-A003945(2*n), A109784(2*n+1))`
-/

namespace A122973.P3319454958547022345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - A003945 (2 * n)) (A109784 (2 * n + 1))

end

end A122973.P3319454958547022345

namespace A122973

/-- `and(2-A003945(2*n), A109784(2*n+1))` -/
def P3319454958547022345.Spec : Prop :=
  ∀ n, P3319454958547022345.a n = A122973 n

end A122973

/-! ## A122973.P6103721555855886212

`A083318(2*n)+xor(1, A111286(2*n+1))`
-/

namespace A122973.P6103721555855886212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 (2 * n) + Int.xor 1 (A111286 (2 * n + 1))

end

end A122973.P6103721555855886212

namespace A122973

/-- `A083318(2*n)+xor(1, A111286(2*n+1))` -/
def P6103721555855886212.Spec : Prop :=
  ∀ n, P6103721555855886212.a n = A122973 n

end A122973

/-! ## A122973.P13174864789519388259

`A011782(2*n)+xor(2, A000079(2*n+1))`
-/

namespace A122973.P13174864789519388259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) + Int.xor 2 (A000079 (2 * n + 1))

end

end A122973.P13174864789519388259

namespace A122973

/-- `A011782(2*n)+xor(2, A000079(2*n+1))` -/
def P13174864789519388259.Spec : Prop :=
  ∀ n, P13174864789519388259.a n = A122973 n

end A122973

/-! ## A122973.P12827138722800221547

`A011782(2*n)+xor(2, A155559(2*n+1))`
-/

namespace A122973.P12827138722800221547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) + Int.xor 2 (A155559 (2 * n + 1))

end

end A122973.P12827138722800221547

namespace A122973

/-- `A011782(2*n)+xor(2, A155559(2*n+1))` -/
def P12827138722800221547.Spec : Prop :=
  ∀ n, P12827138722800221547.a n = A122973 n

end A122973

/-! ## A122973.P10410734511046550022

`A094373(n)*A154117(n+1)-A154118(n)`
-/

namespace A122973.P10410734511046550022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n * A154117 (n + 1) - A154118 n

end

end A122973.P10410734511046550022

namespace A122973

/-- `A094373(n)*A154117(n+1)-A154118(n)` -/
def P10410734511046550022.Spec : Prop :=
  ∀ n, P10410734511046550022.a n = A122973 n

end A122973

/-!
# A122974: Triangle T(n,k), the number of permutations on n elements that have no cycles of length k.

The programs for A122974, there is no canonical definition to state claims against.
-/

/-! ## A122974.P14621907914691294530

`(row(n)+1)!-A293211(C(row(n)+1, 2)+col(n)+1)`
-/

namespace A122974.P14621907914691294530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triRow n + 1) : ℤ) - A293211 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1)

end

end A122974.P14621907914691294530

/-! ## A122974.P11434528579077542027

`∑[char[∑[n]]]!-A293211(n+1)`
-/

namespace A122974.P11434528579077542027
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - A293211 (n + 1)

end

end A122974.P11434528579077542027

/-! ## A122974.P14934354096825150561

`A130493(n+1)-A293211(n+1)`
-/

namespace A122974.P14934354096825150561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130493 (n + 1) - A293211 (n + 1)

end

end A122974.P14934354096825150561

/-! ## A122974.P10537717295926143848

`A000142(A002024(n+1))-A293211(n+1)`
-/

namespace A122974.P10537717295926143848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A002024 (n + 1)).toNat - A293211 (n + 1)

end

end A122974.P10537717295926143848

/-! ## A122974.P12669257717926122271

`A000142(A003056(n)+1)-A293211(n+1)`
-/

namespace A122974.P12669257717926122271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A003056 n + 1).toNat - A293211 (n + 1)

end

end A122974.P12669257717926122271

/-! ## A122974.P14874129566338767707

`A028421(A127739(n+1))-A293211(n+1)`
-/

namespace A122974.P14874129566338767707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (A127739 (n + 1)).toNat - A293211 (n + 1)

end

end A122974.P14874129566338767707

/-! ## A122974.P15451313927381377379

`Δ[A200748(n)]-A293211(n+1)`
-/

namespace A122974.P15451313927381377379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A293211 (n + 1)

end

end A122974.P15451313927381377379

/-! ## A122974.P8331229000435631280

`Δ[A051683(n+1)]-A293211(n+1)`
-/

namespace A122974.P8331229000435631280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A293211 (n + 1)

end

end A122974.P8331229000435631280

/-!
# A122975: Numbers containing no successive even ternary digits.

The programs for A122975, there is no canonical definition to state claims against.
-/

/-! ## A122975.P9247764755059776320

`lt[A002262(n), A221337(A070165(n+3))]`
-/

namespace A122975.P9247764755059776320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221337 (A070165 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122975.P9247764755059776320

/-!
# A122977: Number of sublattices of the divisor lattice of divisors of n that include n.

The programs for A122977, there is no canonical definition to state claims against.
-/

/-! ## A122977.P9416200794012167804

`A094500(A347466(n+1))`
-/

namespace A122977.P9416200794012167804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094500 (A347466 (n + 1)).toNat

end

end A122977.P9416200794012167804

/-! ## A122977.P15462965202268556424

`A094500(A001055((n+1)²))`
-/

namespace A122977.P15462965202268556424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094500 (A001055 ((n + 1) ^ 2)).toNat

end

end A122977.P15462965202268556424

/-! ## A122977.P7246780113568410194

`A297246(A114537(3*n+4))+A067824(n+1)`
-/

namespace A122977.P7246780113568410194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (A114537 (3 * n + 4)).toNat + A067824 (n + 1)

end

end A122977.P7246780113568410194

/-! ## A122977.P5675151487921806554

`A326291(eq[2, A344616(n+1)]+1)+A320389(n+1)`
-/

namespace A122977.P5675151487921806554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + A320389 (n + 1)

end

end A122977.P5675151487921806554

/-!
# A122978: Number of sublattices of the division lattice of divisors of n.

The programs for A122978, there is no canonical definition to state claims against.
-/

/-! ## A122978.P11271196923714045313

`∑{d}[n+1, A122977(#)]`
-/

namespace A122978.P11271196923714045313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A122977 d

end

end A122978.P11271196923714045313

/-! ## A122978.P9229319702234315958

`A346126(A328710(n+1))`
-/

namespace A122978.P9229319702234315958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346126 (A328710 (n + 1)).toNat

end

end A122978.P9229319702234315958

/-! ## A122978.P7253198650230853733

`A069192(A046523(n+1))%A270613(3*n+5)`
-/

namespace A122978.P7253198650230853733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069192 (A046523 (n + 1)).toNat) (A270613 (3 * n + 5))

end

end A122978.P7253198650230853733

/-!
# A122979: Number of distributive sublattices of the lattice of k-tuples less than the n-th partition (in Abramowitz and Stegun order), that include the maximum element.

The programs for A122979, there is no canonical definition to state claims against.
-/

/-! ## A122979.P2116077059774044988

`A122977(A036035(n+1))`
-/

namespace A122979.P2116077059774044988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122977 (A036035 (n + 1)).toNat

end

end A122979.P2116077059774044988

/-! ## A122979.P2915432023712784773

`A122977(A059901(n+1))`
-/

namespace A122979.P2915432023712784773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122977 (A059901 (n + 1)).toNat

end

end A122979.P2915432023712784773

/-! ## A122979.P5028688257945548701

`A122977(A063008(n+1))`
-/

namespace A122979.P5028688257945548701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122977 (A063008 (n + 1)).toNat

end

end A122979.P5028688257945548701

/-! ## A122979.P5265284429671691359

`A122977(A087443(n+1))`
-/

namespace A122979.P5265284429671691359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122977 (A087443 (n + 1)).toNat

end

end A122979.P5265284429671691359

/-!
# A122981: Number of distributive sublattices of the lattice of k-tuples less than the n-th partition (in Abramowitz and Stegun order).

The programs for A122981, there is no canonical definition to state claims against.
-/

/-! ## A122981.P10360028580025940680

`A122978(A036035(n+1))`
-/

namespace A122981.P10360028580025940680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122978 (A036035 (n + 1)).toNat

end

end A122981.P10360028580025940680

/-! ## A122981.P6686101982051659576

`A122978(A059901(n+1))`
-/

namespace A122981.P6686101982051659576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122978 (A059901 (n + 1)).toNat

end

end A122981.P6686101982051659576

/-! ## A122981.P13548654140027621315

`A122978(A063008(n+1))`
-/

namespace A122981.P13548654140027621315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122978 (A063008 (n + 1)).toNat

end

end A122981.P13548654140027621315

/-! ## A122981.P3808898232929952949

`A122978(A087443(n+1))`
-/

namespace A122981.P3808898232929952949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122978 (A087443 (n + 1)).toNat

end

end A122981.P3808898232929952949

/-!
# A122983: a(n) = (2 + (-1)^n + 3^n)/4.

The programs for A122983, the canonical program `A122983.P4975975740937140405` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122983 has offset 0).

The definition of A122983 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2+(-1)^n+3^n)/4` (program `A122983.P13010248558214929470`, by `A122983.P13010248558214929470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122983.P4282466281697600586

`ogf((1-2x-x^2)/(1-3x-x^2+3x^3))`
-/

namespace A122983.P4282466281697600586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -3, -1, 3] n

end

end A122983.P4282466281697600586

namespace A122983

/-- `ogf((1-2x-x^2)/(1-3x-x^2+3x^3))` -/
def P4282466281697600586.Spec : Prop :=
  ∀ n, P4282466281697600586.a n = A122983 n

end A122983

/-! ## A122983.P4975975740937140405

`2*a(n-1)+3*a(n-2)-2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122983

/-- `2*a(n-1)+3*a(n-2)-2` -/
def P4975975740937140405.Spec : Prop :=
  ∀ n, P4975975740937140405.a n = A122983 n

theorem P4975975740937140405.correct : P4975975740937140405.Spec := by
  intro n
  simp only [A122983]

end A122983

/-! ## A122983.P17218421233955216641

`ceil(3^n/4)`
-/

namespace A122983.P17218421233955216641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ n : ℚ) / 4⌉

end

end A122983.P17218421233955216641

namespace A122983

/-- `ceil(3^n/4)` -/
def P17218421233955216641.Spec : Prop :=
  ∀ n, P17218421233955216641.a n = A122983 n

end A122983

/-! ## A122983.P13010248558214929470

`(2+(-1)^n+3^n)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A122983.P13010248558214929470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (-1) ^ n + (3 ^ n : ℤ) : ℚ) / 4

end

end A122983.P13010248558214929470

namespace A122983

/-- `(2+(-1)^n+3^n)/4` -/
def P13010248558214929470.Spec : Prop :=
  ∀ n, P13010248558214929470.a n = (A122983 n : ℚ)

theorem P13010248558214929470.correct : P13010248558214929470.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A122983, Nat.add_sub_cancel, A122983.P13010248558214929470.a, A122983.P4975975740937140405.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A122983, Nat.add_sub_cancel, A122983.P13010248558214929470.a, A122983.P4975975740937140405.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A122983

/-! ## A122983.P3615936652314841661

`∑[ogf((-1+2x+x^2)/(-1+2x+3x^2))]`
-/

namespace A122983.P3615936652314841661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -2, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122983.P3615936652314841661

namespace A122983

/-- `∑[ogf((-1+2x+x^2)/(-1+2x+3x^2))]` -/
def P3615936652314841661.Spec : Prop :=
  ∀ n, P3615936652314841661.a n = A122983 n

end A122983

/-! ## A122983.P15210183853871343690

`or(1, round((sqrt(3)^n/2)²))`
-/

namespace A122983.P15210183853871343690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) ^ n / 2) ^ 2))

end

end A122983.P15210183853871343690

namespace A122983

/-- `or(1, round((sqrt(3)^n/2)²))` -/
def P15210183853871343690.Spec : Prop :=
  ∀ n, P15210183853871343690.a n = A122983 n

end A122983

/-! ## A122983.P339865737791714324

`∑[xor(2, 3*a(n-1))]` with `a(0)=1, a(1)=0`
-/

namespace A122983.P339865737791714324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  Nat.xor 2 (3 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122983.P339865737791714324

namespace A122983

/-- `∑[xor(2, 3*a(n-1))]` -/
def P339865737791714324.Spec : Prop :=
  ∀ n, (P339865737791714324.a n : ℤ) = A122983 n

end A122983

/-! ## A122983.P7103048620058000383

`floor(∑[3*a(n-1)]/2)` with `a(0)=2, a(1)=1`
-/

namespace A122983.P7103048620058000383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A122983.P7103048620058000383

namespace A122983

/-- `floor(∑[3*a(n-1)]/2)` -/
def P7103048620058000383.Spec : Prop :=
  ∀ n, P7103048620058000383.a n = A122983 n

end A122983

/-! ## A122983.P11527424438227212062

`round(or(1, ∑[floor(3^(n-1))])/2)`
-/

namespace A122983.P11527424438227212062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2)

end

end A122983.P11527424438227212062

namespace A122983

/-- `round(or(1, ∑[floor(3^(n-1))])/2)` -/
def P11527424438227212062.Spec : Prop :=
  ∀ n, P11527424438227212062.a n = A122983 n

end A122983

/-! ## A122983.P10181557259489361211

`∑[ceil(∑[3^(n-2)])-n%2]`
-/

namespace A122983.P10181557259489361211
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉ - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122983.P10181557259489361211

namespace A122983

/-- `∑[ceil(∑[3^(n-2)])-n%2]` -/
def P10181557259489361211.Spec : Prop :=
  ∀ n, P10181557259489361211.a n = A122983 n

end A122983

/-! ## A122983.P373898413259756028

`3^(n-1)+1-a(n-1)` with `a(0)=1`
-/

namespace A122983.P373898413259756028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (1 - a (n - 1))

end

end A122983.P373898413259756028

namespace A122983

/-- `3^(n-1)+1-a(n-1)` -/
def P373898413259756028.Spec : Prop :=
  ∀ n, P373898413259756028.a n = (A122983 n : ℚ)

end A122983

/-! ## A122983.P5881179921502409312

`1-(a(n-1)-3^(n-1))` with `a(0)=1`
-/

namespace A122983.P5881179921502409312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A122983.P5881179921502409312

namespace A122983

/-- `1-(a(n-1)-3^(n-1))` -/
def P5881179921502409312.Spec : Prop :=
  ∀ n, P5881179921502409312.a n = (A122983 n : ℚ)

end A122983

/-! ## A122983.P7676350834232313623

`3*a(n-1)-2*and(1, n)` with `a(0)=1`
-/

namespace A122983.P7676350834232313623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - (2 * Nat.land 1 n : ℤ)

end

end A122983.P7676350834232313623

namespace A122983

/-- `3*a(n-1)-2*and(1, n)` -/
def P7676350834232313623.Spec : Prop :=
  ∀ n, P7676350834232313623.a n = A122983 n

end A122983

/-! ## A122983.P13073906904005927674

`3*a(n-2)+2*(a(n-1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A122983.P13073906904005927674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * a (n - 2) + 2 * (a (n - 1) - 1)

end

end A122983.P13073906904005927674

namespace A122983

/-- `3*a(n-2)+2*(a(n-1)-1)` -/
def P13073906904005927674.Spec : Prop :=
  ∀ n, P13073906904005927674.a n = A122983 n

end A122983

/-! ## A122983.P8972451683839582686

`3*a(n-2)-2*(1-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A122983.P8972451683839582686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 * a (n - 2) - 2 * (1 - a (n - 1))

end

end A122983.P8972451683839582686

namespace A122983

/-- `3*a(n-2)-2*(1-a(n-1))` -/
def P8972451683839582686.Spec : Prop :=
  ∀ n, P8972451683839582686.a n = A122983 n

end A122983

/-! ## A122983.P11481879594784711169

`floor(A115098(n)/2)`
-/

namespace A122983.P11481879594784711169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115098 n : ℚ) / 2⌋

end

end A122983.P11481879594784711169

namespace A122983

/-- `floor(A115098(n)/2)` -/
def P11481879594784711169.Spec : Prop :=
  ∀ n, P11481879594784711169.a n = A122983 n

end A122983

/-! ## A122983.P7215866294917483072

`round(A046717(n)/2)`
-/

namespace A122983.P7215866294917483072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A046717 n : ℚ) / 2)

end

end A122983.P7215866294917483072

namespace A122983

/-- `round(A046717(n)/2)` -/
def P7215866294917483072.Spec : Prop :=
  ∀ n, P7215866294917483072.a n = A122983 n

end A122983

/-! ## A122983.P1269999532652556757

`floor(A164039(n)-n/2)`
-/

namespace A122983.P1269999532652556757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A164039 n : ℚ) - (n : ℚ) / 2⌋

end

end A122983.P1269999532652556757

namespace A122983

/-- `floor(A164039(n)-n/2)` -/
def P1269999532652556757.Spec : Prop :=
  ∀ n, P1269999532652556757.a n = A122983 n

end A122983

/-! ## A122983.P2244775483707069726

`A094388(n)-a(n-1)` with `a(0)=1`
-/

namespace A122983.P2244775483707069726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094388 n - a (n - 1)

end

end A122983.P2244775483707069726

namespace A122983

/-- `A094388(n)-a(n-1)` -/
def P2244775483707069726.Spec : Prop :=
  ∀ n, P2244775483707069726.a n = A122983 n

end A122983

/-! ## A122983.P3993768292334168702

`∑{#}[n, C(n, #)*A199573(#)]`
-/

namespace A122983.P3993768292334168702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A199573 k

end

end A122983.P3993768292334168702

namespace A122983

/-- `∑{#}[n, C(n, #)*A199573(#)]` -/
def P3993768292334168702.Spec : Prop :=
  ∀ n, P3993768292334168702.a n = A122983 n

end A122983

/-!
# A122984: Smallest positive composite number, relatively prime to n, such that a(n)+n is also composite.

The programs for A122984, there is no canonical definition to state claims against.
-/

/-! ## A122984.P6730519415176195524

`A122985(n+1)-(n+1)`
-/

namespace A122984.P6730519415176195524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122985 (n + 1) - (n + 1 : ℤ)

end

end A122984.P6730519415176195524

/-! ## A122984.P4002073174535323252

`A122985(-xor(n, -1))-1-n`
-/

namespace A122984.P4002073174535323252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122985 (-Int.xor (n : ℤ) (-1)).toNat - 1 - (n : ℤ)

end

end A122984.P4002073174535323252

/-! ## A122984.P2066807869727592882

`A122985(Δ[n²]-n)-1-n`
-/

namespace A122984.P2066807869727592882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122985 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1 - (n : ℤ)

end

end A122984.P2066807869727592882

/-! ## A122984.P14724450636969193769

`A004442(A122985(n+1))-n`
-/

namespace A122984.P14724450636969193769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A122985 (n + 1)).toNat - (n : ℤ)

end

end A122984.P14724450636969193769

/-! ## A122984.P11299009440987547485

`A023443(A122985(n+1)-n)`
-/

namespace A122984.P11299009440987547485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A122985 (n + 1) - (n : ℤ)).toNat

end

end A122984.P11299009440987547485

/-! ## A122984.P14565527403904886781

`A113520(A122985(n+1)-n)`
-/

namespace A122984.P14565527403904886781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A122985 (n + 1) - (n : ℤ)).toNat

end

end A122984.P14565527403904886781

/-! ## A122984.P423538290042375271

`A136602(A122985(n+1)-n)`
-/

namespace A122984.P423538290042375271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136602 (A122985 (n + 1) - (n : ℤ)).toNat

end

end A122984.P423538290042375271

/-! ## A122984.P8938437056266284957

`A233583(A122985(n+1)-n)`
-/

namespace A122984.P8938437056266284957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A122985 (n + 1) - (n : ℤ)).toNat

end

end A122984.P8938437056266284957

/-! ## A122984.P10455975605560022717

`A258070(A122985(n+1)-n)`
-/

namespace A122984.P10455975605560022717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258070 (A122985 (n + 1) - (n : ℤ)).toNat

end

end A122984.P10455975605560022717

/-! ## A122984.P11135679221082716364

`A258071(A122985(n+1)-n)`
-/

namespace A122984.P11135679221082716364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258071 (A122985 (n + 1) - (n : ℤ)).toNat

end

end A122984.P11135679221082716364

/-!
# A122985: Smallest composite number greater than n, relatively prime to n, such that a(n)-n is also composite.

The programs for A122985, there is no canonical definition to state claims against.
-/

/-! ## A122985.P16876140499269048410

`A122984(n+1)+1+n`
-/

namespace A122985.P16876140499269048410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122984 (n + 1) + 1 + (n : ℤ)

end

end A122985.P16876140499269048410

/-! ## A122985.P3320045099427917966

`A004442(A122984(n+1)+n)`
-/

namespace A122985.P3320045099427917966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A122984 (n + 1) + (n : ℤ)).toNat

end

end A122985.P3320045099427917966

/-! ## A122985.P3365388472607048145

`A007535(A122984(n+1)+n)`
-/

namespace A122985.P3365388472607048145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (A122984 (n + 1) + (n : ℤ)).toNat

end

end A122985.P3365388472607048145

/-! ## A122985.P9531836712714634250

`A020725(A122984(n+1)+n)`
-/

namespace A122985.P9531836712714634250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A122984 (n + 1) + (n : ℤ)).toNat

end

end A122985.P9531836712714634250

/-! ## A122985.P11424827096518704979

`A061767(A122984(n+1)+n)`
-/

namespace A122985.P11424827096518704979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (A122984 (n + 1) + (n : ℤ)).toNat

end

end A122985.P11424827096518704979

/-! ## A122985.P17796807648957498765

`A065190(A122984(n+1)+n)`
-/

namespace A122985.P17796807648957498765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A122984 (n + 1) + (n : ℤ)).toNat

end

end A122985.P17796807648957498765

/-! ## A122985.P4405743648573979317

`A079097(A122984(n+1)+n)`
-/

namespace A122985.P4405743648573979317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (A122984 (n + 1) + (n : ℤ)).toNat

end

end A122985.P4405743648573979317

/-! ## A122985.P15939687819736444125

`A097062(A122984(n+1)+n)`
-/

namespace A122985.P15939687819736444125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 (A122984 (n + 1) + (n : ℤ)).toNat

end

end A122985.P15939687819736444125

/-! ## A122985.P15824695143991005974

`A109613(A122984(n+1)+n)`
-/

namespace A122985.P15824695143991005974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A122984 (n + 1) + (n : ℤ)).toNat

end

end A122985.P15824695143991005974

/-! ## A122985.P12115156969823154463

`A131738(A122984(n+1)+n)`
-/

namespace A122985.P12115156969823154463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (A122984 (n + 1) + (n : ℤ)).toNat

end

end A122985.P12115156969823154463

/-!
# A122986: Squares mod 1000.

The programs for A122986, the canonical program `A122986.P14413099790891145371` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122986 has offset 1).

The definition of A122986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122986.P14413099790891145371

`eq[char[A316347(n)], A014709(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A122986

/-- `eq[char[A316347(n)], A014709(n)]` -/
def P14413099790891145371.Spec : Prop :=
  ∀ n, (P14413099790891145371.a n : ℤ) = A122986 (n + 1)

theorem P14413099790891145371.correct : P14413099790891145371.Spec := by
  intro n
  simp only [A122986, Nat.add_sub_cancel]

end A122986

/-! ## A122986.P4123504322841113707

`filter[A238712(1+n), A014577(#)]`
-/

namespace A122986.P4123504322841113707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014577 (f1 j).toNat = 1) n)

end

end A122986.P4123504322841113707

namespace A122986

/-- `filter[A238712(1+n), A014577(#)]` -/
def P4123504322841113707.Spec : Prop :=
  ∀ n, P4123504322841113707.a n = A122986 (n + 1)

end A122986

/-! ## A122986.P4310596461852788703

`eq[char[A238712(n+1)], A014709(n)]`
-/

namespace A122986.P4310596461852788703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A122986.P4310596461852788703

namespace A122986

/-- `eq[char[A238712(n+1)], A014709(n)]` -/
def P4310596461852788703.Spec : Prop :=
  ∀ n, (P4310596461852788703.a n : ℤ) = A122986 (n + 1)

end A122986

/-! ## A122986.P10008302713322760055

`∩[A047453(n+1), A238712(n+1)]`
-/

namespace A122986.P10008302713322760055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122986.P10008302713322760055

namespace A122986

/-- `∩[A047453(n+1), A238712(n+1)]` -/
def P10008302713322760055.Spec : Prop :=
  ∀ n, (P10008302713322760055.a n : ℤ) = A122986 (n + 1)

end A122986

/-! ## A122986.P17780988058858270454

`∩[A047460(n+1), A238712(n+1)]`
-/

namespace A122986.P17780988058858270454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122986.P17780988058858270454

namespace A122986

/-- `∩[A047460(n+1), A238712(n+1)]` -/
def P17780988058858270454.Spec : Prop :=
  ∀ n, (P17780988058858270454.a n : ℤ) = A122986 (n + 1)

end A122986

/-! ## A122986.P2957075631185417760

`∩[A047462(n+1), A238712(n+1)]`
-/

namespace A122986.P2957075631185417760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122986.P2957075631185417760

namespace A122986

/-- `∩[A047462(n+1), A238712(n+1)]` -/
def P2957075631185417760.Spec : Prop :=
  ∀ n, (P2957075631185417760.a n : ℤ) = A122986 (n + 1)

end A122986

/-! ## A122986.P5308465390063683735

`∩[A047466(n+1), A238712(n+1)]`
-/

namespace A122986.P5308465390063683735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122986.P5308465390063683735

namespace A122986

/-- `∩[A047466(n+1), A238712(n+1)]` -/
def P5308465390063683735.Spec : Prop :=
  ∀ n, (P5308465390063683735.a n : ℤ) = A122986 (n + 1)

end A122986

/-! ## A122986.P3269706203238412182

`∩[A047538(n+1), A238712(n+1)]`
-/

namespace A122986.P3269706203238412182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122986.P3269706203238412182

namespace A122986

/-- `∩[A047538(n+1), A238712(n+1)]` -/
def P3269706203238412182.Spec : Prop :=
  ∀ n, (P3269706203238412182.a n : ℤ) = A122986 (n + 1)

end A122986

/-! ## A122986.P12472133575842164175

`∩[A047542(n+1), A238712(n+1)]`
-/

namespace A122986.P12472133575842164175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122986.P12472133575842164175

namespace A122986

/-- `∩[A047542(n+1), A238712(n+1)]` -/
def P12472133575842164175.Spec : Prop :=
  ∀ n, (P12472133575842164175.a n : ℤ) = A122986 (n + 1)

end A122986

/-! ## A122986.P2792541464768206343

`∩[A047545(n+1), A238712(n+1)]`
-/

namespace A122986.P2792541464768206343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122986.P2792541464768206343

namespace A122986

/-- `∩[A047545(n+1), A238712(n+1)]` -/
def P2792541464768206343.Spec : Prop :=
  ∀ n, (P2792541464768206343.a n : ℤ) = A122986 (n + 1)

end A122986

/-! ## A122986.P7340104569294526768

`∩[A047549(n+1), A238712(n+1)]`
-/

namespace A122986.P7340104569294526768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122986.P7340104569294526768

namespace A122986

/-- `∩[A047549(n+1), A238712(n+1)]` -/
def P7340104569294526768.Spec : Prop :=
  ∀ n, (P7340104569294526768.a n : ℤ) = A122986 (n + 1)

end A122986

/-! ## A122986.P14996755302262859711

`eq[char[A238712(n+1)], A034947(n+1)]`
-/

namespace A122986.P14996755302262859711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A122986.P14996755302262859711

namespace A122986

/-- `eq[char[A238712(n+1)], A034947(n+1)]` -/
def P14996755302262859711.Spec : Prop :=
  ∀ n, (P14996755302262859711.a n : ℤ) = A122986 (n + 1)

end A122986

/-!
# A122987: Possible last three digits of n^3 (leading zeros omitted).

The programs for A122987, there is no canonical definition to state claims against.
-/

/-! ## A122987.P2845803191275572097

`eq[A122988(A106611(n)), A122988(n)]`
-/

namespace A122987.P2845803191275572097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122988 (A106611 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122987.P2845803191275572097

/-! ## A122987.P17551449042964001767

`record[A195161(A106621(n))%A262464(n+1)]`
-/

namespace A122987.P17551449042964001767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195161 (A106621 n).toNat) (A262464 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122987.P17551449042964001767

/-! ## A122987.P16533294476867864887

`record[A195161(A106621(n))]%A226111(n+1)`
-/

namespace A122987.P16533294476867864887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (A106621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A226111 (n + 1))

end

end A122987.P16533294476867864887

/-! ## A122987.P5535103110885187212

`record[A195161(A106621(n))]%A137904(n)`
-/

namespace A122987.P5535103110885187212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (A106621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A137904 n)

end

end A122987.P5535103110885187212

/-! ## A122987.P5103690946068641493

`record[A195161(A106621(n))%A198277(n)]`
-/

namespace A122987.P5103690946068641493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195161 (A106621 n).toNat) (A198277 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122987.P5103690946068641493

/-! ## A122987.P5879247826915519768

`eq[n, A195161(A106621(n))]%A094110(n+1)`
-/

namespace A122987.P5879247826915519768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (A106621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A094110 (n + 1))

end

end A122987.P5879247826915519768

/-! ## A122987.P15269440322789106770

`eq[A033619(n+1), A195161(A106621(n))]`
-/

namespace A122987.P15269440322789106770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 (A106621 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A122987.P15269440322789106770

/-!
# A122991: Indices of primes in tribonacci sequence A000073, minus 2.

The programs for A122991, there is no canonical definition to state claims against.
-/

/-! ## A122991.P12322790726524237945

`A092835(n+1)-1`
-/

namespace A122991.P12322790726524237945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092835 (n + 1) - 1

end

end A122991.P12322790726524237945

/-! ## A122991.P1730187541556841413

`A303263(n+1)-2`
-/

namespace A122991.P1730187541556841413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303263 (n + 1) - 2

end

end A122991.P1730187541556841413

/-! ## A122991.P3504292121556425275

`record[A092835(A280253(n))-1]`
-/

namespace A122991.P3504292121556425275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092835 (A280253 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122991.P3504292121556425275

/-! ## A122991.P14637664869622741393

`record[A303263(A324347(n))-2]`
-/

namespace A122991.P14637664869622741393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303263 (A324347 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122991.P14637664869622741393

/-! ## A122991.P12287828712893975010

`record[A303263(A328399(n))-2]`
-/

namespace A122991.P12287828712893975010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303263 (A328399 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122991.P12287828712893975010

/-!
# A122993: Expansion of g.f.: A(x) = Product_{n>=0} 1/( 1 - x/(1-x)^n )^( 1/2^(n+1) ).

The programs for A122993, there is no canonical definition to state claims against.
-/

/-! ## A122993.P6418203968724262273

`A201497(n)+A123074(A122983(n))`
-/

namespace A122993.P6418203968724262273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201497 n + A123074 (A122983 n).toNat

end

end A122993.P6418203968724262273

/-! ## A122993.P14255152516168576233

`A201497(lcm(n, floor(n^(1/3))^3))`
-/

namespace A122993.P14255152516168576233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201497 (Int.lcm (n : ℤ) (⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ ^ 3))

end

end A122993.P14255152516168576233

/-! ## A122993.P8901624476072742449

`A201497(A004892(n+1))`
-/

namespace A122993.P8901624476072742449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201497 (A004892 (n + 1)).toNat

end

end A122993.P8901624476072742449

/-! ## A122993.P12693422806871678680

`A201497(A082743(n)-1)`
-/

namespace A122993.P12693422806871678680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201497 (A082743 n - 1).toNat

end

end A122993.P12693422806871678680

/-! ## A122993.P17077712000877807570

`A001281(2*A201497(n))`
-/

namespace A122993.P17077712000877807570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A201497 n).toNat

end

end A122993.P17077712000877807570

/-!
# A122994: a(n) = a(n-1)+9*a(n-2) initialized with a(0)=1, a(1)=3.

The programs for A122994, the canonical program `A122994.P5930601190573419062` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122994 has offset 0).

The definition of A122994 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+9*a(n-2)` (program `A122994.P5930601190573419062`, by `A122994.P5930601190573419062.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122994.P15150323122420262704

`ogf((1+2x)/(1-x-9x^2))`
-/

namespace A122994.P15150323122420262704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -1, -9] n

end

end A122994.P15150323122420262704

namespace A122994

/-- `ogf((1+2x)/(1-x-9x^2))` -/
def P15150323122420262704.Spec : Prop :=
  ∀ n, P15150323122420262704.a n = A122994 n

end A122994

/-! ## A122994.P5930601190573419062

`a(n-1)+9*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122994

/-- `a(n-1)+9*a(n-2)` -/
def P5930601190573419062.Spec : Prop :=
  ∀ n, (P5930601190573419062.a n : ℤ) = A122994 n

theorem P5930601190573419062.correct : P5930601190573419062.Spec := by
  intro n
  simp only [A122994]

end A122994

/-! ## A122994.P13229578481111894722

`9*a(n-2)-floor(-a(n-1))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A122994.P13229578481111894722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  9 * a (n - 2) - (-a (n - 1))

end

end A122994.P13229578481111894722

namespace A122994

/-- `9*a(n-2)-floor(-a(n-1))` -/
def P13229578481111894722.Spec : Prop :=
  ∀ n, P13229578481111894722.a n = A122994 n

end A122994

/-! ## A122994.P15835176088221031858

`a(n-1)-9*ceil(-a(n-2))` with `a(0)=1, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A122994.P15835176088221031858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - 9 * (-a (n - 2))

end

end A122994.P15835176088221031858

namespace A122994

/-- `a(n-1)-9*ceil(-a(n-2))` -/
def P15835176088221031858.Spec : Prop :=
  ∀ n, P15835176088221031858.a n = A122994 n

end A122994

/-! ## A122994.P3513113181931403777

`a(n-1)-9*round(-a(n-2))` with `a(0)=1, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A122994.P3513113181931403777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - 9 * (-a (n - 2))

end

end A122994.P3513113181931403777

namespace A122994

/-- `a(n-1)-9*round(-a(n-2))` -/
def P3513113181931403777.Spec : Prop :=
  ∀ n, P3513113181931403777.a n = A122994 n

end A122994

/-! ## A122994.P17116647390139877132

`a(n-1)+a(n-2)/(1/3)²` with `a(0)=1, a(1)=3`
-/

namespace A122994.P17116647390139877132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 3) ^ 2

end

end A122994.P17116647390139877132

namespace A122994

/-- `a(n-1)+a(n-2)/(1/3)²` -/
def P17116647390139877132.Spec : Prop :=
  ∀ n, P17116647390139877132.a n = (A122994 n : ℚ)

end A122994

/-! ## A122994.P17963759951323120073

`a(n-1)-3*(a(n-2)-4*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A122994.P17963759951323120073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) - 3 * (a (n - 2) - 4 * a (n - 2))

end

end A122994.P17963759951323120073

namespace A122994

/-- `a(n-1)-3*(a(n-2)-4*a(n-2))` -/
def P17963759951323120073.Spec : Prop :=
  ∀ n, P17963759951323120073.a n = A122994 n

end A122994

/-!
# A122995: Expansion of x*(1+4*x)/(1-x-25*x^2).

The programs for A122995, the canonical program `A122995.P3939776560085721135` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122995 has offset 1).

The definition of A122995 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x)/(1-x-25x^2))` (program `A122995.P3939776560085721135`, by `A122995.P3939776560085721135.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122995.P3939776560085721135

`ogf((1+4x)/(1-x-25x^2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122995

/-- `ogf((1+4x)/(1-x-25x^2))` -/
def P3939776560085721135.Spec : Prop :=
  ∀ n, P3939776560085721135.a n = A122995 (n + 1)

theorem P3939776560085721135.correct : P3939776560085721135.Spec := by
  intro n
  simp only [A122995, Nat.add_sub_cancel]

end A122995

/-! ## A122995.P10760784284432545459

`a(n-1)+25*a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A122995.P10760784284432545459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + 25 * a (n - 2)

end

end A122995.P10760784284432545459

namespace A122995

/-- `a(n-1)+25*a(n-2)` -/
def P10760784284432545459.Spec : Prop :=
  ∀ n, (P10760784284432545459.a n : ℤ) = A122995 (n + 1)

end A122995

/-! ## A122995.P4794682807174894790

`a(n-1)+a(n-2)/(1/5)²` with `a(0)=1, a(1)=5`
-/

namespace A122995.P4794682807174894790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 5) ^ 2

end

end A122995.P4794682807174894790

namespace A122995

/-- `a(n-1)+a(n-2)/(1/5)²` -/
def P4794682807174894790.Spec : Prop :=
  ∀ n, P4794682807174894790.a n = (A122995 (n + 1) : ℚ)

end A122995

/-!
# A122996: Expansion of (1+6*x)/(1-x-49*x^2).

The programs for A122996, the canonical program `A122996.P6197999114039074170` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122996 has offset 0).

The definition of A122996 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+6x)/(1-x-49x^2))` (program `A122996.P6197999114039074170`, by `A122996.P6197999114039074170.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122996.P6197999114039074170

`ogf((1+6x)/(1-x-49x^2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122996

/-- `ogf((1+6x)/(1-x-49x^2))` -/
def P6197999114039074170.Spec : Prop :=
  ∀ n, P6197999114039074170.a n = A122996 n

theorem P6197999114039074170.correct : P6197999114039074170.Spec := by
  intro n
  simp only [A122996]

end A122996

/-! ## A122996.P1171193150825651431

`a(n-1)+49*a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A122996.P1171193150825651431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  a (n - 1) + 49 * a (n - 2)

end

end A122996.P1171193150825651431

namespace A122996

/-- `a(n-1)+49*a(n-2)` -/
def P1171193150825651431.Spec : Prop :=
  ∀ n, (P1171193150825651431.a n : ℤ) = A122996 n

end A122996

/-!
# A122997: Pentanacci numbers for following initial values: a(0) = 1, a(1) = -1, a(2) = 1, a(3) = -1, a(4) = 1.

The programs for A122997, the canonical program `A122997.P844497358402078246` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122997 has offset 0).

The definition of A122997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122997.P2753926961715336616

`ogf((1-2x+x^2-2x^3+x^4)/(1-x-x^2-x^3-x^4-x^5))`
-/

namespace A122997.P2753926961715336616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, -2, 1] [1, -1, -1, -1, -1, -1] n

end

end A122997.P2753926961715336616

namespace A122997

/-- `ogf((1-2x+x^2-2x^3+x^4)/(1-x-x^2-x^3-x^4-x^5))` -/
def P2753926961715336616.Spec : Prop :=
  ∀ n, P2753926961715336616.a n = A122997 n

end A122997

/-! ## A122997.P844497358402078246

`a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=-1, a(4)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122997

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P844497358402078246.Spec : Prop :=
  ∀ n, P844497358402078246.a n = A122997 n

theorem P844497358402078246.correct : P844497358402078246.Spec := by
  intro n
  simp only [A122997]

end A122997

/-! ## A122997.P4982665413571589219

`A124313(n+1)+A001591(n)-Δ[A124312(n+1)]`
-/

namespace A122997.P4982665413571589219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124313 (n + 1) + (A001591 n - (f1 (n + 1) - f1 n))

end

end A122997.P4982665413571589219

namespace A122997

/-- `A124313(n+1)+A001591(n)-Δ[A124312(n+1)]` -/
def P4982665413571589219.Spec : Prop :=
  ∀ n, P4982665413571589219.a n = A122997 n

end A122997

/-! ## A122997.P4711838123661594706

`A000322(n+1)-2*A124312(n+2)`
-/

namespace A122997.P4711838123661594706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000322 (n + 1) - 2 * A124312 (n + 2)

end

end A122997.P4711838123661594706

namespace A122997

/-- `A000322(n+1)-2*A124312(n+2)` -/
def P4711838123661594706.Spec : Prop :=
  ∀ n, P4711838123661594706.a n = A122997 n

end A122997

/-!
# A122999: G.f.: 1/(1 - x - 25*x^2).

The programs for A122999, the canonical program `A122999.P8816915432015398212` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122999 has offset 0).

The definition of A122999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122999.P8816915432015398212

`a(n-1)+25*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A122999

/-- `a(n-1)+25*a(n-2)` -/
def P8816915432015398212.Spec : Prop :=
  ∀ n, (P8816915432015398212.a n : ℤ) = A122999 n

theorem P8816915432015398212.correct : P8816915432015398212.Spec := by
  intro n
  simp only [A122999]

end A122999

/-! ## A122999.P12384460823909015579

`ogf(1/(1-x-25x^2))`
-/

namespace A122999.P12384460823909015579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -25] n

end

end A122999.P12384460823909015579

namespace A122999

/-- `ogf(1/(1-x-25x^2))` -/
def P12384460823909015579.Spec : Prop :=
  ∀ n, P12384460823909015579.a n = A122999 n

end A122999

/-! ## A122999.P7868511506696185458

`a(n-1)+lcm(25, a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A122999.P7868511506696185458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + Nat.lcm 25 (a (n - 2))

end

end A122999.P7868511506696185458

namespace A122999

/-- `a(n-1)+lcm(25, a(n-2))` -/
def P7868511506696185458.Spec : Prop :=
  ∀ n, (P7868511506696185458.a n : ℤ) = A122999 n

end A122999

/-! ## A122999.P5752670315838295764

`a(n-1)+a(n-2)/(1/5)²` with `a(0)=1, a(1)=1`
-/

namespace A122999.P5752670315838295764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 5) ^ 2

end

end A122999.P5752670315838295764

namespace A122999

/-- `a(n-1)+a(n-2)/(1/5)²` -/
def P5752670315838295764.Spec : Prop :=
  ∀ n, P5752670315838295764.a n = (A122999 n : ℚ)

end A122999

/-! ## A122999.P8295128819057964134

`26*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A122999.P8295128819057964134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  26 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A122999.P8295128819057964134

namespace A122999

/-- `26*a(n-2)-(a(n-2)-a(n-1))` -/
def P8295128819057964134.Spec : Prop :=
  ∀ n, P8295128819057964134.a n = A122999 n

end A122999

