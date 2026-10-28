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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A382200: 

The programs for A382200, there is no canonical definition to state claims against.
-/

/-! ## A382200.P9305053378793166670

`lt[0, A050326(n+1)]+1`
-/

namespace A382200.P9305053378793166670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A382200.P9305053378793166670

/-! ## A382200.P10907830018974387353

`A212167(A225230(A212166(n+1))+n+1)`
-/

namespace A382200.P10907830018974387353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212167 (A225230 (A212166 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A382200.P10907830018974387353

/-! ## A382200.P5780726945262805579

`lt[A057428(n), A225230(A233583(n+1))]`
-/

namespace A382200.P5780726945262805579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382200.P5780726945262805579

/-! ## A382200.P989092792863190503

`lt[A000007(n), A225230(A233583(n+1))+1]`
-/

namespace A382200.P989092792863190503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (A233583 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382200.P989092792863190503

/-! ## A382200.P10012111010117386289

`and(A212167(n+1), A375155(n+1))`
-/

namespace A382200.P10012111010117386289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A212167 (n + 1)) (A375155 (n + 1))

end

end A382200.P10012111010117386289

/-! ## A382200.P16284281006625497817

`A212167(n+1)%A004733(n)`
-/

namespace A382200.P16284281006625497817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212167 (n + 1)) (A004733 n)

end

end A382200.P16284281006625497817

/-! ## A382200.P14733292000007496493

`and(A003261(n+1), A212167(n+1))`
-/

namespace A382200.P14733292000007496493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A212167 (n + 1))

end

end A382200.P14733292000007496493

/-! ## A382200.P10767343538476020142

`and(A163383(n+1), A212167(n+1))`
-/

namespace A382200.P10767343538476020142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163383 (n + 1)) (A212167 (n + 1))

end

end A382200.P10767343538476020142

/-! ## A382200.P14128804990354170007

`and(A055580(n), A212167(n+1))`
-/

namespace A382200.P14128804990354170007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055580 n) (A212167 (n + 1))

end

end A382200.P14128804990354170007

/-! ## A382200.P10024605079092421871

`and(A107392(n), A212167(n+1))`
-/

namespace A382200.P10024605079092421871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107392 n) (A212167 (n + 1))

end

end A382200.P10024605079092421871

/-! ## A382200.P17642880652869558808

`and(A107464(n), A212167(n+1))`
-/

namespace A382200.P17642880652869558808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107464 n) (A212167 (n + 1))

end

end A382200.P17642880652869558808

/-! ## A382200.P14804203960352024552

`and(A107953(n), A212167(n+1))`
-/

namespace A382200.P14804203960352024552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107953 n) (A212167 (n + 1))

end

end A382200.P14804203960352024552

/-! ## A382200.P13926154951135379723

`and(A211386(n), A212167(n+1))`
-/

namespace A382200.P13926154951135379723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211386 n) (A212167 (n + 1))

end

end A382200.P13926154951135379723

/-! ## A382200.P3326087839795591000

`and(A107954(n), A212167(n+1))`
-/

namespace A382200.P3326087839795591000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107954 n) (A212167 (n + 1))

end

end A382200.P3326087839795591000

/-! ## A382200.P10786632374542074063

`and(A107955(n), A212167(n+1))`
-/

namespace A382200.P10786632374542074063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107955 n) (A212167 (n + 1))

end

end A382200.P10786632374542074063

/-! ## A382200.P306756703849088706

`A212167(n+1)%A001550(n)`
-/

namespace A382200.P306756703849088706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212167 (n + 1)) (A001550 n)

end

end A382200.P306756703849088706

/-! ## A382200.P5956216685098290217

`and(A018886(n+1), A212167(n+1))`
-/

namespace A382200.P5956216685098290217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018886 (n + 1)) (A212167 (n + 1))

end

end A382200.P5956216685098290217

/-! ## A382200.P12980338951695611221

`and(A164291(n+2), A212167(n+1))`
-/

namespace A382200.P12980338951695611221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164291 (n + 2)) (A212167 (n + 1))

end

end A382200.P12980338951695611221

/-! ## A382200.P12296087278781339164

`and(A060160(n+1), A212167(n+1))`
-/

namespace A382200.P12296087278781339164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060160 (n + 1)) (A212167 (n + 1))

end

end A382200.P12296087278781339164

/-!
# A382201: MM-numbers of sets of sets with distinct sums.

The programs for A382201, there is no canonical definition to state claims against.
-/

/-! ## A382201.P13689567287887893579

`∩[A302478(n+1), A326535(n+1)]`
-/

namespace A382201.P13689567287887893579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382201.P13689567287887893579

/-!
# A382202: Number of normal multisets of size n that cannot be partitioned into a set of sets with distinct sums.

The programs for A382202, there is no canonical definition to state claims against.
-/

/-! ## A382202.P11310549907181946303

`A011782(n)-A382216(n)`
-/

namespace A382202.P11310549907181946303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A382216 n

end

end A382202.P11310549907181946303

/-! ## A382202.P8616065952566972185

`A000010(2^n)-A382216(n)`
-/

namespace A382202.P8616065952566972185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 ^ n) - A382216 n

end

end A382202.P8616065952566972185

/-! ## A382202.P1256843437355231126

`A028310(floor(2^(n-1)))-A382216(n)`
-/

namespace A382202.P1256843437355231126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat - A382216 n

end

end A382202.P1256843437355231126

/-! ## A382202.P4075391742165192054

`A026741(A000079(n))-A382216(n)`
-/

namespace A382202.P4075391742165192054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000079 n).toNat - A382216 n

end

end A382202.P4075391742165192054

/-! ## A382202.P6859034487316607093

`A353157(A382216(n)%A397254(n))`
-/

namespace A382202.P6859034487316607093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353157 (Int.tmod (A382216 n) (A397254 n)).toNat

end

end A382202.P6859034487316607093

/-!
# A382203: Number of normal multiset partitions of weight n into constant multisets with distinct sums.

The programs for A382203, there is no canonical definition to state claims against.
-/

/-! ## A382203.P12349706619629040104

`A327738(n)+A056976(A006229(n))`
-/

namespace A382203.P12349706619629040104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327738 n + A056976 (A006229 n).toNat

end

end A382203.P12349706619629040104

/-! ## A382203.P6701465318141306199

`A112632(n+1)+A052123(A080011(n))`
-/

namespace A382203.P6701465318141306199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (n + 1) + A052123 (A080011 n).toNat

end

end A382203.P6701465318141306199

/-! ## A382203.P2135376486935899097

`A165006(A196700(n+1)+A130824(n))`
-/

namespace A382203.P2135376486935899097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165006 (A196700 (n + 1) + A130824 n).toNat

end

end A382203.P2135376486935899097

/-!
# A382205: Number of minimum connected dominating sets in the n-halved cube graph.

The programs for A382205, there is no canonical definition to state claims against.
-/

/-! ## A382205.P6979045798944929224

`(2-Δ[floor(sqrt(n))])*A328594(n+1)!`
-/

namespace A382205.P6979045798944929224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * (Nat.factorial (A328594 (n + 1)).toNat : ℤ)

end

end A382205.P6979045798944929224

/-! ## A382205.P4821773097790250646

`(2-Δ[floor(sqrt(n))])*A333489(n+1)!`
-/

namespace A382205.P4821773097790250646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * (Nat.factorial (A333489 (n + 1)).toNat : ℤ)

end

end A382205.P4821773097790250646

/-! ## A382205.P849739302907079083

`(2-Δ[floor(sqrt(n))])*A374698(n+1)!`
-/

namespace A382205.P849739302907079083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * (Nat.factorial (A374698 (n + 1)).toNat : ℤ)

end

end A382205.P849739302907079083

/-!
# A382208: Numbers k for which pi(bigomega(k)) = omega(k).

The programs for A382208, there is no canonical definition to state claims against.
-/

/-! ## A382208.P15057268669634029518

`∩[A144922(n+1), A346128(n+1)]`
-/

namespace A382208.P15057268669634029518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382208.P15057268669634029518

/-!
# A382209: Numbers k such that 10+k and 10*k are perfect squares.

The programs for A382209, the canonical program `A382209.P7297455351468283173` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382209 has offset 1).

The definition of A382209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382209.P7297455351468283173

`10*(1/2*(3+sqrt(10))^(2*(n+1)-1)+1/2*(3-sqrt(10))^(2*(n+1)-1))²`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A382209

/-- `10*(1/2*(3+sqrt(10))^(2*(n+1)-1)+1/2*(3-sqrt(10))^(2*(n+1)-1))²` -/
def P7297455351468283173.Spec : Prop :=
  ∀ n, P7297455351468283173.a n = (A382209 (n + 1) : ℝ)

end A382209

/-!
# A382212: Number of labeled Eulerian oriented graphs with n nodes without isolated vertices.

The programs for A382212, there is no canonical definition to state claims against.
-/

/-! ## A382212.P7483239120396063674

`∑{#}[n, (-1)^(n-#)*C(n, #)*A007081(#)]`
-/

namespace A382212.P7483239120396063674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A007081 k : ℚ)

end

end A382212.P7483239120396063674

/-! ## A382212.P12973289169914389858

`3*A222559(a(n-1))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A382212.P12973289169914389858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  3 * A222559 (a (n - 1)).toNat

end

end A382212.P12973289169914389858

/-!
# A382213: Largest squarefree number dividing the numerator of harmonic number H(n).

The programs for A382213, the canonical program `A382213.P14392032180708244766` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382213 has offset 1).

The definition of A382213 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382213.P14392032180708244766

`A007947(A001008(n+1))`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A382213

/-- `A007947(A001008(n+1))` -/
def P14392032180708244766.Spec : Prop :=
  ∀ n, P14392032180708244766.a n = A382213 (n + 1)

theorem P14392032180708244766.correct : P14392032180708244766.Spec := by
  intro n
  simp only [A382213, Nat.add_sub_cancel]

end A382213

/-! ## A382213.P15938896293839924634

`∏{p}[A001008(n+1), #]`
-/

namespace A382213.P15938896293839924634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A382213.P15938896293839924634

namespace A382213

/-- `∏{p}[A001008(n+1), #]` -/
def P15938896293839924634.Spec : Prop :=
  ∀ n, (P15938896293839924634.a n : ℤ) = A382213 (n + 1)

end A382213

/-! ## A382213.P3613871036728470476

`∏{p}[A175441(n+1), #]`
-/

namespace A382213.P3613871036728470476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175441 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A382213.P3613871036728470476

namespace A382213

/-- `∏{p}[A175441(n+1), #]` -/
def P3613871036728470476.Spec : Prop :=
  ∀ n, (P3613871036728470476.a n : ℤ) = A382213 (n + 1)

end A382213

/-! ## A382213.P15092680660124286938

`∏{p}[A213998(∑[n+2]-1), #]`
-/

namespace A382213.P15092680660124286938
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213998 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A382213.P15092680660124286938

namespace A382213

/-- `∏{p}[A213998(∑[n+2]-1), #]` -/
def P15092680660124286938.Spec : Prop :=
  ∀ n, (P15092680660124286938.a n : ℤ) = A382213 (n + 1)

end A382213

/-! ## A382213.P2381266859720946168

`A007947(A175441(n+1))`
-/

namespace A382213.P2381266859720946168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A175441 (n + 1)).toNat

end

end A382213.P2381266859720946168

namespace A382213

/-- `A007947(A175441(n+1))` -/
def P2381266859720946168.Spec : Prop :=
  ∀ n, P2381266859720946168.a n = A382213 (n + 1)

end A382213

/-!
# A382214: Number of normal multisets of size n that can be partitioned into a set of sets.

The programs for A382214, there is no canonical definition to state claims against.
-/

/-! ## A382214.P935421415954351225

`A382216(n)+A308856(n+1)`
-/

namespace A382214.P935421415954351225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382216 n + A308856 (n + 1)

end

end A382214.P935421415954351225

/-! ## A382214.P4201625272996469652

`A382216(n)+A336563(floor(n/3)+1)`
-/

namespace A382214.P4201625272996469652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382216 n + A336563 (⌊(n : ℚ) / 3⌋ + 1).toNat

end

end A382214.P4201625272996469652

/-! ## A382214.P14126526464436100131

`A382216(n)+A067436(A023358(n))`
-/

namespace A382214.P14126526464436100131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382216 n + A067436 (A023358 n).toNat

end

end A382214.P14126526464436100131

/-! ## A382214.P13536164230659244224

`A382216(n)+A147851(A005711(n))`
-/

namespace A382214.P13536164230659244224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382216 n + A147851 (A005711 n).toNat

end

end A382214.P13536164230659244224

/-! ## A382214.P9614576669565210612

`A382216(n)+A216600(A000041(n))`
-/

namespace A382214.P9614576669565210612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382216 n + A216600 (A000041 n).toNat

end

end A382214.P9614576669565210612

/-!
# A382215: MM-numbers of multiset partitions into constant blocks with a common sum.

The programs for A382215, there is no canonical definition to state claims against.
-/

/-! ## A382215.P10949904548143039225

`∪[A000079(n), A383309(n+1)]`
-/

namespace A382215.P10949904548143039225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382215.P10949904548143039225

/-! ## A382215.P5989115678644670876

`∪[A008862(n), A383309(n+1)]`
-/

namespace A382215.P5989115678644670876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382215.P5989115678644670876

/-! ## A382215.P6220948479884712832

`∪[A008863(n), A383309(n+1)]`
-/

namespace A382215.P6220948479884712832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382215.P6220948479884712832

/-! ## A382215.P1727418301796382119

`∪[A051535(n), A383309(n+1)]`
-/

namespace A382215.P1727418301796382119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051535 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382215.P1727418301796382119

/-! ## A382215.P2978000054601967894

`∪[A145116(n), A383309(n+1)]`
-/

namespace A382215.P2978000054601967894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382215.P2978000054601967894

/-! ## A382215.P1626905605854638433

`∪[A145117(n), A383309(n+1)]`
-/

namespace A382215.P1626905605854638433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382215.P1626905605854638433

/-! ## A382215.P10910369628869727617

`∪[A172319(n), A383309(n+1)]`
-/

namespace A382215.P10910369628869727617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172319 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382215.P10910369628869727617

/-! ## A382215.P17733338250628770893

`∪[A172320(n), A383309(n+1)]`
-/

namespace A382215.P17733338250628770893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172320 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382215.P17733338250628770893

/-! ## A382215.P17079585351976935742

`∪[A219531(n), A383309(n+1)]`
-/

namespace A382215.P17079585351976935742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382215.P17079585351976935742

/-! ## A382215.P3741168912824187396

`∪[A219615(n), A383309(n+1)]`
-/

namespace A382215.P3741168912824187396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A382215.P3741168912824187396

/-!
# A382216: Number of normal multisets of size n that can be partitioned into a set of sets with distinct sums.

The programs for A382216, there is no canonical definition to state claims against.
-/

/-! ## A382216.P5285914778839402086

`2^((n-1)%(n+1))-A382202(n)`
-/

namespace A382216.P5285914778839402086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ) - (A382202 n : ℚ)

end

end A382216.P5285914778839402086

/-! ## A382216.P11660339204398418121

`A011782(n)-A382202(n)`
-/

namespace A382216.P11660339204398418121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A382202 n

end

end A382216.P11660339204398418121

/-! ## A382216.P4590118142542417868

`A382214(n)-∑[A353753(n+1)]`
-/

namespace A382216.P4590118142542417868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382214 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382216.P4590118142542417868

/-! ## A382216.P6234514747438954636

`A000010(A000079(n))-A382202(n)`
-/

namespace A382216.P6234514747438954636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 n).toNat - A382202 n

end

end A382216.P6234514747438954636

/-! ## A382216.P18058670206737900251

`A382214(n)-A062756(A168294(n))`
-/

namespace A382216.P18058670206737900251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382214 n - A062756 (A168294 n).toNat

end

end A382216.P18058670206737900251

/-!
# A382218: Fixed points of A382217.

The programs for A382218, there is no canonical definition to state claims against.
-/

/-! ## A382218.P1047191222484976848

`record[A382217(n+1)]`
-/

namespace A382218.P1047191222484976848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382218.P1047191222484976848

/-! ## A382218.P9229405041957781123

`eq[n, A382217(A028310(n))]`
-/

namespace A382218.P9229405041957781123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382217 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382218.P9229405041957781123

/-! ## A382218.P5668144047664029585

`A382217(eq[n+1, A382217(n+1)]+1)`
-/

namespace A382218.P5668144047664029585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A382218.P5668144047664029585

/-! ## A382218.P6764431660941534431

`lt[A002264(3*n), A382217(n+1)]+1`
-/

namespace A382218.P6764431660941534431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382217 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A382218.P6764431660941534431

/-! ## A382218.P13847988101270286679

`lt[A000070(A063695(n)), A212629(n+1)]`
-/

namespace A382218.P13847988101270286679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (A063695 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212629 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382218.P13847988101270286679

/-!
# A382219: Product of the largest and smallest exponents in the prime factorization of n.

The programs for A382219, the canonical program `A382219.P8248486132169953123` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382219 has offset 1).

The definition of A382219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382219.P931914472275681784

`A333352(A181819(n+1))`
-/

namespace A382219.P931914472275681784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333352 (A181819 (n + 1)).toNat

end

end A382219.P931914472275681784

namespace A382219

/-- `A333352(A181819(n+1))` -/
def P931914472275681784.Spec : Prop :=
  ∀ n, P931914472275681784.a n = A382219 (n + 1)

end A382219

/-! ## A382219.P11137708088417277556

`A333352(A329601(n+1))`
-/

namespace A382219.P11137708088417277556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333352 (A329601 (n + 1)).toNat

end

end A382219.P11137708088417277556

namespace A382219

/-- `A333352(A329601(n+1))` -/
def P11137708088417277556.Spec : Prop :=
  ∀ n, P11137708088417277556.a n = A382219 (n + 1)

end A382219

/-! ## A382219.P8248486132169953123

`A028310(A051903(n+1)*A051904(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A382219

/-- `A028310(A051903(n+1)*A051904(n+1))` -/
def P8248486132169953123.Spec : Prop :=
  ∀ n, P8248486132169953123.a n = A382219 (n + 1)

theorem P8248486132169953123.correct : P8248486132169953123.Spec := by
  intro n
  simp only [A382219, Nat.add_sub_cancel]

end A382219

/-! ## A382219.P14142049865044003987

`A028310(val(A046523(n+1), 2)*A051904(n+1))`
-/

namespace A382219.P14142049865044003987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.valuation (A046523 (n + 1)).toNat 2 : ℤ) * A051904 (n + 1)).toNat

end

end A382219.P14142049865044003987

namespace A382219

/-- `A028310(val(A046523(n+1), 2)*A051904(n+1))` -/
def P14142049865044003987.Spec : Prop :=
  ∀ n, P14142049865044003987.a n = A382219 (n + 1)

end A382219

/-! ## A382219.P13761195983612501713

`A028310((A066301(n+1)+A057427(n))*A051904(n+1))`
-/

namespace A382219.P13761195983612501713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((A066301 (n + 1) + A057427 n) * A051904 (n + 1)).toNat

end

end A382219.P13761195983612501713

namespace A382219

/-- `A028310((A066301(n+1)+A057427(n))*A051904(n+1))` -/
def P13761195983612501713.Spec : Prop :=
  ∀ n, P13761195983612501713.a n = A382219 (n + 1)

end A382219

/-!
# A382220: Numbers k such that every primitive root mod k is prime.

The programs for A382220, there is no canonical definition to state claims against.
-/

/-! ## A382220.P6566355807092669443

`filter[A382224(n+1), A211487(#)]`
-/

namespace A382220.P6566355807092669443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A382220.P6566355807092669443

/-!
# A382223: Rectangular array read by antidiagonals: T(n,k) is the number of labeled digraphs on [n] along with a (coloring) function c:[n] -> [k] with the property that for all u,v in [n], u->v implies u<v and c(u)<c(v), n>=0, k>=0.

The programs for A382223, there is no canonical definition to state claims against.
-/

/-! ## A382223.P2502702556642992544

`A108611(A059297(n)+4)`
-/

namespace A382223.P2502702556642992544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A059297 n + 4).toNat

end

end A382223.P2502702556642992544

/-! ## A382223.P5155143136345158271

`A084938(n*A085791(A085838(n)))`
-/

namespace A382223.P5155143136345158271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 ((n : ℤ) * A085791 (A085838 n).toNat).toNat

end

end A382223.P5155143136345158271

/-! ## A382223.P7591713892623908422

`A084938(n*A086329(A086329(n)))`
-/

namespace A382223.P7591713892623908422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 ((n : ℤ) * A086329 (A086329 n).toNat).toNat

end

end A382223.P7591713892623908422

/-! ## A382223.P5911939233831036751

`A084938(n)^A281891(A281891(n))`
-/

namespace A382223.P5911939233831036751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084938 n : ℚ) ^ (A281891 (A281891 n).toNat : ℤ)

end

end A382223.P5911939233831036751

/-! ## A382223.P1752247789905910122

`gcd(A084938(n), A370813(A209820(n+1)))`
-/

namespace A382223.P1752247789905910122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084938 n) (A370813 (A209820 (n + 1)).toNat)

end

end A382223.P1752247789905910122

/-!
# A382224: Numbers k such that every element with maximal order mod k is prime.

The programs for A382224, there is no canonical definition to state claims against.
-/

/-! ## A382224.P11039292880146571528

`lt[A097936(A000203(n+1)), A000292(n)]`
-/

namespace A382224.P11039292880146571528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097936 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382224.P11039292880146571528

/-! ## A382224.P11114295010859553992

`lt[A182270(A000203(n+1)), A337602(n)]`
-/

namespace A382224.P11114295010859553992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182270 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382224.P11114295010859553992

/-! ## A382224.P3405412087678815769

`lt[A136417(A000203(n+1)), A106199(n+1)]`
-/

namespace A382224.P3405412087678815769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136417 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106199 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382224.P3405412087678815769

/-! ## A382224.P10967728528295659359

`lt[A000203(n+1), A008486(A262980(n+1))]`
-/

namespace A382224.P10967728528295659359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A262980 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382224.P10967728528295659359

/-!
# A382227: The smallest perfect cube which is a sum of n consecutive primes.

The programs for A382227, there is no canonical definition to state claims against.
-/

/-! ## A382227.P6835193206096995969

`A382228(n+2)^3`
-/

namespace A382227.P6835193206096995969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382228 (n + 2) ^ 3

end

end A382227.P6835193206096995969

/-! ## A382227.P12967060659273166503

`A000578(A382228(n+2))`
-/

namespace A382227.P12967060659273166503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A382228 (n + 2)).toNat

end

end A382227.P12967060659273166503

/-!
# A382228: Smallest k such that k^3 is the sum of n consecutive primes.

The programs for A382228, there is no canonical definition to state claims against.
-/

/-! ## A382228.P14966375137871326891

`root(A382227(n+2), 3)`
-/

namespace A382228.P14966375137871326891
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A382227 (n + 2) : ℝ) ^ (1 / (3 : ℝ))

end

end A382228.P14966375137871326891

/-!
# A382229: a(0) = 1; thereafter a(n) is the next larger number that compared to the previous term differs by +-1 in the number of prime factors counted with multiplicity.

The programs for A382229, there is no canonical definition to state claims against.
-/

/-! ## A382229.P13334191007251206351

`A071192(a(n-1))` with `a(0)=1`
-/

namespace A382229.P13334191007251206351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071192 (a (n - 1)).toNat

end

end A382229.P13334191007251206351

/-!
# A382230: a(n) = Sum_{k=0..n} binomial(k+2,2) * binomial(2*k,2*n-2*k).

The programs for A382230, the canonical program `A382230.P8998332546891315035` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382230 has offset 0).

The definition of A382230 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(#+2, 2)*C(2*#, 2*n-2*#)]` (program `A382230.P8998332546891315035`, by `A382230.P8998332546891315035.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A382230.P8998332546891315035

`∑{#}[n, C(#+2, 2)*C(2*#, 2*n-2*#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A382230

/-- `∑{#}[n, C(#+2, 2)*C(2*#, 2*n-2*#)]` -/
def P8998332546891315035.Spec : Prop :=
  ∀ n, (P8998332546891315035.a n : ℤ) = A382230 n

theorem P8998332546891315035.correct : P8998332546891315035.Spec := by
  intro n
  simp only [A382230]

end A382230

/-!
# A382231: Octagonal numbers that are the product of three distinct primes.

The programs for A382231, there is no canonical definition to state claims against.
-/

/-! ## A382231.P16193476525943017853

`filter[A014255(n), A354926(#)]`
-/

namespace A382231.P16193476525943017853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A382231.P16193476525943017853

/-! ## A382231.P2867554866878829922

`filter[A014641(n), A354926(#)]`
-/

namespace A382231.P2867554866878829922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A382231.P2867554866878829922

/-! ## A382231.P6171057678081818841

`filter[A129927(n+1), A008966(#)]`
-/

namespace A382231.P6171057678081818841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A382231.P6171057678081818841

/-! ## A382231.P4497060797235090306

`filter[A000567(n+1), A354926(#)]`
-/

namespace A382231.P4497060797235090306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A382231.P4497060797235090306

/-! ## A382231.P11182462551913465928

`filter[A074155(n+1), A354926(#)]`
-/

namespace A382231.P11182462551913465928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A382231.P11182462551913465928

/-!
# A382233: Dimensions of the homogeneous component of degree n of the free unital Jordan algebra on 3 generators.

The programs for A382233, there is no canonical definition to state claims against.
-/

/-! ## A382233.P1374415297198914551

`A032120(n)+A003428(A303489(n))`
-/

namespace A382233.P1374415297198914551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032120 n + A003428 (A303489 n).toNat

end

end A382233.P1374415297198914551

/-!
# A382239: Numbers not divisible by any of their digits nor by the sum of their digits. Digit 0 is allowed (and does not divide anything).

The programs for A382239, there is no canonical definition to state claims against.
-/

/-! ## A382239.P8018298444150127621

`∩[A038772(n+1), A065877(n+1)]`
-/

namespace A382239.P8018298444150127621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382239.P8018298444150127621

/-! ## A382239.P12587873831132396362

`A382237(n+1)+A000007(A136047(n+1))`
-/

namespace A382239.P12587873831132396362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382237 (n + 1) + A000007 (A136047 (n + 1)).toNat

end

end A382239.P12587873831132396362

/-! ## A382239.P14735890345780338084

`A382237(n+1)+A000007(A127008(2*(n+1)))`
-/

namespace A382239.P14735890345780338084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382237 (n + 1) + A000007 (A127008 (2 * (n + 1))).toNat

end

end A382239.P14735890345780338084

/-! ## A382239.P12192486665768858817

`A382237(n+1)%A193144(n+1)`
-/

namespace A382239.P12192486665768858817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382237 (n + 1)) (A193144 (n + 1))

end

end A382239.P12192486665768858817

/-! ## A382239.P9962409904717007307

`A382237(n+1)+A000007(A242696(n))`
-/

namespace A382239.P9962409904717007307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382237 (n + 1) + A000007 (A242696 (n + 25)).toNat

end

end A382239.P9962409904717007307

/-!
# A382240: a(n) = Sum_{k=0..n} 3^((n+k-1)*(n-k)/2) * n! / (n-k)!.

The programs for A382240, the canonical program `A382240.P12390939812830324811` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382240 has offset 0).

The definition of A382240 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382240.P12390939812830324811

`∑{#}[n, 3^((n+#-1)*(n-#)/2)*n!/(n-#)!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A382240

/-- `∑{#}[n, 3^((n+#-1)*(n-#)/2)*n!/(n-#)!]` -/
def P12390939812830324811.Spec : Prop :=
  ∀ n, P12390939812830324811.a n = (A382240 n : ℝ)

end A382240

/-!
# A382248: Smallest number k that is neither squarefree nor a prime power such that k is coprime to n.

The programs for A382248, there is no canonical definition to state claims against.
-/

/-! ## A382248.P16252182916146785325

`A053669(n+1)²*A380539(n+1)`
-/

namespace A382248.P16252182916146785325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) ^ 2 * A380539 (n + 1)

end

end A382248.P16252182916146785325

/-! ## A382248.P7749492266912522130

`A065642(A381805(n+1))`
-/

namespace A382248.P7749492266912522130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (A381805 (n + 1)).toNat

end

end A382248.P7749492266912522130

/-! ## A382248.P11848847492880230802

`A053669(n+1)*A381805(n+1)`
-/

namespace A382248.P11848847492880230802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) * A381805 (n + 1)

end

end A382248.P11848847492880230802

/-! ## A382248.P6536907925597962775

`A089090(n+1)*A380539(n+1)`
-/

namespace A382248.P6536907925597962775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089090 (n + 1) * A380539 (n + 1)

end

end A382248.P6536907925597962775

/-! ## A382248.P15663132297910942915

`A382767(n+1)/A380539(n+1)`
-/

namespace A382248.P15663132297910942915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382767 (n + 1) : ℚ) / (A380539 (n + 1) : ℚ)

end

end A382248.P15663132297910942915

/-! ## A382248.P7121343422892174979

`A020639(A382767(n+1))*A381805(n+1)`
-/

namespace A382248.P7121343422892174979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A382767 (n + 1)).toNat * A381805 (n + 1)

end

end A382248.P7121343422892174979

/-! ## A382248.P16258195746160884542

`A382767(n+1)/(A381031(n+1)+A053669(n+1))`
-/

namespace A382248.P16258195746160884542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382767 (n + 1) : ℚ) / (A381031 (n + 1) + A053669 (n + 1) : ℚ)

end

end A382248.P16258195746160884542

/-! ## A382248.P1229377836026309060

`(A380539(n+1)-A381031(n+1))*A381805(n+1)`
-/

namespace A382248.P1229377836026309060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A380539 (n + 1) - A381031 (n + 1)) * A381805 (n + 1)

end

end A382248.P1229377836026309060

/-! ## A382248.P10689898065155571389

`A052126(A382767(n+1))`
-/

namespace A382248.P10689898065155571389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A382767 (n + 1)).toNat

end

end A382248.P10689898065155571389

/-!
# A382250: Irregular 3-dimensional table, where layer n is an irregular 2D table with A000041(n) columns, each of which lists the n-bit binary numbers whose run lengths correspond to a given partition.

The programs for A382250, there is no canonical definition to state claims against.
-/

/-! ## A382250.P14832130660073793517

`A074284(A000571(n))%A317841(n+3)`
-/

namespace A382250.P14832130660073793517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074284 (A000571 n).toNat) (A317841 (n + 3))

end

end A382250.P14832130660073793517

/-! ## A382250.P6061050869333592338

`A048864(n+3)%A036485(A110789(n+3))`
-/

namespace A382250.P6061050869333592338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048864 (n + 3)) (A036485 (A110789 (n + 3)).toNat)

end

end A382250.P6061050869333592338

/-!
# A382251: a(n) = 7*n^3 - 6*n^2.

The programs for A382251, the canonical program `A382251.P12350763960256523374` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382251 has offset 1).

The definition of A382251 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*(n+1)^3-6*(n+1)²` (program `A382251.P12350763960256523374`, by `A382251.P12350763960256523374.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A382251.P17838677446385812487

`ogf((1+28x+13x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A382251.P17838677446385812487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 28, 13] [1, -4, 6, -4, 1] n

end

end A382251.P17838677446385812487

namespace A382251

/-- `ogf((1+28x+13x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P17838677446385812487.Spec : Prop :=
  ∀ n, P17838677446385812487.a n = A382251 (n + 1)

end A382251

/-! ## A382251.P12350763960256523374

`7*(n+1)^3-6*(n+1)²`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A382251

/-- `7*(n+1)^3-6*(n+1)²` -/
def P12350763960256523374.Spec : Prop :=
  ∀ n, P12350763960256523374.a n = A382251 (n + 1)

theorem P12350763960256523374.correct : P12350763960256523374.Spec := by
  intro n
  simp only [A382251, Nat.add_sub_cancel]

end A382251

/-! ## A382251.P15533494149991169866

`∑[A289134(n+1)]`
-/

namespace A382251.P15533494149991169866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382251.P15533494149991169866

namespace A382251

/-- `∑[A289134(n+1)]` -/
def P15533494149991169866.Spec : Prop :=
  ∀ n, P15533494149991169866.a n = A382251 (n + 1)

end A382251

/-! ## A382251.P1898172049158991563

`(n+1)²*A016993(n)`
-/

namespace A382251.P1898172049158991563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A016993 n

end

end A382251.P1898172049158991563

namespace A382251

/-- `(n+1)²*A016993(n)` -/
def P1898172049158991563.Spec : Prop :=
  ∀ n, P1898172049158991563.a n = A382251 (n + 1)

theorem P1898172049158991563.correct : P1898172049158991563.Spec := by
  intro n
  simp only [A382251, Nat.add_sub_cancel, A382251.P1898172049158991563.a, A382251.P12350763960256523374.a, A016993, A016993.P16783903167149097063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A382251

/-! ## A382251.P1418955796545873281

`(n+1)*∑[A131877(n)]`
-/

namespace A382251.P1418955796545873281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382251.P1418955796545873281

namespace A382251

/-- `(n+1)*∑[A131877(n)]` -/
def P1418955796545873281.Spec : Prop :=
  ∀ n, P1418955796545873281.a n = A382251 (n + 1)

end A382251

/-! ## A382251.P4191125257772860912

`(n+1)²*Δ[A001106(n)]`
-/

namespace A382251.P4191125257772860912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A382251.P4191125257772860912

namespace A382251

/-- `(n+1)²*Δ[A001106(n)]` -/
def P4191125257772860912.Spec : Prop :=
  ∀ n, P4191125257772860912.a n = A382251 (n + 1)

end A382251

/-! ## A382251.P8369481300806434123

`(n+1)²*Δ[A389608(n)]`
-/

namespace A382251.P8369481300806434123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (f1 (n + 1) - f1 n)

end

end A382251.P8369481300806434123

namespace A382251

/-- `(n+1)²*Δ[A389608(n)]` -/
def P8369481300806434123.Spec : Prop :=
  ∀ n, P8369481300806434123.a n = A382251 (n + 1)

end A382251

/-! ## A382251.P222281556986692252

`(n+1)*(A069127(n+1)+n)`
-/

namespace A382251.P222281556986692252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A069127 (n + 1) + (n : ℤ))

end

end A382251.P222281556986692252

namespace A382251

/-- `(n+1)*(A069127(n+1)+n)` -/
def P222281556986692252.Spec : Prop :=
  ∀ n, P222281556986692252.a n = A382251 (n + 1)

end A382251

/-! ## A382251.P18028457479004009575

`(n+1)*(A163756(n)+n+1)`
-/

namespace A382251.P18028457479004009575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A163756 n + (n + 1 : ℤ))

end

end A382251.P18028457479004009575

namespace A382251

/-- `(n+1)*(A163756(n)+n+1)` -/
def P18028457479004009575.Spec : Prop :=
  ∀ n, P18028457479004009575.a n = A382251 (n + 1)

theorem P18028457479004009575.correct : P18028457479004009575.Spec := by
  intro n
  simp only [A382251, Nat.add_sub_cancel, A382251.P18028457479004009575.a, A382251.P12350763960256523374.a, A163756, A163756.P13614041795755210983.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A382251

/-! ## A382251.P5079904616210025319

`(A190576(n+1)-n²)*(n+1)²`
-/

namespace A382251.P5079904616210025319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A190576 (n + 1) - (n ^ 2 : ℤ)) * ((n + 1) ^ 2 : ℤ)

end

end A382251.P5079904616210025319

namespace A382251

/-- `(A190576(n+1)-n²)*(n+1)²` -/
def P5079904616210025319.Spec : Prop :=
  ∀ n, P5079904616210025319.a n = A382251 (n + 1)

theorem P5079904616210025319.correct : P5079904616210025319.Spec := by
  intro n
  simp only [A382251, Nat.add_sub_cancel, A382251.P5079904616210025319.a, A382251.P12350763960256523374.a, A190576, A190576.P14376266656277020032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A382251

/-! ## A382251.P14944563142221911064

`Δ[A172077(n)]`
-/

namespace A382251.P14944563142221911064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172077 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382251.P14944563142221911064

namespace A382251

/-- `Δ[A172077(n)]` -/
def P14944563142221911064.Spec : Prop :=
  ∀ n, P14944563142221911064.a n = A382251 (n + 1)

end A382251

/-! ## A382251.P13258388517969786618

`(n+1)*Δ[A172076(n)]`
-/

namespace A382251.P13258388517969786618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A382251.P13258388517969786618

namespace A382251

/-- `(n+1)*Δ[A172076(n)]` -/
def P13258388517969786618.Spec : Prop :=
  ∀ n, P13258388517969786618.a n = A382251 (n + 1)

end A382251

/-! ## A382251.P16177341836340948421

`(n+1)*A051868(n+1)`
-/

namespace A382251.P16177341836340948421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051868 (n + 1)

end

end A382251.P16177341836340948421

namespace A382251

/-- `(n+1)*A051868(n+1)` -/
def P16177341836340948421.Spec : Prop :=
  ∀ n, P16177341836340948421.a n = A382251 (n + 1)

theorem P16177341836340948421.correct : P16177341836340948421.Spec := by
  intro n
  simp only [A382251, Nat.add_sub_cancel, A382251.P16177341836340948421.a, A382251.P12350763960256523374.a, A051868, A051868.P8510755596375269483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A382251

/-! ## A382251.P460657245543697407

`(n+1)*(A139268(n+1)-(n+1))`
-/

namespace A382251.P460657245543697407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A139268 (n + 1) - (n + 1 : ℤ))

end

end A382251.P460657245543697407

namespace A382251

/-- `(n+1)*(A139268(n+1)-(n+1))` -/
def P460657245543697407.Spec : Prop :=
  ∀ n, P460657245543697407.a n = A382251 (n + 1)

theorem P460657245543697407.correct : P460657245543697407.Spec := by
  intro n
  simp only [A382251, Nat.add_sub_cancel, A382251.P460657245543697407.a, A382251.P12350763960256523374.a, A139268, A139268.P11340989614029244212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A382251

/-! ## A382251.P17015935125940499035

`(A022265(n+1)-A006124(n))*(n+1)²`
-/

namespace A382251.P17015935125940499035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022265 (n + 1) - A006124 n) * ((n + 1) ^ 2 : ℤ)

end

end A382251.P17015935125940499035

namespace A382251

/-- `(A022265(n+1)-A006124(n))*(n+1)²` -/
def P17015935125940499035.Spec : Prop :=
  ∀ n, P17015935125940499035.a n = A382251 (n + 1)

end A382251

/-! ## A382251.P2745230794530935767

`(n+1)*A274978(2*(n+1))`
-/

namespace A382251.P2745230794530935767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A274978 (2 * (n + 1))

end

end A382251.P2745230794530935767

namespace A382251

/-- `(n+1)*A274978(2*(n+1))` -/
def P2745230794530935767.Spec : Prop :=
  ∀ n, P2745230794530935767.a n = A382251 (n + 1)

end A382251

/-! ## A382251.P2336787516375270715

`∑[A301683(3*n)]`
-/

namespace A382251.P2336787516375270715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301683 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382251.P2336787516375270715

namespace A382251

/-- `∑[A301683(3*n)]` -/
def P2336787516375270715.Spec : Prop :=
  ∀ n, P2336787516375270715.a n = A382251 (n + 1)

end A382251

/-!
# A382252: Triangle T(n,k) = numerator of (n+k)/(1+n*k), 0 <= k <= n >= 0, read by rows.

The programs for A382252, there is no canonical definition to state claims against.
-/

/-! ## A382252.P14711031882456634222

`A277822(n*A075221(n+1))`
-/

namespace A382252.P14711031882456634222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 ((n : ℤ) * A075221 (n + 1)).toNat

end

end A382252.P14711031882456634222

/-!
# A382255: Heinz number of the partition corresponding to run lengths in the bits of n.

The programs for A382255, the canonical program `A382255.P11079232135365074107` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382255 has offset 0).

The definition of A382255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382255.P2528362319278822601

`A333219(xor(n, floor(n/2))+1)`
-/

namespace A382255.P2528362319278822601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A382255.P2528362319278822601

namespace A382255

/-- `A333219(xor(n, floor(n/2))+1)` -/
def P2528362319278822601.Spec : Prop :=
  ∀ n, P2528362319278822601.a n = A382255 n

end A382255

/-! ## A382255.P4631002583929540517

`A333219(A003188(n)+1)`
-/

namespace A382255.P4631002583929540517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (A003188 n + 1).toNat

end

end A382255.P4631002583929540517

namespace A382255

/-- `A333219(A003188(n)+1)` -/
def P4631002583929540517.Spec : Prop :=
  ∀ n, P4631002583929540517.a n = A382255 n

end A382255

/-! ## A382255.P8375954782798219136

`A333219(A105081(n+1))`
-/

namespace A382255.P8375954782798219136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (A105081 (n + 1)).toNat

end

end A382255.P8375954782798219136

namespace A382255

/-- `A333219(A105081(n+1))` -/
def P8375954782798219136.Spec : Prop :=
  ∀ n, P8375954782798219136.a n = A382255 n

end A382255

/-! ## A382255.P2980442254459904318

`A333219(A341915(n)+1)`
-/

namespace A382255.P2980442254459904318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (A341915 n + 1).toNat

end

end A382255.P2980442254459904318

namespace A382255

/-- `A333219(A341915(n)+1)` -/
def P2980442254459904318.Spec : Prop :=
  ∀ n, P2980442254459904318.a n = A382255 n

end A382255

/-! ## A382255.P11079232135365074107

`A246029(A035327(2*n+1))*A246029(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A382255

/-- `A246029(A035327(2*n+1))*A246029(n)` -/
def P11079232135365074107.Spec : Prop :=
  ∀ n, P11079232135365074107.a n = A382255 n

theorem P11079232135365074107.correct : P11079232135365074107.Spec := by
  intro n
  simp only [A382255]

end A382255

/-! ## A382255.P11239025198991067680

`A325351(A253565(xor(n, floor(n/2))))`
-/

namespace A382255.P11239025198991067680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (A253565 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat).toNat

end

end A382255.P11239025198991067680

namespace A382255

/-- `A325351(A253565(xor(n, floor(n/2))))` -/
def P11239025198991067680.Spec : Prop :=
  ∀ n, P11239025198991067680.a n = A382255 n

end A382255

/-! ## A382255.P10065545857639241062

`A325351(A243353(n))`
-/

namespace A382255.P10065545857639241062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325351 (A243353 n).toNat

end

end A382255.P10065545857639241062

namespace A382255

/-- `A325351(A243353(n))` -/
def P10065545857639241062.Spec : Prop :=
  ∀ n, P10065545857639241062.a n = A382255 n

end A382255

/-! ## A382255.P7417750567469103271

`A246029(A290254(n+1))`
-/

namespace A382255.P7417750567469103271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A290254 (n + 1)).toNat

end

end A382255.P7417750567469103271

namespace A382255

/-- `A246029(A290254(n+1))` -/
def P7417750567469103271.Spec : Prop :=
  ∀ n, P7417750567469103271.a n = A382255 n

end A382255

/-!
# A382256: Smallest binary number whose run lengths of bits correspond to a partition with Heinz number n.

The programs for A382256, there is no canonical definition to state claims against.
-/

/-! ## A382256.P7343857114207016098

`A006068(A333220(n+1))%A003065(2*n+3)`
-/

namespace A382256.P7343857114207016098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006068 (A333220 (n + 1)).toNat) (A003065 (2 * n + 3))

end

end A382256.P7343857114207016098

/-! ## A382256.P1181997309613510203

`A341916((A233249(n+1)+1)%A080854(n+1)-1)`
-/

namespace A382256.P1181997309613510203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (Int.tmod (A233249 (n + 1) + 1) (A080854 (n + 1)) - 1).toNat

end

end A382256.P1181997309613510203

/-! ## A382256.P18380981744063032001

`A341916(A320107(ceil(2^(n-1)))+A233249(n+1)-1)`
-/

namespace A382256.P18380981744063032001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A320107 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + A233249 (n + 1) - 1).toNat

end

end A382256.P18380981744063032001

/-!
# A382257: a(n) is the numerator of tanh(Sum_{k=1..n-1} artanh(k/n)), where artanh is the inverse hyperbolic tangent function.

The programs for A382257, there is no canonical definition to state claims against.
-/

/-! ## A382257.P12419694627596178407

`lcm(2, 1-C(2*n+1, n))/2`
-/

namespace A382257.P12419694627596178407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (1 - (Nat.choose (2 * n + 1) n : ℤ)) : ℚ) / 2

end

end A382257.P12419694627596178407

/-! ## A382257.P12182479033339822009

`lcm(2, A010763(n))/2`
-/

namespace A382257.P12182479033339822009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A010763 n) : ℚ) / 2

end

end A382257.P12182479033339822009

/-! ## A382257.P3006418838522430559

`lcm(4, 1-A001700(n))/4`
-/

namespace A382257.P3006418838522430559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (1 - A001700 n) : ℚ) / 4

end

end A382257.P3006418838522430559

/-! ## A382257.P8008416769001097313

`A383431(n+1)-A043529(n)`
-/

namespace A382257.P8008416769001097313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383431 (n + 1) - A043529 n

end

end A382257.P8008416769001097313

/-! ## A382257.P8191513608093659860

`A010763(n)/A297382(n+1)`
-/

namespace A382257.P8191513608093659860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010763 n : ℚ) / (A297382 (n + 1) : ℚ)

end

end A382257.P8191513608093659860

/-!
# A382258: a(n) = last number placed on an infinite square grid at the n-th step, in order to surround the last number placed at the previous step, always using the next larger integer and going counter-clockwise, starting with a 1 at the origin.

The programs for A382258, there is no canonical definition to state claims against.
-/

/-! ## A382258.P3152880407180410640

`∑[A382259(n)]%A219039(n+5)`
-/

namespace A382258.P3152880407180410640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A219039 (n + 5))

end

end A382258.P3152880407180410640

/-! ## A382258.P10342586194917841265

`∑[A382259(A029970(n+1))]`
-/

namespace A382258.P10342586194917841265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382259 (A029970 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382258.P10342586194917841265

/-!
# A382262: Nonnegative numbers whose factorial base expansion, when read from right to left, corresponds to the ordinal transform of some finite sequence, with offset 0.

The programs for A382262, there is no canonical definition to state claims against.
-/

/-! ## A382262.P14443926430330991052

`eq[n, A382269(A382269(n))]`
-/

namespace A382262.P14443926430330991052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382269 (A382269 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382262.P14443926430330991052

/-! ## A382262.P1160623227515974953

`lt[A045839(3*n+2), char[A382269(n)]]`
-/

namespace A382262.P1160623227515974953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045839 (3 * n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382269 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A382262.P1160623227515974953

/-! ## A382262.P6318078620722761614

`A071156(lt[A194979(n+1), A086064(3*n+4)])`
-/

namespace A382262.P6318078620722761614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086064 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071156 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A382262.P6318078620722761614

/-! ## A382262.P16665991621355981608

`lt[A002265(A060819(n+1)), A170942(n+1)]`
-/

namespace A382262.P16665991621355981608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A060819 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170942 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382262.P16665991621355981608

/-! ## A382262.P9739289046106577659

`eq[A018819(A064947(2*n+1)), A352514(2*n+3)]`
-/

namespace A382262.P9739289046106577659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 (A064947 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352514 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382262.P9739289046106577659

/-!
# A382264: Semiprimes that are the sum of the m-th prime and the m-th semiprime for some m.

The programs for A382264, the canonical program `A382264.P13533478440173455442` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382264 has offset 1).

The definition of A382264 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092021, A133796, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382264.P13533478440173455442

`A133796(A092021(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A382264

/-- `A133796(A092021(n+1))` -/
def P13533478440173455442.Spec : Prop :=
  ∀ n, P13533478440173455442.a n = A382264 (n + 1)

theorem P13533478440173455442.correct : P13533478440173455442.Spec := by
  intro n
  simp only [A382264, Nat.add_sub_cancel]

end A382264

/-! ## A382264.P14109033088746268679

`∩[A001358(n+1), A133796(n+1)]`
-/

namespace A382264.P14109033088746268679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382264.P14109033088746268679

namespace A382264

/-- `∩[A001358(n+1), A133796(n+1)]` -/
def P14109033088746268679.Spec : Prop :=
  ∀ n, (P14109033088746268679.a n : ℤ) = A382264 (n + 1)

end A382264

/-! ## A382264.P1168872649758225172

`filter[A133796(n+1), A064911(#)]`
-/

namespace A382264.P1168872649758225172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A382264.P1168872649758225172

namespace A382264

/-- `filter[A133796(n+1), A064911(#)]` -/
def P1168872649758225172.Spec : Prop :=
  ∀ n, P1168872649758225172.a n = A382264 (n + 1)

end A382264

/-! ## A382264.P2690560046874115230

`∩[A133796(n+1), A176540(n+1)]`
-/

namespace A382264.P2690560046874115230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382264.P2690560046874115230

namespace A382264

/-- `∩[A133796(n+1), A176540(n+1)]` -/
def P2690560046874115230.Spec : Prop :=
  ∀ n, (P2690560046874115230.a n : ℤ) = A382264 (n + 1)

end A382264

/-! ## A382264.P14613364464827119513

`∩[A133796(n+1)-A000040(n+1), A133796(n+1)]`
-/

namespace A382264.P14613364464827119513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1) - A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382264.P14613364464827119513

namespace A382264

/-- `∩[A133796(n+1)-A000040(n+1), A133796(n+1)]` -/
def P14613364464827119513.Spec : Prop :=
  ∀ n, (P14613364464827119513.a n : ℤ) = A382264 (n + 1)

end A382264

/-! ## A382264.P8575206369241010908

`∩[A133796(n+1)-A006005(n+1), A133796(n+1)]`
-/

namespace A382264.P8575206369241010908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1) - A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382264.P8575206369241010908

namespace A382264

/-- `∩[A133796(n+1)-A006005(n+1), A133796(n+1)]` -/
def P8575206369241010908.Spec : Prop :=
  ∀ n, (P8575206369241010908.a n : ℤ) = A382264 (n + 1)

end A382264

/-!
# A382265: In the prime factorization of n replace the k-th prime with the k-th nonprime number.

The programs for A382265, the canonical program `A382265.P17506625768474440017` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382265 has offset 1).

The definition of A382265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382265.P17506625768474440017

`A066260(A064989(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A382265

/-- `A066260(A064989(n+1))` -/
def P17506625768474440017.Spec : Prop :=
  ∀ n, P17506625768474440017.a n = A382265 (n + 1)

theorem P17506625768474440017.correct : P17506625768474440017.Spec := by
  intro n
  simp only [A382265, Nat.add_sub_cancel]

end A382265

/-! ## A382265.P2382364212640263839

`∏{e}[A181821(n+1), A018252(#)]`
-/

namespace A382265.P2382364212640263839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A018252 (Nat.factorization (f1 n).natAbs p)

end

end A382265.P2382364212640263839

namespace A382265

/-- `∏{e}[A181821(n+1), A018252(#)]` -/
def P2382364212640263839.Spec : Prop :=
  ∀ n, P2382364212640263839.a n = A382265 (n + 1)

end A382265

/-! ## A382265.P17880862709926713458

`A299327(A000593(n+1)*A355456(2*n+3))`
-/

namespace A382265.P17880862709926713458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299327 (A000593 (n + 1) * A355456 (2 * n + 3)).toNat

end

end A382265.P17880862709926713458

namespace A382265

/-- `A299327(A000593(n+1)*A355456(2*n+3))` -/
def P17880862709926713458.Spec : Prop :=
  ∀ n, P17880862709926713458.a n = A382265 (n + 1)

end A382265

/-! ## A382265.P6798900384120413615

`A299327(A000593(n+1)^A260897(3*n+1))`
-/

namespace A382265.P6798900384120413615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299327 (SequenceMachineLib.roundAway ((A000593 (n + 1) : ℚ) ^ (A260897 (3 * n + 1) : ℤ))).toNat

end

end A382265.P6798900384120413615

namespace A382265

/-- `A299327(A000593(n+1)^A260897(3*n+1))` -/
def P6798900384120413615.Spec : Prop :=
  ∀ n, P6798900384120413615.a n = A382265 (n + 1)

end A382265

/-! ## A382265.P5613678382503847293

`A299327(A000593(n+1)%A093058(2*(n+2)))`
-/

namespace A382265.P5613678382503847293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299327 (Int.tmod (A000593 (n + 1)) (A093058 (2 * (n + 2)))).toNat

end

end A382265.P5613678382503847293

namespace A382265

/-- `A299327(A000593(n+1)%A093058(2*(n+2)))` -/
def P5613678382503847293.Spec : Prop :=
  ∀ n, P5613678382503847293.a n = A382265 (n + 1)

end A382265

/-!
# A382266: Numerator of the harmonic mean of the exponents in the prime factorization of n.

The programs for A382266, there is no canonical definition to state claims against.
-/

/-! ## A382266.P14255088623604507073

`A346010(A205959(n+2))`
-/

namespace A382266.P14255088623604507073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346010 (A205959 (n + 2)).toNat

end

end A382266.P14255088623604507073

/-! ## A382266.P9761336065970153317

`A051903(A185452(2*(n+2))^A088530(n+2))`
-/

namespace A382266.P9761336065970153317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A185452 (2 * (n + 2)) : ℚ) ^ (A088530 (n + 2) : ℤ))).toNat

end

end A382266.P9761336065970153317

/-! ## A382266.P76491761623359900

`A124762(A253249(n+2))`
-/

namespace A382266.P76491761623359900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A253249 (n + 2)).toNat

end

end A382266.P76491761623359900

/-! ## A382266.P2507136766658132598

`A374706(A067824(n+2))`
-/

namespace A382266.P2507136766658132598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374706 (A067824 (n + 2)).toNat

end

end A382266.P2507136766658132598

/-! ## A382266.P15566353347288765557

`A001511(A002033(n+1)*A002145(n+1))`
-/

namespace A382266.P15566353347288765557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A002033 (n + 1) * A002145 (n + 1)).toNat

end

end A382266.P15566353347288765557

/-!
# A382267: Denominator of the harmonic mean of the exponents in the prime factorization of n.

The programs for A382267, there is no canonical definition to state claims against.
-/

/-! ## A382267.P5588246127432716420

`A156352(A050349(n+2))`
-/

namespace A382267.P5588246127432716420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156352 (A050349 (n + 2)).toNat

end

end A382267.P5588246127432716420

/-! ## A382267.P13290084586312396700

`A210961(A111588(n+2))`
-/

namespace A382267.P13290084586312396700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210961 (A111588 (n + 2)).toNat

end

end A382267.P13290084586312396700

/-! ## A382267.P17457191166242623006

`A235757(A122977(n+2))`
-/

namespace A382267.P17457191166242623006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235757 (A122977 (n + 2)).toNat

end

end A382267.P17457191166242623006

/-! ## A382267.P16581528447045259369

`A326976(A050338(n+2))`
-/

namespace A382267.P16581528447045259369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326976 (A050338 (n + 2)).toNat

end

end A382267.P16581528447045259369

/-! ## A382267.P8918262907918581347

`A276949(A111221(n+2))`
-/

namespace A382267.P8918262907918581347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (A111221 (n + 2)).toNat

end

end A382267.P8918262907918581347

/-!
# A382271: Smallest k such that A073734(k) = 2^n, where A073734 is the GCD of consecutive terms of the EKG sequence A064413.

The programs for A382271, there is no canonical definition to state claims against.
-/

/-! ## A382271.P12091460778556100153

`A382222(2^n)`
-/

namespace A382271.P12091460778556100153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382222 (2 ^ n)

end

end A382271.P12091460778556100153

/-! ## A382271.P3590066656781679637

`record[A382222(A099238(n))]`
-/

namespace A382271.P3590066656781679637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382222 (A099238 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382271.P3590066656781679637

/-! ## A382271.P17676480579117022692

`A384562(n)+A382222(A000079(n))`
-/

namespace A382271.P17676480579117022692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384562 n + A382222 (A000079 n).toNat

end

end A382271.P17676480579117022692

/-! ## A382271.P43776801320349877

`A382222(A000079(n))/A055642(n)`
-/

namespace A382271.P43776801320349877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382222 (A000079 n).toNat : ℚ) / (A055642 n : ℚ)

end

end A382271.P43776801320349877

/-! ## A382271.P13124504315751023515

`A382222(A000079(n))+A000007(n+1)`
-/

namespace A382271.P13124504315751023515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382222 (A000079 n).toNat + A000007 (n + 1)

end

end A382271.P13124504315751023515

/-!
# A382274: Expansion of 1/(1 - 4*x/(1-x)^2)^(5/2).

The programs for A382274, the canonical program `A382274.P1891969757382348578` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382274 has offset 0).

The definition of A382274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382274.P1891969757382348578

`((7*n+3)*a(n-1)-(7*n-24)*a(n-2)+(n-3)*a(n-3))/n` with `a(0)=1, a(1)=10, a(2)=90`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A382274

/-- `((7*n+3)*a(n-1)-(7*n-24)*a(n-2)+(n-3)*a(n-3))/n` -/
def P1891969757382348578.Spec : Prop :=
  ∀ n, P1891969757382348578.a n = (A382274 n : ℚ)

end A382274

/-!
# A382275: Number of minimum connected dominating sets in the n-hypercube graph.

The programs for A382275, there is no canonical definition to state claims against.
-/

/-! ## A382275.P5174206822363387480

`A000111(A157725(n))*A003418(n)`
-/

namespace A382275.P5174206822363387480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (A157725 n).toNat * A003418 n

end

end A382275.P5174206822363387480

/-!
# A382277: a(n) is the least composite number obtained by inserting a nonempty string of 0's inside n.

The programs for A382277, there is no canonical definition to state claims against.
-/

/-! ## A382277.P15467555713724311541

`A011557(A075019(n+2))+n`
-/

namespace A382277.P15467555713724311541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A075019 (n + 2)).toNat + (n : ℤ)

end

end A382277.P15467555713724311541

/-!
# A382278: a(n) = least integer m >= 2 such that n is a sum of the form Sum_{k>=0} floor(h/m^k) for some integer h >= 1.

The programs for A382278, there is no canonical definition to state claims against.
-/

/-! ## A382278.P15181494571738031953

`A240755(n+1)-A302052(A000204(n+4))`
-/

namespace A382278.P15181494571738031953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (n + 1) - A302052 (A000204 (n + 4)).toNat

end

end A382278.P15181494571738031953

/-! ## A382278.P8686474693082676917

`A240755(n+1)-A373266(A141769(n+1))`
-/

namespace A382278.P8686474693082676917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (n + 1) - A373266 (A141769 (n + 1)).toNat

end

end A382278.P8686474693082676917

/-! ## A382278.P11784221926285432288

`A254123(A254111(n+1)*A254122(3*n+2))`
-/

namespace A382278.P11784221926285432288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254123 (A254111 (n + 1) * A254122 (3 * n + 2)).toNat

end

end A382278.P11784221926285432288

/-! ## A382278.P3693600951853584022

`A091787(A352283(n)+A165098(n+1))`
-/

namespace A382278.P3693600951853584022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091787 (A352283 n + A165098 (n + 1)).toNat

end

end A382278.P3693600951853584022

/-! ## A382278.P8232128747106739482

`A240755(n+1)-A122841(A240746(n+1))`
-/

namespace A382278.P8232128747106739482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240755 (n + 1) - A122841 (A240746 (n + 1)).toNat

end

end A382278.P8232128747106739482

/-!
# A382281: Let n encode the edges of a graph by taking edges (u,v), with u < v, in colexicographic order ((0,1), (0,2), (1,2), (0,3), ...) and adding each edge to the graph if the corresponding binary digit of n (starting with the least significant digit) is 1. a(n) is the smallest nonnegative integer that encodes the same unlabeled graph as n (disregarding any isolated vertices), i.e., the code of the graph as defined in A076184.

The programs for A382281, there is no canonical definition to state claims against.
-/

/-! ## A382281.P13390578169120490310

`A382755(n+12)`
-/

namespace A382281.P13390578169120490310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382755 (n + 12)

end

end A382281.P13390578169120490310

/-!
# A382284: Number of unlabeled connected graphs with n vertices which are planar squares.

The programs for A382284, there is no canonical definition to state claims against.
-/

/-! ## A382284.P13456168958993820211

`A122156(A032173(n+1))`
-/

namespace A382284.P13456168958993820211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122156 (A032173 (n + 1)).toNat

end

end A382284.P13456168958993820211

/-! ## A382284.P6697687319716737176

`A345914(A345932(n+1)+A000055(n))`
-/

namespace A382284.P6697687319716737176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345914 (A345932 (n + 1) + A000055 n).toNat

end

end A382284.P6697687319716737176

/-! ## A382284.P17021487932042020861

`A004195(A036650(n))`
-/

namespace A382284.P17021487932042020861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004195 (A036650 n).toNat

end

end A382284.P17021487932042020861

/-! ## A382284.P12433723609241571400

`A094802(A007827(n))`
-/

namespace A382284.P12433723609241571400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A007827 n).toNat

end

end A382284.P12433723609241571400

/-! ## A382284.P1667011656839156757

`A116358(A000055(n))`
-/

namespace A382284.P1667011656839156757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116358 (A000055 n).toNat

end

end A382284.P1667011656839156757

/-!
# A382288: Number of records in the n-th composition in standard order.

The programs for A382288, there is no canonical definition to state claims against.
-/

/-! ## A382288.P8756786327293055307

`A124765(A375124(n))`
-/

namespace A382288.P8756786327293055307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A375124 n).toNat

end

end A382288.P8756786327293055307

/-! ## A382288.P4166823306741820696

`A124760(A375124(n))+A057427(n)`
-/

namespace A382288.P4166823306741820696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A375124 n).toNat + A057427 n

end

end A382288.P4166823306741820696

/-! ## A382288.P5686915454206351440

`A124765(A375126(A375126(n)))`
-/

namespace A382288.P5686915454206351440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A375126 (A375126 n).toNat).toNat

end

end A382288.P5686915454206351440

/-! ## A382288.P9337795134228256708

`A124767(A375126(A375126(A373948(n))))`
-/

namespace A382288.P9337795134228256708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A375126 (A375126 (A373948 n).toNat).toNat).toNat

end

end A382288.P9337795134228256708

/-! ## A382288.P3925221075341513519

`A124769(A375124(n)/A124766(2*(n+1)))`
-/

namespace A382288.P3925221075341513519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (SequenceMachineLib.roundAway ((A375124 n : ℚ) / (A124766 (2 * (n + 1)) : ℚ))).toNat

end

end A382288.P3925221075341513519

/-!
# A382290: a(n) = A064547(n) - A001221(n).

The programs for A382290, the canonical program `A382290.P2377806297881400849` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382290 has offset 1).

The definition of A382290 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382290.P3150646689637991707

`log2(A382291(n+1))`
-/

namespace A382290.P3150646689637991707
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A382291 (n + 1) : ℝ)

end

end A382290.P3150646689637991707

namespace A382290

/-- `log2(A382291(n+1))` -/
def P3150646689637991707.Spec : Prop :=
  ∀ n, P3150646689637991707.a n = (A382290 (n + 1) : ℝ)

end A382290

/-! ## A382290.P2377806297881400849

`A064547(n+1)-A001221(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A382290

/-- `A064547(n+1)-A001221(n+1)` -/
def P2377806297881400849.Spec : Prop :=
  ∀ n, P2377806297881400849.a n = A382290 (n + 1)

theorem P2377806297881400849.correct : P2377806297881400849.Spec := by
  intro n
  simp only [A382290, Nat.add_sub_cancel]

end A382290

/-! ## A382290.P3232731989497862151

`log2(A037445(n+1)/A034444(n+1))`
-/

namespace A382290.P3232731989497862151
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A037445 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ) : ℝ)

end

end A382290.P3232731989497862151

namespace A382290

/-- `log2(A037445(n+1)/A034444(n+1))` -/
def P3232731989497862151.Spec : Prop :=
  ∀ n, P3232731989497862151.a n = (A382290 (n + 1) : ℝ)

end A382290

/-! ## A382290.P10153739327968297794

`∑{e}[n+1, #-1]-∑{e}[n+1, val(#!, 2)]`
-/

namespace A382290.P10153739327968297794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) - ((∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f2 n) p)) 2 : ℕ) : ℤ)

end

end A382290.P10153739327968297794

namespace A382290

/-- `∑{e}[n+1, #-1]-∑{e}[n+1, val(#!, 2)]` -/
def P10153739327968297794.Spec : Prop :=
  ∀ n, P10153739327968297794.a n = A382290 (n + 1)

end A382290

/-! ## A382290.P17309569294750344316

`A001222(A293442(n+1))-A001221(n+1)`
-/

namespace A382290.P17309569294750344316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A293442 (n + 1)).toNat - A001221 (n + 1)

end

end A382290.P17309569294750344316

namespace A382290

/-- `A001222(A293442(n+1))-A001221(n+1)` -/
def P17309569294750344316.Spec : Prop :=
  ∀ n, P17309569294750344316.a n = A382290 (n + 1)

end A382290

/-!
# A382291: a(n) = A037445(n)/A034444(n).

The programs for A382291, the canonical program `A382291.P6985755138510803654` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382291 has offset 1).

The definition of A382291 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382290, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382291.P6985755138510803654

`2^A382290(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A382291

/-- `2^A382290(n+1)` -/
def P6985755138510803654.Spec : Prop :=
  ∀ n, P6985755138510803654.a n = (A382291 (n + 1) : ℚ)

end A382291

/-! ## A382291.P8928706056171919008

`A037445(n+1)/A034444(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382291.P8928706056171919008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037445 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A382291.P8928706056171919008

namespace A382291

/-- `A037445(n+1)/A034444(n+1)` -/
def P8928706056171919008.Spec : Prop :=
  ∀ n, P8928706056171919008.a n = (A382291 (n + 1) : ℚ)

end A382291

/-! ## A382291.P2845576635665170863

`2^(∑{e}[n+1, #-1]-∑{e}[n+1, val(#!, 2)])`
-/

namespace A382291.P2845576635665170863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) - ((∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f2 n) p)) 2 : ℕ) : ℤ) : ℤ)

end

end A382291.P2845576635665170863

namespace A382291

/-- `2^(∑{e}[n+1, #-1]-∑{e}[n+1, val(#!, 2)])` -/
def P2845576635665170863.Spec : Prop :=
  ∀ n, P2845576635665170863.a n = (A382291 (n + 1) : ℚ)

end A382291

/-! ## A382291.P15838232067418243700

`∏{e}[(n+1)/∏{p}[n+1, #], A048896(#)]`
-/

namespace A382291.P15838232067418243700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A048896 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A382291.P15838232067418243700

namespace A382291

/-- `∏{e}[(n+1)/∏{p}[n+1, #], A048896(#)]` -/
def P15838232067418243700.Spec : Prop :=
  ∀ n, P15838232067418243700.a n = A382291 (n + 1)

end A382291

/-! ## A382291.P16410243817172346891

`A037445(n+1)/A037445(∏{p}[n+1, #])`
-/

namespace A382291.P16410243817172346891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037445 (n + 1) : ℚ) / (A037445 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A382291.P16410243817172346891

namespace A382291

/-- `A037445(n+1)/A037445(∏{p}[n+1, #])` -/
def P16410243817172346891.Spec : Prop :=
  ∀ n, P16410243817172346891.a n = (A382291 (n + 1) : ℚ)

end A382291

/-! ## A382291.P8415775227474475399

`A000079(A064547(n+1)-∑{p}[n+1, gcd(n, #)])`
-/

namespace A382291.P8415775227474475399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A064547 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)).toNat

end

end A382291.P8415775227474475399

namespace A382291

/-- `A000079(A064547(n+1)-∑{p}[n+1, gcd(n, #)])` -/
def P8415775227474475399.Spec : Prop :=
  ∀ n, P8415775227474475399.a n = A382291 (n + 1)

end A382291

/-! ## A382291.P16823543707187404558

`A000079(∑{e}[n+1, #-val(#!, 2)]-A001221(n+1))`
-/

namespace A382291.P16823543707187404558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ)) - A001221 (n + 1)).toNat

end

end A382291.P16823543707187404558

namespace A382291

/-- `A000079(∑{e}[n+1, #-val(#!, 2)]-A001221(n+1))` -/
def P16823543707187404558.Spec : Prop :=
  ∀ n, P16823543707187404558.a n = A382291 (n + 1)

end A382291

/-! ## A382291.P5359926396645964465

`A000005(A160102(n+1))/A034444(n+1)`
-/

namespace A382291.P5359926396645964465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A160102 (n + 1)).toNat : ℚ) / (A034444 (n + 1) : ℚ)

end

end A382291.P5359926396645964465

namespace A382291

/-- `A000005(A160102(n+1))/A034444(n+1)` -/
def P5359926396645964465.Spec : Prop :=
  ∀ n, P5359926396645964465.a n = (A382291 (n + 1) : ℚ)

end A382291

/-!
# A382292: Numbers k such that A382290(k) = 1.

The programs for A382292, the canonical program `A382292.P11441178726949856059` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382292 has offset 1).

The definition of A382292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3909 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382292.P11441178726949856059

`eq[A001221(n+1)+1, A064547(n+1)]+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A382292

/-- `eq[A001221(n+1)+1, A064547(n+1)]+1` -/
def P11441178726949856059.Spec : Prop :=
  ∀ n, (P11441178726949856059.a n : ℤ) = A382292 (n + 1)

theorem P11441178726949856059.correct : P11441178726949856059.Spec := by
  intro n
  simp only [A382292, Nat.add_sub_cancel]

end A382292

/-! ## A382292.P559125746801751289

`eq[1, A382290(n+1)]+1`
-/

namespace A382292.P559125746801751289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382292.P559125746801751289

namespace A382292

/-- `eq[1, A382290(n+1)]+1` -/
def P559125746801751289.Spec : Prop :=
  ∀ n, (P559125746801751289.a n : ℤ) = A382292 (n + 1)

end A382292

/-! ## A382292.P13538025150204276288

`eq[2, A382291(n+1)]+1`
-/

namespace A382292.P13538025150204276288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382292.P13538025150204276288

namespace A382292

/-- `eq[2, A382291(n+1)]+1` -/
def P13538025150204276288.Spec : Prop :=
  ∀ n, (P13538025150204276288.a n : ℤ) = A382292 (n + 1)

end A382292

/-! ## A382292.P6274504378681961935

`eq[3, A363329(n+1)]+1`
-/

namespace A382292.P6274504378681961935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363329 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A382292.P6274504378681961935

namespace A382292

/-- `eq[3, A363329(n+1)]+1` -/
def P6274504378681961935.Spec : Prop :=
  ∀ n, (P6274504378681961935.a n : ℤ) = A382292 (n + 1)

end A382292

/-! ## A382292.P707185264578611184

`eq[1, A382290(A028310(n))]`
-/

namespace A382292.P707185264578611184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382290 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382292.P707185264578611184

namespace A382292

/-- `eq[1, A382290(A028310(n))]` -/
def P707185264578611184.Spec : Prop :=
  ∀ n, (P707185264578611184.a n : ℤ) = A382292 (n + 1)

end A382292

/-!
# A382293: a(n) is the least number k such that A382290(k) = n.

The programs for A382293, there is no canonical definition to state claims against.
-/

/-! ## A382293.P14965494908407634570

`∩[A325839(n+1), A377709(n+1)]`
-/

namespace A382293.P14965494908407634570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382293.P14965494908407634570

/-! ## A382293.P6966079955357287064

`∏{p}[A070826(n+1), A025475(#)]`
-/

namespace A382293.P6966079955357287064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A025475 p

end

end A382293.P6966079955357287064

/-!
# A382299: Number of minimum connected dominating sets in the n-folded cube graph.

The programs for A382299, there is no canonical definition to state claims against.
-/

/-! ## A382299.P12069923611719499293

`2*A340169(A000292(n))`
-/

namespace A382299.P12069923611719499293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340169 (A000292 n).toNat

end

end A382299.P12069923611719499293

