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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A318200: Expansion of Hypergeometric function F(17/12, 13/12; 3; 1728*x) in powers of x.

The programs for A318200, there is no canonical definition to state claims against.
-/

/-! ## A318200.P60147883689261576

`2*(12*n+1)*(12*n+5)*A092870(n)/(5*(n+1)*(n+2))`
-/

namespace A318200.P60147883689261576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ((12 * n + 1 : ℤ) * ((12 * n + 5 : ℤ) * A092870 n)) : ℚ) / (5 * ((n + 1) * (n + 2)) : ℚ)

end

end A318200.P60147883689261576

/-!
# A318202: Prime numbers p such that p-3 cannot be written as sum of two twin prime numbers (not necessarily forming a pair of twin primes).

The programs for A318202, there is no canonical definition to state claims against.
-/

/-! ## A318202.P2123253276084213198

`p?[floor(A051345(n+1)+acot(n))]`
-/

namespace A318202.P2123253276084213198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051345 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A318202.P2123253276084213198

/-! ## A318202.P13907637959586933453

`p?[A181440(A051345(n+1))]`
-/

namespace A318202.P13907637959586933453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A051345 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A318202.P13907637959586933453

/-! ## A318202.P9212435857413399925

`p?[A051345(n+1)+A000007(n)]`
-/

namespace A318202.P9212435857413399925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051345 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A318202.P9212435857413399925

/-! ## A318202.P11516716049057805518

`p?[A088157(n)+A051345(n+1)]`
-/

namespace A318202.P11516716049057805518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088157 n + A051345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A318202.P11516716049057805518

/-! ## A318202.P16792117815918858907

`p?[A151909(n)+A051345(n+1)]`
-/

namespace A318202.P16792117815918858907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n + A051345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A318202.P16792117815918858907

/-!
# A318206: Numbers having no divisor d > 1 that is a binary palindrome (i.e., an element of A006995).

The programs for A318206, the canonical program `A318206.P13112359878719457918` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318206 has offset 1).

The definition of A318206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318206.P13112359878719457918

`eq[1, A175242(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A318206

/-- `eq[1, A175242(n+1)]+1` -/
def P13112359878719457918.Spec : Prop :=
  ∀ n, (P13112359878719457918.a n : ℤ) = A318206 (n + 1)

theorem P13112359878719457918.correct : P13112359878719457918.Spec := by
  intro n
  simp only [A318206, Nat.add_sub_cancel]

end A318206

/-! ## A318206.P15858283025383317423

`record[A000027(n+1)/A175242(n+1)]`
-/

namespace A318206.P15858283025383317423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A175242 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318206.P15858283025383317423

namespace A318206

/-- `record[A000027(n+1)/A175242(n+1)]` -/
def P15858283025383317423.Spec : Prop :=
  ∀ n, P15858283025383317423.a n = (A318206 (n + 1) : ℚ)

end A318206

/-! ## A318206.P17249005638619605431

`lt[A175242(2*(n+1)), 2]+1`
-/

namespace A318206.P17249005638619605431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175242 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A318206.P17249005638619605431

namespace A318206

/-- `lt[A175242(2*(n+1)), 2]+1` -/
def P17249005638619605431.Spec : Prop :=
  ∀ n, (P17249005638619605431.a n : ℤ) = A318206 (n + 1)

end A318206

/-! ## A318206.P11050404607959460745

`eq[A057427(n), A175242(A008574(n))]`
-/

namespace A318206.P11050404607959460745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175242 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318206.P11050404607959460745

namespace A318206

/-- `eq[A057427(n), A175242(A008574(n))]` -/
def P11050404607959460745.Spec : Prop :=
  ∀ n, (P11050404607959460745.a n : ℤ) = A318206 (n + 1)

end A318206

/-! ## A318206.P6698885509788642110

`∩[A161607(n+1), A346131(n+1)]`
-/

namespace A318206.P6698885509788642110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318206.P6698885509788642110

namespace A318206

/-- `∩[A161607(n+1), A346131(n+1)]` -/
def P6698885509788642110.Spec : Prop :=
  ∀ n, (P6698885509788642110.a n : ℤ) = A318206 (n + 1)

end A318206

/-!
# A318207: a(n) is the least prime p such that 2-adic valuation of p-3 is n.

The programs for A318207, there is no canonical definition to state claims against.
-/

/-! ## A318207.P3167183500705252013

`A192590(A049931(n+1))`
-/

namespace A318207.P3167183500705252013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192590 (A049931 (n + 1)).toNat

end

end A318207.P3167183500705252013

/-! ## A318207.P390332709458057047

`A066408(∑[A325535(n)!])`
-/

namespace A318207.P390332709458057047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A325535 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066408 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318207.P390332709458057047

/-!
# A318208: Number of nXn 0..1 arrays with every element unequal to 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318208, there is no canonical definition to state claims against.
-/

/-! ## A318208.P12972287083143330193

`A318214(∑[4*n]+1)`
-/

namespace A318208.P12972287083143330193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318208.P12972287083143330193

/-! ## A318208.P7053105312222781002

`A318214(A001844(n))+char[10]`
-/

namespace A318208.P7053105312222781002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318208.P7053105312222781002

/-! ## A318208.P14552329096107701531

`record[A003982(n)*A318214(n+1)]`
-/

namespace A318208.P14552329096107701531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A318214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318208.P14552329096107701531

/-! ## A318208.P10286346921911165121

`record[A214505(n)*A318214(n+1)]`
-/

namespace A318208.P10286346921911165121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A318214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318208.P10286346921911165121

/-! ## A318208.P11389570222578002246

`A321537(n)+A318214(A001844(n))`
-/

namespace A318208.P11389570222578002246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 n + A318214 (A001844 n).toNat

end

end A318208.P11389570222578002246

/-!
# A318209: Number of nX3 0..1 arrays with every element unequal to 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318209, there is no canonical definition to state claims against.
-/

/-! ## A318209.P14150980786683615537

`A318214(∑[n+2]+4)`
-/

namespace A318209.P14150980786683615537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A318209.P14150980786683615537

/-! ## A318209.P7806512887112049389

`A318214(A167614(n+1))+char[19]`
-/

namespace A318209.P7806512887112049389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318209.P7806512887112049389

/-! ## A318209.P8402347182906676976

`gcd(A000038(n), A318214(A167614(n+1)))`
-/

namespace A318209.P8402347182906676976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A318214 (A167614 (n + 1)).toNat)

end

end A318209.P8402347182906676976

/-! ## A318209.P17523403194734225440

`lcm(A033999(n), A318214(A167614(n+1)))`
-/

namespace A318209.P17523403194734225440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A318214 (A167614 (n + 1)).toNat)

end

end A318209.P17523403194734225440

/-! ## A318209.P8865973786975054691

`or(A102683(n), A318214(A167614(n+1)))`
-/

namespace A318209.P8865973786975054691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 n) (A318214 (A167614 (n + 1)).toNat)

end

end A318209.P8865973786975054691

/-!
# A318210: Number of nX4 0..1 arrays with every element unequal to 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318210, there is no canonical definition to state claims against.
-/

/-! ## A318210.P14249395358803452652

`A318214(∑[n+3]+7)`
-/

namespace A318210.P14249395358803452652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A318210.P14249395358803452652

/-! ## A318210.P4076035412286507546

`A318214(A052905(n)+9)+char[20]`
-/

namespace A318210.P4076035412286507546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318210.P4076035412286507546

/-! ## A318210.P13759487586179883269

`A318214(A167614(n+2)+1)+char[18]`
-/

namespace A318210.P13759487586179883269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A318210.P13759487586179883269

/-! ## A318210.P6747818963812623343

`A007318(C(2, n))*A318214(A052905(n)+9)`
-/

namespace A318210.P6747818963812623343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A318214 (A052905 n + 9).toNat

end

end A318210.P6747818963812623343

/-! ## A318210.P15841959123768367747

`A318214(A052905(n)+9)/A007318(C(n, 2))`
-/

namespace A318210.P15841959123768367747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318214 (A052905 n + 9).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A318210.P15841959123768367747

/-!
# A318211: Number of nX5 0..1 arrays with every element unequal to 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318211, there is no canonical definition to state claims against.
-/

/-! ## A318211.P2233017883560975002

`A318214(A374005(n+1))`
-/

namespace A318211.P2233017883560975002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (A374005 (n + 1)).toNat

end

end A318211.P2233017883560975002

/-! ## A318211.P9993927798668205982

`A318214(A167499(n+3))`
-/

namespace A318211.P9993927798668205982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (A167499 (n + 3)).toNat

end

end A318211.P9993927798668205982

/-! ## A318211.P10351047611610721501

`A318214(A155212(n)+13)`
-/

namespace A318211.P10351047611610721501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (A155212 n + 13).toNat

end

end A318211.P10351047611610721501

/-! ## A318211.P10360109945353020053

`A318214(A056000(n)+15)`
-/

namespace A318211.P10360109945353020053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (A056000 n + 15).toNat

end

end A318211.P10360109945353020053

/-! ## A318211.P3845462164693068856

`A318214(eq[7, A066657(n)])`
-/

namespace A318211.P3845462164693068856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318211.P3845462164693068856

/-!
# A318212: Number of nX6 0..1 arrays with every element unequal to 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318212, there is no canonical definition to state claims against.
-/

/-! ## A318212.P3213573801221901779

`A318214(A374007(n+1))`
-/

namespace A318212.P3213573801221901779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (A374007 (n + 1)).toNat

end

end A318212.P3213573801221901779

/-! ## A318212.P4147255815345272725

`A318214(A056115(n)+21)`
-/

namespace A318212.P4147255815345272725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (A056115 n + 21).toNat

end

end A318212.P4147255815345272725

/-! ## A318212.P7253645686569967992

`A318214(Δ[A111396(n)]+9)`
-/

namespace A318212.P7253645686569967992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (f1 (n + 1) - f1 n + 9).toNat

end

end A318212.P7253645686569967992

/-! ## A318212.P2390776873963849397

`A318214(A167499(n+4)+1)`
-/

namespace A318212.P2390776873963849397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (A167499 (n + 4) + 1).toNat

end

end A318212.P2390776873963849397

/-! ## A318212.P7827205112264583860

`A318214(A000124(n+5)+5)`
-/

namespace A318212.P7827205112264583860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (A000124 (n + 5) + 5).toNat

end

end A318212.P7827205112264583860

/-!
# A318213: Number of n X 7 0..1 arrays with every element unequal to 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318213, there is no canonical definition to state claims against.
-/

/-! ## A318213.P12059888915683154181

`A318214(A374008(n+1))`
-/

namespace A318213.P12059888915683154181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (A374008 (n + 1)).toNat

end

end A318213.P12059888915683154181

/-! ## A318213.P7151417002721380183

`A318214(A302537(n)+27)`
-/

namespace A318213.P7151417002721380183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (A302537 n + 27).toNat

end

end A318213.P7151417002721380183

/-! ## A318213.P15307960375077602806

`A318214(A056119(n)+28)`
-/

namespace A318213.P15307960375077602806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (A056119 n + 28).toNat

end

end A318213.P15307960375077602806

/-! ## A318213.P7849044873747087506

`A318214(eq[11, A066657(n)])`
-/

namespace A318213.P7849044873747087506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318213.P7849044873747087506

/-! ## A318213.P9397499385568033226

`A318214(A167499(n+5)+2)`
-/

namespace A318213.P9397499385568033226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318214 (A167499 (n + 5) + 2).toNat

end

end A318213.P9397499385568033226

/-!
# A318214: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318214, there is no canonical definition to state claims against.
-/

/-! ## A318214.P995001626136687892

`A317863(n+1)+A025442(A189111(n+1))`
-/

namespace A318214.P995001626136687892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317863 (n + 1) + A025442 (A189111 (n + 1)).toNat

end

end A318214.P995001626136687892

/-! ## A318214.P17850878599245493811

`A321537(A278385(n+1))+A317863(n+1)`
-/

namespace A318214.P17850878599245493811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A278385 (n + 1)).toNat + A317863 (n + 1)

end

end A318214.P17850878599245493811

/-! ## A318214.P12292732353703788876

`A318552(n+1)-A020987(A189111(n+1))`
-/

namespace A318214.P12292732353703788876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (n + 1) - A020987 (A189111 (n + 1)).toNat

end

end A318214.P12292732353703788876

/-! ## A318214.P3288664515438499700

`A318552(n+1)-A055641(A158983(n+1))`
-/

namespace A318214.P3288664515438499700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (n + 1) - A055641 (A158983 (n + 1)).toNat

end

end A318214.P3288664515438499700

/-! ## A318214.P4762029755085005807

`A318552(n+1)-A020987(A301784(n+1))`
-/

namespace A318214.P4762029755085005807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318552 (n + 1) - A020987 (A301784 (n + 1)).toNat

end

end A318214.P4762029755085005807

/-!
# A318215: Expansion of e.g.f. exp(x/(1 + x)^2).

The programs for A318215, there is no canonical definition to state claims against.
-/

/-! ## A318215.P15573717894152283307

`A331737(2*(n+1))-A356699(A006257(n+1))`
-/

namespace A318215.P15573717894152283307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (2 * (n + 1)) - A356699 (A006257 (n + 1)).toNat

end

end A318215.P15573717894152283307

/-!
# A318216: Number of nXn 0..1 arrays with every element unequal to 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318216, there is no canonical definition to state claims against.
-/

/-! ## A318216.P4872961691921275074

`A318222(∑[4*n]+1)`
-/

namespace A318216.P4872961691921275074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318216.P4872961691921275074

/-! ## A318216.P6685230751826633196

`record[A318222(∑[A266981(n)])]`
-/

namespace A318216.P6685230751826633196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318216.P6685230751826633196

/-! ## A318216.P17941820466315080628

`record[A003982(n)*A318222(n+1)]`
-/

namespace A318216.P17941820466315080628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A318222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318216.P17941820466315080628

/-! ## A318216.P16940783992722257222

`A007318(∑[n])*A318222(A001844(n))`
-/

namespace A318216.P16940783992722257222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A318222 (A001844 n).toNat

end

end A318216.P16940783992722257222

/-! ## A318216.P10978060643756287267

`gcd(23, A000108(n))*A318222(A001844(n))`
-/

namespace A318216.P10978060643756287267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 23 (A000108 n) : ℤ) * A318222 (A001844 n).toNat

end

end A318216.P10978060643756287267

/-!
# A318217: Number of nX3 0..1 arrays with every element unequal to 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318217, there is no canonical definition to state claims against.
-/

/-! ## A318217.P14711683684432353078

`A318222(∑[n+2]+4)`
-/

namespace A318217.P14711683684432353078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A318217.P14711683684432353078

/-! ## A318217.P13544984769547088927

`A318222(A167614(n+1))+A185246(n)`
-/

namespace A318217.P13544984769547088927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (A167614 (n + 1)).toNat + A185246 n

end

end A318217.P13544984769547088927

/-! ## A318217.P872646679249554192

`A016192(n)*A318222(A167614(n+1))`
-/

namespace A318217.P872646679249554192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 n * A318222 (A167614 (n + 1)).toNat

end

end A318217.P872646679249554192

/-! ## A318217.P13883706077151518818

`A318222(A167614(n+1))%A087648(n)`
-/

namespace A318217.P13883706077151518818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318222 (A167614 (n + 1)).toNat) (A087648 n)

end

end A318217.P13883706077151518818

/-! ## A318217.P10045680245207803196

`or(A024155(n+1), A318222(A167614(n+1)))`
-/

namespace A318217.P10045680245207803196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024155 (n + 1)) (A318222 (A167614 (n + 1)).toNat)

end

end A318217.P10045680245207803196

/-!
# A318218: Number of nX4 0..1 arrays with every element unequal to 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318218, there is no canonical definition to state claims against.
-/

/-! ## A318218.P8274712704767783072

`A318222(A141214(n)+7)`
-/

namespace A318218.P8274712704767783072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (A141214 n + 7).toNat

end

end A318218.P8274712704767783072

/-! ## A318218.P4805244792200036086

`A318222(A052905(n)+9)`
-/

namespace A318218.P4805244792200036086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (A052905 n + 9).toNat

end

end A318218.P4805244792200036086

/-! ## A318218.P11732007727857115926

`A318222(A055999(n)+10)`
-/

namespace A318218.P11732007727857115926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (A055999 n + 10).toNat

end

end A318218.P11732007727857115926

/-! ## A318218.P2437097859354634650

`A318222(A167614(n+2)+1)`
-/

namespace A318218.P2437097859354634650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (A167614 (n + 2) + 1).toNat

end

end A318218.P2437097859354634650

/-! ## A318218.P4294003754100984791

`A318222(A034856(n+2)+6)`
-/

namespace A318218.P4294003754100984791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (A034856 (n + 2) + 6).toNat

end

end A318218.P4294003754100984791

/-!
# A318219: Number of nX5 0..1 arrays with every element unequal to 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318219, there is no canonical definition to state claims against.
-/

/-! ## A318219.P11492630723376083726

`A318222(A167499(n+3))`
-/

namespace A318219.P11492630723376083726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (A167499 (n + 3)).toNat

end

end A318219.P11492630723376083726

/-! ## A318219.P4066459498425741479

`A318222(eq[7, A066657(n)])`
-/

namespace A318219.P4066459498425741479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318219.P4066459498425741479

/-! ## A318219.P14225474725367630042

`A318222(A055999(n+1)+11)`
-/

namespace A318219.P14225474725367630042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (A055999 (n + 1) + 11).toNat

end

end A318219.P14225474725367630042

/-! ## A318219.P1533095936437926577

`A318222(eq[6, A131818(n+1)])`
-/

namespace A318219.P1533095936437926577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318219.P1533095936437926577

/-! ## A318219.P11892546130529917710

`A318222(A374005(n+1))`
-/

namespace A318219.P11892546130529917710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (A374005 (n + 1)).toNat

end

end A318219.P11892546130529917710

/-!
# A318220: Number of nX6 0..1 arrays with every element unequal to 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318220, there is no canonical definition to state claims against.
-/

/-! ## A318220.P12327094459535936823

`A318222(A055999(n+2)+12)`
-/

namespace A318220.P12327094459535936823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (A055999 (n + 2) + 12).toNat

end

end A318220.P12327094459535936823

/-! ## A318220.P16383995015107094896

`A318222(eq[7, A131818(n+1)])`
-/

namespace A318220.P16383995015107094896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318220.P16383995015107094896

/-! ## A318220.P6834243904311814179

`A318222(Δ[A023545(n+1)]+10)`
-/

namespace A318220.P6834243904311814179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (f1 (n + 1) - f1 n + 10).toNat

end

end A318220.P6834243904311814179

/-! ## A318220.P8169404596428737151

`A318222(A374007(n+1))`
-/

namespace A318220.P8169404596428737151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (A374007 (n + 1)).toNat

end

end A318220.P8169404596428737151

/-! ## A318220.P867145868916697340

`A318222(A052905(n+3))`
-/

namespace A318220.P867145868916697340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (A052905 (n + 3)).toNat

end

end A318220.P867145868916697340

/-!
# A318221: Number of nX7 0..1 arrays with every element unequal to 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A318221, there is no canonical definition to state claims against.
-/

/-! ## A318221.P13894580585744585309

`A318222(A056119(n)+28)`
-/

namespace A318221.P13894580585744585309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (A056119 n + 28).toNat

end

end A318221.P13894580585744585309

/-! ## A318221.P7004748430850518313

`A318222(eq[8, A131818(n+1)])`
-/

namespace A318221.P7004748430850518313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318221.P7004748430850518313

/-! ## A318221.P13432828954404560601

`A318222(A374008(n+1))`
-/

namespace A318221.P13432828954404560601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (A374008 (n + 1)).toNat

end

end A318221.P13432828954404560601

/-! ## A318221.P12433463270413079428

`A318222(A055999(n+4))`
-/

namespace A318221.P12433463270413079428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (A055999 (n + 4)).toNat

end

end A318221.P12433463270413079428

/-! ## A318221.P18143840076831923565

`A318222(eq[6, A193592(n)])`
-/

namespace A318221.P18143840076831923565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318221.P18143840076831923565

/-!
# A318223: Expansion of e.g.f. exp(x/(1 + 2*x)).

The programs for A318223, there is no canonical definition to state claims against.
-/

/-! ## A318223.P17954667297538897065

`A008836(A002457(n))*A162326(n)`
-/

namespace A318223.P17954667297538897065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A002457 n).toNat * A162326 n

end

end A318223.P17954667297538897065

/-! ## A318223.P927226793024923321

`A057077(A052807(n))*A162326(n)`
-/

namespace A318223.P927226793024923321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A052807 n).toNat * A162326 n

end

end A318223.P927226793024923321

/-!
# A318225: Lexicographically earliest sequence of positive terms such that the concatenation of two consecutive terms is always unique.

The programs for A318225, there is no canonical definition to state claims against.
-/

/-! ## A318225.P8270742344775178573

`A360257(A281873(n+1)%A207242(3*n+2))`
-/

namespace A318225.P8270742344775178573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360257 (Int.tmod (A281873 (n + 1)) (A207242 (3 * n + 2))).toNat

end

end A318225.P8270742344775178573

/-! ## A318225.P10979083072969603523

`A360257(A281873(n+1))`
-/

namespace A318225.P10979083072969603523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360257 (A281873 (n + 1)).toNat

end

end A318225.P10979083072969603523

/-! ## A318225.P4060624494219256822

`A360257(n+1)%A062241(n)`
-/

namespace A318225.P4060624494219256822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360257 (n + 1)) (A062241 n)

end

end A318225.P4060624494219256822

/-! ## A318225.P3173173548437930377

`and(A097002(n+1), A360257(n+1))`
-/

namespace A318225.P3173173548437930377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097002 (n + 1)) (A360257 (n + 1))

end

end A318225.P3173173548437930377

/-! ## A318225.P11399186564197688344

`gcd(A096001(n), A360257(n+1))`
-/

namespace A318225.P11399186564197688344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096001 n) (A360257 (n + 1))

end

end A318225.P11399186564197688344

/-!
# A318226: Number of inequivalent leaf-colorings of rooted trees with n nodes.

The programs for A318226, there is no canonical definition to state claims against.
-/

/-! ## A318226.P13130524686737564014

`A320536(n+1)+A231291(n)-A320536(A231291(n))`
-/

namespace A318226.P13130524686737564014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (n + 1) + (A231291 n - A320536 (A231291 n).toNat)

end

end A318226.P13130524686737564014

/-! ## A318226.P5399835790243134386

`A024417(A149790(n))`
-/

namespace A318226.P5399835790243134386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A149790 n).toNat

end

end A318226.P5399835790243134386

/-!
# A318227: Number of inequivalent leaf-colorings of rooted identity trees with n nodes.

The programs for A318227, there is no canonical definition to state claims against.
-/

/-! ## A318227.P17657806726216844583

`A156562(A380256(n)+A248180(n))`
-/

namespace A318227.P17657806726216844583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A380256 n + A248180 n).toNat

end

end A318227.P17657806726216844583

/-! ## A318227.P5851585245013113255

`A182631(A291443(n+1))+A067142(n)`
-/

namespace A318227.P5851585245013113255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182631 (A291443 (n + 1)).toNat + A067142 n

end

end A318227.P5851585245013113255

/-! ## A318227.P13947160572439159677

`A263977(A002905(n))`
-/

namespace A318227.P13947160572439159677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263977 (A002905 n).toNat

end

end A318227.P13947160572439159677

/-! ## A318227.P13700746423877850009

`A001965(A105223(n!))`
-/

namespace A318227.P13700746423877850009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 (A105223 (Nat.factorial n)).toNat

end

end A318227.P13700746423877850009

/-!
# A318229: Number of inequivalent leaf-colorings of transitive rooted trees with n nodes.

The programs for A318229, there is no canonical definition to state claims against.
-/

/-! ## A318229.P5557113050456988792

`A165906(floor(cosh(n)))`
-/

namespace A318229.P5557113050456988792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165906 ⌊Real.cosh (n : ℝ)⌋.toNat

end

end A318229.P5557113050456988792

/-! ## A318229.P4983964793614749860

`floor(sqrt(abs(A109963(n))))`
-/

namespace A318229.P4983964793614749860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt |A109963 n|

end

end A318229.P4983964793614749860

/-! ## A318229.P2531635358110896058

`round(sqrt(A368834(2*n)))`
-/

namespace A318229.P2531635358110896058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A368834 (2 * n) : ℝ))

end

end A318229.P2531635358110896058

/-! ## A318229.P14861556867702509735

`ceil(sqrt(A004982(n))/4)`
-/

namespace A318229.P14861556867702509735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A004982 n : ℝ) / 4⌉

end

end A318229.P14861556867702509735

/-!
# A318230: Number of inequivalent leaf-colorings of binary rooted trees with 2n + 1 nodes.

The programs for A318230, there is no canonical definition to state claims against.
-/

/-! ## A318230.P17403047679039376533

`A023987(A344066(n))+∑{e}[n+1, #-val(#!, 2)]`
-/

namespace A318230.P17403047679039376533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023987 (A344066 n).toNat + ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))

end

end A318230.P17403047679039376533

/-! ## A318230.P4324004968458416937

`A226190((n+2)*n!-1)+Δ[A126090(n+1)]`
-/

namespace A318230.P4324004968458416937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 ((n + 2) * Nat.factorial n - 1) + (f1 (n + 1) - f1 n)

end

end A318230.P4324004968458416937

/-!
# A318231: Number of inequivalent leaf-colorings of series-reduced rooted trees with n nodes.

The programs for A318231, there is no canonical definition to state claims against.
-/

/-! ## A318231.P5927987222297247435

`A066339(A150084(n))+A008618(n)`
-/

namespace A318231.P5927987222297247435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A150084 n).toNat + A008618 n

end

end A318231.P5927987222297247435

/-! ## A318231.P4473756774898448154

`A000085(n)-A035232(A371819(n))`
-/

namespace A318231.P4473756774898448154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A035232 (A371819 n).toNat

end

end A318231.P4473756774898448154

/-! ## A318231.P15515127521185413978

`A000085(n)-A343221(A230056(n))`
-/

namespace A318231.P15515127521185413978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A343221 (A230056 n).toNat

end

end A318231.P15515127521185413978

/-! ## A318231.P11790465748354611493

`A000085(n)-A072931(A074097(2*(n+1)))`
-/

namespace A318231.P11790465748354611493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A072931 (A074097 (2 * (n + 1))).toNat

end

end A318231.P11790465748354611493

/-!
# A318236: a(n) = (3*2^(4*n+3) + 1)/5.

The programs for A318236, the canonical program `A318236.P17979229431790872304` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318236 has offset 0).

The definition of A318236 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*2^(4*n+3)+1)/5` (program `A318236.P16385439092479771146`, by `A318236.P16385439092479771146.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A318236.P17979229431790872304

`17*a(n-1)-16*a(n-2)` with `a(0)=5, a(1)=77`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A318236

/-- `17*a(n-1)-16*a(n-2)` -/
def P17979229431790872304.Spec : Prop :=
  ∀ n, P17979229431790872304.a n = A318236 n

theorem P17979229431790872304.correct : P17979229431790872304.Spec := by
  intro n
  simp only [A318236]

end A318236

/-! ## A318236.P16385439092479771146

`(3*2^(4*n+3)+1)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318236.P16385439092479771146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ (4 * n + 3) + 1 : ℚ) / 5

end

end A318236.P16385439092479771146

namespace A318236

/-- `(3*2^(4*n+3)+1)/5` -/
def P16385439092479771146.Spec : Prop :=
  ∀ n, P16385439092479771146.a n = (A318236 n : ℚ)

theorem P16385439092479771146.correct : P16385439092479771146.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A318236, Nat.add_sub_cancel, A318236.P16385439092479771146.a, A318236.P17979229431790872304.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A318236, Nat.add_sub_cancel, A318236.P16385439092479771146.a, A318236.P17979229431790872304.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A318236

/-! ## A318236.P5219267091149298600

`16*a(n-1)-3` with `a(0)=5`
-/

namespace A318236.P5219267091149298600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  16 * a (n - 1) - 3

end

end A318236.P5219267091149298600

namespace A318236

/-- `16*a(n-1)-3` -/
def P5219267091149298600.Spec : Prop :=
  ∀ n, P5219267091149298600.a n = A318236 n

end A318236

/-! ## A318236.P3936217862786300196

`lcm(16, a(n-1))-3` with `a(0)=5`
-/

namespace A318236.P3936217862786300196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (Int.lcm 16 (a (n - 1)) : ℤ) - 3

end

end A318236.P3936217862786300196

namespace A318236

/-- `lcm(16, a(n-1))-3` -/
def P3936217862786300196.Spec : Prop :=
  ∀ n, P3936217862786300196.a n = A318236 n

end A318236

/-! ## A318236.P17938746754741623339

`a(n-1)/(1/4)²-3` with `a(0)=5`
-/

namespace A318236.P17938746754741623339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ 2 - 3

end

end A318236.P17938746754741623339

namespace A318236

/-- `a(n-1)/(1/4)²-3` -/
def P17938746754741623339.Spec : Prop :=
  ∀ n, P17938746754741623339.a n = (A318236 n : ℚ)

end A318236

/-! ## A318236.P3504474179980234341

`A108981(Δ[n²])`
-/

namespace A318236.P3504474179980234341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108981 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A318236.P3504474179980234341

namespace A318236

/-- `A108981(Δ[n²])` -/
def P3504474179980234341.Spec : Prop :=
  ∀ n, P3504474179980234341.a n = A318236 n

end A318236

/-! ## A318236.P8355232510687120343

`A113876(2*(n+1))`
-/

namespace A318236.P8355232510687120343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113876 (2 * (n + 1))

end

end A318236.P8355232510687120343

namespace A318236

/-- `A113876(2*(n+1))` -/
def P8355232510687120343.Spec : Prop :=
  ∀ n, P8355232510687120343.a n = A318236 n

end A318236

/-! ## A318236.P101658897593663282

`A227451(2*(n+1))`
-/

namespace A318236.P101658897593663282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227451 (2 * (n + 1))

end

end A318236.P101658897593663282

namespace A318236

/-- `A227451(2*(n+1))` -/
def P101658897593663282.Spec : Prop :=
  ∀ n, P101658897593663282.a n = A318236 n

end A318236

/-! ## A318236.P16005362905747635710

`A016029(4*(n+1))`
-/

namespace A318236.P16005362905747635710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016029 (4 * (n + 1))

end

end A318236.P16005362905747635710

namespace A318236

/-- `A016029(4*(n+1))` -/
def P16005362905747635710.Spec : Prop :=
  ∀ n, P16005362905747635710.a n = A318236 n

end A318236

/-!
# A318240: Triangle read by rows: T(n,k) = solution to Dagstuhl's Happy Diner Problem with n participants and tables of size at most k (n > k >= 2).

The programs for A318240, there is no canonical definition to state claims against.
-/

/-! ## A318240.P2948936479703242736

`A102430(n+2)+A030577(A069217(n+1))`
-/

namespace A318240.P2948936479703242736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102430 (n + 2) + A030577 (A069217 (n + 1)).toNat

end

end A318240.P2948936479703242736

/-! ## A318240.P5985250311401240368

`A002033(A046523(n+1))+A339399(A201146(n+1))+1`
-/

namespace A318240.P5985250311401240368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A046523 (n + 1)).toNat + (A339399 (A201146 (n + 1)).toNat + 1)

end

end A318240.P5985250311401240368

/-! ## A318240.P17440370921956751936

`A102430(n+2)+A005361(A323812(n+2))`
-/

namespace A318240.P17440370921956751936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102430 (n + 2) + A005361 (A323812 (n + 2)).toNat

end

end A318240.P17440370921956751936

/-! ## A318240.P18251290594358412403

`A102430(n+2)+A043289(A022127(n))`
-/

namespace A318240.P18251290594358412403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102430 (n + 2) + A043289 (A022127 n).toNat

end

end A318240.P18251290594358412403

/-! ## A318240.P17411568894122411725

`A333381(A236104(n+2))+A102430(n+2)`
-/

namespace A318240.P17411568894122411725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A236104 (n + 2)).toNat + A102430 (n + 2)

end

end A318240.P17411568894122411725

/-!
# A318241: Column 3 of array in A318240.

The programs for A318241, there is no canonical definition to state claims against.
-/

/-! ## A318241.P17142436380826672913

`A187321(floor(sqrt(A262086(n+1))))`
-/

namespace A318241.P17142436380826672913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 (Int.sqrt (A262086 (n + 1))).toNat

end

end A318241.P17142436380826672913

/-! ## A318241.P15166399641041836712

`A000196(eq[A040001(n), A138107(n)])`
-/

namespace A318241.P15166399641041836712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A318241.P15166399641041836712

/-! ## A318241.P13530782255580059337

`A000196(eq[A040001(n), A277239(n)])`
-/

namespace A318241.P13530782255580059337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A318241.P13530782255580059337

/-!
# A318242: a(n) is the least k such that A188999(A188999(k)) = n*k, where A188999 is the bi-unitary sigma function, or 0 if no such k exists.

The programs for A318242, there is no canonical definition to state claims against.
-/

/-! ## A318242.P11595393585648644404

`∩[A019278(n+1), A153775(n+1)]`
-/

namespace A318242.P11595393585648644404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318242.P11595393585648644404

/-! ## A318242.P17422461146727163293

`A181661(A304991(n))*A276005(n+1)`
-/

namespace A318242.P17422461146727163293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181661 (A304991 n).toNat * A276005 (n + 1)

end

end A318242.P17422461146727163293

/-!
# A318243: Triangle read by rows giving the sum of the number of k-matchings of the graphs obtained by deleting one edge and its two vertices from the ladder graph L_n = P_2 X P_n in all possible ways.

The programs for A318243, there is no canonical definition to state claims against.
-/

/-! ## A318243.P13723080825884524892

`(1-C(∑[char[∑[n]]], 2)+n)*A046741(comp[∑[n]])`
-/

namespace A318243.P13723080825884524892
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A046741 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

end

end A318243.P13723080825884524892

/-! ## A318243.P17491075023190934769

`A002260(n+1)*A046741(comp[∑[n]])`
-/

namespace A318243.P17491075023190934769
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A046741 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A318243.P17491075023190934769

/-! ## A318243.P679525813090761239

`sqrt(A133819(n+1))*A046741(comp[∑[n]])`
-/

namespace A318243.P679525813090761239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A046741 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ)

end

end A318243.P679525813090761239

/-! ## A318243.P9676013272445712056

`(A002262(n)+1)*A046741(A014132(n+1))`
-/

namespace A318243.P9676013272445712056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A046741 (A014132 (n + 1)).toNat

end

end A318243.P9676013272445712056

/-! ## A318243.P6909548902896012026

`A000720(A037126(n+1))*A046741(A014132(n+1))`
-/

namespace A318243.P6909548902896012026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037126 (n + 1)).toNat * A046741 (A014132 (n + 1)).toNat

end

end A318243.P6909548902896012026

/-! ## A318243.P18368374412427187261

`A046741(A014132(n+1))*A349520(2*n+1)`
-/

namespace A318243.P18368374412427187261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A014132 (n + 1)).toNat * A349520 (2 * n + 1)

end

end A318243.P18368374412427187261

/-! ## A318243.P16276228959579631263

`A000005(A059268(n))*A046741(A014132(n+1))`
-/

namespace A318243.P16276228959579631263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A046741 (A014132 (n + 1)).toNat

end

end A318243.P16276228959579631263

/-! ## A318243.P1836148335948253311

`abs(A136261(n+1))*A046741(A003057(n+2)+n)`
-/

namespace A318243.P1836148335948253311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A136261 (n + 1)| * A046741 (A003057 (n + 2) + (n : ℤ)).toNat

end

end A318243.P1836148335948253311

/-!
# A318244: a(n) is the number of configurations of n indistinguishable pairs placed on the vertices of the ladder graph P_2 X P_n such that only one such pair is joined by an edge.

The programs for A318244, there is no canonical definition to state claims against.
-/

/-! ## A318244.P4761790819485784600

`A325753(∑[n+1]+1)`
-/

namespace A318244.P4761790819485784600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325753 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318244.P4761790819485784600

/-! ## A318244.P1646512863697034741

`A325753(A134869(n+1))+A000007(n)`
-/

namespace A318244.P1646512863697034741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325753 (A134869 (n + 1)).toNat + A000007 n

end

end A318244.P1646512863697034741

/-! ## A318244.P1004080225558435663

`A325753(A134869(n+1))+A010893(n)`
-/

namespace A318244.P1004080225558435663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325753 (A134869 (n + 1)).toNat + A010893 (n + 13)

end

end A318244.P1004080225558435663

/-! ## A318244.P4238762519239268978

`A325753(A134869(n+1))+A325752(n+1)`
-/

namespace A318244.P4238762519239268978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325753 (A134869 (n + 1)).toNat + A325752 (n + 1)

end

end A318244.P4238762519239268978

/-!
# A318246: a(n) = [x^n] Product_{k>=1} (1 + 3^n*x^k).

The programs for A318246, there is no canonical definition to state claims against.
-/

/-! ## A318246.P7407583732891775446

`A000792(a(n-2)+15)+3^n` with `a(0)=1, a(1)=3, a(2)=9`
-/

namespace A318246.P7407583732891775446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 9] fun n a =>
  A000792 (a (n - 2) + 15).toNat + (3 ^ n : ℤ)

end

end A318246.P7407583732891775446

/-!
# A318247: a(n) = [x^n] Product_{k>=1} (1 + n!*x^k).

The programs for A318247, there is no canonical definition to state claims against.
-/

/-! ## A318247.P14726799857900108304

`(A244972(A003081(n))-2)*n!`
-/

namespace A318247.P14726799857900108304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A244972 (A003081 n).toNat - 2) * (Nat.factorial n : ℤ)

end

end A318247.P14726799857900108304

/-! ## A318247.P8966827863817283178

`(A339087(A000204(n+4)+4)+1)*n!`
-/

namespace A318247.P8966827863817283178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A339087 (A000204 (n + 4) + 4).toNat + 1) * (Nat.factorial n : ℤ)

end

end A318247.P8966827863817283178

/-!
# A318248: Expansion of Product_{k>=1} (1 + Fibonacci(k)*x^k).

The programs for A318248, there is no canonical definition to state claims against.
-/

/-! ## A318248.P4944005709662881894

`or(A001221(A009290(n)), A036373(n))`
-/

namespace A318248.P4944005709662881894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A009290 n).toNat) (A036373 n)

end

end A318248.P4944005709662881894

/-! ## A318248.P13168129385651087920

`A060689(n+1)+A003056(A368598(n))`
-/

namespace A318248.P13168129385651087920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060689 (n + 1) + A003056 (A368598 n).toNat

end

end A318248.P13168129385651087920

/-! ## A318248.P1671479752441499759

`or(A036373(n), A140223(A317884(n+1)))`
-/

namespace A318248.P1671479752441499759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036373 n) (A140223 (A317884 (n + 1)).toNat)

end

end A318248.P1671479752441499759

/-! ## A318248.P13220925380431910442

`A184431(A091865(n))`
-/

namespace A318248.P13220925380431910442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184431 (A091865 n).toNat

end

end A318248.P13220925380431910442

/-! ## A318248.P17329019452707986353

`A356944(A356507(n))`
-/

namespace A318248.P17329019452707986353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A356507 n).toNat

end

end A318248.P17329019452707986353

/-!
# A318249: a(n) = (n - 1)! * d(n), where d(n) = number of divisors of n (A000005).

The programs for A318249, there is no canonical definition to state claims against.
-/

/-! ## A318249.P11655276947094064395

`n!*∏{e}[n+1, #+1]`
-/

namespace A318249.P11655276947094064395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A318249.P11655276947094064395

/-! ## A318249.P5215353257346753271

`∑{d}[n+1, (n%(#+n))!]`
-/

namespace A318249.P5215353257346753271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial (n % (d + n))

end

end A318249.P5215353257346753271

/-! ## A318249.P12126496284940812460

`∑{d}[n+1, gcd(n, n*#)!]`
-/

namespace A318249.P12126496284940812460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial (Nat.gcd n (n * d))

end

end A318249.P12126496284940812460

/-! ## A318249.P16493901503127447798

`∑{d}[n+1, (lcm(n, #)/#)!]`
-/

namespace A318249.P16493901503127447798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial (SequenceMachineLib.roundAway ((Nat.lcm n d : ℚ) / (d : ℚ))).toNat

end

end A318249.P16493901503127447798

/-! ## A318249.P11610800742604660156

`∑{d}[n+1, n!+val(#, n+2)]`
-/

namespace A318249.P11610800742604660156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.factorial n + SequenceMachineLib.valuation d (n + 2))

end

end A318249.P11610800742604660156

/-! ## A318249.P2781104827027249576

`∑{d}[n+1, (n/gcd(#, n+2))!]`
-/

namespace A318249.P2781104827027249576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd d (n + 2) : ℚ))).toNat

end

end A318249.P2781104827027249576

/-! ## A318249.P203140735329907352

`∑{d}[n+1, (C(#, n+2)+n)!]`
-/

namespace A318249.P203140735329907352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.factorial (Nat.choose d (n + 2) + n)

end

end A318249.P203140735329907352

/-! ## A318249.P8686453680213754533

`A000005(n+1)*n!`
-/

namespace A318249.P8686453680213754533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * (Nat.factorial n : ℤ)

end

end A318249.P8686453680213754533

/-! ## A318249.P8301776049651912375

`n!*A000005(comp[lcm(87, n)])`
-/

namespace A318249.P8301776049651912375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 87 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A318249.P8301776049651912375

/-! ## A318249.P16237578878404770844

`n!*A000005(-xor(n, -1))`
-/

namespace A318249.P16237578878404770844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000005 (-Int.xor (n : ℤ) (-1)).toNat

end

end A318249.P16237578878404770844

/-!
# A318250: a(n) = (n - 1)! * sigma_2(n), where sigma_2(n) = sum of squares of divisors of n (A001157).

The programs for A318250, there is no canonical definition to state claims against.
-/

/-! ## A318250.P15270435612210494493

`∑{d}[n+1, #²*n!]`
-/

namespace A318250.P15270435612210494493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 2 * Nat.factorial n

end

end A318250.P15270435612210494493

/-! ## A318250.P5487160318671057531

`∑{d}[n+1, #*#*n!]`
-/

namespace A318250.P5487160318671057531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d * (d * Nat.factorial n)

end

end A318250.P5487160318671057531

/-! ## A318250.P4584930033664999810

`∏[round(1/acot(n))]*∑{d}[n+1, #²]`
-/

namespace A318250.P4584930033664999810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℤ)

end

end A318250.P4584930033664999810

/-! ## A318250.P13772256112650711569

`∏[round(sqrt(n²+1))]*∑{d}[n+1, #²]`
-/

namespace A318250.P13772256112650711569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℤ)

end

end A318250.P13772256112650711569

/-! ## A318250.P15576548995275800323

`n!*A001157(n+1)`
-/

namespace A318250.P15576548995275800323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001157 (n + 1)

end

end A318250.P15576548995275800323

/-! ## A318250.P10491988482997528729

`A001157(n+1)/A000032(n)*A100404(n)`
-/

namespace A318250.P10491988482997528729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001157 (n + 1) : ℚ) / (A000032 n : ℚ) * (A100404 n : ℚ)

end

end A318250.P10491988482997528729

/-!
# A318253: Coefficient of x of the OmegaPolynomials (A318146), T(n, k) = [x] P(n, k) with n>=1 and k>=0, square array read by ascending antidiagonals.

The programs for A318253, there is no canonical definition to state claims against.
-/

/-! ## A318253.P14327952247082520534

`A334193(lcm(A275043(n), A334192(n)))`
-/

namespace A318253.P14327952247082520534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334193 (Int.lcm (A275043 n) (A334192 n))

end

end A318253.P14327952247082520534

/-! ## A318253.P14074865335104932763

`A114327(xor(A098825(n)!, A098825(n)))`
-/

namespace A318253.P14074865335104932763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (Int.xor (Nat.factorial (A098825 n).toNat : ℤ) (A098825 n)).toNat

end

end A318253.P14074865335104932763

/-! ## A318253.P11897984093912714851

`A137286(lcm(A266832(n+1)², A102480(n)))`
-/

namespace A318253.P11897984093912714851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137286 (Int.lcm (A266832 (n + 1) ^ 2) (A102480 n))

end

end A318253.P11897984093912714851

/-! ## A318253.P12448250653001912342

`A225244(A266599(n+1))-(A187550(A266921(n+1))-2)`
-/

namespace A318253.P12448250653001912342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 (A266599 (n + 1)).toNat - (A187550 ((A266921 (n + 1)).toNat + 65) - 2)

end

end A318253.P12448250653001912342

/-! ## A318253.P9972609639440615645

`A225244(A266599(n+1))-A266921(A243020(n+1))%21`
-/

namespace A318253.P9972609639440615645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 (A266599 (n + 1)).toNat - Int.tmod (A266921 (A243020 (n + 1)).toNat) 21

end

end A318253.P9972609639440615645

/-!
# A318256: a(n) = (denominator of B(n,x)) / (the squarefree kernel of n+1), where B(n,x) is the n-th Bernoulli polynomial.

The programs for A318256, there is no canonical definition to state claims against.
-/

/-! ## A318256.P4023832435196135579

`A144845(n)/gcd(A009474(n+1), A144845(n))`
-/

namespace A318256.P4023832435196135579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (Int.gcd (A009474 (n + 1)) (A144845 n) : ℚ)

end

end A318256.P4023832435196135579

/-!
# A318257: Triangle read by rows, expansion of the e.g.f. given below related to partitions of {1,2,...,5n} into sets of size 5, nonzero coefficients of z.

The programs for A318257, there is no canonical definition to state claims against.
-/

/-! ## A318257.P5818950918353016787

`A109466(A143888(n)+A096876(n))`
-/

namespace A318257.P5818950918353016787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 (A143888 n + A096876 n).toNat

end

end A318257.P5818950918353016787

/-! ## A318257.P7168179453518225158

`∏{e}[3^(2-n)², C(#, 4)]`
-/

namespace A318257.P7168179453518225158
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((2 - (n : ℤ)) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.choose (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p) 4

end

end A318257.P7168179453518225158

/-!
# A318258: a(n) = [x] OmegaPolynomial(5, n). OmegaPolynomials are defined in A318146.

The programs for A318258, there is no canonical definition to state claims against.
-/

/-! ## A318258.P13647027998002805049

`A318253(Δ[A264443(n)])`
-/

namespace A318258.P13647027998002805049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318253 (f1 (n + 1) - f1 n).toNat

end

end A318258.P13647027998002805049

/-! ## A318258.P12217266491209974066

`A318253(eq[4, A193592(n)])`
-/

namespace A318258.P12217266491209974066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318253 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A318258.P12217266491209974066

/-!
# A318261: a(n) is the odd part of A318262(n).

The programs for A318261, there is no canonical definition to state claims against.
-/

/-! ## A318261.P2763509316288760790

`A000265(A318262(n+1))`
-/

namespace A318261.P2763509316288760790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A318262 (n + 1)).toNat

end

end A318261.P2763509316288760790

/-! ## A318261.P4041768177616378147

`A028234(2*A318262(n+1))`
-/

namespace A318261.P4041768177616378147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A318262 (n + 1)).toNat

end

end A318261.P4041768177616378147

/-! ## A318261.P5827292692182649160

`A030101(2*A318262(n+1))`
-/

namespace A318261.P5827292692182649160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * A318262 (n + 1)).toNat

end

end A318261.P5827292692182649160

/-! ## A318261.P11714043309957432363

`A093803(2*A318262(n+1))`
-/

namespace A318261.P11714043309957432363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (2 * A318262 (n + 1)).toNat

end

end A318261.P11714043309957432363

/-! ## A318261.P10427423221351763090

`A145799(2*A318262(n+1))`
-/

namespace A318261.P10427423221351763090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145799 (2 * A318262 (n + 1)).toNat

end

end A318261.P10427423221351763090

/-! ## A318261.P10905846713234371601

`A171435(2*A318262(n+1))`
-/

namespace A318261.P10905846713234371601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A318262 (n + 1)).toNat

end

end A318261.P10905846713234371601

/-! ## A318261.P13320835752728049159

`A325401(2*A318262(n+1))`
-/

namespace A318261.P13320835752728049159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A318262 (n + 1)).toNat

end

end A318261.P13320835752728049159

/-! ## A318261.P15714845270997886029

`A030101(A318262(n+1)/2)`
-/

namespace A318261.P15714845270997886029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A318262 (n + 1) : ℚ) / 2)).toNat

end

end A318261.P15714845270997886029

/-! ## A318261.P16648830744366471314

`A145799(A318262(n+1)/2)`
-/

namespace A318261.P16648830744366471314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145799 (SequenceMachineLib.roundAway ((A318262 (n + 1) : ℚ) / 2)).toNat

end

end A318261.P16648830744366471314

/-! ## A318261.P8074542156521484168

`A325401(A318262(n+1)/2)`
-/

namespace A318261.P8074542156521484168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A318262 (n + 1) : ℚ) / 2)).toNat

end

end A318261.P8074542156521484168

/-!
# A318262: Numbers m such that 2^phi(m) mod m is a prime power (in the sense of A246655).

The programs for A318262, there is no canonical definition to state claims against.
-/

/-! ## A318262.P15716752544995774673

`∩[A318145(n+1), A374685(n+1)]`
-/

namespace A318262.P15716752544995774673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318262.P15716752544995774673

/-! ## A318262.P10621475333623735880

`A318145(round(atan(n+3)+n)%A275083(n+1))`
-/

namespace A318262.P10621475333623735880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318145 (Int.tmod (SequenceMachineLib.roundAway (Real.arctan (n + 3 : ℝ) + (n : ℝ))) (A275083 (n + 1))).toNat

end

end A318262.P10621475333623735880

/-! ## A318262.P13131069504221130787

`∩[A309810(n+1), A318145(n+1)]`
-/

namespace A318262.P13131069504221130787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318262.P13131069504221130787

/-! ## A318262.P12384392878699101737

`∩[A318145(n+1), A374633(n+1)]`
-/

namespace A318262.P12384392878699101737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318262.P12384392878699101737

/-! ## A318262.P1712104369357472837

`∩[A028812(n+1), A318145(n+1)]`
-/

namespace A318262.P1712104369357472837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318262.P1712104369357472837

/-!
# A318263: Expansion of Product_{k>=1} (1 + Lucas(k)*x^k).

The programs for A318263, there is no canonical definition to state claims against.
-/

/-! ## A318263.P16362856049972507290

`A220487(A220469(n+1)-A172264(n))`
-/

namespace A318263.P16362856049972507290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220487 (A220469 (n + 1) - A172264 n).toNat

end

end A318263.P16362856049972507290

/-! ## A318263.P15423493598292672667

`A220487(A220493(n+1)-A172264(n))`
-/

namespace A318263.P15423493598292672667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220487 (A220493 (n + 1) - A172264 n).toNat

end

end A318263.P15423493598292672667

/-!
# A318264: Expansion of Product_{k>=1} (1 + C(k)*x^k), where C(k) is the Catalan number A000108.

The programs for A318264, there is no canonical definition to state claims against.
-/

/-! ## A318264.P13978898636339600439

`A157271(Δ[Δ[A148113(n)]])`
-/

namespace A318264.P13978898636339600439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148113 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (f1 (n + 1) - f1 n).toNat

end

end A318264.P13978898636339600439

/-! ## A318264.P8832478493815945622

`A005041(A275491(n)+A024199(n))`
-/

namespace A318264.P8832478493815945622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A275491 n + A024199 n).toNat

end

end A318264.P8832478493815945622

/-! ## A318264.P2241813544329393762

`or(A316470(A001006(n)), A360679(n+1))`
-/

namespace A318264.P2241813544329393762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A316470 (A001006 n).toNat) (A360679 (n + 1))

end

end A318264.P2241813544329393762

/-!
# A318267: a(n) is the number of configurations of n indistinguishable pairs placed on the vertices of the ladder graph P_2 X P_n such that all but two such pairs are joined by an edge.

The programs for A318267, there is no canonical definition to state claims against.
-/

/-! ## A318267.P14465023346903177643

`round(log(A097331(3^n-2^n)))`
-/

namespace A318267.P14465023346903177643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A097331 (3 ^ n - 2 ^ n) : ℝ))

end

end A318267.P14465023346903177643

/-! ## A318267.P14801601287654801726

`A073750(A171761(n))`
-/

namespace A318267.P14801601287654801726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073750 (A171761 n).toNat

end

end A318267.P14801601287654801726

/-!
# A318268: a(n) is the number of configurations of n indistinguishable pairs placed on the vertices of the ladder graph P_2 X P_n such that all but 3 such pairs are joined by an edge.

The programs for A318268, there is no canonical definition to state claims against.
-/

/-! ## A318268.P9644092095023359542

`A325753(A060577(n))`
-/

namespace A318268.P9644092095023359542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325753 (A060577 n).toNat

end

end A318268.P9644092095023359542

/-! ## A318268.P17997011081936184537

`Δ[A325264(a(n-1))]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=2`
-/

namespace A318268.P17997011081936184537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 2] fun n f1 =>
  A325264 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318268.P17997011081936184537

/-!
# A318269: a(n) is the number of configurations of n indistinguishable pairs placed on the vertices of the ladder graph P_2 X P_n such that all but 4 such pairs are joined by an edge.

The programs for A318269, there is no canonical definition to state claims against.
-/

/-! ## A318269.P2393192263793170861

`∑[∑[A025444(5^n)]]`
-/

namespace A318269.P2393192263793170861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025444 (5 ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318269.P2393192263793170861

/-! ## A318269.P13592469239888334417

`∑[(n!*∑[1/n!])%A319620(n)]`
-/

namespace A318269.P13592469239888334417
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j))) (A319620 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318269.P13592469239888334417

/-!
# A318270: a(n) is the number of configurations of n indistinguishable pairs placed on the vertices of the ladder graph P_2 X P_n such that all but 5 such pairs are joined by an edge.

The programs for A318270, there is no canonical definition to state claims against.
-/

/-! ## A318270.P126777130959195250

`A066286(∑[∑[A200522(n)]])`
-/

namespace A318270.P126777130959195250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200522 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066286 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318270.P126777130959195250

/-! ## A318270.P17533248066941874654

`∑[3*A238662(A328572(3*n+1))]`
-/

namespace A318270.P17533248066941874654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A238662 (A328572 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318270.P17533248066941874654

/-! ## A318270.P11539192074580473465

`A066286(A000217(n)*A011867(n))`
-/

namespace A318270.P11539192074580473465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066286 (A000217 n * A011867 n).toNat

end

end A318270.P11539192074580473465

/-!
# A318273: Numbers with digits in nondecreasing order such that additive and multiplicative digital roots coincide.

The programs for A318273, there is no canonical definition to state claims against.
-/

/-! ## A318273.P15626021952759862573

`∩[A064702(n+1), A179239(n)]`
-/

namespace A318273.P15626021952759862573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318273.P15626021952759862573

/-! ## A318273.P9926911158431937212

`∩[A009994(n+1), A064702(n+1)]`
-/

namespace A318273.P9926911158431937212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318273.P9926911158431937212

/-! ## A318273.P2904945220877276691

`∩[A064702(n+1), A249443(n+1)]`
-/

namespace A318273.P2904945220877276691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318273.P2904945220877276691

/-! ## A318273.P17244016664872248679

`∩[A064702(n+1), A381509(n+1)]`
-/

namespace A318273.P17244016664872248679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318273.P17244016664872248679

/-! ## A318273.P9293170548082682873

`record[gcd(A064702(n+1), A184964(n))]`
-/

namespace A318273.P9293170548082682873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064702 (n + 1)) (A184964 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318273.P9293170548082682873

/-!
# A318274: Triangle read by rows: T(n,k) = n for 0 < k < n and T(n,0) = T(n,n) = 1.

The programs for A318274, the canonical program `A318274.P2677241247150053118` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318274 has offset 0).

The definition of A318274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318274.P12270632195505520879

`∑[char[∑[n+1]]]^(A154325(n)-1)`
-/

namespace A318274.P12270632195505520879
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A154325 n - 1 : ℤ)

end

end A318274.P12270632195505520879

namespace A318274

/-- `∑[char[∑[n+1]]]^(A154325(n)-1)` -/
def P12270632195505520879.Spec : Prop :=
  ∀ n, P12270632195505520879.a n = (A318274 n : ℚ)

end A318274

/-! ## A318274.P620458011891814661

`A155864(n)/A155865(n)`
-/

namespace A318274.P620458011891814661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155864 n : ℚ) / (A155865 n : ℚ)

end

end A318274.P620458011891814661

namespace A318274

/-- `A155864(n)/A155865(n)` -/
def P620458011891814661.Spec : Prop :=
  ∀ n, P620458011891814661.a n = (A318274 n : ℚ)

end A318274

/-! ## A318274.P4254643076107495522

`abs(A003056(n)-A103516(n))`
-/

namespace A318274.P4254643076107495522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003056 n - A103516 n|

end

end A318274.P4254643076107495522

namespace A318274

/-- `abs(A003056(n)-A103516(n))` -/
def P4254643076107495522.Spec : Prop :=
  ∀ n, P4254643076107495522.a n = A318274 n

end A318274

/-! ## A318274.P2677241247150053118

`gcd(∑[A023531(n)], A103452(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A318274

/-- `gcd(∑[A023531(n)], A103452(n))` -/
def P2677241247150053118.Spec : Prop :=
  ∀ n, (P2677241247150053118.a n : ℤ) = A318274 n

theorem P2677241247150053118.correct : P2677241247150053118.Spec := by
  intro n
  simp only [A318274]

end A318274

/-! ## A318274.P5642073068156452863

`A003056(gcd(n, Δ[A073424(n)]))`
-/

namespace A318274.P5642073068156452863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.gcd (n : ℤ) (f1 (n + 1) - f1 n))

end

end A318274.P5642073068156452863

namespace A318274

/-- `A003056(gcd(n, Δ[A073424(n)]))` -/
def P5642073068156452863.Spec : Prop :=
  ∀ n, P5642073068156452863.a n = A318274 n

end A318274

/-! ## A318274.P11409677925744952945

`floor((A068606(n)+1)/A077028(n))`
-/

namespace A318274.P11409677925744952945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A068606 n + 1 : ℚ) / (A077028 n : ℚ)⌋

end

end A318274.P11409677925744952945

namespace A318274

/-- `floor((A068606(n)+1)/A077028(n))` -/
def P11409677925744952945.Spec : Prop :=
  ∀ n, P11409677925744952945.a n = A318274 n

end A318274

/-! ## A318274.P17703720039156630686

`gcd(Δ[A010054(n)], A003056(n+1))`
-/

namespace A318274.P17703720039156630686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A003056 (n + 1))

end

end A318274.P17703720039156630686

namespace A318274

/-- `gcd(Δ[A010054(n)], A003056(n+1))` -/
def P17703720039156630686.Spec : Prop :=
  ∀ n, (P17703720039156630686.a n : ℤ) = A318274 n

end A318274

/-! ## A318274.P4623030945054396205

`A003056(gcd(n+1, Δ[A035214(n)]))`
-/

namespace A318274.P4623030945054396205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n))

end

end A318274.P4623030945054396205

namespace A318274

/-- `A003056(gcd(n+1, Δ[A035214(n)]))` -/
def P4623030945054396205.Spec : Prop :=
  ∀ n, P4623030945054396205.a n = A318274 n

end A318274

/-! ## A318274.P1458575574193808738

`A185908(2-A185908(n+1)+n)`
-/

namespace A318274.P1458575574193808738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185908 (2 - A185908 (n + 1) + (n : ℤ)).toNat

end

end A318274.P1458575574193808738

namespace A318274

/-- `A185908(2-A185908(n+1)+n)` -/
def P1458575574193808738.Spec : Prop :=
  ∀ n, P1458575574193808738.a n = A318274 n

end A318274

/-! ## A318274.P1897372837969437880

`A003056(n+1)/A144112(n+1)`
-/

namespace A318274.P1897372837969437880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 (n + 1) : ℚ) / (A144112 (n + 1) : ℚ)

end

end A318274.P1897372837969437880

namespace A318274

/-- `A003056(n+1)/A144112(n+1)` -/
def P1897372837969437880.Spec : Prop :=
  ∀ n, P1897372837969437880.a n = (A318274 n : ℚ)

end A318274

/-! ## A318274.P8055694130027300574

`∑[A010054(n+1)]-A144112(n+1)+1`
-/

namespace A318274.P8055694130027300574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A144112 (n + 1) + 1

end

end A318274.P8055694130027300574

namespace A318274

/-- `∑[A010054(n+1)]-A144112(n+1)+1` -/
def P8055694130027300574.Spec : Prop :=
  ∀ n, P8055694130027300574.a n = A318274 n

end A318274

/-! ## A318274.P2050514768860432529

`A028310(A003056(n)%A124927(n))`
-/

namespace A318274.P2050514768860432529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A003056 n) (A124927 n)).toNat

end

end A318274.P2050514768860432529

namespace A318274

/-- `A028310(A003056(n)%A124927(n))` -/
def P2050514768860432529.Spec : Prop :=
  ∀ n, P2050514768860432529.a n = A318274 n

end A318274

/-! ## A318274.P1753380361213895372

`A028310(A003056(n+1)%A049627(n))`
-/

namespace A318274.P1753380361213895372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A003056 (n + 1)) (A049627 n)).toNat

end

end A318274.P1753380361213895372

namespace A318274

/-- `A028310(A003056(n+1)%A049627(n))` -/
def P1753380361213895372.Spec : Prop :=
  ∀ n, P1753380361213895372.a n = A318274 n

end A318274

/-! ## A318274.P10298319697353466869

`A103451(n)+A132071(n)-A132073(n)`
-/

namespace A318274.P10298319697353466869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n + (A132071 n - A132073 n)

end

end A318274.P10298319697353466869

namespace A318274

/-- `A103451(n)+A132071(n)-A132073(n)` -/
def P10298319697353466869.Spec : Prop :=
  ∀ n, P10298319697353466869.a n = A318274 n

end A318274

/-! ## A318274.P9235153682502144977

`gcd(n-A271439(n), A010816(A271439(n)))`
-/

namespace A318274.P9235153682502144977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A271439 n) (A010816 (A271439 n).toNat)

end

end A318274.P9235153682502144977

namespace A318274

/-- `gcd(n-A271439(n), A010816(A271439(n)))` -/
def P9235153682502144977.Spec : Prop :=
  ∀ n, (P9235153682502144977.a n : ℤ) = A318274 n

end A318274

/-! ## A318274.P2162895377290020426

`A002024(n+1)+A007318(n)-A132073(n)`
-/

namespace A318274.P2162895377290020426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A007318 n - A132073 n)

end

end A318274.P2162895377290020426

namespace A318274

/-- `A002024(n+1)+A007318(n)-A132073(n)` -/
def P2162895377290020426.Spec : Prop :=
  ∀ n, P2162895377290020426.a n = A318274 n

end A318274

/-! ## A318274.P8357082724732075893

`A131901(n+1)-A056942(n)/A003056(n+1)`
-/

namespace A318274.P8357082724732075893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131901 (n + 1) : ℚ) - (A056942 n : ℚ) / (A003056 (n + 1) : ℚ)

end

end A318274.P8357082724732075893

namespace A318274

/-- `A131901(n+1)-A056942(n)/A003056(n+1)` -/
def P8357082724732075893.Spec : Prop :=
  ∀ n, P8357082724732075893.a n = (A318274 n : ℚ)

end A318274

/-! ## A318274.P1203550303282310855

`A056942(n+1)/(A002024(n+1)*A144112(n+1))`
-/

namespace A318274.P1203550303282310855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056942 (n + 1) : ℚ) / (A002024 (n + 1) * A144112 (n + 1) : ℚ)

end

end A318274.P1203550303282310855

namespace A318274

/-- `A056942(n+1)/(A002024(n+1)*A144112(n+1))` -/
def P1203550303282310855.Spec : Prop :=
  ∀ n, P1203550303282310855.a n = (A318274 n : ℚ)

end A318274

/-! ## A318274.P17707049107347671080

`A002024(n+2)-A144112(n+1)`
-/

namespace A318274.P17707049107347671080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 2) - A144112 (n + 1)

end

end A318274.P17707049107347671080

namespace A318274

/-- `A002024(n+2)-A144112(n+1)` -/
def P17707049107347671080.Spec : Prop :=
  ∀ n, P17707049107347671080.a n = A318274 n

end A318274

/-! ## A318274.P16339647213829973589

`A060432(n+2)-(A144112(n+1)+A060432(n+1))`
-/

namespace A318274.P16339647213829973589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060432 (n + 2) - (A144112 (n + 1) + A060432 (n + 1))

end

end A318274.P16339647213829973589

namespace A318274

/-- `A060432(n+2)-(A144112(n+1)+A060432(n+1))` -/
def P16339647213829973589.Spec : Prop :=
  ∀ n, P16339647213829973589.a n = A318274 n

end A318274

/-!
# A318275: Numbers with digits in nondecreasing order and with multiplicative digital root > 0.

The programs for A318275, there is no canonical definition to state claims against.
-/

/-! ## A318275.P12072093875192975195

`lt[A193581(n), A031347(n)]`
-/

namespace A318275.P12072093875192975195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A318275.P12072093875192975195

/-! ## A318275.P3329909959273382883

`lt[abs(A097601(n)), A031347(n)]`
-/

namespace A318275.P3329909959273382883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097601 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A318275.P3329909959273382883

/-! ## A318275.P1300337891392831034

`eq[char[A034048(n+1)], A097601(n)]`
-/

namespace A318275.P1300337891392831034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A318275.P1300337891392831034

/-! ## A318275.P6414886370826454619

`eq[char[A034048(n+1)], A193581(n)]`
-/

namespace A318275.P6414886370826454619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034048 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A318275.P6414886370826454619

/-! ## A318275.P15883521668045039204

`eq[A097601(n)+A031347(n), A051802(n)]`
-/

namespace A318275.P15883521668045039204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097601 n + A031347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318275.P15883521668045039204

/-! ## A318275.P8036758855154199967

`record[A004185(n)^(A031347(n)/A051802(n))]`
-/

namespace A318275.P8036758855154199967
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A004185 n : ℝ) ^ ((A031347 n : ℚ) / (A051802 n : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318275.P8036758855154199967

/-! ## A318275.P17910560702694073545

`eq[0, A033909(n)^A031347(n)]`
-/

namespace A318275.P17910560702694073545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033909 n : ℚ) ^ (A031347 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A318275.P17910560702694073545

/-! ## A318275.P17179364821041320768

`∩[A277061(n+1), A179239(n)]`
-/

namespace A318275.P17179364821041320768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318275.P17179364821041320768

/-! ## A318275.P1435845259337311688

`∩[A009994(n+1), A277061(n+1)]`
-/

namespace A318275.P1435845259337311688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318275.P1435845259337311688

/-! ## A318275.P1678921028348616420

`∩[A032898(n+1), A277061(n+1)]`
-/

namespace A318275.P1678921028348616420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318275.P1678921028348616420

/-!
# A318276: Numbers with digits in nondecreasing order without digit 1 whose multiplicative digital root is not 0.

The programs for A318276, there is no canonical definition to state claims against.
-/

/-! ## A318276.P10107857647568561739

`∩[A299690(n+1), A179239(n)]`
-/

namespace A318276.P10107857647568561739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318276.P10107857647568561739

/-! ## A318276.P14484072185688785409

`∩[A009994(n+1), A299690(n+1)]`
-/

namespace A318276.P14484072185688785409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318276.P14484072185688785409

/-! ## A318276.P8868729778726999888

`∩[A249443(n+1), A299690(n+1)]`
-/

namespace A318276.P8868729778726999888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318276.P8868729778726999888

/-! ## A318276.P5016243431156385854

`∩[A299690(n+1), A318275(n+1)]`
-/

namespace A318276.P5016243431156385854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318276.P5016243431156385854

/-! ## A318276.P14624767254913083540

`∩[A299690(n+1), A381509(n+1)]`
-/

namespace A318276.P14624767254913083540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318276.P14624767254913083540

/-! ## A318276.P10061677246634371268

`∩[A037344(n+1), A318275(n+1)]`
-/

namespace A318276.P10061677246634371268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318276.P10061677246634371268

/-! ## A318276.P3282755749373241559

`∩[A039112(n+1), A318275(n+1)]`
-/

namespace A318276.P3282755749373241559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318276.P3282755749373241559

/-! ## A318276.P11268200789895997677

`∩[A052383(n+1), A318275(n+1)]`
-/

namespace A318276.P11268200789895997677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318275 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318276.P11268200789895997677

/-! ## A318276.P11030254284701203025

`record[A004185(A299690(n+1))]`
-/

namespace A318276.P11030254284701203025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A299690 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318276.P11030254284701203025

/-! ## A318276.P12568519469390903305

`lt[A193581(n), char[A299690(n+1)]]`
-/

namespace A318276.P12568519469390903305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299690 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A318276.P12568519469390903305

/-!
# A318277: Triangle read by rows; T(n, k) is the number of divisors of A025487(n) having the same prime signature as A025487(k) where 1 <= k <= n.

The programs for A318277, there is no canonical definition to state claims against.
-/

/-! ## A318277.P4802711703804220528

`A390259(A331889(n+2))`
-/

namespace A318277.P4802711703804220528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390259 (A331889 (n + 2)).toNat

end

end A318277.P4802711703804220528

/-! ## A318277.P16109076043998863280

`A282714(n)^A320655(A344607(2*n))`
-/

namespace A318277.P16109076043998863280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282714 n : ℚ) ^ (A320655 (A344607 (2 * n)).toNat : ℤ)

end

end A318277.P16109076043998863280

/-! ## A318277.P4184240518744555199

`A327306(A103997(n))^A327306(3*n)`
-/

namespace A318277.P4184240518744555199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327306 (A103997 n).toNat : ℚ) ^ (A327306 (3 * n) : ℤ)

end

end A318277.P4184240518744555199

/-! ## A318277.P3223832229311069567

`A000007(A268367(n+1))+floor(sqrt(8*n+1))%2`
-/

namespace A318277.P3223832229311069567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A268367 (n + 1)).toNat + ((Nat.sqrt (8 * n + 1) % 2 : ℕ) : ℤ)

end

end A318277.P3223832229311069567

/-! ## A318277.P3676945085354768673

`A053737(A282714(n)^A007318(n))`
-/

namespace A318277.P3676945085354768673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (SequenceMachineLib.roundAway ((A282714 n : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A318277.P3676945085354768673

/-!
# A318278: Exponential highly composite numbers: where the number of exponential divisors of n (A049419) increases to a record.

The programs for A318278, there is no canonical definition to state claims against.
-/

/-! ## A318278.P11799258472903229912

`A377140(n+1)^(A316789(A166571(n+1)+1)+1)`
-/

namespace A318278.P11799258472903229912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377140 (n + 1) : ℚ) ^ (A316789 (A166571 (n + 1) + 1).toNat + 1 : ℤ)

end

end A318278.P11799258472903229912

/-! ## A318278.P7880166583354748272

`A377140(n+1)^A228441(A046931(n+1))`
-/

namespace A318278.P7880166583354748272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377140 (n + 1) : ℚ) ^ (A228441 (A046931 (n + 1)).toNat : ℤ)

end

end A318278.P7880166583354748272

/-! ## A318278.P17203505312795048883

`A377140(n+1)²*A329708(A000040(n+1)²)`
-/

namespace A318278.P17203505312795048883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377140 (n + 1) ^ 2 * A329708 (A000040 (n + 1) ^ 2).toNat

end

end A318278.P17203505312795048883

/-! ## A318278.P7065419969140928067

`∩[A354530(n+1), A377140(n+1)]²`
-/

namespace A318278.P7065419969140928067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A318278.P7065419969140928067

/-! ## A318278.P5968539782254019585

`∩[A072121(n+1), A377140(n+1)]²`
-/

namespace A318278.P5968539782254019585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A318278.P5968539782254019585

/-!
# A318280: A permutation of the positive integers defined in the comment section such that the sum of the first n terms of the sequence is divisible by n.

The programs for A318280, there is no canonical definition to state claims against.
-/

/-! ## A318280.P7240676729740841271

`A137707(A334313(n+1))`
-/

namespace A318280.P7240676729740841271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137707 (A334313 (n + 1)).toNat

end

end A318280.P7240676729740841271

/-! ## A318280.P13189174746103605381

`C(A000005(∑[1/(2*n+1)]*∏[2*n+1]), A165073(2*n))`
-/

namespace A318280.P13189174746103605381
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (2 * n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ))).toNat).toNat (A165073 (2 * n)).toNat

end

end A318280.P13189174746103605381

/-!
# A318281: a(n+1) = a(n-a(n)) if a(n-1) != a(n), otherwise a(n+1) = a(n) + 3; a(1) = a(2) = a(3) = a(4) = 1.

The programs for A318281, there is no canonical definition to state claims against.
-/

/-! ## A318281.P6606731643414884736

`3*A318282(n+1)+1`
-/

namespace A318281.P6606731643414884736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A318282 (n + 1) + 1

end

end A318281.P6606731643414884736

/-! ## A318281.P15754138063234144318

`A016777(A318282(n+1))`
-/

namespace A318281.P15754138063234144318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A318282 (n + 1)).toNat

end

end A318281.P15754138063234144318

/-! ## A318281.P5343653589108659777

`A008619(6*A318282(n+1))`
-/

namespace A318281.P5343653589108659777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (6 * A318282 (n + 1)).toNat

end

end A318281.P5343653589108659777

/-! ## A318281.P17423009246135254561

`A080513(6*A318282(n+1))`
-/

namespace A318281.P17423009246135254561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (6 * A318282 (n + 1)).toNat

end

end A318281.P17423009246135254561

/-! ## A318281.P4792458780694848737

`A008620(9*A318282(n+1))`
-/

namespace A318281.P4792458780694848737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (9 * A318282 (n + 1)).toNat

end

end A318281.P4792458780694848737

/-! ## A318281.P2755395701783817483

`A168233(A318282(n+1)+A318282(n+1)+1)`
-/

namespace A318281.P2755395701783817483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168233 (A318282 (n + 1) + (A318282 (n + 1) + 1)).toNat

end

end A318281.P2755395701783817483

/-! ## A318281.P1652561448851772742

`A076640(6^A318282(n+1))`
-/

namespace A318281.P1652561448851772742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076640 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A318282 (n + 1) : ℤ))).toNat

end

end A318281.P1652561448851772742

/-! ## A318281.P2722169207389697135

`A000005(8^A318282(n+1))`
-/

namespace A318281.P2722169207389697135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A318282 (n + 1) : ℤ))).toNat

end

end A318281.P2722169207389697135

/-! ## A318281.P13384425180971250562

`A319686(8^A318282(n+1))`
-/

namespace A318281.P13384425180971250562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319686 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A318282 (n + 1) : ℤ))).toNat

end

end A318281.P13384425180971250562

/-!
# A318282: a(n) = (A318281(n) - 1)/3.

The programs for A318282, there is no canonical definition to state claims against.
-/

/-! ## A318282.P5340253405209654930

`(A318281(n+1)-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318282.P5340253405209654930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318281 (n + 1) - 1 : ℚ) / 3

end

end A318282.P5340253405209654930

/-! ## A318282.P15655761218534565899

`floor(A318281(n+1)/3)`
-/

namespace A318282.P15655761218534565899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A318281 (n + 1) : ℚ) / 3⌋

end

end A318282.P15655761218534565899

/-! ## A318282.P1396470538235520917

`A002264(A318281(n+1))`
-/

namespace A318282.P1396470538235520917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A318281 (n + 1)).toNat

end

end A318282.P1396470538235520917

/-! ## A318282.P2599288737140912736

`A071281(2*A318281(n+1))`
-/

namespace A318282.P2599288737140912736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071281 (2 * A318281 (n + 1)).toNat

end

end A318282.P2599288737140912736

/-! ## A318282.P18061320926507476678

`round(A000007(3*(n+1))+A318281(n+1)/3)`
-/

namespace A318282.P18061320926507476678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (3 * (n + 1)) : ℚ) + (A318281 (n + 1) : ℚ) / 3)

end

end A318282.P18061320926507476678

/-! ## A318282.P17941137430586679465

`A233867(A087201(n+3)%2*A318281(n+1))`
-/

namespace A318282.P17941137430586679465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233867 (Int.tmod (A087201 (n + 3)) 2 * A318281 (n + 1)).toNat

end

end A318282.P17941137430586679465

/-!
# A318283: Sum of elements of the multiset spanning an initial interval of positive integers with multiplicities equal to the prime indices of n in weakly decreasing order.

The programs for A318283, the canonical program `A318283.P6854416977649757434` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318283 has offset 1).

The definition of A318283 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, A181821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318283.P6854416977649757434

`A056239(A181821(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A318283

/-- `A056239(A181821(n+1))` -/
def P6854416977649757434.Spec : Prop :=
  ∀ n, P6854416977649757434.a n = A318283 (n + 1)

theorem P6854416977649757434.correct : P6854416977649757434.Spec := by
  intro n
  simp only [A318283, Nat.add_sub_cancel]

end A318283

/-! ## A318283.P12594498041130579611

`A304818(n+1)-A261079(n+1)`
-/

namespace A318283.P12594498041130579611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (n + 1) - A261079 (n + 1)

end

end A318283.P12594498041130579611

namespace A318283

/-- `A304818(n+1)-A261079(n+1)` -/
def P12594498041130579611.Spec : Prop :=
  ∀ n, P12594498041130579611.a n = A318283 (n + 1)

end A318283

/-! ## A318283.P1457584514266884024

`A359362(n+1)-A304818(n+1)`
-/

namespace A318283.P1457584514266884024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359362 (n + 1) - A304818 (n + 1)

end

end A318283.P1457584514266884024

namespace A318283

/-- `A359362(n+1)-A304818(n+1)` -/
def P1457584514266884024.Spec : Prop :=
  ∀ n, P1457584514266884024.a n = A318283 (n + 1)

end A318283

/-! ## A318283.P16630660163368513421

`A056239(n+1)*A144494(2*(n+1))-A304818(n+1)`
-/

namespace A318283.P16630660163368513421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) * A144494 (2 * (n + 1)) - A304818 (n + 1)

end

end A318283.P16630660163368513421

namespace A318283

/-- `A056239(n+1)*A144494(2*(n+1))-A304818(n+1)` -/
def P16630660163368513421.Spec : Prop :=
  ∀ n, P16630660163368513421.a n = A318283 (n + 1)

end A318283

/-! ## A318283.P13535152528048941731

`A056239(n+1)+∑{e}[A331188(n+1), A000217(#)]`
-/

namespace A318283.P13535152528048941731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000217 (Nat.factorization (f1 n).natAbs p)

end

end A318283.P13535152528048941731

namespace A318283

/-- `A056239(n+1)+∑{e}[A331188(n+1), A000217(#)]` -/
def P13535152528048941731.Spec : Prop :=
  ∀ n, P13535152528048941731.a n = A318283 (n + 1)

end A318283

/-! ## A318283.P14808926824563516135

`A351397(A331188(n+1))+A056239(n+1)`
-/

namespace A318283.P14808926824563516135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351397 (A331188 (n + 1)).toNat + A056239 (n + 1)

end

end A318283.P14808926824563516135

namespace A318283

/-- `A351397(A331188(n+1))+A056239(n+1)` -/
def P14808926824563516135.Spec : Prop :=
  ∀ n, P14808926824563516135.a n = A318283 (n + 1)

end A318283

/-! ## A318283.P10490895956729832568

`A351397(A331188(n+1))+∑{d}[n+1, A297109(#)]`
-/

namespace A318283.P10490895956729832568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351397 (A331188 (n + 1)).toNat + ∑ d ∈ Nat.divisors (f1 n), A297109 d

end

end A318283.P10490895956729832568

namespace A318283

/-- `A351397(A331188(n+1))+∑{d}[n+1, A297109(#)]` -/
def P10490895956729832568.Spec : Prop :=
  ∀ n, P10490895956729832568.a n = A318283 (n + 1)

end A318283

/-! ## A318283.P767706378569956631

`A359358(2*(n+1))+A351397(A331188(2*(n+1)))`
-/

namespace A318283.P767706378569956631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359358 (2 * (n + 1)) + A351397 (A331188 (2 * (n + 1))).toNat

end

end A318283.P767706378569956631

namespace A318283

/-- `A359358(2*(n+1))+A351397(A331188(2*(n+1)))` -/
def P767706378569956631.Spec : Prop :=
  ∀ n, P767706378569956631.a n = A318283 (n + 1)

end A318283

/-! ## A318283.P8941227908194158542

`A351397(A331188(n+1))+A359360(n+1)+A359358(n+1)`
-/

namespace A318283.P8941227908194158542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351397 (A331188 (n + 1)).toNat + (A359360 (n + 1) + A359358 (n + 1))

end

end A318283.P8941227908194158542

namespace A318283

/-- `A351397(A331188(n+1))+A359360(n+1)+A359358(n+1)` -/
def P8941227908194158542.Spec : Prop :=
  ∀ n, P8941227908194158542.a n = A318283 (n + 1)

end A318283

/-! ## A318283.P6475676390896418502

`A359677(n+1)+A056239(n+1)`
-/

namespace A318283.P6475676390896418502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359677 (n + 1) + A056239 (n + 1)

end

end A318283.P6475676390896418502

namespace A318283

/-- `A359677(n+1)+A056239(n+1)` -/
def P6475676390896418502.Spec : Prop :=
  ∀ n, P6475676390896418502.a n = A318283 (n + 1)

end A318283

/-!
# A318284: Number of multiset partitions of a multiset whose multiplicities are the prime indices of n.

The programs for A318284, there is no canonical definition to state claims against.
-/

/-! ## A318284.P12528018132909045277

`A001055(A181821(n+1))`
-/

namespace A318284.P12528018132909045277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A181821 (n + 1)).toNat

end

end A318284.P12528018132909045277

/-! ## A318284.P12122613357901128480

`A050322(A361808(n+1))`
-/

namespace A318284.P12122613357901128480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (A361808 (n + 1)).toNat

end

end A318284.P12122613357901128480

/-! ## A318284.P14059470065101976894

`A324326(n+1)+A324325(n+1)`
-/

namespace A318284.P14059470065101976894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324326 (n + 1) + A324325 (n + 1)

end

end A318284.P14059470065101976894

/-! ## A318284.P6008767521252320535

`∑{d}[A181821(n+1), A050370(#)]`
-/

namespace A318284.P6008767521252320535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A050370 d

end

end A318284.P6008767521252320535

/-! ## A318284.P16710795076385364702

`A028422(A181821(n+1))+A007318(∑[n])`
-/

namespace A318284.P16710795076385364702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (A181821 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318284.P16710795076385364702

/-!
# A318285: Number of non-isomorphic multiset partitions of a multiset whose multiplicities are the prime indices of n.

The programs for A318285, there is no canonical definition to state claims against.
-/

/-! ## A318285.P15456319605463909217

`A317791(A181821(n+1))`
-/

namespace A318285.P15456319605463909217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317791 (A181821 (n + 1)).toNat

end

end A318285.P15456319605463909217

/-! ## A318285.P5839255220777820752

`A317791(A304660(n+1))`
-/

namespace A318285.P5839255220777820752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317791 (A304660 (n + 1)).toNat

end

end A318285.P5839255220777820752

/-!
# A318286: Number of strict multiset partitions of a multiset whose multiplicities are the prime indices of n.

The programs for A318286, there is no canonical definition to state claims against.
-/

/-! ## A318286.P18392273932647890032

`A045778(A181821(n+1))`
-/

namespace A318286.P18392273932647890032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A181821 (n + 1)).toNat

end

end A318286.P18392273932647890032

/-! ## A318286.P6424159532053597569

`A050323(A361808(n+1))`
-/

namespace A318286.P6424159532053597569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050323 (A361808 (n + 1)).toNat

end

end A318286.P6424159532053597569

/-! ## A318286.P11890696384457916344

`A045778(A304660(n+1))`
-/

namespace A318286.P11890696384457916344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A304660 (n + 1)).toNat

end

end A318286.P11890696384457916344

/-!
# A318287: Number of non-isomorphic strict multiset partitions of a multiset whose multiplicities are the prime indices of n.

The programs for A318287, there is no canonical definition to state claims against.
-/

/-! ## A318287.P9458843920188631627

`A318357(A181821(n+1))`
-/

namespace A318287.P9458843920188631627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318357 (A181821 (n + 1)).toNat

end

end A318287.P9458843920188631627

/-! ## A318287.P5560379543170535555

`A318286(n+1)-A307598(A145444(3*(n+1)))`
-/

namespace A318287.P5560379543170535555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (n + 1) - A307598 (A145444 (3 * (n + 1))).toNat

end

end A318287.P5560379543170535555

/-! ## A318287.P15731119210137178447

`A305501(A005703(n))+A304714(n+1)`
-/

namespace A318287.P15731119210137178447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305501 (A005703 n).toNat + A304714 (n + 1)

end

end A318287.P15731119210137178447

/-!
# A318288: Minimal positive integers q_n such that for the n-th prime p_n the quaternion algebra (-p_n,-q_n) is ramified exactly at infinity and p_n.

The programs for A318288, there is no canonical definition to state claims against.
-/

/-! ## A318288.P1435252145306608399

`A136480(A185769(n+1)-Δ[A007504(n)])`
-/

namespace A318288.P1435252145306608399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A185769 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A318288.P1435252145306608399

/-! ## A318288.P10408627978121122280

`A136480(A185769(n+1)-p?[A259153(n)])`
-/

namespace A318288.P10408627978121122280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A185769 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A318288.P10408627978121122280

/-! ## A318288.P7005609989973057829

`A136480(A185769(n+1)-A000040(n+1))`
-/

namespace A318288.P7005609989973057829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A185769 (n + 1) - A000040 (n + 1)).toNat

end

end A318288.P7005609989973057829

/-! ## A318288.P3396599353333824933

`A136480(xor(A006093(n+1), A185769(n+1)))`
-/

namespace A318288.P3396599353333824933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (Int.xor (A006093 (n + 1)) (A185769 (n + 1))).toNat

end

end A318288.P3396599353333824933

/-! ## A318288.P17182352828673884651

`A136480(A185769(n+1)-p?[A018252(n+1)-7])`
-/

namespace A318288.P17182352828673884651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A185769 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A318288.P17182352828673884651

/-!
# A318289: Number of standard Young tableaux of 2n cells and height >= n.

The programs for A318289, there is no canonical definition to state claims against.
-/

/-! ## A318289.P8302783390319558991

`A182222(∑[4*n])`
-/

namespace A318289.P8302783390319558991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318289.P8302783390319558991

/-! ## A318289.P13046406359299803502

`record[A182222(A266725(n))]`
-/

namespace A318289.P13046406359299803502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182222 (A266725 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318289.P13046406359299803502

/-! ## A318289.P14493356070306316656

`record[A003982(n)*A182222(n)]`
-/

namespace A318289.P14493356070306316656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A182222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318289.P14493356070306316656

/-! ## A318289.P642265561063956177

`lcm(A000034(n), A182222(A046092(n)))`
-/

namespace A318289.P642265561063956177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A182222 (A046092 n).toNat)

end

end A318289.P642265561063956177

/-! ## A318289.P4756838237283079185

`A182222(A046092(n))%A205928(n+1)`
-/

namespace A318289.P4756838237283079185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182222 (A046092 n).toNat) (A205928 (n + 1))

end

end A318289.P4756838237283079185

/-!
# A318290: Expansion of Sum_{k>=1} (-1 + Product_{j>=1} (1 + j*x^(k*j))).

The programs for A318290, there is no canonical definition to state claims against.
-/

/-! ## A318290.P1929715891602216517

`∑{d}[n+1, A022629(#)]`
-/

namespace A318290.P1929715891602216517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A022629 d

end

end A318290.P1929715891602216517

/-! ## A318290.P8912701549812946105

`∑{d}[n+1, A000005(#)*A300278((n+1)/#)]`
-/

namespace A318290.P8912701549812946105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A300278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318290.P8912701549812946105

/-!
# A318291: a(n) is the minimum k > 0 such that n*2^k - 3 is prime, or 0 if no such k exists.

The programs for A318291, there is no canonical definition to state claims against.
-/

/-! ## A318291.P12482048532526195772

`A302354(a(A302354(ceil(n²/2))))` with `a(0)=3`
-/

namespace A318291.P12482048532526195772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A302354 (a (A302354 ⌈(n ^ 2 : ℚ) / 2⌉.toNat).toNat).toNat

end

end A318291.P12482048532526195772

/-! ## A318291.P13408893164824228642

`A296129(A296072(n+1))+A295976(A296109(n+1))`
-/

namespace A318291.P13408893164824228642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296129 (A296072 (n + 1)).toNat + A295976 (A296109 (n + 1)).toNat

end

end A318291.P13408893164824228642

/-! ## A318291.P6490356357524786574

`A337939(n^a(n-1))` with `a(0)=3, a(1)=2`
-/

namespace A318291.P6490356357524786574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  A337939 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A318291.P6490356357524786574

/-! ## A318291.P13638733844333739848

`A127155((n-2)^a(n-1))` with `a(0)=3, a(1)=2`
-/

namespace A318291.P13638733844333739848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  A127155 (SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A318291.P13638733844333739848

/-! ## A318291.P15442199332325328679

`A220354((n-2)^a(n-1))` with `a(0)=3, a(1)=2`
-/

namespace A318291.P15442199332325328679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  A220354 (SequenceMachineLib.roundAway (((n : ℤ) - 2 : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A318291.P15442199332325328679

/-!
# A318294: Prime-indexed primes p such that 2*p + 1 is also a prime-indexed prime.

The programs for A318294, there is no canonical definition to state claims against.
-/

/-! ## A318294.P12783149688619196626

`A064988(A261361(n+1))`
-/

namespace A318294.P12783149688619196626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A261361 (n + 1)).toNat

end

end A318294.P12783149688619196626

/-! ## A318294.P5127446496859934004

`A000040(p?[A261361(n+1)])`
-/

namespace A318294.P5127446496859934004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A318294.P5127446496859934004

/-! ## A318294.P17807090548164145128

`A008578(A261361(n+1)+1)`
-/

namespace A318294.P17807090548164145128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A261361 (n + 1) + 1).toNat

end

end A318294.P17807090548164145128

/-! ## A318294.P8632577311170318813

`A065091(A261361(n+1)-1)`
-/

namespace A318294.P8632577311170318813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A261361 (n + 1) - 1).toNat

end

end A318294.P8632577311170318813

/-! ## A318294.P13830611832732253174

`A000040(or(1, A261361(n+1)))`
-/

namespace A318294.P13830611832732253174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.lor 1 (A261361 (n + 1))).toNat

end

end A318294.P13830611832732253174

/-!
# A318295: Prime numbers whose digits can be permuted in multiple ways to yield primes.

The programs for A318295, there is no canonical definition to state claims against.
-/

/-! ## A318295.P9811955061382644772

`p?[A161402(n+1)]`
-/

namespace A318295.P9811955061382644772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A318295.P9811955061382644772

/-! ## A318295.P3388350122616107046

`filter[A161402(n+1), A010051(#)]`
-/

namespace A318295.P3388350122616107046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A318295.P3388350122616107046

/-! ## A318295.P7016825717269652378

`filter[A161402(n+1), A080339(#)]`
-/

namespace A318295.P7016825717269652378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A318295.P7016825717269652378

/-! ## A318295.P4510503555168062368

`filter[A161402(n+1), A080545(#)]`
-/

namespace A318295.P4510503555168062368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A318295.P4510503555168062368

/-! ## A318295.P8464087368292592649

`filter[A161402(n+1), A171387(#)]`
-/

namespace A318295.P8464087368292592649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A318295.P8464087368292592649

