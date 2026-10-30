import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
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

/-!
# A390002: Leading digit of 15^n.

The programs for A390002, there is no canonical definition to state claims against.
-/

/-! ## A390002.P8466831465736867650

`A004086(floor(3^n/2^n))%10`
-/

namespace A390002.P8466831465736867650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 ⌊(3 ^ n : ℚ) / (2 ^ n : ℚ)⌋.toNat) 10

end

end A390002.P8466831465736867650

/-! ## A390002.P16055489598452234462

`A000030(A002379(n))`
-/

namespace A390002.P16055489598452234462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A002379 n).toNat

end

end A390002.P16055489598452234462

/-! ## A390002.P9206039816539716265

`A000030(A117792(n+1))`
-/

namespace A390002.P9206039816539716265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A117792 (n + 1)).toNat

end

end A390002.P9206039816539716265

/-! ## A390002.P17450974427789320475

`A000030(A278706(n+1))`
-/

namespace A390002.P17450974427789320475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A278706 (n + 1)).toNat

end

end A390002.P17450974427789320475

/-! ## A390002.P12405109442830396408

`A000030(A120138(n+1))`
-/

namespace A390002.P12405109442830396408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A120138 (n + 1)).toNat

end

end A390002.P12405109442830396408

/-!
# A390005: Perfect squares which are the product of four distinct factorials.

The programs for A390005, there is no canonical definition to state claims against.
-/

/-! ## A390005.P15500975803050747169

`A227652(A060069(n)+A030124(n+1))`
-/

namespace A390005.P15500975803050747169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227652 (A060069 n + A030124 (n + 1)).toNat

end

end A390005.P15500975803050747169

/-!
# A390006: Integers x such that there exist four integers 0<y<=z<=t<=w such that psi(x)^5 = x^5 + y^5 + z^5 + t^5 + w^5.

The programs for A390006, there is no canonical definition to state claims against.
-/

/-! ## A390006.P9050942918429902723

`eq[A093659(n), A175958(n)]`
-/

namespace A390006.P9050942918429902723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390006.P9050942918429902723

/-!
# A390007: a(n) is the least possible difference between the areas of the largest and smallest rectangles in a 3 element set of distinct integer sided rectangles filling an n X n square.

The programs for A390007, there is no canonical definition to state claims against.
-/

/-! ## A390007.P15103417667767423320

`A385151(n+3)/(n+3)`
-/

namespace A390007.P15103417667767423320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385151 (n + 3) : ℚ) / (n + 3 : ℚ)

end

end A390007.P15103417667767423320

/-!
# A390010: Even powerful numbers.

The programs for A390010, there is no canonical definition to state claims against.
-/

/-! ## A390010.P10921530162808762019

`4*A335851(n+1)`
-/

namespace A390010.P10921530162808762019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A335851 (n + 1)

end

end A390010.P10921530162808762019

/-! ## A390010.P13320881742961530227

`∪[A020707(n), A363216(n+1)]`
-/

namespace A390010.P13320881742961530227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P13320881742961530227

/-! ## A390010.P17249623817275413368

`∪[A075090(n+1), A363216(n+1)]`
-/

namespace A390010.P17249623817275413368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P17249623817275413368

/-! ## A390010.P9971126417842601506

`∪[A075090(n+1), A390952(n+1)]`
-/

namespace A390010.P9971126417842601506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P9971126417842601506

/-! ## A390010.P3770302269985050742

`∪[A075090(n+1), A395067(n+1)]`
-/

namespace A390010.P3770302269985050742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P3770302269985050742

/-! ## A390010.P9420884565637836712

`∪[A145108(n+1), A363216(n+1)]`
-/

namespace A390010.P9420884565637836712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P9420884565637836712

/-! ## A390010.P11472637699884716903

`∪[A304250(n+1), A363216(n+1)]`
-/

namespace A390010.P11472637699884716903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P11472637699884716903

/-! ## A390010.P14640514062615026398

`∪[A322793(n+1), A363216(n+1)]`
-/

namespace A390010.P14640514062615026398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P14640514062615026398

/-! ## A390010.P5811677347430036080

`∩[2*n, A001694(n+1)]`
-/

namespace A390010.P5811677347430036080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P5811677347430036080

/-! ## A390010.P11251305976750962590

`filter[A001694(n+1), A121262(#)]`
-/

namespace A390010.P11251305976750962590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A390010.P11251305976750962590

/-! ## A390010.P3358671746233172503

`filter[A335851(n+1), A121262(#)]`
-/

namespace A390010.P3358671746233172503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A390010.P3358671746233172503

/-! ## A390010.P14775671329871612269

`A008574(A335851(n+1))`
-/

namespace A390010.P14775671329871612269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A335851 (n + 1)).toNat

end

end A390010.P14775671329871612269

/-! ## A390010.P16595399675146494158

`∩[A001694(n+1), A008586(n)]`
-/

namespace A390010.P16595399675146494158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P16595399675146494158

/-! ## A390010.P13821233267377067529

`∩[A335851(n+1), A008586(n)]`
-/

namespace A390010.P13821233267377067529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P13821233267377067529

/-! ## A390010.P3109423984751761069

`∩[A001694(n+1), A400162(n+1)]`
-/

namespace A390010.P3109423984751761069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P3109423984751761069

/-! ## A390010.P5631735343258283856

`∩[A001694(n+1), A118286(n+1)]`
-/

namespace A390010.P5631735343258283856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P5631735343258283856

/-! ## A390010.P8557387258748363715

`∩[A001694(n+1), A157932(n+1)]`
-/

namespace A390010.P8557387258748363715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P8557387258748363715

/-! ## A390010.P4289511161231689392

`∩[A001694(n+1), A162648(n+1)]`
-/

namespace A390010.P4289511161231689392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P4289511161231689392

/-! ## A390010.P1163155546754045997

`∩[A001694(n+1), A400890(n+1)]`
-/

namespace A390010.P1163155546754045997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P1163155546754045997

/-! ## A390010.P4149259705929658411

`∩[A001694(n+1), A354591(n+1)]`
-/

namespace A390010.P4149259705929658411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P4149259705929658411

/-!
# A390011: E.g.f. A(x) satisfies A(x) = exp( x * (1-x) * A(x)^2 ).

The programs for A390011, there is no canonical definition to state claims against.
-/

/-! ## A390011.P12365234308299365839

`A127502(C(n, A244234(n)))`
-/

namespace A390011.P12365234308299365839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127502 (Nat.choose n (A244234 n).toNat)

end

end A390011.P12365234308299365839

/-! ## A390011.P15462836370624521921

`A127502(A062939(n+1)+floor(1/(n+1)))`
-/

namespace A390011.P15462836370624521921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127502 (A062939 (n + 1) + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A390011.P15462836370624521921

/-!
# A390013: E.g.f. A(x) satisfies A(x) = exp( x * (1-x^2) * A(x) ).

The programs for A390013, there is no canonical definition to state claims against.
-/

/-! ## A390013.P7615740608764911321

`A263270(∏[∑[A007318(2*n)]])`
-/

namespace A390013.P7615740608764911321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A390013.P7615740608764911321

/-! ## A390013.P8362382945727386294

`A268234(A268215(n))-∏{e}[n+1, #%2]`
-/

namespace A390013.P8362382945727386294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268234 (A268215 n).toNat - ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p % 2 : ℕ) : ℤ)

end

end A390013.P8362382945727386294

/-!
# A390014: E.g.f. A(x) satisfies A(x) = exp( x * (1-x^3) * A(x) ).

The programs for A390014, there is no canonical definition to state claims against.
-/

/-! ## A390014.P13752162766135773287

`A390215(n)%A390203(n+5)`
-/

namespace A390014.P13752162766135773287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390215 n) (A390203 (n + 5))

end

end A390014.P13752162766135773287

/-! ## A390014.P12651499199268031177

`A390215(n)+A000035(A020988(n))`
-/

namespace A390014.P12651499199268031177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390215 n + A000035 (A020988 n).toNat

end

end A390014.P12651499199268031177

/-! ## A390014.P10848584260354720845

`A390215(n)+A010057(A014448(n))`
-/

namespace A390014.P10848584260354720845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390215 n + A010057 (A014448 n).toNat

end

end A390014.P10848584260354720845

/-!
# A390015: E.g.f. A(x) satisfies A(x) = exp( x * (1-x^3)^2 * A(x) ).

The programs for A390015, there is no canonical definition to state claims against.
-/

/-! ## A390015.P12987704561638055151

`A390216(A159083(n)+n)`
-/

namespace A390015.P12987704561638055151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390216 (A159083 n + (n : ℤ)).toNat

end

end A390015.P12987704561638055151

/-! ## A390015.P11768349972565090200

`A390216(n)+A000035((n+1)^4*n*(n+2)/12)`
-/

namespace A390015.P11768349972565090200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390216 n + A000035 (SequenceMachineLib.roundAway (((n + 1) ^ 4 * n * (n + 2) : ℚ) / 12)).toNat

end

end A390015.P11768349972565090200

/-! ## A390015.P2826735362967233623

`A390216(n)+A185284(A208354(n))`
-/

namespace A390015.P2826735362967233623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390216 n + A185284 (A208354 n).toNat

end

end A390015.P2826735362967233623

/-!
# A390019: Smallest prime number != n obtained by removing or adding a single digit anywhere in n, or 0 if no such prime exists.

The programs for A390019, there is no canonical definition to state claims against.
-/

/-! ## A390019.P16460244369535373199

`A381606(n)%A144396(A381598(n+1))`
-/

namespace A390019.P16460244369535373199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381606 n) (A144396 (A381598 (n + 1)).toNat)

end

end A390019.P16460244369535373199

/-! ## A390019.P6999154558098348630

`A385512(n)%Δ[A158242(n+1)]`
-/

namespace A390019.P6999154558098348630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158242 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385512 n) (f1 (n + 1) - f1 n)

end

end A390019.P6999154558098348630

/-! ## A390019.P13801770455384790920

`A385512(n)%A363161(A001411(n))`
-/

namespace A390019.P13801770455384790920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385512 n) (A363161 (A001411 n).toNat)

end

end A390019.P13801770455384790920

/-! ## A390019.P13771092806823414821

`A381606(n)%A381606(A001411(n))`
-/

namespace A390019.P13771092806823414821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381606 n) (A381606 (A001411 n).toNat)

end

end A390019.P13771092806823414821

/-!
# A390020: a(n) = Sum_{k=0..floor(2*n/5)} binomial(k+1,2*n-5*k).

The programs for A390020, the canonical program `A390020.P9732150399475638817` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390020 has offset 0).

The definition of A390020 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(2*n/5), C(#+1, 2*n-5*#)]` (program `A390020.P9732150399475638817`, by `A390020.P9732150399475638817.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390020.P7148310767344535932

`ogf(1/(1-2x^3-x^5+x^6))`
-/

namespace A390020.P7148310767344535932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 0, -2, 0, -1, 1] n

end

end A390020.P7148310767344535932

namespace A390020

/-- `ogf(1/(1-2x^3-x^5+x^6))` -/
def P7148310767344535932.Spec : Prop :=
  ∀ n, P7148310767344535932.a n = A390020 n

end A390020

/-! ## A390020.P10148638981166851222

`2*a(n-3)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=1`
-/

namespace A390020.P10148638981166851222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2, 0, 1] fun n a =>
  2 * a (n - 3) + a (n - 5) - a (n - 6)

end

end A390020.P10148638981166851222

namespace A390020

/-- `2*a(n-3)+a(n-5)-a(n-6)` -/
def P10148638981166851222.Spec : Prop :=
  ∀ n, P10148638981166851222.a n = A390020 n

end A390020

/-! ## A390020.P9732150399475638817

`∑{#}[floor(2*n/5), C(#+1, 2*n-5*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390020

/-- `∑{#}[floor(2*n/5), C(#+1, 2*n-5*#)]` -/
def P9732150399475638817.Spec : Prop :=
  ∀ n, (P9732150399475638817.a n : ℤ) = A390020 n

theorem P9732150399475638817.correct : P9732150399475638817.Spec := by
  intro n
  simp only [A390020]

end A390020

/-! ## A390020.P15266217348697691539

`A017837(2*n+5)`
-/

namespace A390020.P15266217348697691539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (2 * n + 5)

end

end A390020.P15266217348697691539

namespace A390020

/-- `A017837(2*n+5)` -/
def P15266217348697691539.Spec : Prop :=
  ∀ n, P15266217348697691539.a n = A390020 n

end A390020

/-! ## A390020.P18268782039190819691

`Δ[A103373(2*n+5)]`
-/

namespace A390020.P18268782039190819691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103373 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A390020.P18268782039190819691

namespace A390020

/-- `Δ[A103373(2*n+5)]` -/
def P18268782039190819691.Spec : Prop :=
  ∀ n, P18268782039190819691.a n = A390020 n

end A390020

/-!
# A390024: Values of u in the quartets (4, u, v, w) of type 3; i.e., values of u for solutions to 4*(4 - u) = v*(v - w), in distinct positive integers, with v > 1, sorted by nondecreasing values of u; see Comments.

The programs for A390024, there is no canonical definition to state claims against.
-/

/-! ## A390024.P1186721027869007452

`A070939(A383925(n+1))%A003631(n+1)`
-/

namespace A390024.P1186721027869007452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A383925 (n + 1)).toNat) (A003631 (n + 1))

end

end A390024.P1186721027869007452

/-! ## A390024.P5412415825885807972

`∑[A036578(A220800(3*n+1)%A013603(n+2))²]`
-/

namespace A390024.P5412415825885807972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036578 (Int.tmod (A220800 (3 * n + 1)) (A013603 (n + 2))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390024.P5412415825885807972

/-!
# A390027: Record denominators of (p1-1)/(p2-1), where p1 < p2 are consecutive primes.

The programs for A390027, there is no canonical definition to state claims against.
-/

/-! ## A390027.P12813229807401178015

`A097366(A095070(n+2))`
-/

namespace A390027.P12813229807401178015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097366 (A095070 (n + 2)).toNat

end

end A390027.P12813229807401178015

/-! ## A390027.P799684820096890280

`A097366(A350577(n+2))`
-/

namespace A390027.P799684820096890280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097366 (A350577 (n + 2)).toNat

end

end A390027.P799684820096890280

/-! ## A390027.P11139291848578938290

`eq[A188967(A027623(n)), A321743(2*n+1)]`
-/

namespace A390027.P11139291848578938290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (A027623 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321743 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390027.P11139291848578938290

/-! ## A390027.P8098661348706801231

`lt[A391925(A027642(n)), A049084(2*n+1)]`
-/

namespace A390027.P8098661348706801231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391925 (A027642 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390027.P8098661348706801231

/-! ## A390027.P17086047577112521668

`lt[A346480(2*n+1), A010059(A171609(n+5))]`
-/

namespace A390027.P17086047577112521668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346480 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A171609 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390027.P17086047577112521668

/-!
# A390028: Record denominators of (p2-1)/(p1-1), where p1 < p2 are consecutive primes.

The programs for A390028, there is no canonical definition to state claims against.
-/

/-! ## A390028.P14832350107409135268

`record[A006093(n+1)/A058263(n+1)]`
-/

namespace A390028.P14832350107409135268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A058263 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390028.P14832350107409135268

/-! ## A390028.P17935050967432727601

`A007150(A162566(n+2))`
-/

namespace A390028.P17935050967432727601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007150 (A162566 (n + 2)).toNat

end

end A390028.P17935050967432727601

/-! ## A390028.P7311947566359412502

`A005097(A320456(n+1)%A273197(2*(n+1)))`
-/

namespace A390028.P7311947566359412502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (Int.tmod (A320456 (n + 1)) (A273197 (2 * (n + 1)))).toNat

end

end A390028.P7311947566359412502

/-! ## A390028.P14239500276468571877

`A005097(A320456(n+1))%A240311(3*n+4)`
-/

namespace A390028.P14239500276468571877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005097 (A320456 (n + 1)).toNat) (A240311 (3 * n + 4))

end

end A390028.P14239500276468571877

/-! ## A390028.P14609591656593275465

`eq[A000081(A325184(n+1)), A332294(2*n+1)]`
-/

namespace A390028.P14609591656593275465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A325184 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332294 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390028.P14609591656593275465

/-!
# A390029: Triangle read by rows: T(n,k) = Sum_{j=0..2k} (-1)^j * binomial(2k,j) * (2+k-j)^(2n).

The programs for A390029, there is no canonical definition to state claims against.
-/

/-! ## A390029.P1207364096751000645

`A392337(n)/A394692(n)*A395456(n)`
-/

namespace A390029.P1207364096751000645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392337 n : ℚ) / (A394692 n : ℚ) * (A395456 n : ℚ)

end

end A390029.P1207364096751000645

/-!
# A390031: Number of ordered factorizations of 2*n into factors > 1.

The programs for A390031, there is no canonical definition to state claims against.
-/

/-! ## A390031.P2450251146815109873

`A074206(2*n)`
-/

namespace A390031.P2450251146815109873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (2 * n)

end

end A390031.P2450251146815109873

/-! ## A390031.P6157347412057938359

`∑{d}[2*n, A174725(#)]`
-/

namespace A390031.P6157347412057938359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174725 d

end

end A390031.P6157347412057938359

/-! ## A390031.P14355124809175225240

`∑{d}[2*n, A174726(#)]`
-/

namespace A390031.P14355124809175225240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174726 d

end

end A390031.P14355124809175225240

/-! ## A390031.P18163947293831302245

`A002033(comp[2*(n+1)])%((2*n)²-1)`
-/

namespace A390031.P18163947293831302245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002033 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (((2 * n) ^ 2 : ℤ) - 1)

end

end A390031.P18163947293831302245

/-! ## A390031.P363191836838605579

`and(-1, A074206(A005843(n)))`
-/

namespace A390031.P363191836838605579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A074206 (A005843 n).toNat)

end

end A390031.P363191836838605579

/-! ## A390031.P13942140136009960715

`A104725(2*n)-A160086(2*n)`
-/

namespace A390031.P13942140136009960715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (2 * n) - A160086 (2 * n)

end

end A390031.P13942140136009960715

/-!
# A390032: Number of perfect overpartitions of 2*n-1: A390030(2*n-1).

The programs for A390032, there is no canonical definition to state claims against.
-/

/-! ## A390032.P4088360320752579813

`A390030(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390032.P4088360320752579813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390030 (2 * (n + 1) - 1)

end

end A390032.P4088360320752579813

/-!
# A390034: a(n) = Sum_{k=0..floor(3*n/5)} binomial(k+2,3*n-5*k).

The programs for A390034, the canonical program `A390034.P3547805883940954518` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390034 has offset 0).

The definition of A390034 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(3*n/5), C(#+2, 3*n-5*#)]` (program `A390034.P3547805883940954518`, by `A390034.P3547805883940954518.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390034.P6688809642482560736

`ogf(1/(1-3x^2+3x^4-x^5-x^6))`
-/

namespace A390034.P6688809642482560736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -3, 0, 3, -1, -1] n

end

end A390034.P6688809642482560736

namespace A390034

/-- `ogf(1/(1-3x^2+3x^4-x^5-x^6))` -/
def P6688809642482560736.Spec : Prop :=
  ∀ n, P6688809642482560736.a n = A390034 n

end A390034

/-! ## A390034.P16555873954648070697

`3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0, a(4)=6, a(5)=1`
-/

namespace A390034.P16555873954648070697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 0, 6, 1] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 5) + a (n - 6)

end

end A390034.P16555873954648070697

namespace A390034

/-- `3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` -/
def P16555873954648070697.Spec : Prop :=
  ∀ n, P16555873954648070697.a n = A390034 n

end A390034

/-! ## A390034.P3547805883940954518

`∑{#}[floor(3*n/5), C(#+2, 3*n-5*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390034

/-- `∑{#}[floor(3*n/5), C(#+2, 3*n-5*#)]` -/
def P3547805883940954518.Spec : Prop :=
  ∀ n, (P3547805883940954518.a n : ℤ) = A390034 n

theorem P3547805883940954518.correct : P3547805883940954518.Spec := by
  intro n
  simp only [A390034]

end A390034

/-! ## A390034.P2844637613409078692

`A017837(3*n+10)`
-/

namespace A390034.P2844637613409078692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (3 * n + 10)

end

end A390034.P2844637613409078692

namespace A390034

/-- `A017837(3*n+10)` -/
def P2844637613409078692.Spec : Prop :=
  ∀ n, P2844637613409078692.a n = A390034 n

end A390034

/-! ## A390034.P18382396102332813470

`A127840(A112414(n+3)+1)`
-/

namespace A390034.P18382396102332813470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127840 (A112414 (n + 3) + 1).toNat

end

end A390034.P18382396102332813470

namespace A390034

/-- `A127840(A112414(n+3)+1)` -/
def P18382396102332813470.Spec : Prop :=
  ∀ n, P18382396102332813470.a n = A390034 n

end A390034

/-!
# A390035: a(n) = Sum_{k=0..floor(n/2)} binomial(k+2,3*n-6*k+2).

The programs for A390035, the canonical program `A390035.P5506800623140963768` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390035 has offset 0).

The definition of A390035 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(#+2, 3*n-6*#+2)]` (program `A390035.P5506800623140963768`, by `A390035.P5506800623140963768.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390035.P17990825177792051769

`ogf(1/(1-3x^2+3x^4-x^6-x^7))`
-/

namespace A390035.P17990825177792051769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -3, 0, 3, 0, -1, -1] n

end

end A390035.P17990825177792051769

namespace A390035

/-- `ogf(1/(1-3x^2+3x^4-x^6-x^7))` -/
def P17990825177792051769.Spec : Prop :=
  ∀ n, P17990825177792051769.a n = A390035 n

end A390035

/-! ## A390035.P18431912424920761164

`3*a(n-2)-3*a(n-4)+a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0, a(4)=6, a(5)=0, a(6)=10`
-/

namespace A390035.P18431912424920761164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 0, 6, 0, 10] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6) + a (n - 7)

end

end A390035.P18431912424920761164

namespace A390035

/-- `3*a(n-2)-3*a(n-4)+a(n-6)+a(n-7)` -/
def P18431912424920761164.Spec : Prop :=
  ∀ n, P18431912424920761164.a n = A390035 n

end A390035

/-! ## A390035.P5506800623140963768

`∑{#}[floor(n/2), C(#+2, 3*n-6*#+2)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390035

/-- `∑{#}[floor(n/2), C(#+2, 3*n-6*#+2)]` -/
def P5506800623140963768.Spec : Prop :=
  ∀ n, (P5506800623140963768.a n : ℤ) = A390035 n

theorem P5506800623140963768.correct : P5506800623140963768.Spec := by
  intro n
  simp only [A390035]

end A390035

/-! ## A390035.P9034688824444508450

`A017847(A020725(3*(n+1))+10)`
-/

namespace A390035.P9034688824444508450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (A020725 (3 * (n + 1)) + 10).toNat

end

end A390035.P9034688824444508450

namespace A390035

/-- `A017847(A020725(3*(n+1))+10)` -/
def P9034688824444508450.Spec : Prop :=
  ∀ n, P9034688824444508450.a n = A390035 n

end A390035

/-!
# A390036: a(n) = Sum_{k=0..floor(3*n/8)} binomial(k+2,3*n-8*k).

The programs for A390036, the canonical program `A390036.P9105126244843171354` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390036 has offset 0).

The definition of A390036 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(3*n/8), C(#+2, 3*n-8*#)]` (program `A390036.P9105126244843171354`, by `A390036.P9105126244843171354.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390036.P14696965296851717577

`ogf(1/(1-3x^3+3x^6-x^8-x^9))`
-/

namespace A390036.P14696965296851717577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 0, -3, 0, 0, 3, 0, -1, -1] n

end

end A390036.P14696965296851717577

namespace A390036

/-- `ogf(1/(1-3x^3+3x^6-x^8-x^9))` -/
def P14696965296851717577.Spec : Prop :=
  ∀ n, P14696965296851717577.a n = A390036 n

end A390036

/-! ## A390036.P14973686041925270598

`3*a(n-3)-3*a(n-6)+a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=3, a(4)=0, a(5)=0, a(6)=6, a(7)=0, a(8)=1`
-/

namespace A390036.P14973686041925270598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 3, 0, 0, 6, 0, 1] fun n a =>
  3 * a (n - 3) - 3 * a (n - 6) + a (n - 8) + a (n - 9)

end

end A390036.P14973686041925270598

namespace A390036

/-- `3*a(n-3)-3*a(n-6)+a(n-8)+a(n-9)` -/
def P14973686041925270598.Spec : Prop :=
  ∀ n, P14973686041925270598.a n = A390036 n

end A390036

/-! ## A390036.P9105126244843171354

`∑{#}[floor(3*n/8), C(#+2, 3*n-8*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390036

/-- `∑{#}[floor(3*n/8), C(#+2, 3*n-8*#)]` -/
def P9105126244843171354.Spec : Prop :=
  ∀ n, (P9105126244843171354.a n : ℤ) = A390036 n

theorem P9105126244843171354.correct : P9105126244843171354.Spec := by
  intro n
  simp only [A390036]

end A390036

/-!
# A390037: a(n) = Sum_{k=0..floor(n/3)} binomial(k+2,3*n-9*k+2).

The programs for A390037, the canonical program `A390037.P14468705619696861264` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390037 has offset 0).

The definition of A390037 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(#+2, 3*n-9*#+2)]` (program `A390037.P14468705619696861264`, by `A390037.P14468705619696861264.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390037.P9930816705131519737

`ogf(1/(1-3x^3+3x^6-x^9-x^10))`
-/

namespace A390037.P9930816705131519737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 0, -3, 0, 0, 3, 0, 0, -1, -1] n

end

end A390037.P9930816705131519737

namespace A390037

/-- `ogf(1/(1-3x^3+3x^6-x^9-x^10))` -/
def P9930816705131519737.Spec : Prop :=
  ∀ n, P9930816705131519737.a n = A390037 n

end A390037

/-! ## A390037.P11491891403978991124

`3*a(n-3)-3*a(n-6)+a(n-9)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=3, a(4)=0, a(5)=0, a(6)=6, a(7)=0, a(8)=0, a(9)=10`
-/

namespace A390037.P11491891403978991124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 3, 0, 0, 6, 0, 0, 10] fun n a =>
  3 * a (n - 3) - 3 * a (n - 6) + a (n - 9) + a (n - 10)

end

end A390037.P11491891403978991124

namespace A390037

/-- `3*a(n-3)-3*a(n-6)+a(n-9)+a(n-10)` -/
def P11491891403978991124.Spec : Prop :=
  ∀ n, P11491891403978991124.a n = A390037 n

end A390037

/-! ## A390037.P14468705619696861264

`∑{#}[floor(n/3), C(#+2, 3*n-9*#+2)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390037

/-- `∑{#}[floor(n/3), C(#+2, 3*n-9*#+2)]` -/
def P14468705619696861264.Spec : Prop :=
  ∀ n, (P14468705619696861264.a n : ℤ) = A390037 n

theorem P14468705619696861264.correct : P14468705619696861264.Spec := by
  intro n
  simp only [A390037]

end A390037

/-!
# A390039: a(n) = Sum_{k=0..floor(4*n/7)} binomial(k+3,4*n-7*k).

The programs for A390039, the canonical program `A390039.P2093940549671667249` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390039 has offset 0).

The definition of A390039 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(4*n/7), C(#+3, 4*n-7*#)]` (program `A390039.P2093940549671667249`, by `A390039.P2093940549671667249.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390039.P1143626352075388578

`ogf(1/(1-4x^2+6x^4-4x^6-x^7+x^8))`
-/

namespace A390039.P1143626352075388578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -4, 0, 6, 0, -4, -1, 1] n

end

end A390039.P1143626352075388578

namespace A390039

/-- `ogf(1/(1-4x^2+6x^4-4x^6-x^7+x^8))` -/
def P1143626352075388578.Spec : Prop :=
  ∀ n, P1143626352075388578.a n = A390039 n

end A390039

/-! ## A390039.P16459634318629443713

`4*a(n-2)-6*a(n-4)+4*a(n-6)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=0, a(4)=10, a(5)=0, a(6)=20, a(7)=1`
-/

namespace A390039.P16459634318629443713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4, 0, 10, 0, 20, 1] fun n a =>
  4 * a (n - 2) - 6 * a (n - 4) + 4 * a (n - 6) + a (n - 7) - a (n - 8)

end

end A390039.P16459634318629443713

namespace A390039

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)+a(n-7)-a(n-8)` -/
def P16459634318629443713.Spec : Prop :=
  ∀ n, P16459634318629443713.a n = A390039 n

end A390039

/-! ## A390039.P2093940549671667249

`∑{#}[floor(4*n/7), C(#+3, 4*n-7*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390039

/-- `∑{#}[floor(4*n/7), C(#+3, 4*n-7*#)]` -/
def P2093940549671667249.Spec : Prop :=
  ∀ n, (P2093940549671667249.a n : ℤ) = A390039 n

theorem P2093940549671667249.correct : P2093940549671667249.Spec := by
  intro n
  simp only [A390039]

end A390039

/-! ## A390039.P18001147548437484099

`A390662(2*n+7)`
-/

namespace A390039.P18001147548437484099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390662 (2 * n + 7)

end

end A390039.P18001147548437484099

namespace A390039

/-- `A390662(2*n+7)` -/
def P18001147548437484099.Spec : Prop :=
  ∀ n, P18001147548437484099.a n = A390039 n

end A390039

/-! ## A390039.P5865214035433098403

`A017857(A016825(n+4)+3)`
-/

namespace A390039.P5865214035433098403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017857 (A016825 (n + 4) + 3).toNat

end

end A390039.P5865214035433098403

namespace A390039

/-- `A017857(A016825(n+4)+3)` -/
def P5865214035433098403.Spec : Prop :=
  ∀ n, P5865214035433098403.a n = A390039 n

end A390039

/-!
# A390040: a(n) = Sum_{k=0..floor(n/2)} binomial(k+3,4*n-8*k+3).

The programs for A390040, the canonical program `A390040.P8054848518335817706` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390040 has offset 0).

The definition of A390040 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), C(#+3, 4*n-8*#+3)]` (program `A390040.P8054848518335817706`, by `A390040.P8054848518335817706.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390040.P2322714214166755681

`ogf(1/(1-4x^2+6x^4-4x^6+x^8-x^9))`
-/

namespace A390040.P2322714214166755681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -4, 0, 6, 0, -4, 0, 1, -1] n

end

end A390040.P2322714214166755681

namespace A390040

/-- `ogf(1/(1-4x^2+6x^4-4x^6+x^8-x^9))` -/
def P2322714214166755681.Spec : Prop :=
  ∀ n, P2322714214166755681.a n = A390040 n

end A390040

/-! ## A390040.P15272839423703191929

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=0, a(4)=10, a(5)=0, a(6)=20, a(7)=0, a(8)=35`
-/

namespace A390040.P15272839423703191929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4, 0, 10, 0, 20, 0, 35] fun n a =>
  4 * a (n - 2) - 6 * a (n - 4) + 4 * a (n - 6) - a (n - 8) + a (n - 9)

end

end A390040.P15272839423703191929

namespace A390040

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)+a(n-9)` -/
def P15272839423703191929.Spec : Prop :=
  ∀ n, P15272839423703191929.a n = A390040 n

end A390040

/-! ## A390040.P8054848518335817706

`∑{#}[floor(n/2), C(#+3, 4*n-8*#+3)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390040

/-- `∑{#}[floor(n/2), C(#+3, 4*n-8*#+3)]` -/
def P8054848518335817706.Spec : Prop :=
  ∀ n, (P8054848518335817706.a n : ℤ) = A390040 n

theorem P8054848518335817706.correct : P8054848518335817706.Spec := by
  intro n
  simp only [A390040]

end A390040

/-! ## A390040.P3330318996109115794

`A392491(2*n+9)`
-/

namespace A390040.P3330318996109115794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392491 (2 * n + 9)

end

end A390040.P3330318996109115794

namespace A390040

/-- `A392491(2*n+9)` -/
def P3330318996109115794.Spec : Prop :=
  ∀ n, P3330318996109115794.a n = A390040 n

end A390040

/-! ## A390040.P17973502642433574977

`A000292(A008722(n)%A080536(2*n))`
-/

namespace A390040.P17973502642433574977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (Int.tmod (A008722 n) (A080536 (2 * n))).toNat

end

end A390040.P17973502642433574977

namespace A390040

/-- `A000292(A008722(n)%A080536(2*n))` -/
def P17973502642433574977.Spec : Prop :=
  ∀ n, P17973502642433574977.a n = A390040 n

end A390040

/-!
# A390041: a(n) = Sum_{k=0..floor(4*n/11)} binomial(k+3,4*n-11*k).

The programs for A390041, the canonical program `A390041.P12362296697457987028` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390041 has offset 0).

The definition of A390041 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(4*n/11), C(#+3, 4*n-11*#)]` (program `A390041.P12362296697457987028`, by `A390041.P12362296697457987028.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390041.P5915385246568453480

`ogf(1/(1-4x^3+6x^6-4x^9-x^11+x^12))`
-/

namespace A390041.P5915385246568453480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 0, -4, 0, 0, 6, 0, 0, -4, 0, -1, 1] n

end

end A390041.P5915385246568453480

namespace A390041

/-- `ogf(1/(1-4x^3+6x^6-4x^9-x^11+x^12))` -/
def P5915385246568453480.Spec : Prop :=
  ∀ n, P5915385246568453480.a n = A390041 n

end A390041

/-! ## A390041.P12362296697457987028

`∑{#}[floor(4*n/11), C(#+3, 4*n-11*#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390041

/-- `∑{#}[floor(4*n/11), C(#+3, 4*n-11*#)]` -/
def P12362296697457987028.Spec : Prop :=
  ∀ n, (P12362296697457987028.a n : ℤ) = A390041 n

theorem P12362296697457987028.correct : P12362296697457987028.Spec := by
  intro n
  simp only [A390041]

end A390041

/-!
# A390042: a(n) = Sum_{k=0..floor(n/3)} binomial(k+3,4*n-12*k+3).

The programs for A390042, the canonical program `A390042.P8223797743938287271` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390042 has offset 0).

The definition of A390042 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/3), C(#+3, 4*n-12*#+3)]` (program `A390042.P8223797743938287271`, by `A390042.P8223797743938287271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390042.P9732972071511224988

`ogf(1/(1-4x^3+6x^6-4x^9+x^12-x^13))`
-/

namespace A390042.P9732972071511224988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 0, -4, 0, 0, 6, 0, 0, -4, 0, 0, 1, -1] n

end

end A390042.P9732972071511224988

namespace A390042

/-- `ogf(1/(1-4x^3+6x^6-4x^9+x^12-x^13))` -/
def P9732972071511224988.Spec : Prop :=
  ∀ n, P9732972071511224988.a n = A390042 n

end A390042

/-! ## A390042.P8223797743938287271

`∑{#}[floor(n/3), C(#+3, 4*n-12*#+3)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390042

/-- `∑{#}[floor(n/3), C(#+3, 4*n-12*#+3)]` -/
def P8223797743938287271.Spec : Prop :=
  ∀ n, (P8223797743938287271.a n : ℤ) = A390042 n

theorem P8223797743938287271.correct : P8223797743938287271.Spec := by
  intro n
  simp only [A390042]

end A390042

/-! ## A390042.P16705409826043716314

`and(A000069(A003945(n)), A390041(n))`
-/

namespace A390042.P16705409826043716314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000069 (A003945 n).toNat) (A390041 n)

end

end A390042.P16705409826043716314

namespace A390042

/-- `and(A000069(A003945(n)), A390041(n))` -/
def P16705409826043716314.Spec : Prop :=
  ∀ n, P16705409826043716314.a n = A390042 n

end A390042

/-!
# A390044: Expansion of 1 / ((1-x)^4 - x^5).

The programs for A390044, the canonical program `A390044.P2107968494793019417` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390044 has offset 0).

The definition of A390044 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3+x^4-x^5))` (program `A390044.P2107968494793019417`, by `A390044.P2107968494793019417.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390044.P2107968494793019417

`ogf(1/(1-4x+6x^2-4x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390044

/-- `ogf(1/(1-4x+6x^2-4x^3+x^4-x^5))` -/
def P2107968494793019417.Spec : Prop :=
  ∀ n, P2107968494793019417.a n = A390044 n

theorem P2107968494793019417.correct : P2107968494793019417.Spec := by
  intro n
  simp only [A390044]

end A390044

/-! ## A390044.P13072216597836875870

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=10, a(3)=20, a(4)=35`
-/

namespace A390044.P13072216597836875870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 10, 20, 35] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A390044.P13072216597836875870

namespace A390044

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)+a(n-5)` -/
def P13072216597836875870.Spec : Prop :=
  ∀ n, P13072216597836875870.a n = A390044 n

end A390044

/-! ## A390044.P11410760712498963026

`∑{#}[floor(n/5), C(n-#+3, n-5*#)]`
-/

namespace A390044.P11410760712498963026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 5⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((n : ℤ) - (k : ℤ) + 3).toNat ((n : ℤ) - (5 * k : ℤ)).toNat

end

end A390044.P11410760712498963026

namespace A390044

/-- `∑{#}[floor(n/5), C(n-#+3, n-5*#)]` -/
def P11410760712498963026.Spec : Prop :=
  ∀ n, (P11410760712498963026.a n : ℤ) = A390044 n

end A390044

/-! ## A390044.P267048697751044139

`∑[A385142(n+4)]`
-/

namespace A390044.P267048697751044139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385142 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390044.P267048697751044139

namespace A390044

/-- `∑[A385142(n+4)]` -/
def P267048697751044139.Spec : Prop :=
  ∀ n, P267048697751044139.a n = A390044 n

end A390044

/-! ## A390044.P17352738835655860958

`A392489(2*n+5)`
-/

namespace A390044.P17352738835655860958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392489 (2 * n + 5)

end

end A390044.P17352738835655860958

namespace A390044

/-- `A392489(2*n+5)` -/
def P17352738835655860958.Spec : Prop :=
  ∀ n, P17352738835655860958.a n = A390044 n

end A390044

/-! ## A390044.P11766221161787035834

`∑[∑[A392489(2*n)]]`
-/

namespace A390044.P11766221161787035834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392489 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390044.P11766221161787035834

namespace A390044

/-- `∑[∑[A392489(2*n)]]` -/
def P11766221161787035834.Spec : Prop :=
  ∀ n, P11766221161787035834.a n = A390044 n

end A390044

/-! ## A390044.P7821249471967229545

`Δ[A005676(n+4)]`
-/

namespace A390044.P7821249471967229545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005676 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A390044.P7821249471967229545

namespace A390044

/-- `Δ[A005676(n+4)]` -/
def P7821249471967229545.Spec : Prop :=
  ∀ n, P7821249471967229545.a n = A390044 n

end A390044

/-!
# A390045: Expansion of 1 / ((1-x)^5 - x^6).

The programs for A390045, the canonical program `A390045.P4577038485087996516` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390045 has offset 0).

The definition of A390045 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x+10x^2-10x^3+5x^4-x^5-x^6))` (program `A390045.P4577038485087996516`, by `A390045.P4577038485087996516.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390045.P4577038485087996516

`ogf(1/(1-5x+10x^2-10x^3+5x^4-x^5-x^6))`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390045

/-- `ogf(1/(1-5x+10x^2-10x^3+5x^4-x^5-x^6))` -/
def P4577038485087996516.Spec : Prop :=
  ∀ n, P4577038485087996516.a n = A390045 n

theorem P4577038485087996516.correct : P4577038485087996516.Spec := by
  intro n
  simp only [A390045]

end A390045

/-! ## A390045.P16700632469038362974

`∑{#}[floor(n/6), C(n-#+4, n-6*#)]`
-/

namespace A390045.P16700632469038362974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 6⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose ((n : ℤ) - (k : ℤ) + 4).toNat ((n : ℤ) - (6 * k : ℤ)).toNat

end

end A390045.P16700632469038362974

namespace A390045

/-- `∑{#}[floor(n/6), C(n-#+4, n-6*#)]` -/
def P16700632469038362974.Spec : Prop :=
  ∀ n, (P16700632469038362974.a n : ℤ) = A390045 n

end A390045

/-! ## A390045.P8632612084841814715

`Δ[A099132(n+5)]`
-/

namespace A390045.P8632612084841814715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099132 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A390045.P8632612084841814715

namespace A390045

/-- `Δ[A099132(n+5)]` -/
def P8632612084841814715.Spec : Prop :=
  ∀ n, P8632612084841814715.a n = A390045 n

end A390045

/-! ## A390045.P17542555783496902854

`Δ[record[A017837(A357778(n+1))]]`
-/

namespace A390045.P17542555783496902854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (A357778 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A390045.P17542555783496902854

namespace A390045

/-- `Δ[record[A017837(A357778(n+1))]]` -/
def P17542555783496902854.Spec : Prop :=
  ∀ n, P17542555783496902854.a n = A390045 n

end A390045

/-!
# A390046: Circular sorting numbers: a(n) = maximum number of swaps required to arrange n labeled points on a circle into clockwise order.

The programs for A390046, there is no canonical definition to state claims against.
-/

/-! ## A390046.P566984648453874171

`round(n-∑{e}[n+2, #/3])`
-/

namespace A390046.P566984648453874171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) - ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) / 3)

end

end A390046.P566984648453874171

/-! ## A390046.P16702072006718754779

`C(2, ∑{e}[(n+2)², #])+n-1`
-/

namespace A390046.P16702072006718754779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ) + ((n : ℤ) - 1)

end

end A390046.P16702072006718754779

/-! ## A390046.P348210341141542243

`floor(1/∑{e}[n+2, #]+n-1)`
-/

namespace A390046.P348210341141542243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) + ((n : ℤ) - 1 : ℚ)⌋

end

end A390046.P348210341141542243

/-! ## A390046.P16045274887558211046

`C(2, ∏{e}[(n+2)², #])+n-1`
-/

namespace A390046.P16045274887558211046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ) + ((n : ℤ) - 1)

end

end A390046.P16045274887558211046

/-! ## A390046.P5270969422268720857

`n+1-gcd(2, ∑{e}[n+2, #]!)`
-/

namespace A390046.P5270969422268720857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.gcd 2 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) : ℤ)

end

end A390046.P5270969422268720857

/-!
# A390047: Primes p that admit a quadratic orthomorphism f of Z_p such that f+c has cycle type (1,p-1) for all constants c.

The programs for A390047, there is no canonical definition to state claims against.
-/

/-! ## A390047.P5155711036466407203

`filter[A158913(n+3), A167501(#)]`
-/

namespace A390047.P5155711036466407203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158913 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167501 (f1 j).toNat = 1) n)

end

end A390047.P5155711036466407203

/-! ## A390047.P13386808613855997009

`A000040(lt[A216321(n+1), A038698(2*(n+1))])`
-/

namespace A390047.P13386808613855997009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A390047.P13386808613855997009

/-!
# A390048: Number of block-separated overpartitions of n.

The programs for A390048, there is no canonical definition to state claims against.
-/

/-! ## A390048.P3366093480958083001

`A088141(A303862(n))`
-/

namespace A390048.P3366093480958083001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A303862 n).toNat

end

end A390048.P3366093480958083001

/-! ## A390048.P1760070585830511423

`A103128(A057153(n+1))`
-/

namespace A390048.P1760070585830511423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A057153 (n + 1)).toNat

end

end A390048.P1760070585830511423

/-! ## A390048.P17212769944143659681

`A059777(2*n+3)%A153136(n+1)`
-/

namespace A390048.P17212769944143659681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059777 (2 * n + 3)) (A153136 (n + 1))

end

end A390048.P17212769944143659681

/-! ## A390048.P11835034862518776413

`A003056(A269144(n)+A011927(n))`
-/

namespace A390048.P11835034862518776413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A269144 n + A011927 n).toNat

end

end A390048.P11835034862518776413

/-! ## A390048.P14003967517810624710

`A343661(n+1)+A125005(A343661(n+1))`
-/

namespace A390048.P14003967517810624710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343661 (n + 1) + A125005 (A343661 (n + 1)).toNat

end

end A390048.P14003967517810624710

/-!
# A390049: Numbers k such that sigma(k) = psi(k) + phi(k) + omega(k).

The programs for A390049, there is no canonical definition to state claims against.
-/

/-! ## A390049.P4176256800989405957

`2*A181703(n+1)`
-/

namespace A390049.P4176256800989405957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181703 (n + 1)

end

end A390049.P4176256800989405957

/-! ## A390049.P1432267939139973072

`(A050415(n+1)+3)*A050415(n+1)`
-/

namespace A390049.P1432267939139973072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A050415 (n + 1) + 3) * A050415 (n + 1)

end

end A390049.P1432267939139973072

/-! ## A390049.P10386963454472055363

`A181703(A000027(n+1))+A181703(n+1)`
-/

namespace A390049.P10386963454472055363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181703 (A000027 (n + 1)).toNat + A181703 (n + 1)

end

end A390049.P10386963454472055363

/-! ## A390049.P15504783905036108684

`A181703(A046100(n+1))+A181703(n+1)`
-/

namespace A390049.P15504783905036108684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181703 (A046100 (n + 1)).toNat + A181703 (n + 1)

end

end A390049.P15504783905036108684

/-! ## A390049.P9071969485420092732

`A181703(A295300(n+1))+A181703(n+1)`
-/

namespace A390049.P9071969485420092732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181703 (A295300 (n + 1)).toNat + A181703 (n + 1)

end

end A390049.P9071969485420092732

/-!
# A390050: Numbers k such that 256 * 3^k - 1 is prime.

The programs for A390050, there is no canonical definition to state claims against.
-/

/-! ## A390050.P639770478655281807

`A168375(n+1)+A040015(A163869(n))`
-/

namespace A390050.P639770478655281807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168375 (n + 1) + A040015 (A163869 n).toNat

end

end A390050.P639770478655281807

/-! ## A390050.P17490684367051031402

`A168375(n+1)+A068073(A323687(n))`
-/

namespace A390050.P17490684367051031402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168375 (n + 1) + A068073 (A323687 n).toNat

end

end A390050.P17490684367051031402

/-!
# A390053: a(1) = 1. For n > 1, a(n) is the largest prime factor of A390052(n).

The programs for A390053, there is no canonical definition to state claims against.
-/

/-! ## A390053.P10474856269055476562

`A006530(A390052(n+1))`
-/

namespace A390053.P10474856269055476562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A390052 (n + 1)).toNat

end

end A390053.P10474856269055476562

/-! ## A390053.P11416208643828841316

`A006530(A004086(n+1)*A143545(n+1))`
-/

namespace A390053.P11416208643828841316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004086 (n + 1) * A143545 (n + 1)).toNat

end

end A390053.P11416208643828841316

/-! ## A390053.P12979634142508031441

`A006530(A061147(n+1))`
-/

namespace A390053.P12979634142508031441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061147 (n + 1)).toNat

end

end A390053.P12979634142508031441

/-! ## A390053.P11899938477505613762

`A006530(A062003(1+n))`
-/

namespace A390053.P11899938477505613762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A062003 (1 + n)).toNat

end

end A390053.P11899938477505613762

/-! ## A390053.P1985004962843096983

`A006530(A061378(n+1))`
-/

namespace A390053.P1985004962843096983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061378 (n + 1)).toNat

end

end A390053.P1985004962843096983

/-! ## A390053.P3290593748644082188

`A006530(A004086(n+1)*A023896(n+1))`
-/

namespace A390053.P3290593748644082188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004086 (n + 1) * A023896 (n + 1)).toNat

end

end A390053.P3290593748644082188

/-!
# A390057: E.g.f. A(x) satisfies A(x) = exp( x * (1+x)^3 * A(x)^2 ).

The programs for A390057, the canonical program `A390057.P12943745791515918244` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390057 has offset 0).

The definition of A390057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390057.P12943745791515918244

`n!*∑{#}[n, (2*#+1)^(#-1)*C(3*#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390057

/-- `n!*∑{#}[n, (2*#+1)^(#-1)*C(3*#, n-#)/#!]` -/
def P12943745791515918244.Spec : Prop :=
  ∀ n, P12943745791515918244.a n = (A390057 n : ℚ)

end A390057

/-!
# A390058: E.g.f. A(x) satisfies A(x) = exp( x * (1+x^2) * A(x)^2 ).

The programs for A390058, there is no canonical definition to state claims against.
-/

/-! ## A390058.P6274087103993219727

`A133940(2*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A390058.P6274087103993219727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A133940 (2 * a (n - 1)).toNat

end

end A390058.P6274087103993219727

/-!
# A390059: E.g.f. A(x) satisfies A(x) = exp( x * (1+x^3) * A(x)^2 ).

The programs for A390059, there is no canonical definition to state claims against.
-/

/-! ## A390059.P17908825328769850631

`A390302(C(∑[(n+1)²/∏{p}[n+1, #]], 63)+n)`
-/

namespace A390059.P17908825328769850631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390302 (Nat.choose (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 63 + n)

end

end A390059.P17908825328769850631

/-! ## A390059.P4894352748129612812

`A390302(n^A060455(n))`
-/

namespace A390059.P4894352748129612812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390302 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A060455 n : ℤ))).toNat

end

end A390059.P4894352748129612812

/-! ## A390059.P7588126071628606768

`A390302(n*A347162(n+5))`
-/

namespace A390059.P7588126071628606768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390302 ((n : ℤ) * A347162 (n + 5)).toNat

end

end A390059.P7588126071628606768

/-!
# A390060: E.g.f. A(x) satisfies A(x) = exp( x * (1+x^2)^2 * A(x)^2 ).

The programs for A390060, there is no canonical definition to state claims against.
-/

/-! ## A390060.P10858434627788162208

`∏{p}[A390303(n)², #]`
-/

namespace A390060.P10858434627788162208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390303 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A390060.P10858434627788162208

/-!
# A390062: E.g.f. A(x) satisfies A(x) = exp( x*A(x) / (1-x*A(x))^2 ) * (1-x*A(x)).

The programs for A390062, there is no canonical definition to state claims against.
-/

/-! ## A390062.P5747894021351251451

`∏{e}[(2*n)!, and(2, #)+n-1]`
-/

namespace A390062.P5747894021351251451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((Nat.land 2 (Nat.factorization (f1 n) p) : ℤ) + ((n : ℤ) - 1))

end

end A390062.P5747894021351251451

/-!
# A390063: E.g.f. A(x) satisfies A(x) = exp( x / (1+x)^2 * A(x)^2 ).

The programs for A390063, there is no canonical definition to state claims against.
-/

/-! ## A390063.P9941648616394543898

`A306665(A076607(n))`
-/

namespace A390063.P9941648616394543898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306665 (A076607 n).toNat

end

end A390063.P9941648616394543898

/-! ## A390063.P6392867119148420732

`or(1, A004526(A277463(n)))`
-/

namespace A390063.P6392867119148420732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004526 (A277463 n).toNat)

end

end A390063.P6392867119148420732

/-!
# A390064: E.g.f. A(x) satisfies A(x) = exp( x / (1+x) * A(x)^2 ).

The programs for A390064, there is no canonical definition to state claims against.
-/

/-! ## A390064.P6864135811636998138

`A032647(a(n-1))-3` with `a(0)=1, a(1)=1`
-/

namespace A390064.P6864135811636998138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A032647 (a (n - 1)).toNat - 3

end

end A390064.P6864135811636998138

/-!
# A390065: E.g.f. A(x) satisfies A(x) = exp( x / (1+x) * A(x)^3 ).

The programs for A390065, there is no canonical definition to state claims against.
-/

/-! ## A390065.P7104253281438778283

`A143972(A018017(n))`
-/

namespace A390065.P7104253281438778283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143972 (A018017 n).toNat

end

end A390065.P7104253281438778283

/-!
# A390078: Number of normal subgroups of the modular group of index 6n.

The programs for A390078, there is no canonical definition to state claims against.
-/

/-! ## A390078.P8796268827700236783

`A386848(n+3)+A008966(A004148(n))`
-/

namespace A390078.P8796268827700236783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386848 (n + 3) + A008966 (A004148 n).toNat

end

end A390078.P8796268827700236783

/-!
# A390082: The number of irreducible zero-sum subsets of {-n..n} that contain -n but not n.

The programs for A390082, there is no canonical definition to state claims against.
-/

/-! ## A390082.P2074663258238814862

`(A389803(n+1)-A389803(n)-1)/2`
-/

namespace A390082.P2074663258238814862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389803 (n + 1) - A389803 n - 1 : ℚ) / 2

end

end A390082.P2074663258238814862

/-! ## A390082.P18283069481579014130

`(A389802(2*(n+1)+1)-A389802(2*(n+1)-1)-1)/2`
-/

namespace A390082.P18283069481579014130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389802 (2 * (n + 1) + 1) - A389802 (2 * (n + 1) - 1) - 1 : ℚ) / 2

end

end A390082.P18283069481579014130

/-! ## A390082.P18342363461823301605

`A123108(A389803(n+1)-A389803(n))`
-/

namespace A390082.P18342363461823301605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A389803 (n + 1) - A389803 n).toNat

end

end A390082.P18342363461823301605

/-! ## A390082.P15074349653021855048

`A325545(n)-A040806(A262128(n))`
-/

namespace A390082.P15074349653021855048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325545 n - A040806 (A262128 n).toNat

end

end A390082.P15074349653021855048

/-! ## A390082.P3770463724371082444

`A325545(n)-A286281(A047974(n))`
-/

namespace A390082.P3770463724371082444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325545 n - A286281 (A047974 n).toNat

end

end A390082.P3770463724371082444

/-!
# A390083: The number of irreducible zero-sum subsets of T(n) = {-2*n+1, -2*n+3, ..., -3, -1, 1, 3, ..., 2*n-3, 2*n-1} that contain -2*n+1 but not 2*n-1.

The programs for A390083, there is no canonical definition to state claims against.
-/

/-! ## A390083.P4923543865360909893

`A135661(A005317(n))`
-/

namespace A390083.P4923543865360909893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A005317 n).toNat

end

end A390083.P4923543865360909893

/-! ## A390083.P15320905772328317530

`A024327(A148470(n))`
-/

namespace A390083.P15320905772328317530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (A148470 n).toNat

end

end A390083.P15320905772328317530

/-! ## A390083.P16485337106143005878

`A135661(A126566(n))`
-/

namespace A390083.P16485337106143005878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A126566 n).toNat

end

end A390083.P16485337106143005878

/-! ## A390083.P2661186147325591755

`A135665(A148832(n))`
-/

namespace A390083.P2661186147325591755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A148832 n).toNat

end

end A390083.P2661186147325591755

/-! ## A390083.P17219240200373022667

`A135663(A148943(n))`
-/

namespace A390083.P17219240200373022667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135663 (A148943 n).toNat

end

end A390083.P17219240200373022667

/-!
# A390084: Length of the longest irreducible balanced subsets of {-n..n}.

The programs for A390084, there is no canonical definition to state claims against.
-/

/-! ## A390084.P909940574396073925

`∑[char[A390086(n+1)]]`
-/

namespace A390084.P909940574396073925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390086 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390084.P909940574396073925

/-! ## A390084.P904156511996130226

`A127321(∑[A161580(n+1)])`
-/

namespace A390084.P904156511996130226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A390084.P904156511996130226

/-! ## A390084.P85349818509303977

`A052146(A325601(n+1)+1)`
-/

namespace A390084.P85349818509303977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052146 (A325601 (n + 1) + 1).toNat

end

end A390084.P85349818509303977

/-! ## A390084.P7976580549435647223

`∑[char[A353086(A024177(n+1))]]`
-/

namespace A390084.P7976580549435647223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353086 (A024177 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390084.P7976580549435647223

/-! ## A390084.P14345347243937555491

`A345380(A026906(n+1))`
-/

namespace A390084.P14345347243937555491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345380 (A026906 (n + 1)).toNat

end

end A390084.P14345347243937555491

/-!
# A390085: Half the length of the longest irreducible zero-sum subsets of {-2*n+1, -2*n+3, ..., -3, -1, 1, 3, ..., 2*n-3, 2*n-1}.

The programs for A390085, there is no canonical definition to state claims against.
-/

/-! ## A390085.P13573304785598846447

`row(A352486(n+1))-1`
-/

namespace A390085.P13573304785598846447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow (A352486 (n + 1)).toNat : ℤ) - 1

end

end A390085.P13573304785598846447

/-! ## A390085.P10132578681071481617

`row(row(∑[A368207(n+1)]))`
-/

namespace A390085.P10132578681071481617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368207 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (SequenceMachineLib.triRow (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A390085.P10132578681071481617

/-! ## A390085.P2066778336376460088

`floor(sqrt(A362930(n+1)-1))`
-/

namespace A390085.P2066778336376460088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A362930 (n + 1) - 1)

end

end A390085.P2066778336376460088

/-! ## A390085.P14321548649951543410

`floor(sqrt(log2(A300998(2*(n+1)))))`
-/

namespace A390085.P14321548649951543410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.logb 2 (A300998 (2 * (n + 1)) : ℝ))⌋

end

end A390085.P14321548649951543410

/-! ## A390085.P12226211855267880081

`floor(sqrt(∑[A084053(3*n+4)]))`
-/

namespace A390085.P12226211855267880081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084053 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A390085.P12226211855267880081

/-!
# A390086: a(n) is the smallest index k such that A390084(k) = n.

The programs for A390086, there is no canonical definition to state claims against.
-/

/-! ## A390086.P4157444280340500497

`A353086(A024177(n+1))`
-/

namespace A390086.P4157444280340500497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353086 (A024177 (n + 1)).toNat

end

end A390086.P4157444280340500497

/-! ## A390086.P871960096940317817

`A189574(A269132(n+1))`
-/

namespace A390086.P871960096940317817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189574 (A269132 (n + 1)).toNat

end

end A390086.P871960096940317817

/-! ## A390086.P15096433638588429727

`A025699(n)-A180711(n)`
-/

namespace A390086.P15096433638588429727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025699 n - A180711 n

end

end A390086.P15096433638588429727

/-! ## A390086.P1601472923151468915

`A087811(n+1)-A180711(n)`
-/

namespace A390086.P1601472923151468915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) - A180711 n

end

end A390086.P1601472923151468915

/-! ## A390086.P17653507688898978193

`A025693(n)-A364250(n+1)`
-/

namespace A390086.P17653507688898978193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025693 n - A364250 (n + 1)

end

end A390086.P17653507688898978193

/-!
# A390090: Irregular triangle read by rows where row n lists the first differences of the binary indices of n.

The programs for A390090, the canonical program `A390090.P8092828814088583868` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390090 has offset 3).

The definition of A390090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390090.P8092828814088583868

`A228351(comp[∑[A000120(n)]]+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A390090

/-- `A228351(comp[∑[A000120(n)]]+1)` -/
def P8092828814088583868.Spec : Prop :=
  ∀ n, P8092828814088583868.a n = A390090 (n + 3)

theorem P8092828814088583868.correct : P8092828814088583868.Spec := by
  intro n
  simp only [A390090, Nat.add_sub_cancel]

end A390090

/-! ## A390090.P719666834895775575

`A353329(A020229(n+1))`
-/

namespace A390090.P719666834895775575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353329 (A020229 (n + 1)).toNat

end

end A390090.P719666834895775575

namespace A390090

/-- `A353329(A020229(n+1))` -/
def P719666834895775575.Spec : Prop :=
  ∀ n, P719666834895775575.a n = A390090 (n + 3)

end A390090

/-! ## A390090.P3056038794093449070

`A235748(A138008(n+2))`
-/

namespace A390090.P3056038794093449070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235748 (A138008 (n + 2)).toNat

end

end A390090.P3056038794093449070

namespace A390090

/-- `A235748(A138008(n+2))` -/
def P3056038794093449070.Spec : Prop :=
  ∀ n, P3056038794093449070.a n = A390090 (n + 3)

end A390090

/-! ## A390090.P12432857147016831561

`A279387(A164896(n+1)+n)`
-/

namespace A390090.P12432857147016831561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279387 (A164896 (n + 1) + (n : ℤ)).toNat

end

end A390090.P12432857147016831561

namespace A390090

/-- `A279387(A164896(n+1)+n)` -/
def P12432857147016831561.Spec : Prop :=
  ∀ n, P12432857147016831561.a n = A390090 (n + 3)

end A390090

/-! ## A390090.P1727068502368216932

`A053797(∑[∑[A127652(n+1)]])`
-/

namespace A390090.P1727068502368216932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127652 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A390090.P1727068502368216932

namespace A390090

/-- `A053797(∑[∑[A127652(n+1)]])` -/
def P1727068502368216932.Spec : Prop :=
  ∀ n, P1727068502368216932.a n = A390090 (n + 3)

end A390090

/-!
# A390091: Numbers whose binary indices have distinct first differences.

The programs for A390091, there is no canonical definition to state claims against.
-/

/-! ## A390091.P10126961312809508666

`A337582(n+1)%A337560(n+5)`
-/

namespace A390091.P10126961312809508666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337582 (n + 1)) (A337560 (n + 5))

end

end A390091.P10126961312809508666

/-! ## A390091.P17818214660154016684

`and(A337582(n+1), A387410(n+1))`
-/

namespace A390091.P17818214660154016684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A337582 (n + 1)) (A387410 (n + 1))

end

end A390091.P17818214660154016684

/-! ## A390091.P4891359201353501525

`A337582(n+1)%A007944(A346517(n))`
-/

namespace A390091.P4891359201353501525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337582 (n + 1)) (A007944 (A346517 n).toNat)

end

end A390091.P4891359201353501525

/-! ## A390091.P8156402900321308407

`A337582(n+1)+A010054(A136191(n+1))`
-/

namespace A390091.P8156402900321308407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337582 (n + 1) + A010054 (A136191 (n + 1)).toNat

end

end A390091.P8156402900321308407

/-! ## A390091.P11917856931454901346

`and(A337582(n+1), A387415(n+1))`
-/

namespace A390091.P11917856931454901346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A337582 (n + 1)) (A387415 (n + 1))

end

end A390091.P11917856931454901346

/-!
# A390092: Number of integer partitions of n such that the least part plus the greatest part is odd.

The programs for A390092, there is no canonical definition to state claims against.
-/

/-! ## A390092.P1260182870550037160

`A325345(n+1)+A325344(n+1)`
-/

namespace A390092.P1260182870550037160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325345 (n + 1) + A325344 (n + 1)

end

end A390092.P1260182870550037160

/-! ## A390092.P12588282006977794159

`A000041(n+1)-(A325346(n+1)+A325338(n+1))`
-/

namespace A390092.P12588282006977794159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A325346 (n + 1) + A325338 (n + 1))

end

end A390092.P12588282006977794159

/-! ## A390092.P2306147450359498790

`A000041(n+1)-A391225(n+1)`
-/

namespace A390092.P2306147450359498790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A391225 (n + 1)

end

end A390092.P2306147450359498790

/-! ## A390092.P6020989149960260581

`∑[A187219(n+1)]-A391225(n+1)`
-/

namespace A390092.P6020989149960260581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A391225 (n + 1)

end

end A390092.P6020989149960260581

/-! ## A390092.P15599804363221608093

`A026804(n+1)+A026805(n+1)-A391225(n+1)`
-/

namespace A390092.P15599804363221608093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026804 (n + 1) + (A026805 (n + 1) - A391225 (n + 1))

end

end A390092.P15599804363221608093

/-!
# A390093: Numbers k > 1 such that the least prime index of k and the greatest prime index of k are both odd.

The programs for A390093, there is no canonical definition to state claims against.
-/

/-! ## A390093.P2007663628144528311

`∩[A244991(n+1), A391226(n+1)]`
-/

namespace A390093.P2007663628144528311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390093.P2007663628144528311

/-! ## A390093.P6009037671016019215

`∩[A244991(n+1), A340932(n+1)]`
-/

namespace A390093.P6009037671016019215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390093.P6009037671016019215

/-! ## A390093.P11559284919537819274

`∩[A340932(n+1), A391226(n+1)]`
-/

namespace A390093.P11559284919537819274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390093.P11559284919537819274

/-! ## A390093.P7216886988123406889

`filter[A340932(n+1), A244992(#)]`
-/

namespace A390093.P7216886988123406889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244992 (f1 j).toNat = 1) n)

end

end A390093.P7216886988123406889

/-! ## A390093.P8188111232976625946

`filter[A391226(n+1), A244992(#)]`
-/

namespace A390093.P8188111232976625946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244992 (f1 j).toNat = 1) n)

end

end A390093.P8188111232976625946

/-!
# A390095: Expansion of sqrt(Pi) in base phi where phi = (1+sqrt(5))/2.

The programs for A390095, there is no canonical definition to state claims against.
-/

/-! ## A390095.P1755174900075608090

`A213719(xor(A244361(n+1), A329138(2*n+1)))`
-/

namespace A390095.P1755174900075608090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213719 (Int.xor (A244361 (n + 1)) (A329138 (2 * n + 1))).toNat

end

end A390095.P1755174900075608090

/-! ## A390095.P2716786321498448439

`and(A269241(A216244(n+4)), A385351(n+1))`
-/

namespace A390095.P2716786321498448439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A269241 (A216244 (n + 4)).toNat) (A385351 (n + 1))

end

end A390095.P2716786321498448439

/-! ## A390095.P15088193076580191295

`A088517(lt[A283938(n+1), A356841(n+1)])`
-/

namespace A390095.P15088193076580191295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088517 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A390095.P15088193076580191295

/-! ## A390095.P3085002912469860804

`A304532(n+1)%A025143(n+1)`
-/

namespace A390095.P3085002912469860804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304532 (n + 1)) (A025143 (n + 1))

end

end A390095.P3085002912469860804

/-! ## A390095.P4839985214306509389

`and(A330158(n+1), A354058(n+1))`
-/

namespace A390095.P4839985214306509389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A330158 (n + 1)) (A354058 (n + 1))

end

end A390095.P4839985214306509389

/-!
# A390096: Numbers of the form p^2 * m, squarefree m > 1, prime p > gpf(m), where gpf = A006530.

The programs for A390096, there is no canonical definition to state claims against.
-/

/-! ## A390096.P5802991091182182721

`∩[A229027(n+1), A389145(n+1)]`
-/

namespace A390096.P5802991091182182721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390096.P5802991091182182721

/-! ## A390096.P12891961941140795494

`∩[A229027(n+1), A388306(n+1)]`
-/

namespace A390096.P12891961941140795494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390096.P12891961941140795494

/-! ## A390096.P17037821960915112744

`∩[A229027(n+1), A389414(n+1)]`
-/

namespace A390096.P17037821960915112744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390096.P17037821960915112744

/-! ## A390096.P9155814730540188737

`∩[A229027(n+1), A392380(n+1)]`
-/

namespace A390096.P9155814730540188737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390096.P9155814730540188737

/-! ## A390096.P12619529469166858026

`∩[A229027(n+1), A400801(n+1)]`
-/

namespace A390096.P12619529469166858026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390096.P12619529469166858026

/-! ## A390096.P11289376910899332302

`∩[A093617(n+1), A229027(n+1)]`
-/

namespace A390096.P11289376910899332302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390096.P11289376910899332302

/-! ## A390096.P6015051682088209866

`∩[A071365(n+1), A229027(n+1)]`
-/

namespace A390096.P6015051682088209866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390096.P6015051682088209866

/-! ## A390096.P11292321686850203716

`filter[A070003(n+1), A359475(#)]`
-/

namespace A390096.P11292321686850203716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A390096.P11292321686850203716

/-! ## A390096.P9663361257663359814

`filter[A195212(n+1), A359475(#)]`
-/

namespace A390096.P9663361257663359814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A390096.P9663361257663359814

/-! ## A390096.P984709052106535878

`filter[A229027(n+1), A355447(#)]`
-/

namespace A390096.P984709052106535878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A390096.P984709052106535878

/-! ## A390096.P11865311830736952025

`filter[A229027(n+1), A359475(#)]`
-/

namespace A390096.P11865311830736952025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A390096.P11865311830736952025

/-! ## A390096.P13169886494554025958

`filter[A354869(n+1), A359475(#)]`
-/

namespace A390096.P13169886494554025958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A390096.P13169886494554025958

/-! ## A390096.P5019528757376084600

`filter[A368780(n+1), A359475(#)]`
-/

namespace A390096.P5019528757376084600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A390096.P5019528757376084600

/-! ## A390096.P8067605861243325629

`filter[A388306(n+1), A359471(#)]`
-/

namespace A390096.P8067605861243325629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A390096.P8067605861243325629

/-! ## A390096.P7956756403682548100

`filter[A388306(n+1), A359474(#)]`
-/

namespace A390096.P7956756403682548100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A390096.P7956756403682548100

/-! ## A390096.P13988676214262547804

`filter[A388306(n+1), A359475(#)]`
-/

namespace A390096.P13988676214262547804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A390096.P13988676214262547804

/-! ## A390096.P14796390542391510121

`filter[A389145(n+1), A359471(#)]`
-/

namespace A390096.P14796390542391510121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A390096.P14796390542391510121

/-! ## A390096.P14357060270541696298

`filter[A389145(n+1), A359474(#)]`
-/

namespace A390096.P14357060270541696298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A390096.P14357060270541696298

/-! ## A390096.P7175636660577073581

`filter[A389145(n+1), A359475(#)]`
-/

namespace A390096.P7175636660577073581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A390096.P7175636660577073581

/-! ## A390096.P8893129369994551401

`∩[A229027(n+1), A375397(n+1)]`
-/

namespace A390096.P8893129369994551401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390096.P8893129369994551401

/-!
# A390097: Numbers k such that A000005(k) = A384237(k).

The programs for A390097, there is no canonical definition to state claims against.
-/

/-! ## A390097.P14303841366030179907

`filter[A325327(n+1), A182067(#)]`
-/

namespace A390097.P14303841366030179907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182067 (f1 j).toNat = 1) n)

end

end A390097.P14303841366030179907

/-! ## A390097.P15390304395068372459

`filter[A325327(n+1), A297086(#)]`
-/

namespace A390097.P15390304395068372459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A390097.P15390304395068372459

/-! ## A390097.P5304738291844163092

`filter[A325327(1+n), A370122(#)]`
-/

namespace A390097.P5304738291844163092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325327 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370122 (f1 j).toNat = 1) n)

end

end A390097.P5304738291844163092

/-! ## A390097.P14670457446485224245

`∪[A000040(n+1), A325327(A051424(n+1))]`
-/

namespace A390097.P14670457446485224245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325327 (A051424 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390097.P14670457446485224245

/-! ## A390097.P8112653662265996285

`filter[A342339(n+1), A297086(#)]`
-/

namespace A390097.P8112653662265996285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A390097.P8112653662265996285

/-!
# A390098: Record denominators of (p1+1)/(p2+1), where p1 < p2 are consecutive primes.

The programs for A390098, there is no canonical definition to state claims against.
-/

/-! ## A390098.P11337911795436827954

`A254049(A390099(n+1))`
-/

namespace A390098.P11337911795436827954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254049 (A390099 (n + 1)).toNat

end

end A390098.P11337911795436827954

/-! ## A390098.P9137257071002323580

`A006254(A066940(n+2))`
-/

namespace A390098.P9137257071002323580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (A066940 (n + 2)).toNat

end

end A390098.P9137257071002323580

/-! ## A390098.P12185872632326462147

`record[A355933(A000040(n+1))]`
-/

namespace A390098.P12185872632326462147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355933 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390098.P12185872632326462147

/-! ## A390098.P8539015257900904250

`record[A355933(A014963(n+4))]`
-/

namespace A390098.P8539015257900904250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355933 (A014963 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390098.P8539015257900904250

/-! ## A390098.P9830224146954664069

`record[A355933(A020639(n+5))]`
-/

namespace A390098.P9830224146954664069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355933 (A020639 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390098.P9830224146954664069

/-!
# A390099: Record denominators of (p2+1)/(p1+1), where p1 < p2 are consecutive primes.

The programs for A390099, the canonical program `A390099.P13697926632670634146` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390099 has offset 1).

The definition of A390099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5699 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390099.P13697926632670634146

`A111333(A066940(2+n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A390099

/-- `A111333(A066940(2+n))` -/
def P13697926632670634146.Spec : Prop :=
  ∀ n, P13697926632670634146.a n = A390099 (n + 1)

theorem P13697926632670634146.correct : P13697926632670634146.Spec := by
  intro n
  simp only [A390099, Nat.add_sub_cancel]

end A390099

/-! ## A390099.P18344182032076126447

`record[A355934(A000040(n+1))]`
-/

namespace A390099.P18344182032076126447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355934 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390099.P18344182032076126447

namespace A390099

/-- `record[A355934(A000040(n+1))]` -/
def P18344182032076126447.Spec : Prop :=
  ∀ n, P18344182032076126447.a n = A390099 (n + 1)

end A390099

/-! ## A390099.P1757853100034489171

`A285712(A390098(n+1))`
-/

namespace A390099.P1757853100034489171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285712 (A390098 (n + 1)).toNat

end

end A390099.P1757853100034489171

namespace A390099

/-- `A285712(A390098(n+1))` -/
def P1757853100034489171.Spec : Prop :=
  ∀ n, P1757853100034489171.a n = A390099 (n + 1)

end A390099

