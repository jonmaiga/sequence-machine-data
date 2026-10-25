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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A358201: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest positive number not occurring earlier that shares a factor with sigma(max_{k=1..n-1}a(k)).

The programs for A358201, there is no canonical definition to state claims against.
-/

/-! ## A358201.P12048644765341774618

`A358176(n+1)-A292261(A098854(n+4))`
-/

namespace A358201.P12048644765341774618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358176 (n + 1) - A292261 (A098854 (n + 4)).toNat

end

end A358201.P12048644765341774618

/-!
# A358202: Lower twin primes p such that 6*p-1 and 6*p+1 are twin primes and (p+1)/6 is prime.

The programs for A358202, there is no canonical definition to state claims against.
-/

/-! ## A358202.P9304754907892056384

`∩[A060213(n+1), A176131(n+1)]`
-/

namespace A358202.P9304754907892056384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358202.P9304754907892056384

/-! ## A358202.P738299138800611165

`∩[A060213(n+1), A386724(n+1)]`
-/

namespace A358202.P738299138800611165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358202.P738299138800611165

/-! ## A358202.P5335794422992669599

`∩[A171179(n+1)-1, A176131(n+1)]`
-/

namespace A358202.P5335794422992669599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171179 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358202.P5335794422992669599

/-!
# A358206: Number of ways of making change for n cents using coins of 1, 2, 4, 10 and 20 cents.

The programs for A358206, the canonical program `A358206.P4991857009677086862` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358206 has offset 0).

The definition of A358206 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000064, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358206.P4991857009677086862

`A000064(floor(n/2))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A358206

/-- `A000064(floor(n/2))` -/
def P4991857009677086862.Spec : Prop :=
  ∀ n, P4991857009677086862.a n = A358206 n

theorem P4991857009677086862.correct : P4991857009677086862.Spec := by
  intro n
  simp only [A358206]

end A358206

/-! ## A358206.P14945665256489064124

`A001300(floor(5*n/2))`
-/

namespace A358206.P14945665256489064124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001300 ⌊5 * ((n : ℚ) / 2)⌋.toNat

end

end A358206.P14945665256489064124

namespace A358206

/-- `A001300(floor(5*n/2))` -/
def P14945665256489064124.Spec : Prop :=
  ∀ n, P14945665256489064124.a n = A358206 n

end A358206

/-! ## A358206.P175612367368932526

`C(A001300(∑[n%4]+n), 1-char[1])`
-/

namespace A358206.P175612367368932526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001300 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A358206.P175612367368932526

namespace A358206

/-- `C(A001300(∑[n%4]+n), 1-char[1])` -/
def P175612367368932526.Spec : Prop :=
  ∀ n, (P175612367368932526.a n : ℤ) = A358206 n

end A358206

/-! ## A358206.P4394636789121787275

`A001300(∑[gcd(2, n)²]-4)%A000537(n+4)`
-/

namespace A358206.P4394636789121787275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001300 (∑ j ∈ Finset.range (n + 1), f1 j - 4)) (A000537 (n + 4))

end

end A358206.P4394636789121787275

namespace A358206

/-- `A001300(∑[gcd(2, n)²]-4)%A000537(n+4)` -/
def P4394636789121787275.Spec : Prop :=
  ∀ n, P4394636789121787275.a n = A358206 n

end A358206

/-! ## A358206.P8534814203108936317

`A001300(A008851(n+1))%A090721(n+1)`
-/

namespace A358206.P8534814203108936317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001300 (A008851 (n + 1)).toNat) (A090721 (n + 1))

end

end A358206.P8534814203108936317

namespace A358206

/-- `A001300(A008851(n+1))%A090721(n+1)` -/
def P8534814203108936317.Spec : Prop :=
  ∀ n, P8534814203108936317.a n = A358206 n

end A358206

/-! ## A358206.P17303539463702869914

`A001300(A047219(n+1))%A090721(n+1)`
-/

namespace A358206.P17303539463702869914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001300 (A047219 (n + 1)).toNat) (A090721 (n + 1))

end

end A358206.P17303539463702869914

namespace A358206

/-- `A001300(A047219(n+1))%A090721(n+1)` -/
def P17303539463702869914.Spec : Prop :=
  ∀ n, P17303539463702869914.a n = A358206 n

end A358206

/-! ## A358206.P14388372132372957038

`A001343(5*n)`
-/

namespace A358206.P14388372132372957038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001343 (5 * n)

end

end A358206.P14388372132372957038

namespace A358206

/-- `A001343(5*n)` -/
def P14388372132372957038.Spec : Prop :=
  ∀ n, P14388372132372957038.a n = A358206 n

end A358206

/-!
# A358207: Numbers k such that k^2 + 2 is a palindrome.

The programs for A358207, there is no canonical definition to state claims against.
-/

/-! ## A358207.P14646170890560856144

`sqrt(A358237(n+1)-2)`
-/

namespace A358207.P14646170890560856144
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A358237 (n + 1) - 2 : ℝ)

end

end A358207.P14646170890560856144

/-!
# A358210: Congruent number sequence starting from the Pythagorean triple (3,4,5).

The programs for A358210, there is no canonical definition to state claims against.
-/

/-! ## A358210.P3157375795722509362

`A081465(n+1)*A197027(A289501(n))`
-/

namespace A358210.P3157375795722509362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081465 (n + 1) * A197027 ((A289501 n).toNat + 1)

end

end A358210.P3157375795722509362

/-!
# A358212: a(n) is the maximal possible sum of squares of the side lengths of an n^2-gon supported on a subset 1 <= x,y <= n of an integer lattice.

The programs for A358212, there is no canonical definition to state claims against.
-/

/-! ## A358212.P7270522758869376842

`(n+4)*A123991(n)`
-/

namespace A358212.P7270522758869376842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A123991 n

end

end A358212.P7270522758869376842

/-!
# A358213: The index of the first occurrence of A002110(n) in A356309.

The programs for A358213, there is no canonical definition to state claims against.
-/

/-! ## A358213.P12452811541263028271

`A002110(n)-A358214(n)`
-/

namespace A358213.P12452811541263028271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - A358214 n

end

end A358213.P12452811541263028271

/-! ## A358213.P9250018454694506927

`A121281(∑[n])-A358214(n)`
-/

namespace A358213.P9250018454694506927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 (∑ j ∈ Finset.range (n + 1), f1 j) - A358214 n

end

end A358213.P9250018454694506927

/-! ## A358213.P17398864280063829763

`record[A096334(n)]-A358214(n)`
-/

namespace A358213.P17398864280063829763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A358214 n

end

end A358213.P17398864280063829763

/-! ## A358213.P11663830960965271994

`record[A303761(n)]-A358214(n)`
-/

namespace A358213.P11663830960965271994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A358214 n

end

end A358213.P11663830960965271994

/-!
# A358214: a(n) = A002110(n) - A358213(n).

The programs for A358214, there is no canonical definition to state claims against.
-/

/-! ## A358214.P4150300458672563387

`A356302(A358213(n))`
-/

namespace A358214.P4150300458672563387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356302 (A358213 n).toNat

end

end A358214.P4150300458672563387

/-! ## A358214.P3825663967949639303

`A002110(n)-A358213(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A358214.P3825663967949639303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - A358213 n

end

end A358214.P3825663967949639303

/-! ## A358214.P13167949090103230297

`sqrt(A061742(n))-A358213(n)`
-/

namespace A358214.P13167949090103230297
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061742 n : ℝ) - (A358213 n : ℝ)

end

end A358214.P13167949090103230297

/-! ## A358214.P13555038238991529969

`A121281(∑[n])-A358213(n)`
-/

namespace A358214.P13555038238991529969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 (∑ j ∈ Finset.range (n + 1), f1 j) - A358213 n

end

end A358214.P13555038238991529969

/-!
# A358215: Numbers k for which there is no prime p such that p^p divides the arithmetic derivative of k, A003415(k).

The programs for A358215, the canonical program `A358215.P6211785216042119930` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358215 has offset 1).

The definition of A358215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358215.P8172921266945309189

`lt[1, abs(A256750(n))]`
-/

namespace A358215.P8172921266945309189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A256750 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A358215.P8172921266945309189

namespace A358215

/-- `lt[1, abs(A256750(n))]` -/
def P8172921266945309189.Spec : Prop :=
  ∀ n, (P8172921266945309189.a n : ℤ) = A358215 (n + 1)

end A358215

/-! ## A358215.P7203842216465779250

`lt[n^A327928(n), n]`
-/

namespace A358215.P7203842216465779250
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A327928 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A358215.P7203842216465779250

namespace A358215

/-- `lt[n^A327928(n), n]` -/
def P7203842216465779250.Spec : Prop :=
  ∀ n, (P7203842216465779250.a n : ℤ) = A358215 (n + 1)

end A358215

/-! ## A358215.P6344493874836759924

`eq[C(2, n²), A341996(n)]`
-/

namespace A358215.P6344493874836759924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341996 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358215.P6344493874836759924

namespace A358215

/-- `eq[C(2, n²), A341996(n)]` -/
def P6344493874836759924.Spec : Prop :=
  ∀ n, (P6344493874836759924.a n : ℤ) = A358215 (n + 1)

end A358215

/-! ## A358215.P6630093050903561532

`eq[1, A368915(n+1)]+1`
-/

namespace A358215.P6630093050903561532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368915 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358215.P6630093050903561532

namespace A358215

/-- `eq[1, A368915(n+1)]+1` -/
def P6630093050903561532.Spec : Prop :=
  ∀ n, (P6630093050903561532.a n : ℤ) = A358215 (n + 1)

end A358215

/-! ## A358215.P10330883114773341779

`eq[0, A327928(n+2)]+2`
-/

namespace A358215.P10330883114773341779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327928 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A358215.P10330883114773341779

namespace A358215

/-- `eq[0, A327928(n+2)]+2` -/
def P10330883114773341779.Spec : Prop :=
  ∀ n, (P10330883114773341779.a n : ℤ) = A358215 (n + 1)

end A358215

/-! ## A358215.P6211785216042119930

`eq[1, A341997(n+2)]+2`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A358215

/-- `eq[1, A341997(n+2)]+2` -/
def P6211785216042119930.Spec : Prop :=
  ∀ n, (P6211785216042119930.a n : ℤ) = A358215 (n + 1)

theorem P6211785216042119930.correct : P6211785216042119930.Spec := by
  intro n
  simp only [A358215, Nat.add_sub_cancel]

end A358215

/-! ## A358215.P5230288790448250801

`comp[A327929(n+1)-2]+2`
-/

namespace A358215.P5230288790448250801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327929 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A358215.P5230288790448250801

namespace A358215

/-- `comp[A327929(n+1)-2]+2` -/
def P5230288790448250801.Spec : Prop :=
  ∀ n, (P5230288790448250801.a n : ℤ) = A358215 (n + 1)

end A358215

/-! ## A358215.P2481649699695625458

`filter[A048103(n+1), A368914(#)]`
-/

namespace A358215.P2481649699695625458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368914 (f1 j).toNat = 1) n)

end

end A358215.P2481649699695625458

namespace A358215

/-- `filter[A048103(n+1), A368914(#)]` -/
def P2481649699695625458.Spec : Prop :=
  ∀ n, P2481649699695625458.a n = A358215 (n + 1)

end A358215

/-! ## A358215.P15872242423804996111

`filter[A048103(n+1), A368915(#)]`
-/

namespace A358215.P15872242423804996111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368915 (f1 j).toNat = 1) n)

end

end A358215.P15872242423804996111

namespace A358215

/-- `filter[A048103(n+1), A368915(#)]` -/
def P15872242423804996111.Spec : Prop :=
  ∀ n, P15872242423804996111.a n = A358215 (n + 1)

end A358215

/-! ## A358215.P216099580259428514

`filter[A048103(n+1), A369006(#)]`
-/

namespace A358215.P216099580259428514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369006 (f1 j).toNat = 1) n)

end

end A358215.P216099580259428514

namespace A358215

/-- `filter[A048103(n+1), A369006(#)]` -/
def P216099580259428514.Spec : Prop :=
  ∀ n, P216099580259428514.a n = A358215 (n + 1)

end A358215

/-! ## A358215.P9838293411473132665

`filter[A042968(n+1), A368915(#)]`
-/

namespace A358215.P9838293411473132665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368915 (f1 j).toNat = 1) n)

end

end A358215.P9838293411473132665

namespace A358215

/-- `filter[A042968(n+1), A368915(#)]` -/
def P9838293411473132665.Spec : Prop :=
  ∀ n, P9838293411473132665.a n = A358215 (n + 1)

end A358215

/-! ## A358215.P1500504788617712687

`filter[A359794(n+1), A368915(#)]`
-/

namespace A358215.P1500504788617712687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368915 (f1 j).toNat = 1) n)

end

end A358215.P1500504788617712687

namespace A358215

/-- `filter[A359794(n+1), A368915(#)]` -/
def P1500504788617712687.Spec : Prop :=
  ∀ n, P1500504788617712687.a n = A358215 (n + 1)

end A358215

/-! ## A358215.P14742597389746283124

`filter[A207481(n+1), A368915(#)]`
-/

namespace A358215.P14742597389746283124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368915 (f1 j).toNat = 1) n)

end

end A358215.P14742597389746283124

namespace A358215

/-- `filter[A207481(n+1), A368915(#)]` -/
def P14742597389746283124.Spec : Prop :=
  ∀ n, P14742597389746283124.a n = A358215 (n + 1)

end A358215

/-! ## A358215.P10324041677788947908

`filter[A047592(n+1), A368915(#)]`
-/

namespace A358215.P10324041677788947908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368915 (f1 j).toNat = 1) n)

end

end A358215.P10324041677788947908

namespace A358215

/-- `filter[A047592(n+1), A368915(#)]` -/
def P10324041677788947908.Spec : Prop :=
  ∀ n, P10324041677788947908.a n = A358215 (n + 1)

end A358215

/-! ## A358215.P8807532248996139228

`filter[A047588(n+2), A368915(#)]`
-/

namespace A358215.P8807532248996139228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368915 (f1 j).toNat = 1) n)

end

end A358215.P8807532248996139228

namespace A358215

/-- `filter[A047588(n+2), A368915(#)]` -/
def P8807532248996139228.Spec : Prop :=
  ∀ n, P8807532248996139228.a n = A358215 (n + 1)

end A358215

/-! ## A358215.P11164706161973869127

`filter[A317468(n+2), A368915(#)]`
-/

namespace A358215.P11164706161973869127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368915 (f1 j).toNat = 1) n)

end

end A358215.P11164706161973869127

namespace A358215

/-- `filter[A317468(n+2), A368915(#)]` -/
def P11164706161973869127.Spec : Prop :=
  ∀ n, P11164706161973869127.a n = A358215 (n + 1)

end A358215

/-! ## A358215.P11267736371240993063

`filter[A382746(n+1), A368915(#)]`
-/

namespace A358215.P11267736371240993063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368915 (f1 j).toNat = 1) n)

end

end A358215.P11267736371240993063

namespace A358215

/-- `filter[A382746(n+1), A368915(#)]` -/
def P11267736371240993063.Spec : Prop :=
  ∀ n, P11267736371240993063.a n = A358215 (n + 1)

end A358215

/-! ## A358215.P17884807755712341285

`filter[A168186(n+1), A368915(#)]`
-/

namespace A358215.P17884807755712341285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368915 (f1 j).toNat = 1) n)

end

end A358215.P17884807755712341285

namespace A358215

/-- `filter[A168186(n+1), A368915(#)]` -/
def P17884807755712341285.Spec : Prop :=
  ∀ n, P17884807755712341285.a n = A358215 (n + 1)

end A358215

/-! ## A358215.P5393305201879803284

`filter[A110303(n+1), A368915(#)]`
-/

namespace A358215.P5393305201879803284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368915 (f1 j).toNat = 1) n)

end

end A358215.P5393305201879803284

namespace A358215

/-- `filter[A110303(n+1), A368915(#)]` -/
def P5393305201879803284.Spec : Prop :=
  ∀ n, P5393305201879803284.a n = A358215 (n + 1)

end A358215

/-! ## A358215.P16788936235334204476

`filter[A230308(n+1), A368915(#)]`
-/

namespace A358215.P16788936235334204476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368915 (f1 j).toNat = 1) n)

end

end A358215.P16788936235334204476

namespace A358215

/-- `filter[A230308(n+1), A368915(#)]` -/
def P16788936235334204476.Spec : Prop :=
  ∀ n, P16788936235334204476.a n = A358215 (n + 1)

end A358215

/-!
# A358216: Inverse Möbius transform of A327936, where A327936 is multiplicative with a(p^e) = p if e >= p, otherwise 1.

The programs for A358216, the canonical program `A358216.P4171956212798034297` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358216 has offset 1).

The definition of A358216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358216.P4171956212798034297

`∑{d}[n+1, A327936(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A358216

/-- `∑{d}[n+1, A327936(#)]` -/
def P4171956212798034297.Spec : Prop :=
  ∀ n, P4171956212798034297.a n = A358216 (n + 1)

theorem P4171956212798034297.correct : P4171956212798034297.Spec := by
  intro n
  simp only [A358216, Nat.add_sub_cancel]

end A358216

/-! ## A358216.P1326870647552864041

`∑{d}[n+1, A359550(#)*A368336((n+1)/#)]`
-/

namespace A358216.P1326870647552864041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359550 d * A368336 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358216.P1326870647552864041

namespace A358216

/-- `∑{d}[n+1, A359550(#)*A368336((n+1)/#)]` -/
def P1326870647552864041.Spec : Prop :=
  ∀ n, P1326870647552864041.a n = A358216 (n + 1)

end A358216

/-!
# A358217: Number of prime factors (with multiplicity) in A319627(n).

The programs for A358217, the canonical program `A358217.P15146793602575622930` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358217 has offset 1).

The definition of A358217 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A319627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358217.P15146793602575622930

`A001222(A319627(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A358217

/-- `A001222(A319627(n+1))` -/
def P15146793602575622930.Spec : Prop :=
  ∀ n, P15146793602575622930.a n = A358217 (n + 1)

theorem P15146793602575622930.correct : P15146793602575622930.Spec := by
  intro n
  simp only [A358217, Nat.add_sub_cancel]

end A358217

/-! ## A358217.P740377184384627588

`A087436(A348990(n+1))`
-/

namespace A358217.P740377184384627588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A348990 (n + 1)).toNat

end

end A358217.P740377184384627588

namespace A358217

/-- `A087436(A348990(n+1))` -/
def P740377184384627588.Spec : Prop :=
  ∀ n, P740377184384627588.a n = A358217 (n + 1)

end A358217

/-! ## A358217.P8829979606548275030

`A001222(A064989(n+1)/A330749(n+1))`
-/

namespace A358217.P8829979606548275030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A064989 (n + 1) : ℚ) / (A330749 (n + 1) : ℚ))).toNat

end

end A358217.P8829979606548275030

namespace A358217

/-- `A001222(A064989(n+1)/A330749(n+1))` -/
def P8829979606548275030.Spec : Prop :=
  ∀ n, P8829979606548275030.a n = A358217 (n + 1)

theorem P8829979606548275030.correct : P8829979606548275030.Spec := by
  intro n
  simp only [A358217, Nat.add_sub_cancel, A358217.P8829979606548275030.a, A358217.P15146793602575622930.a, A001222, A001222.P11318177267732088261.a, A064989, A064989.P13349672914146769936.a, A319627, A319627.P4809772185258266634.a, A330749, A330749.P2089364656519205452.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A358217

/-! ## A358217.P1819002959532940504

`A001222(A319626(n+1)/A329900(n+1))`
-/

namespace A358217.P1819002959532940504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A319626 (n + 1) : ℚ) / (A329900 (n + 1) : ℚ))).toNat

end

end A358217.P1819002959532940504

namespace A358217

/-- `A001222(A319626(n+1)/A329900(n+1))` -/
def P1819002959532940504.Spec : Prop :=
  ∀ n, P1819002959532940504.a n = A358217 (n + 1)

end A358217

/-! ## A358217.P4858053908396639312

`A385213(A328478(n+1))`
-/

namespace A358217.P4858053908396639312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385213 (A328478 (n + 1)).toNat

end

end A358217.P4858053908396639312

namespace A358217

/-- `A385213(A328478(n+1))` -/
def P4858053908396639312.Spec : Prop :=
  ∀ n, P4858053908396639312.a n = A358217 (n + 1)

end A358217

/-!
# A358218: Number of prime factors (with multiplicity) in A328478(n).

The programs for A358218, there is no canonical definition to state claims against.
-/

/-! ## A358218.P1133235494019200867

`A001222(A328478(n+1))`
-/

namespace A358218.P1133235494019200867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328478 (n + 1)).toNat

end

end A358218.P1133235494019200867

/-! ## A358218.P4022717980028851021

`A001222((n+1)/A328479(n+1))`
-/

namespace A358218.P4022717980028851021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A328479 (n + 1) : ℚ))).toNat

end

end A358218.P4022717980028851021

/-! ## A358218.P6232550236856357654

`A001222(n+1)-A001222(A328479(n+1))`
-/

namespace A358218.P6232550236856357654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A328479 (n + 1)).toNat

end

end A358218.P6232550236856357654

/-! ## A358218.P8563776180614272579

`A001222(n+1)-A056239(A329900(n+1))`
-/

namespace A358218.P8563776180614272579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A056239 (A329900 (n + 1)).toNat

end

end A358218.P8563776180614272579

/-! ## A358218.P9656049469644025869

`A121048(A000045(n+1))%A001227(n+1)`
-/

namespace A358218.P9656049469644025869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121048 (A000045 (n + 1)).toNat) (A001227 (n + 1))

end

end A358218.P9656049469644025869

/-!
# A358219: Indices k where A358217(k) != A358218(k).

The programs for A358219, there is no canonical definition to state claims against.
-/

/-! ## A358219.P6358073420557990347

`filter[A261614(2*(n+1)), A296210(#)]`
-/

namespace A358219.P6358073420557990347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261614 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A358219.P6358073420557990347

/-! ## A358219.P4583592863559126234

`∩[A104210(n+1), A378471(n+1)]`
-/

namespace A358219.P4583592863559126234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358219.P4583592863559126234

/-!
# A358220: a(n) = 1 if A276086(n) is a multiple of A003415(n), with a(0) = a(1) = 0. Here A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A358220, there is no canonical definition to state claims against.
-/

/-! ## A358220.P14129641155333343991

`char[A358221(n+1)]`
-/

namespace A358220.P14129641155333343991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A358220.P14129641155333343991

/-! ## A358220.P6253753860138258721

`char[eq[1, A351230(n)]]`
-/

namespace A358220.P6253753860138258721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351230 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A358220.P6253753860138258721

/-! ## A358220.P18272262896928745162

`A002620(C(2, A351230(n)))`
-/

namespace A358220.P18272262896928745162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (Nat.choose 2 (A351230 n).toNat)

end

end A358220.P18272262896928745162

/-! ## A358220.P11366875886777801805

`A003415(C(2, A351230(n)))`
-/

namespace A358220.P11366875886777801805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Nat.choose 2 (A351230 n).toNat)

end

end A358220.P11366875886777801805

/-! ## A358220.P10908760762648230184

`A004526(C(2, A351230(n)))`
-/

namespace A358220.P10908760762648230184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Nat.choose 2 (A351230 n).toNat)

end

end A358220.P10908760762648230184

/-! ## A358220.P12470137457099864849

`A032741(C(2, A351230(n)))`
-/

namespace A358220.P12470137457099864849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Nat.choose 2 (A351230 n).toNat)

end

end A358220.P12470137457099864849

/-! ## A358220.P5859707771872107788

`A178704(C(2, A351230(n)))`
-/

namespace A358220.P5859707771872107788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178704 (Nat.choose 2 (A351230 n).toNat)

end

end A358220.P5859707771872107788

/-! ## A358220.P6359645848345344686

`A178719(C(2, A351230(n)))`
-/

namespace A358220.P6359645848345344686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178719 (Nat.choose 2 (A351230 n).toNat)

end

end A358220.P6359645848345344686

/-! ## A358220.P6456109939203271813

`A178744(C(2, A351230(n)))`
-/

namespace A358220.P6456109939203271813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178744 (Nat.choose 2 (A351230 n).toNat)

end

end A358220.P6456109939203271813

/-! ## A358220.P17870794504056402115

`A351230(C(2, A351230(n)))`
-/

namespace A358220.P17870794504056402115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351230 (Nat.choose 2 (A351230 n).toNat)

end

end A358220.P17870794504056402115

/-! ## A358220.P15355724140528322009

`∑{d}[A351230(n), A008683(#)]`
-/

namespace A358220.P15355724140528322009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A358220.P15355724140528322009

/-!
# A358221: Numbers k such that A003415(k) divides A276086(k), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A358221, there is no canonical definition to state claims against.
-/

/-! ## A358221.P14005070577908109425

`∪[A000040(n+1), A358222(n+1)]`
-/

namespace A358221.P14005070577908109425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A358221.P14005070577908109425

/-! ## A358221.P5191683621212807778

`∪[A116974(n+1), A358222(n+1)]`
-/

namespace A358221.P5191683621212807778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A358221.P5191683621212807778

/-! ## A358221.P18050757077332882194

`∪[A328232(n+1), A358222(n+1)]`
-/

namespace A358221.P18050757077332882194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A358221.P18050757077332882194

/-! ## A358221.P592842350208915481

`record[(n+2)/A351230(n+2)]`
-/

namespace A358221.P592842350208915481
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A351230 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358221.P592842350208915481

/-! ## A358221.P12805660686626898052

`eq[1, A351230(n)]`
-/

namespace A358221.P12805660686626898052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351230 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358221.P12805660686626898052

/-! ## A358221.P10419316728251006621

`lt[0, A358220(n)]`
-/

namespace A358221.P10419316728251006621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A358221.P10419316728251006621

/-! ## A358221.P9114998906367469521

`eq[1, A358220(n+1)]+1`
-/

namespace A358221.P9114998906367469521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358220 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358221.P9114998906367469521

/-! ## A358221.P10382816865372496772

`A000027(eq[1, A358220(n)])`
-/

namespace A358221.P10382816865372496772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358221.P10382816865372496772

/-! ## A358221.P6852337160109456279

`lt[A328382(n+2), 1]+2`
-/

namespace A358221.P6852337160109456279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328382 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A358221.P6852337160109456279

/-! ## A358221.P1310593557266482576

`eq[A010121(n), A358220(n)]`
-/

namespace A358221.P1310593557266482576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358221.P1310593557266482576

/-! ## A358221.P3308170581283706922

`eq[A010130(n), A358220(n)]`
-/

namespace A358221.P3308170581283706922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358221.P3308170581283706922

/-! ## A358221.P9593304931346386845

`eq[A010153(n), A358220(n)]`
-/

namespace A358221.P9593304931346386845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358221.P9593304931346386845

/-! ## A358221.P1003891626009942511

`filter[A358215(n+1), A358220(#)]`
-/

namespace A358221.P1003891626009942511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A358221.P1003891626009942511

/-! ## A358221.P1588255848903202505

`filter[A371088(n+1), A358220(#)]`
-/

namespace A358221.P1588255848903202505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A358221.P1588255848903202505

/-! ## A358221.P2397512067762565976

`filter[A048103(n+1), A358220(#)]`
-/

namespace A358221.P2397512067762565976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A358221.P2397512067762565976

/-! ## A358221.P14403505573413553157

`filter[A042968(n+1), A358220(#)]`
-/

namespace A358221.P14403505573413553157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A358221.P14403505573413553157

/-! ## A358221.P1773490475749542654

`filter[A359794(n+1), A358220(#)]`
-/

namespace A358221.P1773490475749542654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A358221.P1773490475749542654

/-! ## A358221.P16538756800192101190

`filter[A380693(n+2), A358220(#)]`
-/

namespace A358221.P16538756800192101190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380693 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A358221.P16538756800192101190

/-! ## A358221.P13779140127752000695

`filter[A047588(n+1), A358220(#)]`
-/

namespace A358221.P13779140127752000695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A358221.P13779140127752000695

/-!
# A358222: Composite numbers k such that A003415(k) divides A276086(k), where A003415 is the arithmetic derivative, and A276086 is the primorial base exp-function.

The programs for A358222, there is no canonical definition to state claims against.
-/

/-! ## A358222.P18405804509675244661

`∩[A358221(n+1), A393048(n+1)]`
-/

namespace A358222.P18405804509675244661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358222.P18405804509675244661

/-! ## A358222.P11048444695177585054

`filter[A358221(n+1), A005171(#)]`
-/

namespace A358222.P11048444695177585054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A358222.P11048444695177585054

/-! ## A358222.P10644841604202243946

`filter[A358221(n+1), A066247(#)]`
-/

namespace A358222.P10644841604202243946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A358222.P10644841604202243946

/-! ## A358222.P5218546404198538707

`filter[A358221(n+1), A202238(#)]`
-/

namespace A358222.P5218546404198538707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A358222.P5218546404198538707

/-! ## A358222.P8409646752295485614

`lt[A356310(n), A358220(n)]`
-/

namespace A358222.P8409646752295485614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358222.P8409646752295485614

/-! ## A358222.P5509593826936868984

`∩[A002808(n+1), A358221(n+1)]`
-/

namespace A358222.P5509593826936868984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358222.P5509593826936868984

/-! ## A358222.P10387802149887223939

`∩[A018252(n+1), A358221(n+1)]`
-/

namespace A358222.P10387802149887223939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358222.P10387802149887223939

/-! ## A358222.P14831594905442084374

`∩[A141468(n+1), A358221(n+1)]`
-/

namespace A358222.P14831594905442084374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358222.P14831594905442084374

/-! ## A358222.P2131205048443810403

`filter[A356312(n+1), A358220(#)]`
-/

namespace A358222.P2131205048443810403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A358222.P2131205048443810403

/-! ## A358222.P3751163768003914311

`∩[A356312(n+1), A358221(n+1)]`
-/

namespace A358222.P3751163768003914311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358222.P3751163768003914311

/-! ## A358222.P16503738802789970276

`eq[A261143(A327858(n)), A351230(n)]`
-/

namespace A358222.P16503738802789970276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (A327858 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351230 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358222.P16503738802789970276

/-! ## A358222.P10552864140978625094

`filter[A391939(n+1), A358220(#)]`
-/

namespace A358222.P10552864140978625094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A358222.P10552864140978625094

/-! ## A358222.P6293380668383768792

`∩[A358221(n+1), A391939(n+1)]`
-/

namespace A358222.P6293380668383768792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358222.P6293380668383768792

/-! ## A358222.P11810788781098243621

`filter[A002808(n+1), A358220(#)]`
-/

namespace A358222.P11810788781098243621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A358222.P11810788781098243621

/-! ## A358222.P7395775963018573823

`filter[A018252(n+1), A358220(#)]`
-/

namespace A358222.P7395775963018573823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A358222.P7395775963018573823

/-! ## A358222.P4302354881164661359

`filter[A056653(n+1), A358220(#)]`
-/

namespace A358222.P4302354881164661359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A358222.P4302354881164661359

/-! ## A358222.P3407701879376341442

`filter[A062973(n+1), A358220(#)]`
-/

namespace A358222.P3407701879376341442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A358222.P3407701879376341442

/-! ## A358222.P18045505346820153835

`filter[A141468(n+1), A358220(#)]`
-/

namespace A358222.P18045505346820153835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A358222.P18045505346820153835

/-! ## A358222.P18154399662049498635

`filter[A253073(n+1), A358220(#)]`
-/

namespace A358222.P18154399662049498635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A358222.P18154399662049498635

/-! ## A358222.P8236864349776144934

`filter[A176423(n+2), A358220(#)]`
-/

namespace A358222.P8236864349776144934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A358222.P8236864349776144934

/-!
# A358223: Inverse Möbius transform of A181819, prime shadow function.

The programs for A358223, the canonical program `A358223.P17799265343679974090` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358223 has offset 1).

The definition of A358223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358223.P17799265343679974090

`∑{d}[n+1, A181819(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A358223

/-- `∑{d}[n+1, A181819(#)]` -/
def P17799265343679974090.Spec : Prop :=
  ∀ n, P17799265343679974090.a n = A358223 (n + 1)

theorem P17799265343679974090.correct : P17799265343679974090.Spec := by
  intro n
  simp only [A358223, Nat.add_sub_cancel]

end A358223

/-! ## A358223.P5248503912510132668

`∏{e}[n+1, A118482(#)]`
-/

namespace A358223.P5248503912510132668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A118482 (Nat.factorization (f1 n) p)

end

end A358223.P5248503912510132668

namespace A358223

/-- `∏{e}[n+1, A118482(#)]` -/
def P5248503912510132668.Spec : Prop :=
  ∀ n, P5248503912510132668.a n = A358223 (n + 1)

end A358223

/-! ## A358223.P9382582613304453494

`∏{e}[n+1, A007504(#)+1]`
-/

namespace A358223.P9382582613304453494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A007504 (Nat.factorization (f1 n) p) + 1)

end

end A358223.P9382582613304453494

namespace A358223

/-- `∏{e}[n+1, A007504(#)+1]` -/
def P9382582613304453494.Spec : Prop :=
  ∀ n, P9382582613304453494.a n = A358223 (n + 1)

end A358223

/-! ## A358223.P8740880014318156507

`∏{e}[n+1, A014284(#+1)]`
-/

namespace A358223.P8740880014318156507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A014284 (Nat.factorization (f1 n) p + 1)

end

end A358223.P8740880014318156507

namespace A358223

/-- `∏{e}[n+1, A014284(#+1)]` -/
def P8740880014318156507.Spec : Prop :=
  ∀ n, P8740880014318156507.a n = A358223 (n + 1)

end A358223

/-! ## A358223.P17919693802192814852

`∑{d}[A046523(n+1), A329900(A124859(#))]`
-/

namespace A358223.P17919693802192814852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329900 (A124859 d).toNat

end

end A358223.P17919693802192814852

namespace A358223

/-- `∑{d}[A046523(n+1), A329900(A124859(#))]` -/
def P17919693802192814852.Spec : Prop :=
  ∀ n, P17919693802192814852.a n = A358223 (n + 1)

end A358223

/-!
# A358224: Parity of A328386(n), where A328386(n) = A276086(n) mod n, and A276086 is the primorial base exp-function.

The programs for A358224, there is no canonical definition to state claims against.
-/

/-! ## A358224.P11726547579402551089

`A000035(A328386(n+1))`
-/

namespace A358224.P11726547579402551089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A328386 (n + 1)).toNat

end

end A358224.P11726547579402551089

/-! ## A358224.P11363988759552660368

`(A276086(n+1)%(n+1))%2`
-/

namespace A358224.P11363988759552660368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A276086 (n + 1)) (n + 1 : ℤ)) 2

end

end A358224.P11363988759552660368

/-! ## A358224.P2104582749144892018

`((A324580(n+1)/(n+1))%(n+1))%2`
-/

namespace A358224.P2104582749144892018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (SequenceMachineLib.roundAway ((A324580 (n + 1) : ℚ) / (n + 1 : ℚ))) (n + 1 : ℤ)) 2

end

end A358224.P2104582749144892018

/-! ## A358224.P12280825843313240370

`and(1, A328386(A000027(n+1)))`
-/

namespace A358224.P12280825843313240370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A328386 (A000027 (n + 1)).toNat)

end

end A358224.P12280825843313240370

/-! ## A358224.P1794017321441203918

`and(A054977(n), A328386(n+1))`
-/

namespace A358224.P1794017321441203918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A328386 (n + 1))

end

end A358224.P1794017321441203918

/-! ## A358224.P13143050868388427546

`and(A057427(n), A328386(n+1))`
-/

namespace A358224.P13143050868388427546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A328386 (n + 1))

end

end A358224.P13143050868388427546

/-! ## A358224.P13458283236977796334

`and(A052552(n), A328386(n+1))`
-/

namespace A358224.P13458283236977796334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052552 n) (A328386 (n + 1))

end

end A358224.P13458283236977796334

/-! ## A358224.P15608389689212102903

`and(A077860(n), A328386(n+1))`
-/

namespace A358224.P15608389689212102903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077860 n) (A328386 (n + 1))

end

end A358224.P15608389689212102903

/-! ## A358224.P8855255334587922801

`and(A127904(n), A328386(n+1))`
-/

namespace A358224.P8855255334587922801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127904 n) (A328386 (n + 1))

end

end A358224.P8855255334587922801

/-! ## A358224.P3493078551222895463

`and(A000051(n), A328386(n+1))`
-/

namespace A358224.P3493078551222895463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A328386 (n + 1))

end

end A358224.P3493078551222895463

/-! ## A358224.P3642858183229133307

`and(A082605(n), A328386(n+1))`
-/

namespace A358224.P3642858183229133307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082605 n) (A328386 (n + 1))

end

end A358224.P3642858183229133307

/-! ## A358224.P5177903228650638775

`and(A083318(n), A328386(n+1))`
-/

namespace A358224.P5177903228650638775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A328386 (n + 1))

end

end A358224.P5177903228650638775

/-! ## A358224.P15515770392105321242

`and(A048578(n), A328386(n+1))`
-/

namespace A358224.P15515770392105321242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A328386 (n + 1))

end

end A358224.P15515770392105321242

/-! ## A358224.P10318554104311249364

`and(A114001(n), A328386(n+1))`
-/

namespace A358224.P10318554104311249364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A114001 n) (A328386 (n + 1))

end

end A358224.P10318554104311249364

/-! ## A358224.P14114609561524527465

`and(A020737(n), A328386(n+1))`
-/

namespace A358224.P14114609561524527465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A328386 (n + 1))

end

end A358224.P14114609561524527465

/-! ## A358224.P1796720839504703109

`and(A033622(n), A328386(n+1))`
-/

namespace A358224.P1796720839504703109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033622 n) (A328386 (n + 1))

end

end A358224.P1796720839504703109

/-! ## A358224.P6566089734212748796

`and(A083575(n), A328386(n+1))`
-/

namespace A358224.P6566089734212748796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083575 n) (A328386 (n + 1))

end

end A358224.P6566089734212748796

/-! ## A358224.P8377646134601240221

`and(A083686(n), A328386(n+1))`
-/

namespace A358224.P8377646134601240221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083686 n) (A328386 (n + 1))

end

end A358224.P8377646134601240221

/-! ## A358224.P2853706176926383745

`and(A083705(n), A328386(n+1))`
-/

namespace A358224.P2853706176926383745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083705 n) (A328386 (n + 1))

end

end A358224.P2853706176926383745

/-!
# A358225: Numbers k such that A276086(k) mod k is an odd number, where A276086 is the primorial base exp-function.

The programs for A358225, there is no canonical definition to state claims against.
-/

/-! ## A358225.P269535852358188273

`lt[0, A358224(n+1)]+1`
-/

namespace A358225.P269535852358188273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358224 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358225.P269535852358188273

/-! ## A358225.P17210359866953169555

`comp[A358226(n+1)-1]+1`
-/

namespace A358225.P17210359866953169555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358226 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A358225.P17210359866953169555

/-! ## A358225.P14326655169994271928

`record[(n+2)*A358224(n+2)]`
-/

namespace A358225.P14326655169994271928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A358224 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358225.P14326655169994271928

/-! ## A358225.P10361793284842827250

`lt[0, A328386(n+1)%2]+1`
-/

namespace A358225.P10361793284842827250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328386 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358225.P10361793284842827250

/-! ## A358225.P8209811825652992403

`eq[1, A358224(-xor(n, -1))]+1`
-/

namespace A358225.P8209811825652992403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358224 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358225.P8209811825652992403

/-! ## A358225.P2775420628281111928

`eq[1, A000035(A328386(n+1))]+1`
-/

namespace A358225.P2775420628281111928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A328386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358225.P2775420628281111928

/-! ## A358225.P15288548713512648739

`filter[A319701(2*(n+1)), A358224(#)]`
-/

namespace A358225.P15288548713512648739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358224 (f1 j).toNat = 1) n)

end

end A358225.P15288548713512648739

/-! ## A358225.P10554312859897492918

`filter[A322809(2*(n+1)), A358224(#)]`
-/

namespace A358225.P10554312859897492918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358224 (f1 j).toNat = 1) n)

end

end A358225.P10554312859897492918

/-! ## A358225.P452828096011549866

`filter[n+1, A358224(#)]`
-/

namespace A358225.P452828096011549866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358224 (f1 j) = 1) n)

end

end A358225.P452828096011549866

/-! ## A358225.P2321398688295675969

`eq[1, ((A324580(n+1)/(n+1))%(n+1))%2]+1`
-/

namespace A358225.P2321398688295675969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (SequenceMachineLib.roundAway ((A324580 (n + 1) : ℚ) / (n + 1 : ℚ))) (n + 1 : ℤ)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358225.P2321398688295675969

/-! ## A358225.P12893963455529288028

`lt[0, A358224(A028310(n))]`
-/

namespace A358225.P12893963455529288028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358224 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A358225.P12893963455529288028

/-! ## A358225.P17152553395668475907

`eq[1, and(A057427(n), A328386(n+1))]+1`
-/

namespace A358225.P17152553395668475907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A328386 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358225.P17152553395668475907

/-! ## A358225.P7283266592445021356

`eq[1, and(A052552(n), A328386(n+1))]+1`
-/

namespace A358225.P7283266592445021356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052552 n) (A328386 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358225.P7283266592445021356

/-!
# A358226: Numbers k such that A276086(k) mod k is an even number, where A276086 is the primorial base exp-function.

The programs for A358226, there is no canonical definition to state claims against.
-/

/-! ## A358226.P10461741355418241611

`comp[A358224(n+1)+n]`
-/

namespace A358226.P10461741355418241611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358224 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A358226.P10461741355418241611

/-! ## A358226.P5637825052783525906

`lt[A358224(n+1), A358224(n+2)]+1`
-/

namespace A358226.P5637825052783525906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358224 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A358226.P5637825052783525906

/-! ## A358226.P2708585641067122261

`lt[A328386(n+1)%2, 1]+1`
-/

namespace A358226.P2708585641067122261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328386 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A358226.P2708585641067122261

/-! ## A358226.P15244536952880728088

`eq[0, A000035(A328386(n+1))]+1`
-/

namespace A358226.P15244536952880728088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A328386 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358226.P15244536952880728088

/-! ## A358226.P1267853372836642775

`A004442(lt[A328386(n+1)%2, 1])`
-/

namespace A358226.P1267853372836642775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328386 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A358226.P1267853372836642775

/-! ## A358226.P11634138150155843321

`eq[0, ((A324580(n+1)/(n+1))%(n+1))%2]+1`
-/

namespace A358226.P11634138150155843321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (SequenceMachineLib.roundAway ((A324580 (n + 1) : ℚ) / (n + 1 : ℚ))) (n + 1 : ℤ)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358226.P11634138150155843321

/-! ## A358226.P317808246634228135

`lt[A328386(A000038(n)+n)%2, 1]`
-/

namespace A358226.P317808246634228135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328386 (A000038 n + (n : ℤ)).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A358226.P317808246634228135

/-! ## A358226.P4278079271981446929

`eq[A000007(n+3), A358224(n+1)]+1`
-/

namespace A358226.P4278079271981446929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358224 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A358226.P4278079271981446929

/-! ## A358226.P12494939640995682867

`eq[0, and(A057427(n), A328386(n+1))]+1`
-/

namespace A358226.P12494939640995682867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A328386 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358226.P12494939640995682867

/-! ## A358226.P16793688957086460257

`eq[0, and(A052552(n), A328386(n+1))]+1`
-/

namespace A358226.P16793688957086460257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052552 n) (A328386 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358226.P16793688957086460257

/-!
# A358227: Parity of A328382(n), where A328382(n) = A276086(n) mod A003415(n), with A003415 the arithmetic derivative and A276086 the primorial base exp-function.

The programs for A358227, there is no canonical definition to state claims against.
-/

/-! ## A358227.P15579769993062434402

`(A276086(n+2)%A003415(n+2))%2`
-/

namespace A358227.P15579769993062434402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A276086 (n + 2)) (A003415 (n + 2))) 2

end

end A358227.P15579769993062434402

/-! ## A358227.P4308824914978326686

`A000035(A328382(n+2))`
-/

namespace A358227.P4308824914978326686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A328382 (n + 2)).toNat

end

end A358227.P4308824914978326686

/-! ## A358227.P6734554398834987755

`and(A007664(n), A328382(n+2))`
-/

namespace A358227.P6734554398834987755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007664 n) (A328382 (n + 2))

end

end A358227.P6734554398834987755

/-! ## A358227.P6352542436631272173

`and(A054977(n), A328382(n+2))`
-/

namespace A358227.P6352542436631272173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A328382 (n + 2))

end

end A358227.P6352542436631272173

/-! ## A358227.P9341522103474767377

`and(A057427(n), A328382(n+2))`
-/

namespace A358227.P9341522103474767377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A328382 (n + 2))

end

end A358227.P9341522103474767377

/-! ## A358227.P12993374729137189245

`and(A060576(n), A328382(n+2))`
-/

namespace A358227.P12993374729137189245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A328382 (n + 2))

end

end A358227.P12993374729137189245

/-! ## A358227.P16560807382643292272

`and(A052552(n), A328382(n+2))`
-/

namespace A358227.P16560807382643292272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052552 n) (A328382 (n + 2))

end

end A358227.P16560807382643292272

/-! ## A358227.P1264975995210815089

`and(A000051(n), A328382(n+2))`
-/

namespace A358227.P1264975995210815089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A328382 (n + 2))

end

end A358227.P1264975995210815089

/-! ## A358227.P14581376517712276577

`and(A004119(n), A328382(n+2))`
-/

namespace A358227.P14581376517712276577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004119 n) (A328382 (n + 2))

end

end A358227.P14581376517712276577

/-! ## A358227.P16055777203785388741

`and(A048578(n), A328382(n+2))`
-/

namespace A358227.P16055777203785388741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A328382 (n + 2))

end

end A358227.P16055777203785388741

/-! ## A358227.P12498469633330343136

`and(A020737(n), A328382(n+2))`
-/

namespace A358227.P12498469633330343136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A328382 (n + 2))

end

end A358227.P12498469633330343136

/-! ## A358227.P6758132764486657524

`and(A033622(n), A328382(n+2))`
-/

namespace A358227.P6758132764486657524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033622 n) (A328382 (n + 2))

end

end A358227.P6758132764486657524

/-! ## A358227.P4384025320573932514

`and(A035089(n), A328382(n+2))`
-/

namespace A358227.P4384025320573932514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035089 n) (A328382 (n + 2))

end

end A358227.P4384025320573932514

/-! ## A358227.P496382731994936201

`and(A195744(n), A328382(n+2))`
-/

namespace A358227.P496382731994936201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A328382 (n + 2))

end

end A358227.P496382731994936201

/-! ## A358227.P3574431673485490351

`and(A206371(n), A328382(n+2))`
-/

namespace A358227.P3574431673485490351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A206371 n) (A328382 (n + 2))

end

end A358227.P3574431673485490351

/-! ## A358227.P1219369367533243159

`and(A122041(n+1), A328382(n+2))`
-/

namespace A358227.P1219369367533243159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A328382 (n + 2))

end

end A358227.P1219369367533243159

/-! ## A358227.P14168791294816196189

`and(A159225(n+2), A328382(n+2))`
-/

namespace A358227.P14168791294816196189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A159225 (n + 2)) (A328382 (n + 2))

end

end A358227.P14168791294816196189

/-! ## A358227.P12294929664155589089

`and(A170881(n), A328382(n+2))`
-/

namespace A358227.P12294929664155589089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A170881 n) (A328382 (n + 2))

end

end A358227.P12294929664155589089

/-! ## A358227.P14319266079540583532

`and(A196657(n), A328382(n+2))`
-/

namespace A358227.P14319266079540583532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A328382 (n + 2))

end

end A358227.P14319266079540583532

/-!
# A358228: Numbers k such that A276086(k) mod A003415(k) is an odd number, where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

The programs for A358228, there is no canonical definition to state claims against.
-/

/-! ## A358228.P8747979181200045763

`filter[n+2, A358227(#)]`
-/

namespace A358228.P8747979181200045763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358227 (f1 j) = 1) n)

end

end A358228.P8747979181200045763

/-! ## A358228.P8136082682599236313

`eq[1, A358227(n+2)]+2`
-/

namespace A358228.P8136082682599236313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358227 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A358228.P8136082682599236313

/-! ## A358228.P15243741421433577572

`lt[A001938(A328382(n+2)), 1]+2`
-/

namespace A358228.P15243741421433577572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001938 (A328382 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A358228.P15243741421433577572

/-! ## A358228.P15488705257218718492

`lt[A033630(n), A000045(A033630(3*n))]`
-/

namespace A358228.P15488705257218718492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A033630 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358228.P15488705257218718492

/-! ## A358228.P5091370518975695667

`lt[A238086(A238086(3*n+4)), A027642(3*n)]`
-/

namespace A358228.P5091370518975695667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238086 (A238086 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358228.P5091370518975695667

/-!
# A358229: Numbers k such that A276086(k) mod A003415(k) is an even number, where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

The programs for A358229, there is no canonical definition to state claims against.
-/

/-! ## A358229.P15784895254950666271

`eq[0, A358227(n+2)]+2`
-/

namespace A358229.P15784895254950666271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358227 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A358229.P15784895254950666271

/-! ## A358229.P5009959141510091312

`record[(n+2)*A033999(A328382(n+2))]`
-/

namespace A358229.P5009959141510091312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A033999 (A328382 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358229.P5009959141510091312

/-! ## A358229.P9183240509285033451

`lt[A285960(A345923(n+1)), A255852(n)]`
-/

namespace A358229.P9183240509285033451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285960 (A345923 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358229.P9183240509285033451

/-! ## A358229.P9188726216238733173

`lt[A293256(n+4), A000007(A325535(n+1))]`
-/

namespace A358229.P9188726216238733173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293256 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A325535 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358229.P9188726216238733173

/-! ## A358229.P15741164109621083504

`∑[A006928(∑[A210000(n+4)])]`
-/

namespace A358229.P15741164109621083504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210000 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358229.P15741164109621083504

/-!
# A358231: Numbers k for which A276086(k) == 1 (mod k), where A276086 is the primorial base exp-function.

The programs for A358231, there is no canonical definition to state claims against.
-/

/-! ## A358231.P13635192851253306238

`eq[1, A328386(n+1)]+1`
-/

namespace A358231.P13635192851253306238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328386 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358231.P13635192851253306238

/-! ## A358231.P11616022818151137529

`eq[1, (A324580(n+1)/(n+1))%(n+1)]+1`
-/

namespace A358231.P11616022818151137529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A324580 (n + 1) : ℚ) / (n + 1 : ℚ))) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358231.P11616022818151137529

/-! ## A358231.P5854108418735995124

`eq[1, A328386(A028310(n))]`
-/

namespace A358231.P5854108418735995124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328386 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358231.P5854108418735995124

/-! ## A358231.P12603355050854295506

`A020725(eq[1, A328386(n+1)])`
-/

namespace A358231.P12603355050854295506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A358231.P12603355050854295506

/-! ## A358231.P7498614173615325938

`eq[1, A276086(n)%A028310(n)]`
-/

namespace A358231.P7498614173615325938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276086 n) (A028310 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358231.P7498614173615325938

/-!
# A358232: Numbers k for which A276086(k) == 1 mod A003415(k), where A276086 is the primorial base exp-function, and A003415 is the arithmetic derivative.

The programs for A358232, there is no canonical definition to state claims against.
-/

/-! ## A358232.P2549138132104993350

`A000593(A344229(n+2))/A348717(n+1)`
-/

namespace A358232.P2549138132104993350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000593 (A344229 (n + 2)).toNat : ℚ) / (A348717 (n + 1) : ℚ)

end

end A358232.P2549138132104993350

/-!
# A358233: Number of ways n can be expressed as an unordered product of two natural numbers that do not generate any carries when added together in the primorial base.

The programs for A358233, there is no canonical definition to state claims against.
-/

/-! ## A358233.P5905481048651467915

`A000035(n)*A358234(A152271(n))`
-/

namespace A358233.P5905481048651467915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A358234 (A152271 n).toNat

end

end A358233.P5905481048651467915

/-! ## A358233.P17055558566589418340

`A358234(A152271(n))-A000035(n+1)`
-/

namespace A358233.P17055558566589418340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358234 (A152271 n).toNat - A000035 (n + 1)

end

end A358233.P17055558566589418340

/-! ## A358233.P6027317619315915984

`C(A358234(A152271(n)), A152271(n+3))`
-/

namespace A358233.P6027317619315915984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A358234 (A152271 n).toNat).toNat (A152271 (n + 3)).toNat

end

end A358233.P6027317619315915984

/-! ## A358233.P5144643800809234173

`A358234(A152271(n))-val(A000695(n+3)+1, 2)`
-/

namespace A358233.P5144643800809234173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358234 (A152271 n).toNat - (SequenceMachineLib.valuation (A000695 (n + 3) + 1).toNat 2 : ℤ)

end

end A358233.P5144643800809234173

/-! ## A358233.P16517132263211997525

`A358234(A152271(n))-val(A000129(n+3)+1, 2)`
-/

namespace A358233.P16517132263211997525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358234 (A152271 n).toNat - (SequenceMachineLib.valuation (A000129 (n + 3) + 1).toNat 2 : ℤ)

end

end A358233.P16517132263211997525

/-!
# A358234: Number of ways 2n can be expressed as an unordered product of two natural numbers that do not generate any carries when added together in the primorial base.

The programs for A358234, there is no canonical definition to state claims against.
-/

/-! ## A358234.P1598403675985510037

`A358233(2*(n+1))`
-/

namespace A358234.P1598403675985510037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358233 (2 * (n + 1))

end

end A358234.P1598403675985510037

/-! ## A358234.P14008590775966206996

`A358233(A005843(n+1))%A000040(n+1)`
-/

namespace A358234.P14008590775966206996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358233 (A005843 (n + 1)).toNat) (A000040 (n + 1))

end

end A358234.P14008590775966206996

/-! ## A358234.P8372454119979953134

`gcd(A014561(A061040(2*(n+3))), A240975(3*n+2))`
-/

namespace A358234.P8372454119979953134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014561 (A061040 (2 * (n + 3))).toNat) (A240975 (3 * n + 2))

end

end A358234.P8372454119979953134

/-!
# A358235: Number of ways n' (the arithmetic derivative of n) can be formed as a sum (x * y') + (x' * y) from two factors x and y of n, with x <= y, so that the said sum does not involve any carries when the addition is done in the primorial base.

The programs for A358235, there is no canonical definition to state claims against.
-/

/-! ## A358235.P8281915484747384177

`A067513(∏{e}[A017990(n+1), #])`
-/

namespace A358235.P8281915484747384177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A358235.P8281915484747384177

/-! ## A358235.P8280614007750981748

`A211100(and(A001055(n+1), A329398(n+1)))`
-/

namespace A358235.P8280614007750981748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (Int.land (A001055 (n + 1)) (A329398 (n + 1))).toNat

end

end A358235.P8280614007750981748

/-! ## A358235.P8080190813194944069

`A198067(A264890(n+2))`
-/

namespace A358235.P8080190813194944069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198067 (A264890 (n + 2)).toNat

end

end A358235.P8080190813194944069

/-! ## A358235.P4668211530921050539

`gcd(∑{e}[n+1, #], A001222(A293817(n)))`
-/

namespace A358235.P4668211530921050539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A001222 (A293817 n).toNat)

end

end A358235.P4668211530921050539

/-! ## A358235.P3948869199063976477

`gcd(∏{p}[n+1, #], A196564(A335670(n+1)))`
-/

namespace A358235.P3948869199063976477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A196564 (A335670 (n + 1)).toNat)

end

end A358235.P3948869199063976477

/-!
# A358236: Number of factorizations of n where the sum of the factors is carryfree when the addition is done in the primorial base.

The programs for A358236, there is no canonical definition to state claims against.
-/

/-! ## A358236.P17214506204289450421

`A000041(A358233(n+1)%A075929(n))`
-/

namespace A358236.P17214506204289450421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.tmod (A358233 (n + 1)) (A075929 n)).toNat

end

end A358236.P17214506204289450421

/-! ## A358236.P10357273212010744398

`A347446(A358233(n+1))%A225386(2*n+5)`
-/

namespace A358236.P10357273212010744398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347446 (A358233 (n + 1)).toNat) (A225386 (2 * n + 5))

end

end A358236.P10357273212010744398

/-! ## A358236.P9128400166000471169

`A000041(A358233(n+1))%A118257(n+1)`
-/

namespace A358236.P9128400166000471169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A358233 (n + 1)).toNat) (A118257 (n + 1))

end

end A358236.P9128400166000471169

/-! ## A358236.P12691992479390739781

`gcd(A001400(A358233(n+1)), A165632(2*(n+1)))`
-/

namespace A358236.P12691992479390739781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001400 (A358233 (n + 1)).toNat) (A165632 (2 * (n + 1)))

end

end A358236.P12691992479390739781

/-! ## A358236.P14230455331403882377

`A347446(A358233(n+1))%A180628(n+1)`
-/

namespace A358236.P14230455331403882377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347446 (A358233 (n + 1)).toNat) (A180628 (n + 1))

end

end A358236.P14230455331403882377

/-!
# A358237: Palindromes of the form k^2 + 2.

The programs for A358237, there is no canonical definition to state claims against.
-/

/-! ## A358237.P8592972480361564235

`A358207(n+1)²+2`
-/

namespace A358237.P8592972480361564235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358207 (n + 1) ^ 2 + 2

end

end A358237.P8592972480361564235

/-! ## A358237.P13388710171729770263

`∩[A002113(n+1), n²+2]`
-/

namespace A358237.P13388710171729770263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A358237.P13388710171729770263

/-! ## A358237.P17182254893863784970

`A059100(A358207(n+1))`
-/

namespace A358237.P17182254893863784970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 (A358207 (n + 1)).toNat

end

end A358237.P17182254893863784970

/-! ## A358237.P12735941514155456028

`∩[A059100(n), A002113(n+1)]`
-/

namespace A358237.P12735941514155456028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358237.P12735941514155456028

/-! ## A358237.P9021229979870106193

`A010051(2*(n+1))+A010000(A358207(n+1))`
-/

namespace A358237.P9021229979870106193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1)) + A010000 (A358207 (n + 1)).toNat

end

end A358237.P9021229979870106193

/-!
# A358238: a(n) is the least prime p such that the primes from prime(n) to p contain a complete set of residues modulo prime(n).

The programs for A358238, there is no canonical definition to state claims against.
-/

/-! ## A358238.P2480281673267071472

`A085420(Δ[A007504(n)])`
-/

namespace A358238.P2480281673267071472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085420 (f1 (n + 1) - f1 n).toNat

end

end A358238.P2480281673267071472

/-! ## A358238.P14085897296060845995

`A085420(A000040(n+1))`
-/

namespace A358238.P14085897296060845995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085420 (A000040 (n + 1)).toNat

end

end A358238.P14085897296060845995

/-! ## A358238.P9917011842693521375

`A085420(A008578(n+2))`
-/

namespace A358238.P9917011842693521375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085420 (A008578 (n + 2)).toNat

end

end A358238.P9917011842693521375

/-! ## A358238.P3233691918616415941

`A085420(A182986(n+2))`
-/

namespace A358238.P3233691918616415941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085420 (A182986 (n + 2)).toNat

end

end A358238.P3233691918616415941

/-! ## A358238.P18385434137272620115

`A085420(record[A006530(n+2)])`
-/

namespace A358238.P18385434137272620115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085420 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358238.P18385434137272620115

/-! ## A358238.P15388865818697864090

`A085420(record[A020639(n+2)])`
-/

namespace A358238.P15388865818697864090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085420 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358238.P15388865818697864090

/-! ## A358238.P5093073770564777424

`A085420(A034694(A093416(n+1)))`
-/

namespace A358238.P5093073770564777424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085420 (A034694 (A093416 (n + 1)).toNat).toNat

end

end A358238.P5093073770564777424

/-!
# A358241: Number of connected Dynkin diagrams with n nodes.

The programs for A358241, the canonical program `A358241.P12702194229435409543` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358241 has offset 1).

The definition of A358241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358241.P12702194229435409543

`a(n-1)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=5, a(4)=4, a(5)=5, a(6)=5, a(7)=5, a(8)=4`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A358241

/-- `a(n-1)` -/
def P12702194229435409543.Spec : Prop :=
  ∀ n, (P12702194229435409543.a n : ℤ) = A358241 (n + 1)

theorem P12702194229435409543.correct : P12702194229435409543.Spec := by
  intro n
  simp only [A358241, Nat.add_sub_cancel]

end A358241

/-!
# A358243: Number of n-regular, N_0-weighted pseudographs on 2 vertices with total edge weight 3, up to isomorphism.

The programs for A358243, the canonical program `A358243.P3948769772899975271` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358243 has offset 1).

The definition of A358243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358243.P3948769772899975271

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=15, a(4)=21, a(5)=28`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A358243

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P3948769772899975271.Spec : Prop :=
  ∀ n, P3948769772899975271.a n = A358243 (n + 1)

theorem P3948769772899975271.correct : P3948769772899975271.Spec := by
  intro n
  simp only [A358243, Nat.add_sub_cancel]

end A358243

/-! ## A358243.P6748209942495600771

`∑[floor(a(n-2))]` with `a(0)=1, a(1)=3, a(2)=5, a(3)=6, a(4)=6, a(5)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A358243.P6748209942495600771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 6, 6, 7] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358243.P6748209942495600771

namespace A358243

/-- `∑[floor(a(n-2))]` -/
def P6748209942495600771.Spec : Prop :=
  ∀ n, (P6748209942495600771.a n : ℤ) = A358243 (n + 1)

end A358243

/-! ## A358243.P204862099423090061

`ogf((1+3x+4x^2+3x^3+x^4+x^5)/(1-x-x^2+x^3))`
-/

namespace A358243.P204862099423090061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4, 3, 1, 1] [1, -1, -1, 1] n

end

end A358243.P204862099423090061

namespace A358243

/-- `ogf((1+3x+4x^2+3x^3+x^4+x^5)/(1-x-x^2+x^3))` -/
def P204862099423090061.Spec : Prop :=
  ∀ n, P204862099423090061.a n = A358243 (n + 1)

end A358243

/-! ## A358243.P16227812126977528298

`∑[A127299(a(n-1))]` with `a(0)=1, a(1)=3, a(2)=5, a(3)=6, a(4)=6`
-/

namespace A358243.P16227812126977528298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 6, 6] fun n f1 =>
  A127299 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358243.P16227812126977528298

namespace A358243

/-- `∑[A127299(a(n-1))]` -/
def P16227812126977528298.Spec : Prop :=
  ∀ n, P16227812126977528298.a n = A358243 (n + 1)

end A358243

/-! ## A358243.P10094285421957072430

`A130824(n)+A004526(record[A184418(n+1)])`
-/

namespace A358243.P10094285421957072430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358243.P10094285421957072430

namespace A358243

/-- `A130824(n)+A004526(record[A184418(n+1)])` -/
def P10094285421957072430.Spec : Prop :=
  ∀ n, P10094285421957072430.a n = A358243 (n + 1)

end A358243

/-!
# A358244: Number of n-regular, N_0-weighted pseudographs on 2 vertices with total edge weight 4, up to isomorphism.

The programs for A358244, the canonical program `A358244.P4497825985290884309` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358244 has offset 1).

The definition of A358244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358244.P4497825985290884309

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=6, a(2)=13, a(3)=27, a(4)=38, a(5)=55, a(6)=67, a(7)=85`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A358244

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P4497825985290884309.Spec : Prop :=
  ∀ n, P4497825985290884309.a n = A358244 (n + 1)

theorem P4497825985290884309.correct : P4497825985290884309.Spec := by
  intro n
  simp only [A358244, Nat.add_sub_cancel]

end A358244

/-!
# A358245: Number of n-regular, N_0-weighted pseudographs on 2 vertices with total edge weight 5, up to isomorphism.

The programs for A358245, the canonical program `A358245.P2675457940124756065` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358245 has offset 1).

The definition of A358245 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358245.P2675457940124756065

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=6, a(2)=17, a(3)=36, a(4)=59, a(5)=87, a(6)=114, a(7)=145, a(8)=173, a(9)=205`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A358245

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P2675457940124756065.Spec : Prop :=
  ∀ n, P2675457940124756065.a n = A358245 (n + 1)

theorem P2675457940124756065.correct : P2675457940124756065.Spec := by
  intro n
  simp only [A358245, Nat.add_sub_cancel]

end A358245

/-! ## A358245.P5664031570270994841

`8^a(n-1)` with `a(0)=1, a(1)=6, a(2)=17, a(3)=36, a(4)=59, a(5)=87, a(6)=114`
-/

namespace A358245.P5664031570270994841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 17, 36, 59, 87, 114] fun n a =>
  8 ^ a (n - 1)

end

end A358245.P5664031570270994841

namespace A358245

/-- `8^a(n-1)` -/
def P5664031570270994841.Spec : Prop :=
  ∀ n, (P5664031570270994841.a n : ℤ) = A358245 (n + 1)

end A358245

/-! ## A358245.P14612843836011357552

`xor(8*A000051(a(n-1)*n), 2)` with `a(0)=1, a(1)=6, a(2)=17, a(3)=36, a(4)=59, a(5)=87, a(6)=114`
-/

namespace A358245.P14612843836011357552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 17, 36, 59, 87, 114] fun n a =>
  Int.xor (8 * A000051 (a (n - 1) * (n : ℤ)).toNat) 2

end

end A358245.P14612843836011357552

namespace A358245

/-- `xor(8*A000051(a(n-1)*n), 2)` -/
def P14612843836011357552.Spec : Prop :=
  ∀ n, P14612843836011357552.a n = A358245 (n + 1)

end A358245

/-!
# A358246: Number of n-regular, N_0-weighted pseudographs on 2 vertices with total edge weight 6, up to isomorphism.

The programs for A358246, there is no canonical definition to state claims against.
-/

/-! ## A358246.P8626026438106904160

`∑[A236998(∑[A154670(n+1)-1])]`
-/

namespace A358246.P8626026438106904160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154670 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236998 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358246.P8626026438106904160

/-! ## A358246.P1599313096792732717

`A350229(A350237(3*n+1))+A056838(2*(n+2))`
-/

namespace A358246.P1599313096792732717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350229 (A350237 (3 * n + 1)).toNat + A056838 (2 * (n + 2))

end

end A358246.P1599313096792732717

/-!
# A358247: Number of n-regular, N_0-weighted pseudographs on 2 vertices with total edge weight 7, up to isomorphism.

The programs for A358247, there is no canonical definition to state claims against.
-/

/-! ## A358247.P14569955032464773651

`A346009(A360342(n))+A270437(n+1)`
-/

namespace A358247.P14569955032464773651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346009 (A360342 n).toNat + A270437 (n + 1)

end

end A358247.P14569955032464773651

/-!
# A358248: Number of n-regular, N_0-weighted pseudographs on 2 vertices with total edge weight 8, up to isomorphism.

The programs for A358248, there is no canonical definition to state claims against.
-/

/-! ## A358248.P1004381911552343986

`A179777(∑[∑[A006950(3*n)]])`
-/

namespace A358248.P1004381911552343986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179777 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A358248.P1004381911552343986

/-!
# A358250: Numbers whose square has a number of divisors coprime to 210.

The programs for A358250, there is no canonical definition to state claims against.
-/

/-! ## A358250.P7613591878134645552

`sqrt(A358001(n+1))`
-/

namespace A358250.P7613591878134645552
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A358001 (n + 1) : ℝ)

end

end A358250.P7613591878134645552

/-! ## A358250.P2073365612757288337

`A076469(A076437(n+1)%A076448(n+2))`
-/

namespace A358250.P2073365612757288337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076469 (Int.tmod (A076437 (n + 1)) (A076448 (n + 2))).toNat

end

end A358250.P2073365612757288337

/-! ## A358250.P7433947873744883521

`A076469(A013936(n+1)%A361720(n+3))`
-/

namespace A358250.P7433947873744883521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076469 (Int.tmod (A013936 (n + 1)) (A361720 (n + 3))).toNat

end

end A358250.P7433947873744883521

/-! ## A358250.P17020439364110709742

`A076469(A013936(n+1))%A179790(3*n+1)`
-/

namespace A358250.P17020439364110709742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076469 (A013936 (n + 1)).toNat) (A179790 (3 * n + 1))

end

end A358250.P17020439364110709742

/-!
# A358251: a(n) is the minimum number of peeling sequences for a set of n points in the plane, no three of which are collinear.

The programs for A358251, there is no canonical definition to state claims against.
-/

/-! ## A358251.P9405215533119190068

`ogf((1-x+6x^4)/(1-3x))`
-/

namespace A358251.P9405215533119190068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, 0, 6] [1, -3] n

end

end A358251.P9405215533119190068

/-!
# A358252: a(n) is the least number with exactly n non-unitary square divisors.

The programs for A358252, there is no canonical definition to state claims against.
-/

/-! ## A358252.P13975801119011597111

`A003815(A358253(n+1))`
-/

namespace A358252.P13975801119011597111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A358253 (n + 1)).toNat

end

end A358252.P13975801119011597111

/-! ## A358252.P6128519153451819766

`A358253(A032555(n+1))`
-/

namespace A358252.P6128519153451819766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358253 (A032555 (n + 1)).toNat

end

end A358252.P6128519153451819766

/-! ## A358252.P9288690411811045943

`A358253(A032557(n+1))`
-/

namespace A358252.P9288690411811045943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358253 (A032557 (n + 1)).toNat

end

end A358252.P9288690411811045943

/-! ## A358252.P9175809201024728988

`A358253(A032559(n+1))`
-/

namespace A358252.P9175809201024728988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358253 (A032559 (n + 1)).toNat

end

end A358252.P9175809201024728988

/-! ## A358252.P16093427046122639058

`A358253(A032563(n+1))`
-/

namespace A358252.P16093427046122639058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358253 (A032563 (n + 1)).toNat

end

end A358252.P16093427046122639058

/-!
# A358253: Numbers with a record number of non-unitary square divisors.

The programs for A358253, there is no canonical definition to state claims against.
-/

/-! ## A358253.P16472186688909201473

`A358252(A007095(n))%A045345(n+3)`
-/

namespace A358253.P16472186688909201473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358252 (A007095 n).toNat) (A045345 (n + 3))

end

end A358253.P16472186688909201473

/-!
# A358255: Primitive Niven numbers ending with zero.

The programs for A358255, there is no canonical definition to state claims against.
-/

/-! ## A358255.P8208514627057584421

`∩[10*n, A356349(n+1)]`
-/

namespace A358255.P8208514627057584421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358255.P8208514627057584421

/-! ## A358255.P13213287763012446887

`∩[A356349(n+1), A008592(n)]`
-/

namespace A358255.P13213287763012446887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358255.P13213287763012446887

/-! ## A358255.P9913207434018056491

`∩[A096092(n+1), A389220(n+1)]`
-/

namespace A358255.P9913207434018056491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358255.P9913207434018056491

/-!
# A358257: The least significant digit of k such that 2^k, 5^k, 8^k start with the same digit.

The programs for A358257, there is no canonical definition to state claims against.
-/

/-! ## A358257.P9072415258467153923

`A010879(A358197(n+1))`
-/

namespace A358257.P9072415258467153923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A358197 (n + 1)).toNat

end

end A358257.P9072415258467153923

/-! ## A358257.P6019882978630805812

`A358197(n+1)%A040020(n)`
-/

namespace A358257.P6019882978630805812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358197 (n + 1)) (A040020 n)

end

end A358257.P6019882978630805812

/-!
# A358258: First n-bit number to appear in Van Eck's sequence (A181391).

The programs for A358258, there is no canonical definition to state claims against.
-/

/-! ## A358258.P7659043770692028107

`A181391(A358259(n+1))`
-/

namespace A358258.P7659043770692028107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181391 (A358259 (n + 1)).toNat

end

end A358258.P7659043770692028107

/-! ## A358258.P1416130343470674471

`A000007(2*(n+2))-A171958(A358259(n+1))`
-/

namespace A358258.P1416130343470674471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * (n + 2)) - A171958 (A358259 (n + 1)).toNat

end

end A358258.P1416130343470674471

/-!
# A358259: Positions of the first n-bit number to appear in Van Eck's sequence (A181391).

The programs for A358259, there is no canonical definition to state claims against.
-/

/-! ## A358259.P11780800947237166917

`A171862(A358258(n+1))`
-/

namespace A358259.P11780800947237166917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171862 (A358258 (n + 1)).toNat

end

end A358259.P11780800947237166917

/-!
# A358260: a(n) is the number of infinitary square divisors of n.

The programs for A358260, the canonical program `A358260.P17846008224269893161` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358260 has offset 1).

The definition of A358260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358260.P17846008224269893161

`gcd(8, ∏{e}[n+1, C(2*#, #)]/∏{e}[n+1, #%2+1])`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A358260

/-- `gcd(8, ∏{e}[n+1, C(2*#, #)]/∏{e}[n+1, #%2+1])` -/
def P17846008224269893161.Spec : Prop :=
  ∀ n, (P17846008224269893161.a n : ℤ) = A358260 (n + 1)

theorem P17846008224269893161.correct : P17846008224269893161.Spec := by
  intro n
  simp only [A358260, Nat.add_sub_cancel]

end A358260

/-! ## A358260.P1100385296556307773

`A037445(A000188(n+1))`
-/

namespace A358260.P1100385296556307773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A000188 (n + 1)).toNat

end

end A358260.P1100385296556307773

namespace A358260

/-- `A037445(A000188(n+1))` -/
def P1100385296556307773.Spec : Prop :=
  ∀ n, P1100385296556307773.a n = A358260 (n + 1)

end A358260

/-! ## A358260.P2372336336558713508

`A037445(A008833(n+1))`
-/

namespace A358260.P2372336336558713508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A008833 (n + 1)).toNat

end

end A358260.P2372336336558713508

namespace A358260

/-- `A037445(A008833(n+1))` -/
def P2372336336558713508.Spec : Prop :=
  ∀ n, P2372336336558713508.a n = A358260 (n + 1)

end A358260

/-! ## A358260.P14687427361066471165

`2^A087436(A293442(n+1))`
-/

namespace A358260.P14687427361066471165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A087436 (A293442 (n + 1)).toNat : ℤ)

end

end A358260.P14687427361066471165

namespace A358260

/-- `2^A087436(A293442(n+1))` -/
def P14687427361066471165.Spec : Prop :=
  ∀ n, P14687427361066471165.a n = (A358260 (n + 1) : ℚ)

end A358260

/-! ## A358260.P1948878797570118680

`A046951(n+1)-A358261(n+1)`
-/

namespace A358260.P1948878797570118680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A358261 (n + 1)

end

end A358260.P1948878797570118680

namespace A358260

/-- `A046951(n+1)-A358261(n+1)` -/
def P1948878797570118680.Spec : Prop :=
  ∀ n, P1948878797570118680.a n = A358260 (n + 1)

theorem P1948878797570118680.correct : P1948878797570118680.Spec := by
  intro n
  simp only [A358260, Nat.add_sub_cancel, A358260.P1948878797570118680.a, A358260.P17846008224269893161.f1, A358260.P17846008224269893161.f2, A358260.P17846008224269893161.a, A046951, A046951.P3618498099021746421.a, A358261, A358261.P13898711941004689551.a, A000005, A000005.P16091521709108585461.a, A056595, A056595.P6705739557680561554.f1, A056595.P6705739557680561554.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A049240, A049240.P14203187308614321582.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A358260

/-! ## A358260.P725268591372769776

`A037445(n+1)/A055076(n+1)`
-/

namespace A358260.P725268591372769776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037445 (n + 1) : ℚ) / (A055076 (n + 1) : ℚ)

end

end A358260.P725268591372769776

namespace A358260

/-- `A037445(n+1)/A055076(n+1)` -/
def P725268591372769776.Spec : Prop :=
  ∀ n, P725268591372769776.a n = (A358260 (n + 1) : ℚ)

end A358260

/-! ## A358260.P16596103493817075863

`∑{d}[n+1, A037445(#)*A162512((n+1)/#)]`
-/

namespace A358260.P16596103493817075863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037445 d * A162512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358260.P16596103493817075863

namespace A358260

/-- `∑{d}[n+1, A037445(#)*A162512((n+1)/#)]` -/
def P16596103493817075863.Spec : Prop :=
  ∀ n, P16596103493817075863.a n = A358260 (n + 1)

end A358260

/-!
# A358261: a(n) is the number of noninfinitary square divisors of n.

The programs for A358261, the canonical program `A358261.P13898711941004689551` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358261 has offset 1).

The definition of A358261 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, A358260, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358261.P13898711941004689551

`A046951(n+1)-A358260(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A358261

/-- `A046951(n+1)-A358260(n+1)` -/
def P13898711941004689551.Spec : Prop :=
  ∀ n, P13898711941004689551.a n = A358261 (n + 1)

theorem P13898711941004689551.correct : P13898711941004689551.Spec := by
  intro n
  simp only [A358261, Nat.add_sub_cancel]

end A358261

/-! ## A358261.P10727555035167661378

`A348341(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A358261.P10727555035167661378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348341 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A358261.P10727555035167661378

namespace A358261

/-- `A348341(∏{p}[n+1, #^val(n+1, #²)])` -/
def P10727555035167661378.Spec : Prop :=
  ∀ n, P10727555035167661378.a n = A358261 (n + 1)

end A358261

/-! ## A358261.P6087371393898288969

`A046951(n+1)-A037445(A008833(n+1))`
-/

namespace A358261.P6087371393898288969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A037445 (A008833 (n + 1)).toNat

end

end A358261.P6087371393898288969

namespace A358261

/-- `A046951(n+1)-A037445(A008833(n+1))` -/
def P6087371393898288969.Spec : Prop :=
  ∀ n, P6087371393898288969.a n = A358261 (n + 1)

end A358261

/-! ## A358261.P9673789873444482217

`A307597(8*A294874(n+1)²)`
-/

namespace A358261.P9673789873444482217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (8 * A294874 (n + 1) ^ 2).toNat

end

end A358261.P9673789873444482217

namespace A358261

/-- `A307597(8*A294874(n+1)²)` -/
def P9673789873444482217.Spec : Prop :=
  ∀ n, P9673789873444482217.a n = A358261 (n + 1)

end A358261

/-! ## A358261.P9244461068937199995

`A330925(A046951(n+1))^A238189(n+2)`
-/

namespace A358261.P9244461068937199995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330925 (A046951 (n + 1)).toNat : ℚ) ^ (A238189 (n + 2) : ℤ)

end

end A358261.P9244461068937199995

namespace A358261

/-- `A330925(A046951(n+1))^A238189(n+2)` -/
def P9244461068937199995.Spec : Prop :=
  ∀ n, P9244461068937199995.a n = (A358261 (n + 1) : ℚ)

end A358261

/-! ## A358261.P3327739037634150046

`A336694(A046951(n+1))%A342096(n+1)`
-/

namespace A358261.P3327739037634150046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336694 (A046951 (n + 1)).toNat) (A342096 (n + 1))

end

end A358261.P3327739037634150046

namespace A358261

/-- `A336694(A046951(n+1))%A342096(n+1)` -/
def P3327739037634150046.Spec : Prop :=
  ∀ n, P3327739037634150046.a n = A358261 (n + 1)

end A358261

/-! ## A358261.P9566823920763114211

`A330925(A046951(n+1)%A108917(3*n))`
-/

namespace A358261.P9566823920763114211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330925 (Int.tmod (A046951 (n + 1)) (A108917 (3 * n))).toNat

end

end A358261.P9566823920763114211

namespace A358261

/-- `A330925(A046951(n+1)%A108917(3*n))` -/
def P9566823920763114211.Spec : Prop :=
  ∀ n, P9566823920763114211.a n = A358261 (n + 1)

end A358261

/-! ## A358261.P4468409287349370810

`A004526(A178099(n+1)%A046951(n+1))`
-/

namespace A358261.P4468409287349370810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A178099 (n + 1)) (A046951 (n + 1))).toNat

end

end A358261.P4468409287349370810

namespace A358261

/-- `A004526(A178099(n+1)%A046951(n+1))` -/
def P4468409287349370810.Spec : Prop :=
  ∀ n, P4468409287349370810.a n = A358261 (n + 1)

end A358261

/-! ## A358261.P2752575868344148463

`A029294(A046951(n+1))^A074064(n)`
-/

namespace A358261.P2752575868344148463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029294 (A046951 (n + 1)).toNat : ℚ) ^ (A074064 n : ℤ)

end

end A358261.P2752575868344148463

namespace A358261

/-- `A029294(A046951(n+1))^A074064(n)` -/
def P2752575868344148463.Spec : Prop :=
  ∀ n, P2752575868344148463.a n = (A358261 (n + 1) : ℚ)

end A358261

/-! ## A358261.P1122850216434555540

`A157686(9^∏{e}[n+1, floor(#/2)+1])`
-/

namespace A358261.P1122850216434555540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1) : ℤ))).toNat

end

end A358261.P1122850216434555540

namespace A358261

/-- `A157686(9^∏{e}[n+1, floor(#/2)+1])` -/
def P1122850216434555540.Spec : Prop :=
  ∀ n, P1122850216434555540.a n = A358261 (n + 1)

end A358261

/-! ## A358261.P18089112983202139052

`A010057(7^A046951(n+1))`
-/

namespace A358261.P18089112983202139052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A046951 (n + 1) : ℤ))).toNat

end

end A358261.P18089112983202139052

namespace A358261

/-- `A010057(7^A046951(n+1))` -/
def P18089112983202139052.Spec : Prop :=
  ∀ n, P18089112983202139052.a n = A358261 (n + 1)

end A358261

/-! ## A358261.P9899274025837650766

`A162641(C(22, A046951(n+1)))`
-/

namespace A358261.P9899274025837650766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (Nat.choose 22 (A046951 (n + 1)).toNat)

end

end A358261.P9899274025837650766

namespace A358261

/-- `A162641(C(22, A046951(n+1)))` -/
def P9899274025837650766.Spec : Prop :=
  ∀ n, P9899274025837650766.a n = A358261 (n + 1)

end A358261

/-! ## A358261.P17611978362983692242

`(4%A046951(n+1))^A073609(n)`
-/

namespace A358261.P17611978362983692242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod 4 (A046951 (n + 1)) : ℚ) ^ (A073609 n : ℤ)

end

end A358261.P17611978362983692242

namespace A358261

/-- `(4%A046951(n+1))^A073609(n)` -/
def P17611978362983692242.Spec : Prop :=
  ∀ n, P17611978362983692242.a n = (A358261 (n + 1) : ℚ)

end A358261

/-! ## A358261.P4922529509527131024

`A328891(A328842(∏{p}[n+1, #^val(n+1, #²)]²))`
-/

namespace A358261.P4922529509527131024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328891 (A328842 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)).toNat

end

end A358261.P4922529509527131024

namespace A358261

/-- `A328891(A328842(∏{p}[n+1, #^val(n+1, #²)]²))` -/
def P4922529509527131024.Spec : Prop :=
  ∀ n, P4922529509527131024.a n = A358261 (n + 1)

end A358261

/-! ## A358261.P10886531023274774084

`A355912(lcm(8, A355936(n+1)))`
-/

namespace A358261.P10886531023274774084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355912 (Int.lcm 8 (A355936 (n + 1)))

end

end A358261.P10886531023274774084

namespace A358261

/-- `A355912(lcm(8, A355936(n+1)))` -/
def P10886531023274774084.Spec : Prop :=
  ∀ n, P10886531023274774084.a n = A358261 (n + 1)

end A358261

/-! ## A358261.P13056592162168761854

`∑{e}[(n+1)²/∏{p}[n+1, #], A267417(A267444(#))]`
-/

namespace A358261.P13056592162168761854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A267417 (A267444 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)).toNat

end

end A358261.P13056592162168761854

namespace A358261

/-- `∑{e}[(n+1)²/∏{p}[n+1, #], A267417(A267444(#))]` -/
def P13056592162168761854.Spec : Prop :=
  ∀ n, P13056592162168761854.a n = A358261 (n + 1)

end A358261

/-! ## A358261.P14304588173128170498

`val(A063775(A008833(n+1)²), 3)`
-/

namespace A358261.P14304588173128170498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A063775 (A008833 (n + 1) ^ 2).toNat).toNat 3

end

end A358261.P14304588173128170498

namespace A358261

/-- `val(A063775(A008833(n+1)²), 3)` -/
def P14304588173128170498.Spec : Prop :=
  ∀ n, (P14304588173128170498.a n : ℤ) = A358261 (n + 1)

end A358261

/-! ## A358261.P15013022026501930461

`A063775(A008833(n+1)²)%A063775(n+1)`
-/

namespace A358261.P15013022026501930461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063775 (A008833 (n + 1) ^ 2).toNat) (A063775 (n + 1))

end

end A358261.P15013022026501930461

namespace A358261

/-- `A063775(A008833(n+1)²)%A063775(n+1)` -/
def P15013022026501930461.Spec : Prop :=
  ∀ n, P15013022026501930461.a n = A358261 (n + 1)

end A358261

/-! ## A358261.P237072343615388654

`val(A063775((n+1)²), 3)`
-/

namespace A358261.P237072343615388654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A063775 ((n + 1) ^ 2)).toNat 3

end

end A358261.P237072343615388654

namespace A358261

/-- `val(A063775((n+1)²), 3)` -/
def P237072343615388654.Spec : Prop :=
  ∀ n, (P237072343615388654.a n : ℤ) = A358261 (n + 1)

end A358261

/-!
# A358262: a(n) is the least number with exactly n noninfinitary square divisors.

The programs for A358262, there is no canonical definition to state claims against.
-/

/-! ## A358262.P1486861928635610212

`A361418(n)²`
-/

namespace A358262.P1486861928635610212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361418 n ^ 2

end

end A358262.P1486861928635610212

/-! ## A358262.P7736141740289137770

`A361418(n)^A001221(∏{e}[n+1, 3*2^#])`
-/

namespace A358262.P7736141740289137770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361418 n : ℚ) ^ (A001221 (∏ p ∈ Nat.primeFactors (f1 n), 3 * 2 ^ Nat.factorization (f1 n) p) : ℤ)

end

end A358262.P7736141740289137770

/-! ## A358262.P6418468480228821114

`A361418(n)^A020639(A008574(n))`
-/

namespace A358262.P6418468480228821114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361418 n : ℚ) ^ (A020639 (A008574 n).toNat : ℤ)

end

end A358262.P6418468480228821114

/-! ## A358262.P13412691828756890744

`A361418(n)^A020639(A001013(n+1))`
-/

namespace A358262.P13412691828756890744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361418 n : ℚ) ^ (A020639 (A001013 (n + 1)).toNat : ℤ)

end

end A358262.P13412691828756890744

/-! ## A358262.P8000641055935199254

`A361418(n)^A020639(A025487(n+1))`
-/

namespace A358262.P8000641055935199254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361418 n : ℚ) ^ (A020639 (A025487 (n + 1)).toNat : ℤ)

end

end A358262.P8000641055935199254

/-! ## A358262.P3891774152048737002

`A361418(n)^A020639(A064783(n+1))`
-/

namespace A358262.P3891774152048737002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361418 n : ℚ) ^ (A020639 (A064783 (n + 1)).toNat : ℤ)

end

end A358262.P3891774152048737002

/-! ## A358262.P2855257480344662752

`A361418(n)^A140635(A020639(n+1))`
-/

namespace A358262.P2855257480344662752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361418 n : ℚ) ^ (A140635 (A020639 (n + 1)).toNat : ℤ)

end

end A358262.P2855257480344662752

/-! ## A358262.P15899357053834712240

`A361418(n)^A020639(A247451(n+1))`
-/

namespace A358262.P15899357053834712240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361418 n : ℚ) ^ (A020639 (A247451 (n + 1)).toNat : ℤ)

end

end A358262.P15899357053834712240

/-! ## A358262.P8579075876955714811

`A361418(n)^A020639(A291876(n+1))`
-/

namespace A358262.P8579075876955714811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361418 n : ℚ) ^ (A020639 (A291876 (n + 1)).toNat : ℤ)

end

end A358262.P8579075876955714811

/-! ## A358262.P16176798892422496998

`A361418(n)^A020639(A361419(n+5))`
-/

namespace A358262.P16176798892422496998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361418 n : ℚ) ^ (A020639 (A361419 (n + 5)).toNat : ℤ)

end

end A358262.P16176798892422496998

/-!
# A358263: Numbers with a record number of noninfinitary square divisors.

The programs for A358263, there is no canonical definition to state claims against.
-/

/-! ## A358263.P4345747524548309121

`A348342(n+1)²`
-/

namespace A358263.P4345747524548309121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348342 (n + 1) ^ 2

end

end A358263.P4345747524548309121

/-! ## A358263.P4614962230046661616

`A348342(n+1)^(A057427(n)+1)`
-/

namespace A358263.P4614962230046661616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348342 (n + 1) : ℚ) ^ (A057427 n + 1 : ℤ)

end

end A358263.P4614962230046661616

/-! ## A358263.P17015275026902809967

`A348342(n+1)^A037445(p?[p?[2*n+1]-8])`
-/

namespace A358263.P17015275026902809967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348342 (n + 1) : ℚ) ^ (A037445 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℤ)

end

end A358263.P17015275026902809967

/-! ## A358263.P12235929807689967710

`A348342(n+1)^A286324(p?[p?[2*n+1]-8])`
-/

namespace A358263.P12235929807689967710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348342 (n + 1) : ℚ) ^ (A286324 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℤ)

end

end A358263.P12235929807689967710

/-! ## A358263.P3792274820696194039

`A348342(n+1)^A034444(2^∑{e}[n+1, val((2*#)!, 2)])`
-/

namespace A358263.P3792274820696194039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348342 (n + 1) : ℚ) ^ (A034444 (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (2 * Nat.factorization (f1 n) p)) 2)) : ℤ)

end

end A358263.P3792274820696194039

/-! ## A358263.P10548248230263776422

`A348342(n+1)^A037445(A006530(n+1))`
-/

namespace A358263.P10548248230263776422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348342 (n + 1) : ℚ) ^ (A037445 (A006530 (n + 1)).toNat : ℤ)

end

end A358263.P10548248230263776422

/-! ## A358263.P4931922513844954173

`A348342(n+1)^A034444(A034444(n+1))`
-/

namespace A358263.P4931922513844954173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348342 (n + 1) : ℚ) ^ (A034444 (A034444 (n + 1)).toNat : ℤ)

end

end A358263.P4931922513844954173

/-! ## A358263.P12206506338305697905

`A348342(n+1)^A000005(A348358(n+1))`
-/

namespace A358263.P12206506338305697905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348342 (n + 1) : ℚ) ^ (A000005 (A348358 (n + 1)).toNat : ℤ)

end

end A358263.P12206506338305697905

/-! ## A358263.P2987596997397408555

`A348342(n+1)^A020639(A348334(n+1))`
-/

namespace A358263.P2987596997397408555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348342 (n + 1) : ℚ) ^ (A020639 (A348334 (n + 1)).toNat : ℤ)

end

end A358263.P2987596997397408555

/-!
# A358264: Expansion of e.g.f. 1/(1 - x * exp(x^2/2)).

The programs for A358264, there is no canonical definition to state claims against.
-/

/-! ## A358264.P10300451303283696409

`n*A093390(A004767(a(n-1)))` with `a(0)=1`
-/

namespace A358264.P10300451303283696409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A093390 (A004767 (a (n - 1)).toNat).toNat

end

end A358264.P10300451303283696409

/-! ## A358264.P745959573426950046

`∑[A281910(n+1)]-n`
-/

namespace A358264.P745959573426950046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A358264.P745959573426950046

/-!
# A358269: a(n) is the position m of the last prime term in the sequence {b(m)} defined by b(1) = n, if b(m) is prime then b(m+1) = b(m) - m, else b(m+1) = b(m) + m.

The programs for A358269, there is no canonical definition to state claims against.
-/

/-! ## A358269.P2282297862578903135

`A324844(A274216(n))+2`
-/

namespace A358269.P2282297862578903135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324844 (A274216 n).toNat + 2

end

end A358269.P2282297862578903135

/-! ## A358269.P8701718703502253908

`A324844(A280524(n))+2`
-/

namespace A358269.P8701718703502253908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324844 (A280524 n).toNat + 2

end

end A358269.P8701718703502253908

/-!
# A358270: Numbers whose sum of digits is even and that have an even number of even digits.

The programs for A358270, there is no canonical definition to state claims against.
-/

/-! ## A358270.P5225915717161044449

`eq[3, A100961(n)]`
-/

namespace A358270.P5225915717161044449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100961 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358270.P5225915717161044449

/-! ## A358270.P13074076324961423601

`lt[A196564(A073053(n)), 1]`
-/

namespace A358270.P13074076324961423601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A073053 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A358270.P13074076324961423601

/-! ## A358270.P11763627627628961748

`∩[A001637(n+1), A054683(n+1)]`
-/

namespace A358270.P11763627627628961748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358270.P11763627627628961748

/-! ## A358270.P9381462089002357994

`∩[A001637(n+1), A356929(n+1)]`
-/

namespace A358270.P9381462089002357994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358270.P9381462089002357994

/-! ## A358270.P775879769157088449

`∩[A054683(n+1), A356929(n+1)]`
-/

namespace A358270.P775879769157088449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358270.P775879769157088449

/-! ## A358270.P339340862287021258

`A179081(A001637(2*n+1))+A001637(2*n+1)`
-/

namespace A358270.P339340862287021258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A001637 (2 * n + 1)).toNat + A001637 (2 * n + 1)

end

end A358270.P339340862287021258

/-!
# A358271: Product of the digits of 3^n.

The programs for A358271, the canonical program `A358271.P15830490171704488334` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358271 has offset 0).

The definition of A358271 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358271.P15830490171704488334

`A007954(A000244(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A358271

/-- `A007954(A000244(n))` -/
def P15830490171704488334.Spec : Prop :=
  ∀ n, P15830490171704488334.a n = A358271 n

theorem P15830490171704488334.correct : P15830490171704488334.Spec := by
  intro n
  simp only [A358271]

end A358271

/-!
# A358272: Multiplicative sequence with a(p^e) = (-1)^e * p^(2*floor(e/2)) for prime p and e >= 0.

The programs for A358272, the canonical program `A358272.P12217916716295113487` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358272 has offset 1).

The definition of A358272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358272.P9752655023600450509

`∏{p}[n+1, #^val(n+1, #²)]²*(-1)^∑{e}[n+1, #]`
-/

namespace A358272.P9752655023600450509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℤ) * (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A358272.P9752655023600450509

namespace A358272

/-- `∏{p}[n+1, #^val(n+1, #²)]²*(-1)^∑{e}[n+1, #]` -/
def P9752655023600450509.Spec : Prop :=
  ∀ n, P9752655023600450509.a n = A358272 (n + 1)

end A358272

/-! ## A358272.P5241344808136972982

`∏{p}[n+1, #^val(n+1, #²)]²/(-1)^∑{e}[n+1, #]`
-/

namespace A358272.P5241344808136972982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℚ) / ((-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ)

end

end A358272.P5241344808136972982

namespace A358272

/-- `∏{p}[n+1, #^val(n+1, #²)]²/(-1)^∑{e}[n+1, #]` -/
def P5241344808136972982.Spec : Prop :=
  ∀ n, P5241344808136972982.a n = (A358272 (n + 1) : ℚ)

end A358272

/-! ## A358272.P5999613444241437036

`∑{d}[n+1, #*A158523((n+1)/#)]`
-/

namespace A358272.P5999613444241437036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A158523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358272.P5999613444241437036

namespace A358272

/-- `∑{d}[n+1, #*A158523((n+1)/#)]` -/
def P5999613444241437036.Spec : Prop :=
  ∀ n, P5999613444241437036.a n = A358272 (n + 1)

end A358272

/-! ## A358272.P10479806483507307738

`A000188(n+1)²*(-1)^∑{e}[n+1, #]`
-/

namespace A358272.P10479806483507307738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) ^ 2 * (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A358272.P10479806483507307738

namespace A358272

/-- `A000188(n+1)²*(-1)^∑{e}[n+1, #]` -/
def P10479806483507307738.Spec : Prop :=
  ∀ n, P10479806483507307738.a n = A358272 (n + 1)

end A358272

/-! ## A358272.P14349031330567285176

`∏{p}[n+1, #^val(n+1, #²)]²*Δ[A002819(n)]`
-/

namespace A358272.P14349031330567285176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℤ) * (f2 (n + 1) - f2 n)

end

end A358272.P14349031330567285176

namespace A358272

/-- `∏{p}[n+1, #^val(n+1, #²)]²*Δ[A002819(n)]` -/
def P14349031330567285176.Spec : Prop :=
  ∀ n, P14349031330567285176.a n = A358272 (n + 1)

end A358272

/-! ## A358272.P17544718858384596742

`∏{p}[n+1, #^val(n+1, #²)]²*A008836(n+1)`
-/

namespace A358272.P17544718858384596742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℤ) * A008836 (n + 1)

end

end A358272.P17544718858384596742

namespace A358272

/-- `∏{p}[n+1, #^val(n+1, #²)]²*A008836(n+1)` -/
def P17544718858384596742.Spec : Prop :=
  ∀ n, P17544718858384596742.a n = A358272 (n + 1)

end A358272

/-! ## A358272.P2458283913338330131

`A008833(n+1)*A008836(n+1)`
-/

namespace A358272.P2458283913338330131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) * A008836 (n + 1)

end

end A358272.P2458283913338330131

namespace A358272

/-- `A008833(n+1)*A008836(n+1)` -/
def P2458283913338330131.Spec : Prop :=
  ∀ n, P2458283913338330131.a n = A358272 (n + 1)

end A358272

/-! ## A358272.P6811517023440808171

`(n+1)/A055615(A007913(n+1))`
-/

namespace A358272.P6811517023440808171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055615 (A007913 (n + 1)).toNat : ℚ)

end

end A358272.P6811517023440808171

namespace A358272

/-- `(n+1)/A055615(A007913(n+1))` -/
def P6811517023440808171.Spec : Prop :=
  ∀ n, P6811517023440808171.a n = (A358272 (n + 1) : ℚ)

end A358272

/-! ## A358272.P7296890831060448294

`A061019(n+1)/A007913(n+1)`
-/

namespace A358272.P7296890831060448294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061019 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)

end

end A358272.P7296890831060448294

namespace A358272

/-- `A061019(n+1)/A007913(n+1)` -/
def P7296890831060448294.Spec : Prop :=
  ∀ n, P7296890831060448294.a n = (A358272 (n + 1) : ℚ)

end A358272

/-! ## A358272.P6721529247084350676

`A000188(n+1)²*A008836(n+1)`
-/

namespace A358272.P6721529247084350676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) ^ 2 * A008836 (n + 1)

end

end A358272.P6721529247084350676

namespace A358272

/-- `A000188(n+1)²*A008836(n+1)` -/
def P6721529247084350676.Spec : Prop :=
  ∀ n, P6721529247084350676.a n = A358272 (n + 1)

end A358272

/-! ## A358272.P12217916716295113487

`∑{d}[n+1, A007427(#)*A035316((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A358272

/-- `∑{d}[n+1, A007427(#)*A035316((n+1)/#)]` -/
def P12217916716295113487.Spec : Prop :=
  ∀ n, P12217916716295113487.a n = A358272 (n + 1)

theorem P12217916716295113487.correct : P12217916716295113487.Spec := by
  intro n
  simp only [A358272, Nat.add_sub_cancel]

end A358272

/-! ## A358272.P6440952657612269550

`∑{d}[n+1, A000010(#)*A061019((n+1)/#)]`
-/

namespace A358272.P6440952657612269550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A061019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358272.P6440952657612269550

namespace A358272

/-- `∑{d}[n+1, A000010(#)*A061019((n+1)/#)]` -/
def P6440952657612269550.Spec : Prop :=
  ∀ n, P6440952657612269550.a n = A358272 (n + 1)

end A358272

/-! ## A358272.P9173687430222784171

`∑{d}[n+1, A008833(#)*A158522((n+1)/#)]`
-/

namespace A358272.P9173687430222784171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008833 d * A158522 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358272.P9173687430222784171

namespace A358272

/-- `∑{d}[n+1, A008833(#)*A158522((n+1)/#)]` -/
def P9173687430222784171.Spec : Prop :=
  ∀ n, P9173687430222784171.a n = A358272 (n + 1)

end A358272

/-! ## A358272.P6621260078659301073

`∑{d}[n+1, A018804(#)*A298473((n+1)/#)]`
-/

namespace A358272.P6621260078659301073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A298473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358272.P6621260078659301073

namespace A358272

/-- `∑{d}[n+1, A018804(#)*A298473((n+1)/#)]` -/
def P6621260078659301073.Spec : Prop :=
  ∀ n, P6621260078659301073.a n = A358272 (n + 1)

end A358272

/-! ## A358272.P8992155979661350959

`∑{d}[n+1, A007428(#)*A383795((n+1)/#)]`
-/

namespace A358272.P8992155979661350959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A383795 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358272.P8992155979661350959

namespace A358272

/-- `∑{d}[n+1, A007428(#)*A383795((n+1)/#)]` -/
def P8992155979661350959.Spec : Prop :=
  ∀ n, P8992155979661350959.a n = A358272 (n + 1)

end A358272

/-! ## A358272.P11478516760052231890

`∑{d}[n+1, A068976(#)*A326415((n+1)/#)]`
-/

namespace A358272.P11478516760052231890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068976 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358272.P11478516760052231890

namespace A358272

/-- `∑{d}[n+1, A068976(#)*A326415((n+1)/#)]` -/
def P11478516760052231890.Spec : Prop :=
  ∀ n, P11478516760052231890.a n = A358272 (n + 1)

end A358272

/-! ## A358272.P8758914670418266377

`∑{d}[n+1, A053822(#)*A351600((n+1)/#)]`
-/

namespace A358272.P8758914670418266377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A351600 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358272.P8758914670418266377

namespace A358272

/-- `∑{d}[n+1, A053822(#)*A351600((n+1)/#)]` -/
def P8758914670418266377.Spec : Prop :=
  ∀ n, P8758914670418266377.a n = A358272 (n + 1)

end A358272

/-! ## A358272.P5007449483115795081

`∑{d}[n+1, A300853(#)*A327274((n+1)/#)]`
-/

namespace A358272.P5007449483115795081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300853 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358272.P5007449483115795081

namespace A358272

/-- `∑{d}[n+1, A300853(#)*A327274((n+1)/#)]` -/
def P5007449483115795081.Spec : Prop :=
  ∀ n, P5007449483115795081.a n = A358272 (n + 1)

end A358272

/-! ## A358272.P10572146534676963476

`∑{d}[n+1, A347237(#)*A349388((n+1)/#)]`
-/

namespace A358272.P10572146534676963476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347237 d * A349388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358272.P10572146534676963476

namespace A358272

/-- `∑{d}[n+1, A347237(#)*A349388((n+1)/#)]` -/
def P10572146534676963476.Spec : Prop :=
  ∀ n, P10572146534676963476.a n = A358272 (n + 1)

end A358272

/-! ## A358272.P12124103128542487741

`A008833(n+1)*A064179(A007913(n+1))`
-/

namespace A358272.P12124103128542487741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) * A064179 (A007913 (n + 1)).toNat

end

end A358272.P12124103128542487741

namespace A358272

/-- `A008833(n+1)*A064179(A007913(n+1))` -/
def P12124103128542487741.Spec : Prop :=
  ∀ n, P12124103128542487741.a n = A358272 (n + 1)

end A358272

/-!
# A358274: a(n) is the prime before A262275(n).

The programs for A358274, the canonical program `A358274.P17704842436153696573` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358274 has offset 1).

The definition of A358274 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A262275, A348677, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A358274.P17704842436153696573

`A262275(n+1)-A348677(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A358274

/-- `A262275(n+1)-A348677(n+1)` -/
def P17704842436153696573.Spec : Prop :=
  ∀ n, P17704842436153696573.a n = A358274 (n + 1)

theorem P17704842436153696573.correct : P17704842436153696573.Spec := by
  intro n
  simp only [A358274, Nat.add_sub_cancel]

end A358274

/-! ## A358274.P2374067686339137894

`A055003(A121543(n+1))`
-/

namespace A358274.P2374067686339137894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055003 (A121543 (n + 1)).toNat

end

end A358274.P2374067686339137894

namespace A358274

/-- `A055003(A121543(n+1))` -/
def P2374067686339137894.Spec : Prop :=
  ∀ n, P2374067686339137894.a n = A358274 (n + 1)

end A358274

/-! ## A358274.P1118075193194377497

`A008578(A333242(n+1))`
-/

namespace A358274.P1118075193194377497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A333242 (n + 1)).toNat

end

end A358274.P1118075193194377497

namespace A358274

/-- `A008578(A333242(n+1))` -/
def P1118075193194377497.Spec : Prop :=
  ∀ n, P1118075193194377497.a n = A358274 (n + 1)

end A358274

/-! ## A358274.P16450696815638120056

`A158611(A333242(n+1)+1)`
-/

namespace A358274.P16450696815638120056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A333242 (n + 1) + 1).toNat

end

end A358274.P16450696815638120056

namespace A358274

/-- `A158611(A333242(n+1)+1)` -/
def P16450696815638120056.Spec : Prop :=
  ∀ n, P16450696815638120056.a n = A358274 (n + 1)

end A358274

/-! ## A358274.P448898911063859681

`A000040(A333242(n+1)-1)`
-/

namespace A358274.P448898911063859681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A333242 (n + 1) - 1).toNat

end

end A358274.P448898911063859681

namespace A358274

/-- `A000040(A333242(n+1)-1)` -/
def P448898911063859681.Spec : Prop :=
  ∀ n, P448898911063859681.a n = A358274 (n + 1)

end A358274

/-! ## A358274.P4124048508683630587

`A268674(2*A262275(n+1))`
-/

namespace A358274.P4124048508683630587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (2 * A262275 (n + 1)).toNat

end

end A358274.P4124048508683630587

namespace A358274

/-- `A268674(2*A262275(n+1))` -/
def P4124048508683630587.Spec : Prop :=
  ∀ n, P4124048508683630587.a n = A358274 (n + 1)

end A358274

/-! ## A358274.P17195080809293333879

`A252463(or(1, A262275(n+1)))`
-/

namespace A358274.P17195080809293333879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (Int.lor 1 (A262275 (n + 1))).toNat

end

end A358274.P17195080809293333879

namespace A358274

/-- `A252463(or(1, A262275(n+1)))` -/
def P17195080809293333879.Spec : Prop :=
  ∀ n, P17195080809293333879.a n = A358274 (n + 1)

end A358274

/-! ## A358274.P8473682544339344579

`A333242(A333242(n+1)-(n+1))`
-/

namespace A358274.P8473682544339344579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333242 (A333242 (n + 1) - (n + 1 : ℤ)).toNat

end

end A358274.P8473682544339344579

namespace A358274

/-- `A333242(A333242(n+1)-(n+1))` -/
def P8473682544339344579.Spec : Prop :=
  ∀ n, P8473682544339344579.a n = A358274 (n + 1)

end A358274

/-!
# A358276: a(1) = 1; a(n) = n * Sum_{d|n, d < n} (-1)^(n/d - 1) * a(d) / d.

The programs for A358276, there is no canonical definition to state claims against.
-/

/-! ## A358276.P2871267283052407894

`(n+1)*A308077(n+1)`
-/

namespace A358276.P2871267283052407894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308077 (n + 1)

end

end A358276.P2871267283052407894

/-! ## A358276.P167453640783849694

`(n+1)*Δ[A347031(A000038(n)+n)]`
-/

namespace A358276.P167453640783849694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347031 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A358276.P167453640783849694

/-! ## A358276.P9148549403082351730

`(n+1)*∑{d}[n+1, A008683(#)*A335062((n+1)/#)]`
-/

namespace A358276.P9148549403082351730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A008683 d * A335062 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A358276.P9148549403082351730

/-! ## A358276.P8078095825092369115

`(n+1)*Δ[A347031(A004277(A028310(n))-n)]`
-/

namespace A358276.P8078095825092369115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347031 (A004277 (A028310 n).toNat - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A358276.P8078095825092369115

/-! ## A358276.P6644545981389946280

`(n+1)*Δ[A347031(A028310(n))%A004277(n)]`
-/

namespace A358276.P6644545981389946280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347031 (A028310 n).toNat) (A004277 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A358276.P6644545981389946280

/-!
# A358279: a(n) = Sum_{d|n} (d-1)! * d^(n/d).

The programs for A358279, the canonical program `A358279.P3841880794885669525` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358279 has offset 1).

The definition of A358279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358279.P3841880794885669525

`∑{d}[n+1, (#-1)!*#^((n+1)/#)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A358279

/-- `∑{d}[n+1, (#-1)!*#^((n+1)/#)]` -/
def P3841880794885669525.Spec : Prop :=
  ∀ n, P3841880794885669525.a n = (A358279 (n + 1) : ℝ)

end A358279

/-! ## A358279.P5568604882519620428

`Δ[A004830(∑[A321719(n)])]`
-/

namespace A358279.P5568604882519620428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321719 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004830 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358279.P5568604882519620428

namespace A358279

/-- `Δ[A004830(∑[A321719(n)])]` -/
def P5568604882519620428.Spec : Prop :=
  ∀ n, P5568604882519620428.a n = A358279 (n + 1)

end A358279

/-! ## A358279.P7968890140340996787

`A052928(A321719(n+1))+1`
-/

namespace A358279.P7968890140340996787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A321719 (n + 1)).toNat + 1

end

end A358279.P7968890140340996787

namespace A358279

/-- `A052928(A321719(n+1))+1` -/
def P7968890140340996787.Spec : Prop :=
  ∀ n, P7968890140340996787.a n = A358279 (n + 1)

end A358279

/-!
# A358280: a(n) = Sum_{d|n} (d-1)!.

The programs for A358280, the canonical program `A358280.P5251106775381513985` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358280 has offset 1).

The definition of A358280 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358280.P5251106775381513985

`∑{d}[n+1, (#-1)!]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A358280

/-- `∑{d}[n+1, (#-1)!]` -/
def P5251106775381513985.Spec : Prop :=
  ∀ n, (P5251106775381513985.a n : ℤ) = A358280 (n + 1)

theorem P5251106775381513985.correct : P5251106775381513985.Spec := by
  intro n
  simp only [A358280, Nat.add_sub_cancel]

end A358280

/-! ## A358280.P10359973107492013350

`record[∑{d}[n-1, (#-1)!]]`
-/

namespace A358280.P10359973107492013350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, Nat.factorial ((d : ℤ) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358280.P10359973107492013350

namespace A358280

/-- `record[∑{d}[n-1, (#-1)!]]` -/
def P10359973107492013350.Spec : Prop :=
  ∀ n, (P10359973107492013350.a n : ℤ) = A358280 (n + 1)

end A358280

/-! ## A358280.P5634159150446146781

`∑{d}[n+1, A104150(#)]`
-/

namespace A358280.P5634159150446146781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A104150 d

end

end A358280.P5634159150446146781

namespace A358280

/-- `∑{d}[n+1, A104150(#)]` -/
def P5634159150446146781.Spec : Prop :=
  ∀ n, P5634159150446146781.a n = A358280 (n + 1)

end A358280

/-! ## A358280.P2348314264741078210

`∑{d}[n+1, A000142(#-1)]`
-/

namespace A358280.P2348314264741078210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000142 (d - 1)

end

end A358280.P2348314264741078210

namespace A358280

/-- `∑{d}[n+1, A000142(#-1)]` -/
def P2348314264741078210.Spec : Prop :=
  ∀ n, P2348314264741078210.a n = A358280 (n + 1)

end A358280

/-! ## A358280.P237083594560684634

`∑{d}[n+1, #!/#]`
-/

namespace A358280.P237083594560684634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.factorial d : ℚ) / (d : ℚ)

end

end A358280.P237083594560684634

namespace A358280

/-- `∑{d}[n+1, #!/#]` -/
def P237083594560684634.Spec : Prop :=
  ∀ n, P237083594560684634.a n = (A358280 (n + 1) : ℚ)

end A358280

/-!
# A358285: Number of connected planar cubic graphs with 2*n nodes and exactly one edge-Kempe equivalence class.

The programs for A358285, there is no canonical definition to state claims against.
-/

/-! ## A358285.P8775553991729717303

`∑[and(91, A171873(n))]-∑[n]`
-/

namespace A358285.P8775553991729717303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 91 (A171873 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A358285.P8775553991729717303

/-! ## A358285.P18365056566927752621

`A327446(A245156(n))`
-/

namespace A358285.P18365056566927752621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327446 (A245156 n).toNat

end

end A358285.P18365056566927752621

/-!
# A358287: Number of 3-connected planar cubic graphs with 2*n nodes and exactly one edge-Kempe equivalence class.

The programs for A358287, there is no canonical definition to state claims against.
-/

/-! ## A358287.P8760797984438354290

`A305800(and(A081696(n), A330668(n)))`
-/

namespace A358287.P8760797984438354290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (Int.land (A081696 n) (A330668 n)).toNat

end

end A358287.P8760797984438354290

/-! ## A358287.P942892241591473031

`A327022(A225101(n+1))%A000041(2*(n+2))`
-/

namespace A358287.P942892241591473031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327022 (A225101 (n + 1)).toNat) (A000041 (2 * (n + 2)))

end

end A358287.P942892241591473031

/-! ## A358287.P10460846562422447784

`A268356(2*(n+2))%A228849(2*A000079(n)²)`
-/

namespace A358287.P10460846562422447784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268356 (2 * (n + 2))) (A228849 (2 * A000079 n ^ 2).toNat)

end

end A358287.P10460846562422447784

/-!
# A358289: Generalized Gerrymander sequence: number of ordered ways to divide an n X n square into two connected regions, both of area n^2/2 if n is even, or of areas (n^2-1)/2 and (n^2+1)/2 if n is odd.

The programs for A358289, there is no canonical definition to state claims against.
-/

/-! ## A358289.P8227364159881858285

`A003415(A027377(n)*A215096(n))`
-/

namespace A358289.P8227364159881858285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A027377 n * A215096 n).toNat

end

end A358289.P8227364159881858285

/-!
# A358292: Array read by antidiagonals: T(n,k) = n^3*k^3*(n+k)^2, n>=0, k>=0.

The programs for A358292, the canonical program `A358292.P11859919113194006918` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358292 has offset 0).

The definition of A358292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358292.P17589021336643574753

`A157635(n)²*A004247(n)`
-/

namespace A358292.P17589021336643574753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157635 n ^ 2 * A004247 n

end

end A358292.P17589021336643574753

namespace A358292

/-- `A157635(n)²*A004247(n)` -/
def P17589021336643574753.Spec : Prop :=
  ∀ n, P17589021336643574753.a n = A358292 n

end A358292

/-! ## A358292.P11859919113194006918

`A318274(n)²*A000578(A004247(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A358292

/-- `A318274(n)²*A000578(A004247(n))` -/
def P11859919113194006918.Spec : Prop :=
  ∀ n, P11859919113194006918.a n = A358292 n

theorem P11859919113194006918.correct : P11859919113194006918.Spec := by
  intro n
  simp only [A358292]

end A358292

/-! ## A358292.P17522850025142025396

`(A004247(n)-A068606(n))²*A004247(n)`
-/

namespace A358292.P17522850025142025396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004247 n - A068606 n) ^ 2 * A004247 n

end

end A358292.P17522850025142025396

namespace A358292

/-- `(A004247(n)-A068606(n))²*A004247(n)` -/
def P17522850025142025396.Spec : Prop :=
  ∀ n, P17522850025142025396.a n = A358292 n

end A358292

/-! ## A358292.P13649494072517286561

`(A003056(n)*A004247(n))²*A004247(n)`
-/

namespace A358292.P13649494072517286561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n * A004247 n) ^ 2 * A004247 n

end

end A358292.P13649494072517286561

namespace A358292

/-- `(A003056(n)*A004247(n))²*A004247(n)` -/
def P13649494072517286561.Spec : Prop :=
  ∀ n, P13649494072517286561.a n = A358292 n

end A358292

/-! ## A358292.P1734741778739226996

`A154982(n)*A248333(A056940(n))`
-/

namespace A358292.P1734741778739226996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154982 n * A248333 (A056940 n).toNat

end

end A358292.P1734741778739226996

namespace A358292

/-- `A154982(n)*A248333(A056940(n))` -/
def P1734741778739226996.Spec : Prop :=
  ∀ n, P1734741778739226996.a n = A358292 n

end A358292

/-!
# A358293: Array read by antidiagonals: T(n,k) = n^3*k^3*(n+k)^2, n>=1, k>=1.

The programs for A358293, the canonical program `A358293.P4907253983415988777` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358293 has offset 1).

The definition of A358293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358293.P13905780556224682668

`(comp[∑[n]]-n)²*A098360(n+1)`
-/

namespace A358293.P13905780556224682668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) ^ 2 * A098360 (n + 1)

end

end A358293.P13905780556224682668

namespace A358293

/-- `(comp[∑[n]]-n)²*A098360(n+1)` -/
def P13905780556224682668.Spec : Prop :=
  ∀ n, P13905780556224682668.a n = A358293 (n + 1)

end A358293

/-! ## A358293.P4907253983415988777

`A098360(n+1)*A140978(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A358293

/-- `A098360(n+1)*A140978(n+1)` -/
def P4907253983415988777.Spec : Prop :=
  ∀ n, P4907253983415988777.a n = A358293 (n + 1)

theorem P4907253983415988777.correct : P4907253983415988777.Spec := by
  intro n
  simp only [A358293, Nat.add_sub_cancel]

end A358293

/-! ## A358293.P1073703164539229184

`(2*A107985(n))²*A003991(n+1)`
-/

namespace A358293.P1073703164539229184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A107985 n) ^ 2 * A003991 (n + 1)

end

end A358293.P1073703164539229184

namespace A358293

/-- `(2*A107985(n))²*A003991(n+1)` -/
def P1073703164539229184.Spec : Prop :=
  ∀ n, P1073703164539229184.a n = A358293 (n + 1)

end A358293

/-! ## A358293.P14417378705841097449

`A000578(A003991(n+1))*A140978(n+1)`
-/

namespace A358293.P14417378705841097449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A003991 (n + 1)).toNat * A140978 (n + 1)

end

end A358293.P14417378705841097449

namespace A358293

/-- `A000578(A003991(n+1))*A140978(n+1)` -/
def P14417378705841097449.Spec : Prop :=
  ∀ n, P14417378705841097449.a n = A358293 (n + 1)

end A358293

/-! ## A358293.P3621395047599422487

`A358292(lt[0, A358292(n)])`
-/

namespace A358293.P3621395047599422487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A358293.P3621395047599422487

namespace A358293

/-- `A358292(lt[0, A358292(n)])` -/
def P3621395047599422487.Spec : Prop :=
  ∀ n, P3621395047599422487.a n = A358293 (n + 1)

end A358293

/-!
# A358294: Triangle read by rows: T(n,k) = n^3*k^3*(n+k)^2, n>=0, 0 <= k <= n.

The programs for A358294, the canonical program `A358294.P4698983659591505785` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358294 has offset 0).

The definition of A358294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358294.P4698983659591505785

`(A051162(n)*A079904(n))²*A079904(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A358294

/-- `(A051162(n)*A079904(n))²*A079904(n)` -/
def P4698983659591505785.Spec : Prop :=
  ∀ n, P4698983659591505785.a n = A358294 n

theorem P4698983659591505785.correct : P4698983659591505785.Spec := by
  intro n
  simp only [A358294]

end A358294

/-! ## A358294.P1182023912079076028

`A358292(A245300(n))`
-/

namespace A358294.P1182023912079076028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358292 (A245300 n).toNat

end

end A358294.P1182023912079076028

namespace A358294

/-- `A358292(A245300(n))` -/
def P1182023912079076028.Spec : Prop :=
  ∀ n, P1182023912079076028.a n = A358294 n

end A358294

/-!
# A358295: Triangle read by rows: T(n,k) = n^3*k^3*(n+k)^2, n>=1, 1 <= k <= n.

The programs for A358295, the canonical program `A358295.P2128820620679985630` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358295 has offset 1).

The definition of A358295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358295.P2128820620679985630

`(A075362(n+1)*A108872(n+1))²*A075362(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A358295

/-- `(A075362(n+1)*A108872(n+1))²*A075362(n+1)` -/
def P2128820620679985630.Spec : Prop :=
  ∀ n, P2128820620679985630.a n = A358295 (n + 1)

theorem P2128820620679985630.correct : P2128820620679985630.Spec := by
  intro n
  simp only [A358295, Nat.add_sub_cancel]

end A358295

/-! ## A358295.P7740531223251733219

`A358294(comp[∑[n]])`
-/

namespace A358295.P7740531223251733219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358294 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A358295.P7740531223251733219

namespace A358295

/-- `A358294(comp[∑[n]])` -/
def P7740531223251733219.Spec : Prop :=
  ∀ n, P7740531223251733219.a n = A358295 (n + 1)

end A358295

/-! ## A358295.P4569254288701552064

`filter[A358294(n), A091247(#)]`
-/

namespace A358295.P4569254288701552064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A358295.P4569254288701552064

namespace A358295

/-- `filter[A358294(n), A091247(#)]` -/
def P4569254288701552064.Spec : Prop :=
  ∀ n, P4569254288701552064.a n = A358295 (n + 1)

end A358295

/-! ## A358295.P10293137729405124178

`filter[A358294(n), A178226(#)]`
-/

namespace A358295.P10293137729405124178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A358295.P10293137729405124178

namespace A358295

/-- `filter[A358294(n), A178226(#)]` -/
def P10293137729405124178.Spec : Prop :=
  ∀ n, P10293137729405124178.a n = A358295 (n + 1)

end A358295

/-!
# A358296: Row 3 of the array in A115009.

The programs for A358296, there is no canonical definition to state claims against.
-/

/-! ## A358296.P4169571319565856468

`∑[a(n-2)+10]` with `a(0)=2, a(1)=11, a(2)=15`
-/

namespace A358296.P4169571319565856468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 11, 15] fun n f1 =>
  f1 (n - 2) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358296.P4169571319565856468

/-! ## A358296.P17693284037769976417

`∑[or(1, 5*(n+1))]-3`
-/

namespace A358296.P17693284037769976417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A358296.P17693284037769976417

/-! ## A358296.P6127754251441478063

`∑[∑[10-a(n-1)]]` with `a(0)=2, a(1)=9, a(2)=4`
-/

namespace A358296.P6127754251441478063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 9, 4] fun n f2 =>
  10 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358296.P6127754251441478063

/-! ## A358296.P10206730052405130308

`or(1, a(n-1))+5*(n+1)` with `a(0)=2`
-/

namespace A358296.P10206730052405130308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor 1 (a (n - 1)) + 5 * (n + 1)

end

end A358296.P10206730052405130308

/-! ## A358296.P14353988728752330658

`floor((6*n+5*(n+1)²)/2)`
-/

namespace A358296.P14353988728752330658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 * n + 5 * (n + 1) ^ 2 : ℚ) / 2⌋

end

end A358296.P14353988728752330658

/-! ## A358296.P5811621568558034849

`A032526(n+1)+3*n`
-/

namespace A358296.P5811621568558034849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032526 (n + 1) + (3 * n : ℤ)

end

end A358296.P5811621568558034849

/-! ## A358296.P17204659888881415025

`A128153(n)+A008574(n)`
-/

namespace A358296.P17204659888881415025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128153 n + A008574 n

end

end A358296.P17204659888881415025

/-! ## A358296.P1663351185313861122

`A116940(n)+A090288(n)`
-/

namespace A358296.P1663351185313861122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116940 n + A090288 n

end

end A358296.P1663351185313861122

/-! ## A358296.P4692075479521519664

`A161532(n)+A061925(n)`
-/

namespace A358296.P4692075479521519664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161532 n + A061925 n

end

end A358296.P4692075479521519664

/-! ## A358296.P4374726302988967440

`A279895(n)+A075328(n)`
-/

namespace A358296.P4374726302988967440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279895 n + A075328 n

end

end A358296.P4374726302988967440

/-!
# A358297: Bisection of main diagonal of A115009.

The programs for A358297, there is no canonical definition to state claims against.
-/

/-! ## A358297.P18266689949396978999

`A141255(2*(n+1))`
-/

namespace A358297.P18266689949396978999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141255 (2 * (n + 1))

end

end A358297.P18266689949396978999

/-! ## A358297.P14267357151131359529

`A331773(4*(n+1))`
-/

namespace A358297.P14267357151131359529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331773 (4 * (n + 1))

end

end A358297.P14267357151131359529

/-! ## A358297.P910533929244322349

`A114043(2*(n+1))-1`
-/

namespace A358297.P910533929244322349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114043 (2 * (n + 1)) - 1

end

end A358297.P910533929244322349

/-! ## A358297.P12699944164131073363

`2*A115005(2*(n+1))`
-/

namespace A358297.P12699944164131073363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A115005 (2 * (n + 1))

end

end A358297.P12699944164131073363

/-! ## A358297.P5930993247228987895

`A331771(2*(n+1))/2`
-/

namespace A358297.P5930993247228987895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331771 (2 * (n + 1)) : ℚ) / 2

end

end A358297.P5930993247228987895

/-!
# A358298: Array read by antidiagonals: T(n,k) (n>=0, k>=0) = number of lines defining the Farey diagram Farey(n,k) of order (n,k).

The programs for A358298, there is no canonical definition to state claims against.
-/

/-! ## A358298.P920640397909970144

`A103298(A225982(n+1))`
-/

namespace A358298.P920640397909970144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A225982 (n + 1)).toNat

end

end A358298.P920640397909970144

/-! ## A358298.P344966638350300454

`A166724(A229428(n+1))`
-/

namespace A358298.P344966638350300454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166724 (A229428 (n + 1)).toNat

end

end A358298.P344966638350300454

/-! ## A358298.P13679108852772235832

`A204330(A295352(n+1))`
-/

namespace A358298.P13679108852772235832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204330 (A295352 (n + 1)).toNat

end

end A358298.P13679108852772235832

/-! ## A358298.P12507639734936949045

`A204330(A295606(n+1))`
-/

namespace A358298.P12507639734936949045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204330 (A295606 (n + 1)).toNat

end

end A358298.P12507639734936949045

/-! ## A358298.P2942675106443298427

`A366632(A189161(n+1))`
-/

namespace A358298.P2942675106443298427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366632 (A189161 (n + 1)).toNat

end

end A358298.P2942675106443298427

/-!
# A358299: Triangle read by antidiagonals: T(n,k) (n>=0, 0 <= k <= n) = number of lines defining the Farey diagram of order (n,k).

The programs for A358299, there is no canonical definition to state claims against.
-/

/-! ## A358299.P9207252445257051727

`A358298(A245300(n))`
-/

namespace A358299.P9207252445257051727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358298 (A245300 n).toNat

end

end A358299.P9207252445257051727

