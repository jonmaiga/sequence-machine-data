import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
import Seq.B014.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A286600: a(n) = A286622(A193231(n)).

The programs for A286600, there is no canonical definition to state claims against.
-/

/-! ## A286600.P4828289497082869804

`A286622(A193231(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286600.P4828289497082869804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (A193231 n).toNat

end

end A286600.P4828289497082869804

/-! ## A286600.P3414892620943765567

`A286622(A379472(n))`
-/

namespace A286600.P3414892620943765567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (A379472 n).toNat

end

end A286600.P3414892620943765567

/-! ## A286600.P17405009654146114237

`A286622(xor(n, A280507(n)))`
-/

namespace A286600.P17405009654146114237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (Int.xor (n : ℤ) (A280507 n)).toNat

end

end A286600.P17405009654146114237

/-! ## A286600.P16145964830190598415

`A286622(A234612(floor(xor(n, 2*n)/2)))`
-/

namespace A286600.P16145964830190598415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (A234612 ⌊(Nat.xor n (2 * n) : ℚ) / 2⌋.toNat).toNat

end

end A286600.P16145964830190598415

/-! ## A286600.P17715537719763620174

`A286622(A234613(2*n))`
-/

namespace A286600.P17715537719763620174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (A234613 (2 * n)).toNat

end

end A286600.P17715537719763620174

/-!
# A286601: a(n) = A278222(A193231(n)).

The programs for A286601, there is no canonical definition to state claims against.
-/

/-! ## A286601.P16400793252116629051

`A278222(A193231(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286601.P16400793252116629051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A193231 n).toNat

end

end A286601.P16400793252116629051

/-! ## A286601.P15155993806451205251

`A278219(A234613(n))`
-/

namespace A286601.P15155993806451205251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (A234613 n).toNat

end

end A286601.P15155993806451205251

/-! ## A286601.P9050289320339125232

`A278222(A379472(n))`
-/

namespace A286601.P9050289320339125232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A379472 n).toNat

end

end A286601.P9050289320339125232

/-! ## A286601.P418655238431340093

`A278222(xor(n, A280507(n)))`
-/

namespace A286601.P418655238431340093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (Int.xor (n : ℤ) (A280507 n)).toNat

end

end A286601.P418655238431340093

/-! ## A286601.P17851486497591849842

`A278531(A234025(n))`
-/

namespace A286601.P17851486497591849842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A234025 n).toNat

end

end A286601.P17851486497591849842

/-! ## A286601.P9071670367865069100

`A278222(A234613(2*n))`
-/

namespace A286601.P9071670367865069100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A234613 (2 * n)).toNat

end

end A286601.P9071670367865069100

/-! ## A286601.P7659797836716829735

`A046523(A366263(n))`
-/

namespace A286601.P7659797836716829735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A366263 n).toNat

end

end A286601.P7659797836716829735

/-! ## A286601.P1817297428000299473

`A046523(A005940(A193231(n)+1))`
-/

namespace A286601.P1817297428000299473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A005940 (A193231 n + 1).toNat).toNat

end

end A286601.P1817297428000299473

/-!
# A286602: Restricted growth sequence transform of A286601.

The programs for A286602, there is no canonical definition to state claims against.
-/

/-! ## A286602.P5969827311180653451

`A233279(A286600(n)%A237592(n+1))`
-/

namespace A286602.P5969827311180653451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (Int.tmod (A286600 n) (A237592 (n + 1))).toNat

end

end A286602.P5969827311180653451

/-! ## A286602.P16503949494530667349

`A119350(4*n+5)*A145342(A286600(n))`
-/

namespace A286602.P16503949494530667349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119350 (4 * n + 5) * A145342 (A286600 n).toNat

end

end A286602.P16503949494530667349

/-! ## A286602.P10087218660809032933

`A145342(A286600(n))%A000203(A048577(n))`
-/

namespace A286602.P10087218660809032933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145342 (A286600 n).toNat) (A000203 (A048577 n).toNat)

end

end A286602.P10087218660809032933

/-! ## A286602.P9359115404760932146

`A007318(n)+A001221(A183325(n+1))`
-/

namespace A286602.P9359115404760932146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A001221 (A183325 (n + 1)).toNat

end

end A286602.P9359115404760932146

/-!
# A286603: Restricted growth sequence computed for sigma, A000203.

The programs for A286603, there is no canonical definition to state claims against.
-/

/-! ## A286603.P3914825004325673364

`A061069(A275987(n+1))`
-/

namespace A286603.P3914825004325673364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061069 (A275987 (n + 1)).toNat

end

end A286603.P3914825004325673364

/-! ## A286603.P13263503511484811250

`A061069(A051444(∑{d}[n+1, #]))`
-/

namespace A286603.P13263503511484811250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061069 (A051444 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A286603.P13263503511484811250

/-! ## A286603.P9253663311083867864

`A061069(A097014(∑{d}[n+1, #]))`
-/

namespace A286603.P9253663311083867864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061069 (A097014 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A286603.P9253663311083867864

/-!
# A286604: a(n) = n mod sum of digits of n in factorial base.

The programs for A286604, the canonical program `A286604.P16261278403836028950` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286604 has offset 1).

The definition of A286604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286604.P16261278403836028950

`(n+1)%A034968(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A286604

/-- `(n+1)%A034968(n+1)` -/
def P16261278403836028950.Spec : Prop :=
  ∀ n, P16261278403836028950.a n = A286604 (n + 1)

theorem P16261278403836028950.correct : P16261278403836028950.Spec := by
  intro n
  simp only [A286604, Nat.add_sub_cancel]

end A286604

/-! ## A286604.P291758987142031025

`A219651(n+1)%(n+1-A219651(n+1))`
-/

namespace A286604.P291758987142031025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219651 (n + 1)) ((n + 1 : ℤ) - A219651 (n + 1))

end

end A286604.P291758987142031025

namespace A286604

/-- `A219651(n+1)%(n+1-A219651(n+1))` -/
def P291758987142031025.Spec : Prop :=
  ∀ n, P291758987142031025.a n = A286604 (n + 1)

end A286604

/-! ## A286604.P11946102887450030123

`A008619(2*n)%A139365(A220655(n+2))`
-/

namespace A286604.P11946102887450030123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (2 * n)) (A139365 (A220655 (n + 2)).toNat)

end

end A286604.P11946102887450030123

namespace A286604

/-- `A008619(2*n)%A139365(A220655(n+2))` -/
def P11946102887450030123.Spec : Prop :=
  ∀ n, P11946102887450030123.a n = A286604 (n + 1)

end A286604

/-! ## A286604.P8012357749924025096

`A028310(n+1)%A056239(A275735(n+1))`
-/

namespace A286604.P8012357749924025096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (n + 1)) (A056239 (A275735 (n + 1)).toNat)

end

end A286604.P8012357749924025096

namespace A286604

/-- `A028310(n+1)%A056239(A275735(n+1))` -/
def P8012357749924025096.Spec : Prop :=
  ∀ n, P8012357749924025096.a n = A286604 (n + 1)

end A286604

/-! ## A286604.P13239965947164193779

`A008619(2*n+1)%A001222(A278236(n+1))`
-/

namespace A286604.P13239965947164193779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (2 * n + 1)) (A001222 (A278236 (n + 1)).toNat)

end

end A286604.P13239965947164193779

namespace A286604

/-- `A008619(2*n+1)%A001222(A278236(n+1))` -/
def P13239965947164193779.Spec : Prop :=
  ∀ n, P13239965947164193779.a n = A286604 (n + 1)

end A286604

/-! ## A286604.P12763421603115797210

`A289439(2*(n+1))%A001222(A278236(n+1))`
-/

namespace A286604.P12763421603115797210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289439 (2 * (n + 1))) (A001222 (A278236 (n + 1)).toNat)

end

end A286604.P12763421603115797210

namespace A286604

/-- `A289439(2*(n+1))%A001222(A278236(n+1))` -/
def P12763421603115797210.Spec : Prop :=
  ∀ n, P12763421603115797210.a n = A286604 (n + 1)

end A286604

/-! ## A286604.P15644852770132912352

`A000027(n+1)%A231714(∑[n+1])`
-/

namespace A286604.P15644852770132912352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A231714 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A286604.P15644852770132912352

namespace A286604

/-- `A000027(n+1)%A231714(∑[n+1])` -/
def P15644852770132912352.Spec : Prop :=
  ∀ n, P15644852770132912352.a n = A286604 (n + 1)

end A286604

/-! ## A286604.P76929031261600459

`A130446(n+1)%A231713(∑[n+2])`
-/

namespace A286604.P76929031261600459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130446 (n + 1)) (A231713 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A286604.P76929031261600459

namespace A286604

/-- `A130446(n+1)%A231713(∑[n+2])` -/
def P76929031261600459.Spec : Prop :=
  ∀ n, P76929031261600459.a n = A286604 (n + 1)

end A286604

/-! ## A286604.P13207400604208282909

`A003989(A001844(n))%A231713(∑[n+2])`
-/

namespace A286604.P13207400604208282909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003989 (A001844 n).toNat) (A231713 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A286604.P13207400604208282909

namespace A286604

/-- `A003989(A001844(n))%A231713(∑[n+2])` -/
def P13207400604208282909.Spec : Prop :=
  ∀ n, P13207400604208282909.a n = A286604 (n + 1)

end A286604

/-!
# A286605: Restricted growth sequence computed for number of divisors, d(n) (A000005).

The programs for A286605, there is no canonical definition to state claims against.
-/

/-! ## A286605.P6913511493215136316

`A064787(Δ[A006218(n)])`
-/

namespace A286605.P6913511493215136316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064787 (f1 (n + 1) - f1 n).toNat

end

end A286605.P6913511493215136316

/-! ## A286605.P4963509665748003844

`A064787(Δ[A054519(n)])`
-/

namespace A286605.P4963509665748003844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064787 (f1 (n + 1) - f1 n).toNat

end

end A286605.P4963509665748003844

/-! ## A286605.P2749398722739643554

`A064787(A000005(n+1))`
-/

namespace A286605.P2749398722739643554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064787 (A000005 (n + 1)).toNat

end

end A286605.P2749398722739643554

/-! ## A286605.P10983684005685973652

`A061071(A140635(n+1))`
-/

namespace A286605.P10983684005685973652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (A140635 (n + 1)).toNat

end

end A286605.P10983684005685973652

/-! ## A286605.P14054228918485129229

`A064787(A032741(n+1)+1)`
-/

namespace A286605.P14054228918485129229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064787 (A032741 (n + 1) + 1).toNat

end

end A286605.P14054228918485129229

/-! ## A286605.P7370220851006986506

`A064787(A006218(n+1)-A006218(n))`
-/

namespace A286605.P7370220851006986506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064787 (A006218 (n + 1) - A006218 n).toNat

end

end A286605.P7370220851006986506

/-! ## A286605.P7505681823489521591

`A064787(A054519(n+1)-A054519(n))`
-/

namespace A286605.P7505681823489521591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064787 (A054519 (n + 1) - A054519 n).toNat

end

end A286605.P7505681823489521591

/-! ## A286605.P11504295037144831189

`A257472(A320111(2*(n+1))%A257475(n+1))`
-/

namespace A286605.P11504295037144831189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257472 (Int.tmod (A320111 (2 * (n + 1))) (A257475 (n + 1))).toNat

end

end A286605.P11504295037144831189

/-!
# A286606: a(n) = n mod product of nonzero digits of n in factorial base.

The programs for A286606, the canonical program `A286606.P14280755880862415863` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286606 has offset 1).

The definition of A286606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286606.P14280755880862415863

`(n+1)%(n+1-A227191(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A286606

/-- `(n+1)%(n+1-A227191(n+1))` -/
def P14280755880862415863.Spec : Prop :=
  ∀ n, P14280755880862415863.a n = A286606 (n + 1)

theorem P14280755880862415863.correct : P14280755880862415863.Spec := by
  intro n
  simp only [A286606, Nat.add_sub_cancel]

end A286606

/-! ## A286606.P15939272309360843984

`(n+1)%A227153(n+1)`
-/

namespace A286606.P15939272309360843984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A227153 (n + 1))

end

end A286606.P15939272309360843984

namespace A286606

/-- `(n+1)%A227153(n+1)` -/
def P15939272309360843984.Spec : Prop :=
  ∀ n, P15939272309360843984.a n = A286606 (n + 1)

end A286606

/-! ## A286606.P11175626272946133124

`(char[1]+1+n)%A051801(A007623(n+1))`
-/

namespace A286606.P11175626272946133124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((if ∃ j, f1 j = n then 1 else 0) + 1 + n : ℕ) : ℤ) (A051801 (A007623 (n + 1)).toNat)

end

end A286606.P11175626272946133124

namespace A286606

/-- `(char[1]+1+n)%A051801(A007623(n+1))` -/
def P11175626272946133124.Spec : Prop :=
  ∀ n, P11175626272946133124.a n = A286606 (n + 1)

end A286606

/-! ## A286606.P7372184895679615189

`A033619(n+2)%(n+1-A295879(A276076(n+1))-A033619(n+2))`
-/

namespace A286606.P7372184895679615189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033619 (n + 2)) ((n + 1 : ℤ) - A295879 (A276076 (n + 1)).toNat - A033619 (n + 2))

end

end A286606.P7372184895679615189

namespace A286606

/-- `A033619(n+2)%(n+1-A295879(A276076(n+1))-A033619(n+2))` -/
def P7372184895679615189.Spec : Prop :=
  ∀ n, P7372184895679615189.a n = A286606 (n + 1)

end A286606

/-! ## A286606.P16565532151274118450

`∑[A326064(n+4)]%A328582(n+1)`
-/

namespace A286606.P16565532151274118450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326064 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A328582 (n + 1))

end

end A286606.P16565532151274118450

namespace A286606

/-- `∑[A326064(n+4)]%A328582(n+1)` -/
def P16565532151274118450.Spec : Prop :=
  ∀ n, P16565532151274118450.a n = A286606 (n + 1)

end A286606

/-!
# A286607: Numbers that are not divisible by the sum of their factorial base digits (A034968).

The programs for A286607, the canonical program `A286607.P13954288801725100147` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286607 has offset 1).

The definition of A286607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286607.P13954288801725100147

`comp[A118363(n+1)-1]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A286607

/-- `comp[A118363(n+1)-1]+1` -/
def P13954288801725100147.Spec : Prop :=
  ∀ n, (P13954288801725100147.a n : ℤ) = A286607 (n + 1)

theorem P13954288801725100147.correct : P13954288801725100147.Spec := by
  intro n
  simp only [A286607, Nat.add_sub_cancel]

end A286607

/-! ## A286607.P15155964479114896940

`lt[0, A286604(A028310(n))]`
-/

namespace A286607.P15155964479114896940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286604 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A286607.P15155964479114896940

namespace A286607

/-- `lt[0, A286604(A028310(n))]` -/
def P15155964479114896940.Spec : Prop :=
  ∀ n, (P15155964479114896940.a n : ℤ) = A286607 (n + 1)

end A286607

/-! ## A286607.P8271209871502174396

`eq[char[A118363(n+1)], A000007(n)]`
-/

namespace A286607.P8271209871502174396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118363 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A286607.P8271209871502174396

namespace A286607

/-- `eq[char[A118363(n+1)], A000007(n)]` -/
def P8271209871502174396.Spec : Prop :=
  ∀ n, (P8271209871502174396.a n : ℤ) = A286607 (n + 1)

end A286607

/-! ## A286607.P6285331646651219275

`eq[char[A118363(n+1)], A000038(n)]`
-/

namespace A286607.P6285331646651219275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118363 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A286607.P6285331646651219275

namespace A286607

/-- `eq[char[A118363(n+1)], A000038(n)]` -/
def P6285331646651219275.Spec : Prop :=
  ∀ n, (P6285331646651219275.a n : ℤ) = A286607 (n + 1)

end A286607

/-! ## A286607.P11194834515494144419

`eq[n, A028310(n)-char[A118363(n+1)]]`
-/

namespace A286607.P11194834515494144419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118363 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286607.P11194834515494144419

namespace A286607

/-- `eq[n, A028310(n)-char[A118363(n+1)]]` -/
def P11194834515494144419.Spec : Prop :=
  ∀ n, (P11194834515494144419.a n : ℤ) = A286607 (n + 1)

end A286607

/-! ## A286607.P17264842605510894060

`eq[A253909(n)-char[A118363(n+1)], n²]`
-/

namespace A286607.P17264842605510894060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118363 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℤ)) n

end

end A286607.P17264842605510894060

namespace A286607

/-- `eq[A253909(n)-char[A118363(n+1)], n²]` -/
def P17264842605510894060.Spec : Prop :=
  ∀ n, (P17264842605510894060.a n : ℤ) = A286607 (n + 1)

end A286607

/-! ## A286607.P3087782473725151646

`eq[1, A211666(n+1)+char[A118363(n+1)]]`
-/

namespace A286607.P3087782473725151646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118363 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (n + 1) + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286607.P3087782473725151646

namespace A286607

/-- `eq[1, A211666(n+1)+char[A118363(n+1)]]` -/
def P3087782473725151646.Spec : Prop :=
  ∀ n, (P3087782473725151646.a n : ℤ) = A286607 (n + 1)

end A286607

/-!
# A286608: Numbers k for which the binary representation of the primes that divide k (A087207) is less than k.

The programs for A286608, the canonical program `A286608.P6471949318429911751` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286608 has offset 1).

The definition of A286608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 652 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286608.P12066394481016102268

`lt[∑{p}[n, A156552(#)], n]`
-/

namespace A286608.P12066394481016102268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A156552 p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A286608.P12066394481016102268

namespace A286608

/-- `lt[∑{p}[n, A156552(#)], n]` -/
def P12066394481016102268.Spec : Prop :=
  ∀ n, (P12066394481016102268.a n : ℤ) = A286608 (n + 1)

end A286608

/-! ## A286608.P6471949318429911751

`lt[A087207(n+1), n+1]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A286608

/-- `lt[A087207(n+1), n+1]+1` -/
def P6471949318429911751.Spec : Prop :=
  ∀ n, (P6471949318429911751.a n : ℤ) = A286608 (n + 1)

theorem P6471949318429911751.correct : P6471949318429911751.Spec := by
  intro n
  simp only [A286608, Nat.add_sub_cancel]

end A286608

/-! ## A286608.P16471595364919835505

`lt[A331740(n+1), n+1]+1`
-/

namespace A286608.P16471595364919835505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A286608.P16471595364919835505

namespace A286608

/-- `lt[A331740(n+1), n+1]+1` -/
def P16471595364919835505.Spec : Prop :=
  ∀ n, (P16471595364919835505.a n : ℤ) = A286608 (n + 1)

end A286608

/-! ## A286608.P17460240714186513304

`lt[A334871(n+1), n+1]+1`
-/

namespace A286608.P17460240714186513304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334871 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A286608.P17460240714186513304

namespace A286608

/-- `lt[A334871(n+1), n+1]+1` -/
def P17460240714186513304.Spec : Prop :=
  ∀ n, (P17460240714186513304.a n : ℤ) = A286608 (n + 1)

end A286608

/-! ## A286608.P11591787821136110598

`lt[A087207(A028310(n)), n]`
-/

namespace A286608.P11591787821136110598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A286608.P11591787821136110598

namespace A286608

/-- `lt[A087207(A028310(n)), n]` -/
def P11591787821136110598.Spec : Prop :=
  ∀ n, (P11591787821136110598.a n : ℤ) = A286608 (n + 1)

end A286608

/-! ## A286608.P2953288534811664011

`lt[A087207(A004277(n)-n), n]`
-/

namespace A286608.P2953288534811664011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A004277 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A286608.P2953288534811664011

namespace A286608

/-- `lt[A087207(A004277(n)-n), n]` -/
def P2953288534811664011.Spec : Prop :=
  ∀ n, (P2953288534811664011.a n : ℤ) = A286608 (n + 1)

end A286608

/-! ## A286608.P16626761253439902787

`lt[A331740(A028310(n)), A326178(n)]`
-/

namespace A286608.P16626761253439902787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286608.P16626761253439902787

namespace A286608

/-- `lt[A331740(A028310(n)), A326178(n)]` -/
def P16626761253439902787.Spec : Prop :=
  ∀ n, (P16626761253439902787.a n : ℤ) = A286608 (n + 1)

end A286608

/-!
# A286609: Numbers k for which the binary representation of the primes that divide k (A087207) is more than k.

The programs for A286609, the canonical program `A286609.P10170324973133728481` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286609 has offset 1).

The definition of A286609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8070 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286609.P10170324973133728481

`eq[char[A286608(n+1)], A000007(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A286609

/-- `eq[char[A286608(n+1)], A000007(n)]` -/
def P10170324973133728481.Spec : Prop :=
  ∀ n, (P10170324973133728481.a n : ℤ) = A286609 (n + 1)

theorem P10170324973133728481.correct : P10170324973133728481.Spec := by
  intro n
  simp only [A286609, Nat.add_sub_cancel]

end A286609

/-! ## A286609.P2395879472382647527

`eq[char[A286608(n+1)], A000038(n)]`
-/

namespace A286609.P2395879472382647527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286608 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A286609.P2395879472382647527

namespace A286609

/-- `eq[char[A286608(n+1)], A000038(n)]` -/
def P2395879472382647527.Spec : Prop :=
  ∀ n, (P2395879472382647527.a n : ℤ) = A286609 (n + 1)

end A286609

/-! ## A286609.P18328956372817291372

`eq[A301291(2*n)%3, char[A286608(n+1)]]`
-/

namespace A286609.P18328956372817291372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301291 (2 * n)) 3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286608 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A286609.P18328956372817291372

namespace A286609

/-- `eq[A301291(2*n)%3, char[A286608(n+1)]]` -/
def P18328956372817291372.Spec : Prop :=
  ∀ n, (P18328956372817291372.a n : ℤ) = A286609 (n + 1)

end A286609

/-! ## A286609.P8906491116757961174

`lt[n, ∑{p}[n, A156552(#)]]`
-/

namespace A286609.P8906491116757961174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), A156552 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A286609.P8906491116757961174

namespace A286609

/-- `lt[n, ∑{p}[n, A156552(#)]]` -/
def P8906491116757961174.Spec : Prop :=
  ∀ n, (P8906491116757961174.a n : ℤ) = A286609 (n + 1)

end A286609

/-! ## A286609.P5318275597479941273

`lt[n, A087207(n+1)]+1`
-/

namespace A286609.P5318275597479941273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A286609.P5318275597479941273

namespace A286609

/-- `lt[n, A087207(n+1)]+1` -/
def P5318275597479941273.Spec : Prop :=
  ∀ n, (P5318275597479941273.a n : ℤ) = A286609 (n + 1)

end A286609

/-! ## A286609.P9340906303191900453

`lt[n, A331740(n+1)]+1`
-/

namespace A286609.P9340906303191900453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A286609.P9340906303191900453

namespace A286609

/-- `lt[n, A331740(n+1)]+1` -/
def P9340906303191900453.Spec : Prop :=
  ∀ n, (P9340906303191900453.a n : ℤ) = A286609 (n + 1)

end A286609

/-! ## A286609.P16100050083273146181

`lt[n, A334871(n+1)]+1`
-/

namespace A286609.P16100050083273146181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334871 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A286609.P16100050083273146181

namespace A286609

/-- `lt[n, A334871(n+1)]+1` -/
def P16100050083273146181.Spec : Prop :=
  ∀ n, (P16100050083273146181.a n : ℤ) = A286609 (n + 1)

end A286609

/-! ## A286609.P6241521280336423067

`eq[n+1, (n+1)%A087207(n+2)]+2`
-/

namespace A286609.P6241521280336423067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A087207 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A286609.P6241521280336423067

namespace A286609

/-- `eq[n+1, (n+1)%A087207(n+2)]+2` -/
def P6241521280336423067.Spec : Prop :=
  ∀ n, (P6241521280336423067.a n : ℤ) = A286609 (n + 1)

end A286609

/-! ## A286609.P8554710143931405148

`A326178(lt[n, A331740(n+1)])`
-/

namespace A286609.P8554710143931405148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A286609.P8554710143931405148

namespace A286609

/-- `A326178(lt[n, A331740(n+1)])` -/
def P8554710143931405148.Spec : Prop :=
  ∀ n, P8554710143931405148.a n = A286609 (n + 1)

end A286609

/-! ## A286609.P9169836982428766756

`lt[n, A087207(A004277(n)-n)]`
-/

namespace A286609.P9169836982428766756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A286609.P9169836982428766756

namespace A286609

/-- `lt[n, A087207(A004277(n)-n)]` -/
def P9169836982428766756.Spec : Prop :=
  ∀ n, (P9169836982428766756.a n : ℤ) = A286609 (n + 1)

end A286609

/-! ## A286609.P16017895000249323359

`lt[n, A087207(A004277(n))]`
-/

namespace A286609.P16017895000249323359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A286609.P16017895000249323359

namespace A286609

/-- `lt[n, A087207(A004277(n))]` -/
def P16017895000249323359.Spec : Prop :=
  ∀ n, (P16017895000249323359.a n : ℤ) = A286609 (n + 1)

end A286609

/-! ## A286609.P10101677372862040390

`lt[n, A087207(A028310(2*n))]`
-/

namespace A286609.P10101677372862040390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A286609.P10101677372862040390

namespace A286609

/-- `lt[n, A087207(A028310(2*n))]` -/
def P10101677372862040390.Spec : Prop :=
  ∀ n, (P10101677372862040390.a n : ℤ) = A286609 (n + 1)

end A286609

/-! ## A286609.P13472020681328011529

`lt[n, A087207(A028310(n)+n)]`
-/

namespace A286609.P13472020681328011529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A286609.P13472020681328011529

namespace A286609

/-- `lt[n, A087207(A028310(n)+n)]` -/
def P13472020681328011529.Spec : Prop :=
  ∀ n, (P13472020681328011529.a n : ℤ) = A286609 (n + 1)

end A286609

/-! ## A286609.P2844449338571112978

`lt[n, A331740(A028310(n)+n)]`
-/

namespace A286609.P2844449338571112978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A286609.P2844449338571112978

namespace A286609

/-- `lt[n, A331740(A028310(n)+n)]` -/
def P2844449338571112978.Spec : Prop :=
  ∀ n, (P2844449338571112978.a n : ℤ) = A286609 (n + 1)

end A286609

/-! ## A286609.P14784001160900777682

`lt[A028310(n), A331740(2*A028310(n))]`
-/

namespace A286609.P14784001160900777682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (2 * A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286609.P14784001160900777682

namespace A286609

/-- `lt[A028310(n), A331740(2*A028310(n))]` -/
def P14784001160900777682.Spec : Prop :=
  ∀ n, (P14784001160900777682.a n : ℤ) = A286609 (n + 1)

end A286609

/-!
# A286610: Restricted growth sequence computed for Euler totient function phi, A000010.

The programs for A286610, there is no canonical definition to state claims against.
-/

/-! ## A286610.P14437210867710168970

`A061070(A015126(n+1))`
-/

namespace A286610.P14437210867710168970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061070 (A015126 (n + 1)).toNat

end

end A286610.P14437210867710168970

/-! ## A286610.P18436877266974087767

`A303777(A015126(n+1)%A004811(n+1))`
-/

namespace A286610.P18436877266974087767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303777 (Int.tmod (A015126 (n + 1)) (A004811 (n + 1))).toNat

end

end A286610.P18436877266974087767

/-! ## A286610.P8372485868649665393

`A303777(A015126(n+1))-n*A000007(n)`
-/

namespace A286610.P8372485868649665393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303777 (A015126 (n + 1)).toNat - (n : ℤ) * A000007 n

end

end A286610.P8372485868649665393

/-! ## A286610.P11188929886164369615

`A303777(A015126(n+1))-A000007(A014681(n)+1)`
-/

namespace A286610.P11188929886164369615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303777 (A015126 (n + 1)).toNat - A000007 (A014681 n + 1).toNat

end

end A286610.P11188929886164369615

/-! ## A286610.P9803659498270616383

`A303777(A015126(n+1))%A005235(n+1)`
-/

namespace A286610.P9803659498270616383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303777 (A015126 (n + 1)).toNat) (A005235 (n + 1))

end

end A286610.P9803659498270616383

/-! ## A286610.P9915062490923917851

`A303777(A015126(n+1))-A000007(A001912(n+1))`
-/

namespace A286610.P9915062490923917851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303777 (A015126 (n + 1)).toNat - A000007 (A001912 (n + 1)).toNat

end

end A286610.P9915062490923917851

/-! ## A286610.P9957582718405742415

`A303777(A015126(n+1))-A000007(A209419(n+1))`
-/

namespace A286610.P9957582718405742415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303777 (A015126 (n + 1)).toNat - A000007 (A209419 (n + 1)).toNat

end

end A286610.P9957582718405742415

/-!
# A286611: Numbers k for which A019565(k) <= A087207(k).

The programs for A286611, there is no canonical definition to state claims against.
-/

/-! ## A286611.P2740981883978957183

`lt[A339809(n), A248663(A028310(n))]`
-/

namespace A286611.P2740981883978957183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286611.P2740981883978957183

/-! ## A286611.P18307583987047440471

`lt[A339809(n), A087207(A004277(n)-n)]`
-/

namespace A286611.P18307583987047440471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286611.P18307583987047440471

/-! ## A286611.P7449527911038517290

`lt[A019565(n+1), A048675(2*(n+1))]+1`
-/

namespace A286611.P7449527911038517290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A286611.P7449527911038517290

/-! ## A286611.P15266458977124667710

`lt[A339809(n+1), A048675(2*(n+1))]+1`
-/

namespace A286611.P15266458977124667710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A286611.P15266458977124667710

/-! ## A286611.P11511484633424875778

`lt[A339809(n+1), A087207(2*(n+1))]+1`
-/

namespace A286611.P11511484633424875778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A286611.P11511484633424875778

/-! ## A286611.P4755333176915356493

`lt[A339809(n+1), A248663(2*(n+1))]+1`
-/

namespace A286611.P4755333176915356493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A286611.P4755333176915356493

/-! ## A286611.P15068711339199420548

`lt[A339809(n+1), A331740(2*(n+1))]+1`
-/

namespace A286611.P15068711339199420548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A286611.P15068711339199420548

/-! ## A286611.P6770317785126231766

`lt[A339809(n), A087207(A004277(n))]`
-/

namespace A286611.P6770317785126231766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286611.P6770317785126231766

/-! ## A286611.P4430719817126250910

`lt[A339809(n), A048675(A028310(2*n))]`
-/

namespace A286611.P4430719817126250910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286611.P4430719817126250910

/-! ## A286611.P7468909313916817296

`lt[A339809(n), A048675(A028310(n)+n)]`
-/

namespace A286611.P7468909313916817296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286611.P7468909313916817296

/-! ## A286611.P2493886725017646194

`lt[A019565(n), A048675(A233583(n+1))]`
-/

namespace A286611.P2493886725017646194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286611.P2493886725017646194

/-! ## A286611.P615495275976783309

`lt[A339809(n)+1, A331740(A233583(n+1))]`
-/

namespace A286611.P615495275976783309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331740 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286611.P615495275976783309

/-!
# A286613: a(n) = A046523(A244154(n)).

The programs for A286613, the canonical program `A286613.P8940720398290594098` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286613 has offset 0).

The definition of A286613 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286613.P6388709701506131867

`A278224(A005940(1+n))`
-/

namespace A286613.P6388709701506131867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (A005940 (1 + n)).toNat

end

end A286613.P6388709701506131867

namespace A286613

/-- `A278224(A005940(1+n))` -/
def P6388709701506131867.Spec : Prop :=
  ∀ n, P6388709701506131867.a n = A286613 n

end A286613

/-! ## A286613.P8940720398290594098

`A046523(A244154(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A286613

/-- `A046523(A244154(n))` -/
def P8940720398290594098.Spec : Prop :=
  ∀ n, P8940720398290594098.a n = A286613 n

theorem P8940720398290594098.correct : P8940720398290594098.Spec := by
  intro n
  simp only [A286613]

end A286613

/-! ## A286613.P7131160713534524498

`A285713(∏[char[2^n]+char[1]+1]-n-1)`
-/

namespace A286613.P7131160713534524498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + ((if ∃ j, f3 j = n then 1 else 0) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285713 (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A286613.P7131160713534524498

namespace A286613

/-- `A285713(∏[char[2^n]+char[1]+1]-n-1)` -/
def P7131160713534524498.Spec : Prop :=
  ∀ n, P7131160713534524498.a n = A286613 n

end A286613

/-! ## A286613.P5774658484805270710

`A278224(A292602(4*n+3))`
-/

namespace A286613.P5774658484805270710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (A292602 (4 * n + 3)).toNat

end

end A286613.P5774658484805270710

namespace A286613

/-- `A278224(A292602(4*n+3))` -/
def P5774658484805270710.Spec : Prop :=
  ∀ n, P5774658484805270710.a n = A286613 n

end A286613

/-! ## A286613.P227667819861940798

`A278224(A324394(n)*A324395(n))`
-/

namespace A286613.P227667819861940798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (A324394 n * A324395 n).toNat

end

end A286613.P227667819861940798

namespace A286613

/-- `A278224(A324394(n)*A324395(n))` -/
def P227667819861940798.Spec : Prop :=
  ∀ n, P227667819861940798.a n = A286613 n

end A286613

/-! ## A286613.P7826755198197590871

`A278224(A337375(n)*A337376(n))`
-/

namespace A286613.P7826755198197590871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (A337375 n * A337376 n).toNat

end

end A286613.P7826755198197590871

namespace A286613

/-- `A278224(A337375(n)*A337376(n))` -/
def P7826755198197590871.Spec : Prop :=
  ∀ n, P7826755198197590871.a n = A286613 n

end A286613

/-! ## A286613.P18043334206059071007

`A278224(A340362(n+1)+A324106(n+1))`
-/

namespace A286613.P18043334206059071007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A286613.P18043334206059071007

namespace A286613

/-- `A278224(A340362(n+1)+A324106(n+1))` -/
def P18043334206059071007.Spec : Prop :=
  ∀ n, P18043334206059071007.a n = A286613 n

end A286613

/-! ## A286613.P10267147515918420170

`A278224(A324641(n+1)-A324640(n+1))`
-/

namespace A286613.P10267147515918420170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A286613.P10267147515918420170

namespace A286613

/-- `A278224(A324641(n+1)-A324640(n+1))` -/
def P10267147515918420170.Spec : Prop :=
  ∀ n, P10267147515918420170.a n = A286613 n

end A286613

/-! ## A286613.P18088380620477662578

`A278224(A340364(n+1)*A340365(n+1))`
-/

namespace A286613.P18088380620477662578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (A340364 (n + 1) * A340365 (n + 1)).toNat

end

end A286613.P18088380620477662578

namespace A286613

/-- `A278224(A340364(n+1)*A340365(n+1))` -/
def P18088380620477662578.Spec : Prop :=
  ∀ n, P18088380620477662578.a n = A286613 n

end A286613

/-! ## A286613.P4324581508608542883

`A046523(floor(A005940(2*n+1)/2)+1)`
-/

namespace A286613.P4324581508608542883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (⌊(A005940 (2 * n + 1) : ℚ) / 2⌋ + 1).toNat

end

end A286613.P4324581508608542883

namespace A286613

/-- `A046523(floor(A005940(2*n+1)/2)+1)` -/
def P4324581508608542883.Spec : Prop :=
  ∀ n, P4324581508608542883.a n = A286613 n

end A286613

/-! ## A286613.P17950909566202593040

`A046523(A003602(A005940(2*n+1)))`
-/

namespace A286613.P17950909566202593040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A003602 (A005940 (2 * n + 1)).toNat).toNat

end

end A286613.P17950909566202593040

namespace A286613

/-- `A046523(A003602(A005940(2*n+1)))` -/
def P17950909566202593040.Spec : Prop :=
  ∀ n, P17950909566202593040.a n = A286613 n

end A286613

/-! ## A286613.P3352322377510224661

`A046523(A285712(A245612(A054429(2*n+1))))`
-/

namespace A286613.P3352322377510224661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A285712 (A245612 (A054429 (2 * n + 1)).toNat).toNat).toNat

end

end A286613.P3352322377510224661

namespace A286613

/-- `A046523(A285712(A245612(A054429(2*n+1))))` -/
def P3352322377510224661.Spec : Prop :=
  ∀ n, P3352322377510224661.a n = A286613 n

end A286613

/-!
# A286614: Restricted growth sequence transform of A286613.

The programs for A286614, there is no canonical definition to state claims against.
-/

/-! ## A286614.P14464117017766015199

`A227185(A006093(A286613(n))²)`
-/

namespace A286614.P14464117017766015199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227185 (A006093 (A286613 n).toNat ^ 2).toNat

end

end A286614.P14464117017766015199

/-! ## A286614.P2240742685136628718

`A036838(gcd(A000217(n), A249163(3*(n+1))))`
-/

namespace A286614.P2240742685136628718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036838 (Int.gcd (A000217 n) (A249163 (3 * (n + 1))))

end

end A286614.P2240742685136628718

/-!
# A286615: Square array A(n,k) = A276945(n,k)-1, read by descending antidiagonals: A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

The programs for A286615, there is no canonical definition to state claims against.
-/

/-! ## A286615.P2972152761316952452

`A276945(n+1)-1`
-/

namespace A286615.P2972152761316952452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276945 (n + 1) - 1

end

end A286615.P2972152761316952452

/-! ## A286615.P6090830141083659059

`A276943(A038722(n+1))-1`
-/

namespace A286615.P6090830141083659059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276943 (A038722 (n + 1)).toNat - 1

end

end A286615.P6090830141083659059

/-! ## A286615.P11689042515248124085

`A276943(A061579(n)+1)-1`
-/

namespace A286615.P11689042515248124085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276943 (A061579 n + 1).toNat - 1

end

end A286615.P11689042515248124085

/-! ## A286615.P15879142609989243466

`A276943(A093995(n+1)-n)-1`
-/

namespace A286615.P15879142609989243466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276943 (A093995 (n + 1) - (n : ℤ)).toNat - 1

end

end A286615.P15879142609989243466

/-! ## A286615.P6513493747274518254

`A276943(A057944(n)+A004736(n+1))-1`
-/

namespace A286615.P6513493747274518254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276943 (A057944 n + A004736 (n + 1)).toNat - 1

end

end A286615.P6513493747274518254

/-! ## A286615.P14384358398993849839

`A286616(A038722(n+1))`
-/

namespace A286615.P14384358398993849839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286616 (A038722 (n + 1)).toNat

end

end A286615.P14384358398993849839

/-! ## A286615.P11041779054093276800

`A286616(A061579(n)+1)`
-/

namespace A286615.P11041779054093276800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286616 (A061579 n + 1).toNat

end

end A286615.P11041779054093276800

/-!
# A286616: Transpose of square array A286615.

The programs for A286616, there is no canonical definition to state claims against.
-/

/-! ## A286616.P8597185889954252179

`A276943(n+1)-1`
-/

namespace A286616.P8597185889954252179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276943 (n + 1) - 1

end

end A286616.P8597185889954252179

/-! ## A286616.P15390846596485577800

`A286615(A038722(n+1))`
-/

namespace A286616.P15390846596485577800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286615 (A038722 (n + 1)).toNat

end

end A286616.P15390846596485577800

/-! ## A286616.P1034337766042964826

`A286615(A061579(n)+1)`
-/

namespace A286616.P1034337766042964826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286615 (A061579 n + 1).toNat

end

end A286616.P1034337766042964826

/-! ## A286616.P15867028904701498711

`A276945(A061579(n)+1)-1`
-/

namespace A286616.P15867028904701498711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276945 (A061579 n + 1).toNat - 1

end

end A286616.P15867028904701498711

/-! ## A286616.P5130338258287445673

`A276945(A093995(n+1)-n)-1`
-/

namespace A286616.P5130338258287445673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276945 (A093995 (n + 1) - (n : ℤ)).toNat - 1

end

end A286616.P5130338258287445673

/-! ## A286616.P16389810667215524408

`A002110(A002262(n))*A286623(n+1)-1`
-/

namespace A286616.P16389810667215524408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A002262 n).toNat * A286623 (n + 1) - 1

end

end A286616.P16389810667215524408

/-!
# A286617: Restricted growth sequence of A278217 (prime-signature of A075159(1+n)).

The programs for A286617, there is no canonical definition to state claims against.
-/

/-! ## A286617.P3081164016556859707

`A213276(∑[n+2])+A101296(A278217(n))`
-/

namespace A286617.P3081164016556859707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (∑ j ∈ Finset.range (n + 1), f1 j) + A101296 (A278217 n).toNat

end

end A286617.P3081164016556859707

/-! ## A286617.P2425993569356113121

`A101296(A278217(n)%A055036(n+1))`
-/

namespace A286617.P2425993569356113121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (Int.tmod (A278217 n) (A055036 (n + 1))).toNat

end

end A286617.P2425993569356113121

/-! ## A286617.P867292615243351123

`A101296(A075159(n+1)%A055036(n+1))`
-/

namespace A286617.P867292615243351123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (Int.tmod (A075159 (n + 1)) (A055036 (n + 1))).toNat

end

end A286617.P867292615243351123

/-! ## A286617.P4492076270999999121

`A101296(A278217(n))%A358018(n+1)`
-/

namespace A286617.P4492076270999999121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101296 (A278217 n).toNat) (A358018 (n + 1))

end

end A286617.P4492076270999999121

/-!
# A286618: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 662", based on the 5-celled von Neumann neighborhood.

The programs for A286618, there is no canonical definition to state claims against.
-/

/-! ## A286618.P618063844768231397

`A007088(A286759(n))`
-/

namespace A286618.P618063844768231397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286759 n).toNat

end

end A286618.P618063844768231397

/-! ## A286618.P9832175043076340267

`A305989(A286780(n)/A060546(n))`
-/

namespace A286618.P9832175043076340267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A286780 n : ℚ) / (A060546 n : ℚ))).toNat

end

end A286618.P9832175043076340267

/-! ## A286618.P15574563760115499491

`A305989(A286780(n)/A016116(n+1))`
-/

namespace A286618.P15574563760115499491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A286780 n : ℚ) / (A016116 (n + 1) : ℚ))).toNat

end

end A286618.P15574563760115499491

/-! ## A286618.P16075728452484304548

`A305989(1/A016116(n)*A286780(n))`
-/

namespace A286618.P16075728452484304548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway (1 / (A016116 n : ℚ) * (A286780 n : ℚ))).toNat

end

end A286618.P16075728452484304548

/-! ## A286618.P971818991871353701

`A185544(2*A286759(n))`
-/

namespace A286618.P971818991871353701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286759 n).toNat

end

end A286618.P971818991871353701

/-!
# A286619: Restricted growth sequence computed for filter-sequence A278219, related to run-lengths in the binary representation of n.

The programs for A286619, there is no canonical definition to state claims against.
-/

/-! ## A286619.P15028222364010456099

`A286534(n)+A014135(A196723(n))`
-/

namespace A286619.P15028222364010456099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286534 n + A014135 (A196723 n).toNat

end

end A286619.P15028222364010456099

/-! ## A286619.P7735427948215686358

`A286534(n)-A005843(n)%A337006(A000463(n+1))`
-/

namespace A286619.P7735427948215686358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286534 n - Int.tmod (A005843 n) (A337006 (A000463 (n + 1)).toNat)

end

end A286619.P7735427948215686358

/-! ## A286619.P9594147342062530682

`A286534(n)-A083920(n)%A337006(A000463(n+1))`
-/

namespace A286619.P9594147342062530682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286534 n - Int.tmod (A083920 n) (A337006 (A000463 (n + 1)).toNat)

end

end A286619.P9594147342062530682

/-! ## A286619.P16573517759443822618

`A064415(A226818(A278219(n)))`
-/

namespace A286619.P16573517759443822618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A226818 (A278219 n).toNat).toNat

end

end A286619.P16573517759443822618

/-! ## A286619.P7379513005669206910

`A286534(n)-A258021(A062452(n))`
-/

namespace A286619.P7379513005669206910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286534 n - A258021 (A062452 n).toNat

end

end A286619.P7379513005669206910

/-!
# A286620: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 662", based on the 5-celled von Neumann neighborhood.

The programs for A286620, there is no canonical definition to state claims against.
-/

/-! ## A286620.P6693550229120762138

`A007088(A286780(n))`
-/

namespace A286620.P6693550229120762138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286780 n).toNat

end

end A286620.P6693550229120762138

/-! ## A286620.P11309647954833150043

`A185544(2*A286780(n))`
-/

namespace A286620.P11309647954833150043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286780 n).toNat

end

end A286620.P11309647954833150043

/-! ## A286620.P1532622019671121156

`A007088(A060546(n))*A028310(A289766(n))`
-/

namespace A286620.P1532622019671121156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A060546 n).toNat * A028310 (A289766 n).toNat

end

end A286620.P1532622019671121156

/-!
# A286621: Restricted growth sequence computed for filter-sequence A278221, related to the conjugated prime factorization (see A122111).

The programs for A286621, there is no canonical definition to state claims against.
-/

/-! ## A286621.P11784075383328235349

`A002260(A038722(A286454(n+1)))`
-/

namespace A286621.P11784075383328235349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (A286454 (n + 1)).toNat).toNat

end

end A286621.P11784075383328235349

/-! ## A286621.P6341339986492668008

`A004736(A286454(n+1))`
-/

namespace A286621.P6341339986492668008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286454 (n + 1)).toNat

end

end A286621.P6341339986492668008

/-! ## A286621.P11938578417100627243

`A193592(A286454(n+1)-1)`
-/

namespace A286621.P11938578417100627243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A286454 (n + 1) - 1).toNat

end

end A286621.P11938578417100627243

/-! ## A286621.P5830440300410221756

`A193739(A286454(n+1)-1)`
-/

namespace A286621.P5830440300410221756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A286454 (n + 1) - 1).toNat

end

end A286621.P5830440300410221756

/-! ## A286621.P17783708868752449018

`A025581(abs(2-A286454(n+1)))`
-/

namespace A286621.P17783708868752449018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 |2 - A286454 (n + 1)|.toNat

end

end A286621.P17783708868752449018

/-! ## A286621.P6949329573682651492

`A025581(A286454(n+1)-1)+1`
-/

namespace A286621.P6949329573682651492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A286454 (n + 1) - 1).toNat + 1

end

end A286621.P6949329573682651492

/-! ## A286621.P8090310440198563196

`A193592(A286454(n+1))+A057427(n)`
-/

namespace A286621.P8090310440198563196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A286454 (n + 1)).toNat + A057427 n

end

end A286621.P8090310440198563196

/-! ## A286621.P12471201517127654121

`A003991(A286454(n+1))/A101296(n+1)`
-/

namespace A286621.P12471201517127654121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A286454 (n + 1)).toNat : ℚ) / (A101296 (n + 1) : ℚ)

end

end A286621.P12471201517127654121

/-!
# A286622: Restricted growth sequence computed for filter-sequence A278222, related to 1-runs in the binary representation of n.

The programs for A286622, there is no canonical definition to state claims against.
-/

/-! ## A286622.P17520601305452979771

`A286600(A193231(n))`
-/

namespace A286622.P17520601305452979771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286600 (A193231 n).toNat

end

end A286622.P17520601305452979771

/-! ## A286622.P15969971762323134172

`A286600(A379471(n))`
-/

namespace A286622.P15969971762323134172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286600 (A379471 n).toNat

end

end A286622.P15969971762323134172

/-! ## A286622.P6717640100675577709

`A286600(xor(n, A280507(n)))`
-/

namespace A286622.P6717640100675577709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286600 (Int.xor (n : ℤ) (A280507 n)).toNat

end

end A286622.P6717640100675577709

/-! ## A286622.P5798136625570844813

`A286535(A145342(n+1)-1)`
-/

namespace A286622.P5798136625570844813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286535 (A145342 (n + 1) - 1).toNat

end

end A286622.P5798136625570844813

/-! ## A286622.P15338591138821478346

`A286535(A030109(2*n+1))`
-/

namespace A286622.P15338591138821478346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286535 (A030109 (2 * n + 1)).toNat

end

end A286622.P15338591138821478346

/-! ## A286622.P15662973988799870359

`A286600(A234613(2*n)/2)`
-/

namespace A286622.P15662973988799870359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286600 (SequenceMachineLib.roundAway ((A234613 (2 * n) : ℚ) / 2)).toNat

end

end A286622.P15662973988799870359

/-! ## A286622.P15562128275818101268

`A286600(A156552(A366263(n)))`
-/

namespace A286622.P15562128275818101268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286600 (A156552 (A366263 n).toNat).toNat

end

end A286622.P15562128275818101268

/-! ## A286622.P3389609164350695946

`∏{e}[A000079(A246029(n)), A194977(#)]`
-/

namespace A286622.P3389609164350695946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A246029 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A194977 (Nat.factorization (f1 n).natAbs p)

end

end A286622.P3389609164350695946

/-! ## A286622.P1170820023496657601

`A198380(A059590(n))+1`
-/

namespace A286622.P1170820023496657601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198380 (A059590 n).toNat + 1

end

end A286622.P1170820023496657601

/-! ## A286622.P1713771616486438493

`A194977(A246029(n))%A204207(n+1)`
-/

namespace A286622.P1713771616486438493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194977 (A246029 n).toNat) (A204207 (n + 1))

end

end A286622.P1713771616486438493

/-!
# A286623: Square array A(n,k) = A276943(n,k)/A002110(n-1), read by descending antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

The programs for A286623, there is no canonical definition to state claims against.
-/

/-! ## A286623.P3065897434442464271

`A286625(A038722(n+1))`
-/

namespace A286623.P3065897434442464271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286625 (A038722 (n + 1)).toNat

end

end A286623.P3065897434442464271

/-! ## A286623.P11066547947857788776

`A286625(A061579(n)+1)`
-/

namespace A286623.P11066547947857788776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286625 (A061579 n + 1).toNat

end

end A286623.P11066547947857788776

/-! ## A286623.P9854231671124204085

`A286625(A114327(n)+1+n)`
-/

namespace A286623.P9854231671124204085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286625 (A114327 n + 1 + (n : ℤ)).toNat

end

end A286623.P9854231671124204085

/-! ## A286623.P7004000598904490712

`A286625(A093995(n+1)-n)`
-/

namespace A286623.P7004000598904490712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286625 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A286623.P7004000598904490712

/-! ## A286623.P1665656935842957898

`A286625(A002024(n+1)²-n)`
-/

namespace A286623.P1665656935842957898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286625 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286623.P1665656935842957898

/-! ## A286623.P3738593451517957353

`A286625(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A286623.P3738593451517957353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286625 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A286623.P3738593451517957353

/-! ## A286623.P412525258546638726

`A276943(n+1)/A002110(A002262(n))`
-/

namespace A286623.P412525258546638726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276943 (n + 1) : ℚ) / (A002110 (A002262 n).toNat : ℚ)

end

end A286623.P412525258546638726

/-!
# A286624: a(n) = (prime(1+n)*prime(n)) + prime(n) + 1.

The programs for A286624, the canonical program `A286624.P15071627796879516967` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286624 has offset 1).

The definition of A286624 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123134, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286624.P15071627796879516967

`1+A123134(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A286624

/-- `1+A123134(n+1)` -/
def P15071627796879516967.Spec : Prop :=
  ∀ n, P15071627796879516967.a n = A286624 (n + 1)

theorem P15071627796879516967.correct : P15071627796879516967.Spec := by
  intro n
  simp only [A286624, Nat.add_sub_cancel]

end A286624

/-! ## A286624.P1597178636515173593

`A000040(n+1)+A023523(n+2)`
-/

namespace A286624.P1597178636515173593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A023523 (n + 2)

end

end A286624.P1597178636515173593

namespace A286624

/-- `A000040(n+1)+A023523(n+2)` -/
def P1597178636515173593.Spec : Prop :=
  ∀ n, P1597178636515173593.a n = A286624 (n + 1)

end A286624

/-! ## A286624.P12249411066844732850

`A000040(n+2)*A000040(n+1)+A000040(n+1)+1`
-/

namespace A286624.P12249411066844732850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A000040 (n + 1) + A000040 (n + 1) + 1

end

end A286624.P12249411066844732850

namespace A286624

/-- `A000040(n+2)*A000040(n+1)+A000040(n+1)+1` -/
def P12249411066844732850.Spec : Prop :=
  ∀ n, P12249411066844732850.a n = A286624 (n + 1)

end A286624

/-! ## A286624.P15680393045361579989

`A008864(n+1)+A006094(n+1)`
-/

namespace A286624.P15680393045361579989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + A006094 (n + 1)

end

end A286624.P15680393045361579989

namespace A286624

/-- `A008864(n+1)+A006094(n+1)` -/
def P15680393045361579989.Spec : Prop :=
  ∀ n, P15680393045361579989.a n = A286624 (n + 1)

end A286624

/-! ## A286624.P15221096349806559442

`A072055(n+1)+A037166(n+1)`
-/

namespace A286624.P15221096349806559442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) + A037166 (n + 1)

end

end A286624.P15221096349806559442

namespace A286624

/-- `A072055(n+1)+A037166(n+1)` -/
def P15221096349806559442.Spec : Prop :=
  ∀ n, P15221096349806559442.a n = A286624 (n + 1)

end A286624

/-! ## A286624.P3427438918814675882

`A092949(n+1)+A037167(n+1)`
-/

namespace A286624.P3427438918814675882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1) + A037167 (n + 1)

end

end A286624.P3427438918814675882

namespace A286624

/-- `A092949(n+1)+A037167(n+1)` -/
def P3427438918814675882.Spec : Prop :=
  ∀ n, P3427438918814675882.a n = A286624 (n + 1)

end A286624

/-! ## A286624.P973189633773695868

`A291463(n+1)+A060800(n+1)`
-/

namespace A286624.P973189633773695868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (n + 1) + A060800 (n + 1)

end

end A286624.P973189633773695868

namespace A286624

/-- `A291463(n+1)+A060800(n+1)` -/
def P973189633773695868.Spec : Prop :=
  ∀ n, P973189633773695868.a n = A286624 (n + 1)

end A286624

/-! ## A286624.P14251558820515208821

`A180617(n+1)-A065091(n+1)`
-/

namespace A286624.P14251558820515208821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180617 (n + 1) - A065091 (n + 1)

end

end A286624.P14251558820515208821

namespace A286624

/-- `A180617(n+1)-A065091(n+1)` -/
def P14251558820515208821.Spec : Prop :=
  ∀ n, P14251558820515208821.a n = A286624 (n + 1)

end A286624

/-! ## A286624.P17975995532433606214

`A345727(n+1)-A046933(n+1)`
-/

namespace A286624.P17975995532433606214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345727 (n + 1) - A046933 (n + 1)

end

end A286624.P17975995532433606214

namespace A286624

/-- `A345727(n+1)-A046933(n+1)` -/
def P17975995532433606214.Spec : Prop :=
  ∀ n, P17975995532433606214.a n = A286624 (n + 1)

end A286624

/-! ## A286624.P5839957382084701083

`A006094(n+1)+Δ[A007504(n)]+1`
-/

namespace A286624.P5839957382084701083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (f1 (n + 1) - f1 n + 1)

end

end A286624.P5839957382084701083

namespace A286624

/-- `A006094(n+1)+Δ[A007504(n)]+1` -/
def P5839957382084701083.Spec : Prop :=
  ∀ n, P5839957382084701083.a n = A286624 (n + 1)

end A286624

/-! ## A286624.P10547168347233921515

`A000040(n+1)+A006094(n+1)+1`
-/

namespace A286624.P10547168347233921515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A006094 (n + 1) + 1)

end

end A286624.P10547168347233921515

namespace A286624

/-- `A000040(n+1)+A006094(n+1)+1` -/
def P10547168347233921515.Spec : Prop :=
  ∀ n, P10547168347233921515.a n = A286624 (n + 1)

end A286624

/-! ## A286624.P2873115524686647452

`A001043(n+1)+A037167(n+1)+1`
-/

namespace A286624.P2873115524686647452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A037167 (n + 1) + 1)

end

end A286624.P2873115524686647452

namespace A286624

/-- `A001043(n+1)+A037167(n+1)+1` -/
def P2873115524686647452.Spec : Prop :=
  ∀ n, P2873115524686647452.a n = A286624 (n + 1)

end A286624

/-! ## A286624.P8990229910407969296

`A037166(n+1)+A100484(n+1)+1`
-/

namespace A286624.P8990229910407969296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) + (A100484 (n + 1) + 1)

end

end A286624.P8990229910407969296

namespace A286624

/-- `A037166(n+1)+A100484(n+1)+1` -/
def P8990229910407969296.Spec : Prop :=
  ∀ n, P8990229910407969296.a n = A286624 (n + 1)

end A286624

/-! ## A286624.P12830846838001943389

`A036690(n+1)+A291463(n+1)+1`
-/

namespace A286624.P12830846838001943389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) + (A291463 (n + 1) + 1)

end

end A286624.P12830846838001943389

namespace A286624

/-- `A036690(n+1)+A291463(n+1)+1` -/
def P12830846838001943389.Spec : Prop :=
  ∀ n, P12830846838001943389.a n = A286624 (n + 1)

end A286624

/-! ## A286624.P6588924735860623265

`A006093(n+1)+A006094(n+1)+2`
-/

namespace A286624.P6588924735860623265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A006094 (n + 1) + 2)

end

end A286624.P6588924735860623265

namespace A286624

/-- `A006093(n+1)+A006094(n+1)+2` -/
def P6588924735860623265.Spec : Prop :=
  ∀ n, P6588924735860623265.a n = A286624 (n + 1)

end A286624

/-! ## A286624.P16317799838858944038

`A069486(n+1)+1-A037166(n+1)`
-/

namespace A286624.P16317799838858944038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069486 (n + 1) + (1 - A037166 (n + 1))

end

end A286624.P16317799838858944038

namespace A286624

/-- `A069486(n+1)+1-A037166(n+1)` -/
def P16317799838858944038.Spec : Prop :=
  ∀ n, P16317799838858944038.a n = A286624 (n + 1)

end A286624

/-! ## A286624.P16165683763490641545

`A292926(n+1)+1-A031131(n+1)`
-/

namespace A286624.P16165683763490641545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292926 (n + 1) + (1 - A031131 (n + 1))

end

end A286624.P16165683763490641545

namespace A286624

/-- `A292926(n+1)+1-A031131(n+1)` -/
def P16165683763490641545.Spec : Prop :=
  ∀ n, P16165683763490641545.a n = A286624 (n + 1)

end A286624

/-! ## A286624.P18409896792168173801

`A006254(n+1)*A100484(n+1)+1`
-/

namespace A286624.P18409896792168173801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) * A100484 (n + 1) + 1

end

end A286624.P18409896792168173801

namespace A286624

/-- `A006254(n+1)*A100484(n+1)+1` -/
def P18409896792168173801.Spec : Prop :=
  ∀ n, P18409896792168173801.a n = A286624 (n + 1)

end A286624

/-! ## A286624.P9159299080292658216

`A006094(n+1)+A014688(n+1)-n`
-/

namespace A286624.P9159299080292658216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (A014688 (n + 1) - (n : ℤ))

end

end A286624.P9159299080292658216

namespace A286624

/-- `A006094(n+1)+A014688(n+1)-n` -/
def P9159299080292658216.Spec : Prop :=
  ∀ n, P9159299080292658216.a n = A286624 (n + 1)

end A286624

/-! ## A286624.P1394594326762063496

`sqrt(A001248(n+1))+A006094(n+1)+1`
-/

namespace A286624.P1394594326762063496
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) + (A006094 (n + 1) + 1 : ℝ)

end

end A286624.P1394594326762063496

namespace A286624

/-- `sqrt(A001248(n+1))+A006094(n+1)+1` -/
def P1394594326762063496.Spec : Prop :=
  ∀ n, P1394594326762063496.a n = (A286624 (n + 1) : ℝ)

end A286624

/-!
# A286625: Square array A(n,k) = A276945(n,k)/A002110(k-1), read by descending antidiagonals A(1,1), A(1,2), A(2,1), A(1,3), A(2,2), A(3,1), etc.

The programs for A286625, there is no canonical definition to state claims against.
-/

/-! ## A286625.P2789013593206107898

`A286623(∑[char[∑[n]]]²-n)`
-/

namespace A286625.P2789013593206107898
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286623 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A286625.P2789013593206107898

/-! ## A286625.P9495763374274244746

`A286623(A038722(n+1))%A016947(n)`
-/

namespace A286625.P9495763374274244746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286623 (A038722 (n + 1)).toNat) (A016947 n)

end

end A286625.P9495763374274244746

/-! ## A286625.P16217285999621059455

`A286623(A038722(n+1))+and(2, A001248(n+1))`
-/

namespace A286625.P16217285999621059455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286623 (A038722 (n + 1)).toNat + Int.land 2 (A001248 (n + 1))

end

end A286625.P16217285999621059455

/-! ## A286625.P4097525207508643558

`and(1, A044587(n+1))*A286623(A038722(n+1))`
-/

namespace A286625.P4097525207508643558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A044587 (n + 1)) * A286623 (A038722 (n + 1)).toNat

end

end A286625.P4097525207508643558

/-! ## A286625.P10219585696583197744

`A286623(A038722(n+1))+and(1, A270308(n+4))`
-/

namespace A286625.P10219585696583197744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286623 (A038722 (n + 1)).toNat + Int.land 1 (A270308 (n + 4))

end

end A286625.P10219585696583197744

/-! ## A286625.P4445517398423721123

`A286623(A038722(n+1))^A001222(A008578(n+1))`
-/

namespace A286625.P4445517398423721123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286623 (A038722 (n + 1)).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A286625.P4445517398423721123

/-! ## A286625.P15171086115285535774

`A050600(∑[n+1])*A286623(A038722(n+1))`
-/

namespace A286625.P15171086115285535774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050600 (∑ j ∈ Finset.range (n + 1), f1 j) * A286623 (A038722 (n + 1)).toNat

end

end A286625.P15171086115285535774

/-! ## A286625.P9560799477878225147

`A050603(n²)*A286623(A038722(n+1))`
-/

namespace A286625.P9560799477878225147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (n ^ 2) * A286623 (A038722 (n + 1)).toNat

end

end A286625.P9560799477878225147

/-! ## A286625.P5611763332420906901

`A058840(A077468(n+1))*A286623(A038722(n+1))`
-/

namespace A286625.P5611763332420906901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 (A077468 (n + 1)).toNat * A286623 (A038722 (n + 1)).toNat

end

end A286625.P5611763332420906901

/-!
# A286626: Restricted growth sequence computed for primorial base related filter-sequence A278226.

The programs for A286626, there is no canonical definition to state claims against.
-/

/-! ## A286626.P2756896413538662638

`A070939(A011773(A278226(n)²))`
-/

namespace A286626.P2756896413538662638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A011773 (A278226 n ^ 2).toNat).toNat

end

end A286626.P2756896413538662638

/-! ## A286626.P17493330154264664171

`A070939(A011773(A278236(n)²))`
-/

namespace A286626.P17493330154264664171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A011773 (A278236 n ^ 2).toNat).toNat

end

end A286626.P17493330154264664171

/-!
# A286627: a(n) = exponent of the highest power of A000005(n) (number of divisors of n) dividing A000010(n) (totient function phi), a(1) = 1.

The programs for A286627, the canonical program `A286627.P1343693028001462736` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286627 has offset 1).

The definition of A286627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286627.P1343693028001462736

`val(Δ[A049643(n)], A096737(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286627

/-- `val(Δ[A049643(n)], A096737(n+1))` -/
def P1343693028001462736.Spec : Prop :=
  ∀ n, (P1343693028001462736.a n : ℤ) = A286627 (n + 1)

theorem P1343693028001462736.correct : P1343693028001462736.Spec := by
  intro n
  simp only [A286627, Nat.add_sub_cancel]

end A286627

/-! ## A286627.P6050422661508021522

`val(A000010(A066560(n+1)), A096737(n+1))`
-/

namespace A286627.P6050422661508021522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A066560 (n + 1)).toNat).toNat (A096737 (n + 1)).toNat

end

end A286627.P6050422661508021522

namespace A286627

/-- `val(A000010(A066560(n+1)), A096737(n+1))` -/
def P6050422661508021522.Spec : Prop :=
  ∀ n, (P6050422661508021522.a n : ℤ) = A286627 (n + 1)

end A286627

/-! ## A286627.P16138426884804807943

`val(A000010(A178915(n+1)), A096737(n+1))`
-/

namespace A286627.P16138426884804807943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A178915 (n + 1)).toNat).toNat (A096737 (n + 1)).toNat

end

end A286627.P16138426884804807943

namespace A286627

/-- `val(A000010(A178915(n+1)), A096737(n+1))` -/
def P16138426884804807943.Spec : Prop :=
  ∀ n, (P16138426884804807943.a n : ℤ) = A286627 (n + 1)

end A286627

/-! ## A286627.P9818679161274103018

`val(A233583(A039649(n+1)), A096737(n+1))`
-/

namespace A286627.P9818679161274103018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A233583 (A039649 (n + 1)).toNat).toNat (A096737 (n + 1)).toNat

end

end A286627.P9818679161274103018

namespace A286627

/-- `val(A233583(A039649(n+1)), A096737(n+1))` -/
def P9818679161274103018.Spec : Prop :=
  ∀ n, (P9818679161274103018.a n : ℤ) = A286627 (n + 1)

end A286627

/-! ## A286627.P14252738935588770055

`val(A225530(n+1), A096737(n+1))`
-/

namespace A286627.P14252738935588770055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A225530 (n + 1)).toNat (A096737 (n + 1)).toNat

end

end A286627.P14252738935588770055

namespace A286627

/-- `val(A225530(n+1), A096737(n+1))` -/
def P14252738935588770055.Spec : Prop :=
  ∀ n, (P14252738935588770055.a n : ℤ) = A286627 (n + 1)

end A286627

/-!
# A286628: a(n) = exponent of the highest power of A000005(n) (number of divisors of n) dividing A000203(n) (sum of divisors of n), a(1) = 1.

The programs for A286628, the canonical program `A286628.P18256267008233098291` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286628 has offset 1).

The definition of A286628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286628.P18256267008233098291

`val(A337360(n+1), A070824(n+1)+2)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A286628

/-- `val(A337360(n+1), A070824(n+1)+2)` -/
def P18256267008233098291.Spec : Prop :=
  ∀ n, (P18256267008233098291.a n : ℤ) = A286628 (n + 1)

theorem P18256267008233098291.correct : P18256267008233098291.Spec := by
  intro n
  simp only [A286628, Nat.add_sub_cancel]

end A286628

/-! ## A286628.P3441099839541107873

`val(A337360(n+1), lcm(2, A000005(n+1)))`
-/

namespace A286628.P3441099839541107873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A337360 (n + 1)).toNat (Int.lcm 2 (A000005 (n + 1)))

end

end A286628.P3441099839541107873

namespace A286628

/-- `val(A337360(n+1), lcm(2, A000005(n+1)))` -/
def P3441099839541107873.Spec : Prop :=
  ∀ n, (P3441099839541107873.a n : ℤ) = A286628 (n + 1)

end A286628

/-! ## A286628.P8052801507966421305

`val(A337360(n+1), A233583(A334954(n+1)))`
-/

namespace A286628.P8052801507966421305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A337360 (n + 1)).toNat (A233583 (A334954 (n + 1)).toNat).toNat

end

end A286628.P8052801507966421305

namespace A286628

/-- `val(A337360(n+1), A233583(A334954(n+1)))` -/
def P8052801507966421305.Spec : Prop :=
  ∀ n, (P8052801507966421305.a n : ℤ) = A286628 (n + 1)

end A286628

/-! ## A286628.P1712963347991372003

`val(A337360(n+1), A000005(A045965(n+1)))`
-/

namespace A286628.P1712963347991372003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A337360 (n + 1)).toNat (A000005 (A045965 (n + 1)).toNat).toNat

end

end A286628.P1712963347991372003

namespace A286628

/-- `val(A337360(n+1), A000005(A045965(n+1)))` -/
def P1712963347991372003.Spec : Prop :=
  ∀ n, (P1712963347991372003.a n : ℤ) = A286628 (n + 1)

end A286628

/-! ## A286628.P11063431478106396463

`val(A096737(n+1)+A065608(n+1), A096737(n+1))`
-/

namespace A286628.P11063431478106396463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A096737 (n + 1) + A065608 (n + 1)).toNat (A096737 (n + 1)).toNat

end

end A286628.P11063431478106396463

namespace A286628

/-- `val(A096737(n+1)+A065608(n+1), A096737(n+1))` -/
def P11063431478106396463.Spec : Prop :=
  ∀ n, (P11063431478106396463.a n : ℤ) = A286628 (n + 1)

end A286628

/-! ## A286628.P6841991756280764701

`val(A337360(n+1), A096737(A003961(n+1)))`
-/

namespace A286628.P6841991756280764701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A337360 (n + 1)).toNat (A096737 (A003961 (n + 1)).toNat).toNat

end

end A286628.P6841991756280764701

namespace A286628

/-- `val(A337360(n+1), A096737(A003961(n+1)))` -/
def P6841991756280764701.Spec : Prop :=
  ∀ n, (P6841991756280764701.a n : ℤ) = A286628 (n + 1)

end A286628

/-!
# A286629: a(n) = (A000040(n)-1) * A002110(n).

The programs for A286629, there is no canonical definition to state claims against.
-/

/-! ## A286629.P15592608971140599136

`A286630(n+1)-A002110(n+1)`
-/

namespace A286629.P15592608971140599136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286630 (n + 1) - A002110 (n + 1)

end

end A286629.P15592608971140599136

/-! ## A286629.P3477604614276179094

`A006093(n+1)*A002110(n+1)`
-/

namespace A286629.P3477604614276179094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A002110 (n + 1)

end

end A286629.P3477604614276179094

/-! ## A286629.P15215319129502204958

`(A000040(n+1)-1)*A002110(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286629.P15215319129502204958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - 1) * A002110 (n + 1)

end

end A286629.P15215319129502204958

/-!
# A286630: a(0) = 1; for n >= 1, a(n) = A000040(n) * A002110(n).

The programs for A286630, there is no canonical definition to state claims against.
-/

/-! ## A286630.P2467521126964148196

`record[A398314(n+1)]`
-/

namespace A286630.P2467521126964148196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286630.P2467521126964148196

/-! ## A286630.P13417155335143797152

`record[Δ[A066332(n+2)]]`
-/

namespace A286630.P13417155335143797152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066332 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286630.P13417155335143797152

/-! ## A286630.P6383927862069733292

`record[(n+1)*A073039(n+1)]`
-/

namespace A286630.P6383927862069733292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A073039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286630.P6383927862069733292

/-! ## A286630.P5789968880605706688

`record[(n+1)*A108951(n+1)]`
-/

namespace A286630.P5789968880605706688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A108951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286630.P5789968880605706688

/-! ## A286630.P11179493219196570855

`record[(n+1)*A226532(n+1)]`
-/

namespace A286630.P11179493219196570855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A226532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286630.P11179493219196570855

/-! ## A286630.P15134404859714349313

`record[(n+1)*A283478(n+1)]`
-/

namespace A286630.P15134404859714349313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A283478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286630.P15134404859714349313

/-! ## A286630.P3017963508005484973

`A398314(A008578(n+1))`
-/

namespace A286630.P3017963508005484973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398314 (A008578 (n + 1)).toNat

end

end A286630.P3017963508005484973

/-! ## A286630.P5755540196469391692

`A398314(A015919(n+1))`
-/

namespace A286630.P5755540196469391692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398314 (A015919 (n + 1)).toNat

end

end A286630.P5755540196469391692

/-! ## A286630.P13712558608968079773

`A398314(A064555(n+1))`
-/

namespace A286630.P13712558608968079773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398314 (A064555 (n + 1)).toNat

end

end A286630.P13712558608968079773

/-! ## A286630.P16412015996732161612

`A398314(A324050(n+1))`
-/

namespace A286630.P16412015996732161612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398314 (A324050 (n + 1)).toNat

end

end A286630.P16412015996732161612

/-!
# A286631: a(n) = A278222(A254104(n)).

The programs for A286631, there is no canonical definition to state claims against.
-/

/-! ## A286631.P16224096325796900987

`A278222(A254104(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286631.P16224096325796900987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A254104 n).toNat

end

end A286631.P16224096325796900987

/-!
# A286632: Base-3 digit sum of A254103: a(n) = A053735(A254103(n)).

The programs for A286632, there is no canonical definition to state claims against.
-/

/-! ## A286632.P16900632113612852065

`A056239(A286633(n))`
-/

namespace A286632.P16900632113612852065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A286633 n).toNat

end

end A286632.P16900632113612852065

/-! ## A286632.P2382949534339262323

`A053735(A254103(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286632.P2382949534339262323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A254103 n).toNat

end

end A286632.P2382949534339262323

/-! ## A286632.P3943604664528477705

`A196052(2*A286633(n)-A286633(n))`
-/

namespace A286632.P3943604664528477705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196052 (2 * A286633 n - A286633 n).toNat

end

end A286632.P3943604664528477705

/-! ## A286632.P2239327780657663540

`A196052(2*A286633(n))-1`
-/

namespace A286632.P2239327780657663540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196052 (2 * A286633 n).toNat - 1

end

end A286632.P2239327780657663540

/-! ## A286632.P4462650381234338560

`A001222(A064989(A286633(n))*A286633(n))`
-/

namespace A286632.P4462650381234338560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A064989 (A286633 n).toNat * A286633 n).toNat

end

end A286632.P4462650381234338560

/-! ## A286632.P3358728189797037334

`A196052(and(A126646(n), A286633(n)))`
-/

namespace A286632.P3358728189797037334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196052 (Int.land (A126646 n) (A286633 n)).toNat

end

end A286632.P3358728189797037334

/-! ## A286632.P4887216610549251164

`A001222(A000265(A286633(n))*A286633(n))`
-/

namespace A286632.P4887216610549251164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000265 (A286633 n).toNat * A286633 n).toNat

end

end A286632.P4887216610549251164

/-!
# A286633: Base-3 {digit+1} product of A254103: a(n) = A006047(A254103(n)).

The programs for A286633, there is no canonical definition to state claims against.
-/

/-! ## A286633.P11581306561239187966

`A006047(A254103(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286633.P11581306561239187966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A254103 n).toNat

end

end A286633.P11581306561239187966

/-!
# A286634: Numerator of the ratio of alternate consecutive prime gaps: Numerator ((prime(n + 3) - prime(n + 2))/(prime(n + 1) - prime(n))).

The programs for A286634, the canonical program `A286634.P1089138795719838063` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286634 has offset 1).

The definition of A286634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286634.P1089138795719838063

`ratio[A083550(n+1)]*A285851(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A286634

/-- `ratio[A083550(n+1)]*A285851(n+1)` -/
def P1089138795719838063.Spec : Prop :=
  ∀ n, P1089138795719838063.a n = (A286634 (n + 1) : ℚ)

end A286634

/-! ## A286634.P5807257845725845489

`lcm(A001223(n+1), A001223(n+3))/A001223(n+1)`
-/

namespace A286634.P5807257845725845489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001223 (n + 1)) (A001223 (n + 3)) : ℚ) / (A001223 (n + 1) : ℚ)

end

end A286634.P5807257845725845489

namespace A286634

/-- `lcm(A001223(n+1), A001223(n+3))/A001223(n+1)` -/
def P5807257845725845489.Spec : Prop :=
  ∀ n, P5807257845725845489.a n = (A286634 (n + 1) : ℚ)

end A286634

/-! ## A286634.P12718451693571632566

`lcm(A054541(n+2), A054541(n+4))/A054541(n+2)`
-/

namespace A286634.P12718451693571632566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A054541 (n + 2)) (A054541 (n + 4)) : ℚ) / (A054541 (n + 2) : ℚ)

end

end A286634.P12718451693571632566

namespace A286634

/-- `lcm(A054541(n+2), A054541(n+4))/A054541(n+2)` -/
def P12718451693571632566.Spec : Prop :=
  ∀ n, P12718451693571632566.a n = (A286634 (n + 1) : ℚ)

end A286634

/-! ## A286634.P1781437637183130522

`A185317(C(A001223(n+3), A001223(n+1)))`
-/

namespace A286634.P1781437637183130522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185317 (Nat.choose (A001223 (n + 3)).toNat (A001223 (n + 1)).toNat)

end

end A286634.P1781437637183130522

namespace A286634

/-- `A185317(C(A001223(n+3), A001223(n+1)))` -/
def P1781437637183130522.Spec : Prop :=
  ∀ n, P1781437637183130522.a n = A286634 (n + 1)

end A286634

/-! ## A286634.P16071680275101083681

`gcd(A004526(n), A027746(A175840(3*n+2)))`
-/

namespace A286634.P16071680275101083681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004526 n) (A027746 (A175840 (3 * n + 2)).toNat)

end

end A286634.P16071680275101083681

namespace A286634

/-- `gcd(A004526(n), A027746(A175840(3*n+2)))` -/
def P16071680275101083681.Spec : Prop :=
  ∀ n, (P16071680275101083681.a n : ℤ) = A286634 (n + 1)

end A286634

/-!
# A286636: Even numbers that are a sum of two squares plus 1.

The programs for A286636, there is no canonical definition to state claims against.
-/

/-! ## A286636.P17822440660910302188

`A057653(n+1)+1`
-/

namespace A286636.P17822440660910302188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057653 (n + 1) + 1

end

end A286636.P17822440660910302188

/-! ## A286636.P15126405045005237065

`xor(3, lt[A104794(n), 0])`
-/

namespace A286636.P15126405045005237065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A286636.P15126405045005237065

/-! ## A286636.P2069392641399398065

`A097269(n+1)/2+1`
-/

namespace A286636.P2069392641399398065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097269 (n + 1) : ℚ) / 2 + 1

end

end A286636.P2069392641399398065

/-! ## A286636.P11098064291394875033

`4*A020756(n+1)+2`
-/

namespace A286636.P11098064291394875033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020756 (n + 1) + 2

end

end A286636.P11098064291394875033

/-! ## A286636.P11915348572535165369

`4*eq[3, A176873(n)]+2`
-/

namespace A286636.P11915348572535165369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A286636.P11915348572535165369

/-! ## A286636.P9962345863177641360

`∩[2*n, A166687(n+1)]`
-/

namespace A286636.P9962345863177641360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286636.P9962345863177641360

/-! ## A286636.P5048554663585587156

`∩[2*n, A001481(n+1)+1]`
-/

namespace A286636.P5048554663585587156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286636.P5048554663585587156

/-! ## A286636.P5940627467427149841

`A016825(A020756(n+1))`
-/

namespace A286636.P5940627467427149841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A020756 (n + 1)).toNat

end

end A286636.P5940627467427149841

/-! ## A286636.P3784183211284696526

`A004444(A057653(n+1))`
-/

namespace A286636.P3784183211284696526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004444 (A057653 (n + 1)).toNat

end

end A286636.P3784183211284696526

/-! ## A286636.P10940942038668676143

`A008619(A097269(n+1))`
-/

namespace A286636.P10940942038668676143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A097269 (n + 1)).toNat

end

end A286636.P10940942038668676143

/-!
# A286637: Perimeter of primitive integer automedian triangles (without repetitions).

The programs for A286637, there is no canonical definition to state claims against.
-/

/-! ## A286637.P10486187476725536609

`A308168(A345916(2*n+5)^A124765(n))`
-/

namespace A286637.P10486187476725536609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308168 (SequenceMachineLib.roundAway ((A345916 (2 * n + 5) : ℚ) ^ (A124765 n : ℤ))).toNat

end

end A286637.P10486187476725536609

/-!
# A286638: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 193", based on the 5-celled von Neumann neighborhood.

The programs for A286638, there is no canonical definition to state claims against.
-/

/-! ## A286638.P741872608139826091

`A288361(n)-A240331(A240312(3*n+4))`
-/

namespace A286638.P741872608139826091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288361 n - A240331 (A240312 (3 * n + 4)).toNat

end

end A286638.P741872608139826091

/-! ## A286638.P2943837673993325310

`A007088(A286640(n))`
-/

namespace A286638.P2943837673993325310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286640 n).toNat

end

end A286638.P2943837673993325310

/-!
# A286639: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 193", based on the 5-celled von Neumann neighborhood.

The programs for A286639, there is no canonical definition to state claims against.
-/

/-! ## A286639.P5656400235181318945

`A288362(n)%A032248(A062025(n))`
-/

namespace A286639.P5656400235181318945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288362 n) (A032248 ((A062025 n).toNat + 10))

end

end A286639.P5656400235181318945

/-! ## A286639.P18238957484754150590

`A007088(A286641(n))`
-/

namespace A286639.P18238957484754150590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286641 n).toNat

end

end A286639.P18238957484754150590

/-!
# A286640: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 193", based on the 5-celled von Neumann neighborhood.

The programs for A286640, there is no canonical definition to state claims against.
-/

/-! ## A286640.P9619239402529877982

`gcd(A107247(A185237(n)), A288359(n))`
-/

namespace A286640.P9619239402529877982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107247 (A185237 n).toNat) (A288359 n)

end

end A286640.P9619239402529877982

/-! ## A286640.P8708762996620775610

`A288359(n)%A117881(n)`
-/

namespace A286640.P8708762996620775610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288359 n) (A117881 n)

end

end A286640.P8708762996620775610

/-! ## A286640.P14082548162853750478

`and(A288359(n), A383046(n+3))`
-/

namespace A286640.P14082548162853750478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A288359 n) (A383046 (n + 3))

end

end A286640.P14082548162853750478

/-! ## A286640.P7096860088441312352

`A288359(n)+A000007(A288338(n))`
-/

namespace A286640.P7096860088441312352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288359 n + A000007 (A288338 n).toNat

end

end A286640.P7096860088441312352

/-! ## A286640.P16624620038483300766

`A288359(n)+A185237(A185237(n)²)`
-/

namespace A286640.P16624620038483300766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288359 n + A185237 (A185237 n ^ 2).toNat

end

end A286640.P16624620038483300766

/-!
# A286641: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 193", based on the 5-celled von Neumann neighborhood.

The programs for A286641, there is no canonical definition to state claims against.
-/

/-! ## A286641.P3163101178758909483

`A288360(n)%A117881(n)`
-/

namespace A286641.P3163101178758909483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288360 n) (A117881 n)

end

end A286641.P3163101178758909483

/-! ## A286641.P17318908401352071243

`and(A288360(n), A383046(n+3))`
-/

namespace A286641.P17318908401352071243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A288360 n) (A383046 (n + 3))

end

end A286641.P17318908401352071243

/-! ## A286641.P5923852976569290523

`gcd(A288351(3*n+2), A288360(n))`
-/

namespace A286641.P5923852976569290523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A288351 (3 * n + 2)) (A288360 n)

end

end A286641.P5923852976569290523

/-! ## A286641.P15118447022300351523

`A101027(A326631(n))*A288360(n)`
-/

namespace A286641.P15118447022300351523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101027 (A326631 n).toNat * A288360 n

end

end A286641.P15118447022300351523

/-! ## A286641.P12559382440791451773

`or(A000035(A135381(n)), A288360(n))`
-/

namespace A286641.P12559382440791451773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A135381 n).toNat) (A288360 n)

end

end A286641.P12559382440791451773

/-!
# A286644: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 195", based on the 5-celled von Neumann neighborhood.

The programs for A286644, there is no canonical definition to state claims against.
-/

/-! ## A286644.P13818366648848999068

`A290862(n)%A093046(n+1)`
-/

namespace A286644.P13818366648848999068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290862 n) (A093046 (n + 1))

end

end A286644.P13818366648848999068

/-! ## A286644.P182724501826967460

`or(A001221(a(n-1)), A290862(n))` with `a(0)=1`
-/

namespace A286644.P182724501826967460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (A001221 (a (n - 1)).toNat) (A290862 n)

end

end A286644.P182724501826967460

/-! ## A286644.P1831698499429648700

`or(A001222(a(n-1)), A290862(n))` with `a(0)=1`
-/

namespace A286644.P1831698499429648700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (A001222 (a (n - 1)).toNat) (A290862 n)

end

end A286644.P1831698499429648700

/-! ## A286644.P4559829100696110809

`A290862(n)+A000007(A003242(n))`
-/

namespace A286644.P4559829100696110809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290862 n + A000007 (A003242 n).toNat

end

end A286644.P4559829100696110809

/-! ## A286644.P10337066319117426347

`A290862(n)+A000007(A061777(n))`
-/

namespace A286644.P10337066319117426347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290862 n + A000007 (A061777 n).toNat

end

end A286644.P10337066319117426347

/-!
# A286645: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 195", based on the 5-celled von Neumann neighborhood.

The programs for A286645, there is no canonical definition to state claims against.
-/

/-! ## A286645.P15455899271637129219

`or(A000027(A288364(n)), A277936(n))`
-/

namespace A286645.P15455899271637129219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000027 (A288364 n).toNat) (A277936 n)

end

end A286645.P15455899271637129219

/-! ## A286645.P16699242525581561354

`or(A000027(A288364(n)), A285475(n))`
-/

namespace A286645.P16699242525581561354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000027 (A288364 n).toNat) (A285475 n)

end

end A286645.P16699242525581561354

/-! ## A286645.P14184149473702251508

`A000027(A290863(n))`
-/

namespace A286645.P14184149473702251508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A290863 n).toNat

end

end A286645.P14184149473702251508

/-! ## A286645.P16639499325335232308

`A290863(n)%A093046(n+1)`
-/

namespace A286645.P16639499325335232308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290863 n) (A093046 (n + 1))

end

end A286645.P16639499325335232308

/-! ## A286645.P16626264308877627388

`A290863(n)+A000007(A000712(n))`
-/

namespace A286645.P16626264308877627388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290863 n + A000007 (A000712 n).toNat

end

end A286645.P16626264308877627388

/-!
# A286646: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 197", based on the 5-celled von Neumann neighborhood.

The programs for A286646, there is no canonical definition to state claims against.
-/

/-! ## A286646.P15288796862635642128

`A007088(A286648(n))`
-/

namespace A286646.P15288796862635642128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286648 n).toNat

end

end A286646.P15288796862635642128

/-! ## A286646.P5771185314490188262

`A185544(2*A286648(n))`
-/

namespace A286646.P5771185314490188262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286648 n).toNat

end

end A286646.P5771185314490188262

/-! ## A286646.P2310463719435444766

`A185544(A286648(n)+A286648(n))`
-/

namespace A286646.P2310463719435444766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A286648 n + A286648 n).toNat

end

end A286646.P2310463719435444766

/-!
# A286647: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 197", based on the 5-celled von Neumann neighborhood.

The programs for A286647, there is no canonical definition to state claims against.
-/

/-! ## A286647.P8253874172180571387

`A007088(A286649(n))`
-/

namespace A286647.P8253874172180571387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286649 n).toNat

end

end A286647.P8253874172180571387

/-! ## A286647.P2796083761695515607

`A185544(2*A286649(n))`
-/

namespace A286647.P2796083761695515607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286649 n).toNat

end

end A286647.P2796083761695515607

/-! ## A286647.P3669253832115098603

`A185544(A286649(n)+A286649(n))`
-/

namespace A286647.P3669253832115098603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A286649 n + A286649 n).toNat

end

end A286647.P3669253832115098603

/-!
# A286648: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 197", based on the 5-celled von Neumann neighborhood.

The programs for A286648, there is no canonical definition to state claims against.
-/

/-! ## A286648.P4774922349795620381

`A368431(A286020(n))`
-/

namespace A286648.P4774922349795620381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368431 (A286020 n).toNat

end

end A286648.P4774922349795620381

/-!
# A286649: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 197", based on the 5-celled von Neumann neighborhood.

The programs for A286649, there is no canonical definition to state claims against.
-/

/-! ## A286649.P7384426005919957420

`lcm(A286021(n), A326869(A035628(n+2)))`
-/

namespace A286649.P7384426005919957420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A286021 n) (A326869 (A035628 (n + 2)).toNat)

end

end A286649.P7384426005919957420

/-! ## A286649.P2597464230690079136

`A069293(A027930(n+4))*A286021(n)`
-/

namespace A286649.P2597464230690079136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069293 (A027930 (n + 4)).toNat * A286021 n

end

end A286649.P2597464230690079136

/-!
# A286652: Unitary practical numbers: numbers n such that every 1 <= k <= usigma(n) is a sum of distinct unitary divisors of n.

The programs for A286652, there is no canonical definition to state claims against.
-/

/-! ## A286652.P17758068051050527017

`∪[A265501(n+1), A287173(n+1)]`
-/

namespace A286652.P17758068051050527017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286652.P17758068051050527017

/-! ## A286652.P5072243528021235224

`record[A066990(A334901(n+1)%A305885(n+1))]`
-/

namespace A286652.P5072243528021235224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (Int.tmod (A334901 (n + 1)) (A305885 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286652.P5072243528021235224

/-! ## A286652.P2885141066232187841

`record[A066990(A334898(n+1)%A305885(n+1))]`
-/

namespace A286652.P2885141066232187841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (Int.tmod (A334898 (n + 1)) (A305885 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286652.P2885141066232187841

/-!
# A286653: Square array A(n,k), n>=0, k>=1, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 - x^(k*j))/(1 - x^j).

The programs for A286653, there is no canonical definition to state claims against.
-/

/-! ## A286653.P6220486208858530664

`A061198(∑[2*n]%comp[∑[n]])`
-/

namespace A286653.P6220486208858530664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061198 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A286653.P6220486208858530664

/-! ## A286653.P16674261521712462613

`A061198(∑[char[∑[n]]]²-(n+1))`
-/

namespace A286653.P16674261521712462613
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061198 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A286653.P16674261521712462613

/-! ## A286653.P14369858691625325423

`lcm(A033999(n), A061198(A061579(n)))`
-/

namespace A286653.P14369858691625325423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A061198 (A061579 n).toNat)

end

end A286653.P14369858691625325423

/-! ## A286653.P13453763043441460762

`or(A000007(n), A061198(A061579(n)))`
-/

namespace A286653.P13453763043441460762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A061198 (A061579 n).toNat)

end

end A286653.P13453763043441460762

/-! ## A286653.P3278360019231024698

`A033999(A337335(n+1))+A061198(A061579(n))+1`
-/

namespace A286653.P3278360019231024698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A337335 (n + 1)).toNat + (A061198 (A061579 n).toNat + 1)

end

end A286653.P3278360019231024698

/-!
# A286654: Characteristic sequence of the Beatty sequence, A022841, of sqrt(7).

The programs for A286654, the canonical program `A286654.P5589144925641845907` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286654 has offset 1).

The definition of A286654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286654.P5589144925641845907

`Δ[floor((n+1)/sqrt(7))]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A286654

/-- `Δ[floor((n+1)/sqrt(7))]` -/
def P5589144925641845907.Spec : Prop :=
  ∀ n, P5589144925641845907.a n = A286654 (n + 1)

theorem P5589144925641845907.correct : P5589144925641845907.Spec := by
  intro n
  simp only [A286654, Nat.add_sub_cancel]

end A286654

/-!
# A286655: Characteristic sequence of the Beatty sequence, A022842, of sqrt(8).

The programs for A286655, the canonical program `A286655.P4264452727309570536` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286655 has offset 1).

The definition of A286655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286655.P1524832130030927074

`Δ[floor((n+1)/sqrt(8))]`
-/

namespace A286655.P1524832130030927074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sqrt (8 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286655.P1524832130030927074

namespace A286655

/-- `Δ[floor((n+1)/sqrt(8))]` -/
def P1524832130030927074.Spec : Prop :=
  ∀ n, P1524832130030927074.a n = A286655 (n + 1)

end A286655

/-! ## A286655.P13610234481706233794

`dr(Δ[ceil((n+1)/sqrt(8))])`
-/

namespace A286655.P13610234481706233794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.sqrt (8 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A286655.P13610234481706233794

namespace A286655

/-- `dr(Δ[ceil((n+1)/sqrt(8))])` -/
def P13610234481706233794.Spec : Prop :=
  ∀ n, (P13610234481706233794.a n : ℤ) = A286655 (n + 1)

end A286655

/-! ## A286655.P10868055092622233027

`char[A198263(n)-2]`
-/

namespace A286655.P10868055092622233027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198263 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286655.P10868055092622233027

namespace A286655

/-- `char[A198263(n)-2]` -/
def P10868055092622233027.Spec : Prop :=
  ∀ n, (P10868055092622233027.a n : ℤ) = A286655 (n + 1)

end A286655

/-! ## A286655.P3475707319397546651

`char[A022842(n+1)-1]`
-/

namespace A286655.P3475707319397546651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286655.P3475707319397546651

namespace A286655

/-- `char[A022842(n+1)-1]` -/
def P3475707319397546651.Spec : Prop :=
  ∀ n, (P3475707319397546651.a n : ℤ) = A286655 (n + 1)

end A286655

/-! ## A286655.P12076643206382717577

`char[A001951(2*n)-1]`
-/

namespace A286655.P12076643206382717577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286655.P12076643206382717577

namespace A286655

/-- `char[A001951(2*n)-1]` -/
def P12076643206382717577.Spec : Prop :=
  ∀ n, (P12076643206382717577.a n : ℤ) = A286655 (n + 1)

end A286655

/-! ## A286655.P9575140407386455710

`char[A087057(2*(n+1))-2]`
-/

namespace A286655.P9575140407386455710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (2 * (n + 1)) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286655.P9575140407386455710

namespace A286655

/-- `char[A087057(2*(n+1))-2]` -/
def P9575140407386455710.Spec : Prop :=
  ∀ n, (P9575140407386455710.a n : ℤ) = A286655 (n + 1)

end A286655

/-! ## A286655.P4264452727309570536

`and(A049473(n), A080764(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286655

/-- `and(A049473(n), A080764(n))` -/
def P4264452727309570536.Spec : Prop :=
  ∀ n, P4264452727309570536.a n = A286655 (n + 1)

theorem P4264452727309570536.correct : P4264452727309570536.Spec := by
  intro n
  simp only [A286655, Nat.add_sub_cancel]

end A286655

/-! ## A286655.P15856880958500078805

`and(A080764(n), A091087(n))`
-/

namespace A286655.P15856880958500078805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080764 n) (A091087 n)

end

end A286655.P15856880958500078805

namespace A286655

/-- `and(A080764(n), A091087(n))` -/
def P15856880958500078805.Spec : Prop :=
  ∀ n, P15856880958500078805.a n = A286655 (n + 1)

end A286655

/-! ## A286655.P2646823633330326579

`and(A001182(n+1), A080764(n))`
-/

namespace A286655.P2646823633330326579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001182 (n + 1)) (A080764 n)

end

end A286655.P2646823633330326579

namespace A286655

/-- `and(A001182(n+1), A080764(n))` -/
def P2646823633330326579.Spec : Prop :=
  ∀ n, P2646823633330326579.a n = A286655 (n + 1)

end A286655

/-! ## A286655.P11127815269613857239

`and(A007882(n+1), A080764(n))`
-/

namespace A286655.P11127815269613857239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007882 (n + 1)) (A080764 n)

end

end A286655.P11127815269613857239

namespace A286655

/-- `and(A007882(n+1), A080764(n))` -/
def P11127815269613857239.Spec : Prop :=
  ∀ n, P11127815269613857239.a n = A286655 (n + 1)

end A286655

/-! ## A286655.P10225935281054987934

`and(A064506(n+1), A080764(n))`
-/

namespace A286655.P10225935281054987934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064506 (n + 1)) (A080764 n)

end

end A286655.P10225935281054987934

namespace A286655

/-- `and(A064506(n+1), A080764(n))` -/
def P10225935281054987934.Spec : Prop :=
  ∀ n, P10225935281054987934.a n = A286655 (n + 1)

end A286655

/-! ## A286655.P4559574793415644870

`and(A080764(n), A182769(n+1))`
-/

namespace A286655.P4559574793415644870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080764 n) (A182769 (n + 1))

end

end A286655.P4559574793415644870

namespace A286655

/-- `and(A080764(n), A182769(n+1))` -/
def P4559574793415644870.Spec : Prop :=
  ∀ n, P4559574793415644870.a n = A286655 (n + 1)

end A286655

/-! ## A286655.P17703430783565780063

`and(A080764(n), A187971(n+1))`
-/

namespace A286655.P17703430783565780063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080764 n) (A187971 (n + 1))

end

end A286655.P17703430783565780063

namespace A286655

/-- `and(A080764(n), A187971(n+1))` -/
def P17703430783565780063.Spec : Prop :=
  ∀ n, P17703430783565780063.a n = A286655 (n + 1)

end A286655

/-! ## A286655.P9833930616666793357

`and(A080764(n), A188375(n+1))`
-/

namespace A286655.P9833930616666793357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080764 n) (A188375 (n + 1))

end

end A286655.P9833930616666793357

namespace A286655

/-- `and(A080764(n), A188375(n+1))` -/
def P9833930616666793357.Spec : Prop :=
  ∀ n, P9833930616666793357.a n = A286655 (n + 1)

end A286655

/-! ## A286655.P15468601041162546245

`A000035(A049473(n*A080764(n)))`
-/

namespace A286655.P15468601041162546245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A049473 ((n : ℤ) * A080764 n).toNat).toNat

end

end A286655.P15468601041162546245

namespace A286655

/-- `A000035(A049473(n*A080764(n)))` -/
def P15468601041162546245.Spec : Prop :=
  ∀ n, P15468601041162546245.a n = A286655 (n + 1)

end A286655

/-! ## A286655.P3825348437845727213

`A194990(n+2)-A194990(n+1)`
-/

namespace A286655.P3825348437845727213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (n + 2) - A194990 (n + 1)

end

end A286655.P3825348437845727213

namespace A286655

/-- `A194990(n+2)-A194990(n+1)` -/
def P3825348437845727213.Spec : Prop :=
  ∀ n, P3825348437845727213.a n = A286655 (n + 1)

end A286655

/-! ## A286655.P11013051418243113221

`A172474(n+2)-A172474(n+1)`
-/

namespace A286655.P11013051418243113221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (n + 2) - A172474 (n + 1)

end

end A286655.P11013051418243113221

namespace A286655

/-- `A172474(n+2)-A172474(n+1)` -/
def P11013051418243113221.Spec : Prop :=
  ∀ n, P11013051418243113221.a n = A286655 (n + 1)

end A286655

/-! ## A286655.P13082921018087520108

`and(A080764(n), A120883(n))`
-/

namespace A286655.P13082921018087520108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080764 n) (A120883 n)

end

end A286655.P13082921018087520108

namespace A286655

/-- `and(A080764(n), A120883(n))` -/
def P13082921018087520108.Spec : Prop :=
  ∀ n, P13082921018087520108.a n = A286655 (n + 1)

end A286655

/-! ## A286655.P16022124649801738569

`A006021(A232705(n+2))`
-/

namespace A286655.P16022124649801738569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006021 (A232705 (n + 2)).toNat

end

end A286655.P16022124649801738569

namespace A286655

/-- `A006021(A232705(n+2))` -/
def P16022124649801738569.Spec : Prop :=
  ∀ n, P16022124649801738569.a n = A286655 (n + 1)

end A286655

/-! ## A286655.P11769607527982049902

`and(A052115(n), A080764(n))`
-/

namespace A286655.P11769607527982049902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052115 n) (A080764 n)

end

end A286655.P11769607527982049902

namespace A286655

/-- `and(A052115(n), A080764(n))` -/
def P11769607527982049902.Spec : Prop :=
  ∀ n, P11769607527982049902.a n = A286655 (n + 1)

end A286655

/-!
# A286656: Square array A(n,k), n>=0, k>=1, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 - x^j)/(1 - x^(k*j)).

The programs for A286656, there is no canonical definition to state claims against.
-/

/-! ## A286656.P2741376721642170907

`A290217(n)/gcd(A091601(n), A290217(n))`
-/

namespace A286656.P2741376721642170907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290217 n : ℚ) / (Int.gcd (A091601 n) (A290217 n) : ℚ)

end

end A286656.P2741376721642170907

/-! ## A286656.P16003262590144377841

`floor(A290217(n)/A000045(A256268(n)))`
-/

namespace A286656.P16003262590144377841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A290217 n : ℚ) / (A000045 (A256268 n).toNat : ℚ)⌋

end

end A286656.P16003262590144377841

/-! ## A286656.P3352092567835021814

`A294254(n)%A007967(A007962(n+1))`
-/

namespace A286656.P3352092567835021814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294254 n) (A007967 (A007962 (n + 1)).toNat)

end

end A286656.P3352092567835021814

/-! ## A286656.P18268289926523437519

`A293530(n)%A000034(A293525(2*(n+2)))`
-/

namespace A286656.P18268289926523437519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293530 n) (A000034 (A293525 (2 * (n + 2))).toNat)

end

end A286656.P18268289926523437519

/-! ## A286656.P12074209576293478052

`A294254(n)-A010054(A181808(n+1))`
-/

namespace A286656.P12074209576293478052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 n - A010054 (A181808 (n + 1)).toNat

end

end A286656.P12074209576293478052

/-!
# A286658: Primes of the form p*b^b + 1, where p is a prime and b>1.

The programs for A286658, there is no canonical definition to state claims against.
-/

/-! ## A286658.P14221388963815780895

`A090866(n+1)-A184955(A000009(n))`
-/

namespace A286658.P14221388963815780895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090866 (n + 1) - A184955 (A000009 n).toNat

end

end A286658.P14221388963815780895

/-! ## A286658.P17116277939438625097

`A090866(n+1)-A359287(A016116(2*(n+1)))`
-/

namespace A286658.P17116277939438625097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090866 (n + 1) - A359287 (A016116 (2 * (n + 1))).toNat

end

end A286658.P17116277939438625097

/-!
# A286660: a(n) = a(n-1) + sum of base-100 digits of a(n-1), a(0) = 1.

The programs for A286660, there is no canonical definition to state claims against.
-/

/-! ## A286660.P409513539888577966

`lt[A262816(n+1), A019712(A255458(n))]`
-/

namespace A286660.P409513539888577966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019712 (A255458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A286660.P409513539888577966

/-! ## A286660.P6373904547456323849

`lt[A331742(A000384(n)), n+1]`
-/

namespace A286660.P6373904547456323849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331742 (A000384 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A286660.P6373904547456323849

/-! ## A286660.P13201908348544824530

`eq[2*A162300(and(n, n-1)), A085398(n+1)]`
-/

namespace A286660.P13201908348544824530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162300 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286660.P13201908348544824530

/-! ## A286660.P183007083647872027

`eq[A000120(n), A304042(A001318(n))]`
-/

namespace A286660.P183007083647872027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A001318 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A286660.P183007083647872027

/-! ## A286660.P9809092887622992575

`A000051(n)-A266752(A046169(n+1))`
-/

namespace A286660.P9809092887622992575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A266752 (A046169 (n + 1)).toNat

end

end A286660.P9809092887622992575

/-!
# A286661: Primes of form A038396(n) - 1 or A038396(n) + 1.

The programs for A286661, there is no canonical definition to state claims against.
-/

/-! ## A286661.P13547552732134509623

`A390240(A135123(n+1))`
-/

namespace A286661.P13547552732134509623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390240 (A135123 (n + 1)).toNat

end

end A286661.P13547552732134509623

/-!
# A286664: a(n) is the smallest prime p such that p^2 divides Bell(p+n) - Bell(n+1) - Bell(n).

The programs for A286664, there is no canonical definition to state claims against.
-/

/-! ## A286664.P8250066781515504198

`A020639(A230880(n)+A085831(n))`
-/

namespace A286664.P8250066781515504198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A230880 n + A085831 n).toNat

end

end A286664.P8250066781515504198

/-! ## A286664.P12437997877909363952

`A020639(A237694(n+1)+A078257(n+1))`
-/

namespace A286664.P12437997877909363952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A237694 (n + 1) + A078257 (n + 1)).toNat

end

end A286664.P12437997877909363952

/-!
# A286665: {0->01}-transform of the Pell word, A171588.

The programs for A286665, the canonical program `A286665.P12755796930078172197` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286665 has offset 1).

The definition of A286665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286665.P7988620492913728650

`2-Δ[floor((n+2)*sqrt(2))]`
-/

namespace A286665.P7988620492913728650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A286665.P7988620492913728650

namespace A286665

/-- `2-Δ[floor((n+2)*sqrt(2))]` -/
def P7988620492913728650.Spec : Prop :=
  ∀ n, P7988620492913728650.a n = A286665 (n + 1)

end A286665

/-! ## A286665.P3469863126998691293

`3%Δ[floor((n+2)*sqrt(2)+n)]`
-/

namespace A286665.P3469863126998691293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) * Real.sqrt (2 : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f1 (n + 1) - f1 n)

end

end A286665.P3469863126998691293

namespace A286665

/-- `3%Δ[floor((n+2)*sqrt(2)+n)]` -/
def P3469863126998691293.Spec : Prop :=
  ∀ n, P3469863126998691293.a n = A286665 (n + 1)

end A286665

/-! ## A286665.P10574304613703016256

`val(Δ[floor((n+2)*sqrt(2)+n)], 2)`
-/

namespace A286665.P10574304613703016256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) * Real.sqrt (2 : ℝ) + (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A286665.P10574304613703016256

namespace A286665

/-- `val(Δ[floor((n+2)*sqrt(2)+n)], 2)` -/
def P10574304613703016256.Spec : Prop :=
  ∀ n, (P10574304613703016256.a n : ℤ) = A286665 (n + 1)

end A286665

/-! ## A286665.P750286167304479581

`Δ[floor(sqrt(∪[2*(n+1)², (n+1)²]))]`
-/

namespace A286665.P750286167304479581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A286665.P750286167304479581

namespace A286665

/-- `Δ[floor(sqrt(∪[2*(n+1)², (n+1)²]))]` -/
def P750286167304479581.Spec : Prop :=
  ∀ n, P750286167304479581.a n = A286665 (n + 1)

end A286665

/-! ## A286665.P12755796930078172197

`abs(1-A159684(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286665

/-- `abs(1-A159684(n+1))` -/
def P12755796930078172197.Spec : Prop :=
  ∀ n, P12755796930078172197.a n = A286665 (n + 1)

theorem P12755796930078172197.correct : P12755796930078172197.Spec := by
  intro n
  simp only [A286665, Nat.add_sub_cancel]

end A286665

/-! ## A286665.P17037992984911685573

`char[A003152(n+1)-2]`
-/

namespace A286665.P17037992984911685573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286665.P17037992984911685573

namespace A286665

/-- `char[A003152(n+1)-2]` -/
def P17037992984911685573.Spec : Prop :=
  ∀ n, (P17037992984911685573.a n : ℤ) = A286665 (n + 1)

end A286665

/-! ## A286665.P5452196300880481995

`char[A049472(n)-2+n]`
-/

namespace A286665.P5452196300880481995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 n - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286665.P5452196300880481995

namespace A286665

/-- `char[A049472(n)-2+n]` -/
def P5452196300880481995.Spec : Prop :=
  ∀ n, (P5452196300880481995.a n : ℤ) = A286665 (n + 1)

end A286665

/-! ## A286665.P13076327677522572194

`and(1, A286689(n+1)+1)`
-/

namespace A286665.P13076327677522572194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A286689 (n + 1) + 1)

end

end A286665.P13076327677522572194

namespace A286665

/-- `and(1, A286689(n+1)+1)` -/
def P13076327677522572194.Spec : Prop :=
  ∀ n, P13076327677522572194.a n = A286665 (n + 1)

end A286665

/-! ## A286665.P14255275022895755750

`A000045(1-Δ[A159684(n)])`
-/

namespace A286665.P14255275022895755750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A286665.P14255275022895755750

namespace A286665

/-- `A000045(1-Δ[A159684(n)])` -/
def P14255275022895755750.Spec : Prop :=
  ∀ n, P14255275022895755750.a n = A286665 (n + 1)

end A286665

/-! ## A286665.P14511319446868136230

`A144611(n+2)`
-/

namespace A286665.P14511319446868136230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (n + 2)

end

end A286665.P14511319446868136230

namespace A286665

/-- `A144611(n+2)` -/
def P14511319446868136230.Spec : Prop :=
  ∀ n, P14511319446868136230.a n = A286665 (n + 1)

end A286665

/-! ## A286665.P15973015969253394364

`log2(A080763(n+2))`
-/

namespace A286665.P15973015969253394364
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A080763 (n + 2) : ℝ)

end

end A286665.P15973015969253394364

namespace A286665

/-- `log2(A080763(n+2))` -/
def P15973015969253394364.Spec : Prop :=
  ∀ n, P15973015969253394364.a n = (A286665 (n + 1) : ℝ)

end A286665

/-! ## A286665.P16971657095945143622

`and(1, A006337(n+2))`
-/

namespace A286665.P16971657095945143622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006337 (n + 2))

end

end A286665.P16971657095945143622

namespace A286665

/-- `and(1, A006337(n+2))` -/
def P16971657095945143622.Spec : Prop :=
  ∀ n, P16971657095945143622.a n = A286665 (n + 1)

end A286665

/-! ## A286665.P6658250828883429192

`C(2, A097509(n+2))`
-/

namespace A286665.P6658250828883429192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A097509 (n + 2)).toNat

end

end A286665.P6658250828883429192

namespace A286665

/-- `C(2, A097509(n+2))` -/
def P6658250828883429192.Spec : Prop :=
  ∀ n, (P6658250828883429192.a n : ℤ) = A286665 (n + 1)

end A286665

/-! ## A286665.P16818550442991045314

`C(2, A276862(n+2))`
-/

namespace A286665.P16818550442991045314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A276862 (n + 2)).toNat

end

end A286665.P16818550442991045314

namespace A286665

/-- `C(2, A276862(n+2))` -/
def P16818550442991045314.Spec : Prop :=
  ∀ n, (P16818550442991045314.a n : ℤ) = A286665 (n + 1)

end A286665

/-! ## A286665.P3290561170033241600

`and(1, A352427(n+2)+1)`
-/

namespace A286665.P3290561170033241600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A352427 (n + 2) + 1)

end

end A286665.P3290561170033241600

namespace A286665

/-- `and(1, A352427(n+2)+1)` -/
def P3290561170033241600.Spec : Prop :=
  ∀ n, P3290561170033241600.a n = A286665 (n + 1)

end A286665

/-! ## A286665.P10847304464135526247

`(2-Δ[A286692(n+1)])²`
-/

namespace A286665.P10847304464135526247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (f1 (n + 1) - f1 n)) ^ 2

end

end A286665.P10847304464135526247

namespace A286665

/-- `(2-Δ[A286692(n+1)])²` -/
def P10847304464135526247.Spec : Prop :=
  ∀ n, P10847304464135526247.a n = A286665 (n + 1)

end A286665

/-! ## A286665.P9756150539775772211

`Δ[∑[A080763(n+1)]-n]`
-/

namespace A286665.P9756150539775772211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080763 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286665.P9756150539775772211

namespace A286665

/-- `Δ[∑[A080763(n+1)]-n]` -/
def P9756150539775772211.Spec : Prop :=
  ∀ n, P9756150539775772211.a n = A286665 (n + 1)

end A286665

/-! ## A286665.P17719516807354363413

`Δ[abs(∑[2-A006337(n+1)])]`
-/

namespace A286665.P17719516807354363413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006337 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286665.P17719516807354363413

namespace A286665

/-- `Δ[abs(∑[2-A006337(n+1)])]` -/
def P17719516807354363413.Spec : Prop :=
  ∀ n, P17719516807354363413.a n = A286665 (n + 1)

end A286665

/-! ## A286665.P13217706936252965212

`A001221(Δ[A286803(n+1)])`
-/

namespace A286665.P13217706936252965212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A286665.P13217706936252965212

namespace A286665

/-- `A001221(Δ[A286803(n+1)])` -/
def P13217706936252965212.Spec : Prop :=
  ∀ n, P13217706936252965212.a n = A286665 (n + 1)

end A286665

/-!
# A286666: Positions of 0 in A286665; complement of A286667.

The programs for A286666, the canonical program `A286666.P2262944503126098146` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286666 has offset 1).

The definition of A286666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286666.P14679322378831825775

`floor((n+1)*sqrt(2)+n)`
-/

namespace A286666.P14679322378831825775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ) + (n : ℝ)⌋

end

end A286666.P14679322378831825775

namespace A286666

/-- `floor((n+1)*sqrt(2)+n)` -/
def P14679322378831825775.Spec : Prop :=
  ∀ n, P14679322378831825775.a n = A286666 (n + 1)

end A286666

/-! ## A286666.P2157642835541142191

`∑[A097509(n)]-2`
-/

namespace A286666.P2157642835541142191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A286666.P2157642835541142191

namespace A286666

/-- `∑[A097509(n)]-2` -/
def P2157642835541142191.Spec : Prop :=
  ∀ n, P2157642835541142191.a n = A286666 (n + 1)

end A286666

/-! ## A286666.P2262944503126098146

`A003151(n+1)-1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286666

/-- `A003151(n+1)-1` -/
def P2262944503126098146.Spec : Prop :=
  ∀ n, P2262944503126098146.a n = A286666 (n + 1)

theorem P2262944503126098146.correct : P2262944503126098146.Spec := by
  intro n
  simp only [A286666, Nat.add_sub_cancel]

end A286666

/-! ## A286666.P10408775381748291909

`A080754(n+1)-2`
-/

namespace A286666.P10408775381748291909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1) - 2

end

end A286666.P10408775381748291909

namespace A286666

/-- `A080754(n+1)-2` -/
def P10408775381748291909.Spec : Prop :=
  ∀ n, P10408775381748291909.a n = A286666 (n + 1)

end A286666

/-! ## A286666.P77743660756829620

`A001951(n+1)+n`
-/

namespace A286666.P77743660756829620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1) + (n : ℤ)

end

end A286666.P77743660756829620

namespace A286666

/-- `A001951(n+1)+n` -/
def P77743660756829620.Spec : Prop :=
  ∀ n, P77743660756829620.a n = A286666 (n + 1)

end A286666

/-! ## A286666.P1069296289578862880

`sqrt(A087055(n+1))+n`
-/

namespace A286666.P1069296289578862880
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A087055 (n + 1) : ℝ) + (n : ℝ)

end

end A286666.P1069296289578862880

namespace A286666

/-- `sqrt(A087055(n+1))+n` -/
def P1069296289578862880.Spec : Prop :=
  ∀ n, P1069296289578862880.a n = (A286666 (n + 1) : ℝ)

end A286666

/-! ## A286666.P8260408668449324244

`A022804(n+1)/2-1`
-/

namespace A286666.P8260408668449324244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022804 (n + 1) : ℚ) / 2 - 1

end

end A286666.P8260408668449324244

namespace A286666

/-- `A022804(n+1)/2-1` -/
def P8260408668449324244.Spec : Prop :=
  ∀ n, P8260408668449324244.a n = (A286666 (n + 1) : ℚ)

end A286666

/-! ## A286666.P9486890764432563971

`A395101(n+1)+n+1`
-/

namespace A286666.P9486890764432563971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395101 (n + 1) + (n + 1 : ℤ)

end

end A286666.P9486890764432563971

namespace A286666

/-- `A395101(n+1)+n+1` -/
def P9486890764432563971.Spec : Prop :=
  ∀ n, P9486890764432563971.a n = A286666 (n + 1)

end A286666

/-! ## A286666.P2287268360395810854

`A087057(n+1)-1+n`
-/

namespace A286666.P2287268360395810854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1) - 1 + (n : ℤ)

end

end A286666.P2287268360395810854

namespace A286666

/-- `A087057(n+1)-1+n` -/
def P2287268360395810854.Spec : Prop :=
  ∀ n, P2287268360395810854.a n = A286666 (n + 1)

end A286666

/-! ## A286666.P11032681382924838889

`A184922(n+1)-(n+1)`
-/

namespace A286666.P11032681382924838889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1) - (n + 1 : ℤ)

end

end A286666.P11032681382924838889

namespace A286666

/-- `A184922(n+1)-(n+1)` -/
def P11032681382924838889.Spec : Prop :=
  ∀ n, P11032681382924838889.a n = A286666 (n + 1)

end A286666

/-!
# A286667: Positions of 1 in A286665; complement of A286666.

The programs for A286667, the canonical program `A286667.P2713070744812953764` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286667 has offset 1).

The definition of A286667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286667.P15206676241327824175

`ceil((n+2)/sqrt(2)+n)`
-/

namespace A286667.P15206676241327824175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / Real.sqrt (2 : ℝ) + (n : ℝ)⌉

end

end A286667.P15206676241327824175

namespace A286667

/-- `ceil((n+2)/sqrt(2)+n)` -/
def P15206676241327824175.Spec : Prop :=
  ∀ n, P15206676241327824175.a n = A286667 (n + 1)

end A286667

/-! ## A286667.P2713070744812953764

`∑[A080764(n)+1]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286667

/-- `∑[A080764(n)+1]` -/
def P2713070744812953764.Spec : Prop :=
  ∀ n, P2713070744812953764.a n = A286667 (n + 1)

theorem P2713070744812953764.correct : P2713070744812953764.Spec := by
  intro n
  simp only [A286667, Nat.add_sub_cancel]

end A286667

/-! ## A286667.P17329193699359085962

`round(A288999(n+1)/2)`
-/

namespace A286667.P17329193699359085962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A288999 (n + 1) : ℚ) / 2)

end

end A286667.P17329193699359085962

namespace A286667

/-- `round(A288999(n+1)/2)` -/
def P17329193699359085962.Spec : Prop :=
  ∀ n, P17329193699359085962.a n = A286667 (n + 1)

end A286667

/-! ## A286667.P4084298047244381908

`∑[2-A171588(n+1)]`
-/

namespace A286667.P4084298047244381908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A171588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286667.P4084298047244381908

namespace A286667

/-- `∑[2-A171588(n+1)]` -/
def P4084298047244381908.Spec : Prop :=
  ∀ n, P4084298047244381908.a n = A286667 (n + 1)

end A286667

/-! ## A286667.P6809474373579652340

`∑[gcd(2, A286687(n+1))]`
-/

namespace A286667.P6809474373579652340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A286687 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286667.P6809474373579652340

namespace A286667

/-- `∑[gcd(2, A286687(n+1))]` -/
def P6809474373579652340.Spec : Prop :=
  ∀ n, (P6809474373579652340.a n : ℤ) = A286667 (n + 1)

end A286667

/-! ## A286667.P2399169316819888908

`3*(n+1)-A286924(n+1)`
-/

namespace A286667.P2399169316819888908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A286924 (n + 1)

end

end A286667.P2399169316819888908

namespace A286667

/-- `3*(n+1)-A286924(n+1)` -/
def P2399169316819888908.Spec : Prop :=
  ∀ n, P2399169316819888908.a n = A286667 (n + 1)

end A286667

/-! ## A286667.P8247927592107829932

`A080764(n)+A003152(n+1)`
-/

namespace A286667.P8247927592107829932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 n + A003152 (n + 1)

end

end A286667.P8247927592107829932

namespace A286667

/-- `A080764(n)+A003152(n+1)` -/
def P8247927592107829932.Spec : Prop :=
  ∀ n, P8247927592107829932.a n = A286667 (n + 1)

end A286667

/-! ## A286667.P7117184951123072372

`A080755(n+1)-A171588(n+1)`
-/

namespace A286667.P7117184951123072372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1) - A171588 (n + 1)

end

end A286667.P7117184951123072372

namespace A286667

/-- `A080755(n+1)-A171588(n+1)` -/
def P7117184951123072372.Spec : Prop :=
  ∀ n, P7117184951123072372.a n = A286667 (n + 1)

end A286667

/-! ## A286667.P17964219847204625858

`A286687(n+1)-A183138(n+1)`
-/

namespace A286667.P17964219847204625858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (n + 1) - A183138 (n + 1)

end

end A286667.P17964219847204625858

namespace A286667

/-- `A286687(n+1)-A183138(n+1)` -/
def P17964219847204625858.Spec : Prop :=
  ∀ n, P17964219847204625858.a n = A286667 (n + 1)

end A286667

/-! ## A286667.P18403465282700930794

`∪[A003151(n+1), A082845(n+1)]`
-/

namespace A286667.P18403465282700930794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286667.P18403465282700930794

namespace A286667

/-- `∪[A003151(n+1), A082845(n+1)]` -/
def P18403465282700930794.Spec : Prop :=
  ∀ n, (P18403465282700930794.a n : ℤ) = A286667 (n + 1)

end A286667

/-! ## A286667.P7593305989372248343

`∪[A003151(n+1), A098021(n+1)]`
-/

namespace A286667.P7593305989372248343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286667.P7593305989372248343

namespace A286667

/-- `∪[A003151(n+1), A098021(n+1)]` -/
def P7593305989372248343.Spec : Prop :=
  ∀ n, (P7593305989372248343.a n : ℤ) = A286667 (n + 1)

end A286667

/-! ## A286667.P138045588052947389

`∪[A082845(n+1), A140868(n+1)]`
-/

namespace A286667.P138045588052947389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286667.P138045588052947389

namespace A286667

/-- `∪[A082845(n+1), A140868(n+1)]` -/
def P138045588052947389.Spec : Prop :=
  ∀ n, (P138045588052947389.a n : ℤ) = A286667 (n + 1)

end A286667

/-! ## A286667.P11629987523001915420

`∪[A184118(n+1), A184922(n+1)]`
-/

namespace A286667.P11629987523001915420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286667.P11629987523001915420

namespace A286667

/-- `∪[A184118(n+1), A184922(n+1)]` -/
def P11629987523001915420.Spec : Prop :=
  ∀ n, (P11629987523001915420.a n : ℤ) = A286667 (n + 1)

end A286667

/-! ## A286667.P12741325548556827272

`∪[A080652(n+1), A327207(n+1)]`
-/

namespace A286667.P12741325548556827272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286667.P12741325548556827272

namespace A286667

/-- `∪[A080652(n+1), A327207(n+1)]` -/
def P12741325548556827272.Spec : Prop :=
  ∀ n, (P12741325548556827272.a n : ℤ) = A286667 (n + 1)

end A286667

/-! ## A286667.P11114947254881601053

`∪[A082845(n+1), A327207(n+1)]`
-/

namespace A286667.P11114947254881601053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286667.P11114947254881601053

namespace A286667

/-- `∪[A082845(n+1), A327207(n+1)]` -/
def P11114947254881601053.Spec : Prop :=
  ∀ n, (P11114947254881601053.a n : ℤ) = A286667 (n + 1)

end A286667

/-! ## A286667.P14730373674678885796

`∪[A082845(n+1), A341239(n+1)]`
-/

namespace A286667.P14730373674678885796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286667.P14730373674678885796

namespace A286667

/-- `∪[A082845(n+1), A341239(n+1)]` -/
def P14730373674678885796.Spec : Prop :=
  ∀ n, (P14730373674678885796.a n : ℤ) = A286667 (n + 1)

end A286667

/-! ## A286667.P2499015452022972556

`∪[A098021(n+1), A327207(n+1)]`
-/

namespace A286667.P2499015452022972556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286667.P2499015452022972556

namespace A286667

/-- `∪[A098021(n+1), A327207(n+1)]` -/
def P2499015452022972556.Spec : Prop :=
  ∀ n, (P2499015452022972556.a n : ℤ) = A286667 (n + 1)

end A286667

/-!
# A286668: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 201", based on the 5-celled von Neumann neighborhood.

The programs for A286668, there is no canonical definition to state claims against.
-/

/-! ## A286668.P16135513752839009042

`A007088(A286670(n))`
-/

namespace A286668.P16135513752839009042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286670 n).toNat

end

end A286668.P16135513752839009042

/-! ## A286668.P280635878338806140

`A185544(2*A286670(n))`
-/

namespace A286668.P280635878338806140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286670 n).toNat

end

end A286668.P280635878338806140

/-! ## A286668.P829758486439756010

`A288401(n)-A038219(A199475(n))`
-/

namespace A286668.P829758486439756010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288401 n - A038219 (A199475 n).toNat

end

end A286668.P829758486439756010

/-! ## A286668.P9571470912008005412

`A288401(n)-A286654(A006318(n))`
-/

namespace A286668.P9571470912008005412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288401 n - A286654 (A006318 n).toNat

end

end A286668.P9571470912008005412

/-!
# A286669: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 201", based on the 5-celled von Neumann neighborhood.

The programs for A286669, there is no canonical definition to state claims against.
-/

/-! ## A286669.P2995712015781165316

`A007088(A286671(n))`
-/

namespace A286669.P2995712015781165316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286671 n).toNat

end

end A286669.P2995712015781165316

/-! ## A286669.P12784018704696501458

`A185544(2*A286671(n))`
-/

namespace A286669.P12784018704696501458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286671 n).toNat

end

end A286669.P12784018704696501458

/-!
# A286670: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 201", based on the 5-celled von Neumann neighborhood.

The programs for A286670, there is no canonical definition to state claims against.
-/

/-! ## A286670.P14451512046057696564

`A288403(n)-A038219(A199475(n))`
-/

namespace A286670.P14451512046057696564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288403 n - A038219 (A199475 n).toNat

end

end A286670.P14451512046057696564

/-! ## A286670.P8311026676421516883

`A288403(n)-A340728(A128154(n+1))`
-/

namespace A286670.P8311026676421516883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288403 n - A340728 (A128154 (n + 1)).toNat

end

end A286670.P8311026676421516883

/-! ## A286670.P8814343564397088027

`A288403(n)-A288466(A288492(n+1))`
-/

namespace A286670.P8814343564397088027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288403 n - A288466 (A288492 (n + 1)).toNat

end

end A286670.P8814343564397088027

/-!
# A286672: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 203", based on the 5-celled von Neumann neighborhood.

The programs for A286672, there is no canonical definition to state claims against.
-/

/-! ## A286672.P3434538285671933663

`A007088(A286674(n))`
-/

namespace A286672.P3434538285671933663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286674 n).toNat

end

end A286672.P3434538285671933663

/-! ## A286672.P7469169222767248264

`A305989(A286675(n))`
-/

namespace A286672.P7469169222767248264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A286675 n).toNat

end

end A286672.P7469169222767248264

/-! ## A286672.P13868697052487034061

`A185544(2*A286674(n))`
-/

namespace A286672.P13868697052487034061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286674 n).toNat

end

end A286672.P13868697052487034061

/-! ## A286672.P3809620419316153177

`A215256(2*A286674(n))`
-/

namespace A286672.P3809620419316153177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215256 (2 * A286674 n).toNat

end

end A286672.P3809620419316153177

/-! ## A286672.P3643971722861124015

`A305989(2*A286674(n))`
-/

namespace A286672.P3643971722861124015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (2 * A286674 n).toNat

end

end A286672.P3643971722861124015

/-!
# A286673: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 203", based on the 5-celled von Neumann neighborhood.

The programs for A286673, there is no canonical definition to state claims against.
-/

/-! ## A286673.P16104263340406528641

`A007088(A286675(n))`
-/

namespace A286673.P16104263340406528641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286675 n).toNat

end

end A286673.P16104263340406528641

/-! ## A286673.P2336763676228426254

`A185544(2*A286675(n))`
-/

namespace A286673.P2336763676228426254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286675 n).toNat

end

end A286673.P2336763676228426254

/-!
# A286674: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 203", based on the 5-celled von Neumann neighborhood.

The programs for A286674, there is no canonical definition to state claims against.
-/

/-! ## A286674.P13284231111877192676

`A000265(A286675(n))`
-/

namespace A286674.P13284231111877192676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A286675 n).toNat

end

end A286674.P13284231111877192676

/-! ## A286674.P18186510449574330020

`or(A171435(A286675(n)), A277936(n))`
-/

namespace A286674.P18186510449574330020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A171435 (A286675 n).toNat) (A277936 n)

end

end A286674.P18186510449574330020

/-! ## A286674.P10244944104980245678

`A171435(lcm(A070081(n+1), A286675(n)))`
-/

namespace A286674.P10244944104980245678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (Int.lcm (A070081 (n + 1)) (A286675 n))

end

end A286674.P10244944104980245678

/-! ## A286674.P9792388217130203443

`A171435(2*A286675(n))`
-/

namespace A286674.P9792388217130203443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A286675 n).toNat

end

end A286674.P9792388217130203443

/-! ## A286674.P12051310450839604147

`A302044(2*A286675(n))`
-/

namespace A286674.P12051310450839604147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (2 * A286675 n).toNat

end

end A286674.P12051310450839604147

/-!
# A286675: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 203", based on the 5-celled von Neumann neighborhood.

The programs for A286675, there is no canonical definition to state claims against.
-/

/-! ## A286675.P16460103963804237224

`A277826(lcm(A286025(n), A286674(n)))`
-/

namespace A286675.P16460103963804237224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277826 (Int.lcm (A286025 n) (A286674 n))

end

end A286675.P16460103963804237224

/-! ## A286675.P13787229167554851458

`A090077(A286645(n))*A286674(n)`
-/

namespace A286675.P13787229167554851458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 (A286645 n).toNat * A286674 n

end

end A286675.P13787229167554851458

/-! ## A286675.P8508757292413390816

`A286769(n)+A004016(A117109(2*(n+2)))`
-/

namespace A286675.P8508757292413390816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286769 n + A004016 (A117109 (2 * (n + 2))).toNat

end

end A286675.P8508757292413390816

/-!
# A286679: a(n) = (2*prime(n)^2 + 1)/3.

The programs for A286679, the canonical program `A286679.P15446542537714690972` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286679 has offset 3).

The definition of A286679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286679.P17870024131770630565

`(lcm(2, p?[a(n-1)+2]²)+1)/3` with `a(0)=1, a(1)=5`
-/

namespace A286679.P17870024131770630565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2) + 1 : ℚ) / 3

end

end A286679.P17870024131770630565

namespace A286679

/-- `(lcm(2, p?[a(n-1)+2]²)+1)/3` -/
def P17870024131770630565.Spec : Prop :=
  ∀ n, P17870024131770630565.a n = (A286679 (n + 3) : ℚ)

end A286679

/-! ## A286679.P15446542537714690972

`2*A024700(n+1)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A286679

/-- `2*A024700(n+1)+1` -/
def P15446542537714690972.Spec : Prop :=
  ∀ n, P15446542537714690972.a n = A286679 (n + 3)

theorem P15446542537714690972.correct : P15446542537714690972.Spec := by
  intro n
  simp only [A286679, Nat.add_sub_cancel]

end A286679

/-! ## A286679.P12984651613493392450

`4*A084922(n+3)+1`
-/

namespace A286679.P12984651613493392450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A084922 (n + 3) + 1

end

end A286679.P12984651613493392450

namespace A286679

/-- `4*A084922(n+3)+1` -/
def P12984651613493392450.Spec : Prop :=
  ∀ n, P12984651613493392450.a n = A286679 (n + 3)

end A286679

/-! ## A286679.P10300394864190840235

`8*A081115(n+3)+1`
-/

namespace A286679.P10300394864190840235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A081115 (n + 3) + 1

end

end A286679.P10300394864190840235

namespace A286679

/-- `8*A081115(n+3)+1` -/
def P10300394864190840235.Spec : Prop :=
  ∀ n, P10300394864190840235.a n = A286679 (n + 3)

end A286679

/-! ## A286679.P11823967915519904403

`4*4*A024702(n+3)+1`
-/

namespace A286679.P11823967915519904403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (4 * A024702 (n + 3)) + 1

end

end A286679.P11823967915519904403

namespace A286679

/-- `4*4*A024702(n+3)+1` -/
def P11823967915519904403.Spec : Prop :=
  ∀ n, P11823967915519904403.a n = A286679 (n + 3)

end A286679

/-! ## A286679.P16734764603911936446

`(A143928(n+2)+1)/3`
-/

namespace A286679.P16734764603911936446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143928 (n + 2) + 1 : ℚ) / 3

end

end A286679.P16734764603911936446

namespace A286679

/-- `(A143928(n+2)+1)/3` -/
def P16734764603911936446.Spec : Prop :=
  ∀ n, P16734764603911936446.a n = (A286679 (n + 3) : ℚ)

end A286679

/-! ## A286679.P5862960700217398317

`(A079704(n+3)+1)/3`
-/

namespace A286679.P5862960700217398317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079704 (n + 3) + 1 : ℚ) / 3

end

end A286679.P5862960700217398317

namespace A286679

/-- `(A079704(n+3)+1)/3` -/
def P5862960700217398317.Spec : Prop :=
  ∀ n, P5862960700217398317.a n = (A286679 (n + 3) : ℚ)

end A286679

/-! ## A286679.P408854442615905955

`(A179262(n+3)+2)/3`
-/

namespace A286679.P408854442615905955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179262 (n + 3) + 2 : ℚ) / 3

end

end A286679.P408854442615905955

namespace A286679

/-- `(A179262(n+3)+2)/3` -/
def P408854442615905955.Spec : Prop :=
  ∀ n, P408854442615905955.a n = (A286679 (n + 3) : ℚ)

end A286679

/-! ## A286679.P5589684447387060018

`ceil(2/3*A000040(n+3)²)`
-/

namespace A286679.P5589684447387060018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (A000040 (n + 3) ^ 2 : ℚ)⌉

end

end A286679.P5589684447387060018

namespace A286679

/-- `ceil(2/3*A000040(n+3)²)` -/
def P5589684447387060018.Spec : Prop :=
  ∀ n, P5589684447387060018.a n = A286679 (n + 3)

end A286679

/-! ## A286679.P10379606042006776932

`A001248(n+3)-A024700(n+1)`
-/

namespace A286679.P10379606042006776932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 3) - A024700 (n + 1)

end

end A286679.P10379606042006776932

namespace A286679

/-- `A001248(n+3)-A024700(n+1)` -/
def P10379606042006776932.Spec : Prop :=
  ∀ n, P10379606042006776932.a n = A286679 (n + 3)

end A286679

/-! ## A286679.P2080354920624364776

`A000040(n+3)²-A024700(n+1)`
-/

namespace A286679.P2080354920624364776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) ^ 2 - A024700 (n + 1)

end

end A286679.P2080354920624364776

namespace A286679

/-- `A000040(n+3)²-A024700(n+1)` -/
def P2080354920624364776.Spec : Prop :=
  ∀ n, P2080354920624364776.a n = A286679 (n + 3)

end A286679

/-! ## A286679.P17549587472318312245

`A301695(A005097(n+2))`
-/

namespace A286679.P17549587472318312245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301695 (A005097 (n + 2)).toNat

end

end A286679.P17549587472318312245

namespace A286679

/-- `A301695(A005097(n+2))` -/
def P17549587472318312245.Spec : Prop :=
  ∀ n, P17549587472318312245.a n = A286679 (n + 3)

end A286679

/-! ## A286679.P13861936170700051173

`A071619(p?[2*n+5])`
-/

namespace A286679.P13861936170700051173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A286679.P13861936170700051173

namespace A286679

/-- `A071619(p?[2*n+5])` -/
def P13861936170700051173.Spec : Prop :=
  ∀ n, P13861936170700051173.a n = A286679 (n + 3)

end A286679

/-! ## A286679.P1568101007438773701

`A058331(p?[2*(n+2)+1])/3`
-/

namespace A286679.P1568101007438773701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058331 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 3

end

end A286679.P1568101007438773701

namespace A286679

/-- `A058331(p?[2*(n+2)+1])/3` -/
def P1568101007438773701.Spec : Prop :=
  ∀ n, P1568101007438773701.a n = (A286679 (n + 3) : ℚ)

end A286679

/-! ## A286679.P18354235948762499721

`A071619(A215848(n+1))`
-/

namespace A286679.P18354235948762499721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (A215848 (n + 1)).toNat

end

end A286679.P18354235948762499721

namespace A286679

/-- `A071619(A215848(n+1))` -/
def P18354235948762499721.Spec : Prop :=
  ∀ n, P18354235948762499721.a n = A286679 (n + 3)

end A286679

/-! ## A286679.P1572769440758599473

`A071619(A045344(n+2))`
-/

namespace A286679.P1572769440758599473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (A045344 (n + 2)).toNat

end

end A286679.P1572769440758599473

namespace A286679

/-- `A071619(A045344(n+2))` -/
def P1572769440758599473.Spec : Prop :=
  ∀ n, P1572769440758599473.a n = A286679 (n + 3)

end A286679

/-! ## A286679.P16345301294214129994

`A071619(A065091(n+2))`
-/

namespace A286679.P16345301294214129994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (A065091 (n + 2)).toNat

end

end A286679.P16345301294214129994

namespace A286679

/-- `A071619(A065091(n+2))` -/
def P16345301294214129994.Spec : Prop :=
  ∀ n, P16345301294214129994.a n = A286679 (n + 3)

end A286679

/-! ## A286679.P11844493849030434360

`A071619(A140475(n+2))`
-/

namespace A286679.P11844493849030434360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (A140475 (n + 2)).toNat

end

end A286679.P11844493849030434360

namespace A286679

/-- `A071619(A140475(n+2))` -/
def P11844493849030434360.Spec : Prop :=
  ∀ n, P11844493849030434360.a n = A286679 (n + 3)

end A286679

/-! ## A286679.P10102186797702964081

`A071619(A000040(n+3))`
-/

namespace A286679.P10102186797702964081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (A000040 (n + 3)).toNat

end

end A286679.P10102186797702964081

namespace A286679

/-- `A071619(A000040(n+3))` -/
def P10102186797702964081.Spec : Prop :=
  ∀ n, P10102186797702964081.a n = A286679 (n + 3)

end A286679

/-! ## A286679.P730167168452733872

`A071619(A158611(n+5))`
-/

namespace A286679.P730167168452733872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (A158611 (n + 5)).toNat

end

end A286679.P730167168452733872

namespace A286679

/-- `A071619(A158611(n+5))` -/
def P730167168452733872.Spec : Prop :=
  ∀ n, P730167168452733872.a n = A286679 (n + 3)

end A286679

/-!
# A286682: a(n) = A059784(n+1) - A059784(n)^2.

The programs for A286682, there is no canonical definition to state claims against.
-/

/-! ## A286682.P4526371688909087554

`A134545(A011782(2*n+1))+A087401(n+1)`
-/

namespace A286682.P4526371688909087554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134545 (A011782 (2 * n + 1)).toNat + A087401 (n + 1)

end

end A286682.P4526371688909087554

/-!
# A286683: Even numbers k such that the number of odd divisors of k is equal to the 2-adic valuation of k.

The programs for A286683, the canonical program `A286683.P11327338289831238682` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286683 has offset 1).

The definition of A286683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 506 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286683.P4739294422537841886

`eq[A001227(n+1), A007814(n+1)]+1`
-/

namespace A286683.P4739294422537841886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A286683.P4739294422537841886

namespace A286683

/-- `eq[A001227(n+1), A007814(n+1)]+1` -/
def P4739294422537841886.Spec : Prop :=
  ∀ n, (P4739294422537841886.a n : ℤ) = A286683 (n + 1)

end A286683

/-! ## A286683.P7755221099173150446

`eq[A001227(n+1), A051903(n+1)]+1`
-/

namespace A286683.P7755221099173150446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A286683.P7755221099173150446

namespace A286683

/-- `eq[A001227(n+1), A051903(n+1)]+1` -/
def P7755221099173150446.Spec : Prop :=
  ∀ n, (P7755221099173150446.a n : ℤ) = A286683 (n + 1)

end A286683

/-! ## A286683.P8997231860955209556

`eq[A001227(n+1), A067029(n+1)]+1`
-/

namespace A286683.P8997231860955209556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A286683.P8997231860955209556

namespace A286683

/-- `eq[A001227(n+1), A067029(n+1)]+1` -/
def P8997231860955209556.Spec : Prop :=
  ∀ n, (P8997231860955209556.a n : ℤ) = A286683 (n + 1)

end A286683

/-! ## A286683.P11327338289831238682

`eq[A007814(n+1), A318874(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A286683

/-- `eq[A007814(n+1), A318874(n+1)]+1` -/
def P11327338289831238682.Spec : Prop :=
  ∀ n, (P11327338289831238682.a n : ℤ) = A286683 (n + 1)

theorem P11327338289831238682.correct : P11327338289831238682.Spec := by
  intro n
  simp only [A286683, Nat.add_sub_cancel]

end A286683

/-! ## A286683.P18431901953316781760

`eq[A007814(n+1), A320107(n+1)]+1`
-/

namespace A286683.P18431901953316781760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320107 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A286683.P18431901953316781760

namespace A286683

/-- `eq[A007814(n+1), A320107(n+1)]+1` -/
def P18431901953316781760.Spec : Prop :=
  ∀ n, (P18431901953316781760.a n : ℤ) = A286683 (n + 1)

end A286683

/-! ## A286683.P15212495521757171219

`A014681(eq[val(n+1, 2), A001227(n+1)])`
-/

namespace A286683.P15212495521757171219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286683.P15212495521757171219

namespace A286683

/-- `A014681(eq[val(n+1, 2), A001227(n+1)])` -/
def P15212495521757171219.Spec : Prop :=
  ∀ n, P15212495521757171219.a n = A286683 (n + 1)

end A286683

/-! ## A286683.P2223221398243946435

`A020725(eq[val(n+1, 2), A001227(n+1)])`
-/

namespace A286683.P2223221398243946435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286683.P2223221398243946435

namespace A286683

/-- `A020725(eq[val(n+1, 2), A001227(n+1)])` -/
def P2223221398243946435.Spec : Prop :=
  ∀ n, P2223221398243946435.a n = A286683 (n + 1)

end A286683

/-! ## A286683.P17179656761492187396

`A014681(eq[A001227(n+1), A007814(n+1)])`
-/

namespace A286683.P17179656761492187396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A286683.P17179656761492187396

namespace A286683

/-- `A014681(eq[A001227(n+1), A007814(n+1)])` -/
def P17179656761492187396.Spec : Prop :=
  ∀ n, P17179656761492187396.a n = A286683 (n + 1)

end A286683

/-! ## A286683.P7160777781275964250

`A020725(eq[A001227(n+1), A007814(n+1)])`
-/

namespace A286683.P7160777781275964250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A286683.P7160777781275964250

namespace A286683

/-- `A020725(eq[A001227(n+1), A007814(n+1)])` -/
def P7160777781275964250.Spec : Prop :=
  ∀ n, P7160777781275964250.a n = A286683 (n + 1)

end A286683

/-!
# A286684: Number of pancyclic graphs on n nodes.

The programs for A286684, there is no canonical definition to state claims against.
-/

/-! ## A286684.P14258249469610063921

`A008616(A124562(n)+2)`
-/

namespace A286684.P14258249469610063921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A124562 n + 2).toNat

end

end A286684.P14258249469610063921

/-! ## A286684.P14308722933136141395

`A008616(A124560(∑[n+3])+2)`
-/

namespace A286684.P14308722933136141395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A124560 (∑ j ∈ Finset.range (n + 1), f1 j) + 2).toNat

end

end A286684.P14308722933136141395

/-! ## A286684.P4825598125040540570

`A242062(A082480(n)+A000032(n))`
-/

namespace A286684.P4825598125040540570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A082480 n + A000032 n).toNat

end

end A286684.P4825598125040540570

/-!
# A286685: {0->01, 1->10}-transform of the Pell word, A171588.

The programs for A286685, the canonical program `A286685.P666440380006877132` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286685 has offset 1).

The definition of A286685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286685.P8302330268894995635

`char[Δ[ceil((n+1)/(2-sqrt(2)))]+2*n-1]`
-/

namespace A286685.P8302330268894995635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / (2 - Real.sqrt (2 : ℝ))⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (2 * n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286685.P8302330268894995635

namespace A286685

/-- `char[Δ[ceil((n+1)/(2-sqrt(2)))]+2*n-1]` -/
def P8302330268894995635.Spec : Prop :=
  ∀ n, (P8302330268894995635.a n : ℤ) = A286685 (n + 1)

end A286685

/-! ## A286685.P2859303999351266640

`1-A286726(n+1)`
-/

namespace A286685.P2859303999351266640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286726 (n + 1)

end

end A286685.P2859303999351266640

namespace A286685

/-- `1-A286726(n+1)` -/
def P2859303999351266640.Spec : Prop :=
  ∀ n, P2859303999351266640.a n = A286685 (n + 1)

end A286685

/-! ## A286685.P14892019859770418677

`A286726(xor(1, n)+1)`
-/

namespace A286685.P14892019859770418677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286726 (Nat.xor 1 n + 1)

end

end A286685.P14892019859770418677

namespace A286685

/-- `A286726(xor(1, n)+1)` -/
def P14892019859770418677.Spec : Prop :=
  ∀ n, P14892019859770418677.a n = A286685 (n + 1)

end A286685

/-! ## A286685.P2435430627284008105

`1-char[A286686(n+1)-1]`
-/

namespace A286685.P2435430627284008105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286686 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286685.P2435430627284008105

namespace A286685

/-- `1-char[A286686(n+1)-1]` -/
def P2435430627284008105.Spec : Prop :=
  ∀ n, P2435430627284008105.a n = A286685 (n + 1)

end A286685

/-! ## A286685.P2555594316651143324

`A286726(A004442(n)+1)`
-/

namespace A286685.P2555594316651143324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286726 (A004442 n + 1).toNat

end

end A286685.P2555594316651143324

namespace A286685

/-- `A286726(A004442(n)+1)` -/
def P2555594316651143324.Spec : Prop :=
  ∀ n, P2555594316651143324.a n = A286685 (n + 1)

end A286685

/-! ## A286685.P9233847551295000608

`A286726(A014681(n+1))`
-/

namespace A286685.P9233847551295000608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286726 (A014681 (n + 1)).toNat

end

end A286685.P9233847551295000608

namespace A286685

/-- `A286726(A014681(n+1))` -/
def P9233847551295000608.Spec : Prop :=
  ∀ n, P9233847551295000608.a n = A286685 (n + 1)

end A286685

/-! ## A286685.P8082624481291042644

`A286726(A103889(n+1))`
-/

namespace A286685.P8082624481291042644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286726 (A103889 (n + 1)).toNat

end

end A286685.P8082624481291042644

namespace A286685

/-- `A286726(A103889(n+1))` -/
def P8082624481291042644.Spec : Prop :=
  ∀ n, P8082624481291042644.a n = A286685 (n + 1)

end A286685

/-! ## A286685.P666440380006877132

`A286907(n+1)+A286688(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A286685

/-- `A286907(n+1)+A286688(n+1)` -/
def P666440380006877132.Spec : Prop :=
  ∀ n, P666440380006877132.a n = A286685 (n + 1)

theorem P666440380006877132.correct : P666440380006877132.Spec := by
  intro n
  simp only [A286685, Nat.add_sub_cancel]

end A286685

/-! ## A286685.P6559521417492302747

`A286925(n+2)+A286907(n+1)`
-/

namespace A286685.P6559521417492302747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286925 (n + 2) + A286907 (n + 1)

end

end A286685.P6559521417492302747

namespace A286685

/-- `A286925(n+2)+A286907(n+1)` -/
def P6559521417492302747.Spec : Prop :=
  ∀ n, P6559521417492302747.a n = A286685 (n + 1)

end A286685

/-! ## A286685.P12455050775145091043

`1-A188374(A188397(n+1))`
-/

namespace A286685.P12455050775145091043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A188374 (A188397 (n + 1)).toNat

end

end A286685.P12455050775145091043

namespace A286685

/-- `1-A188374(A188397(n+1))` -/
def P12455050775145091043.Spec : Prop :=
  ∀ n, P12455050775145091043.a n = A286685 (n + 1)

end A286685

/-! ## A286685.P368889660947317390

`A188374(A188397(n+1)+2)`
-/

namespace A286685.P368889660947317390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (A188397 (n + 1) + 2).toNat

end

end A286685.P368889660947317390

namespace A286685

/-- `A188374(A188397(n+1)+2)` -/
def P368889660947317390.Spec : Prop :=
  ∀ n, P368889660947317390.a n = A286685 (n + 1)

end A286685

/-! ## A286685.P9223401740704401151

`A188398(A188397(n+1)+2)`
-/

namespace A286685.P9223401740704401151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188398 (A188397 (n + 1) + 2).toNat

end

end A286685.P9223401740704401151

namespace A286685

/-- `A188398(A188397(n+1)+2)` -/
def P9223401740704401151.Spec : Prop :=
  ∀ n, P9223401740704401151.a n = A286685 (n + 1)

end A286685

/-! ## A286685.P12353139648804910644

`A287028(A001651(n+1))`
-/

namespace A286685.P12353139648804910644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287028 (A001651 (n + 1)).toNat

end

end A286685.P12353139648804910644

namespace A286685

/-- `A287028(A001651(n+1))` -/
def P12353139648804910644.Spec : Prop :=
  ∀ n, P12353139648804910644.a n = A286685 (n + 1)

end A286685

/-! ## A286685.P1514525310517578337

`A287028(A007494(n+1)-1)`
-/

namespace A286685.P1514525310517578337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287028 (A007494 (n + 1) - 1).toNat

end

end A286685.P1514525310517578337

namespace A286685

/-- `A287028(A007494(n+1)-1)` -/
def P1514525310517578337.Spec : Prop :=
  ∀ n, P1514525310517578337.a n = A286685 (n + 1)

end A286685

/-! ## A286685.P4756768269713702393

`A287028(A294732(n+3)-1)`
-/

namespace A286685.P4756768269713702393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287028 (A294732 (n + 3) - 1).toNat

end

end A286685.P4756768269713702393

namespace A286685

/-- `A287028(A294732(n+3)-1)` -/
def P4756768269713702393.Spec : Prop :=
  ∀ n, P4756768269713702393.a n = A286685 (n + 1)

end A286685

/-! ## A286685.P10582750008381780860

`A286990(comp[3*n]+1)`
-/

namespace A286685.P10582750008381780860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286990 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A286685.P10582750008381780860

namespace A286685

/-- `A286990(comp[3*n]+1)` -/
def P10582750008381780860.Spec : Prop :=
  ∀ n, P10582750008381780860.a n = A286685 (n + 1)

end A286685

/-! ## A286685.P17911779041868419118

`A287028(A166517(n)+1)`
-/

namespace A286685.P17911779041868419118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287028 (A166517 n + 1).toNat

end

end A286685.P17911779041868419118

namespace A286685

/-- `A287028(A166517(n)+1)` -/
def P17911779041868419118.Spec : Prop :=
  ∀ n, P17911779041868419118.a n = A286685 (n + 1)

end A286685

/-! ## A286685.P10715142207548940356

`1-A286990(A166517(n)+1)`
-/

namespace A286685.P10715142207548940356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286990 (A166517 n + 1).toNat

end

end A286685.P10715142207548940356

namespace A286685

/-- `1-A286990(A166517(n)+1)` -/
def P10715142207548940356.Spec : Prop :=
  ∀ n, P10715142207548940356.a n = A286685 (n + 1)

end A286685

/-! ## A286685.P4323344305948774159

`A187976(A187978(n+1)+A187973(n+1))`
-/

namespace A286685.P4323344305948774159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187976 (A187978 (n + 1) + A187973 (n + 1)).toNat

end

end A286685.P4323344305948774159

namespace A286685

/-- `A187976(A187978(n+1)+A187973(n+1))` -/
def P4323344305948774159.Spec : Prop :=
  ∀ n, P4323344305948774159.a n = A286685 (n + 1)

end A286685

/-!
# A286686: Positions of 0 in A286685; complement of A286687.

The programs for A286686, the canonical program `A286686.P5308715415208066588` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286686 has offset 1).

The definition of A286686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286686.P4349286110235145718

`2*n+3-Δ[ceil((n+1)/(2-sqrt(2)))]`
-/

namespace A286686.P4349286110235145718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / (2 - Real.sqrt (2 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - (f1 (n + 1) - f1 n)

end

end A286686.P4349286110235145718

namespace A286686

/-- `2*n+3-Δ[ceil((n+1)/(2-sqrt(2)))]` -/
def P4349286110235145718.Spec : Prop :=
  ∀ n, P4349286110235145718.a n = A286686 (n + 1)

end A286686

/-! ## A286686.P5308715415208066588

`abs(A080764(n)-2-2*n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286686

/-- `abs(A080764(n)-2-2*n)` -/
def P5308715415208066588.Spec : Prop :=
  ∀ n, P5308715415208066588.a n = A286686 (n + 1)

theorem P5308715415208066588.correct : P5308715415208066588.Spec := by
  intro n
  simp only [A286686, Nat.add_sub_cancel]

end A286686

/-! ## A286686.P4735545040312764836

`xor(A088837(n+1), A286687(n+1))`
-/

namespace A286686.P4735545040312764836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A286687 (n + 1))

end

end A286686.P4735545040312764836

namespace A286686

/-- `xor(A088837(n+1), A286687(n+1))` -/
def P4735545040312764836.Spec : Prop :=
  ∀ n, P4735545040312764836.a n = A286686 (n + 1)

end A286686

/-! ## A286686.P4973542968664150141

`Δ[A183138(n+1)+n²]`
-/

namespace A286686.P4973542968664150141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286686.P4973542968664150141

namespace A286686

/-- `Δ[A183138(n+1)+n²]` -/
def P4973542968664150141.Spec : Prop :=
  ∀ n, P4973542968664150141.a n = A286686 (n + 1)

end A286686

/-! ## A286686.P6912430804289705095

`Δ[A194920(n+1)+n²]`
-/

namespace A286686.P6912430804289705095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286686.P6912430804289705095

namespace A286686

/-- `Δ[A194920(n+1)+n²]` -/
def P6912430804289705095.Spec : Prop :=
  ∀ n, P6912430804289705095.a n = A286686 (n + 1)

end A286686

/-! ## A286686.P7762029426338135067

`Δ[(n+1)²-A003152(n+1)]`
-/

namespace A286686.P7762029426338135067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A003152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286686.P7762029426338135067

namespace A286686

/-- `Δ[(n+1)²-A003152(n+1)]` -/
def P7762029426338135067.Spec : Prop :=
  ∀ n, P7762029426338135067.a n = A286686 (n + 1)

end A286686

/-! ## A286686.P3330148619939693265

`Δ[(n+1)²-A080755(n+1)]`
-/

namespace A286686.P3330148619939693265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A080755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286686.P3330148619939693265

namespace A286686

/-- `Δ[(n+1)²-A080755(n+1)]` -/
def P3330148619939693265.Spec : Prop :=
  ∀ n, P3330148619939693265.a n = A286686 (n + 1)

end A286686

/-! ## A286686.P5370729033009920922

`Δ[(n+1)²-A083088(n+1)]`
-/

namespace A286686.P5370729033009920922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A083088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286686.P5370729033009920922

namespace A286686

/-- `Δ[(n+1)²-A083088(n+1)]` -/
def P5370729033009920922.Spec : Prop :=
  ∀ n, P5370729033009920922.a n = A286686 (n + 1)

end A286686

/-! ## A286686.P14667817503722742789

`A286908(A286924(n+1))`
-/

namespace A286686.P14667817503722742789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286908 (A286924 (n + 1)).toNat

end

end A286686.P14667817503722742789

namespace A286686

/-- `A286908(A286924(n+1))` -/
def P14667817503722742789.Spec : Prop :=
  ∀ n, P14667817503722742789.a n = A286686 (n + 1)

end A286686

/-! ## A286686.P398687407571064263

`A286689(A003152(n+1))`
-/

namespace A286686.P398687407571064263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286689 (A003152 (n + 1)).toNat

end

end A286686.P398687407571064263

namespace A286686

/-- `A286689(A003152(n+1))` -/
def P398687407571064263.Spec : Prop :=
  ∀ n, P398687407571064263.a n = A286686 (n + 1)

end A286686

/-! ## A286686.P10123404355765720083

`A286689(A285077(n+2)-2)`
-/

namespace A286686.P10123404355765720083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286689 (A285077 (n + 2) - 2).toNat

end

end A286686.P10123404355765720083

namespace A286686

/-- `A286689(A285077(n+2)-2)` -/
def P10123404355765720083.Spec : Prop :=
  ∀ n, P10123404355765720083.a n = A286686 (n + 1)

end A286686

/-! ## A286686.P10292068058180315834

`∩[A286689(n+1), A286908(n+1)]`
-/

namespace A286686.P10292068058180315834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286686.P10292068058180315834

namespace A286686

/-- `∩[A286689(n+1), A286908(n+1)]` -/
def P10292068058180315834.Spec : Prop :=
  ∀ n, (P10292068058180315834.a n : ℤ) = A286686 (n + 1)

end A286686

/-! ## A286686.P13800286461299872215

`filter[n+1, A286726(#)]`
-/

namespace A286686.P13800286461299872215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286726 (f1 j) = 1) n)

end

end A286686.P13800286461299872215

namespace A286686

/-- `filter[n+1, A286726(#)]` -/
def P13800286461299872215.Spec : Prop :=
  ∀ n, (P13800286461299872215.a n : ℤ) = A286686 (n + 1)

end A286686

/-! ## A286686.P11865814117599376345

`record[A286688(n+1)+(n+1)/2^val(n+1, 2)]`
-/

namespace A286686.P11865814117599376345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286688 (n + 1) : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286686.P11865814117599376345

namespace A286686

/-- `record[A286688(n+1)+(n+1)/2^val(n+1, 2)]` -/
def P11865814117599376345.Spec : Prop :=
  ∀ n, P11865814117599376345.a n = (A286686 (n + 1) : ℚ)

end A286686

/-! ## A286686.P13586979189752734181

`A014681(A286687(n+1))`
-/

namespace A286686.P13586979189752734181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A286687 (n + 1)).toNat

end

end A286686.P13586979189752734181

namespace A286686

/-- `A014681(A286687(n+1))` -/
def P13586979189752734181.Spec : Prop :=
  ∀ n, P13586979189752734181.a n = A286686 (n + 1)

end A286686

/-! ## A286686.P18287431637015113204

`A286689(A194990(2*(n+1))+n)`
-/

namespace A286686.P18287431637015113204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286689 (A194990 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A286686.P18287431637015113204

namespace A286686

/-- `A286689(A194990(2*(n+1))+n)` -/
def P18287431637015113204.Spec : Prop :=
  ∀ n, P18287431637015113204.a n = A286686 (n + 1)

end A286686

/-!
# A286687: Positions of 1 in A286685; complement of A286686.

The programs for A286687, the canonical program `A286687.P10039167065829446357` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286687 has offset 1).

The definition of A286687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286687.P8510481463018595115

`Δ[ceil((n+1)/(2-sqrt(2)))]+2*n`
-/

namespace A286687.P8510481463018595115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / (2 - Real.sqrt (2 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (2 * n : ℤ)

end

end A286687.P8510481463018595115

namespace A286687

/-- `Δ[ceil((n+1)/(2-sqrt(2)))]+2*n` -/
def P8510481463018595115.Spec : Prop :=
  ∀ n, P8510481463018595115.a n = A286687 (n + 1)

end A286687

/-! ## A286687.P10039167065829446357

`abs(A080764(n)+Δ[n²])`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286687

/-- `abs(A080764(n)+Δ[n²])` -/
def P10039167065829446357.Spec : Prop :=
  ∀ n, P10039167065829446357.a n = A286687 (n + 1)

theorem P10039167065829446357.correct : P10039167065829446357.Spec := by
  intro n
  simp only [A286687, Nat.add_sub_cancel]

end A286687

/-! ## A286687.P8042399250625388367

`comp[2*n-A188295(n+1)]`
-/

namespace A286687.P8042399250625388367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A188295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A286687.P8042399250625388367

namespace A286687

/-- `comp[2*n-A188295(n+1)]` -/
def P8042399250625388367.Spec : Prop :=
  ∀ n, (P8042399250625388367.a n : ℤ) = A286687 (n + 1)

end A286687

/-! ## A286687.P13715122200950499255

`abs(2*(n+1)-A171588(n+1))`
-/

namespace A286687.P13715122200950499255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (n + 1) : ℤ) - A171588 (n + 1)|

end

end A286687.P13715122200950499255

namespace A286687

/-- `abs(2*(n+1)-A171588(n+1))` -/
def P13715122200950499255.Spec : Prop :=
  ∀ n, P13715122200950499255.a n = A286687 (n + 1)

end A286687

/-! ## A286687.P17080142221967174395

`xor(A088837(n+1), A286686(n+1))`
-/

namespace A286687.P17080142221967174395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A088837 (n + 1)) (A286686 (n + 1))

end

end A286687.P17080142221967174395

namespace A286687

/-- `xor(A088837(n+1), A286686(n+1))` -/
def P17080142221967174395.Spec : Prop :=
  ∀ n, P17080142221967174395.a n = A286687 (n + 1)

end A286687

/-! ## A286687.P2324356877605173302

`∪[A286690(n+1), A286909(n+1)]`
-/

namespace A286687.P2324356877605173302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286687.P2324356877605173302

namespace A286687

/-- `∪[A286690(n+1), A286909(n+1)]` -/
def P2324356877605173302.Spec : Prop :=
  ∀ n, (P2324356877605173302.a n : ℤ) = A286687 (n + 1)

end A286687

/-! ## A286687.P2211286542504324940

`Δ[A049472(n+1)+n²]`
-/

namespace A286687.P2211286542504324940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286687.P2211286542504324940

namespace A286687

/-- `Δ[A049472(n+1)+n²]` -/
def P2211286542504324940.Spec : Prop :=
  ∀ n, P2211286542504324940.a n = A286687 (n + 1)

end A286687

/-! ## A286687.P11121876232284355923

`Δ[A049474(n+1)+n²]`
-/

namespace A286687.P11121876232284355923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286687.P11121876232284355923

namespace A286687

/-- `Δ[A049474(n+1)+n²]` -/
def P11121876232284355923.Spec : Prop :=
  ∀ n, P11121876232284355923.a n = A286687 (n + 1)

end A286687

/-! ## A286687.P14876390815190680079

`Δ[A182769(n+1)+(1-n)²]`
-/

namespace A286687.P14876390815190680079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182769 (n + 1) + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286687.P14876390815190680079

namespace A286687

/-- `Δ[A182769(n+1)+(1-n)²]` -/
def P14876390815190680079.Spec : Prop :=
  ∀ n, P14876390815190680079.a n = A286687 (n + 1)

end A286687

/-! ## A286687.P17934914748750180450

`Δ[(n+1)²-A187328(n+1)]`
-/

namespace A286687.P17934914748750180450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A187328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286687.P17934914748750180450

namespace A286687

/-- `Δ[(n+1)²-A187328(n+1)]` -/
def P17934914748750180450.Spec : Prop :=
  ∀ n, P17934914748750180450.a n = A286687 (n + 1)

end A286687

/-! ## A286687.P7699405279089342122

`Δ[(n+1)²-A195128(n+1)]`
-/

namespace A286687.P7699405279089342122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A195128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286687.P7699405279089342122

namespace A286687

/-- `Δ[(n+1)²-A195128(n+1)]` -/
def P7699405279089342122.Spec : Prop :=
  ∀ n, P7699405279089342122.a n = A286687 (n + 1)

end A286687

/-! ## A286687.P18125835085119964175

`Δ[Δ[A022776(n+1)]+n²]`
-/

namespace A286687.P18125835085119964175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286687.P18125835085119964175

namespace A286687

/-- `Δ[Δ[A022776(n+1)]+n²]` -/
def P18125835085119964175.Spec : Prop :=
  ∀ n, P18125835085119964175.a n = A286687 (n + 1)

end A286687

/-! ## A286687.P12569461480743079974

`A187394(A286667(n+1))`
-/

namespace A286687.P12569461480743079974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187394 (A286667 (n + 1)).toNat

end

end A286687.P12569461480743079974

namespace A286687

/-- `A187394(A286667(n+1))` -/
def P12569461480743079974.Spec : Prop :=
  ∀ n, P12569461480743079974.a n = A286687 (n + 1)

end A286687

/-! ## A286687.P16045542832318591579

`A187394(A003152(n+2)-1)`
-/

namespace A286687.P16045542832318591579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187394 (A003152 (n + 2) - 1).toNat

end

end A286687.P16045542832318591579

namespace A286687

/-- `A187394(A003152(n+2)-1)` -/
def P16045542832318591579.Spec : Prop :=
  ∀ n, P16045542832318591579.a n = A286687 (n + 1)

end A286687

/-! ## A286687.P7150864642191274295

`A286926(A049472(n+2)+n+1)`
-/

namespace A286687.P7150864642191274295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286926 (A049472 (n + 2) + (n + 1 : ℤ)).toNat

end

end A286687.P7150864642191274295

namespace A286687

/-- `A286926(A049472(n+2)+n+1)` -/
def P7150864642191274295.Spec : Prop :=
  ∀ n, P7150864642191274295.a n = A286687 (n + 1)

end A286687

/-! ## A286687.P17133846407439800180

`filter[n+1, A286685(#)]`
-/

namespace A286687.P17133846407439800180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286685 (f1 j) = 1) n)

end

end A286687.P17133846407439800180

namespace A286687

/-- `filter[n+1, A286685(#)]` -/
def P17133846407439800180.Spec : Prop :=
  ∀ n, (P17133846407439800180.a n : ℤ) = A286687 (n + 1)

end A286687

/-! ## A286687.P7022162440816813450

`A014681(A286686(n+1))`
-/

namespace A286687.P7022162440816813450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A286686 (n + 1)).toNat

end

end A286687.P7022162440816813450

namespace A286687

/-- `A014681(A286686(n+1))` -/
def P7022162440816813450.Spec : Prop :=
  ∀ n, P7022162440816813450.a n = A286687 (n + 1)

end A286687

/-! ## A286687.P15922921160448204388

`Δ[A194990(2*(n+1))+n²]`
-/

namespace A286687.P15922921160448204388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (2 * (n + 1)) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286687.P15922921160448204388

namespace A286687

/-- `Δ[A194990(2*(n+1))+n²]` -/
def P15922921160448204388.Spec : Prop :=
  ∀ n, P15922921160448204388.a n = A286687 (n + 1)

end A286687

/-! ## A286687.P1204081580345689043

`Δ[A002265(A022842(n+1))+n²]`
-/

namespace A286687.P1204081580345689043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A022842 (n + 1)).toNat + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286687.P1204081580345689043

namespace A286687

/-- `Δ[A002265(A022842(n+1))+n²]` -/
def P1204081580345689043.Spec : Prop :=
  ∀ n, P1204081580345689043.a n = A286687 (n + 1)

end A286687

/-! ## A286687.P11083476573622650184

`A183138(2*2*A286667(n+1))`
-/

namespace A286687.P11083476573622650184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (2 * (2 * A286667 (n + 1))).toNat

end

end A286687.P11083476573622650184

namespace A286687

/-- `A183138(2*2*A286667(n+1))` -/
def P11083476573622650184.Spec : Prop :=
  ∀ n, P11083476573622650184.a n = A286687 (n + 1)

end A286687

/-!
# A286688: {0->00, 1->10}-transform of the Pell word, A171588.

The programs for A286688, the canonical program `A286688.P12697212265259802839` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286688 has offset 1).

The definition of A286688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286688.P13604569764590901391

`char[2*comp[floor(n*sqrt(2))-1]]`
-/

namespace A286688.P13604569764590901391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A286688.P13604569764590901391

namespace A286688

/-- `char[2*comp[floor(n*sqrt(2))-1]]` -/
def P13604569764590901391.Spec : Prop :=
  ∀ n, (P13604569764590901391.a n : ℤ) = A286688 (n + 1)

end A286688

/-! ## A286688.P13964122450434829834

`A286925(xor(1, n)+1)`
-/

namespace A286688.P13964122450434829834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286925 (Nat.xor 1 n + 1)

end

end A286688.P13964122450434829834

namespace A286688

/-- `A286925(xor(1, n)+1)` -/
def P13964122450434829834.Spec : Prop :=
  ∀ n, P13964122450434829834.a n = A286688 (n + 1)

end A286688

/-! ## A286688.P7395660490112812812

`and(n+1, A286685(n+1))`
-/

namespace A286688.P7395660490112812812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A286685 (n + 1))

end

end A286688.P7395660490112812812

namespace A286688

/-- `and(n+1, A286685(n+1))` -/
def P7395660490112812812.Spec : Prop :=
  ∀ n, P7395660490112812812.a n = A286688 (n + 1)

end A286688

/-! ## A286688.P12697212265259802839

`A171588(n+1-gcd(n, ∑[n]))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286688

/-- `A171588(n+1-gcd(n, ∑[n]))` -/
def P12697212265259802839.Spec : Prop :=
  ∀ n, P12697212265259802839.a n = A286688 (n + 1)

theorem P12697212265259802839.correct : P12697212265259802839.Spec := by
  intro n
  simp only [A286688, Nat.add_sub_cancel]

end A286688

/-! ## A286688.P14222627303049540193

`A171588(A158416(n))`
-/

namespace A286688.P14222627303049540193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (A158416 n).toNat

end

end A286688.P14222627303049540193

namespace A286688

/-- `A171588(A158416(n))` -/
def P14222627303049540193.Spec : Prop :=
  ∀ n, P14222627303049540193.a n = A286688 (n + 1)

end A286688

/-! ## A286688.P12273005653718997957

`A286925(A004442(n)+1)`
-/

namespace A286688.P12273005653718997957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286925 (A004442 n + 1).toNat

end

end A286688.P12273005653718997957

namespace A286688

/-- `A286925(A004442(n)+1)` -/
def P12273005653718997957.Spec : Prop :=
  ∀ n, P12273005653718997957.a n = A286688 (n + 1)

end A286688

/-! ## A286688.P7130768714076940446

`A289035(A019303(n+1))`
-/

namespace A286688.P7130768714076940446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289035 (A019303 (n + 1)).toNat

end

end A286688.P7130768714076940446

namespace A286688

/-- `A289035(A019303(n+1))` -/
def P7130768714076940446.Spec : Prop :=
  ∀ n, P7130768714076940446.a n = A286688 (n + 1)

end A286688

/-! ## A286688.P11832877333863944708

`A286685(A093178(n+1))`
-/

namespace A286688.P11832877333863944708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286685 (A093178 (n + 1)).toNat

end

end A286688.P11832877333863944708

namespace A286688

/-- `A286685(A093178(n+1))` -/
def P11832877333863944708.Spec : Prop :=
  ∀ n, P11832877333863944708.a n = A286688 (n + 1)

end A286688

/-! ## A286688.P10425029183288510989

`1-A080764(A142150(n))`
-/

namespace A286688.P10425029183288510989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080764 (A142150 n).toNat

end

end A286688.P10425029183288510989

namespace A286688

/-- `1-A080764(A142150(n))` -/
def P10425029183288510989.Spec : Prop :=
  ∀ n, P10425029183288510989.a n = A286688 (n + 1)

end A286688

/-! ## A286688.P1022955059056232121

`A286726(A093178(n+1)+1)`
-/

namespace A286688.P1022955059056232121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286726 (A093178 (n + 1) + 1).toNat

end

end A286688.P1022955059056232121

namespace A286688

/-- `A286726(A093178(n+1)+1)` -/
def P1022955059056232121.Spec : Prop :=
  ∀ n, P1022955059056232121.a n = A286688 (n + 1)

end A286688

/-! ## A286688.P11903416333844345005

`A286685(A286726(n+1)+n)`
-/

namespace A286688.P11903416333844345005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286685 (A286726 (n + 1) + (n : ℤ)).toNat

end

end A286688.P11903416333844345005

namespace A286688

/-- `A286685(A286726(n+1)+n)` -/
def P11903416333844345005.Spec : Prop :=
  ∀ n, P11903416333844345005.a n = A286688 (n + 1)

end A286688

/-! ## A286688.P14187486070958977806

`A059841(n)*A286685(n+1)`
-/

namespace A286688.P14187486070958977806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A286685 (n + 1)

end

end A286688.P14187486070958977806

namespace A286688

/-- `A059841(n)*A286685(n+1)` -/
def P14187486070958977806.Spec : Prop :=
  ∀ n, P14187486070958977806.a n = A286688 (n + 1)

end A286688

/-! ## A286688.P9743810431612165893

`A267043(n)*A286685(n+1)`
-/

namespace A286688.P9743810431612165893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267043 n * A286685 (n + 1)

end

end A286688.P9743810431612165893

namespace A286688

/-- `A267043(n)*A286685(n+1)` -/
def P9743810431612165893.Spec : Prop :=
  ∀ n, P9743810431612165893.a n = A286688 (n + 1)

end A286688

/-! ## A286688.P5650655240424642307

`A286685(1-A286685(n+1)+n)`
-/

namespace A286688.P5650655240424642307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286685 (1 - A286685 (n + 1) + (n : ℤ)).toNat

end

end A286688.P5650655240424642307

namespace A286688

/-- `A286685(1-A286685(n+1)+n)` -/
def P5650655240424642307.Spec : Prop :=
  ∀ n, P5650655240424642307.a n = A286688 (n + 1)

end A286688

/-! ## A286688.P4856857252212597222

`1-A286726(A286726(n+1)+n)`
-/

namespace A286688.P4856857252212597222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286726 (A286726 (n + 1) + (n : ℤ)).toNat

end

end A286688.P4856857252212597222

namespace A286688

/-- `1-A286726(A286726(n+1)+n)` -/
def P4856857252212597222.Spec : Prop :=
  ∀ n, P4856857252212597222.a n = A286688 (n + 1)

end A286688

/-! ## A286688.P13388869628083191711

`A286925(n+2)`
-/

namespace A286688.P13388869628083191711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286925 (n + 2)

end

end A286688.P13388869628083191711

namespace A286688

/-- `A286925(n+2)` -/
def P13388869628083191711.Spec : Prop :=
  ∀ n, P13388869628083191711.a n = A286688 (n + 1)

end A286688

/-! ## A286688.P2094078279346507774

`and(n+1, A286726(n+2))`
-/

namespace A286688.P2094078279346507774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A286726 (n + 2))

end

end A286688.P2094078279346507774

namespace A286688

/-- `and(n+1, A286726(n+2))` -/
def P2094078279346507774.Spec : Prop :=
  ∀ n, P2094078279346507774.a n = A286688 (n + 1)

end A286688

/-! ## A286688.P12032826748135044667

`Δ[A194920(A080513(n))]`
-/

namespace A286688.P12032826748135044667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A080513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286688.P12032826748135044667

namespace A286688

/-- `Δ[A194920(A080513(n))]` -/
def P12032826748135044667.Spec : Prop :=
  ∀ n, P12032826748135044667.a n = A286688 (n + 1)

end A286688

/-! ## A286688.P3927928256939007855

`A171588(A152271(n+1))`
-/

namespace A286688.P3927928256939007855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (A152271 (n + 1)).toNat

end

end A286688.P3927928256939007855

namespace A286688

/-- `A171588(A152271(n+1))` -/
def P3927928256939007855.Spec : Prop :=
  ∀ n, P3927928256939007855.a n = A286688 (n + 1)

end A286688

/-! ## A286688.P9665155158404501777

`A286726(A133265(n+1))`
-/

namespace A286688.P9665155158404501777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286726 (A133265 (n + 1)).toNat

end

end A286688.P9665155158404501777

namespace A286688

/-- `A286726(A133265(n+1))` -/
def P9665155158404501777.Spec : Prop :=
  ∀ n, P9665155158404501777.a n = A286688 (n + 1)

end A286688

/-!
# A286689: Positions of 0 in A286688; complement of A286690.

The programs for A286689, the canonical program `A286689.P1415532130380415468` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286689 has offset 1).

The definition of A286689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286689.P1415532130380415468

`∑[2-A187967(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A286689

/-- `∑[2-A187967(n+1)]` -/
def P1415532130380415468.Spec : Prop :=
  ∀ n, P1415532130380415468.a n = A286689 (n + 1)

theorem P1415532130380415468.correct : P1415532130380415468.Spec := by
  intro n
  simp only [A286689, Nat.add_sub_cancel]

end A286689

/-! ## A286689.P12385372553094887444

`∑[char[A140868(n+1)]+1]`
-/

namespace A286689.P12385372553094887444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140868 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286689.P12385372553094887444

namespace A286689

/-- `∑[char[A140868(n+1)]+1]` -/
def P12385372553094887444.Spec : Prop :=
  ∀ n, (P12385372553094887444.a n : ℤ) = A286689 (n + 1)

end A286689

/-! ## A286689.P12662064718984214836

`floor(2*(A286803(n+1)+1)/3)`
-/

namespace A286689.P12662064718984214836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (A286803 (n + 1) + 1) : ℚ) / 3⌋

end

end A286689.P12662064718984214836

namespace A286689

/-- `floor(2*(A286803(n+1)+1)/3)` -/
def P12662064718984214836.Spec : Prop :=
  ∀ n, P12662064718984214836.a n = A286689 (n + 1)

end A286689

/-! ## A286689.P16248027977528027557

`comp[2*(A001952(n+1)-1)]+1`
-/

namespace A286689.P16248027977528027557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001952 (n + 1) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286689.P16248027977528027557

namespace A286689

/-- `comp[2*(A001952(n+1)-1)]+1` -/
def P16248027977528027557.Spec : Prop :=
  ∀ n, (P16248027977528027557.a n : ℤ) = A286689 (n + 1)

end A286689

/-! ## A286689.P14444449875777743665

`∑[A000032(abs(Δ[A159684(n)]))]`
-/

namespace A286689.P14444449875777743665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 |f2 (n + 1) - f2 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286689.P14444449875777743665

namespace A286689

/-- `∑[A000032(abs(Δ[A159684(n)]))]` -/
def P14444449875777743665.Spec : Prop :=
  ∀ n, P14444449875777743665.a n = A286689 (n + 1)

end A286689

/-! ## A286689.P12402328496943553205

`∑[A000032(Δ[A159684(n)]²)]`
-/

namespace A286689.P12402328496943553205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286689.P12402328496943553205

namespace A286689

/-- `∑[A000032(Δ[A159684(n)]²)]` -/
def P12402328496943553205.Spec : Prop :=
  ∀ n, P12402328496943553205.a n = A286689 (n + 1)

end A286689

/-! ## A286689.P7263421124240411758

`A054071(A054071(n+1))+n`
-/

namespace A286689.P7263421124240411758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (A054071 (n + 1)).toNat + (n : ℤ)

end

end A286689.P7263421124240411758

namespace A286689

/-- `A054071(A054071(n+1))+n` -/
def P7263421124240411758.Spec : Prop :=
  ∀ n, P7263421124240411758.a n = A286689 (n + 1)

end A286689

/-! ## A286689.P5263184661058365984

`∪[A286686(n+1), A004277(n)]`
-/

namespace A286689.P5263184661058365984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286689.P5263184661058365984

namespace A286689

/-- `∪[A286686(n+1), A004277(n)]` -/
def P5263184661058365984.Spec : Prop :=
  ∀ n, (P5263184661058365984.a n : ℤ) = A286689 (n + 1)

end A286689

/-! ## A286689.P935424811613875882

`A286992(n+1)-A074840(n+1)`
-/

namespace A286689.P935424811613875882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286992 (n + 1) - A074840 (n + 1)

end

end A286689.P935424811613875882

namespace A286689

/-- `A286992(n+1)-A074840(n+1)` -/
def P935424811613875882.Spec : Prop :=
  ∀ n, P935424811613875882.a n = A286689 (n + 1)

end A286689

/-! ## A286689.P5790888766871133950

`∪[A004278(n+1), A286686(n+1)]`
-/

namespace A286689.P5790888766871133950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286689.P5790888766871133950

namespace A286689

/-- `∪[A004278(n+1), A286686(n+1)]` -/
def P5790888766871133950.Spec : Prop :=
  ∀ n, (P5790888766871133950.a n : ℤ) = A286689 (n + 1)

end A286689

/-! ## A286689.P4387111443764372129

`∪[A286686(n+1), A286909(n+1)]`
-/

namespace A286689.P4387111443764372129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286909 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286689.P4387111443764372129

namespace A286689

/-- `∪[A286686(n+1), A286909(n+1)]` -/
def P4387111443764372129.Spec : Prop :=
  ∀ n, (P4387111443764372129.a n : ℤ) = A286689 (n + 1)

end A286689

/-! ## A286689.P8186235510027025916

`∑[char[A003151(A003151(n+1))]+1]`
-/

namespace A286689.P8186235510027025916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A003151 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286689.P8186235510027025916

namespace A286689

/-- `∑[char[A003151(A003151(n+1))]+1]` -/
def P8186235510027025916.Spec : Prop :=
  ∀ n, (P8186235510027025916.a n : ℤ) = A286689 (n + 1)

end A286689

/-! ## A286689.P2227131979036914977

`comp[A171588(n+1)*A286687(n+1)]`
-/

namespace A286689.P2227131979036914977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (n + 1) * A286687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A286689.P2227131979036914977

namespace A286689

/-- `comp[A171588(n+1)*A286687(n+1)]` -/
def P2227131979036914977.Spec : Prop :=
  ∀ n, (P2227131979036914977.a n : ℤ) = A286689 (n + 1)

end A286689

/-! ## A286689.P661650578931005020

`∪[A004281(n+1), A286687(n+2)]-1`
-/

namespace A286689.P661650578931005020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A286689.P661650578931005020

namespace A286689

/-- `∪[A004281(n+1), A286687(n+2)]-1` -/
def P661650578931005020.Spec : Prop :=
  ∀ n, P661650578931005020.a n = A286689 (n + 1)

end A286689

/-! ## A286689.P3672630890807906341

`∪[A004281(n+1), A286909(n+2)]-1`
-/

namespace A286689.P3672630890807906341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286909 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A286689.P3672630890807906341

namespace A286689

/-- `∪[A004281(n+1), A286909(n+2)]-1` -/
def P3672630890807906341.Spec : Prop :=
  ∀ n, P3672630890807906341.a n = A286689 (n + 1)

end A286689

/-! ## A286689.P16482125507207976012

`A286926(n+2)-1`
-/

namespace A286689.P16482125507207976012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286926 (n + 2) - 1

end

end A286689.P16482125507207976012

namespace A286689

/-- `A286926(n+2)-1` -/
def P16482125507207976012.Spec : Prop :=
  ∀ n, P16482125507207976012.a n = A286689 (n + 1)

end A286689

/-! ## A286689.P88457372480845208

`∑[A080763(A080763(n+1)+n)]`
-/

namespace A286689.P88457372480845208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080763 (A080763 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286689.P88457372480845208

namespace A286689

/-- `∑[A080763(A080763(n+1)+n)]` -/
def P88457372480845208.Spec : Prop :=
  ∀ n, P88457372480845208.a n = A286689 (n + 1)

end A286689

/-! ## A286689.P2896130244930449117

`∑[A000032(abs(Δ[A006337(n+1)]))]`
-/

namespace A286689.P2896130244930449117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 |f2 (n + 1) - f2 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286689.P2896130244930449117

namespace A286689

/-- `∑[A000032(abs(Δ[A006337(n+1)]))]` -/
def P2896130244930449117.Spec : Prop :=
  ∀ n, P2896130244930449117.a n = A286689 (n + 1)

end A286689

/-! ## A286689.P14467779894029730152

`∑[A000032(Δ[A006337(n+1)]²)]`
-/

namespace A286689.P14467779894029730152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286689.P14467779894029730152

namespace A286689

/-- `∑[A000032(Δ[A006337(n+1)]²)]` -/
def P14467779894029730152.Spec : Prop :=
  ∀ n, P14467779894029730152.a n = A286689 (n + 1)

end A286689

/-!
# A286690: Positions of 1 in A286688; complement of A286689.

The programs for A286690, the canonical program `A286690.P16119741026963914011` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286690 has offset 1).

The definition of A286690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286690.P13871058795380877707

`2*comp[floor(n*sqrt(2))]-1`
-/

namespace A286690.P13871058795380877707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A286690.P13871058795380877707

namespace A286690

/-- `2*comp[floor(n*sqrt(2))]-1` -/
def P13871058795380877707.Spec : Prop :=
  ∀ n, P13871058795380877707.a n = A286690 (n + 1)

end A286690

/-! ## A286690.P14487084718472409809

`abs(1-A286927(n+1))`
-/

namespace A286690.P14487084718472409809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A286927 (n + 1)|

end

end A286690.P14487084718472409809

namespace A286690

/-- `abs(1-A286927(n+1))` -/
def P14487084718472409809.Spec : Prop :=
  ∀ n, P14487084718472409809.a n = A286690 (n + 1)

end A286690

/-! ## A286690.P16119741026963914011

`or(1, A098021(n+1)+n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286690

/-- `or(1, A098021(n+1)+n)` -/
def P16119741026963914011.Spec : Prop :=
  ∀ n, P16119741026963914011.a n = A286690 (n + 1)

theorem P16119741026963914011.correct : P16119741026963914011.Spec := by
  intro n
  simp only [A286690, Nat.add_sub_cancel]

end A286690

/-! ## A286690.P10263873884520723042

`floor(sqrt(2)*A022804(n+1))`
-/

namespace A286690.P10263873884520723042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A022804 (n + 1) : ℝ)⌋

end

end A286690.P10263873884520723042

namespace A286690

/-- `floor(sqrt(2)*A022804(n+1))` -/
def P10263873884520723042.Spec : Prop :=
  ∀ n, P10263873884520723042.a n = A286690 (n + 1)

end A286690

/-! ## A286690.P9862048831633960413

`abs(1-2*A001952(n+1))`
-/

namespace A286690.P9862048831633960413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A001952 (n + 1)|

end

end A286690.P9862048831633960413

namespace A286690

/-- `abs(1-2*A001952(n+1))` -/
def P9862048831633960413.Spec : Prop :=
  ∀ n, P9862048831633960413.a n = A286690 (n + 1)

end A286690

/-! ## A286690.P107567229699586229

`A000027(2*(A001952(n+1)-1)+1)`
-/

namespace A286690.P107567229699586229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * (A001952 (n + 1) - 1) + 1).toNat

end

end A286690.P107567229699586229

namespace A286690

/-- `A000027(2*(A001952(n+1)-1)+1)` -/
def P107567229699586229.Spec : Prop :=
  ∀ n, P107567229699586229.a n = A286690 (n + 1)

end A286690

/-! ## A286690.P5396804049337966477

`record[2*A026250(n+1)-1]`
-/

namespace A286690.P5396804049337966477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026250 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286690.P5396804049337966477

namespace A286690

/-- `record[2*A026250(n+1)-1]` -/
def P5396804049337966477.Spec : Prop :=
  ∀ n, P5396804049337966477.a n = A286690 (n + 1)

end A286690

/-! ## A286690.P15119112250648353309

`or(1, A288999(2*n+1)+1)`
-/

namespace A286690.P15119112250648353309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A288999 (2 * n + 1) + 1)

end

end A286690.P15119112250648353309

namespace A286690

/-- `or(1, A288999(2*n+1)+1)` -/
def P15119112250648353309.Spec : Prop :=
  ∀ n, P15119112250648353309.a n = A286690 (n + 1)

end A286690

/-! ## A286690.P17913247648312835496

`A022842(A003151(n+1))`
-/

namespace A286690.P17913247648312835496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (A003151 (n + 1)).toNat

end

end A286690.P17913247648312835496

namespace A286690

/-- `A022842(A003151(n+1))` -/
def P17913247648312835496.Spec : Prop :=
  ∀ n, P17913247648312835496.a n = A286690 (n + 1)

end A286690

/-! ## A286690.P14249802085364297822

`A191406(A286666(n+1))`
-/

namespace A286690.P14249802085364297822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191406 (A286666 (n + 1)).toNat

end

end A286690.P14249802085364297822

namespace A286690

/-- `A191406(A286666(n+1))` -/
def P14249802085364297822.Spec : Prop :=
  ∀ n, P14249802085364297822.a n = A286690 (n + 1)

end A286690

/-! ## A286690.P8604628582215844892

`A191406(A001951(n+1)+n)`
-/

namespace A286690.P8604628582215844892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191406 (A001951 (n + 1) + (n : ℤ)).toNat

end

end A286690.P8604628582215844892

namespace A286690

/-- `A191406(A001951(n+1)+n)` -/
def P8604628582215844892.Spec : Prop :=
  ∀ n, P8604628582215844892.a n = A286690 (n + 1)

end A286690

/-! ## A286690.P11685363997102566906

`A022842(A001951(n+1)+n+1)`
-/

namespace A286690.P11685363997102566906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (A001951 (n + 1) + (n + 1 : ℤ)).toNat

end

end A286690.P11685363997102566906

namespace A286690

/-- `A022842(A001951(n+1)+n+1)` -/
def P11685363997102566906.Spec : Prop :=
  ∀ n, P11685363997102566906.a n = A286690 (n + 1)

end A286690

/-! ## A286690.P7164150944619263954

`A022842(A001952(n+1)-(n+1))`
-/

namespace A286690.P7164150944619263954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (A001952 (n + 1) - (n + 1 : ℤ)).toNat

end

end A286690.P7164150944619263954

namespace A286690

/-- `A022842(A001952(n+1)-(n+1))` -/
def P7164150944619263954.Spec : Prop :=
  ∀ n, P7164150944619263954.a n = A286690 (n + 1)

end A286690

/-! ## A286690.P1033525081892462799

`A191406(A001952(n+1)-(n+2))`
-/

namespace A286690.P1033525081892462799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191406 (A001952 (n + 1) - (n + 2 : ℤ)).toNat

end

end A286690.P1033525081892462799

namespace A286690

/-- `A191406(A001952(n+1)-(n+2))` -/
def P1033525081892462799.Spec : Prop :=
  ∀ n, P1033525081892462799.a n = A286690 (n + 1)

end A286690

/-! ## A286690.P12545522816414062066

`∩[2*n+1, A286687(n+1)]`
-/

namespace A286690.P12545522816414062066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286690.P12545522816414062066

namespace A286690

/-- `∩[2*n+1, A286687(n+1)]` -/
def P12545522816414062066.Spec : Prop :=
  ∀ n, (P12545522816414062066.a n : ℤ) = A286690 (n + 1)

end A286690

/-! ## A286690.P2581752800374370370

`A004273(A001952(n+1))`
-/

namespace A286690.P2581752800374370370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A001952 (n + 1)).toNat

end

end A286690.P2581752800374370370

namespace A286690

/-- `A004273(A001952(n+1))` -/
def P2581752800374370370.Spec : Prop :=
  ∀ n, P2581752800374370370.a n = A286690 (n + 1)

end A286690

/-! ## A286690.P12654049569013398475

`A130773(A184922(n+1))`
-/

namespace A286690.P12654049569013398475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A184922 (n + 1)).toNat

end

end A286690.P12654049569013398475

namespace A286690

/-- `A130773(A184922(n+1))` -/
def P12654049569013398475.Spec : Prop :=
  ∀ n, P12654049569013398475.a n = A286690 (n + 1)

end A286690

/-! ## A286690.P3043753541425673286

`A005408(A001952(n+1)-1)`
-/

namespace A286690.P3043753541425673286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A001952 (n + 1) - 1).toNat

end

end A286690.P3043753541425673286

namespace A286690

/-- `A005408(A001952(n+1)-1)` -/
def P3043753541425673286.Spec : Prop :=
  ∀ n, P3043753541425673286.a n = A286690 (n + 1)

end A286690

/-! ## A286690.P10624625104732538533

`A286687(A188375(2*(n+1)))`
-/

namespace A286690.P10624625104732538533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286687 (A188375 (2 * (n + 1))).toNat

end

end A286690.P10624625104732538533

namespace A286690

/-- `A286687(A188375(2*(n+1)))` -/
def P10624625104732538533.Spec : Prop :=
  ∀ n, P10624625104732538533.a n = A286690 (n + 1)

end A286690

/-! ## A286690.P10623712025505473485

`A005408(A003151(n+1)+n)`
-/

namespace A286690.P10623712025505473485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A003151 (n + 1) + (n : ℤ)).toNat

end

end A286690.P10623712025505473485

namespace A286690

/-- `A005408(A003151(n+1)+n)` -/
def P10623712025505473485.Spec : Prop :=
  ∀ n, P10623712025505473485.a n = A286690 (n + 1)

end A286690

/-!
# A286691: {0->010, 1->110}-transform of the Pell word, A171588.

The programs for A286691, the canonical program `A286691.P8678306413782919878` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286691 has offset 1).

The definition of A286691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286691.P7315162621164961500

`char[A286693(n+1)-1]`
-/

namespace A286691.P7315162621164961500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286693 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286691.P7315162621164961500

namespace A286691

/-- `char[A286693(n+1)-1]` -/
def P7315162621164961500.Spec : Prop :=
  ∀ n, (P7315162621164961500.a n : ℤ) = A286691 (n + 1)

end A286691

/-! ## A286691.P8678306413782919878

`1-A286801((n+1)%3+n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A286691

/-- `1-A286801((n+1)%3+n)` -/
def P8678306413782919878.Spec : Prop :=
  ∀ n, P8678306413782919878.a n = A286691 (n + 1)

theorem P8678306413782919878.correct : P8678306413782919878.Spec := by
  intro n
  simp only [A286691, Nat.add_sub_cancel]

end A286691

/-! ## A286691.P12753216600398947567

`xor(A079978(n), A286801(n+1))`
-/

namespace A286691.P12753216600398947567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A079978 n) (A286801 (n + 1))

end

end A286691.P12753216600398947567

namespace A286691

/-- `xor(A079978(n), A286801(n+1))` -/
def P12753216600398947567.Spec : Prop :=
  ∀ n, P12753216600398947567.a n = A286691 (n + 1)

end A286691

/-! ## A286691.P1563199134639405378

`A286801(A286801(n+1)+A005843(n+1))`
-/

namespace A286691.P1563199134639405378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286801 (A286801 (n + 1) + A005843 (n + 1)).toNat

end

end A286691.P1563199134639405378

namespace A286691

/-- `A286801(A286801(n+1)+A005843(n+1))` -/
def P1563199134639405378.Spec : Prop :=
  ∀ n, P1563199134639405378.a n = A286691 (n + 1)

end A286691

/-! ## A286691.P18369072649095869818

`A286801(A286801(n+1)+A131055(2*(n+1)))`
-/

namespace A286691.P18369072649095869818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286801 (A286801 (n + 1) + A131055 (2 * (n + 1))).toNat

end

end A286691.P18369072649095869818

namespace A286691

/-- `A286801(A286801(n+1)+A131055(2*(n+1)))` -/
def P18369072649095869818.Spec : Prop :=
  ∀ n, P18369072649095869818.a n = A286691 (n + 1)

end A286691

/-! ## A286691.P14867045809974720790

`A079978((A286801(n+1)-n)²)`
-/

namespace A286691.P14867045809974720790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 ((A286801 (n + 1) - (n : ℤ)) ^ 2).toNat

end

end A286691.P14867045809974720790

namespace A286691

/-- `A079978((A286801(n+1)-n)²)` -/
def P14867045809974720790.Spec : Prop :=
  ∀ n, P14867045809974720790.a n = A286691 (n + 1)

end A286691

/-!
# A286692: Positions of 0 in A286691; complement of A286693.

The programs for A286692, the canonical program `A286692.P16986880809389966464` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286692 has offset 1).

The definition of A286692 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286692.P17281063464649417415

`A286803(n+1)+A286665(n+1)`
-/

namespace A286692.P17281063464649417415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286803 (n + 1) + A286665 (n + 1)

end

end A286692.P17281063464649417415

namespace A286692

/-- `A286803(n+1)+A286665(n+1)` -/
def P17281063464649417415.Spec : Prop :=
  ∀ n, P17281063464649417415.a n = A286692 (n + 1)

end A286692

/-! ## A286692.P16986880809389966464

`A286689(n+1)+∑[A286665(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A286692

/-- `A286689(n+1)+∑[A286665(n+1)]` -/
def P16986880809389966464.Spec : Prop :=
  ∀ n, P16986880809389966464.a n = A286692 (n + 1)

theorem P16986880809389966464.correct : P16986880809389966464.Spec := by
  intro n
  simp only [A286692, Nat.add_sub_cancel]

end A286692

/-! ## A286692.P11696438032272275382

`∑[C(A097509(a(n-1)+n+1), a(n-1))]` with `a(0)=1`
-/

namespace A286692.P11696438032272275382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (A097509 (f1 (n - 1) + (n + 1))).toNat (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286692.P11696438032272275382

namespace A286692

/-- `∑[C(A097509(a(n-1)+n+1), a(n-1))]` -/
def P11696438032272275382.Spec : Prop :=
  ∀ n, (P11696438032272275382.a n : ℤ) = A286692 (n + 1)

end A286692

/-! ## A286692.P7269264316950365522

`floor((A286803(n+2)+A286803(n+1))/2)`
-/

namespace A286692.P7269264316950365522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286803 (n + 2) + A286803 (n + 1) : ℚ) / 2⌋

end

end A286692.P7269264316950365522

namespace A286692

/-- `floor((A286803(n+2)+A286803(n+1))/2)` -/
def P7269264316950365522.Spec : Prop :=
  ∀ n, P7269264316950365522.a n = A286692 (n + 1)

end A286692

/-! ## A286692.P8445926871043493123

`A286803(n+1)+A001221(Δ[A286803(n+1)])`
-/

namespace A286692.P8445926871043493123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286803 (n + 1) + A001221 (f1 (n + 1) - f1 n).toNat

end

end A286692.P8445926871043493123

namespace A286692

/-- `A286803(n+1)+A001221(Δ[A286803(n+1)])` -/
def P8445926871043493123.Spec : Prop :=
  ∀ n, P8445926871043493123.a n = A286692 (n + 1)

end A286692

/-! ## A286692.P14440812806403959730

`A286803(n+1)+A001222(Δ[A286803(n+1)])`
-/

namespace A286692.P14440812806403959730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286803 (n + 1) + A001222 (f1 (n + 1) - f1 n).toNat

end

end A286692.P14440812806403959730

namespace A286692

/-- `A286803(n+1)+A001222(Δ[A286803(n+1)])` -/
def P14440812806403959730.Spec : Prop :=
  ∀ n, P14440812806403959730.a n = A286692 (n + 1)

end A286692

/-! ## A286692.P11450181511206447378

`A329152(Δ[A286803(n+1)]²+1)+A286803(n+1)`
-/

namespace A286692.P11450181511206447378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329152 ((f1 (n + 1) - f1 n) ^ 2 + 1).toNat + A286803 (n + 1)

end

end A286692.P11450181511206447378

namespace A286692

/-- `A329152(Δ[A286803(n+1)]²+1)+A286803(n+1)` -/
def P11450181511206447378.Spec : Prop :=
  ∀ n, P11450181511206447378.a n = A286692 (n + 1)

end A286692

/-! ## A286692.P1648901916810880722

`A032766(A286689(n+1))`
-/

namespace A286692.P1648901916810880722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A286689 (n + 1)).toNat

end

end A286692.P1648901916810880722

namespace A286692

/-- `A032766(A286689(n+1))` -/
def P1648901916810880722.Spec : Prop :=
  ∀ n, P1648901916810880722.a n = A286692 (n + 1)

end A286692

/-! ## A286692.P771303960043545291

`A080782(A286803(n+1))`
-/

namespace A286692.P771303960043545291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A286803 (n + 1)).toNat

end

end A286692.P771303960043545291

namespace A286692

/-- `A080782(A286803(n+1))` -/
def P771303960043545291.Spec : Prop :=
  ∀ n, P771303960043545291.a n = A286692 (n + 1)

end A286692

/-! ## A286692.P18320149908897769809

`A130481(A286992(n+1))`
-/

namespace A286692.P18320149908897769809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (A286992 (n + 1)).toNat

end

end A286692.P18320149908897769809

namespace A286692

/-- `A130481(A286992(n+1))` -/
def P18320149908897769809.Spec : Prop :=
  ∀ n, P18320149908897769809.a n = A286692 (n + 1)

end A286692

/-! ## A286692.P4355040656787009515

`A286803(n+1)+A171588(A288999(n+2))`
-/

namespace A286692.P4355040656787009515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286803 (n + 1) + A171588 (A288999 (n + 2)).toNat

end

end A286692.P4355040656787009515

namespace A286692

/-- `A286803(n+1)+A171588(A288999(n+2))` -/
def P4355040656787009515.Spec : Prop :=
  ∀ n, P4355040656787009515.a n = A286692 (n + 1)

end A286692

/-! ## A286692.P13104293695741066889

`A286716(5*A286689(n+1))`
-/

namespace A286692.P13104293695741066889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286716 (5 * A286689 (n + 1)).toNat

end

end A286692.P13104293695741066889

namespace A286692

/-- `A286716(5*A286689(n+1))` -/
def P13104293695741066889.Spec : Prop :=
  ∀ n, P13104293695741066889.a n = A286692 (n + 1)

end A286692

/-! ## A286692.P17763507844208645971

`∑[A294180(floor((n+3)*sqrt(2))-3)]`
-/

namespace A286692.P17763507844208645971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294180 (⌊(n + 3 : ℝ) * Real.sqrt (2 : ℝ)⌋ - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286692.P17763507844208645971

namespace A286692

/-- `∑[A294180(floor((n+3)*sqrt(2))-3)]` -/
def P17763507844208645971.Spec : Prop :=
  ∀ n, P17763507844208645971.a n = A286692 (n + 1)

end A286692

/-!
# A286693: Positions of 1 in A286691; complement of A286692.

The programs for A286693, the canonical program `A286693.P502539275683704723` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286693 has offset 1).

The definition of A286693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286693.P502539275683704723

`∑[A286991(n+1)%3]+n`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A286693

/-- `∑[A286991(n+1)%3]+n` -/
def P502539275683704723.Spec : Prop :=
  ∀ n, P502539275683704723.a n = A286693 (n + 1)

theorem P502539275683704723.correct : P502539275683704723.Spec := by
  intro n
  simp only [A286693, Nat.add_sub_cancel]

end A286693

/-! ## A286693.P9455885248131323910

`A286802(n+1)-A286922(n+1)`
-/

namespace A286693.P9455885248131323910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286802 (n + 1) - A286922 (n + 1)

end

end A286693.P9455885248131323910

namespace A286693

/-- `A286802(n+1)-A286922(n+1)` -/
def P9455885248131323910.Spec : Prop :=
  ∀ n, P9455885248131323910.a n = A286693 (n + 1)

end A286693

/-! ## A286693.P4822455428122739999

`A286991(n+2)-(A286903(n+2)+2)`
-/

namespace A286693.P4822455428122739999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286991 (n + 2) - (A286903 (n + 2) + 2)

end

end A286693.P4822455428122739999

namespace A286693

/-- `A286991(n+2)-(A286903(n+2)+2)` -/
def P4822455428122739999.Spec : Prop :=
  ∀ n, P4822455428122739999.a n = A286693 (n + 1)

end A286693

/-! ## A286693.P7375080716219168711

`A286802(n+1)+A134323(Δ[A286802(n+1)])`
-/

namespace A286693.P7375080716219168711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286802 (n + 1) + A134323 (f1 (n + 1) - f1 n).toNat

end

end A286693.P7375080716219168711

namespace A286693

/-- `A286802(n+1)+A134323(Δ[A286802(n+1)])` -/
def P7375080716219168711.Spec : Prop :=
  ∀ n, P7375080716219168711.a n = A286693 (n + 1)

end A286693

/-! ## A286693.P205365458638141052

`A286802(n+1)-A035145(Δ[A286802(n+1)])`
-/

namespace A286693.P205365458638141052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286802 (n + 1) - A035145 (f1 (n + 1) - f1 n).toNat

end

end A286693.P205365458638141052

namespace A286693

/-- `A286802(n+1)-A035145(Δ[A286802(n+1)])` -/
def P205365458638141052.Spec : Prop :=
  ∀ n, P205365458638141052.a n = A286693 (n + 1)

end A286693

/-! ## A286693.P9026468449997527286

`filter[n+1, A286691(#)]`
-/

namespace A286693.P9026468449997527286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286691 (f1 j) = 1) n)

end

end A286693.P9026468449997527286

namespace A286693

/-- `filter[n+1, A286691(#)]` -/
def P9026468449997527286.Spec : Prop :=
  ∀ n, (P9026468449997527286.a n : ℤ) = A286693 (n + 1)

end A286693

/-! ## A286693.P14250536416918588158

`A080782(A286802(n+1))`
-/

namespace A286693.P14250536416918588158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A286802 (n + 1)).toNat

end

end A286693.P14250536416918588158

namespace A286693

/-- `A080782(A286802(n+1))` -/
def P14250536416918588158.Spec : Prop :=
  ∀ n, P14250536416918588158.a n = A286693 (n + 1)

end A286693

/-! ## A286693.P12732438224501131766

`A236348(A286802(n+1)-1)`
-/

namespace A286693.P12732438224501131766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 (A286802 (n + 1) - 1).toNat

end

end A286693.P12732438224501131766

namespace A286693

/-- `A236348(A286802(n+1)-1)` -/
def P12732438224501131766.Spec : Prop :=
  ∀ n, P12732438224501131766.a n = A286693 (n + 1)

end A286693

/-! ## A286693.P17409057090084135425

`lt[A286691(2*n+1), A286691(n+1)]+1`
-/

namespace A286693.P17409057090084135425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286691 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286691 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A286693.P17409057090084135425

namespace A286693

/-- `lt[A286691(2*n+1), A286691(n+1)]+1` -/
def P17409057090084135425.Spec : Prop :=
  ∀ n, (P17409057090084135425.a n : ℤ) = A286693 (n + 1)

end A286693

/-!
# A286694: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 205", based on the 5-celled von Neumann neighborhood.

The programs for A286694, there is no canonical definition to state claims against.
-/

/-! ## A286694.P3384327139185354524

`A007088(A286696(n))`
-/

namespace A286694.P3384327139185354524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286696 n).toNat

end

end A286694.P3384327139185354524

/-! ## A286694.P6158122863634208687

`A286026(n)+A083889(A281105(n))`
-/

namespace A286694.P6158122863634208687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286026 n + A083889 (A281105 n).toNat

end

end A286694.P6158122863634208687

/-! ## A286694.P17137992098684665507

`A286026(n)+A118135(A147335(n+1))`
-/

namespace A286694.P17137992098684665507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286026 n + A118135 (A147335 (n + 1)).toNat

end

end A286694.P17137992098684665507

/-! ## A286694.P4207711961841187069

`A286026(n)+A010051(A242144(n+3))`
-/

namespace A286694.P4207711961841187069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286026 n + A010051 (A242144 (n + 3)).toNat

end

end A286694.P4207711961841187069

/-! ## A286694.P7558915638536107784

`gcd(A109017(A002417(n+1)), A286026(n))`
-/

namespace A286694.P7558915638536107784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109017 (A002417 (n + 1)).toNat) (A286026 n)

end

end A286694.P7558915638536107784

/-!
# A286695: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 205", based on the 5-celled von Neumann neighborhood.

The programs for A286695, there is no canonical definition to state claims against.
-/

/-! ## A286695.P16070488140224128378

`A007088(A286697(n))`
-/

namespace A286695.P16070488140224128378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286697 n).toNat

end

end A286695.P16070488140224128378

/-! ## A286695.P5067879676807921427

`A185544(2*A286697(n))`
-/

namespace A286695.P5067879676807921427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286697 n).toNat

end

end A286695.P5067879676807921427

/-!
# A286696: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 205", based on the 5-celled von Neumann neighborhood.

The programs for A286696, there is no canonical definition to state claims against.
-/

/-! ## A286696.P386352089897830077

`A286028(n)+A083889(A281105(n))`
-/

namespace A286696.P386352089897830077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286028 n + A083889 (A281105 n).toNat

end

end A286696.P386352089897830077

/-! ## A286696.P8819766993717015753

`or(A010054(A219531(n)), A286028(n))`
-/

namespace A286696.P8819766993717015753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A219531 n).toNat) (A286028 n)

end

end A286696.P8819766993717015753

/-! ## A286696.P1522891697167851252

`A286028(n)+A118135(A147335(n+1))`
-/

namespace A286696.P1522891697167851252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286028 n + A118135 (A147335 (n + 1)).toNat

end

end A286696.P1522891697167851252

/-! ## A286696.P9238647463395341916

`gcd(A109017(A002417(n+1)), A286028(n))`
-/

namespace A286696.P9238647463395341916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109017 (A002417 (n + 1)).toNat) (A286028 n)

end

end A286696.P9238647463395341916

/-! ## A286696.P4854518894370145415

`A286028(n)+A118135(A036469(n)*A118135(n))`
-/

namespace A286696.P4854518894370145415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286028 n + A118135 (A036469 n * A118135 n).toNat

end

end A286696.P4854518894370145415

/-!
# A286698: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 209", based on the 5-celled von Neumann neighborhood.

The programs for A286698, there is no canonical definition to state claims against.
-/

/-! ## A286698.P16473116181444679973

`A007088(A286700(n))`
-/

namespace A286698.P16473116181444679973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286700 n).toNat

end

end A286698.P16473116181444679973

/-! ## A286698.P14256620769625844240

`A185544(2*A286700(n))`
-/

namespace A286698.P14256620769625844240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286700 n).toNat

end

end A286698.P14256620769625844240

/-! ## A286698.P719694023579846635

`A185544(A286700(n)+A286700(n))`
-/

namespace A286698.P719694023579846635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A286700 n + A286700 n).toNat

end

end A286698.P719694023579846635

/-! ## A286698.P3644486736142870317

`gcd(A286403(n), A344739(A079226(n)))`
-/

namespace A286698.P3644486736142870317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A286403 n) (A344739 (A079226 n).toNat)

end

end A286698.P3644486736142870317

/-!
# A286699: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 209", based on the 5-celled von Neumann neighborhood.

The programs for A286699, there is no canonical definition to state claims against.
-/

/-! ## A286699.P8795479493597079272

`A007088(A286701(n))`
-/

namespace A286699.P8795479493597079272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286701 n).toNat

end

end A286699.P8795479493597079272

/-! ## A286699.P12873669498290742340

`A185544(2*A286701(n))`
-/

namespace A286699.P12873669498290742340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286701 n).toNat

end

end A286699.P12873669498290742340

/-! ## A286699.P9374150903972589928

`or(A285644(n), A285648(A078008(n)))`
-/

namespace A286699.P9374150903972589928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285644 n) (A285648 (A078008 n).toNat)

end

end A286699.P9374150903972589928

