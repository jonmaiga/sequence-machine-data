import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C001
import Seq.B010.C000
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
import Seq.Opaque.C025

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

/-! ## A390010.P4246387992928858946

`∩[A001694(n+1), A047407(n+1)]`
-/

namespace A390010.P4246387992928858946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P4246387992928858946

/-! ## A390010.P10496667533032318398

`∩[A001694(n+1), A047464(n+1)]`
-/

namespace A390010.P10496667533032318398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P10496667533032318398

/-! ## A390010.P10788885851611822240

`∩[A001694(n+1), A163300(n+1)]`
-/

namespace A390010.P10788885851611822240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P10788885851611822240

/-! ## A390010.P4016778901476601449

`∩[A001694(n+1), A051755(n+2)]`
-/

namespace A390010.P4016778901476601449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390010.P4016778901476601449

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

/-! ## A390014.P3506375339801831444

`filter[A390215(n), A011558(#)]`
-/

namespace A390014.P3506375339801831444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A390014.P3506375339801831444

/-! ## A390014.P16042643025889097556

`filter[A390215(n), A051023(#)]`
-/

namespace A390014.P16042643025889097556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A051023 (f1 j).toNat = 1) n)

end

end A390014.P16042643025889097556

/-! ## A390014.P13909477852140258045

`filter[A390215(n), A093521(#)]`
-/

namespace A390014.P13909477852140258045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093521 (f1 j).toNat = 1) n)

end

end A390014.P13909477852140258045

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

/-! ## A390015.P7812147188593272054

`filter[A390216(n), A005713(#)]`
-/

namespace A390015.P7812147188593272054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005713 (f1 j).toNat = 1) n)

end

end A390015.P7812147188593272054

/-! ## A390015.P10657343020313478969

`filter[A390216(n), A011558(#)]`
-/

namespace A390015.P10657343020313478969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A390015.P10657343020313478969

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

The programs for A390020, the canonical program `A390020.P10148638981166851222` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390020 has offset 0).

The definition of A390020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390020.P10148638981166851222

`2*a(n-3)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A390020

/-- `2*a(n-3)+a(n-5)-a(n-6)` -/
def P10148638981166851222.Spec : Prop :=
  ∀ n, P10148638981166851222.a n = A390020 n

theorem P10148638981166851222.correct : P10148638981166851222.Spec := by
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

/-! ## A390028.P17935050967432727601

`A007150(A162566(n+2))`
-/

namespace A390028.P17935050967432727601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007150 (A162566 (n + 2)).toNat

end

end A390028.P17935050967432727601

/-! ## A390028.P2758442908411497572

`A238628(A345667(n+1))`
-/

namespace A390028.P2758442908411497572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238628 (A345667 (n + 1)).toNat

end

end A390028.P2758442908411497572

/-! ## A390028.P16084905116422397194

`eq[A001222(2*n+1)², A357135(3*n+1)]`
-/

namespace A390028.P16084905116422397194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357135 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390028.P16084905116422397194

/-! ## A390028.P4205630931794016226

`eq[A001157(A034178(2*n+1)), A357135(3*n+1)]`
-/

namespace A390028.P4205630931794016226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A034178 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357135 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390028.P4205630931794016226

/-! ## A390028.P17717767654436989482

`eq[A001065(2*n+1), A230093(A324700(2*n+3))]`
-/

namespace A390028.P17717767654436989482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230093 (A324700 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390028.P17717767654436989482

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

/-! ## A390032.P4147898643350191440

`filter[A390030(2*n+1), A014306(#)]`
-/

namespace A390032.P4147898643350191440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390030 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A390032.P4147898643350191440

/-! ## A390032.P2294571799196623263

`filter[A390030(2*n+1), A022932(#)]`
-/

namespace A390032.P2294571799196623263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390030 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A390032.P2294571799196623263

/-! ## A390032.P5446634976665614892

`filter[A390030(2*n+1), A043545(#)]`
-/

namespace A390032.P5446634976665614892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390030 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A390032.P5446634976665614892

/-! ## A390032.P447171385890893340

`filter[A390030(2*n+1), A049240(#)]`
-/

namespace A390032.P447171385890893340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390030 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A390032.P447171385890893340

/-!
# A390034: a(n) = Sum_{k=0..floor(3*n/5)} binomial(k+2,3*n-5*k).

The programs for A390034, the canonical program `A390034.P16555873954648070697` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390034 has offset 0).

The definition of A390034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390034.P16555873954648070697

`3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0, a(4)=6, a(5)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A390034

/-- `3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` -/
def P16555873954648070697.Spec : Prop :=
  ∀ n, P16555873954648070697.a n = A390034 n

theorem P16555873954648070697.correct : P16555873954648070697.Spec := by
  intro n
  simp only [A390034]

end A390034

/-! ## A390034.P15008126313567813245

`A017837(A112414(n+1))`
-/

namespace A390034.P15008126313567813245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (A112414 (n + 1)).toNat

end

end A390034.P15008126313567813245

namespace A390034

/-- `A017837(A112414(n+1))` -/
def P15008126313567813245.Spec : Prop :=
  ∀ n, P15008126313567813245.a n = A390034 n

end A390034

/-!
# A390035: a(n) = Sum_{k=0..floor(n/2)} binomial(k+2,3*n-6*k+2).

The programs for A390035, the canonical program `A390035.P18431912424920761164` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390035 has offset 0).

The definition of A390035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390035.P18431912424920761164

`3*a(n-2)-3*a(n-4)+a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=0, a(4)=6, a(5)=0, a(6)=10`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A390035

/-- `3*a(n-2)-3*a(n-4)+a(n-6)+a(n-7)` -/
def P18431912424920761164.Spec : Prop :=
  ∀ n, P18431912424920761164.a n = A390035 n

theorem P18431912424920761164.correct : P18431912424920761164.Spec := by
  intro n
  simp only [A390035]

end A390035

/-!
# A390036: a(n) = Sum_{k=0..floor(3*n/8)} binomial(k+2,3*n-8*k).

The programs for A390036, the canonical program `A390036.P14973686041925270598` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390036 has offset 0).

The definition of A390036 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390036.P14973686041925270598

`3*a(n-3)-3*a(n-6)+a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=3, a(4)=0, a(5)=0, a(6)=6, a(7)=0, a(8)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A390036

/-- `3*a(n-3)-3*a(n-6)+a(n-8)+a(n-9)` -/
def P14973686041925270598.Spec : Prop :=
  ∀ n, P14973686041925270598.a n = A390036 n

theorem P14973686041925270598.correct : P14973686041925270598.Spec := by
  intro n
  simp only [A390036]

end A390036

/-!
# A390037: a(n) = Sum_{k=0..floor(n/3)} binomial(k+2,3*n-9*k+2).

The programs for A390037, the canonical program `A390037.P11491891403978991124` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390037 has offset 0).

The definition of A390037 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390037.P11491891403978991124

`3*a(n-3)-3*a(n-6)+a(n-9)+a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=3, a(4)=0, a(5)=0, a(6)=6, a(7)=0, a(8)=0, a(9)=10`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A390037

/-- `3*a(n-3)-3*a(n-6)+a(n-9)+a(n-10)` -/
def P11491891403978991124.Spec : Prop :=
  ∀ n, P11491891403978991124.a n = A390037 n

theorem P11491891403978991124.correct : P11491891403978991124.Spec := by
  intro n
  simp only [A390037]

end A390037

/-!
# A390039: a(n) = Sum_{k=0..floor(4*n/7)} binomial(k+3,4*n-7*k).

The programs for A390039, the canonical program `A390039.P16459634318629443713` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390039 has offset 0).

The definition of A390039 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390039.P16459634318629443713

`4*a(n-2)-6*a(n-4)+4*a(n-6)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=0, a(4)=10, a(5)=0, a(6)=20, a(7)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A390039

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)+a(n-7)-a(n-8)` -/
def P16459634318629443713.Spec : Prop :=
  ∀ n, P16459634318629443713.a n = A390039 n

theorem P16459634318629443713.correct : P16459634318629443713.Spec := by
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

/-! ## A390039.P8428599757842854804

`A000292(A113676(n+1)%A332294(3*n+4))`
-/

namespace A390039.P8428599757842854804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (Int.tmod (A113676 (n + 1)) (A332294 (3 * n + 4))).toNat

end

end A390039.P8428599757842854804

namespace A390039

/-- `A000292(A113676(n+1)%A332294(3*n+4))` -/
def P8428599757842854804.Spec : Prop :=
  ∀ n, P8428599757842854804.a n = A390039 n

end A390039

/-!
# A390040: a(n) = Sum_{k=0..floor(n/2)} binomial(k+3,4*n-8*k+3).

The programs for A390040, the canonical program `A390040.P15272839423703191929` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390040 has offset 0).

The definition of A390040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390040.P15272839423703191929

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=0, a(4)=10, a(5)=0, a(6)=20, a(7)=0, a(8)=35`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A390040

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)+a(n-9)` -/
def P15272839423703191929.Spec : Prop :=
  ∀ n, P15272839423703191929.a n = A390040 n

theorem P15272839423703191929.correct : P15272839423703191929.Spec := by
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

/-! ## A390040.P6058457324757930283

`A127967(eq[3, A025651(n+1)])`
-/

namespace A390040.P6058457324757930283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127967 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A390040.P6058457324757930283

namespace A390040

/-- `A127967(eq[3, A025651(n+1)])` -/
def P6058457324757930283.Spec : Prop :=
  ∀ n, P6058457324757930283.a n = A390040 n

end A390040

/-! ## A390040.P17178408141120668727

`C(A008619(n)+2, A324695(A089120(n+1)))`
-/

namespace A390040.P17178408141120668727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008619 n + 2).toNat (A324695 (A089120 (n + 1)).toNat).toNat

end

end A390040.P17178408141120668727

namespace A390040

/-- `C(A008619(n)+2, A324695(A089120(n+1)))` -/
def P17178408141120668727.Spec : Prop :=
  ∀ n, (P17178408141120668727.a n : ℤ) = A390040 n

end A390040

/-! ## A390040.P614769979860902240

`A285132(2*n)%A367037(A123610(2*n))`
-/

namespace A390040.P614769979860902240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285132 (2 * n)) (A367037 (A123610 (2 * n)).toNat)

end

end A390040.P614769979860902240

namespace A390040

/-- `A285132(2*n)%A367037(A123610(2*n))` -/
def P614769979860902240.Spec : Prop :=
  ∀ n, P614769979860902240.a n = A390040 n

end A390040

/-!
# A390042: a(n) = Sum_{k=0..floor(n/3)} binomial(k+3,4*n-12*k+3).

The programs for A390042, there is no canonical definition to state claims against.
-/

/-! ## A390042.P16705409826043716314

`and(A000069(A003945(n)), A390041(n))`
-/

namespace A390042.P16705409826043716314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000069 (A003945 n).toNat) (A390041 n)

end

end A390042.P16705409826043716314

/-!
# A390044: Expansion of 1 / ((1-x)^4 - x^5).

The programs for A390044, the canonical program `A390044.P2107968494793019417` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390044 has offset 0).

The definition of A390044 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+6x^2-4x^3+x^4-x^5))` (program `A390044.P2107968494793019417`, by `A390044.P2107968494793019417.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390044.P2107968494793019417

`ogf(1/(1-4x+6x^2-4x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C039`.
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

The programs for A390045, the canonical program `A390045.P4577038485087996516` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390045 has offset 0).

The definition of A390045 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x+10x^2-10x^3+5x^4-x^5-x^6))` (program `A390045.P4577038485087996516`, by `A390045.P4577038485087996516.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390045.P4577038485087996516

`ogf(1/(1-5x+10x^2-10x^3+5x^4-x^5-x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A390045

/-- `ogf(1/(1-5x+10x^2-10x^3+5x^4-x^5-x^6))` -/
def P4577038485087996516.Spec : Prop :=
  ∀ n, P4577038485087996516.a n = A390045 n

theorem P4577038485087996516.correct : P4577038485087996516.Spec := by
  intro n
  simp only [A390045]

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

/-! ## A390048.P11835034862518776413

`A003056(A269144(n)+A011927(n))`
-/

namespace A390048.P11835034862518776413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A269144 n + A011927 n).toNat

end

end A390048.P11835034862518776413

/-! ## A390048.P5559782192134548443

`A302505(A000041(n+2))-A195852(n)`
-/

namespace A390048.P5559782192134548443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302505 (A000041 (n + 2)).toNat - A195852 n

end

end A390048.P5559782192134548443

/-! ## A390048.P3998965439849614884

`A003056(A001068(2*n+1)*A066178(n))`
-/

namespace A390048.P3998965439849614884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001068 (2 * n + 1) * A066178 n).toNat

end

end A390048.P3998965439849614884

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

/-! ## A390049.P3739614662224446064

`2*A088831(A285964(n+1))`
-/

namespace A390049.P3739614662224446064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088831 (A285964 (n + 1)).toNat

end

end A390049.P3739614662224446064

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

/-! ## A390053.P12979634142508031441

`A006530(A061147(n+1))`
-/

namespace A390053.P12979634142508031441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061147 (n + 1)).toNat

end

end A390053.P12979634142508031441

/-! ## A390053.P10997513021976296431

`A006530(A062003(n+1))`
-/

namespace A390053.P10997513021976296431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A062003 (n + 1)).toNat

end

end A390053.P10997513021976296431

/-! ## A390053.P1985004962843096983

`A006530(A061378(n+1))`
-/

namespace A390053.P1985004962843096983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061378 (n + 1)).toNat

end

end A390053.P1985004962843096983

/-! ## A390053.P11482632409516233443

`A162325(A004186(n+1))`
-/

namespace A390053.P11482632409516233443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162325 (A004186 (n + 1)).toNat

end

end A390053.P11482632409516233443

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

/-! ## A390059.P7588126071628606768

`A390302(n*A347162(n+5))`
-/

namespace A390059.P7588126071628606768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390302 ((n : ℤ) * A347162 (n + 5)).toNat

end

end A390059.P7588126071628606768

/-! ## A390059.P16195386849265162888

`C(A390302(n), A347162(n+5))`
-/

namespace A390059.P16195386849265162888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A390302 n).toNat (A347162 (n + 5)).toNat

end

end A390059.P16195386849265162888

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

/-! ## A390063.P17865069554260853182

`A004526(A277463(n))+A000700(n)`
-/

namespace A390063.P17865069554260853182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A277463 n).toNat + A000700 n

end

end A390063.P17865069554260853182

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

/-! ## A390084.P14345347243937555491

`A345380(A026906(n+1))`
-/

namespace A390084.P14345347243937555491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345380 (A026906 (n + 1)).toNat

end

end A390084.P14345347243937555491

/-! ## A390084.P14862773350197178804

`A029837(A301345(n+1)+A026906(n+1))`
-/

namespace A390084.P14862773350197178804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A301345 (n + 1) + A026906 (n + 1)).toNat

end

end A390084.P14862773350197178804

/-! ## A390084.P2054799124913613235

`A088141(A088141(A000040((n+1)²)))`
-/

namespace A390084.P2054799124913613235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A088141 (A000040 ((n + 1) ^ 2)).toNat).toNat

end

end A390084.P2054799124913613235

/-!
# A390085: Half the length of the longest irreducible zero-sum subsets of {-2*n+1, -2*n+3, ..., -3, -1, 1, 3, ..., 2*n-3, 2*n-1}.

The programs for A390085, there is no canonical definition to state claims against.
-/

/-! ## A390085.P2066778336376460088

`floor(sqrt(A362930(n+1)-1))`
-/

namespace A390085.P2066778336376460088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A362930 (n + 1) - 1)

end

end A390085.P2066778336376460088

/-! ## A390085.P12199408681491648069

`∑[char[∑[n-A055881(n+1)]]]`
-/

namespace A390085.P12199408681491648069
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390085.P12199408681491648069

/-! ## A390085.P12805836166388426002

`∑[char[∑[n-A257993(n+1)]]]`
-/

namespace A390085.P12805836166388426002
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A257993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390085.P12805836166388426002

/-! ## A390085.P9582254687509858740

`comp[∑[n]-A034020(n+1)]-n`
-/

namespace A390085.P9582254687509858740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A034020 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A390085.P9582254687509858740

/-! ## A390085.P1507932053745491469

`A000267(A097508(n))`
-/

namespace A390085.P1507932053745491469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A097508 n).toNat

end

end A390085.P1507932053745491469

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
# A390089: Positive numbers that are divisible by their binary ones' complement.

The programs for A390089, there is no canonical definition to state claims against.
-/

/-! ## A390089.P15872834430242067388

`∩[A143909(n+1), A272670(n+1)]`
-/

namespace A390089.P15872834430242067388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390089.P15872834430242067388

/-!
# A390090: Irregular triangle read by rows where row n lists the first differences of the binary indices of n.

The programs for A390090, there is no canonical definition to state claims against.
-/

/-! ## A390090.P8092828814088583868

`A228351(comp[∑[A000120(n)]]+1)`
-/

namespace A390090.P8092828814088583868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A390090.P8092828814088583868

/-! ## A390090.P719666834895775575

`A353329(A020229(n+1))`
-/

namespace A390090.P719666834895775575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353329 (A020229 (n + 1)).toNat

end

end A390090.P719666834895775575

/-! ## A390090.P3056038794093449070

`A235748(A138008(n+2))`
-/

namespace A390090.P3056038794093449070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235748 (A138008 (n + 2)).toNat

end

end A390090.P3056038794093449070

/-! ## A390090.P12432857147016831561

`A279387(A164896(n+1)+n)`
-/

namespace A390090.P12432857147016831561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279387 (A164896 (n + 1) + (n : ℤ)).toNat

end

end A390090.P12432857147016831561

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

/-!
# A390091: Numbers whose binary indices have distinct first differences.

The programs for A390091, there is no canonical definition to state claims against.
-/

/-! ## A390091.P16259317381993802477

`∪[A206926(n+1), A337582(n+1)]`
-/

namespace A390091.P16259317381993802477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390091.P16259317381993802477

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

/-! ## A390091.P17251485282757261213

`∩[A123068(n+1), A337582(n+1)]`
-/

namespace A390091.P17251485282757261213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390091.P17251485282757261213

/-! ## A390091.P8156402900321308407

`A337582(n+1)+A010054(A136191(n+1))`
-/

namespace A390091.P8156402900321308407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337582 (n + 1) + A010054 (A136191 (n + 1)).toNat

end

end A390091.P8156402900321308407

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

/-! ## A390092.P12588282006977794159

`A000041(n+1)-(A325346(n+1)+A325338(n+1))`
-/

namespace A390092.P12588282006977794159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A325346 (n + 1) + A325338 (n + 1))

end

end A390092.P12588282006977794159

/-!
# A390093: Numbers k > 1 such that the least prime index of k and the greatest prime index of k are both odd.

The programs for A390093, there is no canonical definition to state claims against.
-/

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

/-! ## A390093.P13954558978540016653

`filter[A360550(n+1), A244992(#)]`
-/

namespace A390093.P13954558978540016653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244992 (f1 j).toNat = 1) n)

end

end A390093.P13954558978540016653

/-! ## A390093.P12739762399897225525

`∩[A244991(n+1), A360550(n+1)]`
-/

namespace A390093.P12739762399897225525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390093.P12739762399897225525

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

/-! ## A390095.P2686829120690668375

`A080339(A297720(n+1)+A001747(2*n+1))`
-/

namespace A390095.P2686829120690668375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A297720 (n + 1) + A001747 (2 * n + 1)).toNat

end

end A390095.P2686829120690668375

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

/-! ## A390096.P8702341821530635430

`filter[A229027(n+1), A049240(#)]`
-/

namespace A390096.P8702341821530635430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A390096.P8702341821530635430

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

/-! ## A390097.P8819234268605943754

`filter[A325327(n+1), A370122(#)]`
-/

namespace A390097.P8819234268605943754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370122 (f1 j).toNat = 1) n)

end

end A390097.P8819234268605943754

/-! ## A390097.P12580967988777989076

`filter[A392371(n+1), A182067(#)]`
-/

namespace A390097.P12580967988777989076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182067 (f1 j).toNat = 1) n)

end

end A390097.P12580967988777989076

/-! ## A390097.P14953476379950264823

`filter[A392371(n+1), A297086(#)]`
-/

namespace A390097.P14953476379950264823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A297086 (f1 j).toNat = 1) n)

end

end A390097.P14953476379950264823

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

/-! ## A390098.P11967550337946141847

`A141213(A192046(n+2))`
-/

namespace A390098.P11967550337946141847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141213 (A192046 (n + 2)).toNat

end

end A390098.P11967550337946141847

/-!
# A390099: Record denominators of (p2+1)/(p1+1), where p1 < p2 are consecutive primes.

The programs for A390099, the canonical program `A390099.P13380091930058253574` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390099 has offset 1).

The definition of A390099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5699 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390099.P13380091930058253574

`A111333(A066940(n+2))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A390099

/-- `A111333(A066940(n+2))` -/
def P13380091930058253574.Spec : Prop :=
  ∀ n, P13380091930058253574.a n = A390099 (n + 1)

theorem P13380091930058253574.correct : P13380091930058253574.Spec := by
  intro n
  simp only [A390099, Nat.add_sub_cancel]

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

