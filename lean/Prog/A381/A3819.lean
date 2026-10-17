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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A381900: Sequence where k is appended after every (2^(k-1))*k occurrences of 1, with multiple values following a 1 listed in order.

The programs for A381900, there is no canonical definition to state claims against.
-/

/-! ## A381900.P1045822831441252706

`A136755(A050278(n+1)%A225513(n+1))`
-/

namespace A381900.P1045822831441252706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136755 (Int.tmod (A050278 (n + 1)) (A225513 (n + 1))).toNat

end

end A381900.P1045822831441252706

/-! ## A381900.P3748130674660952137

`A350333(A129766(n+2))`
-/

namespace A381900.P3748130674660952137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350333 (A129766 (n + 2)).toNat

end

end A381900.P3748130674660952137

/-! ## A381900.P16202172290405334221

`A228525(A045596(n+1))`
-/

namespace A381900.P16202172290405334221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228525 (A045596 (n + 1)).toNat

end

end A381900.P16202172290405334221

/-! ## A381900.P11750806133751044611

`gcd(A193870(A243851(n+1)), A329579(3*n+4))`
-/

namespace A381900.P11750806133751044611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A193870 (A243851 (n + 1)).toNat) (A329579 (3 * n + 4))

end

end A381900.P11750806133751044611

/-! ## A381900.P14171650651570747507

`A003989(A285152(n+1)+A088617(n))`
-/

namespace A381900.P14171650651570747507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A285152 (n + 1) + A088617 n).toNat

end

end A381900.P14171650651570747507

/-!
# A381901: Partition the natural numbers by letting a(1)=1 (denoting the set {1}) and for n>1 define a(n) to be the least integer such that the product of the set of integers {a(n-1)+1,...,a(n)} is an integer multiple of the previous partition's product.

The programs for A381901, there is no canonical definition to state claims against.
-/

/-! ## A381901.P299645967738262978

`A090905(n+2)-1`
-/

namespace A381901.P299645967738262978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090905 (n + 2) - 1

end

end A381901.P299645967738262978

/-! ## A381901.P16282447061470643728

`∑[A090906(n+1)]`
-/

namespace A381901.P16282447061470643728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381901.P16282447061470643728

/-! ## A381901.P201003357075493464

`∑[abs(Δ[A090905(n+1)])]`
-/

namespace A381901.P201003357075493464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090905 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381901.P201003357075493464

/-! ## A381901.P10129202296047071958

`A153881(n+2)+A090905(n+2)`
-/

namespace A381901.P10129202296047071958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A090905 (n + 2)

end

end A381901.P10129202296047071958

/-! ## A381901.P559028316916179699

`∑[Δ[A090905(n+1)]%A214999(n)]`
-/

namespace A381901.P559028316916179699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090905 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A214999 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381901.P559028316916179699

/-!
# A381903: Primes prime(k) such that (prime(k) - k)^k == k (mod prime(k)).

The programs for A381903, there is no canonical definition to state claims against.
-/

/-! ## A381903.P16238690192764133818

`A182320(A383974(n)+A365045(n))`
-/

namespace A381903.P16238690192764133818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182320 (A383974 n + A365045 n).toNat

end

end A381903.P16238690192764133818

/-!
# A381904: Number of minimum total dominating sets in the n X n zebra graph.

The programs for A381904, there is no canonical definition to state claims against.
-/

/-! ## A381904.P7851869882281981685

`A348029(A005371(n)+n)`
-/

namespace A381904.P7851869882281981685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348029 (A005371 n + (n : ℤ)).toNat

end

end A381904.P7851869882281981685

/-! ## A381904.P14664104173564663055

`Δ[A067632(2*n)*A278778(n+1)]`
-/

namespace A381904.P14664104173564663055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067632 (2 * n) * A278778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381904.P14664104173564663055

/-! ## A381904.P5333903310862684795

`A303644(n+1)*A303644(A058258(n))`
-/

namespace A381904.P5333903310862684795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303644 (n + 1) * A303644 (A058258 n).toNat

end

end A381904.P5333903310862684795

/-!
# A381905: Expansion of (1/x) * Series_Reversion( x / ((1+x) * B(x)) ), where B(x) is the g.f. of A001764.

The programs for A381905, there is no canonical definition to state claims against.
-/

/-! ## A381905.P8098697028939835641

`A326879(A100087(n))+A209441(n)`
-/

namespace A381905.P8098697028939835641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326879 (A100087 n).toNat + A209441 n

end

end A381905.P8098697028939835641

/-!
# A381906: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * B(x)) ), where B(x) is the g.f. of A001764.

The programs for A381906, there is no canonical definition to state claims against.
-/

/-! ## A381906.P15450670890880734792

`∑[A004001(A126596(n))]`
-/

namespace A381906.P15450670890880734792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A126596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381906.P15450670890880734792

/-!
# A381907: Expansion of (1/x) * Series_Reversion( x / ((1+x)^3 * B(x)) ), where B(x) is the g.f. of A001764.

The programs for A381907, there is no canonical definition to state claims against.
-/

/-! ## A381907.P17066049951736142669

`Δ[Δ[A194255(A189886(n))]]`
-/

namespace A381907.P17066049951736142669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194255 (A189886 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381907.P17066049951736142669

/-!
# A381908: Expansion of (1/x) * Series_Reversion( x / ((1+x) * B(x)) ), where B(x) is the g.f. of A002293.

The programs for A381908, there is no canonical definition to state claims against.
-/

/-! ## A381908.P1465289280659185285

`A066981(A230388(n))+n`
-/

namespace A381908.P1465289280659185285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066981 (A230388 n).toNat + (n : ℤ)

end

end A381908.P1465289280659185285

/-!
# A381909: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 * B(x)) ), where B(x) is the g.f. of A002293.

The programs for A381909, there is no canonical definition to state claims against.
-/

/-! ## A381909.P17749096873527169505

`A008615(A228418(n))+1`
-/

namespace A381909.P17749096873527169505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A228418 n).toNat + 1

end

end A381909.P17749096873527169505

/-!
# A381910: Expansion of (1/x) * Series_Reversion( x / ((1+x)^3 * B(x)) ), where B(x) is the g.f. of A002293.

The programs for A381910, there is no canonical definition to state claims against.
-/

/-! ## A381910.P13423661001778597476

`A004273(A089945(n))-A182182(n)`
-/

namespace A381910.P13423661001778597476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A089945 n).toNat - A182182 n

end

end A381910.P13423661001778597476

/-!
# A381911: Expansion of (1/x) * Series_Reversion( x * (1-x) / B(x) ), where B(x) is the g.f. of A001764.

The programs for A381911, there is no canonical definition to state claims against.
-/

/-! ## A381911.P17764305083651970777

`A218469(A083420(n))`
-/

namespace A381911.P17764305083651970777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218469 (A083420 n).toNat

end

end A381911.P17764305083651970777

/-!
# A381912: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 / B(x) ), where B(x) is the g.f. of A001764.

The programs for A381912, there is no canonical definition to state claims against.
-/

/-! ## A381912.P6098011988175577298

`A060715(A341478(n))+A025547(n+1)`
-/

namespace A381912.P6098011988175577298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A341478 n).toNat + A025547 (n + 1)

end

end A381912.P6098011988175577298

/-!
# A381913: Expansion of (1/x) * Series_Reversion( x * (1-x)^3 / B(x) ), where B(x) is the g.f. of A001764.

The programs for A381913, there is no canonical definition to state claims against.
-/

/-! ## A381913.P959927338563043322

`A000108(n)*A316974(∏{p}[n+1, lcm(#, n+1)])`
-/

namespace A381913.P959927338563043322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A316974 (∏ p ∈ Nat.primeFactors (f1 n), Nat.lcm p (n + 1))

end

end A381913.P959927338563043322

/-!
# A381914: Expansion of (1/x) * Series_Reversion( x * (1-x) / B(x) ), where B(x) is the g.f. of A002293.

The programs for A381914, there is no canonical definition to state claims against.
-/

/-! ## A381914.P7195004155412310910

`A055034(∑[A361375(n)])`
-/

namespace A381914.P7195004155412310910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A381914.P7195004155412310910

/-!
# A381915: Expansion of (1/x) * Series_Reversion( x * (1-x)^2 / B(x) ), where B(x) is the g.f. of A002293.

The programs for A381915, there is no canonical definition to state claims against.
-/

/-! ## A381915.P17828243219649700455

`A006163(A048990(n)+A000172(n))`
-/

namespace A381915.P17828243219649700455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006163 (A048990 n + A000172 n).toNat

end

end A381915.P17828243219649700455

/-!
# A381916: Expansion of (1/x) * Series_Reversion( x * (1-x)^3 / B(x) ), where B(x) is the g.f. of A002293.

The programs for A381916, there is no canonical definition to state claims against.
-/

/-! ## A381916.P16196746570619004215

`A000201(A231616(n)+A072137(n))`
-/

namespace A381916.P16196746570619004215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A231616 n + A072137 n).toNat

end

end A381916.P16196746570619004215

/-!
# A381917: Kaprekar numbers that are the concatenation of two equal numbers.

The programs for A381917, there is no canonical definition to state claims against.
-/

/-! ## A381917.P11571316295994084069

`∩[A006886(n+1), A020338(n+1)]`
-/

namespace A381917.P11571316295994084069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381917.P11571316295994084069

/-! ## A381917.P15056121744049161858

`∩[A006886(n+1), A272655(n+1)]`
-/

namespace A381917.P15056121744049161858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381917.P15056121744049161858

/-! ## A381917.P13306405205632269652

`∩[A006886(n+1), A283871(n+1)]`
-/

namespace A381917.P13306405205632269652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381917.P13306405205632269652

/-!
# A381918: Kaprekar numbers that are the concatenation of two consecutive numbers.

The programs for A381918, there is no canonical definition to state claims against.
-/

/-! ## A381918.P14547138569752771075

`∩[A001704(n+1), A006886(n+1)]`
-/

namespace A381918.P14547138569752771075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381918.P14547138569752771075

/-!
# A381919: Pentagonal numbers which are products of four distinct primes.

The programs for A381919, there is no canonical definition to state claims against.
-/

/-! ## A381919.P9216055887791624919

`∩[A046386(n+1), A000326(n)]`
-/

namespace A381919.P9216055887791624919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381919.P9216055887791624919

/-! ## A381919.P3485876872065254576

`∩[A350373(n+1), A000326(n)]`
-/

namespace A381919.P3485876872065254576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381919.P3485876872065254576

/-! ## A381919.P15580965267755756130

`∩[A001318(2*n+3), A046386(n+1)]`
-/

namespace A381919.P15580965267755756130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381919.P15580965267755756130

/-! ## A381919.P10921249292361183009

`∩[A211538(A028310(2*(n+2))), A046386(n+1)]`
-/

namespace A381919.P10921249292361183009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (A028310 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381919.P10921249292361183009

/-!
# A381920: Hexagonal numbers that are products of exactly four distinct primes.

The programs for A381920, the canonical program `A381920.P15799259453814782413` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381920 has offset 1).

The definition of A381920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 604 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381920.P15799259453814782413

`∩[A333771(n+1), A000384(n)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A381920

/-- `∩[A333771(n+1), A000384(n)]` -/
def P15799259453814782413.Spec : Prop :=
  ∀ n, (P15799259453814782413.a n : ℤ) = A381920 (n + 1)

theorem P15799259453814782413.correct : P15799259453814782413.Spec := by
  intro n
  simp only [A381920, Nat.add_sub_cancel]

end A381920

/-! ## A381920.P4668754420915298185

`∩[A333771(n+1), A084265(n)]`
-/

namespace A381920.P4668754420915298185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084265 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381920.P4668754420915298185

namespace A381920

/-- `∩[A333771(n+1), A084265(n)]` -/
def P4668754420915298185.Spec : Prop :=
  ∀ n, (P4668754420915298185.a n : ℤ) = A381920 (n + 1)

end A381920

/-! ## A381920.P16427057009961239623

`∩[A333771(n+1), A260699(n)]`
-/

namespace A381920.P16427057009961239623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260699 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381920.P16427057009961239623

namespace A381920

/-- `∩[A333771(n+1), A260699(n)]` -/
def P16427057009961239623.Spec : Prop :=
  ∀ n, (P16427057009961239623.a n : ℤ) = A381920 (n + 1)

end A381920

/-! ## A381920.P5452923605037635881

`∩[A333771(n+1), A265225(n)]`
-/

namespace A381920.P5452923605037635881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265225 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381920.P5452923605037635881

namespace A381920

/-- `∩[A333771(n+1), A265225(n)]` -/
def P5452923605037635881.Spec : Prop :=
  ∀ n, (P5452923605037635881.a n : ℤ) = A381920 (n + 1)

end A381920

/-! ## A381920.P13158903812773033989

`∩[A333771(n+1), A266304(n)]`
-/

namespace A381920.P13158903812773033989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266304 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381920.P13158903812773033989

namespace A381920

/-- `∩[A333771(n+1), A266304(n)]` -/
def P13158903812773033989.Spec : Prop :=
  ∀ n, (P13158903812773033989.a n : ℤ) = A381920 (n + 1)

end A381920

/-! ## A381920.P2540587814264429958

`∩[A333771(n+1), A266665(n)]`
-/

namespace A381920.P2540587814264429958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266665 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381920.P2540587814264429958

namespace A381920

/-- `∩[A333771(n+1), A266665(n)]` -/
def P2540587814264429958.Spec : Prop :=
  ∀ n, (P2540587814264429958.a n : ℤ) = A381920 (n + 1)

end A381920

/-! ## A381920.P2700274954320095998

`∩[A333771(n+1), A267353(n)]`
-/

namespace A381920.P2700274954320095998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381920.P2700274954320095998

namespace A381920

/-- `∩[A333771(n+1), A267353(n)]` -/
def P2700274954320095998.Spec : Prop :=
  ∀ n, (P2700274954320095998.a n : ℤ) = A381920 (n + 1)

end A381920

/-! ## A381920.P6535027861131529985

`∩[A031940(n+1), A333771(n+1)]`
-/

namespace A381920.P6535027861131529985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381920.P6535027861131529985

namespace A381920

/-- `∩[A031940(n+1), A333771(n+1)]` -/
def P6535027861131529985.Spec : Prop :=
  ∀ n, (P6535027861131529985.a n : ℤ) = A381920 (n + 1)

end A381920

/-! ## A381920.P13888210138744471955

`∩[A093005(n+1), A333771(n+1)]`
-/

namespace A381920.P13888210138744471955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381920.P13888210138744471955

namespace A381920

/-- `∩[A093005(n+1), A333771(n+1)]` -/
def P13888210138744471955.Spec : Prop :=
  ∀ n, (P13888210138744471955.a n : ℤ) = A381920 (n + 1)

end A381920

/-! ## A381920.P9486609921485079268

`∩[A046386(n+1), A000384(n)]`
-/

namespace A381920.P9486609921485079268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381920.P9486609921485079268

namespace A381920

/-- `∩[A046386(n+1), A000384(n)]` -/
def P9486609921485079268.Spec : Prop :=
  ∀ n, (P9486609921485079268.a n : ℤ) = A381920 (n + 1)

end A381920

/-!
# A381921: Factorial numbers whose Hamming weight is also a factorial number.

The programs for A381921, there is no canonical definition to state claims against.
-/

/-! ## A381921.P3632005941072765745

`A000142(A381922(n+1))`
-/

namespace A381921.P3632005941072765745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A381922 (n + 1)).toNat

end

end A381921.P3632005941072765745

/-! ## A381921.P9661952962351534227

`(∏{e}[∏[2*n+1], #]+n)!`
-/

namespace A381921.P9661952962351534227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + n)

end

end A381921.P9661952962351534227

/-! ## A381921.P12188733617543180873

`∑[A168549(n)]!`
-/

namespace A381921.P12188733617543180873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168549 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A381921.P12188733617543180873

/-!
# A381922: Numbers k>0 such that the Hamming weight of k! is a factorial.

The programs for A381922, there is no canonical definition to state claims against.
-/

/-! ## A381922.P12967132449559828267

`A000041(∑[∑{d}[2*n+1, #]-(2*n+1)]-n)+n`
-/

namespace A381922.P12967132449559828267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat + (n : ℤ)

end

end A381922.P12967132449559828267

/-! ## A381922.P15946636322708561365

`∑[A040739(A067402(n))]`
-/

namespace A381922.P15946636322708561365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040739 (A067402 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381922.P15946636322708561365

/-! ## A381922.P7997941518392633446

`∑[A356501(A355350(n))]`
-/

namespace A381922.P7997941518392633446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356501 (A355350 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381922.P7997941518392633446

/-! ## A381922.P13563977636960052747

`A024661(A032843(n+1))`
-/

namespace A381922.P13563977636960052747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024661 (A032843 (n + 1)).toNat

end

end A381922.P13563977636960052747

/-! ## A381922.P9156126453321387264

`A024661(A032876(n+1))`
-/

namespace A381922.P9156126453321387264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024661 (A032876 (n + 1)).toNat

end

end A381922.P9156126453321387264

/-!
# A381923: a(n) is the least k >= 2 such that (2^k - 1) mod (n*k - 1) = 0.

The programs for A381923, there is no canonical definition to state claims against.
-/

/-! ## A381923.P6380150658086859151

`A293482(A050250(n+1))/3`
-/

namespace A381923.P6380150658086859151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293482 (A050250 (n + 1)).toNat : ℚ) / 3

end

end A381923.P6380150658086859151

/-! ## A381923.P11345431153652824398

`A278222(A303757(∑{d}[n+1, #^6])+1)`
-/

namespace A381923.P11345431153652824398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A303757 (∑ d ∈ Nat.divisors (f1 n), d ^ 6) + 1).toNat

end

end A381923.P11345431153652824398

/-!
# A381924: Multiplicative order of n mod prime(n).

The programs for A381924, there is no canonical definition to state claims against.
-/

/-! ## A381924.P9068092893547054992

`A086145(A007504(n)+1)`
-/

namespace A381924.P9068092893547054992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086145 (A007504 n + 1).toNat

end

end A381924.P9068092893547054992

/-! ## A381924.P4135684411199605599

`A086145(A014284(n+1))`
-/

namespace A381924.P4135684411199605599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086145 (A014284 (n + 1)).toNat

end

end A381924.P4135684411199605599

/-! ## A381924.P4530257482834900249

`A086145(∑[record[A033677(n+1)]])`
-/

namespace A381924.P4530257482834900249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086145 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A381924.P4530257482834900249

/-! ## A381924.P2115487022184129609

`A086145(∑[record[A346704(n+1)]])`
-/

namespace A381924.P2115487022184129609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346704 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086145 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A381924.P2115487022184129609

/-!
# A381929: Ending positions of runs in the regular paperfolding sequence A034947.

The programs for A381929, there is no canonical definition to state claims against.
-/

/-! ## A381929.P6055332829477591358

`∑[A088431(n+1)]`
-/

namespace A381929.P6055332829477591358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381929.P6055332829477591358

/-! ## A381929.P6522225109976612090

`∑[5-A092910(n)]`
-/

namespace A381929.P6522225109976612090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A092910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381929.P6522225109976612090

/-! ## A381929.P12544373942815358991

`eq[0, A090678(n+1)]`
-/

namespace A381929.P12544373942815358991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381929.P12544373942815358991

/-! ## A381929.P13291220311457413976

`eq[0, A110037(n+1)]`
-/

namespace A381929.P13291220311457413976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110037 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381929.P13291220311457413976

/-! ## A381929.P18025360403376216386

`eq[3, A004200(n+1)]`
-/

namespace A381929.P18025360403376216386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381929.P18025360403376216386

/-!
# A381933: a(n) is the number of occurrences of n in A350311.

The programs for A381933, there is no canonical definition to state claims against.
-/

/-! ## A381933.P12204280499254083964

`A043536(A106461(n+1))`
-/

namespace A381933.P12204280499254083964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043536 (A106461 (n + 1)).toNat

end

end A381933.P12204280499254083964

/-! ## A381933.P8832781904515744115

`A139355(or(A000217(n), A001405(n)))`
-/

namespace A381933.P8832781904515744115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (Int.lor (A000217 n) (A001405 n)).toNat

end

end A381933.P8832781904515744115

/-!
# A381935: For any n > 0, a(n) is the least nontrivial multiple of n whose binary expansion has the same number of nonleading zeros as that of n; a(0) = 0.

The programs for A381935, there is no canonical definition to state claims against.
-/

/-! ## A381935.P1505724636816636299

`n*A381934(n)`
-/

namespace A381935.P1505724636816636299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A381934 n

end

end A381935.P1505724636816636299

/-!
# A381936: Number of primitive binary words of length n that avoid 11, start with 1 and end with 0.

The programs for A381936, the canonical program `A381936.P11903548099924584653` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381936 has offset 1).

The definition of A381936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381936.P11903548099924584653

`∑{d}[n+1, A007427(#)*A108046((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A381936

/-- `∑{d}[n+1, A007427(#)*A108046((n+1)/#)]` -/
def P11903548099924584653.Spec : Prop :=
  ∀ n, P11903548099924584653.a n = A381936 (n + 1)

theorem P11903548099924584653.correct : P11903548099924584653.Spec := by
  intro n
  simp only [A381936, Nat.add_sub_cancel]

end A381936

/-! ## A381936.P1530085408864376974

`∑{d}[n+1, A055615(#)*A113166((n+1)/#)]`
-/

namespace A381936.P1530085408864376974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A113166 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A381936.P1530085408864376974

namespace A381936

/-- `∑{d}[n+1, A055615(#)*A113166((n+1)/#)]` -/
def P1530085408864376974.Spec : Prop :=
  ∀ n, P1530085408864376974.a n = A381936 (n + 1)

end A381936

/-! ## A381936.P3586452285424589034

`∑{d}[n+1, A000045(#-1)*A008683((n+1)/#)]`
-/

namespace A381936.P3586452285424589034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A381936.P3586452285424589034

namespace A381936

/-- `∑{d}[n+1, A000045(#-1)*A008683((n+1)/#)]` -/
def P3586452285424589034.Spec : Prop :=
  ∀ n, P3586452285424589034.a n = A381936 (n + 1)

end A381936

/-! ## A381936.P1022055012834064411

`A225202(n+1)-A007436(n+1)`
-/

namespace A381936.P1022055012834064411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225202 (n + 1) - A007436 (n + 1)

end

end A381936.P1022055012834064411

namespace A381936

/-- `A225202(n+1)-A007436(n+1)` -/
def P1022055012834064411.Spec : Prop :=
  ∀ n, P1022055012834064411.a n = A381936 (n + 1)

end A381936

/-!
# A381937: G.f. A(x) satisfies A(x) = (1 + x) * B(x*A(x)), where B(x) is the g.f. of A001764.

The programs for A381937, there is no canonical definition to state claims against.
-/

/-! ## A381937.P12444094794437073571

`A336285(A300913(2*n+1))-and(n, n-1)`
-/

namespace A381937.P12444094794437073571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336285 (A300913 (2 * n + 1)).toNat - Int.land (n : ℤ) ((n : ℤ) - 1)

end

end A381937.P12444094794437073571

/-! ## A381937.P1760884771506878778

`A082481(A205571(n)*A215366(n))`
-/

namespace A381937.P1760884771506878778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082481 (A205571 n * A215366 n).toNat

end

end A381937.P1760884771506878778

/-!
# A381938: G.f. A(x) satisfies A(x) = (1 + x)^2 * B(x*A(x)), where B(x) is the g.f. of A001764.

The programs for A381938, there is no canonical definition to state claims against.
-/

/-! ## A381938.P2304772364093475718

`(n+1)*A127260(a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A381938.P2304772364093475718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n + 1 : ℤ) * A127260 (a (n - 1)).toNat

end

end A381938.P2304772364093475718

/-!
# A381939: G.f. A(x) satisfies A(x) = (1 + x)^3 * B(x*A(x)), where B(x) is the g.f. of A001764.

The programs for A381939, there is no canonical definition to state claims against.
-/

/-! ## A381939.P378859148031410987

`A156077(∑[A144503(n+1)])`
-/

namespace A381939.P378859148031410987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A381939.P378859148031410987

/-!
# A381940: G.f. A(x) satisfies A(x) = (1 + x) * B(x*A(x)), where B(x) is the g.f. of A002293.

The programs for A381940, there is no canonical definition to state claims against.
-/

/-! ## A381940.P866205668979786504

`A237270(C(∑[or(1, n+1)], n))`
-/

namespace A381940.P866205668979786504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A381940.P866205668979786504

/-!
# A381941: G.f. A(x) satisfies A(x) = (1 + x)^2 * B(x*A(x)), where B(x) is the g.f. of A002293.

The programs for A381941, there is no canonical definition to state claims against.
-/

/-! ## A381941.P6735912629635683417

`A256698(C(A000124(n), n))`
-/

namespace A381941.P6735912629635683417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256698 (Nat.choose (A000124 n).toNat n)

end

end A381941.P6735912629635683417

/-!
# A381942: G.f. A(x) satisfies A(x) = (1 + x)^3 * B(x*A(x)), where B(x) is the g.f. of A002293.

The programs for A381942, there is no canonical definition to state claims against.
-/

/-! ## A381942.P1466463472833007748

`∑[∑[A364062(A001105(n+1))]]`
-/

namespace A381942.P1466463472833007748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364062 (A001105 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381942.P1466463472833007748

/-!
# A381943: G.f. A(x) satisfies A(x) = B(x*A(x)) / (1 - x)^2, where B(x) is the g.f. of A001764.

The programs for A381943, there is no canonical definition to state claims against.
-/

/-! ## A381943.P13693909379695550365

`∑[A364592(n)]`
-/

namespace A381943.P13693909379695550365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381943.P13693909379695550365

/-! ## A381943.P4254493275811976673

`∑[∑[A382916(n)]]`
-/

namespace A381943.P4254493275811976673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382916 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381943.P4254493275811976673

/-!
# A381944: G.f. A(x) satisfies A(x) = B(x*A(x)) / (1 - x)^3, where B(x) is the g.f. of A001764.

The programs for A381944, there is no canonical definition to state claims against.
-/

/-! ## A381944.P16769782048045038572

`∑[∑[A349289(n)]]`
-/

namespace A381944.P16769782048045038572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349289 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381944.P16769782048045038572

/-! ## A381944.P4131693769098329496

`∑[∑[∑[A382917(n)]]]`
-/

namespace A381944.P4131693769098329496
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381944.P4131693769098329496

/-!
# A381945: G.f. A(x) satisfies A(x) = B(x*A(x)) / (1 - x)^2, where B(x) is the g.f. of A002293.

The programs for A381945, there is no canonical definition to state claims against.
-/

/-! ## A381945.P2164714085128761828

`A008621(A123307(n+1))`
-/

namespace A381945.P2164714085128761828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A123307 (n + 1)).toNat

end

end A381945.P2164714085128761828

/-!
# A381946: a(n) is the smallest positive integer k with at least one digit > 1 such that k*n contains all the distinct digits of n.

The programs for A381946, there is no canonical definition to state claims against.
-/

/-! ## A381946.P15029522149357672979

`A381700(n+1)/(n+1)`
-/

namespace A381946.P15029522149357672979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381700 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A381946.P15029522149357672979

/-!
# A381947: G.f. A(x) satisfies A(x) = B(x*A(x)) / (1 - x)^3, where B(x) is the g.f. of A002293.

The programs for A381947, there is no canonical definition to state claims against.
-/

/-! ## A381947.P753868644753767800

`∑[∑[A381832(n)]]`
-/

namespace A381947.P753868644753767800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381832 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381947.P753868644753767800

/-!
# A381950: Odd numbers whose prime factorization has an even maximum exponent.

The programs for A381950, the canonical program `A381950.P2231247661708583555` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381950 has offset 1).

The definition of A381950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2014 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381950.P2231247661708583555

`filter[A381956(n+1), A379952(#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A381950

/-- `filter[A381956(n+1), A379952(#)]` -/
def P2231247661708583555.Spec : Prop :=
  ∀ n, P2231247661708583555.a n = A381950 (n + 1)

theorem P2231247661708583555.correct : P2231247661708583555.Spec := by
  intro n
  simp only [A381950, Nat.add_sub_cancel]

end A381950

/-! ## A381950.P1600689185670590274

`∩[A368714(n+1), A381956(n+1)]`
-/

namespace A381950.P1600689185670590274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381950.P1600689185670590274

namespace A381950

/-- `∩[A368714(n+1), A381956(n+1)]` -/
def P1600689185670590274.Spec : Prop :=
  ∀ n, (P1600689185670590274.a n : ℤ) = A381950 (n + 1)

end A381950

/-! ## A381950.P17492630630188558766

`∩[A014076(n+1), A368714(n+1)]`
-/

namespace A381950.P17492630630188558766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381950.P17492630630188558766

namespace A381950

/-- `∩[A014076(n+1), A368714(n+1)]` -/
def P17492630630188558766.Spec : Prop :=
  ∀ n, (P17492630630188558766.a n : ℤ) = A381950 (n + 1)

end A381950

/-! ## A381950.P2606866674941873180

`∩[A014076(n+1), A381956(n+1)]`
-/

namespace A381950.P2606866674941873180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381950.P2606866674941873180

namespace A381950

/-- `∩[A014076(n+1), A381956(n+1)]` -/
def P2606866674941873180.Spec : Prop :=
  ∀ n, (P2606866674941873180.a n : ℤ) = A381950 (n + 1)

end A381950

/-! ## A381950.P14464834913983382132

`∩[A255763(n+1), A368714(n+1)]`
-/

namespace A381950.P14464834913983382132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381950.P14464834913983382132

namespace A381950

/-- `∩[A255763(n+1), A368714(n+1)]` -/
def P14464834913983382132.Spec : Prop :=
  ∀ n, (P14464834913983382132.a n : ℤ) = A381950 (n + 1)

end A381950

/-! ## A381950.P1685405714391419588

`∩[A255763(n+1), A381956(n+1)]`
-/

namespace A381950.P1685405714391419588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381950.P1685405714391419588

namespace A381950

/-- `∩[A255763(n+1), A381956(n+1)]` -/
def P1685405714391419588.Spec : Prop :=
  ∀ n, (P1685405714391419588.a n : ℤ) = A381950 (n + 1)

end A381950

/-! ## A381950.P9660810636371261977

`∩[A368714(n+1), A004273(n)]`
-/

namespace A381950.P9660810636371261977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381950.P9660810636371261977

namespace A381950

/-- `∩[A368714(n+1), A004273(n)]` -/
def P9660810636371261977.Spec : Prop :=
  ∀ n, (P9660810636371261977.a n : ℤ) = A381950 (n + 1)

end A381950

/-! ## A381950.P15814375373659226901

`∩[A368714(n+1), A004274(n)]`
-/

namespace A381950.P15814375373659226901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381950.P15814375373659226901

namespace A381950

/-- `∩[A368714(n+1), A004274(n)]` -/
def P15814375373659226901.Spec : Prop :=
  ∀ n, (P15814375373659226901.a n : ℤ) = A381950 (n + 1)

end A381950

/-! ## A381950.P4410083827873922630

`∩[A381956(n+1), A004273(n)]`
-/

namespace A381950.P4410083827873922630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381950.P4410083827873922630

namespace A381950

/-- `∩[A381956(n+1), A004273(n)]` -/
def P4410083827873922630.Spec : Prop :=
  ∀ n, (P4410083827873922630.a n : ℤ) = A381950 (n + 1)

end A381950

/-! ## A381950.P7779641372624190101

`∩[A368714(n+1), A060747(n)]`
-/

namespace A381950.P7779641372624190101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381950.P7779641372624190101

namespace A381950

/-- `∩[A368714(n+1), A060747(n)]` -/
def P7779641372624190101.Spec : Prop :=
  ∀ n, (P7779641372624190101.a n : ℤ) = A381950 (n + 1)

end A381950

/-! ## A381950.P18182313420196178378

`∩[A381956(n+1), A060747(n)]`
-/

namespace A381950.P18182313420196178378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381950.P18182313420196178378

namespace A381950

/-- `∩[A381956(n+1), A060747(n)]` -/
def P18182313420196178378.Spec : Prop :=
  ∀ n, (P18182313420196178378.a n : ℤ) = A381950 (n + 1)

end A381950

/-! ## A381950.P10911078821381048221

`∩[A368714(n+1), A163985(n)]`
-/

namespace A381950.P10911078821381048221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381950.P10911078821381048221

namespace A381950

/-- `∩[A368714(n+1), A163985(n)]` -/
def P10911078821381048221.Spec : Prop :=
  ∀ n, (P10911078821381048221.a n : ℤ) = A381950 (n + 1)

end A381950

/-! ## A381950.P16263163704311705

`∩[A381956(n+1), A223134(n)]`
-/

namespace A381950.P16263163704311705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381950.P16263163704311705

namespace A381950

/-- `∩[A381956(n+1), A223134(n)]` -/
def P16263163704311705.Spec : Prop :=
  ∀ n, (P16263163704311705.a n : ℤ) = A381950 (n + 1)

end A381950

/-! ## A381950.P14642041039597884156

`∩[A004280(n+1), A368714(n+1)]`
-/

namespace A381950.P14642041039597884156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381950.P14642041039597884156

namespace A381950

/-- `∩[A004280(n+1), A368714(n+1)]` -/
def P14642041039597884156.Spec : Prop :=
  ∀ n, (P14642041039597884156.a n : ℤ) = A381950 (n + 1)

end A381950

/-! ## A381950.P791982903204390103

`∩[A140139(n+1), A368714(n+1)]`
-/

namespace A381950.P791982903204390103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381950.P791982903204390103

namespace A381950

/-- `∩[A140139(n+1), A368714(n+1)]` -/
def P791982903204390103.Spec : Prop :=
  ∀ n, (P791982903204390103.a n : ℤ) = A381950 (n + 1)

end A381950

/-! ## A381950.P1567047455442004586

`∩[A128201(n+1), A381956(n+1)]`
-/

namespace A381950.P1567047455442004586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381950.P1567047455442004586

namespace A381950

/-- `∩[A128201(n+1), A381956(n+1)]` -/
def P1567047455442004586.Spec : Prop :=
  ∀ n, (P1567047455442004586.a n : ℤ) = A381950 (n + 1)

end A381950

/-! ## A381950.P7375939226213270263

`filter[A368714(n+1), A000035(#)]`
-/

namespace A381950.P7375939226213270263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A381950.P7375939226213270263

namespace A381950

/-- `filter[A368714(n+1), A000035(#)]` -/
def P7375939226213270263.Spec : Prop :=
  ∀ n, P7375939226213270263.a n = A381950 (n + 1)

end A381950

/-! ## A381950.P16903515490338430977

`filter[A381956(n+1), A000035(#)]`
-/

namespace A381950.P16903515490338430977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A381950.P16903515490338430977

namespace A381950

/-- `filter[A381956(n+1), A000035(#)]` -/
def P16903515490338430977.Spec : Prop :=
  ∀ n, P16903515490338430977.a n = A381950 (n + 1)

end A381950

/-!
# A381951: Nonsquarefree odd numbers whose prime factorization has an odd maximum exponent.

The programs for A381951, the canonical program `A381951.P16929426520888599023` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381951 has offset 1).

The definition of A381951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1644 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381951.P16929426520888599023

`∩[A053850(n+1), A376142(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A381951

/-- `∩[A053850(n+1), A376142(n+1)]` -/
def P16929426520888599023.Spec : Prop :=
  ∀ n, (P16929426520888599023.a n : ℤ) = A381951 (n + 1)

theorem P16929426520888599023.correct : P16929426520888599023.Spec := by
  intro n
  simp only [A381951, Nat.add_sub_cancel]

end A381951

/-! ## A381951.P18387185110095032733

`∩[A274720(n+1), A376142(n+1)]`
-/

namespace A381951.P18387185110095032733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381951.P18387185110095032733

namespace A381951

/-- `∩[A274720(n+1), A376142(n+1)]` -/
def P18387185110095032733.Spec : Prop :=
  ∀ n, (P18387185110095032733.a n : ℤ) = A381951 (n + 1)

end A381951

/-! ## A381951.P2907489902764510815

`∩[A139392(n+1), A376142(n+1)]`
-/

namespace A381951.P2907489902764510815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381951.P2907489902764510815

namespace A381951

/-- `∩[A139392(n+1), A376142(n+1)]` -/
def P2907489902764510815.Spec : Prop :=
  ∀ n, (P2907489902764510815.a n : ℤ) = A381951 (n + 1)

end A381951

/-! ## A381951.P14765872578453232220

`∩[A176847(n+1), A376142(n+1)]`
-/

namespace A381951.P14765872578453232220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381951.P14765872578453232220

namespace A381951

/-- `∩[A176847(n+1), A376142(n+1)]` -/
def P14765872578453232220.Spec : Prop :=
  ∀ n, (P14765872578453232220.a n : ℤ) = A381951 (n + 1)

end A381951

/-! ## A381951.P1085517423905065237

`∩[A060476(n+1), A082686(n+1)]`
-/

namespace A381951.P1085517423905065237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381951.P1085517423905065237

namespace A381951

/-- `∩[A060476(n+1), A082686(n+1)]` -/
def P1085517423905065237.Spec : Prop :=
  ∀ n, (P1085517423905065237.a n : ℤ) = A381951 (n + 1)

end A381951

/-! ## A381951.P7050676423451709405

`∩[A082686(n+1), A376142(n+1)]`
-/

namespace A381951.P7050676423451709405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381951.P7050676423451709405

namespace A381951

/-- `∩[A082686(n+1), A376142(n+1)]` -/
def P7050676423451709405.Spec : Prop :=
  ∀ n, (P7050676423451709405.a n : ℤ) = A381951 (n + 1)

end A381951

/-! ## A381951.P561897599926947203

`∩[A226025(n+1), A376142(n+1)]`
-/

namespace A381951.P561897599926947203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381951.P561897599926947203

namespace A381951

/-- `∩[A226025(n+1), A376142(n+1)]` -/
def P561897599926947203.Spec : Prop :=
  ∀ n, (P561897599926947203.a n : ℤ) = A381951 (n + 1)

end A381951

/-! ## A381951.P6535981065170424022

`∩[A014076(n+1), A376142(n+1)]`
-/

namespace A381951.P6535981065170424022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381951.P6535981065170424022

namespace A381951

/-- `∩[A014076(n+1), A376142(n+1)]` -/
def P6535981065170424022.Spec : Prop :=
  ∀ n, (P6535981065170424022.a n : ℤ) = A381951 (n + 1)

end A381951

/-! ## A381951.P11646528706024350250

`∩[A071904(n+1), A376142(n+1)]`
-/

namespace A381951.P11646528706024350250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381951.P11646528706024350250

namespace A381951

/-- `∩[A071904(n+1), A376142(n+1)]` -/
def P11646528706024350250.Spec : Prop :=
  ∀ n, (P11646528706024350250.a n : ℤ) = A381951 (n + 1)

end A381951

/-! ## A381951.P12520252660886421211

`∩[A257521(n+1), A376142(n+1)]`
-/

namespace A381951.P12520252660886421211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381951.P12520252660886421211

namespace A381951

/-- `∩[A257521(n+1), A376142(n+1)]` -/
def P12520252660886421211.Spec : Prop :=
  ∀ n, (P12520252660886421211.a n : ℤ) = A381951 (n + 1)

end A381951

/-! ## A381951.P12674631091947119122

`∩[A060476(n+1), A088828(n+1)]`
-/

namespace A381951.P12674631091947119122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381951.P12674631091947119122

namespace A381951

/-- `∩[A060476(n+1), A088828(n+1)]` -/
def P12674631091947119122.Spec : Prop :=
  ∀ n, (P12674631091947119122.a n : ℤ) = A381951 (n + 1)

end A381951

/-! ## A381951.P13001535647024328118

`∩[A020742(n), A376142(n+1)]`
-/

namespace A381951.P13001535647024328118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381951.P13001535647024328118

namespace A381951

/-- `∩[A020742(n), A376142(n+1)]` -/
def P13001535647024328118.Spec : Prop :=
  ∀ n, (P13001535647024328118.a n : ℤ) = A381951 (n + 1)

end A381951

/-! ## A381951.P2130918923488331175

`filter[A295661(n+1), A000035(#)]`
-/

namespace A381951.P2130918923488331175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A381951.P2130918923488331175

namespace A381951

/-- `filter[A295661(n+1), A000035(#)]` -/
def P2130918923488331175.Spec : Prop :=
  ∀ n, P2130918923488331175.a n = A381951 (n + 1)

end A381951

/-! ## A381951.P13346539909114364934

`filter[A376142(n+1), A000035(#)]`
-/

namespace A381951.P13346539909114364934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A381951.P13346539909114364934

namespace A381951

/-- `filter[A376142(n+1), A000035(#)]` -/
def P13346539909114364934.Spec : Prop :=
  ∀ n, P13346539909114364934.a n = A381951 (n + 1)

end A381951

/-! ## A381951.P13740872372151324051

`filter[A053850(n+1), A381955(#)]`
-/

namespace A381951.P13740872372151324051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A381951.P13740872372151324051

namespace A381951

/-- `filter[A053850(n+1), A381955(#)]` -/
def P13740872372151324051.Spec : Prop :=
  ∀ n, P13740872372151324051.a n = A381951 (n + 1)

end A381951

/-!
# A381952: a(n) is the greatest common divisor of n and the maximum exponent in the prime factorization of n.

The programs for A381952, the canonical program `A381952.P13602993248681907933` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381952 has offset 1).

The definition of A381952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381952.P13602993248681907933

`gcd(n+1, A051903(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A381952

/-- `gcd(n+1, A051903(n+1))` -/
def P13602993248681907933.Spec : Prop :=
  ∀ n, (P13602993248681907933.a n : ℤ) = A381952 (n + 1)

theorem P13602993248681907933.correct : P13602993248681907933.Spec := by
  intro n
  simp only [A381952, Nat.add_sub_cancel]

end A381952

/-! ## A381952.P7848497163103004734

`gcd(xor(n, -1), A001222(A238745(n+1)))`
-/

namespace A381952.P7848497163103004734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A001222 (A238745 (n + 1)).toNat)

end

end A381952.P7848497163103004734

namespace A381952

/-- `gcd(xor(n, -1), A001222(A238745(n+1)))` -/
def P7848497163103004734.Spec : Prop :=
  ∀ n, (P7848497163103004734.a n : ℤ) = A381952 (n + 1)

end A381952

/-! ## A381952.P1333096939747506657

`gcd((n+1)*(-1)^∑{e}[n+1, #], A007814(A046523(n+1)))`
-/

namespace A381952.P1333096939747506657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) * (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A007814 (A046523 (n + 1)).toNat)

end

end A381952.P1333096939747506657

namespace A381952

/-- `gcd((n+1)*(-1)^∑{e}[n+1, #], A007814(A046523(n+1)))` -/
def P1333096939747506657.Spec : Prop :=
  ∀ n, (P1333096939747506657.a n : ℤ) = A381952 (n + 1)

end A381952

/-! ## A381952.P9378747093429933110

`gcd(A001511(A292589(n+1)), A023444(n+3))`
-/

namespace A381952.P9378747093429933110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001511 (A292589 (n + 1)).toNat) (A023444 (n + 3))

end

end A381952.P9378747093429933110

namespace A381952

/-- `gcd(A001511(A292589(n+1)), A023444(n+3))` -/
def P9378747093429933110.Spec : Prop :=
  ∀ n, (P9378747093429933110.a n : ℤ) = A381952 (n + 1)

end A381952

/-! ## A381952.P2430703883812200922

`gcd(A001222(A304180(n+1)), A253560(n+1))`
-/

namespace A381952.P2430703883812200922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A304180 (n + 1)).toNat) (A253560 (n + 1))

end

end A381952.P2430703883812200922

namespace A381952

/-- `gcd(A001222(A304180(n+1)), A253560(n+1))` -/
def P2430703883812200922.Spec : Prop :=
  ∀ n, (P2430703883812200922.a n : ℤ) = A381952 (n + 1)

end A381952

/-! ## A381952.P11847736722276162334

`gcd(A075828(n+1), A324912(n+1))`
-/

namespace A381952.P11847736722276162334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075828 (n + 1)) (A324912 (n + 1))

end

end A381952.P11847736722276162334

namespace A381952

/-- `gcd(A075828(n+1), A324912(n+1))` -/
def P11847736722276162334.Spec : Prop :=
  ∀ n, (P11847736722276162334.a n : ℤ) = A381952 (n + 1)

end A381952

/-! ## A381952.P14473262783435103182

`gcd(A001221(A124859(n+1)), A053143(n+1))`
-/

namespace A381952.P14473262783435103182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A124859 (n + 1)).toNat) (A053143 (n + 1))

end

end A381952.P14473262783435103182

namespace A381952

/-- `gcd(A001221(A124859(n+1)), A053143(n+1))` -/
def P14473262783435103182.Spec : Prop :=
  ∀ n, (P14473262783435103182.a n : ℤ) = A381952 (n + 1)

end A381952

/-! ## A381952.P10061527705671513854

`gcd(A005361(n+1), A346701(n+1))`
-/

namespace A381952.P10061527705671513854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005361 (n + 1)) (A346701 (n + 1))

end

end A381952.P10061527705671513854

namespace A381952

/-- `gcd(A005361(n+1), A346701(n+1))` -/
def P10061527705671513854.Spec : Prop :=
  ∀ n, (P10061527705671513854.a n : ℤ) = A381952 (n + 1)

end A381952

/-!
# A381953: Numbers k such that A381952(k) = 2.

The programs for A381953, the canonical program `A381953.P14987201644516485454` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381953 has offset 1).

The definition of A381953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1619 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381953.P14987201644516485454

`eq[2, A381952(n+1)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A381953

/-- `eq[2, A381952(n+1)]+1` -/
def P14987201644516485454.Spec : Prop :=
  ∀ n, (P14987201644516485454.a n : ℤ) = A381953 (n + 1)

theorem P14987201644516485454.correct : P14987201644516485454.Spec := by
  intro n
  simp only [A381953, Nat.add_sub_cancel]

end A381953

/-! ## A381953.P5219801743879865470

`∩[A336594(n+1), A366846(n+1)+2]`
-/

namespace A381953.P5219801743879865470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366846 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381953.P5219801743879865470

namespace A381953

/-- `∩[A336594(n+1), A366846(n+1)+2]` -/
def P5219801743879865470.Spec : Prop :=
  ∀ n, (P5219801743879865470.a n : ℤ) = A381953 (n + 1)

end A381953

/-! ## A381953.P13495948180766658229

`∩[A336594(n+1), A366846(n+1)]`
-/

namespace A381953.P13495948180766658229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381953.P13495948180766658229

namespace A381953

/-- `∩[A336594(n+1), A366846(n+1)]` -/
def P13495948180766658229.Spec : Prop :=
  ∀ n, (P13495948180766658229.a n : ℤ) = A381953 (n + 1)

end A381953

/-! ## A381953.P9779458298511084355

`∩[A336594(n+1), A356066(n+1)]`
-/

namespace A381953.P9779458298511084355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381953.P9779458298511084355

namespace A381953

/-- `∩[A336594(n+1), A356066(n+1)]` -/
def P9779458298511084355.Spec : Prop :=
  ∀ n, (P9779458298511084355.a n : ℤ) = A381953 (n + 1)

end A381953

/-! ## A381953.P1330765463348482733

`∩[A336594(n+1), A361233(n+1)]`
-/

namespace A381953.P1330765463348482733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361233 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381953.P1330765463348482733

namespace A381953

/-- `∩[A336594(n+1), A361233(n+1)]` -/
def P1330765463348482733.Spec : Prop :=
  ∀ n, (P1330765463348482733.a n : ℤ) = A381953 (n + 1)

end A381953

/-!
# A381954: The maximum exponent in the prime factorization of n that is coprime to n, or 0 if no such exponent exists.

The programs for A381954, there is no canonical definition to state claims against.
-/

/-! ## A381954.P8769755572496659400

`A051904(n+1)%A328673(A328673(n+1))`
-/

namespace A381954.P8769755572496659400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051904 (n + 1)) (A328673 (A328673 (n + 1)).toNat)

end

end A381954.P8769755572496659400

/-! ## A381954.P7830047861370769682

`A052409(n+1)%A013655(A322279(n))`
-/

namespace A381954.P7830047861370769682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052409 (n + 1)) (A013655 (A322279 n).toNat)

end

end A381954.P7830047861370769682

/-! ## A381954.P11712535413199993959

`and(A039790(A140073(3*n+4)), A051904(n+1))`
-/

namespace A381954.P11712535413199993959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A039790 (A140073 (3 * n + 4)).toNat) (A051904 (n + 1))

end

end A381954.P11712535413199993959

/-! ## A381954.P13248713618013005106

`and(-A096672(2*n+3), A052409(n+1))`
-/

namespace A381954.P13248713618013005106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A096672 (2 * n + 3)) (A052409 (n + 1))

end

end A381954.P13248713618013005106

/-! ## A381954.P18348574862392365335

`and(A052409(n+1), A113584((n+1)²/∏{p}[n+1, #]))`
-/

namespace A381954.P18348574862392365335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052409 (n + 1)) (A113584 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A381954.P18348574862392365335

/-!
# A381955: a(n) = A051903(n) mod 2.

The programs for A381955, the canonical program `A381955.P11228825937713064055` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381955 has offset 1).

The definition of A381955 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A381955.P11228825937713064055

`A000035(A051903(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A381955

/-- `A000035(A051903(n+1))` -/
def P11228825937713064055.Spec : Prop :=
  ∀ n, P11228825937713064055.a n = A381955 (n + 1)

theorem P11228825937713064055.correct : P11228825937713064055.Spec := by
  intro n
  simp only [A381955, Nat.add_sub_cancel]

end A381955

/-! ## A381955.P15229429670422594568

`(1-A376139(n+1))/2`
-/

namespace A381955.P15229429670422594568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A376139 (n + 1) : ℚ) / 2

end

end A381955.P15229429670422594568

namespace A381955

/-- `(1-A376139(n+1))/2` -/
def P15229429670422594568.Spec : Prop :=
  ∀ n, P15229429670422594568.a n = (A381955 (n + 1) : ℚ)

end A381955

/-! ## A381955.P2418656200405128919

`gcd(2, A067132(n+1))-1`
-/

namespace A381955.P2418656200405128919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A067132 (n + 1)) : ℤ) - 1

end

end A381955.P2418656200405128919

namespace A381955

/-- `gcd(2, A067132(n+1))-1` -/
def P2418656200405128919.Spec : Prop :=
  ∀ n, P2418656200405128919.a n = A381955 (n + 1)

end A381955

/-! ## A381955.P5423453351707346101

`A098108(A051903(n+1)²)`
-/

namespace A381955.P5423453351707346101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 (A051903 (n + 1) ^ 2).toNat

end

end A381955.P5423453351707346101

namespace A381955

/-- `A098108(A051903(n+1)²)` -/
def P5423453351707346101.Spec : Prop :=
  ∀ n, P5423453351707346101.a n = A381955 (n + 1)

end A381955

/-! ## A381955.P17615721635158416543

`A096268(A046523(n+1)-1)`
-/

namespace A381955.P17615721635158416543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A046523 (n + 1) - 1).toNat

end

end A381955.P17615721635158416543

namespace A381955

/-- `A096268(A046523(n+1)-1)` -/
def P17615721635158416543.Spec : Prop :=
  ∀ n, P17615721635158416543.a n = A381955 (n + 1)

end A381955

/-! ## A381955.P18181409326451927886

`A014707(2*A051903(n+1))`
-/

namespace A381955.P18181409326451927886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (2 * A051903 (n + 1)).toNat

end

end A381955.P18181409326451927886

namespace A381955

/-- `A014707(2*A051903(n+1))` -/
def P18181409326451927886.Spec : Prop :=
  ∀ n, P18181409326451927886.a n = A381955 (n + 1)

end A381955

/-! ## A381955.P10653793030239767461

`and(A001846(n), A051903(n+1))`
-/

namespace A381955.P10653793030239767461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A051903 (n + 1))

end

end A381955.P10653793030239767461

namespace A381955

/-- `and(A001846(n), A051903(n+1))` -/
def P10653793030239767461.Spec : Prop :=
  ∀ n, P10653793030239767461.a n = A381955 (n + 1)

end A381955

/-! ## A381955.P9224480934512571565

`and(A007204(n), A051903(n+1))`
-/

namespace A381955.P9224480934512571565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007204 n) (A051903 (n + 1))

end

end A381955.P9224480934512571565

namespace A381955

/-- `and(A007204(n), A051903(n+1))` -/
def P9224480934512571565.Spec : Prop :=
  ∀ n, P9224480934512571565.a n = A381955 (n + 1)

end A381955

/-! ## A381955.P6424895119320063262

`and(A007664(n), A051903(n+1))`
-/

namespace A381955.P6424895119320063262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007664 n) (A051903 (n + 1))

end

end A381955.P6424895119320063262

namespace A381955

/-- `and(A007664(n), A051903(n+1))` -/
def P6424895119320063262.Spec : Prop :=
  ∀ n, P6424895119320063262.a n = A381955 (n + 1)

end A381955

/-! ## A381955.P16906890115365793013

`and(A008349(n), A051903(n+1))`
-/

namespace A381955.P16906890115365793013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A051903 (n + 1))

end

end A381955.P16906890115365793013

namespace A381955

/-- `and(A008349(n), A051903(n+1))` -/
def P16906890115365793013.Spec : Prop :=
  ∀ n, P16906890115365793013.a n = A381955 (n + 1)

end A381955

/-! ## A381955.P8909724728532417702

`and(A016760(n), A051903(n+1))`
-/

namespace A381955.P8909724728532417702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A051903 (n + 1))

end

end A381955.P8909724728532417702

namespace A381955

/-- `and(A016760(n), A051903(n+1))` -/
def P8909724728532417702.Spec : Prop :=
  ∀ n, P8909724728532417702.a n = A381955 (n + 1)

end A381955

/-! ## A381955.P1807594614431136030

`and(A016820(n), A051903(n+1))`
-/

namespace A381955.P1807594614431136030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A051903 (n + 1))

end

end A381955.P1807594614431136030

namespace A381955

/-- `and(A016820(n), A051903(n+1))` -/
def P1807594614431136030.Spec : Prop :=
  ∀ n, P1807594614431136030.a n = A381955 (n + 1)

end A381955

/-! ## A381955.P4852657363783899616

`and(A017286(n), A051903(n+1))`
-/

namespace A381955.P4852657363783899616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017286 n) (A051903 (n + 1))

end

end A381955.P4852657363783899616

namespace A381955

/-- `and(A017286(n), A051903(n+1))` -/
def P4852657363783899616.Spec : Prop :=
  ∀ n, P4852657363783899616.a n = A381955 (n + 1)

end A381955

/-! ## A381955.P10153976427152704667

`and(A017382(n), A051903(n+1))`
-/

namespace A381955.P10153976427152704667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017382 n) (A051903 (n + 1))

end

end A381955.P10153976427152704667

namespace A381955

/-- `and(A017382(n), A051903(n+1))` -/
def P10153976427152704667.Spec : Prop :=
  ∀ n, P10153976427152704667.a n = A381955 (n + 1)

end A381955

/-! ## A381955.P11007827970317262607

`and(A036088(n), A051903(n+1))`
-/

namespace A381955.P11007827970317262607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036088 n) (A051903 (n + 1))

end

end A381955.P11007827970317262607

namespace A381955

/-- `and(A036088(n), A051903(n+1))` -/
def P11007827970317262607.Spec : Prop :=
  ∀ n, P11007827970317262607.a n = A381955 (n + 1)

end A381955

/-! ## A381955.P16744107311928443780

`and(A051903(n+1), A055428(n))`
-/

namespace A381955.P16744107311928443780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051903 (n + 1)) (A055428 n)

end

end A381955.P16744107311928443780

namespace A381955

/-- `and(A051903(n+1), A055428(n))` -/
def P16744107311928443780.Spec : Prop :=
  ∀ n, P16744107311928443780.a n = A381955 (n + 1)

end A381955

/-! ## A381955.P8126564679753974597

`A051903(n+1)-A372602(n+1)`
-/

namespace A381955.P8126564679753974597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - A372602 (n + 1)

end

end A381955.P8126564679753974597

namespace A381955

/-- `A051903(n+1)-A372602(n+1)` -/
def P8126564679753974597.Spec : Prop :=
  ∀ n, P8126564679753974597.a n = A381955 (n + 1)

end A381955

/-! ## A381955.P6004358600725505083

`A372601(n+1)-A066301(n+1)`
-/

namespace A381955.P6004358600725505083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372601 (n + 1) - A066301 (n + 1)

end

end A381955.P6004358600725505083

namespace A381955

/-- `A372601(n+1)-A066301(n+1)` -/
def P6004358600725505083.Spec : Prop :=
  ∀ n, P6004358600725505083.a n = A381955 (n + 1)

end A381955

/-! ## A381955.P6602551940993343039

`A375359(n+1)-A392276(n+1)`
-/

namespace A381955.P6602551940993343039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375359 (n + 1) - A392276 (n + 1)

end

end A381955.P6602551940993343039

namespace A381955

/-- `A375359(n+1)-A392276(n+1)` -/
def P6602551940993343039.Spec : Prop :=
  ∀ n, P6602551940993343039.a n = A381955 (n + 1)

end A381955

/-!
# A381956: Numbers k such that k and the maximum exponent in the prime factorization of k have opposite parities.

The programs for A381956, the canonical program `A381956.P13911455406183739414` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381956 has offset 1).

The definition of A381956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3752 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381956.P13911455406183739414

`eq[A033999(n), A376139(n+1)]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A381956

/-- `eq[A033999(n), A376139(n+1)]+1` -/
def P13911455406183739414.Spec : Prop :=
  ∀ n, (P13911455406183739414.a n : ℤ) = A381956 (n + 1)

theorem P13911455406183739414.correct : P13911455406183739414.Spec := by
  intro n
  simp only [A381956, Nat.add_sub_cancel]

end A381956

/-! ## A381956.P8022188284148986745

`lt[val(A047398(n+4)-A067132(n+1), 2), 1]+1`
-/

namespace A381956.P8022188284148986745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A047398 (n + 4) - A067132 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A381956.P8022188284148986745

namespace A381956

/-- `lt[val(A047398(n+4)-A067132(n+1), 2), 1]+1` -/
def P8022188284148986745.Spec : Prop :=
  ∀ n, (P8022188284148986745.a n : ℤ) = A381956 (n + 1)

end A381956

/-!
# A381957: If n = Sum 2^e(k), then a(n) = Sum 2^a(e(k)), with a(0) = 1.

The programs for A381957, there is no canonical definition to state claims against.
-/

/-! ## A381957.P12257851512432449000

`A283991(∑[2^n]+2)+A000695(n)`
-/

namespace A381957.P12257851512432449000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283991 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A000695 n

end

end A381957.P12257851512432449000

/-! ## A381957.P3224843830246690256

`A000695(n)+A000035(A004730(n))`
-/

namespace A381957.P3224843830246690256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n + A000035 (A004730 n).toNat

end

end A381957.P3224843830246690256

/-! ## A381957.P18059761609996038870

`A074941(A011782(n))+A000695(n)`
-/

namespace A381957.P18059761609996038870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074941 (A011782 n).toNat + A000695 n

end

end A381957.P18059761609996038870

/-! ## A381957.P10802215324941121509

`A039964(A087503(n))+A000695(n)`
-/

namespace A381957.P10802215324941121509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039964 (A087503 n).toNat + A000695 n

end

end A381957.P10802215324941121509

/-! ## A381957.P1123668314850728574

`A010057(A134761(n))+A000695(n)`
-/

namespace A381957.P1123668314850728574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A134761 n).toNat + A000695 n

end

end A381957.P1123668314850728574

/-!
# A381958: Numerator of the sum of the reciprocals of the indices of distinct prime factors of n.

The programs for A381958, there is no canonical definition to state claims against.
-/

/-! ## A381958.P268149602422275497

`A318573(∏{p}[n+1, #])`
-/

namespace A381958.P268149602422275497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A381958.P268149602422275497

/-! ## A381958.P1056757997068084393

`A318573(abs(∏{p}[2*n-(n-1), -#]))`
-/

namespace A381958.P1056757997068084393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 |∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))|.toNat

end

end A381958.P1056757997068084393

/-! ## A381958.P5045317142584966689

`A318573(A007947(n+1))`
-/

namespace A381958.P5045317142584966689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A007947 (n + 1)).toNat

end

end A381958.P5045317142584966689

/-! ## A381958.P3879895452336631468

`A318573(A073353(n+1)-(n+1))`
-/

namespace A381958.P3879895452336631468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A073353 (n + 1) - (n + 1 : ℤ)).toNat

end

end A381958.P3879895452336631468

/-! ## A381958.P246291465616692419

`A318573(A355038(n+1)%(n+2))`
-/

namespace A381958.P246291465616692419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (Int.tmod (A355038 (n + 1)) (n + 2 : ℤ)).toNat

end

end A381958.P246291465616692419

/-!
# A381959: Denominator of the sum of the reciprocals of the indices of distinct prime factors of n.

The programs for A381959, there is no canonical definition to state claims against.
-/

/-! ## A381959.P7247628235673604026

`A318574(∏{p}[n+1, #])`
-/

namespace A381959.P7247628235673604026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A381959.P7247628235673604026

/-! ## A381959.P3676221904979744441

`A318574(A007947(n+1))`
-/

namespace A381959.P3676221904979744441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (A007947 (n + 1)).toNat

end

end A381959.P3676221904979744441

/-! ## A381959.P10805575630578448136

`A318574(A204455(n+1))`
-/

namespace A381959.P10805575630578448136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (A204455 (n + 1)).toNat

end

end A381959.P10805575630578448136

/-! ## A381959.P7002699496123045798

`A318574(A099985(n+1)/2)`
-/

namespace A381959.P7002699496123045798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (SequenceMachineLib.roundAway ((A099985 (n + 1) : ℚ) / 2)).toNat

end

end A381959.P7002699496123045798

/-! ## A381959.P6563838307186097519

`A318574(A099985(n+1))`
-/

namespace A381959.P6563838307186097519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (A099985 (n + 1)).toNat

end

end A381959.P6563838307186097519

/-! ## A381959.P1546060711965009403

`A318574(A066069(2*(n+1))/2)`
-/

namespace A381959.P1546060711965009403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (SequenceMachineLib.roundAway ((A066069 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A381959.P1546060711965009403

/-! ## A381959.P12980476411620711893

`A318574(A302138(n+1))`
-/

namespace A381959.P12980476411620711893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (A302138 (n + 1)).toNat

end

end A381959.P12980476411620711893

/-! ## A381959.P15904101509759246820

`A318574(A234001(n+1))`
-/

namespace A381959.P15904101509759246820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (A234001 (n + 1)).toNat

end

end A381959.P15904101509759246820

/-!
# A381960: Centered heptagonal numbers which are semiprime.

The programs for A381960, the canonical program `A381960.P9260665079646800432` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381960 has offset 1).

The definition of A381960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381960.P9260665079646800432

`∩[A069099(n+1), A186525(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A381960

/-- `∩[A069099(n+1), A186525(n+1)]` -/
def P9260665079646800432.Spec : Prop :=
  ∀ n, (P9260665079646800432.a n : ℤ) = A381960 (n + 1)

theorem P9260665079646800432.correct : P9260665079646800432.Spec := by
  intro n
  simp only [A381960, Nat.add_sub_cancel]

end A381960

/-! ## A381960.P12223577812155335902

`filter[A069099(n+1), A064911(#)]`
-/

namespace A381960.P12223577812155335902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A381960.P12223577812155335902

namespace A381960

/-- `filter[A069099(n+1), A064911(#)]` -/
def P12223577812155335902.Spec : Prop :=
  ∀ n, P12223577812155335902.a n = A381960 (n + 1)

end A381960

/-! ## A381960.P8618099524745550500

`filter[A362869(2*n+1), A064911(#)]`
-/

namespace A381960.P8618099524745550500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362869 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A381960.P8618099524745550500

namespace A381960

/-- `filter[A362869(2*n+1), A064911(#)]` -/
def P8618099524745550500.Spec : Prop :=
  ∀ n, P8618099524745550500.a n = A381960 (n + 1)

end A381960

/-! ## A381960.P1256422642524251037

`∩[A069099(n+1), A001358(n+4)]`
-/

namespace A381960.P1256422642524251037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381960.P1256422642524251037

namespace A381960

/-- `∩[A069099(n+1), A001358(n+4)]` -/
def P1256422642524251037.Spec : Prop :=
  ∀ n, (P1256422642524251037.a n : ℤ) = A381960 (n + 1)

end A381960

/-!
# A381964: Row sums of A381963.

The programs for A381964, the canonical program `A381964.P10364556719248759168` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381964 has offset 0).

The definition of A381964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381964.P10364556719248759168

`a(A007953(n)%n)+n` with `a(0)=0`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A381964

/-- `a(A007953(n)%n)+n` -/
def P10364556719248759168.Spec : Prop :=
  ∀ n, (P10364556719248759168.a n : ℤ) = A381964 n

theorem P10364556719248759168.correct : P10364556719248759168.Spec := by
  intro n
  simp only [A381964]

end A381964

/-! ## A381964.P12540856161042661573

`A071980(n)+A047752(A134628(3*n+2))`
-/

namespace A381964.P12540856161042661573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071980 n + A047752 (A134628 (3 * n + 2)).toNat

end

end A381964.P12540856161042661573

namespace A381964

/-- `A071980(n)+A047752(A134628(3*n+2))` -/
def P12540856161042661573.Spec : Prop :=
  ∀ n, P12540856161042661573.a n = A381964 n

end A381964

/-!
# A381965: Irregular triangle read by rows, where row n lists the iterates of f(x), starting at x = n until f(x) < 10, where f(x) is the multiplicative digital root of x (A031347).

The programs for A381965, there is no canonical definition to state claims against.
-/

/-! ## A381965.P54289832011609870

`A329079(A281873(n+1))`
-/

namespace A381965.P54289832011609870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329079 (A281873 (n + 1)).toNat

end

end A381965.P54289832011609870

/-! ## A381965.P7653771546210525486

`A025685(A281873(n+1)²)`
-/

namespace A381965.P7653771546210525486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025685 (A281873 (n + 1) ^ 2).toNat

end

end A381965.P7653771546210525486

/-! ## A381965.P17951789474267122233

`A329079(A153679(n+1))`
-/

namespace A381965.P17951789474267122233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329079 (A153679 (n + 1)).toNat

end

end A381965.P17951789474267122233

/-! ## A381965.P12609863656063345854

`A329079(A090106(n+1))`
-/

namespace A381965.P12609863656063345854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329079 (A090106 (n + 1)).toNat

end

end A381965.P12609863656063345854

/-! ## A381965.P7890466040887931587

`A329079(n+1)+A000007(A270831(n+1))`
-/

namespace A381965.P7890466040887931587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329079 (n + 1) + A000007 (A270831 (n + 1)).toNat

end

end A381965.P7890466040887931587

/-!
# A381966: Row sums of A381965.

The programs for A381966, the canonical program `A381966.P8434937009853700852` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381966 has offset 0).

The definition of A381966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381966.P8434937009853700852

`a(∏{digits}[n, #]%n)+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A381966

/-- `a(∏{digits}[n, #]%n)+n` -/
def P8434937009853700852.Spec : Prop :=
  ∀ n, (P8434937009853700852.a n : ℤ) = A381966 n

theorem P8434937009853700852.correct : P8434937009853700852.Spec := by
  intro n
  simp only [A381966]

end A381966

/-! ## A381966.P12811458151603725904

`a(A171765(n))+n` with `a(0)=0`
-/

namespace A381966.P12811458151603725904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A171765 n).toNat + n

end

end A381966.P12811458151603725904

namespace A381966

/-- `a(A171765(n))+n` -/
def P12811458151603725904.Spec : Prop :=
  ∀ n, (P12811458151603725904.a n : ℤ) = A381966 n

end A381966

/-! ## A381966.P96178083352217727

`a(A007954(n)%n)+n` with `a(0)=0`
-/

namespace A381966.P96178083352217727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.tmod (A007954 n) (n : ℤ)).toNat + n

end

end A381966.P96178083352217727

namespace A381966

/-- `a(A007954(n)%n)+n` -/
def P96178083352217727.Spec : Prop :=
  ∀ n, (P96178083352217727.a n : ℤ) = A381966 n

end A381966

/-! ## A381966.P3984375210744397469

`A257850(n)+n%A109098(n+1)`
-/

namespace A381966.P3984375210744397469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257850 n + Int.tmod (n : ℤ) (A109098 (n + 1))

end

end A381966.P3984375210744397469

namespace A381966

/-- `A257850(n)+n%A109098(n+1)` -/
def P3984375210744397469.Spec : Prop :=
  ∀ n, P3984375210744397469.a n = A381966 n

end A381966

/-! ## A381966.P6220287847203148860

`A257297(n)%A088803(2*n+1)+n`
-/

namespace A381966.P6220287847203148860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257297 n) (A088803 (2 * n + 1)) + (n : ℤ)

end

end A381966.P6220287847203148860

namespace A381966

/-- `A257297(n)%A088803(2*n+1)+n` -/
def P6220287847203148860.Spec : Prop :=
  ∀ n, P6220287847203148860.a n = A381966 n

end A381966

/-!
# A381968: a(a(n)) = A381662(n).

The programs for A381968, there is no canonical definition to state claims against.
-/

/-! ## A381968.P6360125066801572189

`A383722(A056023(n+1))`
-/

namespace A381968.P6360125066801572189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383722 (A056023 (n + 1)).toNat

end

end A381968.P6360125066801572189

/-! ## A381968.P1940114174005415649

`A056023(A383724(n+1))`
-/

namespace A381968.P1940114174005415649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A383724 (n + 1)).toNat

end

end A381968.P1940114174005415649

/-! ## A381968.P15257466386197288785

`A382679(A376214(n+1))`
-/

namespace A381968.P15257466386197288785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382679 (A376214 (n + 1)).toNat

end

end A381968.P15257466386197288785

/-! ## A381968.P12916875497587126452

`A376214(A382680(n+1))`
-/

namespace A381968.P12916875497587126452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A382680 (n + 1)).toNat

end

end A381968.P12916875497587126452

/-! ## A381968.P13204868616239507826

`A383419(A378762(n+1))`
-/

namespace A381968.P13204868616239507826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383419 (A378762 (n + 1)).toNat

end

end A381968.P13204868616239507826

/-! ## A381968.P6883415096664791051

`A382680(A380817(n+1))`
-/

namespace A381968.P6883415096664791051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A380817 (n + 1)).toNat

end

end A381968.P6883415096664791051

/-! ## A381968.P15129496704522888009

`A380817(A382679(n+1))`
-/

namespace A381968.P15129496704522888009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A382679 (n + 1)).toNat

end

end A381968.P15129496704522888009

/-! ## A381968.P2073635749629042419

`A382499(A381662(n+1))`
-/

namespace A381968.P2073635749629042419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A381662 (n + 1)).toNat

end

end A381968.P2073635749629042419

/-! ## A381968.P5889994626438454220

`A383590(A383589(n+1))`
-/

namespace A381968.P5889994626438454220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383590 (A383589 (n + 1)).toNat

end

end A381968.P5889994626438454220

/-! ## A381968.P4303689104547565743

`A383723(A383722(n+1))`
-/

namespace A381968.P4303689104547565743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A383722 (n + 1)).toNat

end

end A381968.P4303689104547565743

/-! ## A381968.P15807274220500236653

`A383724(A383723(n+1))`
-/

namespace A381968.P15807274220500236653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383724 (A383723 (n + 1)).toNat

end

end A381968.P15807274220500236653

/-! ## A381968.P4704779835343352466

`A378200(A382679(A378200(n+1)))`
-/

namespace A381968.P4704779835343352466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A382679 (A378200 (n + 1)).toNat).toNat

end

end A381968.P4704779835343352466

/-! ## A381968.P24811324626185986

`A380817(A376214(A382499(n+1)))`
-/

namespace A381968.P24811324626185986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A376214 (A382499 (n + 1)).toNat).toNat

end

end A381968.P24811324626185986

/-! ## A381968.P13657970767161469438

`A378684(A382499(A378684(n+1)))`
-/

namespace A381968.P13657970767161469438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A382499 (A378684 (n + 1)).toNat).toNat

end

end A381968.P13657970767161469438

/-! ## A381968.P18051933914932692226

`A378705(A382499(A378705(n+1)))`
-/

namespace A381968.P18051933914932692226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A382499 (A378705 (n + 1)).toNat).toNat

end

end A381968.P18051933914932692226

/-! ## A381968.P17072318239000632529

`A382499(A379343(A379342(n+1)))`
-/

namespace A381968.P17072318239000632529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A379343 (A379342 (n + 1)).toNat).toNat

end

end A381968.P17072318239000632529

/-! ## A381968.P13495374287106659306

`A382679(A379342(A379343(n+1)))`
-/

namespace A381968.P13495374287106659306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382679 (A379342 (A379343 (n + 1)).toNat).toNat

end

end A381968.P13495374287106659306

/-! ## A381968.P11209397040051693685

`A382679(A378684(A380245(n+1)))`
-/

namespace A381968.P11209397040051693685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382679 (A378684 (A380245 (n + 1)).toNat).toNat

end

end A381968.P11209397040051693685

/-! ## A381968.P17286313576613619967

`A382680(A378684(A380815(n+1)))`
-/

namespace A381968.P17286313576613619967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A378684 (A380815 (n + 1)).toNat).toNat

end

end A381968.P17286313576613619967

/-! ## A381968.P16516981589983713136

`A380200(A382499(A380200(n+1)))`
-/

namespace A381968.P16516981589983713136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A382499 (A380200 (n + 1)).toNat).toNat

end

end A381968.P16516981589983713136

/-!
# A381970: Numbers k such that there are no primes of the form 2^(k-m)*3^m + 1 or 2^(k-m)*3^m - 1 for 0 <= m <= k.

The programs for A381970, there is no canonical definition to state claims against.
-/

/-! ## A381970.P12891058869353746211

`lt[A167506(n+1), 1]+1`
-/

namespace A381970.P12891058869353746211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167506 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A381970.P12891058869353746211

/-! ## A381970.P7814033817927243494

`lt[A167506(A028310(n)), 1]`
-/

namespace A381970.P7814033817927243494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167506 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A381970.P7814033817927243494

/-!
# A381971: Maximum number of diagonal transversals in a Brown's diagonal Latin square of order 2n.

The programs for A381971, there is no canonical definition to state claims against.
-/

/-! ## A381971.P2988681493244824603

`A158325(n+1)%A180507(n+1)`
-/

namespace A381971.P2988681493244824603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158325 (n + 1)) (A180507 (n + 1))

end

end A381971.P2988681493244824603

/-!
# A381972: Numbers k>=3 such that k/A001414(k) > (k-1)/A001414(k-1).

The programs for A381972, the canonical program `A381972.P8049536125631911176` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381972 has offset 1).

The definition of A381972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5009 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381972.P8049536125631911176

`lt[Δ[A001414(n+1)], 1]+2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A381972

/-- `lt[Δ[A001414(n+1)], 1]+2` -/
def P8049536125631911176.Spec : Prop :=
  ∀ n, (P8049536125631911176.a n : ℤ) = A381972 (n + 1)

theorem P8049536125631911176.correct : P8049536125631911176.Spec := by
  intro n
  simp only [A381972, Nat.add_sub_cancel]

end A381972

/-! ## A381972.P10310746194813161960

`lt[A075255(n+1), A075255(n+2)]+2`
-/

namespace A381972.P10310746194813161960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A381972.P10310746194813161960

namespace A381972

/-- `lt[A075255(n+1), A075255(n+2)]+2` -/
def P10310746194813161960.Spec : Prop :=
  ∀ n, (P10310746194813161960.a n : ℤ) = A381972 (n + 1)

end A381972

/-! ## A381972.P17546067091206563839

`lt[Δ[A319257(n+4)], A258859(n)]`
-/

namespace A381972.P17546067091206563839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319257 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A381972.P17546067091206563839

namespace A381972

/-- `lt[Δ[A319257(n+4)], A258859(n)]` -/
def P17546067091206563839.Spec : Prop :=
  ∀ n, (P17546067091206563839.a n : ℤ) = A381972 (n + 1)

end A381972

/-!
# A381973: Numbers m such that Sum_{k >= 0} floor(m/3^k) is prime.

The programs for A381973, the canonical program `A381973.P380861839472755798` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381973 has offset 1).

The definition of A381973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381973.P380861839472755798

`A120503(A381974(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A381973

/-- `A120503(A381974(n+1))` -/
def P380861839472755798.Spec : Prop :=
  ∀ n, P380861839472755798.a n = A381973 (n + 1)

theorem P380861839472755798.correct : P380861839472755798.Spec := by
  intro n
  simp only [A381973, Nat.add_sub_cancel]

end A381973

/-! ## A381973.P5402880455865549250

`eq[1, A003415(A004128(n))]`
-/

namespace A381973.P5402880455865549250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A004128 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381973.P5402880455865549250

namespace A381973

/-- `eq[1, A003415(A004128(n))]` -/
def P5402880455865549250.Spec : Prop :=
  ∀ n, (P5402880455865549250.a n : ℤ) = A381973 (n + 1)

end A381973

/-! ## A381973.P11674696177046267468

`lt[A007920(A004128(n)), A057427(n)]`
-/

namespace A381973.P11674696177046267468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A004128 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381973.P11674696177046267468

namespace A381973

/-- `lt[A007920(A004128(n)), A057427(n)]` -/
def P11674696177046267468.Spec : Prop :=
  ∀ n, (P11674696177046267468.a n : ℤ) = A381973 (n + 1)

end A381973

/-! ## A381973.P3567626147130656928

`eq[1, A003415(A054861(3*n+1))]`
-/

namespace A381973.P3567626147130656928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A054861 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381973.P3567626147130656928

namespace A381973

/-- `eq[1, A003415(A054861(3*n+1))]` -/
def P3567626147130656928.Spec : Prop :=
  ∀ n, (P3567626147130656928.a n : ℤ) = A381973 (n + 1)

end A381973

/-! ## A381973.P2663062964765712784

`eq[1, A018783(A054861(3*n+2))]`
-/

namespace A381973.P2663062964765712784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A054861 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381973.P2663062964765712784

namespace A381973

/-- `eq[1, A018783(A054861(3*n+2))]` -/
def P2663062964765712784.Spec : Prop :=
  ∀ n, (P2663062964765712784.a n : ℤ) = A381973 (n + 1)

end A381973

/-!
# A381974: Primes of the form Sum_{k >= 0} floor(m/3^k) for some number m.

The programs for A381974, the canonical program `A381974.P3482092844659186790` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381974 has offset 1).

The definition of A381974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381974.P3482092844659186790

`p?[∑[val(n+1, 3)+1]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A381974

/-- `p?[∑[val(n+1, 3)+1]]` -/
def P3482092844659186790.Spec : Prop :=
  ∀ n, (P3482092844659186790.a n : ℤ) = A381974 (n + 1)

theorem P3482092844659186790.correct : P3482092844659186790.Spec := by
  intro n
  simp only [A381974, Nat.add_sub_cancel]

end A381974

/-! ## A381974.P543071070702039027

`p?[A004128(n)]`
-/

namespace A381974.P543071070702039027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A381974.P543071070702039027

namespace A381974

/-- `p?[A004128(n)]` -/
def P543071070702039027.Spec : Prop :=
  ∀ n, P543071070702039027.a n = A381974 (n + 1)

end A381974

/-! ## A381974.P9482323040961189910

`p?[Δ[A122250(n)]]`
-/

namespace A381974.P9482323040961189910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122250 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A381974.P9482323040961189910

namespace A381974

/-- `p?[Δ[A122250(n)]]` -/
def P9482323040961189910.Spec : Prop :=
  ∀ n, P9482323040961189910.a n = A381974 (n + 1)

end A381974

/-! ## A381974.P15823160785384704273

`p?[∑[A051064(n+1)]]`
-/

namespace A381974.P15823160785384704273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A381974.P15823160785384704273

namespace A381974

/-- `p?[∑[A051064(n+1)]]` -/
def P15823160785384704273.Spec : Prop :=
  ∀ n, P15823160785384704273.a n = A381974 (n + 1)

end A381974

/-! ## A381974.P15103860259034952922

`A004128(A381973(n+1))`
-/

namespace A381974.P15103860259034952922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (A381973 (n + 1)).toNat

end

end A381974.P15103860259034952922

namespace A381974

/-- `A004128(A381973(n+1))` -/
def P15103860259034952922.Spec : Prop :=
  ∀ n, P15103860259034952922.a n = A381974 (n + 1)

end A381974

/-! ## A381974.P3566568411167563579

`filter[A004128(n+1), A010051(#)]`
-/

namespace A381974.P3566568411167563579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A381974.P3566568411167563579

namespace A381974

/-- `filter[A004128(n+1), A010051(#)]` -/
def P3566568411167563579.Spec : Prop :=
  ∀ n, P3566568411167563579.a n = A381974 (n + 1)

end A381974

/-! ## A381974.P6186146004463903125

`∩[A000040(n+1), A004128(n)]`
-/

namespace A381974.P6186146004463903125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381974.P6186146004463903125

namespace A381974

/-- `∩[A000040(n+1), A004128(n)]` -/
def P6186146004463903125.Spec : Prop :=
  ∀ n, (P6186146004463903125.a n : ℤ) = A381974 (n + 1)

end A381974

/-! ## A381974.P1788660457112261402

`∩[A045344(n+1), A004128(n)]`
-/

namespace A381974.P1788660457112261402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381974.P1788660457112261402

namespace A381974

/-- `∩[A045344(n+1), A004128(n)]` -/
def P1788660457112261402.Spec : Prop :=
  ∀ n, (P1788660457112261402.a n : ℤ) = A381974 (n + 1)

end A381974

/-! ## A381974.P12638603438851066430

`filter[A004128(n+2), A080339(#)]`
-/

namespace A381974.P12638603438851066430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A381974.P12638603438851066430

namespace A381974

/-- `filter[A004128(n+2), A080339(#)]` -/
def P12638603438851066430.Spec : Prop :=
  ∀ n, P12638603438851066430.a n = A381974 (n + 1)

end A381974

/-! ## A381974.P7602494585190339608

`eq[A003415(n), A120525(n+1)]`
-/

namespace A381974.P7602494585190339608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120525 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381974.P7602494585190339608

namespace A381974

/-- `eq[A003415(n), A120525(n+1)]` -/
def P7602494585190339608.Spec : Prop :=
  ∀ n, (P7602494585190339608.a n : ℤ) = A381974 (n + 1)

end A381974

/-! ## A381974.P305178503850379925

`eq[A018783(n), A120525(n+1)]`
-/

namespace A381974.P305178503850379925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120525 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381974.P305178503850379925

namespace A381974

/-- `eq[A018783(n), A120525(n+1)]` -/
def P305178503850379925.Spec : Prop :=
  ∀ n, (P305178503850379925.a n : ℤ) = A381974 (n + 1)

end A381974

/-! ## A381974.P8176071476062515493

`eq[A032741(n), A120525(n+1)]`
-/

namespace A381974.P8176071476062515493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120525 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381974.P8176071476062515493

namespace A381974

/-- `eq[A032741(n), A120525(n+1)]` -/
def P8176071476062515493.Spec : Prop :=
  ∀ n, (P8176071476062515493.a n : ℤ) = A381974 (n + 1)

end A381974

/-! ## A381974.P12622711066563981168

`eq[A120525(n+1), A175126(n)]`
-/

namespace A381974.P12622711066563981168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381974.P12622711066563981168

namespace A381974

/-- `eq[A120525(n+1), A175126(n)]` -/
def P12622711066563981168.Spec : Prop :=
  ∀ n, (P12622711066563981168.a n : ℤ) = A381974 (n + 1)

end A381974

/-! ## A381974.P9865263360112753471

`eq[A120525(n+1), A302055(n)]`
-/

namespace A381974.P9865263360112753471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381974.P9865263360112753471

namespace A381974

/-- `eq[A120525(n+1), A302055(n)]` -/
def P9865263360112753471.Spec : Prop :=
  ∀ n, (P9865263360112753471.a n : ℤ) = A381974 (n + 1)

end A381974

/-! ## A381974.P9496462711719760165

`eq[A120525(n+1), A328771(n)]`
-/

namespace A381974.P9496462711719760165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381974.P9496462711719760165

namespace A381974

/-- `eq[A120525(n+1), A328771(n)]` -/
def P9496462711719760165.Spec : Prop :=
  ∀ n, (P9496462711719760165.a n : ℤ) = A381974 (n + 1)

end A381974

/-! ## A381974.P18224152327995030375

`eq[A120525(n+1), A328772(n)]`
-/

namespace A381974.P18224152327995030375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381974.P18224152327995030375

namespace A381974

/-- `eq[A120525(n+1), A328772(n)]` -/
def P18224152327995030375.Spec : Prop :=
  ∀ n, (P18224152327995030375.a n : ℤ) = A381974 (n + 1)

end A381974

/-! ## A381974.P15347032507219834095

`eq[A120525(n+1), A328847(n)]`
-/

namespace A381974.P15347032507219834095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381974.P15347032507219834095

namespace A381974

/-- `eq[A120525(n+1), A328847(n)]` -/
def P15347032507219834095.Spec : Prop :=
  ∀ n, (P15347032507219834095.a n : ℤ) = A381974 (n + 1)

end A381974

/-! ## A381974.P5451249898810102382

`eq[A120525(n+1), A369971(n)]`
-/

namespace A381974.P5451249898810102382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381974.P5451249898810102382

namespace A381974

/-- `eq[A120525(n+1), A369971(n)]` -/
def P5451249898810102382.Spec : Prop :=
  ∀ n, (P5451249898810102382.a n : ℤ) = A381974 (n + 1)

end A381974

/-! ## A381974.P2771377629774009533

`eq[A120525(n+1), A388303(n)]`
-/

namespace A381974.P2771377629774009533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388303 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381974.P2771377629774009533

namespace A381974

/-- `eq[A120525(n+1), A388303(n)]` -/
def P2771377629774009533.Spec : Prop :=
  ∀ n, (P2771377629774009533.a n : ℤ) = A381974 (n + 1)

end A381974

/-! ## A381974.P14004358995414481663

`eq[A120525(n+1), A389146(n)]`
-/

namespace A381974.P14004358995414481663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389146 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381974.P14004358995414481663

namespace A381974

/-- `eq[A120525(n+1), A389146(n)]` -/
def P14004358995414481663.Spec : Prop :=
  ∀ n, (P14004358995414481663.a n : ℤ) = A381974 (n + 1)

end A381974

/-!
# A381975: Number of ways for n competitors to rank in a competition in which each match has 4 possible outcomes in which each competitor gains 0, 1, 2 or 3 points.

The programs for A381975, there is no canonical definition to state claims against.
-/

/-! ## A381975.P8455931226411663120

`A187187(A124468(n)+A089473(n))`
-/

namespace A381975.P8455931226411663120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A124468 n + A089473 n).toNat

end

end A381975.P8455931226411663120

/-! ## A381975.P15460218907684872852

`A385276(n)+A074290(A293850(n))`
-/

namespace A381975.P15460218907684872852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385276 n + A074290 (A293850 n).toNat

end

end A381975.P15460218907684872852

/-!
# A381976: a(n) is the number of distinct solutions to the Partridge Puzzle of size n.

The programs for A381976, there is no canonical definition to state claims against.
-/

/-! ## A381976.P4304500221696087334

`A049449(A109486(n))`
-/

namespace A381976.P4304500221696087334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049449 (A109486 n).toNat

end

end A381976.P4304500221696087334

/-! ## A381976.P13675386197104160694

`A356669(A076731(n+1)+1)`
-/

namespace A381976.P13675386197104160694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356669 (A076731 (n + 1) + 1).toNat

end

end A381976.P13675386197104160694

/-! ## A381976.P14634432567812867510

`C(A356669(n+1), A074743(n+1)²)`
-/

namespace A381976.P14634432567812867510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A356669 (n + 1)).toNat (A074743 (n + 1) ^ 2).toNat

end

end A381976.P14634432567812867510

/-! ## A381976.P4719529378941791622

`A262038(A339629(∑[2*n]+n+1))`
-/

namespace A381976.P4719529378941791622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A339629 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))).toNat

end

end A381976.P4719529378941791622

/-!
# A381981: Number of compositions of n avoiding the patterns (1,2,3) and (3,2,1).

The programs for A381981, there is no canonical definition to state claims against.
-/

/-! ## A381981.P12189096339892293226

`A102726(n)-(A335514(n)-A335514(A304199(n+1)))`
-/

namespace A381981.P12189096339892293226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102726 n - (A335514 n - A335514 (A304199 (n + 1)).toNat)

end

end A381981.P12189096339892293226

/-! ## A381981.P232353197685969074

`2*A307088(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A381981.P232353197685969074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A307088 (a (n - 1)).toNat

end

end A381981.P232353197685969074

/-! ## A381981.P14092946713212623499

`A096036(A149248(n))`
-/

namespace A381981.P14092946713212623499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096036 (A149248 n).toNat

end

end A381981.P14092946713212623499

/-! ## A381981.P7904876334639415513

`A116939(A381354(n))`
-/

namespace A381981.P7904876334639415513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A381354 n).toNat

end

end A381981.P7904876334639415513

/-! ## A381981.P15692067724057479408

`A138554(A377946(n))`
-/

namespace A381981.P15692067724057479408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 (A377946 n).toNat

end

end A381981.P15692067724057479408

/-!
# A381982: E.g.f. A(x) satisfies A(x) = exp(x) * C(x*A(x)), where C(x) = 1 + x*C(x)^2 is the g.f. of A000108.

The programs for A381982, there is no canonical definition to state claims against.
-/

/-! ## A381982.P5623789583221311258

`A326535(A372321(n)+2)`
-/

namespace A381982.P5623789583221311258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (A372321 n + 2).toNat

end

end A381982.P5623789583221311258

/-!
# A381984: E.g.f. A(x) satisfies A(x) = exp(x) * B(x), where B(x) = 1 + x*B(x)^3 is the g.f. of A001764.

The programs for A381984, there is no canonical definition to state claims against.
-/

/-! ## A381984.P5678257805594193944

`A094387(A008862(∑[n]))`
-/

namespace A381984.P5678257805594193944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094387 (A008862 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A381984.P5678257805594193944

/-!
# A381985: E.g.f. A(x) satisfies A(x) = exp(x) * B(x*A(x)), where B(x) = 1 + x*B(x)^3 is the g.f. of A001764.

The programs for A381985, there is no canonical definition to state claims against.
-/

/-! ## A381985.P4549032443155587409

`A008330(A144097(n))+ceil(n/98)`
-/

namespace A381985.P4549032443155587409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (A144097 n).toNat + ⌈(n : ℚ) / 98⌉

end

end A381985.P4549032443155587409

/-!
# A381987: E.g.f. A(x) satisfies A(x) = exp(x) * B(x), where B(x) = 1 + x*B(x)^4 is the g.f. of A002293.

The programs for A381987, there is no canonical definition to state claims against.
-/

/-! ## A381987.P5191832449553083918

`A004773(A213112(n))+n`
-/

namespace A381987.P5191832449553083918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A213112 n).toNat + (n : ℤ)

end

end A381987.P5191832449553083918

/-!
# A381990: Number of integer partitions of n that cannot be partitioned into a set (or multiset) of sets with distinct sums.

The programs for A381990, there is no canonical definition to state claims against.
-/

/-! ## A381990.P6055179522132456189

`A000041(n)-A381992(n)`
-/

namespace A381990.P6055179522132456189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A381992 n

end

end A381990.P6055179522132456189

/-! ## A381990.P15919859565549847494

`∑[A002865(n)]-A381992(n)`
-/

namespace A381990.P15919859565549847494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A381992 n

end

end A381990.P15919859565549847494

/-! ## A381990.P9484957676156956330

`A000065(n)+1-A381992(n)`
-/

namespace A381990.P9484957676156956330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A381992 n)

end

end A381990.P9484957676156956330

/-! ## A381990.P15931364994595776846

`A008284(A001844(n))-A381992(n)`
-/

namespace A381990.P15931364994595776846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A001844 n).toNat - A381992 n

end

end A381990.P15931364994595776846

/-! ## A381990.P5145379285217775523

`A381717(n)+A382427(n)-A381992(n)`
-/

namespace A381990.P5145379285217775523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381717 n + (A382427 n - A381992 n)

end

end A381990.P5145379285217775523

/-!
# A381991: Numbers whose prime indices have a unique multiset partition into constant multisets with distinct sums.

The programs for A381991, there is no canonical definition to state claims against.
-/

/-! ## A381991.P11945822450590874720

`eq[1, A381635(n+1)]+1`
-/

namespace A381991.P11945822450590874720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A381991.P11945822450590874720

/-! ## A381991.P2695939268288649304

`comp[and(A013929(n+1), A018789(3*n+4))]`
-/

namespace A381991.P2695939268288649304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013929 (n + 1)) (A018789 (3 * n + 4))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A381991.P2695939268288649304

/-! ## A381991.P1207194185477498974

`lt[4, A106683(A034808(n+3))]`
-/

namespace A381991.P1207194185477498974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106683 (A034808 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A381991.P1207194185477498974

/-! ## A381991.P11644082530212220203

`lt[A168036(n), A304019(A231147(3*n+2))]`
-/

namespace A381991.P11644082530212220203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304019 (A231147 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A381991.P11644082530212220203

/-! ## A381991.P1564622484196139794

`∑[A010052(A350137(2*(n+2)))+1]`
-/

namespace A381991.P1564622484196139794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A350137 (2 * (n + 2))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381991.P1564622484196139794

/-!
# A381992: Number of integer partitions of n that can be partitioned into sets with distinct sums.

The programs for A381992, there is no canonical definition to state claims against.
-/

/-! ## A381992.P13615766414530175775

`A000041(n)-A381990(n)`
-/

namespace A381992.P13615766414530175775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A381990 n

end

end A381992.P13615766414530175775

/-! ## A381992.P2507250772887439091

`∑[A002865(n)]-A381990(n)`
-/

namespace A381992.P2507250772887439091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A381990 n

end

end A381992.P2507250772887439091

/-! ## A381992.P8599694252197734096

`A035363(2*n)-A381990(n)`
-/

namespace A381992.P8599694252197734096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A381990 n

end

end A381992.P8599694252197734096

/-! ## A381992.P16949909105629463359

`A238343(A000217(n))-A381990(n)`
-/

namespace A381992.P16949909105629463359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A000217 n).toNat - A381990 n

end

end A381992.P16949909105629463359

/-! ## A381992.P5774791849593151944

`A365543(A000096(n))-A381990(n)`
-/

namespace A381992.P5774791849593151944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365543 (A000096 n).toNat - A381990 n

end

end A381992.P5774791849593151944

/-!
# A381993: Number of integer partitions of n that cannot be partitioned into constant multisets with a common sum.

The programs for A381993, there is no canonical definition to state claims against.
-/

/-! ## A381993.P7451560966424631979

`A000041(n)-A383093(n)`
-/

namespace A381993.P7451560966424631979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A383093 n

end

end A381993.P7451560966424631979

/-! ## A381993.P16299280918452627053

`A035363(A005843(n))-A383093(n)`
-/

namespace A381993.P16299280918452627053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A005843 n).toNat - A383093 n

end

end A381993.P16299280918452627053

/-! ## A381993.P6375849849879099231

`A238343(A000217(n))-A383093(n)`
-/

namespace A381993.P6375849849879099231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A000217 n).toNat - A383093 n

end

end A381993.P6375849849879099231

/-! ## A381993.P6696749746659297644

`A381990(n)+A381992(n)-A383093(n)`
-/

namespace A381993.P6696749746659297644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381990 n + (A381992 n - A383093 n)

end

end A381993.P6696749746659297644

/-!
# A381994: Number of integer partitions of n that cannot be partitioned into sets with equal sums.

The programs for A381994, there is no canonical definition to state claims against.
-/

/-! ## A381994.P17538554488663892796

`A000041(n)-A383308(n)`
-/

namespace A381994.P17538554488663892796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A383308 n

end

end A381994.P17538554488663892796

/-!
# A381995: Number of ways to partition the prime indices of n into constant blocks with a common sum.

The programs for A381995, there is no canonical definition to state claims against.
-/

/-! ## A381995.P5536015957645159880

`floor(A321455(n+1)/A318369(n+1))`
-/

namespace A381995.P5536015957645159880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A321455 (n + 1) : ℚ) / (A318369 (n + 1) : ℚ)⌋

end

end A381995.P5536015957645159880

/-! ## A381995.P7364076962016567327

`C(A321455(n+1), A169661(A321648(n+1)))`
-/

namespace A381995.P7364076962016567327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A321455 (n + 1)).toNat (A169661 (A321648 (n + 1)).toNat).toNat

end

end A381995.P7364076962016567327

/-! ## A381995.P10413738952800390831

`A321455(n+1)-A185118(A320017(n+1))`
-/

namespace A381995.P10413738952800390831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (n + 1) - A185118 (A320017 (n + 1)).toNat

end

end A381995.P10413738952800390831

/-! ## A381995.P5433568043021241717

`A061336(C(A002033(n), A034460(n+1)))`
-/

namespace A381995.P5433568043021241717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 (Nat.choose (A002033 n).toNat (A034460 (n + 1)).toNat)

end

end A381995.P5433568043021241717

/-! ## A381995.P5985507907629125168

`A000120(C(A050336(n+1), A182665(n+1)))`
-/

namespace A381995.P5985507907629125168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A050336 (n + 1)).toNat (A182665 (n + 1)).toNat)

end

end A381995.P5985507907629125168

/-!
# A381996: Number of non-isomorphic multisets of size n that can be partitioned into a set of sets.

The programs for A381996, there is no canonical definition to state claims against.
-/

/-! ## A381996.P16026335084772537760

`floor(5^∑[1/(n+4)]²)`
-/

namespace A381996.P16026335084772537760
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 4 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℝ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℚ) : ℝ)⌋

end

end A381996.P16026335084772537760

/-! ## A381996.P13842641174385874786

`ceil(A280709(n)/7)`
-/

namespace A381996.P13842641174385874786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A280709 n : ℚ) / 7⌉

end

end A381996.P13842641174385874786

/-! ## A381996.P17355542723866281750

`floor(A227567(n)/4)+1`
-/

namespace A381996.P17355542723866281750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A227567 (n + 75) : ℚ) / 4⌋ + 1

end

end A381996.P17355542723866281750

/-! ## A381996.P3344561060574899242

`ceil(A320787(n+2)/3)`
-/

namespace A381996.P3344561060574899242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A320787 (n + 2) : ℚ) / 3⌉

end

end A381996.P3344561060574899242

/-! ## A381996.P3484526553735082681

`ceil(A000070(n+1)/8)`
-/

namespace A381996.P3484526553735082681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000070 (n + 1) : ℚ) / 8⌉

end

end A381996.P3484526553735082681

/-!
# A381997: E.g.f. A(x) satisfies A(x) = 1 + x*exp(2*x)*A(x)^4.

The programs for A381997, there is no canonical definition to state claims against.
-/

/-! ## A381997.P11595346389765098561

`A320135(A301639(n)*A364980(n))`
-/

namespace A381997.P11595346389765098561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320135 (A301639 n * A364980 n).toNat

end

end A381997.P11595346389765098561

/-!
# A381998: E.g.f. A(x) satisfies A(x) = 1 + x*exp(2*x)*A(x)^2.

The programs for A381998, there is no canonical definition to state claims against.
-/

/-! ## A381998.P8970908480978762703

`A302614(n*(n*(n-5)+5)²)-∑[char[or(2, n)+1]]`
-/

namespace A381998.P8970908480978762703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302614 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A381998.P8970908480978762703

/-!
# A381999: E.g.f. A(x) satisfies A(x) = 1 + x*exp(2*x)*A(x)^3.

The programs for A381999, there is no canonical definition to state claims against.
-/

/-! ## A381999.P2959256966678267106

`A249931(n)+A219864(A346985(n))`
-/

namespace A381999.P2959256966678267106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249931 n + A219864 (A346985 n).toNat

end

end A381999.P2959256966678267106

