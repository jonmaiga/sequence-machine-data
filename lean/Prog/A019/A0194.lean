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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C025
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A019402: Primes with primitive root 79.

The programs for A019402, there is no canonical definition to state claims against.
-/

/-! ## A019402.P17574921139294383710

`p?[A028790(A028788(n+1))-1]`
-/

namespace A019402.P17574921139294383710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028790 (A028788 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019402.P17574921139294383710

/-! ## A019402.P10215718380035617092

`p?[∑[A086436(A133041(n))]]`
-/

namespace A019402.P10215718380035617092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (A133041 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019402.P10215718380035617092

/-! ## A019402.P18267024729013337218

`record[p?[A129129(A165998(n))]]`
-/

namespace A019402.P18267024729013337218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 (A165998 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019402.P18267024729013337218

/-! ## A019402.P2999638663010939315

`eq[A003415(n), A265754(A299956(n+1))]`
-/

namespace A019402.P2999638663010939315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265754 (A299956 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A019402.P2999638663010939315

/-!
# A019403: Primes with primitive root 80.

The programs for A019403, there is no canonical definition to state claims against.
-/

/-! ## A019403.P17083336467530176816

`p?[A298788(record[A302920(n+1)])]`
-/

namespace A019403.P17083336467530176816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302920 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298788 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019403.P17083336467530176816

/-! ## A019403.P6931052059961092071

`∩[A137270(n+1), A347350(n+1)]`
-/

namespace A019403.P6931052059961092071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019403.P6931052059961092071

/-! ## A019403.P8616070960129879161

`p?[C(A003277(2*n+1), A060990(n))]`
-/

namespace A019403.P8616070960129879161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003277 (2 * n + 1)).toNat (A060990 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019403.P8616070960129879161

/-! ## A019403.P18326416749576159893

`p?[A341292(3*n+1)%A112666(2*(n+1))]`
-/

namespace A019403.P18326416749576159893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341292 (3 * n + 1)) (A112666 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019403.P18326416749576159893

/-!
# A019406: Primes with primitive root 84.

The programs for A019406, there is no canonical definition to state claims against.
-/

/-! ## A019406.P3438045241019517811

`∩[A038894(n+1), A201472(n+1)]`
-/

namespace A019406.P3438045241019517811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019406.P3438045241019517811

/-! ## A019406.P9188588273278137748

`p?[∑[A010168(A006128(n))]]`
-/

namespace A019406.P9188588273278137748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010168 (A006128 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019406.P9188588273278137748

/-! ## A019406.P16770445934489443107

`∩[A038894(n+1), A277727(n+1)]`
-/

namespace A019406.P16770445934489443107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019406.P16770445934489443107

/-!
# A019408: Primes with primitive root 86.

The programs for A019408, there is no canonical definition to state claims against.
-/

/-! ## A019408.P6111103256920915070

`filter[A038974(n+1), A225181(#)]`
-/

namespace A019408.P6111103256920915070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A225181 (f1 j).toNat = 1) n)

end

end A019408.P6111103256920915070

/-! ## A019408.P2635634848877260699

`record[A038974(n+1)%A038984(A038989(n))]`
-/

namespace A019408.P2635634848877260699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038974 (n + 1)) (A038984 (A038989 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019408.P2635634848877260699

/-!
# A019409: Primes with primitive root 87.

The programs for A019409, there is no canonical definition to state claims against.
-/

/-! ## A019409.P16840939301051791697

`p?[A000196(∑[A275516(n+1)])]`
-/

namespace A019409.P16840939301051791697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275516 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019409.P16840939301051791697

/-!
# A019411: Primes with primitive root 89.

The programs for A019411, there is no canonical definition to state claims against.
-/

/-! ## A019411.P16886372863142897494

`p?[∑[A137927(A036969(n+1))]]`
-/

namespace A019411.P16886372863142897494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137927 (A036969 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019411.P16886372863142897494

/-! ## A019411.P9837748972764134980

`record[p?[A004396(A194105(n+1))]]`
-/

namespace A019411.P9837748972764134980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A194105 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019411.P9837748972764134980

/-! ## A019411.P12357857270617240984

`A000040(eq[A071542(n), A279783(n+1)])`
-/

namespace A019411.P12357857270617240984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A019411.P12357857270617240984

/-! ## A019411.P15799426192302642777

`A000040(lt[A030001(n), A049500(n+1)])`
-/

namespace A019411.P15799426192302642777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A019411.P15799426192302642777

/-! ## A019411.P152191882282101873

`A000040(lt[A335619(n+1), A000015(n+1)])`
-/

namespace A019411.P152191882282101873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A019411.P152191882282101873

/-!
# A019412: Primes with primitive root 90.

The programs for A019412, there is no canonical definition to state claims against.
-/

/-! ## A019412.P14153641965232241233

`filter[A216664(n+1), A334465(#)]`
-/

namespace A019412.P14153641965232241233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334465 (f1 j).toNat = 1) n)

end

end A019412.P14153641965232241233

/-! ## A019412.P8084150624134069421

`filter[A019365(n+2), A334465(#)]`
-/

namespace A019412.P8084150624134069421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019365 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334465 (f1 j).toNat = 1) n)

end

end A019412.P8084150624134069421

/-! ## A019412.P14870190523326187373

`filter[A038880(n+2), A334465(#)]`
-/

namespace A019412.P14870190523326187373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334465 (f1 j).toNat = 1) n)

end

end A019412.P14870190523326187373

/-! ## A019412.P16837096032436053324

`A028416(lt[A035002(n+1), A351253(n)])`
-/

namespace A019412.P16837096032436053324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028416 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A019412.P16837096032436053324

/-!
# A019413: Primes with primitive root 91.

The programs for A019413, there is no canonical definition to state claims against.
-/

/-! ## A019413.P5093515088522803546

`p?[∑[A128330(A035425(n+1))]]`
-/

namespace A019413.P5093515088522803546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128330 (A035425 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019413.P5093515088522803546

/-!
# A019414: Primes with primitive root 92.

The programs for A019414, there is no canonical definition to state claims against.
-/

/-! ## A019414.P3095393731664154972

`filter[A038898(n+1), A255887(#)]`
-/

namespace A019414.P3095393731664154972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038898 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A255887 (f1 j).toNat = 1) n)

end

end A019414.P3095393731664154972

/-! ## A019414.P7198800671964325895

`∩[A038898(n+1), A128291(n)]`
-/

namespace A019414.P7198800671964325895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128291 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019414.P7198800671964325895

/-! ## A019414.P9781172750829352573

`∩[A038898(n+1), A085714(n+1)]`
-/

namespace A019414.P9781172750829352573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019414.P9781172750829352573

/-! ## A019414.P4825832068037634805

`∩[A040158(n+1), A085714(n+1)]`
-/

namespace A019414.P4825832068037634805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019414.P4825832068037634805

/-! ## A019414.P17940561342200233398

`record[A038898(n+1)%A101866(A001628(n))]`
-/

namespace A019414.P17940561342200233398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038898 (n + 1)) (A101866 (A001628 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019414.P17940561342200233398

/-!
# A019415: Primes with primitive root 93.

The programs for A019415, there is no canonical definition to state claims against.
-/

/-! ## A019415.P669577889592873173

`filter[A038982(n+1), A279693(#)]`
-/

namespace A019415.P669577889592873173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A279693 (f1 j).toNat = 1) n)

end

end A019415.P669577889592873173

/-!
# A019419: Primes with primitive root 97.

The programs for A019419, there is no canonical definition to state claims against.
-/

/-! ## A019419.P14761042304370100192

`record[A248147(abs(A248159(n)))]`
-/

namespace A019419.P14761042304370100192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248147 |A248159 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019419.P14761042304370100192

/-! ## A019419.P3065095913782306998

`p?[∑[A273149(A253663(n))]]`
-/

namespace A019419.P3065095913782306998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273149 (A253663 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019419.P3065095913782306998

/-! ## A019419.P12291477641798040044

`p?[A335235(A345167(n+2))]`
-/

namespace A019419.P12291477641798040044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335235 (A345167 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019419.P12291477641798040044

/-! ## A019419.P11382889025664691103

`p?[eq[A057431(n), A294446(n)]]`
-/

namespace A019419.P11382889025664691103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057431 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294446 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019419.P11382889025664691103

/-! ## A019419.P11387360440104159909

`p?[∏{d}[A270877(n+1), A006530(#)]]`
-/

namespace A019419.P11387360440104159909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270877 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, A006530 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A019419.P11387360440104159909

/-!
# A019420: Primes with primitive root 98.

The programs for A019420, there is no canonical definition to state claims against.
-/

/-! ## A019420.P8985061355872925725

`A003629(A183297(n+1)%A053302(n+1))`
-/

namespace A019420.P8985061355872925725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (Int.tmod (A183297 (n + 1)) (A053302 (n + 1))).toNat

end

end A019420.P8985061355872925725

/-! ## A019420.P16525147684409704623

`A003629(A061375(3*(n+1)))%A134845(n+1)`
-/

namespace A019420.P16525147684409704623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003629 (A061375 (3 * (n + 1))).toNat) (A134845 (n + 1))

end

end A019420.P16525147684409704623

/-! ## A019420.P7458437698631500068

`∩[A003629(n+1), A356713(n+1)]`
-/

namespace A019420.P7458437698631500068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019420.P7458437698631500068

/-! ## A019420.P13970433854513377374

`∩[A059350(n+1), A356713(n+1)]`
-/

namespace A019420.P13970433854513377374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019420.P13970433854513377374

/-! ## A019420.P8949117757944588644

`∩[A059638(n+1), A356713(n+1)]`
-/

namespace A019420.P8949117757944588644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019420.P8949117757944588644

/-!
# A019421: Primes with primitive root 99.

The programs for A019421, there is no canonical definition to state claims against.
-/

/-! ## A019421.P4795056596914960606

`∩[A105840(n+1), A134026(n+1)]`
-/

namespace A019421.P4795056596914960606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019421.P4795056596914960606

/-! ## A019421.P3641542185877218053

`∩[A105840(n+1), A332485(n+1)]`
-/

namespace A019421.P3641542185877218053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019421.P3641542185877218053

/-!
# A019422: Numbers whose sum of divisors is a fourth power.

The programs for A019422, the canonical program `A019422.P17202336525411077466` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019422 has offset 1).

The definition of A019422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019422.P17202336525411077466

`record[A006532(n+1)*A010052(A074385(n+1))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A019422

/-- `record[A006532(n+1)*A010052(A074385(n+1))]` -/
def P17202336525411077466.Spec : Prop :=
  ∀ n, P17202336525411077466.a n = A019422 (n + 1)

theorem P17202336525411077466.correct : P17202336525411077466.Spec := by
  intro n
  simp only [A019422, Nat.add_sub_cancel]

end A019422

/-! ## A019422.P14485689588317465623

`A028310(∪[A048254(n+1), A048258(n+1)])`
-/

namespace A019422.P14485689588317465623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048258 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A019422.P14485689588317465623

namespace A019422

/-- `A028310(∪[A048254(n+1), A048258(n+1)])` -/
def P14485689588317465623.Spec : Prop :=
  ∀ n, P14485689588317465623.a n = A019422 (n + 1)

end A019422

/-!
# A019423: Numbers whose sum of divisors is a fifth power.

The programs for A019423, there is no canonical definition to state claims against.
-/

/-! ## A019423.P253737606702672007

`A046528(A241625(n+1)+A001045(n))`
-/

namespace A019423.P253737606702672007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046528 (A241625 (n + 1) + A001045 n).toNat

end

end A019423.P253737606702672007

/-!
# A019424: Numbers whose sum of divisors is a sixth power.

The programs for A019424, there is no canonical definition to state claims against.
-/

/-! ## A019424.P4496847115468399106

`∩[A006532(n+1), A000027(A329239(n+1))]`
-/

namespace A019424.P4496847115468399106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A329239 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A019424.P4496847115468399106

/-!
# A019425: Continued fraction for tan(1/2).

The programs for A019425, the canonical program `A019425.P4664560728438288772` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019425 has offset 0).

The definition of A019425 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019425.P4664560728438288772

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4, a(4)=1, a(5)=8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019425

/-- `2*a(n-2)-a(n-4)` -/
def P4664560728438288772.Spec : Prop :=
  ∀ n, P4664560728438288772.a n = A019425 n

theorem P4664560728438288772.correct : P4664560728438288772.Spec := by
  intro n
  simp only [A019425]

end A019425

/-! ## A019425.P12219259983060319052

`comp[2*n+3]^(n%2)^n`
-/

namespace A019425.P12219259983060319052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ (n % 2) ^ n

end

end A019425.P12219259983060319052

namespace A019425

/-- `comp[2*n+3]^(n%2)^n` -/
def P12219259983060319052.Spec : Prop :=
  ∀ n, (P12219259983060319052.a n : ℤ) = A019425 n

end A019425

/-! ## A019425.P5301871553153738889

`2*n-xor(3, a(n-1))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A019425.P5301871553153738889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  (2 * n : ℤ) - Int.xor 3 (a (n - 1))

end

end A019425.P5301871553153738889

namespace A019425

/-- `2*n-xor(3, a(n-1))` -/
def P5301871553153738889.Spec : Prop :=
  ∀ n, P5301871553153738889.a n = A019425 n

end A019425

/-! ## A019425.P6747779915274389571

`floor(2*(n-1)/a(n-1))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A019425.P6747779915274389571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  ⌊2 * (((n : ℤ) - 1 : ℚ) / (a (n - 1) : ℚ))⌋

end

end A019425.P6747779915274389571

namespace A019425

/-- `floor(2*(n-1)/a(n-1))` -/
def P6747779915274389571.Spec : Prop :=
  ∀ n, P6747779915274389571.a n = A019425 n

end A019425

/-! ## A019425.P659585703384974937

`floor((n-2+n)/a(n-1))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A019425.P659585703384974937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  ⌊((n : ℤ) - 2 + (n : ℤ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A019425.P659585703384974937

namespace A019425

/-- `floor((n-2+n)/a(n-1))` -/
def P659585703384974937.Spec : Prop :=
  ∀ n, P659585703384974937.a n = A019425 n

end A019425

/-! ## A019425.P9410763754150446129

`n-Δ[floor((n-1)/a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A019425.P9410763754150446129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌊((n : ℤ) - 1 : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A019425.P9410763754150446129

namespace A019425

/-- `n-Δ[floor((n-1)/a(n-1))]` -/
def P9410763754150446129.Spec : Prop :=
  ∀ n, P9410763754150446129.a n = A019425 n

end A019425

/-! ## A019425.P2507913554561106909

`2*(n-gcd(2, n))/a(n-1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A019425.P2507913554561106909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * (((n : ℤ) - (Nat.gcd 2 n : ℤ) : ℚ) / a (n - 1))

end

end A019425.P2507913554561106909

namespace A019425

/-- `2*(n-gcd(2, n))/a(n-1)` -/
def P2507913554561106909.Spec : Prop :=
  ∀ n, P2507913554561106909.a n = (A019425 n : ℚ)

end A019425

/-! ## A019425.P6573482695576795500

`floor((n-(2-n))/floor(a(n-1)))` with `a(0)=0, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A019425.P6573482695576795500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  ⌊((n : ℤ) - (2 - (n : ℤ)) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A019425.P6573482695576795500

namespace A019425

/-- `floor((n-(2-n))/floor(a(n-1)))` -/
def P6573482695576795500.Spec : Prop :=
  ∀ n, P6573482695576795500.a n = A019425 n

end A019425

/-! ## A019425.P11819407817233310452

`a(n-2)+(2%a(n-2))²` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A019425.P11819407817233310452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 4] fun n a =>
  a (n - 2) + (2 % a (n - 2)) ^ 2

end

end A019425.P11819407817233310452

namespace A019425

/-- `a(n-2)+(2%a(n-2))²` -/
def P11819407817233310452.Spec : Prop :=
  ∀ n, (P11819407817233310452.a n : ℤ) = A019425 n

end A019425

/-! ## A019425.P14518804691998017887

`a(3%a(n-2))+a(n-2)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A019425.P14518804691998017887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 4] fun n a =>
  a (3 % a (n - 2)) + a (n - 2)

end

end A019425.P14518804691998017887

namespace A019425

/-- `a(3%a(n-2))+a(n-2)` -/
def P14518804691998017887.Spec : Prop :=
  ∀ n, (P14518804691998017887.a n : ℤ) = A019425 n

end A019425

/-! ## A019425.P15426229049780021246

`gcd(C(2, a(n-1))-2*n, (1-n)²)` with `a(0)=0`
-/

namespace A019425.P15426229049780021246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd ((Nat.choose 2 (a (n - 1)) : ℤ) - (2 * n : ℤ)) ((1 - (n : ℤ)) ^ 2)

end

end A019425.P15426229049780021246

namespace A019425

/-- `gcd(C(2, a(n-1))-2*n, (1-n)²)` -/
def P15426229049780021246.Spec : Prop :=
  ∀ n, (P15426229049780021246.a n : ℤ) = A019425 n

end A019425

/-! ## A019425.P2757779297711794412

`a(n-2)+a(n-3)-a(n-1)+4` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4, a(4)=1`
-/

namespace A019425.P2757779297711794412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 4, 1] fun n a =>
  a (n - 2) + (a (n - 3) - a (n - 1)) + 4

end

end A019425.P2757779297711794412

namespace A019425

/-- `a(n-2)+a(n-3)-a(n-1)+4` -/
def P2757779297711794412.Spec : Prop :=
  ∀ n, P2757779297711794412.a n = A019425 n

end A019425

/-! ## A019425.P16144883419052151636

`A266662(n)-1`
-/

namespace A019425.P16144883419052151636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266662 n - 1

end

end A019425.P16144883419052151636

namespace A019425

/-- `A266662(n)-1` -/
def P16144883419052151636.Spec : Prop :=
  ∀ n, P16144883419052151636.a n = A019425 n

end A019425

/-! ## A019425.P1473626855298331453

`2*n-A266664(n)`
-/

namespace A019425.P1473626855298331453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A266664 n

end

end A019425.P1473626855298331453

namespace A019425

/-- `2*n-A266664(n)` -/
def P1473626855298331453.Spec : Prop :=
  ∀ n, P1473626855298331453.a n = A019425 n

end A019425

/-! ## A019425.P15629215106341829295

`char[1]+A266256(n)-1`
-/

namespace A019425.P15629215106341829295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A266256 n - 1)

end

end A019425.P15629215106341829295

namespace A019425

/-- `char[1]+A266256(n)-1` -/
def P15629215106341829295.Spec : Prop :=
  ∀ n, P15629215106341829295.a n = A019425 n

end A019425

/-! ## A019425.P17574703560117556305

`C(2*(n-1), A008683(a(n-1)))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A019425.P17574703560117556305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  Nat.choose (2 * ((n : ℤ) - 1)).toNat (A008683 (a (n - 1))).toNat

end

end A019425.P17574703560117556305

namespace A019425

/-- `C(2*(n-1), A008683(a(n-1)))` -/
def P17574703560117556305.Spec : Prop :=
  ∀ n, (P17574703560117556305.a n : ℤ) = A019425 n

end A019425

/-! ## A019425.P6951945076414487602

`(2*n-1)^and(1, n)-char[comp[A004277(n)]]`
-/

namespace A019425.P6951945076414487602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) ^ Nat.land 1 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A019425.P6951945076414487602

namespace A019425

/-- `(2*n-1)^and(1, n)-char[comp[A004277(n)]]` -/
def P6951945076414487602.Spec : Prop :=
  ∀ n, P6951945076414487602.a n = A019425 n

end A019425

/-! ## A019425.P13744690462273402895

`A088440(A004275(n))`
-/

namespace A019425.P13744690462273402895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A004275 n).toNat

end

end A019425.P13744690462273402895

namespace A019425

/-- `A088440(A004275(n))` -/
def P13744690462273402895.Spec : Prop :=
  ∀ n, P13744690462273402895.a n = A019425 n

end A019425

/-! ## A019425.P11927431381702093867

`A088440(A058992(n+1))`
-/

namespace A019425.P11927431381702093867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A058992 (n + 1)).toNat

end

end A019425.P11927431381702093867

namespace A019425

/-- `A088440(A058992(n+1))` -/
def P11927431381702093867.Spec : Prop :=
  ∀ n, P11927431381702093867.a n = A019425 n

end A019425

/-!
# A019426: Continued fraction for tan(1/3).

The programs for A019426, the canonical program `A019426.P5184335410156883328` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019426 has offset 0).

The definition of A019426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019426.P5184335410156883328

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=7, a(4)=1, a(5)=13`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019426

/-- `2*a(n-2)-a(n-4)` -/
def P5184335410156883328.Spec : Prop :=
  ∀ n, P5184335410156883328.a n = A019426 n

theorem P5184335410156883328.correct : P5184335410156883328.Spec := by
  intro n
  simp only [A019426]

end A019426

/-! ## A019426.P11982099084599039955

`floor((3*n-2)/a(n-1))` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A019426.P11982099084599039955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 1] fun n a =>
  ⌊((3 * n : ℤ) - 2 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A019426.P11982099084599039955

namespace A019426

/-- `floor((3*n-2)/a(n-1))` -/
def P11982099084599039955.Spec : Prop :=
  ∀ n, P11982099084599039955.a n = A019426 n

end A019426

/-! ## A019426.P743024925017160992

`gcd(2-3*n, 3%a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A019426.P743024925017160992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  Int.gcd (2 - (3 * n : ℤ)) ((3 % a (n - 1) : ℕ) : ℤ)

end

end A019426.P743024925017160992

namespace A019426

/-- `gcd(2-3*n, 3%a(n-1))` -/
def P743024925017160992.Spec : Prop :=
  ∀ n, (P743024925017160992.a n : ℤ) = A019426 n

end A019426

/-! ## A019426.P1675496230305850667

`a(n-2)+6%a(n-2)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=7`
-/

namespace A019426.P1675496230305850667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1, 7] fun n a =>
  a (n - 2) + 6 % a (n - 2)

end

end A019426.P1675496230305850667

namespace A019426

/-- `a(n-2)+6%a(n-2)` -/
def P1675496230305850667.Spec : Prop :=
  ∀ n, (P1675496230305850667.a n : ℤ) = A019426 n

end A019426

/-! ## A019426.P17439429197669577305

`C(2*n+n-3, a(n-1)²)+1` with `a(0)=0`
-/

namespace A019426.P17439429197669577305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose ((2 * n : ℤ) + ((n : ℤ) - 3)).toNat (a (n - 1) ^ 2) + 1

end

end A019426.P17439429197669577305

namespace A019426

/-- `C(2*n+n-3, a(n-1)²)+1` -/
def P17439429197669577305.Spec : Prop :=
  ∀ n, (P17439429197669577305.a n : ℤ) = A019426 n

end A019426

/-! ## A019426.P4458870415337609546

`Δ[floor(C(A109613(n), 2)/(n+1))²]+n`
-/

namespace A019426.P4458870415337609546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (A109613 n).toNat 2 : ℚ) / (n + 1 : ℚ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A019426.P4458870415337609546

namespace A019426

/-- `Δ[floor(C(A109613(n), 2)/(n+1))²]+n` -/
def P4458870415337609546.Spec : Prop :=
  ∀ n, P4458870415337609546.a n = A019426 n

end A019426

/-! ## A019426.P15431685353177807747

`A019432(n)%A008458(n)`
-/

namespace A019426.P15431685353177807747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019432 n) (A008458 n)

end

end A019426.P15431685353177807747

namespace A019426

/-- `A019432(n)%A008458(n)` -/
def P15431685353177807747.Spec : Prop :=
  ∀ n, P15431685353177807747.a n = A019426 n

end A019426

/-! ## A019426.P4662364544208362160

`A019429(n)%A008486(n)`
-/

namespace A019426.P4662364544208362160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019429 n) (A008486 n)

end

end A019426.P4662364544208362160

namespace A019426

/-- `A019429(n)%A008486(n)` -/
def P4662364544208362160.Spec : Prop :=
  ∀ n, P4662364544208362160.a n = A019426 n

end A019426

/-! ## A019426.P12824690968754219827

`A019430(n)%A008574(n)`
-/

namespace A019426.P12824690968754219827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019430 n) (A008574 n)

end

end A019426.P12824690968754219827

namespace A019426

/-- `A019430(n)%A008574(n)` -/
def P12824690968754219827.Spec : Prop :=
  ∀ n, P12824690968754219827.a n = A019426 n

end A019426

/-! ## A019426.P15935627256598822358

`A019431(n)%A008706(n)`
-/

namespace A019426.P15935627256598822358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019431 n) (A008706 n)

end

end A019426.P15935627256598822358

namespace A019426

/-- `A019431(n)%A008706(n)` -/
def P15935627256598822358.Spec : Prop :=
  ∀ n, P15935627256598822358.a n = A019426 n

end A019426

/-! ## A019426.P8385217691869398926

`2*A019427(n)-A019428(n)`
-/

namespace A019426.P8385217691869398926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019427 n - A019428 n

end

end A019426.P8385217691869398926

namespace A019426

/-- `2*A019427(n)-A019428(n)` -/
def P8385217691869398926.Spec : Prop :=
  ∀ n, P8385217691869398926.a n = A019426 n

end A019426

/-! ## A019426.P2023301659886527888

`2*A019428(n)-A019430(n)`
-/

namespace A019426.P2023301659886527888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019428 n - A019430 n

end

end A019426.P2023301659886527888

namespace A019426

/-- `2*A019428(n)-A019430(n)` -/
def P2023301659886527888.Spec : Prop :=
  ∀ n, P2023301659886527888.a n = A019426 n

end A019426

/-! ## A019426.P8483861915887409723

`(A019427(n)+A019425(n))/2`
-/

namespace A019426.P8483861915887409723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019427 n + A019425 n : ℚ) / 2

end

end A019426.P8483861915887409723

namespace A019426

/-- `(A019427(n)+A019425(n))/2` -/
def P8483861915887409723.Spec : Prop :=
  ∀ n, P8483861915887409723.a n = (A019426 n : ℚ)

end A019426

/-! ## A019426.P17179292080892535945

`2*A019429(n)-A019432(n)`
-/

namespace A019426.P17179292080892535945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019429 n - A019432 n

end

end A019426.P17179292080892535945

namespace A019426

/-- `2*A019429(n)-A019432(n)` -/
def P17179292080892535945.Spec : Prop :=
  ∀ n, P17179292080892535945.a n = A019426 n

end A019426

/-! ## A019426.P9923933731643989317

`A019425(n)+n*A000035(n)`
-/

namespace A019426.P9923933731643989317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (n : ℤ) * A000035 n

end

end A019426.P9923933731643989317

namespace A019426

/-- `A019425(n)+n*A000035(n)` -/
def P9923933731643989317.Spec : Prop :=
  ∀ n, P9923933731643989317.a n = A019426 n

end A019426

/-! ## A019426.P6189667768950736897

`n-A004275(n)/A280193(n)`
-/

namespace A019426.P6189667768950736897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A004275 n : ℚ) / (A280193 n : ℚ)

end

end A019426.P6189667768950736897

namespace A019426

/-- `n-A004275(n)/A280193(n)` -/
def P6189667768950736897.Spec : Prop :=
  ∀ n, P6189667768950736897.a n = (A019426 n : ℚ)

end A019426

/-! ## A019426.P10896298231726732502

`A019425(n)+A019428(n)-A019427(n)`
-/

namespace A019426.P10896298231726732502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019428 n - A019427 n)

end

end A019426.P10896298231726732502

namespace A019426

/-- `A019425(n)+A019428(n)-A019427(n)` -/
def P10896298231726732502.Spec : Prop :=
  ∀ n, P10896298231726732502.a n = A019426 n

end A019426

/-! ## A019426.P7744785043816078042

`A019425(n)+A019429(n)-A019428(n)`
-/

namespace A019426.P7744785043816078042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019429 n - A019428 n)

end

end A019426.P7744785043816078042

namespace A019426

/-- `A019425(n)+A019429(n)-A019428(n)` -/
def P7744785043816078042.Spec : Prop :=
  ∀ n, P7744785043816078042.a n = A019426 n

end A019426

/-! ## A019426.P2106058050331915403

`A019425(n)+A019430(n)-A019429(n)`
-/

namespace A019426.P2106058050331915403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019430 n - A019429 n)

end

end A019426.P2106058050331915403

namespace A019426

/-- `A019425(n)+A019430(n)-A019429(n)` -/
def P2106058050331915403.Spec : Prop :=
  ∀ n, P2106058050331915403.a n = A019426 n

end A019426

/-!
# A019427: Continued fraction for tan(1/4).

The programs for A019427, the canonical program `A019427.P2752156077458550682` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019427 has offset 0).

The definition of A019427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019427.P2752156077458550682

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=1, a(3)=10, a(4)=1, a(5)=18`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019427

/-- `2*a(n-2)-a(n-4)` -/
def P2752156077458550682.Spec : Prop :=
  ∀ n, P2752156077458550682.a n = A019427 n

theorem P2752156077458550682.correct : P2752156077458550682.Spec := by
  intro n
  simp only [A019427]

end A019427

/-! ## A019427.P13187238075324745969

`floor((4*n-2)/a(n-1))` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A019427.P13187238075324745969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 1] fun n a =>
  ⌊((4 * n : ℤ) - 2 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A019427.P13187238075324745969

namespace A019427

/-- `floor((4*n-2)/a(n-1))` -/
def P13187238075324745969.Spec : Prop :=
  ∀ n, P13187238075324745969.a n = A019427 n

end A019427

/-! ## A019427.P12434939896165469035

`A019426(n)+n*n%2`
-/

namespace A019427.P12434939896165469035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + ((n * (n % 2) : ℕ) : ℤ)

end

end A019427.P12434939896165469035

namespace A019427

/-- `A019426(n)+n*n%2` -/
def P12434939896165469035.Spec : Prop :=
  ∀ n, P12434939896165469035.a n = A019427 n

end A019427

/-! ## A019427.P14951319433806264441

`A019433(n)%A008458(n)`
-/

namespace A019427.P14951319433806264441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019433 n) (A008458 n)

end

end A019427.P14951319433806264441

namespace A019427

/-- `A019433(n)%A008458(n)` -/
def P14951319433806264441.Spec : Prop :=
  ∀ n, P14951319433806264441.a n = A019427 n

end A019427

/-! ## A019427.P7734055168667231397

`A019431(n)%A008574(n)`
-/

namespace A019427.P7734055168667231397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019431 n) (A008574 n)

end

end A019427.P7734055168667231397

namespace A019427

/-- `A019431(n)%A008574(n)` -/
def P7734055168667231397.Spec : Prop :=
  ∀ n, P7734055168667231397.a n = A019427 n

end A019427

/-! ## A019427.P2089760555193897169

`A019432(n)%A008706(n)`
-/

namespace A019427.P2089760555193897169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019432 n) (A008706 n)

end

end A019427.P2089760555193897169

namespace A019427

/-- `A019432(n)%A008706(n)` -/
def P2089760555193897169.Spec : Prop :=
  ∀ n, P2089760555193897169.a n = A019427 n

end A019427

/-! ## A019427.P6926633531358329234

`2*A019426(n)-A019425(n)`
-/

namespace A019427.P6926633531358329234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019426 n - A019425 n

end

end A019427.P6926633531358329234

namespace A019427

/-- `2*A019426(n)-A019425(n)` -/
def P6926633531358329234.Spec : Prop :=
  ∀ n, P6926633531358329234.a n = A019427 n

end A019427

/-! ## A019427.P13838332545109161827

`2*A019428(n)-A019429(n)`
-/

namespace A019427.P13838332545109161827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019428 n - A019429 n

end

end A019427.P13838332545109161827

namespace A019427

/-- `2*A019428(n)-A019429(n)` -/
def P13838332545109161827.Spec : Prop :=
  ∀ n, P13838332545109161827.a n = A019427 n

end A019427

/-! ## A019427.P5106021772742419035

`2*A019429(n)-A019431(n)`
-/

namespace A019427.P5106021772742419035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019429 n - A019431 n

end

end A019427.P5106021772742419035

namespace A019427

/-- `2*A019429(n)-A019431(n)` -/
def P5106021772742419035.Spec : Prop :=
  ∀ n, P5106021772742419035.a n = A019427 n

end A019427

/-! ## A019427.P4169067662721431638

`(A019428(n)+A019426(n))/2`
-/

namespace A019427.P4169067662721431638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019428 n + A019426 n : ℚ) / 2

end

end A019427.P4169067662721431638

namespace A019427

/-- `(A019428(n)+A019426(n))/2` -/
def P4169067662721431638.Spec : Prop :=
  ∀ n, P4169067662721431638.a n = (A019427 n : ℚ)

end A019427

/-! ## A019427.P17313656613635102920

`(A019429(n)+A019425(n))/2`
-/

namespace A019427.P17313656613635102920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019429 n + A019425 n : ℚ) / 2

end

end A019427.P17313656613635102920

namespace A019427

/-- `(A019429(n)+A019425(n))/2` -/
def P17313656613635102920.Spec : Prop :=
  ∀ n, P17313656613635102920.a n = (A019427 n : ℚ)

end A019427

/-! ## A019427.P2855473661507184250

`2*A019430(n)-A019433(n)`
-/

namespace A019427.P2855473661507184250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019430 n - A019433 n

end

end A019427.P2855473661507184250

namespace A019427

/-- `2*A019430(n)-A019433(n)` -/
def P2855473661507184250.Spec : Prop :=
  ∀ n, P2855473661507184250.a n = A019427 n

end A019427

/-! ## A019427.P6641781110824825543

`A019426(n)+n*A000035(n)`
-/

namespace A019427.P6641781110824825543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (n : ℤ) * A000035 n

end

end A019427.P6641781110824825543

namespace A019427

/-- `A019426(n)+n*A000035(n)` -/
def P6641781110824825543.Spec : Prop :=
  ∀ n, P6641781110824825543.a n = A019427 n

end A019427

/-! ## A019427.P2006463898795860177

`A019428(n)-n*A000035(n)`
-/

namespace A019427.P2006463898795860177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n - (n : ℤ) * A000035 n

end

end A019427.P2006463898795860177

namespace A019427

/-- `A019428(n)-n*A000035(n)` -/
def P2006463898795860177.Spec : Prop :=
  ∀ n, P2006463898795860177.a n = A019427 n

end A019427

/-! ## A019427.P10549195644793229854

`(A266722(n)-1)*A166333(A166333(n))`
-/

namespace A019427.P10549195644793229854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A266722 n - 1) * A166333 (A166333 n).toNat

end

end A019427.P10549195644793229854

namespace A019427

/-- `(A266722(n)-1)*A166333(A166333(n))` -/
def P10549195644793229854.Spec : Prop :=
  ∀ n, P10549195644793229854.a n = A019427 n

end A019427

/-! ## A019427.P14488537008764092043

`A019425(n)+A019428(n)-A019426(n)`
-/

namespace A019427.P14488537008764092043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019428 n - A019426 n)

end

end A019427.P14488537008764092043

namespace A019427

/-- `A019425(n)+A019428(n)-A019426(n)` -/
def P14488537008764092043.Spec : Prop :=
  ∀ n, P14488537008764092043.a n = A019427 n

end A019427

/-! ## A019427.P11365749798163759039

`A019425(n)+A019430(n)-A019428(n)`
-/

namespace A019427.P11365749798163759039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019430 n - A019428 n)

end

end A019427.P11365749798163759039

namespace A019427

/-- `A019425(n)+A019430(n)-A019428(n)` -/
def P11365749798163759039.Spec : Prop :=
  ∀ n, P11365749798163759039.a n = A019427 n

end A019427

/-! ## A019427.P4609568729458409971

`A019425(n)+A019431(n)-A019429(n)`
-/

namespace A019427.P4609568729458409971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019431 n - A019429 n)

end

end A019427.P4609568729458409971

namespace A019427

/-- `A019425(n)+A019431(n)-A019429(n)` -/
def P4609568729458409971.Spec : Prop :=
  ∀ n, P4609568729458409971.a n = A019427 n

end A019427

/-! ## A019427.P2926504518660907754

`A019425(n)+A019433(n)-A019431(n)`
-/

namespace A019427.P2926504518660907754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019433 n - A019431 n)

end

end A019427.P2926504518660907754

namespace A019427

/-- `A019425(n)+A019433(n)-A019431(n)` -/
def P2926504518660907754.Spec : Prop :=
  ∀ n, P2926504518660907754.a n = A019427 n

end A019427

/-!
# A019428: Continued fraction for tan(1/5).

The programs for A019428, the canonical program `A019428.P1633961522026332630` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019428 has offset 0).

The definition of A019428 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019428.P1633961522026332630

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=1, a(3)=13, a(4)=1, a(5)=23`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019428

/-- `2*a(n-2)-a(n-4)` -/
def P1633961522026332630.Spec : Prop :=
  ∀ n, P1633961522026332630.a n = A019428 n

theorem P1633961522026332630.correct : P1633961522026332630.Spec := by
  intro n
  simp only [A019428]

end A019428

/-! ## A019428.P16355777265831766693

`A019433(n)%A008706(n)`
-/

namespace A019428.P16355777265831766693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019433 n) (A008706 n)

end

end A019428.P16355777265831766693

namespace A019428

/-- `A019433(n)%A008706(n)` -/
def P16355777265831766693.Spec : Prop :=
  ∀ n, P16355777265831766693.a n = A019428 n

end A019428

/-! ## A019428.P2812928647795714412

`2*A019427(n)-A019426(n)`
-/

namespace A019428.P2812928647795714412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019427 n - A019426 n

end

end A019428.P2812928647795714412

namespace A019428

/-- `2*A019427(n)-A019426(n)` -/
def P2812928647795714412.Spec : Prop :=
  ∀ n, P2812928647795714412.a n = A019428 n

end A019428

/-! ## A019428.P7666797657620549446

`2*A019429(n)-A019430(n)`
-/

namespace A019428.P7666797657620549446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019429 n - A019430 n

end

end A019428.P7666797657620549446

namespace A019428

/-- `2*A019429(n)-A019430(n)` -/
def P7666797657620549446.Spec : Prop :=
  ∀ n, P7666797657620549446.a n = A019428 n

end A019428

/-! ## A019428.P320383665352803062

`2*A019430(n)-A019432(n)`
-/

namespace A019428.P320383665352803062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019430 n - A019432 n

end

end A019428.P320383665352803062

namespace A019428

/-- `2*A019430(n)-A019432(n)` -/
def P320383665352803062.Spec : Prop :=
  ∀ n, P320383665352803062.a n = A019428 n

end A019428

/-! ## A019428.P17342286176114954869

`(A019429(n)+A019427(n))/2`
-/

namespace A019428.P17342286176114954869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019429 n + A019427 n : ℚ) / 2

end

end A019428.P17342286176114954869

namespace A019428

/-- `(A019429(n)+A019427(n))/2` -/
def P17342286176114954869.Spec : Prop :=
  ∀ n, P17342286176114954869.a n = (A019428 n : ℚ)

end A019428

/-! ## A019428.P1892394418315620564

`(A019430(n)+A019426(n))/2`
-/

namespace A019428.P1892394418315620564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019430 n + A019426 n : ℚ) / 2

end

end A019428.P1892394418315620564

namespace A019428

/-- `(A019430(n)+A019426(n))/2` -/
def P1892394418315620564.Spec : Prop :=
  ∀ n, P1892394418315620564.a n = (A019428 n : ℚ)

end A019428

/-! ## A019428.P2031498695917019620

`(A019431(n)+A019425(n))/2`
-/

namespace A019428.P2031498695917019620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019431 n + A019425 n : ℚ) / 2

end

end A019428.P2031498695917019620

namespace A019428

/-- `(A019431(n)+A019425(n))/2` -/
def P2031498695917019620.Spec : Prop :=
  ∀ n, P2031498695917019620.a n = (A019428 n : ℚ)

end A019428

/-! ## A019428.P14520283617918742078

`A019425(n)+A019429(n)-A019426(n)`
-/

namespace A019428.P14520283617918742078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019429 n - A019426 n)

end

end A019428.P14520283617918742078

namespace A019428

/-- `A019425(n)+A019429(n)-A019426(n)` -/
def P14520283617918742078.Spec : Prop :=
  ∀ n, P14520283617918742078.a n = A019428 n

end A019428

/-! ## A019428.P11601197431354375366

`A019425(n)+A019430(n)-A019427(n)`
-/

namespace A019428.P11601197431354375366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019430 n - A019427 n)

end

end A019428.P11601197431354375366

namespace A019428

/-- `A019425(n)+A019430(n)-A019427(n)` -/
def P11601197431354375366.Spec : Prop :=
  ∀ n, P11601197431354375366.a n = A019428 n

end A019428

/-! ## A019428.P16164496583541585165

`A019425(n)+A019432(n)-A019429(n)`
-/

namespace A019428.P16164496583541585165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019432 n - A019429 n)

end

end A019428.P16164496583541585165

namespace A019428

/-- `A019425(n)+A019432(n)-A019429(n)` -/
def P16164496583541585165.Spec : Prop :=
  ∀ n, P16164496583541585165.a n = A019428 n

end A019428

/-! ## A019428.P2685966340248275952

`A019426(n)+A019427(n)-A019425(n)`
-/

namespace A019428.P2685966340248275952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019427 n - A019425 n)

end

end A019428.P2685966340248275952

namespace A019428

/-- `A019426(n)+A019427(n)-A019425(n)` -/
def P2685966340248275952.Spec : Prop :=
  ∀ n, P2685966340248275952.a n = A019428 n

end A019428

/-! ## A019428.P12008103226085886255

`A019425(n)+A019433(n)-A019430(n)`
-/

namespace A019428.P12008103226085886255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019433 n - A019430 n)

end

end A019428.P12008103226085886255

namespace A019428

/-- `A019425(n)+A019433(n)-A019430(n)` -/
def P12008103226085886255.Spec : Prop :=
  ∀ n, P12008103226085886255.a n = A019428 n

end A019428

/-! ## A019428.P1866578436619744374

`A019426(n)+A019429(n)-A019427(n)`
-/

namespace A019428.P1866578436619744374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019429 n - A019427 n)

end

end A019428.P1866578436619744374

namespace A019428

/-- `A019426(n)+A019429(n)-A019427(n)` -/
def P1866578436619744374.Spec : Prop :=
  ∀ n, P1866578436619744374.a n = A019428 n

end A019428

/-! ## A019428.P10839141094329603293

`A019426(n)+A019431(n)-A019429(n)`
-/

namespace A019428.P10839141094329603293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019431 n - A019429 n)

end

end A019428.P10839141094329603293

namespace A019428

/-- `A019426(n)+A019431(n)-A019429(n)` -/
def P10839141094329603293.Spec : Prop :=
  ∀ n, P10839141094329603293.a n = A019428 n

end A019428

/-! ## A019428.P3882039467725340676

`A019426(n)+A019432(n)-A019430(n)`
-/

namespace A019428.P3882039467725340676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019432 n - A019430 n)

end

end A019428.P3882039467725340676

namespace A019428

/-- `A019426(n)+A019432(n)-A019430(n)` -/
def P3882039467725340676.Spec : Prop :=
  ∀ n, P3882039467725340676.a n = A019428 n

end A019428

/-! ## A019428.P6807538746051842482

`A019426(n)+A019433(n)-A019431(n)`
-/

namespace A019428.P6807538746051842482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019433 n - A019431 n)

end

end A019428.P6807538746051842482

namespace A019428

/-- `A019426(n)+A019433(n)-A019431(n)` -/
def P6807538746051842482.Spec : Prop :=
  ∀ n, P6807538746051842482.a n = A019428 n

end A019428

/-! ## A019428.P11720250486952041506

`A019427(n)+A019430(n)-A019429(n)`
-/

namespace A019428.P11720250486952041506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n + (A019430 n - A019429 n)

end

end A019428.P11720250486952041506

namespace A019428

/-- `A019427(n)+A019430(n)-A019429(n)` -/
def P11720250486952041506.Spec : Prop :=
  ∀ n, P11720250486952041506.a n = A019428 n

end A019428

/-! ## A019428.P15659658325291403767

`A019427(n)+A019431(n)-A019430(n)`
-/

namespace A019428.P15659658325291403767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n + (A019431 n - A019430 n)

end

end A019428.P15659658325291403767

namespace A019428

/-- `A019427(n)+A019431(n)-A019430(n)` -/
def P15659658325291403767.Spec : Prop :=
  ∀ n, P15659658325291403767.a n = A019428 n

end A019428

/-!
# A019429: Continued fraction for tan(1/6).

The programs for A019429, the canonical program `A019429.P12652784916289792369` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019429 has offset 0).

The definition of A019429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019429.P12652784916289792369

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=5, a(2)=1, a(3)=16, a(4)=1, a(5)=28`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019429

/-- `2*a(n-2)-a(n-4)` -/
def P12652784916289792369.Spec : Prop :=
  ∀ n, P12652784916289792369.a n = A019429 n

theorem P12652784916289792369.correct : P12652784916289792369.Spec := by
  intro n
  simp only [A019429]

end A019429

/-! ## A019429.P16025312972316422534

`2*A019427(n)-A019425(n)`
-/

namespace A019429.P16025312972316422534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019427 n - A019425 n

end

end A019429.P16025312972316422534

namespace A019429

/-- `2*A019427(n)-A019425(n)` -/
def P16025312972316422534.Spec : Prop :=
  ∀ n, P16025312972316422534.a n = A019429 n

end A019429

/-! ## A019429.P6015843197676191098

`2*A019428(n)-A019427(n)`
-/

namespace A019429.P6015843197676191098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019428 n - A019427 n

end

end A019429.P6015843197676191098

namespace A019429

/-- `2*A019428(n)-A019427(n)` -/
def P6015843197676191098.Spec : Prop :=
  ∀ n, P6015843197676191098.a n = A019429 n

end A019429

/-! ## A019429.P15181761772759069995

`2*A019430(n)-A019431(n)`
-/

namespace A019429.P15181761772759069995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019430 n - A019431 n

end

end A019429.P15181761772759069995

namespace A019429

/-- `2*A019430(n)-A019431(n)` -/
def P15181761772759069995.Spec : Prop :=
  ∀ n, P15181761772759069995.a n = A019429 n

end A019429

/-! ## A019429.P523774013644622483

`2*A019431(n)-A019433(n)`
-/

namespace A019429.P523774013644622483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019431 n - A019433 n

end

end A019429.P523774013644622483

namespace A019429

/-- `2*A019431(n)-A019433(n)` -/
def P523774013644622483.Spec : Prop :=
  ∀ n, P523774013644622483.a n = A019429 n

end A019429

/-! ## A019429.P15753503299182087934

`(A019430(n)+A019428(n))/2`
-/

namespace A019429.P15753503299182087934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019430 n + A019428 n : ℚ) / 2

end

end A019429.P15753503299182087934

namespace A019429

/-- `(A019430(n)+A019428(n))/2` -/
def P15753503299182087934.Spec : Prop :=
  ∀ n, P15753503299182087934.a n = (A019429 n : ℚ)

end A019429

/-! ## A019429.P11534623474430066811

`(A019431(n)+A019427(n))/2`
-/

namespace A019429.P11534623474430066811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019431 n + A019427 n : ℚ) / 2

end

end A019429.P11534623474430066811

namespace A019429

/-- `(A019431(n)+A019427(n))/2` -/
def P11534623474430066811.Spec : Prop :=
  ∀ n, P11534623474430066811.a n = (A019429 n : ℚ)

end A019429

/-! ## A019429.P9503208187202691131

`(A019432(n)+A019426(n))/2`
-/

namespace A019429.P9503208187202691131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019432 n + A019426 n : ℚ) / 2

end

end A019429.P9503208187202691131

namespace A019429

/-- `(A019432(n)+A019426(n))/2` -/
def P9503208187202691131.Spec : Prop :=
  ∀ n, P9503208187202691131.a n = (A019429 n : ℚ)

end A019429

/-! ## A019429.P12255485385958807397

`(A019433(n)+A019425(n))/2`
-/

namespace A019429.P12255485385958807397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019433 n + A019425 n : ℚ) / 2

end

end A019429.P12255485385958807397

namespace A019429

/-- `(A019433(n)+A019425(n))/2` -/
def P12255485385958807397.Spec : Prop :=
  ∀ n, P12255485385958807397.a n = (A019429 n : ℚ)

end A019429

/-! ## A019429.P4114896030079407057

`A019430(n)+A237420(n)-n`
-/

namespace A019429.P4114896030079407057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 n + (A237420 n - (n : ℤ))

end

end A019429.P4114896030079407057

namespace A019429

/-- `A019430(n)+A237420(n)-n` -/
def P4114896030079407057.Spec : Prop :=
  ∀ n, P4114896030079407057.a n = A019429 n

end A019429

/-! ## A019429.P4442698377811761031

`A019428(n)+n*A000035(n)`
-/

namespace A019429.P4442698377811761031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n + (n : ℤ) * A000035 n

end

end A019429.P4442698377811761031

namespace A019429

/-- `A019428(n)+n*A000035(n)` -/
def P4442698377811761031.Spec : Prop :=
  ∀ n, P4442698377811761031.a n = A019429 n

end A019429

/-! ## A019429.P569334187253790683

`A019430(n)-n*A000035(n)`
-/

namespace A019429.P569334187253790683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 n - (n : ℤ) * A000035 n

end

end A019429.P569334187253790683

namespace A019429

/-- `A019430(n)-n*A000035(n)` -/
def P569334187253790683.Spec : Prop :=
  ∀ n, P569334187253790683.a n = A019429 n

end A019429

/-! ## A019429.P2910519519839206317

`A019425(n)+A019430(n)-A019426(n)`
-/

namespace A019429.P2910519519839206317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019430 n - A019426 n)

end

end A019429.P2910519519839206317

namespace A019429

/-- `A019425(n)+A019430(n)-A019426(n)` -/
def P2910519519839206317.Spec : Prop :=
  ∀ n, P2910519519839206317.a n = A019429 n

end A019429

/-! ## A019429.P6478035862680770088

`A019425(n)+A019431(n)-A019427(n)`
-/

namespace A019429.P6478035862680770088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019431 n - A019427 n)

end

end A019429.P6478035862680770088

namespace A019429

/-- `A019425(n)+A019431(n)-A019427(n)` -/
def P6478035862680770088.Spec : Prop :=
  ∀ n, P6478035862680770088.a n = A019429 n

end A019429

/-! ## A019429.P5323725673397546679

`A019425(n)+A019432(n)-A019428(n)`
-/

namespace A019429.P5323725673397546679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019432 n - A019428 n)

end

end A019429.P5323725673397546679

namespace A019429

/-- `A019425(n)+A019432(n)-A019428(n)` -/
def P5323725673397546679.Spec : Prop :=
  ∀ n, P5323725673397546679.a n = A019429 n

end A019429

/-! ## A019429.P5337371712564607844

`A019426(n)+A019428(n)-A019425(n)`
-/

namespace A019429.P5337371712564607844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019428 n - A019425 n)

end

end A019429.P5337371712564607844

namespace A019429

/-- `A019426(n)+A019428(n)-A019425(n)` -/
def P5337371712564607844.Spec : Prop :=
  ∀ n, P5337371712564607844.a n = A019429 n

end A019429

/-! ## A019429.P7232829945482161687

`A019426(n)+A019430(n)-A019427(n)`
-/

namespace A019429.P7232829945482161687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019430 n - A019427 n)

end

end A019429.P7232829945482161687

namespace A019429

/-- `A019426(n)+A019430(n)-A019427(n)` -/
def P7232829945482161687.Spec : Prop :=
  ∀ n, P7232829945482161687.a n = A019429 n

end A019429

/-! ## A019429.P6397422601765787762

`A019426(n)+A019431(n)-A019428(n)`
-/

namespace A019429.P6397422601765787762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019431 n - A019428 n)

end

end A019429.P6397422601765787762

namespace A019429

/-- `A019426(n)+A019431(n)-A019428(n)` -/
def P6397422601765787762.Spec : Prop :=
  ∀ n, P6397422601765787762.a n = A019429 n

end A019429

/-! ## A019429.P5138255462152427767

`A019426(n)+A019433(n)-A019430(n)`
-/

namespace A019429.P5138255462152427767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019433 n - A019430 n)

end

end A019429.P5138255462152427767

namespace A019429

/-- `A019426(n)+A019433(n)-A019430(n)` -/
def P5138255462152427767.Spec : Prop :=
  ∀ n, P5138255462152427767.a n = A019429 n

end A019429

/-!
# A019430: Continued fraction for tan(1/7).

The programs for A019430, the canonical program `A019430.P9990763983225501317` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019430 has offset 0).

The definition of A019430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019430.P9990763983225501317

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=6, a(2)=1, a(3)=19, a(4)=1, a(5)=33`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019430

/-- `2*a(n-2)-a(n-4)` -/
def P9990763983225501317.Spec : Prop :=
  ∀ n, P9990763983225501317.a n = A019430 n

theorem P9990763983225501317.correct : P9990763983225501317.Spec := by
  intro n
  simp only [A019430]

end A019430

/-! ## A019430.P14227244188438181203

`2*A019428(n)-A019426(n)`
-/

namespace A019430.P14227244188438181203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019428 n - A019426 n

end

end A019430.P14227244188438181203

namespace A019430

/-- `2*A019428(n)-A019426(n)` -/
def P14227244188438181203.Spec : Prop :=
  ∀ n, P14227244188438181203.a n = A019430 n

end A019430

/-! ## A019430.P7072349068626915730

`2*A019429(n)-A019428(n)`
-/

namespace A019430.P7072349068626915730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019429 n - A019428 n

end

end A019430.P7072349068626915730

namespace A019430

/-- `2*A019429(n)-A019428(n)` -/
def P7072349068626915730.Spec : Prop :=
  ∀ n, P7072349068626915730.a n = A019430 n

end A019430

/-! ## A019430.P9449440733009318629

`2*A019431(n)-A019432(n)`
-/

namespace A019430.P9449440733009318629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019431 n - A019432 n

end

end A019430.P9449440733009318629

namespace A019430

/-- `2*A019431(n)-A019432(n)` -/
def P9449440733009318629.Spec : Prop :=
  ∀ n, P9449440733009318629.a n = A019430 n

end A019430

/-! ## A019430.P16930581881628279374

`(A019431(n)+A019429(n))/2`
-/

namespace A019430.P16930581881628279374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019431 n + A019429 n : ℚ) / 2

end

end A019430.P16930581881628279374

namespace A019430

/-- `(A019431(n)+A019429(n))/2` -/
def P16930581881628279374.Spec : Prop :=
  ∀ n, P16930581881628279374.a n = (A019430 n : ℚ)

end A019430

/-! ## A019430.P349224169821204712

`(A019432(n)+A019428(n))/2`
-/

namespace A019430.P349224169821204712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019432 n + A019428 n : ℚ) / 2

end

end A019430.P349224169821204712

namespace A019430

/-- `(A019432(n)+A019428(n))/2` -/
def P349224169821204712.Spec : Prop :=
  ∀ n, P349224169821204712.a n = (A019430 n : ℚ)

end A019430

/-! ## A019430.P16851647282912375716

`(A019433(n)+A019427(n))/2`
-/

namespace A019430.P16851647282912375716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019433 n + A019427 n : ℚ) / 2

end

end A019430.P16851647282912375716

namespace A019430

/-- `(A019433(n)+A019427(n))/2` -/
def P16851647282912375716.Spec : Prop :=
  ∀ n, P16851647282912375716.a n = (A019430 n : ℚ)

end A019430

/-! ## A019430.P12596681404218382301

`A019426(n)+n*A084099(n)²`
-/

namespace A019430.P12596681404218382301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (n : ℤ) * A084099 n ^ 2

end

end A019430.P12596681404218382301

namespace A019430

/-- `A019426(n)+n*A084099(n)²` -/
def P12596681404218382301.Spec : Prop :=
  ∀ n, P12596681404218382301.a n = A019430 n

end A019430

/-! ## A019430.P9979619251680385485

`A019425(n)+A019431(n)-A019426(n)`
-/

namespace A019430.P9979619251680385485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019431 n - A019426 n)

end

end A019430.P9979619251680385485

namespace A019430

/-- `A019425(n)+A019431(n)-A019426(n)` -/
def P9979619251680385485.Spec : Prop :=
  ∀ n, P9979619251680385485.a n = A019430 n

end A019430

/-! ## A019430.P16069605260232576788

`A019425(n)+A019432(n)-A019427(n)`
-/

namespace A019430.P16069605260232576788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019432 n - A019427 n)

end

end A019430.P16069605260232576788

namespace A019430

/-- `A019425(n)+A019432(n)-A019427(n)` -/
def P16069605260232576788.Spec : Prop :=
  ∀ n, P16069605260232576788.a n = A019430 n

end A019430

/-! ## A019430.P13761202757185963081

`A019425(n)+A019433(n)-A019428(n)`
-/

namespace A019430.P13761202757185963081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019433 n - A019428 n)

end

end A019430.P13761202757185963081

namespace A019430

/-- `A019425(n)+A019433(n)-A019428(n)` -/
def P13761202757185963081.Spec : Prop :=
  ∀ n, P13761202757185963081.a n = A019430 n

end A019430

/-! ## A019430.P7606989962353591501

`A019426(n)+A019429(n)-A019425(n)`
-/

namespace A019430.P7606989962353591501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019429 n - A019425 n)

end

end A019430.P7606989962353591501

namespace A019430

/-- `A019426(n)+A019429(n)-A019425(n)` -/
def P7606989962353591501.Spec : Prop :=
  ∀ n, P7606989962353591501.a n = A019430 n

end A019430

/-! ## A019430.P13871241135063025128

`A019426(n)+A019431(n)-A019427(n)`
-/

namespace A019430.P13871241135063025128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019431 n - A019427 n)

end

end A019430.P13871241135063025128

namespace A019430

/-- `A019426(n)+A019431(n)-A019427(n)` -/
def P13871241135063025128.Spec : Prop :=
  ∀ n, P13871241135063025128.a n = A019430 n

end A019430

/-! ## A019430.P17930333431504706829

`A019426(n)+A019432(n)-A019428(n)`
-/

namespace A019430.P17930333431504706829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019432 n - A019428 n)

end

end A019430.P17930333431504706829

namespace A019430

/-- `A019426(n)+A019432(n)-A019428(n)` -/
def P17930333431504706829.Spec : Prop :=
  ∀ n, P17930333431504706829.a n = A019430 n

end A019430

/-! ## A019430.P4781957818607175451

`A019426(n)+A019433(n)-A019429(n)`
-/

namespace A019430.P4781957818607175451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019433 n - A019429 n)

end

end A019430.P4781957818607175451

namespace A019430

/-- `A019426(n)+A019433(n)-A019429(n)` -/
def P4781957818607175451.Spec : Prop :=
  ∀ n, P4781957818607175451.a n = A019430 n

end A019430

/-! ## A019430.P17322190543281685064

`A019427(n)+A019428(n)-A019425(n)`
-/

namespace A019430.P17322190543281685064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n + (A019428 n - A019425 n)

end

end A019430.P17322190543281685064

namespace A019430

/-- `A019427(n)+A019428(n)-A019425(n)` -/
def P17322190543281685064.Spec : Prop :=
  ∀ n, P17322190543281685064.a n = A019430 n

end A019430

/-! ## A019430.P2112119180979145590

`A019427(n)+A019429(n)-A019426(n)`
-/

namespace A019430.P2112119180979145590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n + (A019429 n - A019426 n)

end

end A019430.P2112119180979145590

namespace A019430

/-- `A019427(n)+A019429(n)-A019426(n)` -/
def P2112119180979145590.Spec : Prop :=
  ∀ n, P2112119180979145590.a n = A019430 n

end A019430

/-! ## A019430.P11151467704724481629

`A019427(n)+A019431(n)-A019428(n)`
-/

namespace A019430.P11151467704724481629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n + (A019431 n - A019428 n)

end

end A019430.P11151467704724481629

namespace A019430

/-- `A019427(n)+A019431(n)-A019428(n)` -/
def P11151467704724481629.Spec : Prop :=
  ∀ n, P11151467704724481629.a n = A019430 n

end A019430

/-! ## A019430.P10559406426588924254

`A019427(n)+A019432(n)-A019429(n)`
-/

namespace A019430.P10559406426588924254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n + (A019432 n - A019429 n)

end

end A019430.P10559406426588924254

namespace A019430

/-- `A019427(n)+A019432(n)-A019429(n)` -/
def P10559406426588924254.Spec : Prop :=
  ∀ n, P10559406426588924254.a n = A019430 n

end A019430

/-! ## A019430.P7044142451630600049

`A019428(n)+A019429(n)-A019427(n)`
-/

namespace A019430.P7044142451630600049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n + (A019429 n - A019427 n)

end

end A019430.P7044142451630600049

namespace A019430

/-- `A019428(n)+A019429(n)-A019427(n)` -/
def P7044142451630600049.Spec : Prop :=
  ∀ n, P7044142451630600049.a n = A019430 n

end A019430

/-!
# A019431: Continued fraction for tan(1/8).

The programs for A019431, the canonical program `A019431.P14463002170413750271` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019431 has offset 0).

The definition of A019431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019431.P14463002170413750271

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=7, a(2)=1, a(3)=22, a(4)=1, a(5)=38`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019431

/-- `2*a(n-2)-a(n-4)` -/
def P14463002170413750271.Spec : Prop :=
  ∀ n, P14463002170413750271.a n = A019431 n

theorem P14463002170413750271.correct : P14463002170413750271.Spec := by
  intro n
  simp only [A019431]

end A019431

/-! ## A019431.P2698073700825558176

`2*A019428(n)-A019425(n)`
-/

namespace A019431.P2698073700825558176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019428 n - A019425 n

end

end A019431.P2698073700825558176

namespace A019431

/-- `2*A019428(n)-A019425(n)` -/
def P2698073700825558176.Spec : Prop :=
  ∀ n, P2698073700825558176.a n = A019431 n

end A019431

/-! ## A019431.P7283245063395874146

`2*A019429(n)-A019427(n)`
-/

namespace A019431.P7283245063395874146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019429 n - A019427 n

end

end A019431.P7283245063395874146

namespace A019431

/-- `2*A019429(n)-A019427(n)` -/
def P7283245063395874146.Spec : Prop :=
  ∀ n, P7283245063395874146.a n = A019431 n

end A019431

/-! ## A019431.P10680875106406688658

`2*A019430(n)-A019429(n)`
-/

namespace A019431.P10680875106406688658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019430 n - A019429 n

end

end A019431.P10680875106406688658

namespace A019431

/-- `2*A019430(n)-A019429(n)` -/
def P10680875106406688658.Spec : Prop :=
  ∀ n, P10680875106406688658.a n = A019431 n

end A019431

/-! ## A019431.P8805913581090956953

`2*A019432(n)-A019433(n)`
-/

namespace A019431.P8805913581090956953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019432 n - A019433 n

end

end A019431.P8805913581090956953

namespace A019431

/-- `2*A019432(n)-A019433(n)` -/
def P8805913581090956953.Spec : Prop :=
  ∀ n, P8805913581090956953.a n = A019431 n

end A019431

/-! ## A019431.P2961552290566325719

`(A019432(n)+A019430(n))/2`
-/

namespace A019431.P2961552290566325719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019432 n + A019430 n : ℚ) / 2

end

end A019431.P2961552290566325719

namespace A019431

/-- `(A019432(n)+A019430(n))/2` -/
def P2961552290566325719.Spec : Prop :=
  ∀ n, P2961552290566325719.a n = (A019431 n : ℚ)

end A019431

/-! ## A019431.P13805646363684071643

`(A019433(n)+A019429(n))/2`
-/

namespace A019431.P13805646363684071643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019433 n + A019429 n : ℚ) / 2

end

end A019431.P13805646363684071643

namespace A019431

/-- `(A019433(n)+A019429(n))/2` -/
def P13805646363684071643.Spec : Prop :=
  ∀ n, P13805646363684071643.a n = (A019431 n : ℚ)

end A019431

/-! ## A019431.P201201172362251731

`A019430(n)+n-A237420(n)`
-/

namespace A019431.P201201172362251731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 n + ((n : ℤ) - A237420 n)

end

end A019431.P201201172362251731

namespace A019431

/-- `A019430(n)+n-A237420(n)` -/
def P201201172362251731.Spec : Prop :=
  ∀ n, P201201172362251731.a n = A019431 n

end A019431

/-! ## A019431.P953146934748342018

`A019430(n)+n*A000035(n)`
-/

namespace A019431.P953146934748342018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 n + (n : ℤ) * A000035 n

end

end A019431.P953146934748342018

namespace A019431

/-- `A019430(n)+n*A000035(n)` -/
def P953146934748342018.Spec : Prop :=
  ∀ n, P953146934748342018.a n = A019431 n

end A019431

/-! ## A019431.P10546918018274038384

`A019432(n)-n*A000035(n)`
-/

namespace A019431.P10546918018274038384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 n - (n : ℤ) * A000035 n

end

end A019431.P10546918018274038384

namespace A019431

/-- `A019432(n)-n*A000035(n)` -/
def P10546918018274038384.Spec : Prop :=
  ∀ n, P10546918018274038384.a n = A019431 n

end A019431

/-! ## A019431.P17798817843024396500

`A019425(n)+A019432(n)-A019426(n)`
-/

namespace A019431.P17798817843024396500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019432 n - A019426 n)

end

end A019431.P17798817843024396500

namespace A019431

/-- `A019425(n)+A019432(n)-A019426(n)` -/
def P17798817843024396500.Spec : Prop :=
  ∀ n, P17798817843024396500.a n = A019431 n

end A019431

/-! ## A019431.P11700035826221031349

`A019425(n)+A019433(n)-A019427(n)`
-/

namespace A019431.P11700035826221031349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019433 n - A019427 n)

end

end A019431.P11700035826221031349

namespace A019431

/-- `A019425(n)+A019433(n)-A019427(n)` -/
def P11700035826221031349.Spec : Prop :=
  ∀ n, P11700035826221031349.a n = A019431 n

end A019431

/-! ## A019431.P5540315158201683534

`A019426(n)+A019430(n)-A019425(n)`
-/

namespace A019431.P5540315158201683534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019430 n - A019425 n)

end

end A019431.P5540315158201683534

namespace A019431

/-- `A019426(n)+A019430(n)-A019425(n)` -/
def P5540315158201683534.Spec : Prop :=
  ∀ n, P5540315158201683534.a n = A019431 n

end A019431

/-! ## A019431.P5939785417997513030

`A019426(n)+A019432(n)-A019427(n)`
-/

namespace A019431.P5939785417997513030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019432 n - A019427 n)

end

end A019431.P5939785417997513030

namespace A019431

/-- `A019426(n)+A019432(n)-A019427(n)` -/
def P5939785417997513030.Spec : Prop :=
  ∀ n, P5939785417997513030.a n = A019431 n

end A019431

/-! ## A019431.P8846901334024487513

`A019426(n)+A019433(n)-A019428(n)`
-/

namespace A019431.P8846901334024487513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019433 n - A019428 n)

end

end A019431.P8846901334024487513

namespace A019431

/-- `A019426(n)+A019433(n)-A019428(n)` -/
def P8846901334024487513.Spec : Prop :=
  ∀ n, P8846901334024487513.a n = A019431 n

end A019431

/-! ## A019431.P15971425683893684863

`A019427(n)+A019429(n)-A019425(n)`
-/

namespace A019431.P15971425683893684863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n + (A019429 n - A019425 n)

end

end A019431.P15971425683893684863

namespace A019431

/-- `A019427(n)+A019429(n)-A019425(n)` -/
def P15971425683893684863.Spec : Prop :=
  ∀ n, P15971425683893684863.a n = A019431 n

end A019431

/-! ## A019431.P7438980452555986445

`A019427(n)+A019430(n)-A019426(n)`
-/

namespace A019431.P7438980452555986445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n + (A019430 n - A019426 n)

end

end A019431.P7438980452555986445

namespace A019431

/-- `A019427(n)+A019430(n)-A019426(n)` -/
def P7438980452555986445.Spec : Prop :=
  ∀ n, P7438980452555986445.a n = A019431 n

end A019431

/-! ## A019431.P7533888515101092647

`A019427(n)+A019433(n)-A019429(n)`
-/

namespace A019431.P7533888515101092647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n + (A019433 n - A019429 n)

end

end A019431.P7533888515101092647

namespace A019431

/-- `A019427(n)+A019433(n)-A019429(n)` -/
def P7533888515101092647.Spec : Prop :=
  ∀ n, P7533888515101092647.a n = A019431 n

end A019431

/-! ## A019431.P8519409834297708003

`A019428(n)+A019429(n)-A019426(n)`
-/

namespace A019431.P8519409834297708003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n + (A019429 n - A019426 n)

end

end A019431.P8519409834297708003

namespace A019431

/-- `A019428(n)+A019429(n)-A019426(n)` -/
def P8519409834297708003.Spec : Prop :=
  ∀ n, P8519409834297708003.a n = A019431 n

end A019431

/-! ## A019431.P4210760205804704394

`A019428(n)+A019430(n)-A019427(n)`
-/

namespace A019431.P4210760205804704394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n + (A019430 n - A019427 n)

end

end A019431.P4210760205804704394

namespace A019431

/-- `A019428(n)+A019430(n)-A019427(n)` -/
def P4210760205804704394.Spec : Prop :=
  ∀ n, P4210760205804704394.a n = A019431 n

end A019431

/-!
# A019432: Continued fraction for tan(1/9).

The programs for A019432, the canonical program `A019432.P8971734438423640413` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019432 has offset 0).

The definition of A019432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019432.P8971734438423640413

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=8, a(2)=1, a(3)=25, a(4)=1, a(5)=43`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019432

/-- `2*a(n-2)-a(n-4)` -/
def P8971734438423640413.Spec : Prop :=
  ∀ n, P8971734438423640413.a n = A019432 n

theorem P8971734438423640413.correct : P8971734438423640413.Spec := by
  intro n
  simp only [A019432]

end A019432

/-! ## A019432.P7359670204590063508

`2*A019429(n)-A019426(n)`
-/

namespace A019432.P7359670204590063508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019429 n - A019426 n

end

end A019432.P7359670204590063508

namespace A019432

/-- `2*A019429(n)-A019426(n)` -/
def P7359670204590063508.Spec : Prop :=
  ∀ n, P7359670204590063508.a n = A019432 n

end A019432

/-! ## A019432.P1761355943230672614

`2*A019430(n)-A019428(n)`
-/

namespace A019432.P1761355943230672614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019430 n - A019428 n

end

end A019432.P1761355943230672614

namespace A019432

/-- `2*A019430(n)-A019428(n)` -/
def P1761355943230672614.Spec : Prop :=
  ∀ n, P1761355943230672614.a n = A019432 n

end A019432

/-! ## A019432.P457868564708905667

`2*A019431(n)-A019430(n)`
-/

namespace A019432.P457868564708905667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019431 n - A019430 n

end

end A019432.P457868564708905667

namespace A019432

/-- `2*A019431(n)-A019430(n)` -/
def P457868564708905667.Spec : Prop :=
  ∀ n, P457868564708905667.a n = A019432 n

end A019432

/-! ## A019432.P6709995880353089572

`(A019433(n)+A019431(n))/2`
-/

namespace A019432.P6709995880353089572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019433 n + A019431 n : ℚ) / 2

end

end A019432.P6709995880353089572

namespace A019432

/-- `(A019433(n)+A019431(n))/2` -/
def P6709995880353089572.Spec : Prop :=
  ∀ n, P6709995880353089572.a n = (A019432 n : ℚ)

end A019432

/-! ## A019432.P13959410876061737139

`A019433(n)+n-A109043(n)`
-/

namespace A019432.P13959410876061737139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019433 n + ((n : ℤ) - A109043 n)

end

end A019432.P13959410876061737139

namespace A019432

/-- `A019433(n)+n-A109043(n)` -/
def P13959410876061737139.Spec : Prop :=
  ∀ n, P13959410876061737139.a n = A019432 n

end A019432

/-! ## A019432.P10381959972483412956

`A019433(n)-n*A000035(n)`
-/

namespace A019432.P10381959972483412956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019433 n - (n : ℤ) * A000035 n

end

end A019432.P10381959972483412956

namespace A019432

/-- `A019433(n)-n*A000035(n)` -/
def P10381959972483412956.Spec : Prop :=
  ∀ n, P10381959972483412956.a n = A019432 n

end A019432

/-! ## A019432.P15596391922542506398

`A019425(n)+A019433(n)-A019426(n)`
-/

namespace A019432.P15596391922542506398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 n + (A019433 n - A019426 n)

end

end A019432.P15596391922542506398

namespace A019432

/-- `A019425(n)+A019433(n)-A019426(n)` -/
def P15596391922542506398.Spec : Prop :=
  ∀ n, P15596391922542506398.a n = A019432 n

end A019432

/-! ## A019432.P15675048178467347031

`A019426(n)+A019431(n)-A019425(n)`
-/

namespace A019432.P15675048178467347031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019431 n - A019425 n)

end

end A019432.P15675048178467347031

namespace A019432

/-- `A019426(n)+A019431(n)-A019425(n)` -/
def P15675048178467347031.Spec : Prop :=
  ∀ n, P15675048178467347031.a n = A019432 n

end A019432

/-! ## A019432.P16172253512146987369

`A019426(n)+A019433(n)-A019427(n)`
-/

namespace A019432.P16172253512146987369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019433 n - A019427 n)

end

end A019432.P16172253512146987369

namespace A019432

/-- `A019426(n)+A019433(n)-A019427(n)` -/
def P16172253512146987369.Spec : Prop :=
  ∀ n, P16172253512146987369.a n = A019432 n

end A019432

/-! ## A019432.P3098490438052465866

`A019427(n)+A019430(n)-A019425(n)`
-/

namespace A019432.P3098490438052465866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n + (A019430 n - A019425 n)

end

end A019432.P3098490438052465866

namespace A019432

/-- `A019427(n)+A019430(n)-A019425(n)` -/
def P3098490438052465866.Spec : Prop :=
  ∀ n, P3098490438052465866.a n = A019432 n

end A019432

/-! ## A019432.P9208417825468084134

`A019427(n)+A019431(n)-A019426(n)`
-/

namespace A019432.P9208417825468084134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n + (A019431 n - A019426 n)

end

end A019432.P9208417825468084134

namespace A019432

/-- `A019427(n)+A019431(n)-A019426(n)` -/
def P9208417825468084134.Spec : Prop :=
  ∀ n, P9208417825468084134.a n = A019432 n

end A019432

/-! ## A019432.P18252405855655172559

`A019427(n)+A019433(n)-A019428(n)`
-/

namespace A019432.P18252405855655172559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n + (A019433 n - A019428 n)

end

end A019432.P18252405855655172559

namespace A019432

/-- `A019427(n)+A019433(n)-A019428(n)` -/
def P18252405855655172559.Spec : Prop :=
  ∀ n, P18252405855655172559.a n = A019432 n

end A019432

/-! ## A019432.P18419730280531013526

`A019428(n)+A019429(n)-A019425(n)`
-/

namespace A019432.P18419730280531013526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n + (A019429 n - A019425 n)

end

end A019432.P18419730280531013526

namespace A019432

/-- `A019428(n)+A019429(n)-A019425(n)` -/
def P18419730280531013526.Spec : Prop :=
  ∀ n, P18419730280531013526.a n = A019432 n

end A019432

/-! ## A019432.P2490121658457977833

`A019428(n)+A019430(n)-A019426(n)`
-/

namespace A019432.P2490121658457977833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n + (A019430 n - A019426 n)

end

end A019432.P2490121658457977833

namespace A019432

/-- `A019428(n)+A019430(n)-A019426(n)` -/
def P2490121658457977833.Spec : Prop :=
  ∀ n, P2490121658457977833.a n = A019432 n

end A019432

/-! ## A019432.P374756063836897614

`A019428(n)+A019431(n)-A019427(n)`
-/

namespace A019432.P374756063836897614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n + (A019431 n - A019427 n)

end

end A019432.P374756063836897614

namespace A019432

/-- `A019428(n)+A019431(n)-A019427(n)` -/
def P374756063836897614.Spec : Prop :=
  ∀ n, P374756063836897614.a n = A019432 n

end A019432

/-! ## A019432.P1946139452495467973

`A019428(n)+A019433(n)-A019429(n)`
-/

namespace A019432.P1946139452495467973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n + (A019433 n - A019429 n)

end

end A019432.P1946139452495467973

namespace A019432

/-- `A019428(n)+A019433(n)-A019429(n)` -/
def P1946139452495467973.Spec : Prop :=
  ∀ n, P1946139452495467973.a n = A019432 n

end A019432

/-! ## A019432.P8606927775354217203

`A019429(n)+A019430(n)-A019427(n)`
-/

namespace A019432.P8606927775354217203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 n + (A019430 n - A019427 n)

end

end A019432.P8606927775354217203

namespace A019432

/-- `A019429(n)+A019430(n)-A019427(n)` -/
def P8606927775354217203.Spec : Prop :=
  ∀ n, P8606927775354217203.a n = A019432 n

end A019432

/-! ## A019432.P4283448993017375735

`A019429(n)+A019431(n)-A019428(n)`
-/

namespace A019432.P4283448993017375735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 n + (A019431 n - A019428 n)

end

end A019432.P4283448993017375735

namespace A019432

/-- `A019429(n)+A019431(n)-A019428(n)` -/
def P4283448993017375735.Spec : Prop :=
  ∀ n, P4283448993017375735.a n = A019432 n

end A019432

/-! ## A019432.P1319006663046629179

`A019430(n)+A019431(n)-A019429(n)`
-/

namespace A019432.P1319006663046629179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 n + (A019431 n - A019429 n)

end

end A019432.P1319006663046629179

namespace A019432

/-- `A019430(n)+A019431(n)-A019429(n)` -/
def P1319006663046629179.Spec : Prop :=
  ∀ n, P1319006663046629179.a n = A019432 n

end A019432

/-!
# A019433: Continued fraction for tan(1/10).

The programs for A019433, the canonical program `A019433.P13550741640831212000` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019433 has offset 0).

The definition of A019433 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019433.P13550741640831212000

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=9, a(2)=1, a(3)=28, a(4)=1, a(5)=48`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019433

/-- `2*a(n-2)-a(n-4)` -/
def P13550741640831212000.Spec : Prop :=
  ∀ n, P13550741640831212000.a n = A019433 n

theorem P13550741640831212000.correct : P13550741640831212000.Spec := by
  intro n
  simp only [A019433]

end A019433

/-! ## A019433.P895942352731169465

`2*A019429(n)-A019425(n)`
-/

namespace A019433.P895942352731169465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019429 n - A019425 n

end

end A019433.P895942352731169465

namespace A019433

/-- `2*A019429(n)-A019425(n)` -/
def P895942352731169465.Spec : Prop :=
  ∀ n, P895942352731169465.a n = A019433 n

end A019433

/-! ## A019433.P8935380756234852542

`2*A019430(n)-A019427(n)`
-/

namespace A019433.P8935380756234852542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019430 n - A019427 n

end

end A019433.P8935380756234852542

namespace A019433

/-- `2*A019430(n)-A019427(n)` -/
def P8935380756234852542.Spec : Prop :=
  ∀ n, P8935380756234852542.a n = A019433 n

end A019433

/-! ## A019433.P7628475812707872413

`2*A019431(n)-A019429(n)`
-/

namespace A019433.P7628475812707872413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019431 n - A019429 n

end

end A019433.P7628475812707872413

namespace A019433

/-- `2*A019431(n)-A019429(n)` -/
def P7628475812707872413.Spec : Prop :=
  ∀ n, P7628475812707872413.a n = A019433 n

end A019433

/-! ## A019433.P3698465645137652091

`2*A019432(n)-A019431(n)`
-/

namespace A019433.P3698465645137652091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019432 n - A019431 n

end

end A019433.P3698465645137652091

namespace A019433

/-- `2*A019432(n)-A019431(n)` -/
def P3698465645137652091.Spec : Prop :=
  ∀ n, P3698465645137652091.a n = A019433 n

end A019433

/-! ## A019433.P8364754612995955729

`A019432(n)+n*A000035(n)`
-/

namespace A019433.P8364754612995955729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 n + (n : ℤ) * A000035 n

end

end A019433.P8364754612995955729

namespace A019433

/-- `A019432(n)+n*A000035(n)` -/
def P8364754612995955729.Spec : Prop :=
  ∀ n, P8364754612995955729.a n = A019433 n

end A019433

/-! ## A019433.P8287717125825922379

`A019426(n)+A019432(n)-A019425(n)`
-/

namespace A019433.P8287717125825922379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n + (A019432 n - A019425 n)

end

end A019433.P8287717125825922379

namespace A019433

/-- `A019426(n)+A019432(n)-A019425(n)` -/
def P8287717125825922379.Spec : Prop :=
  ∀ n, P8287717125825922379.a n = A019433 n

end A019433

/-! ## A019433.P15248380609625883758

`A019427(n)+A019431(n)-A019425(n)`
-/

namespace A019433.P15248380609625883758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n + (A019431 n - A019425 n)

end

end A019433.P15248380609625883758

namespace A019433

/-- `A019427(n)+A019431(n)-A019425(n)` -/
def P15248380609625883758.Spec : Prop :=
  ∀ n, P15248380609625883758.a n = A019433 n

end A019433

/-! ## A019433.P12023445925682935967

`A019427(n)+A019432(n)-A019426(n)`
-/

namespace A019433.P12023445925682935967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 n + (A019432 n - A019426 n)

end

end A019433.P12023445925682935967

namespace A019433

/-- `A019427(n)+A019432(n)-A019426(n)` -/
def P12023445925682935967.Spec : Prop :=
  ∀ n, P12023445925682935967.a n = A019433 n

end A019433

/-! ## A019433.P8191343420391151642

`A019428(n)+A019430(n)-A019425(n)`
-/

namespace A019433.P8191343420391151642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n + (A019430 n - A019425 n)

end

end A019433.P8191343420391151642

namespace A019433

/-- `A019428(n)+A019430(n)-A019425(n)` -/
def P8191343420391151642.Spec : Prop :=
  ∀ n, P8191343420391151642.a n = A019433 n

end A019433

/-! ## A019433.P15610756300381663441

`A019428(n)+A019431(n)-A019426(n)`
-/

namespace A019433.P15610756300381663441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n + (A019431 n - A019426 n)

end

end A019433.P15610756300381663441

namespace A019433

/-- `A019428(n)+A019431(n)-A019426(n)` -/
def P15610756300381663441.Spec : Prop :=
  ∀ n, P15610756300381663441.a n = A019433 n

end A019433

/-! ## A019433.P1738364084307469374

`A019429(n)+A019430(n)-A019426(n)`
-/

namespace A019433.P1738364084307469374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 n + (A019430 n - A019426 n)

end

end A019433.P1738364084307469374

namespace A019433

/-- `A019429(n)+A019430(n)-A019426(n)` -/
def P1738364084307469374.Spec : Prop :=
  ∀ n, P1738364084307469374.a n = A019433 n

end A019433

/-! ## A019433.P4692980885252516539

`A019429(n)+A019431(n)-A019427(n)`
-/

namespace A019433.P4692980885252516539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 n + (A019431 n - A019427 n)

end

end A019433.P4692980885252516539

namespace A019433

/-- `A019429(n)+A019431(n)-A019427(n)` -/
def P4692980885252516539.Spec : Prop :=
  ∀ n, P4692980885252516539.a n = A019433 n

end A019433

/-! ## A019433.P10597480096361667400

`A019429(n)+A019432(n)-A019428(n)`
-/

namespace A019433.P10597480096361667400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 n + (A019432 n - A019428 n)

end

end A019433.P10597480096361667400

namespace A019433

/-- `A019429(n)+A019432(n)-A019428(n)` -/
def P10597480096361667400.Spec : Prop :=
  ∀ n, P10597480096361667400.a n = A019433 n

end A019433

/-! ## A019433.P12403800722207055165

`A019430(n)+A019431(n)-A019428(n)`
-/

namespace A019433.P12403800722207055165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 n + (A019431 n - A019428 n)

end

end A019433.P12403800722207055165

namespace A019433

/-- `A019430(n)+A019431(n)-A019428(n)` -/
def P12403800722207055165.Spec : Prop :=
  ∀ n, P12403800722207055165.a n = A019433 n

end A019433

/-! ## A019433.P13262727535052785612

`A019431(n)+A019432(n)-A019430(n)`
-/

namespace A019433.P13262727535052785612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 n + (A019432 n - A019430 n)

end

end A019433.P13262727535052785612

namespace A019433

/-- `A019431(n)+A019432(n)-A019430(n)` -/
def P13262727535052785612.Spec : Prop :=
  ∀ n, P13262727535052785612.a n = A019433 n

end A019433

/-! ## A019433.P15038817486033413203

`A237415(A019428(n))`
-/

namespace A019433.P15038817486033413203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237415 (A019428 n).toNat

end

end A019433.P15038817486033413203

namespace A019433

/-- `A237415(A019428(n))` -/
def P15038817486033413203.Spec : Prop :=
  ∀ n, P15038817486033413203.a n = A019433 n

end A019433

/-! ## A019433.P9784987331905275921

`A235498(A019432(n))`
-/

namespace A019433.P9784987331905275921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235498 (A019432 n).toNat

end

end A019433.P9784987331905275921

namespace A019433

/-- `A235498(A019432(n))` -/
def P9784987331905275921.Spec : Prop :=
  ∀ n, P9784987331905275921.a n = A019433 n

end A019433

/-!
# A019434: Fermat primes: primes of the form 2^(2^k) + 1, for some k >= 0.

The programs for A019434, there is no canonical definition to state claims against.
-/

/-! ## A019434.P9206923890726165779

`p?[or(1, 2^n)]`
-/

namespace A019434.P9206923890726165779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A019434.P9206923890726165779

/-!
# A019436: Size of smallest directed 1-covering code of length n with banded structure.

The programs for A019436, there is no canonical definition to state claims against.
-/

/-! ## A019436.P12642553744072988564

`Δ[A378602(3^(n+1))]`
-/

namespace A019436.P12642553744072988564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378602 (3 ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019436.P12642553744072988564

/-! ## A019436.P6268984242143124752

`A055086(A148188(n+1))`
-/

namespace A019436.P6268984242143124752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A148188 (n + 1)).toNat

end

end A019436.P6268984242143124752

/-! ## A019436.P3046909215083347316

`A325371(A061418(n+1))-1`
-/

namespace A019436.P3046909215083347316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325371 (A061418 (n + 1)).toNat - 1

end

end A019436.P3046909215083347316

/-! ## A019436.P13514706838325313908

`record[A326836(n+1)-A078760(n)]`
-/

namespace A019436.P13514706838325313908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326836 (n + 1) - A078760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019436.P13514706838325313908

/-! ## A019436.P17852156741650550876

`A088205(n)+A000213(A032555(n+1))`
-/

namespace A019436.P17852156741650550876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088205 n + A000213 (A032555 (n + 1)).toNat

end

end A019436.P17852156741650550876

/-!
# A019439: Number of ways of tiling a 2 X n rectangle with dominoes and trominoes.

The programs for A019439, there is no canonical definition to state claims against.
-/

/-! ## A019439.P1565950705502857442

`A364457(∑[n+3])`
-/

namespace A019439.P1565950705502857442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364457 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019439.P1565950705502857442

/-! ## A019439.P1204546735576482990

`A364457(A141214(n))%A212701(n+1)`
-/

namespace A019439.P1204546735576482990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364457 (A141214 n).toNat) (A212701 (n + 1))

end

end A019439.P1204546735576482990

/-! ## A019439.P3729908239773650421

`lcm(A326028(n+2), A364457(A141214(n)))`
-/

namespace A019439.P3729908239773650421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A326028 (n + 2)) (A364457 (A141214 n).toNat)

end

end A019439.P3729908239773650421

/-! ## A019439.P15255529690374302964

`and(A117060(2*n+1), A364457(A141214(n)))`
-/

namespace A019439.P15255529690374302964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117060 (2 * n + 1)) (A364457 (A141214 n).toNat)

end

end A019439.P15255529690374302964

/-!
# A019441: Coefficients in generating function for radius of gyration of the sequence A066158.

The programs for A019441, there is no canonical definition to state claims against.
-/

/-! ## A019441.P2481290017150862058

`A311879(A334978(n))+∑[∑[n]%3]`
-/

namespace A019441.P2481290017150862058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311879 (A334978 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A019441.P2481290017150862058

/-!
# A019442: Numbers m such that a Hadamard matrix of order m exists.

The programs for A019442, the canonical program `A019442.P12147317439732704482` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019442 has offset 1).

The definition of A019442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1375 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019442.P12147317439732704482

`4+a(n-1)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019442

/-- `4+a(n-1)` -/
def P12147317439732704482.Spec : Prop :=
  ∀ n, (P12147317439732704482.a n : ℤ) = A019442 (n + 1)

theorem P12147317439732704482.correct : P12147317439732704482.Spec := by
  intro n
  simp only [A019442, Nat.add_sub_cancel]

end A019442

/-!
# A019443: Expansion of 1/((1-4x)(1-6x)(1-9x)).

The programs for A019443, the canonical program `A019443.P17161750368594420472` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019443 has offset 0).

The definition of A019443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019443.P17161750368594420472

`15*a(n-1)-54*a(n-2)+4^n` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019443

/-- `15*a(n-1)-54*a(n-2)+4^n` -/
def P17161750368594420472.Spec : Prop :=
  ∀ n, P17161750368594420472.a n = A019443 n

theorem P17161750368594420472.correct : P17161750368594420472.Spec := by
  intro n
  simp only [A019443]

end A019443

/-! ## A019443.P3303874478130300191

`A016172(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A019443.P3303874478130300191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016172 n + 4 * a (n - 1)

end

end A019443.P3303874478130300191

namespace A019443

/-- `A016172(n)+4*a(n-1)` -/
def P3303874478130300191.Spec : Prop :=
  ∀ n, P3303874478130300191.a n = A019443 n

end A019443

/-! ## A019443.P12530834935601330546

`A015441(2*n+3)-A000400(n+1)`
-/

namespace A019443.P12530834935601330546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 (2 * n + 3) - A000400 (n + 1)

end

end A019443.P12530834935601330546

namespace A019443

/-- `A015441(2*n+3)-A000400(n+1)` -/
def P12530834935601330546.Spec : Prop :=
  ∀ n, P12530834935601330546.a n = A019443 n

end A019443

/-! ## A019443.P5532754986044295029

`A001047(n+1)/5*A001047(n+2)`
-/

namespace A019443.P5532754986044295029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001047 (n + 1) : ℚ) / 5 * (A001047 (n + 2) : ℚ)

end

end A019443.P5532754986044295029

namespace A019443

/-- `A001047(n+1)/5*A001047(n+2)` -/
def P5532754986044295029.Spec : Prop :=
  ∀ n, P5532754986044295029.a n = (A019443 n : ℚ)

end A019443

/-! ## A019443.P15039263440384138013

`A016306(n)+A016306(n)-A016291(n)`
-/

namespace A019443.P15039263440384138013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016306 n + (A016306 n - A016291 n)

end

end A019443.P15039263440384138013

namespace A019443

/-- `A016306(n)+A016306(n)-A016291(n)` -/
def P15039263440384138013.Spec : Prop :=
  ∀ n, P15039263440384138013.a n = A019443 n

end A019443

/-! ## A019443.P7734924266662665371

`2*A016306(n)-A016291(n)`
-/

namespace A019443.P7734924266662665371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016306 n - A016291 n

end

end A019443.P7734924266662665371

namespace A019443

/-- `2*A016306(n)-A016291(n)` -/
def P7734924266662665371.Spec : Prop :=
  ∀ n, P7734924266662665371.a n = A019443 n

end A019443

/-! ## A019443.P14729452542137086063

`2*A019664(n)-A020579(n)`
-/

namespace A019443.P14729452542137086063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019664 n - A020579 n

end

end A019443.P14729452542137086063

namespace A019443

/-- `2*A019664(n)-A020579(n)` -/
def P14729452542137086063.Spec : Prop :=
  ∀ n, P14729452542137086063.a n = A019443 n

end A019443

/-!
# A019444: a_1, a_2, ..., is a permutation of the positive integers such that the average of each initial segment is an integer, using the greedy algorithm to define a_n.

The programs for A019444, the canonical program `A019444.P809029338349565677` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019444 has offset 1).

The definition of A019444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019444.P11657821060503662019

`Δ[n*ceil(n/ϕ)]`
-/

namespace A019444.P11657821060503662019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A019444.P11657821060503662019

namespace A019444

/-- `Δ[n*ceil(n/ϕ)]` -/
def P11657821060503662019.Spec : Prop :=
  ∀ n, P11657821060503662019.a n = A019444 (n + 1)

end A019444

/-! ## A019444.P11448674055905338993

`char[xor(1, n)]+Δ[n*floor(n/ϕ)]`
-/

namespace A019444.P11448674055905338993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℝ) / Real.goldenRatio⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A019444.P11448674055905338993

namespace A019444

/-- `char[xor(1, n)]+Δ[n*floor(n/ϕ)]` -/
def P11448674055905338993.Spec : Prop :=
  ∀ n, P11448674055905338993.a n = A019444 (n + 1)

end A019444

/-! ## A019444.P3987296901777701346

`Δ[n*floor(n/ϕ)]+floor(acot(n))!`
-/

namespace A019444.P3987296901777701346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.factorial ⌊SequenceMachineLib.acot (n : ℝ)⌋.toNat : ℤ)

end

end A019444.P3987296901777701346

namespace A019444

/-- `Δ[n*floor(n/ϕ)]+floor(acot(n))!` -/
def P3987296901777701346.Spec : Prop :=
  ∀ n, P3987296901777701346.a n = A019444 (n + 1)

end A019444

/-! ## A019444.P5975861322979875747

`Δ[n*floor(n/ϕ)]%Δ[n²]+1`
-/

namespace A019444.P5975861322979875747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℝ) / Real.goldenRatio⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) + 1

end

end A019444.P5975861322979875747

namespace A019444

/-- `Δ[n*floor(n/ϕ)]%Δ[n²]+1` -/
def P5975861322979875747.Spec : Prop :=
  ∀ n, P5975861322979875747.a n = A019444 (n + 1)

end A019444

/-! ## A019444.P12111991249881202859

`Δ[n*floor(n/ϕ)]+Δ[floor(n/ϕ)]!`
-/

namespace A019444.P12111991249881202859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℝ) / Real.goldenRatio⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.factorial (f2 (n + 1) - f2 n).toNat : ℤ)

end

end A019444.P12111991249881202859

namespace A019444

/-- `Δ[n*floor(n/ϕ)]+Δ[floor(n/ϕ)]!` -/
def P12111991249881202859.Spec : Prop :=
  ∀ n, P12111991249881202859.a n = A019444 (n + 1)

end A019444

/-! ## A019444.P10696881737742297711

`A002251(n)+1`
-/

namespace A019444.P10696881737742297711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 n + 1

end

end A019444.P10696881737742297711

namespace A019444

/-- `A002251(n)+1` -/
def P10696881737742297711.Spec : Prop :=
  ∀ n, P10696881737742297711.a n = A019444 (n + 1)

end A019444

/-! ## A019444.P3811792201681781215

`n-(A023443(n)-A002251(n))`
-/

namespace A019444.P3811792201681781215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A002251 n)

end

end A019444.P3811792201681781215

namespace A019444

/-- `n-(A023443(n)-A002251(n))` -/
def P3811792201681781215.Spec : Prop :=
  ∀ n, P3811792201681781215.a n = A019444 (n + 1)

end A019444

/-! ## A019444.P809029338349565677

`∑[A114986(n)]+n*A114986(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A019444

/-- `∑[A114986(n)]+n*A114986(n)` -/
def P809029338349565677.Spec : Prop :=
  ∀ n, P809029338349565677.a n = A019444 (n + 1)

theorem P809029338349565677.correct : P809029338349565677.Spec := by
  intro n
  simp only [A019444, Nat.add_sub_cancel]

end A019444

/-! ## A019444.P5403322985690587545

`A000201(n+1)-n*A188432(n+1)`
-/

namespace A019444.P5403322985690587545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) - (n : ℤ) * A188432 (n + 1)

end

end A019444.P5403322985690587545

namespace A019444

/-- `A000201(n+1)-n*A188432(n+1)` -/
def P5403322985690587545.Spec : Prop :=
  ∀ n, P5403322985690587545.a n = A019444 (n + 1)

end A019444

/-! ## A019444.P7636974547296688460

`A000201(n+1)-n*char[A001950(n+1)]`
-/

namespace A019444.P7636974547296688460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) - ((n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ)

end

end A019444.P7636974547296688460

namespace A019444

/-- `A000201(n+1)-n*char[A001950(n+1)]` -/
def P7636974547296688460.Spec : Prop :=
  ∀ n, P7636974547296688460.a n = A019444 (n + 1)

end A019444

/-! ## A019444.P2643746369176757044

`A005206(A000201(n+1)*A001468(n)-A005206(n))`
-/

namespace A019444.P2643746369176757044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A000201 (n + 1) * A001468 n - A005206 n).toNat

end

end A019444.P2643746369176757044

namespace A019444

/-- `A005206(A000201(n+1)*A001468(n)-A005206(n))` -/
def P2643746369176757044.Spec : Prop :=
  ∀ n, P2643746369176757044.a n = A019444 (n + 1)

end A019444

/-! ## A019444.P11761035769713992372

`A001950(A026242(A026355(n+1)))-(n+1)`
-/

namespace A019444.P11761035769713992372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A026242 (A026355 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A019444.P11761035769713992372

namespace A019444

/-- `A001950(A026242(A026355(n+1)))-(n+1)` -/
def P11761035769713992372.Spec : Prop :=
  ∀ n, P11761035769713992372.a n = A019444 (n + 1)

end A019444

/-! ## A019444.P12401751863047445701

`A001950(A026242(A099267(n+1)))-(n+1)`
-/

namespace A019444.P12401751863047445701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A026242 (A099267 (n + 1)).toNat).toNat - (n + 1 : ℤ)

end

end A019444.P12401751863047445701

namespace A019444

/-- `A001950(A026242(A099267(n+1)))-(n+1)` -/
def P12401751863047445701.Spec : Prop :=
  ∀ n, P12401751863047445701.a n = A019444 (n + 1)

end A019444

/-! ## A019444.P794952141279406466

`A327253(A327255(n+1))+Δ[n*floor(n/ϕ)]`
-/

namespace A019444.P794952141279406466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 (A327255 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A019444.P794952141279406466

namespace A019444

/-- `A327253(A327255(n+1))+Δ[n*floor(n/ϕ)]` -/
def P794952141279406466.Spec : Prop :=
  ∀ n, P794952141279406466.a n = A019444 (n + 1)

end A019444

/-! ## A019444.P10817040497581157776

`A003603(A047924(n))`
-/

namespace A019444.P10817040497581157776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A047924 n).toNat

end

end A019444.P10817040497581157776

namespace A019444

/-- `A003603(A047924(n))` -/
def P10817040497581157776.Spec : Prop :=
  ∀ n, P10817040497581157776.a n = A019444 (n + 1)

end A019444

/-! ## A019444.P10091230921032109560

`A000201(n+1)-n*A003849(A004957(n))`
-/

namespace A019444.P10091230921032109560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) - (n : ℤ) * A003849 (A004957 n).toNat

end

end A019444.P10091230921032109560

namespace A019444

/-- `A000201(n+1)-n*A003849(A004957(n))` -/
def P10091230921032109560.Spec : Prop :=
  ∀ n, P10091230921032109560.a n = A019444 (n + 1)

end A019444

/-! ## A019444.P17144364725404674218

`A120873(A007066(n+1))`
-/

namespace A019444.P17144364725404674218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120873 (A007066 (n + 1)).toNat

end

end A019444.P17144364725404674218

namespace A019444

/-- `A120873(A007066(n+1))` -/
def P17144364725404674218.Spec : Prop :=
  ∀ n, P17144364725404674218.a n = A019444 (n + 1)

end A019444

/-! ## A019444.P13718119269468836917

`A120873(A026356(n+1))`
-/

namespace A019444.P13718119269468836917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120873 (A026356 (n + 1)).toNat

end

end A019444.P13718119269468836917

namespace A019444

/-- `A120873(A026356(n+1))` -/
def P13718119269468836917.Spec : Prop :=
  ∀ n, P13718119269468836917.a n = A019444 (n + 1)

end A019444

/-! ## A019444.P4018890662378281267

`A003603(A000201(A026355(n+1)+n))`
-/

namespace A019444.P4018890662378281267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A000201 (A026355 (n + 1) + (n : ℤ)).toNat).toNat

end

end A019444.P4018890662378281267

namespace A019444

/-- `A003603(A000201(A026355(n+1)+n))` -/
def P4018890662378281267.Spec : Prop :=
  ∀ n, P4018890662378281267.a n = A019444 (n + 1)

end A019444

/-!
# A019445: Form a permutation of the positive integers, p_1, p_2, ..., such that the average of each initial segment is an integer, using the greedy algorithm to define p_n; sequence gives p_1 + ... + p_n.

The programs for A019445, the canonical program `A019445.P16288997775079485038` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019445 has offset 1).

The definition of A019445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019445.P8747598485197094751

`∑[abs(Δ[n*ceil(n/ϕ)])]`
-/

namespace A019445.P8747598485197094751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℝ) / Real.goldenRatio⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019445.P8747598485197094751

namespace A019445

/-- `∑[abs(Δ[n*ceil(n/ϕ)])]` -/
def P8747598485197094751.Spec : Prop :=
  ∀ n, P8747598485197094751.a n = A019445 (n + 1)

end A019445

/-! ## A019445.P8183809353232748347

`abs((n+1)*floor(xor(n, -1)/ϕ))`
-/

namespace A019445.P8183809353232748347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * ⌊(Int.xor (n : ℤ) (-1) : ℝ) / Real.goldenRatio⌋|

end

end A019445.P8183809353232748347

namespace A019445

/-- `abs((n+1)*floor(xor(n, -1)/ϕ))` -/
def P8183809353232748347.Spec : Prop :=
  ∀ n, P8183809353232748347.a n = A019445 (n + 1)

end A019445

/-! ## A019445.P15573632684582373622

`Δ[n*ceil(n/ϕ)]+a(n-1)` with `a(0)=1`
-/

namespace A019445.P15573632684582373622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A019445.P15573632684582373622

namespace A019445

/-- `Δ[n*ceil(n/ϕ)]+a(n-1)` -/
def P15573632684582373622.Spec : Prop :=
  ∀ n, P15573632684582373622.a n = A019445 (n + 1)

end A019445

/-! ## A019445.P3881914147986904836

`floor(floor((n+1)/ϕ)/acot(n+1))+1+n`
-/

namespace A019445.P3881914147986904836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n + 1 : ℝ) / Real.goldenRatio⌋ : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)⌋ + 1 + (n : ℤ)

end

end A019445.P3881914147986904836

namespace A019445

/-- `floor(floor((n+1)/ϕ)/acot(n+1))+1+n` -/
def P3881914147986904836.Spec : Prop :=
  ∀ n, P3881914147986904836.a n = A019445 (n + 1)

end A019445

/-! ## A019445.P15116460858722047585

`floor(xor(n, -1)/ϕ)-(n+2)*floor(xor(n, -1)/ϕ)`
-/

namespace A019445.P15116460858722047585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.xor (n : ℤ) (-1) : ℝ) / Real.goldenRatio⌋ - (n + 2 : ℤ) * ⌊(Int.xor (n : ℤ) (-1) : ℝ) / Real.goldenRatio⌋

end

end A019445.P15116460858722047585

namespace A019445

/-- `floor(xor(n, -1)/ϕ)-(n+2)*floor(xor(n, -1)/ϕ)` -/
def P15116460858722047585.Spec : Prop :=
  ∀ n, P15116460858722047585.a n = A019445 (n + 1)

end A019445

/-! ## A019445.P7844811095872471584

`A293688(n)+1+n`
-/

namespace A019445.P7844811095872471584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293688 n + 1 + (n : ℤ)

end

end A019445.P7844811095872471584

namespace A019445

/-- `A293688(n)+1+n` -/
def P7844811095872471584.Spec : Prop :=
  ∀ n, P7844811095872471584.a n = A019445 (n + 1)

end A019445

/-! ## A019445.P492831648013958787

`∑[A002251(n)]+1+n`
-/

namespace A019445.P492831648013958787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A019445.P492831648013958787

namespace A019445

/-- `∑[A002251(n)]+1+n` -/
def P492831648013958787.Spec : Prop :=
  ∀ n, P492831648013958787.a n = A019445 (n + 1)

end A019445

/-! ## A019445.P9112630359412195832

`(n+1)*∑[A114986(n)]`
-/

namespace A019445.P9112630359412195832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019445.P9112630359412195832

namespace A019445

/-- `(n+1)*∑[A114986(n)]` -/
def P9112630359412195832.Spec : Prop :=
  ∀ n, P9112630359412195832.a n = A019445 (n + 1)

end A019445

/-! ## A019445.P16288997775079485038

`(n+1)*(A005206(n)+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A019445

/-- `(n+1)*(A005206(n)+1)` -/
def P16288997775079485038.Spec : Prop :=
  ∀ n, P16288997775079485038.a n = A019445 (n + 1)

theorem P16288997775079485038.correct : P16288997775079485038.Spec := by
  intro n
  simp only [A019445, Nat.add_sub_cancel]

end A019445

/-! ## A019445.P1138879738432013410

`(n+1)*A019446(n+1)`
-/

namespace A019445.P1138879738432013410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A019446 (n + 1)

end

end A019445.P1138879738432013410

namespace A019445

/-- `(n+1)*A019446(n+1)` -/
def P1138879738432013410.Spec : Prop :=
  ∀ n, P1138879738432013410.a n = A019445 (n + 1)

end A019445

/-! ## A019445.P3296594818524507344

`2*∑[A019444(n+1)/2]`
-/

namespace A019445.P3296594818524507344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019444 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019445.P3296594818524507344

namespace A019445

/-- `2*∑[A019444(n+1)/2]` -/
def P3296594818524507344.Spec : Prop :=
  ∀ n, P3296594818524507344.a n = (A019445 (n + 1) : ℚ)

end A019445

/-! ## A019445.P10157697137341618074

`A026271(n+1)+∑[1-n]`
-/

namespace A019445.P10157697137341618074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026271 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019445.P10157697137341618074

namespace A019445

/-- `A026271(n+1)+∑[1-n]` -/
def P10157697137341618074.Spec : Prop :=
  ∀ n, P10157697137341618074.a n = A019445 (n + 1)

end A019445

/-! ## A019445.P14089253561993651468

`(n+1)*(A060143(n+1)+1)`
-/

namespace A019445.P14089253561993651468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A060143 (n + 1) + 1)

end

end A019445.P14089253561993651468

namespace A019445

/-- `(n+1)*(A060143(n+1)+1)` -/
def P14089253561993651468.Spec : Prop :=
  ∀ n, P14089253561993651468.a n = A019445 (n + 1)

end A019445

/-! ## A019445.P12124479577140157990

`(n+1)*(A000201(n+1)-n)`
-/

namespace A019445.P12124479577140157990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000201 (n + 1) - (n : ℤ))

end

end A019445.P12124479577140157990

namespace A019445

/-- `(n+1)*(A000201(n+1)-n)` -/
def P12124479577140157990.Spec : Prop :=
  ∀ n, P12124479577140157990.a n = A019445 (n + 1)

end A019445

/-! ## A019445.P9190828624970884276

`(n+1)*(A066096(n+1)-n)`
-/

namespace A019445.P9190828624970884276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A066096 (n + 1) - (n : ℤ))

end

end A019445.P9190828624970884276

namespace A019445

/-- `(n+1)*(A066096(n+1)-n)` -/
def P9190828624970884276.Spec : Prop :=
  ∀ n, P9190828624970884276.a n = A019445 (n + 1)

end A019445

/-! ## A019445.P3248536194316165502

`(n+1)*∑[A096270(n)]+1+n`
-/

namespace A019445.P3248536194316165502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 + (n : ℤ)

end

end A019445.P3248536194316165502

namespace A019445

/-- `(n+1)*∑[A096270(n)]+1+n` -/
def P3248536194316165502.Spec : Prop :=
  ∀ n, P3248536194316165502.a n = A019445 (n + 1)

end A019445

/-! ## A019445.P2859434422023078975

`(n+1)*(A004956(n+1)-(n+1))`
-/

namespace A019445.P2859434422023078975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A004956 (n + 1) - (n + 1 : ℤ))

end

end A019445.P2859434422023078975

namespace A019445

/-- `(n+1)*(A004956(n+1)-(n+1))` -/
def P2859434422023078975.Spec : Prop :=
  ∀ n, P2859434422023078975.a n = A019445 (n + 1)

end A019445

/-! ## A019445.P5666215690432045726

`(n+1)*(A026351(n+1)-(n+1))`
-/

namespace A019445.P5666215690432045726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A026351 (n + 1) - (n + 1 : ℤ))

end

end A019445.P5666215690432045726

namespace A019445

/-- `(n+1)*(A026351(n+1)-(n+1))` -/
def P5666215690432045726.Spec : Prop :=
  ∀ n, P5666215690432045726.a n = A019445 (n + 1)

end A019445

/-! ## A019445.P5493737701487156647

`A080956(n)+A026271(n+1)`
-/

namespace A019445.P5493737701487156647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080956 n + A026271 (n + 1)

end

end A019445.P5493737701487156647

namespace A019445

/-- `A080956(n)+A026271(n+1)` -/
def P5493737701487156647.Spec : Prop :=
  ∀ n, P5493737701487156647.a n = A019445 (n + 1)

end A019445

/-! ## A019445.P1733201144582307520

`(n+1)*∑[A189479(n+2)]`
-/

namespace A019445.P1733201144582307520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189479 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A019445.P1733201144582307520

namespace A019445

/-- `(n+1)*∑[A189479(n+2)]` -/
def P1733201144582307520.Spec : Prop :=
  ∀ n, P1733201144582307520.a n = A019445 (n + 1)

end A019445

/-!
# A019446: a(n) = ceiling(n/tau), where tau = (1+sqrt(5))/2.

The programs for A019446, the canonical program `A019446.P12499575093984952781` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019446 has offset 1).

The definition of A019446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019446.P2182538028828961995

`ceil((n+1)/ϕ)`
-/

namespace A019446.P2182538028828961995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

end

end A019446.P2182538028828961995

namespace A019446

/-- `ceil((n+1)/ϕ)` -/
def P2182538028828961995.Spec : Prop :=
  ∀ n, P2182538028828961995.a n = A019446 (n + 1)

end A019446

/-! ## A019446.P13247134250131033294

`∑[dr(Δ[ceil(n/ϕ)])]`
-/

namespace A019446.P13247134250131033294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019446.P13247134250131033294

namespace A019446

/-- `∑[dr(Δ[ceil(n/ϕ)])]` -/
def P13247134250131033294.Spec : Prop :=
  ∀ n, (P13247134250131033294.a n : ℤ) = A019446 (n + 1)

end A019446

/-! ## A019446.P8152445428403463490

`-floor(xor(n, -1)/ϕ)`
-/

namespace A019446.P8152445428403463490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(Int.xor (n : ℤ) (-1) : ℝ) / Real.goldenRatio⌋

end

end A019446.P8152445428403463490

namespace A019446

/-- `-floor(xor(n, -1)/ϕ)` -/
def P8152445428403463490.Spec : Prop :=
  ∀ n, P8152445428403463490.a n = A019446 (n + 1)

end A019446

/-! ## A019446.P7843725474514518307

`∑[Δ[ceil(n/ϕ)]%2]`
-/

namespace A019446.P7843725474514518307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019446.P7843725474514518307

namespace A019446

/-- `∑[Δ[ceil(n/ϕ)]%2]` -/
def P7843725474514518307.Spec : Prop :=
  ∀ n, P7843725474514518307.a n = A019446 (n + 1)

end A019446

/-! ## A019446.P5322869530179233559

`floor(tanh(5)+(n+1)/ϕ)`
-/

namespace A019446.P5322869530179233559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tanh (5 : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌋

end

end A019446.P5322869530179233559

namespace A019446

/-- `floor(tanh(5)+(n+1)/ϕ)` -/
def P5322869530179233559.Spec : Prop :=
  ∀ n, P5322869530179233559.a n = A019446 (n + 1)

end A019446

/-! ## A019446.P13233846924545664181

`floor(∑[ϕ-n]+C(n, 2))`
-/

namespace A019446.P13233846924545664181
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 2 : ℝ)⌋

end

end A019446.P13233846924545664181

namespace A019446

/-- `floor(∑[ϕ-n]+C(n, 2))` -/
def P13233846924545664181.Spec : Prop :=
  ∀ n, P13233846924545664181.a n = A019446 (n + 1)

end A019446

/-! ## A019446.P18083656798238921939

`floor(C(n, 2)-∑[n-ϕ])`
-/

namespace A019446.P18083656798238921939
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A019446.P18083656798238921939

namespace A019446

/-- `floor(C(n, 2)-∑[n-ϕ])` -/
def P18083656798238921939.Spec : Prop :=
  ∀ n, P18083656798238921939.a n = A019446 (n + 1)

end A019446

/-! ## A019446.P1998205942985225948

`floor(Δ[C(n, 2)/ϕ]+ϕ)`
-/

namespace A019446.P1998205942985225948
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℝ) / Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n + Real.goldenRatio⌋

end

end A019446.P1998205942985225948

namespace A019446

/-- `floor(Δ[C(n, 2)/ϕ]+ϕ)` -/
def P1998205942985225948.Spec : Prop :=
  ∀ n, P1998205942985225948.a n = A019446 (n + 1)

end A019446

/-! ## A019446.P16333994906610814368

`floor(C(n+1, n)/ϕ)+1`
-/

namespace A019446.P16333994906610814368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) n : ℝ) / Real.goldenRatio⌋ + 1

end

end A019446.P16333994906610814368

namespace A019446

/-- `floor(C(n+1, n)/ϕ)+1` -/
def P16333994906610814368.Spec : Prop :=
  ∀ n, P16333994906610814368.a n = A019446 (n + 1)

end A019446

/-! ## A019446.P15030487495003809686

`n+2-a(floor(n/ϕ))` with `a(0)=1`
-/

namespace A019446.P15030487495003809686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 2 : ℤ) - a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

end

end A019446.P15030487495003809686

namespace A019446

/-- `n+2-a(floor(n/ϕ))` -/
def P15030487495003809686.Spec : Prop :=
  ∀ n, P15030487495003809686.a n = A019446 (n + 1)

end A019446

/-! ## A019446.P506395751528039582

`floor(ϕ*C(n+1, n))-n`
-/

namespace A019446.P506395751528039582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.choose (n + 1) n : ℝ)⌋ - (n : ℤ)

end

end A019446.P506395751528039582

namespace A019446

/-- `floor(ϕ*C(n+1, n))-n` -/
def P506395751528039582.Spec : Prop :=
  ∀ n, P506395751528039582.a n = A019446 (n + 1)

end A019446

/-! ## A019446.P2296169249215341511

`floor(∑[2*n+ϕ])%(n+2)`
-/

namespace A019446.P2296169249215341511
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n : ℝ) + Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ (n + 2 : ℤ)

end

end A019446.P2296169249215341511

namespace A019446

/-- `floor(∑[2*n+ϕ])%(n+2)` -/
def P2296169249215341511.Spec : Prop :=
  ∀ n, P2296169249215341511.a n = A019446 (n + 1)

end A019446

/-! ## A019446.P15456038107342242303

`floor((n+2)/(ϕ-acot(n+2)))`
-/

namespace A019446.P15456038107342242303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / (Real.goldenRatio - SequenceMachineLib.acot (n + 2 : ℝ))⌋

end

end A019446.P15456038107342242303

namespace A019446

/-- `floor((n+2)/(ϕ-acot(n+2)))` -/
def P15456038107342242303.Spec : Prop :=
  ∀ n, P15456038107342242303.a n = A019446 (n + 1)

end A019446

/-! ## A019446.P12499575093984952781

`2-a(a(n-1)-1)+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019446

/-- `2-a(a(n-1)-1)+n` -/
def P12499575093984952781.Spec : Prop :=
  ∀ n, P12499575093984952781.a n = A019446 (n + 1)

theorem P12499575093984952781.correct : P12499575093984952781.Spec := by
  intro n
  simp only [A019446, Nat.add_sub_cancel]

end A019446

/-! ## A019446.P15214967193049408559

`2-(a(a(n-1)-1)-n)` with `a(0)=1`
-/

namespace A019446.P15214967193049408559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (a (n - 1) - 1).toNat - (n : ℤ))

end

end A019446.P15214967193049408559

namespace A019446

/-- `2-(a(a(n-1)-1)-n)` -/
def P15214967193049408559.Spec : Prop :=
  ∀ n, P15214967193049408559.a n = A019446 (n + 1)

theorem P15214967193049408559.correct : P15214967193049408559.Spec := by
  intro n
  simp only [A019446, Nat.add_sub_cancel, A019446.P15214967193049408559.a, A019446.P12499575093984952781.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A019446

/-! ## A019446.P14350579352489194625

`floor(gcd(n+1, ∑[2*n])/ϕ)+1`
-/

namespace A019446.P14350579352489194625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) / Real.goldenRatio⌋ + 1

end

end A019446.P14350579352489194625

namespace A019446

/-- `floor(gcd(n+1, ∑[2*n])/ϕ)+1` -/
def P14350579352489194625.Spec : Prop :=
  ∀ n, P14350579352489194625.a n = A019446 (n + 1)

end A019446

/-! ## A019446.P16082850522539328316

`floor(and(1, 2*n+1)+(n+1)/ϕ)`
-/

namespace A019446.P16082850522539328316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 (2 * n + 1) : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌋

end

end A019446.P16082850522539328316

namespace A019446

/-- `floor(and(1, 2*n+1)+(n+1)/ϕ)` -/
def P16082850522539328316.Spec : Prop :=
  ∀ n, P16082850522539328316.a n = A019446 (n + 1)

end A019446

/-!
# A019447: Number of monomials in expansion of determinant of an n X n Toeplitz matrix [ t(|i-j|) ] in terms of its entries.

The programs for A019447, there is no canonical definition to state claims against.
-/

/-! ## A019447.P684169585866119264

`A048686(A045723(n))`
-/

namespace A019447.P684169585866119264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048686 (A045723 n).toNat

end

end A019447.P684169585866119264

/-! ## A019447.P7755276607112137329

`A133431(A052806(n))`
-/

namespace A019447.P7755276607112137329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133431 (A052806 n).toNat

end

end A019447.P7755276607112137329

/-! ## A019447.P2788031152279551981

`A133431(A085748(n))`
-/

namespace A019447.P2788031152279551981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133431 (A085748 n).toNat

end

end A019447.P2788031152279551981

/-!
# A019448: Number of monomials in expansion of determinant of an n X n Hankel matrix [ t(i+j) ] in terms of its entries.

The programs for A019448, there is no canonical definition to state claims against.
-/

/-! ## A019448.P4822484896652449144

`A108141(A148428(n))`
-/

namespace A019448.P4822484896652449144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A148428 n).toNat

end

end A019448.P4822484896652449144

/-! ## A019448.P15449742931753876023

`A225645(A304970(n))`
-/

namespace A019448.P15449742931753876023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225645 (A304970 n).toNat

end

end A019448.P15449742931753876023

/-! ## A019448.P10284736580008695449

`A225645(A373353(n))`
-/

namespace A019448.P10284736580008695449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225645 (A373353 n).toNat

end

end A019448.P10284736580008695449

/-!
# A019449: Irreducible quadruple Euler sums of weight 2n+10 (verified for n <= 14).

The programs for A019449, there is no canonical definition to state claims against.
-/

/-! ## A019449.P14176314404656879383

`∑[A053735(A006209(3*n+4))]`
-/

namespace A019449.P14176314404656879383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A006209 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019449.P14176314404656879383

/-! ## A019449.P6583796340668973887

`∑[A000120(A173927(n+1))]-ceil(n/3)`
-/

namespace A019449.P6583796340668973887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A173927 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌈(n : ℚ) / 3⌉

end

end A019449.P6583796340668973887

/-! ## A019449.P15874470816490853734

`∑[A329697(A138067(n+1)+A025192(n))]`
-/

namespace A019449.P15874470816490853734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A138067 (n + 1) + A025192 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019449.P15874470816490853734

/-!
# A019450: Conjectured formula for irreducible 5-fold Euler sums of weight 2n+13.

The programs for A019450, there is no canonical definition to state claims against.
-/

/-! ## A019450.P16253876093605138346

`A100617(A000124(n)*A093694(n))`
-/

namespace A019450.P16253876093605138346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A000124 n * A093694 n).toNat

end

end A019450.P16253876093605138346

/-! ## A019450.P15668532468127411494

`A259361(A000041(n)*A000601(2*n+1))`
-/

namespace A019450.P15668532468127411494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A000041 n * A000601 (2 * n + 1)).toNat

end

end A019450.P15668532468127411494

/-! ## A019450.P1520935168536017654

`A087066(A280962(n))+A004526(n)`
-/

namespace A019450.P1520935168536017654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087066 (A280962 n).toNat + A004526 n

end

end A019450.P1520935168536017654

/-! ## A019450.P9132451847992005906

`A117695(n+1)+A087066(A280962(n))`
-/

namespace A019450.P9132451847992005906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117695 (n + 1) + A087066 (A280962 n).toNat

end

end A019450.P9132451847992005906

/-! ## A019450.P9207451062889166044

`A344742(A237130(3*n+1)+A035300(n))`
-/

namespace A019450.P9207451062889166044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344742 (A237130 (3 * n + 1) + A035300 n).toNat

end

end A019450.P9207451062889166044

/-!
# A019451: Coordination sequence T1 for Zeolite Code CGF.

The programs for A019451, there is no canonical definition to state claims against.
-/

/-! ## A019451.P11417693429752390865

`A335433(A120118(n))+∑[2*n]`
-/

namespace A019451.P11417693429752390865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335433 (A120118 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A019451.P11417693429752390865

/-!
# A019456: Coordination sequence T1 for Zeolite Code CZP.

The programs for A019456, there is no canonical definition to state claims against.
-/

/-! ## A019456.P4046752987659581346

`A301102(n)+A057428(A187695(n))`
-/

namespace A019456.P4046752987659581346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301102 n + A057428 (A187695 n).toNat

end

end A019456.P4046752987659581346

/-! ## A019456.P18053017035876704134

`A301102(n)-A059841(A001710(n))`
-/

namespace A019456.P18053017035876704134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301102 n - A059841 (A001710 n).toNat

end

end A019456.P18053017035876704134

/-! ## A019456.P15200672743992206464

`A301102(n)-A335622(A335632(n))`
-/

namespace A019456.P15200672743992206464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301102 n - A335622 (A335632 n).toNat

end

end A019456.P15200672743992206464

/-! ## A019456.P5839450488454830586

`A354928(A007948(n+1)+A002378(n))`
-/

namespace A019456.P5839450488454830586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354928 (A007948 (n + 1) + A002378 n).toNat

end

end A019456.P5839450488454830586

/-!
# A019459: Conjectured formula for irreducible 6-fold Euler sums of weight 2n+16.

The programs for A019459, there is no canonical definition to state claims against.
-/

/-! ## A019459.P3822844358527985241

`A085089(2*4^n)-∏{p}[n+1, #*val(n+1, #)]`
-/

namespace A019459.P3822844358527985241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (2 * 4 ^ n) - ((∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A019459.P3822844358527985241

/-! ## A019459.P7951245731905627343

`∑[∑[A039636(A071356(n))]]`
-/

namespace A019459.P7951245731905627343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039636 (A071356 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019459.P7951245731905627343

/-! ## A019459.P16746635700790009065

`∑[∑[A300441(A015447(n))]]`
-/

namespace A019459.P16746635700790009065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300441 (A015447 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019459.P16746635700790009065

/-! ## A019459.P2994610391833449189

`∑[∑[A159918(A260464(n))]]`
-/

namespace A019459.P2994610391833449189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159918 (A260464 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019459.P2994610391833449189

/-!
# A019460: Add 1, multiply by 1, add 2, multiply by 2, etc., start with 2.

The programs for A019460, the canonical program `A019460.P18320416044288335793` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019460 has offset 0).

The definition of A019460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019460.P18320416044288335793

`A081123(n)+A019463(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A019460

/-- `A081123(n)+A019463(n)` -/
def P18320416044288335793.Spec : Prop :=
  ∀ n, P18320416044288335793.a n = A019460 n

theorem P18320416044288335793.correct : P18320416044288335793.Spec := by
  intro n
  simp only [A019460]

end A019460

/-! ## A019460.P834834449662094618

`A019462(n)-A081123(n)`
-/

namespace A019460.P834834449662094618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019462 n - A081123 n

end

end A019460.P834834449662094618

namespace A019460

/-- `A019462(n)-A081123(n)` -/
def P834834449662094618.Spec : Prop :=
  ∀ n, P834834449662094618.a n = A019460 n

end A019460

/-! ## A019460.P15042454901835522932

`A019463(n)+A004526(n)!`
-/

namespace A019460.P15042454901835522932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 n + (Nat.factorial (A004526 n).toNat : ℤ)

end

end A019460.P15042454901835522932

namespace A019460

/-- `A019463(n)+A004526(n)!` -/
def P15042454901835522932.Spec : Prop :=
  ∀ n, P15042454901835522932.a n = A019460 n

end A019460

/-! ## A019460.P7590901832093740649

`A019463(n)+A123108(n)!`
-/

namespace A019460.P7590901832093740649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 n + (Nat.factorial (A123108 n).toNat : ℤ)

end

end A019460.P7590901832093740649

namespace A019460

/-- `A019463(n)+A123108(n)!` -/
def P7590901832093740649.Spec : Prop :=
  ∀ n, P7590901832093740649.a n = A019460 n

end A019460

/-! ## A019460.P8989579726267007492

`A019461(n)+2*A081123(n)`
-/

namespace A019460.P8989579726267007492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 n + 2 * A081123 n

end

end A019460.P8989579726267007492

namespace A019460

/-- `A019461(n)+2*A081123(n)` -/
def P8989579726267007492.Spec : Prop :=
  ∀ n, P8989579726267007492.a n = A019460 n

end A019460

/-! ## A019460.P11466356317934363443

`2*A019463(n)-A019461(n)`
-/

namespace A019460.P11466356317934363443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019463 n - A019461 n

end

end A019460.P11466356317934363443

namespace A019460

/-- `2*A019463(n)-A019461(n)` -/
def P11466356317934363443.Spec : Prop :=
  ∀ n, P11466356317934363443.a n = A019460 n

end A019460

/-! ## A019460.P228753916137979531

`(A019463(n)+A019462(n))/2`
-/

namespace A019460.P228753916137979531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019463 n + A019462 n : ℚ) / 2

end

end A019460.P228753916137979531

namespace A019460

/-- `(A019463(n)+A019462(n))/2` -/
def P228753916137979531.Spec : Prop :=
  ∀ n, P228753916137979531.a n = (A019460 n : ℚ)

end A019460

/-! ## A019460.P5420616406511207016

`A214080(A033638(n))+A019463(n)`
-/

namespace A019460.P5420616406511207016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 (A033638 n).toNat + A019463 n

end

end A019460.P5420616406511207016

namespace A019460

/-- `A214080(A033638(n))+A019463(n)` -/
def P5420616406511207016.Spec : Prop :=
  ∀ n, P5420616406511207016.a n = A019460 n

end A019460

/-! ## A019460.P3344663873620853599

`A019461(n)+A019462(n)-A019463(n)`
-/

namespace A019460.P3344663873620853599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 n + (A019462 n - A019463 n)

end

end A019460.P3344663873620853599

namespace A019460

/-- `A019461(n)+A019462(n)-A019463(n)` -/
def P3344663873620853599.Spec : Prop :=
  ∀ n, P3344663873620853599.a n = A019460 n

end A019460

/-! ## A019460.P13759237299693526275

`A019462(n)+A019462(n)-A082448(n)`
-/

namespace A019460.P13759237299693526275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019462 n + (A019462 n - A082448 n)

end

end A019460.P13759237299693526275

namespace A019460

/-- `A019462(n)+A019462(n)-A082448(n)` -/
def P13759237299693526275.Spec : Prop :=
  ∀ n, P13759237299693526275.a n = A019460 n

end A019460

/-! ## A019460.P2160894450255156949

`A019463(n)-(A019462(n)-A082448(n))`
-/

namespace A019460.P2160894450255156949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 n - (A019462 n - A082448 n)

end

end A019460.P2160894450255156949

namespace A019460

/-- `A019463(n)-(A019462(n)-A082448(n))` -/
def P2160894450255156949.Spec : Prop :=
  ∀ n, P2160894450255156949.a n = A019460 n

end A019460

/-!
# A019461: Add 1, multiply by 1, add 2, multiply by 2, etc.; start with 0.

The programs for A019461, the canonical program `A019461.P12105906875557875900` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019461 has offset 0).

The definition of A019461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019461.P2490762310455230906

`A019463(n)-A081123(n)`
-/

namespace A019461.P2490762310455230906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 n - A081123 n

end

end A019461.P2490762310455230906

namespace A019461

/-- `A019463(n)-A081123(n)` -/
def P2490762310455230906.Spec : Prop :=
  ∀ n, P2490762310455230906.a n = A019461 n

end A019461

/-! ## A019461.P13860478132327680860

`2*A019463(n)-A019460(n)`
-/

namespace A019461.P13860478132327680860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019463 n - A019460 n

end

end A019461.P13860478132327680860

namespace A019461

/-- `2*A019463(n)-A019460(n)` -/
def P13860478132327680860.Spec : Prop :=
  ∀ n, P13860478132327680860.a n = A019461 n

end A019461

/-! ## A019461.P14002357185425868544

`A019460(n)-2*A081123(n)`
-/

namespace A019461.P14002357185425868544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 n - 2 * A081123 n

end

end A019461.P14002357185425868544

namespace A019461

/-- `A019460(n)-2*A081123(n)` -/
def P14002357185425868544.Spec : Prop :=
  ∀ n, P14002357185425868544.a n = A019461 n

end A019461

/-! ## A019461.P13476509465386557781

`A019463(n)-A214080(A033638(n))`
-/

namespace A019461.P13476509465386557781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 n - A214080 (A033638 n).toNat

end

end A019461.P13476509465386557781

namespace A019461

/-- `A019463(n)-A214080(A033638(n))` -/
def P13476509465386557781.Spec : Prop :=
  ∀ n, P13476509465386557781.a n = A019461 n

end A019461

/-! ## A019461.P12661102860475296353

`A019460(n)+A019463(n)-A019462(n)`
-/

namespace A019461.P12661102860475296353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 n + (A019463 n - A019462 n)

end

end A019461.P12661102860475296353

namespace A019461

/-- `A019460(n)+A019463(n)-A019462(n)` -/
def P12661102860475296353.Spec : Prop :=
  ∀ n, P12661102860475296353.a n = A019461 n

end A019461

/-! ## A019461.P13009241739057305150

`A019460(n)+A019460(n)-A082448(n)`
-/

namespace A019461.P13009241739057305150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 n + (A019460 n - A082448 n)

end

end A019461.P13009241739057305150

namespace A019461

/-- `A019460(n)+A019460(n)-A082448(n)` -/
def P13009241739057305150.Spec : Prop :=
  ∀ n, P13009241739057305150.a n = A019461 n

end A019461

/-! ## A019461.P10719645677424260443

`A019462(n)+A019463(n)-A082448(n)`
-/

namespace A019461.P10719645677424260443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019462 n + (A019463 n - A082448 n)

end

end A019461.P10719645677424260443

namespace A019461

/-- `A019462(n)+A019463(n)-A082448(n)` -/
def P10719645677424260443.Spec : Prop :=
  ∀ n, P10719645677424260443.a n = A019461 n

end A019461

/-! ## A019461.P12105906875557875900

`A057979(n+1)*A111063(A004526(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A019461

/-- `A057979(n+1)*A111063(A004526(n+1))` -/
def P12105906875557875900.Spec : Prop :=
  ∀ n, P12105906875557875900.a n = A019461 n

theorem P12105906875557875900.correct : P12105906875557875900.Spec := by
  intro n
  simp only [A019461]

end A019461

/-! ## A019461.P16007122222299900825

`A030297(A110654(n))/A152271(n)`
-/

namespace A019461.P16007122222299900825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030297 (A110654 n).toNat : ℚ) / (A152271 n : ℚ)

end

end A019461.P16007122222299900825

namespace A019461

/-- `A030297(A110654(n))/A152271(n)` -/
def P16007122222299900825.Spec : Prop :=
  ∀ n, P16007122222299900825.a n = (A019461 n : ℚ)

end A019461

/-! ## A019461.P15309482680983321045

`A030297(Δ[A033638(n)])/A152271(n)`
-/

namespace A019461.P15309482680983321045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030297 (f1 (n + 1) - f1 n).toNat : ℚ) / (A152271 n : ℚ)

end

end A019461.P15309482680983321045

namespace A019461

/-- `A030297(Δ[A033638(n)])/A152271(n)` -/
def P15309482680983321045.Spec : Prop :=
  ∀ n, P15309482680983321045.a n = (A019461 n : ℚ)

end A019461

/-! ## A019461.P13271746078277894250

`2*A030297(A110654(n))/A133265(n)`
-/

namespace A019461.P13271746078277894250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A030297 (A110654 n).toNat : ℚ) / (A133265 n : ℚ))

end

end A019461.P13271746078277894250

namespace A019461

/-- `2*A030297(A110654(n))/A133265(n)` -/
def P13271746078277894250.Spec : Prop :=
  ∀ n, P13271746078277894250.a n = (A019461 n : ℚ)

end A019461

/-! ## A019461.P6646018526487318672

`A030297(A110654(n))/A004526(A133265(n))`
-/

namespace A019461.P6646018526487318672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030297 (A110654 n).toNat : ℚ) / (A004526 (A133265 n).toNat : ℚ)

end

end A019461.P6646018526487318672

namespace A019461

/-- `A030297(A110654(n))/A004526(A133265(n))` -/
def P6646018526487318672.Spec : Prop :=
  ∀ n, P6646018526487318672.a n = (A019461 n : ℚ)

end A019461

/-!
# A019462: Add 1, multiply by 1, add 2, multiply by 2, etc., start with 3.

The programs for A019462, the canonical program `A019462.P18100823857315622739` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019462 has offset 0).

The definition of A019462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019462.P18100823857315622739

`A081123(n)+A019460(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A019462

/-- `A081123(n)+A019460(n)` -/
def P18100823857315622739.Spec : Prop :=
  ∀ n, P18100823857315622739.a n = A019462 n

theorem P18100823857315622739.correct : P18100823857315622739.Spec := by
  intro n
  simp only [A019462]

end A019462

/-! ## A019462.P11213987117584266452

`A082448(n)-A081123(n)`
-/

namespace A019462.P11213987117584266452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082448 n - A081123 n

end

end A019462.P11213987117584266452

namespace A019462

/-- `A082448(n)-A081123(n)` -/
def P11213987117584266452.Spec : Prop :=
  ∀ n, P11213987117584266452.a n = A019462 n

end A019462

/-! ## A019462.P1333388521947838444

`A019460(n)+A004526(n)!`
-/

namespace A019462.P1333388521947838444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 n + (Nat.factorial (A004526 n).toNat : ℤ)

end

end A019462.P1333388521947838444

namespace A019462

/-- `A019460(n)+A004526(n)!` -/
def P1333388521947838444.Spec : Prop :=
  ∀ n, P1333388521947838444.a n = A019462 n

end A019462

/-! ## A019462.P9889004085589725114

`A019460(n)+A123108(n)!`
-/

namespace A019462.P9889004085589725114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 n + (Nat.factorial (A123108 n).toNat : ℤ)

end

end A019462.P9889004085589725114

namespace A019462

/-- `A019460(n)+A123108(n)!` -/
def P9889004085589725114.Spec : Prop :=
  ∀ n, P9889004085589725114.a n = A019462 n

end A019462

/-! ## A019462.P17040797734016208715

`A019463(n)+2*A081123(n)`
-/

namespace A019462.P17040797734016208715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 n + 2 * A081123 n

end

end A019462.P17040797734016208715

namespace A019462

/-- `A019463(n)+2*A081123(n)` -/
def P17040797734016208715.Spec : Prop :=
  ∀ n, P17040797734016208715.a n = A019462 n

end A019462

/-! ## A019462.P1170203918618205611

`2*A019460(n)-A019463(n)`
-/

namespace A019462.P1170203918618205611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019460 n - A019463 n

end

end A019462.P1170203918618205611

namespace A019462

/-- `2*A019460(n)-A019463(n)` -/
def P1170203918618205611.Spec : Prop :=
  ∀ n, P1170203918618205611.a n = A019462 n

end A019462

/-! ## A019462.P17665399901090542169

`A019460(n)+A000142(floor(n/2))`
-/

namespace A019462.P17665399901090542169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 n + A000142 ⌊(n : ℚ) / 2⌋.toNat

end

end A019462.P17665399901090542169

namespace A019462

/-- `A019460(n)+A000142(floor(n/2))` -/
def P17665399901090542169.Spec : Prop :=
  ∀ n, P17665399901090542169.a n = A019462 n

end A019462

/-! ## A019462.P17514962426074345494

`A019463(n)+2*A214080(A033638(n))`
-/

namespace A019462.P17514962426074345494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 n + 2 * A214080 (A033638 n).toNat

end

end A019462.P17514962426074345494

namespace A019462

/-- `A019463(n)+2*A214080(A033638(n))` -/
def P17514962426074345494.Spec : Prop :=
  ∀ n, P17514962426074345494.a n = A019462 n

end A019462

/-! ## A019462.P4136615572484356673

`A019460(n)+A019463(n)-A019461(n)`
-/

namespace A019462.P4136615572484356673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 n + (A019463 n - A019461 n)

end

end A019462.P4136615572484356673

namespace A019462

/-- `A019460(n)+A019463(n)-A019461(n)` -/
def P4136615572484356673.Spec : Prop :=
  ∀ n, P4136615572484356673.a n = A019462 n

end A019462

/-! ## A019462.P3608064491183720229

`A019461(n)+A082448(n)-A019463(n)`
-/

namespace A019462.P3608064491183720229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 n + (A082448 n - A019463 n)

end

end A019462.P3608064491183720229

namespace A019462

/-- `A019461(n)+A082448(n)-A019463(n)` -/
def P3608064491183720229.Spec : Prop :=
  ∀ n, P3608064491183720229.a n = A019462 n

end A019462

/-! ## A019462.P9544513857133882122

`A019463(n)-(A019460(n)-A082448(n))`
-/

namespace A019462.P9544513857133882122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 n - (A019460 n - A082448 n)

end

end A019462.P9544513857133882122

namespace A019462

/-- `A019463(n)-(A019460(n)-A082448(n))` -/
def P9544513857133882122.Spec : Prop :=
  ∀ n, P9544513857133882122.a n = A019462 n

end A019462

/-!
# A019463: Add 1, multiply by 1, add 2, multiply by 2, etc., start with 1.

The programs for A019463, the canonical program `A019463.P7413512839023386045` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019463 has offset 0).

The definition of A019463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019463.P7413512839023386045

`A081123(n)+A019461(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A019463

/-- `A081123(n)+A019461(n)` -/
def P7413512839023386045.Spec : Prop :=
  ∀ n, P7413512839023386045.a n = A019463 n

theorem P7413512839023386045.correct : P7413512839023386045.Spec := by
  intro n
  simp only [A019463]

end A019463

/-! ## A019463.P5597804392220412734

`A019460(n)-A081123(n)`
-/

namespace A019463.P5597804392220412734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 n - A081123 n

end

end A019463.P5597804392220412734

namespace A019463

/-- `A019460(n)-A081123(n)` -/
def P5597804392220412734.Spec : Prop :=
  ∀ n, P5597804392220412734.a n = A019463 n

end A019463

/-! ## A019463.P1293218714782187311

`A019461(n)+A004526(n)!`
-/

namespace A019463.P1293218714782187311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 n + (Nat.factorial (A004526 n).toNat : ℤ)

end

end A019463.P1293218714782187311

namespace A019463

/-- `A019461(n)+A004526(n)!` -/
def P1293218714782187311.Spec : Prop :=
  ∀ n, P1293218714782187311.a n = A019463 n

end A019463

/-! ## A019463.P11848359681726980193

`A019460(n)-A004526(n)!`
-/

namespace A019463.P11848359681726980193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 n - (Nat.factorial (A004526 n).toNat : ℤ)

end

end A019463.P11848359681726980193

namespace A019463

/-- `A019460(n)-A004526(n)!` -/
def P11848359681726980193.Spec : Prop :=
  ∀ n, P11848359681726980193.a n = A019463 n

end A019463

/-! ## A019463.P17311298846169795829

`A019460(n)-A123108(n)!`
-/

namespace A019463.P17311298846169795829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 n - (Nat.factorial (A123108 n).toNat : ℤ)

end

end A019463.P17311298846169795829

namespace A019463

/-- `A019460(n)-A123108(n)!` -/
def P17311298846169795829.Spec : Prop :=
  ∀ n, P17311298846169795829.a n = A019463 n

end A019463

/-! ## A019463.P11281370810548334943

`2*A019460(n)-A019462(n)`
-/

namespace A019463.P11281370810548334943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019460 n - A019462 n

end

end A019463.P11281370810548334943

namespace A019463

/-- `2*A019460(n)-A019462(n)` -/
def P11281370810548334943.Spec : Prop :=
  ∀ n, P11281370810548334943.a n = A019463 n

end A019463

/-! ## A019463.P230802001437108625

`(A019461(n)+A019460(n))/2`
-/

namespace A019463.P230802001437108625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019461 n + A019460 n : ℚ) / 2

end

end A019463.P230802001437108625

namespace A019463

/-- `(A019461(n)+A019460(n))/2` -/
def P230802001437108625.Spec : Prop :=
  ∀ n, P230802001437108625.a n = (A019463 n : ℚ)

end A019463

/-! ## A019463.P6418074147968335033

`A019462(n)-2*A081123(n)`
-/

namespace A019463.P6418074147968335033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019462 n - 2 * A081123 n

end

end A019463.P6418074147968335033

namespace A019463

/-- `A019462(n)-2*A081123(n)` -/
def P6418074147968335033.Spec : Prop :=
  ∀ n, P6418074147968335033.a n = A019463 n

end A019463

/-! ## A019463.P10071352745270306698

`A019461(n)+A019462(n)-A019460(n)`
-/

namespace A019463.P10071352745270306698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 n + (A019462 n - A019460 n)

end

end A019463.P10071352745270306698

namespace A019463

/-- `A019461(n)+A019462(n)-A019460(n)` -/
def P10071352745270306698.Spec : Prop :=
  ∀ n, P10071352745270306698.a n = A019463 n

end A019463

/-! ## A019463.P10439442094866370564

`A019461(n)+A082448(n)-A019462(n)`
-/

namespace A019463.P10439442094866370564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 n + (A082448 n - A019462 n)

end

end A019463.P10439442094866370564

namespace A019463

/-- `A019461(n)+A082448(n)-A019462(n)` -/
def P10439442094866370564.Spec : Prop :=
  ∀ n, P10439442094866370564.a n = A019463 n

end A019463

/-! ## A019463.P15769621492471359199

`A019460(n)-(A082448(n)-A019462(n))`
-/

namespace A019463.P15769621492471359199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 n - (A082448 n - A019462 n)

end

end A019463.P15769621492471359199

namespace A019463

/-- `A019460(n)-(A082448(n)-A019462(n))` -/
def P15769621492471359199.Spec : Prop :=
  ∀ n, P15769621492471359199.a n = A019463 n

end A019463

/-!
# A019464: Multiply by 1, add 1, multiply by 2, add 2, etc., start with 1.

The programs for A019464, the canonical program `A019464.P11505818576841532554` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019464 has offset 0).

The definition of A019464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019464.P2476227541193942667

`A019465(n)-A065033(n)!`
-/

namespace A019464.P2476227541193942667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019465 n - (Nat.factorial (A065033 n).toNat : ℤ)

end

end A019464.P2476227541193942667

namespace A019464

/-- `A019465(n)-A065033(n)!` -/
def P2476227541193942667.Spec : Prop :=
  ∀ n, P2476227541193942667.a n = A019464 n

end A019464

/-! ## A019464.P7372440183082217637

`A019465(n)-A110654(n)!`
-/

namespace A019464.P7372440183082217637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019465 n - (Nat.factorial (A110654 n).toNat : ℤ)

end

end A019464.P7372440183082217637

namespace A019464

/-- `A019465(n)-A110654(n)!` -/
def P7372440183082217637.Spec : Prop :=
  ∀ n, P7372440183082217637.a n = A019464 n

end A019464

/-! ## A019464.P3628220017077064255

`A019465(n)-∏[A152271(n)]`
-/

namespace A019464.P3628220017077064255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019465 n - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A019464.P3628220017077064255

namespace A019464

/-- `A019465(n)-∏[A152271(n)]` -/
def P3628220017077064255.Spec : Prop :=
  ∀ n, P3628220017077064255.a n = A019464 n

end A019464

/-! ## A019464.P14952377829576311670

`A019465(n)-A081123(n+1)`
-/

namespace A019464.P14952377829576311670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019465 n - A081123 (n + 1)

end

end A019464.P14952377829576311670

namespace A019464

/-- `A019465(n)-A081123(n+1)` -/
def P14952377829576311670.Spec : Prop :=
  ∀ n, P14952377829576311670.a n = A019464 n

end A019464

/-! ## A019464.P7949146585320501630

`2*A019465(n)-A019466(n)`
-/

namespace A019464.P7949146585320501630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019465 n - A019466 n

end

end A019464.P7949146585320501630

namespace A019464

/-- `2*A019465(n)-A019466(n)` -/
def P7949146585320501630.Spec : Prop :=
  ∀ n, P7949146585320501630.a n = A019464 n

end A019464

/-! ## A019464.P5414752879202125878

`(A082458(n)+A019465(n))/2`
-/

namespace A019464.P5414752879202125878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082458 n + A019465 n : ℚ) / 2

end

end A019464.P5414752879202125878

namespace A019464

/-- `(A082458(n)+A019465(n))/2` -/
def P5414752879202125878.Spec : Prop :=
  ∀ n, P5414752879202125878.a n = (A019464 n : ℚ)

end A019464

/-! ## A019464.P9063874914498684889

`(A082459(n)+A019466(n))/2`
-/

namespace A019464.P9063874914498684889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082459 n + A019466 n : ℚ) / 2

end

end A019464.P9063874914498684889

namespace A019464

/-- `(A082459(n)+A019466(n))/2` -/
def P9063874914498684889.Spec : Prop :=
  ∀ n, P9063874914498684889.a n = (A019464 n : ℚ)

end A019464

/-! ## A019464.P11505818576841532554

`2*A082458(n)-A082459(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A019464

/-- `2*A082458(n)-A082459(n)` -/
def P11505818576841532554.Spec : Prop :=
  ∀ n, P11505818576841532554.a n = A019464 n

theorem P11505818576841532554.correct : P11505818576841532554.Spec := by
  intro n
  simp only [A019464]

end A019464

/-! ## A019464.P6755932167167445053

`A019465(n)-A004526(n+1)!`
-/

namespace A019464.P6755932167167445053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019465 n - (Nat.factorial (A004526 (n + 1)).toNat : ℤ)

end

end A019464.P6755932167167445053

namespace A019464

/-- `A019465(n)-A004526(n+1)!` -/
def P6755932167167445053.Spec : Prop :=
  ∀ n, P6755932167167445053.a n = A019464 n

end A019464

/-! ## A019464.P3203999540146713841

`A019465(n)-A123108(n+1)!`
-/

namespace A019464.P3203999540146713841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019465 n - (Nat.factorial (A123108 (n + 1)).toNat : ℤ)

end

end A019464.P3203999540146713841

namespace A019464

/-- `A019465(n)-A123108(n+1)!` -/
def P3203999540146713841.Spec : Prop :=
  ∀ n, P3203999540146713841.a n = A019464 n

end A019464

/-! ## A019464.P5232987958158659883

`A082459(n)+2*∏[A152271(n)]`
-/

namespace A019464.P5232987958158659883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082459 n + 2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A019464.P5232987958158659883

namespace A019464

/-- `A082459(n)+2*∏[A152271(n)]` -/
def P5232987958158659883.Spec : Prop :=
  ∀ n, P5232987958158659883.a n = A019464 n

end A019464

/-! ## A019464.P7389129144170549786

`A019466(n)-(A019465(n)-A082458(n))`
-/

namespace A019464.P7389129144170549786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019466 n - (A019465 n - A082458 n)

end

end A019464.P7389129144170549786

namespace A019464

/-- `A019466(n)-(A019465(n)-A082458(n))` -/
def P7389129144170549786.Spec : Prop :=
  ∀ n, P7389129144170549786.a n = A019464 n

end A019464

/-! ## A019464.P5910453313790803013

`A019460(n+1)+A019465(n)-A019462(n+1)`
-/

namespace A019464.P5910453313790803013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 (n + 1) + (A019465 n - A019462 (n + 1))

end

end A019464.P5910453313790803013

namespace A019464

/-- `A019460(n+1)+A019465(n)-A019462(n+1)` -/
def P5910453313790803013.Spec : Prop :=
  ∀ n, P5910453313790803013.a n = A019464 n

end A019464

/-! ## A019464.P15201934584251951047

`A019461(n+1)+A019465(n)-A019463(n+1)`
-/

namespace A019464.P15201934584251951047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 (n + 1) + (A019465 n - A019463 (n + 1))

end

end A019464.P15201934584251951047

namespace A019464

/-- `A019461(n+1)+A019465(n)-A019463(n+1)` -/
def P15201934584251951047.Spec : Prop :=
  ∀ n, P15201934584251951047.a n = A019464 n

end A019464

/-! ## A019464.P885173487681302095

`A019461(n+1)+A019466(n)-A019460(n+1)`
-/

namespace A019464.P885173487681302095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 (n + 1) + (A019466 n - A019460 (n + 1))

end

end A019464.P885173487681302095

namespace A019464

/-- `A019461(n+1)+A019466(n)-A019460(n+1)` -/
def P885173487681302095.Spec : Prop :=
  ∀ n, P885173487681302095.a n = A019464 n

end A019464

/-! ## A019464.P6888232609727052512

`A019463(n+1)+A019465(n)-A019460(n+1)`
-/

namespace A019464.P6888232609727052512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 (n + 1) + (A019465 n - A019460 (n + 1))

end

end A019464.P6888232609727052512

namespace A019464

/-- `A019463(n+1)+A019465(n)-A019460(n+1)` -/
def P6888232609727052512.Spec : Prop :=
  ∀ n, P6888232609727052512.a n = A019464 n

end A019464

/-! ## A019464.P15249851878744124309

`A019463(n+1)+A019466(n)-A019462(n+1)`
-/

namespace A019464.P15249851878744124309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 (n + 1) + (A019466 n - A019462 (n + 1))

end

end A019464.P15249851878744124309

namespace A019464

/-- `A019463(n+1)+A019466(n)-A019462(n+1)` -/
def P15249851878744124309.Spec : Prop :=
  ∀ n, P15249851878744124309.a n = A019464 n

end A019464

/-! ## A019464.P5361677080658313421

`A019460(n+1)+A019466(n)-A082448(n+1)`
-/

namespace A019464.P5361677080658313421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 (n + 1) + (A019466 n - A082448 (n + 1))

end

end A019464.P5361677080658313421

namespace A019464

/-- `A019460(n+1)+A019466(n)-A082448(n+1)` -/
def P5361677080658313421.Spec : Prop :=
  ∀ n, P5361677080658313421.a n = A019464 n

end A019464

/-! ## A019464.P18429008249188940276

`A019460(n+1)+A082458(n)-A019463(n+1)`
-/

namespace A019464.P18429008249188940276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 (n + 1) + (A082458 n - A019463 (n + 1))

end

end A019464.P18429008249188940276

namespace A019464

/-- `A019460(n+1)+A082458(n)-A019463(n+1)` -/
def P18429008249188940276.Spec : Prop :=
  ∀ n, P18429008249188940276.a n = A019464 n

end A019464

/-! ## A019464.P6309171663534367272

`A019462(n+1)+A019465(n)-A082448(n+1)`
-/

namespace A019464.P6309171663534367272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019462 (n + 1) + (A019465 n - A082448 (n + 1))

end

end A019464.P6309171663534367272

namespace A019464

/-- `A019462(n+1)+A019465(n)-A082448(n+1)` -/
def P6309171663534367272.Spec : Prop :=
  ∀ n, P6309171663534367272.a n = A019464 n

end A019464

/-!
# A019465: Multiply by 1, add 1, multiply by 2, add 2, etc., start with 2.

The programs for A019465, the canonical program `A019465.P1486875116561325780` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019465 has offset 0).

The definition of A019465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019465.P1486875116561325780

`A019464(n)+A065033(n)!`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A019465

/-- `A019464(n)+A065033(n)!` -/
def P1486875116561325780.Spec : Prop :=
  ∀ n, P1486875116561325780.a n = A019465 n

theorem P1486875116561325780.correct : P1486875116561325780.Spec := by
  intro n
  simp only [A019465]

end A019465

/-! ## A019465.P14905868633135425783

`A019464(n)+A110654(n)!`
-/

namespace A019465.P14905868633135425783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n + (Nat.factorial (A110654 n).toNat : ℤ)

end

end A019465.P14905868633135425783

namespace A019465

/-- `A019464(n)+A110654(n)!` -/
def P14905868633135425783.Spec : Prop :=
  ∀ n, P14905868633135425783.a n = A019465 n

end A019465

/-! ## A019465.P17548695786736892169

`A019464(n)+∏[A152271(n)]`
-/

namespace A019465.P17548695786736892169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A019465.P17548695786736892169

namespace A019465

/-- `A019464(n)+∏[A152271(n)]` -/
def P17548695786736892169.Spec : Prop :=
  ∀ n, P17548695786736892169.a n = A019465 n

end A019465

/-! ## A019465.P15689184423733648767

`A081123(n+1)+A019464(n)`
-/

namespace A019465.P15689184423733648767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (n + 1) + A019464 n

end

end A019465.P15689184423733648767

namespace A019465

/-- `A081123(n+1)+A019464(n)` -/
def P15689184423733648767.Spec : Prop :=
  ∀ n, P15689184423733648767.a n = A019465 n

end A019465

/-! ## A019465.P5761223630338298806

`(A019466(n)+A019464(n))/2`
-/

namespace A019465.P5761223630338298806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019466 n + A019464 n : ℚ) / 2

end

end A019465.P5761223630338298806

namespace A019465

/-- `(A019466(n)+A019464(n))/2` -/
def P5761223630338298806.Spec : Prop :=
  ∀ n, P5761223630338298806.a n = (A019465 n : ℚ)

end A019465

/-! ## A019465.P11981812917881093365

`2*A019464(n)-A082458(n)`
-/

namespace A019465.P11981812917881093365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019464 n - A082458 n

end

end A019465.P11981812917881093365

namespace A019465

/-- `2*A019464(n)-A082458(n)` -/
def P11981812917881093365.Spec : Prop :=
  ∀ n, P11981812917881093365.a n = A019465 n

end A019465

/-! ## A019465.P7078144742428378140

`A019464(n)+A004526(n+1)!`
-/

namespace A019465.P7078144742428378140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n + (Nat.factorial (A004526 (n + 1)).toNat : ℤ)

end

end A019465.P7078144742428378140

namespace A019465

/-- `A019464(n)+A004526(n+1)!` -/
def P7078144742428378140.Spec : Prop :=
  ∀ n, P7078144742428378140.a n = A019465 n

end A019465

/-! ## A019465.P12028625781984127975

`A019464(n)+A123108(n+1)!`
-/

namespace A019465.P12028625781984127975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n + (Nat.factorial (A123108 (n + 1)).toNat : ℤ)

end

end A019465.P12028625781984127975

namespace A019465

/-- `A019464(n)+A123108(n+1)!` -/
def P12028625781984127975.Spec : Prop :=
  ∀ n, P12028625781984127975.a n = A019465 n

end A019465

/-! ## A019465.P8241997174173752410

`A019466(n)+A082458(n)-A019464(n)`
-/

namespace A019465.P8241997174173752410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019466 n + (A082458 n - A019464 n)

end

end A019465.P8241997174173752410

namespace A019465

/-- `A019466(n)+A082458(n)-A019464(n)` -/
def P8241997174173752410.Spec : Prop :=
  ∀ n, P8241997174173752410.a n = A019465 n

end A019465

/-! ## A019465.P5898329877574319851

`A019464(n)+A082458(n)-A082459(n)`
-/

namespace A019465.P5898329877574319851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n + (A082458 n - A082459 n)

end

end A019465.P5898329877574319851

namespace A019465

/-- `A019464(n)+A082458(n)-A082459(n)` -/
def P5898329877574319851.Spec : Prop :=
  ∀ n, P5898329877574319851.a n = A019465 n

end A019465

/-! ## A019465.P11090311150530238672

`A019466(n)+A082459(n)-A082458(n)`
-/

namespace A019465.P11090311150530238672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019466 n + (A082459 n - A082458 n)

end

end A019465.P11090311150530238672

namespace A019465

/-- `A019466(n)+A082459(n)-A082458(n)` -/
def P11090311150530238672.Spec : Prop :=
  ∀ n, P11090311150530238672.a n = A019465 n

end A019465

/-! ## A019465.P6815630337106759801

`A019460(n+1)+A019464(n)-A019463(n+1)`
-/

namespace A019465.P6815630337106759801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 (n + 1) + (A019464 n - A019463 (n + 1))

end

end A019465.P6815630337106759801

namespace A019465

/-- `A019460(n+1)+A019464(n)-A019463(n+1)` -/
def P6815630337106759801.Spec : Prop :=
  ∀ n, P6815630337106759801.a n = A019465 n

end A019465

/-! ## A019465.P10511142796236362836

`A019460(n+1)+A019466(n)-A019462(n+1)`
-/

namespace A019465.P10511142796236362836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 (n + 1) + (A019466 n - A019462 (n + 1))

end

end A019465.P10511142796236362836

namespace A019465

/-- `A019460(n+1)+A019466(n)-A019462(n+1)` -/
def P10511142796236362836.Spec : Prop :=
  ∀ n, P10511142796236362836.a n = A019465 n

end A019465

/-! ## A019465.P3370177018332463282

`A019461(n+1)+A019466(n)-A019463(n+1)`
-/

namespace A019465.P3370177018332463282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 (n + 1) + (A019466 n - A019463 (n + 1))

end

end A019465.P3370177018332463282

namespace A019465

/-- `A019461(n+1)+A019466(n)-A019463(n+1)` -/
def P3370177018332463282.Spec : Prop :=
  ∀ n, P3370177018332463282.a n = A019465 n

end A019465

/-! ## A019465.P5338700859247622818

`A019462(n+1)+A019464(n)-A019460(n+1)`
-/

namespace A019465.P5338700859247622818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019462 (n + 1) + (A019464 n - A019460 (n + 1))

end

end A019465.P5338700859247622818

namespace A019465

/-- `A019462(n+1)+A019464(n)-A019460(n+1)` -/
def P5338700859247622818.Spec : Prop :=
  ∀ n, P5338700859247622818.a n = A019465 n

end A019465

/-! ## A019465.P14423615814739340465

`A019463(n+1)+A019464(n)-A019461(n+1)`
-/

namespace A019465.P14423615814739340465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 (n + 1) + (A019464 n - A019461 (n + 1))

end

end A019465.P14423615814739340465

namespace A019465

/-- `A019463(n+1)+A019464(n)-A019461(n+1)` -/
def P14423615814739340465.Spec : Prop :=
  ∀ n, P14423615814739340465.a n = A019465 n

end A019465

/-! ## A019465.P9548031370968084778

`A019463(n+1)+A019466(n)-A019460(n+1)`
-/

namespace A019465.P9548031370968084778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 (n + 1) + (A019466 n - A019460 (n + 1))

end

end A019465.P9548031370968084778

namespace A019465

/-- `A019463(n+1)+A019466(n)-A019460(n+1)` -/
def P9548031370968084778.Spec : Prop :=
  ∀ n, P9548031370968084778.a n = A019465 n

end A019465

/-! ## A019465.P15480886595389551663

`A019460(n+1)+A082458(n)-A019461(n+1)`
-/

namespace A019465.P15480886595389551663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 (n + 1) + (A082458 n - A019461 (n + 1))

end

end A019465.P15480886595389551663

namespace A019465

/-- `A019460(n+1)+A082458(n)-A019461(n+1)` -/
def P15480886595389551663.Spec : Prop :=
  ∀ n, P15480886595389551663.a n = A019465 n

end A019465

/-! ## A019465.P15734318570882571864

`A019462(n+1)+A019466(n)-A082448(n+1)`
-/

namespace A019465.P15734318570882571864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019462 (n + 1) + (A019466 n - A082448 (n + 1))

end

end A019465.P15734318570882571864

namespace A019465

/-- `A019462(n+1)+A019466(n)-A082448(n+1)` -/
def P15734318570882571864.Spec : Prop :=
  ∀ n, P15734318570882571864.a n = A019465 n

end A019465

/-! ## A019465.P14557901626449788968

`A082448(n+1)+A019464(n)-A019462(n+1)`
-/

namespace A019465.P14557901626449788968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082448 (n + 1) + (A019464 n - A019462 (n + 1))

end

end A019465.P14557901626449788968

namespace A019465

/-- `A082448(n+1)+A019464(n)-A019462(n+1)` -/
def P14557901626449788968.Spec : Prop :=
  ∀ n, P14557901626449788968.a n = A019465 n

end A019465

/-!
# A019466: Multiply by 1, add 1, multiply by 2, add 2, etc.; start with 3.

The programs for A019466, the canonical program `A019466.P9925153794483103404` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019466 has offset 0).

The definition of A019466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019466.P9925153794483103404

`A019465(n)+A065033(n)!`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A019466

/-- `A019465(n)+A065033(n)!` -/
def P9925153794483103404.Spec : Prop :=
  ∀ n, P9925153794483103404.a n = A019466 n

theorem P9925153794483103404.correct : P9925153794483103404.Spec := by
  intro n
  simp only [A019466]

end A019466

/-! ## A019466.P9669589567273203325

`A019465(n)+A110654(n)!`
-/

namespace A019466.P9669589567273203325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019465 n + (Nat.factorial (A110654 n).toNat : ℤ)

end

end A019466.P9669589567273203325

namespace A019466

/-- `A019465(n)+A110654(n)!` -/
def P9669589567273203325.Spec : Prop :=
  ∀ n, P9669589567273203325.a n = A019466 n

end A019466

/-! ## A019466.P662733723089670029

`A019465(n)+∏[A152271(n)]`
-/

namespace A019466.P662733723089670029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019465 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A019466.P662733723089670029

namespace A019466

/-- `A019465(n)+∏[A152271(n)]` -/
def P662733723089670029.Spec : Prop :=
  ∀ n, P662733723089670029.a n = A019466 n

end A019466

/-! ## A019466.P906565145931898098

`A081123(n+1)+A019465(n)`
-/

namespace A019466.P906565145931898098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (n + 1) + A019465 n

end

end A019466.P906565145931898098

namespace A019466

/-- `A081123(n+1)+A019465(n)` -/
def P906565145931898098.Spec : Prop :=
  ∀ n, P906565145931898098.a n = A019466 n

end A019466

/-! ## A019466.P13665346069353162784

`2*A019465(n)-A019464(n)`
-/

namespace A019466.P13665346069353162784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019465 n - A019464 n

end

end A019466.P13665346069353162784

namespace A019466

/-- `2*A019465(n)-A019464(n)` -/
def P13665346069353162784.Spec : Prop :=
  ∀ n, P13665346069353162784.a n = A019466 n

end A019466

/-! ## A019466.P10643420505786957813

`2*A019464(n)-A082459(n)`
-/

namespace A019466.P10643420505786957813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019464 n - A082459 n

end

end A019466.P10643420505786957813

namespace A019466

/-- `2*A019464(n)-A082459(n)` -/
def P10643420505786957813.Spec : Prop :=
  ∀ n, P10643420505786957813.a n = A019466 n

end A019466

/-! ## A019466.P5519682133139552727

`A019464(n)+2*∏[A152271(n)]`
-/

namespace A019466.P5519682133139552727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n + 2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A019466.P5519682133139552727

namespace A019466

/-- `A019464(n)+2*∏[A152271(n)]` -/
def P5519682133139552727.Spec : Prop :=
  ∀ n, P5519682133139552727.a n = A019466 n

end A019466

/-! ## A019466.P6810023809746456078

`A052849(A065033(n))+A019464(n)`
-/

namespace A019466.P6810023809746456078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052849 (A065033 n).toNat + A019464 n

end

end A019466.P6810023809746456078

namespace A019466

/-- `A052849(A065033(n))+A019464(n)` -/
def P6810023809746456078.Spec : Prop :=
  ∀ n, P6810023809746456078.a n = A019466 n

end A019466

/-! ## A019466.P13348934685672745326

`A019464(n)-(A082458(n)-A019465(n))`
-/

namespace A019466.P13348934685672745326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n - (A082458 n - A019465 n)

end

end A019466.P13348934685672745326

namespace A019466

/-- `A019464(n)-(A082458(n)-A019465(n))` -/
def P13348934685672745326.Spec : Prop :=
  ∀ n, P13348934685672745326.a n = A019466 n

end A019466

/-! ## A019466.P9706646889266556805

`A019464(n)+A081123(n)*A133265(n)`
-/

namespace A019466.P9706646889266556805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019464 n + A081123 n * A133265 n

end

end A019466.P9706646889266556805

namespace A019466

/-- `A019464(n)+A081123(n)*A133265(n)` -/
def P9706646889266556805.Spec : Prop :=
  ∀ n, P9706646889266556805.a n = A019466 n

end A019466

/-! ## A019466.P9569713213682872522

`A019460(n+1)+A019464(n)-A019461(n+1)`
-/

namespace A019466.P9569713213682872522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 (n + 1) + (A019464 n - A019461 (n + 1))

end

end A019466.P9569713213682872522

namespace A019466

/-- `A019460(n+1)+A019464(n)-A019461(n+1)` -/
def P9569713213682872522.Spec : Prop :=
  ∀ n, P9569713213682872522.a n = A019466 n

end A019466

/-! ## A019466.P11993163123818929691

`A019460(n+1)+A019465(n)-A019463(n+1)`
-/

namespace A019466.P11993163123818929691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019460 (n + 1) + (A019465 n - A019463 (n + 1))

end

end A019466.P11993163123818929691

namespace A019466

/-- `A019460(n+1)+A019465(n)-A019463(n+1)` -/
def P11993163123818929691.Spec : Prop :=
  ∀ n, P11993163123818929691.a n = A019466 n

end A019466

/-! ## A019466.P4123629708177919227

`A019462(n+1)+A019464(n)-A019463(n+1)`
-/

namespace A019466.P4123629708177919227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019462 (n + 1) + (A019464 n - A019463 (n + 1))

end

end A019466.P4123629708177919227

namespace A019466

/-- `A019462(n+1)+A019464(n)-A019463(n+1)` -/
def P4123629708177919227.Spec : Prop :=
  ∀ n, P4123629708177919227.a n = A019466 n

end A019466

/-! ## A019466.P1253548695846211578

`A019462(n+1)+A019465(n)-A019460(n+1)`
-/

namespace A019466.P1253548695846211578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019462 (n + 1) + (A019465 n - A019460 (n + 1))

end

end A019466.P1253548695846211578

namespace A019466

/-- `A019462(n+1)+A019465(n)-A019460(n+1)` -/
def P1253548695846211578.Spec : Prop :=
  ∀ n, P1253548695846211578.a n = A019466 n

end A019466

/-! ## A019466.P7842533258895186113

`A019463(n+1)+A019465(n)-A019461(n+1)`
-/

namespace A019466.P7842533258895186113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019463 (n + 1) + (A019465 n - A019461 (n + 1))

end

end A019466.P7842533258895186113

namespace A019466

/-- `A019463(n+1)+A019465(n)-A019461(n+1)` -/
def P7842533258895186113.Spec : Prop :=
  ∀ n, P7842533258895186113.a n = A019466 n

end A019466

/-! ## A019466.P5750577749744744841

`A082448(n+1)+A019464(n)-A019460(n+1)`
-/

namespace A019466.P5750577749744744841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082448 (n + 1) + (A019464 n - A019460 (n + 1))

end

end A019466.P5750577749744744841

namespace A019466

/-- `A082448(n+1)+A019464(n)-A019460(n+1)` -/
def P5750577749744744841.Spec : Prop :=
  ∀ n, P5750577749744744841.a n = A019466 n

end A019466

/-! ## A019466.P14383162848219080276

`A019462(n+1)+A082458(n)-A019461(n+1)`
-/

namespace A019466.P14383162848219080276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019462 (n + 1) + (A082458 n - A019461 (n + 1))

end

end A019466.P14383162848219080276

namespace A019466

/-- `A019462(n+1)+A082458(n)-A019461(n+1)` -/
def P14383162848219080276.Spec : Prop :=
  ∀ n, P14383162848219080276.a n = A019466 n

end A019466

/-! ## A019466.P16501391886321909851

`A082448(n+1)+A019465(n)-A019462(n+1)`
-/

namespace A019466.P16501391886321909851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082448 (n + 1) + (A019465 n - A019462 (n + 1))

end

end A019466.P16501391886321909851

namespace A019466

/-- `A082448(n+1)+A019465(n)-A019462(n+1)` -/
def P16501391886321909851.Spec : Prop :=
  ∀ n, P16501391886321909851.a n = A019466 n

end A019466

/-! ## A019466.P16417305848205138143

`A082448(n+1)+A082458(n)-A019463(n+1)`
-/

namespace A019466.P16417305848205138143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082448 (n + 1) + (A082458 n - A019463 (n + 1))

end

end A019466.P16417305848205138143

namespace A019466

/-- `A082448(n+1)+A082458(n)-A019463(n+1)` -/
def P16417305848205138143.Spec : Prop :=
  ∀ n, P16417305848205138143.a n = A019466 n

end A019466

/-!
# A019467: (n-2)nd Catalan number is congruent to n/3 mod n.

The programs for A019467, the canonical program `A019467.P17540180294228994165` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019467 has offset 1).

The definition of A019467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019467.P17540180294228994165

`A008486(eq[1, A039969(n)]+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A019467

/-- `A008486(eq[1, A039969(n)]+1)` -/
def P17540180294228994165.Spec : Prop :=
  ∀ n, P17540180294228994165.a n = A019467 (n + 1)

theorem P17540180294228994165.correct : P17540180294228994165.Spec := by
  intro n
  simp only [A019467, Nat.add_sub_cancel]

end A019467

/-! ## A019467.P16700395892814258126

`eq[n/3, A067770(A289207(n))]`
-/

namespace A019467.P16700395892814258126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067770 (A289207 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A019467.P16700395892814258126

namespace A019467

/-- `eq[n/3, A067770(A289207(n))]` -/
def P16700395892814258126.Spec : Prop :=
  ∀ n, (P16700395892814258126.a n : ℤ) = A019467 (n + 1)

end A019467

/-! ## A019467.P13894614991270768506

`eq[A067770(A289207(n))+1, A008620(n)]`
-/

namespace A019467.P13894614991270768506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067770 (A289207 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A019467.P13894614991270768506

namespace A019467

/-- `eq[A067770(A289207(n))+1, A008620(n)]` -/
def P13894614991270768506.Spec : Prop :=
  ∀ n, (P13894614991270768506.a n : ℤ) = A019467 (n + 1)

end A019467

/-!
# A019468: (n-2)-th Catalan number is congruent to 2n/3 mod n.

The programs for A019468, the canonical program `A019468.P325024408186836971` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019468 has offset 1).

The definition of A019468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 769 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019468.P325024408186836971

`3*(A111020(n+1)+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A019468

/-- `3*(A111020(n+1)+1)` -/
def P325024408186836971.Spec : Prop :=
  ∀ n, P325024408186836971.a n = A019468 (n + 1)

theorem P325024408186836971.correct : P325024408186836971.Spec := by
  intro n
  simp only [A019468, Nat.add_sub_cancel]

end A019468

/-! ## A019468.P18180666844099104298

`A008486(A111020(n+1)+1)`
-/

namespace A019468.P18180666844099104298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A111020 (n + 1) + 1).toNat

end

end A019468.P18180666844099104298

namespace A019468

/-- `A008486(A111020(n+1)+1)` -/
def P18180666844099104298.Spec : Prop :=
  ∀ n, P18180666844099104298.a n = A019468 (n + 1)

end A019468

/-! ## A019468.P6232775088496678566

`A008585(A111020(n+1)+1)`
-/

namespace A019468.P6232775088496678566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A111020 (n + 1) + 1).toNat

end

end A019468.P6232775088496678566

namespace A019468

/-- `A008585(A111020(n+1)+1)` -/
def P6232775088496678566.Spec : Prop :=
  ∀ n, P6232775088496678566.a n = A019468 (n + 1)

end A019468

/-! ## A019468.P12813350898184587261

`3*eq[2, A006996(A002264(n))]`
-/

namespace A019468.P12813350898184587261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006996 (A002264 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A019468.P12813350898184587261

namespace A019468

/-- `3*eq[2, A006996(A002264(n))]` -/
def P12813350898184587261.Spec : Prop :=
  ∀ n, (P12813350898184587261.a n : ℤ) = A019468 (n + 1)

end A019468

/-! ## A019468.P12894583256265730936

`A008458(A111020(n+1)+1)/2`
-/

namespace A019468.P12894583256265730936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 (A111020 (n + 1) + 1).toNat : ℚ) / 2

end

end A019468.P12894583256265730936

namespace A019468

/-- `A008458(A111020(n+1)+1)/2` -/
def P12894583256265730936.Spec : Prop :=
  ∀ n, P12894583256265730936.a n = (A019468 (n + 1) : ℚ)

end A019468

/-!
# A019469: Numbers k such that k does not divide binomial(2*k-4, k-2).

The programs for A019469, there is no canonical definition to state claims against.
-/

/-! ## A019469.P17106067544443222885

`A094453(n)+a(A000038(n))` with `a(0)=2`
-/

namespace A019469.P17106067544443222885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A094453 n + a (A000038 n).toNat

end

end A019469.P17106067544443222885

/-! ## A019469.P9868511323770283988

`A094453(n)+a(A210030(n)%2)` with `a(0)=2`
-/

namespace A019469.P9868511323770283988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A094453 n + a (Int.tmod (A210030 n) 2).toNat

end

end A019469.P9868511323770283988

/-! ## A019469.P16813454268833866215

`A094453(A028310(n))+ceil(atan(n+1))`
-/

namespace A019469.P16813454268833866215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094453 (A028310 n).toNat + ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A019469.P16813454268833866215

/-! ## A019469.P15323390368197189657

`A094453(A028310(n))+A000005(A008578(n+1))`
-/

namespace A019469.P15323390368197189657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094453 (A028310 n).toNat + A000005 (A008578 (n + 1)).toNat

end

end A019469.P15323390368197189657

/-! ## A019469.P11105565525529738909

`lt[0, A067770(n)]+2`
-/

namespace A019469.P11105565525529738909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067770 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A019469.P11105565525529738909

/-! ## A019469.P6963749949833052999

`eq[char[A019470(n+1)], A000007(n)]`
-/

namespace A019469.P6963749949833052999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019470 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A019469.P6963749949833052999

/-! ## A019469.P2385803437007901427

`eq[char[A019470(n+1)], A000038(n)]`
-/

namespace A019469.P2385803437007901427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019470 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A019469.P2385803437007901427

/-! ## A019469.P16116804649575242412

`record[(n+2)%A075565(A067770(n)+1)]`
-/

namespace A019469.P16116804649575242412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A075565 (A067770 n + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019469.P16116804649575242412

/-! ## A019469.P2534883765112199074

`A094453(A028310(n))+A000005(A219674(n+1))`
-/

namespace A019469.P2534883765112199074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094453 (A028310 n).toNat + A000005 (A219674 (n + 1)).toNat

end

end A019469.P2534883765112199074

/-!
# A019470: Numbers k that divide binomial(2*k-4, k-2).

The programs for A019470, the canonical program `A019470.P13912836705486436891` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019470 has offset 1).

The definition of A019470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9606 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019470.P346866998197466798

`comp[A019469(n+1)-1]+1`
-/

namespace A019470.P346866998197466798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019469 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A019470.P346866998197466798

namespace A019470

/-- `comp[A019469(n+1)-1]+1` -/
def P346866998197466798.Spec : Prop :=
  ∀ n, (P346866998197466798.a n : ℤ) = A019470 (n + 1)

end A019470

/-! ## A019470.P13912836705486436891

`record[n+3-A065344(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A019470

/-- `record[n+3-A065344(n+1)]` -/
def P13912836705486436891.Spec : Prop :=
  ∀ n, P13912836705486436891.a n = A019470 (n + 1)

theorem P13912836705486436891.correct : P13912836705486436891.Spec := by
  intro n
  simp only [A019470, Nat.add_sub_cancel]

end A019470

/-! ## A019470.P10880921296037736519

`record[gcd(n+2, A004273(A067770(n)))]`
-/

namespace A019470.P10880921296037736519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A004273 (A067770 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019470.P10880921296037736519

namespace A019470

/-- `record[gcd(n+2, A004273(A067770(n)))]` -/
def P10880921296037736519.Spec : Prop :=
  ∀ n, (P10880921296037736519.a n : ℤ) = A019470 (n + 1)

end A019470

/-! ## A019470.P2508716041162963882

`eq[A000007(n), A067770(n)]+2-A028310(n)+n`
-/

namespace A019470.P2508716041162963882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) + (2 - A028310 n + (n : ℤ))

end

end A019470.P2508716041162963882

namespace A019470

/-- `eq[A000007(n), A067770(n)]+2-A028310(n)+n` -/
def P2508716041162963882.Spec : Prop :=
  ∀ n, P2508716041162963882.a n = A019470 (n + 1)

end A019470

/-! ## A019470.P12468193442130908713

`eq[A048298(n), A067770(A289207(n))]`
-/

namespace A019470.P12468193442130908713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067770 (A289207 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A019470.P12468193442130908713

namespace A019470

/-- `eq[A048298(n), A067770(A289207(n))]` -/
def P12468193442130908713.Spec : Prop :=
  ∀ n, (P12468193442130908713.a n : ℤ) = A019470 (n + 1)

end A019470

/-! ## A019470.P15116027947049535059

`record[C(n+1, A333241(A067770(n)+1))+1]`
-/

namespace A019470.P15116027947049535059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A333241 (A067770 n + 1).toNat).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019470.P15116027947049535059

namespace A019470

/-- `record[C(n+1, A333241(A067770(n)+1))+1]` -/
def P15116027947049535059.Spec : Prop :=
  ∀ n, (P15116027947049535059.a n : ℤ) = A019470 (n + 1)

end A019470

/-! ## A019470.P8727511133842078038

`record[gcd(A120588(n), A131209(n))]`
-/

namespace A019470.P8727511133842078038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120588 n) (A131209 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019470.P8727511133842078038

namespace A019470

/-- `record[gcd(A120588(n), A131209(n))]` -/
def P8727511133842078038.Spec : Prop :=
  ∀ n, (P8727511133842078038.a n : ℤ) = A019470 (n + 1)

end A019470

/-! ## A019470.P11843578055512679155

`record[gcd(A000108(n), A293754(n+1))]`
-/

namespace A019470.P11843578055512679155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000108 n) (A293754 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019470.P11843578055512679155

namespace A019470

/-- `record[gcd(A000108(n), A293754(n+1))]` -/
def P11843578055512679155.Spec : Prop :=
  ∀ n, (P11843578055512679155.a n : ℤ) = A019470 (n + 1)

end A019470

/-!
# A019472: Weak preference orderings of n alternatives, i.e., orderings that have indifference between at least two alternatives.

The programs for A019472, there is no canonical definition to state claims against.
-/

/-! ## A019472.P6177355047655397197

`A000670(n)-n!`
-/

namespace A019472.P6177355047655397197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - (Nat.factorial n : ℤ)

end

end A019472.P6177355047655397197

/-! ## A019472.P7798668777479248919

`A122101(∑[n])-n!`
-/

namespace A019472.P7798668777479248919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) - (Nat.factorial n : ℤ)

end

end A019472.P7798668777479248919

/-! ## A019472.P8498462664645217716

`A154921(∑[n])-n!`
-/

namespace A019472.P8498462664645217716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (∑ j ∈ Finset.range (n + 1), f1 j) - (Nat.factorial n : ℤ)

end

end A019472.P8498462664645217716

/-! ## A019472.P18282012068462109686

`A052875(n)+1-n!`
-/

namespace A019472.P18282012068462109686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 n + 1 - (Nat.factorial n : ℤ)

end

end A019472.P18282012068462109686

/-! ## A019472.P4348275686868048484

`A076726(n)/2-n!`
-/

namespace A019472.P4348275686868048484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076726 n : ℚ) / 2 - (Nat.factorial n : ℚ)

end

end A019472.P4348275686868048484

/-! ## A019472.P8755944098727154018

`ceil(A000629(n)/2)-n!`
-/

namespace A019472.P8755944098727154018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000629 n : ℚ) / 2⌉ - (Nat.factorial n : ℤ)

end

end A019472.P8755944098727154018

/-! ## A019472.P12486771198290482339

`ceil(A007047(n)/4)-n!`
-/

namespace A019472.P12486771198290482339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007047 n : ℚ) / 4⌉ - (Nat.factorial n : ℤ)

end

end A019472.P12486771198290482339

/-! ## A019472.P3276721251849379235

`A053525(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A019472.P3276721251849379235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A053525 n + (n : ℤ) * a (n - 1)

end

end A019472.P3276721251849379235

/-! ## A019472.P14472545486396422381

`A000670(n)-A000142(n)`
-/

namespace A019472.P14472545486396422381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A000142 n

end

end A019472.P14472545486396422381

/-!
# A019475: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(2,10).

The programs for A019475, the canonical program `A019475.P17355648572048684120` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019475 has offset 0).

The definition of A019475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019475.P17355648572048684120

`1+floor(a(n-1)²/a(n-2))` with `a(0)=2, a(1)=10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019475

/-- `1+floor(a(n-1)²/a(n-2))` -/
def P17355648572048684120.Spec : Prop :=
  ∀ n, P17355648572048684120.a n = A019475 n

theorem P17355648572048684120.correct : P17355648572048684120.Spec := by
  intro n
  simp only [A019475]

end A019475

/-! ## A019475.P1784549902065513069

`ceil(a(n-1)/a(n-2)*a(n-1))` with `a(0)=2, a(1)=10, a(2)=51`
-/

namespace A019475.P1784549902065513069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 10, 51] fun n a =>
  ⌈(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌉

end

end A019475.P1784549902065513069

namespace A019475

/-- `ceil(a(n-1)/a(n-2)*a(n-1))` -/
def P1784549902065513069.Spec : Prop :=
  ∀ n, P1784549902065513069.a n = A019475 n

end A019475

/-! ## A019475.P11205892792356986796

`A184964(A185344(n))+A019476(n)`
-/

namespace A019475.P11205892792356986796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184964 (A185344 n).toNat + A019476 n

end

end A019475.P11205892792356986796

namespace A019475

/-- `A184964(A185344(n))+A019476(n)` -/
def P11205892792356986796.Spec : Prop :=
  ∀ n, P11205892792356986796.a n = A019475 n

end A019475

/-! ## A019475.P7301504922351885191

`A019476(A062003(n))`
-/

namespace A019475.P7301504922351885191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019476 (A062003 n).toNat

end

end A019475.P7301504922351885191

namespace A019475

/-- `A019476(A062003(n))` -/
def P7301504922351885191.Spec : Prop :=
  ∀ n, P7301504922351885191.a n = A019475 n

end A019475

/-! ## A019475.P112628217108400645

`A019476(n)%A300398(n+1)`
-/

namespace A019475.P112628217108400645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019476 n) (A300398 (n + 1))

end

end A019475.P112628217108400645

namespace A019475

/-- `A019476(n)%A300398(n+1)` -/
def P112628217108400645.Spec : Prop :=
  ∀ n, P112628217108400645.a n = A019475 n

end A019475

/-!
# A019476: a(n) = 5*a(n-1) + a(n-2) - 2*a(n-3).

The programs for A019476, the canonical program `A019476.P16597330554726626127` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019476 has offset 0).

The definition of A019476 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+a(n-2)-2*a(n-3)` (program `A019476.P16597330554726626127`, by `A019476.P16597330554726626127.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019476.P16597330554726626127

`5*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=2, a(1)=10, a(2)=51`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019476

/-- `5*a(n-1)+a(n-2)-2*a(n-3)` -/
def P16597330554726626127.Spec : Prop :=
  ∀ n, P16597330554726626127.a n = A019476 n

theorem P16597330554726626127.correct : P16597330554726626127.Spec := by
  intro n
  simp only [A019476]

end A019476

/-! ## A019476.P7738680657163447846

`A019475(n)-A184964(A185344(n))`
-/

namespace A019476.P7738680657163447846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019475 n - A184964 (A185344 n).toNat

end

end A019476.P7738680657163447846

namespace A019476

/-- `A019475(n)-A184964(A185344(n))` -/
def P7738680657163447846.Spec : Prop :=
  ∀ n, P7738680657163447846.a n = A019476 n

end A019476

/-!
# A019477: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(3,15) (agrees with A019478 only for n <= 23).

The programs for A019477, the canonical program `A019477.P3621584223660582927` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019477 has offset 0).

The definition of A019477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019477.P3621584223660582927

`floor(a(n-1)²/a(n-2))+1` with `a(0)=3, a(1)=15`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019477

/-- `floor(a(n-1)²/a(n-2))+1` -/
def P3621584223660582927.Spec : Prop :=
  ∀ n, P3621584223660582927.a n = A019477 n

theorem P3621584223660582927.correct : P3621584223660582927.Spec := by
  intro n
  simp only [A019477]

end A019477

/-!
# A019478: 

The programs for A019478, there is no canonical definition to state claims against.
-/

/-! ## A019478.P15210333503450286110

`5*a(n-1)+a(n-2)-3*a(n-3)` with `a(0)=3, a(1)=15, a(2)=76`
-/

namespace A019478.P15210333503450286110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 15, 76] fun n a =>
  5 * a (n - 1) + (a (n - 2) - 3 * a (n - 3))

end

end A019478.P15210333503450286110

/-!
# A019479: Define the sequence S(a_0,a_1) by a_{n+2} is the least integer such that a_{n+2}/a_{n+1}>a_{n+1}/a_n for n >= 0. This is S(4,8).

The programs for A019479, the canonical program `A019479.P2755745668724281318` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019479 has offset 0).

The definition of A019479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019479.P2755745668724281318

`3*a(n-1)-2*a(n-2)+a(n-3)-a(n-4)` with `a(0)=4, a(1)=8, a(2)=17, a(3)=37`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019479

/-- `3*a(n-1)-2*a(n-2)+a(n-3)-a(n-4)` -/
def P2755745668724281318.Spec : Prop :=
  ∀ n, P2755745668724281318.a n = A019479 n

theorem P2755745668724281318.correct : P2755745668724281318.Spec := by
  intro n
  simp only [A019479]

end A019479

/-! ## A019479.P5800442500823653799

`A019489(n)+1`
-/

namespace A019479.P5800442500823653799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019489 n + 1

end

end A019479.P5800442500823653799

namespace A019479

/-- `A019489(n)+1` -/
def P5800442500823653799.Spec : Prop :=
  ∀ n, P5800442500823653799.a n = A019479 n

end A019479

/-! ## A019479.P3166811733447090234

`A077852(n+1)+1`
-/

namespace A019479.P3166811733447090234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077852 (n + 1) + 1

end

end A019479.P3166811733447090234

namespace A019479

/-- `A077852(n+1)+1` -/
def P3166811733447090234.Spec : Prop :=
  ∀ n, P3166811733447090234.a n = A019479 n

end A019479

/-! ## A019479.P9471120974553850180

`∑[A008998(n+1)]+2`
-/

namespace A019479.P9471120974553850180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A019479.P9471120974553850180

namespace A019479

/-- `∑[A008998(n+1)]+2` -/
def P9471120974553850180.Spec : Prop :=
  ∀ n, P9471120974553850180.a n = A019479 n

end A019479

/-! ## A019479.P4644950229204919176

`A020708(n-1)+a(n-1)` with `a(0)=4`
-/

namespace A019479.P4644950229204919176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A020708 (n - 1) + a (n - 1)

end

end A019479.P4644950229204919176

namespace A019479

/-- `A020708(n-1)+a(n-1)` -/
def P4644950229204919176.Spec : Prop :=
  ∀ n, P4644950229204919176.a n = A019479 n

end A019479

/-! ## A019479.P5678229901030658906

`∑[A193641(n+1)+A052980(n)]+2`
-/

namespace A019479.P5678229901030658906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 1) + A052980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A019479.P5678229901030658906

namespace A019479

/-- `∑[A193641(n+1)+A052980(n)]+2` -/
def P5678229901030658906.Spec : Prop :=
  ∀ n, P5678229901030658906.a n = A019479 n

end A019479

/-! ## A019479.P16754793261313355546

`ceil(A193641(n+3)/2)`
-/

namespace A019479.P16754793261313355546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A193641 (n + 3) : ℚ) / 2⌉

end

end A019479.P16754793261313355546

namespace A019479

/-- `ceil(A193641(n+3)/2)` -/
def P16754793261313355546.Spec : Prop :=
  ∀ n, P16754793261313355546.a n = A019479 n

end A019479

/-! ## A019479.P6079105364552143030

`A100691(n+1)/2+2`
-/

namespace A019479.P6079105364552143030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100691 (n + 1) : ℚ) / 2 + 2

end

end A019479.P6079105364552143030

namespace A019479

/-- `A100691(n+1)/2+2` -/
def P6079105364552143030.Spec : Prop :=
  ∀ n, P6079105364552143030.a n = (A019479 n : ℚ)

end A019479

/-! ## A019479.P8874774708152600456

`A232230(n+3)/2+1`
-/

namespace A019479.P8874774708152600456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232230 (n + 3) : ℚ) / 2 + 1

end

end A019479.P8874774708152600456

namespace A019479

/-- `A232230(n+3)/2+1` -/
def P8874774708152600456.Spec : Prop :=
  ∀ n, P8874774708152600456.a n = (A019479 n : ℚ)

end A019479

/-! ## A019479.P2998415438091264375

`1-Δ[a(n-1)-A077852(n)]` with `a(0)=1`
-/

namespace A019479.P2998415438091264375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A077852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A019479.P2998415438091264375

namespace A019479

/-- `1-Δ[a(n-1)-A077852(n)]` -/
def P2998415438091264375.Spec : Prop :=
  ∀ n, P2998415438091264375.a n = A019479 n

end A019479

/-! ## A019479.P7820005237168234218

`A020708(n+2)-A022040(n)`
-/

namespace A019479.P7820005237168234218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020708 (n + 2) - A022040 n

end

end A019479.P7820005237168234218

namespace A019479

/-- `A020708(n+2)-A022040(n)` -/
def P7820005237168234218.Spec : Prop :=
  ∀ n, P7820005237168234218.a n = A019479 n

end A019479

/-! ## A019479.P9444385601848169865

`Δ[A022040(n)]-A022040(n)`
-/

namespace A019479.P9444385601848169865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A022040 n

end

end A019479.P9444385601848169865

namespace A019479

/-- `Δ[A022040(n)]-A022040(n)` -/
def P9444385601848169865.Spec : Prop :=
  ∀ n, P9444385601848169865.a n = A019479 n

end A019479

/-! ## A019479.P11702440939834071686

`A022040(n+1)-2*A022040(n)`
-/

namespace A019479.P11702440939834071686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022040 (n + 1) - 2 * A022040 n

end

end A019479.P11702440939834071686

namespace A019479

/-- `A022040(n+1)-2*A022040(n)` -/
def P11702440939834071686.Spec : Prop :=
  ∀ n, P11702440939834071686.a n = A019479 n

end A019479

/-! ## A019479.P13141335631021690912

`floor(a(n-1)²/a(n-2))+1` with `a(0)=4, a(1)=8`
-/

namespace A019479.P13141335631021690912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 8] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋ + 1

end

end A019479.P13141335631021690912

namespace A019479

/-- `floor(a(n-1)²/a(n-2))+1` -/
def P13141335631021690912.Spec : Prop :=
  ∀ n, P13141335631021690912.a n = A019479 n

end A019479

/-!
# A019480: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(4,12) (agrees with A019481 for n <= 19 only).

The programs for A019480, the canonical program `A019480.P4133787470310948398` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019480 has offset 0).

The definition of A019480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A019480.P4133787470310948398

`floor(a(n-1)/a(n-2)*a(n-1))+1` with `a(0)=4, a(1)=12`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019480

/-- `floor(a(n-1)/a(n-2)*a(n-1))+1` -/
def P4133787470310948398.Spec : Prop :=
  ∀ n, P4133787470310948398.a n = A019480 n

theorem P4133787470310948398.correct : P4133787470310948398.Spec := by
  intro n
  simp only [A019480]

end A019480

/-! ## A019480.P15071364428270307800

`floor(a(n-1)²/a(n-2))+1` with `a(0)=4, a(1)=12`
-/

namespace A019480.P15071364428270307800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 12] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋ + 1

end

end A019480.P15071364428270307800

namespace A019480

/-- `floor(a(n-1)²/a(n-2))+1` -/
def P15071364428270307800.Spec : Prop :=
  ∀ n, P15071364428270307800.a n = A019480 n

theorem P15071364428270307800.correct : P15071364428270307800.Spec := by
  intro n
  simp only [A019480, Nat.add_sub_cancel, A019480.P15071364428270307800.a, A019480.P4133787470310948398.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A019480

/-! ## A019480.P17911013797237797075

`A198318(A317389(n))+A019481(n)`
-/

namespace A019480.P17911013797237797075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198318 (A317389 n).toNat + A019481 n

end

end A019480.P17911013797237797075

namespace A019480

/-- `A198318(A317389(n))+A019481(n)` -/
def P17911013797237797075.Spec : Prop :=
  ∀ n, P17911013797237797075.a n = A019480 n

end A019480

/-! ## A019480.P8553834853342332867

`A019481(n)+A016346(A140110(n+1))`
-/

namespace A019480.P8553834853342332867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019481 n + A016346 (A140110 (n + 1)).toNat

end

end A019480.P8553834853342332867

namespace A019480

/-- `A019481(n)+A016346(A140110(n+1))` -/
def P8553834853342332867.Spec : Prop :=
  ∀ n, P8553834853342332867.a n = A019480 n

end A019480

/-! ## A019480.P9415023616356413068

`A206499(A109611(n+1))+A019481(n)`
-/

namespace A019480.P9415023616356413068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206499 (A109611 (n + 1)).toNat + A019481 n

end

end A019480.P9415023616356413068

namespace A019480

/-- `A206499(A109611(n+1))+A019481(n)` -/
def P9415023616356413068.Spec : Prop :=
  ∀ n, P9415023616356413068.a n = A019480 n

end A019480

/-!
# A019481: a(n) = 3*a(n-1) + a(n-2) - 2*a(n-3) (agrees with A019480 for n <= 19 only).

The programs for A019481, the canonical program `A019481.P15282223044704217942` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019481 has offset 0).

The definition of A019481 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+a(n-2)-2*a(n-3)` (program `A019481.P15282223044704217942`, by `A019481.P15282223044704217942.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019481.P15282223044704217942

`3*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=4, a(1)=12, a(2)=37`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019481

/-- `3*a(n-1)+a(n-2)-2*a(n-3)` -/
def P15282223044704217942.Spec : Prop :=
  ∀ n, P15282223044704217942.a n = A019481 n

theorem P15282223044704217942.correct : P15282223044704217942.Spec := by
  intro n
  simp only [A019481]

end A019481

/-! ## A019481.P7031847485880487318

`A052939(n+1)+A052939(n)`
-/

namespace A019481.P7031847485880487318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052939 (n + 1) + A052939 n

end

end A019481.P7031847485880487318

namespace A019481

/-- `A052939(n+1)+A052939(n)` -/
def P7031847485880487318.Spec : Prop :=
  ∀ n, P7031847485880487318.a n = A019481 n

end A019481

/-! ## A019481.P10428126454853830952

`A019480(n)-A198318(A317389(n))`
-/

namespace A019481.P10428126454853830952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019480 n - A198318 (A317389 n).toNat

end

end A019481.P10428126454853830952

namespace A019481

/-- `A019480(n)-A198318(A317389(n))` -/
def P10428126454853830952.Spec : Prop :=
  ∀ n, P10428126454853830952.a n = A019481 n

end A019481

/-! ## A019481.P1642643981951995345

`A019480(n)-A016346(A140110(n+1))`
-/

namespace A019481.P1642643981951995345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019480 n - A016346 (A140110 (n + 1)).toNat

end

end A019481.P1642643981951995345

namespace A019481

/-- `A019480(n)-A016346(A140110(n+1))` -/
def P1642643981951995345.Spec : Prop :=
  ∀ n, P1642643981951995345.a n = A019481 n

end A019481

/-!
# A019482: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(4,28).

The programs for A019482, the canonical program `A019482.P4818091064306123814` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019482 has offset 0).

The definition of A019482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019482.P4818091064306123814

`floor(a(n-1)²/a(n-2))+1` with `a(0)=4, a(1)=28`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019482

/-- `floor(a(n-1)²/a(n-2))+1` -/
def P4818091064306123814.Spec : Prop :=
  ∀ n, P4818091064306123814.a n = A019482 n

theorem P4818091064306123814.correct : P4818091064306123814.Spec := by
  intro n
  simp only [A019482]

end A019482

/-! ## A019482.P4844639420886392141

`floor(a(n-1)/a(n-2)*a(n-1))+1` with `a(0)=4, a(1)=28`
-/

namespace A019482.P4844639420886392141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 28] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋ + 1

end

end A019482.P4844639420886392141

namespace A019482

/-- `floor(a(n-1)/a(n-2)*a(n-1))+1` -/
def P4844639420886392141.Spec : Prop :=
  ∀ n, P4844639420886392141.a n = A019482 n

theorem P4844639420886392141.correct : P4844639420886392141.Spec := by
  intro n
  simp only [A019482, Nat.add_sub_cancel, A019482.P4844639420886392141.a, A019482.P4818091064306123814.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A019482

/-!
# A019483: Expansion of 1/((1-4x)(1-6x)(1-10x)).

The programs for A019483, the canonical program `A019483.P4190400103270749138` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019483 has offset 0).

The definition of A019483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019483.P4190400103270749138

`16*a(n-1)-60*a(n-2)+4^n` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019483

/-- `16*a(n-1)-60*a(n-2)+4^n` -/
def P4190400103270749138.Spec : Prop :=
  ∀ n, P4190400103270749138.a n = A019483 n

theorem P4190400103270749138.correct : P4190400103270749138.Spec := by
  intro n
  simp only [A019483]

end A019483

/-! ## A019483.P16407296418554723241

`2^n*A016273(n)`
-/

namespace A019483.P16407296418554723241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016273 n

end

end A019483.P16407296418554723241

namespace A019483

/-- `2^n*A016273(n)` -/
def P16407296418554723241.Spec : Prop :=
  ∀ n, P16407296418554723241.a n = A019483 n

end A019483

/-! ## A019483.P14791174612739263858

`A016157(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A019483.P14791174612739263858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016157 n + 6 * a (n - 1)

end

end A019483.P14791174612739263858

namespace A019483

/-- `A016157(n)+6*a(n-1)` -/
def P14791174612739263858.Spec : Prop :=
  ∀ n, P14791174612739263858.a n = A019483 n

end A019483

/-! ## A019483.P10891581309129567825

`A016149(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A019483.P10891581309129567825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016149 n + 10 * a (n - 1)

end

end A019483.P10891581309129567825

namespace A019483

/-- `A016149(n)+10*a(n-1)` -/
def P10891581309129567825.Spec : Prop :=
  ∀ n, P10891581309129567825.a n = A019483 n

end A019483

/-! ## A019483.P11235945434628577142

`A000079(n)*A124960(A167614(n+1))`
-/

namespace A019483.P11235945434628577142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A124960 (A167614 (n + 1)).toNat

end

end A019483.P11235945434628577142

namespace A019483

/-- `A000079(n)*A124960(A167614(n+1))` -/
def P11235945434628577142.Spec : Prop :=
  ∀ n, P11235945434628577142.a n = A019483 n

end A019483

/-! ## A019483.P16067080766198557407

`Δ[A168614(n)]*A124960(A167614(n+1))`
-/

namespace A019483.P16067080766198557407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A124960 (A167614 (n + 1)).toNat

end

end A019483.P16067080766198557407

namespace A019483

/-- `Δ[A168614(n)]*A124960(A167614(n+1))` -/
def P16067080766198557407.Spec : Prop :=
  ∀ n, P16067080766198557407.a n = A019483 n

end A019483

/-!
# A019485: a(n) = 2*a(n-1) + 2*a(n-2) - 3*a(n-3), with a(0) = 2, a(1) = 5, a(2) = 12.

The programs for A019485, the canonical program `A019485.P444702835424916875` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019485 has offset 0).

The definition of A019485 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)-3*a(n-3)` (program `A019485.P444702835424916875`, by `A019485.P444702835424916875.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019485.P444702835424916875

`2*a(n-1)+2*a(n-2)-3*a(n-3)` with `a(0)=2, a(1)=5, a(2)=12`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019485

/-- `2*a(n-1)+2*a(n-2)-3*a(n-3)` -/
def P444702835424916875.Spec : Prop :=
  ∀ n, P444702835424916875.a n = A019485 n

theorem P444702835424916875.correct : P444702835424916875.Spec := by
  intro n
  simp only [A019485]

end A019485

/-! ## A019485.P7956720476950319948

`3*a(n-2)+a(n-1)+1` with `a(0)=2, a(1)=5`
-/

namespace A019485.P7956720476950319948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  3 * a (n - 2) + (a (n - 1) + 1)

end

end A019485.P7956720476950319948

namespace A019485

/-- `3*a(n-2)+a(n-1)+1` -/
def P7956720476950319948.Spec : Prop :=
  ∀ n, (P7956720476950319948.a n : ℤ) = A019485 n

end A019485

/-! ## A019485.P3241678782696557700

`4-(3*(1-a(n-2))-a(n-1))` with `a(0)=2, a(1)=5`
-/

namespace A019485.P3241678782696557700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  4 - (3 * (1 - a (n - 2)) - a (n - 1))

end

end A019485.P3241678782696557700

namespace A019485

/-- `4-(3*(1-a(n-2))-a(n-1))` -/
def P3241678782696557700.Spec : Prop :=
  ∀ n, P3241678782696557700.a n = A019485 n

end A019485

/-! ## A019485.P17566452565907994005

`a(n-1)+1+a(n-2)+a(n-2)+a(n-2)` with `a(0)=2, a(1)=5`
-/

namespace A019485.P17566452565907994005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) + 1 + (a (n - 2) + (a (n - 2) + a (n - 2)))

end

end A019485.P17566452565907994005

namespace A019485

/-- `a(n-1)+1+a(n-2)+a(n-2)+a(n-2)` -/
def P17566452565907994005.Spec : Prop :=
  ∀ n, (P17566452565907994005.a n : ℤ) = A019485 n

end A019485

/-! ## A019485.P10010713647086656778

`A099232(n)+2*A006138(n)`
-/

namespace A019485.P10010713647086656778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099232 n + 2 * A006138 n

end

end A019485.P10010713647086656778

namespace A019485

/-- `A099232(n)+2*A006138(n)` -/
def P10010713647086656778.Spec : Prop :=
  ∀ n, P10010713647086656778.a n = A019485 n

end A019485

/-! ## A019485.P14224351422714382566

`A105476(n+1)+∑[A006130(n)]`
-/

namespace A019485.P14224351422714382566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105476 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A019485.P14224351422714382566

namespace A019485

/-- `A105476(n+1)+∑[A006130(n)]` -/
def P14224351422714382566.Spec : Prop :=
  ∀ n, P14224351422714382566.a n = A019485 n

end A019485

/-! ## A019485.P7568490468445585700

`A105476(n+1)+A099232(n+1)`
-/

namespace A019485.P7568490468445585700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105476 (n + 1) + A099232 (n + 1)

end

end A019485.P7568490468445585700

namespace A019485

/-- `A105476(n+1)+A099232(n+1)` -/
def P7568490468445585700.Spec : Prop :=
  ∀ n, P7568490468445585700.a n = A019485 n

end A019485

/-! ## A019485.P11298392662099224607

`A019525(n+1)+A288309(n)-2`
-/

namespace A019485.P11298392662099224607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019525 (n + 1) + (A288309 n - 2)

end

end A019485.P11298392662099224607

namespace A019485

/-- `A019525(n+1)+A288309(n)-2` -/
def P11298392662099224607.Spec : Prop :=
  ∀ n, P11298392662099224607.a n = A019485 n

end A019485

/-! ## A019485.P3712848302513855722

`A006130(n+1)+A099232(n)+A052533(n)`
-/

namespace A019485.P3712848302513855722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 (n + 1) + (A099232 n + A052533 n)

end

end A019485.P3712848302513855722

namespace A019485

/-- `A006130(n+1)+A099232(n)+A052533(n)` -/
def P3712848302513855722.Spec : Prop :=
  ∀ n, P3712848302513855722.a n = A019485 n

end A019485

/-! ## A019485.P9539964580400398103

`A052533(n+1)+A099232(n+1)+A052533(n)`
-/

namespace A019485.P9539964580400398103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 (n + 1) + (A099232 (n + 1) + A052533 n)

end

end A019485.P9539964580400398103

namespace A019485

/-- `A052533(n+1)+A099232(n+1)+A052533(n)` -/
def P9539964580400398103.Spec : Prop :=
  ∀ n, P9539964580400398103.a n = A019485 n

end A019485

/-! ## A019485.P15821188322848859241

`A162740(n+2)/6`
-/

namespace A019485.P15821188322848859241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162740 (n + 2) : ℚ) / 6

end

end A019485.P15821188322848859241

namespace A019485

/-- `A162740(n+2)/6` -/
def P15821188322848859241.Spec : Prop :=
  ∀ n, P15821188322848859241.a n = (A019485 n : ℚ)

end A019485

/-!
# A019486: a(n) = 2*a(n-1) + a(n-2) - a(n-4) - a(n-5) - a(n-6) - a(n-7).

The programs for A019486, the canonical program `A019486.P6125796287811547698` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019486 has offset 0).

The definition of A019486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)-a(n-4)-a(n-5)-a(n-6)-a(n-7)` (program `A019486.P6125796287811547698`, by `A019486.P6125796287811547698.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019486.P6125796287811547698

`2*a(n-1)+a(n-2)-a(n-4)-a(n-5)-a(n-6)-a(n-7)` with `a(0)=2, a(1)=5, a(2)=12, a(3)=28, a(4)=65, a(5)=150, a(6)=346`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019486

/-- `2*a(n-1)+a(n-2)-a(n-4)-a(n-5)-a(n-6)-a(n-7)` -/
def P6125796287811547698.Spec : Prop :=
  ∀ n, P6125796287811547698.a n = A019486 n

theorem P6125796287811547698.correct : P6125796287811547698.Spec := by
  intro n
  simp only [A019486]

end A019486

/-! ## A019486.P17548621951718156051

`A018914(n)-A006927(A000045(n))`
-/

namespace A019486.P17548621951718156051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018914 n - A006927 (A000045 n).toNat

end

end A019486.P17548621951718156051

namespace A019486

/-- `A018914(n)-A006927(A000045(n))` -/
def P17548621951718156051.Spec : Prop :=
  ∀ n, P17548621951718156051.a n = A019486 n

end A019486

/-! ## A019486.P582492980417727126

`A019485(n)-A184943(A019501(n))`
-/

namespace A019486.P582492980417727126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019485 n - A184943 (A019501 n).toNat

end

end A019486.P582492980417727126

namespace A019486

/-- `A019485(n)-A184943(A019501(n))` -/
def P582492980417727126.Spec : Prop :=
  ∀ n, P582492980417727126.a n = A019486 n

end A019486

/-! ## A019486.P682266626949688919

`A019485(n)-A345388(A019571(n))`
-/

namespace A019486.P682266626949688919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019485 n - A345388 (A019571 n).toNat

end

end A019486.P682266626949688919

namespace A019486

/-- `A019485(n)-A345388(A019571(n))` -/
def P682266626949688919.Spec : Prop :=
  ∀ n, P682266626949688919.a n = A019486 n

end A019486

/-!
# A019487: a(n) = 3*a(n-1) - a(n-2) + 2*a(n-3) - 2*a(n-4).

The programs for A019487, the canonical program `A019487.P1855462513713278321` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019487 has offset 0).

The definition of A019487 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)+2*a(n-3)-2*a(n-4)` (program `A019487.P1855462513713278321`, by `A019487.P1855462513713278321.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019487.P1855462513713278321

`3*a(n-1)-a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=2, a(1)=6, a(2)=17, a(3)=48`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019487

/-- `3*a(n-1)-a(n-2)+2*a(n-3)-2*a(n-4)` -/
def P1855462513713278321.Spec : Prop :=
  ∀ n, P1855462513713278321.a n = A019487 n

theorem P1855462513713278321.correct : P1855462513713278321.Spec := by
  intro n
  simp only [A019487]

end A019487

/-! ## A019487.P3593789128882855056

`A284948(A018914(n))+A018915(n)`
-/

namespace A019487.P3593789128882855056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (A018914 n).toNat + A018915 n

end

end A019487.P3593789128882855056

namespace A019487

/-- `A284948(A018914(n))+A018915(n)` -/
def P3593789128882855056.Spec : Prop :=
  ∀ n, P3593789128882855056.a n = A019487 n

end A019487

/-! ## A019487.P9291255635452114592

`A284948(A019485(n))+A018915(n)`
-/

namespace A019487.P9291255635452114592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (A019485 n).toNat + A018915 n

end

end A019487.P9291255635452114592

namespace A019487

/-- `A284948(A019485(n))+A018915(n)` -/
def P9291255635452114592.Spec : Prop :=
  ∀ n, P9291255635452114592.a n = A019487 n

end A019487

/-!
# A019488: Expansion of 1/((1-4*x)*(1-6*x)*(1-11*x)).

The programs for A019488, the canonical program `A019488.P1714252224409862174` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019488 has offset 0).

The definition of A019488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019488.P1714252224409862174

`17*a(n-1)-66*a(n-2)+4^n` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019488

/-- `17*a(n-1)-66*a(n-2)+4^n` -/
def P1714252224409862174.Spec : Prop :=
  ∀ n, P1714252224409862174.a n = A019488 n

theorem P1714252224409862174.correct : P1714252224409862174.Spec := by
  intro n
  simp only [A019488]

end A019488

/-! ## A019488.P7991088800268413278

`(10*4^(n+1)-21*6^(n+1)+11^(n+2))/35`
-/

namespace A019488.P7991088800268413278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * 4 ^ (n + 1) : ℤ) - (21 * 6 ^ (n + 1) : ℤ) + (11 ^ (n + 2) : ℤ) : ℚ) / 35

end

end A019488.P7991088800268413278

namespace A019488

/-- `(10*4^(n+1)-21*6^(n+1)+11^(n+2))/35` -/
def P7991088800268413278.Spec : Prop :=
  ∀ n, P7991088800268413278.a n = (A019488 n : ℚ)

end A019488

/-! ## A019488.P17232728819351034764

`A016174(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A019488.P17232728819351034764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016174 n + 4 * a (n - 1)

end

end A019488.P17232728819351034764

namespace A019488

/-- `A016174(n)+4*a(n-1)` -/
def P17232728819351034764.Spec : Prop :=
  ∀ n, P17232728819351034764.a n = A019488 n

end A019488

/-! ## A019488.P9847499991683014253

`2*A016226(n)-A016222(n)`
-/

namespace A019488.P9847499991683014253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016226 n - A016222 n

end

end A019488.P9847499991683014253

namespace A019488

/-- `2*A016226(n)-A016222(n)` -/
def P9847499991683014253.Spec : Prop :=
  ∀ n, P9847499991683014253.a n = A019488 n

end A019488

/-! ## A019488.P1126550428115856834

`2*A016308(n)-A016293(n)`
-/

namespace A019488.P1126550428115856834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016308 n - A016293 n

end

end A019488.P1126550428115856834

namespace A019488

/-- `2*A016308(n)-A016293(n)` -/
def P1126550428115856834.Spec : Prop :=
  ∀ n, P1126550428115856834.a n = A019488 n

end A019488

/-!
# A019489: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(3,7).

The programs for A019489, the canonical program `A019489.P12508437616240158820` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019489 has offset 0).

The definition of A019489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019489.P12508437616240158820

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=3, a(1)=7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019489

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P12508437616240158820.Spec : Prop :=
  ∀ n, P12508437616240158820.a n = A019489 n

theorem P12508437616240158820.correct : P12508437616240158820.Spec := by
  intro n
  simp only [A019489]

end A019489

/-! ## A019489.P3872271936241124357

`ceil(a(n-1)/a(n-2)*a(n-1))-1` with `a(0)=3, a(1)=7`
-/

namespace A019489.P3872271936241124357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n a =>
  ⌈(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌉ - 1

end

end A019489.P3872271936241124357

namespace A019489

/-- `ceil(a(n-1)/a(n-2)*a(n-1))-1` -/
def P3872271936241124357.Spec : Prop :=
  ∀ n, P3872271936241124357.a n = A019489 n

theorem P3872271936241124357.correct : P3872271936241124357.Spec := by
  intro n
  simp only [A019489, Nat.add_sub_cancel, A019489.P3872271936241124357.a, A019489.P12508437616240158820.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A019489

/-! ## A019489.P8533278630991828858

`floor(a(n-1)/a(n-2)*a(n-1))-char[4]` with `a(0)=3, a(1)=7`
-/

namespace A019489.P8533278630991828858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A019489.P8533278630991828858

namespace A019489

/-- `floor(a(n-1)/a(n-2)*a(n-1))-char[4]` -/
def P8533278630991828858.Spec : Prop :=
  ∀ n, P8533278630991828858.a n = A019489 n

end A019489

/-! ## A019489.P5568437381293903104

`A077852(n+1)`
-/

namespace A019489.P5568437381293903104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077852 (n + 1)

end

end A019489.P5568437381293903104

namespace A019489

/-- `A077852(n+1)` -/
def P5568437381293903104.Spec : Prop :=
  ∀ n, P5568437381293903104.a n = A019489 n

end A019489

/-! ## A019489.P8656627305793128032

`A019479(n)-1`
-/

namespace A019489.P8656627305793128032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019479 n - 1

end

end A019489.P8656627305793128032

namespace A019489

/-- `A019479(n)-1` -/
def P8656627305793128032.Spec : Prop :=
  ∀ n, P8656627305793128032.a n = A019489 n

end A019489

/-! ## A019489.P15000964205359119344

`record[A077852(abs(1-n))]`
-/

namespace A019489.P15000964205359119344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077852 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A019489.P15000964205359119344

namespace A019489

/-- `record[A077852(abs(1-n))]` -/
def P15000964205359119344.Spec : Prop :=
  ∀ n, P15000964205359119344.a n = A019489 n

end A019489

/-! ## A019489.P660453410630084975

`∑[A008998(n+1)]+1`
-/

namespace A019489.P660453410630084975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A019489.P660453410630084975

namespace A019489

/-- `∑[A008998(n+1)]+1` -/
def P660453410630084975.Spec : Prop :=
  ∀ n, P660453410630084975.a n = A019489 n

end A019489

/-! ## A019489.P15449611616807334721

`A020708(n-1)+a(n-1)` with `a(0)=3`
-/

namespace A019489.P15449611616807334721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A020708 (n - 1) + a (n - 1)

end

end A019489.P15449611616807334721

namespace A019489

/-- `A020708(n-1)+a(n-1)` -/
def P15449611616807334721.Spec : Prop :=
  ∀ n, P15449611616807334721.a n = A019489 n

end A019489

/-! ## A019489.P2100847913216033554

`∑[∑[A052980(n+1)]+1]+1`
-/

namespace A019489.P2100847913216033554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A019489.P2100847913216033554

namespace A019489

/-- `∑[∑[A052980(n+1)]+1]+1` -/
def P2100847913216033554.Spec : Prop :=
  ∀ n, P2100847913216033554.a n = A019489 n

end A019489

/-! ## A019489.P3356250892991480808

`ratio[A077852(n)]*A077852(n)`
-/

namespace A019489.P3356250892991480808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077852 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A077852 n : ℚ)

end

end A019489.P3356250892991480808

namespace A019489

/-- `ratio[A077852(n)]*A077852(n)` -/
def P3356250892991480808.Spec : Prop :=
  ∀ n, P3356250892991480808.a n = (A019489 n : ℚ)

end A019489

/-! ## A019489.P8503412208454205689

`A232230(n+3)/2`
-/

namespace A019489.P8503412208454205689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232230 (n + 3) : ℚ) / 2

end

end A019489.P8503412208454205689

namespace A019489

/-- `A232230(n+3)/2` -/
def P8503412208454205689.Spec : Prop :=
  ∀ n, P8503412208454205689.a n = (A019489 n : ℚ)

end A019489

/-! ## A019489.P15827670968414759287

`A100691(n+1)/2+1`
-/

namespace A019489.P15827670968414759287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100691 (n + 1) : ℚ) / 2 + 1

end

end A019489.P15827670968414759287

namespace A019489

/-- `A100691(n+1)/2+1` -/
def P15827670968414759287.Spec : Prop :=
  ∀ n, P15827670968414759287.a n = (A019489 n : ℚ)

end A019489

/-! ## A019489.P15283780218666884206

`(A193641(n+3)-1)/2`
-/

namespace A019489.P15283780218666884206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193641 (n + 3) - 1 : ℚ) / 2

end

end A019489.P15283780218666884206

namespace A019489

/-- `(A193641(n+3)-1)/2` -/
def P15283780218666884206.Spec : Prop :=
  ∀ n, P15283780218666884206.a n = (A019489 n : ℚ)

end A019489

/-! ## A019489.P9677951761110229422

`Δ[A022040(n)]-(A022040(n)+1)`
-/

namespace A019489.P9677951761110229422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A022040 n + 1)

end

end A019489.P9677951761110229422

namespace A019489

/-- `Δ[A022040(n)]-(A022040(n)+1)` -/
def P9677951761110229422.Spec : Prop :=
  ∀ n, P9677951761110229422.a n = A019489 n

end A019489

/-! ## A019489.P5662803499133122837

`floor((a(n-1)²-1)/a(n-2))` with `a(0)=3, a(1)=7`
-/

namespace A019489.P5662803499133122837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7] fun n a =>
  ⌊(a (n - 1) ^ 2 - 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A019489.P5662803499133122837

namespace A019489

/-- `floor((a(n-1)²-1)/a(n-2))` -/
def P5662803499133122837.Spec : Prop :=
  ∀ n, P5662803499133122837.a n = A019489 n

end A019489

/-!
# A019490: Expansion of 1/((1-4*x)*(1-6*x)*(1-12*x)).

The programs for A019490, the canonical program `A019490.P9194274155059536206` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019490 has offset 0).

The definition of A019490 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019490.P9194274155059536206

`4^n-3*6^n+3*12^n`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019490

/-- `4^n-3*6^n+3*12^n` -/
def P9194274155059536206.Spec : Prop :=
  ∀ n, P9194274155059536206.a n = A019490 n

theorem P9194274155059536206.correct : P9194274155059536206.Spec := by
  intro n
  simp only [A019490]

end A019490

/-! ## A019490.P10824373207606394398

`2^n*A001240(n+1)`
-/

namespace A019490.P10824373207606394398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001240 (n + 1)

end

end A019490.P10824373207606394398

namespace A019490

/-- `2^n*A001240(n+1)` -/
def P10824373207606394398.Spec : Prop :=
  ∀ n, P10824373207606394398.a n = A019490 n

end A019490

/-! ## A019490.P17442629218757879123

`lcm(A000079(n), A001240(n+1))`
-/

namespace A019490.P17442629218757879123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A001240 (n + 1))

end

end A019490.P17442629218757879123

namespace A019490

/-- `lcm(A000079(n), A001240(n+1))` -/
def P17442629218757879123.Spec : Prop :=
  ∀ n, (P17442629218757879123.a n : ℤ) = A019490 n

end A019490

/-! ## A019490.P9762354450488826980

`A001240(n+1)*A011782(n+1)`
-/

namespace A019490.P9762354450488826980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001240 (n + 1) * A011782 (n + 1)

end

end A019490.P9762354450488826980

namespace A019490

/-- `A001240(n+1)*A011782(n+1)` -/
def P9762354450488826980.Spec : Prop :=
  ∀ n, P9762354450488826980.a n = A019490 n

end A019490

/-! ## A019490.P15875030000401771010

`lcm(A001240(C(n+1, n)), A122803(n))`
-/

namespace A019490.P15875030000401771010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001240 (Nat.choose (n + 1) n)) (A122803 n)

end

end A019490.P15875030000401771010

namespace A019490

/-- `lcm(A001240(C(n+1, n)), A122803(n))` -/
def P15875030000401771010.Spec : Prop :=
  ∀ n, (P15875030000401771010.a n : ℤ) = A019490 n

end A019490

/-!
# A019491: Numbers n for which number of distinct prime divisors of binomial(n,k) has local minimum at k = n/2.

The programs for A019491, there is no canonical definition to state claims against.
-/

/-! ## A019491.P15993599533745288464

`eq[char[A279367(n+1)], A151933(n)]`
-/

namespace A019491.P15993599533745288464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279367 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A019491.P15993599533745288464

/-!
# A019492: Pisot sequence T(4,9), a(n) = floor(a(n-1)^2/a(n-2)).

The programs for A019492, the canonical program `A019492.P142361007779468196` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019492 has offset 0).

The definition of A019492 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A019492.P142361007779468196`, by `A019492.P142361007779468196.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019492.P142361007779468196

`floor(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019492

/-- `floor(a(n-1)²/a(n-2))` -/
def P142361007779468196.Spec : Prop :=
  ∀ n, P142361007779468196.a n = A019492 n

theorem P142361007779468196.correct : P142361007779468196.Spec := by
  intro n
  simp only [A019492]

end A019492

/-! ## A019492.P10849481919767643414

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=4, a(1)=9`
-/

namespace A019492.P10849481919767643414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A019492.P10849481919767643414

namespace A019492

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P10849481919767643414.Spec : Prop :=
  ∀ n, P10849481919767643414.a n = A019492 n

theorem P10849481919767643414.correct : P10849481919767643414.Spec := by
  intro n
  simp only [A019492, Nat.add_sub_cancel, A019492.P10849481919767643414.a, A019492.P142361007779468196.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A019492

/-! ## A019492.P7268797518333730320

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=4, a(1)=9`
-/

namespace A019492.P7268797518333730320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 9] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A019492.P7268797518333730320

namespace A019492

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P7268797518333730320.Spec : Prop :=
  ∀ n, P7268797518333730320.a n = A019492 n

end A019492

/-! ## A019492.P2056990836752475567

`A324684(A326659(n))+A019493(n)`
-/

namespace A019492.P2056990836752475567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324684 (A326659 n).toNat + A019493 n

end

end A019492.P2056990836752475567

namespace A019492

/-- `A324684(A326659(n))+A019493(n)` -/
def P2056990836752475567.Spec : Prop :=
  ∀ n, P2056990836752475567.a n = A019492 n

end A019492

/-! ## A019492.P15410924437099818923

`A185284(A006005(n+1))+A019493(n)`
-/

namespace A019492.P15410924437099818923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A006005 (n + 1)).toNat + A019493 n

end

end A019492.P15410924437099818923

namespace A019492

/-- `A185284(A006005(n+1))+A019493(n)` -/
def P15410924437099818923.Spec : Prop :=
  ∀ n, P15410924437099818923.a n = A019492 n

end A019492

/-!
# A019493: a(n) = 3*a(n-1) - 4*a(n-3) + a(n-6).

The programs for A019493, the canonical program `A019493.P4442239572549353638` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019493 has offset 0).

The definition of A019493 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-4*a(n-3)+a(n-6)` (program `A019493.P4442239572549353638`, by `A019493.P4442239572549353638.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019493.P4442239572549353638

`3*a(n-1)-4*a(n-3)+a(n-6)` with `a(0)=4, a(1)=9, a(2)=20, a(3)=44, a(4)=96, a(5)=209`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019493

/-- `3*a(n-1)-4*a(n-3)+a(n-6)` -/
def P4442239572549353638.Spec : Prop :=
  ∀ n, P4442239572549353638.a n = A019493 n

theorem P4442239572549353638.correct : P4442239572549353638.Spec := by
  intro n
  simp only [A019493]

end A019493

/-! ## A019493.P8071861042633443101

`A019492(n)-A324684(A326659(n))`
-/

namespace A019493.P8071861042633443101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019492 n - A324684 (A326659 n).toNat

end

end A019493.P8071861042633443101

namespace A019493

/-- `A019492(n)-A324684(A326659(n))` -/
def P8071861042633443101.Spec : Prop :=
  ∀ n, P8071861042633443101.a n = A019493 n

end A019493

/-! ## A019493.P5927606736486751539

`A019492(n)-A185284(A006005(n+1))`
-/

namespace A019493.P5927606736486751539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019492 n - A185284 (A006005 (n + 1)).toNat

end

end A019493.P5927606736486751539

namespace A019493

/-- `A019492(n)-A185284(A006005(n+1))` -/
def P5927606736486751539.Spec : Prop :=
  ∀ n, P5927606736486751539.a n = A019493 n

end A019493

/-! ## A019493.P6419146360358611423

`A019492(n)-A056973(A172378(n+1))`
-/

namespace A019493.P6419146360358611423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019492 n - A056973 (A172378 (n + 1)).toNat

end

end A019493.P6419146360358611423

namespace A019493

/-- `A019492(n)-A056973(A172378(n+1))` -/
def P6419146360358611423.Spec : Prop :=
  ∀ n, P6419146360358611423.a n = A019493 n

end A019493

/-! ## A019493.P8772949654501769564

`A019492(n)-A185284(A161847(n+1))`
-/

namespace A019493.P8772949654501769564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019492 n - A185284 (A161847 (n + 1)).toNat

end

end A019493.P8772949654501769564

namespace A019493

/-- `A019492(n)-A185284(A161847(n+1))` -/
def P8772949654501769564.Spec : Prop :=
  ∀ n, P8772949654501769564.a n = A019493 n

end A019493

/-!
# A019494: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(4,10).

The programs for A019494, the canonical program `A019494.P14862368479946508397` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019494 has offset 0).

The definition of A019494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019494.P14862368479946508397

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=4, a(1)=10`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019494

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P14862368479946508397.Spec : Prop :=
  ∀ n, P14862368479946508397.a n = A019494 n

theorem P14862368479946508397.correct : P14862368479946508397.Spec := by
  intro n
  simp only [A019494]

end A019494

/-! ## A019494.P15361047952923933139

`floor(a(n-1)/a(n-2)*a(n-1))-char[2]` with `a(0)=4, a(1)=10`
-/

namespace A019494.P15361047952923933139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A019494.P15361047952923933139

namespace A019494

/-- `floor(a(n-1)/a(n-2)*a(n-1))-char[2]` -/
def P15361047952923933139.Spec : Prop :=
  ∀ n, P15361047952923933139.a n = A019494 n

end A019494

/-! ## A019494.P18432981529796194701

`a(n-1)+A239333(n+2)/2` with `a(0)=4`
-/

namespace A019494.P18432981529796194701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (A239333 (n + 2) : ℚ) / 2

end

end A019494.P18432981529796194701

namespace A019494

/-- `a(n-1)+A239333(n+2)/2` -/
def P18432981529796194701.Spec : Prop :=
  ∀ n, P18432981529796194701.a n = (A019494 n : ℚ)

end A019494

/-! ## A019494.P7569867447876253228

`floor((a(n-1)²-1)/a(n-2))` with `a(0)=4, a(1)=10`
-/

namespace A019494.P7569867447876253228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n a =>
  ⌊(a (n - 1) ^ 2 - 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A019494.P7569867447876253228

namespace A019494

/-- `floor((a(n-1)²-1)/a(n-2))` -/
def P7569867447876253228.Spec : Prop :=
  ∀ n, P7569867447876253228.a n = A019494 n

end A019494

/-!
# A019495: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(4,11).

The programs for A019495, the canonical program `A019495.P9862166719143210799` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019495 has offset 0).

The definition of A019495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A019495.P9862166719143210799

`floor(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=11`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019495

/-- `floor(a(n-1)²/a(n-2))` -/
def P9862166719143210799.Spec : Prop :=
  ∀ n, P9862166719143210799.a n = A019495 n

theorem P9862166719143210799.correct : P9862166719143210799.Spec := by
  intro n
  simp only [A019495]

end A019495

/-! ## A019495.P8019721828863852462

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=4, a(1)=11`
-/

namespace A019495.P8019721828863852462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 11] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A019495.P8019721828863852462

namespace A019495

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P8019721828863852462.Spec : Prop :=
  ∀ n, P8019721828863852462.a n = A019495 n

end A019495

/-!
# A019496: a(n) = 3*a(n-1) - 3*a(n-3) + 2*a(n-4), with a(0)=4, a(1)=11.

The programs for A019496, the canonical program `A019496.P12320799894350101071` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A019496 has offset 0).

The definition of A019496 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-3*a(n-3)+2*a(n-4)` (program `A019496.P12320799894350101071`, by `A019496.P12320799894350101071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A019496.P12320799894350101071

`3*a(n-1)-3*a(n-3)+2*a(n-4)` with `a(0)=4, a(1)=11, a(2)=30, a(3)=81`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A019496

/-- `3*a(n-1)-3*a(n-3)+2*a(n-4)` -/
def P12320799894350101071.Spec : Prop :=
  ∀ n, P12320799894350101071.a n = A019496 n

theorem P12320799894350101071.correct : P12320799894350101071.Spec := by
  intro n
  simp only [A019496]

end A019496

/-! ## A019496.P5693821873146175447

`A019495(n)+A010051(A010904(n))`
-/

namespace A019496.P5693821873146175447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019495 n + A010051 (A010904 n).toNat

end

end A019496.P5693821873146175447

namespace A019496

/-- `A019495(n)+A010051(A010904(n))` -/
def P5693821873146175447.Spec : Prop :=
  ∀ n, P5693821873146175447.a n = A019496 n

end A019496

/-! ## A019496.P12907898086127080404

`A185284(A000124(n))+A019495(n)`
-/

namespace A019496.P12907898086127080404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000124 n).toNat + A019495 n

end

end A019496.P12907898086127080404

namespace A019496

/-- `A185284(A000124(n))+A019495(n)` -/
def P12907898086127080404.Spec : Prop :=
  ∀ n, P12907898086127080404.a n = A019496 n

end A019496

/-! ## A019496.P3528261296271829070

`A184993(A196933(2*(n+2)))+A019495(n)`
-/

namespace A019496.P3528261296271829070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184993 (A196933 (2 * (n + 2))).toNat + A019495 n

end

end A019496.P3528261296271829070

namespace A019496

/-- `A184993(A196933(2*(n+2)))+A019495(n)` -/
def P3528261296271829070.Spec : Prop :=
  ∀ n, P3528261296271829070.a n = A019496 n

end A019496

/-!
# A019497: Number of ternary search trees on n keys.

The programs for A019497, there is no canonical definition to state claims against.
-/

/-! ## A019497.P9965857058207513837

`A378321(∑[n+1]+n)`
-/

namespace A019497.P9965857058207513837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378321 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A019497.P9965857058207513837

/-! ## A019497.P5480638441947078797

`A235963(n!+1)-1`
-/

namespace A019497.P5480638441947078797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (Nat.factorial n + 1) - 1

end

end A019497.P5480638441947078797

/-! ## A019497.P15940237751694556699

`A193832(n!+2)-2`
-/

namespace A019497.P15940237751694556699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (Nat.factorial n + 2) - 2

end

end A019497.P15940237751694556699

/-! ## A019497.P9498155385076086314

`round(sqrt(A322030(n!)))-char[7]`
-/

namespace A019497.P9498155385076086314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A322030 (Nat.factorial n) : ℝ)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A019497.P9498155385076086314

/-!
# A019498: Number of 4-ary search trees on n keys.

The programs for A019498, there is no canonical definition to state claims against.
-/

/-! ## A019498.P15024314296199145255

`A393879(n+1)+A184964(A264428(2*n))`
-/

namespace A019498.P15024314296199145255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393879 (n + 1) + A184964 (A264428 (2 * n)).toNat

end

end A019498.P15024314296199145255

/-!
# A019499: Number of 5-ary search trees on n keys.

The programs for A019499, there is no canonical definition to state claims against.
-/

/-! ## A019499.P3945168879321268060

`∏{p}[C(n, 4)^3, #]`
-/

namespace A019499.P3945168879321268060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4 ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A019499.P3945168879321268060

/-! ## A019499.P16648097043262051368

`A137735(C(n, 4)²)`
-/

namespace A019499.P16648097043262051368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (Nat.choose n 4 ^ 2)

end

end A019499.P16648097043262051368

/-! ## A019499.P2279397021410248247

`A301941(C(n, 4)²)`
-/

namespace A019499.P2279397021410248247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301941 (Nat.choose n 4 ^ 2)

end

end A019499.P2279397021410248247

/-! ## A019499.P18222190091838203279

`C(n, A339893(n!))`
-/

namespace A019499.P18222190091838203279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A339893 (Nat.factorial n)).toNat

end

end A019499.P18222190091838203279

/-! ## A019499.P1517651187248479292

`∏{p}[A346890(n)², #]`
-/

namespace A019499.P1517651187248479292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346890 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A019499.P1517651187248479292

