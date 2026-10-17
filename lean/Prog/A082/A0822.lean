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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C026

/-!
# A082201: Last terms in the rows (main diagonal) of the triangle described in A082200.

The programs for A082201, there is no canonical definition to state claims against.
-/

/-! ## A082201.P2159630415197923365

`A082200(∑[n+1])`
-/

namespace A082201.P2159630415197923365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082200 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082201.P2159630415197923365

/-!
# A082202: First column of the triangle described in A082200.

The programs for A082202, there is no canonical definition to state claims against.
-/

/-! ## A082202.P15253588114936624614

`A082200(∑[n]+1)`
-/

namespace A082202.P15253588114936624614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082200 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A082202.P15253588114936624614

/-! ## A082202.P1776064650752473473

`and(-1, A082200(A000124(n)))`
-/

namespace A082202.P1776064650752473473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A082200 (A000124 n).toNat)

end

end A082202.P1776064650752473473

/-! ## A082202.P17574090533061601826

`A082200(A000124(n))%A324199(n+3)`
-/

namespace A082202.P17574090533061601826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082200 (A000124 n).toNat) (A324199 (n + 3))

end

end A082202.P17574090533061601826

/-! ## A082202.P4523299795654828758

`A082200(A000124(n))%A074608(n)`
-/

namespace A082202.P4523299795654828758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082200 (A000124 n).toNat) (A074608 n)

end

end A082202.P4523299795654828758

/-!
# A082203: Row sums of the triangle described in A082200.

The programs for A082203, there is no canonical definition to state claims against.
-/

/-! ## A082203.P12456839526032075927

`A102366(3*(n+1))-A001221(A077293(n+1))`
-/

namespace A082203.P12456839526032075927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102366 (3 * (n + 1)) - A001221 (A077293 (n + 1)).toNat

end

end A082203.P12456839526032075927

/-!
# A082205: Palindromes pertaining to A082204.

The programs for A082205, there is no canonical definition to state claims against.
-/

/-! ## A082205.P16779520907937676003

`A213971(A029519(n+1))-A153641(n)`
-/

namespace A082205.P16779520907937676003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213971 (A029519 (n + 1)).toNat - A153641 n

end

end A082205.P16779520907937676003

/-!
# A082206: Digit sum of A082205(n).

The programs for A082206, the canonical program `A082206.P9973619786059378981` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082206 has offset 1).

The definition of A082206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082206.P9973619786059378981

`a(n-3)+7` with `a(0)=1, a(1)=4, a(2)=7, a(3)=10`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A082206

/-- `a(n-3)+7` -/
def P9973619786059378981.Spec : Prop :=
  ∀ n, (P9973619786059378981.a n : ℤ) = A082206 (n + 1)

theorem P9973619786059378981.correct : P9973619786059378981.Spec := by
  intro n
  simp only [A082206, Nat.add_sub_cancel]

end A082206

/-! ## A082206.P2388417151224967615

`∑[abs(a((n-1)%3))]` with `a(0)=1, a(1)=3`
-/

namespace A082206.P2388417151224967615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (Int.tmod ((n : ℤ) - 1) 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082206.P2388417151224967615

namespace A082206

/-- `∑[abs(a((n-1)%3))]` -/
def P2388417151224967615.Spec : Prop :=
  ∀ n, (P2388417151224967615.a n : ℤ) = A082206 (n + 1)

end A082206

/-! ## A082206.P1133589478738945233

`∑[4-a(∑[n]%3)]` with `a(0)=1, a(1)=3`
-/

namespace A082206.P1133589478738945233
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  4 - f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082206.P1133589478738945233

namespace A082206

/-- `∑[4-a(∑[n]%3)]` -/
def P1133589478738945233.Spec : Prop :=
  ∀ n, P1133589478738945233.a n = A082206 (n + 1)

end A082206

/-! ## A082206.P11390636145128685618

`record[xor(1, (2*n)%7)+n]`
-/

namespace A082206.P11390636145128685618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n % 7) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082206.P11390636145128685618

namespace A082206

/-- `record[xor(1, (2*n)%7)+n]` -/
def P11390636145128685618.Spec : Prop :=
  ∀ n, (P11390636145128685618.a n : ℤ) = A082206 (n + 1)

end A082206

/-! ## A082206.P15954082863140518280

`∑[gcd(3, 1-∑[char[2]+n])]`
-/

namespace A082206.P15954082863140518280
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082206.P15954082863140518280

namespace A082206

/-- `∑[gcd(3, 1-∑[char[2]+n])]` -/
def P15954082863140518280.Spec : Prop :=
  ∀ n, (P15954082863140518280.a n : ℤ) = A082206 (n + 1)

end A082206

/-! ## A082206.P7497279301466048555

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=3, a(4)=1`
-/

namespace A082206.P7497279301466048555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 3, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082206.P7497279301466048555

namespace A082206

/-- `∑[abs(a(n-3))]` -/
def P7497279301466048555.Spec : Prop :=
  ∀ n, (P7497279301466048555.a n : ℤ) = A082206 (n + 1)

end A082206

/-! ## A082206.P15434814871605935497

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=3, a(4)=1`
-/

namespace A082206.P15434814871605935497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 3, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082206.P15434814871605935497

namespace A082206

/-- `∑[dr(a(n-3))]` -/
def P15434814871605935497.Spec : Prop :=
  ∀ n, (P15434814871605935497.a n : ℤ) = A082206 (n + 1)

end A082206

/-! ## A082206.P11650268408732358748

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=3, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A082206.P11650268408732358748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 3, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082206.P11650268408732358748

namespace A082206

/-- `∑[floor(a(n-3))]` -/
def P11650268408732358748.Spec : Prop :=
  ∀ n, (P11650268408732358748.a n : ℤ) = A082206 (n + 1)

end A082206

/-! ## A082206.P735808939957417021

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=3, a(4)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A082206.P735808939957417021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 3, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082206.P735808939957417021

namespace A082206

/-- `∑[ceil(a(n-3))]` -/
def P735808939957417021.Spec : Prop :=
  ∀ n, (P735808939957417021.a n : ℤ) = A082206 (n + 1)

end A082206

/-! ## A082206.P13816524412206992104

`∑[round(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=3, a(4)=1`

`round` is left out, it is the identity on integers.
-/

namespace A082206.P13816524412206992104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 3, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082206.P13816524412206992104

namespace A082206

/-- `∑[round(a(n-3))]` -/
def P13816524412206992104.Spec : Prop :=
  ∀ n, (P13816524412206992104.a n : ℤ) = A082206 (n + 1)

end A082206

/-! ## A082206.P12606793083318812382

`∑[4-gcd(1-n, a(n-1))]` with `a(0)=1`
-/

namespace A082206.P12606793083318812382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 - (Int.gcd (1 - (n : ℤ)) (f1 (n - 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082206.P12606793083318812382

namespace A082206

/-- `∑[4-gcd(1-n, a(n-1))]` -/
def P12606793083318812382.Spec : Prop :=
  ∀ n, P12606793083318812382.a n = A082206 (n + 1)

end A082206

/-! ## A082206.P2346486812828523513

`2*∑[char[n*n²%3+1]]+n+1`
-/

namespace A082206.P2346486812828523513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2 % 3) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + n + 1

end

end A082206.P2346486812828523513

namespace A082206

/-- `2*∑[char[n*n²%3+1]]+n+1` -/
def P2346486812828523513.Spec : Prop :=
  ∀ n, (P2346486812828523513.a n : ℤ) = A082206 (n + 1)

end A082206

/-! ## A082206.P11642939851603640078

`∑[A005117(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=3, a(4)=1`
-/

namespace A082206.P11642939851603640078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 3, 1] fun n f1 =>
  A005117 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082206.P11642939851603640078

namespace A082206

/-- `∑[A005117(a(n-3))]` -/
def P11642939851603640078.Spec : Prop :=
  ∀ n, P11642939851603640078.a n = A082206 (n + 1)

end A082206

/-! ## A082206.P11675709253493655172

`∑[A006530(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=3, a(4)=1`
-/

namespace A082206.P11675709253493655172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 3, 1] fun n f1 =>
  A006530 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082206.P11675709253493655172

namespace A082206

/-- `∑[A006530(a(n-3))]` -/
def P11675709253493655172.Spec : Prop :=
  ∀ n, P11675709253493655172.a n = A082206 (n + 1)

end A082206

/-! ## A082206.P12066886926919518430

`∑[A014963(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=3, a(4)=1`
-/

namespace A082206.P12066886926919518430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 3, 1] fun n f1 =>
  A014963 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082206.P12066886926919518430

namespace A082206

/-- `∑[A014963(a(n-3))]` -/
def P12066886926919518430.Spec : Prop :=
  ∀ n, P12066886926919518430.a n = A082206 (n + 1)

end A082206

/-! ## A082206.P7036469717936701243

`∑[A020639(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=3, a(4)=1`
-/

namespace A082206.P7036469717936701243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 3, 1] fun n f1 =>
  A020639 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082206.P7036469717936701243

namespace A082206

/-- `∑[A020639(a(n-3))]` -/
def P7036469717936701243.Spec : Prop :=
  ∀ n, P7036469717936701243.a n = A082206 (n + 1)

end A082206

/-! ## A082206.P10036804331886491051

`A082204(n)+A047386(n+1)`
-/

namespace A082206.P10036804331886491051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082204 n + A047386 (n + 1)

end

end A082206.P10036804331886491051

namespace A082206

/-- `A082204(n)+A047386(n+1)` -/
def P10036804331886491051.Spec : Prop :=
  ∀ n, P10036804331886491051.a n = A082206 (n + 1)

end A082206

/-! ## A082206.P10665710045033772879

`A122553(n)+A047347(n+1)`
-/

namespace A082206.P10665710045033772879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n + A047347 (n + 1)

end

end A082206.P10665710045033772879

namespace A082206

/-- `A122553(n)+A047347(n+1)` -/
def P10665710045033772879.Spec : Prop :=
  ∀ n, P10665710045033772879.a n = A082206 (n + 1)

end A082206

/-! ## A082206.P8134788660391387250

`A163300(n+1)+A008611(n)`
-/

namespace A082206.P8134788660391387250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1) + A008611 n

end

end A082206.P8134788660391387250

namespace A082206

/-- `A163300(n+1)+A008611(n)` -/
def P8134788660391387250.Spec : Prop :=
  ∀ n, P8134788660391387250.a n = A082206 (n + 1)

end A082206

/-! ## A082206.P12283402225438896302

`A158388(n)+A047284(n+1)`
-/

namespace A082206.P12283402225438896302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A047284 (n + 1)

end

end A082206.P12283402225438896302

namespace A082206

/-- `A158388(n)+A047284(n+1)` -/
def P12283402225438896302.Spec : Prop :=
  ∀ n, P12283402225438896302.a n = A082206 (n + 1)

end A082206

/-!
# A082207: Palindromes whose product of digits is a positive palindrome.

The programs for A082207, there is no canonical definition to state claims against.
-/

/-! ## A082207.P16353722234979791288

`∩[A002113(n+1), A090274(n+1)]`
-/

namespace A082207.P16353722234979791288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082207.P16353722234979791288

/-! ## A082207.P3959193105444659065

`∩[A061917(n+1), A090274(n+1)]`
-/

namespace A082207.P3959193105444659065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082207.P3959193105444659065

/-! ## A082207.P5521384249016306436

`∩[A090274(n+1), A117055(n+1)]`
-/

namespace A082207.P5521384249016306436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082207.P5521384249016306436

/-! ## A082207.P6899329743065288039

`∩[A090274(n+1), A169824(n+1)]`
-/

namespace A082207.P6899329743065288039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082207.P6899329743065288039

/-! ## A082207.P2833661123480980605

`∩[A090274(n+1), A178354(n+1)]`
-/

namespace A082207.P2833661123480980605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082207.P2833661123480980605

/-! ## A082207.P6872577346864857232

`∩[A090274(n+1), A110751(n+1)]`
-/

namespace A082207.P6872577346864857232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082207.P6872577346864857232

/-!
# A082208: Palindromes for which the sum of the digits is also a palindrome.

The programs for A082208, there is no canonical definition to state claims against.
-/

/-! ## A082208.P16113985123825540489

`eq[A056965(A007953(n)), A056965(n)]`
-/

namespace A082208.P16113985123825540489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082208.P16113985123825540489

/-! ## A082208.P18395633447763893537

`eq[A043562(A007953(n)), A136522(n)]`
-/

namespace A082208.P18395633447763893537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082208.P18395633447763893537

/-! ## A082208.P17331837653398798210

`eq[A064834(A007953(n)), A256756(n)]`
-/

namespace A082208.P17331837653398798210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082208.P17331837653398798210

/-! ## A082208.P20079925748445197

`eq[A064834(A007953(n)), A338827(n)]`
-/

namespace A082208.P20079925748445197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082208.P20079925748445197

/-! ## A082208.P8852684611675229883

`eq[A248327(n), A256756(A007953(n))]`
-/

namespace A082208.P8852684611675229883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248327 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082208.P8852684611675229883

/-! ## A082208.P5720909152055159577

`eq[A064834(n), A256756(A169805(n)/2)]`
-/

namespace A082208.P5720909152055159577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082208.P5720909152055159577

/-! ## A082208.P17875973953286374204

`eq[A256756(A169805(n)/2), A256756(n)]`
-/

namespace A082208.P17875973953286374204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082208.P17875973953286374204

/-! ## A082208.P7055073385981775365

`eq[A056965(n), A056965(A062028(n)-n)]`
-/

namespace A082208.P7055073385981775365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082208.P7055073385981775365

/-! ## A082208.P2430249785104839981

`eq[n*A064834(A007953(n)), A064834(n)]`
-/

namespace A082208.P2430249785104839981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A064834 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A082208.P2430249785104839981

/-!
# A082209: a(1) = 1, a(n) = smallest number such that the concatenation of a(n-1) and a(n) is a square.

The programs for A082209, there is no canonical definition to state claims against.
-/

/-! ## A082209.P5047272917467610286

`A071176(a(n-1))` with `a(0)=1`
-/

namespace A082209.P5047272917467610286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071176 (a (n - 1)).toNat

end

end A082209.P5047272917467610286

/-!
# A082216: Smallest palindrome beginning with n.

The programs for A082216, there is no canonical definition to state claims against.
-/

/-! ## A082216.P8216908636724404426

`A047813(A056142(n)-A107846(n))`
-/

namespace A082216.P8216908636724404426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A056142 n - A107846 n).toNat

end

end A082216.P8216908636724404426

/-! ## A082216.P3246037107501091024

`A004086(A056142(n)-A321537(n))`
-/

namespace A082216.P3246037107501091024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A056142 n - A321537 n).toNat

end

end A082216.P3246037107501091024

/-! ## A082216.P16328825204220266111

`A047813(A056142(n)-A321537(n))`
-/

namespace A082216.P16328825204220266111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A056142 n - A321537 n).toNat

end

end A082216.P16328825204220266111

/-! ## A082216.P10456737027629504211

`A331472(A056142(n)-A321537(n))`
-/

namespace A082216.P10456737027629504211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (A056142 n - A321537 n).toNat

end

end A082216.P10456737027629504211

/-! ## A082216.P11766797421180866622

`lcm(A321802(A056142(n)), A321804(n))`
-/

namespace A082216.P11766797421180866622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A321802 (A056142 n).toNat) (A321804 n)

end

end A082216.P11766797421180866622

/-! ## A082216.P4821980988276646358

`A047813(xor(A056142(n), A107846(n)))`
-/

namespace A082216.P4821980988276646358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (Int.xor (A056142 n) (A107846 n)).toNat

end

end A082216.P4821980988276646358

/-! ## A082216.P1534232591780561868

`A321802(A056142(n))+n-A321802(n)`
-/

namespace A082216.P1534232591780561868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 (A056142 n).toNat + ((n : ℤ) - A321802 n)

end

end A082216.P1534232591780561868

/-!
# A082217: Smallest palindrome beginning with n and digit sum n, or 0 if no such number exists.

The programs for A082217, there is no canonical definition to state claims against.
-/

/-! ## A082217.P7549118862305385711

`A302042(2*A082935(n+1))`
-/

namespace A082217.P7549118862305385711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (2 * A082935 (n + 1)).toNat

end

end A082217.P7549118862305385711

/-! ## A082217.P15229404678795487853

`and(A000225(2*(∑[n]+1)), A082935(n+1))`
-/

namespace A082217.P15229404678795487853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1))) (A082935 (n + 1))

end

end A082217.P15229404678795487853

/-! ## A082217.P1298698278575966328

`A082935(n+1)%A080054(A007096(n))`
-/

namespace A082217.P1298698278575966328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082935 (n + 1)) (A080054 (A007096 n).toNat)

end

end A082217.P1298698278575966328

/-! ## A082217.P4964634273699003525

`A082935(n+1)*A294935(A036314(2*(n+2)))`
-/

namespace A082217.P4964634273699003525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082935 (n + 1) * A294935 (A036314 (2 * (n + 2))).toNat

end

end A082217.P4964634273699003525

/-! ## A082217.P10773451272930247050

`∩[A222620(n+1), A352461(n+1)]`
-/

namespace A082217.P10773451272930247050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082217.P10773451272930247050

/-!
# A082219: First row of A082218.

The programs for A082219, there is no canonical definition to state claims against.
-/

/-! ## A082219.P9547646523045001406

`Δ[n*A082222(A028310(n))]`
-/

namespace A082219.P9547646523045001406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A082222 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082219.P9547646523045001406

/-! ## A082219.P13869077176599348674

`A082218(A128918(n+1))`
-/

namespace A082219.P13869077176599348674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082218 (A128918 (n + 1)).toNat

end

end A082219.P13869077176599348674

/-! ## A082219.P12595671347928883104

`A082218(A266304(n)+1)`
-/

namespace A082219.P12595671347928883104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082218 (A266304 n + 1).toNat

end

end A082219.P12595671347928883104

/-!
# A082220: First column of array A082218.

The programs for A082220, there is no canonical definition to state claims against.
-/

/-! ## A082220.P11222909964107636319

`Δ[n*A082223(A028310(n))]`
-/

namespace A082220.P11222909964107636319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A082223 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082220.P11222909964107636319

/-! ## A082220.P2253751962305990691

`A082218(A131179(n+1))`
-/

namespace A082220.P2253751962305990691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082218 (A131179 (n + 1)).toNat

end

end A082220.P2253751962305990691

/-!
# A082221: Main diagonal of array A082218.

The programs for A082221, there is no canonical definition to state claims against.
-/

/-! ## A082221.P2277715714984380653

`A082218((n+1)²+n²)`
-/

namespace A082221.P2277715714984380653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082218 ((n + 1) ^ 2 + n ^ 2)

end

end A082221.P2277715714984380653

/-!
# A082222: a(n) = (n-th partial sum of A082219)/n = (n-th partial sum of the first row of array A082218)/n.

The programs for A082222, there is no canonical definition to state claims against.
-/

/-! ## A082222.P15075843154420485597

`∑[A082219(n+1)]/(n+1)`
-/

namespace A082222.P15075843154420485597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082219 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A082222.P15075843154420485597

/-!
# A082223: a(n) = (n-th partial sum of A082220)/n = (n-th partial sum of the first column of array A082218)/n.

The programs for A082223, there is no canonical definition to state claims against.
-/

/-! ## A082223.P10084708927934859348

`∑[A082220(n+1)]/(n+1)`
-/

namespace A082223.P10084708927934859348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082220 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A082223.P10084708927934859348

/-!
# A082225: First row of array A082224.

The programs for A082225, there is no canonical definition to state claims against.
-/

/-! ## A082225.P11339811029106743542

`A082224(A128918(n+1))`
-/

namespace A082225.P11339811029106743542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082224 (A128918 (n + 1)).toNat

end

end A082225.P11339811029106743542

/-! ## A082225.P6733728060648346964

`A082224(A266304(n)+1)`
-/

namespace A082225.P6733728060648346964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082224 (A266304 n + 1).toNat

end

end A082225.P6733728060648346964

/-!
# A082226: First column of array A082224.

The programs for A082226, there is no canonical definition to state claims against.
-/

/-! ## A082226.P6501917703026185452

`A082224(A131179(n+1))`
-/

namespace A082226.P6501917703026185452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082224 (A131179 (n + 1)).toNat

end

end A082226.P6501917703026185452

/-!
# A082227: Main diagonal of array A082224.

The programs for A082227, there is no canonical definition to state claims against.
-/

/-! ## A082227.P1969276296478686438

`A082224(∑[4*n]+1)`
-/

namespace A082227.P1969276296478686438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082224 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A082227.P1969276296478686438

/-! ## A082227.P8289071741966824888

`A121920(A005893(n))`
-/

namespace A082227.P8289071741966824888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121920 (A005893 n).toNat

end

end A082227.P8289071741966824888

/-!
# A082229: First row of A082228.

The programs for A082229, there is no canonical definition to state claims against.
-/

/-! ## A082229.P3947640670868156808

`A082228(A128918(n+1))`
-/

namespace A082229.P3947640670868156808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082228 (A128918 (n + 1)).toNat

end

end A082229.P3947640670868156808

/-!
# A082230: First column of A082228.

The programs for A082230, there is no canonical definition to state claims against.
-/

/-! ## A082230.P1082655144466186872

`A082228(∑[A266303(n)])`
-/

namespace A082230.P1082655144466186872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082228 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A082230.P1082655144466186872

/-! ## A082230.P3378842031784265359

`A082228(A131179(n+1))`
-/

namespace A082230.P3378842031784265359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082228 (A131179 (n + 1)).toNat

end

end A082230.P3378842031784265359

/-! ## A082230.P14107252966929486173

`A082228(A117351(A082226(n+1)))`
-/

namespace A082230.P14107252966929486173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082228 (A117351 (A082226 (n + 1)).toNat).toNat

end

end A082230.P14107252966929486173

/-!
# A082231: Main diagonal of A082228.

The programs for A082231, there is no canonical definition to state claims against.
-/

/-! ## A082231.P13410352305021409173

`A082228((n+1)²+n²)`
-/

namespace A082231.P13410352305021409173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082228 ((n + 1) ^ 2 + n ^ 2)

end

end A082231.P13410352305021409173

/-! ## A082231.P15132892232324331025

`A340524(A000079(n))+A028896(n)`
-/

namespace A082231.P15132892232324331025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340524 (A000079 n).toNat + A028896 n

end

end A082231.P15132892232324331025

/-! ## A082231.P6050618689123822942

`A133640(∪[A133638(2*n+1), A133680(n)])`
-/

namespace A082231.P6050618689123822942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133638 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133680 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133640 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A082231.P6050618689123822942

/-!
# A082232: Palindromes divisible by their digit sum.

The programs for A082232, there is no canonical definition to state claims against.
-/

/-! ## A082232.P8018647476431584274

`∩[A002113(n+1), A005349(n+1)]`
-/

namespace A082232.P8018647476431584274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082232.P8018647476431584274

/-! ## A082232.P9546428156154414812

`∩[A002113(n+1), A225780(n+1)]`
-/

namespace A082232.P9546428156154414812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082232.P9546428156154414812

/-! ## A082232.P8847506163623437594

`record[A047813(A217973(n+1))]`
-/

namespace A082232.P8847506163623437594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A217973 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082232.P8847506163623437594

/-! ## A082232.P17361193194037514869

`filter[A005349(n+1), A136522(#)]`
-/

namespace A082232.P17361193194037514869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A082232.P17361193194037514869

/-! ## A082232.P3190310507396780877

`filter[A217973(n+1), A136522(#)]`
-/

namespace A082232.P3190310507396780877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A082232.P3190310507396780877

/-!
# A082233: Square array T(n,k) = 2*n + k, read by antidiagonals in a zigzag fashion, n >= 0 and k >= 1.

The programs for A082233, the canonical program `A082233.P3094481268705208207` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082233 has offset 0).

The definition of A082233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082233.P3094481268705208207

`A094727(A056023(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A082233

/-- `A094727(A056023(n+1))` -/
def P3094481268705208207.Spec : Prop :=
  ∀ n, P3094481268705208207.a n = A082233 n

theorem P3094481268705208207.correct : P3094481268705208207.Spec := by
  intro n
  simp only [A082233]

end A082233

/-! ## A082233.P17214103391760064949

`A114751(A038722(n+1))`
-/

namespace A082233.P17214103391760064949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114751 (A038722 (n + 1)).toNat

end

end A082233.P17214103391760064949

namespace A082233

/-- `A114751(A038722(n+1))` -/
def P17214103391760064949.Spec : Prop :=
  ∀ n, P17214103391760064949.a n = A082233 n

end A082233

/-! ## A082233.P4988357315143991680

`A128076(A056011(n+1))`
-/

namespace A082233.P4988357315143991680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (A056011 (n + 1)).toNat

end

end A082233.P4988357315143991680

namespace A082233

/-- `A128076(A056011(n+1))` -/
def P4988357315143991680.Spec : Prop :=
  ∀ n, P4988357315143991680.a n = A082233 n

end A082233

/-! ## A082233.P10110824148976435974

`A111650(n+1)-A092543(n+1)`
-/

namespace A082233.P10110824148976435974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111650 (n + 1) - A092543 (n + 1)

end

end A082233.P10110824148976435974

namespace A082233

/-- `A111650(n+1)-A092543(n+1)` -/
def P10110824148976435974.Spec : Prop :=
  ∀ n, P10110824148976435974.a n = A082233 n

end A082233

/-! ## A082233.P1401247868366692212

`A377809(n+1)-A056011(n+1)`
-/

namespace A082233.P1401247868366692212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377809 (n + 1) - A056011 (n + 1)

end

end A082233.P1401247868366692212

namespace A082233

/-- `A377809(n+1)-A056011(n+1)` -/
def P1401247868366692212.Spec : Prop :=
  ∀ n, P1401247868366692212.a n = A082233 n

end A082233

/-! ## A082233.P9105377562489717114

`2*A002024(n+1)-A092543(n+1)`
-/

namespace A082233.P9105377562489717114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002024 (n + 1) - A092543 (n + 1)

end

end A082233.P9105377562489717114

namespace A082233

/-- `2*A002024(n+1)-A092543(n+1)` -/
def P9105377562489717114.Spec : Prop :=
  ∀ n, P9105377562489717114.a n = A082233 n

end A082233

/-! ## A082233.P14415869224265373909

`A004736(A056011(n+1))+A003056(n)`
-/

namespace A082233.P14415869224265373909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A056011 (n + 1)).toNat + A003056 n

end

end A082233.P14415869224265373909

namespace A082233

/-- `A004736(A056011(n+1))+A003056(n)` -/
def P14415869224265373909.Spec : Prop :=
  ∀ n, P14415869224265373909.a n = A082233 n

end A082233

/-! ## A082233.P15950118680945072351

`A056023(n+1)+A003056(n)-A057944(n)`
-/

namespace A082233.P15950118680945072351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1) + (A003056 n - A057944 n)

end

end A082233.P15950118680945072351

namespace A082233

/-- `A056023(n+1)+A003056(n)-A057944(n)` -/
def P15950118680945072351.Spec : Prop :=
  ∀ n, P15950118680945072351.a n = A082233 n

end A082233

/-! ## A082233.P16126508095921653539

`A002024(n+1)+A000217(A002024(n+1))-A056011(n+1)`
-/

namespace A082233.P16126508095921653539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A000217 (A002024 (n + 1)).toNat - A056011 (n + 1))

end

end A082233.P16126508095921653539

namespace A082233

/-- `A002024(n+1)+A000217(A002024(n+1))-A056011(n+1)` -/
def P16126508095921653539.Spec : Prop :=
  ∀ n, P16126508095921653539.a n = A082233 n

end A082233

/-! ## A082233.P11024153209228929277

`A002024(n+1)+A002024(A056011(n+1))-A092543(n+1)`
-/

namespace A082233.P11024153209228929277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A002024 (A056011 (n + 1)).toNat - A092543 (n + 1))

end

end A082233.P11024153209228929277

namespace A082233

/-- `A002024(n+1)+A002024(A056011(n+1))-A092543(n+1)` -/
def P11024153209228929277.Spec : Prop :=
  ∀ n, P11024153209228929277.a n = A082233 n

end A082233

/-! ## A082233.P8092111963996045128

`A002024(n+1)+A092543(A038722(n+1))-1`
-/

namespace A082233.P8092111963996045128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A092543 (A038722 (n + 1)).toNat - 1)

end

end A082233.P8092111963996045128

namespace A082233

/-- `A002024(n+1)+A092543(A038722(n+1))-1` -/
def P8092111963996045128.Spec : Prop :=
  ∀ n, P8092111963996045128.a n = A082233 n

end A082233

/-! ## A082233.P6203916785094668816

`A002024(n+1)+A002024(A056023(n+1))-A092543(n+1)`
-/

namespace A082233.P6203916785094668816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A002024 (A056023 (n + 1)).toNat - A092543 (n + 1))

end

end A082233.P6203916785094668816

namespace A082233

/-- `A002024(n+1)+A002024(A056023(n+1))-A092543(n+1)` -/
def P6203916785094668816.Spec : Prop :=
  ∀ n, P6203916785094668816.a n = A082233 n

end A082233

/-! ## A082233.P1576734644857237106

`A319571(2*n)+A002024(n+1)`
-/

namespace A082233.P1576734644857237106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (2 * n) + A002024 (n + 1)

end

end A082233.P1576734644857237106

namespace A082233

/-- `A319571(2*n)+A002024(n+1)` -/
def P1576734644857237106.Spec : Prop :=
  ∀ n, P1576734644857237106.a n = A082233 n

end A082233

/-! ## A082233.P5638134929084534301

`A319571(2*n)+A123578(n+1)`
-/

namespace A082233.P5638134929084534301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (2 * n) + A123578 (n + 1)

end

end A082233.P5638134929084534301

namespace A082233

/-- `A319571(2*n)+A123578(n+1)` -/
def P5638134929084534301.Spec : Prop :=
  ∀ n, P5638134929084534301.a n = A082233 n

end A082233

/-! ## A082233.P17103011846153993150

`A319571(2*n+1)+A005408(A319571(2*n))`
-/

namespace A082233.P17103011846153993150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (2 * n + 1) + A005408 (A319571 (2 * n)).toNat

end

end A082233.P17103011846153993150

namespace A082233

/-- `A319571(2*n+1)+A005408(A319571(2*n))` -/
def P17103011846153993150.Spec : Prop :=
  ∀ n, P17103011846153993150.a n = A082233 n

end A082233

/-! ## A082233.P2041015230475015687

`A092542(n+1)+A003056(n)`
-/

namespace A082233.P2041015230475015687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092542 (n + 1) + A003056 n

end

end A082233.P2041015230475015687

namespace A082233

/-- `A092542(n+1)+A003056(n)` -/
def P2041015230475015687.Spec : Prop :=
  ∀ n, P2041015230475015687.a n = A082233 n

end A082233

/-! ## A082233.P16235916267771418679

`A002024(n+1)+A092542(n+1)-1`
-/

namespace A082233.P16235916267771418679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A092542 (n + 1) - 1)

end

end A082233.P16235916267771418679

namespace A082233

/-- `A002024(n+1)+A092542(n+1)-1` -/
def P16235916267771418679.Spec : Prop :=
  ∀ n, P16235916267771418679.a n = A082233 n

end A082233

/-! ## A082233.P10400156616238129150

`A092542(n+1)+A003057(n+2)-2`
-/

namespace A082233.P10400156616238129150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092542 (n + 1) + (A003057 (n + 2) - 2)

end

end A082233.P10400156616238129150

namespace A082233

/-- `A092542(n+1)+A003057(n+2)-2` -/
def P10400156616238129150.Spec : Prop :=
  ∀ n, P10400156616238129150.a n = A082233 n

end A082233

/-!
# A082234: In the following square array numbers are entered like this A(1,1), A(1,2), A(2,1), A(3,1), A(2,2), A(1,3), A(1,4), A(2,3), A(3,2), A(4,1), A(5,1), A(4,2), ... such that every entry is the geometric mean of the two diametrically opposite neighbors (wherever a pair exists).

The programs for A082234, the canonical program `A082234.P13338439830342871460` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082234 has offset 1).

The definition of A082234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082234.P13338439830342871460

`A036561(A056023(n+1)-1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A082234

/-- `A036561(A056023(n+1)-1)` -/
def P13338439830342871460.Spec : Prop :=
  ∀ n, P13338439830342871460.a n = A082234 (n + 1)

theorem P13338439830342871460.correct : P13338439830342871460.Spec := by
  intro n
  simp only [A082234, Nat.add_sub_cancel]

end A082234

/-! ## A082234.P17101955472913856489

`A175840(A056011(n+1)-1)`
-/

namespace A082234.P17101955472913856489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 (A056011 (n + 1) - 1).toNat

end

end A082234.P17101955472913856489

namespace A082234

/-- `A175840(A056011(n+1)-1)` -/
def P17101955472913856489.Spec : Prop :=
  ∀ n, P17101955472913856489.a n = A082234 (n + 1)

end A082234

/-! ## A082234.P3402993114655810121

`A230445(A056023(n+1)-1)+1`
-/

namespace A082234.P3402993114655810121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230445 (A056023 (n + 1) - 1).toNat + 1

end

end A082234.P3402993114655810121

namespace A082234

/-- `A230445(A056023(n+1)-1)+1` -/
def P3402993114655810121.Spec : Prop :=
  ∀ n, P3402993114655810121.a n = A082234 (n + 1)

end A082234

/-! ## A082234.P2711975478974984418

`A036561(A023443(A056023(n+1)))`
-/

namespace A082234.P2711975478974984418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A023443 (A056023 (n + 1)).toNat).toNat

end

end A082234.P2711975478974984418

namespace A082234

/-- `A036561(A023443(A056023(n+1)))` -/
def P2711975478974984418.Spec : Prop :=
  ∀ n, P2711975478974984418.a n = A082234 (n + 1)

end A082234

/-! ## A082234.P5962528523293162264

`A036561(A319572(n)+A057944(n))`
-/

namespace A082234.P5962528523293162264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 (A319572 n + A057944 n).toNat

end

end A082234.P5962528523293162264

namespace A082234

/-- `A036561(A319572(n)+A057944(n))` -/
def P5962528523293162264.Spec : Prop :=
  ∀ n, P5962528523293162264.a n = A082234 (n + 1)

end A082234

/-!
# A082237: n-th roots of the n-th powers pertaining to A082236.

The programs for A082237, there is no canonical definition to state claims against.
-/

/-! ## A082237.P1105795866851474270

`A062759(A081528(n+1))`
-/

namespace A082237.P1105795866851474270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (A081528 (n + 1)).toNat

end

end A082237.P1105795866851474270

/-! ## A082237.P516380221101064396

`A062759(A111930(n+1))`
-/

namespace A082237.P516380221101064396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (A111930 (n + 1)).toNat

end

end A082237.P516380221101064396

/-! ## A082237.P3267048448085341496

`A062759(A324801(n+1))`
-/

namespace A082237.P3267048448085341496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (A324801 (n + 1)).toNat

end

end A082237.P3267048448085341496

/-! ## A082237.P12980441171121058899

`A260458(A169900(n+2))`
-/

namespace A082237.P12980441171121058899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260458 (A169900 (n + 2)).toNat

end

end A082237.P12980441171121058899

/-!
# A082238: Primes pertaining to A077202. a(n) = concatenation A077202(n), A077202(n+1).

The programs for A082238, there is no canonical definition to state claims against.
-/

/-! ## A082238.P12230489639444362912

`or(A089755(n+1), A341026(n²))`
-/

namespace A082238.P12230489639444362912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089755 (n + 1)) (A341026 (n ^ 2 + 165))

end

end A082238.P12230489639444362912

/-! ## A082238.P17810906694741301543

`A184955(A080036(n))+A089755(n+1)`
-/

namespace A082238.P17810906694741301543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A080036 n).toNat + A089755 (n + 1)

end

end A082238.P17810906694741301543

/-! ## A082238.P1593397049388310506

`A262254(n+1)+A184955(A080036(n))`
-/

namespace A082238.P1593397049388310506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262254 (n + 1) + A184955 (A080036 n).toNat

end

end A082238.P1593397049388310506

/-! ## A082238.P5231861960327724759

`A289426(A322283(n))+A089755(n+1)`
-/

namespace A082238.P5231861960327724759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289426 (A322283 n).toNat + A089755 (n + 1)

end

end A082238.P5231861960327724759

/-! ## A082238.P7621560195894859701

`or(A077267(A089737(n)), A089755(n+1))`
-/

namespace A082238.P7621560195894859701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A077267 (A089737 n).toNat) (A089755 (n + 1))

end

end A082238.P7621560195894859701

/-!
# A082239: Infinite table filled by antidiagonals with smallest numbers such that every partial concatenation of a row or a column gives a prime.

The programs for A082239, there is no canonical definition to state claims against.
-/

/-! ## A082239.P14403195912662022329

`or(A345999(n+1), A345999(A022174(n)))`
-/

namespace A082239.P14403195912662022329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A345999 (n + 1)) (A345999 (A022174 n).toNat)

end

end A082239.P14403195912662022329

/-!
# A082240: Break up the cyclic concatenation 1234567890123456789023... into parts nontrivially (a(n) is not equal to n) such that the n-th part is a multiple of n.

The programs for A082240, there is no canonical definition to state claims against.
-/

/-! ## A082240.P1089617820993086017

`(n+1)*A082241(n+1)`
-/

namespace A082240.P1089617820993086017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A082241 (n + 1)

end

end A082240.P1089617820993086017

/-! ## A082240.P9670601469360586142

`A082241(n+1)*A291769(n)`
-/

namespace A082240.P9670601469360586142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082241 (n + 1) * A291769 n

end

end A082240.P9670601469360586142

/-! ## A082240.P5026431610758470834

`A082241(A199343(n))*A199343(n)`
-/

namespace A082240.P5026431610758470834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082241 (A199343 n).toNat * A199343 n

end

end A082240.P5026431610758470834

/-!
# A082241: a(n) = A082240(n)/n.

The programs for A082241, there is no canonical definition to state claims against.
-/

/-! ## A082241.P5507333878668720238

`A082240(n+1)/(n+1)`
-/

namespace A082241.P5507333878668720238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082240 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A082241.P5507333878668720238

/-! ## A082241.P2218474827315335394

`floor(A082240(A291769(n))/A291769(n))`
-/

namespace A082241.P2218474827315335394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082240 (A291769 n).toNat : ℚ) / (A291769 n : ℚ)⌋

end

end A082241.P2218474827315335394

/-! ## A082241.P10086252853061717285

`floor(A082240(A199343(n))/A199343(n))`
-/

namespace A082241.P10086252853061717285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082240 (A199343 n).toNat : ℚ) / (A199343 n : ℚ)⌋

end

end A082241.P10086252853061717285

/-! ## A082241.P6047302717027682717

`ceil(A082240(A199343(n))/A291769(n))`
-/

namespace A082241.P6047302717027682717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082240 (A199343 n).toNat : ℚ) / (A291769 n : ℚ)⌉

end

end A082241.P6047302717027682717

/-!
# A082242: Multiples of 4 that are the concatenation of 4 consecutive natural numbers.

The programs for A082242, there is no canonical definition to state claims against.
-/

/-! ## A082242.P12896313589773452704

`4*A082243(n+1)`
-/

namespace A082242.P12896313589773452704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A082243 (n + 1)

end

end A082242.P12896313589773452704

/-!
# A082243: a(n) = A082242(n)/4.

The programs for A082243, there is no canonical definition to state claims against.
-/

/-! ## A082243.P16365181962956971019

`A082242(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082243.P16365181962956971019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082242 (n + 1) : ℚ) / 4

end

end A082243.P16365181962956971019

/-!
# A082244: Smallest odd prime that is the sum of 2n+1 consecutive primes.

The programs for A082244, there is no canonical definition to state claims against.
-/

/-! ## A082244.P3638543238907103018

`or(1, A070934(n))`
-/

namespace A082244.P3638543238907103018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A070934 n)

end

end A082244.P3638543238907103018

/-! ## A082244.P1323747203329495756

`A070934(n%a(n-1))` with `a(0)=3`
-/

namespace A082244.P1323747203329495756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A070934 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A082244.P1323747203329495756

/-! ## A082244.P11160269714487089314

`A070934(n)+A000007(n)`
-/

namespace A082244.P11160269714487089314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070934 n + A000007 n

end

end A082244.P11160269714487089314

/-! ## A082244.P15386522271698232884

`A070934(n)+A318351(n)-A089793(n)`
-/

namespace A082244.P15386522271698232884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070934 n + (A318351 n - A089793 n)

end

end A082244.P15386522271698232884

/-! ## A082244.P17917785034948522820

`or(1, A070281(Δ[n²]))`
-/

namespace A082244.P17917785034948522820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A070281 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A082244.P17917785034948522820

/-! ## A082244.P14046059492422222558

`A318456(A070934(n))`
-/

namespace A082244.P14046059492422222558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318456 (A070934 n).toNat

end

end A082244.P14046059492422222558

/-!
# A082245: Sum of (n-1)-th powers of divisors of n.

The programs for A082245, there is no canonical definition to state claims against.
-/

/-! ## A082245.P7720784922392803293

`∑{d}[n+1, #^n]`
-/

namespace A082245.P7720784922392803293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ n

end

end A082245.P7720784922392803293

/-! ## A082245.P3809606599233776481

`record[∑{d}[1-n, #^(n-2)]]`
-/

namespace A082245.P3809606599233776481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082245.P3809606599233776481

/-! ## A082245.P55376987797208234

`A082771(∑[n+1])`
-/

namespace A082245.P55376987797208234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082771 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082245.P55376987797208234

/-! ## A082245.P17988189691480471552

`record[A082771(gcd(n, A319501(n)))]`
-/

namespace A082245.P17988189691480471552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082771 (Int.gcd (n : ℤ) (A319501 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082245.P17988189691480471552

/-! ## A082245.P4352959587792478665

`record[A082771(n+1)/A109974(n)]`
-/

namespace A082245.P4352959587792478665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082771 (n + 1) : ℚ) / (A109974 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082245.P4352959587792478665

/-! ## A082245.P12088188703302495418

`record[gcd(A025581(n), A082771(n+1))]`
-/

namespace A082245.P12088188703302495418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A082771 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082245.P12088188703302495418

/-! ## A082245.P12907329926369011463

`record[A082771(A000217(A032742(n+1)))]`
-/

namespace A082245.P12907329926369011463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082771 (A000217 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082245.P12907329926369011463

/-!
# A082246: Primes that are the sum of 7 consecutive primes.

The programs for A082246, the canonical program `A082246.P15530245581393664996` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082246 has offset 1).

The definition of A082246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1793 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082246.P14776168167646613592

`p?[A007504(n+7)-A007504(n)]`
-/

namespace A082246.P14776168167646613592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 7) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082246.P14776168167646613592

namespace A082246

/-- `p?[A007504(n+7)-A007504(n)]` -/
def P14776168167646613592.Spec : Prop :=
  ∀ n, P14776168167646613592.a n = A082246 (n + 1)

end A082246

/-! ## A082246.P15858186458591584795

`p?[A127334(n+1)]`
-/

namespace A082246.P15858186458591584795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082246.P15858186458591584795

namespace A082246

/-- `p?[A127334(n+1)]` -/
def P15858186458591584795.Spec : Prop :=
  ∀ n, P15858186458591584795.a n = A082246 (n + 1)

end A082246

/-! ## A082246.P9369353467908497111

`p?[A127335(n+1)-A000040(n+1)]`
-/

namespace A082246.P9369353467908497111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082246.P9369353467908497111

namespace A082246

/-- `p?[A127335(n+1)-A000040(n+1)]` -/
def P9369353467908497111.Spec : Prop :=
  ∀ n, P9369353467908497111.a n = A082246 (n + 1)

end A082246

/-! ## A082246.P2859604832097861298

`p?[A127336(n+1)-A001043(n+1)]`
-/

namespace A082246.P2859604832097861298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1) - A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082246.P2859604832097861298

namespace A082246

/-- `p?[A127336(n+1)-A001043(n+1)]` -/
def P2859604832097861298.Spec : Prop :=
  ∀ n, P2859604832097861298.a n = A082246 (n + 1)

end A082246

/-! ## A082246.P406087936967173703

`p?[A127337(n+1)-A034961(n+1)]`
-/

namespace A082246.P406087936967173703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 1) - A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082246.P406087936967173703

namespace A082246

/-- `p?[A127337(n+1)-A034961(n+1)]` -/
def P406087936967173703.Spec : Prop :=
  ∀ n, P406087936967173703.a n = A082246 (n + 1)

end A082246

/-! ## A082246.P13287333918930739342

`p?[A127338(n+1)-A034963(n+1)]`
-/

namespace A082246.P13287333918930739342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127338 (n + 1) - A034963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082246.P13287333918930739342

namespace A082246

/-- `p?[A127338(n+1)-A034963(n+1)]` -/
def P13287333918930739342.Spec : Prop :=
  ∀ n, P13287333918930739342.a n = A082246 (n + 1)

end A082246

/-! ## A082246.P8913819528527836917

`p?[A127335(n+1)-(A040976(n+1)+2)]`
-/

namespace A082246.P8913819528527836917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 1) - (A040976 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082246.P8913819528527836917

namespace A082246

/-- `p?[A127335(n+1)-(A040976(n+1)+2)]` -/
def P8913819528527836917.Spec : Prop :=
  ∀ n, P8913819528527836917.a n = A082246 (n + 1)

end A082246

/-! ## A082246.P15530245581393664996

`p?[A034964(n+3)+A001043(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A082246

/-- `p?[A034964(n+3)+A001043(n+1)]` -/
def P15530245581393664996.Spec : Prop :=
  ∀ n, P15530245581393664996.a n = A082246 (n + 1)

theorem P15530245581393664996.correct : P15530245581393664996.Spec := by
  intro n
  simp only [A082246, Nat.add_sub_cancel]

end A082246

/-! ## A082246.P10803773950759407839

`∩[A065867(n+1), A127334(n+1)]`
-/

namespace A082246.P10803773950759407839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082246.P10803773950759407839

namespace A082246

/-- `∩[A065867(n+1), A127334(n+1)]` -/
def P10803773950759407839.Spec : Prop :=
  ∀ n, (P10803773950759407839.a n : ℤ) = A082246 (n + 1)

end A082246

/-! ## A082246.P8091511171149081625

`∩[A067377(n+1), A127334(n+1)]`
-/

namespace A082246.P8091511171149081625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082246.P8091511171149081625

namespace A082246

/-- `∩[A067377(n+1), A127334(n+1)]` -/
def P8091511171149081625.Spec : Prop :=
  ∀ n, (P8091511171149081625.a n : ℤ) = A082246 (n + 1)

end A082246

/-! ## A082246.P13136627837495875784

`∩[A054723(n+1), A127334(n+1)]`
-/

namespace A082246.P13136627837495875784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082246.P13136627837495875784

namespace A082246

/-- `∩[A054723(n+1), A127334(n+1)]` -/
def P13136627837495875784.Spec : Prop :=
  ∀ n, (P13136627837495875784.a n : ℤ) = A082246 (n + 1)

end A082246

/-! ## A082246.P1014960847785713239

`∩[A122259(n+1), A127334(n+1)]`
-/

namespace A082246.P1014960847785713239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082246.P1014960847785713239

namespace A082246

/-- `∩[A122259(n+1), A127334(n+1)]` -/
def P1014960847785713239.Spec : Prop :=
  ∀ n, (P1014960847785713239.a n : ℤ) = A082246 (n + 1)

end A082246

/-! ## A082246.P13140958245088968783

`∩[A127334(n+1), A318158(n+1)]`
-/

namespace A082246.P13140958245088968783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082246.P13140958245088968783

namespace A082246

/-- `∩[A127334(n+1), A318158(n+1)]` -/
def P13140958245088968783.Spec : Prop :=
  ∀ n, (P13140958245088968783.a n : ℤ) = A082246 (n + 1)

end A082246

/-! ## A082246.P18427802388350851377

`∩[A004139(n+1), A127334(n+1)]`
-/

namespace A082246.P18427802388350851377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082246.P18427802388350851377

namespace A082246

/-- `∩[A004139(n+1), A127334(n+1)]` -/
def P18427802388350851377.Spec : Prop :=
  ∀ n, (P18427802388350851377.a n : ℤ) = A082246 (n + 1)

end A082246

/-! ## A082246.P10913982076054316617

`∩[A078132(n+1), A127334(n+1)]`
-/

namespace A082246.P10913982076054316617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082246.P10913982076054316617

namespace A082246

/-- `∩[A078132(n+1), A127334(n+1)]` -/
def P10913982076054316617.Spec : Prop :=
  ∀ n, (P10913982076054316617.a n : ℤ) = A082246 (n + 1)

end A082246

/-! ## A082246.P5315190732365981432

`∩[A000040(n+1), A127334(n+1)]`
-/

namespace A082246.P5315190732365981432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082246.P5315190732365981432

namespace A082246

/-- `∩[A000040(n+1), A127334(n+1)]` -/
def P5315190732365981432.Spec : Prop :=
  ∀ n, (P5315190732365981432.a n : ℤ) = A082246 (n + 1)

end A082246

/-! ## A082246.P3816784159915814296

`∩[A006005(n+1), A127334(n+1)]`
-/

namespace A082246.P3816784159915814296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082246.P3816784159915814296

namespace A082246

/-- `∩[A006005(n+1), A127334(n+1)]` -/
def P3816784159915814296.Spec : Prop :=
  ∀ n, (P3816784159915814296.a n : ℤ) = A082246 (n + 1)

end A082246

/-! ## A082246.P4701448032955907711

`∩[A008578(n+1), A127334(n+1)]`
-/

namespace A082246.P4701448032955907711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082246.P4701448032955907711

namespace A082246

/-- `∩[A008578(n+1), A127334(n+1)]` -/
def P4701448032955907711.Spec : Prop :=
  ∀ n, (P4701448032955907711.a n : ℤ) = A082246 (n + 1)

end A082246

/-! ## A082246.P10318405235881232895

`∩[A033946(n+1), A127334(n+1)]`
-/

namespace A082246.P10318405235881232895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082246.P10318405235881232895

namespace A082246

/-- `∩[A033946(n+1), A127334(n+1)]` -/
def P10318405235881232895.Spec : Prop :=
  ∀ n, (P10318405235881232895.a n : ℤ) = A082246 (n + 1)

end A082246

/-! ## A082246.P6939666398750744646

`∩[A045319(n+1), A127334(n+1)]`
-/

namespace A082246.P6939666398750744646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082246.P6939666398750744646

namespace A082246

/-- `∩[A045319(n+1), A127334(n+1)]` -/
def P6939666398750744646.Spec : Prop :=
  ∀ n, (P6939666398750744646.a n : ℤ) = A082246 (n + 1)

end A082246

/-!
# A082249: Reverse concatenation of 7 numbers that are multiples of 7.

The programs for A082249, there is no canonical definition to state claims against.
-/

/-! ## A082249.P17469964105505492174

`7*A082250(n+1)`
-/

namespace A082249.P17469964105505492174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A082250 (n + 1)

end

end A082249.P17469964105505492174

/-!
# A082250: a(n) = A082249(n)/7.

The programs for A082250, there is no canonical definition to state claims against.
-/

/-! ## A082250.P6338054409560140763

`A082249(n+1)/7`
-/

namespace A082250.P6338054409560140763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082249 (n + 1) : ℚ) / 7

end

end A082250.P6338054409560140763

/-!
# A082251: Primes that are the sum of 9 consecutive primes.

The programs for A082251, the canonical program `A082251.P3941284937175631650` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082251 has offset 1).

The definition of A082251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1715 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082251.P7109310152130829322

`p?[A007504(n+9)-A007504(n)]`
-/

namespace A082251.P7109310152130829322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 9) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082251.P7109310152130829322

namespace A082251

/-- `p?[A007504(n+9)-A007504(n)]` -/
def P7109310152130829322.Spec : Prop :=
  ∀ n, P7109310152130829322.a n = A082251 (n + 1)

end A082251

/-! ## A082251.P14831737533569184324

`p?[A127336(n+1)]`
-/

namespace A082251.P14831737533569184324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082251.P14831737533569184324

namespace A082251

/-- `p?[A127336(n+1)]` -/
def P14831737533569184324.Spec : Prop :=
  ∀ n, P14831737533569184324.a n = A082251 (n + 1)

end A082251

/-! ## A082251.P13773345768002667404

`p?[A127337(n+1)-A000040(n+1)]`
-/

namespace A082251.P13773345768002667404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082251.P13773345768002667404

namespace A082251

/-- `p?[A127337(n+1)-A000040(n+1)]` -/
def P13773345768002667404.Spec : Prop :=
  ∀ n, P13773345768002667404.a n = A082251 (n + 1)

end A082251

/-! ## A082251.P12897903213299111757

`p?[A127335(n+2)+A000040(n+1)]`
-/

namespace A082251.P12897903213299111757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 2) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082251.P12897903213299111757

namespace A082251

/-- `p?[A127335(n+2)+A000040(n+1)]` -/
def P12897903213299111757.Spec : Prop :=
  ∀ n, P12897903213299111757.a n = A082251 (n + 1)

end A082251

/-! ## A082251.P11765077573342725014

`p?[A127335(n+2)+A040976(n+1)+2]`
-/

namespace A082251.P11765077573342725014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127335 (n + 2) + (A040976 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082251.P11765077573342725014

namespace A082251

/-- `p?[A127335(n+2)+A040976(n+1)+2]` -/
def P11765077573342725014.Spec : Prop :=
  ∀ n, P11765077573342725014.a n = A082251 (n + 1)

end A082251

/-! ## A082251.P8595433755002462700

`p?[A127334(n+3)+A001043(n+1)]`
-/

namespace A082251.P8595433755002462700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127334 (n + 3) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082251.P8595433755002462700

namespace A082251

/-- `p?[A127334(n+3)+A001043(n+1)]` -/
def P8595433755002462700.Spec : Prop :=
  ∀ n, P8595433755002462700.a n = A082251 (n + 1)

end A082251

/-! ## A082251.P3941284937175631650

`p?[A175965(n+10)-A175965(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A082251

/-- `p?[A175965(n+10)-A175965(n+1)]` -/
def P3941284937175631650.Spec : Prop :=
  ∀ n, P3941284937175631650.a n = A082251 (n + 1)

theorem P3941284937175631650.correct : P3941284937175631650.Spec := by
  intro n
  simp only [A082251, Nat.add_sub_cancel]

end A082251

/-! ## A082251.P5411607720565745309

`∩[A067377(n+1), A127336(n+1)]`
-/

namespace A082251.P5411607720565745309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082251.P5411607720565745309

namespace A082251

/-- `∩[A067377(n+1), A127336(n+1)]` -/
def P5411607720565745309.Spec : Prop :=
  ∀ n, (P5411607720565745309.a n : ℤ) = A082251 (n + 1)

end A082251

/-! ## A082251.P7691056022071628827

`∩[A127336(n+1), A396555(n+1)]`
-/

namespace A082251.P7691056022071628827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082251.P7691056022071628827

namespace A082251

/-- `∩[A127336(n+1), A396555(n+1)]` -/
def P7691056022071628827.Spec : Prop :=
  ∀ n, (P7691056022071628827.a n : ℤ) = A082251 (n + 1)

end A082251

/-! ## A082251.P2255145393714753090

`∩[A000040(n+1), A127336(n+1)]`
-/

namespace A082251.P2255145393714753090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082251.P2255145393714753090

namespace A082251

/-- `∩[A000040(n+1), A127336(n+1)]` -/
def P2255145393714753090.Spec : Prop :=
  ∀ n, (P2255145393714753090.a n : ℤ) = A082251 (n + 1)

end A082251

/-! ## A082251.P550525579564818598

`∩[A004139(n+1), A127336(n+1)]`
-/

namespace A082251.P550525579564818598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082251.P550525579564818598

namespace A082251

/-- `∩[A004139(n+1), A127336(n+1)]` -/
def P550525579564818598.Spec : Prop :=
  ∀ n, (P550525579564818598.a n : ℤ) = A082251 (n + 1)

end A082251

/-! ## A082251.P9976542555538830057

`∩[A006005(n+1), A127336(n+1)]`
-/

namespace A082251.P9976542555538830057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082251.P9976542555538830057

namespace A082251

/-- `∩[A006005(n+1), A127336(n+1)]` -/
def P9976542555538830057.Spec : Prop :=
  ∀ n, (P9976542555538830057.a n : ℤ) = A082251 (n + 1)

end A082251

/-! ## A082251.P2337124770154553839

`∩[A008578(n+1), A127336(n+1)]`
-/

namespace A082251.P2337124770154553839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082251.P2337124770154553839

namespace A082251

/-- `∩[A008578(n+1), A127336(n+1)]` -/
def P2337124770154553839.Spec : Prop :=
  ∀ n, (P2337124770154553839.a n : ℤ) = A082251 (n + 1)

end A082251

/-! ## A082251.P9690621242479028517

`∩[A033946(n+1), A127336(n+1)]`
-/

namespace A082251.P9690621242479028517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082251.P9690621242479028517

namespace A082251

/-- `∩[A033946(n+1), A127336(n+1)]` -/
def P9690621242479028517.Spec : Prop :=
  ∀ n, (P9690621242479028517.a n : ℤ) = A082251 (n + 1)

end A082251

/-! ## A082251.P7382264930685347309

`∩[A038672(n+1), A127336(n+1)]`
-/

namespace A082251.P7382264930685347309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082251.P7382264930685347309

namespace A082251

/-- `∩[A038672(n+1), A127336(n+1)]` -/
def P7382264930685347309.Spec : Prop :=
  ∀ n, (P7382264930685347309.a n : ℤ) = A082251 (n + 1)

end A082251

/-! ## A082251.P11313020439743710015

`∩[A045319(n+1), A127336(n+1)]`
-/

namespace A082251.P11313020439743710015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082251.P11313020439743710015

namespace A082251

/-- `∩[A045319(n+1), A127336(n+1)]` -/
def P11313020439743710015.Spec : Prop :=
  ∀ n, (P11313020439743710015.a n : ℤ) = A082251 (n + 1)

end A082251

/-! ## A082251.P3468272267020863082

`∩[A045344(n+1), A127336(n+1)]`
-/

namespace A082251.P3468272267020863082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082251.P3468272267020863082

namespace A082251

/-- `∩[A045344(n+1), A127336(n+1)]` -/
def P3468272267020863082.Spec : Prop :=
  ∀ n, (P3468272267020863082.a n : ℤ) = A082251 (n + 1)

end A082251

/-! ## A082251.P3558735172204712316

`∩[A046022(n+1), A127336(n+1)]`
-/

namespace A082251.P3558735172204712316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082251.P3558735172204712316

namespace A082251

/-- `∩[A046022(n+1), A127336(n+1)]` -/
def P3558735172204712316.Spec : Prop :=
  ∀ n, (P3558735172204712316.a n : ℤ) = A082251 (n + 1)

end A082251

/-! ## A082251.P11981950144786575855

`∩[A051948(n+1), A127336(n+1)]`
-/

namespace A082251.P11981950144786575855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082251.P11981950144786575855

namespace A082251

/-- `∩[A051948(n+1), A127336(n+1)]` -/
def P11981950144786575855.Spec : Prop :=
  ∀ n, (P11981950144786575855.a n : ℤ) = A082251 (n + 1)

end A082251

/-! ## A082251.P3632975060167972173

`∩[A053813(n+1), A127336(n+1)]`
-/

namespace A082251.P3632975060167972173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082251.P3632975060167972173

namespace A082251

/-- `∩[A053813(n+1), A127336(n+1)]` -/
def P3632975060167972173.Spec : Prop :=
  ∀ n, (P3632975060167972173.a n : ℤ) = A082251 (n + 1)

end A082251

/-!
# A082252: Concatenation of (3n-2), (3n-1) and 3n divided by 3.

The programs for A082252, there is no canonical definition to state claims against.
-/

/-! ## A082252.P18216545442433345201

`A248556(n+1)/3`
-/

namespace A082252.P18216545442433345201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248556 (n + 1) : ℚ) / 3

end

end A082252.P18216545442433345201

/-! ## A082252.P2942807452934137210

`ceil(A261618(3*n+1)/3)`
-/

namespace A082252.P2942807452934137210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A261618 (3 * n + 1) : ℚ) / 3⌉

end

end A082252.P2942807452934137210

/-! ## A082252.P17144103923068302607

`A074991(3*n+1)`
-/

namespace A082252.P17144103923068302607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074991 (3 * n + 1)

end

end A082252.P17144103923068302607

/-! ## A082252.P12196952028223219305

`A001703(3*n+1)/3`
-/

namespace A082252.P12196952028223219305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001703 (3 * n + 1) : ℚ) / 3

end

end A082252.P12196952028223219305

/-! ## A082252.P5700370851218487344

`record[A074991(A074066(n+1))]`
-/

namespace A082252.P5700370851218487344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074991 (A074066 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082252.P5700370851218487344

/-! ## A082252.P7012914704914138850

`record[A074991(Δ[A093005(n+1)])]`
-/

namespace A082252.P7012914704914138850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074991 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082252.P7012914704914138850

/-!
# A082253: Concatenation of (5n-4), (5n-3), (5n-2), (5n-1) and 5n divided by 5.

The programs for A082253, there is no canonical definition to state claims against.
-/

/-! ## A082253.P7338793059432358799

`A074995(2*n+3*n+1)`
-/

namespace A082253.P7338793059432358799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074995 (2 * n + (3 * n + 1))

end

end A082253.P7338793059432358799

/-!
# A082254: Concatenation of (6n-5), (6n-4), (6n-3), (6n-2), (6n-1) and 6n divided by 6.

The programs for A082254, there is no canonical definition to state claims against.
-/

/-! ## A082254.P13730441754568948415

`A074996(5*n+n+1)`
-/

namespace A082254.P13730441754568948415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074996 (5 * n + (n + 1))

end

end A082254.P13730441754568948415

/-!
# A082258: In the following triangular array the n-th row contains n primes (wherever possible) with digit sum n. Sequence contains the leading diagonal with a zero if no number exists.

The programs for A082258, there is no canonical definition to state claims against.
-/

/-! ## A082258.P4417939649429885606

`A075361(n+1)%A003369(n+1)`
-/

namespace A082258.P4417939649429885606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075361 (n + 1)) (A003369 (n + 1))

end

end A082258.P4417939649429885606

/-! ## A082258.P6539344476257735676

`A075361(n+1)%A057096(A016777(n))`
-/

namespace A082258.P6539344476257735676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075361 (n + 1)) (A057096 (A016777 n).toNat)

end

end A082258.P6539344476257735676

/-! ## A082258.P8109846821637115750

`A080225(A277013(n+2))+A075361(n+1)`
-/

namespace A082258.P8109846821637115750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080225 (A277013 (n + 2)).toNat + A075361 (n + 1)

end

end A082258.P8109846821637115750

/-! ## A082258.P5885034723638909648

`A051731(A124944(n+1))*A075361(n+1)`
-/

namespace A082258.P5885034723638909648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A124944 (n + 1)).toNat * A075361 (n + 1)

end

end A082258.P5885034723638909648

/-! ## A082258.P11586982087132859243

`A048993(A140579(n+1))*A075361(n+1)`
-/

namespace A082258.P11586982087132859243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A140579 (n + 1)).toNat * A075361 (n + 1)

end

end A082258.P11586982087132859243

/-! ## A082258.P14842522651116107145

`A075361(n+1)*A249351(A237593(n+1))`
-/

namespace A082258.P14842522651116107145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075361 (n + 1) * A249351 (A237593 (n + 1)).toNat

end

end A082258.P14842522651116107145

/-! ## A082258.P1073686197368127024

`A075361(n+1)*A124944(A075402(n+4))`
-/

namespace A082258.P1073686197368127024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075361 (n + 1) * A124944 (A075402 (n + 4)).toNat

end

end A082258.P1073686197368127024

/-! ## A082258.P14505470634137218183

`A051731(A237593(3*(n+1)))*A075361(n+1)`
-/

namespace A082258.P14505470634137218183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A237593 (3 * (n + 1))).toNat * A075361 (n + 1)

end

end A082258.P14505470634137218183

/-! ## A082258.P16963436787946156756

`A075361(n+1)*A124944(A338156(2*n+3))`
-/

namespace A082258.P16963436787946156756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075361 (n + 1) * A124944 (A338156 (2 * n + 3)).toNat

end

end A082258.P16963436787946156756

/-!
# A082259: Triangle read by rows in which the n-th row contains n multiples of n with digit sum n.

The programs for A082259, there is no canonical definition to state claims against.
-/

/-! ## A082259.P2669416504259025408

`∑[char[∑[n]]]*A082263(n+1)`
-/

namespace A082259.P2669416504259025408
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A082263 (n + 1)

end

end A082259.P2669416504259025408

/-! ## A082259.P5205653347361073303

`A082263(n+1)/2*A111650(n+1)`
-/

namespace A082259.P5205653347361073303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082263 (n + 1) : ℚ) / 2 * (A111650 (n + 1) : ℚ)

end

end A082259.P5205653347361073303

/-! ## A082259.P17095713854871424835

`A245062(A245300(n)+1)`
-/

namespace A082259.P17095713854871424835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245062 (A245300 n + 1).toNat

end

end A082259.P17095713854871424835

/-! ## A082259.P18025304980228768914

`A028310(A002024(n+1)*A082263(n+1))`
-/

namespace A082259.P18025304980228768914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002024 (n + 1) * A082263 (n + 1)).toNat

end

end A082259.P18025304980228768914

/-! ## A082259.P4199162179891628629

`A028310(A000194(2*(n+1))*A082263(n+1))`
-/

namespace A082259.P4199162179891628629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000194 (2 * (n + 1)) * A082263 (n + 1)).toNat

end

end A082259.P4199162179891628629

/-!
# A082260: a(n) = n-th multiple of n with digit sum n.

The programs for A082260, there is no canonical definition to state claims against.
-/

/-! ## A082260.P14180018068589230082

`A082259(∑[n+1])`
-/

namespace A082260.P14180018068589230082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082259 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082260.P14180018068589230082

/-! ## A082260.P4895108597223634094

`or(char[2], A082259(A000217(n+1)))`
-/

namespace A082260.P4895108597223634094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A082259 (A000217 (n + 1)).toNat)

end

end A082260.P4895108597223634094

/-! ## A082260.P8935992066689105775

`gcd(A000038(n), A082259(A000217(n+1)))`
-/

namespace A082260.P8935992066689105775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A082259 (A000217 (n + 1)).toNat)

end

end A082260.P8935992066689105775

/-! ## A082260.P11957796306573710032

`char[A014682(n)]*A082259(A000217(n+1))`
-/

namespace A082260.P11957796306573710032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A082259 (A000217 (n + 1)).toNat

end

end A082260.P11957796306573710032

/-! ## A082260.P16564858529019258806

`char[A131813(n)]*A082259(A000217(n+1))`
-/

namespace A082260.P16564858529019258806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131813 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A082259 (A000217 (n + 1)).toNat

end

end A082260.P16564858529019258806

/-! ## A082260.P3366926346941495674

`char[A163233(n)]*A082259(A000217(n+1))`
-/

namespace A082260.P3366926346941495674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163233 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A082259 (A000217 (n + 1)).toNat

end

end A082260.P3366926346941495674

/-! ## A082260.P11837691412155457138

`A082259(A000217(n+1))+A000007(n+1)`
-/

namespace A082260.P11837691412155457138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082259 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A082260.P11837691412155457138

/-! ## A082260.P13242268506334313882

`A057427(n+3)*A082259(A000217(n+1))`
-/

namespace A082260.P13242268506334313882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 3) * A082259 (A000217 (n + 1)).toNat

end

end A082260.P13242268506334313882

/-! ## A082260.P12336933809503169827

`lcm(A020639(n+1), A082259(A000217(n+1)))`
-/

namespace A082260.P12336933809503169827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (n + 1)) (A082259 (A000217 (n + 1)).toNat)

end

end A082260.P12336933809503169827

/-! ## A082260.P13253283096071009818

`A192237(C(2, n))+A082259(A000217(n+1))`
-/

namespace A082260.P13253283096071009818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192237 (Nat.choose 2 n) + A082259 (A000217 (n + 1)).toNat

end

end A082260.P13253283096071009818

/-!
# A082261: Row sums in A082259.

The programs for A082261, there is no canonical definition to state claims against.
-/

/-! ## A082261.P4612694693764403076

`(n+1)*A082262(n+1)`
-/

namespace A082261.P4612694693764403076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A082262 (n + 1)

end

end A082261.P4612694693764403076

/-!
# A082262: Average of row n of A082259.

The programs for A082262, there is no canonical definition to state claims against.
-/

/-! ## A082262.P17396889885908647183

`A082261(n+1)/(n+1)`
-/

namespace A082262.P17396889885908647183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082261 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A082262.P17396889885908647183

/-!
# A082263: Triangle A082259 with row n divided by n.

The programs for A082263, there is no canonical definition to state claims against.
-/

/-! ## A082263.P6197915876675429135

`A082259(n+1)/∑[char[∑[n]]]`
-/

namespace A082263.P6197915876675429135
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082259 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A082263.P6197915876675429135

/-! ## A082263.P2139068106218635775

`floor(A082259(n+1)/A002024(n+1))`
-/

namespace A082263.P2139068106218635775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082259 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)⌋

end

end A082263.P2139068106218635775

/-! ## A082263.P7816144428447960726

`floor(A082259(n+1)/(A003056(n)+1))`
-/

namespace A082263.P7816144428447960726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082259 (n + 1) : ℚ) / (A003056 n + 1 : ℚ)⌋

end

end A082263.P7816144428447960726

/-! ## A082263.P1251489797149860619

`A110367(A082259(n+1)+char[1])`
-/

namespace A082263.P1251489797149860619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (A082259 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A082263.P1251489797149860619

/-! ## A082263.P10761341532437979052

`A110367(2*A082259(n+1)-A082259(n+1))`
-/

namespace A082263.P10761341532437979052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110367 (2 * A082259 (n + 1) - A082259 (n + 1)).toNat

end

end A082263.P10761341532437979052

/-! ## A082263.P13489252824993474997

`A059514(A082259(n+1))`
-/

namespace A082263.P13489252824993474997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059514 (A082259 (n + 1)).toNat

end

end A082263.P13489252824993474997

/-!
# A082264: Triangle whose n-th row contains n smallest palindromes with a digit sum of n.

The programs for A082264, there is no canonical definition to state claims against.
-/

/-! ## A082264.P7094134979770920151

`A002275(a(n-1))` with `a(0)=1, a(1)=2, a(2)=11, a(3)=3`
-/

namespace A082264.P7094134979770920151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 11, 3] fun n a =>
  A002275 (a (n - 1)).toNat

end

end A082264.P7094134979770920151

/-!
# A082265: n-th largest palindrome whose digit sum is n.

The programs for A082265, there is no canonical definition to state claims against.
-/

/-! ## A082265.P11575306942065192926

`A082264(∑[n+1])`
-/

namespace A082265.P11575306942065192926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082264 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082265.P11575306942065192926

/-! ## A082265.P16164154710358326365

`and(-1, A082264(A000217(n+1)))`
-/

namespace A082265.P16164154710358326365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A082264 (A000217 (n + 1)).toNat)

end

end A082265.P16164154710358326365

/-!
# A082266: In the array shown below the n-th row contains all the palindromes that use digits > 0 and have a digit sum of n. The sequence contains the array read by rows.

The programs for A082266, there is no canonical definition to state claims against.
-/

/-! ## A082266.P17468216213409332992

`filter[A109858(n+1), A071023(#)]`
-/

namespace A082266.P17468216213409332992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071023 (f1 j).toNat = 1) n)

end

end A082266.P17468216213409332992

/-! ## A082266.P2909725661034516916

`filter[A069800(n+1), A136522(#)]`
-/

namespace A082266.P2909725661034516916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A082266.P2909725661034516916

/-! ## A082266.P1902868736149187144

`filter[A109858(n+1), A168046(#)]`
-/

namespace A082266.P1902868736149187144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A082266.P1902868736149187144

/-! ## A082266.P12060010136488881079

`filter[A109858(n+1), A322674(#)]`
-/

namespace A082266.P12060010136488881079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322674 (f1 j).toNat = 1) n)

end

end A082266.P12060010136488881079

/-! ## A082266.P4858596051817820785

`A109858(A087027(n+1))`
-/

namespace A082266.P4858596051817820785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109858 (A087027 (n + 1)).toNat

end

end A082266.P4858596051817820785

/-!
# A082267: Number of palindromes that use nonzero digits and have a digit sum of n.

The programs for A082267, the canonical program `A082267.P3341460620143484072` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082267 has offset 1).

The definition of A082267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082267.P3341460620143484072

`A251749(A080513(n)+8)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A082267

/-- `A251749(A080513(n)+8)` -/
def P3341460620143484072.Spec : Prop :=
  ∀ n, P3341460620143484072.a n = A082267 (n + 1)

theorem P3341460620143484072.correct : P3341460620143484072.Spec := by
  intro n
  simp only [A082267, Nat.add_sub_cancel]

end A082267

/-! ## A082267.P17122515443629331002

`A251749(A110654(n)+9)`
-/

namespace A082267.P17122515443629331002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251749 (A110654 n + 9).toNat

end

end A082267.P17122515443629331002

namespace A082267

/-- `A251749(A110654(n)+9)` -/
def P17122515443629331002.Spec : Prop :=
  ∀ n, P17122515443629331002.a n = A082267 (n + 1)

end A082267

/-! ## A082267.P17473995732415483729

`A251749(A004526(n+1)+9)`
-/

namespace A082267.P17473995732415483729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251749 (A004526 (n + 1) + 9).toNat

end

end A082267.P17473995732415483729

namespace A082267

/-- `A251749(A004526(n+1)+9)` -/
def P17473995732415483729.Spec : Prop :=
  ∀ n, P17473995732415483729.a n = A082267 (n + 1)

end A082267

/-! ## A082267.P6825942376433257290

`A251749(A020723(abs(A001057(n))))`
-/

namespace A082267.P6825942376433257290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251749 (A020723 |A001057 n|.toNat).toNat

end

end A082267.P6825942376433257290

namespace A082267

/-- `A251749(A020723(abs(A001057(n))))` -/
def P6825942376433257290.Spec : Prop :=
  ∀ n, P6825942376433257290.a n = A082267 (n + 1)

end A082267

/-! ## A082267.P4855996675942147189

`A251749(A020723(Δ[A002620(n)]))`
-/

namespace A082267.P4855996675942147189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251749 (A020723 (f1 (n + 1) - f1 n).toNat).toNat

end

end A082267.P4855996675942147189

namespace A082267

/-- `A251749(A020723(Δ[A002620(n)]))` -/
def P4855996675942147189.Spec : Prop :=
  ∀ n, P4855996675942147189.a n = A082267 (n + 1)

end A082267

/-!
# A082271: Palindromes arising in A082270.

The programs for A082271, there is no canonical definition to state claims against.
-/

/-! ## A082271.P10872971328890882853

`A082270(n+1)*A082270(n+2)+1`
-/

namespace A082271.P10872971328890882853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082270 (n + 1) * A082270 (n + 2) + 1

end

end A082271.P10872971328890882853

/-!
# A082272: Smallest palindrome m such that n + m (m>0) is also a palindrome, or 0 if no such number exists.

The programs for A082272, there is no canonical definition to state claims against.
-/

/-! ## A082272.P1288000042689533196

`A324394(A000081(n)*A303545(n+2))`
-/

namespace A082272.P1288000042689533196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324394 (A000081 n * A303545 (n + 2)).toNat

end

end A082272.P1288000042689533196

/-! ## A082272.P11927749718016403091

`gcd(A134685(A055932(n+1)), A309673(n+1))`
-/

namespace A082272.P11927749718016403091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134685 (A055932 (n + 1)).toNat) (A309673 (n + 1))

end

end A082272.P11927749718016403091

/-!
# A082273: Palindromes arising in A082272, or 0 if A082272(n) is 0.

The programs for A082273, there is no canonical definition to state claims against.
-/

/-! ## A082273.P10889056309683181468

`A179309(A287641(n)+A101318(n+1))`
-/

namespace A082273.P10889056309683181468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179309 (A287641 n + A101318 (n + 1)).toNat

end

end A082273.P10889056309683181468

/-!
# A082274: Palindromes k such that k + 2 is also a palindrome.

The programs for A082274, there is no canonical definition to state claims against.
-/

/-! ## A082274.P13639855490727147413

`A239138(comp[record[A231929(n)]])`
-/

namespace A082274.P13639855490727147413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231929 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239138 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A082274.P13639855490727147413

/-! ## A082274.P11186591736949242918

`A239138(comp[Δ[A239194(n+1)]])`
-/

namespace A082274.P11186591736949242918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239194 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239138 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A082274.P11186591736949242918

/-! ## A082274.P7167810339486546282

`A239138(comp[A238991(n+1)]+1)`
-/

namespace A082274.P7167810339486546282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238991 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239138 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A082274.P7167810339486546282

/-! ## A082274.P4682652545624510007

`A239138(comp[A001158(n+1)-1])`
-/

namespace A082274.P4682652545624510007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239138 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A082274.P4682652545624510007

/-! ## A082274.P3967852917478561646

`A344486(A037405(n+1))`
-/

namespace A082274.P3967852917478561646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344486 (A037405 (n + 1)).toNat

end

end A082274.P3967852917478561646

/-!
# A082275: Palindromes k such that k + 11 is also a palindrome.

The programs for A082275, there is no canonical definition to state claims against.
-/

/-! ## A082275.P10110310965802536980

`∩[A002113(n+1)-11, A002113(n+2)]`
-/

namespace A082275.P10110310965802536980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) - 11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082275.P10110310965802536980

/-! ## A082275.P16040221219995706341

`∩[A110751(n+1)-11, A110751(n+1)]`
-/

namespace A082275.P16040221219995706341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1) - 11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082275.P16040221219995706341

/-!
# A082276: Smallest number whose digits can be permuted to get exactly n distinct palindromes.

The programs for A082276, there is no canonical definition to state claims against.
-/

/-! ## A082276.P18034294345568282022

`∏{p}[10*and(10^n, -2)+1, #]`
-/

namespace A082276.P18034294345568282022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * Int.land (10 ^ n : ℤ) (-2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A082276.P18034294345568282022

/-!
# A082277: Smallest prime that is the sum of prime(n) consecutive primes.

The programs for A082277, there is no canonical definition to state claims against.
-/

/-! ## A082277.P10315699294097782648

`A070281(Δ[A007504(n)])`
-/

namespace A082277.P10315699294097782648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070281 (f1 (n + 1) - f1 n).toNat

end

end A082277.P10315699294097782648

/-! ## A082277.P15571156948871254597

`A070281(A000040(n+1))`
-/

namespace A082277.P15571156948871254597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070281 (A000040 (n + 1)).toNat

end

end A082277.P15571156948871254597

/-! ## A082277.P7568718213687216846

`A070281(A008578(n+2))`
-/

namespace A082277.P7568718213687216846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070281 (A008578 (n + 2)).toNat

end

end A082277.P7568718213687216846

/-! ## A082277.P11778512508137972883

`A070281(A182986(n+2))`
-/

namespace A082277.P11778512508137972883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070281 (A182986 (n + 2)).toNat

end

end A082277.P11778512508137972883

/-! ## A082277.P12619988860825207697

`A070281(A006093(n+1)+1)`
-/

namespace A082277.P12619988860825207697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070281 (A006093 (n + 1) + 1).toNat

end

end A082277.P12619988860825207697

/-! ## A082277.P13583466089016547662

`A070281(A007504(n+1)-A007504(n))`
-/

namespace A082277.P13583466089016547662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070281 (A007504 (n + 1) - A007504 n).toNat

end

end A082277.P13583466089016547662

/-!
# A082278: a(1)=1; for n >= 1, a(n+1) is minimal such that there are a(n) primes strictly between a(n) and a(n+1).

The programs for A082278, there is no canonical definition to state claims against.
-/

/-! ## A082278.P10579163608927364984

`A077152(a(n-1))` with `a(0)=1`
-/

namespace A082278.P10579163608927364984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077152 (a (n - 1)).toNat

end

end A082278.P10579163608927364984

/-! ## A082278.P3699331726760727407

`A084792(a(n-1))+1` with `a(0)=1`
-/

namespace A082278.P3699331726760727407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A084792 (a (n - 1)).toNat + 1

end

end A082278.P3699331726760727407

/-! ## A082278.P14382525066785599458

`Δ[A014688(a(n-1)+1)]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A082278.P14382525066785599458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  A014688 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082278.P14382525066785599458

/-!
# A082279: a(1)=1, a(2)=2 and a(n+1) is minimal such that there are a(n-1) primes strictly between a(n) and a(n+1).

The programs for A082279, there is no canonical definition to state claims against.
-/

/-! ## A082279.P8664061874635569264

`A208643(A000085(n))+A057427(n)`
-/

namespace A082279.P8664061874635569264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208643 (A000085 n).toNat + A057427 n

end

end A082279.P8664061874635569264

/-! ## A082279.P12147815588466413309

`A208643(A000085(n))+A071625(n+1)`
-/

namespace A082279.P12147815588466413309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208643 (A000085 n).toNat + A071625 (n + 1)

end

end A082279.P12147815588466413309

/-! ## A082279.P7055263994427759240

`∑[A000194(A371411(n))]`
-/

namespace A082279.P7055263994427759240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A371411 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082279.P7055263994427759240

/-!
# A082280: a(1) = 1, then the smallest number such that there are a(n) composite numbers between a(n) and a(n+1) both excluded.

The programs for A082280, there is no canonical definition to state claims against.
-/

/-! ## A082280.P10655579910606525300

`A077153(a(n-1))` with `a(0)=1`
-/

namespace A082280.P10655579910606525300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077153 (a (n - 1)).toNat

end

end A082280.P10655579910606525300

/-! ## A082280.P3308211536800428799

`A018252(A171511(a(n-1)+1))+1` with `a(0)=1`
-/

namespace A082280.P3308211536800428799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018252 (A171511 (a (n - 1) + 1).toNat).toNat + 1

end

end A082280.P3308211536800428799

/-! ## A082280.P6365786833864227972

`A018252(A282029(2*a(n-1)))+1` with `a(0)=1`
-/

namespace A082280.P6365786833864227972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018252 (A282029 (2 * a (n - 1)).toNat).toNat + 1

end

end A082280.P6365786833864227972

/-! ## A082280.P2710557165748310078

`A047859(n)+A000194(A001076(n))`
-/

namespace A082280.P2710557165748310078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 n + A000194 (A001076 n).toNat

end

end A082280.P2710557165748310078

/-!
# A082281: a(1) = 1, a(2) = 2; then a(n) = smallest number such that there are a(n-1) composite numbers between a(n) and a(n+1) exclusive.

The programs for A082281, there is no canonical definition to state claims against.
-/

/-! ## A082281.P4661690290627328432

`A000712(n)-A123577(n²)`
-/

namespace A082281.P4661690290627328432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - A123577 (n ^ 2)

end

end A082281.P4661690290627328432

/-! ## A082281.P1986845207240949804

`A082447(A003119(n))-A135664(n+1)`
-/

namespace A082281.P1986845207240949804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A003119 n).toNat - A135664 (n + 1)

end

end A082281.P1986845207240949804

/-! ## A082281.P2050224392781797037

`A082447(A238846(n))-A238874(n+1)`
-/

namespace A082281.P2050224392781797037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A238846 n).toNat - A238874 (n + 1)

end

end A082281.P2050224392781797037

/-!
# A082282: a(1) = 2, a(n) is the smallest prime > n*a(n-1).

The programs for A082282, there is no canonical definition to state claims against.
-/

/-! ## A082282.P18163896482814701947

`p?[A151800(n*a(n-1))]` with `a(0)=0`
-/

namespace A082282.P18163896482814701947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A151800 ((n : ℤ) * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082282.P18163896482814701947

/-! ## A082282.P8523933929843066328

`A151800((n+1)*a(n-1))` with `a(0)=2`
-/

namespace A082282.P8523933929843066328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A082282.P8523933929843066328

/-! ## A082282.P15245427085844102195

`p?[A151800(lcm(n, a(n-1)))]` with `a(0)=2, a(1)=4`
-/

namespace A082282.P15245427085844102195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  A151800 (Int.lcm (n : ℤ) (f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A082282.P15245427085844102195

/-!
# A082284: a(n) = smallest number k such that k - tau(k) = n, or 0 if no such number exists, where tau(n) = the number of divisors of n (A000005).

The programs for A082284, there is no canonical definition to state claims against.
-/

/-! ## A082284.P4553305646458460348

`A265751(∑[n+2]-1)`
-/

namespace A082284.P4553305646458460348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265751 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A082284.P4553305646458460348

/-! ## A082284.P4048392485436312892

`A265751(A034856(n+1))%19`
-/

namespace A082284.P4048392485436312892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265751 (A034856 (n + 1)).toNat) 19

end

end A082284.P4048392485436312892

/-! ## A082284.P15520917353614100837

`A326458(n)+A265751(A034856(n+1))`
-/

namespace A082284.P15520917353614100837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326458 n + A265751 (A034856 (n + 1)).toNat

end

end A082284.P15520917353614100837

/-! ## A082284.P15255578513275525324

`A265751(A034856(n+1))/A007318(∑[n])`
-/

namespace A082284.P15255578513275525324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265751 (A034856 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A082284.P15255578513275525324

/-! ## A082284.P13025840633932693637

`A265751(A034856(n+1))*A324907(n+1)`
-/

namespace A082284.P13025840633932693637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265751 (A034856 (n + 1)).toNat * A324907 (n + 1)

end

end A082284.P13025840633932693637

/-!
# A082285: a(n) = 16*n + 13.

The programs for A082285, the canonical program `A082285.P16772271562907915058` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082285 has offset 0).

The definition of A082285 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n+13` (program `A082285.P16772271562907915058`, by `A082285.P16772271562907915058.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082285.P16772271562907915058

`16*n+13`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A082285

/-- `16*n+13` -/
def P16772271562907915058.Spec : Prop :=
  ∀ n, (P16772271562907915058.a n : ℤ) = A082285 n

theorem P16772271562907915058.correct : P16772271562907915058.Spec := by
  intro n
  simp only [A082285]

end A082285

/-!
# A082286: a(n) = 18*n + 10.

The programs for A082286, the canonical program `A082286.P10023046808755581064` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082286 has offset 0).

The definition of A082286 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*n+10` (program `A082286.P10023046808755581064`, by `A082286.P10023046808755581064.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A082286.P10023046808755581064

`18*n+10`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A082286

/-- `18*n+10` -/
def P10023046808755581064.Spec : Prop :=
  ∀ n, (P10023046808755581064.a n : ℤ) = A082286 n

theorem P10023046808755581064.correct : P10023046808755581064.Spec := by
  intro n
  simp only [A082286]

end A082286

/-!
# A082287: a(1) = 1; for n > 1, n appears omega(n) times, where omega(n)=A001221(n) is the number of distinct prime factors of n, a(1)=1.

The programs for A082287, the canonical program `A082287.P8276136193256728625` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082287 has offset 1).

The definition of A082287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082287.P8276136193256728625

`∑[char[A082186(n+1)]]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A082287

/-- `∑[char[A082186(n+1)]]+1` -/
def P8276136193256728625.Spec : Prop :=
  ∀ n, (P8276136193256728625.a n : ℤ) = A082287 (n + 1)

theorem P8276136193256728625.correct : P8276136193256728625.Spec := by
  intro n
  simp only [A082287, Nat.add_sub_cancel]

end A082287

/-! ## A082287.P17163653127905281304

`∑[char[A013939(n+1)+1]]+1`
-/

namespace A082287.P17163653127905281304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A082287.P17163653127905281304

namespace A082287

/-- `∑[char[A013939(n+1)+1]]+1` -/
def P17163653127905281304.Spec : Prop :=
  ∀ n, (P17163653127905281304.a n : ℤ) = A082287 (n + 1)

end A082287

/-! ## A082287.P14931106994650029714

`∑[char[∑[A001221(n+1)]+1]]+1`
-/

namespace A082287.P14931106994650029714
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A082287.P14931106994650029714

namespace A082287

/-- `∑[char[∑[A001221(n+1)]+1]]+1` -/
def P14931106994650029714.Spec : Prop :=
  ∀ n, (P14931106994650029714.a n : ℤ) = A082287 (n + 1)

end A082287

/-! ## A082287.P6625658149584775733

`char[A001221(n)+a(n-1)]+a(n-1)` with `a(0)=1`
-/

namespace A082287.P6625658149584775733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001221 n + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A082287.P6625658149584775733

namespace A082287

/-- `char[A001221(n)+a(n-1)]+a(n-1)` -/
def P6625658149584775733.Spec : Prop :=
  ∀ n, (P6625658149584775733.a n : ℤ) = A082287 (n + 1)

end A082287

/-! ## A082287.P8937843189606525372

`comp[∑[A001222(∏{p}[n+1, #])+1]]-n+1`
-/

namespace A082287.P8937843189606525372
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f3 n), p) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A082287.P8937843189606525372

namespace A082287

/-- `comp[∑[A001222(∏{p}[n+1, #])+1]]-n+1` -/
def P8937843189606525372.Spec : Prop :=
  ∀ n, P8937843189606525372.a n = A082287 (n + 1)

end A082287

/-! ## A082287.P15050728070242141694

`a(n-1)+a(n-1)²%A141809(n+1)` with `a(0)=1`
-/

namespace A082287.P15050728070242141694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (a (n - 1) ^ 2) (A141809 (n + 1))

end

end A082287.P15050728070242141694

namespace A082287

/-- `a(n-1)+a(n-1)²%A141809(n+1)` -/
def P15050728070242141694.Spec : Prop :=
  ∀ n, P15050728070242141694.a n = A082287 (n + 1)

end A082287

/-! ## A082287.P18299754209653643260

`∑[floor(A141404(n+1)/A141810(n+1))]`
-/

namespace A082287.P18299754209653643260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141404 (n + 1) : ℚ) / (A141810 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082287.P18299754209653643260

namespace A082287

/-- `∑[floor(A141404(n+1)/A141810(n+1))]` -/
def P18299754209653643260.Spec : Prop :=
  ∀ n, P18299754209653643260.a n = A082287 (n + 1)

end A082287

/-! ## A082287.P12811806321791879512

`A302170(n+1)*A355079(n+1)`
-/

namespace A082287.P12811806321791879512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302170 (n + 1) * A355079 (n + 1)

end

end A082287.P12811806321791879512

namespace A082287

/-- `A302170(n+1)*A355079(n+1)` -/
def P12811806321791879512.Spec : Prop :=
  ∀ n, P12811806321791879512.a n = A082287 (n + 1)

end A082287

/-!
# A082288: n>1 appears bigomega(n) times, where bigomega(n)=A001222(n) is the number of prime factors of n (with repetition), a(1)=1.

The programs for A082288, the canonical program `A082288.P16475141846328251341` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082288 has offset 1).

The definition of A082288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082288.P16475141846328251341

`∑[char[∑[∑{e}[n, #]]+1]]+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A082288

/-- `∑[char[∑[∑{e}[n, #]]+1]]+1` -/
def P16475141846328251341.Spec : Prop :=
  ∀ n, (P16475141846328251341.a n : ℤ) = A082288 (n + 1)

theorem P16475141846328251341.correct : P16475141846328251341.Spec := by
  intro n
  simp only [A082288, Nat.add_sub_cancel]

end A082288

/-! ## A082288.P8305896908150694554

`∑[char[∑[∑{e}[3-n, #]]-1]]`
-/

namespace A082288.P8305896908150694554
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n).natAbs, Nat.factorization (f4 n).natAbs p

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082288.P8305896908150694554

namespace A082288

/-- `∑[char[∑[∑{e}[3-n, #]]-1]]` -/
def P8305896908150694554.Spec : Prop :=
  ∀ n, (P8305896908150694554.a n : ℤ) = A082288 (n + 1)

end A082288

/-! ## A082288.P9474323047413590882

`comp[∑[∑{e}[n+1, #]+1]]+1-n`
-/

namespace A082288.P9474323047413590882
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (1 - (n : ℤ))

end

end A082288.P9474323047413590882

namespace A082288

/-- `comp[∑[∑{e}[n+1, #]+1]]+1-n` -/
def P9474323047413590882.Spec : Prop :=
  ∀ n, P9474323047413590882.a n = A082288 (n + 1)

end A082288

/-! ## A082288.P3457204216914144776

`comp[∑[val(∏{e}[n+1, 2^#], 2)+1]]-n+1`
-/

namespace A082288.P3457204216914144776
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f3 n), 2 ^ Nat.factorization (f3 n) p) 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) + 1

end

end A082288.P3457204216914144776

namespace A082288

/-- `comp[∑[val(∏{e}[n+1, 2^#], 2)+1]]-n+1` -/
def P3457204216914144776.Spec : Prop :=
  ∀ n, P3457204216914144776.a n = A082288 (n + 1)

end A082288

/-! ## A082288.P9548799906599861111

`∑[floor(acot(A241910(n+1)))]`
-/

namespace A082288.P9548799906599861111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A241910 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082288.P9548799906599861111

namespace A082288

/-- `∑[floor(acot(A241910(n+1)))]` -/
def P9548799906599861111.Spec : Prop :=
  ∀ n, P9548799906599861111.a n = A082288 (n + 1)

end A082288

/-! ## A082288.P10734693983780085351

`∑[char[A022559(n)+1]]+1`
-/

namespace A082288.P10734693983780085351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A082288.P10734693983780085351

namespace A082288

/-- `∑[char[A022559(n)+1]]+1` -/
def P10734693983780085351.Spec : Prop :=
  ∀ n, (P10734693983780085351.a n : ℤ) = A082288 (n + 1)

end A082288

/-! ## A082288.P4167809103708981431

`∑[char[∑[A086436(n+1)]]]+1`
-/

namespace A082288.P4167809103708981431
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A082288.P4167809103708981431

namespace A082288

/-- `∑[char[∑[A086436(n+1)]]]+1` -/
def P4167809103708981431.Spec : Prop :=
  ∀ n, (P4167809103708981431.a n : ℤ) = A082288 (n + 1)

end A082288

/-! ## A082288.P15298226647544383211

`∑[char[A001222(n)+a(n-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A082288.P15298226647544383211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A001222 n + f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082288.P15298226647544383211

namespace A082288

/-- `∑[char[A001222(n)+a(n-1)]]` -/
def P15298226647544383211.Spec : Prop :=
  ∀ n, (P15298226647544383211.a n : ℤ) = A082288 (n + 1)

end A082288

/-! ## A082288.P5634105789319242111

`∑[char[∑[A001222(n+1)]+1]]+1`
-/

namespace A082288.P5634105789319242111
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A082288.P5634105789319242111

namespace A082288

/-- `∑[char[∑[A001222(n+1)]+1]]+1` -/
def P5634105789319242111.Spec : Prop :=
  ∀ n, (P5634105789319242111.a n : ℤ) = A082288 (n + 1)

end A082288

/-! ## A082288.P4602551318989608673

`comp[∑[A001222(2*(n+1))]]+1-n`
-/

namespace A082288.P4602551318989608673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A082288.P4602551318989608673

namespace A082288

/-- `comp[∑[A001222(2*(n+1))]]+1-n` -/
def P4602551318989608673.Spec : Prop :=
  ∀ n, P4602551318989608673.a n = A082288 (n + 1)

end A082288

/-!
# A082289: Expansion of x^4*(2+x)/((1+x)*(1-x)^5).

The programs for A082289, the canonical program `A082289.P11560016240921717636` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082289 has offset 4).

The definition of A082289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082289.P11560016240921717636

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=2, a(1)=9, a(2)=26, a(3)=59, a(4)=116, a(5)=206`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A082289

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P11560016240921717636.Spec : Prop :=
  ∀ n, P11560016240921717636.a n = A082289 (n + 4)

theorem P11560016240921717636.correct : P11560016240921717636.Spec := by
  intro n
  simp only [A082289, Nat.add_sub_cancel]

end A082289

/-! ## A082289.P13417771472911434575

`∑[∑[∑[∑[gcd(2, n)]]]]`
-/

namespace A082289.P13417771472911434575
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082289.P13417771472911434575

namespace A082289

/-- `∑[∑[∑[∑[gcd(2, n)]]]]` -/
def P13417771472911434575.Spec : Prop :=
  ∀ n, (P13417771472911434575.a n : ℤ) = A082289 (n + 4)

end A082289

/-! ## A082289.P6868230118544782030

`∑[∑[∑[comp[3*n]+1]]]`
-/

namespace A082289.P6868230118544782030
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082289.P6868230118544782030

namespace A082289

/-- `∑[∑[∑[comp[3*n]+1]]]` -/
def P6868230118544782030.Spec : Prop :=
  ∀ n, (P6868230118544782030.a n : ℤ) = A082289 (n + 4)

end A082289

/-! ## A082289.P13218288343013967943

`∑[∑[∑[3*n+2]]]-a(n-1)` with `a(0)=2`
-/

namespace A082289.P13218288343013967943
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A082289.P13218288343013967943

namespace A082289

/-- `∑[∑[∑[3*n+2]]]-a(n-1)` -/
def P13218288343013967943.Spec : Prop :=
  ∀ n, P13218288343013967943.a n = A082289 (n + 4)

end A082289

/-! ## A082289.P9585703281006633638

`∑[A002623(n)]+C(n+4, 4)`
-/

namespace A082289.P9585703281006633638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose (n + 4) 4 : ℤ)

end

end A082289.P9585703281006633638

namespace A082289

/-- `∑[A002623(n)]+C(n+4, 4)` -/
def P9585703281006633638.Spec : Prop :=
  ∀ n, P9585703281006633638.a n = A082289 (n + 4)

end A082289

/-! ## A082289.P16995606072375719524

`3*∑[∑[∑[A007494(n+1)/3]]]`
-/

namespace A082289.P16995606072375719524
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007494 (n + 1) : ℚ) / 3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082289.P16995606072375719524

namespace A082289

/-- `3*∑[∑[∑[A007494(n+1)/3]]]` -/
def P16995606072375719524.Spec : Prop :=
  ∀ n, P16995606072375719524.a n = (A082289 (n + 4) : ℚ)

end A082289

/-! ## A082289.P2623039550876512788

`A070893(n+1)+A002623(n)`
-/

namespace A082289.P2623039550876512788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070893 (n + 1) + A002623 n

end

end A082289.P2623039550876512788

namespace A082289

/-- `A070893(n+1)+A002623(n)` -/
def P2623039550876512788.Spec : Prop :=
  ∀ n, P2623039550876512788.a n = A082289 (n + 4)

end A082289

/-! ## A082289.P10691793656035610018

`A213780(n+1)+A005994(n)`
-/

namespace A082289.P10691793656035610018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213780 (n + 1) + A005994 n

end

end A082289.P10691793656035610018

namespace A082289

/-- `A213780(n+1)+A005994(n)` -/
def P10691793656035610018.Spec : Prop :=
  ∀ n, P10691793656035610018.a n = A082289 (n + 4)

end A082289

/-! ## A082289.P3781204315162645295

`A001752(n)+∑[A000292(n+1)]`
-/

namespace A082289.P3781204315162645295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082289.P3781204315162645295

namespace A082289

/-- `A001752(n)+∑[A000292(n+1)]` -/
def P3781204315162645295.Spec : Prop :=
  ∀ n, P3781204315162645295.a n = A082289 (n + 4)

end A082289

/-! ## A082289.P4204703971914389443

`A006918(n)+2*A007009(n+1)`
-/

namespace A082289.P4204703971914389443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + 2 * A007009 (n + 1)

end

end A082289.P4204703971914389443

namespace A082289

/-- `A006918(n)+2*A007009(n+1)` -/
def P4204703971914389443.Spec : Prop :=
  ∀ n, P4204703971914389443.a n = A082289 (n + 4)

end A082289

/-! ## A082289.P6916796112087239193

`A000292(n+1)+A011888(n+1)-A011888(n)`
-/

namespace A082289.P6916796112087239193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A011888 (n + 1) - A011888 n)

end

end A082289.P6916796112087239193

namespace A082289

/-- `A000292(n+1)+A011888(n+1)-A011888(n)` -/
def P6916796112087239193.Spec : Prop :=
  ∀ n, P6916796112087239193.a n = A082289 (n + 4)

end A082289

/-! ## A082289.P15326343986996731628

`A216173(n+1)+A001752(n)-A216172(n+1)`
-/

namespace A082289.P15326343986996731628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216173 (n + 1) + (A001752 n - A216172 (n + 1))

end

end A082289.P15326343986996731628

namespace A082289

/-- `A216173(n+1)+A001752(n)-A216172(n+1)` -/
def P15326343986996731628.Spec : Prop :=
  ∀ n, P15326343986996731628.a n = A082289 (n + 4)

end A082289

/-! ## A082289.P8224699224065615467

`A233329(n)+A006918(n+1)`
-/

namespace A082289.P8224699224065615467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233329 n + A006918 (n + 1)

end

end A082289.P8224699224065615467

namespace A082289

/-- `A233329(n)+A006918(n+1)` -/
def P8224699224065615467.Spec : Prop :=
  ∀ n, P8224699224065615467.a n = A082289 (n + 4)

end A082289

/-! ## A082289.P12057757927771990396

`A011863(n+2)+A000292(n+1)`
-/

namespace A082289.P12057757927771990396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (n + 2) + A000292 (n + 1)

end

end A082289.P12057757927771990396

namespace A082289

/-- `A011863(n+2)+A000292(n+1)` -/
def P12057757927771990396.Spec : Prop :=
  ∀ n, P12057757927771990396.a n = A082289 (n + 4)

end A082289

/-! ## A082289.P1585084193006148360

`A173196(n+2)+A070893(n+1)`
-/

namespace A082289.P1585084193006148360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (n + 2) + A070893 (n + 1)

end

end A082289.P1585084193006148360

namespace A082289

/-- `A173196(n+2)+A070893(n+1)` -/
def P1585084193006148360.Spec : Prop :=
  ∀ n, P1585084193006148360.a n = A082289 (n + 4)

end A082289

/-! ## A082289.P17400834106202364340

`A070893(n+2)-A000292(n+2)`
-/

namespace A082289.P17400834106202364340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070893 (n + 2) - A000292 (n + 2)

end

end A082289.P17400834106202364340

namespace A082289

/-- `A070893(n+2)-A000292(n+2)` -/
def P17400834106202364340.Spec : Prop :=
  ∀ n, P17400834106202364340.a n = A082289 (n + 4)

end A082289

/-! ## A082289.P331045433786521510

`A223718(n+1)+A001752(n)-A000124(n+1)`
-/

namespace A082289.P331045433786521510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (n + 1) + (A001752 n - A000124 (n + 1))

end

end A082289.P331045433786521510

namespace A082289

/-- `A223718(n+1)+A001752(n)-A000124(n+1)` -/
def P331045433786521510.Spec : Prop :=
  ∀ n, P331045433786521510.a n = A082289 (n + 4)

end A082289

/-! ## A082289.P18335020593738134895

`A011863(n+3)-A002623(n+1)`
-/

namespace A082289.P18335020593738134895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (n + 3) - A002623 (n + 1)

end

end A082289.P18335020593738134895

namespace A082289

/-- `A011863(n+3)-A002623(n+1)` -/
def P18335020593738134895.Spec : Prop :=
  ∀ n, P18335020593738134895.a n = A082289 (n + 4)

end A082289

/-! ## A082289.P16778026038179271017

`A082290(Δ[n²])`
-/

namespace A082289.P16778026038179271017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082290 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A082289.P16778026038179271017

namespace A082289

/-- `A082290(Δ[n²])` -/
def P16778026038179271017.Spec : Prop :=
  ∀ n, P16778026038179271017.a n = A082289 (n + 4)

end A082289

/-! ## A082289.P15672415284084562930

`A082290(2*n+3)-A045947(n+3)`
-/

namespace A082289.P15672415284084562930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082290 (2 * n + 3) - A045947 (n + 3)

end

end A082289.P15672415284084562930

namespace A082289

/-- `A082290(2*n+3)-A045947(n+3)` -/
def P15672415284084562930.Spec : Prop :=
  ∀ n, P15672415284084562930.a n = A082289 (n + 4)

end A082289

/-!
# A082290: Expansion of (1+x+x^2)/((1+x^2)*(1+x)^4*(1-x)^5).

The programs for A082290, the canonical program `A082290.P3886473488227927312` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082290 has offset 0).

The definition of A082290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082290.P3886473488227927312

`∑[A008804(n)/A000034(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A082290

/-- `∑[A008804(n)/A000034(n)]` -/
def P3886473488227927312.Spec : Prop :=
  ∀ n, P3886473488227927312.a n = (A082290 n : ℚ)

end A082290

/-! ## A082290.P12620183107894844463

`∑[∑[A008642(n)]/A000034(n)]`
-/

namespace A082290.P12620183107894844463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082290.P12620183107894844463

namespace A082290

/-- `∑[∑[A008642(n)]/A000034(n)]` -/
def P12620183107894844463.Spec : Prop :=
  ∀ n, P12620183107894844463.a n = (A082290 n : ℚ)

end A082290

/-! ## A082290.P7995049665376777963

`∑[A008804(n)/Δ[A032766(n)]]`
-/

namespace A082290.P7995049665376777963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008804 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082290.P7995049665376777963

namespace A082290

/-- `∑[A008804(n)/Δ[A032766(n)]]` -/
def P7995049665376777963.Spec : Prop :=
  ∀ n, P7995049665376777963.a n = (A082290 n : ℚ)

end A082290

/-! ## A082290.P12608863770848300738

`∑[A008804(n)/(A000035(n)+1)]`
-/

namespace A082290.P12608863770848300738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008804 n : ℚ) / (A000035 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082290.P12608863770848300738

namespace A082290

/-- `∑[A008804(n)/(A000035(n)+1)]` -/
def P12608863770848300738.Spec : Prop :=
  ∀ n, P12608863770848300738.a n = (A082290 n : ℚ)

end A082290

/-! ## A082290.P17261058732003375824

`∪[A070893(n+1), A082289(n+4)]`
-/

namespace A082290.P17261058732003375824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082289 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A082290.P17261058732003375824

namespace A082290

/-- `∪[A070893(n+1), A082289(n+4)]` -/
def P17261058732003375824.Spec : Prop :=
  ∀ n, (P17261058732003375824.a n : ℤ) = A082290 n

end A082290

/-! ## A082290.P4864435923625960320

`∑[A008804(n)/A010160(A016789(n))]`
-/

namespace A082290.P4864435923625960320
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008804 n : ℚ) / (A010160 (A016789 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082290.P4864435923625960320

namespace A082290

/-- `∑[A008804(n)/A010160(A016789(n))]` -/
def P4864435923625960320.Spec : Prop :=
  ∀ n, P4864435923625960320.a n = (A082290 n : ℚ)

end A082290

/-! ## A082290.P3058861467281799636

`∑[A008804(n)/ratio[A016116(n)]]`
-/

namespace A082290.P3058861467281799636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008804 n : ℚ) / ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082290.P3058861467281799636

namespace A082290

/-- `∑[A008804(n)/ratio[A016116(n)]]` -/
def P3058861467281799636.Spec : Prop :=
  ∀ n, P3058861467281799636.a n = (A082290 n : ℚ)

end A082290

/-! ## A082290.P11881114008170217753

`∑[A008804(n)/A003484(A002522(n))]`
-/

namespace A082290.P11881114008170217753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008804 n : ℚ) / (A003484 (A002522 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082290.P11881114008170217753

namespace A082290

/-- `∑[A008804(n)/A003484(A002522(n))]` -/
def P11881114008170217753.Spec : Prop :=
  ∀ n, P11881114008170217753.a n = (A082290 n : ℚ)

end A082290

/-!
# A082291: Expansion of x(2 + 5x - x^2)/((1 - x)(1 - 6x + x^2)).

The programs for A082291, the canonical program `A082291.P13624798247700719993` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082291 has offset 1).

The definition of A082291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082291.P13624798247700719993

`6*a(n-1)-a(n-2)+6` with `a(0)=2, a(1)=19`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A082291

/-- `6*a(n-1)-a(n-2)+6` -/
def P13624798247700719993.Spec : Prop :=
  ∀ n, P13624798247700719993.a n = A082291 (n + 1)

theorem P13624798247700719993.correct : P13624798247700719993.Spec := by
  intro n
  simp only [A082291, Nat.add_sub_cancel]

end A082291

/-! ## A082291.P6693684441891392120

`floor(a(n-1)/(3-sqrt(8)))+8` with `a(0)=2`
-/

namespace A082291.P6693684441891392120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋ + 8

end

end A082291.P6693684441891392120

namespace A082291

/-- `floor(a(n-1)/(3-sqrt(8)))+8` -/
def P6693684441891392120.Spec : Prop :=
  ∀ n, P6693684441891392120.a n = A082291 (n + 1)

end A082291

/-! ## A082291.P5661558517421680963

`round(a(n-1)/(3-sqrt(8)))+7` with `a(0)=2`
-/

namespace A082291.P5661558517421680963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))) + 7

end

end A082291.P5661558517421680963

namespace A082291

/-- `round(a(n-1)/(3-sqrt(8)))+7` -/
def P5661558517421680963.Spec : Prop :=
  ∀ n, P5661558517421680963.a n = A082291 (n + 1)

end A082291

/-! ## A082291.P1682005042168211412

`∑[floor(a(n-1)/(3-sqrt(8)))]-1` with `a(0)=3`
-/

namespace A082291.P1682005042168211412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A082291.P1682005042168211412

namespace A082291

/-- `∑[floor(a(n-1)/(3-sqrt(8)))]-1` -/
def P1682005042168211412.Spec : Prop :=
  ∀ n, P1682005042168211412.a n = A082291 (n + 1)

end A082291

/-! ## A082291.P7234560427977816418

`A328990(Δ[n²])`
-/

namespace A082291.P7234560427977816418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328990 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A082291.P7234560427977816418

namespace A082291

/-- `A328990(Δ[n²])` -/
def P7234560427977816418.Spec : Prop :=
  ∀ n, P7234560427977816418.a n = A082291 (n + 1)

end A082291

/-! ## A082291.P14325491700593014958

`Δ[A089950(n)]-1`
-/

namespace A082291.P14325491700593014958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A082291.P14325491700593014958

namespace A082291

/-- `Δ[A089950(n)]-1` -/
def P14325491700593014958.Spec : Prop :=
  ∀ n, P14325491700593014958.a n = A082291 (n + 1)

end A082291

/-! ## A082291.P8021695663708777120

`A001652(n+1)-1`
-/

namespace A082291.P8021695663708777120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 (n + 1) - 1

end

end A082291.P8021695663708777120

namespace A082291

/-- `A001652(n+1)-1` -/
def P8021695663708777120.Spec : Prop :=
  ∀ n, P8021695663708777120.a n = A082291 (n + 1)

end A082291

/-! ## A082291.P8088703879929708749

`A009759(n+1)+2`
-/

namespace A082291.P8088703879929708749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009759 (n + 1) + 2

end

end A082291.P8088703879929708749

namespace A082291

/-- `A009759(n+1)+2` -/
def P8088703879929708749.Spec : Prop :=
  ∀ n, P8088703879929708749.a n = A082291 (n + 1)

end A082291

/-! ## A082291.P4818807109412404380

`A046090(n+1)-2`
-/

namespace A082291.P4818807109412404380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046090 (n + 1) - 2

end

end A082291.P4818807109412404380

namespace A082291

/-- `A046090(n+1)-2` -/
def P4818807109412404380.Spec : Prop :=
  ∀ n, P4818807109412404380.a n = A082291 (n + 1)

end A082291

/-! ## A082291.P13134339536693712302

`A182435(n+2)-2`
-/

namespace A082291.P13134339536693712302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182435 (n + 2) - 2

end

end A082291.P13134339536693712302

namespace A082291

/-- `A182435(n+2)-2` -/
def P13134339536693712302.Spec : Prop :=
  ∀ n, P13134339536693712302.a n = A082291 (n + 1)

end A082291

/-! ## A082291.P1189941275301404805

`A048739(Δ[n²])-1`
-/

namespace A082291.P1189941275301404805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A082291.P1189941275301404805

namespace A082291

/-- `A048739(Δ[n²])-1` -/
def P1189941275301404805.Spec : Prop :=
  ∀ n, P1189941275301404805.a n = A082291 (n + 1)

end A082291

/-! ## A082291.P14220488488853247022

`Δ[∑[A001652(n)]-n]`
-/

namespace A082291.P14220488488853247022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A082291.P14220488488853247022

namespace A082291

/-- `Δ[∑[A001652(n)]-n]` -/
def P14220488488853247022.Spec : Prop :=
  ∀ n, P14220488488853247022.a n = A082291 (n + 1)

end A082291

/-! ## A082291.P14359719386448259730

`∑[A001541(n+1)]-1`
-/

namespace A082291.P14359719386448259730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A082291.P14359719386448259730

namespace A082291

/-- `∑[A001541(n+1)]-1` -/
def P14359719386448259730.Spec : Prop :=
  ∀ n, P14359719386448259730.a n = A082291 (n + 1)

end A082291

/-! ## A082291.P12393235010753309938

`∑[A082639(n+2)]+n`
-/

namespace A082291.P12393235010753309938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A082291.P12393235010753309938

namespace A082291

/-- `∑[A082639(n+2)]+n` -/
def P12393235010753309938.Spec : Prop :=
  ∀ n, P12393235010753309938.a n = A082291 (n + 1)

end A082291

/-! ## A082291.P657912776607909619

`A024537(2*(n+1))-2`
-/

namespace A082291.P657912776607909619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 (2 * (n + 1)) - 2

end

end A082291.P657912776607909619

namespace A082291

/-- `A024537(2*(n+1))-2` -/
def P657912776607909619.Spec : Prop :=
  ∀ n, P657912776607909619.a n = A082291 (n + 1)

end A082291

/-! ## A082291.P7109032234664927089

`A065113(n+1)/2-1`
-/

namespace A082291.P7109032234664927089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065113 (n + 1) : ℚ) / 2 - 1

end

end A082291.P7109032234664927089

namespace A082291

/-- `A065113(n+1)/2-1` -/
def P7109032234664927089.Spec : Prop :=
  ∀ n, P7109032234664927089.a n = (A082291 (n + 1) : ℚ)

end A082291

/-! ## A082291.P7443679705843378111

`A077921(2*(n+1))-2`
-/

namespace A082291.P7443679705843378111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077921 (2 * (n + 1)) - 2

end

end A082291.P7443679705843378111

namespace A082291

/-- `A077921(2*(n+1))-2` -/
def P7443679705843378111.Spec : Prop :=
  ∀ n, P7443679705843378111.a n = A082291 (n + 1)

end A082291

/-! ## A082291.P15002359976467292744

`(A202391(n+1)-1)/2`
-/

namespace A082291.P15002359976467292744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202391 (n + 1) - 1 : ℚ) / 2

end

end A082291.P15002359976467292744

namespace A082291

/-- `(A202391(n+1)-1)/2` -/
def P15002359976467292744.Spec : Prop :=
  ∀ n, P15002359976467292744.a n = (A082291 (n + 1) : ℚ)

end A082291

/-!
# A082292: a(n) = (2*n+1) * (2*n)! / (sqrt(4*(n+1)*Product_{k=1..2*n+1} lcm(k, 2*n+2-k))).

The programs for A082292, there is no canonical definition to state claims against.
-/

/-! ## A082292.P6881774559477449256

`A181819(A001764(n))*A344180(n)`
-/

namespace A082292.P6881774559477449256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (A001764 n).toNat * A344180 n

end

end A082292.P6881774559477449256

/-!
# A082293: Numbers having exactly one square divisor > 1.

The programs for A082293, the canonical program `A082293.P11384794704887734198` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082293 has offset 1).

The definition of A082293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082293.P9258030752855868847

`eq[1, A317946(n+1)]+1`
-/

namespace A082293.P9258030752855868847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317946 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082293.P9258030752855868847

namespace A082293

/-- `eq[1, A317946(n+1)]+1` -/
def P9258030752855868847.Spec : Prop :=
  ∀ n, (P9258030752855868847.a n : ℤ) = A082293 (n + 1)

end A082293

/-! ## A082293.P11384794704887734198

`eq[2, A050377(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A082293

/-- `eq[2, A050377(n+1)]+1` -/
def P11384794704887734198.Spec : Prop :=
  ∀ n, (P11384794704887734198.a n : ℤ) = A082293 (n + 1)

theorem P11384794704887734198.correct : P11384794704887734198.Spec := by
  intro n
  simp only [A082293, Nat.add_sub_cancel]

end A082293

/-! ## A082293.P9753307168847904584

`eq[2, A294874(n+1)]+1`
-/

namespace A082293.P9753307168847904584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082293.P9753307168847904584

namespace A082293

/-- `eq[2, A294874(n+1)]+1` -/
def P9753307168847904584.Spec : Prop :=
  ∀ n, (P9753307168847904584.a n : ℤ) = A082293 (n + 1)

end A082293

/-! ## A082293.P7760413100320614812

`eq[2, A317934(n+1)]+1`
-/

namespace A082293.P7760413100320614812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082293.P7760413100320614812

namespace A082293

/-- `eq[2, A317934(n+1)]+1` -/
def P7760413100320614812.Spec : Prop :=
  ∀ n, (P7760413100320614812.a n : ℤ) = A082293 (n + 1)

end A082293

/-! ## A082293.P9287228861163592072

`eq[1, A005043(A295879(n+1))]+1`
-/

namespace A082293.P9287228861163592072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (A295879 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082293.P9287228861163592072

namespace A082293

/-- `eq[1, A005043(A295879(n+1))]+1` -/
def P9287228861163592072.Spec : Prop :=
  ∀ n, (P9287228861163592072.a n : ℤ) = A082293 (n + 1)

end A082293

/-! ## A082293.P13091140009065152483

`∪[A048109(n+1), A060687(n+1)]`
-/

namespace A082293.P13091140009065152483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A082293.P13091140009065152483

namespace A082293

/-- `∪[A048109(n+1), A060687(n+1)]` -/
def P13091140009065152483.Spec : Prop :=
  ∀ n, (P13091140009065152483.a n : ℤ) = A082293 (n + 1)

end A082293

/-! ## A082293.P15722265877629186709

`filter[A382967(n+1), A359466(#)]`
-/

namespace A082293.P15722265877629186709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A082293.P15722265877629186709

namespace A082293

/-- `filter[A382967(n+1), A359466(#)]` -/
def P15722265877629186709.Spec : Prop :=
  ∀ n, P15722265877629186709.a n = A082293 (n + 1)

end A082293

/-! ## A082293.P4994730471827699114

`∩[A370076(n+1), A382967(n+1)]`
-/

namespace A082293.P4994730471827699114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082293.P4994730471827699114

namespace A082293

/-- `∩[A370076(n+1), A382967(n+1)]` -/
def P4994730471827699114.Spec : Prop :=
  ∀ n, (P4994730471827699114.a n : ℤ) = A082293 (n + 1)

end A082293

/-! ## A082293.P16683340889347525146

`∩[A190641(n+1), A382967(n+1)]`
-/

namespace A082293.P16683340889347525146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082293.P16683340889347525146

namespace A082293

/-- `∩[A190641(n+1), A382967(n+1)]` -/
def P16683340889347525146.Spec : Prop :=
  ∀ n, (P16683340889347525146.a n : ℤ) = A082293 (n + 1)

end A082293

/-! ## A082293.P4160038966054112459

`filter[A046100(n+1), A359466(#)]`
-/

namespace A082293.P4160038966054112459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A082293.P4160038966054112459

namespace A082293

/-- `filter[A046100(n+1), A359466(#)]` -/
def P4160038966054112459.Spec : Prop :=
  ∀ n, P4160038966054112459.a n = A082293 (n + 1)

end A082293

/-! ## A082293.P5714586852631265626

`∩[A046100(n+1), A190641(n+1)]`
-/

namespace A082293.P5714586852631265626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082293.P5714586852631265626

namespace A082293

/-- `∩[A046100(n+1), A190641(n+1)]` -/
def P5714586852631265626.Spec : Prop :=
  ∀ n, (P5714586852631265626.a n : ℤ) = A082293 (n + 1)

end A082293

/-! ## A082293.P8941941118872770282

`∩[A046100(n+1), A370076(n+1)]`
-/

namespace A082293.P8941941118872770282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A082293.P8941941118872770282

namespace A082293

/-- `∩[A046100(n+1), A370076(n+1)]` -/
def P8941941118872770282.Spec : Prop :=
  ∀ n, (P8941941118872770282.a n : ℤ) = A082293 (n + 1)

end A082293

/-! ## A082293.P11976564587518283797

`eq[2, A305252(∏{e}[n, #])]`
-/

namespace A082293.P11976564587518283797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305252 (∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082293.P11976564587518283797

namespace A082293

/-- `eq[2, A305252(∏{e}[n, #])]` -/
def P11976564587518283797.Spec : Prop :=
  ∀ n, (P11976564587518283797.a n : ℤ) = A082293 (n + 1)

end A082293

/-! ## A082293.P16034088801774451050

`eq[1, A071325(n+1)]+1`
-/

namespace A082293.P16034088801774451050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082293.P16034088801774451050

namespace A082293

/-- `eq[1, A071325(n+1)]+1` -/
def P16034088801774451050.Spec : Prop :=
  ∀ n, (P16034088801774451050.a n : ℤ) = A082293 (n + 1)

end A082293

/-! ## A082293.P15656434846027572948

`eq[2, A046951(n+1)]+1`
-/

namespace A082293.P15656434846027572948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082293.P15656434846027572948

namespace A082293

/-- `eq[2, A046951(n+1)]+1` -/
def P15656434846027572948.Spec : Prop :=
  ∀ n, (P15656434846027572948.a n : ℤ) = A082293 (n + 1)

end A082293

/-! ## A082293.P16247365049198820361

`eq[1, A071325(A028310(n))]`
-/

namespace A082293.P16247365049198820361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082293.P16247365049198820361

namespace A082293

/-- `eq[1, A071325(A028310(n))]` -/
def P16247365049198820361.Spec : Prop :=
  ∀ n, (P16247365049198820361.a n : ℤ) = A082293 (n + 1)

end A082293

/-! ## A082293.P1925704165597931841

`A020725(eq[2, A046951(n+1)])`
-/

namespace A082293.P1925704165597931841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082293.P1925704165597931841

namespace A082293

/-- `A020725(eq[2, A046951(n+1)])` -/
def P1925704165597931841.Spec : Prop :=
  ∀ n, P1925704165597931841.a n = A082293 (n + 1)

end A082293

/-! ## A082293.P12793016003754378446

`A065475(eq[2, A046951(n+1)])`
-/

namespace A082293.P12793016003754378446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082293.P12793016003754378446

namespace A082293

/-- `A065475(eq[2, A046951(n+1)])` -/
def P12793016003754378446.Spec : Prop :=
  ∀ n, P12793016003754378446.a n = A082293 (n + 1)

end A082293

/-! ## A082293.P3557867575671951552

`A326178(eq[2, A046951(n+1)])`
-/

namespace A082293.P3557867575671951552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082293.P3557867575671951552

namespace A082293

/-- `A326178(eq[2, A046951(n+1)])` -/
def P3557867575671951552.Spec : Prop :=
  ∀ n, P3557867575671951552.a n = A082293 (n + 1)

end A082293

/-! ## A082293.P12963910544741420559

`eq[2, A050377(A008574(n))-2]`
-/

namespace A082293.P12963910544741420559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (A008574 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082293.P12963910544741420559

namespace A082293

/-- `eq[2, A050377(A008574(n))-2]` -/
def P12963910544741420559.Spec : Prop :=
  ∀ n, (P12963910544741420559.a n : ℤ) = A082293 (n + 1)

end A082293

/-!
# A082294: Numbers having exactly two square divisors > 1.

The programs for A082294, the canonical program `A082294.P3187455701052448076` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082294 has offset 1).

The definition of A082294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082294.P3187455701052448076

`eq[2, A071325(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A082294

/-- `eq[2, A071325(n+1)]+1` -/
def P3187455701052448076.Spec : Prop :=
  ∀ n, (P3187455701052448076.a n : ℤ) = A082294 (n + 1)

theorem P3187455701052448076.correct : P3187455701052448076.Spec := by
  intro n
  simp only [A082294, Nat.add_sub_cancel]

end A082294

/-! ## A082294.P3000712239315196516

`eq[3, A046951(n+1)]+1`
-/

namespace A082294.P3000712239315196516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082294.P3000712239315196516

namespace A082294

/-- `eq[3, A046951(n+1)]+1` -/
def P3000712239315196516.Spec : Prop :=
  ∀ n, (P3000712239315196516.a n : ℤ) = A082294 (n + 1)

end A082294

/-! ## A082294.P18133700273160339045

`eq[2, A071325(A028310(n))]`
-/

namespace A082294.P18133700273160339045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A082294.P18133700273160339045

namespace A082294

/-- `eq[2, A071325(A028310(n))]` -/
def P18133700273160339045.Spec : Prop :=
  ∀ n, (P18133700273160339045.a n : ℤ) = A082294 (n + 1)

end A082294

/-! ## A082294.P16604703944373570583

`A020725(eq[3, A046951(n+1)])`
-/

namespace A082294.P16604703944373570583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082294.P16604703944373570583

namespace A082294

/-- `A020725(eq[3, A046951(n+1)])` -/
def P16604703944373570583.Spec : Prop :=
  ∀ n, P16604703944373570583.a n = A082294 (n + 1)

end A082294

/-! ## A082294.P11819269701501979321

`A065475(eq[3, A046951(n+1)])`
-/

namespace A082294.P11819269701501979321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082294.P11819269701501979321

namespace A082294

/-- `A065475(eq[3, A046951(n+1)])` -/
def P11819269701501979321.Spec : Prop :=
  ∀ n, P11819269701501979321.a n = A082294 (n + 1)

end A082294

/-! ## A082294.P12711164023615288715

`A326178(eq[3, A046951(n+1)])`
-/

namespace A082294.P12711164023615288715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A082294.P12711164023615288715

namespace A082294

/-- `A326178(eq[3, A046951(n+1)])` -/
def P12711164023615288715.Spec : Prop :=
  ∀ n, P12711164023615288715.a n = A082294 (n + 1)

end A082294

/-! ## A082294.P5149791479911621065

`eq[3, A000005(A000188(n+1))]+1`
-/

namespace A082294.P5149791479911621065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000188 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A082294.P5149791479911621065

namespace A082294

/-- `eq[3, A000005(A000188(n+1))]+1` -/
def P5149791479911621065.Spec : Prop :=
  ∀ n, (P5149791479911621065.a n : ℤ) = A082294 (n + 1)

end A082294

/-!
# A082295: Numbers having more than two square divisors > 1.

The programs for A082295, there is no canonical definition to state claims against.
-/

/-! ## A082295.P12990950805365099355

`∪[A036785(n+1), A355265(n+1)]`
-/

namespace A082295.P12990950805365099355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A082295.P12990950805365099355

/-! ## A082295.P5364144562199656257

`lt[6, A000005(A057521(n+1))]+1`
-/

namespace A082295.P5364144562199656257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A057521 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A082295.P5364144562199656257

/-! ## A082295.P14719281702937013916

`lt[2, A071325(n+1)]+1`
-/

namespace A082295.P14719281702937013916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A082295.P14719281702937013916

/-! ## A082295.P7986302427929586949

`lt[3, A046951(n+1)]+1`
-/

namespace A082295.P7986302427929586949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A082295.P7986302427929586949

/-! ## A082295.P9849306170102747627

`lt[3, A046951(A028310(n))]`
-/

namespace A082295.P9849306170102747627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A082295.P9849306170102747627

/-! ## A082295.P10954974308469532072

`A011760(lt[3, A046951(n+1)])`
-/

namespace A082295.P10954974308469532072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A082295.P10954974308469532072

/-! ## A082295.P3213377820110060710

`A020725(lt[3, A046951(n+1)])`
-/

namespace A082295.P3213377820110060710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A082295.P3213377820110060710

/-! ## A082295.P9502283463917388869

`lt[3, A000005(A000188(n+1))]+1`
-/

namespace A082295.P9502283463917388869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000188 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A082295.P9502283463917388869

/-! ## A082295.P28934574230507252

`lt[2, A071325(A233583(n+1))]`
-/

namespace A082295.P28934574230507252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A082295.P28934574230507252

/-!
# A082296: Solutions to 13^x+17^x == 19 mod 23.

The programs for A082296, the canonical program `A082296.P18167634733041836058` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082296 has offset 1).

The definition of A082296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082296.P18167634733041836058

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=12, a(1)=20, a(2)=34`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A082296

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P18167634733041836058.Spec : Prop :=
  ∀ n, P18167634733041836058.a n = A082296 (n + 1)

theorem P18167634733041836058.correct : P18167634733041836058.Spec := by
  intro n
  simp only [A082296, Nat.add_sub_cancel]

end A082296

/-! ## A082296.P2331407702528845943

`a(n-2)+22` with `a(0)=12, a(1)=20`
-/

namespace A082296.P2331407702528845943
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12, 20] fun n a =>
  a (n - 2) + 22

end

end A082296.P2331407702528845943

namespace A082296

/-- `a(n-2)+22` -/
def P2331407702528845943.Spec : Prop :=
  ∀ n, (P2331407702528845943.a n : ℤ) = A082296 (n + 1)

end A082296

/-! ## A082296.P1383898725514839241

`∑[22-a(n-1)]` with `a(0)=12, a(1)=8`
-/

namespace A082296.P1383898725514839241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [12, 8] fun n f1 =>
  22 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082296.P1383898725514839241

namespace A082296

/-- `∑[22-a(n-1)]` -/
def P1383898725514839241.Spec : Prop :=
  ∀ n, P1383898725514839241.a n = A082296 (n + 1)

end A082296

/-! ## A082296.P8925342374795591336

`∑[3^gcd(2, n)+5]-2`
-/

namespace A082296.P8925342374795591336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.gcd 2 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A082296.P8925342374795591336

namespace A082296

/-- `∑[3^gcd(2, n)+5]-2` -/
def P8925342374795591336.Spec : Prop :=
  ∀ n, P8925342374795591336.a n = A082296 (n + 1)

end A082296

/-! ## A082296.P4387835934656637577

`2*n+3*∑[gcd(4, 2*n)]`
-/

namespace A082296.P4387835934656637577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082296.P4387835934656637577

namespace A082296

/-- `2*n+3*∑[gcd(4, 2*n)]` -/
def P4387835934656637577.Spec : Prop :=
  ∀ n, (P4387835934656637577.a n : ℤ) = A082296 (n + 1)

end A082296

/-! ## A082296.P13331728703467748895

`2*(record[lcm(3, n+1)]+n+3)`
-/

namespace A082296.P13331728703467748895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 3))

end

end A082296.P13331728703467748895

namespace A082296

/-- `2*(record[lcm(3, n+1)]+n+3)` -/
def P13331728703467748895.Spec : Prop :=
  ∀ n, (P13331728703467748895.a n : ℤ) = A082296 (n + 1)

end A082296

/-! ## A082296.P18368672346065205290

`3*record[or(4, xor(3, n)+1)]-n`
-/

namespace A082296.P18368672346065205290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (Nat.xor 3 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A082296.P18368672346065205290

namespace A082296

/-- `3*record[or(4, xor(3, n)+1)]-n` -/
def P18368672346065205290.Spec : Prop :=
  ∀ n, P18368672346065205290.a n = A082296 (n + 1)

end A082296

/-! ## A082296.P6773427376193257798

`6*(comp[3*n]+1)+n+n`
-/

namespace A082296.P6773427376193257798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + n + n

end

end A082296.P6773427376193257798

namespace A082296

/-- `6*(comp[3*n]+1)+n+n` -/
def P6773427376193257798.Spec : Prop :=
  ∀ n, (P6773427376193257798.a n : ℤ) = A082296 (n + 1)

end A082296

/-! ## A082296.P12528503093884576825

`2*∑[A280193(n)+5]`
-/

namespace A082296.P12528503093884576825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082296.P12528503093884576825

namespace A082296

/-- `2*∑[A280193(n)+5]` -/
def P12528503093884576825.Spec : Prop :=
  ∀ n, P12528503093884576825.a n = A082296 (n + 1)

end A082296

/-! ## A082296.P4899062731164002209

`2*(A253195(n+1)+n+1)`
-/

namespace A082296.P4899062731164002209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A253195 (n + 1) + (n + 1 : ℤ))

end

end A082296.P4899062731164002209

namespace A082296

/-- `2*(A253195(n+1)+n+1)` -/
def P4899062731164002209.Spec : Prop :=
  ∀ n, P4899062731164002209.a n = A082296 (n + 1)

end A082296

/-! ## A082296.P7458763118845956499

`2*(A125758(n+1)+n+2)`
-/

namespace A082296.P7458763118845956499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A125758 (n + 1) + (n + 2 : ℤ))

end

end A082296.P7458763118845956499

namespace A082296

/-- `2*(A125758(n+1)+n+2)` -/
def P7458763118845956499.Spec : Prop :=
  ∀ n, P7458763118845956499.a n = A082296 (n + 1)

end A082296

/-! ## A082296.P9226007585932049563

`2*(A016051(n+1)+n+3)`
-/

namespace A082296.P9226007585932049563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A016051 (n + 1) + (n + 3 : ℤ))

end

end A082296.P9226007585932049563

namespace A082296

/-- `2*(A016051(n+1)+n+3)` -/
def P9226007585932049563.Spec : Prop :=
  ∀ n, P9226007585932049563.a n = A082296 (n + 1)

end A082296

/-! ## A082296.P12836667197633878304

`2*(A092464(n+1)-(n-2))`
-/

namespace A082296.P12836667197633878304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A092464 (n + 1) - ((n : ℤ) - 2))

end

end A082296.P12836667197633878304

namespace A082296

/-- `2*(A092464(n+1)-(n-2))` -/
def P12836667197633878304.Spec : Prop :=
  ∀ n, P12836667197633878304.a n = A082296 (n + 1)

end A082296

/-! ## A082296.P5150158019815765794

`2*(A168670(n+2)-2)`
-/

namespace A082296.P5150158019815765794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168670 (n + 2) - 2)

end

end A082296.P5150158019815765794

namespace A082296

/-- `2*(A168670(n+2)-2)` -/
def P5150158019815765794.Spec : Prop :=
  ∀ n, P5150158019815765794.a n = A082296 (n + 1)

end A082296

/-! ## A082296.P9486143741807811531

`2*(Δ[A121470(n+1)]+n)`
-/

namespace A082296.P9486143741807811531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + (n : ℤ))

end

end A082296.P9486143741807811531

namespace A082296

/-- `2*(Δ[A121470(n+1)]+n)` -/
def P9486143741807811531.Spec : Prop :=
  ∀ n, P9486143741807811531.a n = A082296 (n + 1)

end A082296

/-! ## A082296.P7556699364873955839

`2*(2*n+A047336(n+2))`
-/

namespace A082296.P7556699364873955839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n : ℤ) + A047336 (n + 2))

end

end A082296.P7556699364873955839

namespace A082296

/-- `2*(2*n+A047336(n+2))` -/
def P7556699364873955839.Spec : Prop :=
  ∀ n, P7556699364873955839.a n = A082296 (n + 1)

end A082296

/-! ## A082296.P685739555288247557

`∑[A018252(Δ[A063221(n+1)])]`
-/

namespace A082296.P685739555288247557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063221 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082296.P685739555288247557

namespace A082296

/-- `∑[A018252(Δ[A063221(n+1)])]` -/
def P685739555288247557.Spec : Prop :=
  ∀ n, P685739555288247557.a n = A082296 (n + 1)

end A082296

/-! ## A082296.P9006884262955465323

`2*(A017197(n+1)-A047288(n+2))`
-/

namespace A082296.P9006884262955465323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A017197 (n + 1) - A047288 (n + 2))

end

end A082296.P9006884262955465323

namespace A082296

/-- `2*(A017197(n+1)-A047288(n+2))` -/
def P9006884262955465323.Spec : Prop :=
  ∀ n, P9006884262955465323.a n = A082296 (n + 1)

end A082296

/-! ## A082296.P11357933239372996874

`2*(A088227(2*(n+1))-n)`
-/

namespace A082296.P11357933239372996874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A088227 (2 * (n + 1)) - (n : ℤ))

end

end A082296.P11357933239372996874

namespace A082296

/-- `2*(A088227(2*(n+1))-n)` -/
def P11357933239372996874.Spec : Prop :=
  ∀ n, P11357933239372996874.a n = A082296 (n + 1)

end A082296

/-! ## A082296.P11566227991888710294

`A267755(A063093(n+2))`
-/

namespace A082296.P11566227991888710294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 (A063093 (n + 2)).toNat

end

end A082296.P11566227991888710294

namespace A082296

/-- `A267755(A063093(n+2))` -/
def P11566227991888710294.Spec : Prop :=
  ∀ n, P11566227991888710294.a n = A082296 (n + 1)

end A082296

/-!
# A082297: Main diagonal of array A083861.

The programs for A082297, the canonical program `A082297.P10102573381836057767` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082297 has offset 0).

The definition of A082297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A082297.P10102573381836057767

`(((5+sqrt(4*n+1))/2)^n-((5-sqrt(4*n+1))/2)^n)/sqrt(4*n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A082297

/-- `(((5+sqrt(4*n+1))/2)^n-((5-sqrt(4*n+1))/2)^n)/sqrt(4*n+1)` -/
def P10102573381836057767.Spec : Prop :=
  ∀ n, P10102573381836057767.a n = (A082297 n : ℝ)

end A082297

/-! ## A082297.P4247182893500953278

`A083861(∑[4*n])`
-/

namespace A082297.P4247182893500953278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A082297.P4247182893500953278

namespace A082297

/-- `A083861(∑[4*n])` -/
def P4247182893500953278.Spec : Prop :=
  ∀ n, P4247182893500953278.a n = A082297 n

end A082297

/-! ## A082297.P3738797216117181563

`record[A083861(∑[A186731(n)])]`
-/

namespace A082297.P3738797216117181563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A082297.P3738797216117181563

namespace A082297

/-- `record[A083861(∑[A186731(n)])]` -/
def P3738797216117181563.Spec : Prop :=
  ∀ n, P3738797216117181563.a n = A082297 n

end A082297

/-! ## A082297.P17420493043527741279

`A083861(A106232(n+1))-A000007(n)`
-/

namespace A082297.P17420493043527741279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (A106232 (n + 1)).toNat - A000007 n

end

end A082297.P17420493043527741279

namespace A082297

/-- `A083861(A106232(n+1))-A000007(n)` -/
def P17420493043527741279.Spec : Prop :=
  ∀ n, P17420493043527741279.a n = A082297 n

end A082297

/-! ## A082297.P10908319687222920337

`and(A057428(n), A083861(A106232(n+1)))`
-/

namespace A082297.P10908319687222920337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A083861 (A106232 (n + 1)).toNat)

end

end A082297.P10908319687222920337

namespace A082297

/-- `and(A057428(n), A083861(A106232(n+1)))` -/
def P10908319687222920337.Spec : Prop :=
  ∀ n, P10908319687222920337.a n = A082297 n

end A082297

/-!
# A082298: Expansion of (1-3*x-sqrt(9*x^2-10*x+1))/(2*x).

The programs for A082298, the canonical program `A082298.P14318922144743099037` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082298 has offset 0).

The definition of A082298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082298.P5652664276321749962

`ceil(cosh(sin(n)))²*A059231(n)`
-/

namespace A082298.P5652664276321749962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ ^ 2 * A059231 n

end

end A082298.P5652664276321749962

namespace A082298

/-- `ceil(cosh(sin(n)))²*A059231(n)` -/
def P5652664276321749962.Spec : Prop :=
  ∀ n, P5652664276321749962.a n = A082298 n

end A082298

/-! ## A082298.P6087108730598812155

`A280560(n)²*A059231(n)`
-/

namespace A082298.P6087108730598812155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n ^ 2 * A059231 n

end

end A082298.P6087108730598812155

namespace A082298

/-- `A280560(n)²*A059231(n)` -/
def P6087108730598812155.Spec : Prop :=
  ∀ n, P6087108730598812155.a n = A082298 n

end A082298

/-! ## A082298.P5576022675815614488

`A086871(n)+Δ[A162326(n)]`
-/

namespace A082298.P5576022675815614488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086871 n + (f1 (n + 1) - f1 n)

end

end A082298.P5576022675815614488

namespace A082298

/-- `A086871(n)+Δ[A162326(n)]` -/
def P5576022675815614488.Spec : Prop :=
  ∀ n, P5576022675815614488.a n = A082298 n

end A082298

/-! ## A082298.P2324746775820881143

`(A057427(n)+1)*A086871(n)`
-/

namespace A082298.P2324746775820881143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A086871 n

end

end A082298.P2324746775820881143

namespace A082298

/-- `(A057427(n)+1)*A086871(n)` -/
def P2324746775820881143.Spec : Prop :=
  ∀ n, P2324746775820881143.a n = A082298 n

end A082298

/-! ## A082298.P4034081616999065746

`A086871(n)+2*A127846(n)`
-/

namespace A082298.P4034081616999065746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086871 n + 2 * A127846 n

end

end A082298.P4034081616999065746

namespace A082298

/-- `A086871(n)+2*A127846(n)` -/
def P4034081616999065746.Spec : Prop :=
  ∀ n, P4034081616999065746.a n = A082298 n

end A082298

/-! ## A082298.P14704560399105943215

`(2-A000007(n))*A086871(n)`
-/

namespace A082298.P14704560399105943215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A086871 n

end

end A082298.P14704560399105943215

namespace A082298

/-- `(2-A000007(n))*A086871(n)` -/
def P14704560399105943215.Spec : Prop :=
  ∀ n, P14704560399105943215.a n = A082298 n

end A082298

/-! ## A082298.P10645135270849846001

`A059231(n)+3*A127846(n)`
-/

namespace A082298.P10645135270849846001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059231 n + 3 * A127846 n

end

end A082298.P10645135270849846001

namespace A082298

/-- `A059231(n)+3*A127846(n)` -/
def P10645135270849846001.Spec : Prop :=
  ∀ n, P10645135270849846001.a n = A082298 n

end A082298

/-! ## A082298.P8925841187006956684

`A198794(n)%3*A086871(n)`
-/

namespace A082298.P8925841187006956684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198794 n) 3 * A086871 n

end

end A082298.P8925841187006956684

namespace A082298

/-- `A198794(n)%3*A086871(n)` -/
def P8925841187006956684.Spec : Prop :=
  ∀ n, P8925841187006956684.a n = A082298 n

end A082298

/-! ## A082298.P3980497818372793192

`gcd(4, A210474(n))*A059231(n)`
-/

namespace A082298.P3980497818372793192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (A210474 n) : ℤ) * A059231 n

end

end A082298.P3980497818372793192

namespace A082298

/-- `gcd(4, A210474(n))*A059231(n)` -/
def P3980497818372793192.Spec : Prop :=
  ∀ n, P3980497818372793192.a n = A082298 n

end A082298

/-! ## A082298.P14318922144743099037

`(A057427(n)+1)²*A059231(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A082298

/-- `(A057427(n)+1)²*A059231(n)` -/
def P14318922144743099037.Spec : Prop :=
  ∀ n, P14318922144743099037.a n = A082298 n

theorem P14318922144743099037.correct : P14318922144743099037.Spec := by
  intro n
  simp only [A082298]

end A082298

/-! ## A082298.P15355178951389313882

`A020639(A008458(n))*A086871(n)`
-/

namespace A082298.P15355178951389313882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A086871 n

end

end A082298.P15355178951389313882

namespace A082298

/-- `A020639(A008458(n))*A086871(n)` -/
def P15355178951389313882.Spec : Prop :=
  ∀ n, P15355178951389313882.a n = A082298 n

end A082298

/-! ## A082298.P6770284260913577830

`A006530(A062383(n))*A086871(n)`
-/

namespace A082298.P6770284260913577830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A062383 n).toNat * A086871 n

end

end A082298.P6770284260913577830

namespace A082298

/-- `A006530(A062383(n))*A086871(n)` -/
def P6770284260913577830.Spec : Prop :=
  ∀ n, P6770284260913577830.a n = A082298 n

end A082298

/-! ## A082298.P220426288408693572

`A006530(A102376(n))*A086871(n)`
-/

namespace A082298.P220426288408693572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102376 n).toNat * A086871 n

end

end A082298.P220426288408693572

namespace A082298

/-- `A006530(A102376(n))*A086871(n)` -/
def P220426288408693572.Spec : Prop :=
  ∀ n, P220426288408693572.a n = A082298 n

end A082298

/-! ## A082298.P6885679626323895975

`A020639(A256251(n))*A086871(n)`
-/

namespace A082298.P6885679626323895975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A256251 n).toNat * A086871 n

end

end A082298.P6885679626323895975

namespace A082298

/-- `A020639(A256251(n))*A086871(n)` -/
def P6885679626323895975.Spec : Prop :=
  ∀ n, P6885679626323895975.a n = A082298 n

end A082298

/-! ## A082298.P15128051369921400016

`A020639(A298024(n))*A086871(n)`
-/

namespace A082298.P15128051369921400016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A298024 n).toNat * A086871 n

end

end A082298.P15128051369921400016

namespace A082298

/-- `A020639(A298024(n))*A086871(n)` -/
def P15128051369921400016.Spec : Prop :=
  ∀ n, P15128051369921400016.a n = A082298 n

end A082298

/-! ## A082298.P188758541464810679

`A006530(A062383(n))²*A059231(n)`
-/

namespace A082298.P188758541464810679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A062383 n).toNat ^ 2 * A059231 n

end

end A082298.P188758541464810679

namespace A082298

/-- `A006530(A062383(n))²*A059231(n)` -/
def P188758541464810679.Spec : Prop :=
  ∀ n, P188758541464810679.a n = A082298 n

end A082298

/-! ## A082298.P8314976292390049336

`A006530(A102376(n))²*A059231(n)`
-/

namespace A082298.P8314976292390049336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102376 n).toNat ^ 2 * A059231 n

end

end A082298.P8314976292390049336

namespace A082298

/-- `A006530(A102376(n))²*A059231(n)` -/
def P8314976292390049336.Spec : Prop :=
  ∀ n, P8314976292390049336.a n = A082298 n

end A082298

/-! ## A082298.P9528425385757265130

`A020639(A256251(n))²*A059231(n)`
-/

namespace A082298.P9528425385757265130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A256251 n).toNat ^ 2 * A059231 n

end

end A082298.P9528425385757265130

namespace A082298

/-- `A020639(A256251(n))²*A059231(n)` -/
def P9528425385757265130.Spec : Prop :=
  ∀ n, P9528425385757265130.a n = A082298 n

end A082298

/-!
# A082299: Greatest common divisor of n and its sum of prime factors (with repetition).

The programs for A082299, the canonical program `A082299.P7049640380741080952` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A082299 has offset 1).

The definition of A082299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A082299.P7049640380741080952

`gcd(n+1, ∑{p}[n+1, #*val(n+1, #)])`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A082299

/-- `gcd(n+1, ∑{p}[n+1, #*val(n+1, #)])` -/
def P7049640380741080952.Spec : Prop :=
  ∀ n, (P7049640380741080952.a n : ℤ) = A082299 (n + 1)

theorem P7049640380741080952.correct : P7049640380741080952.Spec := by
  intro n
  simp only [A082299, Nat.add_sub_cancel]

end A082299

/-! ## A082299.P7589719348862072167

`gcd(n+1, Δ[A025281(n)])`
-/

namespace A082299.P7589719348862072167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A082299.P7589719348862072167

namespace A082299

/-- `gcd(n+1, Δ[A025281(n)])` -/
def P7589719348862072167.Spec : Prop :=
  ∀ n, (P7589719348862072167.a n : ℤ) = A082299 (n + 1)

end A082299

/-! ## A082299.P1153411510338489374

`(n+1)/A082344(n+1)`
-/

namespace A082299.P1153411510338489374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A082344 (n + 1) : ℚ)

end

end A082299.P1153411510338489374

namespace A082299

/-- `(n+1)/A082344(n+1)` -/
def P1153411510338489374.Spec : Prop :=
  ∀ n, P1153411510338489374.a n = (A082299 (n + 1) : ℚ)

end A082299

/-! ## A082299.P8646023211422398458

`gcd(xor(n, -1), A001414(n+1))`
-/

namespace A082299.P8646023211422398458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A001414 (n + 1))

end

end A082299.P8646023211422398458

namespace A082299

/-- `gcd(xor(n, -1), A001414(n+1))` -/
def P8646023211422398458.Spec : Prop :=
  ∀ n, (P8646023211422398458.a n : ℤ) = A082299 (n + 1)

end A082299

/-! ## A082299.P6702219171583744285

`gcd(abs(1-n)+2, A075255(n+1))`
-/

namespace A082299.P6702219171583744285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (|1 - (n : ℤ)| + 2) (A075255 (n + 1))

end

end A082299.P6702219171583744285

namespace A082299

/-- `gcd(abs(1-n)+2, A075255(n+1))` -/
def P6702219171583744285.Spec : Prop :=
  ∀ n, (P6702219171583744285.a n : ℤ) = A082299 (n + 1)

end A082299

/-! ## A082299.P5618293636715857618

`sqrt(gcd(∑{d}[n+1, A120007(#)]², (n+1)²))`
-/

namespace A082299.P5618293636715857618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd ((∑ d ∈ Nat.divisors (f1 n), A120007 d) ^ 2) ((n + 1) ^ 2 : ℤ) : ℝ)

end

end A082299.P5618293636715857618

namespace A082299

/-- `sqrt(gcd(∑{d}[n+1, A120007(#)]², (n+1)²))` -/
def P5618293636715857618.Spec : Prop :=
  ∀ n, P5618293636715857618.a n = (A082299 (n + 1) : ℝ)

end A082299

/-! ## A082299.P15702505467422612655

`gcd(A075254(n+1), A131738(n))`
-/

namespace A082299.P15702505467422612655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075254 (n + 1)) (A131738 n)

end

end A082299.P15702505467422612655

namespace A082299

/-- `gcd(A075254(n+1), A131738(n))` -/
def P15702505467422612655.Spec : Prop :=
  ∀ n, (P15702505467422612655.a n : ℤ) = A082299 (n + 1)

end A082299

/-! ## A082299.P2308483505981924827

`gcd(A028310(A001414(n+1)), A033286(n+1))`
-/

namespace A082299.P2308483505981924827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (A001414 (n + 1)).toNat) (A033286 (n + 1))

end

end A082299.P2308483505981924827

namespace A082299

/-- `gcd(A028310(A001414(n+1)), A033286(n+1))` -/
def P2308483505981924827.Spec : Prop :=
  ∀ n, (P2308483505981924827.a n : ℤ) = A082299 (n + 1)

end A082299

/-! ## A082299.P15305639536507507536

`gcd(A109958(n+1), A129202(A129202(n)-1))`
-/

namespace A082299.P15305639536507507536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109958 (n + 1)) (A129202 (A129202 n - 1).toNat)

end

end A082299.P15305639536507507536

namespace A082299

/-- `gcd(A109958(n+1), A129202(A129202(n)-1))` -/
def P15305639536507507536.Spec : Prop :=
  ∀ n, (P15305639536507507536.a n : ℤ) = A082299 (n + 1)

end A082299

