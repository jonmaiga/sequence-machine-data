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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A198900: Number of n X 2 0..4 arrays with values 0..4 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198900, there is no canonical definition to state claims against.
-/

/-! ## A198900.P3574955857433520334

`17*a(n-1)-55*a(n-2)+39*a(n-3)` with `a(0)=1, a(1)=4, a(2)=33`
-/

namespace A198900.P3574955857433520334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 33] fun n a =>
  17 * a (n - 1) - 55 * a (n - 2) + 39 * a (n - 3)

end

end A198900.P3574955857433520334

/-! ## A198900.P15672346352728758015

`(26+13*3^(n+1)+13^(n+1))/78`
-/

namespace A198900.P15672346352728758015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (26 + 13 * 3 ^ (n + 1) + 13 ^ (n + 1) : ℚ) / 78

end

end A198900.P15672346352728758015

/-! ## A198900.P1746399895210274440

`A198906(∑[n+1]+2)`
-/

namespace A198900.P1746399895210274440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198900.P1746399895210274440

/-! ## A198900.P1362223757193245178

`record[A198906(A152948(A344180(n)))]`
-/

namespace A198900.P1362223757193245178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 (A152948 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198900.P1362223757193245178

/-! ## A198900.P13577226310989127558

`A214141(∑[n+1])`
-/

namespace A198900.P13577226310989127558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214141 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198900.P13577226310989127558

/-!
# A198901: Number of n X 3 0..4 arrays with values 0..4 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198901, there is no canonical definition to state claims against.
-/

/-! ## A198901.P8748514219142635114

`A198906(∑[n+2]+4)`
-/

namespace A198901.P8748514219142635114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198901.P8748514219142635114

/-! ## A198901.P6436472222969474878

`A198906(A167614(n+1))+A066035(n)`
-/

namespace A198901.P6436472222969474878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 (A167614 (n + 1)).toNat + A066035 n

end

end A198901.P6436472222969474878

/-! ## A198901.P326177495540564466

`gcd(A000038(n), A198906(A167614(n+1)))`
-/

namespace A198901.P326177495540564466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A198906 (A167614 (n + 1)).toNat)

end

end A198901.P326177495540564466

/-! ## A198901.P2035435812450721891

`or(A198906(A167614(n+1)), A341995(n))`
-/

namespace A198901.P2035435812450721891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A198906 (A167614 (n + 1)).toNat) (A341995 n)

end

end A198901.P2035435812450721891

/-! ## A198901.P2900293496330349388

`A198906(A167614(n+1))%A222336(n+1)`
-/

namespace A198901.P2900293496330349388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198906 (A167614 (n + 1)).toNat) (A222336 (n + 1))

end

end A198901.P2900293496330349388

/-!
# A198902: Number of nX4 0..4 arrays with values 0..4 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198902, there is no canonical definition to state claims against.
-/

/-! ## A198902.P1899152876351043968

`A198906(A374004(n+1))`
-/

namespace A198902.P1899152876351043968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 (A374004 (n + 1)).toNat

end

end A198902.P1899152876351043968

/-! ## A198902.P1916506644293818700

`A198906(A141214(n)+7)`
-/

namespace A198902.P1916506644293818700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 (A141214 n + 7).toNat

end

end A198902.P1916506644293818700

/-! ## A198902.P7945561578461413528

`A198906(A052905(n)+9)`
-/

namespace A198902.P7945561578461413528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 (A052905 n + 9).toNat

end

end A198902.P7945561578461413528

/-! ## A198902.P11901423603362324877

`A198906(A055999(n)+10)`
-/

namespace A198902.P11901423603362324877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 (A055999 n + 10).toNat

end

end A198902.P11901423603362324877

/-! ## A198902.P14409970521937126178

`A198906(A167614(n+2)+1)`
-/

namespace A198902.P14409970521937126178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 (A167614 (n + 2) + 1).toNat

end

end A198902.P14409970521937126178

/-!
# A198903: Number of n X 5 0..4 arrays with values 0..4 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198903, there is no canonical definition to state claims against.
-/

/-! ## A198903.P2939186466929378559

`A198906(A374005(n+1))`
-/

namespace A198903.P2939186466929378559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 (A374005 (n + 1)).toNat

end

end A198903.P2939186466929378559

/-! ## A198903.P3492025253470770255

`A198906(A000217(n+4)+5)`
-/

namespace A198903.P3492025253470770255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 (A000217 (n + 4) + 5).toNat

end

end A198903.P3492025253470770255

/-! ## A198903.P16336787216718837202

`A198906(Δ[A023545(n+1)])`
-/

namespace A198903.P16336787216718837202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 (f1 (n + 1) - f1 n).toNat

end

end A198903.P16336787216718837202

/-!
# A198904: Number of nX6 0..4 arrays with values 0..4 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198904, there is no canonical definition to state claims against.
-/

/-! ## A198904.P16007918021216647044

`A198906(A374007(n+1))`
-/

namespace A198904.P16007918021216647044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 (A374007 (n + 1)).toNat

end

end A198904.P16007918021216647044

/-! ## A198904.P492240805407407711

`A198906(Δ[A023551(n+1)]+1)`
-/

namespace A198904.P492240805407407711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 (f1 (n + 1) - f1 n + 1).toNat

end

end A198904.P492240805407407711

/-! ## A198904.P13807638675980180139

`A198906(A302338(2*n+5)+∑[n])`
-/

namespace A198904.P13807638675980180139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 (A302338 (2 * n + 5) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A198904.P13807638675980180139

/-!
# A198905: 

The programs for A198905, there is no canonical definition to state claims against.
-/

/-! ## A198905.P1746310366129735296

`A198906(A055999(n+4))`
-/

namespace A198905.P1746310366129735296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198906 (A055999 (n + 4)).toNat

end

end A198905.P1746310366129735296

/-!
# A198906: T(n,k) = number of n X k 0..4 arrays with values 0..4 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198906, there is no canonical definition to state claims against.
-/

/-! ## A198906.P14035246339022546893

`A262747(A149247(n))`
-/

namespace A198906.P14035246339022546893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262747 (A149247 n).toNat

end

end A198906.P14035246339022546893

/-! ## A198906.P12849328518680616092

`A337255(A088218(n))+A002264(n)`
-/

namespace A198906.P12849328518680616092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337255 (A088218 n).toNat + A002264 n

end

end A198906.P12849328518680616092

/-! ## A198906.P7372959228637933270

`A085516(A228912(n)+A198723(n+1))`
-/

namespace A198906.P7372959228637933270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A228912 n + A198723 (n + 1)).toNat

end

end A198906.P7372959228637933270

/-! ## A198906.P10273894399701114422

`A085516(A228912(n)+A198914(n+1))`
-/

namespace A198906.P10273894399701114422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A228912 n + A198914 (n + 1)).toNat

end

end A198906.P10273894399701114422

/-! ## A198906.P8673128458012451418

`A207868(n+1)-A088705(A046169(n+2))`
-/

namespace A198906.P8673128458012451418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207868 (n + 1) - A088705 (A046169 (n + 2)).toNat

end

end A198906.P8673128458012451418

/-!
# A198907: Number of n X n 0..7 arrays with values 0..7 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198907, there is no canonical definition to state claims against.
-/

/-! ## A198907.P10395320509432164538

`A198914(2*(n+1)²-2*(n+1)+1)`
-/

namespace A198907.P10395320509432164538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A198907.P10395320509432164538

/-! ## A198907.P8217605050965716498

`A198914(A001844(n))+A054900(n)`
-/

namespace A198907.P8217605050965716498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (A001844 n).toNat + A054900 n

end

end A198907.P8217605050965716498

/-! ## A198907.P10386736377707300688

`A198914(A001844(n))+A034486(n+1)`
-/

namespace A198907.P10386736377707300688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (A001844 n).toNat + A034486 (n + 1)

end

end A198907.P10386736377707300688

/-! ## A198907.P16739174339606981223

`A198914(A001844(n))+A034549(n+1)`
-/

namespace A198907.P16739174339606981223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (A001844 n).toNat + A034549 (n + 1)

end

end A198907.P16739174339606981223

/-! ## A198907.P9885853973253891687

`A198914(A001844(n))+A076142(n+1)`
-/

namespace A198907.P9885853973253891687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (A001844 n).toNat + A076142 (n + 1)

end

end A198907.P9885853973253891687

/-!
# A198908: Number of n X 2 0..7 arrays with values 0..7 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198908, there is no canonical definition to state claims against.
-/

/-! ## A198908.P6197925633465150986

`A198914(∑[n+1]+2)`
-/

namespace A198908.P6197925633465150986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198908.P6197925633465150986

/-! ## A198908.P7003027450493271194

`record[gcd(A105422(n), A198914(n+4))]`
-/

namespace A198908.P7003027450493271194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105422 n) (A198914 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198908.P7003027450493271194

/-! ## A198908.P3542813377900634189

`A214238(∑[n+1])`
-/

namespace A198908.P3542813377900634189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198908.P3542813377900634189

/-! ## A198908.P18420202889596784900

`record[A214238(abs(A145063(n)))]`
-/

namespace A198908.P18420202889596784900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 |A145063 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198908.P18420202889596784900

/-! ## A198908.P14596884973215777281

`record[A214238(A286157(n+1))]`
-/

namespace A198908.P14596884973215777281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214238 (A286157 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198908.P14596884973215777281

/-!
# A198909: Number of nX3 0..7 arrays with values 0..7 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198909, there is no canonical definition to state claims against.
-/

/-! ## A198909.P2628753975579549851

`A198914(∑[n+2]+4)`
-/

namespace A198909.P2628753975579549851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198909.P2628753975579549851

/-! ## A198909.P4768497065915607407

`A198914(A167614(n+1))+A185237(n)`
-/

namespace A198909.P4768497065915607407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (A167614 (n + 1)).toNat + A185237 n

end

end A198909.P4768497065915607407

/-! ## A198909.P9547811686026803815

`A198914(A167614(n+1))+A185284(n)`
-/

namespace A198909.P9547811686026803815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (A167614 (n + 1)).toNat + A185284 n

end

end A198909.P9547811686026803815

/-! ## A198909.P12903624536379908750

`lcm(A033999(n), A198914(A167614(n+1)))`
-/

namespace A198909.P12903624536379908750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A198914 (A167614 (n + 1)).toNat)

end

end A198909.P12903624536379908750

/-! ## A198909.P9397542153635804696

`or(A198914(A167614(n+1)), A341995(n))`
-/

namespace A198909.P9397542153635804696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A198914 (A167614 (n + 1)).toNat) (A341995 n)

end

end A198909.P9397542153635804696

/-!
# A198910: Number of nX4 0..7 arrays with values 0..7 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198910, there is no canonical definition to state claims against.
-/

/-! ## A198910.P1800681566910674056

`A198914(A141214(n)+7)`
-/

namespace A198910.P1800681566910674056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (A141214 n + 7).toNat

end

end A198910.P1800681566910674056

/-! ## A198910.P17823912931439699001

`A198914(A167614(n+2)+1)`
-/

namespace A198910.P17823912931439699001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (A167614 (n + 2) + 1).toNat

end

end A198910.P17823912931439699001

/-! ## A198910.P8469373661407600297

`A198914(A179865(n+4)+4)`
-/

namespace A198910.P8469373661407600297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (A179865 (n + 4) + 4).toNat

end

end A198910.P8469373661407600297

/-!
# A198911: Number of n X 5 0..7 arrays with values 0..7 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198911, there is no canonical definition to state claims against.
-/

/-! ## A198911.P12393900467880736979

`A198914(A167614(n+3)+2)`
-/

namespace A198911.P12393900467880736979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (A167614 (n + 3) + 2).toNat

end

end A198911.P12393900467880736979

/-! ## A198911.P13053106321239302663

`A198914(A000217(n+5)-n)`
-/

namespace A198911.P13053106321239302663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (A000217 (n + 5) - (n : ℤ)).toNat

end

end A198911.P13053106321239302663

/-! ## A198911.P13019283150764551311

`A198914(A374005(n+1))`
-/

namespace A198911.P13019283150764551311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (A374005 (n + 1)).toNat

end

end A198911.P13019283150764551311

/-! ## A198911.P4781417298923518981

`A198914(eq[5, A239144(n)])`
-/

namespace A198911.P4781417298923518981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198911.P4781417298923518981

/-! ## A198911.P14776023805498011164

`A198914(Δ[A023545(n+1)])`
-/

namespace A198911.P14776023805498011164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (f1 (n + 1) - f1 n).toNat

end

end A198911.P14776023805498011164

/-!
# A198912: 

The programs for A198912, there is no canonical definition to state claims against.
-/

/-! ## A198912.P14865858901505304960

`A198914(A302338(2*n+5)+∑[n])`
-/

namespace A198912.P14865858901505304960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (A302338 (2 * n + 5) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A198912.P14865858901505304960

/-!
# A198914: T(n,k) = number of n X k 0..7 arrays with values 0..7 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198914, there is no canonical definition to state claims against.
-/

/-! ## A198914.P15763633987092866965

`A306866(A207868(n+1))`
-/

namespace A198914.P15763633987092866965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306866 (A207868 (n + 1)).toNat

end

end A198914.P15763633987092866965

/-! ## A198914.P15200128523043781597

`A207868(n+1)-A102683(A001405(n))`
-/

namespace A198914.P15200128523043781597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207868 (n + 1) - A102683 (A001405 n).toNat

end

end A198914.P15200128523043781597

/-! ## A198914.P4690462117207015686

`A207868(n+1)-A102683(A126869(n))`
-/

namespace A198914.P4690462117207015686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207868 (n + 1) - A102683 (A126869 n).toNat

end

end A198914.P4690462117207015686

/-! ## A198914.P10212873525637611891

`A207868(n+1)-A128937(A128936(n))`
-/

namespace A198914.P10212873525637611891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207868 (n + 1) - A128937 (A128936 n).toNat

end

end A198914.P10212873525637611891

/-! ## A198914.P10497375400744732330

`A207868(n+1)+A008683(A237557(n+1))`
-/

namespace A198914.P10497375400744732330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207868 (n + 1) + A008683 (A237557 (n + 1)).toNat

end

end A198914.P10497375400744732330

/-!
# A198915: 

The programs for A198915, there is no canonical definition to state claims against.
-/

/-! ## A198915.P7599059050157413869

`ratio[2^3^n+1]`
-/

namespace A198915.P7599059050157413869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ 3 ^ n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A198915.P7599059050157413869

/-!
# A198916: G.f. satisfies: A(x) = Sum_{n>=0} n!*x^n*A(x)^(2*n).

The programs for A198916, there is no canonical definition to state claims against.
-/

/-! ## A198916.P14373215175260360038

`A084938(A062708(n+1))/(2*n+1)`
-/

namespace A198916.P14373215175260360038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084938 (A062708 (n + 1)).toNat : ℚ) / (2 * n + 1 : ℚ)

end

end A198916.P14373215175260360038

/-! ## A198916.P7155167447678918699

`A057627(A198953(n))+1`
-/

namespace A198916.P7155167447678918699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A198953 n).toNat + 1

end

end A198916.P7155167447678918699

/-!
# A198943: y-values in the solution to 10*x^2-9 = y^2.

The programs for A198943, the canonical program `A198943.P14839835237173230297` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198943 has offset 1).

The definition of A198943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198943.P14839835237173230297

`2*A341895(n+1)+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A198943

/-- `2*A341895(n+1)+1` -/
def P14839835237173230297.Spec : Prop :=
  ∀ n, P14839835237173230297.a n = A198943 (n + 1)

theorem P14839835237173230297.correct : P14839835237173230297.Spec := by
  intro n
  simp only [A198943, Nat.add_sub_cancel]

end A198943

/-! ## A198943.P13603741250376696647

`2*A180002(n+1)-7`
-/

namespace A198943.P13603741250376696647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180002 (n + 1) - 7

end

end A198943.P13603741250376696647

namespace A198943

/-- `2*A180002(n+1)-7` -/
def P13603741250376696647.Spec : Prop :=
  ∀ n, P13603741250376696647.a n = A198943 (n + 1)

end A198943

/-! ## A198943.P6798518969046814352

`A180002(n+1)+A341895(n+1)-3`
-/

namespace A198943.P6798518969046814352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180002 (n + 1) + (A341895 (n + 1) - 3)

end

end A198943.P6798518969046814352

namespace A198943

/-- `A180002(n+1)+A341895(n+1)-3` -/
def P6798518969046814352.Spec : Prop :=
  ∀ n, P6798518969046814352.a n = A198943 (n + 1)

end A198943

/-! ## A198943.P10836369973142852341

`A341895(n+1)+A341895(n+1)--1%A059100(n)`
-/

namespace A198943.P10836369973142852341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341895 (n + 1) + (A341895 (n + 1) - Int.tmod (-1) (A059100 n))

end

end A198943.P10836369973142852341

namespace A198943

/-- `A341895(n+1)+A341895(n+1)--1%A059100(n)` -/
def P10836369973142852341.Spec : Prop :=
  ∀ n, P10836369973142852341.a n = A198943 (n + 1)

end A198943

/-! ## A198943.P18152230189542299035

`A000041(C(2, n+2))+A341895(n+1)+A341895(n+1)`
-/

namespace A198943.P18152230189542299035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) + (A341895 (n + 1) + A341895 (n + 1))

end

end A198943.P18152230189542299035

namespace A198943

/-- `A000041(C(2, n+2))+A341895(n+1)+A341895(n+1)` -/
def P18152230189542299035.Spec : Prop :=
  ∀ n, P18152230189542299035.a n = A198943 (n + 1)

end A198943

/-!
# A198944: G.f.: A(x) = exp( Sum_{n>=1} [Sum_{k=0..n} C(n,k)^3 * x^k*A(x)^k] * x^n/n ).

The programs for A198944, there is no canonical definition to state claims against.
-/

/-! ## A198944.P303957329084233369

`A382717(A148486(n))`
-/

namespace A198944.P303957329084233369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382717 (A148486 n).toNat

end

end A198944.P303957329084233369

/-! ## A198944.P915853453064128920

`A008679(A289709(n+2)-n)`
-/

namespace A198944.P915853453064128920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A289709 (n + 2) - (n : ℤ)).toNat

end

end A198944.P915853453064128920

/-! ## A198944.P11569656396611561860

`A080014(n)+A059995(A007583(n))`
-/

namespace A198944.P11569656396611561860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080014 n + A059995 (A007583 n).toNat

end

end A198944.P11569656396611561860

/-!
# A198945: G.f.: A(x) = exp( Sum_{n>=1} [Sum_{k=0..n} C(n,k)^n * x^k*A(x)^k] * x^n/n ).

The programs for A198945, there is no canonical definition to state claims against.
-/

/-! ## A198945.P11485433334022354426

`A165412(2^n+1)-(n+1)`
-/

namespace A198945.P11485433334022354426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (2 ^ n + 1) - (n + 1 : ℤ)

end

end A198945.P11485433334022354426

/-! ## A198945.P8467619128987685900

`A220413(∑[7*a(n-1)-a(n-2)])` with `a(0)=5, a(1)=0, a(2)=5`
-/

namespace A198945.P8467619128987685900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 0, 5] fun n f1 =>
  7 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A198945.P8467619128987685900

/-!
# A198946: G.f.: A(x) = exp( Sum_{n>=1} [Sum_{k=0..n} C(n,k)^n * A(x)^k] * x^n/n ).

The programs for A198946, there is no canonical definition to state claims against.
-/

/-! ## A198946.P11622929484497221848

`A244592(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A198946.P11622929484497221848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A244592 (a (n - 1)).toNat

end

end A198946.P11622929484497221848

/-!
# A198947: x values in the solution to 11*x^2 - 10 = y^2.

The programs for A198947, there is no canonical definition to state claims against.
-/

/-! ## A198947.P11924022593640927162

`A218395(n)/11`
-/

namespace A198947.P11924022593640927162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218395 n : ℚ) / 11

end

end A198947.P11924022593640927162

/-!
# A198950: G.f.: A(x) = exp( Sum_{n>=1} [Sum_{k=0..n} C(n,k)^3 * x^k / A(x)^k] * x^n/n ).

The programs for A198950, there is no canonical definition to state claims against.
-/

/-! ## A198950.P8085060974685759355

`A129121(a(n-1))+n` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A198950.P8085060974685759355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A129121 (a (n - 1)).toNat + (n : ℤ)

end

end A198950.P8085060974685759355

/-! ## A198950.P14102617472323094982

`A230772(Δ[Δ[A290928(n)]])`
-/

namespace A198950.P14102617472323094982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290928 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230772 (f1 (n + 1) - f1 n).toNat

end

end A198950.P14102617472323094982

/-! ## A198950.P3585096038375792696

`A001462(A040027(n))-char[5]`
-/

namespace A198950.P3585096038375792696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A040027 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A198950.P3585096038375792696

/-! ## A198950.P6119835569737302408

`A122179(A000142(n))+A017988(n)`
-/

namespace A198950.P6119835569737302408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122179 (A000142 n).toNat + A017988 n

end

end A198950.P6119835569737302408

/-!
# A198951: G.f. A(x) satisfies A(x) = (1 + x*A(x))*(1 + x^3*A(x)^3).

The programs for A198951, there is no canonical definition to state claims against.
-/

/-! ## A198951.P1195367161996755632

`A371709(n+1)-A079944(A071253(n))`
-/

namespace A198951.P1195367161996755632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371709 (n + 1) - A079944 (A071253 n).toNat

end

end A198951.P1195367161996755632

/-! ## A198951.P1543462945269850552

`A371709(n+1)-A285007(A293660(n+1))`
-/

namespace A198951.P1543462945269850552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371709 (n + 1) - A285007 (A293660 (n + 1)).toNat

end

end A198951.P1543462945269850552

/-! ## A198951.P14652613782405774923

`A371709(n+1)-A373143(A304937(n+4))`
-/

namespace A198951.P14652613782405774923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371709 (n + 1) - A373143 (A304937 (n + 4)).toNat

end

end A198951.P14652613782405774923

/-! ## A198951.P11017481883029295017

`A371709(n+1)-A252459(A117453(n+5))`
-/

namespace A198951.P11017481883029295017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371709 (n + 1) - A252459 (A117453 (n + 5)).toNat

end

end A198951.P11017481883029295017

/-! ## A198951.P9985520531577101200

`A371709(A032555(n+1))`
-/

namespace A198951.P9985520531577101200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371709 (A032555 (n + 1)).toNat

end

end A198951.P9985520531577101200

/-!
# A198952: G.f.: Sum_{n>=0} n! * 3^(n*(n-1)/2) * x^n / Product_{k=1..n} (1 + k*3^k*x).

The programs for A198952, there is no canonical definition to state claims against.
-/

/-! ## A198952.P1413611545809109027

`ceil(3^(n-1))*A277604(∑[floor(3^(n-1))])`
-/

namespace A198952.P1413611545809109027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A277604 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A198952.P1413611545809109027

/-!
# A198953: G.f. satisfies A(x) = (1 + x*A(x)) * (1 + x*A(x)^3).

The programs for A198953, there is no canonical definition to state claims against.
-/

/-! ## A198953.P4129123153891770702

`A212392(n+1)+A014021(A000798(n))`
-/

namespace A198953.P4129123153891770702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212392 (n + 1) + A014021 (A000798 n).toNat

end

end A198953.P4129123153891770702

/-! ## A198953.P2007116067994300041

`A286135(A326250(n))+A212392(n+1)`
-/

namespace A198953.P2007116067994300041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286135 (A326250 n).toNat + A212392 (n + 1)

end

end A198953.P2007116067994300041

/-!
# A198954: Expansion of the rotational partition function for a heteronuclear diatomic molecule.

The programs for A198954, the canonical program `A198954.P2690440958221023727` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198954 has offset 0).

The definition of A198954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A198954.P18024022753388863961

`abs(A010816(n))`
-/

namespace A198954.P18024022753388863961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010816 n|

end

end A198954.P18024022753388863961

namespace A198954

/-- `abs(A010816(n))` -/
def P18024022753388863961.Spec : Prop :=
  ∀ n, P18024022753388863961.a n = A198954 n

end A198954

/-! ## A198954.P2690440958221023727

`A053187(2*n+1)-A053187(2*n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A198954

/-- `A053187(2*n+1)-A053187(2*n)` -/
def P2690440958221023727.Spec : Prop :=
  ∀ n, P2690440958221023727.a n = A198954 n

theorem P2690440958221023727.correct : P2690440958221023727.Spec := by
  intro n
  simp only [A198954]

end A198954

/-! ## A198954.P6870546077684260503

`Δ[round(sqrt(2*n))²]`
-/

namespace A198954.P6870546077684260503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198954.P6870546077684260503

namespace A198954

/-- `Δ[round(sqrt(2*n))²]` -/
def P6870546077684260503.Spec : Prop :=
  ∀ n, P6870546077684260503.a n = A198954 n

end A198954

/-! ## A198954.P7267179541425706824

`abs(A133089(n))`
-/

namespace A198954.P7267179541425706824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133089 n|

end

end A198954.P7267179541425706824

namespace A198954

/-- `abs(A133089(n))` -/
def P7267179541425706824.Spec : Prop :=
  ∀ n, P7267179541425706824.a n = A198954 n

end A198954

/-! ## A198954.P17135392198443834248

`abs(Δ[A274093(n)])`
-/

namespace A198954.P17135392198443834248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274093 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A198954.P17135392198443834248

namespace A198954

/-- `abs(Δ[A274093(n)])` -/
def P17135392198443834248.Spec : Prop :=
  ∀ n, P17135392198443834248.a n = A198954 n

end A198954

/-! ## A198954.P5416019021892502595

`abs(Δ[A274094(n)])`
-/

namespace A198954.P5416019021892502595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A198954.P5416019021892502595

namespace A198954

/-- `abs(Δ[A274094(n)])` -/
def P5416019021892502595.Spec : Prop :=
  ∀ n, P5416019021892502595.a n = A198954 n

end A198954

/-! ## A198954.P10489653701956242391

`char[∑[n]]*A099375(n)`
-/

namespace A198954.P10489653701956242391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A099375 n

end

end A198954.P10489653701956242391

namespace A198954

/-- `char[∑[n]]*A099375(n)` -/
def P10489653701956242391.Spec : Prop :=
  ∀ n, P10489653701956242391.a n = A198954 n

end A198954

/-! ## A198954.P3200885745982974120

`char[∑[n]]*A110813(n)`
-/

namespace A198954.P3200885745982974120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A110813 n

end

end A198954.P3200885745982974120

namespace A198954

/-- `char[∑[n]]*A110813(n)` -/
def P3200885745982974120.Spec : Prop :=
  ∀ n, P3200885745982974120.a n = A198954 n

end A198954

/-! ## A198954.P7428970306139299105

`char[∑[n]]*A131507(n)`
-/

namespace A198954.P7428970306139299105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A131507 n

end

end A198954.P7428970306139299105

namespace A198954

/-- `char[∑[n]]*A131507(n)` -/
def P7428970306139299105.Spec : Prop :=
  ∀ n, P7428970306139299105.a n = A198954 n

end A198954

/-! ## A198954.P7428817780587243954

`abs(Δ[A038608(round(sqrt(2*n)))])`
-/

namespace A198954.P7428817780587243954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A198954.P7428817780587243954

namespace A198954

/-- `abs(Δ[A038608(round(sqrt(2*n)))])` -/
def P7428817780587243954.Spec : Prop :=
  ∀ n, P7428817780587243954.a n = A198954 n

end A198954

/-! ## A198954.P4317650601576910208

`abs(Δ[A181983(round(sqrt(2*n)))])`
-/

namespace A198954.P4317650601576910208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A198954.P4317650601576910208

namespace A198954

/-- `abs(Δ[A181983(round(sqrt(2*n)))])` -/
def P4317650601576910208.Spec : Prop :=
  ∀ n, P4317650601576910208.a n = A198954 n

end A198954

/-! ## A198954.P3747494140842363955

`char[∑[n]]*A118413(n+1)`
-/

namespace A198954.P3747494140842363955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A118413 (n + 1)

end

end A198954.P3747494140842363955

namespace A198954

/-- `char[∑[n]]*A118413(n+1)` -/
def P3747494140842363955.Spec : Prop :=
  ∀ n, P3747494140842363955.a n = A198954 n

end A198954

/-! ## A198954.P18189988186073283119

`char[∑[n]]*A128076(n+1)`
-/

namespace A198954.P18189988186073283119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A128076 (n + 1)

end

end A198954.P18189988186073283119

namespace A198954

/-- `char[∑[n]]*A128076(n+1)` -/
def P18189988186073283119.Spec : Prop :=
  ∀ n, P18189988186073283119.a n = A198954 n

end A198954

/-! ## A198954.P9524317467013269868

`char[∑[n]]*A130303(n+1)`
-/

namespace A198954.P9524317467013269868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A130303 (n + 1)

end

end A198954.P9524317467013269868

namespace A198954

/-- `char[∑[n]]*A130303(n+1)` -/
def P9524317467013269868.Spec : Prop :=
  ∀ n, P9524317467013269868.a n = A198954 n

end A198954

/-! ## A198954.P3864765384350591094

`char[∑[n]]*A132751(n+1)`
-/

namespace A198954.P3864765384350591094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A132751 (n + 1)

end

end A198954.P3864765384350591094

namespace A198954

/-- `char[∑[n]]*A132751(n+1)` -/
def P3864765384350591094.Spec : Prop :=
  ∀ n, P3864765384350591094.a n = A198954 n

end A198954

/-! ## A198954.P8491041184727863888

`char[∑[n]]*A132778(n+1)`
-/

namespace A198954.P8491041184727863888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A132778 (n + 1)

end

end A198954.P8491041184727863888

namespace A198954

/-- `char[∑[n]]*A132778(n+1)` -/
def P8491041184727863888.Spec : Prop :=
  ∀ n, P8491041184727863888.a n = A198954 n

end A198954

/-! ## A198954.P15035944432853981172

`char[∑[n]]*A134483(n+1)`
-/

namespace A198954.P15035944432853981172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A134483 (n + 1)

end

end A198954.P15035944432853981172

namespace A198954

/-- `char[∑[n]]*A134483(n+1)` -/
def P15035944432853981172.Spec : Prop :=
  ∀ n, P15035944432853981172.a n = A198954 n

end A198954

/-! ## A198954.P9587296900406279509

`char[∑[n]]*A135764(n+1)`
-/

namespace A198954.P9587296900406279509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A135764 (n + 1)

end

end A198954.P9587296900406279509

namespace A198954

/-- `char[∑[n]]*A135764(n+1)` -/
def P9587296900406279509.Spec : Prop :=
  ∀ n, P9587296900406279509.a n = A198954 n

end A198954

/-! ## A198954.P3788800938311320018

`char[∑[n]]*A143956(n+1)`
-/

namespace A198954.P3788800938311320018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A143956 (n + 1)

end

end A198954.P3788800938311320018

namespace A198954

/-- `char[∑[n]]*A143956(n+1)` -/
def P3788800938311320018.Spec : Prop :=
  ∀ n, P3788800938311320018.a n = A198954 n

end A198954

/-! ## A198954.P4646347568741665597

`char[∑[n]]*A162610(n+1)`
-/

namespace A198954.P4646347568741665597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A162610 (n + 1)

end

end A198954.P4646347568741665597

namespace A198954

/-- `char[∑[n]]*A162610(n+1)` -/
def P4646347568741665597.Spec : Prop :=
  ∀ n, P4646347568741665597.a n = A198954 n

end A198954

/-!
# A198956: q-expansion of modular form psi_0^4/t_{3B}.

The programs for A198956, the canonical program `A198956.P12263558962450327454` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198956 has offset 0).

The definition of A198956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198956.P12263558962450327454

`∑{d}[n, #*n²%(3*#²)]`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198956

/-- `∑{d}[n, #*n²%(3*#²)]` -/
def P12263558962450327454.Spec : Prop :=
  ∀ n, (P12263558962450327454.a n : ℤ) = A198956 n

theorem P12263558962450327454.correct : P12263558962450327454.Spec := by
  intro n
  simp only [A198956]

end A198956

/-! ## A198956.P18243993596923343693

`A055012(n)+A004198(A000255(n+1))`
-/

namespace A198956.P18243993596923343693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055012 n + A004198 (A000255 (n + 1)).toNat

end

end A198956.P18243993596923343693

namespace A198956

/-- `A055012(n)+A004198(A000255(n+1))` -/
def P18243993596923343693.Spec : Prop :=
  ∀ n, P18243993596923343693.a n = A198956 n

end A198956

/-!
# A198957: G.f. satisfies: A(x) = (1 + x*A(x))*(1 + x^2*A(x)^4).

The programs for A198957, there is no canonical definition to state claims against.
-/

/-! ## A198957.P12031917298150325232

`A212386(n)+A057364(A005753(n+1))`
-/

namespace A198957.P12031917298150325232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212386 n + A057364 (A005753 (n + 1)).toNat

end

end A198957.P12031917298150325232

/-! ## A198957.P11991222491324252732

`A212363(n+1)+A057364(A005753(n+1))`
-/

namespace A198957.P11991222491324252732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (n + 1) + A057364 (A005753 (n + 1)).toNat

end

end A198957.P11991222491324252732

/-! ## A198957.P10654313362977497118

`A261585(A153234(n))+A057364(A005753(n+1))`
-/

namespace A198957.P10654313362977497118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A153234 n).toNat + A057364 (A005753 (n + 1)).toNat

end

end A198957.P10654313362977497118

/-! ## A198957.P966972547795359391

`A057364(A005753(n+1))+A034943(A057364(n+1))`
-/

namespace A198957.P966972547795359391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057364 (A005753 (n + 1)).toNat + A034943 (A057364 (n + 1)).toNat

end

end A198957.P966972547795359391

/-!
# A198958: q-expansion of modular form psi_0^6/t_{3B}^2.

The programs for A198958, there is no canonical definition to state claims against.
-/

/-! ## A198958.P9773707032152466352

`∑[∑[A010459(A203320(n))]]`
-/

namespace A198958.P9773707032152466352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010459 (A203320 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198958.P9773707032152466352

/-! ## A198958.P14123973683833193902

`A085861(xor(A081388(n+1), A117662(3*n)))`
-/

namespace A198958.P14123973683833193902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085861 (Int.xor (A081388 (n + 1)) (A117662 (3 * n))).toNat

end

end A198958.P14123973683833193902

/-!
# A198959: a(1) = 2, a(n+1) = a(n)^2 - n.

The programs for A198959, there is no canonical definition to state claims against.
-/

/-! ## A198959.P11147685786956389901

`a(n-1)²-n` with `a(0)=2`
-/

namespace A198959.P11147685786956389901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) ^ 2 - (n : ℤ)

end

end A198959.P11147685786956389901

/-! ## A198959.P5562925568443726575

`a(n-1)^2-n` with `a(0)=2`
-/

namespace A198959.P5562925568443726575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) ^ 2 - (n : ℤ)

end

end A198959.P5562925568443726575

/-! ## A198959.P10912669695925440724

`root(a(n-1), 1/2)-n` with `a(0)=2`
-/

namespace A198959.P10912669695925440724
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) ^ (1 / ((1 : ℚ) / 2 : ℝ)) - (n : ℝ)

end

end A198959.P10912669695925440724

/-! ## A198959.P15457623054173678676

`a(n-1)*a(n-1)-n` with `a(0)=2`
-/

namespace A198959.P15457623054173678676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * a (n - 1) - (n : ℤ)

end

end A198959.P15457623054173678676

/-! ## A198959.P1312865976033189785

`a(n-1)/(floor(1/a(n-1))+1/a(n-1))-n` with `a(0)=2`
-/

namespace A198959.P1312865976033189785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / ((⌊1 / a (n - 1)⌋ : ℚ) + 1 / a (n - 1)) - (n : ℚ)

end

end A198959.P1312865976033189785

/-!
# A198960: a(n) = 3*9^n-1.

The programs for A198960, the canonical program `A198960.P11843439601564142188` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198960 has offset 0).

The definition of A198960 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*9^n-1` (program `A198960.P11843439601564142188`, by `A198960.P11843439601564142188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198960.P11843439601564142188

`3*9^n-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198960

/-- `3*9^n-1` -/
def P11843439601564142188.Spec : Prop :=
  ∀ n, P11843439601564142188.a n = A198960 n

theorem P11843439601564142188.correct : P11843439601564142188.Spec := by
  intro n
  simp only [A198960]

end A198960

/-! ## A198960.P1496711683767275519

`2*A096053(n)`
-/

namespace A198960.P1496711683767275519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096053 n

end

end A198960.P1496711683767275519

namespace A198960

/-- `2*A096053(n)` -/
def P1496711683767275519.Spec : Prop :=
  ∀ n, P1496711683767275519.a n = A198960 n

end A198960

/-! ## A198960.P3256276182222829739

`xor(1, 3*9^n)`
-/

namespace A198960.P3256276182222829739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * 9 ^ n)

end

end A198960.P3256276182222829739

namespace A198960

/-- `xor(1, 3*9^n)` -/
def P3256276182222829739.Spec : Prop :=
  ∀ n, (P3256276182222829739.a n : ℤ) = A198960 n

end A198960

/-! ## A198960.P17148060559576282868

`and(3*9^n, -6)`
-/

namespace A198960.P17148060559576282868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * 9 ^ n : ℤ) (-6)

end

end A198960.P17148060559576282868

namespace A198960

/-- `and(3*9^n, -6)` -/
def P17148060559576282868.Spec : Prop :=
  ∀ n, P17148060559576282868.a n = A198960 n

end A198960

/-! ## A198960.P9864486751158243487

`ogf((2+6x)/(1-10x+9x^2))`
-/

namespace A198960.P9864486751158243487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6] [1, -10, 9] n

end

end A198960.P9864486751158243487

namespace A198960

/-- `ogf((2+6x)/(1-10x+9x^2))` -/
def P9864486751158243487.Spec : Prop :=
  ∀ n, P9864486751158243487.a n = A198960 n

end A198960

/-! ## A198960.P1597676000201104619

`record[3^xor(1, n)-1]`
-/

namespace A198960.P1597676000201104619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ Nat.xor 1 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198960.P1597676000201104619

namespace A198960

/-- `record[3^xor(1, n)-1]` -/
def P1597676000201104619.Spec : Prop :=
  ∀ n, P1597676000201104619.a n = A198960 n

end A198960

/-! ## A198960.P10839216536011935385

`record[xor(1, 3^xor(1, n))]`
-/

namespace A198960.P10839216536011935385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 ^ Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198960.P10839216536011935385

namespace A198960

/-- `record[xor(1, 3^xor(1, n))]` -/
def P10839216536011935385.Spec : Prop :=
  ∀ n, (P10839216536011935385.a n : ℤ) = A198960 n

end A198960

/-! ## A198960.P4471316792228969825

`∑[9*a(n-1)]` with `a(0)=2, a(1)=24`
-/

namespace A198960.P4471316792228969825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 24] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198960.P4471316792228969825

namespace A198960

/-- `∑[9*a(n-1)]` -/
def P4471316792228969825.Spec : Prop :=
  ∀ n, (P4471316792228969825.a n : ℤ) = A198960 n

end A198960

/-! ## A198960.P16778322785029105716

`record[-((-3)^(n+1)+1)]`
-/

namespace A198960.P16778322785029105716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-3) ^ (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198960.P16778322785029105716

namespace A198960

/-- `record[-((-3)^(n+1)+1)]` -/
def P16778322785029105716.Spec : Prop :=
  ∀ n, P16778322785029105716.a n = A198960 n

end A198960

/-! ## A198960.P9185834508134825931

`lcm(2, (-3)^(2*n+1)+1)`
-/

namespace A198960.P9185834508134825931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((-3) ^ (2 * n + 1) + 1)

end

end A198960.P9185834508134825931

namespace A198960

/-- `lcm(2, (-3)^(2*n+1)+1)` -/
def P9185834508134825931.Spec : Prop :=
  ∀ n, (P9185834508134825931.a n : ℤ) = A198960 n

end A198960

/-! ## A198960.P3125656442851584172

`A024023(Δ[n²])`
-/

namespace A198960.P3125656442851584172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198960.P3125656442851584172

namespace A198960

/-- `A024023(Δ[n²])` -/
def P3125656442851584172.Spec : Prop :=
  ∀ n, P3125656442851584172.a n = A198960 n

end A198960

/-! ## A198960.P13502338419135956981

`A084182(Δ[n²])`
-/

namespace A198960.P13502338419135956981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084182 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198960.P13502338419135956981

namespace A198960

/-- `A084182(Δ[n²])` -/
def P13502338419135956981.Spec : Prop :=
  ∀ n, P13502338419135956981.a n = A198960 n

end A198960

/-! ## A198960.P8208684556430874318

`A102345(Δ[n²])`
-/

namespace A198960.P8208684556430874318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102345 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198960.P8208684556430874318

namespace A198960

/-- `A102345(Δ[n²])` -/
def P8208684556430874318.Spec : Prop :=
  ∀ n, P8208684556430874318.a n = A198960 n

end A198960

/-! ## A198960.P1366822893003139159

`A103453(Δ[n²])`
-/

namespace A198960.P1366822893003139159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103453 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198960.P1366822893003139159

namespace A198960

/-- `A103453(Δ[n²])` -/
def P1366822893003139159.Spec : Prop :=
  ∀ n, P1366822893003139159.a n = A198960 n

end A198960

/-! ## A198960.P10522638074804097676

`A322116(Δ[n²])`
-/

namespace A198960.P10522638074804097676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322116 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198960.P10522638074804097676

namespace A198960

/-- `A322116(Δ[n²])` -/
def P10522638074804097676.Spec : Prop :=
  ∀ n, P10522638074804097676.a n = A198960 n

end A198960

/-! ## A198960.P5681129605497403818

`Δ[2*A004004(n)]`
-/

namespace A198960.P5681129605497403818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198960.P5681129605497403818

namespace A198960

/-- `Δ[2*A004004(n)]` -/
def P5681129605497403818.Spec : Prop :=
  ∀ n, P5681129605497403818.a n = A198960 n

end A198960

/-! ## A198960.P7204715634386153294

`2*(A199560(n)-1)`
-/

namespace A198960.P7204715634386153294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199560 n - 1)

end

end A198960.P7204715634386153294

namespace A198960

/-- `2*(A199560(n)-1)` -/
def P7204715634386153294.Spec : Prop :=
  ∀ n, P7204715634386153294.a n = A198960 n

end A198960

/-! ## A198960.P11158557757618879540

`2*A164907(2*n)`
-/

namespace A198960.P11158557757618879540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164907 (2 * n)

end

end A198960.P11158557757618879540

namespace A198960

/-- `2*A164907(2*n)` -/
def P11158557757618879540.Spec : Prop :=
  ∀ n, P11158557757618879540.a n = A198960 n

end A198960

/-! ## A198960.P6621403049512081907

`2*A003462(2*n+1)`
-/

namespace A198960.P6621403049512081907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003462 (2 * n + 1)

end

end A198960.P6621403049512081907

namespace A198960

/-- `2*A003462(2*n+1)` -/
def P6621403049512081907.Spec : Prop :=
  ∀ n, P6621403049512081907.a n = A198960 n

end A198960

/-!
# A198961: a(n) = 4*9^n-1.

The programs for A198961, the canonical program `A198961.P5310545996620527682` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198961 has offset 0).

The definition of A198961 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*9^n-1` (program `A198961.P5310545996620527682`, by `A198961.P5310545996620527682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198961.P5310545996620527682

`4*9^n-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198961

/-- `4*9^n-1` -/
def P5310545996620527682.Spec : Prop :=
  ∀ n, P5310545996620527682.a n = A198961 n

theorem P5310545996620527682.correct : P5310545996620527682.Spec := by
  intro n
  simp only [A198961]

end A198961

/-! ## A198961.P1466182247152028616

`xor(7, 4*9^n)`
-/

namespace A198961.P1466182247152028616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 (4 * 9 ^ n)

end

end A198961.P1466182247152028616

namespace A198961

/-- `xor(7, 4*9^n)` -/
def P1466182247152028616.Spec : Prop :=
  ∀ n, (P1466182247152028616.a n : ℤ) = A198961 n

end A198961

/-! ## A198961.P10095491331522072049

`ogf((3+5x)/(1-10x+9x^2))`
-/

namespace A198961.P10095491331522072049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5] [1, -10, 9] n

end

end A198961.P10095491331522072049

namespace A198961

/-- `ogf((3+5x)/(1-10x+9x^2))` -/
def P10095491331522072049.Spec : Prop :=
  ∀ n, P10095491331522072049.a n = A198961 n

end A198961

/-! ## A198961.P9169006772824587588

`∑[9*a(n-1)]` with `a(0)=3, a(1)=32`
-/

namespace A198961.P9169006772824587588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 32] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198961.P9169006772824587588

namespace A198961

/-- `∑[9*a(n-1)]` -/
def P9169006772824587588.Spec : Prop :=
  ∀ n, (P9169006772824587588.a n : ℤ) = A198961 n

end A198961

/-! ## A198961.P10205166574314998023

`record[-xor(2, 3*a(n-1))]` with `a(0)=3`
-/

namespace A198961.P10205166574314998023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  -Int.xor 2 (3 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198961.P10205166574314998023

namespace A198961

/-- `record[-xor(2, 3*a(n-1))]` -/
def P10205166574314998023.Spec : Prop :=
  ∀ n, P10205166574314998023.a n = A198961 n

end A198961

/-! ## A198961.P17244022084160023294

`A171498(2*n)`
-/

namespace A198961.P17244022084160023294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171498 (2 * n)

end

end A198961.P17244022084160023294

namespace A198961

/-- `A171498(2*n)` -/
def P17244022084160023294.Spec : Prop :=
  ∀ n, P17244022084160023294.a n = A198961 n

end A198961

/-! ## A198961.P9166080689207623767

`A060647(4*n+1)`
-/

namespace A198961.P9166080689207623767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060647 (4 * n + 1)

end

end A198961.P9166080689207623767

namespace A198961

/-- `A060647(4*n+1)` -/
def P9166080689207623767.Spec : Prop :=
  ∀ n, P9166080689207623767.a n = A198961 n

end A198961

/-! ## A198961.P17434719350712019531

`A358027(4*n+2)`
-/

namespace A198961.P17434719350712019531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358027 (4 * n + 2)

end

end A198961.P17434719350712019531

namespace A198961

/-- `A358027(4*n+2)` -/
def P17434719350712019531.Spec : Prop :=
  ∀ n, P17434719350712019531.a n = A198961 n

end A198961

/-! ## A198961.P8089703435171119648

`A140576(8*n+4)`
-/

namespace A198961.P8089703435171119648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140576 (8 * n + 4)

end

end A198961.P8089703435171119648

namespace A198961

/-- `A140576(8*n+4)` -/
def P8089703435171119648.Spec : Prop :=
  ∀ n, P8089703435171119648.a n = A198961 n

end A198961

/-! ## A198961.P7146305734298437693

`A220944(3*n+n+1)`
-/

namespace A198961.P7146305734298437693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220944 (3 * n + (n + 1))

end

end A198961.P7146305734298437693

namespace A198961

/-- `A220944(3*n+n+1)` -/
def P7146305734298437693.Spec : Prop :=
  ∀ n, P7146305734298437693.a n = A198961 n

end A198961

/-! ## A198961.P12839781425168860703

`A135908(A016957(n))`
-/

namespace A198961.P12839781425168860703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135908 (A016957 n).toNat

end

end A198961.P12839781425168860703

namespace A198961

/-- `A135908(A016957(n))` -/
def P12839781425168860703.Spec : Prop :=
  ∀ n, P12839781425168860703.a n = A198961 n

end A198961

/-! ## A198961.P6101076822132698340

`A048473(n)*A052919(n+1)`
-/

namespace A198961.P6101076822132698340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n * A052919 (n + 1)

end

end A198961.P6101076822132698340

namespace A198961

/-- `A048473(n)*A052919(n+1)` -/
def P6101076822132698340.Spec : Prop :=
  ∀ n, P6101076822132698340.a n = A198961 n

end A198961

/-! ## A198961.P11077546005620601659

`A048473(n)*A100702(n+1)`
-/

namespace A198961.P11077546005620601659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n * A100702 (n + 1)

end

end A198961.P11077546005620601659

namespace A198961

/-- `A048473(n)*A100702(n+1)` -/
def P11077546005620601659.Spec : Prop :=
  ∀ n, P11077546005620601659.a n = A198961 n

end A198961

/-! ## A198961.P15097244607881762759

`A081632(n)*A174132(n+1)`
-/

namespace A198961.P15097244607881762759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081632 n * A174132 (n + 1)

end

end A198961.P15097244607881762759

namespace A198961

/-- `A081632(n)*A174132(n+1)` -/
def P15097244607881762759.Spec : Prop :=
  ∀ n, P15097244607881762759.a n = A198961 n

end A198961

/-! ## A198961.P3631482597232804791

`A052919(n+1)*A154992(n+2)`
-/

namespace A198961.P3631482597232804791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052919 (n + 1) * A154992 (n + 2)

end

end A198961.P3631482597232804791

namespace A198961

/-- `A052919(n+1)*A154992(n+2)` -/
def P3631482597232804791.Spec : Prop :=
  ∀ n, P3631482597232804791.a n = A198961 n

end A198961

/-! ## A198961.P3778116780507898265

`A048473(n)*A062547(2*n+1)`
-/

namespace A198961.P3778116780507898265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 n * A062547 (2 * n + 1)

end

end A198961.P3778116780507898265

namespace A198961

/-- `A048473(n)*A062547(2*n+1)` -/
def P3778116780507898265.Spec : Prop :=
  ∀ n, P3778116780507898265.a n = A198961 n

end A198961

/-! ## A198961.P9401245812893671205

`A052919(n+1)*A062547(2*n)`
-/

namespace A198961.P9401245812893671205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052919 (n + 1) * A062547 (2 * n)

end

end A198961.P9401245812893671205

namespace A198961

/-- `A052919(n+1)*A062547(2*n)` -/
def P9401245812893671205.Spec : Prop :=
  ∀ n, P9401245812893671205.a n = A198961 n

end A198961

/-! ## A198961.P1586101966644753262

`A062547(2*n)*A100702(n+1)`
-/

namespace A198961.P1586101966644753262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062547 (2 * n) * A100702 (n + 1)

end

end A198961.P1586101966644753262

namespace A198961

/-- `A062547(2*n)*A100702(n+1)` -/
def P1586101966644753262.Spec : Prop :=
  ∀ n, P1586101966644753262.a n = A198961 n

end A198961

/-! ## A198961.P4664231510624916963

`(A198966(n)-1)/2`
-/

namespace A198961.P4664231510624916963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198966 n - 1 : ℚ) / 2

end

end A198961.P4664231510624916963

namespace A198961

/-- `(A198966(n)-1)/2` -/
def P4664231510624916963.Spec : Prop :=
  ∀ n, P4664231510624916963.a n = (A198961 n : ℚ)

end A198961

/-!
# A198962: a(n) = 5*9^n-1.

The programs for A198962, the canonical program `A198962.P14201390840231293366` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198962 has offset 0).

The definition of A198962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*9^n-1` (program `A198962.P14201390840231293366`, by `A198962.P14201390840231293366.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198962.P14201390840231293366

`5*9^n-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198962

/-- `5*9^n-1` -/
def P14201390840231293366.Spec : Prop :=
  ∀ n, P14201390840231293366.a n = A198962 n

theorem P14201390840231293366.correct : P14201390840231293366.Spec := by
  intro n
  simp only [A198962]

end A198962

/-! ## A198962.P10779735445265631123

`4*A138894(n)`
-/

namespace A198962.P10779735445265631123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A138894 n

end

end A198962.P10779735445265631123

namespace A198962

/-- `4*A138894(n)` -/
def P10779735445265631123.Spec : Prop :=
  ∀ n, P10779735445265631123.a n = A198962 n

end A198962

/-! ## A198962.P12070824883938797953

`xor(1, 5*9^n)`
-/

namespace A198962.P12070824883938797953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (5 * 9 ^ n)

end

end A198962.P12070824883938797953

namespace A198962

/-- `xor(1, 5*9^n)` -/
def P12070824883938797953.Spec : Prop :=
  ∀ n, (P12070824883938797953.a n : ℤ) = A198962 n

end A198962

/-! ## A198962.P4326252457744580795

`ogf((4+4x)/(1-10x+9x^2))`
-/

namespace A198962.P4326252457744580795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4] [1, -10, 9] n

end

end A198962.P4326252457744580795

namespace A198962

/-- `ogf((4+4x)/(1-10x+9x^2))` -/
def P4326252457744580795.Spec : Prop :=
  ∀ n, P4326252457744580795.a n = A198962 n

end A198962

/-! ## A198962.P2794019104126019210

`and(5*9^n, -2)`
-/

namespace A198962.P2794019104126019210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (5 * 9 ^ n : ℤ) (-2)

end

end A198962.P2794019104126019210

namespace A198962

/-- `and(5*9^n, -2)` -/
def P2794019104126019210.Spec : Prop :=
  ∀ n, P2794019104126019210.a n = A198962 n

end A198962

/-! ## A198962.P4961363546932285469

`∑[9*a(n-1)]` with `a(0)=4, a(1)=40`
-/

namespace A198962.P4961363546932285469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 40] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198962.P4961363546932285469

namespace A198962

/-- `∑[9*a(n-1)]` -/
def P4961363546932285469.Spec : Prop :=
  ∀ n, (P4961363546932285469.a n : ℤ) = A198962 n

end A198962

/-! ## A198962.P15448182226659486741

`lcm(4, floor(5/4*9^n))`
-/

namespace A198962.P15448182226659486741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 ⌊(5 : ℚ) / 4 * (9 ^ n : ℚ)⌋

end

end A198962.P15448182226659486741

namespace A198962

/-- `lcm(4, floor(5/4*9^n))` -/
def P15448182226659486741.Spec : Prop :=
  ∀ n, (P15448182226659486741.a n : ℤ) = A198962 n

end A198962

/-! ## A198962.P201645207472444279

`9*(a(n-1)+8/9)` with `a(0)=4`
-/

namespace A198962.P201645207472444279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  9 * (a (n - 1) + (8 : ℚ) / 9)

end

end A198962.P201645207472444279

namespace A198962

/-- `9*(a(n-1)+8/9)` -/
def P201645207472444279.Spec : Prop :=
  ∀ n, P201645207472444279.a n = (A198962 n : ℚ)

theorem P201645207472444279.correct : P201645207472444279.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198962, Nat.add_sub_cancel, A198962.P201645207472444279.a, A198962.P14201390840231293366.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198962, Nat.add_sub_cancel, A198962.P201645207472444279.a, A198962.P14201390840231293366.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198962

/-! ## A198962.P249578994163020105

`or(4, 9*a(n-1)+4)` with `a(0)=4`
-/

namespace A198962.P249578994163020105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.lor 4 (9 * a (n - 1) + 4)

end

end A198962.P249578994163020105

namespace A198962

/-- `or(4, 9*a(n-1)+4)` -/
def P249578994163020105.Spec : Prop :=
  ∀ n, (P249578994163020105.a n : ℤ) = A198962 n

end A198962

/-! ## A198962.P14103280716655492013

`record[-(3*a(n-1)+4)]` with `a(0)=4`
-/

namespace A198962.P14103280716655492013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  -(3 * f1 (n - 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198962.P14103280716655492013

namespace A198962

/-- `record[-(3*a(n-1)+4)]` -/
def P14103280716655492013.Spec : Prop :=
  ∀ n, P14103280716655492013.a n = A198962 n

end A198962

/-! ## A198962.P1979791498200374177

`floor(a(n-1)+8*(a(n-1)+1))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A198962.P1979791498200374177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 8 * (a (n - 1) + 1)

end

end A198962.P1979791498200374177

namespace A198962

/-- `floor(a(n-1)+8*(a(n-1)+1))` -/
def P1979791498200374177.Spec : Prop :=
  ∀ n, (P1979791498200374177.a n : ℤ) = A198962 n

theorem P1979791498200374177.correct : P1979791498200374177.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198962, Nat.add_sub_cancel, A198962.P1979791498200374177.a, A198962.P14201390840231293366.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198962, Nat.add_sub_cancel, A198962.P1979791498200374177.a, A198962.P14201390840231293366.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198962

/-! ## A198962.P7245014302166962070

`A198643(2*n)`
-/

namespace A198962.P7245014302166962070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198643 (2 * n)

end

end A198962.P7245014302166962070

namespace A198962

/-- `A198643(2*n)` -/
def P7245014302166962070.Spec : Prop :=
  ∀ n, P7245014302166962070.a n = A198962 n

end A198962

/-! ## A198962.P10771953783003553970

`2*A255043(n)`
-/

namespace A198962.P10771953783003553970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255043 n

end

end A198962.P10771953783003553970

namespace A198962

/-- `2*A255043(n)` -/
def P10771953783003553970.Spec : Prop :=
  ∀ n, P10771953783003553970.a n = A198962 n

end A198962

/-! ## A198962.P9573390762233356468

`∑[4*A003952(n)]`
-/

namespace A198962.P9573390762233356468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A003952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198962.P9573390762233356468

namespace A198962

/-- `∑[4*A003952(n)]` -/
def P9573390762233356468.Spec : Prop :=
  ∀ n, P9573390762233356468.a n = A198962 n

end A198962

/-! ## A198962.P15397701503815796682

`2*(A135423(n)-1)`
-/

namespace A198962.P15397701503815796682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A135423 n - 1)

end

end A198962.P15397701503815796682

namespace A198962

/-- `2*(A135423(n)-1)` -/
def P15397701503815796682.Spec : Prop :=
  ∀ n, P15397701503815796682.a n = A198962 n

end A198962

/-! ## A198962.P3808906816376577624

`A079362(4*n+2)`
-/

namespace A198962.P3808906816376577624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079362 (4 * n + 2)

end

end A198962.P3808906816376577624

namespace A198962

/-- `A079362(4*n+2)` -/
def P3808906816376577624.Spec : Prop :=
  ∀ n, P3808906816376577624.a n = A198962 n

end A198962

/-! ## A198962.P6786901008750649259

`4*(A137483(n)-1)`
-/

namespace A198962.P6786901008750649259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A137483 n - 1)

end

end A198962.P6786901008750649259

namespace A198962

/-- `4*(A137483(n)-1)` -/
def P6786901008750649259.Spec : Prop :=
  ∀ n, P6786901008750649259.a n = A198962 n

end A198962

/-! ## A198962.P3960721351664046482

`A181655(4*n+2)`
-/

namespace A198962.P3960721351664046482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181655 (4 * n + 2)

end

end A198962.P3960721351664046482

namespace A198962

/-- `A181655(4*n+2)` -/
def P3960721351664046482.Spec : Prop :=
  ∀ n, P3960721351664046482.a n = A198962 n

end A198962

/-! ## A198962.P6605143504036708905

`4*A060925(2*n)`
-/

namespace A198962.P6605143504036708905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A060925 (2 * n)

end

end A198962.P6605143504036708905

namespace A198962

/-- `4*A060925(2*n)` -/
def P6605143504036708905.Spec : Prop :=
  ∀ n, P6605143504036708905.a n = A198962 n

end A198962

/-! ## A198962.P2935284071439725650

`4*A081250(2*n)`
-/

namespace A198962.P2935284071439725650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A081250 (2 * n)

end

end A198962.P2935284071439725650

namespace A198962

/-- `4*A081250(2*n)` -/
def P2935284071439725650.Spec : Prop :=
  ∀ n, P2935284071439725650.a n = A198962 n

end A198962

/-!
# A198963: a(n) = 6*9^n-1.

The programs for A198963, the canonical program `A198963.P17210017036911163647` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198963 has offset 0).

The definition of A198963 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*9^n-1` (program `A198963.P17210017036911163647`, by `A198963.P17210017036911163647.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198963.P17210017036911163647

`6*9^n-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198963

/-- `6*9^n-1` -/
def P17210017036911163647.Spec : Prop :=
  ∀ n, P17210017036911163647.a n = A198963 n

theorem P17210017036911163647.correct : P17210017036911163647.Spec := by
  intro n
  simp only [A198963]

end A198963

/-! ## A198963.P7183058290410722389

`xor(3, 6*9^n)`
-/

namespace A198963.P7183058290410722389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (6 * 9 ^ n)

end

end A198963.P7183058290410722389

namespace A198963

/-- `xor(3, 6*9^n)` -/
def P7183058290410722389.Spec : Prop :=
  ∀ n, (P7183058290410722389.a n : ℤ) = A198963 n

end A198963

/-! ## A198963.P8975130610439833764

`ogf((5+3x)/(1-10x+9x^2))`
-/

namespace A198963.P8975130610439833764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3] [1, -10, 9] n

end

end A198963.P8975130610439833764

namespace A198963

/-- `ogf((5+3x)/(1-10x+9x^2))` -/
def P8975130610439833764.Spec : Prop :=
  ∀ n, P8975130610439833764.a n = A198963 n

end A198963

/-! ## A198963.P9314823372050903467

`∑[9*a(n-1)]` with `a(0)=5, a(1)=48`
-/

namespace A198963.P9314823372050903467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 48] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198963.P9314823372050903467

namespace A198963

/-- `∑[9*a(n-1)]` -/
def P9314823372050903467.Spec : Prop :=
  ∀ n, (P9314823372050903467.a n : ℤ) = A198963 n

end A198963

/-! ## A198963.P3504125079634336684

`9*(a(n-1)+8/9)` with `a(0)=5`
-/

namespace A198963.P3504125079634336684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  9 * (a (n - 1) + (8 : ℚ) / 9)

end

end A198963.P3504125079634336684

namespace A198963

/-- `9*(a(n-1)+8/9)` -/
def P3504125079634336684.Spec : Prop :=
  ∀ n, P3504125079634336684.a n = (A198963 n : ℚ)

theorem P3504125079634336684.correct : P3504125079634336684.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198963, Nat.add_sub_cancel, A198963.P3504125079634336684.a, A198963.P17210017036911163647.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198963, Nat.add_sub_cancel, A198963.P3504125079634336684.a, A198963.P17210017036911163647.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198963

/-! ## A198963.P17074170229849061673

`record[-(3*a(n-1)+4)]` with `a(0)=5`
-/

namespace A198963.P17074170229849061673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  -(3 * f1 (n - 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198963.P17074170229849061673

namespace A198963

/-- `record[-(3*a(n-1)+4)]` -/
def P17074170229849061673.Spec : Prop :=
  ∀ n, P17074170229849061673.a n = A198963 n

end A198963

/-! ## A198963.P11038498614319598839

`or(4, 9*(a(n-1)+1)-1)` with `a(0)=5`
-/

namespace A198963.P11038498614319598839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  Int.lor 4 (9 * (a (n - 1) + 1) - 1)

end

end A198963.P11038498614319598839

namespace A198963

/-- `or(4, 9*(a(n-1)+1)-1)` -/
def P11038498614319598839.Spec : Prop :=
  ∀ n, P11038498614319598839.a n = A198963 n

end A198963

/-! ## A198963.P12228728594630076792

`floor(a(n-1)+8*(a(n-1)+1))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A198963.P12228728594630076792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 8 * (a (n - 1) + 1)

end

end A198963.P12228728594630076792

namespace A198963

/-- `floor(a(n-1)+8*(a(n-1)+1))` -/
def P12228728594630076792.Spec : Prop :=
  ∀ n, (P12228728594630076792.a n : ℤ) = A198963 n

theorem P12228728594630076792.correct : P12228728594630076792.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198963, Nat.add_sub_cancel, A198963.P12228728594630076792.a, A198963.P17210017036911163647.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198963, Nat.add_sub_cancel, A198963.P12228728594630076792.a, A198963.P17210017036911163647.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198963

/-! ## A198963.P2449548974895015943

`A048473(Δ[n²])`
-/

namespace A198963.P2449548974895015943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048473 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198963.P2449548974895015943

namespace A198963

/-- `A048473(Δ[n²])` -/
def P2449548974895015943.Spec : Prop :=
  ∀ n, P2449548974895015943.a n = A198963 n

end A198963

/-! ## A198963.P15205891206629958827

`abs(2-A199564(n))`
-/

namespace A198963.P15205891206629958827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199564 n|

end

end A198963.P15205891206629958827

namespace A198963

/-- `abs(2-A199564(n))` -/
def P15205891206629958827.Spec : Prop :=
  ∀ n, P15205891206629958827.a n = A198963 n

end A198963

/-! ## A198963.P1917792565983143178

`Δ[A066443(n)-n]`
-/

namespace A198963.P1917792565983143178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066443 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198963.P1917792565983143178

namespace A198963

/-- `Δ[A066443(n)-n]` -/
def P1917792565983143178.Spec : Prop :=
  ∀ n, P1917792565983143178.a n = A198963 n

end A198963

/-! ## A198963.P1409223941261881738

`Δ[A111277(Δ[n²])]`
-/

namespace A198963.P1409223941261881738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111277 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198963.P1409223941261881738

namespace A198963

/-- `Δ[A111277(Δ[n²])]` -/
def P1409223941261881738.Spec : Prop :=
  ∀ n, P1409223941261881738.a n = A198963 n

end A198963

/-! ## A198963.P5808740123491545911

`A174132(2*(n+1))`
-/

namespace A198963.P5808740123491545911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174132 (2 * (n + 1))

end

end A198963.P5808740123491545911

namespace A198963

/-- `A174132(2*(n+1))` -/
def P5808740123491545911.Spec : Prop :=
  ∀ n, P5808740123491545911.a n = A198963 n

end A198963

/-! ## A198963.P15392485505367944688

`A062318(4*(n+1))`
-/

namespace A198963.P15392485505367944688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062318 (4 * (n + 1))

end

end A198963.P15392485505367944688

namespace A198963

/-- `A062318(4*(n+1))` -/
def P15392485505367944688.Spec : Prop :=
  ∀ n, P15392485505367944688.a n = A198963 n

end A198963

/-! ## A198963.P14676139366334829593

`A154992(2*n+3)`
-/

namespace A198963.P14676139366334829593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154992 (2 * n + 3)

end

end A198963.P14676139366334829593

namespace A198963

/-- `A154992(2*n+3)` -/
def P14676139366334829593.Spec : Prop :=
  ∀ n, P14676139366334829593.a n = A198963 n

end A198963

/-! ## A198963.P9379236020329606416

`A060647(4*n+2)`
-/

namespace A198963.P9379236020329606416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060647 (4 * n + 2)

end

end A198963.P9379236020329606416

namespace A198963

/-- `A060647(4*n+2)` -/
def P9379236020329606416.Spec : Prop :=
  ∀ n, P9379236020329606416.a n = A198963 n

end A198963

/-! ## A198963.P15474433968882547369

`A062547(4*n+2)`
-/

namespace A198963.P15474433968882547369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062547 (4 * n + 2)

end

end A198963.P15474433968882547369

namespace A198963

/-- `A062547(4*n+2)` -/
def P15474433968882547369.Spec : Prop :=
  ∀ n, P15474433968882547369.a n = A198963 n

end A198963

/-! ## A198963.P140143686910926498

`record[Δ[A076040(n+1)]]`
-/

namespace A198963.P140143686910926498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198963.P140143686910926498

namespace A198963

/-- `record[Δ[A076040(n+1)]]` -/
def P140143686910926498.Spec : Prop :=
  ∀ n, P140143686910926498.a n = A198963 n

end A198963

/-! ## A198963.P541408432381011487

`∑[A257970(2*n+3)]`
-/

namespace A198963.P541408432381011487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257970 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198963.P541408432381011487

namespace A198963

/-- `∑[A257970(2*n+3)]` -/
def P541408432381011487.Spec : Prop :=
  ∀ n, P541408432381011487.a n = A198963 n

end A198963

/-! ## A198963.P14520479354880659594

`A079004(2*n+3)/2`
-/

namespace A198963.P14520479354880659594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079004 (2 * n + 3) : ℚ) / 2

end

end A198963.P14520479354880659594

namespace A198963

/-- `A079004(2*n+3)/2` -/
def P14520479354880659594.Spec : Prop :=
  ∀ n, P14520479354880659594.a n = (A198963 n : ℚ)

end A198963

/-!
# A198964: a(n) = (7*9^n - 1)/2.

The programs for A198964, the canonical program `A198964.P17678775516085287165` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198964 has offset 0).

The definition of A198964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*9^n-1)/2` (program `A198964.P15524716892198854669`, by `A198964.P15524716892198854669.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198964.P17678775516085287165

`9*a(n-1)+4` with `a(0)=3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198964

/-- `9*a(n-1)+4` -/
def P17678775516085287165.Spec : Prop :=
  ∀ n, (P17678775516085287165.a n : ℤ) = A198964 n

theorem P17678775516085287165.correct : P17678775516085287165.Spec := by
  intro n
  simp only [A198964]

end A198964

/-! ## A198964.P15524716892198854669

`(7*9^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A198964.P15524716892198854669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 9 ^ n : ℤ) - 1 : ℚ) / 2

end

end A198964.P15524716892198854669

namespace A198964

/-- `(7*9^n-1)/2` -/
def P15524716892198854669.Spec : Prop :=
  ∀ n, P15524716892198854669.a n = (A198964 n : ℚ)

theorem P15524716892198854669.correct : P15524716892198854669.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198964, Nat.add_sub_cancel, A198964.P15524716892198854669.a, A198964.P17678775516085287165.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198964, Nat.add_sub_cancel, A198964.P15524716892198854669.a, A198964.P17678775516085287165.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198964

/-! ## A198964.P2982612885075384345

`ogf((3+x)/(1-10x+9x^2))`
-/

namespace A198964.P2982612885075384345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -10, 9] n

end

end A198964.P2982612885075384345

namespace A198964

/-- `ogf((3+x)/(1-10x+9x^2))` -/
def P2982612885075384345.Spec : Prop :=
  ∀ n, P2982612885075384345.a n = A198964 n

end A198964

/-! ## A198964.P16084711300505874571

`∑[9*a(n-1)]` with `a(0)=3, a(1)=28`
-/

namespace A198964.P16084711300505874571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 28] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198964.P16084711300505874571

namespace A198964

/-- `∑[9*a(n-1)]` -/
def P16084711300505874571.Spec : Prop :=
  ∀ n, (P16084711300505874571.a n : ℤ) = A198964 n

end A198964

/-! ## A198964.P7856368469154123212

`a(n-1)/(1/3)²+4` with `a(0)=3`
-/

namespace A198964.P7856368469154123212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 + 4

end

end A198964.P7856368469154123212

namespace A198964

/-- `a(n-1)/(1/3)²+4` -/
def P7856368469154123212.Spec : Prop :=
  ∀ n, P7856368469154123212.a n = (A198964 n : ℚ)

end A198964

/-! ## A198964.P3572593076303185372

`record[2-3*a(n-1)]-1` with `a(0)=4`
-/

namespace A198964.P3572593076303185372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  2 - 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A198964.P3572593076303185372

namespace A198964

/-- `record[2-3*a(n-1)]-1` -/
def P3572593076303185372.Spec : Prop :=
  ∀ n, P3572593076303185372.a n = A198964 n

end A198964

/-! ## A198964.P2884062650831813097

`4-(a(n-1)-10*a(n-1))` with `a(0)=3`
-/

namespace A198964.P2884062650831813097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  4 - (a (n - 1) - 10 * a (n - 1))

end

end A198964.P2884062650831813097

namespace A198964

/-- `4-(a(n-1)-10*a(n-1))` -/
def P2884062650831813097.Spec : Prop :=
  ∀ n, P2884062650831813097.a n = A198964 n

end A198964

/-! ## A198964.P3637076830791681130

`A199566(n)-1`
-/

namespace A198964.P3637076830791681130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199566 n - 1

end

end A198964.P3637076830791681130

namespace A198964

/-- `A199566(n)-1` -/
def P3637076830791681130.Spec : Prop :=
  ∀ n, P3637076830791681130.a n = A198964 n

end A198964

/-! ## A198964.P11329823038658500637

`A237930(2*n)`
-/

namespace A198964.P11329823038658500637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237930 (2 * n)

end

end A198964.P11329823038658500637

namespace A198964

/-- `A237930(2*n)` -/
def P11329823038658500637.Spec : Prop :=
  ∀ n, P11329823038658500637.a n = A198964 n

end A198964

/-! ## A198964.P16946112867299594664

`2*A096046(n)+1`
-/

namespace A198964.P16946112867299594664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096046 n + 1

end

end A198964.P16946112867299594664

namespace A198964

/-- `2*A096046(n)+1` -/
def P16946112867299594664.Spec : Prop :=
  ∀ n, P16946112867299594664.a n = A198964 n

end A198964

/-! ## A198964.P792079726470716896

`A116952(2*n)+2`
-/

namespace A198964.P792079726470716896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116952 (2 * n) + 2

end

end A198964.P792079726470716896

namespace A198964

/-- `A116952(2*n)+2` -/
def P792079726470716896.Spec : Prop :=
  ∀ n, P792079726470716896.a n = A198964 n

end A198964

/-! ## A198964.P8061756017456014604

`A199109(2*n)-1`
-/

namespace A198964.P8061756017456014604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199109 (2 * n) - 1

end

end A198964.P8061756017456014604

namespace A198964

/-- `A199109(2*n)-1` -/
def P8061756017456014604.Spec : Prop :=
  ∀ n, P8061756017456014604.a n = A198964 n

end A198964

/-! ## A198964.P15433218163555354777

`2*A199565(n)-1`
-/

namespace A198964.P15433218163555354777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199565 n - 1

end

end A198964.P15433218163555354777

namespace A198964

/-- `2*A199565(n)-1` -/
def P15433218163555354777.Spec : Prop :=
  ∀ n, P15433218163555354777.a n = A198964 n

end A198964

/-! ## A198964.P1272006510508378089

`4*A187709(n)-1`
-/

namespace A198964.P1272006510508378089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A187709 n - 1

end

end A198964.P1272006510508378089

namespace A198964

/-- `4*A187709(n)-1` -/
def P1272006510508378089.Spec : Prop :=
  ∀ n, P1272006510508378089.a n = A198964 n

end A198964

/-! ## A198964.P1577805849226713086

`7*A083884(n)-4`
-/

namespace A198964.P1577805849226713086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A083884 n - 4

end

end A198964.P1577805849226713086

namespace A198964

/-- `7*A083884(n)-4` -/
def P1577805849226713086.Spec : Prop :=
  ∀ n, P1577805849226713086.a n = A198964 n

end A198964

/-! ## A198964.P10586647452327462468

`A329774(A016933(n))`
-/

namespace A198964.P10586647452327462468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329774 (A016933 n).toNat

end

end A198964.P10586647452327462468

namespace A198964

/-- `A329774(A016933(n))` -/
def P10586647452327462468.Spec : Prop :=
  ∀ n, P10586647452327462468.a n = A198964 n

end A198964

/-! ## A198964.P6933441846168693928

`A199565(n)+A096046(n)`
-/

namespace A198964.P6933441846168693928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199565 n + A096046 n

end

end A198964.P6933441846168693928

namespace A198964

/-- `A199565(n)+A096046(n)` -/
def P6933441846168693928.Spec : Prop :=
  ∀ n, P6933441846168693928.a n = A198964 n

end A198964

/-! ## A198964.P15029457626973475753

`A191681(n)+A102518(n+1)`
-/

namespace A198964.P15029457626973475753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191681 n + A102518 (n + 1)

end

end A198964.P15029457626973475753

namespace A198964

/-- `A191681(n)+A102518(n+1)` -/
def P15029457626973475753.Spec : Prop :=
  ∀ n, P15029457626973475753.a n = A198964 n

end A198964

/-! ## A198964.P7550996019011071450

`A270369(n+1)+A096053(n)`
-/

namespace A198964.P7550996019011071450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270369 (n + 1) + A096053 n

end

end A198964.P7550996019011071450

namespace A198964

/-- `A270369(n+1)+A096053(n)` -/
def P7550996019011071450.Spec : Prop :=
  ∀ n, P7550996019011071450.a n = A198964 n

end A198964

/-! ## A198964.P14897440925378888695

`A191681(n+1)-A001019(n)`
-/

namespace A198964.P14897440925378888695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191681 (n + 1) - A001019 n

end

end A198964.P14897440925378888695

namespace A198964

/-- `A191681(n+1)-A001019(n)` -/
def P14897440925378888695.Spec : Prop :=
  ∀ n, P14897440925378888695.a n = A198964 n

end A198964

/-!
# A198965: a(n) = 7*9^n - 1.

The programs for A198965, the canonical program `A198965.P6618744621263069119` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198965 has offset 0).

The definition of A198965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*9^n-1` (program `A198965.P6618744621263069119`, by `A198965.P6618744621263069119.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198965.P6618744621263069119

`7*9^n-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198965

/-- `7*9^n-1` -/
def P6618744621263069119.Spec : Prop :=
  ∀ n, P6618744621263069119.a n = A198965 n

theorem P6618744621263069119.correct : P6618744621263069119.Spec := by
  intro n
  simp only [A198965]

end A198965

/-! ## A198965.P13130152183273566059

`2*A198964(n)`
-/

namespace A198965.P13130152183273566059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198964 n

end

end A198965.P13130152183273566059

namespace A198965

/-- `2*A198964(n)` -/
def P13130152183273566059.Spec : Prop :=
  ∀ n, P13130152183273566059.a n = A198965 n

end A198965

/-! ## A198965.P14240618539780678967

`xor(1, 7*9^n)`
-/

namespace A198965.P14240618539780678967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (7 * 9 ^ n)

end

end A198965.P14240618539780678967

namespace A198965

/-- `xor(1, 7*9^n)` -/
def P14240618539780678967.Spec : Prop :=
  ∀ n, (P14240618539780678967.a n : ℤ) = A198965 n

end A198965

/-! ## A198965.P1790336918294808461

`ogf((6+2x)/(1-10x+9x^2))`
-/

namespace A198965.P1790336918294808461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 2] [1, -10, 9] n

end

end A198965.P1790336918294808461

namespace A198965

/-- `ogf((6+2x)/(1-10x+9x^2))` -/
def P1790336918294808461.Spec : Prop :=
  ∀ n, P1790336918294808461.a n = A198965 n

end A198965

/-! ## A198965.P13941377860611326512

`lcm(2, floor(7/2*9^n))`
-/

namespace A198965.P13941377860611326512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ⌊(7 : ℚ) / 2 * (9 ^ n : ℚ)⌋

end

end A198965.P13941377860611326512

namespace A198965

/-- `lcm(2, floor(7/2*9^n))` -/
def P13941377860611326512.Spec : Prop :=
  ∀ n, (P13941377860611326512.a n : ℤ) = A198965 n

end A198965

/-! ## A198965.P10271256384152186455

`9*(a(n-1)+8/9)` with `a(0)=6`
-/

namespace A198965.P10271256384152186455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  9 * (a (n - 1) + (8 : ℚ) / 9)

end

end A198965.P10271256384152186455

namespace A198965

/-- `9*(a(n-1)+8/9)` -/
def P10271256384152186455.Spec : Prop :=
  ∀ n, P10271256384152186455.a n = (A198965 n : ℚ)

theorem P10271256384152186455.correct : P10271256384152186455.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198965, Nat.add_sub_cancel, A198965.P10271256384152186455.a, A198965.P6618744621263069119.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198965, Nat.add_sub_cancel, A198965.P10271256384152186455.a, A198965.P6618744621263069119.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198965

/-! ## A198965.P9368414333446629466

`2*or(and(1, n), floor(7/2*9^n))`
-/

namespace A198965.P9368414333446629466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor (Nat.land 1 n : ℤ) ⌊(7 : ℚ) / 2 * (9 ^ n : ℚ)⌋

end

end A198965.P9368414333446629466

namespace A198965

/-- `2*or(and(1, n), floor(7/2*9^n))` -/
def P9368414333446629466.Spec : Prop :=
  ∀ n, P9368414333446629466.a n = A198965 n

end A198965

/-! ## A198965.P6228562483071142361

`floor(a(n-1)+8*(a(n-1)+1))` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A198965.P6228562483071142361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 8 * (a (n - 1) + 1)

end

end A198965.P6228562483071142361

namespace A198965

/-- `floor(a(n-1)+8*(a(n-1)+1))` -/
def P6228562483071142361.Spec : Prop :=
  ∀ n, (P6228562483071142361.a n : ℤ) = A198965 n

theorem P6228562483071142361.correct : P6228562483071142361.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198965, Nat.add_sub_cancel, A198965.P6228562483071142361.a, A198965.P6618744621263069119.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198965, Nat.add_sub_cancel, A198965.P6228562483071142361.a, A198965.P6618744621263069119.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198965

/-! ## A198965.P3198606100860523268

`A027107(Δ[n²])`
-/

namespace A198965.P3198606100860523268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027107 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198965.P3198606100860523268

namespace A198965

/-- `A027107(Δ[n²])` -/
def P3198606100860523268.Spec : Prop :=
  ∀ n, P3198606100860523268.a n = A198965 n

end A198965

/-! ## A198965.P14074590278486266214

`2*(A199566(n)-1)`
-/

namespace A198965.P14074590278486266214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199566 n - 1)

end

end A198965.P14074590278486266214

namespace A198965

/-- `2*(A199566(n)-1)` -/
def P14074590278486266214.Spec : Prop :=
  ∀ n, P14074590278486266214.a n = A198965 n

end A198965

/-! ## A198965.P72659060231866566

`2*A237930(2*n)`
-/

namespace A198965.P72659060231866566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A237930 (2 * n)

end

end A198965.P72659060231866566

namespace A198965

/-- `2*A237930(2*n)` -/
def P72659060231866566.Spec : Prop :=
  ∀ n, P72659060231866566.a n = A198965 n

end A198965

/-! ## A198965.P6396535515646854263

`abs(1-7*A001019(n))`
-/

namespace A198965.P6396535515646854263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 7 * A001019 n|

end

end A198965.P6396535515646854263

namespace A198965

/-- `abs(1-7*A001019(n))` -/
def P6396535515646854263.Spec : Prop :=
  ∀ n, P6396535515646854263.a n = A198965 n

end A198965

/-! ## A198965.P14597808475323587942

`2*(A116952(2*n)+2)`
-/

namespace A198965.P14597808475323587942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A116952 (2 * n) + 2)

end

end A198965.P14597808475323587942

namespace A198965

/-- `2*(A116952(2*n)+2)` -/
def P14597808475323587942.Spec : Prop :=
  ∀ n, P14597808475323587942.a n = A198965 n

end A198965

/-! ## A198965.P18248364799679565707

`2*(A199109(2*n)-1)`
-/

namespace A198965.P18248364799679565707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199109 (2 * n) - 1)

end

end A198965.P18248364799679565707

namespace A198965

/-- `2*(A199109(2*n)-1)` -/
def P18248364799679565707.Spec : Prop :=
  ∀ n, P18248364799679565707.a n = A198965 n

end A198965

/-! ## A198965.P13991456340385449180

`A358027(3*(n+1)+n)`
-/

namespace A198965.P13991456340385449180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358027 (3 * (n + 1) + n)

end

end A198965.P13991456340385449180

namespace A198965

/-- `A358027(3*(n+1)+n)` -/
def P13991456340385449180.Spec : Prop :=
  ∀ n, P13991456340385449180.a n = A198965 n

end A198965

/-! ## A198965.P10321929690799991253

`A140576(A004771(n))`
-/

namespace A198965.P10321929690799991253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140576 (A004771 n).toNat

end

end A198965.P10321929690799991253

namespace A198965

/-- `A140576(A004771(n))` -/
def P10321929690799991253.Spec : Prop :=
  ∀ n, P10321929690799991253.a n = A198965 n

end A198965

/-! ## A198965.P17885365851488356270

`A140576(A133655(n+1))`
-/

namespace A198965.P17885365851488356270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140576 (A133655 (n + 1)).toNat

end

end A198965.P17885365851488356270

namespace A198965

/-- `A140576(A133655(n+1))` -/
def P17885365851488356270.Spec : Prop :=
  ∀ n, P17885365851488356270.a n = A198965 n

end A198965

/-! ## A198965.P15709165860607035004

`2*A329774(A016933(n))`
-/

namespace A198965.P15709165860607035004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329774 (A016933 n).toNat

end

end A198965.P15709165860607035004

namespace A198965

/-- `2*A329774(A016933(n))` -/
def P15709165860607035004.Spec : Prop :=
  ∀ n, P15709165860607035004.a n = A198965 n

end A198965

/-! ## A198965.P18401942380122163769

`abs(A001019(n)-A198966(n))`
-/

namespace A198965.P18401942380122163769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001019 n - A198966 n|

end

end A198965.P18401942380122163769

namespace A198965

/-- `abs(A001019(n)-A198966(n))` -/
def P18401942380122163769.Spec : Prop :=
  ∀ n, P18401942380122163769.a n = A198965 n

end A198965

/-! ## A198965.P5433036119264350267

`(A198968(n)+A198960(n))/2`
-/

namespace A198965.P5433036119264350267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198968 n + A198960 n : ℚ) / 2

end

end A198965.P5433036119264350267

namespace A198965

/-- `(A198968(n)+A198960(n))/2` -/
def P5433036119264350267.Spec : Prop :=
  ∀ n, P5433036119264350267.a n = (A198965 n : ℚ)

end A198965

/-!
# A198966: a(n) = 8*9^n-1.

The programs for A198966, the canonical program `A198966.P5227887383977968001` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198966 has offset 0).

The definition of A198966 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*9^n-1` (program `A198966.P5227887383977968001`, by `A198966.P5227887383977968001.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198966.P5227887383977968001

`8*9^n-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198966

/-- `8*9^n-1` -/
def P5227887383977968001.Spec : Prop :=
  ∀ n, P5227887383977968001.a n = A198966 n

theorem P5227887383977968001.correct : P5227887383977968001.Spec := by
  intro n
  simp only [A198966]

end A198966

/-! ## A198966.P16588799148578888831

`xor(15, Δ[9^n])`
-/

namespace A198966.P16588799148578888831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 15 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A198966.P16588799148578888831

namespace A198966

/-- `xor(15, Δ[9^n])` -/
def P16588799148578888831.Spec : Prop :=
  ∀ n, P16588799148578888831.a n = A198966 n

end A198966

/-! ## A198966.P10047886289389807571

`ogf((7+x)/(1-10x+9x^2))`
-/

namespace A198966.P10047886289389807571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 1] [1, -10, 9] n

end

end A198966.P10047886289389807571

namespace A198966

/-- `ogf((7+x)/(1-10x+9x^2))` -/
def P10047886289389807571.Spec : Prop :=
  ∀ n, P10047886289389807571.a n = A198966 n

end A198966

/-! ## A198966.P5711513401366065320

`-or(1, Δ[-9^n])`
-/

namespace A198966.P5711513401366065320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(9 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (f1 (n + 1) - f1 n)

end

end A198966.P5711513401366065320

namespace A198966

/-- `-or(1, Δ[-9^n])` -/
def P5711513401366065320.Spec : Prop :=
  ∀ n, P5711513401366065320.a n = A198966 n

end A198966

/-! ## A198966.P14067901796073496745

`∑[9*a(n-1)]` with `a(0)=7, a(1)=64`
-/

namespace A198966.P14067901796073496745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 64] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198966.P14067901796073496745

namespace A198966

/-- `∑[9*a(n-1)]` -/
def P14067901796073496745.Spec : Prop :=
  ∀ n, (P14067901796073496745.a n : ℤ) = A198966 n

end A198966

/-! ## A198966.P17908888330931530629

`abs(9*a(n-1)+8)` with `a(0)=7`
-/

namespace A198966.P17908888330931530629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  9 * a (n - 1) + 8

end

end A198966.P17908888330931530629

namespace A198966

/-- `abs(9*a(n-1)+8)` -/
def P17908888330931530629.Spec : Prop :=
  ∀ n, (P17908888330931530629.a n : ℤ) = A198966 n

theorem P17908888330931530629.correct : P17908888330931530629.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198966, Nat.add_sub_cancel, A198966.P17908888330931530629.a, A198966.P5227887383977968001.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198966, Nat.add_sub_cancel, A198966.P17908888330931530629.a, A198966.P5227887383977968001.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198966

/-! ## A198966.P15753368744342094579

`9*(a(n-1)+8/9)` with `a(0)=7`
-/

namespace A198966.P15753368744342094579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  9 * (a (n - 1) + (8 : ℚ) / 9)

end

end A198966.P15753368744342094579

namespace A198966

/-- `9*(a(n-1)+8/9)` -/
def P15753368744342094579.Spec : Prop :=
  ∀ n, P15753368744342094579.a n = (A198966 n : ℚ)

theorem P15753368744342094579.correct : P15753368744342094579.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198966, Nat.add_sub_cancel, A198966.P15753368744342094579.a, A198966.P5227887383977968001.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198966, Nat.add_sub_cancel, A198966.P15753368744342094579.a, A198966.P5227887383977968001.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198966

/-! ## A198966.P2560953683787438792

`record[-xor(2, 3*a(n-1))]` with `a(0)=7`
-/

namespace A198966.P2560953683787438792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  -Int.xor 2 (3 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198966.P2560953683787438792

namespace A198966

/-- `record[-xor(2, 3*a(n-1))]` -/
def P2560953683787438792.Spec : Prop :=
  ∀ n, P2560953683787438792.a n = A198966 n

end A198966

/-! ## A198966.P17406505243948097707

`record[-(3*a(n-2)+4)]` with `a(0)=7, a(1)=4`
-/

namespace A198966.P17406505243948097707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 4] fun n f1 =>
  -(3 * f1 (n - 2) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198966.P17406505243948097707

namespace A198966

/-- `record[-(3*a(n-2)+4)]` -/
def P17406505243948097707.Spec : Prop :=
  ∀ n, P17406505243948097707.a n = A198966 n

end A198966

/-! ## A198966.P13048057839779907093

`floor(a(n-1)+8*(a(n-1)+1))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A198966.P13048057839779907093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 8 * (a (n - 1) + 1)

end

end A198966.P13048057839779907093

namespace A198966

/-- `floor(a(n-1)+8*(a(n-1)+1))` -/
def P13048057839779907093.Spec : Prop :=
  ∀ n, (P13048057839779907093.a n : ℤ) = A198966 n

theorem P13048057839779907093.correct : P13048057839779907093.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198966, Nat.add_sub_cancel, A198966.P13048057839779907093.a, A198966.P5227887383977968001.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198966, Nat.add_sub_cancel, A198966.P13048057839779907093.a, A198966.P5227887383977968001.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198966

/-! ## A198966.P1676237972210941139

`Δ[A024102(n)]`
-/

namespace A198966.P1676237972210941139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198966.P1676237972210941139

namespace A198966

/-- `Δ[A024102(n)]` -/
def P1676237972210941139.Spec : Prop :=
  ∀ n, P1676237972210941139.a n = A198966 n

end A198966

/-! ## A198966.P10166066044451488845

`A198644(2*n)`
-/

namespace A198966.P10166066044451488845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198644 (2 * n)

end

end A198966.P10166066044451488845

namespace A198966

/-- `A198644(2*n)` -/
def P10166066044451488845.Spec : Prop :=
  ∀ n, P10166066044451488845.a n = A198966 n

end A198966

/-! ## A198966.P11399397166432575217

`abs(2-A199677(n))`
-/

namespace A198966.P11399397166432575217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199677 n|

end

end A198966.P11399397166432575217

namespace A198966

/-- `abs(2-A199677(n))` -/
def P11399397166432575217.Spec : Prop :=
  ∀ n, P11399397166432575217.a n = A198966 n

end A198966

/-! ## A198966.P4480631771245559747

`∑[A055995(n+1)]`
-/

namespace A198966.P4480631771245559747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198966.P4480631771245559747

namespace A198966

/-- `∑[A055995(n+1)]` -/
def P4480631771245559747.Spec : Prop :=
  ∀ n, P4480631771245559747.a n = A198966 n

end A198966

/-! ## A198966.P586324748098445492

`A140576(8*(n+1))`
-/

namespace A198966.P586324748098445492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140576 (8 * (n + 1))

end

end A198966.P586324748098445492

namespace A198966

/-- `A140576(8*(n+1))` -/
def P586324748098445492.Spec : Prop :=
  ∀ n, P586324748098445492.a n = A198966 n

end A198966

/-! ## A198966.P18441104615635273608

`Δ[A000244(n)²-n]`
-/

namespace A198966.P18441104615635273608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198966.P18441104615635273608

namespace A198966

/-- `Δ[A000244(n)²-n]` -/
def P18441104615635273608.Spec : Prop :=
  ∀ n, P18441104615635273608.a n = A198966 n

end A198966

/-! ## A198966.P1696050041132022306

`Δ[A352779(n)²-n]`
-/

namespace A198966.P1696050041132022306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352779 n ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198966.P1696050041132022306

namespace A198966

/-- `Δ[A352779(n)²-n]` -/
def P1696050041132022306.Spec : Prop :=
  ∀ n, P1696050041132022306.a n = A198966 n

end A198966

/-! ## A198966.P15959992664888691965

`Δ[∑[A055275(n)]-n]`
-/

namespace A198966.P15959992664888691965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198966.P15959992664888691965

namespace A198966

/-- `Δ[∑[A055275(n)]-n]` -/
def P15959992664888691965.Spec : Prop :=
  ∀ n, P15959992664888691965.a n = A198966 n

end A198966

/-! ## A198966.P17031907131435314611

`Δ[A001019(n)-(n+1)]`
-/

namespace A198966.P17031907131435314611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198966.P17031907131435314611

namespace A198966

/-- `Δ[A001019(n)-(n+1)]` -/
def P17031907131435314611.Spec : Prop :=
  ∀ n, P17031907131435314611.a n = A198966 n

end A198966

/-! ## A198966.P11815836653333116536

`Δ[A168613(2*n)-n]`
-/

namespace A198966.P11815836653333116536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168613 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198966.P11815836653333116536

namespace A198966

/-- `Δ[A168613(2*n)-n]` -/
def P11815836653333116536.Spec : Prop :=
  ∀ n, P11815836653333116536.a n = A198966 n

end A198966

/-!
# A198967: a(n) = 10*9^n-1.

The programs for A198967, the canonical program `A198967.P10782961573647576041` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198967 has offset 0).

The definition of A198967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*9^n-1` (program `A198967.P10782961573647576041`, by `A198967.P10782961573647576041.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198967.P10782961573647576041

`10*9^n-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198967

/-- `10*9^n-1` -/
def P10782961573647576041.Spec : Prop :=
  ∀ n, P10782961573647576041.a n = A198967 n

theorem P10782961573647576041.correct : P10782961573647576041.Spec := by
  intro n
  simp only [A198967]

end A198967

/-! ## A198967.P1713654674692143314

`xor(3, 10*9^n)`
-/

namespace A198967.P1713654674692143314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (10 * 9 ^ n)

end

end A198967.P1713654674692143314

namespace A198967

/-- `xor(3, 10*9^n)` -/
def P1713654674692143314.Spec : Prop :=
  ∀ n, (P1713654674692143314.a n : ℤ) = A198967 n

end A198967

/-! ## A198967.P6873939881795060464

`ogf((9-x)/(1-10x+9x^2))`
-/

namespace A198967.P6873939881795060464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -1] [1, -10, 9] n

end

end A198967.P6873939881795060464

namespace A198967

/-- `ogf((9-x)/(1-10x+9x^2))` -/
def P6873939881795060464.Spec : Prop :=
  ∀ n, P6873939881795060464.a n = A198967 n

end A198967

/-! ## A198967.P4361895517404699171

`or(8, 9*a(n-1))` with `a(0)=9`
-/

namespace A198967.P4361895517404699171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  Nat.lor 8 (9 * a (n - 1))

end

end A198967.P4361895517404699171

namespace A198967

/-- `or(8, 9*a(n-1))` -/
def P4361895517404699171.Spec : Prop :=
  ∀ n, (P4361895517404699171.a n : ℤ) = A198967 n

end A198967

/-! ## A198967.P5024141909859253886

`9*(a(n-1)+8/9)` with `a(0)=9`
-/

namespace A198967.P5024141909859253886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [9] fun n a =>
  9 * (a (n - 1) + (8 : ℚ) / 9)

end

end A198967.P5024141909859253886

namespace A198967

/-- `9*(a(n-1)+8/9)` -/
def P5024141909859253886.Spec : Prop :=
  ∀ n, P5024141909859253886.a n = (A198967 n : ℚ)

theorem P5024141909859253886.correct : P5024141909859253886.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198967, Nat.add_sub_cancel, A198967.P5024141909859253886.a, A198967.P10782961573647576041.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198967, Nat.add_sub_cancel, A198967.P5024141909859253886.a, A198967.P10782961573647576041.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198967

/-! ## A198967.P11614739081891062679

`∑[9*a(n-1)-char[1]]` with `a(0)=9`
-/

namespace A198967.P11614739081891062679
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  9 * f1 (n - 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198967.P11614739081891062679

namespace A198967

/-- `∑[9*a(n-1)-char[1]]` -/
def P11614739081891062679.Spec : Prop :=
  ∀ n, P11614739081891062679.a n = A198967 n

end A198967

/-! ## A198967.P6101520248618847727

`or(9, a(n-1)/(1/3)²)` with `a(0)=9`
-/

namespace A198967.P6101520248618847727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  Int.lor 9 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / ((1 : ℚ) / 3) ^ 2))

end

end A198967.P6101520248618847727

namespace A198967

/-- `or(9, a(n-1)/(1/3)²)` -/
def P6101520248618847727.Spec : Prop :=
  ∀ n, P6101520248618847727.a n = A198967 n

end A198967

/-! ## A198967.P7220986742574431386

`A198645(2*n)`
-/

namespace A198967.P7220986742574431386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198645 (2 * n)

end

end A198967.P7220986742574431386

namespace A198967

/-- `A198645(2*n)` -/
def P7220986742574431386.Spec : Prop :=
  ∀ n, P7220986742574431386.a n = A198967 n

end A198967

/-! ## A198967.P5934067898519059245

`Δ[A244762(2*n)]`
-/

namespace A198967.P5934067898519059245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244762 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198967.P5934067898519059245

namespace A198967

/-- `Δ[A244762(2*n)]` -/
def P5934067898519059245.Spec : Prop :=
  ∀ n, P5934067898519059245.a n = A198967 n

end A198967

/-! ## A198967.P12250780542320981513

`A188793(4*(n+1))`
-/

namespace A198967.P12250780542320981513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188793 (4 * (n + 1))

end

end A198967.P12250780542320981513

namespace A198967

/-- `A188793(4*(n+1))` -/
def P12250780542320981513.Spec : Prop :=
  ∀ n, P12250780542320981513.a n = A198967 n

end A198967

/-! ## A198967.P9675356817724882249

`A155155(2*n)/2`
-/

namespace A198967.P9675356817724882249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155155 (2 * n) : ℚ) / 2

end

end A198967.P9675356817724882249

namespace A198967

/-- `A155155(2*n)/2` -/
def P9675356817724882249.Spec : Prop :=
  ∀ n, P9675356817724882249.a n = (A198967 n : ℚ)

end A198967

/-! ## A198967.P14542931412426973710

`abs(1-10*A001019(n))`
-/

namespace A198967.P14542931412426973710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 10 * A001019 n|

end

end A198967.P14542931412426973710

namespace A198967

/-- `abs(1-10*A001019(n))` -/
def P14542931412426973710.Spec : Prop :=
  ∀ n, P14542931412426973710.a n = A198967 n

end A198967

/-!
# A198968: a(n) = 11*9^n-1.

The programs for A198968, the canonical program `A198968.P1018072338307891161` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198968 has offset 0).

The definition of A198968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*9^n-1` (program `A198968.P1018072338307891161`, by `A198968.P1018072338307891161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198968.P1018072338307891161

`11*9^n-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198968

/-- `11*9^n-1` -/
def P1018072338307891161.Spec : Prop :=
  ∀ n, P1018072338307891161.a n = A198968 n

theorem P1018072338307891161.correct : P1018072338307891161.Spec := by
  intro n
  simp only [A198968]

end A198968

/-! ## A198968.P8325808078413689848

`xor(1, 11*9^n)`
-/

namespace A198968.P8325808078413689848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (11 * 9 ^ n)

end

end A198968.P8325808078413689848

namespace A198968

/-- `xor(1, 11*9^n)` -/
def P8325808078413689848.Spec : Prop :=
  ∀ n, (P8325808078413689848.a n : ℤ) = A198968 n

end A198968

/-! ## A198968.P7529305030801129253

`ogf((10-2x)/(1-10x+9x^2))`
-/

namespace A198968.P7529305030801129253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -2] [1, -10, 9] n

end

end A198968.P7529305030801129253

namespace A198968

/-- `ogf((10-2x)/(1-10x+9x^2))` -/
def P7529305030801129253.Spec : Prop :=
  ∀ n, P7529305030801129253.a n = A198968 n

end A198968

/-! ## A198968.P14176907854235581363

`9*(a(n-1)+8/9)` with `a(0)=10`
-/

namespace A198968.P14176907854235581363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  9 * (a (n - 1) + (8 : ℚ) / 9)

end

end A198968.P14176907854235581363

namespace A198968

/-- `9*(a(n-1)+8/9)` -/
def P14176907854235581363.Spec : Prop :=
  ∀ n, P14176907854235581363.a n = (A198968 n : ℚ)

theorem P14176907854235581363.correct : P14176907854235581363.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198968, Nat.add_sub_cancel, A198968.P14176907854235581363.a, A198968.P1018072338307891161.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198968, Nat.add_sub_cancel, A198968.P14176907854235581363.a, A198968.P1018072338307891161.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198968

/-! ## A198968.P1012729164063616802

`abs(1-Δ[3*(3*a(n-1)+1)])` with `a(0)=1`
-/

namespace A198968.P1012729164063616802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * (3 * f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A198968.P1012729164063616802

namespace A198968

/-- `abs(1-Δ[3*(3*a(n-1)+1)])` -/
def P1012729164063616802.Spec : Prop :=
  ∀ n, P1012729164063616802.a n = A198968 n

end A198968

/-! ## A198968.P9959601547343021481

`A198646(2*n)`
-/

namespace A198968.P9959601547343021481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198646 (2 * n)

end

end A198968.P9959601547343021481

namespace A198968

/-- `A198646(2*n)` -/
def P9959601547343021481.Spec : Prop :=
  ∀ n, P9959601547343021481.a n = A198968 n

end A198968

/-! ## A198968.P1967697026836341834

`2*A198969(n)`
-/

namespace A198968.P1967697026836341834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A198969 n

end

end A198968.P1967697026836341834

namespace A198968

/-- `2*A198969(n)` -/
def P1967697026836341834.Spec : Prop :=
  ∀ n, P1967697026836341834.a n = A198968 n

end A198968

/-! ## A198968.P726995101417520913

`abs(2-A199681(n))`
-/

namespace A198968.P726995101417520913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199681 n|

end

end A198968.P726995101417520913

namespace A198968

/-- `abs(2-A199681(n))` -/
def P726995101417520913.Spec : Prop :=
  ∀ n, P726995101417520913.a n = A198968 n

end A198968

/-! ## A198968.P3305620741710012044

`2*(A199680(n)-1)`
-/

namespace A198968.P3305620741710012044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199680 n - 1)

end

end A198968.P3305620741710012044

namespace A198968

/-- `2*(A199680(n)-1)` -/
def P3305620741710012044.Spec : Prop :=
  ∀ n, P3305620741710012044.a n = A198968 n

end A198968

/-! ## A198968.P3877296509043167981

`2*A052909(Δ[n²])`
-/

namespace A198968.P3877296509043167981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052909 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198968.P3877296509043167981

namespace A198968

/-- `2*A052909(Δ[n²])` -/
def P3877296509043167981.Spec : Prop :=
  ∀ n, P3877296509043167981.a n = A198968 n

end A198968

/-! ## A198968.P14086999938462074217

`abs(1-A120354(2*n))`
-/

namespace A198968.P14086999938462074217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A120354 (2 * n)|

end

end A198968.P14086999938462074217

namespace A198968

/-- `abs(1-A120354(2*n))` -/
def P14086999938462074217.Spec : Prop :=
  ∀ n, P14086999938462074217.a n = A198968 n

end A198968

/-! ## A198968.P3080872330752772809

`2*(A199113(2*n)-1)`
-/

namespace A198968.P3080872330752772809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199113 (2 * n) - 1)

end

end A198968.P3080872330752772809

namespace A198968

/-- `2*(A199113(2*n)-1)` -/
def P3080872330752772809.Spec : Prop :=
  ∀ n, P3080872330752772809.a n = A198968 n

end A198968

/-! ## A198968.P6995808278422818715

`2*A253062(A016969(n))`
-/

namespace A198968.P6995808278422818715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253062 (A016969 n).toNat

end

end A198968.P6995808278422818715

namespace A198968

/-- `2*A253062(A016969(n))` -/
def P6995808278422818715.Spec : Prop :=
  ∀ n, P6995808278422818715.a n = A198968 n

end A198968

/-! ## A198968.P11026379385540353206

`2*A253062(A101328(n+3))`
-/

namespace A198968.P11026379385540353206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253062 (A101328 (n + 3)).toNat

end

end A198968.P11026379385540353206

namespace A198968

/-- `2*A253062(A101328(n+3))` -/
def P11026379385540353206.Spec : Prop :=
  ∀ n, P11026379385540353206.a n = A198968 n

end A198968

/-! ## A198968.P6650223724846040949

`2*(A096053(n)+A008776(n)²)`
-/

namespace A198968.P6650223724846040949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A096053 n + A008776 n ^ 2)

end

end A198968.P6650223724846040949

namespace A198968

/-- `2*(A096053(n)+A008776(n)²)` -/
def P6650223724846040949.Spec : Prop :=
  ∀ n, P6650223724846040949.a n = A198968 n

end A198968

/-! ## A198968.P18439196061627774279

`2*(A005030(2*n)+A003462(2*n))`
-/

namespace A198968.P18439196061627774279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005030 (2 * n) + A003462 (2 * n))

end

end A198968.P18439196061627774279

namespace A198968

/-- `2*(A005030(2*n)+A003462(2*n))` -/
def P18439196061627774279.Spec : Prop :=
  ∀ n, P18439196061627774279.a n = A198968 n

end A198968

/-! ## A198968.P7073620394838461760

`2*(A116952(2*n)+A115099(2*n))`
-/

namespace A198968.P7073620394838461760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A116952 (2 * n) + A115099 (2 * n))

end

end A198968.P7073620394838461760

namespace A198968

/-- `2*(A116952(2*n)+A115099(2*n))` -/
def P7073620394838461760.Spec : Prop :=
  ∀ n, P7073620394838461760.a n = A198968 n

end A198968

/-!
# A198969: a(n) = (11*9^n-1)/2.

The programs for A198969, the canonical program `A198969.P2817111200110054429` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198969 has offset 0).

The definition of A198969 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*9^n-1)/2` (program `A198969.P14918268370795106343`, by `A198969.P14918268370795106343.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198969.P2817111200110054429

`9*a(n-1)+4` with `a(0)=5`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198969

/-- `9*a(n-1)+4` -/
def P2817111200110054429.Spec : Prop :=
  ∀ n, (P2817111200110054429.a n : ℤ) = A198969 n

theorem P2817111200110054429.correct : P2817111200110054429.Spec := by
  intro n
  simp only [A198969]

end A198969

/-! ## A198969.P14918268370795106343

`(11*9^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A198969.P14918268370795106343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * 9 ^ n : ℤ) - 1 : ℚ) / 2

end

end A198969.P14918268370795106343

namespace A198969

/-- `(11*9^n-1)/2` -/
def P14918268370795106343.Spec : Prop :=
  ∀ n, P14918268370795106343.a n = (A198969 n : ℚ)

theorem P14918268370795106343.correct : P14918268370795106343.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198969, Nat.add_sub_cancel, A198969.P14918268370795106343.a, A198969.P2817111200110054429.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198969, Nat.add_sub_cancel, A198969.P14918268370795106343.a, A198969.P2817111200110054429.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198969

/-! ## A198969.P12937963706842341566

`ogf((5-x)/(1-10x+9x^2))`
-/

namespace A198969.P12937963706842341566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -1] [1, -10, 9] n

end

end A198969.P12937963706842341566

namespace A198969

/-- `ogf((5-x)/(1-10x+9x^2))` -/
def P12937963706842341566.Spec : Prop :=
  ∀ n, P12937963706842341566.a n = A198969 n

end A198969

/-! ## A198969.P16209407616766287596

`lcm(9, a(n-1))+4` with `a(0)=5`
-/

namespace A198969.P16209407616766287596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.lcm 9 (a (n - 1)) + 4

end

end A198969.P16209407616766287596

namespace A198969

/-- `lcm(9, a(n-1))+4` -/
def P16209407616766287596.Spec : Prop :=
  ∀ n, (P16209407616766287596.a n : ℤ) = A198969 n

end A198969

/-! ## A198969.P15900309221508634967

`∑[9*a(n-1)]` with `a(0)=5, a(1)=44`
-/

namespace A198969.P15900309221508634967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 44] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198969.P15900309221508634967

namespace A198969

/-- `∑[9*a(n-1)]` -/
def P15900309221508634967.Spec : Prop :=
  ∀ n, (P15900309221508634967.a n : ℤ) = A198969 n

end A198969

/-! ## A198969.P7118085602804989059

`a(n-1)/(1/3)²+4` with `a(0)=5`
-/

namespace A198969.P7118085602804989059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 + 4

end

end A198969.P7118085602804989059

namespace A198969

/-- `a(n-1)/(1/3)²+4` -/
def P7118085602804989059.Spec : Prop :=
  ∀ n, P7118085602804989059.a n = (A198969 n : ℚ)

end A198969

/-! ## A198969.P1259262951289283063

`record[1-xor(3, 3*(a(n-1)-1))]` with `a(0)=5`
-/

namespace A198969.P1259262951289283063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  1 - Int.xor 3 (3 * (f1 (n - 1) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198969.P1259262951289283063

namespace A198969

/-- `record[1-xor(3, 3*(a(n-1)-1))]` -/
def P1259262951289283063.Spec : Prop :=
  ∀ n, P1259262951289283063.a n = A198969 n

end A198969

/-! ## A198969.P11250042445137111471

`A199680(n)-1`
-/

namespace A198969.P11250042445137111471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199680 n - 1

end

end A198969.P11250042445137111471

namespace A198969

/-- `A199680(n)-1` -/
def P11250042445137111471.Spec : Prop :=
  ∀ n, P11250042445137111471.a n = A198969 n

end A198969

/-! ## A198969.P4365667154265173949

`A052909(Δ[n²])`
-/

namespace A198969.P4365667154265173949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052909 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A198969.P4365667154265173949

namespace A198969

/-- `A052909(Δ[n²])` -/
def P4365667154265173949.Spec : Prop :=
  ∀ n, P4365667154265173949.a n = A198969 n

end A198969

/-! ## A198969.P12927371967888237224

`A199113(2*n)-1`
-/

namespace A198969.P12927371967888237224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199113 (2 * n) - 1

end

end A198969.P12927371967888237224

namespace A198969

/-- `A199113(2*n)-1` -/
def P12927371967888237224.Spec : Prop :=
  ∀ n, P12927371967888237224.a n = A198969 n

end A198969

/-! ## A198969.P4461749880583701827

`2*A199679(n)-1`
-/

namespace A198969.P4461749880583701827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199679 n - 1

end

end A198969.P4461749880583701827

namespace A198969

/-- `2*A199679(n)-1` -/
def P4461749880583701827.Spec : Prop :=
  ∀ n, P4461749880583701827.a n = A198969 n

end A198969

/-! ## A198969.P2423750212345444442

`A224785(4*n)+4`
-/

namespace A198969.P2423750212345444442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224785 (4 * n) + 4

end

end A198969.P2423750212345444442

namespace A198969

/-- `A224785(4*n)+4` -/
def P2423750212345444442.Spec : Prop :=
  ∀ n, P2423750212345444442.a n = A198969 n

end A198969

/-! ## A198969.P2049293792839091727

`11*A191681(n)+5`
-/

namespace A198969.P2049293792839091727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A191681 n + 5

end

end A198969.P2049293792839091727

namespace A198969

/-- `11*A191681(n)+5` -/
def P2049293792839091727.Spec : Prop :=
  ∀ n, P2049293792839091727.a n = A198969 n

end A198969

/-! ## A198969.P5583698277503694687

`A253062(A016969(n))`
-/

namespace A198969.P5583698277503694687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253062 (A016969 n).toNat

end

end A198969.P5583698277503694687

namespace A198969

/-- `A253062(A016969(n))` -/
def P5583698277503694687.Spec : Prop :=
  ∀ n, P5583698277503694687.a n = A198969 n

end A198969

/-! ## A198969.P7075667217441768585

`A253062(A101328(n+3))`
-/

namespace A198969.P7075667217441768585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253062 (A101328 (n + 3)).toNat

end

end A198969.P7075667217441768585

namespace A198969

/-- `A253062(A101328(n+3))` -/
def P7075667217441768585.Spec : Prop :=
  ∀ n, P7075667217441768585.a n = A198969 n

end A198969

/-! ## A198969.P12371535141820279805

`A096053(n)+A008776(n)²`
-/

namespace A198969.P12371535141820279805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096053 n + A008776 n ^ 2

end

end A198969.P12371535141820279805

namespace A198969

/-- `A096053(n)+A008776(n)²` -/
def P12371535141820279805.Spec : Prop :=
  ∀ n, P12371535141820279805.a n = A198969 n

end A198969

/-! ## A198969.P15500678834590527690

`A191681(n+1)+A001019(n)`
-/

namespace A198969.P15500678834590527690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191681 (n + 1) + A001019 n

end

end A198969.P15500678834590527690

namespace A198969

/-- `A191681(n+1)+A001019(n)` -/
def P15500678834590527690.Spec : Prop :=
  ∀ n, P15500678834590527690.a n = A198969 n

end A198969

/-! ## A198969.P8149405252474670209

`A105723(2*n)+A083884(n+1)`
-/

namespace A198969.P8149405252474670209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105723 (2 * n) + A083884 (n + 1)

end

end A198969.P8149405252474670209

namespace A198969

/-- `A105723(2*n)+A083884(n+1)` -/
def P8149405252474670209.Spec : Prop :=
  ∀ n, P8149405252474670209.a n = A198969 n

end A198969

/-! ## A198969.P9802250284314032009

`A340395(2*(n+1))-A002452(n)`
-/

namespace A198969.P9802250284314032009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340395 (2 * (n + 1)) - A002452 n

end

end A198969.P9802250284314032009

namespace A198969

/-- `A340395(2*(n+1))-A002452(n)` -/
def P9802250284314032009.Spec : Prop :=
  ∀ n, P9802250284314032009.a n = A198969 n

end A198969

/-! ## A198969.P15335753016805182928

`A005030(2*n)+A003462(2*n)`
-/

namespace A198969.P15335753016805182928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005030 (2 * n) + A003462 (2 * n)

end

end A198969.P15335753016805182928

namespace A198969

/-- `A005030(2*n)+A003462(2*n)` -/
def P15335753016805182928.Spec : Prop :=
  ∀ n, P15335753016805182928.a n = A198969 n

end A198969

/-!
# A198970: a(n) = 4*10^n - 1.

The programs for A198970, the canonical program `A198970.P3896718093538154325` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198970 has offset 0).

The definition of A198970 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*10^n-1` (program `A198970.P3896718093538154325`, by `A198970.P3896718093538154325.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198970.P3896718093538154325

`4*10^n-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198970

/-- `4*10^n-1` -/
def P3896718093538154325.Spec : Prop :=
  ∀ n, P3896718093538154325.a n = A198970 n

theorem P3896718093538154325.correct : P3896718093538154325.Spec := by
  intro n
  simp only [A198970]

end A198970

/-! ## A198970.P9910773686855246963

`3*A097166(n)`
-/

namespace A198970.P9910773686855246963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A097166 n

end

end A198970.P9910773686855246963

namespace A198970

/-- `3*A097166(n)` -/
def P9910773686855246963.Spec : Prop :=
  ∀ n, P9910773686855246963.a n = A198970 n

end A198970

/-! ## A198970.P6112243474407855315

`ogf((3+6x)/(1-11x+10x^2))`
-/

namespace A198970.P6112243474407855315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6] [1, -11, 10] n

end

end A198970.P6112243474407855315

namespace A198970

/-- `ogf((3+6x)/(1-11x+10x^2))` -/
def P6112243474407855315.Spec : Prop :=
  ∀ n, P6112243474407855315.a n = A198970 n

end A198970

/-! ## A198970.P8631886325689719268

`∑[10*a(n-1)]` with `a(0)=3, a(1)=36`
-/

namespace A198970.P8631886325689719268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 36] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198970.P8631886325689719268

namespace A198970

/-- `∑[10*a(n-1)]` -/
def P8631886325689719268.Spec : Prop :=
  ∀ n, (P8631886325689719268.a n : ℤ) = A198970 n

end A198970

/-! ## A198970.P9110187235877217623

`lcm(3, floor(4/3*10^n))`
-/

namespace A198970.P9110187235877217623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ⌊(4 : ℚ) / 3 * (10 ^ n : ℚ)⌋

end

end A198970.P9110187235877217623

namespace A198970

/-- `lcm(3, floor(4/3*10^n))` -/
def P9110187235877217623.Spec : Prop :=
  ∀ n, (P9110187235877217623.a n : ℤ) = A198970 n

end A198970

/-! ## A198970.P14960317585516785221

`or(6, lcm(10, a(n-1))+3)` with `a(0)=3`
-/

namespace A198970.P14960317585516785221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 6 (Nat.lcm 10 (a (n - 1)) + 3)

end

end A198970.P14960317585516785221

namespace A198970

/-- `or(6, lcm(10, a(n-1))+3)` -/
def P14960317585516785221.Spec : Prop :=
  ∀ n, (P14960317585516785221.a n : ℤ) = A198970 n

end A198970

/-! ## A198970.P1883330944440536527

`or(3, (10^n-1)/(1/2)²)`
-/

namespace A198970.P1883330944440536527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (SequenceMachineLib.roundAway (((10 ^ n : ℤ) - 1 : ℚ) / ((1 : ℚ) / 2) ^ 2))

end

end A198970.P1883330944440536527

namespace A198970

/-- `or(3, (10^n-1)/(1/2)²)` -/
def P1883330944440536527.Spec : Prop :=
  ∀ n, P1883330944440536527.a n = A198970 n

end A198970

/-! ## A198970.P15222825234102127474

`xor(-(xor(-(4*10^n), 2^n)+1), 2^n)`
-/

namespace A198970.P15222825234102127474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(Int.xor (-(4 * 10 ^ n : ℤ)) (2 ^ n : ℤ) + 1)) (2 ^ n : ℤ)

end

end A198970.P15222825234102127474

namespace A198970

/-- `xor(-(xor(-(4*10^n), 2^n)+1), 2^n)` -/
def P15222825234102127474.Spec : Prop :=
  ∀ n, P15222825234102127474.a n = A198970 n

end A198970

/-! ## A198970.P1201137107178143794

`floor(A198973(n)/2)`
-/

namespace A198970.P1201137107178143794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198973 n : ℚ) / 2⌋

end

end A198970.P1201137107178143794

namespace A198970

/-- `floor(A198973(n)/2)` -/
def P1201137107178143794.Spec : Prop :=
  ∀ n, P1201137107178143794.a n = A198970 n

end A198970

/-! ## A198970.P14141495674997750765

`Δ[A002278(n)-n]`
-/

namespace A198970.P14141495674997750765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198970.P14141495674997750765

namespace A198970

/-- `Δ[A002278(n)-n]` -/
def P14141495674997750765.Spec : Prop :=
  ∀ n, P14141495674997750765.a n = A198970 n

end A198970

/-! ## A198970.P13664485622081058603

`∑[abs(Δ[A093141(n)])]`
-/

namespace A198970.P13664485622081058603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093141 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198970.P13664485622081058603

namespace A198970

/-- `∑[abs(Δ[A093141(n)])]` -/
def P13664485622081058603.Spec : Prop :=
  ∀ n, P13664485622081058603.a n = A198970 n

end A198970

/-! ## A198970.P5449844581559398434

`A133195(3*n+1)`
-/

namespace A198970.P5449844581559398434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133195 (3 * n + 1)

end

end A198970.P5449844581559398434

namespace A198970

/-- `A133195(3*n+1)` -/
def P5449844581559398434.Spec : Prop :=
  ∀ n, P5449844581559398434.a n = A198970 n

end A198970

/-! ## A198970.P7366844141987820675

`3*A097169(2*n)`
-/

namespace A198970.P7366844141987820675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A097169 (2 * n)

end

end A198970.P7366844141987820675

namespace A198970

/-- `3*A097169(2*n)` -/
def P7366844141987820675.Spec : Prop :=
  ∀ n, P7366844141987820675.a n = A198970 n

end A198970

/-! ## A198970.P8094381149960635490

`(A199689(n)-3)/2`
-/

namespace A198970.P8094381149960635490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199689 n - 3 : ℚ) / 2

end

end A198970.P8094381149960635490

namespace A198970

/-- `(A199689(n)-3)/2` -/
def P8094381149960635490.Spec : Prop :=
  ∀ n, P8094381149960635490.a n = (A198970 n : ℚ)

end A198970

/-! ## A198970.P12805627485530949964

`(A100412(n)+5)/2`
-/

namespace A198970.P12805627485530949964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100412 n + 5 : ℚ) / 2

end

end A198970.P12805627485530949964

namespace A198970

/-- `(A100412(n)+5)/2` -/
def P12805627485530949964.Spec : Prop :=
  ∀ n, P12805627485530949964.a n = (A198970 n : ℚ)

end A198970

/-! ## A198970.P8693786210970366745

`A331788(9*n+2)`
-/

namespace A198970.P8693786210970366745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331788 (9 * n + 2)

end

end A198970.P8693786210970366745

namespace A198970

/-- `A331788(9*n+2)` -/
def P8693786210970366745.Spec : Prop :=
  ∀ n, P8693786210970366745.a n = A198970 n

end A198970

/-! ## A198970.P12805380942865662156

`3*(A073553(n+1)-1)`
-/

namespace A198970.P12805380942865662156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A073553 (n + 1) - 1)

end

end A198970.P12805380942865662156

namespace A198970

/-- `3*(A073553(n+1)-1)` -/
def P12805380942865662156.Spec : Prop :=
  ∀ n, P12805380942865662156.a n = A198970 n

end A198970

/-! ## A198970.P14801710210833904976

`A051885(A017197(n))`
-/

namespace A198970.P14801710210833904976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A017197 n).toNat

end

end A198970.P14801710210833904976

namespace A198970

/-- `A051885(A017197(n))` -/
def P14801710210833904976.Spec : Prop :=
  ∀ n, P14801710210833904976.a n = A198970 n

end A198970

/-! ## A198970.P10582344555733040417

`A077491(A017233(n))`
-/

namespace A198970.P10582344555733040417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077491 (A017233 n).toNat

end

end A198970.P10582344555733040417

namespace A198970

/-- `A077491(A017233(n))` -/
def P10582344555733040417.Spec : Prop :=
  ∀ n, P10582344555733040417.a n = A198970 n

end A198970

/-!
# A198971: a(n) = 5*10^n - 1.

The programs for A198971, the canonical program `A198971.P6851054874129121240` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198971 has offset 0).

The definition of A198971 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*10^n-1` (program `A198971.P6851054874129121240`, by `A198971.P6851054874129121240.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198971.P6851054874129121240

`5*10^n-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198971

/-- `5*10^n-1` -/
def P6851054874129121240.Spec : Prop :=
  ∀ n, P6851054874129121240.a n = A198971 n

theorem P6851054874129121240.correct : P6851054874129121240.Spec := by
  intro n
  simp only [A198971]

end A198971

/-! ## A198971.P14869384219961222053

`A099150(n+1)/2`
-/

namespace A198971.P14869384219961222053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099150 (n + 1) : ℚ) / 2

end

end A198971.P14869384219961222053

namespace A198971

/-- `A099150(n+1)/2` -/
def P14869384219961222053.Spec : Prop :=
  ∀ n, P14869384219961222053.a n = (A198971 n : ℚ)

end A198971

/-! ## A198971.P17151613683697330689

`A086940(n+1)/4`
-/

namespace A198971.P17151613683697330689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086940 (n + 1) : ℚ) / 4

end

end A198971.P17151613683697330689

namespace A198971

/-- `A086940(n+1)/4` -/
def P17151613683697330689.Spec : Prop :=
  ∀ n, P17151613683697330689.a n = (A198971 n : ℚ)

end A198971

/-! ## A198971.P12163075556485020852

`A086942(n+1)/8`
-/

namespace A198971.P12163075556485020852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086942 (n + 1) : ℚ) / 8

end

end A198971.P12163075556485020852

namespace A198971

/-- `A086942(n+1)/8` -/
def P12163075556485020852.Spec : Prop :=
  ∀ n, P12163075556485020852.a n = (A198971 n : ℚ)

end A198971

/-! ## A198971.P1491414441688542089

`ogf((4+5x)/(1-11x+10x^2))`
-/

namespace A198971.P1491414441688542089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 5] [1, -11, 10] n

end

end A198971.P1491414441688542089

namespace A198971

/-- `ogf((4+5x)/(1-11x+10x^2))` -/
def P1491414441688542089.Spec : Prop :=
  ∀ n, P1491414441688542089.a n = A198971 n

end A198971

/-! ## A198971.P14604947487413374851

`∑[10*a(n-1)]` with `a(0)=4, a(1)=45`
-/

namespace A198971.P14604947487413374851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 45] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198971.P14604947487413374851

namespace A198971

/-- `∑[10*a(n-1)]` -/
def P14604947487413374851.Spec : Prop :=
  ∀ n, (P14604947487413374851.a n : ℤ) = A198971 n

end A198971

/-! ## A198971.P6360369520207104446

`xor(-2, -10^(n+1))/2`
-/

namespace A198971.P6360369520207104446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (-2) (-(10 ^ (n + 1) : ℤ)) : ℚ) / 2

end

end A198971.P6360369520207104446

namespace A198971

/-- `xor(-2, -10^(n+1))/2` -/
def P6360369520207104446.Spec : Prop :=
  ∀ n, P6360369520207104446.a n = (A198971 n : ℚ)

end A198971

/-! ## A198971.P2728079975196903925

`record[10^abs(1-n)-2]/2`
-/

namespace A198971.P2728079975196903925
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 2

end

end A198971.P2728079975196903925

namespace A198971

/-- `record[10^abs(1-n)-2]/2` -/
def P2728079975196903925.Spec : Prop :=
  ∀ n, P2728079975196903925.a n = (A198971 n : ℚ)

end A198971

/-! ## A198971.P10124154926008367241

`A268099(2*n)`
-/

namespace A198971.P10124154926008367241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268099 (2 * n)

end

end A198971.P10124154926008367241

namespace A198971

/-- `A268099(2*n)` -/
def P10124154926008367241.Spec : Prop :=
  ∀ n, P10124154926008367241.a n = A198971 n

end A198971

/-! ## A198971.P15084553267331677393

`abs(2-A199685(n))`
-/

namespace A198971.P15084553267331677393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199685 n|

end

end A198971.P15084553267331677393

namespace A198971

/-- `abs(2-A199685(n))` -/
def P15084553267331677393.Spec : Prop :=
  ∀ n, P15084553267331677393.a n = A198971 n

end A198971

/-! ## A198971.P12730637129323411380

`∑[A346629(n+2)]`
-/

namespace A198971.P12730637129323411380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346629 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198971.P12730637129323411380

namespace A198971

/-- `∑[A346629(n+2)]` -/
def P12730637129323411380.Spec : Prop :=
  ∀ n, P12730637129323411380.a n = A198971 n

end A198971

/-! ## A198971.P6834413031038939862

`Δ[A002279(n)-n]`
-/

namespace A198971.P6834413031038939862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198971.P6834413031038939862

namespace A198971

/-- `Δ[A002279(n)-n]` -/
def P6834413031038939862.Spec : Prop :=
  ∀ n, P6834413031038939862.a n = A198971 n

end A198971

/-! ## A198971.P73167963674068919

`∑[abs(Δ[A093143(n)])]`
-/

namespace A198971.P73167963674068919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198971.P73167963674068919

namespace A198971

/-- `∑[abs(Δ[A093143(n)])]` -/
def P73167963674068919.Spec : Prop :=
  ∀ n, P73167963674068919.a n = A198971 n

end A198971

/-! ## A198971.P9301273299986444128

`A173712(2*(n+1))`
-/

namespace A198971.P9301273299986444128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173712 (2 * (n + 1))

end

end A198971.P9301273299986444128

namespace A198971

/-- `A173712(2*(n+1))` -/
def P9301273299986444128.Spec : Prop :=
  ∀ n, P9301273299986444128.a n = A198971 n

end A198971

/-! ## A198971.P17287893386330026483

`A133264(3*n+1)`
-/

namespace A198971.P17287893386330026483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133264 (3 * n + 1)

end

end A198971.P17287893386330026483

namespace A198971

/-- `A133264(3*n+1)` -/
def P17287893386330026483.Spec : Prop :=
  ∀ n, P17287893386330026483.a n = A198971 n

end A198971

/-! ## A198971.P9670937362506192858

`∑[Δ[A103456(n)]/2]`
-/

namespace A198971.P9670937362506192858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103456 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198971.P9670937362506192858

namespace A198971

/-- `∑[Δ[A103456(n)]/2]` -/
def P9670937362506192858.Spec : Prop :=
  ∀ n, P9670937362506192858.a n = (A198971 n : ℚ)

end A198971

/-! ## A198971.P9559875865942910718

`floor(A002283(n+1)/2)`
-/

namespace A198971.P9559875865942910718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002283 (n + 1) : ℚ) / 2⌋

end

end A198971.P9559875865942910718

namespace A198971

/-- `floor(A002283(n+1)/2)` -/
def P9559875865942910718.Spec : Prop :=
  ∀ n, P9559875865942910718.a n = A198971 n

end A198971

/-! ## A198971.P6961377388465045188

`ceil(A173833(n+1)/2)`
-/

namespace A198971.P6961377388465045188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173833 (n + 1) : ℚ) / 2⌉

end

end A198971.P6961377388465045188

namespace A198971

/-- `ceil(A173833(n+1)/2)` -/
def P6961377388465045188.Spec : Prop :=
  ∀ n, P6961377388465045188.a n = A198971 n

end A198971

/-! ## A198971.P4984400304817049207

`(A103456(n+1)-1)/2`
-/

namespace A198971.P4984400304817049207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103456 (n + 1) - 1 : ℚ) / 2

end

end A198971.P4984400304817049207

namespace A198971

/-- `(A103456(n+1)-1)/2` -/
def P4984400304817049207.Spec : Prop :=
  ∀ n, P4984400304817049207.a n = (A198971 n : ℚ)

end A198971

/-!
# A198972: a(n) = (7*10^n - 1)/3.

The programs for A198972, the canonical program `A198972.P15513267102825636132` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198972 has offset 0).

The definition of A198972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*10^n-1)/3` (program `A198972.P9569837719028409546`, by `A198972.P9569837719028409546.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198972.P9569837719028409546

`(7*10^n-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A198972.P9569837719028409546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 * 10 ^ n : ℤ) - 1 : ℚ) / 3

end

end A198972.P9569837719028409546

namespace A198972

/-- `(7*10^n-1)/3` -/
def P9569837719028409546.Spec : Prop :=
  ∀ n, P9569837719028409546.a n = (A198972 n : ℚ)

theorem P9569837719028409546.correct : P9569837719028409546.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198972, Nat.add_sub_cancel, A198972.P9569837719028409546.a, A198972.P15513267102825636132.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198972, Nat.add_sub_cancel, A198972.P9569837719028409546.a, A198972.P15513267102825636132.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198972

/-! ## A198972.P15513267102825636132

`10*a(n-1)+3` with `a(0)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198972

/-- `10*a(n-1)+3` -/
def P15513267102825636132.Spec : Prop :=
  ∀ n, (P15513267102825636132.a n : ℤ) = A198972 n

theorem P15513267102825636132.correct : P15513267102825636132.Spec := by
  intro n
  simp only [A198972]

end A198972

/-! ## A198972.P6632482242144215607

`ogf((2+x)/(1-11x+10x^2))`
-/

namespace A198972.P6632482242144215607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -11, 10] n

end

end A198972.P6632482242144215607

namespace A198972

/-- `ogf((2+x)/(1-11x+10x^2))` -/
def P6632482242144215607.Spec : Prop :=
  ∀ n, P6632482242144215607.a n = A198972 n

end A198972

/-! ## A198972.P5205112414381856790

`∑[10*a(n-1)]` with `a(0)=2, a(1)=21`
-/

namespace A198972.P5205112414381856790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 21] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198972.P5205112414381856790

namespace A198972

/-- `∑[10*a(n-1)]` -/
def P5205112414381856790.Spec : Prop :=
  ∀ n, (P5205112414381856790.a n : ℤ) = A198972 n

end A198972

/-! ## A198972.P9692928054103581426

`5-2*(1-5*a(n-1))` with `a(0)=2`
-/

namespace A198972.P9692928054103581426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 - 2 * (1 - 5 * a (n - 1))

end

end A198972.P9692928054103581426

namespace A198972

/-- `5-2*(1-5*a(n-1))` -/
def P9692928054103581426.Spec : Prop :=
  ∀ n, P9692928054103581426.a n = A198972 n

end A198972

/-! ## A198972.P15438421090424234120

`3*A002281(n)+2`
-/

namespace A198972.P15438421090424234120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002281 n + 2

end

end A198972.P15438421090424234120

namespace A198972

/-- `3*A002281(n)+2` -/
def P15438421090424234120.Spec : Prop :=
  ∀ n, P15438421090424234120.a n = A198972 n

end A198972

/-! ## A198972.P6228778955695065654

`A133201(3*n+2)`
-/

namespace A198972.P6228778955695065654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133201 (3 * n + 2)

end

end A198972.P6228778955695065654

namespace A198972

/-- `A133201(3*n+2)` -/
def P6228778955695065654.Spec : Prop :=
  ∀ n, P6228778955695065654.a n = A198972 n

end A198972

/-! ## A198972.P2135027258729451836

`A086578(n)/3+2`
-/

namespace A198972.P2135027258729451836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086578 n : ℚ) / 3 + 2

end

end A198972.P2135027258729451836

namespace A198972

/-- `A086578(n)/3+2` -/
def P2135027258729451836.Spec : Prop :=
  ∀ n, P2135027258729451836.a n = (A198972 n : ℚ)

end A198972

/-! ## A198972.P9180313597887354272

`∑[A155890(n²+n+1)]`
-/

namespace A198972.P9180313597887354272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155890 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198972.P9180313597887354272

namespace A198972

/-- `∑[A155890(n²+n+1)]` -/
def P9180313597887354272.Spec : Prop :=
  ∀ n, P9180313597887354272.a n = A198972 n

end A198972

/-! ## A198972.P14614065654250729997

`A097166(n)+A011557(n)`
-/

namespace A198972.P14614065654250729997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097166 n + A011557 n

end

end A198972.P14614065654250729997

namespace A198972

/-- `A097166(n)+A011557(n)` -/
def P14614065654250729997.Spec : Prop :=
  ∀ n, P14614065654250729997.a n = A198972 n

end A198972

/-! ## A198972.P17816366236957158809

`A198970(n)-A246057(n)`
-/

namespace A198972.P17816366236957158809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198970 n - A246057 n

end

end A198972.P17816366236957158809

namespace A198972

/-- `A198970(n)-A246057(n)` -/
def P17816366236957158809.Spec : Prop :=
  ∀ n, P17816366236957158809.a n = A198972 n

end A198972

/-! ## A198972.P9342053589727413244

`A002276(n+1)+A002275(n)`
-/

namespace A198972.P9342053589727413244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (n + 1) + A002275 n

end

end A198972.P9342053589727413244

namespace A198972

/-- `A002276(n+1)+A002275(n)` -/
def P9342053589727413244.Spec : Prop :=
  ∀ n, P9342053589727413244.a n = A198972 n

end A198972

/-! ## A198972.P2222581705643020152

`A002278(n)+A246059(n)+1`
-/

namespace A198972.P2222581705643020152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 n + (A246059 n + 1)

end

end A198972.P2222581705643020152

namespace A198972

/-- `A002278(n)+A246059(n)+1` -/
def P2222581705643020152.Spec : Prop :=
  ∀ n, P2222581705643020152.a n = A198972 n

end A198972

/-! ## A198972.P6391274222958458705

`A246057(n)+A067275(n+1)`
-/

namespace A198972.P6391274222958458705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246057 n + A067275 (n + 1)

end

end A198972.P6391274222958458705

namespace A198972

/-- `A246057(n)+A067275(n+1)` -/
def P6391274222958458705.Spec : Prop :=
  ∀ n, P6391274222958458705.a n = A198972 n

end A198972

/-! ## A198972.P3777015475707739820

`A002277(n+1)-A011557(n)`
-/

namespace A198972.P3777015475707739820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 (n + 1) - A011557 n

end

end A198972.P3777015475707739820

namespace A198972

/-- `A002277(n+1)-A011557(n)` -/
def P3777015475707739820.Spec : Prop :=
  ∀ n, P3777015475707739820.a n = A198972 n

end A198972

/-! ## A198972.P14631974769859183881

`A199684(n)-(A126109(n)+1)`
-/

namespace A198972.P14631974769859183881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199684 n - (A126109 n + 1)

end

end A198972.P14631974769859183881

namespace A198972

/-- `A199684(n)-(A126109(n)+1)` -/
def P14631974769859183881.Spec : Prop :=
  ∀ n, P14631974769859183881.a n = A198972 n

end A198972

/-! ## A198972.P976916354408923439

`A093137(n)+A199682(n)-2`
-/

namespace A198972.P976916354408923439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 n + (A199682 n - 2)

end

end A198972.P976916354408923439

namespace A198972

/-- `A093137(n)+A199682(n)-2` -/
def P976916354408923439.Spec : Prop :=
  ∀ n, P976916354408923439.a n = A198972 n

end A198972

/-! ## A198972.P6704830213968958265

`A199684(n)-(A246057(n)+2)`
-/

namespace A198972.P6704830213968958265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199684 n - (A246057 n + 2)

end

end A198972.P6704830213968958265

namespace A198972

/-- `A199684(n)-(A246057(n)+2)` -/
def P6704830213968958265.Spec : Prop :=
  ∀ n, P6704830213968958265.a n = A198972 n

end A198972

/-! ## A198972.P13662471437928399780

`A002276(n+1)+A002276(n)/2`
-/

namespace A198972.P13662471437928399780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002276 (n + 1) : ℚ) + (A002276 n : ℚ) / 2

end

end A198972.P13662471437928399780

namespace A198972

/-- `A002276(n+1)+A002276(n)/2` -/
def P13662471437928399780.Spec : Prop :=
  ∀ n, P13662471437928399780.a n = (A198972 n : ℚ)

end A198972

/-! ## A198972.P12891572901126400424

`A094627(2*n+1)-A002275(n+1)`
-/

namespace A198972.P12891572901126400424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094627 (2 * n + 1) - A002275 (n + 1)

end

end A198972.P12891572901126400424

namespace A198972

/-- `A094627(2*n+1)-A002275(n+1)` -/
def P12891572901126400424.Spec : Prop :=
  ∀ n, P12891572901126400424.a n = A198972 n

end A198972

/-!
# A198973: a(n) = 8*10^n - 1.

The programs for A198973, the canonical program `A198973.P11116975079667283746` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198973 has offset 0).

The definition of A198973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*10^n-1` (program `A198973.P11116975079667283746`, by `A198973.P11116975079667283746.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198973.P11116975079667283746

`8*10^n-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198973

/-- `8*10^n-1` -/
def P11116975079667283746.Spec : Prop :=
  ∀ n, P11116975079667283746.a n = A198973 n

theorem P11116975079667283746.correct : P11116975079667283746.Spec := by
  intro n
  simp only [A198973]

end A198973

/-! ## A198973.P578103710113927669

`ogf((7+2x)/(1-11x+10x^2))`
-/

namespace A198973.P578103710113927669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 2] [1, -11, 10] n

end

end A198973.P578103710113927669

namespace A198973

/-- `ogf((7+2x)/(1-11x+10x^2))` -/
def P578103710113927669.Spec : Prop :=
  ∀ n, P578103710113927669.a n = A198973 n

end A198973

/-! ## A198973.P5698969944863354101

`or(9, 10*a(n-1))` with `a(0)=7`
-/

namespace A198973.P5698969944863354101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.lor 9 (10 * a (n - 1))

end

end A198973.P5698969944863354101

namespace A198973

/-- `or(9, 10*a(n-1))` -/
def P5698969944863354101.Spec : Prop :=
  ∀ n, (P5698969944863354101.a n : ℤ) = A198973 n

end A198973

/-! ## A198973.P9957533481869620379

`xor(9, 10*a(n-1))` with `a(0)=7`
-/

namespace A198973.P9957533481869620379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.xor 9 (10 * a (n - 1))

end

end A198973.P9957533481869620379

namespace A198973

/-- `xor(9, 10*a(n-1))` -/
def P9957533481869620379.Spec : Prop :=
  ∀ n, (P9957533481869620379.a n : ℤ) = A198973 n

end A198973

/-! ## A198973.P17027476817493675498

`or(6, lcm(10, a(n-1))+3)` with `a(0)=7`
-/

namespace A198973.P17027476817493675498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  Nat.lor 6 (Nat.lcm 10 (a (n - 1)) + 3)

end

end A198973.P17027476817493675498

namespace A198973

/-- `or(6, lcm(10, a(n-1))+3)` -/
def P17027476817493675498.Spec : Prop :=
  ∀ n, (P17027476817493675498.a n : ℤ) = A198973 n

end A198973

/-! ## A198973.P7466242117342572447

`∑[ceil(Δ[10*a(n-1)])]` with `a(0)=1, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A198973.P7466242117342572447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f2 =>
  10 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198973.P7466242117342572447

namespace A198973

/-- `∑[ceil(Δ[10*a(n-1)])]` -/
def P7466242117342572447.Spec : Prop :=
  ∀ n, P7466242117342572447.a n = A198973 n

end A198973

/-! ## A198973.P17265627525121888049

`or(7, A086579(n))`
-/

namespace A198973.P17265627525121888049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A086579 n)

end

end A198973.P17265627525121888049

namespace A198973

/-- `or(7, A086579(n))` -/
def P17265627525121888049.Spec : Prop :=
  ∀ n, P17265627525121888049.a n = A198973 n

end A198973

/-! ## A198973.P12127717553109437815

`abs(2-A199689(n))`
-/

namespace A198973.P12127717553109437815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A199689 n|

end

end A198973.P12127717553109437815

namespace A198973

/-- `abs(2-A199689(n))` -/
def P12127717553109437815.Spec : Prop :=
  ∀ n, P12127717553109437815.a n = A198973 n

end A198973

/-! ## A198973.P8216027253124433051

`Δ[A002282(n)-n]`
-/

namespace A198973.P8216027253124433051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198973.P8216027253124433051

namespace A198973

/-- `Δ[A002282(n)-n]` -/
def P8216027253124433051.Spec : Prop :=
  ∀ n, P8216027253124433051.a n = A198973 n

end A198973

/-! ## A198973.P16519511169631153068

`∑[abs(Δ[A346178(n)])]`
-/

namespace A198973.P16519511169631153068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198973.P16519511169631153068

namespace A198973

/-- `∑[abs(Δ[A346178(n)])]` -/
def P16519511169631153068.Spec : Prop :=
  ∀ n, P16519511169631153068.a n = A198973 n

end A198973

/-! ## A198973.P5411610238001982336

`A133264(3*n+2)`
-/

namespace A198973.P5411610238001982336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133264 (3 * n + 2)

end

end A198973.P5411610238001982336

namespace A198973

/-- `A133264(3*n+2)` -/
def P5411610238001982336.Spec : Prop :=
  ∀ n, P5411610238001982336.a n = A198973 n

end A198973

/-! ## A198973.P2137317203082115415

`abs(1-A346178(n+1))`
-/

namespace A198973.P2137317203082115415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A346178 (n + 1)|

end

end A198973.P2137317203082115415

namespace A198973

/-- `abs(1-A346178(n+1))` -/
def P2137317203082115415.Spec : Prop :=
  ∀ n, P2137317203082115415.a n = A198973 n

end A198973

/-! ## A198973.P15751407834355068087

`A331788(8*n+4+n)`
-/

namespace A198973.P15751407834355068087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331788 (8 * n + 4 + n)

end

end A198973.P15751407834355068087

namespace A198973

/-- `A331788(8*n+4+n)` -/
def P15751407834355068087.Spec : Prop :=
  ∀ n, P15751407834355068087.a n = A198973 n

end A198973

/-! ## A198973.P8202052996768606156

`A051885(A017245(n))`
-/

namespace A198973.P8202052996768606156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A017245 n).toNat

end

end A198973.P8202052996768606156

namespace A198973

/-- `A051885(A017245(n))` -/
def P8202052996768606156.Spec : Prop :=
  ∀ n, P8202052996768606156.a n = A198973 n

end A198973

/-! ## A198973.P6717719038296813167

`A077492(A017257(n))`
-/

namespace A198973.P6717719038296813167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077492 (A017257 n).toNat

end

end A198973.P6717719038296813167

namespace A198973

/-- `A077492(A017257(n))` -/
def P6717719038296813167.Spec : Prop :=
  ∀ n, P6717719038296813167.a n = A198973 n

end A198973

/-! ## A198973.P5232459972231551558

`A051885(A017233(n)+1)`
-/

namespace A198973.P5232459972231551558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A017233 n + 1).toNat

end

end A198973.P5232459972231551558

namespace A198973

/-- `A051885(A017233(n)+1)` -/
def P5232459972231551558.Spec : Prop :=
  ∀ n, P5232459972231551558.a n = A198973 n

end A198973

/-! ## A198973.P778343745193701868

`A077492(A017245(n)+1)`
-/

namespace A198973.P778343745193701868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077492 (A017245 n + 1).toNat

end

end A198973.P778343745193701868

namespace A198973

/-- `A077492(A017245(n)+1)` -/
def P778343745193701868.Spec : Prop :=
  ∀ n, P778343745193701868.a n = A198973 n

end A198973

/-! ## A198973.P4303452203052868571

`A051885(A017221(n)+2)`
-/

namespace A198973.P4303452203052868571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A017221 n + 2).toNat

end

end A198973.P4303452203052868571

namespace A198973

/-- `A051885(A017221(n)+2)` -/
def P4303452203052868571.Spec : Prop :=
  ∀ n, P4303452203052868571.a n = A198973 n

end A198973

/-!
# A198974: a(n) = 2*11^n-1.

The programs for A198974, the canonical program `A198974.P5722240671987731695` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198974 has offset 0).

The definition of A198974 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*11^n-1` (program `A198974.P5722240671987731695`, by `A198974.P5722240671987731695.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198974.P5722240671987731695

`2*11^n-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198974

/-- `2*11^n-1` -/
def P5722240671987731695.Spec : Prop :=
  ∀ n, P5722240671987731695.a n = A198974 n

theorem P5722240671987731695.correct : P5722240671987731695.Spec := by
  intro n
  simp only [A198974]

end A198974

/-! ## A198974.P16295456633909245449

`xor(3, 2*11^n)`
-/

namespace A198974.P16295456633909245449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * 11 ^ n)

end

end A198974.P16295456633909245449

namespace A198974

/-- `xor(3, 2*11^n)` -/
def P16295456633909245449.Spec : Prop :=
  ∀ n, (P16295456633909245449.a n : ℤ) = A198974 n

end A198974

/-! ## A198974.P8333536464136967594

`ogf((1+9x)/(1-12x+11x^2))`
-/

namespace A198974.P8333536464136967594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9] [1, -12, 11] n

end

end A198974.P8333536464136967594

namespace A198974

/-- `ogf((1+9x)/(1-12x+11x^2))` -/
def P8333536464136967594.Spec : Prop :=
  ∀ n, P8333536464136967594.a n = A198974 n

end A198974

/-! ## A198974.P15987249274786541441

`∑[11*a(n-1)]` with `a(0)=1, a(1)=20`
-/

namespace A198974.P15987249274786541441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n f1 =>
  11 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198974.P15987249274786541441

namespace A198974

/-- `∑[11*a(n-1)]` -/
def P15987249274786541441.Spec : Prop :=
  ∀ n, (P15987249274786541441.a n : ℤ) = A198974 n

end A198974

/-! ## A198974.P1905332304585171386

`floor(A199020(n)/2)`
-/

namespace A198974.P1905332304585171386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199020 n : ℚ) / 2⌋

end

end A198974.P1905332304585171386

namespace A198974

/-- `floor(A199020(n)/2)` -/
def P1905332304585171386.Spec : Prop :=
  ∀ n, P1905332304585171386.a n = A198974 n

end A198974

/-! ## A198974.P10893165197533203899

`floor(A199024(n)/3)`
-/

namespace A198974.P10893165197533203899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199024 n : ℚ) / 3⌋

end

end A198974.P10893165197533203899

namespace A198974

/-- `floor(A199024(n)/3)` -/
def P10893165197533203899.Spec : Prop :=
  ∀ n, P10893165197533203899.a n = A198974 n

end A198974

/-! ## A198974.P17803368749607950003

`floor(A199027(n)/4)`
-/

namespace A198974.P17803368749607950003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199027 n : ℚ) / 4⌋

end

end A198974.P17803368749607950003

namespace A198974

/-- `floor(A199027(n)/4)` -/
def P17803368749607950003.Spec : Prop :=
  ∀ n, P17803368749607950003.a n = A198974 n

end A198974

/-! ## A198974.P8170655986212706739

`floor(A199030(n)/5)`
-/

namespace A198974.P8170655986212706739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199030 n : ℚ) / 5⌋

end

end A198974.P8170655986212706739

namespace A198974

/-- `floor(A199030(n)/5)` -/
def P8170655986212706739.Spec : Prop :=
  ∀ n, P8170655986212706739.a n = A198974 n

end A198974

/-! ## A198974.P16162407768682176275

`(A199753(n)-3)/2`
-/

namespace A198974.P16162407768682176275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199753 n - 3 : ℚ) / 2

end

end A198974.P16162407768682176275

namespace A198974

/-- `(A199753(n)-3)/2` -/
def P16162407768682176275.Spec : Prop :=
  ∀ n, P16162407768682176275.a n = (A198974 n : ℚ)

end A198974

/-!
# A198975: Number of n X n 0..5 arrays with values 0..5 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198975, there is no canonical definition to state claims against.
-/

/-! ## A198975.P6550112085959775668

`A198982(2*(n+1)²-2*(n+1)+1)`
-/

namespace A198975.P6550112085959775668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A198975.P6550112085959775668

/-!
# A198976: Number of n X 2 0..5 arrays with values 0..5 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198976, there is no canonical definition to state claims against.
-/

/-! ## A198976.P14455461315015296346

`32*a(n-1)-262*a(n-2)+672*a(n-3)-441*a(n-4)` with `a(0)=1, a(1)=4, a(2)=34, a(3)=481`
-/

namespace A198976.P14455461315015296346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 34, 481] fun n a =>
  32 * a (n - 1) - 262 * a (n - 2) + 672 * a (n - 3) - 441 * a (n - 4)

end

end A198976.P14455461315015296346

/-! ## A198976.P8062130703029287266

`(189+56*3^(n+1)+18*7^(n+1)+21^(n+1))/504`
-/

namespace A198976.P8062130703029287266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (189 + 56 * 3 ^ (n + 1) + 18 * 7 ^ (n + 1) + 21 ^ (n + 1) : ℚ) / 504

end

end A198976.P8062130703029287266

/-! ## A198976.P6867758895676712952

`A198982(∑[n+1]+2)`
-/

namespace A198976.P6867758895676712952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198976.P6867758895676712952

/-! ## A198976.P6701268861943906366

`record[A097806(n)*A198982(n+1)]`
-/

namespace A198976.P6701268861943906366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A198982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198976.P6701268861943906366

/-! ## A198976.P16522096508404378724

`A214166(∑[n+1])`
-/

namespace A198976.P16522096508404378724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214166 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A198976.P16522096508404378724

/-!
# A198977: Number of nX3 0..5 arrays with values 0..5 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198977, there is no canonical definition to state claims against.
-/

/-! ## A198977.P16205979722425297388

`A198982(∑[n+2]+4)`
-/

namespace A198977.P16205979722425297388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198977.P16205979722425297388

/-! ## A198977.P17742978897437892024

`lcm((-1)^n, A198982(A167614(n+1)))`
-/

namespace A198977.P17742978897437892024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A198982 (A167614 (n + 1)).toNat)

end

end A198977.P17742978897437892024

/-! ## A198977.P926430174593594252

`A198982(A167614(n+1))+A011739(n)`
-/

namespace A198977.P926430174593594252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (A167614 (n + 1)).toNat + A011739 n

end

end A198977.P926430174593594252

/-! ## A198977.P16386329704236982274

`A198982(A167614(n+1))+A178780(n)`
-/

namespace A198977.P16386329704236982274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (A167614 (n + 1)).toNat + A178780 n

end

end A198977.P16386329704236982274

/-! ## A198977.P11763783705040104982

`A198982(A167614(n+1))+A185284(n)`
-/

namespace A198977.P11763783705040104982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (A167614 (n + 1)).toNat + A185284 n

end

end A198977.P11763783705040104982

/-!
# A198978: Number of nX4 0..5 arrays with values 0..5 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198978, there is no canonical definition to state claims against.
-/

/-! ## A198978.P14877707819498804933

`A198982(A141214(n)+7)`
-/

namespace A198978.P14877707819498804933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (A141214 n + 7).toNat

end

end A198978.P14877707819498804933

/-! ## A198978.P6992714308635756425

`A198982(A167614(n+2)+1)`
-/

namespace A198978.P6992714308635756425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (A167614 (n + 2) + 1).toNat

end

end A198978.P6992714308635756425

/-! ## A198978.P13385048005519239331

`A198982(A179865(n+4)+4)`
-/

namespace A198978.P13385048005519239331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (A179865 (n + 4) + 4).toNat

end

end A198978.P13385048005519239331

/-! ## A198978.P8109498461429323687

`A198982(A052905(n+2)-2*n)`
-/

namespace A198978.P8109498461429323687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (A052905 (n + 2) - (2 * n : ℤ)).toNat

end

end A198978.P8109498461429323687

/-! ## A198978.P7711688349676278475

`A198982(A027379(n+2))`
-/

namespace A198978.P7711688349676278475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (A027379 (n + 2)).toNat

end

end A198978.P7711688349676278475

/-!
# A198979: Number of nX5 0..5 arrays with values 0..5 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198979, there is no canonical definition to state claims against.
-/

/-! ## A198979.P3631299746174930020

`A198982(A374005(n+1))`
-/

namespace A198979.P3631299746174930020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (A374005 (n + 1)).toNat

end

end A198979.P3631299746174930020

/-! ## A198979.P7671503678529651126

`A198982(A167499(n+3))`
-/

namespace A198979.P7671503678529651126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (A167499 (n + 3)).toNat

end

end A198979.P7671503678529651126

/-! ## A198979.P7566103455784533108

`A198982(A056000(n)+15)`
-/

namespace A198979.P7566103455784533108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (A056000 n + 15).toNat

end

end A198979.P7566103455784533108

/-! ## A198979.P14805684023514620721

`A198982(A167614(n+3)+2)`
-/

namespace A198979.P14805684023514620721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (A167614 (n + 3) + 2).toNat

end

end A198979.P14805684023514620721

/-! ## A198979.P14315393758396657225

`A198982(A000217(n+5)-n)`
-/

namespace A198979.P14315393758396657225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (A000217 (n + 5) - (n : ℤ)).toNat

end

end A198979.P14315393758396657225

/-!
# A198980: 

The programs for A198980, there is no canonical definition to state claims against.
-/

/-! ## A198980.P9845198866210226700

`A198982(A302338(2*n+5)+∑[n])`
-/

namespace A198980.P9845198866210226700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (A302338 (2 * n + 5) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A198980.P9845198866210226700

/-!
# A198981: 

The programs for A198981, there is no canonical definition to state claims against.
-/

/-! ## A198981.P14776150656493519645

`A198982(eq[11, A066657(n)])`
-/

namespace A198981.P14776150656493519645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198981.P14776150656493519645

/-! ## A198981.P4623851927696048633

`A198982(eq[8, A131818(n+1)])`
-/

namespace A198981.P4623851927696048633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198981.P4623851927696048633

/-! ## A198981.P12673530512862080646

`A198982(eq[8, A237448(n+1)])`
-/

namespace A198981.P12673530512862080646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198981.P12673530512862080646

/-! ## A198981.P6965921587153377654

`A198982(A000124(n+6)+n)`
-/

namespace A198981.P6965921587153377654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198982 (A000124 (n + 6) + (n : ℤ)).toNat

end

end A198981.P6965921587153377654

/-!
# A198982: T(n,k) = number of n X k 0..5 arrays with values 0..5 introduced in row major order and no element equal to any horizontal or vertical neighbor.

The programs for A198982, there is no canonical definition to state claims against.
-/

/-! ## A198982.P2121155441908679065

`A198914(n+1)-A048158(A022178(n))`
-/

namespace A198982.P2121155441908679065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (n + 1) - A048158 (A022178 n).toNat

end

end A198982.P2121155441908679065

/-! ## A198982.P5917746153344305865

`A198914(n+1)-A243784(A026780(n))`
-/

namespace A198982.P5917746153344305865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (n + 1) - A243784 (A026780 n).toNat

end

end A198982.P5917746153344305865

/-! ## A198982.P9885506872215844617

`A198723(n+1)-A255378(A185293(n))`
-/

namespace A198982.P9885506872215844617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198723 (n + 1) - A255378 (A185293 n).toNat

end

end A198982.P9885506872215844617

/-! ## A198982.P9127512109835137966

`A198914(n+1)-A243784(A258306(n+2))`
-/

namespace A198982.P9127512109835137966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198914 (n + 1) - A243784 (A258306 (n + 2)).toNat

end

end A198982.P9127512109835137966

