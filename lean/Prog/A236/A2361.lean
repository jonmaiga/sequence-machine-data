import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A236102: Numbers whose divisors are partition numbers.

The programs for A236102, there is no canonical definition to state claims against.
-/

/-! ## A236102.P6566452025955984370

`A000041(lt[A096371(n), 2*n])`
-/

namespace A236102.P6566452025955984370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096371 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A236102.P6566452025955984370

/-! ## A236102.P15564988087460594112

`A000041(lt[A096371(n)/2, n])`
-/

namespace A236102.P15564988087460594112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096371 n : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A236102.P15564988087460594112

/-! ## A236102.P14874395049374194728

`A000041(lt[A096371(n)-n, n])`
-/

namespace A236102.P14874395049374194728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096371 n - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A236102.P14874395049374194728

/-! ## A236102.P3311013191155558939

`A000041(lt[A096371(n)², A004273(n)²])`
-/

namespace A236102.P3311013191155558939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096371 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A236102.P3311013191155558939

/-! ## A236102.P3805762296232724746

`A001055(2^A032972(n+1))`
-/

namespace A236102.P3805762296232724746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A032972 (n + 1) : ℤ))).toNat

end

end A236102.P3805762296232724746

/-!
# A236103: Number of distinct partition numbers dividing n.

The programs for A236103, there is no canonical definition to state claims against.
-/

/-! ## A236103.P5452984467828212566

`∑{d}[n+1, A167392(#)]`
-/

namespace A236103.P5452984467828212566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A167392 d

end

end A236103.P5452984467828212566

/-! ## A236103.P6388787469149761891

`∑{d}[n+1, A193870(A000217(#))]`
-/

namespace A236103.P6388787469149761891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A193870 (A000217 d).toNat

end

end A236103.P6388787469149761891

/-! ## A236103.P1181513346574965968

`A288729(A000567(3*n+2))+A187279(n+1)`
-/

namespace A236103.P1181513346574965968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288729 (A000567 (3 * n + 2)).toNat + A187279 (n + 1)

end

end A236103.P1181513346574965968

/-! ## A236103.P1199084888417906490

`A001221(A135769(n+2)-(n+1))`
-/

namespace A236103.P1199084888417906490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A135769 (n + 2) - (n + 1 : ℤ)).toNat

end

end A236103.P1199084888417906490

/-! ## A236103.P5091477577633720843

`∑{d}[∏{p}[n+1, #], A047999(A233174(#))]`
-/

namespace A236103.P5091477577633720843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A047999 (A233174 d).toNat

end

end A236103.P5091477577633720843

/-!
# A236104: Triangle read by rows: T(n,k), n >= 1, k >= 1, in which column k lists k copies of the positive squares in nondecreasing order, and the first element of column k is in row k(k+1)/2.

The programs for A236104, there is no canonical definition to state claims against.
-/

/-! ## A236104.P7799893571106711940

`((A338721(n+1)+1)/2)²`
-/

namespace A236104.P7799893571106711940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A338721 (n + 1) + 1 : ℚ) / 2) ^ 2

end

end A236104.P7799893571106711940

/-! ## A236104.P2314619441136848692

`A079097(A338721(n+1))`
-/

namespace A236104.P2314619441136848692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (A338721 (n + 1)).toNat

end

end A236104.P2314619441136848692

/-! ## A236104.P5711288376083785889

`A000463(A338721(n+1)+1)`
-/

namespace A236104.P5711288376083785889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A338721 (n + 1) + 1).toNat

end

end A236104.P5711288376083785889

/-! ## A236104.P16713584864243393188

`A004652(A338721(n+1)+1)`
-/

namespace A236104.P16713584864243393188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A338721 (n + 1) + 1).toNat

end

end A236104.P16713584864243393188

/-! ## A236104.P2757261517075037373

`A001281(A338721(n+1)+1)²`
-/

namespace A236104.P2757261517075037373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A338721 (n + 1) + 1).toNat ^ 2

end

end A236104.P2757261517075037373

/-! ## A236104.P2184859775679242184

`A004526(A338721(n+1)+1)²`
-/

namespace A236104.P2184859775679242184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A338721 (n + 1) + 1).toNat ^ 2

end

end A236104.P2184859775679242184

/-! ## A236104.P2561059451800454211

`A004524(A338721(n+1)+2)²`
-/

namespace A236104.P2561059451800454211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A338721 (n + 1) + 2).toNat ^ 2

end

end A236104.P2561059451800454211

/-! ## A236104.P17919381135120333021

`A235791(n+1)²`
-/

namespace A236104.P17919381135120333021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235791 (n + 1) ^ 2

end

end A236104.P17919381135120333021

/-! ## A236104.P5005965525115149678

`A002620(2*A235791(n+1))`
-/

namespace A236104.P5005965525115149678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A235791 (n + 1)).toNat

end

end A236104.P5005965525115149678

/-! ## A236104.P12845425405040954244

`A004652(2*A235791(n+1))`
-/

namespace A236104.P12845425405040954244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A235791 (n + 1)).toNat

end

end A236104.P12845425405040954244

/-! ## A236104.P11078582789649251442

`A002620(A235791(n+1)+A235791(n+1))`
-/

namespace A236104.P11078582789649251442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A235791 (n + 1) + A235791 (n + 1)).toNat

end

end A236104.P11078582789649251442

/-! ## A236104.P16587418830596063474

`A235791(A008619(2*n))*A235791(n+1)`
-/

namespace A236104.P16587418830596063474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235791 (A008619 (2 * n)).toNat * A235791 (n + 1)

end

end A236104.P16587418830596063474

/-! ## A236104.P12536902240474733460

`A235791(n+1)^A020639(A005843(n+1))`
-/

namespace A236104.P12536902240474733460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235791 (n + 1) : ℚ) ^ (A020639 (A005843 (n + 1)).toNat : ℤ)

end

end A236104.P12536902240474733460

/-! ## A236104.P7666127044895702792

`A235791(n+1)^A020639(A239050(n+1))`
-/

namespace A236104.P7666127044895702792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235791 (n + 1) : ℚ) ^ (A020639 (A239050 (n + 1)).toNat : ℤ)

end

end A236104.P7666127044895702792

/-! ## A236104.P6209042044361929387

`A000290(gcd(A211343(n+1), A235791(n+1)))`
-/

namespace A236104.P6209042044361929387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.gcd (A211343 (n + 1)) (A235791 (n + 1)))

end

end A236104.P6209042044361929387

/-! ## A236104.P58839896865243600

`A000290(or(A211343(n+1), A235791(n+1)))`
-/

namespace A236104.P58839896865243600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lor (A211343 (n + 1)) (A235791 (n + 1))).toNat

end

end A236104.P58839896865243600

/-! ## A236104.P1679659506703557464

`A000290(2*A235791(n+1)-A235791(n+1))`
-/

namespace A236104.P1679659506703557464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A235791 (n + 1) - A235791 (n + 1)).toNat

end

end A236104.P1679659506703557464

/-! ## A236104.P18429155881144240933

`A235791(n+1)^A020639(A052928(2*n+3))`
-/

namespace A236104.P18429155881144240933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235791 (n + 1) : ℚ) ^ (A020639 (A052928 (2 * n + 3)).toNat : ℤ)

end

end A236104.P18429155881144240933

/-! ## A236104.P8733751208282667235

`A000007(n+1)+A235791(n+1)*A235791(n+1)`
-/

namespace A236104.P8733751208282667235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + A235791 (n + 1) * A235791 (n + 1)

end

end A236104.P8733751208282667235

/-! ## A236104.P6560031900934908895

`(A237591(n+1)+A048158(∑[A237591(n+1)]))²`
-/

namespace A236104.P6560031900934908895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237591 (n + 1) + A048158 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) ^ 2

end

end A236104.P6560031900934908895

/-!
# A236105: Numbers whose proper divisors are partition numbers.

The programs for A236105, there is no canonical definition to state claims against.
-/

/-! ## A236105.P6481411918015353181

`filter[A084981(n+1), A101040(#)]`
-/

namespace A236105.P6481411918015353181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A236105.P6481411918015353181

/-! ## A236105.P1314613964908634513

`∪[A046368(n+1), Δ[A007504(n)]]`
-/

namespace A236105.P1314613964908634513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236105.P1314613964908634513

/-! ## A236105.P142553924108212270

`∪[A046368(n+1), p?[A001057(n)]]`
-/

namespace A236105.P142553924108212270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236105.P142553924108212270

/-! ## A236105.P2418720841906396349

`∪[A046368(n+1), p?[A259153(n)]]`
-/

namespace A236105.P2418720841906396349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236105.P2418720841906396349

/-! ## A236105.P6641839185678108334

`∪[A000040(n+1), A046368(n+1)]`
-/

namespace A236105.P6641839185678108334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236105.P6641839185678108334

/-! ## A236105.P5341482985899813386

`∪[A046368(n+1), A051948(n+1)]`
-/

namespace A236105.P5341482985899813386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236105.P5341482985899813386

/-! ## A236105.P16907399747734040534

`∪[A046368(n+1), A077359(n+1)]`
-/

namespace A236105.P16907399747734040534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236105.P16907399747734040534

/-! ## A236105.P10018040943215754012

`∪[A046368(n+1), A095320(n+1)]`
-/

namespace A236105.P10018040943215754012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236105.P10018040943215754012

/-! ## A236105.P10851920569144100739

`∪[A046368(n+1), A095737(n+1)]`
-/

namespace A236105.P10851920569144100739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236105.P10851920569144100739

/-! ## A236105.P13658831919397247885

`∪[A046368(n+1), A116974(n+1)]`
-/

namespace A236105.P13658831919397247885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236105.P13658831919397247885

/-!
# A236106: Triangle read by rows: T(n,k), n>=1, k>=1, in which column k lists the twice odd numbers (A016825) interleaved with k-1 zeros, and the first element of column k is in row k(k+1)/2.

The programs for A236106, there is no canonical definition to state claims against.
-/

/-! ## A236106.P9402250603933903360

`2*A196020(n+1)`
-/

namespace A236106.P9402250603933903360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A196020 (n + 1)

end

end A236106.P9402250603933903360

/-! ## A236106.P10500496357390880604

`A239662(n+1)/2`
-/

namespace A236106.P10500496357390880604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239662 (n + 1) : ℚ) / 2

end

end A236106.P10500496357390880604

/-! ## A236106.P2524382214115533023

`2/3*A272026(n+1)`
-/

namespace A236106.P2524382214115533023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A272026 (n + 1) : ℚ)

end

end A236106.P2524382214115533023

/-! ## A236106.P5627226416777071704

`lcm(2, A196020(C(n+1, n)))`
-/

namespace A236106.P5627226416777071704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A196020 (Nat.choose (n + 1) n))

end

end A236106.P5627226416777071704

/-! ## A236106.P12705559602209363357

`A005843(A196020(n+1))`
-/

namespace A236106.P12705559602209363357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A196020 (n + 1)).toNat

end

end A236106.P12705559602209363357

/-! ## A236106.P4810740333936124270

`A001281(A239662(n+1))`
-/

namespace A236106.P4810740333936124270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A239662 (n + 1)).toNat

end

end A236106.P4810740333936124270

/-! ## A236106.P13024088119060361801

`A004396(A272026(n+1))`
-/

namespace A236106.P13024088119060361801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A272026 (n + 1)).toNat

end

end A236106.P13024088119060361801

/-! ## A236106.P17727089230922915152

`A130824(A211343(n+1))`
-/

namespace A236106.P17727089230922915152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A211343 (n + 1)).toNat

end

end A236106.P17727089230922915152

/-! ## A236106.P15304761748708275270

`A257844(A239662(n+1)+2)`
-/

namespace A236106.P15304761748708275270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257844 (A239662 (n + 1) + 2).toNat

end

end A236106.P15304761748708275270

/-! ## A236106.P1977828244325976905

`A002265(2*A239662(n+1))`
-/

namespace A236106.P1977828244325976905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A239662 (n + 1)).toNat

end

end A236106.P1977828244325976905

/-!
# A236108: Nonprimes whose proper divisors are partition numbers.

The programs for A236108, there is no canonical definition to state claims against.
-/

/-! ## A236108.P1667715370083224340

`∩[A033637(n+1), A046368(n+1)]`
-/

namespace A236108.P1667715370083224340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236108.P1667715370083224340

/-! ## A236108.P2947868538911448759

`∩[A033637(n+1), A264815(n+1)]`
-/

namespace A236108.P2947868538911448759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236108.P2947868538911448759

/-! ## A236108.P6755523368555695683

`record[A046368(n+1)%A046414(n+1)]`
-/

namespace A236108.P6755523368555695683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046368 (n + 1)) (A046414 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236108.P6755523368555695683

/-!
# A236109: Triangle read by rows: another version of A048158, only here the representation of A004125 is symmetric, as in the representation of A024916 and A000203.

The programs for A236109, there is no canonical definition to state claims against.
-/

/-! ## A236109.P6292031000116152987

`∑[char[∑[n]]]-A339575(n+1)`
-/

namespace A236109.P6292031000116152987
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A339575 (n + 1)

end

end A236109.P6292031000116152987

/-! ## A236109.P8960900739816342998

`∑[A010054(n)]%A339575(n+1)`
-/

namespace A236109.P8960900739816342998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A339575 (n + 1))

end

end A236109.P8960900739816342998

/-! ## A236109.P4659858010512362775

`A003056(n)+1-A339575(n+1)`
-/

namespace A236109.P4659858010512362775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (1 - A339575 (n + 1))

end

end A236109.P4659858010512362775

/-! ## A236109.P3880439738449630977

`A002024(n+1)%A339575(n+1)`
-/

namespace A236109.P3880439738449630977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1)) (A339575 (n + 1))

end

end A236109.P3880439738449630977

/-! ## A236109.P2014177010160273914

`A143308(n+1)%A339575(n+1)`
-/

namespace A236109.P2014177010160273914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143308 (n + 1)) (A339575 (n + 1))

end

end A236109.P2014177010160273914

/-! ## A236109.P16489036427930738356

`A003056(n)-A023443(A339575(n+1))`
-/

namespace A236109.P16489036427930738356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - A023443 (A339575 (n + 1)).toNat

end

end A236109.P16489036427930738356

/-!
# A236110: Smallest number with the property that exactly n of its divisors are partition numbers.

The programs for A236110, there is no canonical definition to state claims against.
-/

/-! ## A236110.P6139242952156812224

`xor(A025428(A001906(n+4)), A202259(n+1))`
-/

namespace A236110.P6139242952156812224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025428 (A001906 (n + 4)).toNat) (A202259 (n + 1))

end

end A236110.P6139242952156812224

/-!
# A236111: Numbers that set a record for the number of divisors that are partition numbers.

The programs for A236111, there is no canonical definition to state claims against.
-/

/-! ## A236111.P12141510088471372341

`A236110(record[A236103(n+1)])`
-/

namespace A236111.P12141510088471372341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236110 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A236111.P12141510088471372341

/-! ## A236111.P12336662959411885323

`A119319(A136299(n))`
-/

namespace A236111.P12336662959411885323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119319 (A136299 n).toNat

end

end A236111.P12336662959411885323

/-! ## A236111.P18316943806937611422

`A119319(A303666(n))`
-/

namespace A236111.P18316943806937611422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119319 (A303666 n).toNat

end

end A236111.P18316943806937611422

/-!
# A236112: Triangle read by rows: T(n,k), n>=1, k>=1, in which column k lists k+1 copies of the squares in nondecreasing order, and the first element of column k is in row k(k+1)/2.

The programs for A236112, there is no canonical definition to state claims against.
-/

/-! ## A236112.P10956633017795002305

`A095831(∑[A237591(n+1)])`
-/

namespace A236112.P10956633017795002305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A236112.P10956633017795002305

/-! ## A236112.P12021272541436158657

`A048158(∑[A237591(n+1)])²`
-/

namespace A236112.P12021272541436158657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A236112.P12021272541436158657

/-! ## A236112.P16516797764219021595

`A053616(∑[A237591(n+1)])²`
-/

namespace A236112.P16516797764219021595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A236112.P16516797764219021595

/-! ## A236112.P11881787853932075476

`A236104(n+2)%A131632(n+2)`
-/

namespace A236112.P11881787853932075476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236104 (n + 2)) (A131632 (n + 2))

end

end A236112.P11881787853932075476

/-! ## A236112.P7406246467462607880

`(A235791(n+1)-A237591(n+1))²`
-/

namespace A236112.P7406246467462607880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A235791 (n + 1) - A237591 (n + 1)) ^ 2

end

end A236112.P7406246467462607880

/-! ## A236112.P13245619754097197988

`(sqrt(A236104(n+1))-A237591(n+1))²`
-/

namespace A236112.P13245619754097197988
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A236104 (n + 1) : ℝ) - (A237591 (n + 1) : ℝ)) ^ 2

end

end A236112.P13245619754097197988

/-! ## A236112.P8771081264418521218

`A000290(A235791(n+1)-A237591(n+1))`
-/

namespace A236112.P8771081264418521218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A235791 (n + 1) - A237591 (n + 1)).toNat

end

end A236112.P8771081264418521218

/-! ## A236112.P17855362632565764243

`A048158(∑[A237591(n+1)])^A020639(2*(n+1))`
-/

namespace A236112.P17855362632565764243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048158 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A236112.P17855362632565764243

/-! ## A236112.P18363420661531945068

`A053616(∑[A237591(n+1)])^A020639(2*(n+1))`
-/

namespace A236112.P18363420661531945068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A236112.P18363420661531945068

/-! ## A236112.P2830448043078101996

`(A235791(n+1)-A237591(n+1))*A235791(n+2)`
-/

namespace A236112.P2830448043078101996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A235791 (n + 1) - A237591 (n + 1)) * A235791 (n + 2)

end

end A236112.P2830448043078101996

/-!
# A236113: Number of (n+1)X(1+1) 0..3 arrays colored with the difference of the maximum and the upper median in each 2X2 subblock.

The programs for A236113, there is no canonical definition to state claims against.
-/

/-! ## A236113.P4238925036450021630

`A236118(∑[n]+1)`
-/

namespace A236113.P4238925036450021630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236118 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236113.P4238925036450021630

/-! ## A236113.P1551994585652982049

`record[root(A236118(n+1), A141020(n))]`
-/

namespace A236113.P1551994585652982049
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236118 (n + 1) : ℝ) ^ (1 / (A141020 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236113.P1551994585652982049

/-! ## A236113.P10411148053640325633

`record[gcd(A014473(n), A236118(n+1))]`
-/

namespace A236113.P10411148053640325633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n) (A236118 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236113.P10411148053640325633

/-! ## A236113.P16681820528935038277

`record[root(A236118(n+1), A128718(n+1))]`
-/

namespace A236113.P16681820528935038277
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236118 (n + 1) : ℝ) ^ (1 / (A128718 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236113.P16681820528935038277

/-! ## A236113.P6705736406910068969

`record[root(A236118(n+1), A267278(n+1))]`
-/

namespace A236113.P6705736406910068969
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236118 (n + 1) : ℝ) ^ (1 / (A267278 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236113.P6705736406910068969

/-!
# A236114: Number of (n+1)X(2+1) 0..3 arrays colored with the difference of the maximum and the upper median in each 2X2 subblock.

The programs for A236114, there is no canonical definition to state claims against.
-/

/-! ## A236114.P5372386713848636755

`A236118(∑[n+1]+2)`
-/

namespace A236114.P5372386713848636755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236118 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236114.P5372386713848636755

/-! ## A236114.P7953246019202310703

`record[root(A236118(n+3), A134081(n))]`
-/

namespace A236114.P7953246019202310703
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236118 (n + 3) : ℝ) ^ (1 / (A134081 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236114.P7953246019202310703

/-! ## A236114.P16865874306516808492

`record[gcd(A180662(n), A236118(n+2))]`
-/

namespace A236114.P16865874306516808492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180662 n) (A236118 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236114.P16865874306516808492

/-! ## A236114.P12865270262497245120

`lcm(2, A236118(A000096(n+1)))`
-/

namespace A236114.P12865270262497245120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236118 (A000096 (n + 1)).toNat)

end

end A236114.P12865270262497245120

/-!
# A236115: Number of (n+1)X(3+1) 0..3 arrays colored with the difference of the maximum and the upper median in each 2X2 subblock.

The programs for A236115, there is no canonical definition to state claims against.
-/

/-! ## A236115.P3848857776912157651

`A236118(∑[n+2]+4)`
-/

namespace A236115.P3848857776912157651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236118 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236115.P3848857776912157651

/-! ## A236115.P772897379341081875

`lcm(2, A236118(A167614(n+1)))`
-/

namespace A236115.P772897379341081875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236118 (A167614 (n + 1)).toNat)

end

end A236115.P772897379341081875

/-! ## A236115.P18226037234312036544

`A236118(A167614(n+1))+A185284(n)`
-/

namespace A236115.P18226037234312036544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236118 (A167614 (n + 1)).toNat + A185284 n

end

end A236115.P18226037234312036544

/-! ## A236115.P2286998141394962381

`A236118(A167614(n+1))*A298444(n+1)`
-/

namespace A236115.P2286998141394962381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236118 (A167614 (n + 1)).toNat * A298444 (n + 1)

end

end A236115.P2286998141394962381

/-! ## A236115.P1821948710887821214

`A236118(A167614(n+1))%A122210(n+1)`
-/

namespace A236115.P1821948710887821214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236118 (A167614 (n + 1)).toNat) (A122210 (n + 1))

end

end A236115.P1821948710887821214

/-!
# A236116: Number of (n+1)X(4+1) 0..3 arrays colored with the difference of the maximum and the upper median in each 2X2 subblock.

The programs for A236116, there is no canonical definition to state claims against.
-/

/-! ## A236116.P15203710173829417605

`A236118(A141214(n)+7)`
-/

namespace A236116.P15203710173829417605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236118 (A141214 n + 7).toNat

end

end A236116.P15203710173829417605

/-! ## A236116.P12745545960872426977

`A236118(A052905(n)+9)`
-/

namespace A236116.P12745545960872426977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236118 (A052905 n + 9).toNat

end

end A236116.P12745545960872426977

/-! ## A236116.P4400598465698120184

`A236118(A055999(n)+10)`
-/

namespace A236116.P4400598465698120184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236118 (A055999 n + 10).toNat

end

end A236116.P4400598465698120184

/-! ## A236116.P7501239437109296315

`A236118(eq[5, A066657(n)])`
-/

namespace A236116.P7501239437109296315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236116.P7501239437109296315

/-!
# A236117: Number of (n+1)X(5+1) 0..3 arrays colored with the difference of the maximum and the upper median in each 2X2 subblock.

The programs for A236117, there is no canonical definition to state claims against.
-/

/-! ## A236117.P10409179132206313595

`A236118(A374005(n+1))`
-/

namespace A236117.P10409179132206313595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236118 (A374005 (n + 1)).toNat

end

end A236117.P10409179132206313595

/-! ## A236117.P13290717318548759957

`A236118(eq[8, A141020(n)])`
-/

namespace A236117.P13290717318548759957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236118 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236117.P13290717318548759957

/-!
# A236119: Primes p with prime(p) - p - 1 and prime(p) - p + 1 both prime.

The programs for A236119, there is no canonical definition to state claims against.
-/

/-! ## A236119.P9242288363002360029

`∩[A166562(n+1), A234695(n+1)]`
-/

namespace A236119.P9242288363002360029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236119.P9242288363002360029

/-! ## A236119.P2712326224251593967

`∩[A166562(n+1), p?[A234851(n+1)]]`
-/

namespace A236119.P2712326224251593967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166562 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236119.P2712326224251593967

/-! ## A236119.P11219190428759095005

`∩[A166562(n+1), A234851(A234853(n+1))]`
-/

namespace A236119.P11219190428759095005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234851 (A234853 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236119.P11219190428759095005

/-! ## A236119.P2755311336471380995

`p?[A049084(A161986(A001359(n+1)))]`
-/

namespace A236119.P2755311336471380995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A161986 (A001359 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236119.P2755311336471380995

/-!
# A236120: Number of (n+1) X (1+1) 0..3 arrays colored with the sets of distinct values in every 2 X 2 subblock.

The programs for A236120, there is no canonical definition to state claims against.
-/

/-! ## A236120.P7159107380935534616

`A236123(∑[n]+1)`
-/

namespace A236120.P7159107380935534616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236123 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236120.P7159107380935534616

/-! ## A236120.P13198570840505773921

`lcm(2, A236123(A000124(n)))`
-/

namespace A236120.P13198570840505773921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236123 (A000124 n).toNat)

end

end A236120.P13198570840505773921

/-! ## A236120.P12112269038255434307

`∏{digits}[n, A236123(A000124(#))]`
-/

namespace A236120.P12112269038255434307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A236123 (A000124 x).toNat).prod

end

end A236120.P12112269038255434307

/-! ## A236120.P17936235438625162093

`record[A236123(A286235(n+1))]`
-/

namespace A236120.P17936235438625162093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236123 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236120.P17936235438625162093

/-! ## A236120.P4110398746426771354

`record[A010054(n)*A236123(n+1)]`
-/

namespace A236120.P4110398746426771354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236120.P4110398746426771354

/-!
# A236121: Number of (n+1)X(2+1) 0..3 arrays colored with the sets of distinct values in every 2X2 subblock.

The programs for A236121, there is no canonical definition to state claims against.
-/

/-! ## A236121.P4321344595729658279

`A236123(∑[n+1]+2)`
-/

namespace A236121.P4321344595729658279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236123 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236121.P4321344595729658279

/-! ## A236121.P977460674540486980

`record[A236123(A286235(n+1)+1)]`
-/

namespace A236121.P977460674540486980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236123 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236121.P977460674540486980

/-! ## A236121.P18280526660138198448

`record[gcd(A002262(n), A236123(n+2))]`
-/

namespace A236121.P18280526660138198448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236123 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236121.P18280526660138198448

/-! ## A236121.P1455187405259879856

`xor(1, A236123(A000096(n)+3)+1)`
-/

namespace A236121.P1455187405259879856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A236123 (A000096 n + 3).toNat + 1)

end

end A236121.P1455187405259879856

/-!
# A236122: Number of (n+1)X(3+1) 0..3 arrays colored with the sets of distinct values in every 2X2 subblock.

The programs for A236122, there is no canonical definition to state claims against.
-/

/-! ## A236122.P2879814592440803126

`A236123(∑[n+2]+4)`
-/

namespace A236122.P2879814592440803126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236123 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236122.P2879814592440803126

/-! ## A236122.P5618310278486676548

`lcm(2, A236123(A167614(n+1)))`
-/

namespace A236122.P5618310278486676548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236123 (A167614 (n + 1)).toNat)

end

end A236122.P5618310278486676548

/-! ## A236122.P4197870062571486262

`A236123(A167614(n+1))+A036600(n)`
-/

namespace A236122.P4197870062571486262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236123 (A167614 (n + 1)).toNat + A036600 n

end

end A236122.P4197870062571486262

/-!
# A236124: Number of (n+1)X(1+1) 0..3 arrays colored with the maximum plus the upper median minus the lower median of every 2X2 subblock.

The programs for A236124, there is no canonical definition to state claims against.
-/

/-! ## A236124.P8718647136880706433

`A236127(∑[n]+1)`
-/

namespace A236124.P8718647136880706433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236127 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236124.P8718647136880706433

/-! ## A236124.P7599822166041374451

`lcm(2, A236127(A000124(n)))`
-/

namespace A236124.P7599822166041374451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236127 (A000124 n).toNat)

end

end A236124.P7599822166041374451

/-! ## A236124.P1652236330963243399

`record[A010054(n)*A236127(n+1)]`
-/

namespace A236124.P1652236330963243399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236124.P1652236330963243399

/-! ## A236124.P8104189001406238475

`record[A103451(n)*A236127(n+1)]`
-/

namespace A236124.P8104189001406238475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A236127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236124.P8104189001406238475

/-! ## A236124.P17642771953982875417

`record[A176270(n)*A236127(n+1)]`
-/

namespace A236124.P17642771953982875417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 n * A236127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236124.P17642771953982875417

/-!
# A236125: Number of (n+1)X(2+1) 0..3 arrays colored with the maximum plus the upper median minus the lower median of every 2X2 subblock.

The programs for A236125, there is no canonical definition to state claims against.
-/

/-! ## A236125.P9696351383205135825

`A236127(∑[n+1]+2)`
-/

namespace A236125.P9696351383205135825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236127 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236125.P9696351383205135825

/-! ## A236125.P14192413868125795195

`record[A010054(n)*A236127(n+2)]`
-/

namespace A236125.P14192413868125795195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236127 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236125.P14192413868125795195

/-! ## A236125.P10397316014826560076

`record[A236127(n+2)*A283675(n)]`
-/

namespace A236125.P10397316014826560076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236127 (n + 2) * A283675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236125.P10397316014826560076

/-! ## A236125.P5551289756350478588

`record[gcd(A141169(n), A236127(n+2))]`
-/

namespace A236125.P5551289756350478588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141169 n) (A236127 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236125.P5551289756350478588

/-!
# A236126: Number of (n+1) X (3+1) 0..3 arrays colored with the maximum plus the upper median minus the lower median of every 2 X 2 subblock.

The programs for A236126, there is no canonical definition to state claims against.
-/

/-! ## A236126.P9129513843778520845

`A236127(∑[n+2]+4)`
-/

namespace A236126.P9129513843778520845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236127 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236126.P9129513843778520845

/-! ## A236126.P5111738881043613544

`lcm((-1)^n, A236127(A167614(n+1)))`
-/

namespace A236126.P5111738881043613544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A236127 (A167614 (n + 1)).toNat)

end

end A236126.P5111738881043613544

/-! ## A236126.P485223863203656628

`A236127(A167614(n+1))+A011738(n)`
-/

namespace A236126.P485223863203656628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236127 (A167614 (n + 1)).toNat + A011738 n

end

end A236126.P485223863203656628

/-!
# A236129: Number of partitions of n that have constant reversal sums; see Comments.

The programs for A236129, there is no canonical definition to state claims against.
-/

/-! ## A236129.P11501381774737468385

`Δ[A000070(n)]-A236170(n+1)`
-/

namespace A236129.P11501381774737468385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A236170 (n + 1)

end

end A236129.P11501381774737468385

/-! ## A236129.P886103970231303817

`record[A035363(n)]-A236170(n+1)`
-/

namespace A236129.P886103970231303817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A236170 (n + 1)

end

end A236129.P886103970231303817

/-! ## A236129.P12644259788281428184

`record[A035444(n)]-A236170(n+1)`
-/

namespace A236129.P12644259788281428184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A236170 (n + 1)

end

end A236129.P12644259788281428184

/-! ## A236129.P11835405855348326261

`A000041(n+1)-A236170(n+1)`
-/

namespace A236129.P11835405855348326261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A236170 (n + 1)

end

end A236129.P11835405855348326261

/-! ## A236129.P12015620899408689963

`A100824(A103517(n))-A236170(n+1)`
-/

namespace A236129.P12015620899408689963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (A103517 n).toNat - A236170 (n + 1)

end

end A236129.P12015620899408689963

/-! ## A236129.P13833586345417446384

`A259478(A000124(n))-A236170(n+1)`
-/

namespace A236129.P13833586345417446384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A000124 n).toNat - A236170 (n + 1)

end

end A236129.P13833586345417446384

/-!
# A236130: Number of (n+1)X(1+1) 0..3 arrays colored with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock.

The programs for A236130, there is no canonical definition to state claims against.
-/

/-! ## A236130.P12468261605345679730

`A236133(∑[n]+1)`
-/

namespace A236130.P12468261605345679730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236133 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236130.P12468261605345679730

/-! ## A236130.P14972498708352504567

`record[A236133(A246276(n+1))]`
-/

namespace A236130.P14972498708352504567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236133 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236130.P14972498708352504567

/-! ## A236130.P8599302879724003618

`record[A010054(n)*A236133(n+1)]`
-/

namespace A236130.P8599302879724003618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236130.P8599302879724003618

/-! ## A236130.P9386653549046978721

`record[A176270(n)*A236133(n+1)]`
-/

namespace A236130.P9386653549046978721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 n * A236133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236130.P9386653549046978721

/-!
# A236131: Number of (n+1)X(2+1) 0..3 arrays colored with the maximum plus the upper median plus the lower median minus the minimum of every 2X2 subblock.

The programs for A236131, there is no canonical definition to state claims against.
-/

/-! ## A236131.P5647441749791496381

`A236133(∑[n+1]+2)`
-/

namespace A236131.P5647441749791496381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236133 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236131.P5647441749791496381

/-! ## A236131.P8921314150651994713

`record[A010054(n)*A236133(n+2)]`
-/

namespace A236131.P8921314150651994713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236133 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236131.P8921314150651994713

/-! ## A236131.P854442727757744989

`record[root(A236133(n+2), A246070(n))]`
-/

namespace A236131.P854442727757744989
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236133 (n + 2) : ℝ) ^ (1 / (A246070 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236131.P854442727757744989

/-!
# A236132: Number of (n+1) X (3+1) 0..3 arrays colored with the maximum plus the upper median plus the lower median minus the minimum of every 2 X 2 subblock.

The programs for A236132, there is no canonical definition to state claims against.
-/

/-! ## A236132.P6009854650277955661

`A236133(∑[n+2]+4)`
-/

namespace A236132.P6009854650277955661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236133 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236132.P6009854650277955661

/-!
# A236134: Number of (n+1)X(1+1) 0..3 arrays colored with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock.

The programs for A236134, there is no canonical definition to state claims against.
-/

/-! ## A236134.P9880605506152994427

`A236137(∑[n]+1)`
-/

namespace A236134.P9880605506152994427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236137 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236134.P9880605506152994427

/-! ## A236134.P13892954649229317021

`lcm(2, A236137(A000124(n)))`
-/

namespace A236134.P13892954649229317021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236137 (A000124 n).toNat)

end

end A236134.P13892954649229317021

/-! ## A236134.P13660863961199715366

`lcm(4, A236137(∑[A028310(n)]))`
-/

namespace A236134.P13660863961199715366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A236137 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A236134.P13660863961199715366

/-! ## A236134.P3031616715228567369

`record[A010054(n)*A236137(n+1)]`
-/

namespace A236134.P3031616715228567369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236134.P3031616715228567369

/-! ## A236134.P8335279392995739875

`record[A236137(n+1)/A015129(n)]`
-/

namespace A236134.P8335279392995739875
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236137 (n + 1) : ℚ) / (A015129 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236134.P8335279392995739875

/-!
# A236135: Number of (n+1)X(2+1) 0..3 arrays colored with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock.

The programs for A236135, there is no canonical definition to state claims against.
-/

/-! ## A236135.P13954995464528962380

`A236137(∑[n+1]+2)`
-/

namespace A236135.P13954995464528962380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236137 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236135.P13954995464528962380

/-! ## A236135.P1441663378390054868

`record[A010054(n)*A236137(n+2)]`
-/

namespace A236135.P1441663378390054868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236137 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236135.P1441663378390054868

/-! ## A236135.P9470229913340062213

`record[root(A236137(n+3), A053122(n))]`
-/

namespace A236135.P9470229913340062213
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236137 (n + 3) : ℝ) ^ (1 / (A053122 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236135.P9470229913340062213

/-! ## A236135.P9314617976416371067

`xor(1, A236137(A000096(n)+3)+1)`
-/

namespace A236135.P9314617976416371067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A236137 (A000096 n + 3).toNat + 1)

end

end A236135.P9314617976416371067

/-!
# A236136: Number of (n+1)X(3+1) 0..3 arrays colored with the maximum plus the lower median minus the upper median minus the minimum of every 2X2 subblock.

The programs for A236136, there is no canonical definition to state claims against.
-/

/-! ## A236136.P15598001485532693615

`A236137(∑[n+2]+4)`
-/

namespace A236136.P15598001485532693615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236137 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236136.P15598001485532693615

/-! ## A236136.P1937501422680737279

`lcm(2, A236137(A167614(n+1)))`
-/

namespace A236136.P1937501422680737279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236137 (A167614 (n + 1)).toNat)

end

end A236136.P1937501422680737279

/-! ## A236136.P10818505298504372417

`record[A236137(A005098(2*n+3))]`
-/

namespace A236136.P10818505298504372417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236137 (A005098 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236136.P10818505298504372417

/-!
# A236138: a(n) = |{0 < k < n: p = phi(k) + phi(n-k)/3 - 1, prime(p-1) - (p-1) and prime(p-1) - 2*prime((p-1)/2) are all prime}|, where phi(.) is Euler's totient function.

The programs for A236138, there is no canonical definition to state claims against.
-/

/-! ## A236138.P5401999267151116605

`∑{digits}[A126290(3*n+4)*A151514(n+1)+1, floor(γ^#)]`
-/

namespace A236138.P5401999267151116605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126290 (3 * n + 4) * A151514 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => ⌊Real.eulerMascheroniConstant ^ x⌋).sum

end

end A236138.P5401999267151116605

/-! ## A236138.P14060901826434169681

`A068828(n+2)%A358525(A326466(n))`
-/

namespace A236138.P14060901826434169681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068828 (n + 2)) (A358525 (A326466 n).toNat)

end

end A236138.P14060901826434169681

/-!
# A236139: Number of (n+1)X(1+1) 0..3 arrays colored with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock.

The programs for A236139, there is no canonical definition to state claims against.
-/

/-! ## A236139.P14927384421408322731

`A236142(∑[n]+1)`
-/

namespace A236139.P14927384421408322731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236142 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236139.P14927384421408322731

/-! ## A236139.P14539278688378788060

`∑{digits}[n, A236142(A000124(#))]`
-/

namespace A236139.P14539278688378788060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A236142 (A000124 x).toNat).sum

end

end A236139.P14539278688378788060

/-! ## A236139.P6798645500623111397

`record[A236142(A246276(n+1))]`
-/

namespace A236139.P6798645500623111397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236142 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236139.P6798645500623111397

/-! ## A236139.P4399971822082924302

`record[A236142(A249742(n+1))]`
-/

namespace A236139.P4399971822082924302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236142 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236139.P4399971822082924302

/-! ## A236139.P13462491705240416886

`record[A010054(n)*A236142(n+1)]`
-/

namespace A236139.P13462491705240416886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236139.P13462491705240416886

/-!
# A236140: Number of (n+1)X(2+1) 0..3 arrays colored with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock.

The programs for A236140, there is no canonical definition to state claims against.
-/

/-! ## A236140.P16579079449320724941

`A236142(∑[n+1]+2)`
-/

namespace A236140.P16579079449320724941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236142 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236140.P16579079449320724941

/-! ## A236140.P7326468701815979615

`record[A236142(A124782(n)+A025581(n))]`
-/

namespace A236140.P7326468701815979615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236142 (A124782 n + A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236140.P7326468701815979615

/-! ## A236140.P15266687713608432982

`record[A236142(A246276(n+2)-1)]`
-/

namespace A236140.P15266687713608432982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236142 (A246276 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236140.P15266687713608432982

/-!
# A236141: Number of (n+1)X(3+1) 0..3 arrays colored with the maximum plus the upper median plus the minimum minus the lower median of every 2X2 subblock.

The programs for A236141, there is no canonical definition to state claims against.
-/

/-! ## A236141.P1471432313657598306

`A236142(∑[n+2]+4)`
-/

namespace A236141.P1471432313657598306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236142 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236141.P1471432313657598306

/-! ## A236141.P2031212090752076782

`A236142(A167614(n+1))+char[14]`
-/

namespace A236141.P2031212090752076782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236142 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A236141.P2031212090752076782

/-! ## A236141.P12988412245763369933

`lcm(A003520(n), A236142(A167614(n+1)))`
-/

namespace A236141.P12988412245763369933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003520 n) (A236142 (A167614 (n + 1)).toNat)

end

end A236141.P12988412245763369933

/-!
# A236143: Odd primes p with prime(p-1) - (p-1) and prime(p-1) - 2*prime((p-1)/2) both prime.

The programs for A236143, there is no canonical definition to state claims against.
-/

/-! ## A236143.P4303894346015648371

`A318718(A139694(n+1)+1)`
-/

namespace A236143.P4303894346015648371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318718 (A139694 (n + 1) + 1).toNat

end

end A236143.P4303894346015648371

/-! ## A236143.P15898104352843678511

`A156284(A227885(n+1)-A064911(2*n+1))`
-/

namespace A236143.P15898104352843678511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156284 (A227885 (n + 1) - A064911 (2 * n + 1)).toNat

end

end A236143.P15898104352843678511

/-!
# A236144: a(n) = F(floor( (n+3)/2 )) * L(floor( (n+2)/2 )) where F=Fibonacci and L=Lucas numbers.

The programs for A236144, the canonical program `A236144.P9870689026969956707` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236144 has offset 0).

The definition of A236144 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236144.P9870689026969956707

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=2, a(1)=2, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A236144

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P9870689026969956707.Spec : Prop :=
  ∀ n, (P9870689026969956707.a n : ℤ) = A236144 n

theorem P9870689026969956707.correct : P9870689026969956707.Spec := by
  intro n
  simp only [A236144]

end A236144

/-! ## A236144.P18179994998563203333

`A000045(n+1)+A057077(n)`
-/

namespace A236144.P18179994998563203333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + A057077 n

end

end A236144.P18179994998563203333

namespace A236144

/-- `A000045(n+1)+A057077(n)` -/
def P18179994998563203333.Spec : Prop :=
  ∀ n, P18179994998563203333.a n = A236144 n

end A236144

/-! ## A236144.P12008741419851418563

`A115008(n+2)-A115008(n+1)`
-/

namespace A236144.P12008741419851418563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115008 (n + 2) - A115008 (n + 1)

end

end A236144.P12008741419851418563

namespace A236144

/-- `A115008(n+2)-A115008(n+1)` -/
def P12008741419851418563.Spec : Prop :=
  ∀ n, P12008741419851418563.a n = A236144 n

end A236144

/-! ## A236144.P6751009583654088289

`ogf((-2+x^2+x^3)/(-1+x+x^3+x^4))`
-/

namespace A236144.P6751009583654088289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -1, -1] [1, -1, 0, -1, -1] n

end

end A236144.P6751009583654088289

namespace A236144

/-- `ogf((-2+x^2+x^3)/(-1+x+x^3+x^4))` -/
def P6751009583654088289.Spec : Prop :=
  ∀ n, P6751009583654088289.a n = A236144 n

end A236144

/-! ## A236144.P9352404752605124038

`A001611(n+1)-and(2, n)`
-/

namespace A236144.P9352404752605124038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1) - (Nat.land 2 n : ℤ)

end

end A236144.P9352404752605124038

namespace A236144

/-- `A001611(n+1)-and(2, n)` -/
def P9352404752605124038.Spec : Prop :=
  ∀ n, P9352404752605124038.a n = A236144 n

end A236144

/-! ## A236144.P360135284311708454

`A000071(n+1)+and(2, n+2)`
-/

namespace A236144.P360135284311708454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (Nat.land 2 (n + 2) : ℤ)

end

end A236144.P360135284311708454

namespace A236144

/-- `A000071(n+1)+and(2, n+2)` -/
def P360135284311708454.Spec : Prop :=
  ∀ n, P360135284311708454.a n = A236144 n

end A236144

/-! ## A236144.P14876014685067087613

`A101455(n)+A074662(n)`
-/

namespace A236144.P14876014685067087613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 n + A074662 n

end

end A236144.P14876014685067087613

namespace A236144

/-- `A101455(n)+A074662(n)` -/
def P14876014685067087613.Spec : Prop :=
  ∀ n, P14876014685067087613.a n = A236144 n

end A236144

/-! ## A236144.P7570794488368740971

`A236165(n)+A006498(n)`
-/

namespace A236144.P7570794488368740971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236165 n + A006498 n

end

end A236144.P7570794488368740971

namespace A236144

/-- `A236165(n)+A006498(n)` -/
def P7570794488368740971.Spec : Prop :=
  ∀ n, P7570794488368740971.a n = A236144 n

end A236144

/-! ## A236144.P11353940763160133304

`A295683(n)+A074677(n)`
-/

namespace A236144.P11353940763160133304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295683 n + A074677 n

end

end A236144.P11353940763160133304

namespace A236144

/-- `A295683(n)+A074677(n)` -/
def P11353940763160133304.Spec : Prop :=
  ∀ n, P11353940763160133304.a n = A236144 n

end A236144

/-! ## A236144.P17748704744070436813

`A295684(n)+A295682(n)`
-/

namespace A236144.P17748704744070436813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295684 n + A295682 n

end

end A236144.P17748704744070436813

namespace A236144

/-- `A295684(n)+A295682(n)` -/
def P17748704744070436813.Spec : Prop :=
  ∀ n, P17748704744070436813.a n = A236144 n

end A236144

/-! ## A236144.P7356469554767425490

`A057077(n)+∑[A212804(n)]`
-/

namespace A236144.P7356469554767425490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236144.P7356469554767425490

namespace A236144

/-- `A057077(n)+∑[A212804(n)]` -/
def P7356469554767425490.Spec : Prop :=
  ∀ n, P7356469554767425490.a n = A236144 n

end A236144

/-! ## A236144.P2589704466816383013

`A074662(n)-A056594(n+1)`
-/

namespace A236144.P2589704466816383013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 n - A056594 (n + 1)

end

end A236144.P2589704466816383013

namespace A236144

/-- `A074662(n)-A056594(n+1)` -/
def P2589704466816383013.Spec : Prop :=
  ∀ n, P2589704466816383013.a n = A236144 n

end A236144

/-! ## A236144.P936547369252478627

`A000045(n+1)-A087960(n+1)`
-/

namespace A236144.P936547369252478627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A087960 (n + 1)

end

end A236144.P936547369252478627

namespace A236144

/-- `A000045(n+1)-A087960(n+1)` -/
def P936547369252478627.Spec : Prop :=
  ∀ n, P936547369252478627.a n = A236144 n

end A236144

/-! ## A236144.P532542380458927969

`A143431(2*n)+A000045(n+1)`
-/

namespace A236144.P532542380458927969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143431 (2 * n) + A000045 (n + 1)

end

end A236144.P532542380458927969

namespace A236144

/-- `A143431(2*n)+A000045(n+1)` -/
def P532542380458927969.Spec : Prop :=
  ∀ n, P532542380458927969.a n = A236144 n

end A236144

/-! ## A236144.P11643685340972898118

`A046978(2*n+1)+A000045(n+1)`
-/

namespace A236144.P11643685340972898118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (2 * n + 1) + A000045 (n + 1)

end

end A236144.P11643685340972898118

namespace A236144

/-- `A046978(2*n+1)+A000045(n+1)` -/
def P11643685340972898118.Spec : Prop :=
  ∀ n, P11643685340972898118.a n = A236144 n

end A236144

/-! ## A236144.P3424403355123902056

`A075553(2*n+1)+A000045(n+1)`
-/

namespace A236144.P3424403355123902056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (2 * n + 1) + A000045 (n + 1)

end

end A236144.P3424403355123902056

namespace A236144

/-- `A075553(2*n+1)+A000045(n+1)` -/
def P3424403355123902056.Spec : Prop :=
  ∀ n, P3424403355123902056.a n = A236144 n

end A236144

/-! ## A236144.P309360754650784595

`A188510(2*n+1)+A000045(n+1)`
-/

namespace A236144.P309360754650784595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (2 * n + 1) + A000045 (n + 1)

end

end A236144.P309360754650784595

namespace A236144

/-- `A188510(2*n+1)+A000045(n+1)` -/
def P309360754650784595.Spec : Prop :=
  ∀ n, P309360754650784595.a n = A236144 n

end A236144

/-! ## A236144.P10967866065475179712

`A230075(2*n+1)+A000045(n+1)`
-/

namespace A236144.P10967866065475179712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230075 (2 * n + 1) + A000045 (n + 1)

end

end A236144.P10967866065475179712

namespace A236144

/-- `A230075(2*n+1)+A000045(n+1)` -/
def P10967866065475179712.Spec : Prop :=
  ∀ n, P10967866065475179712.a n = A236144 n

end A236144

/-! ## A236144.P12795126141788050450

`A000045(n)+A295687(n)-A111569(n)`
-/

namespace A236144.P12795126141788050450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A295687 n - A111569 n)

end

end A236144.P12795126141788050450

namespace A236144

/-- `A000045(n)+A295687(n)-A111569(n)` -/
def P12795126141788050450.Spec : Prop :=
  ∀ n, P12795126141788050450.a n = A236144 n

end A236144

/-! ## A236144.P16535972405270170903

`A033999(A080513(n+1))+A000045(n+1)`
-/

namespace A236144.P16535972405270170903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A080513 (n + 1)).toNat + A000045 (n + 1)

end

end A236144.P16535972405270170903

namespace A236144

/-- `A033999(A080513(n+1))+A000045(n+1)` -/
def P16535972405270170903.Spec : Prop :=
  ∀ n, P16535972405270170903.a n = A236144 n

end A236144

/-!
# A236145: Records in the continued fraction expansion of Sum_{k >= 2} 2^(-Fibonacci(k)) (A006518).

The programs for A236145, there is no canonical definition to state claims against.
-/

/-! ## A236145.P6410393186913582317

`record[A006518(n+1)]`
-/

namespace A236145.P6410393186913582317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236145.P6410393186913582317

/-! ## A236145.P14440107294538860654

`record[A006518(n)^A178334(n)]`
-/

namespace A236145.P14440107294538860654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006518 n : ℚ) ^ (A178334 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236145.P14440107294538860654

/-! ## A236145.P11036468995508548834

`record[or(A000007(n), A006518(n))]`
-/

namespace A236145.P11036468995508548834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A006518 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236145.P11036468995508548834

/-! ## A236145.P4278474371220473806

`record[or(A003982(n), A006518(n))]`
-/

namespace A236145.P4278474371220473806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A006518 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236145.P4278474371220473806

/-! ## A236145.P18122115547552121377

`record[or(A006518(n), A052173(n))]`
-/

namespace A236145.P18122115547552121377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006518 n) (A052173 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236145.P18122115547552121377

/-!
# A236146: Number of primitive quandles of order n, up to isomorphism. A quandle is primitive if its inner automorphism groups acts primitively on it.

The programs for A236146, there is no canonical definition to state claims against.
-/

/-! ## A236146.P8466936674276174880

`A346692(n+1)-A102683(A281758(n))`
-/

namespace A236146.P8466936674276174880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346692 (n + 1) - A102683 (A281758 n).toNat

end

end A236146.P8466936674276174880

/-! ## A236146.P16700868417717206534

`A346692(n+1)-A350866(A156882(n))`
-/

namespace A236146.P16700868417717206534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346692 (n + 1) - A350866 (A156882 n).toNat

end

end A236146.P16700868417717206534

/-! ## A236146.P12784752795420723564

`and(A002260(A126646(n)), A184997(n+1))`
-/

namespace A236146.P12784752795420723564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002260 (A126646 n).toNat) (A184997 (n + 1))

end

end A236146.P12784752795420723564

/-! ## A236146.P9543601577149496747

`or(A007814(A274291(n)), A058026(n+1))`
-/

namespace A236146.P9543601577149496747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A274291 n).toNat) (A058026 (n + 1))

end

end A236146.P9543601577149496747

/-! ## A236146.P11249135614859982112

`A346692(n+1)-A100910(A064536(n+1))`
-/

namespace A236146.P11249135614859982112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346692 (n + 1) - A100910 (A064536 (n + 1)).toNat

end

end A236146.P11249135614859982112

/-!
# A236147: Number of (n+1)X(n+1) 0..2 arrays colored with the sets of distinct values in every 2X2 subblock.

The programs for A236147, there is no canonical definition to state claims against.
-/

/-! ## A236147.P9069455215630986058

`A236155(∑[4*n]+1)`
-/

namespace A236147.P9069455215630986058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236155 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236147.P9069455215630986058

/-! ## A236147.P16843829121530584077

`lcm(3, A236155(A001844(n)))`
-/

namespace A236147.P16843829121530584077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A236155 (A001844 n).toNat)

end

end A236147.P16843829121530584077

/-! ## A236147.P10825017375845958610

`∑{digits}[n, A236155(A001844(#))]`
-/

namespace A236147.P10825017375845958610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A236155 (A001844 x).toNat).sum

end

end A236147.P10825017375845958610

/-! ## A236147.P18024318992952549418

`record[A003982(n)*A236155(n+1)]`
-/

namespace A236147.P18024318992952549418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A236155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236147.P18024318992952549418

/-!
# A236148: Number of (n+1) X (1+1) 0..2 arrays colored with the sets of distinct values in every 2 X 2 subblock.

The programs for A236148, there is no canonical definition to state claims against.
-/

/-! ## A236148.P5997289468640644379

`A236155(n+1)/A236164(n+1)*A236157(n+1)`
-/

namespace A236148.P5997289468640644379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236155 (n + 1) : ℚ) / (A236164 (n + 1) : ℚ) * (A236157 (n + 1) : ℚ)

end

end A236148.P5997289468640644379

/-! ## A236148.P11911748312862933726

`A236155(∑[n]+1)`
-/

namespace A236148.P11911748312862933726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236155 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236148.P11911748312862933726

/-! ## A236148.P4235155228037480811

`lcm(3, A236155(A000124(n)))`
-/

namespace A236148.P4235155228037480811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A236155 (A000124 n).toNat)

end

end A236148.P4235155228037480811

/-! ## A236148.P6191871714930047764

`record[A103451(n)*A236155(n+1)]`
-/

namespace A236148.P6191871714930047764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A236155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236148.P6191871714930047764

/-! ## A236148.P14633604267932579879

`record[root(A236155(n+1), A210764(n))]`
-/

namespace A236148.P14633604267932579879
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236155 (n + 1) : ℝ) ^ (1 / (A210764 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236148.P14633604267932579879

/-!
# A236149: Number of (n+1) X (2+1) 0..2 arrays colored with the sets of distinct values in every 2 X 2 subblock.

The programs for A236149, there is no canonical definition to state claims against.
-/

/-! ## A236149.P17665188711809976295

`6*A236158(n+1)`
-/

namespace A236149.P17665188711809976295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A236158 (n + 1)

end

end A236149.P17665188711809976295

/-! ## A236149.P12561575264102254810

`record[6*A236158(A193592(n))]`
-/

namespace A236149.P12561575264102254810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A236158 (A193592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236149.P12561575264102254810

/-! ## A236149.P9099205576912348308

`A236151(n+1)%(A236158(n+1)-A236160(n+1))`
-/

namespace A236149.P9099205576912348308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236151 (n + 1)) (A236158 (n + 1) - A236160 (n + 1))

end

end A236149.P9099205576912348308

/-! ## A236149.P8352686075398828576

`A236152(n+1)%(A236158(n+1)-A236161(n+1))`
-/

namespace A236149.P8352686075398828576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236152 (n + 1)) (A236158 (n + 1) - A236161 (n + 1))

end

end A236149.P8352686075398828576

/-! ## A236149.P11553653515029716501

`A236153(n+1)%(A236158(n+1)-A236162(n+1))`
-/

namespace A236149.P11553653515029716501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236153 (n + 1)) (A236158 (n + 1) - A236162 (n + 1))

end

end A236149.P11553653515029716501

/-!
# A236150: Number of (n+1)X(3+1) 0..2 arrays colored with the sets of distinct values in every 2X2 subblock.

The programs for A236150, there is no canonical definition to state claims against.
-/

/-! ## A236150.P4026865609826185179

`6*A236159(n+1)`
-/

namespace A236150.P4026865609826185179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A236159 (n + 1)

end

end A236150.P4026865609826185179

/-! ## A236150.P14448875422667624679

`record[6*A236159(A193592(n))]`
-/

namespace A236150.P14448875422667624679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A236159 (A193592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236150.P14448875422667624679

/-! ## A236150.P2490264235382476921

`A236152(n+1)%(A236159(n+1)-A236161(n+1))`
-/

namespace A236150.P2490264235382476921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236152 (n + 1)) (A236159 (n + 1) - A236161 (n + 1))

end

end A236150.P2490264235382476921

/-! ## A236150.P11016643464243426765

`A236153(n+1)%(A236159(n+1)-A236162(n+1))`
-/

namespace A236150.P11016643464243426765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236153 (n + 1)) (A236159 (n + 1) - A236162 (n + 1))

end

end A236150.P11016643464243426765

/-! ## A236150.P7566753795936633738

`6*A236164(A167614(n+1))`
-/

namespace A236150.P7566753795936633738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A236164 (A167614 (n + 1)).toNat

end

end A236150.P7566753795936633738

/-!
# A236151: Number of (n+1)X(4+1) 0..2 arrays colored with the sets of distinct values in every 2X2 subblock.

The programs for A236151, there is no canonical definition to state claims against.
-/

/-! ## A236151.P2960140685629174064

`6*A236160(n+1)`
-/

namespace A236151.P2960140685629174064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A236160 (n + 1)

end

end A236151.P2960140685629174064

/-! ## A236151.P7489214492456951761

`A236155(C(n+5, 2)-n)`
-/

namespace A236151.P7489214492456951761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236155 (Nat.choose (n + 5) 2 - n)

end

end A236151.P7489214492456951761

/-! ## A236151.P4167717400425136618

`A236155(A141214(n)+7)`
-/

namespace A236151.P4167717400425136618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236155 (A141214 n + 7).toNat

end

end A236151.P4167717400425136618

/-! ## A236151.P278016765084123891

`A236155(A052905(n)+9)`
-/

namespace A236151.P278016765084123891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236155 (A052905 n + 9).toNat

end

end A236151.P278016765084123891

/-! ## A236151.P14292292286303173581

`A236155(A055999(n)+10)`
-/

namespace A236151.P14292292286303173581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236155 (A055999 n + 10).toNat

end

end A236151.P14292292286303173581

/-!
# A236152: Number of (n+1) X (5+1) 0..2 arrays colored with the sets of distinct values in every 2 X 2 subblock.

The programs for A236152, there is no canonical definition to state claims against.
-/

/-! ## A236152.P17170327589391523171

`6*A236161(n+1)`
-/

namespace A236152.P17170327589391523171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A236161 (n + 1)

end

end A236152.P17170327589391523171

/-! ## A236152.P5724025093789624649

`A236155(A155212(n)+13)`
-/

namespace A236152.P5724025093789624649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236155 (A155212 n + 13).toNat

end

end A236152.P5724025093789624649

/-! ## A236152.P9128869981950721081

`A236155(A055998(n+4)-A290561(2*n+3))`
-/

namespace A236152.P9128869981950721081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236155 (A055998 (n + 4) - A290561 (2 * n + 3)).toNat

end

end A236152.P9128869981950721081

/-! ## A236152.P15314257287076346657

`A236155(A374005(n+1))`
-/

namespace A236152.P15314257287076346657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236155 (A374005 (n + 1)).toNat

end

end A236152.P15314257287076346657

/-! ## A236152.P11708732134610016978

`A236155(eq[4, A193592(n)])`
-/

namespace A236152.P11708732134610016978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236152.P11708732134610016978

/-!
# A236153: Number of (n+1)X(6+1) 0..2 arrays colored with the sets of distinct values in every 2X2 subblock.

The programs for A236153, there is no canonical definition to state claims against.
-/

/-! ## A236153.P9691262365245671923

`6*A236162(n+1)`
-/

namespace A236153.P9691262365245671923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A236162 (n + 1)

end

end A236153.P9691262365245671923

/-! ## A236153.P3145845565510080357

`A236155(A000217(n+5)+6)`
-/

namespace A236153.P3145845565510080357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236155 (A000217 (n + 5) + 6).toNat

end

end A236153.P3145845565510080357

/-! ## A236153.P5412510280474277199

`A236155(A374007(n+1))`
-/

namespace A236153.P5412510280474277199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236155 (A374007 (n + 1)).toNat

end

end A236153.P5412510280474277199

/-! ## A236153.P2310916887297572554

`A236155(eq[3, A219347(n)])`
-/

namespace A236153.P2310916887297572554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236153.P2310916887297572554

/-! ## A236153.P13219632243143047403

`A236155(eq[5, A193592(n)])`
-/

namespace A236153.P13219632243143047403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236153.P13219632243143047403

/-!
# A236154: Number of (n+1)X(7+1) 0..2 arrays colored with the sets of distinct values in every 2X2 subblock.

The programs for A236154, there is no canonical definition to state claims against.
-/

/-! ## A236154.P17499508295181593192

`6*A236163(n+1)`
-/

namespace A236154.P17499508295181593192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A236163 (n + 1)

end

end A236154.P17499508295181593192

/-! ## A236154.P3025370387341350309

`A236155(A374008(n+1))`
-/

namespace A236154.P3025370387341350309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236155 (A374008 (n + 1)).toNat

end

end A236154.P3025370387341350309

/-! ## A236154.P10059586934233282870

`A236155(eq[4, A219347(n)])`
-/

namespace A236154.P10059586934233282870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236154.P10059586934233282870

/-! ## A236154.P197534167177385009

`A236155(eq[6, A193592(n)])`
-/

namespace A236154.P197534167177385009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236154.P197534167177385009

/-! ## A236154.P12760893208134573857

`A236155(Δ[A023551(n+2)])`
-/

namespace A236154.P12760893208134573857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236155 (f1 (n + 1) - f1 n).toNat

end

end A236154.P12760893208134573857

/-!
# A236155: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays colored with the sets of distinct values in every 2X2 subblock.

The programs for A236155, there is no canonical definition to state claims against.
-/

/-! ## A236155.P7153879938242382764

`A236148(n+1)/A236157(n+1)*A236164(n+1)`
-/

namespace A236155.P7153879938242382764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236148 (n + 1) : ℚ) / (A236157 (n + 1) : ℚ) * (A236164 (n + 1) : ℚ)

end

end A236155.P7153879938242382764

/-! ## A236155.P17226264607896567267

`xor(A008458(A236164(n+1)), A236239(n))`
-/

namespace A236155.P17226264607896567267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008458 (A236164 (n + 1)).toNat) (A236239 (n + 15))

end

end A236155.P17226264607896567267

/-! ## A236155.P12328469781165779394

`A236147(n+1)/A236156(n+1)*A236164(n+1)`
-/

namespace A236155.P12328469781165779394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236147 (n + 1) : ℚ) / (A236156 (n + 1) : ℚ) * (A236164 (n + 1) : ℚ)

end

end A236155.P12328469781165779394

/-!
# A236156: Number of (n+1)X(n+1) 0..2 arrays colored with the sets of distinct values in every 2X2 subblock, with new values 0..2 introduced row-major order.

The programs for A236156, there is no canonical definition to state claims against.
-/

/-! ## A236156.P18032043768148356599

`ceil(A236147(n+1)/6)`
-/

namespace A236156.P18032043768148356599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A236147 (n + 1) : ℚ) / 6⌉

end

end A236156.P18032043768148356599

/-! ## A236156.P9466568985744907538

`A236164(∑[4*n]+1)`
-/

namespace A236156.P9466568985744907538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236156.P9466568985744907538

/-! ## A236156.P724016724882765118

`ceil(A236155(∑[4*n]+1)/6)`
-/

namespace A236156.P724016724882765118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A236155 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 6⌉

end

end A236156.P724016724882765118

/-! ## A236156.P7060468371083416041

`round(A236155(or(1, ∑[4*n]))/6)`
-/

namespace A236156.P7060468371083416041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A236155 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)) : ℚ) / 6)

end

end A236156.P7060468371083416041

/-!
# A236157: Number of (n+1) X (1+1) 0..2 arrays colored with the sets of distinct values in every 2 X 2 subblock, with new values 0..2 introduced row-major order.

The programs for A236157, there is no canonical definition to state claims against.
-/

/-! ## A236157.P2382954764168394671

`ceil(A236148(n+1)/6)`
-/

namespace A236157.P2382954764168394671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A236148 (n + 1) : ℚ) / 6⌉

end

end A236157.P2382954764168394671

/-! ## A236157.P18150849397962795991

`lcm(round(A236148(n+1)/6), A033999(n))`
-/

namespace A236157.P18150849397962795991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A236148 (n + 1) : ℚ) / 6)) (A033999 n)

end

end A236157.P18150849397962795991

/-! ## A236157.P61575149329926248

`A007318(∑[n])*round(A236148(n+1)/6)`
-/

namespace A236157.P61575149329926248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A236148 (n + 1) : ℚ) / 6)

end

end A236157.P61575149329926248

/-! ## A236157.P11655615050128459676

`round(A236148(ratio[A000079(n)]+n-1)/6)`
-/

namespace A236157.P11655615050128459676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A236148 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) + ((n : ℤ) - 1 : ℚ))).toNat : ℚ) / 6)

end

end A236157.P11655615050128459676

/-! ## A236157.P11934544301749254207

`A000007(n+1)+round(A236148(n+1)/6)`
-/

namespace A236157.P11934544301749254207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway ((A236148 (n + 1) : ℚ) / 6)

end

end A236157.P11934544301749254207

/-! ## A236157.P11277247024944379050

`round(A236148(n+1)/6)*A266303(2*n)`
-/

namespace A236157.P11277247024944379050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A236148 (n + 1) : ℚ) / 6) * A266303 (2 * n)

end

end A236157.P11277247024944379050

/-! ## A236157.P11706765343768534457

`round(A236148(n+1)/6)*A001222(A051686(n+1))`
-/

namespace A236157.P11706765343768534457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A236148 (n + 1) : ℚ) / 6) * A001222 (A051686 (n + 1)).toNat

end

end A236157.P11706765343768534457

/-! ## A236157.P13845647754117376313

`round(A236148(n+1)/6)*A104725(A265575(n+1))`
-/

namespace A236157.P13845647754117376313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A236148 (n + 1) : ℚ) / 6) * A104725 (A265575 (n + 1)).toNat

end

end A236157.P13845647754117376313

/-! ## A236157.P2710125295361375746

`round(A236148(n+1)/6)*A003415(A020639(n+2))`
-/

namespace A236157.P2710125295361375746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A236148 (n + 1) : ℚ) / 6) * A003415 (A020639 (n + 2)).toNat

end

end A236157.P2710125295361375746

/-! ## A236157.P13348204573585992045

`round(A236148(n+1)/6)*A020985(n)*A020985(n)`
-/

namespace A236157.P13348204573585992045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A236148 (n + 1) : ℚ) / 6) * A020985 n * A020985 n

end

end A236157.P13348204573585992045

/-! ## A236157.P15075912585133233986

`round(A236148(n+1)/6)*A115296(A000096(n+5))`
-/

namespace A236157.P15075912585133233986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A236148 (n + 1) : ℚ) / 6) * A115296 (A000096 (n + 5)).toNat

end

end A236157.P15075912585133233986

/-!
# A236158: Number of (n+1) X (2+1) 0..2 arrays colored with the sets of distinct values in every 2 X 2 subblock, with new values 0..2 introduced row-major order.

The programs for A236158, there is no canonical definition to state claims against.
-/

/-! ## A236158.P7496101091436997013

`A236149(n+1)/6`
-/

namespace A236158.P7496101091436997013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236149 (n + 1) : ℚ) / 6

end

end A236158.P7496101091436997013

/-! ## A236158.P4433704004924014364

`A236164(∑[n+1]+2)`
-/

namespace A236158.P4433704004924014364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236158.P4433704004924014364

/-! ## A236158.P5707215031507231550

`A236155(∑[n+1]+2)/6`
-/

namespace A236158.P5707215031507231550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236155 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 6

end

end A236158.P5707215031507231550

/-! ## A236158.P11183122959837222318

`record[A236164(abs(A201163(n)))]`
-/

namespace A236158.P11183122959837222318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236158.P11183122959837222318

/-! ## A236158.P234048568124344071

`record[A236164(eq[0, A051168(n)])]`
-/

namespace A236158.P234048568124344071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236158.P234048568124344071

/-!
# A236159: Number of (n+1)X(3+1) 0..2 arrays colored with the sets of distinct values in every 2X2 subblock, with new values 0..2 introduced row-major order.

The programs for A236159, there is no canonical definition to state claims against.
-/

/-! ## A236159.P15196928582521305537

`A236150(n+1)/6`
-/

namespace A236159.P15196928582521305537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236150 (n + 1) : ℚ) / 6

end

end A236159.P15196928582521305537

/-! ## A236159.P10591001298880002994

`A236164(∑[n+2]+4)`
-/

namespace A236159.P10591001298880002994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236159.P10591001298880002994

/-! ## A236159.P17549342633347627170

`lcm(2, A236164(A167614(n+1)))`
-/

namespace A236159.P17549342633347627170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236164 (A167614 (n + 1)).toNat)

end

end A236159.P17549342633347627170

/-! ## A236159.P8118388050544210872

`A236164(A167614(n+1))+A025443(n)`
-/

namespace A236159.P8118388050544210872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (A167614 (n + 1)).toNat + A025443 n

end

end A236159.P8118388050544210872

/-! ## A236159.P5641678704359349270

`A236155(∑[n+2]+4)/6`
-/

namespace A236159.P5641678704359349270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236155 (∑ j ∈ Finset.range (n + 1), f1 j + 4) : ℚ) / 6

end

end A236159.P5641678704359349270

/-!
# A236160: Number of (n+1)X(4+1) 0..2 arrays colored with the sets of distinct values in every 2X2 subblock, with new values 0..2 introduced row-major order.

The programs for A236160, there is no canonical definition to state claims against.
-/

/-! ## A236160.P8607516801737394301

`A236151(n+1)/6`
-/

namespace A236160.P8607516801737394301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236151 (n + 1) : ℚ) / 6

end

end A236160.P8607516801737394301

/-! ## A236160.P352224044962054409

`A236164(C(n+5, 2)-n)`
-/

namespace A236160.P352224044962054409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (Nat.choose (n + 5) 2 - n)

end

end A236160.P352224044962054409

/-! ## A236160.P10482656216699291201

`A236164(A374004(n+1))`
-/

namespace A236160.P10482656216699291201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (A374004 (n + 1)).toNat

end

end A236160.P10482656216699291201

/-! ## A236160.P9133853559945908019

`A236164(A141214(n)+7)`
-/

namespace A236160.P9133853559945908019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (A141214 n + 7).toNat

end

end A236160.P9133853559945908019

/-! ## A236160.P13954936586998779911

`A236164(A052905(n)+9)`
-/

namespace A236160.P13954936586998779911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (A052905 n + 9).toNat

end

end A236160.P13954936586998779911

/-!
# A236161: Number of (n+1)X(5+1) 0..2 arrays colored with the sets of distinct values in every 2X2 subblock, with new values 0..2 introduced row-major order.

The programs for A236161, there is no canonical definition to state claims against.
-/

/-! ## A236161.P9957833273410136450

`A236152(n+1)/6`
-/

namespace A236161.P9957833273410136450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236152 (n + 1) : ℚ) / 6

end

end A236161.P9957833273410136450

/-! ## A236161.P11241686356381841705

`A236164(A374005(n+1))`
-/

namespace A236161.P11241686356381841705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (A374005 (n + 1)).toNat

end

end A236161.P11241686356381841705

/-! ## A236161.P6943413398525192742

`A236164(A155212(n)+13)`
-/

namespace A236161.P6943413398525192742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (A155212 n + 13).toNat

end

end A236161.P6943413398525192742

/-! ## A236161.P9850607031140170689

`A236164(A056000(n)+15)`
-/

namespace A236161.P9850607031140170689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (A056000 n + 15).toNat

end

end A236161.P9850607031140170689

/-! ## A236161.P8107504246717552765

`A236164(eq[7, A066657(n)])`
-/

namespace A236161.P8107504246717552765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236161.P8107504246717552765

/-!
# A236162: Number of (n+1)X(6+1) 0..2 arrays colored with the sets of distinct values in every 2X2 subblock, with new values 0..2 introduced row-major order.

The programs for A236162, there is no canonical definition to state claims against.
-/

/-! ## A236162.P2769045208707402035

`A236153(n+1)/6`
-/

namespace A236162.P2769045208707402035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236153 (n + 1) : ℚ) / 6

end

end A236162.P2769045208707402035

/-! ## A236162.P5476357022789828737

`A236164(A374007(n+1))`
-/

namespace A236162.P5476357022789828737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (A374007 (n + 1)).toNat

end

end A236162.P5476357022789828737

/-! ## A236162.P8768476369977038218

`A236164(eq[7, A131818(n+1)])`
-/

namespace A236162.P8768476369977038218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236162.P8768476369977038218

/-! ## A236162.P8147960328450034937

`A236164(eq[3, A219347(n)])`
-/

namespace A236162.P8147960328450034937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236162.P8147960328450034937

/-! ## A236162.P6638362275920295503

`A236164(eq[5, A193592(n)])`
-/

namespace A236162.P6638362275920295503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236162.P6638362275920295503

/-!
# A236163: Number of (n+1)X(7+1) 0..2 arrays colored with the sets of distinct values in every 2X2 subblock, with new values 0..2 introduced row-major order.

The programs for A236163, there is no canonical definition to state claims against.
-/

/-! ## A236163.P15947400024729696932

`A236154(n+1)/6`
-/

namespace A236163.P15947400024729696932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236154 (n + 1) : ℚ) / 6

end

end A236163.P15947400024729696932

/-! ## A236163.P17326660232700135347

`A236164(A374008(n+1))`
-/

namespace A236163.P17326660232700135347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (A374008 (n + 1)).toNat

end

end A236163.P17326660232700135347

/-! ## A236163.P13974435621616787981

`A236164(eq[11, A066657(n)])`
-/

namespace A236163.P13974435621616787981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236163.P13974435621616787981

/-! ## A236163.P10968660172310393623

`A236164(eq[8, A131818(n+1)])`
-/

namespace A236163.P10968660172310393623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236163.P10968660172310393623

/-! ## A236163.P1327224709739844962

`A236164(A055999(n+4))`
-/

namespace A236163.P1327224709739844962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236164 (A055999 (n + 4)).toNat

end

end A236163.P1327224709739844962

/-!
# A236164: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays colored with the sets of distinct values in every 2X2 subblock, with new values 0..2 introduced row-major order.

The programs for A236164, there is no canonical definition to state claims against.
-/

/-! ## A236164.P7327877391951053670

`ceil(A236155(n+1)/6)`
-/

namespace A236164.P7327877391951053670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A236155 (n + 1) : ℚ) / 6⌉

end

end A236164.P7327877391951053670

/-! ## A236164.P13990076640977181907

`round(A236155(2*n-n+1)/6)`
-/

namespace A236164.P13990076640977181907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A236155 ((2 * n : ℤ) - (n : ℤ) + 1).toNat : ℚ) / 6)

end

end A236164.P13990076640977181907

/-! ## A236164.P2725681229874115029

`floor(A000007(n)+A236155(n+1)/6)`
-/

namespace A236164.P2725681229874115029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000007 n : ℚ) + (A236155 (n + 1) : ℚ) / 6⌋

end

end A236164.P2725681229874115029

/-! ## A236164.P9258500311936644417

`lcm(round(A236155(n+1)/6), A033999(n))`
-/

namespace A236164.P9258500311936644417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A236155 (n + 1) : ℚ) / 6)) (A033999 n)

end

end A236164.P9258500311936644417

/-! ## A236164.P7087659156670549731

`round(A236155(n+1)/6+n+4-A020705(n))`
-/

namespace A236164.P7087659156670549731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A236155 (n + 1) : ℚ) / 6 + ((n + 4 : ℤ) - A020705 n : ℚ))

end

end A236164.P7087659156670549731

/-!
# A236165: a(n) = a(n-1) + a(n-2) + a(n-3), with a(0) = a(1) = 1, a(2) = 0.

The programs for A236165, the canonical program `A236165.P997099961587350817` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236165 has offset 0).

The definition of A236165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236165.P7787635720141249284

`ogf((-1+x^2+x^3)/(-1+x+x^3+x^4))`
-/

namespace A236165.P7787635720141249284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -1] [1, -1, 0, -1, -1] n

end

end A236165.P7787635720141249284

namespace A236165

/-- `ogf((-1+x^2+x^3)/(-1+x+x^3+x^4))` -/
def P7787635720141249284.Spec : Prop :=
  ∀ n, P7787635720141249284.a n = A236165 n

end A236165

/-! ## A236165.P997099961587350817

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A236165

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P997099961587350817.Spec : Prop :=
  ∀ n, (P997099961587350817.a n : ℤ) = A236165 n

theorem P997099961587350817.correct : P997099961587350817.Spec := by
  intro n
  simp only [A236165]

end A236165

/-! ## A236165.P13939810360210902969

`A212804(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A236165.P13939810360210902969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A212804 n - a (n - 2)

end

end A236165.P13939810360210902969

namespace A236165

/-- `A212804(n)-a(n-2)` -/
def P13939810360210902969.Spec : Prop :=
  ∀ n, P13939810360210902969.a n = A236165 n

end A236165

/-! ## A236165.P10210742507011614762

`A324969(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A236165.P10210742507011614762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A324969 n - a (n - 2)

end

end A236165.P10210742507011614762

namespace A236165

/-- `A324969(n)-a(n-2)` -/
def P10210742507011614762.Spec : Prop :=
  ∀ n, P10210742507011614762.a n = A236165 n

end A236165

/-! ## A236165.P602584726823714556

`A000045(n-1)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A236165.P602584726823714556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000045 (n - 1) - a (n - 2)

end

end A236165.P602584726823714556

namespace A236165

/-- `A000045(n-1)-a(n-2)` -/
def P602584726823714556.Spec : Prop :=
  ∀ n, P602584726823714556.a n = A236165 n

end A236165

/-! ## A236165.P796729530127958376

`A295671(n)+Δ[A295671(n)/2]`
-/

namespace A236165.P796729530127958376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295671 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295671 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A236165.P796729530127958376

namespace A236165

/-- `A295671(n)+Δ[A295671(n)/2]` -/
def P796729530127958376.Spec : Prop :=
  ∀ n, P796729530127958376.a n = (A236165 n : ℚ)

end A236165

/-! ## A236165.P10889569804838192512

`A295671(n)+A295671(n)-A295675(n)`
-/

namespace A236165.P10889569804838192512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 n + (A295671 n - A295675 n)

end

end A236165.P10889569804838192512

namespace A236165

/-- `A295671(n)+A295671(n)-A295675(n)` -/
def P10889569804838192512.Spec : Prop :=
  ∀ n, P10889569804838192512.a n = A236165 n

end A236165

/-! ## A236165.P13243447941607524701

`A295688(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A236165.P13243447941607524701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A295688 (n - 1) - a (n - 1)

end

end A236165.P13243447941607524701

namespace A236165

/-- `A295688(n-1)-a(n-1)` -/
def P13243447941607524701.Spec : Prop :=
  ∀ n, P13243447941607524701.a n = A236165 n

end A236165

/-! ## A236165.P12861461748427681806

`A295682(n)+A152163(n)`
-/

namespace A236165.P12861461748427681806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295682 n + A152163 n

end

end A236165.P12861461748427681806

namespace A236165

/-- `A295682(n)+A152163(n)` -/
def P12861461748427681806.Spec : Prop :=
  ∀ n, P12861461748427681806.a n = A236165 n

end A236165

/-! ## A236165.P6444848218238538665

`A295685(n)-A212804(n)`
-/

namespace A236165.P6444848218238538665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295685 n - A212804 n

end

end A236165.P6444848218238538665

namespace A236165

/-- `A295685(n)-A212804(n)` -/
def P6444848218238538665.Spec : Prop :=
  ∀ n, P6444848218238538665.a n = A236165 n

end A236165

/-! ## A236165.P1450352806274137541

`2*A295671(n)-A295675(n)`
-/

namespace A236165.P1450352806274137541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295671 n - A295675 n

end

end A236165.P1450352806274137541

namespace A236165

/-- `2*A295671(n)-A295675(n)` -/
def P1450352806274137541.Spec : Prop :=
  ∀ n, P1450352806274137541.a n = A236165 n

end A236165

/-! ## A236165.P8948375378017298665

`A295671(n)+A295681(n)-A074677(n)`
-/

namespace A236165.P8948375378017298665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 n + (A295681 n - A074677 n)

end

end A236165.P8948375378017298665

namespace A236165

/-- `A295671(n)+A295681(n)-A074677(n)` -/
def P8948375378017298665.Spec : Prop :=
  ∀ n, P8948375378017298665.a n = A236165 n

end A236165

/-! ## A236165.P6400255965898163553

`A126116(n)-A103609(n+1)*A103609(n)`
-/

namespace A236165.P6400255965898163553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 n - A103609 (n + 1) * A103609 n

end

end A236165.P6400255965898163553

namespace A236165

/-- `A126116(n)-A103609(n+1)*A103609(n)` -/
def P6400255965898163553.Spec : Prop :=
  ∀ n, P6400255965898163553.a n = A236165 n

end A236165

/-! ## A236165.P18235857375577960454

`round(A295690(n)/3)`
-/

namespace A236165.P18235857375577960454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A295690 n : ℚ) / 3)

end

end A236165.P18235857375577960454

namespace A236165

/-- `round(A295690(n)/3)` -/
def P18235857375577960454.Spec : Prop :=
  ∀ n, P18235857375577960454.a n = A236165 n

end A236165

/-! ## A236165.P5652751837520063516

`Δ[A000045(n)]-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A236165.P5652751837520063516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 2)

end

end A236165.P5652751837520063516

namespace A236165

/-- `Δ[A000045(n)]-a(n-2)` -/
def P5652751837520063516.Spec : Prop :=
  ∀ n, P5652751837520063516.a n = A236165 n

end A236165

/-! ## A236165.P16727466407477370748

`A236144(n)-A006498(n)`
-/

namespace A236165.P16727466407477370748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236144 n - A006498 n

end

end A236165.P16727466407477370748

namespace A236165

/-- `A236144(n)-A006498(n)` -/
def P16727466407477370748.Spec : Prop :=
  ∀ n, P16727466407477370748.a n = A236165 n

end A236165

/-! ## A236165.P13028258676108499633

`A295690(n)-A126116(n)`
-/

namespace A236165.P13028258676108499633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295690 n - A126116 n

end

end A236165.P13028258676108499633

namespace A236165

/-- `A295690(n)-A126116(n)` -/
def P13028258676108499633.Spec : Prop :=
  ∀ n, P13028258676108499633.a n = A236165 n

end A236165

/-! ## A236165.P15795428484959155550

`A111569(n+1)-A074677(n)`
-/

namespace A236165.P15795428484959155550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 (n + 1) - A074677 n

end

end A236165.P15795428484959155550

namespace A236165

/-- `A111569(n+1)-A074677(n)` -/
def P15795428484959155550.Spec : Prop :=
  ∀ n, P15795428484959155550.a n = A236165 n

end A236165

/-! ## A236165.P2229666086102337237

`A236144(n)-A074677(n+1)`
-/

namespace A236165.P2229666086102337237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236144 n - A074677 (n + 1)

end

end A236165.P2229666086102337237

namespace A236165

/-- `A236144(n)-A074677(n+1)` -/
def P2229666086102337237.Spec : Prop :=
  ∀ n, P2229666086102337237.a n = A236165 n

end A236165

/-! ## A236165.P16585244690652829503

`A111571(n)+A111573(n)-A000045(n)`
-/

namespace A236165.P16585244690652829503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111571 n + (A111573 n - A000045 n)

end

end A236165.P16585244690652829503

namespace A236165

/-- `A111571(n)+A111573(n)-A000045(n)` -/
def P16585244690652829503.Spec : Prop :=
  ∀ n, P16585244690652829503.a n = A236165 n

end A236165

/-!
# A236166: Numbers with no nontrivial quadratic conjugates (see comments).

The programs for A236166, there is no canonical definition to state claims against.
-/

/-! ## A236166.P13102529350765201620

`∑[∏{e}[∑[A061139(n)], #]]`
-/

namespace A236166.P13102529350765201620
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061139 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236166.P13102529350765201620

/-! ## A236166.P955233207077890302

`A061071(A112740(n))`
-/

namespace A236166.P955233207077890302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (A112740 n).toNat

end

end A236166.P955233207077890302

/-! ## A236166.P15861368870338339264

`∑[A025450(A018249(n))]`
-/

namespace A236166.P15861368870338339264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025450 (A018249 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236166.P15861368870338339264

/-! ## A236166.P10024191404506239697

`∑[A099774(A322276(n))]`
-/

namespace A236166.P10024191404506239697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (A322276 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236166.P10024191404506239697

/-!
# A236167: Numbers k such that (47^k + 1)/48 is prime.

The programs for A236167, there is no canonical definition to state claims against.
-/

/-! ## A236167.P16079717393393304928

`A191084(A342790(record[(n+1)²/∏{p}[n+1, #]]))`
-/

namespace A236167.P16079717393393304928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191084 (A342790 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat).toNat

end

end A236167.P16079717393393304928

/-!
# A236168: Primes p such that p^3 - p - 1 is prime.

The programs for A236168, there is no canonical definition to state claims against.
-/

/-! ## A236168.P17976259201203426547

`p?[A126421(n+1)]`
-/

namespace A236168.P17976259201203426547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236168.P17976259201203426547

/-! ## A236168.P5782258295459834451

`p?[ceil(root(A116581(n+1), 3))]`
-/

namespace A236168.P5782258295459834451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A116581 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236168.P5782258295459834451

/-! ## A236168.P13861468312781368519

`record[A006530(A126421(n+3))]`
-/

namespace A236168.P13861468312781368519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A126421 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236168.P13861468312781368519

/-! ## A236168.P16970401109285352223

`filter[A126421(n+1), A010051(#)]`
-/

namespace A236168.P16970401109285352223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A236168.P16970401109285352223

/-! ## A236168.P8899182616034580166

`∩[A000040(n+1), A126421(n+1)]`
-/

namespace A236168.P8899182616034580166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236168.P8899182616034580166

/-! ## A236168.P8895784461441889954

`∩[A008578(n+1), A126421(n+1)]`
-/

namespace A236168.P8895784461441889954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236168.P8895784461441889954

/-! ## A236168.P4239263175487612464

`∩[A045319(n+1), A126421(n+1)]`
-/

namespace A236168.P4239263175487612464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236168.P4239263175487612464

/-! ## A236168.P13661250628302209743

`∩[A045320(n+1), A126421(n+1)]`
-/

namespace A236168.P13661250628302209743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236168.P13661250628302209743

/-! ## A236168.P8087490561605193284

`∩[A045334(n+1), A126421(n+1)]`
-/

namespace A236168.P8087490561605193284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236168.P8087490561605193284

/-! ## A236168.P10888640276769114339

`∩[A053813(n+1), A126421(n+1)]`
-/

namespace A236168.P10888640276769114339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236168.P10888640276769114339

/-! ## A236168.P1268706596368493166

`∩[A116974(n+1), A126421(n+1)]`
-/

namespace A236168.P1268706596368493166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236168.P1268706596368493166

/-! ## A236168.P685345094611474913

`∩[A126421(n+1), A158611(n+1)]`
-/

namespace A236168.P685345094611474913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236168.P685345094611474913

/-! ## A236168.P10343748700884630860

`∩[A126421(n+1), A182986(n+1)]`
-/

namespace A236168.P10343748700884630860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236168.P10343748700884630860

/-! ## A236168.P13501975744781529755

`∩[A126421(n+1), A348440(n+1)]`
-/

namespace A236168.P13501975744781529755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236168.P13501975744781529755

/-! ## A236168.P6218259280472182492

`A000027(record[A020639(A126421(n+1))])`
-/

namespace A236168.P6218259280472182492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A126421 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A236168.P6218259280472182492

/-! ## A236168.P11746354476970280322

`record[A020639(A126421(n+1)%A002327(n+1))]`
-/

namespace A236168.P11746354476970280322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A126421 (n + 1)) (A002327 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236168.P11746354476970280322

/-! ## A236168.P14792308710584811150

`filter[A126421(n+1), A323152(#)]`
-/

namespace A236168.P14792308710584811150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A236168.P14792308710584811150

/-! ## A236168.P3609472961975781303

`filter[A126421(n+1), A323153(#)]`
-/

namespace A236168.P3609472961975781303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A236168.P3609472961975781303

/-! ## A236168.P14670167459380876090

`∩[A372059(n+1), A126421(n+1)]`
-/

namespace A236168.P14670167459380876090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236168.P14670167459380876090

/-! ## A236168.P15797783214508818514

`filter[A126421(n+1), A080339(#)]`
-/

namespace A236168.P15797783214508818514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A236168.P15797783214508818514

/-!
# A236169: Numbers n such that n!*3^n + 1 is prime.

The programs for A236169, there is no canonical definition to state claims against.
-/

/-! ## A236169.P14368280197596958158

`A156323(A000142(n))%A026701(n)`
-/

namespace A236169.P14368280197596958158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156323 (A000142 n).toNat) (A026701 n)

end

end A236169.P14368280197596958158

/-! ## A236169.P14059180202709170957

`A018423(A018423(n+1))-A339560(n)`
-/

namespace A236169.P14059180202709170957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018423 (A018423 (n + 1)).toNat - A339560 n

end

end A236169.P14059180202709170957

/-!
# A236170: Number of partitions of n which have nonconstant reversal sums, as defined in Comments.

The programs for A236170, there is no canonical definition to state claims against.
-/

/-! ## A236170.P14879051158799074390

`Δ[A000070(n)]-A236129(n+1)`
-/

namespace A236170.P14879051158799074390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A236129 (n + 1)

end

end A236170.P14879051158799074390

/-! ## A236170.P12101227556910002084

`record[A035363(n)]-A236129(n+1)`
-/

namespace A236170.P12101227556910002084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A236129 (n + 1)

end

end A236170.P12101227556910002084

/-! ## A236170.P2340767978091114871

`record[A035444(n)]-A236129(n+1)`
-/

namespace A236170.P2340767978091114871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A236129 (n + 1)

end

end A236170.P2340767978091114871

/-! ## A236170.P13278060227087751895

`A000041(n+1)-A236129(n+1)`
-/

namespace A236170.P13278060227087751895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A236129 (n + 1)

end

end A236170.P13278060227087751895

/-! ## A236170.P5654423159879794431

`A100824(A103517(n))-A236129(n+1)`
-/

namespace A236170.P5654423159879794431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (A103517 n).toNat - A236129 (n + 1)

end

end A236170.P5654423159879794431

/-!
# A236173: Primes p such that p^2 - p - 1, p^3 - p - 1 and p^4 - p - 1 are all prime.

The programs for A236173, there is no canonical definition to state claims against.
-/

/-! ## A236173.P6320882113221968468

`p?[A236171(n+1)]`
-/

namespace A236173.P6320882113221968468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236173.P6320882113221968468

/-! ## A236173.P16913913812958458728

`record[p?[A236171(A126759(n))]]`
-/

namespace A236173.P16913913812958458728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236171 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236173.P16913913812958458728

/-! ## A236173.P13680958591854654173

`record[p?[A236171(A141256(n))]]`
-/

namespace A236173.P13680958591854654173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236171 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236173.P13680958591854654173

/-! ## A236173.P502142154303378309

`record[p?[A236171(A286378(n))]]`
-/

namespace A236173.P502142154303378309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236171 (A286378 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236173.P502142154303378309

/-! ## A236173.P876057671264742955

`record[p?[A236171(A324346(n))]]`
-/

namespace A236173.P876057671264742955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236171 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236173.P876057671264742955

/-!
# A236174: Maximal prime among the base-k representations of the n-th prime, read in decimal, for k=2,3,...,10.

The programs for A236174, there is no canonical definition to state claims against.
-/

/-! ## A236174.P8840049009568256656

`A388300(A000040(n+1))`
-/

namespace A236174.P8840049009568256656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388300 (A000040 (n + 1)).toNat

end

end A236174.P8840049009568256656

/-! ## A236174.P11415088697399263471

`A388300(A008578(n+2))`
-/

namespace A236174.P11415088697399263471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388300 (A008578 (n + 2)).toNat

end

end A236174.P11415088697399263471

/-! ## A236174.P13186080352307664205

`A388300(A182986(n+2))`
-/

namespace A236174.P13186080352307664205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388300 (A182986 (n + 2)).toNat

end

end A236174.P13186080352307664205

/-! ## A236174.P748051640850444695

`A388300(record[A323171(n+2)])`
-/

namespace A236174.P748051640850444695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323171 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A236174.P748051640850444695

/-! ## A236174.P15924544964221320550

`A388300(record[A000010(n+1)+1])`
-/

namespace A236174.P15924544964221320550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A236174.P15924544964221320550

/-!
# A236175: Prime gap pattern of compacting Eratosthenes sieve for prime(4) = 7.

The programs for A236175, there is no canonical definition to state claims against.
-/

/-! ## A236175.P16321115241718751855

`A359632(n+1)-1`
-/

namespace A236175.P16321115241718751855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359632 (n + 1) - 1

end

end A236175.P16321115241718751855

/-!
# A236176: Prime gap pattern of compacting Eratosthenes sieve for prime(5) = 11.

The programs for A236176, there is no canonical definition to state claims against.
-/

/-! ## A236176.P2865054047534467854

`Δ[A092695(A084969(n+1))]-1`
-/

namespace A236176.P2865054047534467854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092695 (A084969 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A236176.P2865054047534467854

/-!
# A236182: Sum of the sixth powers of the first n primes.

The programs for A236182, the canonical program `A236182.P8812619462684082735` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236182 has offset 1).

The definition of A236182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236182.P8812619462684082735

`∑[A030516(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A236182

/-- `∑[A030516(n+1)]` -/
def P8812619462684082735.Spec : Prop :=
  ∀ n, P8812619462684082735.a n = A236182 (n + 1)

theorem P8812619462684082735.correct : P8812619462684082735.Spec := by
  intro n
  simp only [A236182, Nat.add_sub_cancel]

end A236182

/-! ## A236182.P11843977311596557598

`∑[A030078(n+1)²]`
-/

namespace A236182.P11843977311596557598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P11843977311596557598

namespace A236182

/-- `∑[A030078(n+1)²]` -/
def P11843977311596557598.Spec : Prop :=
  ∀ n, P11843977311596557598.a n = A236182 (n + 1)

end A236182

/-! ## A236182.P17561590444166367396

`∑[sqrt(A030631(n+1))]`
-/

namespace A236182.P17561590444166367396
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030631 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P17561590444166367396

namespace A236182

/-- `∑[sqrt(A030631(n+1))]` -/
def P17561590444166367396.Spec : Prop :=
  ∀ n, P17561590444166367396.a n = (A236182 (n + 1) : ℝ)

end A236182

/-! ## A236182.P10377944126436815291

`∑[A001248(n+1)^3]`
-/

namespace A236182.P10377944126436815291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P10377944126436815291

namespace A236182

/-- `∑[A001248(n+1)^3]` -/
def P10377944126436815291.Spec : Prop :=
  ∀ n, P10377944126436815291.a n = A236182 (n + 1)

end A236182

/-! ## A236182.P2499750861920759625

`∑[A000040(n+1)^6]`
-/

namespace A236182.P2499750861920759625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P2499750861920759625

namespace A236182

/-- `∑[A000040(n+1)^6]` -/
def P2499750861920759625.Spec : Prop :=
  ∀ n, P2499750861920759625.a n = A236182 (n + 1)

end A236182

/-! ## A236182.P1702605200220651142

`∑[(A153481(n+1)+2)²]`
-/

namespace A236182.P1702605200220651142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153481 (n + 1) + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P1702605200220651142

namespace A236182

/-- `∑[(A153481(n+1)+2)²]` -/
def P1702605200220651142.Spec : Prop :=
  ∀ n, P1702605200220651142.a n = A236182 (n + 1)

end A236182

/-! ## A236182.P1016803443544821200

`∑[(A172190(n+1)/2)²]`
-/

namespace A236182.P1016803443544821200
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A172190 (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P1016803443544821200

namespace A236182

/-- `∑[(A172190(n+1)/2)²]` -/
def P1016803443544821200.Spec : Prop :=
  ∀ n, P1016803443544821200.a n = (A236182 (n + 1) : ℚ)

end A236182

/-! ## A236182.P11388686057028029427

`∑[(A273960(n+1)^3)²]`
-/

namespace A236182.P11388686057028029427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A273960 (n + 1) ^ 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P11388686057028029427

namespace A236182

/-- `∑[(A273960(n+1)^3)²]` -/
def P11388686057028029427.Spec : Prop :=
  ∀ n, P11388686057028029427.a n = A236182 (n + 1)

end A236182

/-! ## A236182.P14279463083555283945

`∑[(A000040(2*n-(n-1))^3)²]`
-/

namespace A236182.P14279463083555283945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P14279463083555283945

namespace A236182

/-- `∑[(A000040(2*n-(n-1))^3)²]` -/
def P14279463083555283945.Spec : Prop :=
  ∀ n, P14279463083555283945.a n = A236182 (n + 1)

end A236182

/-! ## A236182.P12212436444462135619

`∑[(Δ[A007504(n)]*A001248(n+1))²]`
-/

namespace A236182.P12212436444462135619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) * A001248 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P12212436444462135619

namespace A236182

/-- `∑[(Δ[A007504(n)]*A001248(n+1))²]` -/
def P12212436444462135619.Spec : Prop :=
  ∀ n, P12212436444462135619.a n = A236182 (n + 1)

end A236182

/-! ## A236182.P9240584620521350903

`∑[(A000040(n+1)*A001248(n+1))²]`
-/

namespace A236182.P9240584620521350903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) * A001248 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P9240584620521350903

namespace A236182

/-- `∑[(A000040(n+1)*A001248(n+1))²]` -/
def P9240584620521350903.Spec : Prop :=
  ∀ n, P9240584620521350903.a n = A236182 (n + 1)

end A236182

/-! ## A236182.P13335019375925284189

`∑[sqrt(A030514(n+1))*A030514(n+1)]`
-/

namespace A236182.P13335019375925284189
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030514 (n + 1) : ℝ) * (A030514 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P13335019375925284189

namespace A236182

/-- `∑[sqrt(A030514(n+1))*A030514(n+1)]` -/
def P13335019375925284189.Spec : Prop :=
  ∀ n, P13335019375925284189.a n = (A236182 (n + 1) : ℝ)

end A236182

/-! ## A236182.P11374213216049676603

`∑[A280076(n+2)^3]`
-/

namespace A236182.P11374213216049676603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P11374213216049676603

namespace A236182

/-- `∑[A280076(n+2)^3]` -/
def P11374213216049676603.Spec : Prop :=
  ∀ n, P11374213216049676603.a n = A236182 (n + 1)

end A236182

/-! ## A236182.P7429137166333407739

`∑[(A008578(n+2)^3)²]`
-/

namespace A236182.P7429137166333407739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008578 (n + 2) ^ 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P7429137166333407739

namespace A236182

/-- `∑[(A008578(n+2)^3)²]` -/
def P7429137166333407739.Spec : Prop :=
  ∀ n, P7429137166333407739.a n = A236182 (n + 1)

end A236182

/-! ## A236182.P4661652807843829067

`∑[record[A006530(n+2)^6]]`
-/

namespace A236182.P4661652807843829067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P4661652807843829067

namespace A236182

/-- `∑[record[A006530(n+2)^6]]` -/
def P4661652807843829067.Spec : Prop :=
  ∀ n, P4661652807843829067.a n = A236182 (n + 1)

end A236182

/-! ## A236182.P4498777448397819524

`∑[record[A020639(n+2)^6]]`
-/

namespace A236182.P4498777448397819524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P4498777448397819524

namespace A236182

/-- `∑[record[A020639(n+2)^6]]` -/
def P4498777448397819524.Spec : Prop :=
  ∀ n, P4498777448397819524.a n = A236182 (n + 1)

end A236182

/-! ## A236182.P5850264197128557958

`∑[(eq[n+2, A000203(n+1)]+1)^6]`
-/

namespace A236182.P5850264197128557958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) ^ 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P5850264197128557958

namespace A236182

/-- `∑[(eq[n+2, A000203(n+1)]+1)^6]` -/
def P5850264197128557958.Spec : Prop :=
  ∀ n, (P5850264197128557958.a n : ℤ) = A236182 (n + 1)

end A236182

/-! ## A236182.P17853001906796603405

`∑[A033476(2*n)²*A033476(2*n)]`
-/

namespace A236182.P17853001906796603405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n) ^ 2 * A033476 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P17853001906796603405

namespace A236182

/-- `∑[A033476(2*n)²*A033476(2*n)]` -/
def P17853001906796603405.Spec : Prop :=
  ∀ n, P17853001906796603405.a n = A236182 (n + 1)

end A236182

/-! ## A236182.P9573978245680533551

`∑[A033477(3*n)²]`
-/

namespace A236182.P9573978245680533551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033477 (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P9573978245680533551

namespace A236182

/-- `∑[A033477(3*n)²]` -/
def P9573978245680533551.Spec : Prop :=
  ∀ n, P9573978245680533551.a n = A236182 (n + 1)

end A236182

/-! ## A236182.P2446633379717486257

`∑[(p?[comp[n²]]^3)²]`
-/

namespace A236182.P2446633379717486257
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236182.P2446633379717486257

namespace A236182

/-- `∑[(p?[comp[n²]]^3)²]` -/
def P2446633379717486257.Spec : Prop :=
  ∀ n, (P2446633379717486257.a n : ℤ) = A236182 (n + 1)

end A236182

/-!
# A236183: Primes p such that for all primes q dividing p-1 every residue mod p is the sum of two q-th powers mod p.

The programs for A236183, there is no canonical definition to state claims against.
-/

/-! ## A236183.P18022080053003224254

`p?[eq[1, A276335(n)!]]`
-/

namespace A236183.P18022080053003224254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A276335 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A236183.P18022080053003224254

/-! ## A236183.P11104200005259962026

`filter[A367917(n+2), A122257(#)]`
-/

namespace A236183.P11104200005259962026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367917 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122257 (f1 j).toNat = 1) n)

end

end A236183.P11104200005259962026

/-! ## A236183.P550573691741831504

`∩[A005109(n+1), A113619(n+1)]`
-/

namespace A236183.P550573691741831504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236183.P550573691741831504

/-! ## A236183.P8684875276326830514

`∩[A005109(n+1), A319824(n+1)]`
-/

namespace A236183.P8684875276326830514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236183.P8684875276326830514

/-!
# A236185: Differences between terms of compacting Eratosthenes sieve for prime(4) = 7.

The programs for A236185, the canonical program `A236185.P4307672231705502787` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236185 has offset 1).

The definition of A236185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236185.P4307672231705502787

`Δ[A070884(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A236185

/-- `Δ[A070884(n)]` -/
def P4307672231705502787.Spec : Prop :=
  ∀ n, P4307672231705502787.a n = A236185 (n + 1)

theorem P4307672231705502787.correct : P4307672231705502787.Spec := by
  intro n
  simp only [A236185, Nat.add_sub_cancel]

end A236185

/-!
# A236186: Differences between terms of compacting Eratosthenes sieve for prime(5) = 11.

The programs for A236186, the canonical program `A236186.P5484807995005540986` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236186 has offset 1).

The definition of A236186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236186.P5484807995005540986

`A049296(n+2)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A236186

/-- `A049296(n+2)` -/
def P5484807995005540986.Spec : Prop :=
  ∀ n, P5484807995005540986.a n = A236186 (n + 1)

theorem P5484807995005540986.correct : P5484807995005540986.Spec := by
  intro n
  simp only [A236186, Nat.add_sub_cancel]

end A236186

/-!
# A236187: Differences between terms of compacting Eratosthenes sieve for prime(6) = 13.

The programs for A236187, the canonical program `A236187.P5518244365376147795` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236187 has offset 1).

The definition of A236187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236187.P5518244365376147795

`Δ[A008365(n+2)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A236187

/-- `Δ[A008365(n+2)]` -/
def P5518244365376147795.Spec : Prop :=
  ∀ n, P5518244365376147795.a n = A236187 (n + 1)

theorem P5518244365376147795.correct : P5518244365376147795.Spec := by
  intro n
  simp only [A236187, Nat.add_sub_cancel]

end A236187

/-! ## A236187.P16720851395734251426

`Δ[eq[1, A335037(n+2)]]`
-/

namespace A236187.P16720851395734251426
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335037 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A236187.P16720851395734251426

namespace A236187

/-- `Δ[eq[1, A335037(n+2)]]` -/
def P16720851395734251426.Spec : Prop :=
  ∀ n, P16720851395734251426.a n = A236187 (n + 1)

end A236187

/-! ## A236187.P896969029348563903

`Δ[lt[5, A055396(n+1)]]`
-/

namespace A236187.P896969029348563903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A236187.P896969029348563903

namespace A236187

/-- `Δ[lt[5, A055396(n+1)]]` -/
def P896969029348563903.Spec : Prop :=
  ∀ n, P896969029348563903.a n = A236187 (n + 1)

end A236187

/-! ## A236187.P14801388246898044958

`Δ[lt[11, A020639(n+1)]]`
-/

namespace A236187.P14801388246898044958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A236187.P14801388246898044958

namespace A236187

/-- `Δ[lt[11, A020639(n+1)]]` -/
def P14801388246898044958.Spec : Prop :=
  ∀ n, P14801388246898044958.a n = A236187 (n + 1)

end A236187

/-! ## A236187.P11198130362004416258

`Δ[lt[11, A090369(n+1)]]`
-/

namespace A236187.P11198130362004416258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A236187.P11198130362004416258

namespace A236187

/-- `Δ[lt[11, A090369(n+1)]]` -/
def P11198130362004416258.Spec : Prop :=
  ∀ n, P11198130362004416258.a n = A236187 (n + 1)

end A236187

/-! ## A236187.P6106447467692298398

`Δ[lt[A335037(2*(n+2)), 3]]`
-/

namespace A236187.P6106447467692298398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335037 (2 * (n + 2))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A236187.P6106447467692298398

namespace A236187

/-- `Δ[lt[A335037(2*(n+2)), 3]]` -/
def P6106447467692298398.Spec : Prop :=
  ∀ n, P6106447467692298398.a n = A236187 (n + 1)

end A236187

/-! ## A236187.P260054923526669355

`A052126(Δ[A084970(n+2)])`
-/

namespace A236187.P260054923526669355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084970 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (f1 (n + 1) - f1 n).toNat

end

end A236187.P260054923526669355

namespace A236187

/-- `A052126(Δ[A084970(n+2)])` -/
def P260054923526669355.Spec : Prop :=
  ∀ n, P260054923526669355.a n = A236187 (n + 1)

end A236187

/-! ## A236187.P10589084350004762632

`A008365(n+3)-A008365(n+2)`
-/

namespace A236187.P10589084350004762632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 3) - A008365 (n + 2)

end

end A236187.P10589084350004762632

namespace A236187

/-- `A008365(n+3)-A008365(n+2)` -/
def P10589084350004762632.Spec : Prop :=
  ∀ n, P10589084350004762632.a n = A236187 (n + 1)

theorem P10589084350004762632.correct : P10589084350004762632.Spec := by
  intro n
  simp only [A236187, Nat.add_sub_cancel, A236187.P10589084350004762632.a, A236187.P5518244365376147795.f1, A236187.P5518244365376147795.a, SequenceMachineLib.memo_apply]

end A236187

/-! ## A236187.P17148937339976578975

`Δ[lt[9, A214055(n+1)]]`
-/

namespace A236187.P17148937339976578975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214055 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A236187.P17148937339976578975

namespace A236187

/-- `Δ[lt[9, A214055(n+1)]]` -/
def P17148937339976578975.Spec : Prop :=
  ∀ n, P17148937339976578975.a n = A236187 (n + 1)

end A236187

/-!
# A236188: Differences between terms of compacting Eratosthenes sieve for prime(7) = 17.

The programs for A236188, the canonical program `A236188.P8240144379786060525` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236188 has offset 1).

The definition of A236188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5759 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236188.P8240144379786060525

`Δ[A008366(n+2)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A236188

/-- `Δ[A008366(n+2)]` -/
def P8240144379786060525.Spec : Prop :=
  ∀ n, P8240144379786060525.a n = A236188 (n + 1)

theorem P8240144379786060525.correct : P8240144379786060525.Spec := by
  intro n
  simp only [A236188, Nat.add_sub_cancel]

end A236188

/-! ## A236188.P1883049580722259994

`Δ[A270301(n+1)/8]`
-/

namespace A236188.P1883049580722259994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270301 (n + 1) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236188.P1883049580722259994

namespace A236188

/-- `Δ[A270301(n+1)/8]` -/
def P1883049580722259994.Spec : Prop :=
  ∀ n, P1883049580722259994.a n = (A236188 (n + 1) : ℚ)

end A236188

/-! ## A236188.P2236797025255671143

`Δ[lt[13, A020639(n+1)]]`
-/

namespace A236188.P2236797025255671143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A236188.P2236797025255671143

namespace A236188

/-- `Δ[lt[13, A020639(n+1)]]` -/
def P2236797025255671143.Spec : Prop :=
  ∀ n, P2236797025255671143.a n = A236188 (n + 1)

end A236188

/-! ## A236188.P13921001206082287910

`A008366(n+3)-A008366(n+2)`
-/

namespace A236188.P13921001206082287910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008366 (n + 3) - A008366 (n + 2)

end

end A236188.P13921001206082287910

namespace A236188

/-- `A008366(n+3)-A008366(n+2)` -/
def P13921001206082287910.Spec : Prop :=
  ∀ n, P13921001206082287910.a n = A236188 (n + 1)

theorem P13921001206082287910.correct : P13921001206082287910.Spec := by
  intro n
  simp only [A236188, Nat.add_sub_cancel, A236188.P13921001206082287910.a, A236188.P8240144379786060525.f1, A236188.P8240144379786060525.a, SequenceMachineLib.memo_apply]

end A236188

/-! ## A236188.P665740438220321215

`Δ[A000265(A270301(n+1))]`
-/

namespace A236188.P665740438220321215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A270301 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236188.P665740438220321215

namespace A236188

/-- `Δ[A000265(A270301(n+1))]` -/
def P665740438220321215.Spec : Prop :=
  ∀ n, P665740438220321215.a n = A236188 (n + 1)

end A236188

/-! ## A236188.P1313636219909622799

`Δ[lt[6, A055396(n+1)]]`
-/

namespace A236188.P1313636219909622799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A236188.P1313636219909622799

namespace A236188

/-- `Δ[lt[6, A055396(n+1)]]` -/
def P1313636219909622799.Spec : Prop :=
  ∀ n, P1313636219909622799.a n = A236188 (n + 1)

end A236188

/-! ## A236188.P5551151563064111235

`Δ[lt[11, A214055(n+1)]]`
-/

namespace A236188.P5551151563064111235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214055 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A236188.P5551151563064111235

namespace A236188

/-- `Δ[lt[11, A214055(n+1)]]` -/
def P5551151563064111235.Spec : Prop :=
  ∀ n, P5551151563064111235.a n = A236188 (n + 1)

end A236188

/-! ## A236188.P3301925390044134380

`Δ[A090417(n+4)]`
-/

namespace A236188.P3301925390044134380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090417 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236188.P3301925390044134380

namespace A236188

/-- `Δ[A090417(n+4)]` -/
def P3301925390044134380.Spec : Prop :=
  ∀ n, P3301925390044134380.a n = A236188 (n + 1)

end A236188

/-! ## A236188.P16195029626164196483

`Δ[A173135(n+5)]`
-/

namespace A236188.P16195029626164196483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173135 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236188.P16195029626164196483

namespace A236188

/-- `Δ[A173135(n+5)]` -/
def P16195029626164196483.Spec : Prop :=
  ∀ n, P16195029626164196483.a n = A236188 (n + 1)

end A236188

/-!
# A236189: Differences between terms of compacting Eratosthenes sieve for prime(8) = 19.

The programs for A236189, there is no canonical definition to state claims against.
-/

/-! ## A236189.P18184110745731810746

`Δ[lt[17, A020639(n+1)]]`
-/

namespace A236189.P18184110745731810746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A236189.P18184110745731810746

/-! ## A236189.P17474867251980310890

`Δ[lt[7, A055396(n+1)]]`
-/

namespace A236189.P17474867251980310890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A236189.P17474867251980310890

/-! ## A236189.P2662629579528651848

`Δ[lt[35, A096014(n+1)]]`
-/

namespace A236189.P2662629579528651848
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096014 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A236189.P2662629579528651848

/-! ## A236189.P15729937951595523298

`Δ[A166061(n+2)]`
-/

namespace A236189.P15729937951595523298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166061 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236189.P15729937951595523298

/-! ## A236189.P17917543619809393918

`A166061(n+3)-A166061(n+2)`
-/

namespace A236189.P17917543619809393918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166061 (n + 3) - A166061 (n + 2)

end

end A236189.P17917543619809393918

/-! ## A236189.P434831549668451186

`A166061(A000027(n+3))%A166061(n+2)`
-/

namespace A236189.P434831549668451186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166061 (A000027 (n + 3)).toNat) (A166061 (n + 2))

end

end A236189.P434831549668451186

/-! ## A236189.P2010622613375582475

`A166061(A028310(n+3))%A166061(n+2)`
-/

namespace A236189.P2010622613375582475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166061 (A028310 (n + 3)).toNat) (A166061 (n + 2))

end

end A236189.P2010622613375582475

/-! ## A236189.P3139703056227048227

`Δ[lt[16, A214055(n+1)]]`
-/

namespace A236189.P3139703056227048227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214055 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A236189.P3139703056227048227

/-! ## A236189.P9374031756551669835

`Δ[A093803(A332798(n+2))]`
-/

namespace A236189.P9374031756551669835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (A332798 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236189.P9374031756551669835

/-! ## A236189.P14453652373883051496

`A230849(A224535(n+2)-2)`
-/

namespace A236189.P14453652373883051496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (A224535 (n + 2) - 2).toNat

end

end A236189.P14453652373883051496

/-!
# A236190: Differences between terms of compacting Eratosthenes sieve for prime(9) = 23.

The programs for A236190, the canonical program `A236190.P16245063225373653049` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236190 has offset 1).

The definition of A236190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236190.P16245063225373653049

`Δ[A332797(n+2)]/((10/2)²-2)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A236190

/-- `Δ[A332797(n+2)]/((10/2)²-2)` -/
def P16245063225373653049.Spec : Prop :=
  ∀ n, P16245063225373653049.a n = (A236190 (n + 1) : ℚ)

end A236190

/-! ## A236190.P3006508946764756286

`A052126(Δ[A332797(n+2)])`
-/

namespace A236190.P3006508946764756286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332797 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (f1 (n + 1) - f1 n).toNat

end

end A236190.P3006508946764756286

namespace A236190

/-- `A052126(Δ[A332797(n+2)])` -/
def P3006508946764756286.Spec : Prop :=
  ∀ n, P3006508946764756286.a n = A236190 (n + 1)

end A236190

/-! ## A236190.P15455285678372274688

`Δ[lt[19, A020639(n+1)]]`
-/

namespace A236190.P15455285678372274688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A236190.P15455285678372274688

namespace A236190

/-- `Δ[lt[19, A020639(n+1)]]` -/
def P15455285678372274688.Spec : Prop :=
  ∀ n, P15455285678372274688.a n = A236190 (n + 1)

end A236190

/-! ## A236190.P4669372626651480708

`Δ[lt[8, A055396(n+1)]]`
-/

namespace A236190.P4669372626651480708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A236190.P4669372626651480708

namespace A236190

/-- `Δ[lt[8, A055396(n+1)]]` -/
def P4669372626651480708.Spec : Prop :=
  ∀ n, P4669372626651480708.a n = A236190 (n + 1)

end A236190

/-! ## A236190.P5028574405883193956

`Δ[A166063(n+2)]`
-/

namespace A236190.P5028574405883193956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166063 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236190.P5028574405883193956

namespace A236190

/-- `Δ[A166063(n+2)]` -/
def P5028574405883193956.Spec : Prop :=
  ∀ n, P5028574405883193956.a n = A236190 (n + 1)

end A236190

/-! ## A236190.P1812056460038953000

`A166063(n+3)-A166063(n+2)`
-/

namespace A236190.P1812056460038953000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166063 (n + 3) - A166063 (n + 2)

end

end A236190.P1812056460038953000

namespace A236190

/-- `A166063(n+3)-A166063(n+2)` -/
def P1812056460038953000.Spec : Prop :=
  ∀ n, P1812056460038953000.a n = A236190 (n + 1)

end A236190

/-! ## A236190.P5204962286240937620

`A001222(2^A001223(n+9))`
-/

namespace A236190.P5204962286240937620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001223 (n + 9) : ℤ))).toNat

end

end A236190.P5204962286240937620

namespace A236190

/-- `A001222(2^A001223(n+9))` -/
def P5204962286240937620.Spec : Prop :=
  ∀ n, P5204962286240937620.a n = A236190 (n + 1)

end A236190

/-! ## A236190.P15208056139419799626

`A001222(2^Δ[A000040(n+9)])`
-/

namespace A236190.P15208056139419799626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A236190.P15208056139419799626

namespace A236190

/-- `A001222(2^Δ[A000040(n+9)])` -/
def P15208056139419799626.Spec : Prop :=
  ∀ n, P15208056139419799626.a n = A236190 (n + 1)

end A236190

/-! ## A236190.P11262338646227775835

`A000005(2^Δ[A000040(n+9)])-1`
-/

namespace A236190.P11262338646227775835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat - 1

end

end A236190.P11262338646227775835

namespace A236190

/-- `A000005(2^Δ[A000040(n+9)])-1` -/
def P11262338646227775835.Spec : Prop :=
  ∀ n, P11262338646227775835.a n = A236190 (n + 1)

end A236190

/-! ## A236190.P12514511228463970686

`A230849(A224535(n+2))`
-/

namespace A236190.P12514511228463970686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (A224535 (n + 2)).toNat

end

end A236190.P12514511228463970686

namespace A236190

/-- `A230849(A224535(n+2))` -/
def P12514511228463970686.Spec : Prop :=
  ∀ n, P12514511228463970686.a n = A236190 (n + 1)

end A236190

/-!
# A236191: a(n) = (-1)^floor( (n-1) / 3 ) * F(n), where F = Fibonacci.

The programs for A236191, the canonical program `A236191.P6410617248716895503` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236191 has offset 0).

The definition of A236191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236191.P1162981338418083947

`(-1)^floor((n-1)/3)*A000045(n)`
-/

namespace A236191.P1162981338418083947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 3⌋ : ℤ) * (A000045 n : ℚ)

end

end A236191.P1162981338418083947

namespace A236191

/-- `(-1)^floor((n-1)/3)*A000045(n)` -/
def P1162981338418083947.Spec : Prop :=
  ∀ n, P1162981338418083947.a n = (A236191 n : ℚ)

end A236191

/-! ## A236191.P2019242824927166947

`A000045(n)*A008683(gcd(n-2, 2*(n+1)))`
-/

namespace A236191.P2019242824927166947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A008683 (Int.gcd ((n : ℤ) - 2) (2 * (n + 1) : ℤ))

end

end A236191.P2019242824927166947

namespace A236191

/-- `A000045(n)*A008683(gcd(n-2, 2*(n+1)))` -/
def P2019242824927166947.Spec : Prop :=
  ∀ n, P2019242824927166947.a n = A236191 n

end A236191

/-! ## A236191.P6410617248716895503

`A000045(n)*A033999(A004482(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A236191

/-- `A000045(n)*A033999(A004482(n))` -/
def P6410617248716895503.Spec : Prop :=
  ∀ n, P6410617248716895503.a n = A236191 n

theorem P6410617248716895503.correct : P6410617248716895503.Spec := by
  intro n
  simp only [A236191]

end A236191

/-! ## A236191.P8600143188073985156

`A000045(n)/A122876(n)*A101825(n)`
-/

namespace A236191.P8600143188073985156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (A122876 n : ℚ) * (A101825 n : ℚ)

end

end A236191.P8600143188073985156

namespace A236191

/-- `A000045(n)/A122876(n)*A101825(n)` -/
def P8600143188073985156.Spec : Prop :=
  ∀ n, P8600143188073985156.a n = (A236191 n : ℚ)

end A236191

/-!
# A236192: a(n) = |{0 < k < n: p = phi(k) + phi(n-k)/4 + 1, prime(p)^2 + (2*p)^2 and p^2 + (2*prime(p))^2 are all prime}|, where phi(.) is Euler's totient function.

The programs for A236192, the canonical program `A236192.P3828994098142585195` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236192 has offset 1).

The definition of A236192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236192.P15554642856343227898

`A072233(A179865(n+1)%A000726(n+3))`
-/

namespace A236192.P15554642856343227898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (Int.tmod (A179865 (n + 1)) (A000726 (n + 3))).toNat

end

end A236192.P15554642856343227898

namespace A236192

/-- `A072233(A179865(n+1)%A000726(n+3))` -/
def P15554642856343227898.Spec : Prop :=
  ∀ n, P15554642856343227898.a n = A236192 (n + 1)

end A236192

/-! ## A236192.P16330297842417217018

`A063524(A264594(n+2)+A000122(2*(n+1)))`
-/

namespace A236192.P16330297842417217018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A264594 (n + 2) + A000122 (2 * (n + 1))).toNat

end

end A236192.P16330297842417217018

namespace A236192

/-- `A063524(A264594(n+2)+A000122(2*(n+1)))` -/
def P16330297842417217018.Spec : Prop :=
  ∀ n, P16330297842417217018.a n = A236192 (n + 1)

end A236192

/-! ## A236192.P10624491414143069707

`and(A008472(n+1), A209229(A035660(n+1)))`
-/

namespace A236192.P10624491414143069707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008472 (n + 1)) (A209229 (A035660 (n + 1)).toNat)

end

end A236192.P10624491414143069707

namespace A236192

/-- `and(A008472(n+1), A209229(A035660(n+1)))` -/
def P10624491414143069707.Spec : Prop :=
  ∀ n, P10624491414143069707.a n = A236192 (n + 1)

end A236192

/-! ## A236192.P3179554431427807764

`val(A282865(A008611(2*(n+2))), A000720(2*(n+2)))`
-/

namespace A236192.P3179554431427807764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A282865 (A008611 (2 * (n + 2))).toNat).toNat (A000720 (2 * (n + 2))).toNat

end

end A236192.P3179554431427807764

namespace A236192

/-- `val(A282865(A008611(2*(n+2))), A000720(2*(n+2)))` -/
def P3179554431427807764.Spec : Prop :=
  ∀ n, (P3179554431427807764.a n : ℤ) = A236192 (n + 1)

end A236192

/-! ## A236192.P17000264388539805029

`round(A345798(n+1)/A345778(2*n+1))`
-/

namespace A236192.P17000264388539805029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A345798 (n + 1) : ℚ) / (A345778 (2 * n + 1) : ℚ))

end

end A236192.P17000264388539805029

namespace A236192

/-- `round(A345798(n+1)/A345778(2*n+1))` -/
def P17000264388539805029.Spec : Prop :=
  ∀ n, P17000264388539805029.a n = A236192 (n + 1)

end A236192

/-! ## A236192.P3828994098142585195

`A163000(∑[A284938(2*n+5)])%2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A236192

/-- `A163000(∑[A284938(2*n+5)])%2` -/
def P3828994098142585195.Spec : Prop :=
  ∀ n, P3828994098142585195.a n = A236192 (n + 1)

theorem P3828994098142585195.correct : P3828994098142585195.Spec := by
  intro n
  simp only [A236192, Nat.add_sub_cancel]

end A236192

/-! ## A236192.P2226592969020947732

`C(A206914(n), A206914(A053263(n+3)))`
-/

namespace A236192.P2226592969020947732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A206914 n).toNat (A206914 (A053263 (n + 3)).toNat).toNat

end

end A236192.P2226592969020947732

namespace A236192

/-- `C(A206914(n), A206914(A053263(n+3)))` -/
def P2226592969020947732.Spec : Prop :=
  ∀ n, (P2226592969020947732.a n : ℤ) = A236192 (n + 1)

end A236192

/-! ## A236192.P17160608217318626478

`A159684(floor((11*n+4)²/A174641(n+2)))`
-/

namespace A236192.P17160608217318626478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 ⌊((11 * n + 4) ^ 2 : ℚ) / (A174641 (n + 2) : ℚ)⌋.toNat

end

end A236192.P17160608217318626478

namespace A236192

/-- `A159684(floor((11*n+4)²/A174641(n+2)))` -/
def P17160608217318626478.Spec : Prop :=
  ∀ n, P17160608217318626478.a n = A236192 (n + 1)

end A236192

/-! ## A236192.P12168937364497872142

`A010051(A000720(A223458(A226217(2*n+1))))`
-/

namespace A236192.P12168937364497872142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000720 (A223458 (A226217 (2 * n + 1)).toNat).toNat).toNat

end

end A236192.P12168937364497872142

namespace A236192

/-- `A010051(A000720(A223458(A226217(2*n+1))))` -/
def P12168937364497872142.Spec : Prop :=
  ∀ n, P12168937364497872142.a n = A236192 (n + 1)

end A236192

/-! ## A236192.P18161089596365835767

`floor(A014192(n+1)/A138936(n+1))`
-/

namespace A236192.P18161089596365835767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014192 (n + 1) : ℚ) / (A138936 (n + 1) : ℚ)⌋

end

end A236192.P18161089596365835767

namespace A236192

/-- `floor(A014192(n+1)/A138936(n+1))` -/
def P18161089596365835767.Spec : Prop :=
  ∀ n, P18161089596365835767.a n = A236192 (n + 1)

end A236192

/-!
# A236194: a(n) = binomial(3n+1, n-1).

The programs for A236194, the canonical program `A236194.P1347731434637566986` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236194 has offset 1).

The definition of A236194 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(3*(n+1)+1, n)` (program `A236194.P1347731434637566986`, by `A236194.P1347731434637566986.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A236194.P785563171561522934

`C(3*n+4, n)`
-/

namespace A236194.P785563171561522934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n + 4) n

end

end A236194.P785563171561522934

namespace A236194

/-- `C(3*n+4, n)` -/
def P785563171561522934.Spec : Prop :=
  ∀ n, (P785563171561522934.a n : ℤ) = A236194 (n + 1)

theorem P785563171561522934.correct : P785563171561522934.Spec := by
  intro n
  simp only [A236194, Nat.add_sub_cancel, A236194.P785563171561522934.a, A236194.P1347731434637566986.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A236194

/-! ## A236194.P1347731434637566986

`C(3*(n+1)+1, n)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A236194

/-- `C(3*(n+1)+1, n)` -/
def P1347731434637566986.Spec : Prop :=
  ∀ n, (P1347731434637566986.a n : ℤ) = A236194 (n + 1)

theorem P1347731434637566986.correct : P1347731434637566986.Spec := by
  intro n
  simp only [A236194, Nat.add_sub_cancel]

end A236194

/-! ## A236194.P5572102583817545570

`A175167(2*n+3)`
-/

namespace A236194.P5572102583817545570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175167 (2 * n + 3)

end

end A236194.P5572102583817545570

namespace A236194

/-- `A175167(2*n+3)` -/
def P5572102583817545570.Spec : Prop :=
  ∀ n, P5572102583817545570.a n = A236194 (n + 1)

end A236194

/-! ## A236194.P10384179772190661145

`A048016(3*n+4)+1`
-/

namespace A236194.P10384179772190661145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048016 (3 * n + 4) + 1

end

end A236194.P10384179772190661145

namespace A236194

/-- `A048016(3*n+4)+1` -/
def P10384179772190661145.Spec : Prop :=
  ∀ n, P10384179772190661145.a n = A236194 (n + 1)

end A236194

/-! ## A236194.P76549622419498105

`(n+1)/2*A006013(n+1)`
-/

namespace A236194.P76549622419498105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A006013 (n + 1) : ℚ)

end

end A236194.P76549622419498105

namespace A236194

/-- `(n+1)/2*A006013(n+1)` -/
def P76549622419498105.Spec : Prop :=
  ∀ n, P76549622419498105.a n = (A236194 (n + 1) : ℚ)

end A236194

/-! ## A236194.P12963484934561956013

`(A045721(n+1)-A006013(n+1))/2`
-/

namespace A236194.P12963484934561956013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045721 (n + 1) - A006013 (n + 1) : ℚ) / 2

end

end A236194.P12963484934561956013

namespace A236194

/-- `(A045721(n+1)-A006013(n+1))/2` -/
def P12963484934561956013.Spec : Prop :=
  ∀ n, P12963484934561956013.a n = (A236194 (n + 1) : ℚ)

end A236194

/-! ## A236194.P10468928670553432580

`A274969(n+1)+n*A001764(n+1)`
-/

namespace A236194.P10468928670553432580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274969 (n + 1) + (n : ℤ) * A001764 (n + 1)

end

end A236194.P10468928670553432580

namespace A236194

/-- `A274969(n+1)+n*A001764(n+1)` -/
def P10468928670553432580.Spec : Prop :=
  ∀ n, P10468928670553432580.a n = A236194 (n + 1)

end A236194

/-! ## A236194.P1496067887651068650

`A119301(A167614(n+1)-1)`
-/

namespace A236194.P1496067887651068650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119301 (A167614 (n + 1) - 1).toNat

end

end A236194.P1496067887651068650

namespace A236194

/-- `A119301(A167614(n+1)-1)` -/
def P1496067887651068650.Spec : Prop :=
  ∀ n, P1496067887651068650.a n = A236194 (n + 1)

end A236194

/-! ## A236194.P16068954141176648560

`A025174(n+2)-A045721(n+1)`
-/

namespace A236194.P16068954141176648560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 (n + 2) - A045721 (n + 1)

end

end A236194.P16068954141176648560

namespace A236194

/-- `A025174(n+2)-A045721(n+1)` -/
def P16068954141176648560.Spec : Prop :=
  ∀ n, P16068954141176648560.a n = A236194 (n + 1)

end A236194

/-! ## A236194.P10939112463294439659

`A117671(n+1)-A025174(n+2)`
-/

namespace A236194.P10939112463294439659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117671 (n + 1) - A025174 (n + 2)

end

end A236194.P10939112463294439659

namespace A236194

/-- `A117671(n+1)-A025174(n+2)` -/
def P10939112463294439659.Spec : Prop :=
  ∀ n, P10939112463294439659.a n = A236194 (n + 1)

end A236194

/-! ## A236194.P18144706508729045572

`A127040(2*(n+1))-A045721(n+1)`
-/

namespace A236194.P18144706508729045572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127040 (2 * (n + 1)) - A045721 (n + 1)

end

end A236194.P18144706508729045572

namespace A236194

/-- `A127040(2*(n+1))-A045721(n+1)` -/
def P18144706508729045572.Spec : Prop :=
  ∀ n, P18144706508729045572.a n = A236194 (n + 1)

end A236194

/-! ## A236194.P18431609900556710437

`A025174(n+2)-A099578(2*(n+1))`
-/

namespace A236194.P18431609900556710437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 (n + 2) - A099578 (2 * (n + 1))

end

end A236194.P18431609900556710437

namespace A236194

/-- `A025174(n+2)-A099578(2*(n+1))` -/
def P18431609900556710437.Spec : Prop :=
  ∀ n, P18431609900556710437.a n = A236194 (n + 1)

end A236194

/-! ## A236194.P2855723740116630813

`(A117671(n+1)-A045721(n+1))/2`
-/

namespace A236194.P2855723740116630813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117671 (n + 1) - A045721 (n + 1) : ℚ) / 2

end

end A236194.P2855723740116630813

namespace A236194

/-- `(A117671(n+1)-A045721(n+1))/2` -/
def P2855723740116630813.Spec : Prop :=
  ∀ n, P2855723740116630813.a n = (A236194 (n + 1) : ℚ)

end A236194

/-! ## A236194.P4811640443748407524

`A099578(2*n+3)-A045721(n+1)`
-/

namespace A236194.P4811640443748407524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099578 (2 * n + 3) - A045721 (n + 1)

end

end A236194.P4811640443748407524

namespace A236194

/-- `A099578(2*n+3)-A045721(n+1)` -/
def P4811640443748407524.Spec : Prop :=
  ∀ n, P4811640443748407524.a n = A236194 (n + 1)

end A236194

/-! ## A236194.P1437830830277145593

`A127040(2*(n+1))-A099578(2*(n+1))`
-/

namespace A236194.P1437830830277145593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127040 (2 * (n + 1)) - A099578 (2 * (n + 1))

end

end A236194.P1437830830277145593

namespace A236194

/-- `A127040(2*(n+1))-A099578(2*(n+1))` -/
def P1437830830277145593.Spec : Prop :=
  ∀ n, P1437830830277145593.a n = A236194 (n + 1)

end A236194

/-! ## A236194.P13838959033038221794

`A099578(2*n+3)-A099578(2*(n+1))`
-/

namespace A236194.P13838959033038221794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099578 (2 * n + 3) - A099578 (2 * (n + 1))

end

end A236194.P13838959033038221794

namespace A236194

/-- `A099578(2*n+3)-A099578(2*(n+1))` -/
def P13838959033038221794.Spec : Prop :=
  ∀ n, P13838959033038221794.a n = A236194 (n + 1)

end A236194

/-! ## A236194.P2796142086205139478

`A004319(n+2)-(A045721(n+1)+A013698(n+1))`
-/

namespace A236194.P2796142086205139478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004319 (n + 2) - (A045721 (n + 1) + A013698 (n + 1))

end

end A236194.P2796142086205139478

namespace A236194

/-- `A004319(n+2)-(A045721(n+1)+A013698(n+1))` -/
def P2796142086205139478.Spec : Prop :=
  ∀ n, P2796142086205139478.a n = A236194 (n + 1)

end A236194

/-! ## A236194.P17140757991822430028

`A013698(n+1)+A117671(n+1)-A004319(n+2)`
-/

namespace A236194.P17140757991822430028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013698 (n + 1) + (A117671 (n + 1) - A004319 (n + 2))

end

end A236194.P17140757991822430028

namespace A236194

/-- `A013698(n+1)+A117671(n+1)-A004319(n+2)` -/
def P17140757991822430028.Spec : Prop :=
  ∀ n, P17140757991822430028.a n = A236194 (n + 1)

end A236194

/-! ## A236194.P6856281616758939662

`A087413(n+2)-(A087413(n+1)+A045721(n+1))`
-/

namespace A236194.P6856281616758939662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087413 (n + 2) - (A087413 (n + 1) + A045721 (n + 1))

end

end A236194.P6856281616758939662

namespace A236194

/-- `A087413(n+2)-(A087413(n+1)+A045721(n+1))` -/
def P6856281616758939662.Spec : Prop :=
  ∀ n, P6856281616758939662.a n = A236194 (n + 1)

end A236194

/-! ## A236194.P17306508958846817906

`A383450(n)/(n+2)`
-/

namespace A236194.P17306508958846817906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383450 n : ℚ) / (n + 2 : ℚ)

end

end A236194.P17306508958846817906

namespace A236194

/-- `A383450(n)/(n+2)` -/
def P17306508958846817906.Spec : Prop :=
  ∀ n, P17306508958846817906.a n = (A236194 (n + 1) : ℚ)

end A236194

/-!
# A236195: Number of (n+1)X(1+1) 0..3 arrays colored with the upper median plus the lower median minus the minimum of every 2X2 subblock.

The programs for A236195, there is no canonical definition to state claims against.
-/

/-! ## A236195.P18412481186132920913

`A236198(∑[n]+1)`
-/

namespace A236195.P18412481186132920913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236198 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236195.P18412481186132920913

/-! ## A236195.P7638877649699197935

`record[A236198(A246276(n+1))]`
-/

namespace A236195.P7638877649699197935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236198 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236195.P7638877649699197935

/-! ## A236195.P13439865977574550905

`record[A010054(n)*A236198(n+1)]`
-/

namespace A236195.P13439865977574550905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236195.P13439865977574550905

/-! ## A236195.P5780843529250619360

`record[root(A236198(n+1), A007318(n))]`
-/

namespace A236195.P5780843529250619360
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236198 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236195.P5780843529250619360

/-!
# A236196: Number of (n+1) X (2+1) 0..3 arrays colored with the upper median plus the lower median minus the minimum of every 2 X 2 subblock.

The programs for A236196, there is no canonical definition to state claims against.
-/

/-! ## A236196.P8931743863866506168

`A236198(∑[n+1]+2)`
-/

namespace A236196.P8931743863866506168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236198 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236196.P8931743863866506168

/-! ## A236196.P3873582396979224081

`record[A010054(n)*A236198(n+2)]`
-/

namespace A236196.P3873582396979224081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236198 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236196.P3873582396979224081

/-! ## A236196.P1029079012053069595

`record[A236198(A003056(n)²+2-n)]`
-/

namespace A236196.P1029079012053069595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236198 (A003056 n ^ 2 + (2 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236196.P1029079012053069595

/-!
# A236197: Number of (n+1)X(3+1) 0..3 arrays colored with the upper median plus the lower median minus the minimum of every 2X2 subblock.

The programs for A236197, there is no canonical definition to state claims against.
-/

/-! ## A236197.P550558196445832900

`A236198(∑[n+2]+4)`
-/

namespace A236197.P550558196445832900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236198 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236197.P550558196445832900

/-! ## A236197.P9307698930069839480

`lcm(2, A236198(A167614(n+1)))`
-/

namespace A236197.P9307698930069839480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236198 (A167614 (n + 1)).toNat)

end

end A236197.P9307698930069839480

/-!
# A236199: Number of (n+1)X(1+1) 0..3 arrays colored with the maximum plus the upper median minus the lower median minus the minimum of every 2X2 subblock.

The programs for A236199, there is no canonical definition to state claims against.
-/

/-! ## A236199.P8287196795882460997

`A236202(∑[n]+1)`
-/

namespace A236199.P8287196795882460997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236202 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236199.P8287196795882460997

/-! ## A236199.P12706348578381031878

`lcm(2, A236202(A000124(n)))`
-/

namespace A236199.P12706348578381031878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236202 (A000124 n).toNat)

end

end A236199.P12706348578381031878

/-! ## A236199.P1979671542210029140

`record[A236202(A056534(n+1))]`
-/

namespace A236199.P1979671542210029140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236202 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236199.P1979671542210029140

/-! ## A236199.P2114189962058393277

`record[A236202(A246276(n+1))]`
-/

namespace A236199.P2114189962058393277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236202 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236199.P2114189962058393277

