import SequenceMachineLib
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A229100: Number of n X n 0..3 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X(n+1) 0..3 array.

The programs for A229100, there is no canonical definition to state claims against.
-/

/-! ## A229100.P14797109231943302297

`A229105((n+1)²+n²)`
-/

namespace A229100.P14797109231943302297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229105 ((n + 1) ^ 2 + n ^ 2)

end

end A229100.P14797109231943302297

/-!
# A229101: Number of nX2 0..3 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X3 0..3 array.

The programs for A229101, there is no canonical definition to state claims against.
-/

/-! ## A229101.P16606211827584519755

`A229105(∑[n+1]+2)`
-/

namespace A229101.P16606211827584519755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229105 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229101.P16606211827584519755

/-! ## A229101.P2319492444609734523

`lcm(4, A229105(A133263(n+1)))`
-/

namespace A229101.P2319492444609734523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A229105 (A133263 (n + 1)).toNat)

end

end A229101.P2319492444609734523

/-! ## A229101.P14914396653849030095

`record[A229105(n+2)*A294653(n)]`
-/

namespace A229101.P14914396653849030095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229105 (n + 2) * A294653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229101.P14914396653849030095

/-! ## A229101.P1790341781533718594

`record[A229105(n+2)/A285061(n)]`
-/

namespace A229101.P1790341781533718594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229105 (n + 2) : ℚ) / (A285061 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229101.P1790341781533718594

/-! ## A229101.P10342284097256193632

`record[A229105(abs(A201163(n)))]`
-/

namespace A229101.P10342284097256193632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229105 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229101.P10342284097256193632

/-!
# A229102: Number of nX3 0..3 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X4 0..3 array.

The programs for A229102, there is no canonical definition to state claims against.
-/

/-! ## A229102.P1249632880414372614

`A229105(∑[n+2]+4)`
-/

namespace A229102.P1249632880414372614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229105 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229102.P1249632880414372614

/-! ## A229102.P1588933902744750995

`lcm(2, A229105(A167614(n+1)))`
-/

namespace A229102.P1588933902744750995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A229105 (A167614 (n + 1)).toNat)

end

end A229102.P1588933902744750995

/-! ## A229102.P16080955714679810390

`A229105(A167614(n+1))+A025469(n)`
-/

namespace A229102.P16080955714679810390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229105 (A167614 (n + 1)).toNat + A025469 n

end

end A229102.P16080955714679810390

/-! ## A229102.P11306677919510582574

`A229105(A167614(n+1))+A143288(n)`
-/

namespace A229102.P11306677919510582574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229105 (A167614 (n + 1)).toNat + A143288 n

end

end A229102.P11306677919510582574

/-! ## A229102.P1478709690647149258

`A229105(A167614(n+1))+A143289(n)`
-/

namespace A229102.P1478709690647149258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229105 (A167614 (n + 1)).toNat + A143289 n

end

end A229102.P1478709690647149258

/-!
# A229103: Number of n X 4 0..3 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 5 0..3 array.

The programs for A229103, there is no canonical definition to state claims against.
-/

/-! ## A229103.P9265475191266009635

`A229105(A167614(n+2)+1)`
-/

namespace A229103.P9265475191266009635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229105 (A167614 (n + 2) + 1).toNat

end

end A229103.P9265475191266009635

/-!
# A229104: Number of nX5 0..3 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1)X6 0..3 array.

The programs for A229104, there is no canonical definition to state claims against.
-/

/-! ## A229104.P17048752597803978399

`A229105(eq[6, A131818(n+1)])`
-/

namespace A229104.P17048752597803978399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229104.P17048752597803978399

/-! ## A229104.P268432695344864835

`A229105(Δ[A264443(n)])`
-/

namespace A229104.P268432695344864835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229105 (f1 (n + 1) - f1 n).toNat

end

end A229104.P268432695344864835

/-! ## A229104.P9938242505330018311

`A229105(A374005(n+1))`
-/

namespace A229104.P9938242505330018311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229105 (A374005 (n + 1)).toNat

end

end A229104.P9938242505330018311

/-!
# A229106: 

The programs for A229106, there is no canonical definition to state claims against.
-/

/-! ## A229106.P9932797794158022903

`p?[A055643(n)]`
-/

namespace A229106.P9932797794158022903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229106.P9932797794158022903

/-! ## A229106.P16980082797620541573

`∩[A000040(n+1), A055643(n)]`
-/

namespace A229106.P16980082797620541573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229106.P16980082797620541573

/-! ## A229106.P18086213340554378756

`∩[A008578(n+2), A055643(n)]`
-/

namespace A229106.P18086213340554378756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229106.P18086213340554378756

/-! ## A229106.P15875799083980741801

`record[A014963(A055643(n+2))]`
-/

namespace A229106.P15875799083980741801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A055643 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229106.P15875799083980741801

/-!
# A229107: Palindromic prime time display in hours, minutes, seconds on a six-digit 24-hour digital clock.

The programs for A229107, there is no canonical definition to state claims against.
-/

/-! ## A229107.P7880709675280082831

`p?[A222620(n+1)]`
-/

namespace A229107.P7880709675280082831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229107.P7880709675280082831

/-! ## A229107.P5727331932540641321

`record[A006530(A222620(n+3))]`
-/

namespace A229107.P5727331932540641321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A222620 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229107.P5727331932540641321

/-! ## A229107.P15135341975545910727

`filter[A222620(n+2), A010051(#)]`
-/

namespace A229107.P15135341975545910727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222620 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A229107.P15135341975545910727

/-! ## A229107.P3987645485365872869

`∩[A002385(n+1), A222620(n+1)]`
-/

namespace A229107.P3987645485365872869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229107.P3987645485365872869

/-! ## A229107.P5355051645146136640

`∩[A072299(n+1), A222620(n+1)]`
-/

namespace A229107.P5355051645146136640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229107.P5355051645146136640

/-!
# A229108: Increasing a(n)is the smallest number of the form p^a*q^b, where a,b are positive integers and p < q are odd primes such that max( p^a, q^b)/min( p^a, q^b) <= 1 + 2/prime(n).

The programs for A229108, there is no canonical definition to state claims against.
-/

/-! ## A229108.P7154050615194559246

`record[A343249(2*n+3)*A343253(2*n+5)]`
-/

namespace A229108.P7154050615194559246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343249 (2 * n + 3) * A343253 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229108.P7154050615194559246

/-! ## A229108.P9025848397718427264

`A233583(4*(comp[A288735(n+1)-1]+1)²)`
-/

namespace A229108.P9025848397718427264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288735 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (4 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ 2)

end

end A229108.P9025848397718427264

/-! ## A229108.P10061437736643651115

`A233583(4*comp[(n+1)*A288733(n+1)]²)`
-/

namespace A229108.P10061437736643651115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A288733 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A229108.P10061437736643651115

/-! ## A229108.P1874623810062297317

`A233583(4*(lt[A288733(n+1), A057427(n)]+1)²)`
-/

namespace A229108.P1874623810062297317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (4 * (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) ^ 2)

end

end A229108.P1874623810062297317

/-!
# A229109: a(n) = n plus the number of its distinct prime factors.

The programs for A229109, the canonical program `A229109.P7396241872602068631` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229109 has offset 1).

The definition of A229109 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A229109.P7396241872602068631

`n+1+A001221(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A229109

/-- `n+1+A001221(n+1)` -/
def P7396241872602068631.Spec : Prop :=
  ∀ n, P7396241872602068631.a n = A229109 (n + 1)

theorem P7396241872602068631.correct : P7396241872602068631.Spec := by
  intro n
  simp only [A229109, Nat.add_sub_cancel]

end A229109

/-! ## A229109.P17876227114612813421

`∑{p}[n+1, gcd(n, #)]+n+1`
-/

namespace A229109.P17876227114612813421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p + (n + 1)

end

end A229109.P17876227114612813421

namespace A229109

/-- `∑{p}[n+1, gcd(n, #)]+n+1` -/
def P17876227114612813421.Spec : Prop :=
  ∀ n, (P17876227114612813421.a n : ℤ) = A229109 (n + 1)

end A229109

/-! ## A229109.P15514115086814862291

`∑{e}[∏{p}[n+1, #], #]+n+1`
-/

namespace A229109.P15514115086814862291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + (n + 1)

end

end A229109.P15514115086814862291

namespace A229109

/-- `∑{e}[∏{p}[n+1, #], #]+n+1` -/
def P15514115086814862291.Spec : Prop :=
  ∀ n, (P15514115086814862291.a n : ℤ) = A229109 (n + 1)

end A229109

/-! ## A229109.P6066350661744487763

`n+1-∑{p}[n+1, or(#, -1)]`
-/

namespace A229109.P6066350661744487763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ p ∈ Nat.primeFactors (f1 n), Int.lor (p : ℤ) (-1)

end

end A229109.P6066350661744487763

namespace A229109

/-- `n+1-∑{p}[n+1, or(#, -1)]` -/
def P6066350661744487763.Spec : Prop :=
  ∀ n, P6066350661744487763.a n = A229109 (n + 1)

end A229109

/-! ## A229109.P7598257528662169566

`∑{p}[n+1, ceil(1/#)]+n+1`
-/

namespace A229109.P7598257528662169566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉ + (n + 1 : ℤ)

end

end A229109.P7598257528662169566

namespace A229109

/-- `∑{p}[n+1, ceil(1/#)]+n+1` -/
def P7598257528662169566.Spec : Prop :=
  ∀ n, P7598257528662169566.a n = A229109 (n + 1)

end A229109

/-! ## A229109.P10797293508855016903

`n+1-∑{e}[n+1, or(#, -1)]`
-/

namespace A229109.P10797293508855016903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ p ∈ Nat.primeFactors (f1 n), Int.lor (Nat.factorization (f1 n) p : ℤ) (-1)

end

end A229109.P10797293508855016903

namespace A229109

/-- `n+1-∑{e}[n+1, or(#, -1)]` -/
def P10797293508855016903.Spec : Prop :=
  ∀ n, P10797293508855016903.a n = A229109 (n + 1)

end A229109

/-! ## A229109.P4542351577054422866

`∑{e}[n+1, ceil(1/#)]+n+1`
-/

namespace A229109.P4542351577054422866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ)⌉ + (n + 1 : ℤ)

end

end A229109.P4542351577054422866

namespace A229109

/-- `∑{e}[n+1, ceil(1/#)]+n+1` -/
def P4542351577054422866.Spec : Prop :=
  ∀ n, P4542351577054422866.a n = A229109 (n + 1)

end A229109

/-! ## A229109.P12145892499582454328

`A083399(n+1)+n`
-/

namespace A229109.P12145892499582454328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083399 (n + 1) + (n : ℤ)

end

end A229109.P12145892499582454328

namespace A229109

/-- `A083399(n+1)+n` -/
def P12145892499582454328.Spec : Prop :=
  ∀ n, P12145892499582454328.a n = A229109 (n + 1)

end A229109

/-! ## A229109.P6205311616238925004

`2*(n+1)-A378993(n+1)`
-/

namespace A229109.P6205311616238925004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A378993 (n + 1)

end

end A229109.P6205311616238925004

namespace A229109

/-- `2*(n+1)-A378993(n+1)` -/
def P6205311616238925004.Spec : Prop :=
  ∀ n, P6205311616238925004.a n = A229109 (n + 1)

end A229109

/-! ## A229109.P9698663736892687548

`n+1+∑{p}[n+1, A001222(#)]`
-/

namespace A229109.P9698663736892687548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A229109.P9698663736892687548

namespace A229109

/-- `n+1+∑{p}[n+1, A001222(#)]` -/
def P9698663736892687548.Spec : Prop :=
  ∀ n, P9698663736892687548.a n = A229109 (n + 1)

end A229109

/-! ## A229109.P99923987350084375

`A001222(∏{p}[n+1, #])+1+n`
-/

namespace A229109.P99923987350084375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1 + (n : ℤ)

end

end A229109.P99923987350084375

namespace A229109

/-- `A001222(∏{p}[n+1, #])+1+n` -/
def P99923987350084375.Spec : Prop :=
  ∀ n, P99923987350084375.a n = A229109 (n + 1)

end A229109

/-! ## A229109.P15900978197695675797

`1-∑{p}[n+1, A008683(#)]+n`
-/

namespace A229109.P15900978197695675797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ p ∈ Nat.primeFactors (f1 n), A008683 p + (n : ℤ)

end

end A229109.P15900978197695675797

namespace A229109

/-- `1-∑{p}[n+1, A008683(#)]+n` -/
def P15900978197695675797.Spec : Prop :=
  ∀ n, P15900978197695675797.a n = A229109 (n + 1)

end A229109

/-! ## A229109.P17285936985387530879

`A328260(n+1)/(n+1)+n+1`
-/

namespace A229109.P17285936985387530879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328260 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A229109.P17285936985387530879

namespace A229109

/-- `A328260(n+1)/(n+1)+n+1` -/
def P17285936985387530879.Spec : Prop :=
  ∀ n, P17285936985387530879.a n = (A229109 (n + 1) : ℚ)

end A229109

/-! ## A229109.P8360399338425496724

`n+1-∑{p}[n+1, A000010(#)-#]`
-/

namespace A229109.P8360399338425496724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ p ∈ Nat.primeFactors (f1 n), (A000010 p - (p : ℤ))

end

end A229109.P8360399338425496724

namespace A229109

/-- `n+1-∑{p}[n+1, A000010(#)-#]` -/
def P8360399338425496724.Spec : Prop :=
  ∀ n, P8360399338425496724.a n = A229109 (n + 1)

end A229109

/-! ## A229109.P7336298971390781564

`n+1-∑{p}[n+1, #-A000203(#)]`
-/

namespace A229109.P7336298971390781564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - A000203 p)

end

end A229109.P7336298971390781564

namespace A229109

/-- `n+1-∑{p}[n+1, #-A000203(#)]` -/
def P7336298971390781564.Spec : Prop :=
  ∀ n, P7336298971390781564.a n = A229109 (n + 1)

end A229109

/-! ## A229109.P15060970962166952800

`A010553(A007947(n+1))+n`
-/

namespace A229109.P15060970962166952800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A007947 (n + 1)).toNat + (n : ℤ)

end

end A229109.P15060970962166952800

namespace A229109

/-- `A010553(A007947(n+1))+n` -/
def P15060970962166952800.Spec : Prop :=
  ∀ n, P15060970962166952800.a n = A229109 (n + 1)

end A229109

/-! ## A229109.P6828854942781264779

`A000005(A034444(n+1))+n`
-/

namespace A229109.P6828854942781264779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A034444 (n + 1)).toNat + (n : ℤ)

end

end A229109.P6828854942781264779

namespace A229109

/-- `A000005(A034444(n+1))+n` -/
def P6828854942781264779.Spec : Prop :=
  ∀ n, P6828854942781264779.a n = A229109 (n + 1)

end A229109

/-! ## A229109.P7395167065260560680

`A000005(A074816(n+1))+n`
-/

namespace A229109.P7395167065260560680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A074816 (n + 1)).toNat + (n : ℤ)

end

end A229109.P7395167065260560680

namespace A229109

/-- `A000005(A074816(n+1))+n` -/
def P7395167065260560680.Spec : Prop :=
  ∀ n, P7395167065260560680.a n = A229109 (n + 1)

end A229109

/-! ## A229109.P7071821097382231370

`A001221(A079892(n+1))+n`
-/

namespace A229109.P7071821097382231370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A079892 (n + 1)).toNat + (n : ℤ)

end

end A229109.P7071821097382231370

namespace A229109

/-- `A001221(A079892(n+1))+n` -/
def P7071821097382231370.Spec : Prop :=
  ∀ n, P7071821097382231370.a n = A229109 (n + 1)

end A229109

/-! ## A229109.P17369377425688102140

`A000005(A082476(n+1))+n`
-/

namespace A229109.P17369377425688102140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A082476 (n + 1)).toNat + (n : ℤ)

end

end A229109.P17369377425688102140

namespace A229109

/-- `A000005(A082476(n+1))+n` -/
def P17369377425688102140.Spec : Prop :=
  ∀ n, P17369377425688102140.a n = A229109 (n + 1)

end A229109

/-!
# A229110: Sum of non-divisors of n reduced modulo n.

The programs for A229110, the canonical program `A229110.P15608465638728388115` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229110 has offset 1).

The definition of A229110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229110.P15608465638728388115

`(∑[n+1]-∑{d}[n+1, #])%(n+1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229110

/-- `(∑[n+1]-∑{d}[n+1, #])%(n+1)` -/
def P15608465638728388115.Spec : Prop :=
  ∀ n, P15608465638728388115.a n = A229110 (n + 1)

theorem P15608465638728388115.correct : P15608465638728388115.Spec := by
  intro n
  simp only [A229110, Nat.add_sub_cancel]

end A229110

/-! ## A229110.P6224452568655745144

`A024816(n+1)%(n+1)`
-/

namespace A229110.P6224452568655745144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024816 (n + 1)) (n + 1 : ℤ)

end

end A229110.P6224452568655745144

namespace A229110

/-- `A024816(n+1)%(n+1)` -/
def P6224452568655745144.Spec : Prop :=
  ∀ n, P6224452568655745144.a n = A229110 (n + 1)

end A229110

/-! ## A229110.P792970699765645567

`(∑[n]-A001065(n+1))%(n+1)`
-/

namespace A229110.P792970699765645567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001065 (n + 1)) (n + 1 : ℤ)

end

end A229110.P792970699765645567

namespace A229110

/-- `(∑[n]-A001065(n+1))%(n+1)` -/
def P792970699765645567.Spec : Prop :=
  ∀ n, P792970699765645567.a n = A229110 (n + 1)

end A229110

/-! ## A229110.P17154075909582054175

`(∑[n+1]-A000203(n+1))%(n+1)`
-/

namespace A229110.P17154075909582054175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000203 (n + 1)) (n + 1 : ℤ)

end

end A229110.P17154075909582054175

namespace A229110

/-- `(∑[n+1]-A000203(n+1))%(n+1)` -/
def P17154075909582054175.Spec : Prop :=
  ∀ n, P17154075909582054175.a n = A229110 (n + 1)

end A229110

/-! ## A229110.P199472592095033824

`(∑[25*n]-A155085(n+1))%(n+1)`
-/

namespace A229110.P199472592095033824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A155085 (n + 1)) (n + 1 : ℤ)

end

end A229110.P199472592095033824

namespace A229110

/-- `(∑[25*n]-A155085(n+1))%(n+1)` -/
def P199472592095033824.Spec : Prop :=
  ∀ n, P199472592095033824.a n = A229110 (n + 1)

end A229110

/-! ## A229110.P202197370522485253

`(∑[n+1]-A064987(n+1)/(n+1))%(n+1)`
-/

namespace A229110.P202197370522485253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ))) (n + 1 : ℤ)

end

end A229110.P202197370522485253

namespace A229110

/-- `(∑[n+1]-A064987(n+1)/(n+1))%(n+1)` -/
def P202197370522485253.Spec : Prop :=
  ∀ n, P202197370522485253.a n = A229110 (n + 1)

end A229110

/-! ## A229110.P16836053993572033401

`A054024(n+1)-A229087(n+1)`
-/

namespace A229110.P16836053993572033401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1) - A229087 (n + 1)

end

end A229110.P16836053993572033401

namespace A229110

/-- `A054024(n+1)-A229087(n+1)` -/
def P16836053993572033401.Spec : Prop :=
  ∀ n, P16836053993572033401.a n = A229110 (n + 1)

end A229110

/-! ## A229110.P9959558227952638918

`(A064987(n+1)/(n+1))%(n+1)-A229087(n+1)`
-/

namespace A229110.P9959558227952638918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))) (n + 1 : ℤ) - A229087 (n + 1)

end

end A229110.P9959558227952638918

namespace A229110

/-- `(A064987(n+1)/(n+1))%(n+1)-A229087(n+1)` -/
def P9959558227952638918.Spec : Prop :=
  ∀ n, P9959558227952638918.a n = A229110 (n + 1)

end A229110

/-! ## A229110.P16738435548657699691

`A242480(n+1)-(A142150(n+1)+A054024(n+1))`
-/

namespace A229110.P16738435548657699691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242480 (n + 1) - (A142150 (n + 1) + A054024 (n + 1))

end

end A229110.P16738435548657699691

namespace A229110

/-- `A242480(n+1)-(A142150(n+1)+A054024(n+1))` -/
def P16738435548657699691.Spec : Prop :=
  ∀ n, P16738435548657699691.a n = A229110 (n + 1)

end A229110

/-!
# A229111: Expansion of the g.f. of A053723 in powers of the g.f. of A121591.

The programs for A229111, there is no canonical definition to state claims against.
-/

/-! ## A229111.P2732396772795234598

`A069208(A005810(n))*A363783(n+1)`
-/

namespace A229111.P2732396772795234598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069208 (A005810 n).toNat * A363783 (n + 1)

end

end A229111.P2732396772795234598

/-!
# A229112: Row sums of triangle A166884.

The programs for A229112, there is no canonical definition to state claims against.
-/

/-! ## A229112.P5137959339424706792

`A356451(A047863(n))`
-/

namespace A229112.P5137959339424706792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356451 (A047863 n).toNat

end

end A229112.P5137959339424706792

/-! ## A229112.P9752541786585156576

`A381607(A381615(n)+n)`
-/

namespace A229112.P9752541786585156576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381607 (A381615 n + (n : ℤ)).toNat

end

end A229112.P9752541786585156576

/-!
# A229113: Row sums of triangle A166890.

The programs for A229113, there is no canonical definition to state claims against.
-/

/-! ## A229113.P8387123571480560726

`A007094(∑[A228696(n)])`
-/

namespace A229113.P8387123571480560726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229113.P8387123571480560726

/-!
# A229115: Numbers n such that sigma(n) mod n - antisigma(n) mod n = 14, where sigma(n) = A000203(n) = sum of divisor of n, antisigma(n) = A024816(n) = sum of non-divisors of n.

The programs for A229115, the canonical program `A229115.P9819039358198494583` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229115 has offset 1).

The definition of A229115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229115.P9819039358198494583

`eq[14, A229087(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A229115

/-- `eq[14, A229087(n+1)]+1` -/
def P9819039358198494583.Spec : Prop :=
  ∀ n, (P9819039358198494583.a n : ℤ) = A229115 (n + 1)

theorem P9819039358198494583.correct : P9819039358198494583.Spec := by
  intro n
  simp only [A229115, Nat.add_sub_cancel]

end A229115

/-! ## A229115.P17873589954695266681

`A015906(eq[14, A229087(n+1)])`
-/

namespace A229115.P17873589954695266681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229115.P17873589954695266681

namespace A229115

/-- `A015906(eq[14, A229087(n+1)])` -/
def P17873589954695266681.Spec : Prop :=
  ∀ n, P17873589954695266681.a n = A229115 (n + 1)

end A229115

/-! ## A229115.P12277113407210894592

`A020725(eq[14, A229087(n+1)])`
-/

namespace A229115.P12277113407210894592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229115.P12277113407210894592

namespace A229115

/-- `A020725(eq[14, A229087(n+1)])` -/
def P12277113407210894592.Spec : Prop :=
  ∀ n, P12277113407210894592.a n = A229115 (n + 1)

end A229115

/-! ## A229115.P370629243506460965

`A015906(eq[14, A000203(n+1)%(n+1)-A229110(n+1)])`
-/

namespace A229115.P370629243506460965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (n + 1 : ℤ) - A229110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229115.P370629243506460965

namespace A229115

/-- `A015906(eq[14, A000203(n+1)%(n+1)-A229110(n+1)])` -/
def P370629243506460965.Spec : Prop :=
  ∀ n, P370629243506460965.a n = A229115 (n + 1)

end A229115

/-! ## A229115.P5666379285644195716

`eq[14, A229087(A233583(n+1))]`
-/

namespace A229115.P5666379285644195716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229087 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229115.P5666379285644195716

namespace A229115

/-- `eq[14, A229087(A233583(n+1))]` -/
def P5666379285644195716.Spec : Prop :=
  ∀ n, (P5666379285644195716.a n : ℤ) = A229115 (n + 1)

end A229115

/-!
# A229116: G.f.: A(x) = exp( Sum_{n>=1} A((-1)^n*x)^n * x^n/n ).

The programs for A229116, there is no canonical definition to state claims against.
-/

/-! ## A229116.P14137827551787063128

`A001055(A049606(n))-A014405(3*n+4)`
-/

namespace A229116.P14137827551787063128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A049606 n).toNat - A014405 (3 * n + 4)

end

end A229116.P14137827551787063128

/-!
# A229117: Numbers k where d/k reaches a new record, with d the distance from the k-th triangular number to the nearest square.

The programs for A229117, the canonical program `A229117.P7524155699503436793` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229117 has offset 1).

The definition of A229117 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229117.P7524155699503436793

`a(n-1)+6*a(n-3)-6*a(n-4)-a(n-6)+a(n-7)` with `a(0)=2, a(1)=3, a(2)=13, a(3)=20, a(4)=37, a(5)=78, a(6)=119, a(7)=218, a(8)=457`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229117

/-- `a(n-1)+6*a(n-3)-6*a(n-4)-a(n-6)+a(n-7)` -/
def P7524155699503436793.Spec : Prop :=
  ∀ n, P7524155699503436793.a n = A229117 (n + 1)

theorem P7524155699503436793.correct : P7524155699503436793.Spec := by
  intro n
  simp only [A229117, Nat.add_sub_cancel]

end A229117

/-! ## A229117.P15790921852674984265

`eq[A196199(A000217(n)), A275851(n)]`
-/

namespace A229117.P15790921852674984265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A000217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229117.P15790921852674984265

namespace A229117

/-- `eq[A196199(A000217(n)), A275851(n)]` -/
def P15790921852674984265.Spec : Prop :=
  ∀ n, (P15790921852674984265.a n : ℤ) = A229117 (n + 1)

end A229117

/-!
# A229118: Distance from the n-th triangular number to the nearest square.

The programs for A229118, the canonical program `A229118.P1401755231789062438` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229118 has offset 1).

The definition of A229118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229118.P1401755231789062438

`A053188(∑[n+1])`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A229118

/-- `A053188(∑[n+1])` -/
def P1401755231789062438.Spec : Prop :=
  ∀ n, P1401755231789062438.a n = A229118 (n + 1)

theorem P1401755231789062438.correct : P1401755231789062438.Spec := by
  intro n
  simp only [A229118, Nat.add_sub_cancel]

end A229118

/-! ## A229118.P16310646132655843875

`abs(∑[n+1]-A053187(∑[n+1]))`
-/

namespace A229118.P16310646132655843875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A053187 (∑ j ∈ Finset.range (n + 1), f2 j)|

end

end A229118.P16310646132655843875

namespace A229118

/-- `abs(∑[n+1]-A053187(∑[n+1]))` -/
def P16310646132655843875.Spec : Prop :=
  ∀ n, P16310646132655843875.a n = A229118 (n + 1)

end A229118

/-! ## A229118.P14972306453717536731

`A053615(A000037(∑[n+1]))`
-/

namespace A229118.P14972306453717536731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A000037 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A229118.P14972306453717536731

namespace A229118

/-- `A053615(A000037(∑[n+1]))` -/
def P14972306453717536731.Spec : Prop :=
  ∀ n, P14972306453717536731.a n = A229118 (n + 1)

end A229118

/-! ## A229118.P11334515175794884588

`A053615(A056847(∑[n+1]))`
-/

namespace A229118.P11334515175794884588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A056847 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A229118.P11334515175794884588

namespace A229118

/-- `A053615(A056847(∑[n+1]))` -/
def P11334515175794884588.Spec : Prop :=
  ∀ n, P11334515175794884588.a n = A229118 (n + 1)

end A229118

/-! ## A229118.P12990241375755244784

`A053188(A000217(n+1))%97`
-/

namespace A229118.P12990241375755244784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053188 (A000217 (n + 1)).toNat) 97

end

end A229118.P12990241375755244784

namespace A229118

/-- `A053188(A000217(n+1))%97` -/
def P12990241375755244784.Spec : Prop :=
  ∀ n, P12990241375755244784.a n = A229118 (n + 1)

end A229118

/-! ## A229118.P9843661632437947273

`or(char[1], A053188(A000096(n)+1))`
-/

namespace A229118.P9843661632437947273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A053188 (A000096 n + 1).toNat)

end

end A229118.P9843661632437947273

namespace A229118

/-- `or(char[1], A053188(A000096(n)+1))` -/
def P9843661632437947273.Spec : Prop :=
  ∀ n, P9843661632437947273.a n = A229118 (n + 1)

end A229118

/-! ## A229118.P10807108334811124076

`A053188(A008805(2*n))%(n+1)`
-/

namespace A229118.P10807108334811124076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053188 (A008805 (2 * n)).toNat) (n + 1 : ℤ)

end

end A229118.P10807108334811124076

namespace A229118

/-- `A053188(A008805(2*n))%(n+1)` -/
def P10807108334811124076.Spec : Prop :=
  ∀ n, P10807108334811124076.a n = A229118 (n + 1)

end A229118

/-! ## A229118.P4432112910021989559

`A053188(A000217(n+1)+char[1])+char[1]`
-/

namespace A229118.P4432112910021989559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A000217 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A229118.P4432112910021989559

namespace A229118

/-- `A053188(A000217(n+1)+char[1])+char[1]` -/
def P4432112910021989559.Spec : Prop :=
  ∀ n, P4432112910021989559.a n = A229118 (n + 1)

end A229118

/-! ## A229118.P9037294230899427970

`A053615(A053188(A000217(n+1))²)`
-/

namespace A229118.P9037294230899427970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A053188 (A000217 (n + 1)).toNat ^ 2).toNat

end

end A229118.P9037294230899427970

namespace A229118

/-- `A053615(A053188(A000217(n+1))²)` -/
def P9037294230899427970.Spec : Prop :=
  ∀ n, P9037294230899427970.a n = A229118 (n + 1)

end A229118

/-! ## A229118.P24614346671384704

`∑{d}[A053188(A000096(n)+1), A000010(#)]`
-/

namespace A229118.P24614346671384704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A000096 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A229118.P24614346671384704

namespace A229118

/-- `∑{d}[A053188(A000096(n)+1), A000010(#)]` -/
def P24614346671384704.Spec : Prop :=
  ∀ n, P24614346671384704.a n = A229118 (n + 1)

end A229118

/-! ## A229118.P17507449385666440561

`∑{d}[A053188(A000217(n+1)), A000010(#)]`
-/

namespace A229118.P17507449385666440561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A229118.P17507449385666440561

namespace A229118

/-- `∑{d}[A053188(A000217(n+1)), A000010(#)]` -/
def P17507449385666440561.Spec : Prop :=
  ∀ n, P17507449385666440561.a n = A229118 (n + 1)

end A229118

/-! ## A229118.P4141469233905392541

`A053188(A000217(n+1))+A035363(2*n+1)`
-/

namespace A229118.P4141469233905392541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A000217 (n + 1)).toNat + A035363 (2 * n + 1)

end

end A229118.P4141469233905392541

namespace A229118

/-- `A053188(A000217(n+1))+A035363(2*n+1)` -/
def P4141469233905392541.Spec : Prop :=
  ∀ n, P4141469233905392541.a n = A229118 (n + 1)

end A229118

/-! ## A229118.P6924744398410437352

`A053188(A076921(n+2)+A076921(n+1))%(n+1)`
-/

namespace A229118.P6924744398410437352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053188 (A076921 (n + 2) + A076921 (n + 1)).toNat) (n + 1 : ℤ)

end

end A229118.P6924744398410437352

namespace A229118

/-- `A053188(A076921(n+2)+A076921(n+1))%(n+1)` -/
def P6924744398410437352.Spec : Prop :=
  ∀ n, P6924744398410437352.a n = A229118 (n + 1)

end A229118

/-! ## A229118.P15363828416718649941

`A053188(A000217(n+1))+A002262(n-A002262(n))`
-/

namespace A229118.P15363828416718649941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A000217 (n + 1)).toNat + A002262 ((n : ℤ) - A002262 n).toNat

end

end A229118.P15363828416718649941

namespace A229118

/-- `A053188(A000217(n+1))+A002262(n-A002262(n))` -/
def P15363828416718649941.Spec : Prop :=
  ∀ n, P15363828416718649941.a n = A229118 (n + 1)

end A229118

/-! ## A229118.P4708594445641499136

`A053188(A000217(n+1))+A053188(n²)`
-/

namespace A229118.P4708594445641499136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A000217 (n + 1)).toNat + A053188 (n ^ 2)

end

end A229118.P4708594445641499136

namespace A229118

/-- `A053188(A000217(n+1))+A053188(n²)` -/
def P4708594445641499136.Spec : Prop :=
  ∀ n, P4708594445641499136.a n = A229118 (n + 1)

end A229118

/-!
# A229120: Inverse of permutation A229119.

The programs for A229120, there is no canonical definition to state claims against.
-/

/-! ## A229120.P9472820922625348130

`A243354(A129129(n+1))`
-/

namespace A229120.P9472820922625348130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243354 (A129129 (n + 1)).toNat

end

end A229120.P9472820922625348130

/-! ## A229120.P13019776990948308113

`A243354(ratio[A129129(n)]*A129129(n))`
-/

namespace A229120.P13019776990948308113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243354 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A129129 n : ℚ))).toNat

end

end A229120.P13019776990948308113

/-! ## A229120.P10288100682209880031

`A243354(ratio[-∏[A129129(n)]])`
-/

namespace A229120.P10288100682209880031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243354 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A229120.P10288100682209880031

/-! ## A229120.P18148732163994763023

`A243354(ratio[∏[A129129(n)]/2])`
-/

namespace A229120.P18148732163994763023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129129 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243354 (SequenceMachineLib.roundAway (f1 (n + 1) / f1 n)).toNat

end

end A229120.P18148732163994763023

/-! ## A229120.P2889440319546222014

`A006068(A161924(n+1)%A006794(n+1))`
-/

namespace A229120.P2889440319546222014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (Int.tmod (A161924 (n + 1)) (A006794 (n + 1))).toNat

end

end A229120.P2889440319546222014

/-!
# A229121: a(n) = Omega(n)^2 - omega(n)^2.

The programs for A229121, the canonical program `A229121.P2511485931188672379` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229121 has offset 1).

The definition of A229121 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046660, A080256, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A229121.P2511485931188672379

`A046660(n+1)*A080256(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A229121

/-- `A046660(n+1)*A080256(n+1)` -/
def P2511485931188672379.Spec : Prop :=
  ∀ n, P2511485931188672379.a n = A229121 (n + 1)

theorem P2511485931188672379.correct : P2511485931188672379.Spec := by
  intro n
  simp only [A229121, Nat.add_sub_cancel]

end A229121

/-! ## A229121.P3181884729922718955

`A001222(n+1)²-A001221(n+1)²`
-/

namespace A229121.P3181884729922718955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) ^ 2 - A001221 (n + 1) ^ 2

end

end A229121.P3181884729922718955

namespace A229121

/-- `A001222(n+1)²-A001221(n+1)²` -/
def P3181884729922718955.Spec : Prop :=
  ∀ n, P3181884729922718955.a n = A229121 (n + 1)

end A229121

/-! ## A229121.P5996874070308292586

`Δ[A022559(n)]²-A001221(n+1)²`
-/

namespace A229121.P5996874070308292586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A001221 (n + 1) ^ 2

end

end A229121.P5996874070308292586

namespace A229121

/-- `Δ[A022559(n)]²-A001221(n+1)²` -/
def P5996874070308292586.Spec : Prop :=
  ∀ n, P5996874070308292586.a n = A229121 (n + 1)

end A229121

/-! ## A229121.P4769593172894953830

`A001222(n+1)²-A158210(n+1)²`
-/

namespace A229121.P4769593172894953830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) ^ 2 - A158210 (n + 1) ^ 2

end

end A229121.P4769593172894953830

namespace A229121

/-- `A001222(n+1)²-A158210(n+1)²` -/
def P4769593172894953830.Spec : Prop :=
  ∀ n, P4769593172894953830.a n = A229121 (n + 1)

end A229121

/-! ## A229121.P2123622103188228498

`A144494(n+1)²-A087624(n+1)²`
-/

namespace A229121.P2123622103188228498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (n + 1) ^ 2 - A087624 (n + 1) ^ 2

end

end A229121.P2123622103188228498

namespace A229121

/-- `A144494(n+1)²-A087624(n+1)²` -/
def P2123622103188228498.Spec : Prop :=
  ∀ n, P2123622103188228498.a n = A229121 (n + 1)

end A229121

/-! ## A229121.P9109345255648892145

`A001222(A162510(n+1))*A080256(n+1)`
-/

namespace A229121.P9109345255648892145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A162510 (n + 1)).toNat * A080256 (n + 1)

end

end A229121.P9109345255648892145

namespace A229121

/-- `A001222(A162510(n+1))*A080256(n+1)` -/
def P9109345255648892145.Spec : Prop :=
  ∀ n, P9109345255648892145.a n = A229121 (n + 1)

end A229121

/-! ## A229121.P4901362100038411816

`A001222(n+1)²-A001222(A007947(n+1))²`
-/

namespace A229121.P4901362100038411816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) ^ 2 - A001222 (A007947 (n + 1)).toNat ^ 2

end

end A229121.P4901362100038411816

namespace A229121

/-- `A001222(n+1)²-A001222(A007947(n+1))²` -/
def P4901362100038411816.Spec : Prop :=
  ∀ n, P4901362100038411816.a n = A229121 (n + 1)

end A229121

/-! ## A229121.P10571732986784926139

`A001222(n+1)²-A001222(A034444(n+1))²`
-/

namespace A229121.P10571732986784926139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) ^ 2 - A001222 (A034444 (n + 1)).toNat ^ 2

end

end A229121.P10571732986784926139

namespace A229121

/-- `A001222(n+1)²-A001222(A034444(n+1))²` -/
def P10571732986784926139.Spec : Prop :=
  ∀ n, P10571732986784926139.a n = A229121 (n + 1)

end A229121

/-! ## A229121.P16589580697488014222

`A001222(n+1)²-A001222(A061389(n+1))²`
-/

namespace A229121.P16589580697488014222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) ^ 2 - A001222 (A061389 (n + 1)).toNat ^ 2

end

end A229121.P16589580697488014222

namespace A229121

/-- `A001222(n+1)²-A001222(A061389(n+1))²` -/
def P16589580697488014222.Spec : Prop :=
  ∀ n, P16589580697488014222.a n = A229121 (n + 1)

end A229121

/-! ## A229121.P6970612001418072882

`A001222(n+1)²-A001222(A073184(n+1))²`
-/

namespace A229121.P6970612001418072882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) ^ 2 - A001222 (A073184 (n + 1)).toNat ^ 2

end

end A229121.P6970612001418072882

namespace A229121

/-- `A001222(n+1)²-A001222(A073184(n+1))²` -/
def P6970612001418072882.Spec : Prop :=
  ∀ n, P6970612001418072882.a n = A229121 (n + 1)

end A229121

/-! ## A229121.P16471298569658813852

`A001222(n+1)²-A001222(A074816(n+1))²`
-/

namespace A229121.P16471298569658813852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) ^ 2 - A001222 (A074816 (n + 1)).toNat ^ 2

end

end A229121.P16471298569658813852

namespace A229121

/-- `A001222(n+1)²-A001222(A074816(n+1))²` -/
def P16471298569658813852.Spec : Prop :=
  ∀ n, P16471298569658813852.a n = A229121 (n + 1)

end A229121

/-! ## A229121.P15110100492145250339

`A001222(n+1)²-A001222(A082476(n+1))²`
-/

namespace A229121.P15110100492145250339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) ^ 2 - A001222 (A082476 (n + 1)).toNat ^ 2

end

end A229121.P15110100492145250339

namespace A229121

/-- `A001222(n+1)²-A001222(A082476(n+1))²` -/
def P15110100492145250339.Spec : Prop :=
  ∀ n, P15110100492145250339.a n = A229121 (n + 1)

end A229121

/-! ## A229121.P11848312316838830379

`A001222(n+1)²-A001222(A087688(n+1))²`
-/

namespace A229121.P11848312316838830379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) ^ 2 - A001222 (A087688 (n + 1)).toNat ^ 2

end

end A229121.P11848312316838830379

namespace A229121

/-- `A001222(n+1)²-A001222(A087688(n+1))²` -/
def P11848312316838830379.Spec : Prop :=
  ∀ n, P11848312316838830379.a n = A229121 (n + 1)

end A229121

/-! ## A229121.P10595110263118118203

`A086436(n+1)²-A086436(A007947(n+1))²`
-/

namespace A229121.P10595110263118118203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1) ^ 2 - A086436 (A007947 (n + 1)).toNat ^ 2

end

end A229121.P10595110263118118203

namespace A229121

/-- `A086436(n+1)²-A086436(A007947(n+1))²` -/
def P10595110263118118203.Spec : Prop :=
  ∀ n, P10595110263118118203.a n = A229121 (n + 1)

end A229121

/-! ## A229121.P18280272952323385219

`A001222(n+1)²-A001222(A181819(n+1))²`
-/

namespace A229121.P18280272952323385219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) ^ 2 - A001222 (A181819 (n + 1)).toNat ^ 2

end

end A229121.P18280272952323385219

namespace A229121

/-- `A001222(n+1)²-A001222(A181819(n+1))²` -/
def P18280272952323385219.Spec : Prop :=
  ∀ n, P18280272952323385219.a n = A229121 (n + 1)

end A229121

/-! ## A229121.P11912622561197094516

`A001222(n+1)²-A001222(A292586(n+1))²`
-/

namespace A229121.P11912622561197094516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) ^ 2 - A001222 (A292586 (n + 1)).toNat ^ 2

end

end A229121.P11912622561197094516

namespace A229121

/-- `A001222(n+1)²-A001222(A292586(n+1))²` -/
def P11912622561197094516.Spec : Prop :=
  ∀ n, P11912622561197094516.a n = A229121 (n + 1)

end A229121

/-! ## A229121.P8746533564602429249

`A001222(n+1)²-A061395(A238745(n+1))²`
-/

namespace A229121.P8746533564602429249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) ^ 2 - A061395 (A238745 (n + 1)).toNat ^ 2

end

end A229121.P8746533564602429249

namespace A229121

/-- `A001222(n+1)²-A061395(A238745(n+1))²` -/
def P8746533564602429249.Spec : Prop :=
  ∀ n, P8746533564602429249.a n = A229121 (n + 1)

end A229121

/-! ## A229121.P17335356157572008445

`A001222(n+1)²-A001222(A328915(n+1))²`
-/

namespace A229121.P17335356157572008445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) ^ 2 - A001222 (A328915 (n + 1)).toNat ^ 2

end

end A229121.P17335356157572008445

namespace A229121

/-- `A001222(n+1)²-A001222(A328915(n+1))²` -/
def P17335356157572008445.Spec : Prop :=
  ∀ n, P17335356157572008445.a n = A229121 (n + 1)

end A229121

/-! ## A229121.P11546543314499236657

`(A001222(n+1)+A001221(n+1))*A046660(n+1)`
-/

namespace A229121.P11546543314499236657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) + A001221 (n + 1)) * A046660 (n + 1)

end

end A229121.P11546543314499236657

namespace A229121

/-- `(A001222(n+1)+A001221(n+1))*A046660(n+1)` -/
def P11546543314499236657.Spec : Prop :=
  ∀ n, P11546543314499236657.a n = A229121 (n + 1)

end A229121

/-! ## A229121.P9542490062205712908

`(A144494(n+1)+A001221(n+1))*A046660(n+1)`
-/

namespace A229121.P9542490062205712908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144494 (n + 1) + A001221 (n + 1)) * A046660 (n + 1)

end

end A229121.P9542490062205712908

namespace A229121

/-- `(A144494(n+1)+A001221(n+1))*A046660(n+1)` -/
def P9542490062205712908.Spec : Prop :=
  ∀ n, P9542490062205712908.a n = A229121 (n + 1)

end A229121

/-!
# A229122: For odd m, let f(m) be the odd part of 3*m+1. a(n) is the least positive number of f-iterations of 2*n-1 to reach an odious number (A000069), or 0 if no such number of f-iterations exists.

The programs for A229122, there is no canonical definition to state claims against.
-/

/-! ## A229122.P3093071003357690229

`A055396(A063787(3*(n+1))*A064896(n+1))`
-/

namespace A229122.P3093071003357690229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A063787 (3 * (n + 1)) * A064896 (n + 1)).toNat

end

end A229122.P3093071003357690229

/-! ## A229122.P10718507213175832761

`A029635(gcd(A000120(3*n+2), A356289(n)))`
-/

namespace A229122.P10718507213175832761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (Int.gcd (A000120 (3 * n + 2)) (A356289 n))

end

end A229122.P10718507213175832761

/-! ## A229122.P10361148800010627159

`gcd(A106490(A106562(n+1)), A106583(n))`
-/

namespace A229122.P10361148800010627159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106490 (A106562 (n + 1)).toNat) (A106583 n)

end

end A229122.P10361148800010627159

/-! ## A229122.P8263036734293178981

`or(A161175(3*n+2), A188014(A005109(n+1)))`
-/

namespace A229122.P8263036734293178981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161175 (3 * n + 2)) (A188014 (A005109 (n + 1)).toNat)

end

end A229122.P8263036734293178981

/-! ## A229122.P9360357541521677877

`A355745(A193231(3*n+2)+1)+1`
-/

namespace A229122.P9360357541521677877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355745 (A193231 (3 * n + 2) + 1).toNat + 1

end

end A229122.P9360357541521677877

/-!
# A229123: a(n) gives the number of bases, b>1, in which n is an early bird.

The programs for A229123, there is no canonical definition to state claims against.
-/

/-! ## A229123.P11752893787778854503

`A284203(A028421(n))+A059169(n+1)`
-/

namespace A229123.P11752893787778854503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284203 (A028421 n).toNat + A059169 (n + 1)

end

end A229123.P11752893787778854503

/-! ## A229123.P9284097296929465827

`val(A280638(A074323(n)), 2)`
-/

namespace A229123.P9284097296929465827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A280638 (A074323 n).toNat).toNat 2

end

end A229123.P9284097296929465827

/-! ## A229123.P3708342128140296037

`A286574(A002275(n)%A006840(n))`
-/

namespace A229123.P3708342128140296037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286574 (Int.tmod (A002275 n) (A006840 n)).toNat

end

end A229123.P3708342128140296037

/-! ## A229123.P11555967590260633890

`A238949(lcm(A007827(n), A195441(n)))`
-/

namespace A229123.P11555967590260633890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (Int.lcm (A007827 n) (A195441 n))

end

end A229123.P11555967590260633890

/-! ## A229123.P3802343408401482843

`A114592(A327249(2*(n+1)))+A068980(n)`
-/

namespace A229123.P3802343408401482843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A327249 (2 * (n + 1))).toNat + A068980 n

end

end A229123.P3802343408401482843

/-!
# A229125: Numbers of the form p * m^2, where p is prime and m > 0: union of A228056 and A000040.

The programs for A229125, the canonical program `A229125.P17586178144269697586` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229125 has offset 1).

The definition of A229125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229125.P16894969214986679958

`eq[2, A335424(n+1)]+1`
-/

namespace A229125.P16894969214986679958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335424 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A229125.P16894969214986679958

namespace A229125

/-- `eq[2, A335424(n+1)]+1` -/
def P16894969214986679958.Spec : Prop :=
  ∀ n, (P16894969214986679958.a n : ℤ) = A229125 (n + 1)

end A229125

/-! ## A229125.P897629556153560780

`eq[1, A001222(A295878(n+1))]+1`
-/

namespace A229125.P897629556153560780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A295878 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A229125.P897629556153560780

namespace A229125

/-- `eq[1, A001222(A295878(n+1))]+1` -/
def P897629556153560780.Spec : Prop :=
  ∀ n, (P897629556153560780.a n : ℤ) = A229125 (n + 1)

end A229125

/-! ## A229125.P9905665208256813984

`eq[2, A000005(A007913(n+1))]+1`
-/

namespace A229125.P9905665208256813984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A229125.P9905665208256813984

namespace A229125

/-- `eq[2, A000005(A007913(n+1))]+1` -/
def P9905665208256813984.Spec : Prop :=
  ∀ n, (P9905665208256813984.a n : ℤ) = A229125 (n + 1)

end A229125

/-! ## A229125.P17586178144269697586

`eq[1, A054024(A007913(n+2))]+2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A229125

/-- `eq[1, A054024(A007913(n+2))]+2` -/
def P17586178144269697586.Spec : Prop :=
  ∀ n, (P17586178144269697586.a n : ℤ) = A229125 (n + 1)

theorem P17586178144269697586.correct : P17586178144269697586.Spec := by
  intro n
  simp only [A229125, Nat.add_sub_cancel]

end A229125

/-! ## A229125.P8165511216086652254

`∪[A000040(n+1), A228056(n+1)]`
-/

namespace A229125.P8165511216086652254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229125.P8165511216086652254

namespace A229125

/-- `∪[A000040(n+1), A228056(n+1)]` -/
def P8165511216086652254.Spec : Prop :=
  ∀ n, (P8165511216086652254.a n : ℤ) = A229125 (n + 1)

end A229125

/-! ## A229125.P14026190549321154805

`∪[A228056(n+1), A246551(n+1)]`
-/

namespace A229125.P14026190549321154805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229125.P14026190549321154805

namespace A229125

/-- `∪[A228056(n+1), A246551(n+1)]` -/
def P14026190549321154805.Spec : Prop :=
  ∀ n, (P14026190549321154805.a n : ℤ) = A229125 (n + 1)

end A229125

/-! ## A229125.P8164616090506574161

`filter[A265640(n+1), A049240(#)]`
-/

namespace A229125.P8164616090506574161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A229125.P8164616090506574161

namespace A229125

/-- `filter[A265640(n+1), A049240(#)]` -/
def P8164616090506574161.Spec : Prop :=
  ∀ n, P8164616090506574161.a n = A229125 (n + 1)

end A229125

/-! ## A229125.P93332002925806649

`filter[A265640(n+1), A066829(#)]`
-/

namespace A229125.P93332002925806649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A229125.P93332002925806649

namespace A229125

/-- `filter[A265640(n+1), A066829(#)]` -/
def P93332002925806649.Spec : Prop :=
  ∀ n, P93332002925806649.a n = A229125 (n + 1)

end A229125

/-! ## A229125.P15716578334979609763

`filter[A265640(n+1), A358769(#)]`
-/

namespace A229125.P15716578334979609763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A229125.P15716578334979609763

namespace A229125

/-- `filter[A265640(n+1), A358769(#)]` -/
def P15716578334979609763.Spec : Prop :=
  ∀ n, P15716578334979609763.a n = A229125 (n + 1)

end A229125

/-! ## A229125.P9434245628692333111

`filter[A245303(n+1), A358769(#)]`
-/

namespace A229125.P9434245628692333111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A229125.P9434245628692333111

namespace A229125

/-- `filter[A245303(n+1), A358769(#)]` -/
def P9434245628692333111.Spec : Prop :=
  ∀ n, P9434245628692333111.a n = A229125 (n + 1)

end A229125

/-! ## A229125.P18231620106694421950

`filter[A285801(n+1), A066829(#)]`
-/

namespace A229125.P18231620106694421950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A229125.P18231620106694421950

namespace A229125

/-- `filter[A285801(n+1), A066829(#)]` -/
def P18231620106694421950.Spec : Prop :=
  ∀ n, P18231620106694421950.a n = A229125 (n + 1)

end A229125

/-! ## A229125.P14738896719561142439

`filter[A285801(n+1), A358769(#)]`
-/

namespace A229125.P14738896719561142439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A229125.P14738896719561142439

namespace A229125

/-- `filter[A285801(n+1), A358769(#)]` -/
def P14738896719561142439.Spec : Prop :=
  ∀ n, P14738896719561142439.a n = A229125 (n + 1)

end A229125

/-! ## A229125.P14222031804981492054

`eq[1, A162642(n+1)]+1`
-/

namespace A229125.P14222031804981492054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A229125.P14222031804981492054

namespace A229125

/-- `eq[1, A162642(n+1)]+1` -/
def P14222031804981492054.Spec : Prop :=
  ∀ n, (P14222031804981492054.a n : ℤ) = A229125 (n + 1)

end A229125

/-! ## A229125.P1497553085620028127

`filter[A026424(n+1), A340372(#)]`
-/

namespace A229125.P1497553085620028127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A229125.P1497553085620028127

namespace A229125

/-- `filter[A026424(n+1), A340372(#)]` -/
def P1497553085620028127.Spec : Prop :=
  ∀ n, P1497553085620028127.a n = A229125 (n + 1)

end A229125

/-! ## A229125.P16269523523636148581

`filter[A026422(n+1), A358769(#)]`
-/

namespace A229125.P16269523523636148581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A229125.P16269523523636148581

namespace A229125

/-- `filter[A026422(n+1), A358769(#)]` -/
def P16269523523636148581.Spec : Prop :=
  ∀ n, P16269523523636148581.a n = A229125 (n + 1)

end A229125

/-! ## A229125.P13991250899745119600

`filter[A026424(n+1), A358769(#)]`
-/

namespace A229125.P13991250899745119600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A229125.P13991250899745119600

namespace A229125

/-- `filter[A026424(n+1), A358769(#)]` -/
def P13991250899745119600.Spec : Prop :=
  ∀ n, P13991250899745119600.a n = A229125 (n + 1)

end A229125

/-! ## A229125.P14845306757889120594

`filter[A026422(n+2), A340372(#)]`
-/

namespace A229125.P14845306757889120594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A229125.P14845306757889120594

namespace A229125

/-- `filter[A026422(n+2), A340372(#)]` -/
def P14845306757889120594.Spec : Prop :=
  ∀ n, P14845306757889120594.a n = A229125 (n + 1)

end A229125

/-! ## A229125.P50973599265373974

`∩[A026424(n+1), A265640(n+1)]`
-/

namespace A229125.P50973599265373974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229125.P50973599265373974

namespace A229125

/-- `∩[A026424(n+1), A265640(n+1)]` -/
def P50973599265373974.Spec : Prop :=
  ∀ n, (P50973599265373974.a n : ℤ) = A229125 (n + 1)

end A229125

/-! ## A229125.P7178400162567087065

`∩[A026424(n+1), A285801(n+1)]`
-/

namespace A229125.P7178400162567087065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229125.P7178400162567087065

namespace A229125

/-- `∩[A026424(n+1), A285801(n+1)]` -/
def P7178400162567087065.Spec : Prop :=
  ∀ n, (P7178400162567087065.a n : ℤ) = A229125 (n + 1)

end A229125

/-! ## A229125.P5982216534047481479

`filter[A363597(n+1), A358769(#)]`
-/

namespace A229125.P5982216534047481479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A229125.P5982216534047481479

namespace A229125

/-- `filter[A363597(n+1), A358769(#)]` -/
def P5982216534047481479.Spec : Prop :=
  ∀ n, P5982216534047481479.a n = A229125 (n + 1)

end A229125

/-!
# A229127: Number of n-digit numbers containing the digit '0'.

The programs for A229127, the canonical program `A229127.P4617782069420174382` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229127 has offset 1).

The definition of A229127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229127.P4617782069420174382

`9*(a(n-1)+10^(n-1))` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229127

/-- `9*(a(n-1)+10^(n-1))` -/
def P4617782069420174382.Spec : Prop :=
  ∀ n, P4617782069420174382.a n = (A229127 (n + 1) : ℚ)

end A229127

/-! ## A229127.P3004308071592010485

`Δ[and(-2, 10^n)]-9^(n+1)`
-/

namespace A229127.P3004308071592010485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (9 ^ (n + 1) : ℤ)

end

end A229127.P3004308071592010485

namespace A229127

/-- `Δ[and(-2, 10^n)]-9^(n+1)` -/
def P3004308071592010485.Spec : Prop :=
  ∀ n, P3004308071592010485.a n = A229127 (n + 1)

end A229127

/-! ## A229127.P7670852634417053701

`or(1, Δ[10^n+2-(9^(n+1)-1)/8])`
-/

namespace A229127.P7670852634417053701
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℚ) + (2 - ((9 ^ (n + 1) : ℤ) - 1 : ℚ) / 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n))

end

end A229127.P7670852634417053701

namespace A229127

/-- `or(1, Δ[10^n+2-(9^(n+1)-1)/8])` -/
def P7670852634417053701.Spec : Prop :=
  ∀ n, P7670852634417053701.a n = A229127 (n + 1)

end A229127

/-! ## A229127.P3471067906227919556

`Δ[10^n+2-(9^(n+1)-1)/8]+floor(acot(n))`
-/

namespace A229127.P3471067906227919556
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℚ) + (2 - ((9 ^ (n + 1) : ℤ) - 1 : ℚ) / 8)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (⌊SequenceMachineLib.acot (n : ℝ)⌋ : ℚ)

end

end A229127.P3471067906227919556

namespace A229127

/-- `Δ[10^n+2-(9^(n+1)-1)/8]+floor(acot(n))` -/
def P3471067906227919556.Spec : Prop :=
  ∀ n, P3471067906227919556.a n = (A229127 (n + 1) : ℚ)

end A229127

/-! ## A229127.P5927367765722347862

`Δ[ceil(sin(n)²)+10^n+2-(9^(n+1)-1)/8]`
-/

namespace A229127.P5927367765722347862
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.sin (n : ℝ) ^ 2⌉ : ℚ) + ((10 ^ n : ℚ) + (2 - ((9 ^ (n + 1) : ℤ) - 1 : ℚ) / 8))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229127.P5927367765722347862

namespace A229127

/-- `Δ[ceil(sin(n)²)+10^n+2-(9^(n+1)-1)/8]` -/
def P5927367765722347862.Spec : Prop :=
  ∀ n, P5927367765722347862.a n = (A229127 (n + 1) : ℚ)

end A229127

/-! ## A229127.P17899835193449370155

`Δ[ceil(cosh(sin(n)))+10^n+2-(9^(n+1)-1)/8]`
-/

namespace A229127.P17899835193449370155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈Real.cosh (Real.sin (n : ℝ))⌉ : ℚ) + ((10 ^ n : ℚ) + (2 - ((9 ^ (n + 1) : ℤ) - 1 : ℚ) / 8))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229127.P17899835193449370155

namespace A229127

/-- `Δ[ceil(cosh(sin(n)))+10^n+2-(9^(n+1)-1)/8]` -/
def P17899835193449370155.Spec : Prop :=
  ∀ n, P17899835193449370155.a n = (A229127 (n + 1) : ℚ)

end A229127

/-! ## A229127.P11434402518060394020

`record[A050720(n+1)+floor(acot(n))]`
-/

namespace A229127.P11434402518060394020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050720 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229127.P11434402518060394020

namespace A229127

/-- `record[A050720(n+1)+floor(acot(n))]` -/
def P11434402518060394020.Spec : Prop :=
  ∀ n, P11434402518060394020.a n = A229127 (n + 1)

end A229127

/-! ## A229127.P6411813098806332180

`Δ[A178500(n)-A052386(n)]`
-/

namespace A229127.P6411813098806332180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 n - A052386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229127.P6411813098806332180

namespace A229127

/-- `Δ[A178500(n)-A052386(n)]` -/
def P6411813098806332180.Spec : Prop :=
  ∀ n, P6411813098806332180.a n = A229127 (n + 1)

end A229127

/-! ## A229127.P3352028121209481446

`A050720(2*(n+1))+A000007(n)`
-/

namespace A229127.P3352028121209481446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050720 (2 * (n + 1)) + A000007 n

end

end A229127.P3352028121209481446

namespace A229127

/-- `A050720(2*(n+1))+A000007(n)` -/
def P3352028121209481446.Spec : Prop :=
  ∀ n, P3352028121209481446.a n = A229127 (n + 1)

end A229127

/-!
# A229129: Digital clock palindromic semiprimes.

The programs for A229129, there is no canonical definition to state claims against.
-/

/-! ## A229129.P17646468172386203639

`∩[A046328(n+1), A014419(n)]`
-/

namespace A229129.P17646468172386203639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014419 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229129.P17646468172386203639

/-! ## A229129.P8086421994488654093

`∩[A222620(n+1), A351096(n+1)]`
-/

namespace A229129.P8086421994488654093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229129.P8086421994488654093

/-! ## A229129.P6262054405039879762

`∩[A103607(n+1), A222620(n+1)]`
-/

namespace A229129.P6262054405039879762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229129.P6262054405039879762

/-! ## A229129.P268482796089700080

`∩[A222620(n+1), A366318(n+1)]`
-/

namespace A229129.P268482796089700080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229129.P268482796089700080

/-!
# A229131: Numbers k such that the distance between the k-th triangular number and the nearest square is exactly 1.

The programs for A229131, there is no canonical definition to state claims against.
-/

/-! ## A229131.P18422928167796350062

`floor(sqrt(2*A182334(n+2)))`
-/

namespace A229131.P18422928167796350062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A182334 (n + 2))

end

end A229131.P18422928167796350062

/-! ## A229131.P15154993195291099400

`A229083(A319371(n+1))`
-/

namespace A229131.P15154993195291099400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229083 (A319371 (n + 1)).toNat

end

end A229131.P15154993195291099400

/-! ## A229131.P939907296537279220

`∪[A006451(n+1), A072221(n)]`
-/

namespace A229131.P939907296537279220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072221 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229131.P939907296537279220

/-! ## A229131.P13251020442888781065

`record[gcd(A035444(n), A229083(n+1))]`
-/

namespace A229131.P13251020442888781065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035444 n) (A229083 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229131.P13251020442888781065

/-! ## A229131.P4562573400365636387

`∪[A006451(n+1), A270889(n)-2]`
-/

namespace A229131.P4562573400365636387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270889 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229131.P4562573400365636387

/-!
# A229132: Initials for A159559 corresponding to records of A229019.

The programs for A229132, there is no canonical definition to state claims against.
-/

/-! ## A229132.P3169059014556555666

`A219533(A120755(n+1))`
-/

namespace A229132.P3169059014556555666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219533 (A120755 (n + 1)).toNat

end

end A229132.P3169059014556555666

/-! ## A229132.P7551662796777939122

`p?[∑[A267099(A018122(n))]]`
-/

namespace A229132.P7551662796777939122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267099 (A018122 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229132.P7551662796777939122

/-! ## A229132.P1692760074809879143

`record[A231608(A081711(n+1))]`
-/

namespace A229132.P1692760074809879143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231608 (A081711 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229132.P1692760074809879143

/-!
# A229133: Numbers k such that the distance between the k-th triangular number and the nearest square is a square.

The programs for A229133, there is no canonical definition to state claims against.
-/

/-! ## A229133.P11914786459102371892

`eq[A000007(n), A029431(A307591(n+1))]`
-/

namespace A229133.P11914786459102371892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029431 (A307591 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229133.P11914786459102371892

/-! ## A229133.P15249533577131559374

`eq[A020761(n), A029431(A307591(n+1))]`
-/

namespace A229133.P15249533577131559374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029431 (A307591 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229133.P15249533577131559374

/-!
# A229134: Square numbers that are the sum of two non-consecutive triangular numbers.

The programs for A229134, the canonical program `A229134.P4330092751427606427` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229134 has offset 1).

The definition of A229134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229134.P10215204437252907858

`A094550(n+1)²`
-/

namespace A229134.P10215204437252907858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094550 (n + 1) ^ 2

end

end A229134.P10215204437252907858

namespace A229134

/-- `A094550(n+1)²` -/
def P10215204437252907858.Spec : Prop :=
  ∀ n, P10215204437252907858.a n = A229134 (n + 1)

end A229134

/-! ## A229134.P1831031739647277386

`comp[ceil(A089593(n+1)/2)]²`
-/

namespace A229134.P1831031739647277386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089593 (n + 1) : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A229134.P1831031739647277386

namespace A229134

/-- `comp[ceil(A089593(n+1)/2)]²` -/
def P1831031739647277386.Spec : Prop :=
  ∀ n, (P1831031739647277386.a n : ℤ) = A229134 (n + 1)

end A229134

/-! ## A229134.P8020437030466081859

`A094550(A000027(n+1))*A094550(n+1)`
-/

namespace A229134.P8020437030466081859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094550 (A000027 (n + 1)).toNat * A094550 (n + 1)

end

end A229134.P8020437030466081859

namespace A229134

/-- `A094550(A000027(n+1))*A094550(n+1)` -/
def P8020437030466081859.Spec : Prop :=
  ∀ n, P8020437030466081859.a n = A229134 (n + 1)

end A229134

/-! ## A229134.P14799087415019578152

`A094550(n+1)*A094550(A005408(n)-n)`
-/

namespace A229134.P14799087415019578152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094550 (n + 1) * A094550 (A005408 n - (n : ℤ)).toNat

end

end A229134.P14799087415019578152

namespace A229134

/-- `A094550(n+1)*A094550(A005408(n)-n)` -/
def P14799087415019578152.Spec : Prop :=
  ∀ n, P14799087415019578152.a n = A229134 (n + 1)

end A229134

/-! ## A229134.P17090882055603587298

`A094550(n+1)^(A005574(n+2)/A001912(n+1))`
-/

namespace A229134.P17090882055603587298
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A094550 (n + 1) : ℝ) ^ ((A005574 (n + 2) : ℚ) / (A001912 (n + 1) : ℚ) : ℝ)

end

end A229134.P17090882055603587298

namespace A229134

/-- `A094550(n+1)^(A005574(n+2)/A001912(n+1))` -/
def P17090882055603587298.Spec : Prop :=
  ∀ n, P17090882055603587298.a n = (A229134 (n + 1) : ℝ)

end A229134

/-! ## A229134.P3415113045950909993

`A000290(abs(1-A094550(n+1))+1)`
-/

namespace A229134.P3415113045950909993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (|1 - A094550 (n + 1)| + 1).toNat

end

end A229134.P3415113045950909993

namespace A229134

/-- `A000290(abs(1-A094550(n+1))+1)` -/
def P3415113045950909993.Spec : Prop :=
  ∀ n, P3415113045950909993.a n = A229134 (n + 1)

end A229134

/-! ## A229134.P15503548203140142500

`(lt[A256970(n+1), A008706(n)]+1)²`
-/

namespace A229134.P15503548203140142500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) ^ 2

end

end A229134.P15503548203140142500

namespace A229134

/-- `(lt[A256970(n+1), A008706(n)]+1)²` -/
def P15503548203140142500.Spec : Prop :=
  ∀ n, (P15503548203140142500.a n : ℤ) = A229134 (n + 1)

end A229134

/-! ## A229134.P6248754081214124273

`(lt[A256970(n+1), A017449(n)]+1)²`
-/

namespace A229134.P6248754081214124273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) ^ 2

end

end A229134.P6248754081214124273

namespace A229134

/-- `(lt[A256970(n+1), A017449(n)]+1)²` -/
def P6248754081214124273.Spec : Prop :=
  ∀ n, (P6248754081214124273.a n : ℤ) = A229134 (n + 1)

end A229134

/-! ## A229134.P13977706362947125823

`A000290(A094550(2*(n+1)-(n+1)))`
-/

namespace A229134.P13977706362947125823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A094550 (2 * (n + 1) - (n + 1))).toNat

end

end A229134.P13977706362947125823

namespace A229134

/-- `A000290(A094550(2*(n+1)-(n+1)))` -/
def P13977706362947125823.Spec : Prop :=
  ∀ n, P13977706362947125823.a n = A229134 (n + 1)

end A229134

/-! ## A229134.P4330092751427606427

`(A121944(n+1)-1)/4`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A229134

/-- `(A121944(n+1)-1)/4` -/
def P4330092751427606427.Spec : Prop :=
  ∀ n, P4330092751427606427.a n = (A229134 (n + 1) : ℚ)

end A229134

/-! ## A229134.P11042057167530630740

`lt[1, A193330(2*n)]²`
-/

namespace A229134.P11042057167530630740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A229134.P11042057167530630740

namespace A229134

/-- `lt[1, A193330(2*n)]²` -/
def P11042057167530630740.Spec : Prop :=
  ∀ n, (P11042057167530630740.a n : ℤ) = A229134 (n + 1)

end A229134

/-! ## A229134.P13991250910878522964

`lt[2, A053000(2*n)]²`
-/

namespace A229134.P13991250910878522964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A229134.P13991250910878522964

namespace A229134

/-- `lt[2, A053000(2*n)]²` -/
def P13991250910878522964.Spec : Prop :=
  ∀ n, (P13991250910878522964.a n : ℤ) = A229134 (n + 1)

end A229134

/-! ## A229134.P1437385501789208804

`lt[2, A193432(2*n)]²`
-/

namespace A229134.P1437385501789208804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A229134.P1437385501789208804

namespace A229134

/-- `lt[2, A193432(2*n)]²` -/
def P1437385501789208804.Spec : Prop :=
  ∀ n, (P1437385501789208804.a n : ℤ) = A229134 (n + 1)

end A229134

/-! ## A229134.P6124763642253276203

`lt[2, A278162(2*n)]²`
-/

namespace A229134.P6124763642253276203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278162 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A229134.P6124763642253276203

namespace A229134

/-- `lt[2, A278162(2*n)]²` -/
def P6124763642253276203.Spec : Prop :=
  ∀ n, (P6124763642253276203.a n : ℤ) = A229134 (n + 1)

end A229134

/-! ## A229134.P9200420775545098032

`lt[A259036(2*n), n²]²`
-/

namespace A229134.P9200420775545098032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A229134.P9200420775545098032

namespace A229134

/-- `lt[A259036(2*n), n²]²` -/
def P9200420775545098032.Spec : Prop :=
  ∀ n, (P9200420775545098032.a n : ℤ) = A229134 (n + 1)

end A229134

/-! ## A229134.P10305168919374195771

`lt[A247339(A004277(n)), n]²`
-/

namespace A229134.P10305168919374195771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A229134.P10305168919374195771

namespace A229134

/-- `lt[A247339(A004277(n)), n]²` -/
def P10305168919374195771.Spec : Prop :=
  ∀ n, (P10305168919374195771.a n : ℤ) = A229134 (n + 1)

end A229134

/-! ## A229134.P11904718761056478445

`A000290(lt[2, A193432(2*n)])`
-/

namespace A229134.P11904718761056478445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A229134.P11904718761056478445

namespace A229134

/-- `A000290(lt[2, A193432(2*n)])` -/
def P11904718761056478445.Spec : Prop :=
  ∀ n, P11904718761056478445.a n = A229134 (n + 1)

end A229134

/-! ## A229134.P15885228406921185480

`lt[A089120(A004277(n)), A002522(n)]²`
-/

namespace A229134.P15885228406921185480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A229134.P15885228406921185480

namespace A229134

/-- `lt[A089120(A004277(n)), A002522(n)]²` -/
def P15885228406921185480.Spec : Prop :=
  ∀ n, (P15885228406921185480.a n : ℤ) = A229134 (n + 1)

end A229134

/-! ## A229134.P7357466732107101060

`lt[A281793(2*n), n²]²`
-/

namespace A229134.P7357466732107101060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281793 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 2

end

end A229134.P7357466732107101060

namespace A229134

/-- `lt[A281793(2*n), n²]²` -/
def P7357466732107101060.Spec : Prop :=
  ∀ n, (P7357466732107101060.a n : ℤ) = A229134 (n + 1)

end A229134

/-! ## A229134.P5778173242294036605

`A094550(n+1)^A020639(A005574(3*n+2))`
-/

namespace A229134.P5778173242294036605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094550 (n + 1) : ℚ) ^ (A020639 (A005574 (3 * n + 2)).toNat : ℤ)

end

end A229134.P5778173242294036605

namespace A229134

/-- `A094550(n+1)^A020639(A005574(3*n+2))` -/
def P5778173242294036605.Spec : Prop :=
  ∀ n, P5778173242294036605.a n = (A229134 (n + 1) : ℚ)

end A229134

/-!
# A229135: a(n) = n * (2 + 2^(2*n - 1)).

The programs for A229135, the canonical program `A229135.P12108909619783335073` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229135 has offset 0).

The definition of A229135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229135.P12108909619783335073

`n*(2+2^(2*n-1))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229135

/-- `n*(2+2^(2*n-1))` -/
def P12108909619783335073.Spec : Prop :=
  ∀ n, P12108909619783335073.a n = (A229135 n : ℚ)

end A229135

/-! ## A229135.P8589427358839582699

`n+A215149(2*n)/2`
-/

namespace A229135.P8589427358839582699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) + (A215149 (2 * n) : ℚ) / 2

end

end A229135.P8589427358839582699

namespace A229135

/-- `n+A215149(2*n)/2` -/
def P8589427358839582699.Spec : Prop :=
  ∀ n, P8589427358839582699.a n = (A229135 n : ℚ)

end A229135

/-! ## A229135.P9583786307144085201

`(A228827(n)-A000367(n))/A002445(n)`
-/

namespace A229135.P9583786307144085201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228827 n - A000367 n : ℚ) / (A002445 n : ℚ)

end

end A229135.P9583786307144085201

namespace A229135

/-- `(A228827(n)-A000367(n))/A002445(n)` -/
def P9583786307144085201.Spec : Prop :=
  ∀ n, P9583786307144085201.a n = (A229135 n : ℚ)

end A229135

/-! ## A229135.P6602417488777635

`n*∑[4*a(n-1)]/2` with `a(0)=5, a(1)=3`
-/

namespace A229135.P6602417488777635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 3] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 2

end

end A229135.P6602417488777635

namespace A229135

/-- `n*∑[4*a(n-1)]/2` -/
def P6602417488777635.Spec : Prop :=
  ∀ n, P6602417488777635.a n = (A229135 n : ℚ)

end A229135

/-! ## A229135.P8305547057330901517

`A002699(n)+2*n`
-/

namespace A229135.P8305547057330901517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002699 n + (2 * n : ℤ)

end

end A229135.P8305547057330901517

namespace A229135

/-- `A002699(n)+2*n` -/
def P8305547057330901517.Spec : Prop :=
  ∀ n, P8305547057330901517.a n = A229135 n

end A229135

/-! ## A229135.P13041526855229779659

`lcm(n, A227978(2*n))`
-/

namespace A229135.P13041526855229779659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A227978 (2 * n))

end

end A229135.P13041526855229779659

namespace A229135

/-- `lcm(n, A227978(2*n))` -/
def P13041526855229779659.Spec : Prop :=
  ∀ n, (P13041526855229779659.a n : ℤ) = A229135 n

end A229135

/-! ## A229135.P9568318401079794565

`record[n-2*A168150(n)]`
-/

namespace A229135.P9568318401079794565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A168150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229135.P9568318401079794565

namespace A229135

/-- `record[n-2*A168150(n)]` -/
def P9568318401079794565.Spec : Prop :=
  ∀ n, P9568318401079794565.a n = A229135 n

end A229135

/-! ## A229135.P2468717728377014178

`2*n+2*A002697(n)`
-/

namespace A229135.P2468717728377014178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + 2 * A002697 n

end

end A229135.P2468717728377014178

namespace A229135

/-- `2*n+2*A002697(n)` -/
def P2468717728377014178.Spec : Prop :=
  ∀ n, P2468717728377014178.a n = A229135 n

end A229135

/-! ## A229135.P3396010957612746734

`A057711(2*n)+2*n`
-/

namespace A229135.P3396010957612746734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (2 * n) + (2 * n : ℤ)

end

end A229135.P3396010957612746734

namespace A229135

/-- `A057711(2*n)+2*n` -/
def P3396010957612746734.Spec : Prop :=
  ∀ n, P3396010957612746734.a n = A229135 n

end A229135

/-! ## A229135.P9626801533264319349

`A185251(2*n)+2*n`
-/

namespace A229135.P9626801533264319349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185251 (2 * n) + (2 * n : ℤ)

end

end A229135.P9626801533264319349

namespace A229135

/-- `A185251(2*n)+2*n` -/
def P9626801533264319349.Spec : Prop :=
  ∀ n, P9626801533264319349.a n = A229135 n

end A229135

/-! ## A229135.P2439088891185051326

`A185252(2*n)+2*n`
-/

namespace A229135.P2439088891185051326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185252 (2 * n) + (2 * n : ℤ)

end

end A229135.P2439088891185051326

namespace A229135

/-- `A185252(2*n)+2*n` -/
def P2439088891185051326.Spec : Prop :=
  ∀ n, P2439088891185051326.a n = A229135 n

end A229135

/-! ## A229135.P12492960183821352568

`A274497(2*n)+2*n`
-/

namespace A229135.P12492960183821352568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274497 (2 * n) + (2 * n : ℤ)

end

end A229135.P12492960183821352568

namespace A229135

/-- `A274497(2*n)+2*n` -/
def P12492960183821352568.Spec : Prop :=
  ∀ n, P12492960183821352568.a n = A229135 n

end A229135

/-! ## A229135.P17714318296127369553

`record[(2^n+2)*A001057(n)]`
-/

namespace A229135.P17714318296127369553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 2 : ℤ) * A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229135.P17714318296127369553

namespace A229135

/-- `record[(2^n+2)*A001057(n)]` -/
def P17714318296127369553.Spec : Prop :=
  ∀ n, P17714318296127369553.a n = A229135 n

end A229135

/-! ## A229135.P16945539995646436003

`2*n+n*A011782(2*n)`
-/

namespace A229135.P16945539995646436003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (n : ℤ) * A011782 (2 * n)

end

end A229135.P16945539995646436003

namespace A229135

/-- `2*n+n*A011782(2*n)` -/
def P16945539995646436003.Spec : Prop :=
  ∀ n, P16945539995646436003.a n = A229135 n

end A229135

/-! ## A229135.P12374649210849827

`A005843(n)+A002699(n)`
-/

namespace A229135.P12374649210849827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A002699 n

end

end A229135.P12374649210849827

namespace A229135

/-- `A005843(n)+A002699(n)` -/
def P12374649210849827.Spec : Prop :=
  ∀ n, P12374649210849827.a n = A229135 n

end A229135

/-! ## A229135.P8793552809252213531

`A086093(n)-A186948(n)`
-/

namespace A229135.P8793552809252213531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086093 n - A186948 n

end

end A229135.P8793552809252213531

namespace A229135

/-- `A086093(n)-A186948(n)` -/
def P8793552809252213531.Spec : Prop :=
  ∀ n, P8793552809252213531.a n = A229135 n

end A229135

/-! ## A229135.P16769768520136535459

`2*n+A000079(n)*A001787(n)`
-/

namespace A229135.P16769768520136535459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A000079 n * A001787 n

end

end A229135.P16769768520136535459

namespace A229135

/-- `2*n+A000079(n)*A001787(n)` -/
def P16769768520136535459.Spec : Prop :=
  ∀ n, P16769768520136535459.a n = A229135 n

end A229135

/-! ## A229135.P16874160735681693123

`A227978(2*n)-A295405(2*n+1)`
-/

namespace A229135.P16874160735681693123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227978 (2 * n) - A295405 (2 * n + 1)

end

end A229135.P16874160735681693123

namespace A229135

/-- `A227978(2*n)-A295405(2*n+1)` -/
def P16874160735681693123.Spec : Prop :=
  ∀ n, P16874160735681693123.a n = A229135 n

end A229135

/-! ## A229135.P7825340965544743549

`3*n*A056469(2*n)/A157532(n+4)`
-/

namespace A229135.P7825340965544743549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) * A056469 (2 * n) : ℚ) / (A157532 (n + 4) : ℚ)

end

end A229135.P7825340965544743549

namespace A229135

/-- `3*n*A056469(2*n)/A157532(n+4)` -/
def P7825340965544743549.Spec : Prop :=
  ∀ n, P7825340965544743549.a n = (A229135 n : ℚ)

end A229135

/-! ## A229135.P726761046652353397

`A002697(n)+A005843(n)+A002697(n)`
-/

namespace A229135.P726761046652353397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + (A005843 n + A002697 n)

end

end A229135.P726761046652353397

namespace A229135

/-- `A002697(n)+A005843(n)+A002697(n)` -/
def P726761046652353397.Spec : Prop :=
  ∀ n, P726761046652353397.a n = A229135 n

end A229135

/-!
# A229136: Number of solutions to Sum_{i=1..n} x_i^2 == 1 (mod 4) with x_i in 0..3.

The programs for A229136, the canonical program `A229136.P5768569145019182099` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229136 has offset 1).

The definition of A229136 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229136.P5768569145019182099

`4*a(n-1)-8*a(n-2)+2^(2*(n+1)-3)` with `a(0)=2, a(1)=8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229136

/-- `4*a(n-1)-8*a(n-2)+2^(2*(n+1)-3)` -/
def P5768569145019182099.Spec : Prop :=
  ∀ n, P5768569145019182099.a n = (A229136 (n + 1) : ℚ)

end A229136

/-! ## A229136.P11302894631372938006

`A330619(4*n+5)`
-/

namespace A229136.P11302894631372938006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330619 (4 * n + 5)

end

end A229136.P11302894631372938006

namespace A229136

/-- `A330619(4*n+5)` -/
def P11302894631372938006.Spec : Prop :=
  ∀ n, P11302894631372938006.a n = A229136 (n + 1)

end A229136

/-! ## A229136.P2439673927320875070

`2^n*A131885(n+1)`
-/

namespace A229136.P2439673927320875070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A131885 (n + 1)

end

end A229136.P2439673927320875070

namespace A229136

/-- `2^n*A131885(n+1)` -/
def P2439673927320875070.Spec : Prop :=
  ∀ n, P2439673927320875070.a n = A229136 (n + 1)

end A229136

/-! ## A229136.P9285635042476571530

`2^(n+1)*A038504(n+1)`
-/

namespace A229136.P9285635042476571530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A038504 (n + 1)

end

end A229136.P9285635042476571530

namespace A229136

/-- `2^(n+1)*A038504(n+1)` -/
def P9285635042476571530.Spec : Prop :=
  ∀ n, P9285635042476571530.a n = A229136 (n + 1)

end A229136

/-! ## A229136.P9248229838063987910

`4^n-A009116(3*n+1)`
-/

namespace A229136.P9248229838063987910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A009116 (3 * n + 1)

end

end A229136.P9248229838063987910

namespace A229136

/-- `4^n-A009116(3*n+1)` -/
def P9248229838063987910.Spec : Prop :=
  ∀ n, P9248229838063987910.a n = A229136 (n + 1)

end A229136

/-! ## A229136.P7811122037486105490

`2*(A228920(n)+a(n-1))` with `a(0)=2`
-/

namespace A229136.P7811122037486105490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * (A228920 n + a (n - 1))

end

end A229136.P7811122037486105490

namespace A229136

/-- `2*(A228920(n)+a(n-1))` -/
def P7811122037486105490.Spec : Prop :=
  ∀ n, P7811122037486105490.a n = A229136 (n + 1)

end A229136

/-! ## A229136.P13100011342412039460

`A190966(n+1)+A000079(n)²`
-/

namespace A229136.P13100011342412039460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190966 (n + 1) + A000079 n ^ 2

end

end A229136.P13100011342412039460

namespace A229136

/-- `A190966(n+1)+A000079(n)²` -/
def P13100011342412039460.Spec : Prop :=
  ∀ n, P13100011342412039460.a n = A229136 (n + 1)

end A229136

/-! ## A229136.P15478215370190428947

`A000079(n+1)*∑[A038503(n)]`
-/

namespace A229136.P15478215370190428947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229136.P15478215370190428947

namespace A229136

/-- `A000079(n+1)*∑[A038503(n)]` -/
def P15478215370190428947.Spec : Prop :=
  ∀ n, P15478215370190428947.a n = A229136 (n + 1)

end A229136

/-! ## A229136.P540037730172881956

`∑[A038503(n)]*A011782(n+2)`
-/

namespace A229136.P540037730172881956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011782 (n + 2)

end

end A229136.P540037730172881956

namespace A229136

/-- `∑[A038503(n)]*A011782(n+2)` -/
def P540037730172881956.Spec : Prop :=
  ∀ n, P540037730172881956.a n = A229136 (n + 1)

end A229136

/-! ## A229136.P14894613754830360592

`2*A000079(n)*∑[A038503(n)]`
-/

namespace A229136.P14894613754830360592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229136.P14894613754830360592

namespace A229136

/-- `2*A000079(n)*∑[A038503(n)]` -/
def P14894613754830360592.Spec : Prop :=
  ∀ n, P14894613754830360592.a n = A229136 (n + 1)

end A229136

/-! ## A229136.P7572456129393090676

`A038504(n+1)*A131577(n+2)`
-/

namespace A229136.P7572456129393090676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 1) * A131577 (n + 2)

end

end A229136.P7572456129393090676

namespace A229136

/-- `A038504(n+1)*A131577(n+2)` -/
def P7572456129393090676.Spec : Prop :=
  ∀ n, P7572456129393090676.a n = A229136 (n + 1)

end A229136

/-! ## A229136.P13406202744921590892

`A190966(n+1)+A000079(2*n)`
-/

namespace A229136.P13406202744921590892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190966 (n + 1) + A000079 (2 * n)

end

end A229136.P13406202744921590892

namespace A229136

/-- `A190966(n+1)+A000079(2*n)` -/
def P13406202744921590892.Spec : Prop :=
  ∀ n, P13406202744921590892.a n = A229136 (n + 1)

end A229136

/-! ## A229136.P2191137783638589181

`2*A011782(n+1)*A038504(n+1)`
-/

namespace A229136.P2191137783638589181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A011782 (n + 1) * A038504 (n + 1))

end

end A229136.P2191137783638589181

namespace A229136

/-- `2*A011782(n+1)*A038504(n+1)` -/
def P2191137783638589181.Spec : Prop :=
  ∀ n, P2191137783638589181.a n = A229136 (n + 1)

end A229136

/-! ## A229136.P1215729040874447248

`A038504(n+1)*A137206(2*n+1)`
-/

namespace A229136.P1215729040874447248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 1) * A137206 (2 * n + 1)

end

end A229136.P1215729040874447248

namespace A229136

/-- `A038504(n+1)*A137206(2*n+1)` -/
def P1215729040874447248.Spec : Prop :=
  ∀ n, P1215729040874447248.a n = A229136 (n + 1)

end A229136

/-! ## A229136.P17293793240225413545

`(A099087(n)+A000079(n))*A000079(n)`
-/

namespace A229136.P17293793240225413545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099087 n + A000079 n) * A000079 n

end

end A229136.P17293793240225413545

namespace A229136

/-- `(A099087(n)+A000079(n))*A000079(n)` -/
def P17293793240225413545.Spec : Prop :=
  ∀ n, P17293793240225413545.a n = A229136 (n + 1)

end A229136

/-! ## A229136.P10969996788558594703

`(A122803(n)+A108520(n))*A122803(n)`
-/

namespace A229136.P10969996788558594703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A122803 n + A108520 n) * A122803 n

end

end A229136.P10969996788558594703

namespace A229136

/-- `(A122803(n)+A108520(n))*A122803(n)` -/
def P10969996788558594703.Spec : Prop :=
  ∀ n, P10969996788558594703.a n = A229136 (n + 1)

end A229136

/-! ## A229136.P4332457442207240295

`(A009545(n+1)+A000079(n))*A000079(n)`
-/

namespace A229136.P4332457442207240295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A009545 (n + 1) + A000079 n) * A000079 n

end

end A229136.P4332457442207240295

namespace A229136

/-- `(A009545(n+1)+A000079(n))*A000079(n)` -/
def P4332457442207240295.Spec : Prop :=
  ∀ n, P4332457442207240295.a n = A229136 (n + 1)

end A229136

/-! ## A229136.P11143230900760561983

`(A000079(n)-A000749(n+1))*A000079(n+1)`
-/

namespace A229136.P11143230900760561983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A000749 (n + 1)) * A000079 (n + 1)

end

end A229136.P11143230900760561983

namespace A229136

/-- `(A000079(n)-A000749(n+1))*A000079(n+1)` -/
def P11143230900760561983.Spec : Prop :=
  ∀ n, P11143230900760561983.a n = A229136 (n + 1)

end A229136

/-! ## A229136.P11110248325273066713

`(A135360(n+1)-A000079(n))*A000079(n+1)`
-/

namespace A229136.P11110248325273066713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135360 (n + 1) - A000079 n) * A000079 (n + 1)

end

end A229136.P11110248325273066713

namespace A229136

/-- `(A135360(n+1)-A000079(n))*A000079(n+1)` -/
def P11110248325273066713.Spec : Prop :=
  ∀ n, P11110248325273066713.a n = A229136 (n + 1)

end A229136

/-! ## A229136.P11867221134213966043

`(A011782(n+1)+A009545(n+1))*A011782(n+1)`
-/

namespace A229136.P11867221134213966043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) + A009545 (n + 1)) * A011782 (n + 1)

end

end A229136.P11867221134213966043

namespace A229136

/-- `(A011782(n+1)+A009545(n+1))*A011782(n+1)` -/
def P11867221134213966043.Spec : Prop :=
  ∀ n, P11867221134213966043.a n = A229136 (n + 1)

end A229136

/-!
# A229138: Number of solutions to Sum_{i=1...n} x_i^2 == 1 (mod 8) with x_i in 0..7.

The programs for A229138, there is no canonical definition to state claims against.
-/

/-! ## A229138.P549051163788896092

`2^(n+2)*A068786(n+1)`
-/

namespace A229138.P549051163788896092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) * A068786 (n + 1)

end

end A229138.P549051163788896092

/-! ## A229138.P18051356777475393612

`A068786(n+1)*A020707(n)`
-/

namespace A229138.P18051356777475393612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068786 (n + 1) * A020707 n

end

end A229138.P18051356777475393612

/-! ## A229138.P14978206995562805332

`A068786(n+1)*A112032(2*n)`
-/

namespace A229138.P14978206995562805332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068786 (n + 1) * A112032 (2 * n)

end

end A229138.P14978206995562805332

/-! ## A229138.P1758198159524677435

`A068786(n+1)*A137206(2*n+3)`
-/

namespace A229138.P1758198159524677435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068786 (n + 1) * A137206 (2 * n + 3)

end

end A229138.P1758198159524677435

/-! ## A229138.P14954116079254024753

`A068786(n+1)*A122111(A065091(n+1))`
-/

namespace A229138.P14954116079254024753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068786 (n + 1) * A122111 (A065091 (n + 1)).toNat

end

end A229138.P14954116079254024753

/-!
# A229139: Smallest m such that Fibonacci(2n-1) = m^2 + k^2.

The programs for A229139, there is no canonical definition to state claims against.
-/

/-! ## A229139.P7966018545500946473

`A262678(A000045(2*n+1))^(1/2)`
-/

namespace A229139.P7966018545500946473
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A262678 (A000045 (2 * n + 1)).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A229139.P7966018545500946473

/-! ## A229139.P8868732888177198993

`A000045(n)-A028590(A101785(n))`
-/

namespace A229139.P8868732888177198993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A028590 (A101785 n).toNat

end

end A229139.P8868732888177198993

/-! ## A229139.P3794851033195782236

`A000045(n)-A170770(A000219(n))`
-/

namespace A229139.P3794851033195782236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A170770 (A000219 n).toNat

end

end A229139.P3794851033195782236

/-! ## A229139.P11083261824715919414

`A000045(n)-A106222(A106218(n))`
-/

namespace A229139.P11083261824715919414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A106222 (A106218 n).toNat

end

end A229139.P11083261824715919414

/-! ## A229139.P11370301803689801568

`and(A000045(n), A023746(A026383(n)))`
-/

namespace A229139.P11370301803689801568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 n) (A023746 (A026383 n).toNat)

end

end A229139.P11370301803689801568

/-!
# A229140: Smallest k such that k^2 + l^2 = n-th number expressible as sum of two squares (A001481).

The programs for A229140, there is no canonical definition to state claims against.
-/

/-! ## A229140.P7423298990812430473

`A328803(n+1)-A385236(n+1)`
-/

namespace A229140.P7423298990812430473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328803 (n + 1) - A385236 (n + 1)

end

end A229140.P7423298990812430473

/-! ## A229140.P492471668976216119

`sqrt(A001481(n+1)-A385236(n+1)²)`
-/

namespace A229140.P492471668976216119
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001481 (n + 1) - A385236 (n + 1) ^ 2 : ℝ)

end

end A229140.P492471668976216119

/-! ## A229140.P636275560114896383

`A064875(A001481(n+1))`
-/

namespace A229140.P636275560114896383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064875 (A001481 (n + 1)).toNat

end

end A229140.P636275560114896383

/-! ## A229140.P14085923975493678262

`A328803(n+1)-A262689(A001481(n+1))`
-/

namespace A229140.P14085923975493678262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328803 (n + 1) - A262689 (A001481 (n + 1)).toNat

end

end A229140.P14085923975493678262

/-! ## A229140.P3062058880131841989

`A283304(∑[A000161(A001481(n+1))])`
-/

namespace A229140.P3062058880131841989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A001481 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283304 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229140.P3062058880131841989

/-! ## A229140.P2899788950189459893

`A328803(n+1)-A262689(eq[0, A070176(n)])`
-/

namespace A229140.P2899788950189459893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328803 (n + 1) - A262689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229140.P2899788950189459893

/-! ## A229140.P616181762621646014

`A328803(n+1)-A262689(lt[0, A000161(n)])`
-/

namespace A229140.P616181762621646014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328803 (n + 1) - A262689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A229140.P616181762621646014

/-! ## A229140.P6148631312931562065

`A064875(A166687(n+1)-1)`
-/

namespace A229140.P6148631312931562065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064875 (A166687 (n + 1) - 1).toNat

end

end A229140.P6148631312931562065

/-! ## A229140.P1426632668804258659

`A305576(∑[A105352(n+1)]-A105352(n+1))`
-/

namespace A229140.P1426632668804258659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305576 (∑ j ∈ Finset.range (n + 1), f1 j - A105352 (n + 1)).toNat

end

end A229140.P1426632668804258659

/-! ## A229140.P11023857269017870393

`A305576(A057961(A305575(A000328(n))))`
-/

namespace A229140.P11023857269017870393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305576 (A057961 (A305575 (A000328 n).toNat).toNat).toNat

end

end A229140.P11023857269017870393

/-!
# A229143: Expansion of (b(q^3) - b(q)) / 3 in powers of q where b() is a cubic AGM theta function.

The programs for A229143, the canonical program `A229143.P13243434220709827465` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229143 has offset 1).

The definition of A229143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229143.P15549570069712102537

`A138806(n+1)-A138806(3*(n+1))`
-/

namespace A229143.P15549570069712102537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138806 (n + 1) - A138806 (3 * (n + 1))

end

end A229143.P15549570069712102537

namespace A229143

/-- `A138806(n+1)-A138806(3*(n+1))` -/
def P15549570069712102537.Spec : Prop :=
  ∀ n, P15549570069712102537.a n = A229143 (n + 1)

end A229143

/-! ## A229143.P13243434220709827465

`∑{d}[n+1, A117188(#-1)*A259024((n+1)/#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A229143

/-- `∑{d}[n+1, A117188(#-1)*A259024((n+1)/#)]` -/
def P13243434220709827465.Spec : Prop :=
  ∀ n, P13243434220709827465.a n = A229143 (n + 1)

theorem P13243434220709827465.correct : P13243434220709827465.Spec := by
  intro n
  simp only [A229143, Nat.add_sub_cancel]

end A229143

/-! ## A229143.P10832801809342192072

`A123477(n+1)-A123477(A008611(4*n)+1)`
-/

namespace A229143.P10832801809342192072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123477 (n + 1) - A123477 (A008611 (4 * n) + 1).toNat

end

end A229143.P10832801809342192072

namespace A229143

/-- `A123477(n+1)-A123477(A008611(4*n)+1)` -/
def P10832801809342192072.Spec : Prop :=
  ∀ n, P10832801809342192072.a n = A229143 (n + 1)

end A229143

/-!
# A229144: Partial sums of (Fibonacci numbers mod 3).

The programs for A229144, the canonical program `A229144.P4384130058339454344` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229144 has offset 0).

The definition of A229144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229144.P4384130058339454344

`∑[(2*a(n-4))%3]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229144

/-- `∑[(2*a(n-4))%3]` -/
def P4384130058339454344.Spec : Prop :=
  ∀ n, (P4384130058339454344.a n : ℤ) = A229144 n

theorem P4384130058339454344.correct : P4384130058339454344.Spec := by
  intro n
  simp only [A229144]

end A229144

/-! ## A229144.P11011287292023753325

`∑[(3-a(n-4))%3]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A229144.P11011287292023753325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n f1 =>
  Int.tmod (3 - f1 (n - 4)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229144.P11011287292023753325

namespace A229144

/-- `∑[(3-a(n-4))%3]` -/
def P11011287292023753325.Spec : Prop :=
  ∀ n, P11011287292023753325.a n = A229144 n

end A229144

/-! ## A229144.P3386045345994149133

`a(n-1)+(a(n-2)+1)%3` with `a(0)=0, a(1)=1`
-/

namespace A229144.P3386045345994149133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + 1) % 3

end

end A229144.P3386045345994149133

namespace A229144

/-- `a(n-1)+(a(n-2)+1)%3` -/
def P3386045345994149133.Spec : Prop :=
  ∀ n, (P3386045345994149133.a n : ℤ) = A229144 n

end A229144

/-! ## A229144.P7014599828952920203

`a(n-1)-(2-a(n-2))%3` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A229144.P7014599828952920203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4] fun n a =>
  a (n - 1) - Int.tmod (2 - a (n - 2)) 3

end

end A229144.P7014599828952920203

namespace A229144

/-- `a(n-1)-(2-a(n-2))%3` -/
def P7014599828952920203.Spec : Prop :=
  ∀ n, P7014599828952920203.a n = A229144 n

end A229144

/-! ## A229144.P3960654291242849617

`∑[A082115(n)]`
-/

namespace A229144.P3960654291242849617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229144.P3960654291242849617

namespace A229144

/-- `∑[A082115(n)]` -/
def P3960654291242849617.Spec : Prop :=
  ∀ n, P3960654291242849617.a n = A229144 n

end A229144

/-! ## A229144.P10643788078720529455

`∑[A007887(n)%3]`
-/

namespace A229144.P10643788078720529455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007887 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229144.P10643788078720529455

namespace A229144

/-- `∑[A007887(n)%3]` -/
def P10643788078720529455.Spec : Prop :=
  ∀ n, P10643788078720529455.a n = A229144 n

end A229144

/-! ## A229144.P12838572311591516541

`∑[A106005(n)%3]`
-/

namespace A229144.P12838572311591516541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106005 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229144.P12838572311591516541

namespace A229144

/-- `∑[A106005(n)%3]` -/
def P12838572311591516541.Spec : Prop :=
  ∀ n, P12838572311591516541.a n = A229144 n

end A229144

/-! ## A229144.P11872939913805708518

`∑[3-A049342(n+2)]`
-/

namespace A229144.P11872939913805708518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049342 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229144.P11872939913805708518

namespace A229144

/-- `∑[3-A049342(n+2)]` -/
def P11872939913805708518.Spec : Prop :=
  ∀ n, P11872939913805708518.a n = A229144 n

end A229144

/-! ## A229144.P4457374629412288228

`∑[A237568(n)%3]`
-/

namespace A229144.P4457374629412288228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237568 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229144.P4457374629412288228

namespace A229144

/-- `∑[A237568(n)%3]` -/
def P4457374629412288228.Spec : Prop :=
  ∀ n, P4457374629412288228.a n = A229144 n

end A229144

/-! ## A229144.P4402550705869651004

`∑[A000045(n)%3]`
-/

namespace A229144.P4402550705869651004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229144.P4402550705869651004

namespace A229144

/-- `∑[A000045(n)%3]` -/
def P4402550705869651004.Spec : Prop :=
  ∀ n, P4402550705869651004.a n = A229144 n

end A229144

/-! ## A229144.P3732515581561859442

`∑[(A001611(n)-1)%3]`
-/

namespace A229144.P3732515581561859442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001611 n - 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229144.P3732515581561859442

namespace A229144

/-- `∑[(A001611(n)-1)%3]` -/
def P3732515581561859442.Spec : Prop :=
  ∀ n, P3732515581561859442.a n = A229144 n

end A229144

/-! ## A229144.P9960308265250481350

`∑[A167816(n)%A167817(n)]`
-/

namespace A229144.P9960308265250481350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167816 n) (A167817 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229144.P9960308265250481350

namespace A229144

/-- `∑[A167816(n)%A167817(n)]` -/
def P9960308265250481350.Spec : Prop :=
  ∀ n, P9960308265250481350.a n = A229144 n

end A229144

/-! ## A229144.P1701143616604353211

`∑[lcm(A167808(n), A167816(n))%3]`
-/

namespace A229144.P1701143616604353211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A167808 n) (A167816 n) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229144.P1701143616604353211

namespace A229144

/-- `∑[lcm(A167808(n), A167816(n))%3]` -/
def P1701143616604353211.Spec : Prop :=
  ∀ n, (P1701143616604353211.a n : ℤ) = A229144 n

end A229144

/-! ## A229144.P12206918961249263092

`∑[round(ϕ^n/sqrt(5))%3]`
-/

namespace A229144.P12206918961249263092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229144.P12206918961249263092

namespace A229144

/-- `∑[round(ϕ^n/sqrt(5))%3]` -/
def P12206918961249263092.Spec : Prop :=
  ∀ n, P12206918961249263092.a n = A229144 n

end A229144

/-!
# A229145: Numbers k such that (36^k + 1)/37 is prime.

The programs for A229145, there is no canonical definition to state claims against.
-/

/-! ## A229145.P11379415473340212094

`p?[A174571(A138924(n+5))]`
-/

namespace A229145.P11379415473340212094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A138924 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229145.P11379415473340212094

/-!
# A229146: a(n) = n^3*(5*n+3)/2.

The programs for A229146, the canonical program `A229146.P2034095443759381722` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229146 has offset 0).

The definition of A229146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229146.P2034095443759381722

`n^3*(5*n+3)/2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229146

/-- `n^3*(5*n+3)/2` -/
def P2034095443759381722.Spec : Prop :=
  ∀ n, P2034095443759381722.a n = (A229146 n : ℚ)

end A229146

/-! ## A229146.P11354643254704966285

`∑[n]*A295905(n+1)-n`
-/

namespace A229146.P11354643254704966285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A295905 (n + 1) - (n : ℤ)

end

end A229146.P11354643254704966285

namespace A229146

/-- `∑[n]*A295905(n+1)-n` -/
def P11354643254704966285.Spec : Prop :=
  ∀ n, P11354643254704966285.a n = A229146 n

end A229146

/-! ## A229146.P8187452134935034152

`A006011(n)+(∑[n]+n²)²`
-/

namespace A229146.P8187452134935034152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n + (((∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2) ^ 2 : ℕ) : ℤ)

end

end A229146.P8187452134935034152

namespace A229146

/-- `A006011(n)+(∑[n]+n²)²` -/
def P8187452134935034152.Spec : Prop :=
  ∀ n, P8187452134935034152.a n = A229146 n

end A229146

/-! ## A229146.P4451491186555728190

`A100256(n)+A006011(n)`
-/

namespace A229146.P4451491186555728190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100256 n + A006011 n

end

end A229146.P4451491186555728190

namespace A229146

/-- `A100256(n)+A006011(n)` -/
def P4451491186555728190.Spec : Prop :=
  ∀ n, P4451491186555728190.a n = A229146 n

end A229146

/-! ## A229146.P2942548212033671550

`A160765(n)-A100171(n+1)`
-/

namespace A229146.P2942548212033671550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160765 n - A100171 (n + 1)

end

end A229146.P2942548212033671550

namespace A229146

/-- `A160765(n)-A100171(n+1)` -/
def P2942548212033671550.Spec : Prop :=
  ∀ n, P2942548212033671550.a n = A229146 n

end A229146

/-! ## A229146.P11984451621174933750

`A002593(n)+A000217(n+1)*n²`
-/

namespace A229146.P11984451621174933750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002593 n + A000217 (n + 1) * (n ^ 2 : ℤ)

end

end A229146.P11984451621174933750

namespace A229146

/-- `A002593(n)+A000217(n+1)*n²` -/
def P11984451621174933750.Spec : Prop :=
  ∀ n, P11984451621174933750.a n = A229146 n

end A229146

/-! ## A229146.P1100876202473663560

`A145995(n+1)*A152947(n+2)-A080855(n)`
-/

namespace A229146.P1100876202473663560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145995 (n + 1) * A152947 (n + 2) - A080855 n

end

end A229146.P1100876202473663560

namespace A229146

/-- `A145995(n+1)*A152947(n+2)-A080855(n)` -/
def P1100876202473663560.Spec : Prop :=
  ∀ n, P1100876202473663560.a n = A229146 n

end A229146

/-! ## A229146.P1593403004219356117

`A212763(2*n)+A212765(2*n)/2`
-/

namespace A229146.P1593403004219356117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212763 (2 * n) : ℚ) + (A212765 (2 * n) : ℚ) / 2

end

end A229146.P1593403004219356117

namespace A229146

/-- `A212763(2*n)+A212765(2*n)/2` -/
def P1593403004219356117.Spec : Prop :=
  ∀ n, P1593403004219356117.a n = (A229146 n : ℚ)

end A229146

/-! ## A229146.P14757532793442955356

`A054925(n²)+A005449(n)²`
-/

namespace A229146.P14757532793442955356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 (n ^ 2) + A005449 n ^ 2

end

end A229146.P14757532793442955356

namespace A229146

/-- `A054925(n²)+A005449(n)²` -/
def P14757532793442955356.Spec : Prop :=
  ∀ n, P14757532793442955356.a n = A229146 n

end A229146

/-! ## A229146.P2220343830935950124

`A011848(n²)+A005449(n)²`
-/

namespace A229146.P2220343830935950124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (n ^ 2) + A005449 n ^ 2

end

end A229146.P2220343830935950124

namespace A229146

/-- `A011848(n²)+A005449(n)²` -/
def P2220343830935950124.Spec : Prop :=
  ∀ n, P2220343830935950124.a n = A229146 n

end A229146

/-!
# A229147: a(n) = n^4*(3*n+2).

The programs for A229147, the canonical program `A229147.P4471902328961458010` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229147 has offset 0).

The definition of A229147 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4*(3*n+2)` (program `A229147.P4471902328961458010`, by `A229147.P4471902328961458010.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A229147.P4471902328961458010

`n^4*(3*n+2)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229147

/-- `n^4*(3*n+2)` -/
def P4471902328961458010.Spec : Prop :=
  ∀ n, (P4471902328961458010.a n : ℤ) = A229147 n

theorem P4471902328961458010.correct : P4471902328961458010.Spec := by
  intro n
  simp only [A229147]

end A229147

/-! ## A229147.P1110131071393273191

`lcm(n, (2*n+n+2)*n²²)`
-/

namespace A229147.P1110131071393273191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((2 * n + (n + 2)) * (n ^ 2) ^ 2)

end

end A229147.P1110131071393273191

namespace A229147

/-- `lcm(n, (2*n+n+2)*n²²)` -/
def P1110131071393273191.Spec : Prop :=
  ∀ n, (P1110131071393273191.a n : ℤ) = A229147 n

end A229147

/-! ## A229147.P2461548018198071793

`n²²*A016957(n)/2`
-/

namespace A229147.P2461548018198071793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2 : ℤ) * A016957 n : ℚ) / 2

end

end A229147.P2461548018198071793

namespace A229147

/-- `n²²*A016957(n)/2` -/
def P2461548018198071793.Spec : Prop :=
  ∀ n, P2461548018198071793.a n = (A229147 n : ℚ)

end A229147

/-! ## A229147.P8806373725898479151

`sqrt(A045944(n)²*n^6)`
-/

namespace A229147.P8806373725898479151
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A045944 n ^ 2 * (n ^ 6 : ℤ) : ℝ)

end

end A229147.P8806373725898479151

namespace A229147

/-- `sqrt(A045944(n)²*n^6)` -/
def P8806373725898479151.Spec : Prop :=
  ∀ n, P8806373725898479151.a n = (A229147 n : ℝ)

end A229147

/-! ## A229147.P10884989546428943730

`(A016969(n)-1)*n²²/2`
-/

namespace A229147.P10884989546428943730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016969 n - 1) * ((n ^ 2) ^ 2 : ℤ) : ℚ) / 2

end

end A229147.P10884989546428943730

namespace A229147

/-- `(A016969(n)-1)*n²²/2` -/
def P10884989546428943730.Spec : Prop :=
  ∀ n, P10884989546428943730.a n = (A229147 n : ℚ)

end A229147

/-! ## A229147.P14937494368130113340

`sqrt(A016789(n)²*A001016(n))`
-/

namespace A229147.P14937494368130113340
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016789 n ^ 2 * A001016 n : ℝ)

end

end A229147.P14937494368130113340

namespace A229147

/-- `sqrt(A016789(n)²*A001016(n))` -/
def P14937494368130113340.Spec : Prop :=
  ∀ n, P14937494368130113340.a n = (A229147 n : ℝ)

end A229147

/-! ## A229147.P15063829898262836202

`A016789(n)*A101362(n)/(n+1)`
-/

namespace A229147.P15063829898262836202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016789 n * A101362 n : ℚ) / (n + 1 : ℚ)

end

end A229147.P15063829898262836202

namespace A229147

/-- `A016789(n)*A101362(n)/(n+1)` -/
def P15063829898262836202.Spec : Prop :=
  ∀ n, P15063829898262836202.a n = (A229147 n : ℚ)

end A229147

/-! ## A229147.P11752832652473764968

`A000583(n)+A000583(n)*A016777(n)`
-/

namespace A229147.P11752832652473764968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + A000583 n * A016777 n

end

end A229147.P11752832652473764968

namespace A229147

/-- `A000583(n)+A000583(n)*A016777(n)` -/
def P11752832652473764968.Spec : Prop :=
  ∀ n, P11752832652473764968.a n = A229147 n

end A229147

/-! ## A229147.P9297512193320735630

`A244730(n)+A000583(n)*A008585(n)`
-/

namespace A229147.P9297512193320735630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244730 n + A000583 n * A008585 n

end

end A229147.P9297512193320735630

namespace A229147

/-- `A244730(n)+A000583(n)*A008585(n)` -/
def P9297512193320735630.Spec : Prop :=
  ∀ n, P9297512193320735630.a n = A229147 n

end A229147

/-! ## A229147.P5248627955124792669

`A000578(n)*A056109(n)-A000578(n)`
-/

namespace A229147.P5248627955124792669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n * A056109 n - A000578 n

end

end A229147.P5248627955124792669

namespace A229147

/-- `A000578(n)*A056109(n)-A000578(n)` -/
def P5248627955124792669.Spec : Prop :=
  ∀ n, P5248627955124792669.a n = A229147 n

end A229147

/-! ## A229147.P1353190275213802930

`A000583(n)*A016797(n)/A016796(n)`
-/

namespace A229147.P1353190275213802930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n * A016797 n : ℚ) / (A016796 n : ℚ)

end

end A229147.P1353190275213802930

namespace A229147

/-- `A000583(n)*A016797(n)/A016796(n)` -/
def P1353190275213802930.Spec : Prop :=
  ∀ n, P1353190275213802930.a n = (A229147 n : ℚ)

end A229147

/-! ## A229147.P7144535602023409425

`A000583(n)*A008585(n+1)-A000583(n)`
-/

namespace A229147.P7144535602023409425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n * A008585 (n + 1) - A000583 n

end

end A229147.P7144535602023409425

namespace A229147

/-- `A000583(n)*A008585(n+1)-A000583(n)` -/
def P7144535602023409425.Spec : Prop :=
  ∀ n, P7144535602023409425.a n = A229147 n

end A229147

/-! ## A229147.P4683295398458669165

`A374709(2*n)/4`
-/

namespace A229147.P4683295398458669165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374709 (2 * n) : ℚ) / 4

end

end A229147.P4683295398458669165

namespace A229147

/-- `A374709(2*n)/4` -/
def P4683295398458669165.Spec : Prop :=
  ∀ n, P4683295398458669165.a n = (A229147 n : ℚ)

end A229147

/-!
# A229148: a(n) = n^5*(7*n+5)/2.

The programs for A229148, the canonical program `A229148.P1025007826528388205` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229148 has offset 0).

The definition of A229148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229148.P1025007826528388205

`n^5*(7*n+5)/2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229148

/-- `n^5*(7*n+5)/2` -/
def P1025007826528388205.Spec : Prop :=
  ∀ n, P1025007826528388205.a n = (A229148 n : ℚ)

end A229148

/-! ## A229148.P7032460650553778306

`(A186029(n)+1+n)*n²²-n²²`
-/

namespace A229148.P7032460650553778306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A186029 n + 1 + (n : ℤ)) * ((n ^ 2) ^ 2 : ℤ) - ((n ^ 2) ^ 2 : ℤ)

end

end A229148.P7032460650553778306

namespace A229148

/-- `(A186029(n)+1+n)*n²²-n²²` -/
def P7032460650553778306.Spec : Prop :=
  ∀ n, P7032460650553778306.a n = A229148 n

end A229148

/-! ## A229148.P13198480634421952339

`A001014(n)+5*A168351(n)`
-/

namespace A229148.P13198480634421952339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n + 5 * A168351 n

end

end A229148.P13198480634421952339

namespace A229148

/-- `A001014(n)+5*A168351(n)` -/
def P13198480634421952339.Spec : Prop :=
  ∀ n, P13198480634421952339.a n = A229148 n

end A229148

/-! ## A229148.P9148420994908399636

`7*A168351(n)-A000584(n)`
-/

namespace A229148.P9148420994908399636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A168351 n - A000584 n

end

end A229148.P9148420994908399636

namespace A229148

/-- `7*A168351(n)-A000584(n)` -/
def P9148420994908399636.Spec : Prop :=
  ∀ n, P9148420994908399636.a n = A229148 n

end A229148

/-! ## A229148.P7369000621420538114

`A109017(2*n)+(7*n+5)*A000584(n)/2`
-/

namespace A229148.P7369000621420538114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109017 (2 * n) : ℚ) + (7 * n + 5 : ℚ) * ((A000584 n : ℚ) / 2)

end

end A229148.P7369000621420538114

namespace A229148

/-- `A109017(2*n)+(7*n+5)*A000584(n)/2` -/
def P7369000621420538114.Spec : Prop :=
  ∀ n, P7369000621420538114.a n = (A229148 n : ℚ)

end A229148

/-! ## A229148.P11399788358256711656

`A229079(A000124(n+6)+5)`
-/

namespace A229148.P11399788358256711656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A000124 (n + 6) + 5).toNat

end

end A229148.P11399788358256711656

namespace A229148

/-- `A229079(A000124(n+6)+5)` -/
def P11399788358256711656.Spec : Prop :=
  ∀ n, P11399788358256711656.a n = A229148 n

end A229148

/-! ## A229148.P15967117946983902202

`A229079(A000217(n+6)+6)`
-/

namespace A229148.P15967117946983902202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A000217 (n + 6) + 6).toNat

end

end A229148.P15967117946983902202

namespace A229148

/-- `A229079(A000217(n+6)+6)` -/
def P15967117946983902202.Spec : Prop :=
  ∀ n, P15967117946983902202.a n = A229148 n

end A229148

/-! ## A229148.P1660780325471000955

`A229079(A046691(n+4)+10)`
-/

namespace A229148.P1660780325471000955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A046691 (n + 4) + 10).toNat

end

end A229148.P1660780325471000955

namespace A229148

/-- `A229079(A046691(n+4)+10)` -/
def P1660780325471000955.Spec : Prop :=
  ∀ n, P1660780325471000955.a n = A229148 n

end A229148

/-! ## A229148.P1799061997499094954

`A229079(A055999(n+3)+12)`
-/

namespace A229148.P1799061997499094954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A055999 (n + 3) + 12).toNat

end

end A229148.P1799061997499094954

namespace A229148

/-- `A229079(A055999(n+3)+12)` -/
def P1799061997499094954.Spec : Prop :=
  ∀ n, P1799061997499094954.a n = A229148 n

end A229148

/-!
# A229149: a(n) = n^6*(4*n+3).

The programs for A229149, the canonical program `A229149.P16035188701471480942` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229149 has offset 0).

The definition of A229149 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^6*(4*n+3)` (program `A229149.P16035188701471480942`, by `A229149.P16035188701471480942.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A229149.P16035188701471480942

`n^6*(4*n+3)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229149

/-- `n^6*(4*n+3)` -/
def P16035188701471480942.Spec : Prop :=
  ∀ n, (P16035188701471480942.a n : ℤ) = A229149 n

theorem P16035188701471480942.correct : P16035188701471480942.Spec := by
  intro n
  simp only [A229149]

end A229149

/-! ## A229149.P14071016042133503051

`A000584(n)*A033587(n)/2`
-/

namespace A229149.P14071016042133503051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000584 n * A033587 n : ℚ) / 2

end

end A229149.P14071016042133503051

namespace A229149

/-- `A000584(n)*A033587(n)/2` -/
def P14071016042133503051.Spec : Prop :=
  ∀ n, P14071016042133503051.a n = (A229149 n : ℚ)

end A229149

/-! ## A229149.P12898721200096218665

`A000578(n)²+(4*n+2)*A000578(n)²`
-/

namespace A229149.P12898721200096218665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n ^ 2 + (4 * n + 2 : ℤ) * A000578 n ^ 2

end

end A229149.P12898721200096218665

namespace A229149

/-- `A000578(n)²+(4*n+2)*A000578(n)²` -/
def P12898721200096218665.Spec : Prop :=
  ∀ n, P12898721200096218665.a n = A229149 n

end A229149

/-! ## A229149.P77564811946077985

`A001014(n)+A001014(n)*A016825(n)`
-/

namespace A229149.P77564811946077985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n + A001014 n * A016825 n

end

end A229149.P77564811946077985

namespace A229149

/-- `A001014(n)+A001014(n)*A016825(n)` -/
def P77564811946077985.Spec : Prop :=
  ∀ n, P77564811946077985.a n = A229149 n

end A229149

/-! ## A229149.P1365838344417136834

`A001014(n)*A016885(n)-A001015(n)`
-/

namespace A229149.P1365838344417136834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n * A016885 n - A001015 n

end

end A229149.P1365838344417136834

namespace A229149

/-- `A001014(n)*A016885(n)-A001015(n)` -/
def P1365838344417136834.Spec : Prop :=
  ∀ n, P1365838344417136834.a n = A229149 n

end A229149

/-! ## A229149.P5421532962579982283

`A001014(n)*A008586(n+1)-A001014(n)`
-/

namespace A229149.P5421532962579982283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n * A008586 (n + 1) - A001014 n

end

end A229149.P5421532962579982283

namespace A229149

/-- `A001014(n)*A008586(n+1)-A001014(n)` -/
def P5421532962579982283.Spec : Prop :=
  ∀ n, P5421532962579982283.a n = A229149 n

end A229149

/-! ## A229149.P15003355108127514482

`A229079(eq[8, A002260(n+1)])`
-/

namespace A229149.P15003355108127514482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229149.P15003355108127514482

namespace A229149

/-- `A229079(eq[8, A002260(n+1)])` -/
def P15003355108127514482.Spec : Prop :=
  ∀ n, P15003355108127514482.a n = A229149 n

end A229149

/-! ## A229149.P15525083734928086471

`A229079(A000217(n+8)-(n+1))`
-/

namespace A229149.P15525083734928086471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A000217 (n + 8) - (n + 1 : ℤ)).toNat

end

end A229149.P15525083734928086471

namespace A229149

/-- `A229079(A000217(n+8)-(n+1))` -/
def P15525083734928086471.Spec : Prop :=
  ∀ n, P15525083734928086471.a n = A229149 n

end A229149

/-!
# A229150: a(n) = n^7*(9*n+7)/2.

The programs for A229150, the canonical program `A229150.P1849462040591650263` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229150 has offset 0).

The definition of A229150 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229150.P1849462040591650263

`n^7*(9*n+7)/2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229150

/-- `n^7*(9*n+7)/2` -/
def P1849462040591650263.Spec : Prop :=
  ∀ n, P1849462040591650263.a n = (A229150 n : ℚ)

end A229150

/-! ## A229150.P14261659246174569169

`lcm(n, n^6*A062728(n))`
-/

namespace A229150.P14261659246174569169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n ^ 6 : ℤ) * A062728 n)

end

end A229150.P14261659246174569169

namespace A229150

/-- `lcm(n, n^6*A062728(n))` -/
def P14261659246174569169.Spec : Prop :=
  ∀ n, (P14261659246174569169.a n : ℤ) = A229150 n

end A229150

/-! ## A229150.P15271321641859652891

`A326547(Δ[A002024(n+3)])+n^6*A062728(n)`
-/

namespace A229150.P15271321641859652891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326547 (f1 (n + 1) - f1 n).toNat + (n ^ 6 : ℤ) * A062728 n

end

end A229150.P15271321641859652891

namespace A229150

/-- `A326547(Δ[A002024(n+3)])+n^6*A062728(n)` -/
def P15271321641859652891.Spec : Prop :=
  ∀ n, P15271321641859652891.a n = A229150 n

end A229150

/-! ## A229150.P7127064090081819065

`A330895(Δ[A002024(n+3)])+n^6*A062728(n)`
-/

namespace A229150.P7127064090081819065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330895 (f1 (n + 1) - f1 n).toNat + (n ^ 6 : ℤ) * A062728 n

end

end A229150.P7127064090081819065

namespace A229150

/-- `A330895(Δ[A002024(n+3)])+n^6*A062728(n)` -/
def P7127064090081819065.Spec : Prop :=
  ∀ n, P7127064090081819065.a n = A229150 n

end A229150

/-! ## A229150.P626831703085111244

`A000035(2*n)+n^6*A062728(n)`
-/

namespace A229150.P626831703085111244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + (n ^ 6 : ℤ) * A062728 n

end

end A229150.P626831703085111244

namespace A229150

/-- `A000035(2*n)+n^6*A062728(n)` -/
def P626831703085111244.Spec : Prop :=
  ∀ n, P626831703085111244.a n = A229150 n

end A229150

/-! ## A229150.P5226165624803320859

`(n^6*A062728(n))^A014963(A005279(n+1))`
-/

namespace A229150.P5226165624803320859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 6 : ℤ) * A062728 n : ℚ) ^ (A014963 (A005279 (n + 1)).toNat : ℤ)

end

end A229150.P5226165624803320859

namespace A229150

/-- `(n^6*A062728(n))^A014963(A005279(n+1))` -/
def P5226165624803320859.Spec : Prop :=
  ∀ n, P5226165624803320859.a n = (A229150 n : ℚ)

end A229150

/-! ## A229150.P2739259824272925486

`(n^6*A062728(n))^A014963(A173165(n+1))`
-/

namespace A229150.P2739259824272925486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 6 : ℤ) * A062728 n : ℚ) ^ (A014963 (A173165 (n + 1)).toNat : ℤ)

end

end A229150.P2739259824272925486

namespace A229150

/-- `(n^6*A062728(n))^A014963(A173165(n+1))` -/
def P2739259824272925486.Spec : Prop :=
  ∀ n, P2739259824272925486.a n = (A229150 n : ℚ)

end A229150

/-! ## A229150.P5834591174877534748

`(n^6*A062728(n))^A014963(A000217(n+9))`
-/

namespace A229150.P5834591174877534748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 6 : ℤ) * A062728 n : ℚ) ^ (A014963 (A000217 (n + 9)).toNat : ℤ)

end

end A229150.P5834591174877534748

namespace A229150

/-- `(n^6*A062728(n))^A014963(A000217(n+9))` -/
def P5834591174877534748.Spec : Prop :=
  ∀ n, P5834591174877534748.a n = (A229150 n : ℚ)

end A229150

/-! ## A229150.P1117168401417161950

`A229079(A000124(n+8)+7)`
-/

namespace A229150.P1117168401417161950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A000124 (n + 8) + 7).toNat

end

end A229150.P1117168401417161950

namespace A229150

/-- `A229079(A000124(n+8)+7)` -/
def P1117168401417161950.Spec : Prop :=
  ∀ n, P1117168401417161950.a n = A229150 n

end A229150

/-!
# A229151: a(n) = n^8*(5*n+4).

The programs for A229151, the canonical program `A229151.P1069118596959345230` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229151 has offset 0).

The definition of A229151 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^8*(5*n+4)` (program `A229151.P1069118596959345230`, by `A229151.P1069118596959345230.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A229151.P1069118596959345230

`n^8*(5*n+4)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229151

/-- `n^8*(5*n+4)` -/
def P1069118596959345230.Spec : Prop :=
  ∀ n, (P1069118596959345230.a n : ℤ) = A229151 n

theorem P1069118596959345230.correct : P1069118596959345230.Spec := by
  intro n
  simp only [A229151]

end A229151

/-! ## A229151.P8163927442671392738

`A001016(n)*A017365(n)/2`
-/

namespace A229151.P8163927442671392738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001016 n * A017365 n : ℚ) / 2

end

end A229151.P8163927442671392738

namespace A229151

/-- `A001016(n)*A017365(n)/2` -/
def P8163927442671392738.Spec : Prop :=
  ∀ n, P8163927442671392738.a n = (A229151 n : ℚ)

end A229151

/-! ## A229151.P16313042946743156649

`A000583(n)²*A017365(n)/2`
-/

namespace A229151.P16313042946743156649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n ^ 2 * A017365 n : ℚ) / 2

end

end A229151.P16313042946743156649

namespace A229151

/-- `A000583(n)²*A017365(n)/2` -/
def P16313042946743156649.Spec : Prop :=
  ∀ n, P16313042946743156649.a n = (A229151 n : ℚ)

end A229151

/-! ## A229151.P17542454161704997070

`A001016(n)+A001016(n)*A016885(n)`
-/

namespace A229151.P17542454161704997070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n + A001016 n * A016885 n

end

end A229151.P17542454161704997070

namespace A229151

/-- `A001016(n)+A001016(n)*A016885(n)` -/
def P17542454161704997070.Spec : Prop :=
  ∀ n, P17542454161704997070.a n = A229151 n

end A229151

/-! ## A229151.P17659875208641231017

`A001016(n)*A008587(n+1)-A001016(n)`
-/

namespace A229151.P17659875208641231017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n * A008587 (n + 1) - A001016 n

end

end A229151.P17659875208641231017

namespace A229151

/-- `A001016(n)*A008587(n+1)-A001016(n)` -/
def P17659875208641231017.Spec : Prop :=
  ∀ n, P17659875208641231017.a n = A229151 n

end A229151

/-! ## A229151.P2954009133539729957

`A229079(A000096(n+8)+10)`
-/

namespace A229151.P2954009133539729957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A000096 (n + 8) + 10).toNat

end

end A229151.P2954009133539729957

namespace A229151

/-- `A229079(A000096(n+8)+10)` -/
def P2954009133539729957.Spec : Prop :=
  ∀ n, P2954009133539729957.a n = A229151 n

end A229151

/-! ## A229151.P12020428183356023709

`A229079(A000217(n+10)-(n+1))`
-/

namespace A229151.P12020428183356023709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (A000217 (n + 10) - (n + 1 : ℤ)).toNat

end

end A229151.P12020428183356023709

namespace A229151

/-- `A229079(A000217(n+10)-(n+1))` -/
def P12020428183356023709.Spec : Prop :=
  ∀ n, P12020428183356023709.a n = A229151 n

end A229151

/-!
# A229152: a(n) = n^9*(11*n+9)/2.

The programs for A229152, the canonical program `A229152.P5068940393221567430` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229152 has offset 0).

The definition of A229152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229152.P5068940393221567430

`n^9*(11*n+9)/2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229152

/-- `n^9*(11*n+9)/2` -/
def P5068940393221567430.Spec : Prop :=
  ∀ n, P5068940393221567430.a n = (A229152 n : ℚ)

end A229152

/-! ## A229152.P13762574589040666884

`A229079(eq[10, A002262(n)])`
-/

namespace A229152.P13762574589040666884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229152.P13762574589040666884

namespace A229152

/-- `A229079(eq[10, A002262(n)])` -/
def P13762574589040666884.Spec : Prop :=
  ∀ n, P13762574589040666884.a n = A229152 n

end A229152

/-! ## A229152.P5526174987744461904

`A229079(eq[10, A144328(n+1)])`
-/

namespace A229152.P5526174987744461904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229152.P5526174987744461904

namespace A229152

/-- `A229079(eq[10, A144328(n+1)])` -/
def P5526174987744461904.Spec : Prop :=
  ∀ n, P5526174987744461904.a n = A229152 n

end A229152

/-! ## A229152.P14482324273434561482

`A229079(eq[11, A002260(n+1)])`
-/

namespace A229152.P14482324273434561482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229152.P14482324273434561482

namespace A229152

/-- `A229079(eq[11, A002260(n+1)])` -/
def P14482324273434561482.Spec : Prop :=
  ∀ n, P14482324273434561482.a n = A229152 n

end A229152

/-! ## A229152.P6900066402693880681

`A229079(eq[11, A134868(n+1)])`
-/

namespace A229152.P6900066402693880681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229152.P6900066402693880681

namespace A229152

/-- `A229079(eq[11, A134868(n+1)])` -/
def P6900066402693880681.Spec : Prop :=
  ∀ n, P6900066402693880681.a n = A229152 n

end A229152

/-!
# A229153: Numbers of the form c * m^2, where m > 0 and c is composite and squarefree.

The programs for A229153, the canonical program `A229153.P12908825937958678714` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229153 has offset 1).

The definition of A229153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229153.P6515660322253470701

`lt[1, A162642(n+1)]+1`
-/

namespace A229153.P6515660322253470701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A229153.P6515660322253470701

namespace A229153

/-- `lt[1, A162642(n+1)]+1` -/
def P6515660322253470701.Spec : Prop :=
  ∀ n, (P6515660322253470701.a n : ℤ) = A229153 (n + 1)

end A229153

/-! ## A229153.P5100847828050723768

`comp[A265640(n+1)-1]+1`
-/

namespace A229153.P5100847828050723768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A229153.P5100847828050723768

namespace A229153

/-- `comp[A265640(n+1)-1]+1` -/
def P5100847828050723768.Spec : Prop :=
  ∀ n, (P5100847828050723768.a n : ℤ) = A229153 (n + 1)

end A229153

/-! ## A229153.P10604951958181487041

`eq[4, gcd(4, A293442(n+2))]+2`
-/

namespace A229153.P10604951958181487041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A293442 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A229153.P10604951958181487041

namespace A229153

/-- `eq[4, gcd(4, A293442(n+2))]+2` -/
def P10604951958181487041.Spec : Prop :=
  ∀ n, (P10604951958181487041.a n : ℤ) = A229153 (n + 1)

end A229153

/-! ## A229153.P10537917720014195762

`eq[3, A000040(a(A162642(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A229153.P10537917720014195762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A000040 (f2 (A162642 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229153.P10537917720014195762

namespace A229153

/-- `eq[3, A000040(a(A162642(n)))]` -/
def P10537917720014195762.Spec : Prop :=
  ∀ n, (P10537917720014195762.a n : ℤ) = A229153 (n + 1)

end A229153

/-! ## A229153.P1168473727587727181

`eq[3, A026424(a(A162642(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A229153.P1168473727587727181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A026424 (f2 (A162642 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229153.P1168473727587727181

namespace A229153

/-- `eq[3, A026424(a(A162642(n)))]` -/
def P1168473727587727181.Spec : Prop :=
  ∀ n, (P1168473727587727181.a n : ℤ) = A229153 (n + 1)

end A229153

/-! ## A229153.P16546199457618124953

`eq[3, A229125(a(A162642(n)))]` with `a(0)=1, a(1)=1`
-/

namespace A229153.P16546199457618124953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A229125 (f2 (A162642 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229153.P16546199457618124953

namespace A229153

/-- `eq[3, A229125(a(A162642(n)))]` -/
def P16546199457618124953.Spec : Prop :=
  ∀ n, (P16546199457618124953.a n : ℤ) = A229153 (n + 1)

end A229153

/-! ## A229153.P11931250426516276519

`eq[1, A000010(a(A162642(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A229153.P11931250426516276519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000010 (f2 (A162642 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229153.P11931250426516276519

namespace A229153

/-- `eq[1, A000010(a(A162642(n)))]` -/
def P11931250426516276519.Spec : Prop :=
  ∀ n, (P11931250426516276519.a n : ℤ) = A229153 (n + 1)

end A229153

/-! ## A229153.P14729066415026421842

`lt[1, A001222(A295878(n+1))]+1`
-/

namespace A229153.P14729066415026421842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A295878 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A229153.P14729066415026421842

namespace A229153

/-- `lt[1, A001222(A295878(n+1))]+1` -/
def P14729066415026421842.Spec : Prop :=
  ∀ n, (P14729066415026421842.a n : ℤ) = A229153 (n + 1)

end A229153

/-! ## A229153.P2129070227951956283

`lt[2, A000005(A007913(n+1))]+1`
-/

namespace A229153.P2129070227951956283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A229153.P2129070227951956283

namespace A229153

/-- `lt[2, A000005(A007913(n+1))]+1` -/
def P2129070227951956283.Spec : Prop :=
  ∀ n, (P2129070227951956283.a n : ℤ) = A229153 (n + 1)

end A229153

/-! ## A229153.P2404992959094813148

`lt[1, A001221(A007913(n+2))]+2`
-/

namespace A229153.P2404992959094813148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007913 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A229153.P2404992959094813148

namespace A229153

/-- `lt[1, A001221(A007913(n+2))]+2` -/
def P2404992959094813148.Spec : Prop :=
  ∀ n, (P2404992959094813148.a n : ℤ) = A229153 (n + 1)

end A229153

/-! ## A229153.P12908825937958678714

`∪[A119899(n+1), A285800(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A229153

/-- `∪[A119899(n+1), A285800(n+1)]` -/
def P12908825937958678714.Spec : Prop :=
  ∀ n, (P12908825937958678714.a n : ℤ) = A229153 (n + 1)

theorem P12908825937958678714.correct : P12908825937958678714.Spec := by
  intro n
  simp only [A229153, Nat.add_sub_cancel]

end A229153

/-! ## A229153.P2699156564483512535

`lt[1, A001222(A007913(abs(1-n)+1))]`
-/

namespace A229153.P2699156564483512535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007913 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A229153.P2699156564483512535

namespace A229153

/-- `lt[1, A001222(A007913(abs(1-n)+1))]` -/
def P2699156564483512535.Spec : Prop :=
  ∀ n, (P2699156564483512535.a n : ℤ) = A229153 (n + 1)

end A229153

/-! ## A229153.P1933893457008431416

`filter[A233182(n+1), A049240(#)]`
-/

namespace A229153.P1933893457008431416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A229153.P1933893457008431416

namespace A229153

/-- `filter[A233182(n+1), A049240(#)]` -/
def P1933893457008431416.Spec : Prop :=
  ∀ n, P1933893457008431416.a n = A229153 (n + 1)

end A229153

/-! ## A229153.P4487412945248099534

`∩[A089229(n+1), A233182(n+1)]`
-/

namespace A229153.P4487412945248099534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229153.P4487412945248099534

namespace A229153

/-- `∩[A089229(n+1), A233182(n+1)]` -/
def P4487412945248099534.Spec : Prop :=
  ∀ n, (P4487412945248099534.a n : ℤ) = A229153 (n + 1)

end A229153

/-! ## A229153.P15964147469516221899

`∩[A028983(n+1), A233182(n+1)]`
-/

namespace A229153.P15964147469516221899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229153.P15964147469516221899

namespace A229153

/-- `∩[A028983(n+1), A233182(n+1)]` -/
def P15964147469516221899.Spec : Prop :=
  ∀ n, (P15964147469516221899.a n : ℤ) = A229153 (n + 1)

end A229153

/-! ## A229153.P2036964152952983230

`∩[A092206(n+1), A233182(n+1)]`
-/

namespace A229153.P2036964152952983230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229153.P2036964152952983230

namespace A229153

/-- `∩[A092206(n+1), A233182(n+1)]` -/
def P2036964152952983230.Spec : Prop :=
  ∀ n, (P2036964152952983230.a n : ℤ) = A229153 (n + 1)

end A229153

/-! ## A229153.P8958586253909139626

`∩[A000037(n+1), A233182(n+1)]`
-/

namespace A229153.P8958586253909139626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229153.P8958586253909139626

namespace A229153

/-- `∩[A000037(n+1), A233182(n+1)]` -/
def P8958586253909139626.Spec : Prop :=
  ∀ n, (P8958586253909139626.a n : ℤ) = A229153 (n + 1)

end A229153

/-! ## A229153.P8980612135538819630

`lt[2, ∏{e}[n, #%2+1]]`
-/

namespace A229153.P8980612135538819630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p % 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229153.P8980612135538819630

namespace A229153

/-- `lt[2, ∏{e}[n, #%2+1]]` -/
def P8980612135538819630.Spec : Prop :=
  ∀ n, (P8980612135538819630.a n : ℤ) = A229153 (n + 1)

end A229153

/-! ## A229153.P17327777574942825034

`lt[2, A055076(n+1)]+1`
-/

namespace A229153.P17327777574942825034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A229153.P17327777574942825034

namespace A229153

/-- `lt[2, A055076(n+1)]+1` -/
def P17327777574942825034.Spec : Prop :=
  ∀ n, (P17327777574942825034.a n : ℤ) = A229153 (n + 1)

end A229153

/-! ## A229153.P3700386218888200429

`eq[1, and(1, A066620(n+1))]+1`
-/

namespace A229153.P3700386218888200429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A066620 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A229153.P3700386218888200429

namespace A229153

/-- `eq[1, and(1, A066620(n+1))]+1` -/
def P3700386218888200429.Spec : Prop :=
  ∀ n, (P3700386218888200429.a n : ℤ) = A229153 (n + 1)

end A229153

/-!
# A229154: The clubs patterns appearing in n X n coins, with rotation allowed.

The programs for A229154, the canonical program `A229154.P17366387952816701686` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229154 has offset 2).

The definition of A229154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229154.P5893490739101940753

`ceil((n+2-acot(n))²/3)`
-/

namespace A229154.P5893490739101940753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 2 : ℝ) - SequenceMachineLib.acot (n : ℝ)) ^ 2 / 3⌉

end

end A229154.P5893490739101940753

namespace A229154

/-- `ceil((n+2-acot(n))²/3)` -/
def P5893490739101940753.Spec : Prop :=
  ∀ n, P5893490739101940753.a n = A229154 (n + 2)

end A229154

/-! ## A229154.P10772641690459134606

`floor((n+1)/sin(3/(n+3)))`
-/

namespace A229154.P10772641690459134606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.sin (3 / (n + 3 : ℚ) : ℝ)⌋

end

end A229154.P10772641690459134606

namespace A229154

/-- `floor((n+1)/sin(3/(n+3)))` -/
def P10772641690459134606.Spec : Prop :=
  ∀ n, P10772641690459134606.a n = A229154 (n + 2)

end A229154

/-! ## A229154.P17366387952816701686

`∑[a(n-3)+2]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3, a(4)=4, a(5)=4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229154

/-- `∑[a(n-3)+2]` -/
def P17366387952816701686.Spec : Prop :=
  ∀ n, (P17366387952816701686.a n : ℤ) = A229154 (n + 2)

theorem P17366387952816701686.correct : P17366387952816701686.Spec := by
  intro n
  simp only [A229154, Nat.add_sub_cancel]

end A229154

/-! ## A229154.P18044327795538187876

`∑[round((comp[4*n]+1)/2)]-char[1]`
-/

namespace A229154.P18044327795538187876
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1 : ℚ) / 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A229154.P18044327795538187876

namespace A229154

/-- `∑[round((comp[4*n]+1)/2)]-char[1]` -/
def P18044327795538187876.Spec : Prop :=
  ∀ n, P18044327795538187876.a n = A229154 (n + 2)

end A229154

/-! ## A229154.P11271057250058267048

`floor(2-a(n-1)/n+a(n-1)+n)` with `a(0)=1, a(1)=2`
-/

namespace A229154.P11271057250058267048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊2 - (a (n - 1) : ℚ) / (n : ℚ) + (a (n - 1) + (n : ℤ) : ℚ)⌋

end

end A229154.P11271057250058267048

namespace A229154

/-- `floor(2-a(n-1)/n+a(n-1)+n)` -/
def P11271057250058267048.Spec : Prop :=
  ∀ n, P11271057250058267048.a n = A229154 (n + 2)

end A229154

/-! ## A229154.P15414114941475842475

`floor(a(n-1)-(a(n-1)/n-2-n))` with `a(0)=1, a(1)=2`
-/

namespace A229154.P15414114941475842475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(a (n - 1) : ℚ) - ((a (n - 1) : ℚ) / (n : ℚ) - 2 - (n : ℚ))⌋

end

end A229154.P15414114941475842475

namespace A229154

/-- `floor(a(n-1)-(a(n-1)/n-2-n))` -/
def P15414114941475842475.Spec : Prop :=
  ∀ n, P15414114941475842475.a n = A229154 (n + 2)

end A229154

/-! ## A229154.P10368953439169362775

`xor(char[1], A000212(n+2))`
-/

namespace A229154.P10368953439169362775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A000212 (n + 2))

end

end A229154.P10368953439169362775

namespace A229154

/-- `xor(char[1], A000212(n+2))` -/
def P10368953439169362775.Spec : Prop :=
  ∀ n, P10368953439169362775.a n = A229154 (n + 2)

end A229154

/-! ## A229154.P8357835356731894467

`A001399(Δ[n²]-char[1])`
-/

namespace A229154.P8357835356731894467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A229154.P8357835356731894467

namespace A229154

/-- `A001399(Δ[n²]-char[1])` -/
def P8357835356731894467.Spec : Prop :=
  ∀ n, P8357835356731894467.a n = A229154 (n + 2)

end A229154

/-! ## A229154.P15022343501228235890

`A211540(Δ[comp[2*n+3]+n²]+3)`
-/

namespace A229154.P15022343501228235890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3).toNat

end

end A229154.P15022343501228235890

namespace A229154

/-- `A211540(Δ[comp[2*n+3]+n²]+3)` -/
def P15022343501228235890.Spec : Prop :=
  ∀ n, P15022343501228235890.a n = A229154 (n + 2)

end A229154

/-! ## A229154.P861775775202566998

`A266755(4*n+2+char[1])`
-/

namespace A229154.P861775775202566998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 (4 * n + 2 + (if ∃ j, f1 j = n then 1 else 0))

end

end A229154.P861775775202566998

namespace A229154

/-- `A266755(4*n+2+char[1])` -/
def P861775775202566998.Spec : Prop :=
  ∀ n, P861775775202566998.a n = A229154 (n + 2)

end A229154

/-! ## A229154.P1620884199603935163

`A326178(A199085(n+2))`
-/

namespace A229154.P1620884199603935163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A199085 (n + 2)).toNat

end

end A229154.P1620884199603935163

namespace A229154

/-- `A326178(A199085(n+2))` -/
def P1620884199603935163.Spec : Prop :=
  ∀ n, P1620884199603935163.a n = A229154 (n + 2)

end A229154

/-! ## A229154.P4906791353890587287

`A274616(A080476(n+2))`
-/

namespace A229154.P4906791353890587287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A080476 (n + 2)).toNat

end

end A229154.P4906791353890587287

namespace A229154

/-- `A274616(A080476(n+2))` -/
def P4906791353890587287.Spec : Prop :=
  ∀ n, P4906791353890587287.a n = A229154 (n + 2)

end A229154

/-! ## A229154.P6838396883659685552

`A274616(∑[2*A008619(n)])`
-/

namespace A229154.P6838396883659685552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229154.P6838396883659685552

namespace A229154

/-- `A274616(∑[2*A008619(n)])` -/
def P6838396883659685552.Spec : Prop :=
  ∀ n, P6838396883659685552.a n = A229154 (n + 2)

end A229154

/-! ## A229154.P3823563094840876288

`A274616(2*A002620(n+2))`
-/

namespace A229154.P3823563094840876288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (2 * A002620 (n + 2)).toNat

end

end A229154.P3823563094840876288

namespace A229154

/-- `A274616(2*A002620(n+2))` -/
def P3823563094840876288.Spec : Prop :=
  ∀ n, P3823563094840876288.a n = A229154 (n + 2)

end A229154

/-! ## A229154.P9819211011529604639

`A274616(2*A008642(2*n))`
-/

namespace A229154.P9819211011529604639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (2 * A008642 (2 * n)).toNat

end

end A229154.P9819211011529604639

namespace A229154

/-- `A274616(2*A008642(2*n))` -/
def P9819211011529604639.Spec : Prop :=
  ∀ n, P9819211011529604639.a n = A229154 (n + 2)

end A229154

/-! ## A229154.P9128260548193722635

`A274616(∑[2*A110654(n+1)])`
-/

namespace A229154.P9128260548193722635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229154.P9128260548193722635

namespace A229154

/-- `A274616(∑[2*A110654(n+1)])` -/
def P9128260548193722635.Spec : Prop :=
  ∀ n, P9128260548193722635.a n = A229154 (n + 2)

end A229154

/-! ## A229154.P6517178427018161257

`A274616(A030978(n+3)-(n+3))`
-/

namespace A229154.P6517178427018161257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A030978 (n + 3) - (n + 3 : ℤ)).toNat

end

end A229154.P6517178427018161257

namespace A229154

/-- `A274616(A030978(n+3)-(n+3))` -/
def P6517178427018161257.Spec : Prop :=
  ∀ n, P6517178427018161257.a n = A229154 (n + 2)

end A229154

/-!
# A229157: Primes of the form T(n) + C(n) - 1 where T(n) and C(n) are n-th triangular and cube numbers.

The programs for A229157, there is no canonical definition to state claims against.
-/

/-! ## A229157.P427419518272888751

`p?[n^3+∑[n]-1]`
-/

namespace A229157.P427419518272888751
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229157.P427419518272888751

/-! ## A229157.P2294746503144167213

`∏{p}[p?[∑[∑[6*n+1]]+n], #]`
-/

namespace A229157.P2294746503144167213
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A229157.P2294746503144167213

/-! ## A229157.P3549290965841797645

`round(sqrt(p?[∑[(3*n+1)*(n+1)]+n]²+1))`
-/

namespace A229157.P3549290965841797645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 + 1 : ℝ))

end

end A229157.P3549290965841797645

/-! ## A229157.P15298069530241323497

`∏{d}[p?[A002414(n+1)+n], #]`
-/

namespace A229157.P15298069530241323497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A229157.P15298069530241323497

/-! ## A229157.P3389957491570918709

`or(1, p?[∑[A271740(n)-1]-2])`
-/

namespace A229157.P3389957491570918709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271740 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229157.P3389957491570918709

/-!
# A229161: Number of n X n binary matrices with exactly 2 ones in each row and column, and with rows and columns in lexicographically nondecreasing order.

The programs for A229161, there is no canonical definition to state claims against.
-/

/-! ## A229161.P15469876831895106700

`A342745(a(n-1))-and(2, n+1)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A229161.P15469876831895106700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A342745 (a (n - 1)).toNat - (Nat.land 2 (n + 1) : ℤ)

end

end A229161.P15469876831895106700

/-! ## A229161.P14461033118858520801

`A051889(floor(sqrt(A302608(n))))`
-/

namespace A229161.P14461033118858520801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (Int.sqrt (A302608 n)).toNat

end

end A229161.P14461033118858520801

/-! ## A229161.P8491633481326371066

`A051889(ceil(sqrt(A302608(n))))`
-/

namespace A229161.P8491633481326371066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 ⌈Real.sqrt (A302608 n : ℝ)⌉.toNat

end

end A229161.P8491633481326371066

/-! ## A229161.P4813213844800843478

`A051889(round(sqrt(A302608(n))))`
-/

namespace A229161.P4813213844800843478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (SequenceMachineLib.roundAway (Real.sqrt (A302608 n : ℝ))).toNat

end

end A229161.P4813213844800843478

/-!
# A229162: Number of n X n binary matrices with exactly 3 ones in each row and column, and with rows and columns in lexicographically nondecreasing order.

The programs for A229162, there is no canonical definition to state claims against.
-/

/-! ## A229162.P2001556073209659524

`A008617(A346271(n))`
-/

namespace A229162.P2001556073209659524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A346271 n).toNat

end

end A229162.P2001556073209659524

/-! ## A229162.P14192399919617364147

`A255374(n)+A061398(A064062(n))`
-/

namespace A229162.P14192399919617364147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255374 n + A061398 (A064062 n).toNat

end

end A229162.P14192399919617364147

/-!
# A229163: Number of n X n binary matrices with exactly 4 ones in each row and column, and with rows and columns in lexicographically nondecreasing order.

The programs for A229163, there is no canonical definition to state claims against.
-/

/-! ## A229163.P795837403394479072

`A089361(n+1)*A351742(A074089(n))`
-/

namespace A229163.P795837403394479072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089361 (n + 1) * A351742 (A074089 n).toNat

end

end A229163.P795837403394479072

/-! ## A229163.P17853609113171098946

`∏[5^n]%A281910(n)`
-/

namespace A229163.P17853609113171098946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A281910 n)

end

end A229163.P17853609113171098946

/-! ## A229163.P18122693966219577271

`A243148(5^n+char[∑[n]]+1)`
-/

namespace A229163.P18122693966219577271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (5 ^ n + ((if ∃ j, f1 j = n then 1 else 0) + 1))

end

end A229163.P18122693966219577271

/-!
# A229164: Number of n X n binary matrices with exactly 5 ones in each row and column, and with rows and columns in lexicographically nondecreasing order.

The programs for A229164, there is no canonical definition to state claims against.
-/

/-! ## A229164.P14165231506163967841

`A110654(A181153(n+3)*A308762(n))`
-/

namespace A229164.P14165231506163967841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A181153 (n + 3) * A308762 n).toNat

end

end A229164.P14165231506163967841

/-! ## A229164.P4280541319069549906

`A328170(A006720(n)^A335208(n+1))`
-/

namespace A229164.P4280541319069549906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328170 (SequenceMachineLib.roundAway ((A006720 n : ℚ) ^ (A335208 (n + 1) : ℤ))).toNat

end

end A229164.P4280541319069549906

/-! ## A229164.P8237886215861163620

`A181344(n+1)%A334997(A000301(n))`
-/

namespace A229164.P8237886215861163620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181344 (n + 1)) (A334997 (A000301 n).toNat)

end

end A229164.P8237886215861163620

/-! ## A229164.P13116517463547663993

`A328170(C(A006720(n), A335208(n+1)))`
-/

namespace A229164.P13116517463547663993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328170 (Nat.choose (A006720 n).toNat (A335208 (n + 1)).toNat)

end

end A229164.P13116517463547663993

/-!
# A229165: a(n) is the number of n X n matrices of 0's, 1's and -1's in which the entries in each row or column sum to 1 and there are no adjacent -1's or 1's in any row or column.

The programs for A229165, there is no canonical definition to state claims against.
-/

/-! ## A229165.P8977900817735119516

`A007094(A195516(n+1)+n)`
-/

namespace A229165.P8977900817735119516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A195516 (n + 1) + (n : ℤ)).toNat

end

end A229165.P8977900817735119516

/-!
# A229166: Number of ordered ways to write n = x*(x+1)/2 + y with y*(y+1)/2 + 1 prime, where x and y are nonnegative integers.

The programs for A229166, there is no canonical definition to state claims against.
-/

/-! ## A229166.P4582216082582951663

`or(A001221(A005496(2*n)), A093829(2*n+1))`
-/

namespace A229166.P4582216082582951663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A005496 (2 * n)).toNat) (A093829 (2 * n + 1))

end

end A229166.P4582216082582951663

/-! ## A229166.P6101706204627394594

`A132399(A028757(2*(n+1))%A102363(n+1))`
-/

namespace A229166.P6101706204627394594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132399 (Int.tmod (A028757 (2 * (n + 1))) (A102363 (n + 1))).toNat

end

end A229166.P6101706204627394594

/-!
# A229167: a(n) = smallest index i such that A010062(i) >= 2^n.

The programs for A229167, there is no canonical definition to state claims against.
-/

/-! ## A229167.P16811890284259659203

`A351290(A008965(n+1))+floor(n/2)`
-/

namespace A229167.P16811890284259659203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351290 (A008965 (n + 1)).toNat + ⌊(n : ℚ) / 2⌋

end

end A229167.P16811890284259659203

/-! ## A229167.P7884905290313041085

`∑[floor(A010101(n+1)/2)-A233270(n)]`
-/

namespace A229167.P7884905290313041085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010101 (n + 1) : ℚ) / 2⌋ - A233270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229167.P7884905290313041085

/-! ## A229167.P6287701028397500804

`A024327(A299263(n)+A211216(n+1))`
-/

namespace A229167.P6287701028397500804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (A299263 n + A211216 (n + 1)).toNat

end

end A229167.P6287701028397500804

/-! ## A229167.P15358907017181047007

`A173270(n)-A066099(A102980(2*(n+1)))`
-/

namespace A229167.P15358907017181047007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173270 n - A066099 (A102980 (2 * (n + 1))).toNat

end

end A229167.P15358907017181047007

/-!
# A229168: Define a sequence of real numbers by b(1)=2, b(n+1) = b(n) + log_2(b(n)); a(n) = smallest i such that b(i) >= 2^n.

The programs for A229168, there is no canonical definition to state claims against.
-/

/-! ## A229168.P14963271668573027185

`A023193(A267052(n))+n`
-/

namespace A229168.P14963271668573027185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A267052 n).toNat + (n : ℤ)

end

end A229168.P14963271668573027185

/-! ## A229168.P8957837971893390394

`A320328(n)+A001222(A003946(n))`
-/

namespace A229168.P8957837971893390394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320328 n + A001222 (A003946 n).toNat

end

end A229168.P8957837971893390394

/-! ## A229168.P10462154784827119872

`A255062(n)+A038605(A049194(2*(n+1)))`
-/

namespace A229168.P10462154784827119872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 n + A038605 (A049194 (2 * (n + 1))).toNat

end

end A229168.P10462154784827119872

/-! ## A229168.P4976374800764313698

`A320328(n)+A159075(A104326(n+1))+1+n`
-/

namespace A229168.P4976374800764313698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320328 n + (A159075 (A104326 (n + 1)).toNat + 1 + (n : ℤ))

end

end A229168.P4976374800764313698

/-! ## A229168.P4408339223524158051

`A023193(A083579(n+1))+1-A015070(n)+n`
-/

namespace A229168.P4408339223524158051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A083579 (n + 1)).toNat + (1 - A015070 n) + (n : ℤ)

end

end A229168.P4408339223524158051

/-!
# A229169: Define a sequence of real numbers by b(1)=2, b(n+1) = b(n) + log_2(b(n)); a(n) = floor( b(n) ).

The programs for A229169, there is no canonical definition to state claims against.
-/

/-! ## A229169.P18121457435600579245

`floor(record[a(n-2)+log2(a(n-2))])` with `a(0)=2, a(1)=1`
-/

namespace A229169.P18121457435600579245
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 2) + Real.logb 2 (f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A229169.P18121457435600579245

/-! ## A229169.P1353552808853514703

`A229170(n+1)-floor(atan(n))`
-/

namespace A229169.P1353552808853514703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229170 (n + 1) - ⌊Real.arctan (n : ℝ)⌋

end

end A229169.P1353552808853514703

/-! ## A229169.P5117202854703642286

`A229170(n+1)-A157928(n)`
-/

namespace A229169.P5117202854703642286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229170 (n + 1) - A157928 n

end

end A229169.P5117202854703642286

/-! ## A229169.P10267280910605146309

`A229170(n+1)-A043545(n²)`
-/

namespace A229169.P10267280910605146309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229170 (n + 1) - A043545 (n ^ 2)

end

end A229169.P10267280910605146309

/-! ## A229169.P2227806426555179810

`A229170(n+1)-char[A108872(n+1)]`
-/

namespace A229169.P2227806426555179810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229170 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A229169.P2227806426555179810

/-! ## A229169.P8745195509270830151

`A229170(n+1)-char[A038722(n+2)]`
-/

namespace A229169.P8745195509270830151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229170 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A229169.P8745195509270830151

/-! ## A229169.P7670031203158242681

`A229170(n+1)-A039649(n+1)%2`
-/

namespace A229169.P7670031203158242681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229170 (n + 1) - Int.tmod (A039649 (n + 1)) 2

end

end A229169.P7670031203158242681

/-! ## A229169.P9882160885529793975

`A229170(n+1)-(n+1)%A028310(n)`
-/

namespace A229169.P9882160885529793975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229170 (n + 1) - Int.tmod (n + 1 : ℤ) (A028310 n)

end

end A229169.P9882160885529793975

/-! ## A229169.P14112709503213653302

`A229170(n+1)-A001221(A060632(n))`
-/

namespace A229169.P14112709503213653302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229170 (n + 1) - A001221 (A060632 n).toNat

end

end A229169.P14112709503213653302

/-!
# A229170: Define a sequence of real numbers by b(1)=2, b(n+1) = b(n) + log_2(b(n)); a(n) = ceiling( b(n) ).

The programs for A229170, there is no canonical definition to state claims against.
-/

/-! ## A229170.P16137809174173159629

`ceil(record[a(n-2)+log2(a(n-2))])` with `a(0)=2, a(1)=1`
-/

namespace A229170.P16137809174173159629
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 2) + Real.logb 2 (f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A229170.P16137809174173159629

/-! ## A229170.P8941583843824523900

`floor(A229169(n+1)+atan(n))`
-/

namespace A229170.P8941583843824523900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A229169 (n + 1) : ℝ) + Real.arctan (n : ℝ)⌋

end

end A229170.P8941583843824523900

/-! ## A229170.P2997351906865883864

`A229169(n+1)+A157928(n)`
-/

namespace A229170.P2997351906865883864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229169 (n + 1) + A157928 n

end

end A229170.P2997351906865883864

/-! ## A229170.P13205394536646804569

`A229169(n+1)+char[A108872(n+1)]`
-/

namespace A229170.P13205394536646804569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229169 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A229170.P13205394536646804569

/-! ## A229170.P15768347818230179496

`A229169(n+1)+char[A001414(n+2)]`
-/

namespace A229170.P15768347818230179496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229169 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A229170.P15768347818230179496

/-! ## A229170.P2948582399010809757

`A229169(n+1)+char[A056239(n+3)]`
-/

namespace A229170.P2948582399010809757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229169 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A229170.P2948582399010809757

/-! ## A229170.P721269234010799645

`A229169(n+1)+1-A019590(n+1)`
-/

namespace A229170.P721269234010799645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229169 (n + 1) + (1 - A019590 (n + 1))

end

end A229170.P721269234010799645

/-! ## A229170.P17809090721987622273

`A229169(n+1)+A039649(n+1)%2`
-/

namespace A229170.P17809090721987622273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229169 (n + 1) + Int.tmod (A039649 (n + 1)) 2

end

end A229170.P17809090721987622273

/-! ## A229170.P5963937852467833331

`A229169(n+1)+A001221(A060632(n))`
-/

namespace A229170.P5963937852467833331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229169 (n + 1) + A001221 (A060632 n).toNat

end

end A229170.P5963937852467833331

/-! ## A229170.P7826816770273176533

`A229169(n+1)+A001221(A003642(n+1))`
-/

namespace A229170.P7826816770273176533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229169 (n + 1) + A001221 (A003642 (n + 1)).toNat

end

end A229170.P7826816770273176533

/-!
# A229171: Define a sequence of real numbers by b(1)=e, b(n+1) = b(n) + log(b(n)); a(n) = smallest i such that b(i) >= e^n.

The programs for A229171, there is no canonical definition to state claims against.
-/

/-! ## A229171.P8530311638506857144

`A047784(A045650(n+1)-A038548(3*(n+1)))`
-/

namespace A229171.P8530311638506857144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047784 (A045650 (n + 1) - A038548 (3 * (n + 1))).toNat

end

end A229171.P8530311638506857144

/-! ## A229171.P16448391782273037103

`or(A137734(A293196(n)), A151821(n+1))`
-/

namespace A229171.P16448391782273037103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137734 (A293196 n).toNat) (A151821 (n + 1))

end

end A229171.P16448391782273037103

/-! ## A229171.P15187969553556361485

`A112778(A295878(n+1)+A084174(2*n+1))`
-/

namespace A229171.P15187969553556361485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112778 (A295878 (n + 1) + A084174 (2 * n + 1)).toNat

end

end A229171.P15187969553556361485

/-!
# A229172: Define a sequence of real numbers by b(1)=e, b(n+1) = b(n) + log(b(n)); a(n) = floor( b(n) ).

The programs for A229172, there is no canonical definition to state claims against.
-/

/-! ## A229172.P11841929358439307735

`A229173(n+1)-1`
-/

namespace A229172.P11841929358439307735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229173 (n + 1) - 1

end

end A229172.P11841929358439307735

/-! ## A229172.P10596368916300853928

`A023443(A229173(n+1))`
-/

namespace A229172.P10596368916300853928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A229173 (n + 1)).toNat

end

end A229172.P10596368916300853928

/-! ## A229172.P5586055730971180457

`A023444(A229173(n+1)+1)`
-/

namespace A229172.P5586055730971180457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A229173 (n + 1) + 1).toNat

end

end A229172.P5586055730971180457

/-! ## A229172.P14603572741823888472

`A289207(A229173(n+1)+1)`
-/

namespace A229172.P14603572741823888472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A229173 (n + 1) + 1).toNat

end

end A229172.P14603572741823888472

/-! ## A229172.P17139673127878799374

`A023445(A229173(n+1)+2)`
-/

namespace A229172.P17139673127878799374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A229173 (n + 1) + 2).toNat

end

end A229172.P17139673127878799374

/-! ## A229172.P4334135178787472885

`A023446(A229173(n+1)+3)`
-/

namespace A229172.P4334135178787472885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A229173 (n + 1) + 3).toNat

end

end A229172.P4334135178787472885

/-! ## A229172.P6933774335957037993

`A279119(2*A229173(n+1))`
-/

namespace A229172.P6933774335957037993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (2 * A229173 (n + 1)).toNat

end

end A229172.P6933774335957037993

/-! ## A229172.P2130310185207187400

`A233583(or(char[3], A229173(n+1)))`
-/

namespace A229172.P2130310185207187400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A229173 (n + 1))).toNat

end

end A229172.P2130310185207187400

/-! ## A229172.P5578064205035629557

`A000027(A229173(n+1)+or(n, -1))`
-/

namespace A229172.P5578064205035629557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A229173 (n + 1) + Int.lor (n : ℤ) (-1)).toNat

end

end A229172.P5578064205035629557

/-! ## A229172.P17526416261388051479

`A233583(gcd(C(2, n+2), A229173(n+1)))`
-/

namespace A229172.P17526416261388051479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (Int.gcd (Nat.choose 2 (n + 2) : ℤ) (A229173 (n + 1)))

end

end A229172.P17526416261388051479

/-!
# A229173: Define a sequence of real numbers by b(1)=e, b(n+1) = b(n) + log(b(n)); a(n) = ceiling( b(n) ).

The programs for A229173, there is no canonical definition to state claims against.
-/

/-! ## A229173.P16867056146984442088

`A229172(n+1)+1`
-/

namespace A229173.P16867056146984442088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229172 (n + 1) + 1

end

end A229173.P16867056146984442088

/-! ## A229173.P3952421538718809878

`A020725(A229172(n+1))`
-/

namespace A229173.P3952421538718809878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A229172 (n + 1)).toNat

end

end A229173.P3952421538718809878

/-! ## A229173.P6773908488876448226

`ceil(log2(A129417(n+4)))+1`
-/

namespace A229173.P6773908488876448226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A129417 (n + 4) : ℝ)⌉ + 1

end

end A229173.P6773908488876448226

/-! ## A229173.P1769809383645308379

`ceil(log2(A104448(n+2)))`
-/

namespace A229173.P1769809383645308379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A104448 (n + 2) : ℝ)⌉

end

end A229173.P1769809383645308379

/-! ## A229173.P5535940872104705260

`A020725(floor(log2(A104448(n+2))))`
-/

namespace A229173.P5535940872104705260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (Nat.log 2 (A104448 (n + 2)).toNat)

end

end A229173.P5535940872104705260

/-!
# A229176: Primes p with nonzero digits such that p + product_of_digits and p - product_of_digits are both prime.

The programs for A229176, the canonical program `A229176.P17394090284206884535` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229176 has offset 1).

The definition of A229176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229176.P12967708473245170496

`p?[A227948(n+1)]`
-/

namespace A229176.P12967708473245170496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229176.P12967708473245170496

namespace A229176

/-- `p?[A227948(n+1)]` -/
def P12967708473245170496.Spec : Prop :=
  ∀ n, P12967708473245170496.a n = A229176 (n + 1)

end A229176

/-! ## A229176.P17394090284206884535

`∩[A092518(n+1), A227217(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A229176

/-- `∩[A092518(n+1), A227217(n+1)]` -/
def P17394090284206884535.Spec : Prop :=
  ∀ n, (P17394090284206884535.a n : ℤ) = A229176 (n + 1)

theorem P17394090284206884535.correct : P17394090284206884535.Spec := by
  intro n
  simp only [A229176, Nat.add_sub_cancel]

end A229176

/-! ## A229176.P911880440261072454

`∩[A092518(n+1), A227948(n+1)]`
-/

namespace A229176.P911880440261072454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229176.P911880440261072454

namespace A229176

/-- `∩[A092518(n+1), A227948(n+1)]` -/
def P911880440261072454.Spec : Prop :=
  ∀ n, (P911880440261072454.a n : ℤ) = A229176 (n + 1)

end A229176

/-! ## A229176.P7618741600975969318

`∩[A227217(n+1), A227948(n+1)]`
-/

namespace A229176.P7618741600975969318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229176.P7618741600975969318

namespace A229176

/-- `∩[A227217(n+1), A227948(n+1)]` -/
def P7618741600975969318.Spec : Prop :=
  ∀ n, (P7618741600975969318.a n : ℤ) = A229176 (n + 1)

end A229176

/-! ## A229176.P416358456005335842

`∩[A157677(n+1), A227948(n+1)]`
-/

namespace A229176.P416358456005335842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229176.P416358456005335842

namespace A229176

/-- `∩[A157677(n+1), A227948(n+1)]` -/
def P416358456005335842.Spec : Prop :=
  ∀ n, (P416358456005335842.a n : ℤ) = A229176 (n + 1)

end A229176

/-! ## A229176.P17856978529032168998

`∩[A038618(n+1), A227217(n+1)]`
-/

namespace A229176.P17856978529032168998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229176.P17856978529032168998

namespace A229176

/-- `∩[A038618(n+1), A227217(n+1)]` -/
def P17856978529032168998.Spec : Prop :=
  ∀ n, (P17856978529032168998.a n : ℤ) = A229176 (n + 1)

end A229176

/-! ## A229176.P17600053897681791125

`∩[A038618(n+1), A227948(n+1)]`
-/

namespace A229176.P17600053897681791125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229176.P17600053897681791125

namespace A229176

/-- `∩[A038618(n+1), A227948(n+1)]` -/
def P17600053897681791125.Spec : Prop :=
  ∀ n, (P17600053897681791125.a n : ℤ) = A229176 (n + 1)

end A229176

/-! ## A229176.P5582410775657205543

`∩[A195943(n+1), A227217(n+1)]`
-/

namespace A229176.P5582410775657205543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229176.P5582410775657205543

namespace A229176

/-- `∩[A195943(n+1), A227217(n+1)]` -/
def P5582410775657205543.Spec : Prop :=
  ∀ n, (P5582410775657205543.a n : ℤ) = A229176 (n + 1)

end A229176

/-! ## A229176.P15253478152197523029

`∩[A092518(n+1), A229221(n+1)]`
-/

namespace A229176.P15253478152197523029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229176.P15253478152197523029

namespace A229176

/-- `∩[A092518(n+1), A229221(n+1)]` -/
def P15253478152197523029.Spec : Prop :=
  ∀ n, (P15253478152197523029.a n : ℤ) = A229176 (n + 1)

end A229176

/-! ## A229176.P7608726416686258783

`filter[A227948(n+1), A010051(#)]`
-/

namespace A229176.P7608726416686258783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A229176.P7608726416686258783

namespace A229176

/-- `filter[A227948(n+1), A010051(#)]` -/
def P7608726416686258783.Spec : Prop :=
  ∀ n, P7608726416686258783.a n = A229176 (n + 1)

end A229176

/-! ## A229176.P16186542759042120369

`filter[A227948(n+1), A365716(#)]`
-/

namespace A229176.P16186542759042120369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A229176.P16186542759042120369

namespace A229176

/-- `filter[A227948(n+1), A365716(#)]` -/
def P16186542759042120369.Spec : Prop :=
  ∀ n, P16186542759042120369.a n = A229176 (n + 1)

end A229176

/-! ## A229176.P11590342606756761550

`∩[A000040(n+1), A227948(n+1)]`
-/

namespace A229176.P11590342606756761550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229176.P11590342606756761550

namespace A229176

/-- `∩[A000040(n+1), A227948(n+1)]` -/
def P11590342606756761550.Spec : Prop :=
  ∀ n, (P11590342606756761550.a n : ℤ) = A229176 (n + 1)

end A229176

/-! ## A229176.P8679926146778502500

`∩[A004139(n+1), A227948(n+1)]`
-/

namespace A229176.P8679926146778502500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229176.P8679926146778502500

namespace A229176

/-- `∩[A004139(n+1), A227948(n+1)]` -/
def P8679926146778502500.Spec : Prop :=
  ∀ n, (P8679926146778502500.a n : ℤ) = A229176 (n + 1)

end A229176

/-! ## A229176.P15333186227624871415

`∩[A006005(n+1), A227948(n+1)]`
-/

namespace A229176.P15333186227624871415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229176.P15333186227624871415

namespace A229176

/-- `∩[A006005(n+1), A227948(n+1)]` -/
def P15333186227624871415.Spec : Prop :=
  ∀ n, (P15333186227624871415.a n : ℤ) = A229176 (n + 1)

end A229176

/-! ## A229176.P13099959659283604096

`∩[A008578(n+1), A227948(n+1)]`
-/

namespace A229176.P13099959659283604096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229176.P13099959659283604096

namespace A229176

/-- `∩[A008578(n+1), A227948(n+1)]` -/
def P13099959659283604096.Spec : Prop :=
  ∀ n, (P13099959659283604096.a n : ℤ) = A229176 (n + 1)

end A229176

/-! ## A229176.P9162789940334238424

`∩[A033946(n+1), A227948(n+1)]`
-/

namespace A229176.P9162789940334238424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229176.P9162789940334238424

namespace A229176

/-- `∩[A033946(n+1), A227948(n+1)]` -/
def P9162789940334238424.Spec : Prop :=
  ∀ n, (P9162789940334238424.a n : ℤ) = A229176 (n + 1)

end A229176

/-! ## A229176.P52066045148132222

`∩[A045319(n+1), A227948(n+1)]`
-/

namespace A229176.P52066045148132222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229176.P52066045148132222

namespace A229176

/-- `∩[A045319(n+1), A227948(n+1)]` -/
def P52066045148132222.Spec : Prop :=
  ∀ n, (P52066045148132222.a n : ℤ) = A229176 (n + 1)

end A229176

/-! ## A229176.P18323423050798648044

`∩[A045344(n+1), A227948(n+1)]`
-/

namespace A229176.P18323423050798648044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229176.P18323423050798648044

namespace A229176

/-- `∩[A045344(n+1), A227948(n+1)]` -/
def P18323423050798648044.Spec : Prop :=
  ∀ n, (P18323423050798648044.a n : ℤ) = A229176 (n + 1)

end A229176

/-! ## A229176.P3898726447402549258

`∩[A046022(n+1), A227948(n+1)]`
-/

namespace A229176.P3898726447402549258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229176.P3898726447402549258

namespace A229176

/-- `∩[A046022(n+1), A227948(n+1)]` -/
def P3898726447402549258.Spec : Prop :=
  ∀ n, (P3898726447402549258.a n : ℤ) = A229176 (n + 1)

end A229176

/-! ## A229176.P203065538256061979

`∩[A051948(n+1), A227948(n+1)]`
-/

namespace A229176.P203065538256061979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229176.P203065538256061979

namespace A229176

/-- `∩[A051948(n+1), A227948(n+1)]` -/
def P203065538256061979.Spec : Prop :=
  ∀ n, (P203065538256061979.a n : ℤ) = A229176 (n + 1)

end A229176

/-!
# A229180: Expansion of (chi(-x) * chi(-x^3))^-3 in powers of x where chi() is a Ramanujan theta function.

The programs for A229180, there is no canonical definition to state claims against.
-/

/-! ## A229180.P10755994371740113717

`A103260(4*n+2)/2`
-/

namespace A229180.P10755994371740113717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103260 (4 * n + 2) : ℚ) / 2

end

end A229180.P10755994371740113717

/-! ## A229180.P773214986449965394

`A142150(A103260(4*n+2))`
-/

namespace A229180.P773214986449965394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A103260 (4 * n + 2)).toNat

end

end A229180.P773214986449965394

/-! ## A229180.P11219848114435504360

`A032742(A103260(4*n+2)+2)-1`
-/

namespace A229180.P11219848114435504360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A103260 (4 * n + 2) + 2).toNat - 1

end

end A229180.P11219848114435504360

/-! ## A229180.P10040646321297176213

`A002265(2*A103260(4*n+2))`
-/

namespace A229180.P10040646321297176213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A103260 (4 * n + 2)).toNat

end

end A229180.P10040646321297176213

/-!
# A229181: Number of decimal digits in the variant of A047777(n) (decimal expansion of Pi cut in "prime chunks") without the restriction that all primes must be different.

The programs for A229181, there is no canonical definition to state claims against.
-/

/-! ## A229181.P8609205280647044359

`Δ[A053013(n+1)]`
-/

namespace A229181.P8609205280647044359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229181.P8609205280647044359

/-! ## A229181.P1000505765964513574

`Δ[record[A053013(A102885(n))]]`
-/

namespace A229181.P1000505765964513574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053013 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229181.P1000505765964513574

/-! ## A229181.P4085470133197454407

`Δ[record[A053013(A126759(n))]]`
-/

namespace A229181.P4085470133197454407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053013 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229181.P4085470133197454407

/-! ## A229181.P332091585449865999

`Δ[record[A053013(A133310(n))]]`
-/

namespace A229181.P332091585449865999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053013 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229181.P332091585449865999

/-! ## A229181.P7575168074486709918

`Δ[record[A053013(A134478(n))]]`
-/

namespace A229181.P7575168074486709918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053013 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229181.P7575168074486709918

/-!
# A229182: G.f. satisfies: A(x) = Sum_{n>=0} x^n * Product_{k=1..n} (A(x)^k - x^k).

The programs for A229182, there is no canonical definition to state claims against.
-/

/-! ## A229182.P9458197941076739020

`A121689(n)-A007814(A000142(n))`
-/

namespace A229182.P9458197941076739020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121689 n - A007814 (A000142 n).toNat

end

end A229182.P9458197941076739020

/-! ## A229182.P104916933063533006

`A046155(A232974(n))`
-/

namespace A229182.P104916933063533006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A232974 n).toNat

end

end A229182.P104916933063533006

/-! ## A229182.P10361245875188644183

`A325466(A210344(n))+A105479(n)`
-/

namespace A229182.P10361245875188644183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325466 (A210344 n).toNat + A105479 n

end

end A229182.P10361245875188644183

/-!
# A229183: a(n) = n*(n^2 + 3)/2.

The programs for A229183, the canonical program `A229183.P5655827316259754631` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229183 has offset 0).

The definition of A229183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229183.P5655827316259754631

`n*(n²+3)/2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229183

/-- `n*(n²+3)/2` -/
def P5655827316259754631.Spec : Prop :=
  ∀ n, P5655827316259754631.a n = (A229183 n : ℚ)

end A229183

/-! ## A229183.P13133643466350518165

`Δ[C(C(n, 2)+2, 2)]`
-/

namespace A229183.P13133643466350518165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 2 + 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A229183.P13133643466350518165

namespace A229183

/-- `Δ[C(C(n, 2)+2, 2)]` -/
def P13133643466350518165.Spec : Prop :=
  ∀ n, P13133643466350518165.a n = A229183 n

end A229183

/-! ## A229183.P17618718487756766772

`∑[n²]+C(n, 3)+n`
-/

namespace A229183.P17618718487756766772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 3 + n)

end

end A229183.P17618718487756766772

namespace A229183

/-- `∑[n²]+C(n, 3)+n` -/
def P17618718487756766772.Spec : Prop :=
  ∀ n, (P17618718487756766772.a n : ℤ) = A229183 n

end A229183

/-! ## A229183.P11690908967349687837

`2*n+∑[3*C(n, 2)]`
-/

namespace A229183.P11690908967349687837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229183.P11690908967349687837

namespace A229183

/-- `2*n+∑[3*C(n, 2)]` -/
def P11690908967349687837.Spec : Prop :=
  ∀ n, (P11690908967349687837.a n : ℤ) = A229183 n

end A229183

/-! ## A229183.P13231276300189245278

`∑[∑[a(n-1)+3]]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A229183.P13231276300189245278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229183.P13231276300189245278

namespace A229183

/-- `∑[∑[a(n-1)+3]]` -/
def P13231276300189245278.Spec : Prop :=
  ∀ n, (P13231276300189245278.a n : ℤ) = A229183 n

end A229183

/-! ## A229183.P2124875963002259296

`(n+1)*(C(n, 2)+2)-2`
-/

namespace A229183.P2124875963002259296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (Nat.choose n 2 + 2) : ℤ) - 2

end

end A229183.P2124875963002259296

namespace A229183

/-- `(n+1)*(C(n, 2)+2)-2` -/
def P2124875963002259296.Spec : Prop :=
  ∀ n, P2124875963002259296.a n = A229183 n

end A229183

/-! ## A229183.P15678955753887105074

`2*n+3*C(n+1, 3)`
-/

namespace A229183.P15678955753887105074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3 * Nat.choose (n + 1) 3

end

end A229183.P15678955753887105074

namespace A229183

/-- `2*n+3*C(n+1, 3)` -/
def P15678955753887105074.Spec : Prop :=
  ∀ n, (P15678955753887105074.a n : ℤ) = A229183 n

end A229183

/-! ## A229183.P815563735420330463

`∑[∑[ogf((2x-x^2+2x^3)/(1-2x+x^2))]]`
-/

namespace A229183.P815563735420330463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229183.P815563735420330463

namespace A229183

/-- `∑[∑[ogf((2x-x^2+2x^3)/(1-2x+x^2))]]` -/
def P815563735420330463.Spec : Prop :=
  ∀ n, P815563735420330463.a n = A229183 n

end A229183

/-! ## A229183.P13748125395484696183

`lcm(2, 2*n)+(n-1)*∑[n]`
-/

namespace A229183.P13748125395484696183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (2 * n) : ℤ) + ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A229183.P13748125395484696183

namespace A229183

/-- `lcm(2, 2*n)+(n-1)*∑[n]` -/
def P13748125395484696183.Spec : Prop :=
  ∀ n, P13748125395484696183.a n = A229183 n

end A229183

/-! ## A229183.P11867796405567564733

`∑[∑[n-2%(n+1)]+n²]`
-/

namespace A229183.P11867796405567564733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((2 % (n + 1) : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229183.P11867796405567564733

namespace A229183

/-- `∑[∑[n-2%(n+1)]+n²]` -/
def P11867796405567564733.Spec : Prop :=
  ∀ n, P11867796405567564733.a n = A229183 n

end A229183

/-! ## A229183.P13893679164250713597

`∑[a(n-1)-3*(1-n)]` with `a(0)=0, a(1)=2`
-/

namespace A229183.P13893679164250713597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - 3 * (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229183.P13893679164250713597

namespace A229183

/-- `∑[a(n-1)-3*(1-n)]` -/
def P13893679164250713597.Spec : Prop :=
  ∀ n, P13893679164250713597.a n = A229183 n

end A229183

/-! ## A229183.P15499929821560134406

`∑[5-∑[a(n-1)-3]]-2` with `a(0)=3`
-/

namespace A229183.P15499929821560134406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A229183.P15499929821560134406

namespace A229183

/-- `∑[5-∑[a(n-1)-3]]-2` -/
def P15499929821560134406.Spec : Prop :=
  ∀ n, P15499929821560134406.a n = A229183 n

end A229183

/-! ## A229183.P11048869608301449844

`2*n-∑[∑[n]-C(2*n, 2)]`
-/

namespace A229183.P11048869608301449844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.choose (2 * n) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229183.P11048869608301449844

namespace A229183

/-- `2*n-∑[∑[n]-C(2*n, 2)]` -/
def P11048869608301449844.Spec : Prop :=
  ∀ n, P11048869608301449844.a n = A229183 n

end A229183

/-! ## A229183.P14294082225108434145

`xor(1, 2*n+1)+(n-1)*∑[n]`
-/

namespace A229183.P14294082225108434145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (2 * n + 1) : ℤ) + ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A229183.P14294082225108434145

namespace A229183

/-- `xor(1, 2*n+1)+(n-1)*∑[n]` -/
def P14294082225108434145.Spec : Prop :=
  ∀ n, P14294082225108434145.a n = A229183 n

end A229183

/-! ## A229183.P16022286017881013348

`2*n+(2*n)%(n+1)*∑[n]`
-/

namespace A229183.P16022286017881013348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 2 * n % (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229183.P16022286017881013348

namespace A229183

/-- `2*n+(2*n)%(n+1)*∑[n]` -/
def P16022286017881013348.Spec : Prop :=
  ∀ n, (P16022286017881013348.a n : ℤ) = A229183 n

end A229183

/-! ## A229183.P14838502602697956718

`2*n+(n-1)*∑[gcd(n, 2*n)]`
-/

namespace A229183.P14838502602697956718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A229183.P14838502602697956718

namespace A229183

/-- `2*n+(n-1)*∑[gcd(n, 2*n)]` -/
def P14838502602697956718.Spec : Prop :=
  ∀ n, P14838502602697956718.a n = A229183 n

end A229183

/-! ## A229183.P6323742862935470174

`and(2*n+1, 2*n)+(n-1)*∑[n]`
-/

namespace A229183.P6323742862935470174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land (2 * n + 1) (2 * n) : ℤ) + ((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A229183.P6323742862935470174

namespace A229183

/-- `and(2*n+1, 2*n)+(n-1)*∑[n]` -/
def P6323742862935470174.Spec : Prop :=
  ∀ n, P6323742862935470174.a n = A229183 n

end A229183

/-! ## A229183.P13186579349302709492

`floor(a(n-1)+a(n-1)/n+n²)` with `a(0)=0, a(1)=2`
-/

namespace A229183.P13186579349302709492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((a (n - 1) : ℚ) / (n : ℚ) + (n ^ 2 : ℚ))⌋

end

end A229183.P13186579349302709492

namespace A229183

/-- `floor(a(n-1)+a(n-1)/n+n²)` -/
def P13186579349302709492.Spec : Prop :=
  ∀ n, P13186579349302709492.a n = A229183 n

end A229183

/-! ## A229183.P1180874177589286097

`n+A006003(n)`
-/

namespace A229183.P1180874177589286097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A006003 n

end

end A229183.P1180874177589286097

namespace A229183

/-- `n+A006003(n)` -/
def P1180874177589286097.Spec : Prop :=
  ∀ n, P1180874177589286097.a n = A229183 n

end A229183

/-!
# A229184: Numbers decremented by their digit product produce a cube.

The programs for A229184, there is no canonical definition to state claims against.
-/

/-! ## A229184.P17797457295290491769

`record[gcd(n-2*floor(n/10), A304244(n+1))]`
-/

namespace A229184.P17797457295290491769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋) (A304244 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229184.P17797457295290491769

/-! ## A229184.P15462954782306637880

`A354581(A062388(n))`
-/

namespace A229184.P15462954782306637880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354581 (A062388 n).toNat

end

end A229184.P15462954782306637880

/-! ## A229184.P54415963501173025

`A354581(A070244(n))`
-/

namespace A229184.P54415963501173025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354581 (A070244 n).toNat

end

end A229184.P54415963501173025

/-! ## A229184.P10236633838251242369

`A355668(A057889(∑[n]))`
-/

namespace A229184.P10236633838251242369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355668 (A057889 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A229184.P10236633838251242369

/-!
# A229185: Numbers incremented by their digit product produce a cube.

The programs for A229185, there is no canonical definition to state claims against.
-/

/-! ## A229185.P7442749073708684573

`eq[0, A055400(A230099(n))]`
-/

namespace A229185.P7442749073708684573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A230099 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229185.P7442749073708684573

/-! ## A229185.P1987661863562010625

`eq[A055401(A230099(n)), A057427(n)]`
-/

namespace A229185.P1987661863562010625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (A230099 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229185.P1987661863562010625

/-! ## A229185.P3226162401312027132

`lt[A055400(A230099(n)), A054977(n)]`
-/

namespace A229185.P3226162401312027132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A230099 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229185.P3226162401312027132

/-! ## A229185.P16744906834807279979

`lt[A055400(A230099(n)), A035214(n+4)]`
-/

namespace A229185.P16744906834807279979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A230099 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229185.P16744906834807279979

/-!
# A229186: Beginning position of n in the decimal expansion of the Champernowne constant.

The programs for A229186, there is no canonical definition to state claims against.
-/

/-! ## A229186.P12387290233777386739

`A031297(floor(acot(n)+n))+5*A000038(n)`
-/

namespace A229186.P12387290233777386739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031297 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 5 * A000038 n

end

end A229186.P12387290233777386739

/-! ## A229186.P17080574066237472161

`A031297(C(2, n+2)+n)+5*A000038(n)`
-/

namespace A229186.P17080574066237472161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031297 (Nat.choose 2 (n + 2) + n) + 5 * A000038 n

end

end A229186.P17080574066237472161

/-! ## A229186.P15533827023382224984

`A031297(floor(57^-A006530(a(n-1))+n))` with `a(0)=11`
-/

namespace A229186.P15533827023382224984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [11] fun n a =>
  A031297 ⌊(57 : ℚ) ^ (-A006530 (a (n - 1)).toNat : ℤ) + (n : ℚ)⌋.toNat

end

end A229186.P15533827023382224984

/-! ## A229186.P8636057747328674163

`A031297(A028310(n))+5*A000038(n)`
-/

namespace A229186.P8636057747328674163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031297 (A028310 n).toNat + 5 * A000038 n

end

end A229186.P8636057747328674163

/-! ## A229186.P16794347032333293840

`A031297(A065033(2*n))+5*A000038(n)`
-/

namespace A229186.P16794347032333293840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031297 (A065033 (2 * n)).toNat + 5 * A000038 n

end

end A229186.P16794347032333293840

/-!
# A229188: G.f. satisfies: A(x) = Sum_{n>=0} x^n * Product_{k=1..n} (A(x) - x^k).

The programs for A229188, there is no canonical definition to state claims against.
-/

/-! ## A229188.P5988456012082119497

`A335624(A318268(n))`
-/

namespace A229188.P5988456012082119497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335624 (A318268 n).toNat

end

end A229188.P5988456012082119497

/-! ## A229188.P7862224452442783477

`A289341(or(2, A289322(n)))`
-/

namespace A229188.P7862224452442783477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289341 (Int.lor 2 (A289322 n)).toNat

end

end A229188.P7862224452442783477

/-! ## A229188.P7959094451345767843

`A289341(A326702(n)+A289322(n))`
-/

namespace A229188.P7959094451345767843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289341 (A326702 n + A289322 n).toNat

end

end A229188.P7959094451345767843

/-!
# A229189: G.f. satisfies: A(x) = Sum_{n>=0} x^n*A(x)^n * Product_{k=1..n} (A(x)^k - x^k).

The programs for A229189, there is no canonical definition to state claims against.
-/

/-! ## A229189.P9698892794068456876

`or(A054908(A000124(n)), A295809(n))`
-/

namespace A229189.P9698892794068456876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054908 (A000124 n).toNat) (A295809 n)

end

end A229189.P9698892794068456876

/-! ## A229189.P9146566703014724810

`or(A008615(A322451(n)), A295809(n))`
-/

namespace A229189.P9146566703014724810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008615 (A322451 n).toNat) (A295809 n)

end

end A229189.P9146566703014724810

/-!
# A229194: Integers nearest to (2^((n-3)/2) + 3^((n-3)/2)).

The programs for A229194, the canonical program `A229194.P15910331704430471793` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229194 has offset 0).

The definition of A229194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229194.P15910331704430471793

`round(2^((n-3)/2)+3^((n-3)/2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229194

/-- `round(2^((n-3)/2)+3^((n-3)/2))` -/
def P15910331704430471793.Spec : Prop :=
  ∀ n, P15910331704430471793.a n = A229194 n

theorem P15910331704430471793.correct : P15910331704430471793.Spec := by
  intro n
  simp only [A229194]

end A229194

/-! ## A229194.P15345147163592204353

`A229198(n)+A000045(n)`
-/

namespace A229194.P15345147163592204353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229198 n + A000045 n

end

end A229194.P15345147163592204353

namespace A229194

/-- `A229198(n)+A000045(n)` -/
def P15345147163592204353.Spec : Prop :=
  ∀ n, P15345147163592204353.a n = A229194 n

end A229194

/-! ## A229194.P4956787144685007482

`A229198(n)+Δ[A000071(n+1)]`
-/

namespace A229194.P4956787144685007482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229198 n + (f1 (n + 1) - f1 n)

end

end A229194.P4956787144685007482

namespace A229194

/-- `A229198(n)+Δ[A000071(n+1)]` -/
def P4956787144685007482.Spec : Prop :=
  ∀ n, P4956787144685007482.a n = A229194 n

end A229194

/-! ## A229194.P4103523373474934323

`A000071(n+2)+A229198(n)-A000071(n+1)`
-/

namespace A229194.P4103523373474934323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) + (A229198 n - A000071 (n + 1))

end

end A229194.P4103523373474934323

namespace A229194

/-- `A000071(n+2)+A229198(n)-A000071(n+1)` -/
def P4103523373474934323.Spec : Prop :=
  ∀ n, P4103523373474934323.a n = A229194 n

end A229194

/-! ## A229194.P7727739427536369771

`A229198(n)+A039913(∑[n])`
-/

namespace A229194.P7727739427536369771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229198 n + A039913 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229194.P7727739427536369771

namespace A229194

/-- `A229198(n)+A039913(∑[n])` -/
def P7727739427536369771.Spec : Prop :=
  ∀ n, P7727739427536369771.a n = A229194 n

end A229194

/-!
# A229198: Difference between integers nearest to (2^((n-3)/2) + 3^((n-3)/2)) (A229194) and Fibonacci numbers (A000045).

The programs for A229198, the canonical program `A229198.P8206997386227467298` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229198 has offset 0).

The definition of A229198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229198.P8206997386227467298

`A229194(n)-A000045(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A229198

/-- `A229194(n)-A000045(n)` -/
def P8206997386227467298.Spec : Prop :=
  ∀ n, P8206997386227467298.a n = A229198 n

theorem P8206997386227467298.correct : P8206997386227467298.Spec := by
  intro n
  simp only [A229198]

end A229198

/-! ## A229198.P17018676943972598269

`A229194(n)-A103609(2*n)`
-/

namespace A229198.P17018676943972598269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229194 n - A103609 (2 * n)

end

end A229198.P17018676943972598269

namespace A229198

/-- `A229194(n)-A103609(2*n)` -/
def P17018676943972598269.Spec : Prop :=
  ∀ n, P17018676943972598269.a n = A229198 n

end A229198

/-! ## A229198.P15262458184890341258

`A229194(n)-Δ[A000071(n+1)]`
-/

namespace A229198.P15262458184890341258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229194 n - (f1 (n + 1) - f1 n)

end

end A229198.P15262458184890341258

namespace A229198

/-- `A229194(n)-Δ[A000071(n+1)]` -/
def P15262458184890341258.Spec : Prop :=
  ∀ n, P15262458184890341258.a n = A229198 n

end A229198

/-! ## A229198.P14018285785710186194

`A000071(n+1)+A229194(n)-A000071(n+2)`
-/

namespace A229198.P14018285785710186194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A229194 n - A000071 (n + 2))

end

end A229198.P14018285785710186194

namespace A229198

/-- `A000071(n+1)+A229194(n)-A000071(n+2)` -/
def P14018285785710186194.Spec : Prop :=
  ∀ n, P14018285785710186194.a n = A229198 n

end A229198

/-! ## A229198.P10295055219691768492

`A229194(n)-A039913(A000217(n))`
-/

namespace A229198.P10295055219691768492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229194 n - A039913 (A000217 n).toNat

end

end A229198.P10295055219691768492

namespace A229198

/-- `A229194(n)-A039913(A000217(n))` -/
def P10295055219691768492.Spec : Prop :=
  ∀ n, P10295055219691768492.a n = A229198 n

end A229198

/-! ## A229198.P10263750396063602066

`A229194(n)-A039913(A000096(n)-n)`
-/

namespace A229198.P10263750396063602066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229194 n - A039913 (A000096 n - (n : ℤ)).toNat

end

end A229198.P10263750396063602066

namespace A229198

/-- `A229194(n)-A039913(A000096(n)-n)` -/
def P10263750396063602066.Spec : Prop :=
  ∀ n, P10263750396063602066.a n = A229198 n

end A229198

/-! ## A229198.P7617179807598700475

`A229194(n)-A039913(A000096(n))`
-/

namespace A229198.P7617179807598700475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229194 n - A039913 (A000096 n).toNat

end

end A229198.P7617179807598700475

namespace A229198

/-- `A229194(n)-A039913(A000096(n))` -/
def P7617179807598700475.Spec : Prop :=
  ∀ n, P7617179807598700475.a n = A229198 n

end A229198

/-!
# A229199: Beginning position of n in the decimal expansion of sqrt(2).

The programs for A229199, there is no canonical definition to state claims against.
-/

/-! ## A229199.P6296970245892185743

`A100081(n)+A056594(A155559(n))`
-/

namespace A229199.P6296970245892185743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100081 n + A056594 (A155559 n).toNat

end

end A229199.P6296970245892185743

/-! ## A229199.P12339171680180883731

`A100081(n)-A087960(A000051(n))`
-/

namespace A229199.P12339171680180883731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100081 n - A087960 (A000051 n).toNat

end

end A229199.P12339171680180883731

/-! ## A229199.P9149125387399248749

`A100081(n)+A033999(A056309(n+1))`
-/

namespace A229199.P9149125387399248749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100081 n + A033999 (A056309 (n + 1)).toNat

end

end A229199.P9149125387399248749

/-! ## A229199.P17552683026249422977

`A100081(n)+A033999(A100071(n))`
-/

namespace A229199.P17552683026249422977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100081 n + A033999 (A100071 n).toNat

end

end A229199.P17552683026249422977

/-! ## A229199.P3918095856874917371

`A342275(A220051(n))+A100081(n)`
-/

namespace A229199.P3918095856874917371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342275 (A220051 n).toNat + A100081 n

end

end A229199.P3918095856874917371

