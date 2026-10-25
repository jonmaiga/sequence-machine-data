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
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A196102: Positive integers b for which there is a primitive (5/4)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196102, there is no canonical definition to state claims against.
-/

/-! ## A196102.P11383983302795224950

`A196099(lt[A213371(2*n+1), A347270(n+1)])`
-/

namespace A196102.P11383983302795224950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213371 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196099 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196102.P11383983302795224950

/-!
# A196103: Positive integers c for which there is a primitive (5/4)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196103, there is no canonical definition to state claims against.
-/

/-! ## A196103.P2027476612020437394

`A196100(A179883(n+1)^A082498(n))`
-/

namespace A196103.P2027476612020437394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196100 (SequenceMachineLib.roundAway ((A179883 (n + 1) : ℚ) ^ (A082498 n : ℤ))).toNat

end

end A196103.P2027476612020437394

/-!
# A196104: Repdigit semiprimes (semiprimes composed of identical digits).

The programs for A196104, there is no canonical definition to state claims against.
-/

/-! ## A196104.P9475676116530971361

`∩[A046328(n+1), A010785(n)]`
-/

namespace A196104.P9475676116530971361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196104.P9475676116530971361

/-! ## A196104.P1996666901110202521

`∩[A046328(n+1), A048307(n)]`
-/

namespace A196104.P1996666901110202521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196104.P1996666901110202521

/-! ## A196104.P17410839477199634381

`∩[A046328(n+1), A064222(n)]`
-/

namespace A196104.P17410839477199634381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196104.P17410839477199634381

/-! ## A196104.P18289672643425002091

`∩[A009994(n+1), A046328(n+1)]`
-/

namespace A196104.P18289672643425002091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196104.P18289672643425002091

/-! ## A196104.P4896080228097120427

`∩[A044821(n+1), A046328(n+1)]`
-/

namespace A196104.P4896080228097120427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196104.P4896080228097120427

/-!
# A196107: Positive integers c for which there is a (7/4)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196107, there is no canonical definition to state claims against.
-/

/-! ## A196107.P16235308357883559354

`A196110(n+1)+A079209(A302401(n+2))`
-/

namespace A196107.P16235308357883559354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196110 (n + 1) + A079209 (A302401 (n + 2)).toNat

end

end A196107.P16235308357883559354

/-!
# A196109: Positive integers b for which there is a primitive (7/4)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196109, there is no canonical definition to state claims against.
-/

/-! ## A196109.P14049711973953333536

`A196106(A363246(n+2))`
-/

namespace A196109.P14049711973953333536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196106 (A363246 (n + 2)).toNat

end

end A196109.P14049711973953333536

/-! ## A196109.P2529005833540387623

`A196106(A060384(n)+A029804(n+1))`
-/

namespace A196109.P2529005833540387623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196106 (A060384 n + A029804 (n + 1)).toNat

end

end A196109.P2529005833540387623

/-! ## A196109.P2278488656528699239

`A196106(A331203(n+1)+A102680(n))`
-/

namespace A196109.P2278488656528699239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196106 (A331203 (n + 1) + A102680 n).toNat

end

end A196109.P2278488656528699239

/-! ## A196109.P1930254454444659813

`A196106(lt[A263362(n), A326567(n+2)])`
-/

namespace A196109.P1930254454444659813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263362 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326567 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196106 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196109.P1930254454444659813

/-! ## A196109.P14385152080635882089

`A196106(lt[A006141(n+1), A034444(n+1)])`
-/

namespace A196109.P14385152080635882089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196106 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196109.P14385152080635882089

/-!
# A196110: Positive integers a for which there is a primitive (7/4)-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196110, there is no canonical definition to state claims against.
-/

/-! ## A196110.P8919296244295743268

`A196107(A363246(n+2))`
-/

namespace A196110.P8919296244295743268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196107 (A363246 (n + 2)).toNat

end

end A196110.P8919296244295743268

/-! ## A196110.P8587487515064707140

`A196107(A060384(n)+A029804(n+1))`
-/

namespace A196110.P8587487515064707140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196107 (A060384 n + A029804 (n + 1)).toNat

end

end A196110.P8587487515064707140

/-! ## A196110.P5607927943271092171

`A196107(A283364(n+1)^A283332(n+1))`
-/

namespace A196110.P5607927943271092171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196107 (SequenceMachineLib.roundAway ((A283364 (n + 1) : ℚ) ^ (A283332 (n + 1) : ℤ))).toNat

end

end A196110.P5607927943271092171

/-! ## A196110.P13482508505743991403

`A196107(lt[A368388(n+1), A319066(2*n)])`
-/

namespace A196110.P13482508505743991403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319066 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196107 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196110.P13482508505743991403

/-! ## A196110.P5235744021230822896

`A196107(A283332(n+1)²*A283364(n+1))`
-/

namespace A196110.P5235744021230822896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196107 (A283332 (n + 1) ^ 2 * A283364 (n + 1)).toNat

end

end A196110.P5235744021230822896

/-!
# A196112: Positive integers a for which there is a 3-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196112, there is no canonical definition to state claims against.
-/

/-! ## A196112.P11448510147728073093

`A196155(A186381(n+1)+1+n)`
-/

namespace A196112.P11448510147728073093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196155 (A186381 (n + 1) + 1 + (n : ℤ)).toNat

end

end A196112.P11448510147728073093

/-! ## A196112.P8058834955002512049

`A074279(∑[A342742(A163173(n+1))])`
-/

namespace A196112.P8058834955002512049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342742 (A163173 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196112.P8058834955002512049

/-! ## A196112.P9434388867932336983

`A316846(∑[A263027(2*n+3)%A340359(n+4)+2])`
-/

namespace A196112.P9434388867932336983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263027 (2 * n + 3)) (A340359 (n + 4)) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316846 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196112.P9434388867932336983

/-! ## A196112.P16680982574440974506

`A003056(A353852(3*n)+A023196(n+1))`
-/

namespace A196112.P16680982574440974506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A353852 (3 * n) + A023196 (n + 1)).toNat

end

end A196112.P16680982574440974506

/-! ## A196112.P16929634381061464344

`A002024(A367225(3*n+1)+A080235(n))`
-/

namespace A196112.P16929634381061464344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A367225 (3 * n + 1) + A080235 n).toNat

end

end A196112.P16929634381061464344

/-!
# A196115: Positive integers a for which there is a primitive 3-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196115, there is no canonical definition to state claims against.
-/

/-! ## A196115.P5330842450278019042

`A242453(∑[A242465(n+4)+1])`
-/

namespace A196115.P5330842450278019042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242465 (n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242453 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196115.P5330842450278019042

/-! ## A196115.P3575316092732045995

`A196155(A190687(n+1)+A002487(n))`
-/

namespace A196115.P3575316092732045995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196155 (A190687 (n + 1) + A002487 n).toNat

end

end A196115.P3575316092732045995

/-! ## A196115.P6312547534464458835

`A196155(A190697(n+1)+A002487(n))`
-/

namespace A196115.P6312547534464458835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196155 (A190697 (n + 1) + A002487 n).toNat

end

end A196115.P6312547534464458835

/-! ## A196115.P14469278738010249406

`A106501(A125070(n+1)+A076610(n+1))`
-/

namespace A196115.P14469278738010249406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106501 (A125070 (n + 1) + A076610 (n + 1)).toNat

end

end A196115.P14469278738010249406

/-! ## A196115.P8611562103149549902

`A195868(n+1)+A091225(A367398(3*n+2))`
-/

namespace A196115.P8611562103149549902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195868 (n + 1) + A091225 (A367398 (3 * n + 2)).toNat

end

end A196115.P8611562103149549902

/-!
# A196117: Positive integers c for which there is a primitive 3-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196117, there is no canonical definition to state claims against.
-/

/-! ## A196117.P18209168879612929173

`p?[∏{d}[A196114(n+1), #]]`
-/

namespace A196117.P18209168879612929173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196114 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A196117.P18209168879612929173

/-! ## A196117.P536752319787255150

`p?[A007947(A196114(n+1)²)]`
-/

namespace A196117.P536752319787255150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A196114 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A196117.P536752319787255150

/-! ## A196117.P12511511622315562314

`p?[A196114(n+1)%A237181(n+1)]`
-/

namespace A196117.P12511511622315562314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196114 (n + 1)) (A237181 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A196117.P12511511622315562314

/-! ## A196117.P9410773398446105896

`p?[A196114(n+1)]%A246630(n+1)`
-/

namespace A196117.P9410773398446105896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A246630 (n + 1))

end

end A196117.P9410773398446105896

/-! ## A196117.P3676814104911262157

`p?[A001281(A196114(n+1))]`
-/

namespace A196117.P3676814104911262157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A196114 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A196117.P3676814104911262157

/-!
# A196118: Partial sums of A004111.

The programs for A196118, there is no canonical definition to state claims against.
-/

/-! ## A196118.P8379498430241277334

`∑[A004111(n)]`
-/

namespace A196118.P8379498430241277334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196118.P8379498430241277334

/-! ## A196118.P694066787291065939

`∑[A316074(∑[n-1]+2)]-1`
-/

namespace A196118.P694066787291065939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (∑ j ∈ Finset.range (n + 1), f2 j + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A196118.P694066787291065939

/-! ## A196118.P1644727804617044960

`∑[A318758(A238531(n))]-1`
-/

namespace A196118.P1644727804617044960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A238531 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A196118.P1644727804617044960

/-! ## A196118.P8478232373823519327

`∑[A318758(A238531(n))%A000244(n)]`
-/

namespace A196118.P8478232373823519327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318758 (A238531 n).toNat) (A000244 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196118.P8478232373823519327

/-! ## A196118.P3523776229633083464

`∑[A318757(∑[n+2]-1)]`
-/

namespace A196118.P3523776229633083464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196118.P3523776229633083464

/-! ## A196118.P14260868444348199292

`∑[A316101(∑[n+2]-1)]`
-/

namespace A196118.P14260868444348199292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196118.P14260868444348199292

/-! ## A196118.P8475679669075227393

`∑[A255517(∑[n+2]-1)]`
-/

namespace A196118.P8475679669075227393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196118.P8475679669075227393

/-!
# A196119: Positive integers a for which there is a 4-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196119, there is no canonical definition to state claims against.
-/

/-! ## A196119.P3517977295880661703

`A002024(A357135(3*n+1)+A173059(2*n+3))`
-/

namespace A196119.P3517977295880661703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A357135 (3 * n + 1) + A173059 (2 * n + 3)).toNat

end

end A196119.P3517977295880661703

/-! ## A196119.P549138561821542312

`A121854(A059543(n+1))%A196120(A294617(n))`
-/

namespace A196119.P549138561821542312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121854 (A059543 (n + 1)).toNat) (A196120 (A294617 n).toNat)

end

end A196119.P549138561821542312

/-! ## A196119.P5632529513344885938

`A121854(A059543(n+1)%A196123(2*n+1))`
-/

namespace A196119.P5632529513344885938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121854 (Int.tmod (A059543 (n + 1)) (A196123 (2 * n + 1))).toNat

end

end A196119.P5632529513344885938

/-! ## A196119.P12049695747202905057

`A264810(lt[A264857(n+1), A264862(n+1)])`
-/

namespace A196119.P12049695747202905057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196119.P12049695747202905057

/-! ## A196119.P10072890285511353709

`A002024(∑[∑{e}[A055694(n+1)+7, #]+2])`
-/

namespace A196119.P10072890285511353709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055694 (n + 1) + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196119.P10072890285511353709

/-!
# A196122: Positive integers a for which there is a primitive 4-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196122, there is no canonical definition to state claims against.
-/

/-! ## A196122.P6315413304667230543

`A004525(A283431(5*n+3)+A002808(n+1))`
-/

namespace A196122.P6315413304667230543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A283431 (5 * n + 3) + A002808 (n + 1)).toNat

end

end A196122.P6315413304667230543

/-! ## A196122.P4010631758654020705

`A353058(A192746(n+1))`
-/

namespace A196122.P4010631758654020705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353058 (A192746 (n + 1)).toNat

end

end A196122.P4010631758654020705

/-! ## A196122.P15020520633919886286

`A285189(A129412(n+1))+3`
-/

namespace A196122.P15020520633919886286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A129412 (n + 1)).toNat + 3

end

end A196122.P15020520633919886286

/-! ## A196122.P12952343671310892493

`A130855(2*p?[A225859(n+1)])`
-/

namespace A196122.P12952343671310892493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130855 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A196122.P12952343671310892493

/-!
# A196123: Positive integers b for which there is a primitive 4-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196123, there is no canonical definition to state claims against.
-/

/-! ## A196123.P17898003863138557941

`A196006(A188649(n+1))-A196122(n+1)`
-/

namespace A196123.P17898003863138557941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196006 (A188649 (n + 1)).toNat - A196122 (n + 1)

end

end A196123.P17898003863138557941

/-! ## A196123.P51010472827634097

`A196006(A188649(n+1))-(A285189(A129412(n+1))+3)`
-/

namespace A196123.P51010472827634097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196006 (A188649 (n + 1)).toNat - (A285189 (A129412 (n + 1)).toNat + 3)

end

end A196123.P51010472827634097

/-! ## A196123.P7872761334119031269

`A196005(A071274(n+1))-A008619(n)`
-/

namespace A196123.P7872761334119031269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196005 (A071274 (n + 1)).toNat - A008619 n

end

end A196123.P7872761334119031269

/-! ## A196123.P11411064077936166629

`A196006(A071274(n+1))-A196122(n+1)`
-/

namespace A196123.P11411064077936166629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196006 (A071274 (n + 1)).toNat - A196122 (n + 1)

end

end A196123.P11411064077936166629

/-! ## A196123.P13115497167589290759

`A196006(A071274(n+1))-(A285189(A129412(n+1))+3)`
-/

namespace A196123.P13115497167589290759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196006 (A071274 (n + 1)).toNat - (A285189 (A129412 (n + 1)).toNat + 3)

end

end A196123.P13115497167589290759

/-!
# A196124: Positive integers c for which there is a primitive 4-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196124, there is no canonical definition to state claims against.
-/

/-! ## A196124.P6757622461183930288

`A196005(A188649(n+1))+A196004(n+1)`
-/

namespace A196124.P6757622461183930288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196005 (A188649 (n + 1)).toNat + A196004 (n + 1)

end

end A196124.P6757622461183930288

/-! ## A196124.P5496820230929610020

`A196006(n+1)+A001222(A050683(n+1))`
-/

namespace A196124.P5496820230929610020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196006 (n + 1) + A001222 (A050683 (n + 1)).toNat

end

end A196124.P5496820230929610020

/-! ## A196124.P8738754683383925437

`A196005(A071274(n+1))+A196004(n+1)`
-/

namespace A196124.P8738754683383925437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196005 (A071274 (n + 1)).toNat + A196004 (n + 1)

end

end A196124.P8738754683383925437

/-! ## A196124.P15570514083833993354

`A196006(A071274(n+1))+2*A008619(n)`
-/

namespace A196124.P15570514083833993354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196006 (A071274 (n + 1)).toNat + 2 * A008619 n

end

end A196124.P15570514083833993354

/-! ## A196124.P9016963370346300606

`A196004(A071274(n+1))+A196123(n+1)+A008619(n)`
-/

namespace A196124.P9016963370346300606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196004 (A071274 (n + 1)).toNat + (A196123 (n + 1) + A008619 n)

end

end A196124.P9016963370346300606

/-!
# A196125: E.g.f. satisfies: A(x) = Sum_{n>=0} exp(x*A(x)^(2*n) - 1)/n!.

The programs for A196125, there is no canonical definition to state claims against.
-/

/-! ## A196125.P6382330498308880870

`A013947(A373754(n))`
-/

namespace A196125.P6382330498308880870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (A373754 n).toNat

end

end A196125.P6382330498308880870

/-!
# A196126: Let A = {(x,y): x, y positive natural numbers and y <= x <= y^2}. a(n) is the cardinality of the subset {(x,y) in A such that x <= n}.

The programs for A196126, there is no canonical definition to state claims against.
-/

/-! ## A196126.P5837677492461946199

`∑[1-floor(sqrt(n))+n]`
-/

namespace A196126.P5837677492461946199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.sqrt n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196126.P5837677492461946199

/-! ## A196126.P9579493433326258998

`-∑[xor(n-floor(sqrt(n)), -1)]`
-/

namespace A196126.P9579493433326258998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - (Nat.sqrt n : ℤ)) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196126.P9579493433326258998

/-! ## A196126.P1936341688135969943

`∑[n-floor(sqrt(n))]-xor(n, -1)`
-/

namespace A196126.P1936341688135969943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.sqrt n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A196126.P1936341688135969943

/-! ## A196126.P18102783267250305547

`∑[∑[xor(1, char[n²])]]+1+n`
-/

namespace A196126.P18102783267250305547
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A196126.P18102783267250305547

/-! ## A196126.P17043549231806051654

`∑[n+1]-A022554(n)`
-/

namespace A196126.P17043549231806051654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A022554 n

end

end A196126.P17043549231806051654

/-!
# A196127: Union of p-1, 2p-1 and 3p-1 where p is a prime (without repetition).

The programs for A196127, the canonical program `A196127.P5359934558696042021` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196127 has offset 1).

The definition of A196127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196127.P5359934558696042021

`∪[A006093(n+1), A195896(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A196127

/-- `∪[A006093(n+1), A195896(n+1)]` -/
def P5359934558696042021.Spec : Prop :=
  ∀ n, (P5359934558696042021.a n : ℤ) = A196127 (n + 1)

theorem P5359934558696042021.correct : P5359934558696042021.Spec := by
  intro n
  simp only [A196127, Nat.add_sub_cancel]

end A196127

/-! ## A196127.P263413767225836114

`∪[A068499(n+1), A195896(n+1)]`
-/

namespace A196127.P263413767225836114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196127.P263413767225836114

namespace A196127

/-- `∪[A068499(n+1), A195896(n+1)]` -/
def P263413767225836114.Spec : Prop :=
  ∀ n, (P263413767225836114.a n : ℤ) = A196127 (n + 1)

end A196127

/-! ## A196127.P5775871026121694822

`∪[A165972(n+1), A195896(n+1)]`
-/

namespace A196127.P5775871026121694822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A196127.P5775871026121694822

namespace A196127

/-- `∪[A165972(n+1), A195896(n+1)]` -/
def P5775871026121694822.Spec : Prop :=
  ∀ n, (P5775871026121694822.a n : ℤ) = A196127 (n + 1)

end A196127

/-! ## A196127.P5725210969161996516

`lt[n, 3*A006530(n+2)]+1`
-/

namespace A196127.P5725210969161996516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A196127.P5725210969161996516

namespace A196127

/-- `lt[n, 3*A006530(n+2)]+1` -/
def P5725210969161996516.Spec : Prop :=
  ∀ n, (P5725210969161996516.a n : ℤ) = A196127 (n + 1)

end A196127

/-! ## A196127.P17417863975783491026

`lt[(n-3)/(A006530(n+1)-ϕ), 4]`
-/

namespace A196127.P17417863975783491026
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℝ) / ((A006530 (n + 1) : ℝ) - Real.goldenRatio)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A196127.P17417863975783491026

namespace A196127

/-- `lt[(n-3)/(A006530(n+1)-ϕ), 4]` -/
def P17417863975783491026.Spec : Prop :=
  ∀ n, (P17417863975783491026.a n : ℤ) = A196127 (n + 1)

end A196127

/-! ## A196127.P3228907274071866033

`eq[A065043(n+1), A339896(n+1)]`
-/

namespace A196127.P3228907274071866033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339896 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196127.P3228907274071866033

namespace A196127

/-- `eq[A065043(n+1), A339896(n+1)]` -/
def P3228907274071866033.Spec : Prop :=
  ∀ n, (P3228907274071866033.a n : ℤ) = A196127 (n + 1)

end A196127

/-! ## A196127.P1254332521264722347

`eq[A243978(A001222(n+1)), A339896(n+1)]`
-/

namespace A196127.P1254332521264722347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 (A001222 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339896 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196127.P1254332521264722347

namespace A196127

/-- `eq[A243978(A001222(n+1)), A339896(n+1)]` -/
def P1254332521264722347.Spec : Prop :=
  ∀ n, (P1254332521264722347.a n : ℤ) = A196127 (n + 1)

end A196127

/-! ## A196127.P9187281820214425209

`lt[A028310(floor(n/3)), A006530(n+1)]`
-/

namespace A196127.P9187281820214425209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌊(n : ℚ) / 3⌋.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A196127.P9187281820214425209

namespace A196127

/-- `lt[A028310(floor(n/3)), A006530(n+1)]` -/
def P9187281820214425209.Spec : Prop :=
  ∀ n, (P9187281820214425209.a n : ℤ) = A196127 (n + 1)

end A196127

/-! ## A196127.P5719054955611373980

`eq[A257990(n+1), A319694(n+1)]`
-/

namespace A196127.P5719054955611373980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319694 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196127.P5719054955611373980

namespace A196127

/-- `eq[A257990(n+1), A319694(n+1)]` -/
def P5719054955611373980.Spec : Prop :=
  ∀ n, (P5719054955611373980.a n : ℤ) = A196127 (n + 1)

end A196127

/-! ## A196127.P2527893639469780550

`eq[A153011(n+1)², A349378(n+1)]`
-/

namespace A196127.P2527893639469780550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153011 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196127.P2527893639469780550

namespace A196127

/-- `eq[A153011(n+1)², A349378(n+1)]` -/
def P2527893639469780550.Spec : Prop :=
  ∀ n, (P2527893639469780550.a n : ℤ) = A196127 (n + 1)

end A196127

/-! ## A196127.P7565604180094638184

`lt[n+1, A007775(A006530(n+1))]`
-/

namespace A196127.P7565604180094638184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (A006530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A196127.P7565604180094638184

namespace A196127

/-- `lt[n+1, A007775(A006530(n+1))]` -/
def P7565604180094638184.Spec : Prop :=
  ∀ n, (P7565604180094638184.a n : ℤ) = A196127 (n + 1)

end A196127

/-! ## A196127.P8568589015720295319

`lt[1-A171462(n+2)+n, 3]+1`
-/

namespace A196127.P8568589015720295319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A171462 (n + 2) + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A196127.P8568589015720295319

namespace A196127

/-- `lt[1-A171462(n+2)+n, 3]+1` -/
def P8568589015720295319.Spec : Prop :=
  ∀ n, (P8568589015720295319.a n : ℤ) = A196127 (n + 1)

end A196127

/-! ## A196127.P1063833269708957366

`lt[A002265(A052126(n+2)), 1]+1`
-/

namespace A196127.P1063833269708957366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A052126 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A196127.P1063833269708957366

namespace A196127

/-- `lt[A002265(A052126(n+2)), 1]+1` -/
def P1063833269708957366.Spec : Prop :=
  ∀ n, (P1063833269708957366.a n : ℤ) = A196127 (n + 1)

end A196127

/-! ## A196127.P4989585800471629713

`eq[A011776(n+1), A091954(n+1)]`
-/

namespace A196127.P4989585800471629713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196127.P4989585800471629713

namespace A196127

/-- `eq[A011776(n+1), A091954(n+1)]` -/
def P4989585800471629713.Spec : Prop :=
  ∀ n, (P4989585800471629713.a n : ℤ) = A196127 (n + 1)

end A196127

/-! ## A196127.P17346363294710293737

`eq[A083716(n+1), A257990(n+1)]`
-/

namespace A196127.P17346363294710293737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196127.P17346363294710293737

namespace A196127

/-- `eq[A083716(n+1), A257990(n+1)]` -/
def P17346363294710293737.Spec : Prop :=
  ∀ n, (P17346363294710293737.a n : ℤ) = A196127 (n + 1)

end A196127

/-! ## A196127.P3369015139300303349

`eq[A070821(n+1), A339896(n+1)]`
-/

namespace A196127.P3369015139300303349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339896 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196127.P3369015139300303349

namespace A196127

/-- `eq[A070821(n+1), A339896(n+1)]` -/
def P3369015139300303349.Spec : Prop :=
  ∀ n, (P3369015139300303349.a n : ℤ) = A196127 (n + 1)

end A196127

/-! ## A196127.P10050036468530373742

`eq[A083716(n+1), A336123(n+1)]`
-/

namespace A196127.P10050036468530373742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336123 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196127.P10050036468530373742

namespace A196127

/-- `eq[A083716(n+1), A336123(n+1)]` -/
def P10050036468530373742.Spec : Prop :=
  ∀ n, (P10050036468530373742.a n : ℤ) = A196127 (n + 1)

end A196127

/-! ## A196127.P80652800132488055

`lt[A187182(n+1), A006530(n+1)]`
-/

namespace A196127.P80652800132488055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A196127.P80652800132488055

namespace A196127

/-- `lt[A187182(n+1), A006530(n+1)]` -/
def P80652800132488055.Spec : Prop :=
  ∀ n, (P80652800132488055.a n : ℤ) = A196127 (n + 1)

end A196127

/-! ## A196127.P978650087241487093

`eq[A200221(n+1)², A349378(n+1)]`
-/

namespace A196127.P978650087241487093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200221 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A196127.P978650087241487093

namespace A196127

/-- `eq[A200221(n+1)², A349378(n+1)]` -/
def P978650087241487093.Spec : Prop :=
  ∀ n, (P978650087241487093.a n : ℤ) = A196127 (n + 1)

end A196127

/-! ## A196127.P12798643302160932382

`lt[A008732(n), A006530(n+1)²+n]`
-/

namespace A196127.P12798643302160932382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A196127.P12798643302160932382

namespace A196127

/-- `lt[A008732(n), A006530(n+1)²+n]` -/
def P12798643302160932382.Spec : Prop :=
  ∀ n, (P12798643302160932382.a n : ℤ) = A196127 (n + 1)

end A196127

/-!
# A196128: Largest prime p[i] such that p[i]+p[i+1]+...+p[i+n-1] <= primorial(n) = A002110(n).

The programs for A196128, there is no canonical definition to state claims against.
-/

/-! ## A196128.P10578105689792579846

`A007918(A049311(2*n+1)-A001653(n+1))`
-/

namespace A196128.P10578105689792579846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A049311 (2 * n + 1) - A001653 (n + 1)).toNat

end

end A196128.P10578105689792579846

/-! ## A196128.P2315218778145791786

`A007918(A049311(2*n+1)%A001653(n+1))`
-/

namespace A196128.P2315218778145791786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (Int.tmod (A049311 (2 * n + 1)) (A001653 (n + 1))).toNat

end

end A196128.P2315218778145791786

/-!
# A196131: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 0,2,1,3,4 for x=0,1,2,3,4.

The programs for A196131, there is no canonical definition to state claims against.
-/

/-! ## A196131.P14262372152668231117

`A196138(∑[4*n]+1)`
-/

namespace A196131.P14262372152668231117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196131.P14262372152668231117

/-! ## A196131.P10687009748681434752

`A196138(A001844(n))+char[10]`
-/

namespace A196131.P10687009748681434752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196131.P10687009748681434752

/-! ## A196131.P18198281522123015659

`A243966(n)+A196138(A001844(n))`
-/

namespace A196131.P18198281522123015659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243966 n + A196138 (A001844 n).toNat

end

end A196131.P18198281522123015659

/-! ## A196131.P14207320996313880764

`A196138(A001844(n))*A348290(n)`
-/

namespace A196131.P14207320996313880764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A001844 n).toNat * A348290 n

end

end A196131.P14207320996313880764

/-! ## A196131.P1070438309159417935

`A196138(A001844(n))%A022054(n+1)`
-/

namespace A196131.P1070438309159417935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196138 (A001844 n).toNat) (A022054 (n + 1))

end

end A196131.P1070438309159417935

/-!
# A196132: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,2,1,3,4 for x=0,1,2,3,4.

The programs for A196132, there is no canonical definition to state claims against.
-/

/-! ## A196132.P15857432230742068195

`A196138(∑[n+1]+2)`
-/

namespace A196132.P15857432230742068195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196132.P15857432230742068195

/-! ## A196132.P2245986506606625857

`A196138(A000096(n)+3)+char[20]`
-/

namespace A196132.P2245986506606625857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196132.P2245986506606625857

/-! ## A196132.P3211022767310768437

`∑{d}[A196138(A000096(n)+3), A000010(#)]`
-/

namespace A196132.P3211022767310768437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A000096 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A196132.P3211022767310768437

/-! ## A196132.P629477324192080473

`A196138(A000217(n+1)+2)%A293846(n)`
-/

namespace A196132.P629477324192080473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196138 (A000217 (n + 1) + 2).toNat) (A293846 n)

end

end A196132.P629477324192080473

/-! ## A196132.P10174513135740352665

`A196138(A000096(n)+3)%A000045(n+6)`
-/

namespace A196132.P10174513135740352665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196138 (A000096 n + 3).toNat) (A000045 (n + 6))

end

end A196132.P10174513135740352665

/-!
# A196133: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,2,1,3,4 for x=0,1,2,3,4.

The programs for A196133, there is no canonical definition to state claims against.
-/

/-! ## A196133.P6237497577322990169

`A196138(∑[n+2]+4)`
-/

namespace A196133.P6237497577322990169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196133.P6237497577322990169

/-! ## A196133.P16810483111924644337

`record[A196138(A016028(n+1))]`
-/

namespace A196133.P16810483111924644337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A016028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196133.P16810483111924644337

/-! ## A196133.P8546175238940800701

`record[gcd(A196138(n+1), A303913(n))]`
-/

namespace A196133.P8546175238940800701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A196138 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196133.P8546175238940800701

/-! ## A196133.P11075903701281540134

`record[gcd(A048723(n), A196138(n+3))]`
-/

namespace A196133.P11075903701281540134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048723 n) (A196138 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196133.P11075903701281540134

/-! ## A196133.P5593477532985450892

`lcm((-1)^n, A196138(A167614(n+1)))`
-/

namespace A196133.P5593477532985450892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A196138 (A167614 (n + 1)).toNat)

end

end A196133.P5593477532985450892

/-!
# A196134: Number of n X 4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,2,1,3,4 for x=0,1,2,3,4.

The programs for A196134, there is no canonical definition to state claims against.
-/

/-! ## A196134.P12182056904432038427

`A196138(∑[n+3]+7)`
-/

namespace A196134.P12182056904432038427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A196134.P12182056904432038427

/-! ## A196134.P3308588795568791770

`A196138(A000217(n+3)+4)+char[18]`
-/

namespace A196134.P3308588795568791770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196134.P3308588795568791770

/-! ## A196134.P3755081117373290757

`A196138(A055999(n)+10)+A070097(n+1)`
-/

namespace A196134.P3755081117373290757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A055999 n + 10).toNat + A070097 (n + 1)

end

end A196134.P3755081117373290757

/-! ## A196134.P11223775153635493723

`A007318(C(n, 2))*A196138(A000217(n+3)+4)`
-/

namespace A196134.P11223775153635493723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A196138 (A000217 (n + 3) + 4).toNat

end

end A196134.P11223775153635493723

/-! ## A196134.P11341485957974963214

`A196138(A000217(n+3)+4)%A000045(n+6)²`
-/

namespace A196134.P11341485957974963214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196138 (A000217 (n + 3) + 4).toNat) (A000045 (n + 6) ^ 2)

end

end A196134.P11341485957974963214

/-!
# A196135: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,2,1,3,4 for x=0,1,2,3,4.

The programs for A196135, there is no canonical definition to state claims against.
-/

/-! ## A196135.P8671436700055214746

`A196138(A374005(n+1))`
-/

namespace A196135.P8671436700055214746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A374005 (n + 1)).toNat

end

end A196135.P8671436700055214746

/-! ## A196135.P15966450744814367677

`A196138(A167499(n+3))`
-/

namespace A196135.P15966450744814367677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A167499 (n + 3)).toNat

end

end A196135.P15966450744814367677

/-! ## A196135.P11476631408269780557

`A196138(A155212(n)+13)`
-/

namespace A196135.P11476631408269780557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A155212 n + 13).toNat

end

end A196135.P11476631408269780557

/-! ## A196135.P15360054686518795642

`A196138(A056000(n)+15)`
-/

namespace A196135.P15360054686518795642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A056000 n + 15).toNat

end

end A196135.P15360054686518795642

/-! ## A196135.P9432452233808333137

`A196138(eq[7, A066657(n)])`
-/

namespace A196135.P9432452233808333137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196135.P9432452233808333137

/-!
# A196136: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,2,1,3,4 for x=0,1,2,3,4.

The programs for A196136, there is no canonical definition to state claims against.
-/

/-! ## A196136.P5103911898594858394

`A196138(A374007(n+1))`
-/

namespace A196136.P5103911898594858394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A374007 (n + 1)).toNat

end

end A196136.P5103911898594858394

/-! ## A196136.P14388568475689787245

`A196138(A056115(n)+21)`
-/

namespace A196136.P14388568475689787245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A056115 n + 21).toNat

end

end A196136.P14388568475689787245

/-! ## A196136.P9175226803040924185

`A196138(A167499(n+4)+1)`
-/

namespace A196136.P9175226803040924185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A167499 (n + 4) + 1).toNat

end

end A196136.P9175226803040924185

/-! ## A196136.P12210391795116155764

`A196138(A000124(n+5)+5)`
-/

namespace A196136.P12210391795116155764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A000124 (n + 5) + 5).toNat

end

end A196136.P12210391795116155764

/-! ## A196136.P12841449074868611897

`A196138(A000096(n+4)+7)`
-/

namespace A196136.P12841449074868611897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A000096 (n + 4) + 7).toNat

end

end A196136.P12841449074868611897

/-!
# A196137: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 0,2,1,3,4 for x=0,1,2,3,4.

The programs for A196137, there is no canonical definition to state claims against.
-/

/-! ## A196137.P6152236418035308664

`A196138(A374008(n+1))`
-/

namespace A196137.P6152236418035308664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A374008 (n + 1)).toNat

end

end A196137.P6152236418035308664

/-! ## A196137.P17521346910265578950

`A196138(A056119(n)+28)`
-/

namespace A196137.P17521346910265578950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A056119 n + 28).toNat

end

end A196137.P17521346910265578950

/-! ## A196137.P5709740018741490692

`A196138(eq[11, A066657(n)])`
-/

namespace A196137.P5709740018741490692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196137.P5709740018741490692

/-! ## A196137.P90318888699946148

`A196138(A166136(n+5)+1)`
-/

namespace A196137.P90318888699946148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A166136 (n + 5) + 1).toNat

end

end A196137.P90318888699946148

/-! ## A196137.P3362454966970547804

`A196138(A167614(n+5)+4)`
-/

namespace A196137.P3362454966970547804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196138 (A167614 (n + 5) + 4).toNat

end

end A196137.P3362454966970547804

/-!
# A196138: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 0,2,1,3,4 for x=0,1,2,3,4.

The programs for A196138, there is no canonical definition to state claims against.
-/

/-! ## A196138.P9547538879359579509

`A257564(5*A197889(n+1))`
-/

namespace A196138.P9547538879359579509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (5 * A197889 (n + 1)).toNat

end

end A196138.P9547538879359579509

/-! ## A196138.P17953915698280778801

`A257564(lcm(5, A197889(n+1)))`
-/

namespace A196138.P17953915698280778801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (Int.lcm 5 (A197889 (n + 1)))

end

end A196138.P17953915698280778801

/-! ## A196138.P4910119588684762781

`∑{e}[A233294(A198185(n+1)), #]`
-/

namespace A196138.P4910119588684762781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233294 (A198185 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A196138.P4910119588684762781

/-! ## A196138.P2151500499556222824

`A198185(n+1)%p?[A180315(n)]`
-/

namespace A196138.P2151500499556222824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198185 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A196138.P2151500499556222824

/-! ## A196138.P18434466216854457556

`A001222(A233294(A198185(n+1)))`
-/

namespace A196138.P18434466216854457556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A233294 (A198185 (n + 1)).toNat).toNat

end

end A196138.P18434466216854457556

/-!
# A196139: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,0,4,1,2 for x=0,1,2,3,4.

The programs for A196139, there is no canonical definition to state claims against.
-/

/-! ## A196139.P11751337273549337208

`A196146(∑[4*n]+1)`
-/

namespace A196139.P11751337273549337208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196139.P11751337273549337208

/-! ## A196139.P14680667038639806464

`A196146(n²+(n+1)²)%xor(1, 4*16^n)`
-/

namespace A196139.P14680667038639806464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196146 (n ^ 2 + (n + 1) ^ 2)) (Nat.xor 1 (4 * 16 ^ n) : ℤ)

end

end A196139.P14680667038639806464

/-! ## A196139.P9221330744653009842

`or(1, A196146(A001844(n)))`
-/

namespace A196139.P9221330744653009842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A196146 (A001844 n).toNat)

end

end A196139.P9221330744653009842

/-! ## A196139.P17140172995770577507

`record[A196146(A001844(∑{digits}[n, #]))]`
-/

namespace A196139.P17140172995770577507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A001844 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196139.P17140172995770577507

/-! ## A196139.P1776933644301140366

`record[A003982(n)*A196146(n+1)]`
-/

namespace A196139.P1776933644301140366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A196146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196139.P1776933644301140366

/-!
# A196140: Number of nX2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,4,1,2 for x=0,1,2,3,4.

The programs for A196140, the canonical program `A196140.P10989958171655588697` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196140 has offset 1).

The definition of A196140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196140.P10989958171655588697

`2*a(n-1)+a(n-3)-2*a(n-4)-a(n-5)+a(n-6)` with `a(0)=3, a(1)=5, a(2)=8, a(3)=17, a(4)=34, a(5)=62`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A196140

/-- `2*a(n-1)+a(n-3)-2*a(n-4)-a(n-5)+a(n-6)` -/
def P10989958171655588697.Spec : Prop :=
  ∀ n, P10989958171655588697.a n = A196140 (n + 1)

theorem P10989958171655588697.correct : P10989958171655588697.Spec := by
  intro n
  simp only [A196140, Nat.add_sub_cancel]

end A196140

/-! ## A196140.P262155552975962278

`A196146(∑[n+1]+2)`
-/

namespace A196140.P262155552975962278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196140.P262155552975962278

namespace A196140

/-- `A196146(∑[n+1]+2)` -/
def P262155552975962278.Spec : Prop :=
  ∀ n, P262155552975962278.a n = A196140 (n + 1)

end A196140

/-! ## A196140.P11945655793481788246

`or(char[1], A196146(A167487(n)-5))`
-/

namespace A196140.P11945655793481788246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A196146 (A167487 n - 5).toNat)

end

end A196140.P11945655793481788246

namespace A196140

/-- `or(char[1], A196146(A167487(n)-5))` -/
def P11945655793481788246.Spec : Prop :=
  ∀ n, P11945655793481788246.a n = A196140 (n + 1)

end A196140

/-! ## A196140.P4580865760938033593

`A196146(A089071(n+3))*A288120(n)`
-/

namespace A196140.P4580865760938033593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A089071 (n + 3)).toNat * A288120 n

end

end A196140.P4580865760938033593

namespace A196140

/-- `A196146(A089071(n+3))*A288120(n)` -/
def P4580865760938033593.Spec : Prop :=
  ∀ n, P4580865760938033593.a n = A196140 (n + 1)

end A196140

/-! ## A196140.P1234379451655804174

`A007318(∑[n])*A196146(A167487(n)-5)`
-/

namespace A196140.P1234379451655804174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A196146 (A167487 n - 5).toNat

end

end A196140.P1234379451655804174

namespace A196140

/-- `A007318(∑[n])*A196146(A167487(n)-5)` -/
def P1234379451655804174.Spec : Prop :=
  ∀ n, P1234379451655804174.a n = A196140 (n + 1)

end A196140

/-!
# A196141: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,4,1,2 for x=0,1,2,3,4.

The programs for A196141, there is no canonical definition to state claims against.
-/

/-! ## A196141.P16765505574529278165

`A196146(∑[n+2]+4)`
-/

namespace A196141.P16765505574529278165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196141.P16765505574529278165

/-! ## A196141.P9146351687769599551

`and(-1, A196146(A167614(n+1)))`
-/

namespace A196141.P9146351687769599551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A196146 (A167614 (n + 1)).toNat)

end

end A196141.P9146351687769599551

/-! ## A196141.P12430388481660414845

`or(char[2], A196146(A167499(n)+n))`
-/

namespace A196141.P12430388481660414845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A196146 (A167499 n + (n : ℤ)).toNat)

end

end A196141.P12430388481660414845

/-! ## A196141.P15323440799563641863

`or(char[2], A196146(A034856(n+1)+5))`
-/

namespace A196141.P15323440799563641863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A196146 (A034856 (n + 1) + 5).toNat)

end

end A196141.P15323440799563641863

/-! ## A196141.P841443126451737102

`A196146(A167614(n+1))+A185238(n)`
-/

namespace A196141.P841443126451737102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A167614 (n + 1)).toNat + A185238 n

end

end A196141.P841443126451737102

/-!
# A196142: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,4,1,2 for x=0,1,2,3,4.

The programs for A196142, there is no canonical definition to state claims against.
-/

/-! ## A196142.P255937081769587925

`A196146(∑[n+3]+7)`
-/

namespace A196142.P255937081769587925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A196142.P255937081769587925

/-! ## A196142.P11467716490065459298

`record[A023531(n)*A196146(n+5)]`
-/

namespace A196142.P11467716490065459298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A196146 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196142.P11467716490065459298

/-! ## A196142.P17345886743064642653

`or(char[1], A196146(A167614(n+2)+1))`
-/

namespace A196142.P17345886743064642653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A196146 (A167614 (n + 2) + 1).toNat)

end

end A196142.P17345886743064642653

/-! ## A196142.P12875417693037844396

`A196146(A000096(n+2)+5)+char[49]`
-/

namespace A196142.P12875417693037844396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A000096 (n + 2) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196142.P12875417693037844396

/-! ## A196142.P10712458199623372552

`A007318(C(2, n))*A196146(A167614(n+2)+1)`
-/

namespace A196142.P10712458199623372552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A196146 (A167614 (n + 2) + 1).toNat

end

end A196142.P10712458199623372552

/-!
# A196143: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,4,1,2 for x=0,1,2,3,4.

The programs for A196143, there is no canonical definition to state claims against.
-/

/-! ## A196143.P10181989070653318312

`A196146(A374005(n+1))`
-/

namespace A196143.P10181989070653318312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A374005 (n + 1)).toNat

end

end A196143.P10181989070653318312

/-! ## A196143.P12112216497760957408

`A196146(A167499(n+3))`
-/

namespace A196143.P12112216497760957408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A167499 (n + 3)).toNat

end

end A196143.P12112216497760957408

/-! ## A196143.P16381233845375956713

`A196146(A155212(n)+13)`
-/

namespace A196143.P16381233845375956713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A155212 n + 13).toNat

end

end A196143.P16381233845375956713

/-! ## A196143.P2128649481530537448

`A196146(A056000(n)+15)`
-/

namespace A196143.P2128649481530537448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A056000 n + 15).toNat

end

end A196143.P2128649481530537448

/-! ## A196143.P14589096877834740251

`A196146(eq[7, A066657(n)])`
-/

namespace A196143.P14589096877834740251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196143.P14589096877834740251

/-!
# A196144: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,4,1,2 for x=0,1,2,3,4.

The programs for A196144, there is no canonical definition to state claims against.
-/

/-! ## A196144.P12671694363009531107

`A196146(A374007(n+1))`
-/

namespace A196144.P12671694363009531107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A374007 (n + 1)).toNat

end

end A196144.P12671694363009531107

/-! ## A196144.P14935800026361124152

`A196146(A167499(n+4)+1)`
-/

namespace A196144.P14935800026361124152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A167499 (n + 4) + 1).toNat

end

end A196144.P14935800026361124152

/-! ## A196144.P8757659866665469735

`A196146(A167487(n+4)-1)`
-/

namespace A196144.P8757659866665469735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A167487 (n + 4) - 1).toNat

end

end A196144.P8757659866665469735

/-! ## A196144.P16912500184176239737

`A196146(A000124(n+5)+5)`
-/

namespace A196144.P16912500184176239737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A000124 (n + 5) + 5).toNat

end

end A196144.P16912500184176239737

/-! ## A196144.P3311551036536636753

`A196146(A000096(n+4)+7)`
-/

namespace A196144.P3311551036536636753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A000096 (n + 4) + 7).toNat

end

end A196144.P3311551036536636753

/-!
# A196145: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,0,4,1,2 for x=0,1,2,3,4.

The programs for A196145, there is no canonical definition to state claims against.
-/

/-! ## A196145.P13420016882010700332

`A196146(A374008(n+1))`
-/

namespace A196145.P13420016882010700332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A374008 (n + 1)).toNat

end

end A196145.P13420016882010700332

/-! ## A196145.P17086848517462615504

`A196146(A167487(n+5))`
-/

namespace A196145.P17086848517462615504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A167487 (n + 5)).toNat

end

end A196145.P17086848517462615504

/-! ## A196145.P17884247288279316293

`A196146(A167499(n+5)+2)`
-/

namespace A196145.P17884247288279316293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A167499 (n + 5) + 2).toNat

end

end A196145.P17884247288279316293

/-! ## A196145.P17518550196369013867

`A196146(A167614(n+5)+4)`
-/

namespace A196145.P17518550196369013867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A167614 (n + 5) + 4).toNat

end

end A196145.P17518550196369013867

/-! ## A196145.P15788905243109725671

`A196146(A000096(n+5)+8)`
-/

namespace A196145.P15788905243109725671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (A000096 (n + 5) + 8).toNat

end

end A196145.P15788905243109725671

/-!
# A196146: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,0,4,1,2 for x=0,1,2,3,4.

The programs for A196146, there is no canonical definition to state claims against.
-/

/-! ## A196146.P10583583538288010007

`A196287(n+1)%∏{p}[2^(n+3)+1, #]`
-/

namespace A196146.P10583583538288010007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196287 (n + 1)) ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A196146.P10583583538288010007

/-! ## A196146.P1089552679676294773

`A196337(A000005(2^n))`
-/

namespace A196146.P1089552679676294773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196337 (A000005 (2 ^ n)).toNat

end

end A196146.P1089552679676294773

/-! ## A196146.P14681822450440230615

`A325352(2*A196287(n+1))`
-/

namespace A196146.P14681822450440230615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325352 (2 * A196287 (n + 1)).toNat

end

end A196146.P14681822450440230615

/-! ## A196146.P11114108801012287995

`A196314(n+1)%A349208(n)`
-/

namespace A196146.P11114108801012287995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196314 (n + 1)) (A349208 (n + 21))

end

end A196146.P11114108801012287995

/-! ## A196146.P8371994959928572101

`A196337(n+1)%A349208(n)`
-/

namespace A196146.P8371994959928572101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196337 (n + 1)) (A349208 (n + 21))

end

end A196146.P8371994959928572101

/-!
# A196147: Bits obtained using Pi and e's digits after the decimal: if, the corresponding digits' parities (cf. even vs. odd) are the same, output is 0; otherwise, output is 1.

The programs for A196147, there is no canonical definition to state claims against.
-/

/-! ## A196147.P3037364112271215316

`Δ[A197563(n)]%2`
-/

namespace A196147.P3037364112271215316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A196147.P3037364112271215316

/-! ## A196147.P17124396440560508272

`A073212(n+1)%2`
-/

namespace A196147.P17124396440560508272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073212 (n + 1)) 2

end

end A196147.P17124396440560508272

/-! ## A196147.P653688029115785135

`A073223(n+1)%2`
-/

namespace A196147.P653688029115785135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073223 (n + 1)) 2

end

end A196147.P653688029115785135

/-! ## A196147.P17131774623631574522

`and(1, A187747(n+1))`
-/

namespace A196147.P17131774623631574522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A187747 (n + 1))

end

end A196147.P17131774623631574522

/-! ## A196147.P10239632999122771519

`and(1, A073212(C(n+1, n)))`
-/

namespace A196147.P10239632999122771519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A073212 (Nat.choose (n + 1) n))

end

end A196147.P10239632999122771519

/-! ## A196147.P9260890139476130433

`and(1, A073212(n-log2(1/2)))`
-/

namespace A196147.P9260890139476130433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A073212 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

end

end A196147.P9260890139476130433

/-! ## A196147.P9433005627465357840

`A000035(Δ[A197563(n)])`
-/

namespace A196147.P9433005627465357840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (f1 (n + 1) - f1 n).toNat

end

end A196147.P9433005627465357840

/-! ## A196147.P16583714236596386471

`A000035(A073212(n+1))`
-/

namespace A196147.P16583714236596386471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A073212 (n + 1)).toNat

end

end A196147.P16583714236596386471

/-! ## A196147.P17375349920746783178

`A010873(Δ[A197563(n)]²)`
-/

namespace A196147.P17375349920746783178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A196147.P17375349920746783178

/-! ## A196147.P17114115114429802013

`A000045(and(1, Δ[A197563(n)]))`
-/

namespace A196147.P17114115114429802013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (f1 (n + 1) - f1 n)).toNat

end

end A196147.P17114115114429802013

/-!
# A196148: Antidiagonal sums of square array A111910.

The programs for A196148, there is no canonical definition to state claims against.
-/

/-! ## A196148.P17428421392984027469

`round(A000720(∑[A053305(2*(n+1))])/4)`
-/

namespace A196148.P17428421392984027469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053305 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 4)

end

end A196148.P17428421392984027469

/-! ## A196148.P11808308748959262178

`A298405(n)+A230197((4^n+6^n)/2)`
-/

namespace A196148.P11808308748959262178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298405 n + A230197 (SequenceMachineLib.roundAway ((4 ^ n + 6 ^ n : ℚ) / 2)).toNat

end

end A196148.P11808308748959262178

/-!
# A196149: Numbers whose divisors increase by a factor of 3 or less.

The programs for A196149, there is no canonical definition to state claims against.
-/

/-! ## A196149.P8232415828527081723

`A052287(n+1)/3`
-/

namespace A196149.P8232415828527081723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052287 (n + 1) : ℚ) / 3

end

end A196149.P8232415828527081723

/-! ## A196149.P2833611199992011881

`A255591(2*A052287(n+1))`
-/

namespace A196149.P2833611199992011881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (2 * A052287 (n + 1)).toNat

end

end A196149.P2833611199992011881

/-! ## A196149.P5280175473179695558

`A002264(A052287(n+1))`
-/

namespace A196149.P5280175473179695558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A052287 (n + 1)).toNat

end

end A196149.P5280175473179695558

/-! ## A196149.P13350691368696487082

`A008611(A052287(n+1)+1)`
-/

namespace A196149.P13350691368696487082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A052287 (n + 1) + 1).toNat

end

end A196149.P13350691368696487082

/-! ## A196149.P7342867237615645751

`A008620(A052287(n+1)-1)`
-/

namespace A196149.P7342867237615645751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A052287 (n + 1) - 1).toNat

end

end A196149.P7342867237615645751

/-!
# A196150: G.f. satisfies A(x) = 1/Product_{n>=1} (1 - x^n*A(x)^2).

The programs for A196150, there is no canonical definition to state claims against.
-/

/-! ## A196150.P7395135960881982939

`Δ[Δ[A064663(A335635(n))]]`
-/

namespace A196150.P7395135960881982939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064663 (A335635 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196150.P7395135960881982939

/-! ## A196150.P12858265360424364202

`A127757(A000045(2*n)²+1)`
-/

namespace A196150.P12858265360424364202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A000045 (2 * n) ^ 2 + 1).toNat

end

end A196150.P12858265360424364202

/-!
# A196151: G.f. satisfies A(x) = Product_{n>=1} (1 + x^n*A(x)^2).

The programs for A196151, there is no canonical definition to state claims against.
-/

/-! ## A196151.P2172191292525142999

`A049123(n+1)+A028242(A049169(n))`
-/

namespace A196151.P2172191292525142999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049123 (n + 1) + A028242 (A049169 n).toNat

end

end A196151.P2172191292525142999

/-! ## A196151.P5171080602455195060

`ceil(A078174(A026671(n))/7)`
-/

namespace A196151.P5171080602455195060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078174 (A026671 n).toNat : ℚ) / 7⌉

end

end A196151.P5171080602455195060

/-! ## A196151.P6406228545827161273

`A194920(A011782(n)+A006139(n))`
-/

namespace A196151.P6406228545827161273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A011782 n + A006139 n).toNat

end

end A196151.P6406228545827161273

/-!
# A196153: Primes of the form 2*n^3 + 5*n^2 + 3*n + 1.

The programs for A196153, there is no canonical definition to state claims against.
-/

/-! ## A196153.P18175252821979587889

`p?[n*(C(2*n, 2)-1)+1]`
-/

namespace A196153.P18175252821979587889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.choose (2 * n) 2 : ℤ) - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A196153.P18175252821979587889

/-! ## A196153.P5568504529425681786

`p?[n*C(2*n+3, 2)+1]`
-/

namespace A196153.P5568504529425681786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (2 * n + 3) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A196153.P5568504529425681786

/-! ## A196153.P9562308768322561935

`p?[(2*n+3)*∑[2*n]+1]`
-/

namespace A196153.P9562308768322561935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) * (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A196153.P9562308768322561935

/-! ## A196153.P5429760581501270708

`or(1, p?[A005898(n)+A001105(n)])`
-/

namespace A196153.P5429760581501270708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n + A001105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A196153.P5429760581501270708

/-! ## A196153.P5392929270882972755

`or(1, p?[A174390(n)-A122576(n+1)])`
-/

namespace A196153.P5392929270882972755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174390 n - A122576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A196153.P5392929270882972755

/-!
# A196154: Binomial transform of A004111.

The programs for A196154, there is no canonical definition to state claims against.
-/

/-! ## A196154.P15095665890700698147

`∑[A196161(A028310(n))]-1`
-/

namespace A196154.P15095665890700698147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196161 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A196154.P15095665890700698147

/-! ## A196154.P10174856490126288472

`∑[A057427(n)*A196161(A028310(n))]`
-/

namespace A196154.P10174856490126288472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A196161 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196154.P10174856490126288472

/-! ## A196154.P11487046227439729957

`A260196(n+2)+∑[A196161(A028310(n))]`
-/

namespace A196154.P11487046227439729957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196161 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196154.P11487046227439729957

/-! ## A196154.P17978286853361492630

`∑[A196161(n+1)]-A196161(n+1)`
-/

namespace A196154.P17978286853361492630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A196161 (n + 1)

end

end A196154.P17978286853361492630

/-! ## A196154.P8730207972624759290

`∑[A196161(A028310(n))%A000984(n)]`
-/

namespace A196154.P8730207972624759290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196161 (A028310 n).toNat) (A000984 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196154.P8730207972624759290

/-!
# A196155: Positive integers a for which there is a 5-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196155, there is no canonical definition to state claims against.
-/

/-! ## A196155.P7943164536066448474

`A000196(A338316(2*(n+1))-A138088(n+1))`
-/

namespace A196155.P7943164536066448474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A338316 (2 * (n + 1)) - A138088 (n + 1)).toNat

end

end A196155.P7943164536066448474

/-! ## A196155.P17413797055791061691

`A221671(∑[A091090(A008619(n))])`
-/

namespace A196155.P17413797055791061691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221671 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196155.P17413797055791061691

/-! ## A196155.P14579454690353867298

`A067693(A088937(n+1))`
-/

namespace A196155.P14579454690353867298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (A088937 (n + 1)).toNat

end

end A196155.P14579454690353867298

/-! ## A196155.P16087793926433209636

`A029836(or(2*n, A058601(n)))`
-/

namespace A196155.P16087793926433209636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029836 (Int.lor (2 * n : ℤ) (A058601 n)).toNat

end

end A196155.P16087793926433209636

/-! ## A196155.P364320917489960042

`A221671(A047449(∑[A050326(n+1)]))`
-/

namespace A196155.P364320917489960042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221671 (A047449 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A196155.P364320917489960042

/-!
# A196159: Positive integers b for which there is a primitive 5-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196159, there is no canonical definition to state claims against.
-/

/-! ## A196159.P5869549352551664752

`A196156(A076612(n+1))`
-/

namespace A196159.P5869549352551664752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196156 (A076612 (n + 1)).toNat

end

end A196159.P5869549352551664752

/-!
# A196160: Positive integers c for which there is a primitive 5-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196160, there is no canonical definition to state claims against.
-/

/-! ## A196160.P13436868083987841998

`A196157(A076612(n+1))`
-/

namespace A196160.P13436868083987841998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196157 (A076612 (n + 1)).toNat

end

end A196160.P13436868083987841998

/-!
# A196161: Binomial transform of {A004111(n), n >= 1}.

The programs for A196161, there is no canonical definition to state claims against.
-/

/-! ## A196161.P2642284074982891078

`Δ[A196154(n)]`
-/

namespace A196161.P2642284074982891078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196161.P2642284074982891078

/-! ## A196161.P87519237958405921

`A196154(n+1)-A196154(n)`
-/

namespace A196161.P87519237958405921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196154 (n + 1) - A196154 n

end

end A196161.P87519237958405921

/-! ## A196161.P5457136556140215257

`A036234(A116736(n+1))`
-/

namespace A196161.P5457136556140215257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A116736 (n + 1)).toNat

end

end A196161.P5457136556140215257

/-! ## A196161.P10485956433375452466

`A333069(A073790(n+1))`
-/

namespace A196161.P10485956433375452466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333069 (A073790 (n + 1)).toNat

end

end A196161.P10485956433375452466

/-!
# A196162: Positive integers a for which there is a 6-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196162, there is no canonical definition to state claims against.
-/

/-! ## A196162.P13688556027241718209

`A196390(lt[A196098(n+1), A196392(n+1)])`
-/

namespace A196162.P13688556027241718209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196390 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196162.P13688556027241718209

/-! ## A196162.P2491611995685679010

`A130249(∑[A171199(A003056(n))])`
-/

namespace A196162.P2491611995685679010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171199 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130249 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196162.P2491611995685679010

/-! ## A196162.P704944371056325522

`A185283(A276571(∑[∑[n+5]]))`
-/

namespace A196162.P704944371056325522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A276571 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A196162.P704944371056325522

/-! ## A196162.P3915903047673793787

`A130249(A126312(n)+2*n+1)`
-/

namespace A196162.P3915903047673793787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130249 (A126312 n + (2 * n + 1 : ℤ)).toNat

end

end A196162.P3915903047673793787

/-! ## A196162.P4127819698539844077

`A130249(A188258(n+1)+A126312(n))`
-/

namespace A196162.P4127819698539844077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130249 (A188258 (n + 1) + A126312 n).toNat

end

end A196162.P4127819698539844077

/-!
# A196165: Positive integers a for which there is a primitive 6-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196165, there is no canonical definition to state claims against.
-/

/-! ## A196165.P13171281838042369561

`A124761(A034559(n+1))+A020892(n+1)`
-/

namespace A196165.P13171281838042369561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A034559 (n + 1)).toNat + A020892 (n + 1)

end

end A196165.P13171281838042369561

/-! ## A196165.P2558860632696354923

`A175398(A034562(n+1))+A020892(n+1)`
-/

namespace A196165.P2558860632696354923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175398 (A034562 (n + 1)).toNat + A020892 (n + 1)

end

end A196165.P2558860632696354923

/-! ## A196165.P14755915530325540506

`A124761(A034559(n+1))+A020891(n+1)/2`
-/

namespace A196165.P14755915530325540506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124761 (A034559 (n + 1)).toNat : ℚ) + (A020891 (n + 1) : ℚ) / 2

end

end A196165.P14755915530325540506

/-! ## A196165.P3952325149742843093

`A175398(A034562(n+1))+A020891(n+1)/2`
-/

namespace A196165.P3952325149742843093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175398 (A034562 (n + 1)).toNat : ℚ) + (A020891 (n + 1) : ℚ) / 2

end

end A196165.P3952325149742843093

/-! ## A196165.P2723551666199145581

`A124761(A034559(n+1))-A001057(A020891(n+1))`
-/

namespace A196165.P2723551666199145581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A034559 (n + 1)).toNat - A001057 (A020891 (n + 1)).toNat

end

end A196165.P2723551666199145581

/-!
# A196166: Positive integers b for which there is a primitive 6-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196166, there is no canonical definition to state claims against.
-/

/-! ## A196166.P16294976056406215069

`A325678(A001043(n+1))+A156680(n+1)`
-/

namespace A196166.P16294976056406215069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A001043 (n + 1)).toNat + A156680 (n + 1)

end

end A196166.P16294976056406215069

/-! ## A196166.P1148711462449975150

`A156679(n+1)-A325678(A001043(n+1))`
-/

namespace A196166.P1148711462449975150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156679 (n + 1) - A325678 (A001043 (n + 1)).toNat

end

end A196166.P1148711462449975150

/-! ## A196166.P6388625419660398548

`A263728(3*(n+1))-A325678(A001043(n+1))`
-/

namespace A196166.P6388625419660398548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263728 (3 * (n + 1)) - A325678 (A001043 (n + 1)).toNat

end

end A196166.P6388625419660398548

/-! ## A196166.P13680828452812821873

`A156678(n+1)+A030379(A001006(n))-A020892(n+1)`
-/

namespace A196166.P13680828452812821873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156678 (n + 1) + (A030379 (A001006 n).toNat - A020892 (n + 1))

end

end A196166.P13680828452812821873

/-! ## A196166.P16296917685585478234

`A156678(n+1)+A030379(A001006(n))-A196165(n+1)`
-/

namespace A196166.P16296917685585478234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156678 (n + 1) + (A030379 (A001006 n).toNat - A196165 (n + 1))

end

end A196166.P16296917685585478234

/-!
# A196167: Positive integers c for which there is a primitive 6-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196167, there is no canonical definition to state claims against.
-/

/-! ## A196167.P9265167143997423882

`filter[A196395(n+3), A357298(#)]`
-/

namespace A196167.P9265167143997423882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196395 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A357298 (f1 j).toNat = 1) n)

end

end A196167.P9265167143997423882

/-! ## A196167.P9899937903182126388

`A196395(lt[A055580(n), A215022(n)])`
-/

namespace A196167.P9899937903182126388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055580 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196395 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196167.P9899937903182126388

/-! ## A196167.P14523881711134565895

`A196395(lt[A178932(n), A126316(n)])`
-/

namespace A196167.P14523881711134565895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196395 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196167.P14523881711134565895

/-! ## A196167.P4049316616048161483

`A156678(A032555(n+1))+A020884(n+1)`
-/

namespace A196167.P4049316616048161483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156678 (A032555 (n + 1)).toNat + A020884 (n + 1)

end

end A196167.P4049316616048161483

/-!
# A196168: In binary representation of n: replace each 0 with 1, and each 1 with 10.

The programs for A196168, the canonical program `A196168.P4036027771735209570` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196168 has offset 0).

The definition of A196168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196168.P11854990641234750196

`log2(gcd(2, n))+(3-(-1)^n)*a(floor(n/2))+1-(-1)^n` with `a(0)=1, a(1)=2`
-/

namespace A196168.P11854990641234750196
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) + ((3 - (-1) ^ n : ℝ) * a ⌊(n : ℚ) / 2⌋.toNat + (1 - (-1) ^ n : ℝ))

end

end A196168.P11854990641234750196

namespace A196168

/-- `log2(gcd(2, n))+(3-(-1)^n)*a(floor(n/2))+1-(-1)^n` -/
def P11854990641234750196.Spec : Prop :=
  ∀ n, P11854990641234750196.a n = (A196168 n : ℝ)

end A196168

/-! ## A196168.P4036027771735209570

`xor(1, n%2+(3-(-1)^n)*a(floor(n/2))+1-(-1)^n)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A196168

/-- `xor(1, n%2+(3-(-1)^n)*a(floor(n/2))+1-(-1)^n)` -/
def P4036027771735209570.Spec : Prop :=
  ∀ n, P4036027771735209570.a n = A196168 n

theorem P4036027771735209570.correct : P4036027771735209570.Spec := by
  intro n
  simp only [A196168]

end A196168

/-! ## A196168.P16423686186251006776

`∑[(-1)^n]+2*a(A029578(n))` with `a(0)=1`
-/

namespace A196168.P16423686186251006776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * a (A029578 n).toNat

end

end A196168.P16423686186251006776

namespace A196168

/-- `∑[(-1)^n]+2*a(A029578(n))` -/
def P16423686186251006776.Spec : Prop :=
  ∀ n, P16423686186251006776.a n = A196168 n

end A196168

/-! ## A196168.P15999824854590018120

`or(A088697(A035327(n)), A124108(n))`
-/

namespace A196168.P15999824854590018120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088697 (A035327 n).toNat) (A124108 n)

end

end A196168.P15999824854590018120

namespace A196168

/-- `or(A088697(A035327(n)), A124108(n))` -/
def P15999824854590018120.Spec : Prop :=
  ∀ n, P15999824854590018120.a n = A196168 n

end A196168

/-! ## A196168.P10007174160067162699

`A010078(A048678(n)+1)`
-/

namespace A196168.P10007174160067162699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A048678 n + 1).toNat

end

end A196168.P10007174160067162699

namespace A196168

/-- `A010078(A048678(n)+1)` -/
def P10007174160067162699.Spec : Prop :=
  ∀ n, P10007174160067162699.a n = A196168 n

end A196168

/-! ## A196168.P12581089366796492395

`A010078(A124108(n)/2+1)`
-/

namespace A196168.P12581089366796492395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (SequenceMachineLib.roundAway ((A124108 n : ℚ) / 2 + 1)).toNat

end

end A196168.P12581089366796492395

namespace A196168

/-- `A010078(A124108(n)/2+1)` -/
def P12581089366796492395.Spec : Prop :=
  ∀ n, P12581089366796492395.a n = A196168 n

end A196168

/-! ## A196168.P7828786411866831624

`or(A035327(A048678(n)), A124108(n))`
-/

namespace A196168.P7828786411866831624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035327 (A048678 n).toNat) (A124108 n)

end

end A196168.P7828786411866831624

namespace A196168

/-- `or(A035327(A048678(n)), A124108(n))` -/
def P7828786411866831624.Spec : Prop :=
  ∀ n, P7828786411866831624.a n = A196168 n

end A196168

/-! ## A196168.P7416059739119659640

`A010078(xor(A010684(n), A048678(n)))`
-/

namespace A196168.P7416059739119659640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (Int.xor (A010684 n) (A048678 n)).toNat

end

end A196168.P7416059739119659640

namespace A196168

/-- `A010078(xor(A010684(n), A048678(n)))` -/
def P7416059739119659640.Spec : Prop :=
  ∀ n, P7416059739119659640.a n = A196168 n

end A196168

/-! ## A196168.P17220079162486129515

`or(A035327(A048678(n)), A048678(2*n))`
-/

namespace A196168.P17220079162486129515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035327 (A048678 n).toNat) (A048678 (2 * n))

end

end A196168.P17220079162486129515

namespace A196168

/-- `or(A035327(A048678(n)), A048678(2*n))` -/
def P17220079162486129515.Spec : Prop :=
  ∀ n, P17220079162486129515.a n = A196168 n

end A196168

/-! ## A196168.P1272355843391890493

`or(A035327(A124108(n)/2), A124108(n))`
-/

namespace A196168.P1272355843391890493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A035327 (SequenceMachineLib.roundAway ((A124108 n : ℚ) / 2)).toNat) (A124108 n)

end

end A196168.P1272355843391890493

namespace A196168

/-- `or(A035327(A124108(n)/2), A124108(n))` -/
def P1272355843391890493.Spec : Prop :=
  ∀ n, P1272355843391890493.a n = A196168 n

end A196168

/-! ## A196168.P15982382505944828822

`A005408(a(A029578(n)))-n%2` with `a(0)=1`
-/

namespace A196168.P15982382505944828822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005408 (a (A029578 n).toNat).toNat - ((n % 2 : ℕ) : ℤ)

end

end A196168.P15982382505944828822

namespace A196168

/-- `A005408(a(A029578(n)))-n%2` -/
def P15982382505944828822.Spec : Prop :=
  ∀ n, P15982382505944828822.a n = A196168 n

end A196168

/-! ## A196168.P13950656623609445423

`A010078(A008611(A088698(n)))`
-/

namespace A196168.P13950656623609445423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A008611 (A088698 n).toNat).toNat

end

end A196168.P13950656623609445423

namespace A196168

/-- `A010078(A008611(A088698(n)))` -/
def P13950656623609445423.Spec : Prop :=
  ∀ n, P13950656623609445423.a n = A196168 n

end A196168

/-! ## A196168.P12984480026556268902

`A010078(A008619(A124108(n)))`
-/

namespace A196168.P12984480026556268902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A008619 (A124108 n).toNat).toNat

end

end A196168.P12984480026556268902

namespace A196168

/-- `A010078(A008619(A124108(n)))` -/
def P12984480026556268902.Spec : Prop :=
  ∀ n, P12984480026556268902.a n = A196168 n

end A196168

/-! ## A196168.P3546299597909426285

`A124108(n)+A035327(A088698(n))`
-/

namespace A196168.P3546299597909426285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124108 n + A035327 (A088698 n).toNat

end

end A196168.P3546299597909426285

namespace A196168

/-- `A124108(n)+A035327(A088698(n))` -/
def P3546299597909426285.Spec : Prop :=
  ∀ n, P3546299597909426285.a n = A196168 n

end A196168

/-! ## A196168.P15313109736971422483

`A048678(n)+A035327(2*A048678(n))`
-/

namespace A196168.P15313109736971422483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 n + A035327 (2 * A048678 n).toNat

end

end A196168.P15313109736971422483

namespace A196168

/-- `A048678(n)+A035327(2*A048678(n))` -/
def P15313109736971422483.Spec : Prop :=
  ∀ n, P15313109736971422483.a n = A196168 n

end A196168

/-!
# A196169: Positive integers a for which there is a 7-Pythagorean triple (a,b,c) satisfying a<=b (includes multiplicities).

The programs for A196169, there is no canonical definition to state claims against.
-/

/-! ## A196169.P13368684211237230282

`∑[floor(A196176(n+1)/A196170(n+1))]`
-/

namespace A196169.P13368684211237230282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196176 (n + 1) : ℚ) / (A196170 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196169.P13368684211237230282

/-! ## A196169.P10960138840963460753

`∑[floor(A196183(n+1)/A196170(n+1))]`
-/

namespace A196169.P10960138840963460753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196183 (n + 1) : ℚ) / (A196170 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196169.P10960138840963460753

/-! ## A196169.P7944976846932044133

`∑[floor(A196369(n+1)/A196170(n+1))]`
-/

namespace A196169.P7944976846932044133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196369 (n + 1) : ℚ) / (A196170 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196169.P7944976846932044133

/-! ## A196169.P6020774494101895033

`∑[floor(A287355(n+1)/A196170(n+1))]`
-/

namespace A196169.P6020774494101895033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A287355 (n + 1) : ℚ) / (A196170 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196169.P6020774494101895033

/-! ## A196169.P12753665530394546245

`A000196(lt[A050333(n+1), A046205(n+1)])`
-/

namespace A196169.P12753665530394546245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196169.P12753665530394546245

/-!
# A196175: Positions of local minima in A001223.

The programs for A196175, the canonical program `A196175.P3423915434805882668` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196175 has offset 1).

The definition of A196175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196175.P16962266639906245425

`∩[A046868(n+1), A066485(n+1)]`
-/

namespace A196175.P16962266639906245425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196175.P16962266639906245425

namespace A196175

/-- `∩[A046868(n+1), A066485(n+1)]` -/
def P16962266639906245425.Spec : Prop :=
  ∀ n, (P16962266639906245425.a n : ℤ) = A196175 (n + 1)

end A196175

/-! ## A196175.P11954245974929297778

`∩[A066485(n+1), A333230(n+1)]`
-/

namespace A196175.P11954245974929297778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196175.P11954245974929297778

namespace A196175

/-- `∩[A066485(n+1), A333230(n+1)]` -/
def P11954245974929297778.Spec : Prop :=
  ∀ n, (P11954245974929297778.a n : ℤ) = A196175 (n + 1)

end A196175

/-! ## A196175.P15539081260054624373

`∩[A066485(n+1), A258026(n+1)+1]`
-/

namespace A196175.P15539081260054624373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258026 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196175.P15539081260054624373

namespace A196175

/-- `∩[A066485(n+1), A258026(n+1)+1]` -/
def P15539081260054624373.Spec : Prop :=
  ∀ n, (P15539081260054624373.a n : ℤ) = A196175 (n + 1)

end A196175

/-! ## A196175.P17822889099216735736

`∩[A066485(n+1), A233671(n+1)-1]`
-/

namespace A196175.P17822889099216735736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196175.P17822889099216735736

namespace A196175

/-- `∩[A066485(n+1), A233671(n+1)-1]` -/
def P17822889099216735736.Spec : Prop :=
  ∀ n, (P17822889099216735736.a n : ℤ) = A196175 (n + 1)

end A196175

/-! ## A196175.P3423915434805882668

`eq[2, Δ[Δ[A092243(n+1)]]]+2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A196175

/-- `eq[2, Δ[Δ[A092243(n+1)]]]+2` -/
def P3423915434805882668.Spec : Prop :=
  ∀ n, (P3423915434805882668.a n : ℤ) = A196175 (n + 1)

theorem P3423915434805882668.correct : P3423915434805882668.Spec := by
  intro n
  simp only [A196175, Nat.add_sub_cancel]

end A196175

/-! ## A196175.P878440085839707076

`filter[A066485(n+1), A139312(#)]`
-/

namespace A196175.P878440085839707076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A139312 (f1 j).toNat = 1) n)

end

end A196175.P878440085839707076

namespace A196175

/-- `filter[A066485(n+1), A139312(#)]` -/
def P878440085839707076.Spec : Prop :=
  ∀ n, P878440085839707076.a n = A196175 (n + 1)

end A196175

/-! ## A196175.P14314882470413331877

`∩[A066485(n+1), A258025(n+1)]`
-/

namespace A196175.P14314882470413331877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196175.P14314882470413331877

namespace A196175

/-- `∩[A066485(n+1), A258025(n+1)]` -/
def P14314882470413331877.Spec : Prop :=
  ∀ n, (P14314882470413331877.a n : ℤ) = A196175 (n + 1)

end A196175

/-! ## A196175.P17006006720448125095

`∩[A049084(A051634(n+1)), A258025(n+1)]`
-/

namespace A196175.P17006006720448125095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A051634 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196175.P17006006720448125095

namespace A196175

/-- `∩[A049084(A051634(n+1)), A258025(n+1)]` -/
def P17006006720448125095.Spec : Prop :=
  ∀ n, (P17006006720448125095.a n : ℤ) = A196175 (n + 1)

end A196175

/-!
# A196176: Positive integers a for which there is an 8-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196176, there is no canonical definition to state claims against.
-/

/-! ## A196176.P16828432848132281855

`A171626(A045795(n+2))`
-/

namespace A196176.P16828432848132281855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171626 (A045795 (n + 2)).toNat

end

end A196176.P16828432848132281855

/-! ## A196176.P4948710237728477142

`A038605(∑[A136681(n+1)])`
-/

namespace A196176.P4948710237728477142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196176.P4948710237728477142

/-! ## A196176.P8841875835146618977

`A003056(lt[A247130(n+1), 0])`
-/

namespace A196176.P8841875835146618977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247130 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A196176.P8841875835146618977

/-! ## A196176.P6844532582859622693

`A003056(∑[2%A291159(n+5)])`
-/

namespace A196176.P6844532582859622693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A291159 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A196176.P6844532582859622693

/-! ## A196176.P9079656341099589176

`A000196(A344154(2*n+1)-A089840(n))`
-/

namespace A196176.P9079656341099589176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A344154 (2 * n + 1) - A089840 n).toNat

end

end A196176.P9079656341099589176

/-!
# A196180: Positive integers b for which there is a primitive 8-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196180, there is no canonical definition to state claims against.
-/

/-! ## A196180.P18113058315714699809

`A196177(A195778(n+1)+A004890(n+1))`
-/

namespace A196180.P18113058315714699809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196177 (A195778 (n + 1) + A004890 (n + 1)).toNat

end

end A196180.P18113058315714699809

/-!
# A196181: Positive integers c for which there is a primitive 8-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196181, there is no canonical definition to state claims against.
-/

/-! ## A196181.P641603974666468204

`A196178(A004890(n+1)+A002487(2*n+1))`
-/

namespace A196181.P641603974666468204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196178 (A004890 (n + 1) + A002487 (2 * n + 1)).toNat

end

end A196181.P641603974666468204

/-!
# A196182: Triangle T(n,k), read by rows, given by (0,1,1,0,1,1,0,1,1,0,1,1,0,...) DELTA (1,0,0,1,0,0,1,0,0,1,0,0,1,...) where DELTA is the operator defined in A084938.

The programs for A196182, there is no canonical definition to state claims against.
-/

/-! ## A196182.P8423816092149544946

`A111660(A009998(n)+A004248(n))`
-/

namespace A196182.P8423816092149544946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A009998 n + A004248 n).toNat

end

end A196182.P8423816092149544946

/-! ## A196182.P18006943595061311751

`A111660(A179927(n)+A000007(n))`
-/

namespace A196182.P18006943595061311751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A179927 n + A000007 n).toNat

end

end A196182.P18006943595061311751

/-! ## A196182.P2687714387610700020

`A111660(A179927(n)+A010893(n))`
-/

namespace A196182.P2687714387610700020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A179927 n + A010893 (n + 13)).toNat

end

end A196182.P2687714387610700020

/-! ## A196182.P4481656056977191885

`A198792(n)+A058276(A050446(n))`
-/

namespace A196182.P4481656056977191885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198792 n + A058276 (A050446 n).toNat

end

end A196182.P4481656056977191885

/-! ## A196182.P17073702283438807228

`gcd(A111660(A179927(n)), A196389(n))`
-/

namespace A196182.P17073702283438807228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111660 (A179927 n).toNat) (A196389 n)

end

end A196182.P17073702283438807228

/-!
# A196187: Positive integers b for which there is a primitive 9-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196187, there is no canonical definition to state claims against.
-/

/-! ## A196187.P14471081121980916587

`A196184(eq[1, A339396(n)])`
-/

namespace A196187.P14471081121980916587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196184 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196187.P14471081121980916587

/-!
# A196188: Positive integers c for which there is a primitive 9-Pythagorean triple (a,b,c) satisfying a<=b.

The programs for A196188, there is no canonical definition to state claims against.
-/

/-! ## A196188.P5365136318523100171

`A196185(eq[1, A339396(n)])`
-/

namespace A196188.P5365136318523100171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196185 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196188.P5365136318523100171

/-!
# A196192: G.f. satisfies A(x) = 1/Product_{n>=1} (1 - x^n*A(x^n)^2).

The programs for A196192, there is no canonical definition to state claims against.
-/

/-! ## A196192.P14605340917890989398

`A108954(A118342(n))`
-/

namespace A196192.P14605340917890989398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A118342 n).toNat

end

end A196192.P14605340917890989398

/-! ## A196192.P6432500947555478591

`A108954(A263917(∑[n]))`
-/

namespace A196192.P6432500947555478591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A263917 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A196192.P6432500947555478591

/-!
# A196193: E.g.f.: 1 + Sum_{n>=1} x^n/n! * Product_{k=1..n} (exp(k*x)-1)/(exp(x)-1).

The programs for A196193, there is no canonical definition to state claims against.
-/

/-! ## A196193.P9990000180707228558

`A102563(A025164(n))+1`
-/

namespace A196193.P9990000180707228558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102563 (A025164 n).toNat + 1

end

end A196193.P9990000180707228558

/-! ## A196193.P13220109215173987308

`A195174(4*A323772(n))`
-/

namespace A196193.P13220109215173987308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (4 * A323772 n).toNat

end

end A196193.P13220109215173987308

/-!
# A196194: E.g.f.: 1 + Sum_{n>=1} x^n * Product_{k=1..n} (exp(k*x)-1)/(exp(x)-1).

The programs for A196194, there is no canonical definition to state claims against.
-/

/-! ## A196194.P6593097107843890086

`A145357(a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A196194.P6593097107843890086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A145357 (a (n - 1)).toNat

end

end A196194.P6593097107843890086

/-!
# A196195: G.f. satisfies: A(x) = Sum_{n>=0} x^n*(A(x)^n + A(-x)^n)/2.

The programs for A196195, there is no canonical definition to state claims against.
-/

/-! ## A196195.P4977087158619804883

`A123586(A357931(n+1))`
-/

namespace A196195.P4977087158619804883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123586 (A357931 (n + 1)).toNat

end

end A196195.P4977087158619804883

/-!
# A196199: Count up from -n to n for n = 0, 1, 2, ... .

The programs for A196199, the canonical program `A196199.P3919230471390252242` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196199 has offset 0).

The definition of A196199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196199.P3919230471390252242

`n-floor(sqrt(n))-floor(sqrt(n))²`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A196199

/-- `n-floor(sqrt(n))-floor(sqrt(n))²` -/
def P3919230471390252242.Spec : Prop :=
  ∀ n, P3919230471390252242.a n = A196199 n

theorem P3919230471390252242.correct : P3919230471390252242.Spec := by
  intro n
  simp only [A196199]

end A196199

/-! ## A196199.P17752232696837423472

`-A381232(n)`
-/

namespace A196199.P17752232696837423472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A381232 n

end

end A196199.P17752232696837423472

namespace A196199

/-- `-A381232(n)` -/
def P17752232696837423472.Spec : Prop :=
  ∀ n, P17752232696837423472.a n = A196199 n

theorem P17752232696837423472.correct : P17752232696837423472.Spec := by
  intro n
  simp only [A196199, Nat.add_sub_cancel, A196199.P17752232696837423472.a, A196199.P3919230471390252242.a, A381232, A381232.P8771641921475039308.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196199

/-! ## A196199.P17844031759947063663

`ceil((n-A020703(n+1))/2)`
-/

namespace A196199.P17844031759947063663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A020703 (n + 1) : ℚ) / 2⌉

end

end A196199.P17844031759947063663

namespace A196199

/-- `ceil((n-A020703(n+1))/2)` -/
def P17844031759947063663.Spec : Prop :=
  ∀ n, P17844031759947063663.a n = A196199 n

end A196199

/-! ## A196199.P13792270061020279301

`A053615(n)*(-1)^ceil(sqrt(4*n+1))`
-/

namespace A196199.P13792270061020279301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053615 n : ℚ) * (-1 : ℚ) ^ (⌈Real.sqrt (4 * n + 1 : ℝ)⌉ : ℤ)

end

end A196199.P13792270061020279301

namespace A196199

/-- `A053615(n)*(-1)^ceil(sqrt(4*n+1))` -/
def P13792270061020279301.Spec : Prop :=
  ∀ n, P13792270061020279301.a n = (A196199 n : ℚ)

end A196199

/-! ## A196199.P1433600677437603894

`A130472(A253580(n))`
-/

namespace A196199.P1433600677437603894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (A253580 n).toNat

end

end A196199.P1433600677437603894

namespace A196199

/-- `A130472(A253580(n))` -/
def P1433600677437603894.Spec : Prop :=
  ∀ n, P1433600677437603894.a n = A196199 n

end A196199

/-! ## A196199.P12379543303482940541

`A057428(n)*A381232(n)`
-/

namespace A196199.P12379543303482940541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A381232 n

end

end A196199.P12379543303482940541

namespace A196199

/-- `A057428(n)*A381232(n)` -/
def P12379543303482940541.Spec : Prop :=
  ∀ n, P12379543303482940541.a n = A196199 n

end A196199

/-! ## A196199.P11772169427379486803

`A329116(n)*A339265(n)`
-/

namespace A196199.P11772169427379486803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n * A339265 n

end

end A196199.P11772169427379486803

namespace A196199

/-- `A329116(n)*A339265(n)` -/
def P11772169427379486803.Spec : Prop :=
  ∀ n, P11772169427379486803.a n = A196199 n

end A196199

/-! ## A196199.P11325853392141388159

`A153881(n+1)*A381232(n)`
-/

namespace A196199.P11325853392141388159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A381232 n

end

end A196199.P11325853392141388159

namespace A196199

/-- `A153881(n+1)*A381232(n)` -/
def P11325853392141388159.Spec : Prop :=
  ∀ n, P11325853392141388159.a n = A196199 n

end A196199

/-! ## A196199.P2492524017220624808

`(A071797(n+1)-A080883(n))/2`
-/

namespace A196199.P2492524017220624808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071797 (n + 1) - A080883 n : ℚ) / 2

end

end A196199.P2492524017220624808

namespace A196199

/-- `(A071797(n+1)-A080883(n))/2` -/
def P2492524017220624808.Spec : Prop :=
  ∀ n, P2492524017220624808.a n = (A196199 n : ℚ)

end A196199

/-! ## A196199.P15110944028839486126

`(A255175(n)-A329116(n))*A329116(n)`
-/

namespace A196199.P15110944028839486126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A255175 n - A329116 n) * A329116 n

end

end A196199.P15110944028839486126

namespace A196199

/-- `(A255175(n)-A329116(n))*A329116(n)` -/
def P15110944028839486126.Spec : Prop :=
  ∀ n, P15110944028839486126.a n = A196199 n

end A196199

/-! ## A196199.P87231940258415972

`(A255175(n)-A339265(n))*A339265(n)`
-/

namespace A196199.P87231940258415972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A255175 n - A339265 n) * A339265 n

end

end A196199.P87231940258415972

namespace A196199

/-- `(A255175(n)-A339265(n))*A339265(n)` -/
def P87231940258415972.Spec : Prop :=
  ∀ n, P87231940258415972.a n = A196199 n

end A196199

/-! ## A196199.P14762473933898448620

`(A053188(n)-A053188(n+1))*A053615(n)`
-/

namespace A196199.P14762473933898448620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053188 n - A053188 (n + 1)) * A053615 n

end

end A196199.P14762473933898448620

namespace A196199

/-- `(A053188(n)-A053188(n+1))*A053615(n)` -/
def P14762473933898448620.Spec : Prop :=
  ∀ n, P14762473933898448620.a n = A196199 n

end A196199

/-! ## A196199.P3692697031876987044

`(A329116(n+1)-A329116(n))*A329116(n)`
-/

namespace A196199.P3692697031876987044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A329116 (n + 1) - A329116 n) * A329116 n

end

end A196199.P3692697031876987044

namespace A196199

/-- `(A329116(n+1)-A329116(n))*A329116(n)` -/
def P3692697031876987044.Spec : Prop :=
  ∀ n, P3692697031876987044.a n = A196199 n

end A196199

/-! ## A196199.P12574942489526108372

`Δ[A053615(n)]*A053615(n)`
-/

namespace A196199.P12574942489526108372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A053615 n

end

end A196199.P12574942489526108372

namespace A196199

/-- `Δ[A053615(n)]*A053615(n)` -/
def P12574942489526108372.Spec : Prop :=
  ∀ n, P12574942489526108372.a n = A196199 n

end A196199

/-! ## A196199.P10262243044300573942

`A381232(n)/A057428(n+1)`
-/

namespace A196199.P10262243044300573942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381232 n : ℚ) / (A057428 (n + 1) : ℚ)

end

end A196199.P10262243044300573942

namespace A196199

/-- `A381232(n)/A057428(n+1)` -/
def P10262243044300573942.Spec : Prop :=
  ∀ n, P10262243044300573942.a n = (A196199 n : ℚ)

theorem P10262243044300573942.correct : P10262243044300573942.Spec := by
  intro n
  simp only [A196199, Nat.add_sub_cancel, A196199.P10262243044300573942.a, A196199.P3919230471390252242.a, A057428, A057428.P2999489532230392221.a, A381232, A381232.P8771641921475039308.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A196199

/-! ## A196199.P15897089272167546010

`(A053615(n+1)-A053615(n))*A053615(n)`
-/

namespace A196199.P15897089272167546010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053615 (n + 1) - A053615 n) * A053615 n

end

end A196199.P15897089272167546010

namespace A196199

/-- `(A053615(n+1)-A053615(n))*A053615(n)` -/
def P15897089272167546010.Spec : Prop :=
  ∀ n, P15897089272167546010.a n = A196199 n

end A196199

/-! ## A196199.P113814049928115340

`A038760(A130819(n+1)+n)`
-/

namespace A196199.P113814049928115340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038760 (A130819 (n + 1) + (n : ℤ)).toNat

end

end A196199.P113814049928115340

namespace A196199

/-- `A038760(A130819(n+1)+n)` -/
def P113814049928115340.Spec : Prop :=
  ∀ n, P113814049928115340.a n = A196199 n

end A196199

/-! ## A196199.P1199218490617271383

`A038760(2*A003059(n+1)+n)`
-/

namespace A196199.P1199218490617271383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038760 (2 * A003059 (n + 1) + (n : ℤ)).toNat

end

end A196199.P1199218490617271383

namespace A196199

/-- `A038760(2*A003059(n+1)+n)` -/
def P1199218490617271383.Spec : Prop :=
  ∀ n, P1199218490617271383.a n = A196199 n

end A196199

/-! ## A196199.P16658781115249564441

`A339265(n)*A359216(2*n)`
-/

namespace A196199.P16658781115249564441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339265 n * A359216 (2 * n)

end

end A196199.P16658781115249564441

namespace A196199

/-- `A339265(n)*A359216(2*n)` -/
def P16658781115249564441.Spec : Prop :=
  ∀ n, P16658781115249564441.a n = A196199 n

end A196199

/-! ## A196199.P15563838547965276053

`A010751(A161983(n))`
-/

namespace A196199.P15563838547965276053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010751 (A161983 n).toNat

end

end A196199.P15563838547965276053

namespace A196199

/-- `A010751(A161983(n))` -/
def P15563838547965276053.Spec : Prop :=
  ∀ n, P15563838547965276053.a n = A196199 n

end A196199

