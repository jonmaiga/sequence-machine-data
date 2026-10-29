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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A257300: Number of Motzkin paths of length n with no peaks at level 2.

The programs for A257300, there is no canonical definition to state claims against.
-/

/-! ## A257300.P13494495342670213318

`A261104(A149436(n))`
-/

namespace A257300.P13494495342670213318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A149436 n).toNat

end

end A257300.P13494495342670213318

/-! ## A257300.P15829937665477913694

`A400220(A148992(n))`
-/

namespace A257300.P15829937665477913694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400220 (A148992 n).toNat

end

end A257300.P15829937665477913694

/-! ## A257300.P12504700087728595837

`A369715(A270724(n))`
-/

namespace A257300.P12504700087728595837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369715 (A270724 n).toNat

end

end A257300.P12504700087728595837

/-! ## A257300.P2141145818720953729

`A087836(∑[A135588(n)])`
-/

namespace A257300.P2141145818720953729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087836 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A257300.P2141145818720953729

/-! ## A257300.P4463780702023682056

`A000006(A363042(n+1)+n)`
-/

namespace A257300.P4463780702023682056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A363042 (n + 1) + (n : ℤ)).toNat

end

end A257300.P4463780702023682056

/-!
# A257301: Number of cubic nonresidues modulo n.

The programs for A257301, there is no canonical definition to state claims against.
-/

/-! ## A257301.P8144156568350201023

`n+1-A046530(n+1)`
-/

namespace A257301.P8144156568350201023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A046530 (n + 1)

end

end A257301.P8144156568350201023

/-! ## A257301.P10445634993670127206

`Δ[A000290(n)]%(A046530(n+1)+n)`
-/

namespace A257301.P10445634993670127206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A046530 (n + 1) + (n : ℤ))

end

end A257301.P10445634993670127206

/-! ## A257301.P16564189254449870093

`(A000578(n)*A046530(n+1))%(n+1)`
-/

namespace A257301.P16564189254449870093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n * A046530 (n + 1)) (n + 1 : ℤ)

end

end A257301.P16564189254449870093

/-! ## A257301.P7052273496859959882

`(A005563(n)*A046530(n+1))%(n+1)`
-/

namespace A257301.P7052273496859959882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005563 n * A046530 (n + 1)) (n + 1 : ℤ)

end

end A257301.P7052273496859959882

/-!
# A257302: Number of 4th power nonresidues modulo n.

The programs for A257302, there is no canonical definition to state claims against.
-/

/-! ## A257302.P16417599873171256498

`n+1-A052273(n+1)`
-/

namespace A257302.P16417599873171256498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A052273 (n + 1)

end

end A257302.P16417599873171256498

/-! ## A257302.P3473247364917157168

`n-A023443(A052273(n+1))`
-/

namespace A257302.P3473247364917157168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A052273 (n + 1)).toNat

end

end A257302.P3473247364917157168

/-! ## A257302.P711771823093455342

`A005408(n)%(A052273(n+1)+n)`
-/

namespace A257302.P711771823093455342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) (A052273 (n + 1) + (n : ℤ))

end

end A257302.P711771823093455342

/-! ## A257302.P2435624498832066928

`Δ[A000290(n)]%(A052273(n+1)+n)`
-/

namespace A257302.P2435624498832066928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A052273 (n + 1) + (n : ℤ))

end

end A257302.P2435624498832066928

/-! ## A257302.P1511923824839213897

`(A000578(n)*A052273(n+1))%(n+1)`
-/

namespace A257302.P1511923824839213897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n * A052273 (n + 1)) (n + 1 : ℤ)

end

end A257302.P1511923824839213897

/-! ## A257302.P16474592891556008993

`A001489(A052273(n+1))+A000027(n+1)`
-/

namespace A257302.P16474592891556008993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A052273 (n + 1)).toNat + A000027 (n + 1)

end

end A257302.P16474592891556008993

/-! ## A257302.P4596032406111095589

`A008585(n)%(A052273(n+1)+A004273(n))`
-/

namespace A257302.P4596032406111095589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008585 n) (A052273 (n + 1) + A004273 n)

end

end A257302.P4596032406111095589

/-!
# A257303: Number of 5th power nonresidues modulo n.

The programs for A257303, there is no canonical definition to state claims against.
-/

/-! ## A257303.P15974590735657821444

`n+1-A052274(n+1)`
-/

namespace A257303.P15974590735657821444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A052274 (n + 1)

end

end A257303.P15974590735657821444

/-! ## A257303.P4330705994549471504

`Δ[A000290(n)]%(A052274(n+1)+n)`
-/

namespace A257303.P4330705994549471504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A052274 (n + 1) + (n : ℤ))

end

end A257303.P4330705994549471504

/-! ## A257303.P12308995915790235738

`((n*A052274(n+1))%(n+1))%A001400(n)`
-/

namespace A257303.P12308995915790235738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ((n : ℤ) * A052274 (n + 1)) (n + 1 : ℤ)) (A001400 n)

end

end A257303.P12308995915790235738

/-! ## A257303.P5378052047680545384

`(n*A052274((n+1)%A000040(n+1)))%(n+1)`
-/

namespace A257303.P5378052047680545384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A052274 (Int.tmod (n + 1 : ℤ) (A000040 (n + 1))).toNat) (n + 1 : ℤ)

end

end A257303.P5378052047680545384

/-! ## A257303.P7415581272851878794

`A000217(n+1)%(A052274(n+1)+A000217(n))`
-/

namespace A257303.P7415581272851878794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 1)) (A052274 (n + 1) + A000217 n)

end

end A257303.P7415581272851878794

/-! ## A257303.P1972929787362261622

`(n*A052274(A122197((n+1)*(n+1))))%(n+1)`
-/

namespace A257303.P1972929787362261622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A052274 (A122197 ((n + 1) * (n + 1))).toNat) (n + 1 : ℤ)

end

end A257303.P1972929787362261622

/-!
# A257309: Perfect hyper-4 powers: a^^b, where b <> 1.

The programs for A257309, there is no canonical definition to state claims against.
-/

/-! ## A257309.P1331104654134991203

`record[A033918(n+5)%A078105(n+3)]`
-/

namespace A257309.P1331104654134991203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033918 (n + 5)) (A078105 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257309.P1331104654134991203

/-! ## A257309.P2307262025527783287

`A271936(∏{digits}[n, gcd(#, #!²)])%A197799(n+1)`
-/

namespace A257309.P2307262025527783287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271936 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod) (A197799 (n + 1))

end

end A257309.P2307262025527783287

/-! ## A257309.P4592379687790747175

`A271936(A028310(n))%A197799(n+1)`
-/

namespace A257309.P4592379687790747175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271936 (A028310 n).toNat) (A197799 (n + 1))

end

end A257309.P4592379687790747175

/-! ## A257309.P9829896986275643913

`record[A222493(n+1)-A007954(A061479(n))]`
-/

namespace A257309.P9829896986275643913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222493 (n + 1) - A007954 (A061479 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257309.P9829896986275643913

/-!
# A257310: Numbers n such that the decimal expansions of both n and n^2 have 2 as smallest digit and 5 as largest digit.

The programs for A257310, there is no canonical definition to state claims against.
-/

/-! ## A257310.P15795474309563612106

`A137066(n+3)`
-/

namespace A257310.P15795474309563612106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137066 (n + 3)

end

end A257310.P15795474309563612106

/-! ## A257310.P4997370741659837579

`∩[A136968(n+1), A137069(n+3)]`
-/

namespace A257310.P4997370741659837579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137069 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257310.P4997370741659837579

/-! ## A257310.P12120079534805222930

`∩[A137067(n+1), A137069(n+3)]`
-/

namespace A257310.P12120079534805222930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137069 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257310.P12120079534805222930

/-! ## A257310.P16754297932481531622

`∩[A137070(n+1), A137067(n+3)]`
-/

namespace A257310.P16754297932481531622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137067 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257310.P16754297932481531622

/-! ## A257310.P10655780412307917095

`∩[A137070(n+1), A137069(n+3)]`
-/

namespace A257310.P10655780412307917095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137069 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257310.P10655780412307917095

/-!
# A257317: Number of unordered ways to write n as the sum of two distinct elements of the set {floor(x/3): 3*x-1 and 3*x+1 are twin prime} one of which is even.

The programs for A257317, there is no canonical definition to state claims against.
-/

/-! ## A257317.P13270037020037465745

`A257474(A090106(n+1))`
-/

namespace A257317.P13270037020037465745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257474 (A090106 (n + 1)).toNat

end

end A257317.P13270037020037465745

/-! ## A257317.P8204305741804614469

`A257474(n+1)%A139441(n+1)`
-/

namespace A257317.P8204305741804614469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257474 (n + 1)) (A139441 (n + 1))

end

end A257317.P8204305741804614469

/-! ## A257317.P6481494569301995971

`A257474(and(1, A001988(n+1))+n)`
-/

namespace A257317.P6481494569301995971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257474 (Int.land 1 (A001988 (n + 1)) + (n : ℤ)).toNat

end

end A257317.P6481494569301995971

/-! ## A257317.P16322043099495853113

`and(A062241(n+3), A257474(n+1))`
-/

namespace A257317.P16322043099495853113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062241 (n + 3)) (A257474 (n + 1))

end

end A257317.P16322043099495853113

/-! ## A257317.P7351231282836629826

`gcd(A257457(n+5)!, A257474(n+1))`
-/

namespace A257317.P7351231282836629826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A257457 (n + 5)).toNat : ℤ) (A257474 (n + 1))

end

end A257317.P7351231282836629826

/-!
# A257318: Numbers n whose binary expansion can be written as the concatenation of the binary expansion of prime numbers in at least two different ways (not allowing leading zeros).

The programs for A257318, there is no canonical definition to state claims against.
-/

/-! ## A257318.P11605005477337067277

`lt[1, A090418(n)]`
-/

namespace A257318.P11605005477337067277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090418 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A257318.P11605005477337067277

/-! ## A257318.P17513335171763617099

`eq[1, A141044(A090418(n)²)]`
-/

namespace A257318.P17513335171763617099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A090418 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257318.P17513335171763617099

/-! ## A257318.P17732952548172946856

`eq[1, A249442(A090418(n)²)]`
-/

namespace A257318.P17732952548172946856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 (A090418 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257318.P17732952548172946856

/-! ## A257318.P12586216860333444320

`eq[4, A113311(A090418(n)²)]`
-/

namespace A257318.P12586216860333444320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 (A090418 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257318.P12586216860333444320

/-! ## A257318.P3564327957756080020

`eq[0, A090418(a(A090418(n)))]` with `a(0)=2, a(1)=2`
-/

namespace A257318.P3564327957756080020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A090418 (f2 (A090418 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257318.P3564327957756080020

/-! ## A257318.P9982196548988446848

`eq[A141044(A090418(n)), A267871(n)]`
-/

namespace A257318.P9982196548988446848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A090418 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257318.P9982196548988446848

/-! ## A257318.P17529462322051836660

`eq[A113311(n+1), A113311(A090418(n))]`
-/

namespace A257318.P17529462322051836660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 (A090418 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257318.P17529462322051836660

/-! ## A257318.P13390106767154650952

`eq[2, A141044(A090418(n))+A141044(n)]`
-/

namespace A257318.P13390106767154650952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A090418 n).toNat + A141044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257318.P13390106767154650952

/-! ## A257318.P13161405994982466710

`eq[1, A141044(A090418(n)*A141044(n))]`
-/

namespace A257318.P13161405994982466710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A090418 n * A141044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257318.P13161405994982466710

/-! ## A257318.P1791689055987533281

`eq[1, A141044(A090418(n)/A141044(n))]`
-/

namespace A257318.P1791689055987533281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (SequenceMachineLib.roundAway ((A090418 n : ℚ) / (A141044 n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257318.P1791689055987533281

/-!
# A257319: Numbers n such that the n-th generation of Sawtooth 201 has minimum population in Conway's Game of Life.

The programs for A257319, the canonical program `A257319.P17764283698945665888` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257319 has offset 1).

The definition of A257319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257319.P17764283698945665888

`(47^n-1)*40`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A257319

/-- `(47^n-1)*40` -/
def P17764283698945665888.Spec : Prop :=
  ∀ n, P17764283698945665888.a n = A257319 (n + 1)

theorem P17764283698945665888.correct : P17764283698945665888.Spec := by
  intro n
  simp only [A257319, Nat.add_sub_cancel]

end A257319

/-! ## A257319.P176531579396545862

`a(n-1)+46*(a(n-1)+40)` with `a(0)=0`
-/

namespace A257319.P176531579396545862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 46 * (a (n - 1) + 40)

end

end A257319.P176531579396545862

namespace A257319

/-- `a(n-1)+46*(a(n-1)+40)` -/
def P176531579396545862.Spec : Prop :=
  ∀ n, (P176531579396545862.a n : ℤ) = A257319 (n + 1)

theorem P176531579396545862.correct : P176531579396545862.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A257319, Nat.add_sub_cancel, A257319.P176531579396545862.a, A257319.P17764283698945665888.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A257319, Nat.add_sub_cancel, A257319.P176531579396545862.a, A257319.P17764283698945665888.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A257319

/-!
# A257320: a(0) = 1, a(n+1) = (a(n)-th prime) + 1.

The programs for A257320, there is no canonical definition to state claims against.
-/

/-! ## A257320.P3165785707259487100

`A119533(n)+1`
-/

namespace A257320.P3165785707259487100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119533 n + 1

end

end A257320.P3165785707259487100

/-! ## A257320.P18303402230945829044

`1-(A025439(n)-A119533(n))`
-/

namespace A257320.P18303402230945829044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A025439 n - A119533 n)

end

end A257320.P18303402230945829044

/-! ## A257320.P2842095593381715737

`1-A057428(n)*A119533(n)`
-/

namespace A257320.P2842095593381715737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A119533 n

end

end A257320.P2842095593381715737

/-! ## A257320.P14124542000963065113

`n-(A023443(n)-A119533(n))`
-/

namespace A257320.P14124542000963065113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A119533 n)

end

end A257320.P14124542000963065113

/-! ## A257320.P1597667929724442519

`A008864(a(n-1))` with `a(0)=1`
-/

namespace A257320.P1597667929724442519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008864 (a (n - 1)).toNat

end

end A257320.P1597667929724442519

/-!
# A257329: Construct spiral of numbers on square grid as in Comments; sequence gives terms along the "2" arm.

The programs for A257329, there is no canonical definition to state claims against.
-/

/-! ## A257329.P10748826585505649246

`A257347(4*n+2)`
-/

namespace A257329.P10748826585505649246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257347 (4 * n + 2)

end

end A257329.P10748826585505649246

/-! ## A257329.P1925537949685622513

`A257347(A016825(n))+char[18]`
-/

namespace A257329.P1925537949685622513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257347 (A016825 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A257329.P1925537949685622513

/-! ## A257329.P6292755001963361562

`gcd(A185255(n), A257347(A016825(n)))`
-/

namespace A257329.P6292755001963361562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185255 n) (A257347 (A016825 n).toNat)

end

end A257329.P6292755001963361562

/-! ## A257329.P2007414862950673837

`lcm(A106400(n), A257347(A016825(n)))`
-/

namespace A257329.P2007414862950673837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 n) (A257347 (A016825 n).toNat)

end

end A257329.P2007414862950673837

/-!
# A257330: Construct spiral of numbers on square grid as in Comments; sequence gives terms along the "3" arm.

The programs for A257330, there is no canonical definition to state claims against.
-/

/-! ## A257330.P22134660347765445

`A257347(4*n+3)`
-/

namespace A257330.P22134660347765445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257347 (4 * n + 3)

end

end A257330.P22134660347765445

/-! ## A257330.P8491972222521501261

`A257347(A004767(n))%78`
-/

namespace A257330.P8491972222521501261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257347 (A004767 n).toNat) 78

end

end A257330.P8491972222521501261

/-! ## A257330.P13056453244939122631

`A257347(A004767(n))+A185255(n)`
-/

namespace A257330.P13056453244939122631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257347 (A004767 n).toNat + A185255 n

end

end A257330.P13056453244939122631

/-! ## A257330.P3477856908978878658

`or(A257347(A004767(n)), A281155(n))`
-/

namespace A257330.P3477856908978878658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A257347 (A004767 n).toNat) (A281155 n)

end

end A257330.P3477856908978878658

/-!
# A257331: Construct spiral of numbers on square grid as in Comments; sequence gives terms along the "5" arm.

The programs for A257331, there is no canonical definition to state claims against.
-/

/-! ## A257331.P8154320708965825278

`A257347(4*(n+1))`
-/

namespace A257331.P8154320708965825278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257347 (4 * (n + 1))

end

end A257331.P8154320708965825278

/-! ## A257331.P4696788048285563728

`A257347(A008574(n+1))+A185255(n)`
-/

namespace A257331.P4696788048285563728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257347 (A008574 (n + 1)).toNat + A185255 n

end

end A257331.P4696788048285563728

/-! ## A257331.P11607955721306503400

`or(A257347(A008574(n+1)), A281155(n))`
-/

namespace A257331.P11607955721306503400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A257347 (A008574 (n + 1)).toNat) (A281155 n)

end

end A257331.P11607955721306503400

/-!
# A257332: Construct spiral of numbers on square grid as in Comments; sequence gives terms along the "7" arm.

The programs for A257332, there is no canonical definition to state claims against.
-/

/-! ## A257332.P13810022851132346695

`A257347(4*n+5)`
-/

namespace A257332.P13810022851132346695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257347 (4 * n + 5)

end

end A257332.P13810022851132346695

/-! ## A257332.P307475693031357204

`A257347(A016813(n+1))+char[17]`
-/

namespace A257332.P307475693031357204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257347 (A016813 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A257332.P307475693031357204

/-! ## A257332.P1025996439521191822

`A257347(A016813(n+1))/A007318(∑[n])`
-/

namespace A257332.P1025996439521191822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257347 (A016813 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A257332.P1025996439521191822

/-! ## A257332.P16508057689646535053

`A257347(A016813(n+1))^A007318(C(n, 2))`
-/

namespace A257332.P16508057689646535053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257347 (A016813 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose n 2) : ℤ)

end

end A257332.P16508057689646535053

/-!
# A257333: Construct spiral of numbers on square grid as in Comments; sequence gives terms along the "2" arm.

The programs for A257333, there is no canonical definition to state claims against.
-/

/-! ## A257333.P3807321759688018655

`xor(n+2, A000122(A185242(n)))`
-/

namespace A257333.P3807321759688018655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 2 : ℤ) (A000122 (A185242 n).toNat)

end

end A257333.P3807321759688018655

/-! ## A257333.P3325561109519216443

`A094053(A007953(C(n, 30)+4))+n`
-/

namespace A257333.P3325561109519216443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (A007953 (Nat.choose n 30 + 4)).toNat + (n : ℤ)

end

end A257333.P3325561109519216443

/-! ## A257333.P4483755686348570169

`A141213(n)-A016192(A098050(n))`
-/

namespace A257333.P4483755686348570169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 n - A016192 (A098050 n).toNat

end

end A257333.P4483755686348570169

/-! ## A257333.P6744566813176232365

`A141213(n)-A103452(A034576(n+1))`
-/

namespace A257333.P6744566813176232365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 n - A103452 (A034576 (n + 1)).toNat

end

end A257333.P6744566813176232365

/-! ## A257333.P1123412401271028580

`A195842(A195848(A210964(n+2)))+n+1`
-/

namespace A257333.P1123412401271028580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195842 (A195848 (A210964 (n + 2)).toNat).toNat + (n + 1 : ℤ)

end

end A257333.P1123412401271028580

/-!
# A257339: Arrange numbers in a single clockwise spiral so that each number is relatively prime to its eight neighbors.

The programs for A257339, there is no canonical definition to state claims against.
-/

/-! ## A257339.P17637035151622232645

`A257111(n)+a(n-1)` with `a(0)=1`
-/

namespace A257339.P17637035151622232645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A257111 n + a (n - 1)

end

end A257339.P17637035151622232645

/-! ## A257339.P4668936780620892563

`∑[A257111(floor(1/(n+1)+n))]`
-/

namespace A257339.P4668936780620892563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257111 ⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257339.P4668936780620892563

/-! ## A257339.P17901620377549951942

`abs(∑[A257111(A028310(n))])`
-/

namespace A257339.P17901620377549951942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257111 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A257339.P17901620377549951942

/-! ## A257339.P848236316419228991

`abs(∑[A257111(A000007(n)+n)])`
-/

namespace A257339.P848236316419228991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257111 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A257339.P848236316419228991

/-! ## A257339.P7628043521555235523

`∑[A257111(n+1)]+1-A257111(n+1)`
-/

namespace A257339.P7628043521555235523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A257111 (n + 1))

end

end A257339.P7628043521555235523

/-! ## A257339.P6927698683000914345

`∑[A257111(A028310(n))]%A000040(n+1)`
-/

namespace A257339.P6927698683000914345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257111 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1))

end

end A257339.P6927698683000914345

/-! ## A257339.P4400294586497884857

`∑[A257111(A028310(n))%A000096(n+1)]`
-/

namespace A257339.P4400294586497884857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257111 (A028310 n).toNat) (A000096 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257339.P4400294586497884857

/-! ## A257339.P13773264789972713190

`A000007(n+1)+∑[A257111(A028310(n))]`
-/

namespace A257339.P13773264789972713190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257111 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257339.P13773264789972713190

/-! ## A257339.P11205566235401775978

`abs(∑[A257111(A233583(n+1))])`
-/

namespace A257339.P11205566235401775978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257111 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A257339.P11205566235401775978

/-!
# A257341: Solution to Popular Computing Problem 56 (binary).

The programs for A257341, there is no canonical definition to state claims against.
-/

/-! ## A257341.P1801121613242312052

`A212412(A099822(n+1)*A228407(n))`
-/

namespace A257341.P1801121613242312052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212412 (A099822 (n + 1) * A228407 n).toNat

end

end A257341.P1801121613242312052

/-! ## A257341.P1827883699352045969

`A071028(A217954(n+1)+A057360(n))`
-/

namespace A257341.P1827883699352045969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 (A217954 (n + 1) + A057360 n).toNat

end

end A257341.P1827883699352045969

/-! ## A257341.P9427403671390257930

`A087049(A046691(A000124(n))-A062001(n+1))`
-/

namespace A257341.P9427403671390257930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A046691 (A000124 n).toNat - A062001 (n + 1)).toNat

end

end A257341.P9427403671390257930

/-! ## A257341.P17559341889357969118

`A071906(lcm(A011848(n), A047556(n+1)))`
-/

namespace A257341.P17559341889357969118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 (Int.lcm (A011848 n) (A047556 (n + 1)))

end

end A257341.P17559341889357969118

/-! ## A257341.P6802822420902984980

`1-A132194(A132187(2*(n+1)))`
-/

namespace A257341.P6802822420902984980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A132194 (A132187 (2 * (n + 1))).toNat

end

end A257341.P6802822420902984980

/-!
# A257346: Numbers not of the form x^2+xy+2y^2.

The programs for A257346, the canonical program `A257346.P9480988822245406268` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257346 has offset 1).

The definition of A257346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257346.P8706277498187164590

`eq[0, A002652(n)]`
-/

namespace A257346.P8706277498187164590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257346.P8706277498187164590

namespace A257346

/-- `eq[0, A002652(n)]` -/
def P8706277498187164590.Spec : Prop :=
  ∀ n, (P8706277498187164590.a n : ℤ) = A257346 (n + 1)

end A257346

/-! ## A257346.P13144878885508074518

`eq[0, A205975(n)]`
-/

namespace A257346.P13144878885508074518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205975 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257346.P13144878885508074518

namespace A257346

/-- `eq[0, A205975(n)]` -/
def P13144878885508074518.Spec : Prop :=
  ∀ n, (P13144878885508074518.a n : ℤ) = A257346 (n + 1)

end A257346

/-! ## A257346.P14964061619155854935

`eq[0, A209455(n)]`
-/

namespace A257346.P14964061619155854935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209455 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257346.P14964061619155854935

namespace A257346

/-- `eq[0, A209455(n)]` -/
def P14964061619155854935.Spec : Prop :=
  ∀ n, (P14964061619155854935.a n : ℤ) = A257346 (n + 1)

end A257346

/-! ## A257346.P2207791691909633946

`comp[A028951(n+1)]`
-/

namespace A257346.P2207791691909633946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A257346.P2207791691909633946

namespace A257346

/-- `comp[A028951(n+1)]` -/
def P2207791691909633946.Spec : Prop :=
  ∀ n, (P2207791691909633946.a n : ℤ) = A257346 (n + 1)

end A257346

/-! ## A257346.P15395483946818692548

`lt[A002652(2*n), 1]`
-/

namespace A257346.P15395483946818692548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A257346.P15395483946818692548

namespace A257346

/-- `lt[A002652(2*n), 1]` -/
def P15395483946818692548.Spec : Prop :=
  ∀ n, (P15395483946818692548.a n : ℤ) = A257346 (n + 1)

end A257346

/-! ## A257346.P6422345434158781975

`eq[0, A002656(n+1)]+1`
-/

namespace A257346.P6422345434158781975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A257346.P6422345434158781975

namespace A257346

/-- `eq[0, A002656(n+1)]+1` -/
def P6422345434158781975.Spec : Prop :=
  ∀ n, (P6422345434158781975.a n : ℤ) = A257346 (n + 1)

end A257346

/-! ## A257346.P9480988822245406268

`lt[A035162(n+1), 1]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A257346

/-- `lt[A035162(n+1), 1]+1` -/
def P9480988822245406268.Spec : Prop :=
  ∀ n, (P9480988822245406268.a n : ℤ) = A257346 (n + 1)

theorem P9480988822245406268.correct : P9480988822245406268.Spec := by
  intro n
  simp only [A257346, Nat.add_sub_cancel]

end A257346

/-! ## A257346.P3335681238688138403

`lt[A035182(n+1), 1]+1`
-/

namespace A257346.P3335681238688138403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035182 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A257346.P3335681238688138403

namespace A257346

/-- `lt[A035182(n+1), 1]+1` -/
def P3335681238688138403.Spec : Prop :=
  ∀ n, (P3335681238688138403.a n : ℤ) = A257346 (n + 1)

end A257346

/-! ## A257346.P1749594786523630391

`lt[A352563(n+1), 1]+1`
-/

namespace A257346.P1749594786523630391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352563 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A257346.P1749594786523630391

namespace A257346

/-- `lt[A352563(n+1), 1]+1` -/
def P1749594786523630391.Spec : Prop :=
  ∀ n, (P1749594786523630391.a n : ℤ) = A257346 (n + 1)

end A257346

/-! ## A257346.P995888731096414494

`eq[0, A033719(A195161(n))]`
-/

namespace A257346.P995888731096414494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 (A195161 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257346.P995888731096414494

namespace A257346

/-- `eq[0, A033719(A195161(n))]` -/
def P995888731096414494.Spec : Prop :=
  ∀ n, (P995888731096414494.a n : ℤ) = A257346 (n + 1)

end A257346

/-!
# A257349: a(1) = 16, a(n) = sigma(a(n-1)).

The programs for A257349, the canonical program `A257349.P11043506227053085705` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257349 has offset 1).

The definition of A257349 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(a(n-1))` (program `A257349.P11043506227053085705`, by `A257349.P11043506227053085705.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257349.P11043506227053085705

`A000203(a(n-1))` with `a(0)=16`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A257349

/-- `A000203(a(n-1))` -/
def P11043506227053085705.Spec : Prop :=
  ∀ n, P11043506227053085705.a n = A257349 (n + 1)

theorem P11043506227053085705.correct : P11043506227053085705.Spec := by
  intro n
  simp only [A257349, Nat.add_sub_cancel]

end A257349

/-! ## A257349.P11857991213861200612

`A000203(abs(a((2*n)%(n+1))))` with `a(0)=16`
-/

namespace A257349.P11857991213861200612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A000203 |a (2 * n % (n + 1))|.toNat

end

end A257349.P11857991213861200612

namespace A257349

/-- `A000203(abs(a((2*n)%(n+1))))` -/
def P11857991213861200612.Spec : Prop :=
  ∀ n, P11857991213861200612.a n = A257349 (n + 1)

end A257349

/-! ## A257349.P16561265257357296860

`A000203(floor(n*a(floor(n²/(n+1))))/n)` with `a(0)=16`

`floor` is left out, it is the identity on integers.
-/

namespace A257349.P16561265257357296860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A000203 (SequenceMachineLib.roundAway (((n : ℤ) * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat : ℚ) / (n : ℚ))).toNat

end

end A257349.P16561265257357296860

namespace A257349

/-- `A000203(floor(n*a(floor(n²/(n+1))))/n)` -/
def P16561265257357296860.Spec : Prop :=
  ∀ n, P16561265257357296860.a n = A257349 (n + 1)

end A257349

/-! ## A257349.P12297742368208132496

`A000203(abs(a(A023443(n))))` with `a(0)=16`
-/

namespace A257349.P12297742368208132496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A000203 |a (A023443 n).toNat|.toNat

end

end A257349.P12297742368208132496

namespace A257349

/-- `A000203(abs(a(A023443(n))))` -/
def P12297742368208132496.Spec : Prop :=
  ∀ n, P12297742368208132496.a n = A257349 (n + 1)

end A257349

/-! ## A257349.P7814621533301374367

`A000203(floor(a(A023443(n))))` with `a(0)=16`

`floor` is left out, it is the identity on integers.
-/

namespace A257349.P7814621533301374367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A000203 (a (A023443 n).toNat).toNat

end

end A257349.P7814621533301374367

namespace A257349

/-- `A000203(floor(a(A023443(n))))` -/
def P7814621533301374367.Spec : Prop :=
  ∀ n, P7814621533301374367.a n = A257349 (n + 1)

end A257349

/-!
# A257351: Number of non-2-reductive medial quandles of size n up to isomorphism.

The programs for A257351, there is no canonical definition to state claims against.
-/

/-! ## A257351.P10152647649398008031

`A165200(n+1)-A242275(n+1)`
-/

namespace A257351.P10152647649398008031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165200 (n + 1) - A242275 (n + 1)

end

end A257351.P10152647649398008031

/-! ## A257351.P9481043716206224091

`A165200(A000027(n+1))%A242275(n+1)`
-/

namespace A257351.P9481043716206224091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165200 (A000027 (n + 1)).toNat) (A242275 (n + 1))

end

end A257351.P9481043716206224091

/-! ## A257351.P12823159191405118474

`A165200(A090107(n+1))%A242275(n+1)`
-/

namespace A257351.P12823159191405118474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165200 (A090107 (n + 1)).toNat) (A242275 (n + 1))

end

end A257351.P12823159191405118474

/-! ## A257351.P15409881166670464325

`A165200(A171526(n+1))%A242275(n+1)`
-/

namespace A257351.P15409881166670464325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165200 (A171526 (n + 1)).toNat) (A242275 (n + 1))

end

end A257351.P15409881166670464325

/-! ## A257351.P5079900021619553325

`A165200(A187829(n+1))%A242275(n+1)`
-/

namespace A257351.P5079900021619553325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165200 (A187829 (n + 1)).toNat) (A242275 (n + 1))

end

end A257351.P5079900021619553325

/-!
# A257352: Expansion of g.f. (1-2*x+51*x^2)/(1-x)^3.

The programs for A257352, the canonical program `A257352.P7440498178181604951` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257352 has offset 0).

The definition of A257352 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x+51x^2)/(1-3x+3x^2-x^3))` (program `A257352.P7440498178181604951`, by `A257352.P7440498178181604951.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257352.P7440498178181604951

`ogf((1-2x+51x^2)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A257352

/-- `ogf((1-2x+51x^2)/(1-3x+3x^2-x^3))` -/
def P7440498178181604951.Spec : Prop :=
  ∀ n, P7440498178181604951.a n = A257352 n

theorem P7440498178181604951.correct : P7440498178181604951.Spec := by
  intro n
  simp only [A257352]

end A257352

/-! ## A257352.P13333390172365344494

`25*n²-25*n+1`
-/

namespace A257352.P13333390172365344494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (25 * n ^ 2 : ℤ) - (25 * n : ℤ) + 1

end

end A257352.P13333390172365344494

namespace A257352

/-- `25*n²-25*n+1` -/
def P13333390172365344494.Spec : Prop :=
  ∀ n, P13333390172365344494.a n = A257352 n

end A257352

/-! ## A257352.P17352203276450256809

`or(1, 50*C(n, 2))`
-/

namespace A257352.P17352203276450256809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (50 * Nat.choose n 2)

end

end A257352.P17352203276450256809

namespace A257352

/-- `or(1, 50*C(n, 2))` -/
def P17352203276450256809.Spec : Prop :=
  ∀ n, (P17352203276450256809.a n : ℤ) = A257352 n

end A257352

/-! ## A257352.P7482315381593078718

`xor(1, 50*C(n, 2))`
-/

namespace A257352.P7482315381593078718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (50 * Nat.choose n 2)

end

end A257352.P7482315381593078718

namespace A257352

/-- `xor(1, 50*C(n, 2))` -/
def P7482315381593078718.Spec : Prop :=
  ∀ n, (P7482315381593078718.a n : ℤ) = A257352 n

end A257352

/-! ## A257352.P11647013356662237818

`or(1, 25*(n²-n))`
-/

namespace A257352.P11647013356662237818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (25 * ((n ^ 2 : ℤ) - (n : ℤ)))

end

end A257352.P11647013356662237818

namespace A257352

/-- `or(1, 25*(n²-n))` -/
def P11647013356662237818.Spec : Prop :=
  ∀ n, P11647013356662237818.a n = A257352 n

end A257352

/-! ## A257352.P10225372938119682605

`xor(1, 25*(n²-n))`
-/

namespace A257352.P10225372938119682605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (25 * ((n ^ 2 : ℤ) - (n : ℤ)))

end

end A257352.P10225372938119682605

namespace A257352

/-- `xor(1, 25*(n²-n))` -/
def P10225372938119682605.Spec : Prop :=
  ∀ n, P10225372938119682605.a n = A257352 n

end A257352

/-! ## A257352.P15087830323302485453

`∑[a(n-1)+50]` with `a(0)=1, a(1)=0`
-/

namespace A257352.P15087830323302485453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + 50

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257352.P15087830323302485453

namespace A257352

/-- `∑[a(n-1)+50]` -/
def P15087830323302485453.Spec : Prop :=
  ∀ n, (P15087830323302485453.a n : ℤ) = A257352 n

end A257352

/-! ## A257352.P1896750929780492315

`(5*(n-1)*A008592(n)+2)/2`
-/

namespace A257352.P1896750929780492315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * ((n : ℤ) - 1) * A008592 n + 2 : ℚ) / 2

end

end A257352.P1896750929780492315

namespace A257352

/-- `(5*(n-1)*A008592(n)+2)/2` -/
def P1896750929780492315.Spec : Prop :=
  ∀ n, P1896750929780492315.a n = (A257352 n : ℚ)

end A257352

/-! ## A257352.P8398606012791785791

`A082110((n+3)²-∑[n])`
-/

namespace A257352.P8398606012791785791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082110 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257352.P8398606012791785791

namespace A257352

/-- `A082110((n+3)²-∑[n])` -/
def P8398606012791785791.Spec : Prop :=
  ∀ n, P8398606012791785791.a n = A257352 n

end A257352

/-! ## A257352.P12636497245071317543

`A097802(n²-n)/3`
-/

namespace A257352.P12636497245071317543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097802 (n ^ 2 - n) : ℚ) / 3

end

end A257352.P12636497245071317543

namespace A257352

/-- `A097802(n²-n)/3` -/
def P12636497245071317543.Spec : Prop :=
  ∀ n, P12636497245071317543.a n = (A257352 n : ℚ)

end A257352

/-!
# A257353: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum or central row sum less than the central column sum.

The programs for A257353, there is no canonical definition to state claims against.
-/

/-! ## A257353.P5672792386876160427

`A257361((n+1)²+n²)`
-/

namespace A257353.P5672792386876160427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 ((n + 1) ^ 2 + n ^ 2)

end

end A257353.P5672792386876160427

/-! ## A257353.P16758818585386614828

`lcm(2, A257361(A001844(n)))`
-/

namespace A257353.P16758818585386614828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A257361 (A001844 n).toNat)

end

end A257353.P16758818585386614828

/-! ## A257353.P9858832894630939485

`record[gcd(A003987(n), A257361(n+1))]`
-/

namespace A257353.P9858832894630939485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A257361 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257353.P9858832894630939485

/-! ## A257353.P8735167087852105082

`A007318(C(n, 2))*A257361(A001844(n))`
-/

namespace A257353.P8735167087852105082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A257361 (A001844 n).toNat

end

end A257353.P8735167087852105082

/-! ## A257353.P17718369137319993314

`A000041(C(n, 36))*A257361(A001844(n))`
-/

namespace A257353.P17718369137319993314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 36) * A257361 (A001844 n).toNat

end

end A257353.P17718369137319993314

/-!
# A257354: Number of (n+2)X(1+2) 0..1 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum or central row sum less than the central column sum.

The programs for A257354, there is no canonical definition to state claims against.
-/

/-! ## A257354.P15339399128508581539

`A257361(∑[n]+1)`
-/

namespace A257354.P15339399128508581539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A257354.P15339399128508581539

/-! ## A257354.P16211102382660165940

`record[A257361(n+1)]`
-/

namespace A257354.P16211102382660165940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257354.P16211102382660165940

/-! ## A257354.P7780650218004959044

`lcm(2, A257361(A000124(n)))`
-/

namespace A257354.P7780650218004959044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A257361 (A000124 n).toNat)

end

end A257354.P7780650218004959044

/-! ## A257354.P11076491470088868336

`A257361(A000124(n))+A000038(n+1)`
-/

namespace A257354.P11076491470088868336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A000124 n).toNat + A000038 (n + 1)

end

end A257354.P11076491470088868336

/-! ## A257354.P5244622305869179786

`A257361(A000124(n))+A000035(2*n)`
-/

namespace A257354.P5244622305869179786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A000124 n).toNat + A000035 (2 * n)

end

end A257354.P5244622305869179786

/-!
# A257355: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum or central row sum less than the central column sum.

The programs for A257355, there is no canonical definition to state claims against.
-/

/-! ## A257355.P7239402512642361500

`A257361(∑[n+1]+2)`
-/

namespace A257355.P7239402512642361500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A257355.P7239402512642361500

/-! ## A257355.P7956761508073399746

`record[A010054(n)*A257361(n+2)]`
-/

namespace A257355.P7956761508073399746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A257361 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257355.P7956761508073399746

/-! ## A257355.P4084345081656753802

`record[gcd(A180662(n), A257361(n+2))]`
-/

namespace A257355.P4084345081656753802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180662 n) (A257361 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257355.P4084345081656753802

/-!
# A257356: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum or central row sum less than the central column sum.

The programs for A257356, there is no canonical definition to state claims against.
-/

/-! ## A257356.P619762656868526152

`A257361(A167614(n+1))`
-/

namespace A257356.P619762656868526152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A167614 (n + 1)).toNat

end

end A257356.P619762656868526152

/-! ## A257356.P7798374613395624222

`A257361(A055998(n)+6)`
-/

namespace A257356.P7798374613395624222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A055998 n + 6).toNat

end

end A257356.P7798374613395624222

/-! ## A257356.P8829185668850790747

`A257361(A167499(n)+n)`
-/

namespace A257356.P8829185668850790747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A167499 n + (n : ℤ)).toNat

end

end A257356.P8829185668850790747

/-! ## A257356.P711635670714504265

`A257361(A034856(n+1)+5)`
-/

namespace A257356.P711635670714504265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A034856 (n + 1) + 5).toNat

end

end A257356.P711635670714504265

/-! ## A257356.P7681093916829982705

`A257361(A167487(n+1)-4)`
-/

namespace A257356.P7681093916829982705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A167487 (n + 1) - 4).toNat

end

end A257356.P7681093916829982705

/-!
# A257357: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum or central row sum less than the central column sum.

The programs for A257357, there is no canonical definition to state claims against.
-/

/-! ## A257357.P12473322169723387506

`A257361(A052905(n)+9)`
-/

namespace A257357.P12473322169723387506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A052905 n + 9).toNat

end

end A257357.P12473322169723387506

/-! ## A257357.P15933232130373033229

`A257361(A055999(n)+10)`
-/

namespace A257357.P15933232130373033229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A055999 n + 10).toNat

end

end A257357.P15933232130373033229

/-! ## A257357.P9374621888936501028

`A257361(A167614(n+2)+1)`
-/

namespace A257357.P9374621888936501028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A167614 (n + 2) + 1).toNat

end

end A257357.P9374621888936501028

/-! ## A257357.P5734942318713736415

`A257361(A112355(n+1)+4)`
-/

namespace A257357.P5734942318713736415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A112355 (n + 1) + 4).toNat

end

end A257357.P5734942318713736415

/-! ## A257357.P8800172512558492030

`A257361(A167487(n+2)-3)`
-/

namespace A257357.P8800172512558492030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A167487 (n + 2) - 3).toNat

end

end A257357.P8800172512558492030

/-!
# A257358: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum or central row sum less than the central column sum.

The programs for A257358, there is no canonical definition to state claims against.
-/

/-! ## A257358.P81184173851718322

`A257361(A167499(n+3))`
-/

namespace A257358.P81184173851718322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A167499 (n + 3)).toNat

end

end A257358.P81184173851718322

/-! ## A257358.P11095832923138522417

`A257361(A077169(n+5))`
-/

namespace A257358.P11095832923138522417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A077169 (n + 5)).toNat

end

end A257358.P11095832923138522417

/-! ## A257358.P17897374235282234052

`A257361(A155212(n)+13)`
-/

namespace A257358.P17897374235282234052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A155212 n + 13).toNat

end

end A257358.P17897374235282234052

/-! ## A257358.P10154246509386886979

`A257361(A056000(n)+15)`
-/

namespace A257358.P10154246509386886979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A056000 n + 15).toNat

end

end A257358.P10154246509386886979

/-! ## A257358.P10299810424763294900

`A257361(A000217(n+4)+5)`
-/

namespace A257358.P10299810424763294900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A000217 (n + 4) + 5).toNat

end

end A257358.P10299810424763294900

/-!
# A257359: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum or central row sum less than the central column sum.

The programs for A257359, there is no canonical definition to state claims against.
-/

/-! ## A257359.P14283214133156623209

`A257361(A000217(n+5)+6)`
-/

namespace A257359.P14283214133156623209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A000217 (n + 5) + 6).toNat

end

end A257359.P14283214133156623209

/-! ## A257359.P13448888513536711325

`A257361(A002620(n+2)+A002620(n+9))`
-/

namespace A257359.P13448888513536711325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A257359.P13448888513536711325

/-! ## A257359.P8263692613218421109

`A257361(A374007(n+1))`
-/

namespace A257359.P8263692613218421109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A374007 (n + 1)).toNat

end

end A257359.P8263692613218421109

/-! ## A257359.P9103111560832365873

`A257361(A052905(n+3))`
-/

namespace A257359.P9103111560832365873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A052905 (n + 3)).toNat

end

end A257359.P9103111560832365873

/-! ## A257359.P8905544606242697179

`A257361(A055999(n+3)+1)`
-/

namespace A257359.P8905544606242697179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A055999 (n + 3) + 1).toNat

end

end A257359.P8905544606242697179

/-!
# A257360: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum or central row sum less than the central column sum.

The programs for A257360, there is no canonical definition to state claims against.
-/

/-! ## A257360.P4501035969002165926

`A257361(A167487(n+5))`
-/

namespace A257360.P4501035969002165926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A167487 (n + 5)).toNat

end

end A257360.P4501035969002165926

/-! ## A257360.P13615942162442819749

`A257361(A000124(n+6)+6)`
-/

namespace A257360.P13615942162442819749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A000124 (n + 6) + 6).toNat

end

end A257360.P13615942162442819749

/-! ## A257360.P4491660671825259361

`A257361(A000217(n+6)+7)`
-/

namespace A257360.P4491660671825259361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A000217 (n + 6) + 7).toNat

end

end A257360.P4491660671825259361

/-! ## A257360.P9462121942393051512

`A257361(A055999(n+5)-2*(n+1))`
-/

namespace A257360.P9462121942393051512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A055999 (n + 5) - (2 * (n + 1) : ℤ)).toNat

end

end A257360.P9462121942393051512

/-! ## A257360.P9356714349085902285

`A257361(A374008(n+1))`
-/

namespace A257360.P9356714349085902285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257361 (A374008 (n + 1)).toNat

end

end A257360.P9356714349085902285

/-!
# A257362: Odd primes modulo which -163 is a square.

The programs for A257362, there is no canonical definition to state claims against.
-/

/-! ## A257362.P691832129511895646

`p?[A341790(n+1)]`
-/

namespace A257362.P691832129511895646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257362.P691832129511895646

/-! ## A257362.P3632904211104614441

`∩[A015919(n+1), A341790(n+1)]`
-/

namespace A257362.P3632904211104614441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P3632904211104614441

/-! ## A257362.P16641309031279048661

`∩[A066720(n+1), A341790(n+1)]`
-/

namespace A257362.P16641309031279048661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P16641309031279048661

/-! ## A257362.P2205702427477745073

`∩[A071621(n+1), A341790(n+1)]`
-/

namespace A257362.P2205702427477745073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P2205702427477745073

/-! ## A257362.P12999662866988318217

`∩[A004139(n+1), A341790(n+1)]`
-/

namespace A257362.P12999662866988318217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P12999662866988318217

/-! ## A257362.P8931148233611515475

`∩[A045319(n+1), A341790(n+1)]`
-/

namespace A257362.P8931148233611515475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P8931148233611515475

/-! ## A257362.P12296541278278617520

`∩[A045344(n+1), A341790(n+1)]`
-/

namespace A257362.P12296541278278617520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P12296541278278617520

/-! ## A257362.P9186488436350217273

`∩[A065091(n+1), A341790(n+1)]`
-/

namespace A257362.P9186488436350217273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P9186488436350217273

/-! ## A257362.P18178381941451604266

`∩[A000040(n+1), A341790(n+1)]`
-/

namespace A257362.P18178381941451604266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P18178381941451604266

/-! ## A257362.P18085575288782166613

`∩[A006005(n+1), A341790(n+1)]`
-/

namespace A257362.P18085575288782166613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P18085575288782166613

/-! ## A257362.P4796269834802797267

`∩[A008578(n+1), A341790(n+1)]`
-/

namespace A257362.P4796269834802797267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P4796269834802797267

/-! ## A257362.P12466369415492170916

`∩[A116974(n+1), A341790(n+1)]`
-/

namespace A257362.P12466369415492170916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P12466369415492170916

/-! ## A257362.P16002470686131557871

`∩[A182986(n+1), A341790(n+1)]`
-/

namespace A257362.P16002470686131557871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P16002470686131557871

/-! ## A257362.P1995831732912110673

`∩[A158611(n+1), A341790(n+1)]`
-/

namespace A257362.P1995831732912110673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P1995831732912110673

/-! ## A257362.P6782135678430203306

`∩[A053813(n+1), A341790(n+1)]`
-/

namespace A257362.P6782135678430203306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P6782135678430203306

/-! ## A257362.P4835275171659917494

`∩[A326715(n+1), A341790(n+1)]`
-/

namespace A257362.P4835275171659917494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P4835275171659917494

/-! ## A257362.P14733182465148123308

`∩[A064728(n+1), A341790(n+1)]`
-/

namespace A257362.P14733182465148123308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P14733182465148123308

/-! ## A257362.P13573194339255762045

`∩[A060634(n+1), A341790(n+1)]`
-/

namespace A257362.P13573194339255762045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P13573194339255762045

/-! ## A257362.P1991708868971894069

`∩[A182140(n+1), A341790(n+1)]`
-/

namespace A257362.P1991708868971894069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P1991708868971894069

/-! ## A257362.P4686976022745120993

`∩[A097605(n+1), A341790(n+1)]`
-/

namespace A257362.P4686976022745120993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257362.P4686976022745120993

/-!
# A257363: Number of 3-Motzkin paths with no level steps at height 1.

The programs for A257363, there is no canonical definition to state claims against.
-/

/-! ## A257363.P15705214085341993137

`A222247(A257178(n))`
-/

namespace A257363.P15705214085341993137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (A257178 n).toNat

end

end A257363.P15705214085341993137

/-! ## A257363.P13592059566983285790

`A222247(A257290(n)+3*a(n-1))` with `a(0)=1`
-/

namespace A257363.P13592059566983285790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A222247 (A257290 n + 3 * a (n - 1)).toNat

end

end A257363.P13592059566983285790

/-! ## A257363.P15133807397433649847

`A322437(A257178(n+2))+A257178(n)`
-/

namespace A257363.P15133807397433649847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322437 (A257178 (n + 2)).toNat + A257178 n

end

end A257363.P15133807397433649847

/-!
# A257365: Triangle, read by rows, T(n,k) = Sum_{m=0..(n-k)/2} C(k,m)*C(n-2*m,k).

The programs for A257365, there is no canonical definition to state claims against.
-/

/-! ## A257365.P4588453415725551167

`A228881(A161492(n+1))`
-/

namespace A257365.P4588453415725551167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228881 (A161492 (n + 1)).toNat

end

end A257365.P4588453415725551167

/-! ## A257365.P8090762215537055830

`A120835(A085478(n)+A010815(3*n+4))`
-/

namespace A257365.P8090762215537055830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120835 (A085478 n + A010815 (3 * n + 4)).toNat

end

end A257365.P8090762215537055830

/-! ## A257365.P16286306725203633266

`A048766(A110511(n)²)`
-/

namespace A257365.P16286306725203633266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A110511 n ^ 2).toNat

end

end A257365.P16286306725203633266

/-! ## A257365.P16187803730980422855

`A227876(A168647(n))`
-/

namespace A257365.P16187803730980422855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227876 (A168647 n).toNat

end

end A257365.P16187803730980422855

/-! ## A257365.P3926822312541492400

`A094528(A114123(n))`
-/

namespace A257365.P3926822312541492400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094528 (A114123 n).toNat

end

end A257365.P3926822312541492400

/-!
# A257366: Smallest integer m such that m^2 + 1 has exactly n prime factors, counted with multiplicity.

The programs for A257366, there is no canonical definition to state claims against.
-/

/-! ## A257366.P11354494108107639906

`A068962(Δ[p?[A205647(n+1)]])`
-/

namespace A257366.P11354494108107639906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205647 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (f1 (n + 1) - f1 n).toNat

end

end A257366.P11354494108107639906

/-! ## A257366.P7522103933693516338

`A130497(Δ[p?[A205647(n+1)]])`
-/

namespace A257366.P7522103933693516338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205647 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (f1 (n + 1) - f1 n).toNat

end

end A257366.P7522103933693516338

/-!
# A257372: a(n) = denominators of A255935(n) * triangle T(n,k) for Bernoulli(k+2), k=0 to n-1.

The programs for A257372, there is no canonical definition to state claims against.
-/

/-! ## A257372.P1847658908187325020

`A141459(n+1)*A027642(n)`
-/

namespace A257372.P1847658908187325020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 (n + 1) * A027642 n

end

end A257372.P1847658908187325020

/-! ## A257372.P17026539940191548077

`lcm(A027642(n), A172087(n+1))`
-/

namespace A257372.P17026539940191548077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027642 n) (A172087 (n + 1))

end

end A257372.P17026539940191548077

/-! ## A257372.P6122618918784463296

`ceil(ratio[A141459(n)])*A027642(n)`
-/

namespace A257372.P6122618918784463296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ * A027642 n

end

end A257372.P6122618918784463296

/-! ## A257372.P11872968162537750987

`sqrt(A172282(n))*A141459(n+1)`
-/

namespace A257372.P11872968162537750987
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A172282 n : ℝ) * (A141459 (n + 1) : ℝ)

end

end A257372.P11872968162537750987

/-! ## A257372.P12783916540163572371

`A027760(n+1)/2*A027642(n)`
-/

namespace A257372.P12783916540163572371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027760 (n + 1) : ℚ) / 2 * (A027642 n : ℚ)

end

end A257372.P12783916540163572371

/-!
# A257380: Number of (n+2)X(1+2) 0..2 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum or central row sum less than the central column sum.

The programs for A257380, there is no canonical definition to state claims against.
-/

/-! ## A257380.P3725402418062732453

`A257385(∑[n]+1)`
-/

namespace A257380.P3725402418062732453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257385 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A257380.P3725402418062732453

/-! ## A257380.P14777874112150517906

`lcm(2, A257385(A000124(n)))`
-/

namespace A257380.P14777874112150517906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A257385 (A000124 n).toNat)

end

end A257380.P14777874112150517906

/-! ## A257380.P7866342890895468564

`record[A257385(n+1)/A050447(n)]`
-/

namespace A257380.P7866342890895468564
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257385 (n + 1) : ℚ) / (A050447 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257380.P7866342890895468564

/-! ## A257380.P5724862015007872991

`record[A257385(n+1)/A059268(n)]`
-/

namespace A257380.P5724862015007872991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257385 (n + 1) : ℚ) / (A059268 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257380.P5724862015007872991

/-! ## A257380.P8886609666799915366

`record[A257385(n+1)/A257365(n)]`
-/

namespace A257380.P8886609666799915366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257385 (n + 1) : ℚ) / (A257365 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257380.P8886609666799915366

/-!
# A257381: Number of (n+2)X(2+2) 0..2 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum or central row sum less than the central column sum.

The programs for A257381, there is no canonical definition to state claims against.
-/

/-! ## A257381.P16140263587358061426

`A257385(∑[n+1]+2)`
-/

namespace A257381.P16140263587358061426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257385 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A257381.P16140263587358061426

/-!
# A257382: Number of (n+2)X(3+2) 0..2 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum or central row sum less than the central column sum.

The programs for A257382, there is no canonical definition to state claims against.
-/

/-! ## A257382.P14359975190568738269

`A257385(A167614(n+1))`
-/

namespace A257382.P14359975190568738269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257385 (A167614 (n + 1)).toNat

end

end A257382.P14359975190568738269

/-! ## A257382.P14974459904049291704

`A257385(A167499(n)+n)`
-/

namespace A257382.P14974459904049291704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257385 (A167499 n + (n : ℤ)).toNat

end

end A257382.P14974459904049291704

/-! ## A257382.P14979312726780431940

`A257385(∑[n+3]+1)`
-/

namespace A257382.P14979312726780431940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257385 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A257382.P14979312726780431940

/-! ## A257382.P10252910616417235615

`A257385(A034856(n+2))+A063524(3*(n+1))`
-/

namespace A257382.P10252910616417235615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257385 (A034856 (n + 2)).toNat + A063524 (3 * (n + 1))

end

end A257382.P10252910616417235615

/-! ## A257382.P3994252553885333257

`A257385(A034856(n+2))+A186719(3*n+4)`
-/

namespace A257382.P3994252553885333257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257385 (A034856 (n + 2)).toNat + A186719 (3 * n + 4)

end

end A257382.P3994252553885333257

/-!
# A257383: Number of (n+2)X(4+2) 0..2 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum or central row sum less than the central column sum.

The programs for A257383, there is no canonical definition to state claims against.
-/

/-! ## A257383.P18195654563554959376

`A257385(∑[n+3]+7)`
-/

namespace A257383.P18195654563554959376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257385 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A257383.P18195654563554959376

/-!
# A257384: Number of (n+2)X(5+2) 0..2 arrays with no 3x3 subblock diagonal sum equal to the antidiagonal sum or central row sum less than the central column sum.

The programs for A257384, there is no canonical definition to state claims against.
-/

/-! ## A257384.P14013604802553869961

`A257385(A167499(n+3))`
-/

namespace A257384.P14013604802553869961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257385 (A167499 (n + 3)).toNat

end

end A257384.P14013604802553869961

/-! ## A257384.P13358504712083432533

`A257385(A155212(n)+13)`
-/

namespace A257384.P13358504712083432533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257385 (A155212 n + 13).toNat

end

end A257384.P13358504712083432533

/-! ## A257384.P11210067316840229727

`A257385(A056000(n)+15)`
-/

namespace A257384.P11210067316840229727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257385 (A056000 n + 15).toNat

end

end A257384.P11210067316840229727

/-! ## A257384.P17774688251145827207

`A257385(eq[7, A066657(n)])`
-/

namespace A257384.P17774688251145827207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257384.P17774688251145827207

/-!
# A257386: Number of Motzkin paths of length n with no level steps at height 3.

The programs for A257386, there is no canonical definition to state claims against.
-/

/-! ## A257386.P16698457333755414015

`A036644(n)+A028310(A257104(n))`
-/

namespace A257386.P16698457333755414015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036644 n + A028310 (A257104 n).toNat

end

end A257386.P16698457333755414015

/-! ## A257386.P8495615871588988496

`A257104(A120126(n))+A036644(n)`
-/

namespace A257386.P8495615871588988496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257104 (A120126 n).toNat + A036644 n

end

end A257386.P8495615871588988496

/-! ## A257386.P4518098188946063720

`A026806(A280756(n))`
-/

namespace A257386.P4518098188946063720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A280756 n).toNat

end

end A257386.P4518098188946063720

/-! ## A257386.P17797823624225062133

`A008615(A280756(n)+6)`
-/

namespace A257386.P17797823624225062133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A280756 n + 6).toNat

end

end A257386.P17797823624225062133

/-! ## A257386.P15477877939728262754

`A048285(n)-A351358(A000032(n))`
-/

namespace A257386.P15477877939728262754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048285 n - A351358 (A000032 n).toNat

end

end A257386.P15477877939728262754

/-!
# A257387: Number of Motzkin paths of length n with no level steps at height 4.

The programs for A257387, there is no canonical definition to state claims against.
-/

/-! ## A257387.P6977645690690881922

`A257519(n)+A118759(A036639(n))`
-/

namespace A257387.P6977645690690881922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257519 n + A118759 (A036639 n).toNat

end

end A257387.P6977645690690881922

/-! ## A257387.P2696852660077734802

`A257519(A120126(n))+A036639(n)`
-/

namespace A257387.P2696852660077734802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257519 (A120126 n).toNat + A036639 n

end

end A257387.P2696852660077734802

/-! ## A257387.P7043980097071394942

`A001006(n)-A030706(A036647(n))`
-/

namespace A257387.P7043980097071394942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A030706 ((A036647 n).toNat + 1)

end

end A257387.P7043980097071394942

/-! ## A257387.P6092986557568335683

`xor(A001006(n), A168131(A014374(n)))`
-/

namespace A257387.P6092986557568335683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001006 n) (A168131 (A014374 n).toNat)

end

end A257387.P6092986557568335683

/-! ## A257387.P3977871253354288450

`Δ[A097332(n)]-A030706(A036424(n))`
-/

namespace A257387.P3977871253354288450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A030706 ((A036424 n).toNat + 1)

end

end A257387.P3977871253354288450

/-!
# A257388: Number of 4-Motzkin paths of length n with no level steps at odd level.

The programs for A257388, there is no canonical definition to state claims against.
-/

/-! ## A257388.P16828634369679340063

`A257390(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A257388.P16828634369679340063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A257390 n + 4 * a (n - 1)

end

end A257388.P16828634369679340063

/-! ## A257388.P6086403702700473211

`A206805(a(n-1)+a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A257388.P6086403702700473211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A206805 (a (n - 1) + a (n - 1)).toNat + a (n - 1)

end

end A257388.P6086403702700473211

/-!
# A257389: Number of 3-generalized Motzkin paths of length n with no level steps H=(3,0) at odd level.

The programs for A257389, there is no canonical definition to state claims against.
-/

/-! ## A257389.P9581156667145867514

`A257516(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A257389.P9581156667145867514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A257516 n + a (n - 3)

end

end A257389.P9581156667145867514

/-!
# A257390: Number of 4-Motzkin paths of length n with no level steps at even level.

The programs for A257390, there is no canonical definition to state claims against.
-/

/-! ## A257390.P7311365219631371890

`A110656(A034999(n)-2*n)`
-/

namespace A257390.P7311365219631371890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A034999 n - (2 * n : ℤ)).toNat

end

end A257390.P7311365219631371890

/-! ## A257390.P6128541175849787587

`A110656(A034999(n)-n-n)`
-/

namespace A257390.P6128541175849787587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A034999 n - (n : ℤ) - (n : ℤ)).toNat

end

end A257390.P6128541175849787587

/-! ## A257390.P12634188554251312931

`A343609(A151080(n))+C(2, n+2)`
-/

namespace A257390.P12634188554251312931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A151080 n).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A257390.P12634188554251312931

/-!
# A257392: Number of ways of representing n as the sum of one or more consecutive nonprime numbers (A018252).

The programs for A257392, there is no canonical definition to state claims against.
-/

/-! ## A257392.P15200177148040668408

`A194285(A244636(n)+A112798(n+2))`
-/

namespace A257392.P15200177148040668408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (A244636 n + A112798 (n + 2)).toNat

end

end A257392.P15200177148040668408

/-! ## A257392.P12907893898705529236

`A057985(A000045(n+4)-A032190(n+1))`
-/

namespace A257392.P12907893898705529236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057985 (A000045 (n + 4) - A032190 (n + 1)).toNat

end

end A257392.P12907893898705529236

/-! ## A257392.P4949254220455954833

`A332808(A063496(n+1)+A054055(n))%3`
-/

namespace A257392.P4949254220455954833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332808 (A063496 (n + 1) + A054055 n).toNat) 3

end

end A257392.P4949254220455954833

/-! ## A257392.P14182044126620328720

`A030341(A105992(n+3)+A017077(3*(n+1)))`
-/

namespace A257392.P14182044126620328720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (A105992 (n + 3) + A017077 (3 * (n + 1))).toNat

end

end A257392.P14182044126620328720

/-! ## A257392.P8924329081128352527

`gcd(A000712(n+2), A270989(n))%4`
-/

namespace A257392.P8924329081128352527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000712 (n + 2)) (A270989 n) % 4

end

end A257392.P8924329081128352527

/-!
# A257393: Primes which are not the sum of two or more consecutive nonprime numbers.

The programs for A257393, there is no canonical definition to state claims against.
-/

/-! ## A257393.P6457490591852723683

`A140464(A300404(n)+n)`
-/

namespace A257393.P6457490591852723683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140464 (A300404 n + (n : ℤ)).toNat

end

end A257393.P6457490591852723683

/-! ## A257393.P12842263735551901379

`∩[A037174(n+1), A336378(n+1)]`
-/

namespace A257393.P12842263735551901379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257393.P12842263735551901379

/-! ## A257393.P15686680473109438305

`∩[A140464(n+1), A336378(n+1)]`
-/

namespace A257393.P15686680473109438305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257393.P15686680473109438305

/-! ## A257393.P11298390433893364498

`∩[A037174(n+1), A236207(n+1)]`
-/

namespace A257393.P11298390433893364498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257393.P11298390433893364498

/-! ## A257393.P9866777651615731676

`∩[A029596(n+1), A037174(n+1)]`
-/

namespace A257393.P9866777651615731676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257393.P9866777651615731676

/-!
# A257398: Expansion of phi(-x^6)^2 / chi(-x) in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A257398, the canonical program `A257398.P465226734749930738` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257398 has offset 0).

The definition of A257398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257398.P11805043315095941582

`A112603(3*n)`
-/

namespace A257398.P11805043315095941582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112603 (3 * n)

end

end A257398.P11805043315095941582

namespace A257398

/-- `A112603(3*n)` -/
def P11805043315095941582.Spec : Prop :=
  ∀ n, P11805043315095941582.a n = A257398 n

end A257398

/-! ## A257398.P465226734749930738

`A257399(4*n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A257398

/-- `A257399(4*n)` -/
def P465226734749930738.Spec : Prop :=
  ∀ n, P465226734749930738.a n = A257398 n

theorem P465226734749930738.correct : P465226734749930738.Spec := by
  intro n
  simp only [A257398]

end A257398

/-! ## A257398.P13163912053563786760

`A258747(8*n)`
-/

namespace A257398.P13163912053563786760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258747 (8 * n)

end

end A257398.P13163912053563786760

namespace A257398

/-- `A258747(8*n)` -/
def P13163912053563786760.Spec : Prop :=
  ∀ n, P13163912053563786760.a n = A257398 n

end A257398

/-! ## A257398.P4395408429415738764

`A033761(9*n)`
-/

namespace A257398.P4395408429415738764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 (9 * n)

end

end A257398.P4395408429415738764

namespace A257398

/-- `A033761(9*n)` -/
def P4395408429415738764.Spec : Prop :=
  ∀ n, P4395408429415738764.a n = A257398 n

end A257398

/-! ## A257398.P12814388329072601911

`A113411(12*n)`
-/

namespace A257398.P12814388329072601911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113411 (12 * n)

end

end A257398.P12814388329072601911

namespace A257398

/-- `A113411(12*n)` -/
def P12814388329072601911.Spec : Prop :=
  ∀ n, P12814388329072601911.a n = A257398 n

end A257398

/-! ## A257398.P6645768754294047953

`A122071(12*n)`
-/

namespace A257398.P6645768754294047953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122071 (12 * n)

end

end A257398.P6645768754294047953

namespace A257398

/-- `A122071(12*n)` -/
def P6645768754294047953.Spec : Prop :=
  ∀ n, P6645768754294047953.a n = A257398 n

end A257398

/-! ## A257398.P11203655571519446168

`A125095(12*n)`
-/

namespace A257398.P11203655571519446168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125095 (12 * n)

end

end A257398.P11203655571519446168

namespace A257398

/-- `A125095(12*n)` -/
def P11203655571519446168.Spec : Prop :=
  ∀ n, P11203655571519446168.a n = A257398 n

end A257398

/-! ## A257398.P18176012314568129637

`A258764(4*4*n)`
-/

namespace A257398.P18176012314568129637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258764 (4 * (4 * n))

end

end A257398.P18176012314568129637

namespace A257398

/-- `A258764(4*4*n)` -/
def P18176012314568129637.Spec : Prop :=
  ∀ n, P18176012314568129637.a n = A257398 n

end A257398

/-! ## A257398.P16005861395680840399

`A255365(4*4*n)`
-/

namespace A257398.P16005861395680840399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255365 (4 * (4 * n))

end

end A257398.P16005861395680840399

namespace A257398

/-- `A255365(4*4*n)` -/
def P16005861395680840399.Spec : Prop :=
  ∀ n, P16005861395680840399.a n = A257398 n

end A257398

/-! ## A257398.P17489953986194136613

`A256505(4*4*n)`
-/

namespace A257398.P17489953986194136613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256505 (4 * (4 * n))

end

end A257398.P17489953986194136613

namespace A257398

/-- `A256505(4*4*n)` -/
def P17489953986194136613.Spec : Prop :=
  ∀ n, P17489953986194136613.a n = A257398 n

end A257398

/-! ## A257398.P16291293239926054301

`A002325(A103214(n))`
-/

namespace A257398.P16291293239926054301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A103214 n).toNat

end

end A257398.P16291293239926054301

namespace A257398

/-- `A002325(A103214(n))` -/
def P16291293239926054301.Spec : Prop :=
  ∀ n, P16291293239926054301.a n = A257398 n

end A257398

/-! ## A257398.P4442446149581294664

`A002325(A017545(2*n)-1)`
-/

namespace A257398.P4442446149581294664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A017545 (2 * n) - 1).toNat

end

end A257398.P4442446149581294664

namespace A257398

/-- `A002325(A017545(2*n)-1)` -/
def P4442446149581294664.Spec : Prop :=
  ∀ n, P4442446149581294664.a n = A257398 n

end A257398

/-! ## A257398.P6736780659404039611

`A035172(A063098(2*n+1)-1)`
-/

namespace A257398.P6736780659404039611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035172 (A063098 (2 * n + 1) - 1).toNat

end

end A257398.P6736780659404039611

namespace A257398

/-- `A035172(A063098(2*n+1)-1)` -/
def P6736780659404039611.Spec : Prop :=
  ∀ n, P6736780659404039611.a n = A257398 n

end A257398

/-!
# A257399: Expansion of phi(x^3) * phi(-x^12) / chi(-x^4) in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A257399, the canonical program `A257399.P10089771544026543685` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257399 has offset 0).

The definition of A257399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3641 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257399.P11562892250027325610

`abs(A258747(2*n))`
-/

namespace A257399.P11562892250027325610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A258747 (2 * n)|

end

end A257399.P11562892250027325610

namespace A257399

/-- `abs(A258747(2*n))` -/
def P11562892250027325610.Spec : Prop :=
  ∀ n, P11562892250027325610.a n = A257399 n

end A257399

/-! ## A257399.P9343204215865997596

`A137564(lcm(11, A258747(2*n)))`
-/

namespace A257399.P9343204215865997596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (Int.lcm 11 (A258747 (2 * n)))

end

end A257399.P9343204215865997596

namespace A257399

/-- `A137564(lcm(11, A258747(2*n)))` -/
def P9343204215865997596.Spec : Prop :=
  ∀ n, P9343204215865997596.a n = A257399 n

end A257399

/-! ## A257399.P2555764459432210264

`A033999(n)*A258747(2*n)`
-/

namespace A257399.P2555764459432210264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A258747 (2 * n)

end

end A257399.P2555764459432210264

namespace A257399

/-- `A033999(n)*A258747(2*n)` -/
def P2555764459432210264.Spec : Prop :=
  ∀ n, P2555764459432210264.a n = A257399 n

end A257399

/-! ## A257399.P13869561693858879009

`A056594(2*n)*A258747(2*n)`
-/

namespace A257399.P13869561693858879009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A258747 (2 * n)

end

end A257399.P13869561693858879009

namespace A257399

/-- `A056594(2*n)*A258747(2*n)` -/
def P13869561693858879009.Spec : Prop :=
  ∀ n, P13869561693858879009.a n = A257399 n

end A257399

/-! ## A257399.P1731581894082868881

`lcm(A056594(2*n), A258747(A004277(n)))`
-/

namespace A257399.P1731581894082868881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 (2 * n)) (A258747 (A004277 n).toNat)

end

end A257399.P1731581894082868881

namespace A257399

/-- `lcm(A056594(2*n), A258747(A004277(n)))` -/
def P1731581894082868881.Spec : Prop :=
  ∀ n, (P1731581894082868881.a n : ℤ) = A257399 n

end A257399

/-! ## A257399.P10089771544026543685

`A216282(6*n+3+A298028(2*n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A257399

/-- `A216282(6*n+3+A298028(2*n))` -/
def P10089771544026543685.Spec : Prop :=
  ∀ n, P10089771544026543685.a n = A257399 n

theorem P10089771544026543685.correct : P10089771544026543685.Spec := by
  intro n
  simp only [A257399]

end A257399

/-! ## A257399.P7764217379494226887

`A113411(3*n)`
-/

namespace A257399.P7764217379494226887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113411 (3 * n)

end

end A257399.P7764217379494226887

namespace A257399

/-- `A113411(3*n)` -/
def P7764217379494226887.Spec : Prop :=
  ∀ n, P7764217379494226887.a n = A257399 n

end A257399

/-! ## A257399.P2716899757199608739

`A122071(3*n)`
-/

namespace A257399.P2716899757199608739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122071 (3 * n)

end

end A257399.P2716899757199608739

namespace A257399

/-- `A122071(3*n)` -/
def P2716899757199608739.Spec : Prop :=
  ∀ n, P2716899757199608739.a n = A257399 n

end A257399

/-! ## A257399.P16490496958447094867

`abs(A125095(3*n))`
-/

namespace A257399.P16490496958447094867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A125095 (3 * n)|

end

end A257399.P16490496958447094867

namespace A257399

/-- `abs(A125095(3*n))` -/
def P16490496958447094867.Spec : Prop :=
  ∀ n, P16490496958447094867.a n = A257399 n

end A257399

/-! ## A257399.P10892134795026800755

`lcm(A014709(n), A125095(3*n))`
-/

namespace A257399.P10892134795026800755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A125095 (3 * n))

end

end A257399.P10892134795026800755

namespace A257399

/-- `lcm(A014709(n), A125095(3*n))` -/
def P10892134795026800755.Spec : Prop :=
  ∀ n, (P10892134795026800755.a n : ℤ) = A257399 n

end A257399

/-! ## A257399.P1087330808059707426

`A094267(3*n)*A125095(3*n)`
-/

namespace A257399.P1087330808059707426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (3 * n) * A125095 (3 * n)

end

end A257399.P1087330808059707426

namespace A257399

/-- `A094267(3*n)*A125095(3*n)` -/
def P1087330808059707426.Spec : Prop :=
  ∀ n, P1087330808059707426.a n = A257399 n

end A257399

/-! ## A257399.P1457890146315501392

`A258764(4*n)`
-/

namespace A257399.P1457890146315501392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258764 (4 * n)

end

end A257399.P1457890146315501392

namespace A257399

/-- `A258764(4*n)` -/
def P1457890146315501392.Spec : Prop :=
  ∀ n, P1457890146315501392.a n = A257399 n

end A257399

/-! ## A257399.P14132307545145486504

`A255365(4*n)`
-/

namespace A257399.P14132307545145486504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255365 (4 * n)

end

end A257399.P14132307545145486504

namespace A257399

/-- `A255365(4*n)` -/
def P14132307545145486504.Spec : Prop :=
  ∀ n, P14132307545145486504.a n = A257399 n

end A257399

/-! ## A257399.P14468788071679441226

`A256505(4*n)`
-/

namespace A257399.P14468788071679441226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256505 (4 * n)

end

end A257399.P14468788071679441226

namespace A257399

/-- `A256505(4*n)` -/
def P14468788071679441226.Spec : Prop :=
  ∀ n, P14468788071679441226.a n = A257399 n

end A257399

/-! ## A257399.P9946070436759060612

`A002325(6*n+1)`
-/

namespace A257399.P9946070436759060612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (6 * n + 1)

end

end A257399.P9946070436759060612

namespace A257399

/-- `A002325(6*n+1)` -/
def P9946070436759060612.Spec : Prop :=
  ∀ n, P9946070436759060612.a n = A257399 n

end A257399

/-! ## A257399.P17068083726018403934

`A035172(6*n+1)`
-/

namespace A257399.P17068083726018403934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035172 (6 * n + 1)

end

end A257399.P17068083726018403934

namespace A257399

/-- `A035172(6*n+1)` -/
def P17068083726018403934.Spec : Prop :=
  ∀ n, P17068083726018403934.a n = A257399 n

end A257399

/-! ## A257399.P5409898490307580584

`A125096(A008486(2*n+1)-2)`
-/

namespace A257399.P5409898490307580584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 (A008486 (2 * n + 1) - 2).toNat

end

end A257399.P5409898490307580584

namespace A257399

/-- `A125096(A008486(2*n+1)-2)` -/
def P5409898490307580584.Spec : Prop :=
  ∀ n, P5409898490307580584.a n = A257399 n

end A257399

/-! ## A257399.P9970547805645410022

`A027414(A298035(n+1))`
-/

namespace A257399.P9970547805645410022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027414 (A298035 (n + 1)).toNat

end

end A257399.P9970547805645410022

namespace A257399

/-- `A027414(A298035(n+1))` -/
def P9970547805645410022.Spec : Prop :=
  ∀ n, P9970547805645410022.a n = A257399 n

end A257399

/-! ## A257399.P348700205679657961

`A027414(A270700(n)/2)`
-/

namespace A257399.P348700205679657961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027414 (SequenceMachineLib.roundAway ((A270700 n : ℚ) / 2)).toNat

end

end A257399.P348700205679657961

namespace A257399

/-- `A027414(A270700(n)/2)` -/
def P348700205679657961.Spec : Prop :=
  ∀ n, P348700205679657961.a n = A257399 n

end A257399

/-! ## A257399.P160091148662722962

`A129134(12*n+2)`
-/

namespace A257399.P160091148662722962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (12 * n + 2)

end

end A257399.P160091148662722962

namespace A257399

/-- `A129134(12*n+2)` -/
def P160091148662722962.Spec : Prop :=
  ∀ n, P160091148662722962.a n = A257399 n

end A257399

