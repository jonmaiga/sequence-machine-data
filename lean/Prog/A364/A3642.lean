import SequenceMachineLib.Basic
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A364200: Minimal number of terms of mixed-sign Egyptian fraction f such that H(n) + f is an integer, where H(n) is the n-th harmonic number.

The programs for A364200, there is no canonical definition to state claims against.
-/

/-! ## A364200.P16218226159602730923

`A363937(n+1)-A129251(A221574(n+2))`
-/

namespace A364200.P16218226159602730923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363937 (n + 1) - A129251 (A221574 (n + 2)).toNat

end

end A364200.P16218226159602730923

/-!
# A364203: Triangle read by rows: T(n, k) is the number of n X n matrices of rank k using all the integers from 1 to n^2.

The programs for A364203, there is no canonical definition to state claims against.
-/

/-! ## A364203.P5705852761462085894

`A224226(A006386(n+2)-1)`
-/

namespace A364203.P5705852761462085894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224226 (A006386 (n + 2) - 1).toNat

end

end A364203.P5705852761462085894

/-!
# A364204: Expansion of Sum_{k>=0} x^(3*k+1) / (1 + x^(3*k+1)).

The programs for A364204, the canonical program `A364204.P12516854949562588598` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364204 has offset 1).

The definition of A364204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364204.P1267891531864373146

`A364205(n+1)+A122860(n+1)`
-/

namespace A364204.P1267891531864373146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364205 (n + 1) + A122860 (n + 1)

end

end A364204.P1267891531864373146

namespace A364204

/-- `A364205(n+1)+A122860(n+1)` -/
def P1267891531864373146.Spec : Prop :=
  ∀ n, P1267891531864373146.a n = A364204 (n + 1)

end A364204

/-! ## A364204.P14162423884163813118

`A002324(n+1)-A364014(n+1)`
-/

namespace A364204.P14162423884163813118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) - A364014 (n + 1)

end

end A364204.P14162423884163813118

namespace A364204

/-- `A002324(n+1)-A364014(n+1)` -/
def P14162423884163813118.Spec : Prop :=
  ∀ n, P14162423884163813118.a n = A364204 (n + 1)

end A364204

/-! ## A364204.P4956411481890212707

`A256232(n+1)-A364205(n+1)`
-/

namespace A364204.P4956411481890212707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256232 (n + 1) - A364205 (n + 1)

end

end A364204.P4956411481890212707

namespace A364204

/-- `A256232(n+1)-A364205(n+1)` -/
def P4956411481890212707.Spec : Prop :=
  ∀ n, P4956411481890212707.a n = A364204 (n + 1)

end A364204

/-! ## A364204.P12516854949562588598

`∑{d}[n+1, A117212(#)*A326399((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A364204

/-- `∑{d}[n+1, A117212(#)*A326399((n+1)/#)]` -/
def P12516854949562588598.Spec : Prop :=
  ∀ n, P12516854949562588598.a n = A364204 (n + 1)

theorem P12516854949562588598.correct : P12516854949562588598.Spec := by
  intro n
  simp only [A364204, Nat.add_sub_cancel]

end A364204

/-! ## A364204.P3126202360126510376

`∑{d}[n+1, A033999(#-1)*A079978((n+1)/#-1)]`
-/

namespace A364204.P3126202360126510376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A079978 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A364204.P3126202360126510376

namespace A364204

/-- `∑{d}[n+1, A033999(#-1)*A079978((n+1)/#-1)]` -/
def P3126202360126510376.Spec : Prop :=
  ∀ n, P3126202360126510376.a n = A364204 (n + 1)

end A364204

/-!
# A364205: Expansion of Sum_{k>=0} x^(3*k+2) / (1 + x^(3*k+2)).

The programs for A364205, the canonical program `A364205.P2014408668369465084` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364205 has offset 1).

The definition of A364205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364205.P5164061010512801662

`A364011(n+1)-A002324(n+1)`
-/

namespace A364205.P5164061010512801662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364011 (n + 1) - A002324 (n + 1)

end

end A364205.P5164061010512801662

namespace A364205

/-- `A364011(n+1)-A002324(n+1)` -/
def P5164061010512801662.Spec : Prop :=
  ∀ n, P5164061010512801662.a n = A364205 (n + 1)

end A364205

/-! ## A364205.P2014408668369465084

`A364204(n+1)-A122860(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A364205

/-- `A364204(n+1)-A122860(n+1)` -/
def P2014408668369465084.Spec : Prop :=
  ∀ n, P2014408668369465084.a n = A364205 (n + 1)

theorem P2014408668369465084.correct : P2014408668369465084.Spec := by
  intro n
  simp only [A364205, Nat.add_sub_cancel]

end A364205

/-! ## A364205.P11600217850329827579

`A256232(n+1)-A364204(n+1)`
-/

namespace A364205.P11600217850329827579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256232 (n + 1) - A364204 (n + 1)

end

end A364205.P11600217850329827579

namespace A364205

/-- `A256232(n+1)-A364204(n+1)` -/
def P11600217850329827579.Spec : Prop :=
  ∀ n, P11600217850329827579.a n = A364205 (n + 1)

end A364205

/-! ## A364205.P11766224444110878471

`A364011(n+1)-A004016(n+1)/6`
-/

namespace A364205.P11766224444110878471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364011 (n + 1) : ℚ) - (A004016 (n + 1) : ℚ) / 6

end

end A364205.P11766224444110878471

namespace A364205

/-- `A364011(n+1)-A004016(n+1)/6` -/
def P11766224444110878471.Spec : Prop :=
  ∀ n, P11766224444110878471.a n = (A364205 (n + 1) : ℚ)

end A364205

/-! ## A364205.P14423165257689579559

`∑{d}[n+1, A117212(#)*A326400((n+1)/#)]`
-/

namespace A364205.P14423165257689579559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A326400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364205.P14423165257689579559

namespace A364205

/-- `∑{d}[n+1, A117212(#)*A326400((n+1)/#)]` -/
def P14423165257689579559.Spec : Prop :=
  ∀ n, P14423165257689579559.a n = A364205 (n + 1)

end A364205

/-! ## A364205.P14915623595447090732

`A364011(n+1)-(A293899(n+1)+A049347(n))`
-/

namespace A364205.P14915623595447090732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364011 (n + 1) - (A293899 (n + 1) + A049347 n)

end

end A364205.P14915623595447090732

namespace A364205

/-- `A364011(n+1)-(A293899(n+1)+A049347(n))` -/
def P14915623595447090732.Spec : Prop :=
  ∀ n, P14915623595447090732.a n = A364205 (n + 1)

end A364205

/-! ## A364205.P4995794202629753701

`A364011(n+1)-A096936(n+1)/A130974(n)`
-/

namespace A364205.P4995794202629753701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364011 (n + 1) : ℚ) - (A096936 (n + 1) : ℚ) / (A130974 n : ℚ)

end

end A364205.P4995794202629753701

namespace A364205

/-- `A364011(n+1)-A096936(n+1)/A130974(n)` -/
def P4995794202629753701.Spec : Prop :=
  ∀ n, P4995794202629753701.a n = (A364205 (n + 1) : ℚ)

end A364205

/-! ## A364205.P84980855014679334

`A364011(n+1)-A113063(n+1)/A130784(n)`
-/

namespace A364205.P84980855014679334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364011 (n + 1) : ℚ) - (A113063 (n + 1) : ℚ) / (A130784 n : ℚ)

end

end A364205.P84980855014679334

namespace A364205

/-- `A364011(n+1)-A113063(n+1)/A130784(n)` -/
def P84980855014679334.Spec : Prop :=
  ∀ n, P84980855014679334.a n = (A364205 (n + 1) : ℚ)

end A364205

/-! ## A364205.P11379184848343578936

`A364011(n+1)-A113063(n+1)/A153727(n)`
-/

namespace A364205.P11379184848343578936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364011 (n + 1) : ℚ) - (A113063 (n + 1) : ℚ) / (A153727 n : ℚ)

end

end A364205.P11379184848343578936

namespace A364205

/-- `A364011(n+1)-A113063(n+1)/A153727(n)` -/
def P11379184848343578936.Spec : Prop :=
  ∀ n, P11379184848343578936.a n = (A364205 (n + 1) : ℚ)

end A364205

/-! ## A364205.P3613889731139549382

`A364011(n+1)-A113063(n+1)/A177702(n)`
-/

namespace A364205.P3613889731139549382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364011 (n + 1) : ℚ) - (A113063 (n + 1) : ℚ) / (A177702 n : ℚ)

end

end A364205.P3613889731139549382

namespace A364205

/-- `A364011(n+1)-A113063(n+1)/A177702(n)` -/
def P3613889731139549382.Spec : Prop :=
  ∀ n, P3613889731139549382.a n = (A364205 (n + 1) : ℚ)

end A364205

/-! ## A364205.P9475672937409068478

`A364011(n+1)-A051724(abs(2*A180318(n+1)))`
-/

namespace A364205.P9475672937409068478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364011 (n + 1) - A051724 |2 * A180318 (n + 1)|.toNat

end

end A364205.P9475672937409068478

namespace A364205

/-- `A364011(n+1)-A051724(abs(2*A180318(n+1)))` -/
def P9475672937409068478.Spec : Prop :=
  ∀ n, P9475672937409068478.a n = A364205 (n + 1)

end A364205

/-!
# A364207: Number of partitions of [n] such that the minimal element of each block is also its size.

The programs for A364207, there is no canonical definition to state claims against.
-/

/-! ## A364207.P15940043620781705365

`A036297(A173747(n)+n)`
-/

namespace A364207.P15940043620781705365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036297 (A173747 n + (n : ℤ)).toNat

end

end A364207.P15940043620781705365

/-! ## A364207.P8379600226013411486

`A129613(n)%A270129(A340030(n))`
-/

namespace A364207.P8379600226013411486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129613 n) (A270129 (A340030 n).toNat)

end

end A364207.P8379600226013411486

/-! ## A364207.P8152148148948812118

`A001710(A319916(n))*A200261(A200268(2*n+1))`
-/

namespace A364207.P8152148148948812118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (A319916 n).toNat * A200261 (A200268 (2 * n + 1)).toNat

end

end A364207.P8152148148948812118

/-!
# A364208: a(n) is the number of full graphs on n unlabeled vertices (see comments for definition of full graph).

The programs for A364208, there is no canonical definition to state claims against.
-/

/-! ## A364208.P11360778682342034064

`A180446(A007999(n)+A000088(n))`
-/

namespace A364208.P11360778682342034064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180446 (A007999 n + A000088 n).toNat

end

end A364208.P11360778682342034064

/-! ## A364208.P1675923874843440144

`A358637(A036484(n))`
-/

namespace A364208.P1675923874843440144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358637 (A036484 n).toNat

end

end A364208.P1675923874843440144

/-! ## A364208.P8343374369088978187

`A358637(A162936(n+1))`
-/

namespace A364208.P8343374369088978187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358637 (A162936 (n + 1)).toNat

end

end A364208.P8343374369088978187

/-!
# A364209: Number of divisors of n of the form 3*k+1 that are at most sqrt(n).

The programs for A364209, there is no canonical definition to state claims against.
-/

/-! ## A364209.P1805259169348897039

`A069291(n+1)*A069291(A107452(n+2))`
-/

namespace A364209.P1805259169348897039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069291 (n + 1) * A069291 (A107452 (n + 2)).toNat

end

end A364209.P1805259169348897039

/-!
# A364210: a(n) = (1/(2*n)) * Sum_{d|n} 3^(n/d-1) * phi(3*d).

The programs for A364210, there is no canonical definition to state claims against.
-/

/-! ## A364210.P17607074032256968087

`∑{d}[n+1, A046211(#)]`
-/

namespace A364210.P17607074032256968087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046211 d

end

end A364210.P17607074032256968087

/-! ## A364210.P313114742386864594

`∑{d}[n+1, A046209(#)*A051064((n+1)/#)]`
-/

namespace A364210.P313114742386864594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046209 d * A051064 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364210.P313114742386864594

/-! ## A364210.P9582735465544902013

`A066888(A106749(n)+A008776(n))`
-/

namespace A364210.P9582735465544902013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 (A106749 n + A008776 n).toNat

end

end A364210.P9582735465544902013

/-! ## A364210.P14799193251711187140

`A001462(floor(A126390(n)/A005195(n)))`
-/

namespace A364210.P14799193251711187140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 ⌊(A126390 n : ℚ) / (A005195 n : ℚ)⌋.toNat

end

end A364210.P14799193251711187140

/-!
# A364211: a(n) = (1/(4*n)) * Sum_{d|n} 5^(n/d-1) * phi(5*d).

The programs for A364211, there is no canonical definition to state claims against.
-/

/-! ## A364211.P12963039395110942772

`∑{d}[n+1, A054662(#)]`
-/

namespace A364211.P12963039395110942772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054662 d

end

end A364211.P12963039395110942772

/-! ## A364211.P867109583689888691

`∑{d}[n+1, A054663(#)*A055457((n+1)/#)]`
-/

namespace A364211.P867109583689888691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054663 d * A055457 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364211.P867109583689888691

/-!
# A364212: a(n) = (1/(6*n)) * Sum_{d|n} 7^(n/d-1) * phi(7*d).

The programs for A364212, there is no canonical definition to state claims against.
-/

/-! ## A364212.P12123809672398669235

`∑{d}[n+1, A373277(#)]`
-/

namespace A364212.P12123809672398669235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A373277 d

end

end A364212.P12123809672398669235

/-! ## A364212.P12274819643012928309

`A262868(A137960(n+2))+A082316(n)`
-/

namespace A364212.P12274819643012928309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (A137960 (n + 2)).toNat + A082316 n

end

end A364212.P12274819643012928309

/-!
# A364213: The number of trailing 0's in the canonical representation of n as a sum of distinct Jacobsthal numbers (A280049).

The programs for A364213, the canonical program `A364213.P8586003835930649180` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364213 has offset 1).

The definition of A364213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364213.P8586003835930649180

`val(eq[1, and(n, -n)%3], 2)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A364213

/-- `val(eq[1, and(n, -n)%3], 2)` -/
def P8586003835930649180.Spec : Prop :=
  ∀ n, (P8586003835930649180.a n : ℤ) = A364213 (n + 1)

theorem P8586003835930649180.correct : P8586003835930649180.Spec := by
  intro n
  simp only [A364213, Nat.add_sub_cancel]

end A364213

/-! ## A364213.P14001056556301451410

`2*(val(2*comp[n*and(n, -n)], 4)-1)`
-/

namespace A364213.P14001056556301451410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.valuation (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 4 : ℤ) - 1)

end

end A364213.P14001056556301451410

namespace A364213

/-- `2*(val(2*comp[n*and(n, -n)], 4)-1)` -/
def P14001056556301451410.Spec : Prop :=
  ∀ n, P14001056556301451410.a n = A364213 (n + 1)

end A364213

/-! ## A364213.P3226578708254181738

`val(A003159(n+1), 2)`
-/

namespace A364213.P3226578708254181738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003159 (n + 1)).toNat 2

end

end A364213.P3226578708254181738

namespace A364213

/-- `val(A003159(n+1), 2)` -/
def P3226578708254181738.Spec : Prop :=
  ∀ n, (P3226578708254181738.a n : ℤ) = A364213 (n + 1)

end A364213

/-! ## A364213.P15887804452267773331

`val(A280049(n+1), 2)`
-/

namespace A364213.P15887804452267773331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A280049 (n + 1)).toNat 2

end

end A364213.P15887804452267773331

namespace A364213

/-- `val(A280049(n+1), 2)` -/
def P15887804452267773331.Spec : Prop :=
  ∀ n, (P15887804452267773331.a n : ℤ) = A364213 (n + 1)

end A364213

/-! ## A364213.P10190740763057891863

`val(∑[A026465(n+1)], 2)`
-/

namespace A364213.P10190740763057891863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A364213.P10190740763057891863

namespace A364213

/-- `val(∑[A026465(n+1)], 2)` -/
def P10190740763057891863.Spec : Prop :=
  ∀ n, (P10190740763057891863.a n : ℤ) = A364213 (n + 1)

end A364213

/-! ## A364213.P5621620469023133794

`2*(A080028(n+1)-1)`
-/

namespace A364213.P5621620469023133794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A080028 (n + 1) - 1)

end

end A364213.P5621620469023133794

namespace A364213

/-- `2*(A080028(n+1)-1)` -/
def P5621620469023133794.Spec : Prop :=
  ∀ n, P5621620469023133794.a n = A364213 (n + 1)

end A364213

/-! ## A364213.P18206196474628537582

`val(A036554(n+1), 2)-1`
-/

namespace A364213.P18206196474628537582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A036554 (n + 1)).toNat 2 : ℤ) - 1

end

end A364213.P18206196474628537582

namespace A364213

/-- `val(A036554(n+1), 2)-1` -/
def P18206196474628537582.Spec : Prop :=
  ∀ n, P18206196474628537582.a n = A364213 (n + 1)

end A364213

/-! ## A364213.P13098835546462849091

`val(A108269(n+1), 2)-2`
-/

namespace A364213.P13098835546462849091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A108269 (n + 1)).toNat 2 : ℤ) - 2

end

end A364213.P13098835546462849091

namespace A364213

/-- `val(A108269(n+1), 2)-2` -/
def P13098835546462849091.Spec : Prop :=
  ∀ n, P13098835546462849091.a n = A364213 (n + 1)

end A364213

/-! ## A364213.P15857547495114736486

`A374202(A036554(n+1))`
-/

namespace A364213.P15857547495114736486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374202 (A036554 (n + 1)).toNat

end

end A364213.P15857547495114736486

namespace A364213

/-- `A374202(A036554(n+1))` -/
def P15857547495114736486.Spec : Prop :=
  ∀ n, P15857547495114736486.a n = A364213 (n + 1)

end A364213

/-! ## A364213.P14782922371742005657

`A374212(A036554(2*n+1-n))`
-/

namespace A364213.P14782922371742005657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374212 (A036554 (2 * n + 1 - n)).toNat

end

end A364213.P14782922371742005657

namespace A364213

/-- `A374212(A036554(2*n+1-n))` -/
def P14782922371742005657.Spec : Prop :=
  ∀ n, P14782922371742005657.a n = A364213 (n + 1)

end A364213

/-! ## A364213.P15893621377454679963

`A007814(A003159(n+1))`
-/

namespace A364213.P15893621377454679963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003159 (n + 1)).toNat

end

end A364213.P15893621377454679963

namespace A364213

/-- `A007814(A003159(n+1))` -/
def P15893621377454679963.Spec : Prop :=
  ∀ n, P15893621377454679963.a n = A364213 (n + 1)

end A364213

/-! ## A364213.P5099667675104307094

`A007814(A121539(n+1)+1)`
-/

namespace A364213.P5099667675104307094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A121539 (n + 1) + 1).toNat

end

end A364213.P5099667675104307094

namespace A364213

/-- `A007814(A121539(n+1)+1)` -/
def P5099667675104307094.Spec : Prop :=
  ∀ n, P5099667675104307094.a n = A364213 (n + 1)

end A364213

/-! ## A364213.P13270858790062513729

`A007814(A285385(n+2)-1)`
-/

namespace A364213.P13270858790062513729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A285385 (n + 2) - 1).toNat

end

end A364213.P13270858790062513729

namespace A364213

/-- `A007814(A285385(n+2)-1)` -/
def P13270858790062513729.Spec : Prop :=
  ∀ n, P13270858790062513729.a n = A364213 (n + 1)

end A364213

/-! ## A364213.P6096351852501085132

`A007814(A036554(n+1)/2)`
-/

namespace A364213.P6096351852501085132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A036554 (n + 1) : ℚ) / 2)).toNat

end

end A364213.P6096351852501085132

namespace A364213

/-- `A007814(A036554(n+1)/2)` -/
def P6096351852501085132.Spec : Prop :=
  ∀ n, P6096351852501085132.a n = A364213 (n + 1)

end A364213

/-! ## A364213.P5397640146834236487

`filter[A007814(n+1), A059841(#)]`
-/

namespace A364213.P5397640146834236487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A364213.P5397640146834236487

namespace A364213

/-- `filter[A007814(n+1), A059841(#)]` -/
def P5397640146834236487.Spec : Prop :=
  ∀ n, P5397640146834236487.a n = A364213 (n + 1)

end A364213

/-! ## A364213.P7515669328586359308

`A007814(A260480(n+1)-(n+1))`
-/

namespace A364213.P7515669328586359308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A260480 (n + 1) - (n + 1 : ℤ)).toNat

end

end A364213.P7515669328586359308

namespace A364213

/-- `A007814(A260480(n+1)-(n+1))` -/
def P7515669328586359308.Spec : Prop :=
  ∀ n, P7515669328586359308.a n = A364213 (n + 1)

end A364213

/-! ## A364213.P10990198188620063398

`A364377(A003156(n+1))`
-/

namespace A364213.P10990198188620063398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364377 (A003156 (n + 1)).toNat

end

end A364213.P10990198188620063398

namespace A364213

/-- `A364377(A003156(n+1))` -/
def P10990198188620063398.Spec : Prop :=
  ∀ n, P10990198188620063398.a n = A364213 (n + 1)

end A364213

/-! ## A364213.P12974031595584665930

`val(A036552(2*n+1), 2)`
-/

namespace A364213.P12974031595584665930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036552 (2 * n + 1)).toNat 2

end

end A364213.P12974031595584665930

namespace A364213

/-- `val(A036552(2*n+1), 2)` -/
def P12974031595584665930.Spec : Prop :=
  ∀ n, (P12974031595584665930.a n : ℤ) = A364213 (n + 1)

end A364213

/-! ## A364213.P2092883091591501867

`A050605(A079523(n+1))`
-/

namespace A364213.P2092883091591501867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A079523 (n + 1)).toNat

end

end A364213.P2092883091591501867

namespace A364213

/-- `A050605(A079523(n+1))` -/
def P2092883091591501867.Spec : Prop :=
  ∀ n, P2092883091591501867.a n = A364213 (n + 1)

end A364213

/-! ## A364213.P15367144200579359558

`A050605(A162648(n+1))`
-/

namespace A364213.P15367144200579359558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A162648 (n + 1)).toNat

end

end A364213.P15367144200579359558

namespace A364213

/-- `A050605(A162648(n+1))` -/
def P15367144200579359558.Spec : Prop :=
  ∀ n, P15367144200579359558.a n = A364213 (n + 1)

end A364213

/-!
# A364214: Numbers whose canonical representation as a sum of distinct Jacobsthal numbers (A280049) is palindromic.

The programs for A364214, the canonical program `A364214.P7159302711906179706` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364214 has offset 1).

The definition of A364214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364214.P6004634199904840644

`A286045(A044051(n+1))`
-/

namespace A364214.P6004634199904840644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286045 (A044051 (n + 1)).toNat

end

end A364214.P6004634199904840644

namespace A364214

/-- `A286045(A044051(n+1))` -/
def P6004634199904840644.Spec : Prop :=
  ∀ n, P6004634199904840644.a n = A364214 (n + 1)

end A364214

/-! ## A364214.P8007903481536968331

`A050292(A006995(n+2))`
-/

namespace A364214.P8007903481536968331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (A006995 (n + 2)).toNat

end

end A364214.P8007903481536968331

namespace A364214

/-- `A050292(A006995(n+2))` -/
def P8007903481536968331.Spec : Prop :=
  ∀ n, P8007903481536968331.a n = A364214 (n + 1)

end A364214

/-! ## A364214.P7159302711906179706

`A050292(∑[A164126(n+1)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A364214

/-- `A050292(∑[A164126(n+1)])` -/
def P7159302711906179706.Spec : Prop :=
  ∀ n, P7159302711906179706.a n = A364214 (n + 1)

theorem P7159302711906179706.correct : P7159302711906179706.Spec := by
  intro n
  simp only [A364214, Nat.add_sub_cancel]

end A364214

/-! ## A364214.P5493688075755003813

`A050292(eq[n, A030101(A028310(n))])`
-/

namespace A364214.P5493688075755003813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364214.P5493688075755003813

namespace A364214

/-- `A050292(eq[n, A030101(A028310(n))])` -/
def P5493688075755003813.Spec : Prop :=
  ∀ n, P5493688075755003813.a n = A364214 (n + 1)

end A364214

/-! ## A364214.P2303430035094623704

`A050292(eq[A030101(n), A257088(n)])`
-/

namespace A364214.P2303430035094623704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A364214.P2303430035094623704

namespace A364214

/-- `A050292(eq[A030101(n), A257088(n)])` -/
def P2303430035094623704.Spec : Prop :=
  ∀ n, P2303430035094623704.a n = A364214 (n + 1)

end A364214

/-! ## A364214.P7727301896518308859

`A123087(A164302(n+1))`
-/

namespace A364214.P7727301896518308859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (A164302 (n + 1)).toNat

end

end A364214.P7727301896518308859

namespace A364214

/-- `A123087(A164302(n+1))` -/
def P7727301896518308859.Spec : Prop :=
  ∀ n, P7727301896518308859.a n = A364214 (n + 1)

end A364214

/-!
# A364215: The number of 1's in the canonical representation of n as a sum of distinct Jacobsthal numbers (A280049).

The programs for A364215, the canonical program `A364215.P4304225117039316976` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364215 has offset 1).

The definition of A364215 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364215.P4304225117039316976

`A000120(A003159(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A364215

/-- `A000120(A003159(n+1))` -/
def P4304225117039316976.Spec : Prop :=
  ∀ n, P4304225117039316976.a n = A364215 (n + 1)

theorem P4304225117039316976.correct : P4304225117039316976.Spec := by
  intro n
  simp only [A364215, Nat.add_sub_cancel]

end A364215

/-! ## A364215.P1778215026624381120

`A000120(A036554(n+1)/2)`
-/

namespace A364215.P1778215026624381120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A036554 (n + 1) : ℚ) / 2)).toNat

end

end A364215.P1778215026624381120

namespace A364215

/-- `A000120(A036554(n+1)/2)` -/
def P1778215026624381120.Spec : Prop :=
  ∀ n, P1778215026624381120.a n = A364215 (n + 1)

end A364215

/-! ## A364215.P10610263675094884469

`A265745(A284393(n+1))`
-/

namespace A364215.P10610263675094884469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (A284393 (n + 1)).toNat

end

end A364215.P10610263675094884469

namespace A364215

/-- `A265745(A284393(n+1))` -/
def P10610263675094884469.Spec : Prop :=
  ∀ n, P10610263675094884469.a n = A364215 (n + 1)

end A364215

/-! ## A364215.P14703214701782815459

`A265745(A003156(n+1))`
-/

namespace A364215.P14703214701782815459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (A003156 (n + 1)).toNat

end

end A364215.P14703214701782815459

namespace A364215

/-- `A265745(A003156(n+1))` -/
def P14703214701782815459.Spec : Prop :=
  ∀ n, P14703214701782815459.a n = A364215 (n + 1)

end A364215

/-! ## A364215.P8632434011283418407

`A000120(A036554(n+1))`
-/

namespace A364215.P8632434011283418407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A036554 (n + 1)).toNat

end

end A364215.P8632434011283418407

namespace A364215

/-- `A000120(A036554(n+1))` -/
def P8632434011283418407.Spec : Prop :=
  ∀ n, P8632434011283418407.a n = A364215 (n + 1)

end A364215

/-! ## A364215.P12149841684850236022

`A274009(A072939(n+1))`
-/

namespace A364215.P12149841684850236022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A072939 (n + 1)).toNat

end

end A364215.P12149841684850236022

namespace A364215

/-- `A274009(A072939(n+1))` -/
def P12149841684850236022.Spec : Prop :=
  ∀ n, P12149841684850236022.a n = A364215 (n + 1)

end A364215

/-! ## A364215.P1978253758542599141

`A274009(A171947(n+2))`
-/

namespace A364215.P1978253758542599141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A171947 (n + 2)).toNat

end

end A364215.P1978253758542599141

namespace A364215

/-- `A274009(A171947(n+2))` -/
def P1978253758542599141.Spec : Prop :=
  ∀ n, P1978253758542599141.a n = A364215 (n + 1)

end A364215

/-! ## A364215.P6779078584640782137

`A000120(A079523(n+1)+1)`
-/

namespace A364215.P6779078584640782137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A079523 (n + 1) + 1).toNat

end

end A364215.P6779078584640782137

namespace A364215

/-- `A000120(A079523(n+1)+1)` -/
def P6779078584640782137.Spec : Prop :=
  ∀ n, P6779078584640782137.a n = A364215 (n + 1)

end A364215

/-! ## A364215.P11275444875112606745

`A000120(A108269(n+1)/2)`
-/

namespace A364215.P11275444875112606745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A108269 (n + 1) : ℚ) / 2)).toNat

end

end A364215.P11275444875112606745

namespace A364215

/-- `A000120(A108269(n+1)/2)` -/
def P11275444875112606745.Spec : Prop :=
  ∀ n, P11275444875112606745.a n = A364215 (n + 1)

end A364215

/-! ## A364215.P13747844270474854406

`A000120(A003157(n+1)-(n+1))`
-/

namespace A364215.P13747844270474854406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003157 (n + 1) - (n + 1 : ℤ)).toNat

end

end A364215.P13747844270474854406

namespace A364215

/-- `A000120(A003157(n+1)-(n+1))` -/
def P13747844270474854406.Spec : Prop :=
  ∀ n, P13747844270474854406.a n = A364215 (n + 1)

end A364215

/-! ## A364215.P16481237875782525474

`A265745(A003157(n+1))`
-/

namespace A364215.P16481237875782525474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (A003157 (n + 1)).toNat

end

end A364215.P16481237875782525474

namespace A364215

/-- `A265745(A003157(n+1))` -/
def P16481237875782525474.Spec : Prop :=
  ∀ n, P16481237875782525474.a n = A364215 (n + 1)

end A364215

/-! ## A364215.P16179471590745951182

`A265745(A003158(n+1)+1)`
-/

namespace A364215.P16179471590745951182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (A003158 (n + 1) + 1).toNat

end

end A364215.P16179471590745951182

namespace A364215

/-- `A265745(A003158(n+1)+1)` -/
def P16179471590745951182.Spec : Prop :=
  ∀ n, P16179471590745951182.a n = A364215 (n + 1)

end A364215

/-! ## A364215.P10971837798788468001

`A000120(A108269(n+1))`
-/

namespace A364215.P10971837798788468001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A108269 (n + 1)).toNat

end

end A364215.P10971837798788468001

namespace A364215

/-- `A000120(A108269(n+1))` -/
def P10971837798788468001.Spec : Prop :=
  ∀ n, P10971837798788468001.a n = A364215 (n + 1)

end A364215

/-! ## A364215.P10894178072200972457

`A000120(A131323(n+1)+1)`
-/

namespace A364215.P10894178072200972457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A131323 (n + 1) + 1).toNat

end

end A364215.P10894178072200972457

namespace A364215

/-- `A000120(A131323(n+1)+1)` -/
def P10894178072200972457.Spec : Prop :=
  ∀ n, P10894178072200972457.a n = A364215 (n + 1)

end A364215

/-! ## A364215.P5552723904439148819

`A000120(A081706(2*n+1)+2)`
-/

namespace A364215.P5552723904439148819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A081706 (2 * n + 1) + 2).toNat

end

end A364215.P5552723904439148819

namespace A364215

/-- `A000120(A081706(2*n+1)+2)` -/
def P5552723904439148819.Spec : Prop :=
  ∀ n, P5552723904439148819.a n = A364215 (n + 1)

end A364215

/-! ## A364215.P11163997983526466652

`A048881(A249034(n+1))`
-/

namespace A364215.P11163997983526466652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A249034 (n + 1)).toNat

end

end A364215.P11163997983526466652

namespace A364215

/-- `A048881(A249034(n+1))` -/
def P11163997983526466652.Spec : Prop :=
  ∀ n, P11163997983526466652.a n = A364215 (n + 1)

end A364215

/-! ## A364215.P16419812308847245548

`A000120(A225822(n+1)+1)`
-/

namespace A364215.P16419812308847245548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A225822 (n + 1) + 1).toNat

end

end A364215.P16419812308847245548

namespace A364215

/-- `A000120(A225822(n+1)+1)` -/
def P16419812308847245548.Spec : Prop :=
  ∀ n, P16419812308847245548.a n = A364215 (n + 1)

end A364215

/-! ## A364215.P16407781146504904975

`A092779(A260391(n+1))`
-/

namespace A364215.P16407781146504904975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092779 (A260391 (n + 1)).toNat

end

end A364215.P16407781146504904975

namespace A364215

/-- `A092779(A260391(n+1))` -/
def P16407781146504904975.Spec : Prop :=
  ∀ n, P16407781146504904975.a n = A364215 (n + 1)

end A364215

/-!
# A364216: Jacobsthal-Niven numbers: numbers that are divisible by the sum of the digits in their Jacobsthal representation (A280049).

The programs for A364216, there is no canonical definition to state claims against.
-/

/-! ## A364216.P6925742130218011866

`A164119(n+2)-A010054(A000219(n))`
-/

namespace A364216.P6925742130218011866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164119 (n + 2) - A010054 (A000219 n).toNat

end

end A364216.P6925742130218011866

/-!
# A364217: Numbers k such that k and k+1 are both Jacobsthal-Niven numbers (A364216).

The programs for A364217, there is no canonical definition to state claims against.
-/

/-! ## A364217.P8918077008074740862

`∩[A364216(n+1)-1, A364216(n+1)]`
-/

namespace A364217.P8918077008074740862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364216 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364217.P8918077008074740862

/-! ## A364217.P17916073862352080604

`eq[A300751(n+5), A300769(A347648(2*n))]`
-/

namespace A364217.P17916073862352080604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300751 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (A347648 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364217.P17916073862352080604

/-!
# A364218: Starts of runs of 3 consecutive integers that are Jacobsthal-Niven numbers (A364216).

The programs for A364218, there is no canonical definition to state claims against.
-/

/-! ## A364218.P1248546624895442292

`∩[A364217(n+1)-1, A364217(n+1)]`
-/

namespace A364218.P1248546624895442292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364217 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364218.P1248546624895442292

/-!
# A364219: Starts of runs of 4 consecutive integers that are Jacobsthal-Niven numbers (A364216).

The programs for A364219, there is no canonical definition to state claims against.
-/

/-! ## A364219.P10379076449564509673

`∩[A364218(n+1)-1, A364218(n+1)]`
-/

namespace A364219.P10379076449564509673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364218 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364219.P10379076449564509673

/-!
# A364220: Starts of runs of 5 consecutive integers that are Jacobsthal-Niven numbers (A364216).

The programs for A364220, there is no canonical definition to state claims against.
-/

/-! ## A364220.P15690905271902532500

`∩[A364219(n+1)-1, A364219(n+1)]`
-/

namespace A364220.P15690905271902532500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364219 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364220.P15690905271902532500

/-!
# A364221: Starts of runs of 6 consecutive integers that are Jacobsthal-Niven numbers (A364216).

The programs for A364221, there is no canonical definition to state claims against.
-/

/-! ## A364221.P1087218769787516178

`∩[A364220(n+1)-1, A364220(n+1)]`
-/

namespace A364221.P1087218769787516178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364220 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364221.P1087218769787516178

/-!
# A364222: Expansion of Sum_{k>=0} 3^k * x^(3^k) / (1 - x^(3^k))^2.

The programs for A364222, the canonical program `A364222.P17779841851792137175` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364222 has offset 1).

The definition of A364222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364222.P17779841851792137175

`(n+1)*(val(n+1, 3)+1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A364222

/-- `(n+1)*(val(n+1, 3)+1)` -/
def P17779841851792137175.Spec : Prop :=
  ∀ n, (P17779841851792137175.a n : ℤ) = A364222 (n + 1)

theorem P17779841851792137175.correct : P17779841851792137175.Spec := by
  intro n
  simp only [A364222, Nat.add_sub_cancel]

end A364222

/-! ## A364222.P8819597234048015095

`(n+1)*A051064(n+1)`
-/

namespace A364222.P8819597234048015095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051064 (n + 1)

end

end A364222.P8819597234048015095

namespace A364222

/-- `(n+1)*A051064(n+1)` -/
def P8819597234048015095.Spec : Prop :=
  ∀ n, P8819597234048015095.a n = A364222 (n + 1)

end A364222

/-! ## A364222.P15256219602244215863

`(n+1)*(Δ[A054861(n)]+1)`
-/

namespace A364222.P15256219602244215863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n + 1)

end

end A364222.P15256219602244215863

namespace A364222

/-- `(n+1)*(Δ[A054861(n)]+1)` -/
def P15256219602244215863.Spec : Prop :=
  ∀ n, P15256219602244215863.a n = A364222 (n + 1)

end A364222

/-! ## A364222.P16304136095889600886

`(n+1)*(A007949(n+1)+1)`
-/

namespace A364222.P16304136095889600886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A007949 (n + 1) + 1)

end

end A364222.P16304136095889600886

namespace A364222

/-- `(n+1)*(A007949(n+1)+1)` -/
def P16304136095889600886.Spec : Prop :=
  ∀ n, P16304136095889600886.a n = A364222 (n + 1)

end A364222

/-! ## A364222.P3186242953123117036

`(n+1)*(A366922(n+1)-1)`
-/

namespace A364222.P3186242953123117036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A366922 (n + 1) - 1)

end

end A364222.P3186242953123117036

namespace A364222

/-- `(n+1)*(A366922(n+1)-1)` -/
def P3186242953123117036.Spec : Prop :=
  ∀ n, P3186242953123117036.a n = A364222 (n + 1)

end A364222

/-! ## A364222.P415285949383630241

`(n+1)*A001511(A064989(n+1))`
-/

namespace A364222.P415285949383630241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001511 (A064989 (n + 1)).toNat

end

end A364222.P415285949383630241

namespace A364222

/-- `(n+1)*A001511(A064989(n+1))` -/
def P415285949383630241.Spec : Prop :=
  ∀ n, P415285949383630241.a n = A364222 (n + 1)

end A364222

/-! ## A364222.P14875910765847376555

`(n+1)*A072078(A000265(n+1))`
-/

namespace A364222.P14875910765847376555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A072078 (A000265 (n + 1)).toNat

end

end A364222.P14875910765847376555

namespace A364222

/-- `(n+1)*A072078(A000265(n+1))` -/
def P14875910765847376555.Spec : Prop :=
  ∀ n, P14875910765847376555.a n = A364222 (n + 1)

end A364222

/-! ## A364222.P7527280568253149549

`(n+1)*A072078(A038500(n+1))`
-/

namespace A364222.P7527280568253149549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A072078 (A038500 (n + 1)).toNat

end

end A364222.P7527280568253149549

namespace A364222

/-- `(n+1)*A072078(A038500(n+1))` -/
def P7527280568253149549.Spec : Prop :=
  ∀ n, P7527280568253149549.a n = A364222 (n + 1)

end A364222

/-! ## A364222.P17875637405615150051

`(n+1)*A254046(A003602(n+1))`
-/

namespace A364222.P17875637405615150051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A254046 (A003602 (n + 1)).toNat

end

end A364222.P17875637405615150051

namespace A364222

/-- `(n+1)*A254046(A003602(n+1))` -/
def P17875637405615150051.Spec : Prop :=
  ∀ n, P17875637405615150051.a n = A364222 (n + 1)

end A364222

/-! ## A364222.P13821337599610982477

`(n+1)*A001511(A318509(n+1))`
-/

namespace A364222.P13821337599610982477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001511 (A318509 (n + 1)).toNat

end

end A364222.P13821337599610982477

namespace A364222

/-- `(n+1)*A001511(A318509(n+1))` -/
def P13821337599610982477.Spec : Prop :=
  ∀ n, P13821337599610982477.a n = A364222 (n + 1)

end A364222

/-! ## A364222.P10286878280146546551

`(n+1)*A001511(A348747(n+1))`
-/

namespace A364222.P10286878280146546551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001511 (A348747 (n + 1)).toNat

end

end A364222.P10286878280146546551

namespace A364222

/-- `(n+1)*A001511(A348747(n+1))` -/
def P10286878280146546551.Spec : Prop :=
  ∀ n, P10286878280146546551.a n = A364222 (n + 1)

end A364222

/-! ## A364222.P182038108471920641

`(n+1)*A001227(A370180(n+1))`
-/

namespace A364222.P182038108471920641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001227 (A370180 (n + 1)).toNat

end

end A364222.P182038108471920641

namespace A364222

/-- `(n+1)*A001227(A370180(n+1))` -/
def P182038108471920641.Spec : Prop :=
  ∀ n, P182038108471920641.a n = A364222 (n + 1)

end A364222

/-! ## A364222.P11188417872050758571

`(n+1)*A280509(A246200(n+1))`
-/

namespace A364222.P11188417872050758571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A280509 (A246200 (n + 1)).toNat

end

end A364222.P11188417872050758571

namespace A364222

/-- `(n+1)*A280509(A246200(n+1))` -/
def P11188417872050758571.Spec : Prop :=
  ∀ n, P11188417872050758571.a n = A364222 (n + 1)

end A364222

/-! ## A364222.P14512490422913055954

`∑{d}[n+1, A000010(#)*A080278((n+1)/#)]`
-/

namespace A364222.P14512490422913055954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A080278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364222.P14512490422913055954

namespace A364222

/-- `∑{d}[n+1, A000010(#)*A080278((n+1)/#)]` -/
def P14512490422913055954.Spec : Prop :=
  ∀ n, P14512490422913055954.a n = A364222 (n + 1)

end A364222

/-! ## A364222.P3665202709515560509

`∑{d}[n+1, A000203(#)*A117997((n+1)/#)]`
-/

namespace A364222.P3665202709515560509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A117997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364222.P3665202709515560509

namespace A364222

/-- `∑{d}[n+1, A000203(#)*A117997((n+1)/#)]` -/
def P3665202709515560509.Spec : Prop :=
  ∀ n, P3665202709515560509.a n = A364222 (n + 1)

end A364222

/-! ## A364222.P8995189729047138397

`∑{d}[n+1, A038500(#)*A195459((n+1)/#)]`
-/

namespace A364222.P8995189729047138397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038500 d * A195459 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364222.P8995189729047138397

namespace A364222

/-- `∑{d}[n+1, A038500(#)*A195459((n+1)/#)]` -/
def P8995189729047138397.Spec : Prop :=
  ∀ n, P8995189729047138397.a n = A364222 (n + 1)

end A364222

/-! ## A364222.P4930913209385803739

`∑{d}[n+1, A065332(#)*A193356((n+1)/#)]`
-/

namespace A364222.P4930913209385803739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065332 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364222.P4930913209385803739

namespace A364222

/-- `∑{d}[n+1, A065332(#)*A193356((n+1)/#)]` -/
def P4930913209385803739.Spec : Prop :=
  ∀ n, P4930913209385803739.a n = A364222 (n + 1)

end A364222

/-! ## A364222.P2236791594032300065

`∑{d}[n+1, A072079(#)*A319997((n+1)/#)]`
-/

namespace A364222.P2236791594032300065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072079 d * A319997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364222.P2236791594032300065

namespace A364222

/-- `∑{d}[n+1, A072079(#)*A319997((n+1)/#)]` -/
def P2236791594032300065.Spec : Prop :=
  ∀ n, P2236791594032300065.a n = A364222 (n + 1)

end A364222

/-! ## A364222.P4184740605639818448

`(n+1)*A355583(A038500(A355582(n+1)))`
-/

namespace A364222.P4184740605639818448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A355583 (A038500 (A355582 (n + 1)).toNat).toNat

end

end A364222.P4184740605639818448

namespace A364222

/-- `(n+1)*A355583(A038500(A355582(n+1)))` -/
def P4184740605639818448.Spec : Prop :=
  ∀ n, P4184740605639818448.a n = A364222 (n + 1)

end A364222

/-! ## A364222.P643366808957831164

`(n+1)*Δ[A004128(n)]`
-/

namespace A364222.P643366808957831164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A364222.P643366808957831164

namespace A364222

/-- `(n+1)*Δ[A004128(n)]` -/
def P643366808957831164.Spec : Prop :=
  ∀ n, P643366808957831164.a n = A364222 (n + 1)

end A364222

/-!
# A364223: Expansion of Sum_{k>=0} 5^k * x^(5^k) / (1 - x^(5^k))^2.

The programs for A364223, the canonical program `A364223.P1522841790734885770` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364223 has offset 1).

The definition of A364223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364223.P1522841790734885770

`(n+1)*(val(n+1, 5)+1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A364223

/-- `(n+1)*(val(n+1, 5)+1)` -/
def P1522841790734885770.Spec : Prop :=
  ∀ n, (P1522841790734885770.a n : ℤ) = A364223 (n + 1)

theorem P1522841790734885770.correct : P1522841790734885770.Spec := by
  intro n
  simp only [A364223, Nat.add_sub_cancel]

end A364223

/-! ## A364223.P14454554001414633197

`(n+1)*A055457(n+1)`
-/

namespace A364223.P14454554001414633197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055457 (n + 1)

end

end A364223.P14454554001414633197

namespace A364223

/-- `(n+1)*A055457(n+1)` -/
def P14454554001414633197.Spec : Prop :=
  ∀ n, P14454554001414633197.a n = A364223 (n + 1)

end A364223

/-! ## A364223.P1873979648082972790

`(Δ[A027868(n)]+1)*(n+1)`
-/

namespace A364223.P1873979648082972790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1) * (n + 1 : ℤ)

end

end A364223.P1873979648082972790

namespace A364223

/-- `(Δ[A027868(n)]+1)*(n+1)` -/
def P1873979648082972790.Spec : Prop :=
  ∀ n, P1873979648082972790.a n = A364223 (n + 1)

end A364223

/-! ## A364223.P3651101458076347663

`(n+1)*(A112765(n+1)+1)`
-/

namespace A364223.P3651101458076347663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A112765 (n + 1) + 1)

end

end A364223.P3651101458076347663

namespace A364223

/-- `(n+1)*(A112765(n+1)+1)` -/
def P3651101458076347663.Spec : Prop :=
  ∀ n, P3651101458076347663.a n = A364223 (n + 1)

end A364223

/-! ## A364223.P11684767641978007989

`(n+1)*A051064(A064989(n+1))`
-/

namespace A364223.P11684767641978007989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051064 (A064989 (n + 1)).toNat

end

end A364223.P11684767641978007989

namespace A364223

/-- `(n+1)*A051064(A064989(n+1))` -/
def P11684767641978007989.Spec : Prop :=
  ∀ n, P11684767641978007989.a n = A364223 (n + 1)

end A364223

/-! ## A364223.P10354060496006678106

`(n+1)*A001227(A132741(n+1))`
-/

namespace A364223.P10354060496006678106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001227 (A132741 (n + 1)).toNat

end

end A364223.P10354060496006678106

namespace A364223

/-- `(n+1)*A001227(A132741(n+1))` -/
def P10354060496006678106.Spec : Prop :=
  ∀ n, P10354060496006678106.a n = A364223 (n + 1)

end A364223

/-! ## A364223.P17146531058357111879

`(n+1)*A355583(A343431(n+1))`
-/

namespace A364223.P17146531058357111879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A355583 (A343431 (n + 1)).toNat

end

end A364223.P17146531058357111879

namespace A364223

/-- `(n+1)*A355583(A343431(n+1))` -/
def P17146531058357111879.Spec : Prop :=
  ∀ n, P17146531058357111879.a n = A364223 (n + 1)

end A364223

/-! ## A364223.P11337597945086874749

`∑{d}[n+1, A000010(#)*A339747((n+1)/#)]`
-/

namespace A364223.P11337597945086874749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A339747 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364223.P11337597945086874749

namespace A364223

/-- `∑{d}[n+1, A000010(#)*A339747((n+1)/#)]` -/
def P11337597945086874749.Spec : Prop :=
  ∀ n, P11337597945086874749.a n = A364223 (n + 1)

end A364223

/-! ## A364223.P16503918898478442371

`∑{d}[n+1, A060904(#)*A359101((n+1)/#)]`
-/

namespace A364223.P16503918898478442371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060904 d * A359101 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364223.P16503918898478442371

namespace A364223

/-- `∑{d}[n+1, A060904(#)*A359101((n+1)/#)]` -/
def P16503918898478442371.Spec : Prop :=
  ∀ n, P16503918898478442371.a n = A364223 (n + 1)

end A364223

/-! ## A364223.P12692376568805437060

`(n+1)*A001511(A348747(A348747(n+1)))`
-/

namespace A364223.P12692376568805437060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001511 (A348747 (A348747 (n + 1)).toNat).toNat

end

end A364223.P12692376568805437060

namespace A364223

/-- `(n+1)*A001511(A348747(A348747(n+1)))` -/
def P12692376568805437060.Spec : Prop :=
  ∀ n, P12692376568805437060.a n = A364223 (n + 1)

end A364223

/-! ## A364223.P13909228307684928461

`(n+1)*Δ[A191610(n+1)]`
-/

namespace A364223.P13909228307684928461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A364223.P13909228307684928461

namespace A364223

/-- `(n+1)*Δ[A191610(n+1)]` -/
def P13909228307684928461.Spec : Prop :=
  ∀ n, P13909228307684928461.a n = A364223 (n + 1)

end A364223

/-! ## A364223.P13883937828275458406

`Δ[A246817(n+1)/5]`
-/

namespace A364223.P13883937828275458406
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246817 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A364223.P13883937828275458406

namespace A364223

/-- `Δ[A246817(n+1)/5]` -/
def P13883937828275458406.Spec : Prop :=
  ∀ n, P13883937828275458406.a n = (A364223 (n + 1) : ℚ)

end A364223

/-! ## A364223.P12229151341736466700

`Δ[A246839(n)]+1+n`
-/

namespace A364223.P12229151341736466700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A364223.P12229151341736466700

namespace A364223

/-- `Δ[A246839(n)]+1+n` -/
def P12229151341736466700.Spec : Prop :=
  ∀ n, P12229151341736466700.a n = A364223 (n + 1)

end A364223

/-! ## A364223.P8969943209204099498

`(n+1)*A160094(A007091(n+1))`
-/

namespace A364223.P8969943209204099498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A160094 (A007091 (n + 1)).toNat

end

end A364223.P8969943209204099498

namespace A364223

/-- `(n+1)*A160094(A007091(n+1))` -/
def P8969943209204099498.Spec : Prop :=
  ∀ n, P8969943209204099498.a n = A364223 (n + 1)

end A364223

/-! ## A364223.P1956142793393806812

`(n+1)*A160094(A014263(n+2))`
-/

namespace A364223.P1956142793393806812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A160094 (A014263 (n + 2)).toNat

end

end A364223.P1956142793393806812

namespace A364223

/-- `(n+1)*A160094(A014263(n+2))` -/
def P1956142793393806812.Spec : Prop :=
  ∀ n, P1956142793393806812.a n = A364223 (n + 1)

end A364223

/-! ## A364223.P10286834455737417217

`(n+1)*A112765(A385978(n+1))`
-/

namespace A364223.P10286834455737417217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A112765 (A385978 (n + 1)).toNat

end

end A364223.P10286834455737417217

namespace A364223

/-- `(n+1)*A112765(A385978(n+1))` -/
def P10286834455737417217.Spec : Prop :=
  ∀ n, P10286834455737417217.a n = A364223 (n + 1)

end A364223

/-!
# A364224: Expansion of Sum_{k>=0} 7^k * x^(7^k) / (1 - x^(7^k))^2.

The programs for A364224, the canonical program `A364224.P4210820034480673254` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364224 has offset 1).

The definition of A364224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364224.P4210820034480673254

`(n+1)*(val(n+1, 7)+1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A364224

/-- `(n+1)*(val(n+1, 7)+1)` -/
def P4210820034480673254.Spec : Prop :=
  ∀ n, (P4210820034480673254.a n : ℤ) = A364224 (n + 1)

theorem P4210820034480673254.correct : P4210820034480673254.Spec := by
  intro n
  simp only [A364224, Nat.add_sub_cancel]

end A364224

/-! ## A364224.P1254753970919691944

`(n+1)*(A214411(n+1)+1)`
-/

namespace A364224.P1254753970919691944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A214411 (n + 1) + 1)

end

end A364224.P1254753970919691944

namespace A364224

/-- `(n+1)*(A214411(n+1)+1)` -/
def P1254753970919691944.Spec : Prop :=
  ∀ n, P1254753970919691944.a n = A364224 (n + 1)

end A364224

/-! ## A364224.P14617668795478918030

`(n+1)*A373217(n+1)`
-/

namespace A364224.P14617668795478918030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A373217 (n + 1)

end

end A364224.P14617668795478918030

namespace A364224

/-- `(n+1)*A373217(n+1)` -/
def P14617668795478918030.Spec : Prop :=
  ∀ n, P14617668795478918030.a n = A364224 (n + 1)

end A364224

/-! ## A364224.P13829441185285559424

`(n+1)*(Δ[A054896(n)]+1)`
-/

namespace A364224.P13829441185285559424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n + 1)

end

end A364224.P13829441185285559424

namespace A364224

/-- `(n+1)*(Δ[A054896(n)]+1)` -/
def P13829441185285559424.Spec : Prop :=
  ∀ n, P13829441185285559424.a n = A364224 (n + 1)

end A364224

/-! ## A364224.P3308856748401578871

`(n+1)*A055457(A064989(n+1))`
-/

namespace A364224.P3308856748401578871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055457 (A064989 (n + 1)).toNat

end

end A364224.P3308856748401578871

namespace A364224

/-- `(n+1)*A055457(A064989(n+1))` -/
def P3308856748401578871.Spec : Prop :=
  ∀ n, P3308856748401578871.a n = A364224 (n + 1)

end A364224

/-! ## A364224.P6402997245297845771

`∑{d}[n+1, A000010(#)*A088842((n+1)/#)]`
-/

namespace A364224.P6402997245297845771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A088842 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364224.P6402997245297845771

namespace A364224

/-- `∑{d}[n+1, A000010(#)*A088842((n+1)/#)]` -/
def P6402997245297845771.Spec : Prop :=
  ∀ n, P6402997245297845771.a n = A364224 (n + 1)

end A364224

/-! ## A364224.P6308963210758737533

`∑{d}[n+1, A268354(#)*A359102((n+1)/#)]`
-/

namespace A364224.P6308963210758737533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A268354 d * A359102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364224.P6308963210758737533

namespace A364224

/-- `∑{d}[n+1, A268354(#)*A359102((n+1)/#)]` -/
def P6308963210758737533.Spec : Prop :=
  ∀ n, P6308963210758737533.a n = A364224 (n + 1)

end A364224

/-! ## A364224.P16170854728749674188

`(n+1)*A160094(A007093(n+1))`
-/

namespace A364224.P16170854728749674188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A160094 (A007093 (n + 1)).toNat

end

end A364224.P16170854728749674188

namespace A364224

/-- `(n+1)*A160094(A007093(n+1))` -/
def P16170854728749674188.Spec : Prop :=
  ∀ n, P16170854728749674188.a n = A364224 (n + 1)

end A364224

/-!
# A364225: a(n) = number of k <= m such that rad(k) | m, where m = A025487(n) and rad(n) = A007947(n).

The programs for A364225, there is no canonical definition to state claims against.
-/

/-! ## A364225.P13268547791193504787

`A010846(A025487(n+1))`
-/

namespace A364225.P13268547791193504787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A025487 (n + 1)).toNat

end

end A364225.P13268547791193504787

/-! ## A364225.P2347418462065213014

`A394753(A331119(n+1))`
-/

namespace A364225.P2347418462065213014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394753 (A331119 (n + 1)).toNat

end

end A364225.P2347418462065213014

/-! ## A364225.P7998491445921481913

`A010846(record[A046523(n+1)])`
-/

namespace A364225.P7998491445921481913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A364225.P7998491445921481913

/-! ## A364225.P6920593904814390322

`A010846(record[A329899(n+1)])`
-/

namespace A364225.P6920593904814390322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A364225.P6920593904814390322

/-! ## A364225.P9824475807715045809

`A008479(A247451(n+1)*A307107(n+1)*A247451(n+1))`
-/

namespace A364225.P9824475807715045809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (A247451 (n + 1) * A307107 (n + 1) * A247451 (n + 1)).toNat

end

end A364225.P9824475807715045809

/-!
# A364226: Triangle read by rows: T(n, k) is the number of n X n matrices of rank k using all the first n^2 prime numbers.

The programs for A364226, there is no canonical definition to state claims against.
-/

/-! ## A364226.P2617464815615288545

`A004013(A089661(n))`
-/

namespace A364226.P2617464815615288545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (A089661 n).toNat

end

end A364226.P2617464815615288545

/-!
# A364229: a(n) is the number of n X n nonsingular Hermitian Toeplitz matrices using all the integers 1, 2, ..., n and with all off-diagonal elements purely imaginary.

The programs for A364229, there is no canonical definition to state claims against.
-/

/-! ## A364229.P5945619407122805167

`A364228(∑[n+1])`
-/

namespace A364229.P5945619407122805167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364228 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364229.P5945619407122805167

/-! ## A364229.P17901545030650766711

`record[A364228(n+1)]`
-/

namespace A364229.P17901545030650766711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364229.P17901545030650766711

/-! ## A364229.P869072011967438977

`A131451(n+1)-A007814(A213226(n))`
-/

namespace A364229.P869072011967438977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131451 (n + 1) - A007814 (A213226 n).toNat

end

end A364229.P869072011967438977

/-! ## A364229.P13356748826578506875

`A000142(n+1)-A345197(A022811(n))`
-/

namespace A364229.P13356748826578506875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A345197 (A022811 n).toNat

end

end A364229.P13356748826578506875

/-!
# A364230: Triangle read by rows: T(n, k) is the number of n X n symmetric Toeplitz matrices of rank k using all the integers 1, 2, ..., n.

The programs for A364230, there is no canonical definition to state claims against.
-/

/-! ## A364230.P1861464673320179977

`A364233(A135381(n+1))`
-/

namespace A364230.P1861464673320179977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364233 (A135381 (n + 1)).toNat

end

end A364230.P1861464673320179977

/-! ## A364230.P4272958390469173629

`A364233(A135382(n+2))`
-/

namespace A364230.P4272958390469173629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364233 (A135382 (n + 2)).toNat

end

end A364230.P4272958390469173629

/-! ## A364230.P14117590644748144384

`A364233(A351831(n+2))`
-/

namespace A364230.P14117590644748144384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364233 (A351831 (n + 2)).toNat

end

end A364230.P14117590644748144384

/-! ## A364230.P11901578982929317064

`lcm(A103299(n), A364233(n+1))`
-/

namespace A364230.P11901578982929317064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103299 n) (A364233 (n + 1))

end

end A364230.P11901578982929317064

/-! ## A364230.P4865587182404425872

`A364233(n+1)%Δ[A094380(n)]`
-/

namespace A364230.P4865587182404425872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364233 (n + 1)) (f1 (n + 1) - f1 n)

end

end A364230.P4865587182404425872

/-!
# A364231: a(n) is the number of n X n nonsingular symmetric Toeplitz matrices using all the integers 1, 2, ..., n.

The programs for A364231, there is no canonical definition to state claims against.
-/

/-! ## A364231.P11075588126565883620

`A364230(∑[n+1])`
-/

namespace A364231.P11075588126565883620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364230 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364231.P11075588126565883620

/-! ## A364231.P18310935062110465305

`record[A364230(n+1)]`
-/

namespace A364231.P18310935062110465305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364231.P18310935062110465305

/-! ## A364231.P5211485672165191832

`A364791(n+1)+A352824(A000104(n))`
-/

namespace A364231.P5211485672165191832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364791 (n + 1) + A352824 (A000104 n).toNat

end

end A364231.P5211485672165191832

/-! ## A364231.P4930449623930460047

`A364791(n+1)+A227189(A205540(n+3))`
-/

namespace A364231.P4930449623930460047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364791 (n + 1) + A227189 (A205540 (n + 3)).toNat

end

end A364231.P4930449623930460047

/-!
# A364232: Expansion of Sum_{k>=0} x^(3*k+1) / (1 + x^(3*k+1))^2.

The programs for A364232, the canonical program `A364232.P3353364334386472060` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364232 has offset 1).

The definition of A364232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364232.P3353364334386472060

`∑{d}[n+1, A001817(#)*A325596((n+1)/#)]`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A364232

/-- `∑{d}[n+1, A001817(#)*A325596((n+1)/#)]` -/
def P3353364334386472060.Spec : Prop :=
  ∀ n, P3353364334386472060.a n = A364232 (n + 1)

theorem P3353364334386472060.correct : P3353364334386472060.Spec := by
  intro n
  simp only [A364232, Nat.add_sub_cancel]

end A364232

/-!
# A364233: Triangle read by rows: T(n, k) is the number of n X n symmetric Toeplitz matrices of rank k using all the first n prime numbers integers.

The programs for A364233, there is no canonical definition to state claims against.
-/

/-! ## A364233.P5462489042471866157

`A364230(A135382(n+1)+1)`
-/

namespace A364233.P5462489042471866157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364230 (A135382 (n + 1) + 1).toNat

end

end A364233.P5462489042471866157

/-!
# A364234: a(n) is the number of n X n nonsingular symmetric Toeplitz matrices using all the first n prime numbers.

The programs for A364234, there is no canonical definition to state claims against.
-/

/-! ## A364234.P10205685461435448682

`A364233(∑[n+1])`
-/

namespace A364234.P10205685461435448682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364233 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364234.P10205685461435448682

/-! ## A364234.P671996924174644950

`record[A364233(n+1)]`
-/

namespace A364234.P671996924174644950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364234.P671996924174644950

/-! ## A364234.P7702750496295740017

`A000142(n+1)-A359327(A006134(n))`
-/

namespace A364234.P7702750496295740017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A359327 (A006134 n).toNat

end

end A364234.P7702750496295740017

/-! ## A364234.P1308999759446894120

`A131451(n+1)-A335885(A173715(n+2))`
-/

namespace A364234.P1308999759446894120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131451 (n + 1) - A335885 (A173715 (n + 2)).toNat

end

end A364234.P1308999759446894120

/-!
# A364235: Expansion of Sum_{k>=0} x^(3*k+2) / (1 + x^(3*k+2))^2.

The programs for A364235, the canonical program `A364235.P979171957751888080` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364235 has offset 1).

The definition of A364235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364235.P979171957751888080

`∑{d}[n+1, A001822(#)*A325596((n+1)/#)]`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A364235

/-- `∑{d}[n+1, A001822(#)*A325596((n+1)/#)]` -/
def P979171957751888080.Spec : Prop :=
  ∀ n, P979171957751888080.a n = A364235 (n + 1)

theorem P979171957751888080.correct : P979171957751888080.Spec := by
  intro n
  simp only [A364235, Nat.add_sub_cancel]

end A364235

/-!
# A364236: a(1) = 1. For n > 1, if a(n-1) is a novel term, a(n) = d(a(n-1)), else if a(n-1) is a repeat term seen k (>1) times, a(n) = a(n-1) + d(k-1), where d is the divisor counting function A000005.

The programs for A364236, there is no canonical definition to state claims against.
-/

/-! ## A364236.P15987079713360511534

`A124223(n+1)+A007814(A004006(3*(n+1)))`
-/

namespace A364236.P15987079713360511534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124223 (n + 1) + A007814 (A004006 (3 * (n + 1))).toNat

end

end A364236.P15987079713360511534

/-! ## A364236.P14575208337278827112

`A124767(A270831(2*(n+1))-A000005(n+1))`
-/

namespace A364236.P14575208337278827112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A270831 (2 * (n + 1)) - A000005 (n + 1)).toNat

end

end A364236.P14575208337278827112

/-! ## A364236.P10156385470208613252

`A319416(A202087(2*n+1)%A210594(2*n+1))`
-/

namespace A364236.P10156385470208613252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (Int.tmod (A202087 (2 * n + 1)) (A210594 (2 * n + 1))).toNat

end

end A364236.P10156385470208613252

/-! ## A364236.P5397313295779758767

`A077982(A148041(n))`
-/

namespace A364236.P5397313295779758767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077982 (A148041 n).toNat

end

end A364236.P5397313295779758767

/-! ## A364236.P16239336910967634598

`A261126(A033054(n+2))`
-/

namespace A364236.P16239336910967634598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261126 (A033054 (n + 2)).toNat

end

end A364236.P16239336910967634598

/-!
# A364237: a(n) is the number of non-equivalent permutations of {1,2,...,2n-1} such that no subset of consecutive terms from the permutation sums to 0 modulo 2n, where two permutations are equivalent if one can be obtained from the other by multiplying every entry with an integer relatively prime to 2n and/or reversing the permutation.

The programs for A364237, there is no canonical definition to state claims against.
-/

/-! ## A364237.P557505869517649384

`A086614(A066185(n))`
-/

namespace A364237.P557505869517649384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086614 (A066185 n).toNat

end

end A364237.P557505869517649384

/-! ## A364237.P11046562169724873366

`A271410(A001142(n))`
-/

namespace A364237.P11046562169724873366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 (A001142 n).toNat

end

end A364237.P11046562169724873366

/-!
# A364238: Indices of records in A094605.

The programs for A364238, there is no canonical definition to state claims against.
-/

/-! ## A364238.P14233129595496180095

`∪[A038183(n), A094604(n)+1]`
-/

namespace A364238.P14233129595496180095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094604 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364238.P14233129595496180095

/-!
# A364239: Indices of records in A363345.

The programs for A364239, there is no canonical definition to state claims against.
-/

/-! ## A364239.P18085888921913837666

`A285523(2*a(n-1)+1)` with `a(0)=1, a(1)=4`
-/

namespace A364239.P18085888921913837666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A285523 (2 * a (n - 1) + 1).toNat

end

end A364239.P18085888921913837666

/-!
# A364242: a(n) is the smallest positive integer such that a(n) and a(n)+2 are both products of n distinct prime factors.

The programs for A364242, there is no canonical definition to state claims against.
-/

/-! ## A364242.P10684611883934090263

`A088077(n+1)-1`
-/

namespace A364242.P10684611883934090263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088077 (n + 1) - 1

end

end A364242.P10684611883934090263

/-! ## A364242.P16533118502581838794

`A104575(A187471(n+1))+A088077(n+1)`
-/

namespace A364242.P16533118502581838794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104575 (A187471 (n + 1)).toNat + A088077 (n + 1)

end

end A364242.P16533118502581838794

/-! ## A364242.P3374903130949133558

`A297326(A045778(n+1))+A088077(n+1)`
-/

namespace A364242.P3374903130949133558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297326 (A045778 (n + 1)).toNat + A088077 (n + 1)

end

end A364242.P3374903130949133558

/-! ## A364242.P9886894689061884569

`A230206(A367764(n+1))+A088077(n+1)`
-/

namespace A364242.P9886894689061884569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230206 (A367764 (n + 1)).toNat + A088077 (n + 1)

end

end A364242.P9886894689061884569

/-! ## A364242.P7595806383903093289

`A297326(A331600(n+1))+A088077(n+1)`
-/

namespace A364242.P7595806383903093289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297326 (A331600 (n + 1)).toNat + A088077 (n + 1)

end

end A364242.P7595806383903093289

/-!
# A364243: a(n) = A108625(2*n-1, n-1) for n >= 1.

The programs for A364243, there is no canonical definition to state claims against.
-/

/-! ## A364243.P17359932074054343717

`A108625(A051682(n+1))`
-/

namespace A364243.P17359932074054343717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A051682 (n + 1)).toNat

end

end A364243.P17359932074054343717

/-! ## A364243.P17501219098569258427

`A108625(∑[A017077(n)+n])`
-/

namespace A364243.P17501219098569258427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A364243.P17501219098569258427

/-! ## A364243.P16854225695491368464

`A108625(A060544(n+1)+n)`
-/

namespace A364243.P16854225695491368464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A060544 (n + 1) + (n : ℤ)).toNat

end

end A364243.P16854225695491368464

/-! ## A364243.P11318080212061241841

`A108625(A000217(3*n+1)+n)`
-/

namespace A364243.P11318080212061241841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A000217 (3 * n + 1) + (n : ℤ)).toNat

end

end A364243.P11318080212061241841

/-! ## A364243.P6058136906174154264

`A108625(A238531(3*n+2)+n-2)`
-/

namespace A364243.P6058136906174154264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108625 (A238531 (3 * n + 2) + ((n : ℤ) - 2)).toNat

end

end A364243.P6058136906174154264

/-!
# A364244: a(n) = A143007(2*n-1, n-1) for n >= 1.

The programs for A364244, there is no canonical definition to state claims against.
-/

/-! ## A364244.P4429927649385216515

`A143007(Δ[A007586(n)])`
-/

namespace A364244.P4429927649385216515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (f1 (n + 1) - f1 n).toNat

end

end A364244.P4429927649385216515

/-! ## A364244.P12655731784166940510

`A143007(A051682(n+1))`
-/

namespace A364244.P12655731784166940510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A051682 (n + 1)).toNat

end

end A364244.P12655731784166940510

/-! ## A364244.P501489652714356551

`A143007(A000217(3*n+1)+n)`
-/

namespace A364244.P501489652714356551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A000217 (3 * n + 1) + (n : ℤ)).toNat

end

end A364244.P501489652714356551

/-! ## A364244.P6810643193478230211

`A143007(A062708(n+1))`
-/

namespace A364244.P6810643193478230211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A062708 (n + 1)).toNat

end

end A364244.P6810643193478230211

/-! ## A364244.P5202396262155316800

`A143007(A171452(3*(n+1))-A028310(2*(n+1)))`
-/

namespace A364244.P5202396262155316800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143007 (A171452 (3 * (n + 1)) - A028310 (2 * (n + 1))).toNat

end

end A364244.P5202396262155316800

/-!
# A364245: Number of parts in all partitions of 2n into parts with multiplicity <= n.

The programs for A364245, there is no canonical definition to state claims against.
-/

/-! ## A364245.P4258061371095429957

`A210485(∑[4*n])`
-/

namespace A364245.P4258061371095429957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364245.P4258061371095429957

/-! ## A364245.P16814440379136149117

`A210485(A046092(n))+C(n, n+1)`
-/

namespace A364245.P16814440379136149117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (A046092 n).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A364245.P16814440379136149117

/-! ## A364245.P9741476557763028483

`A210485(A046092(n))%A251269(n+1)`
-/

namespace A364245.P9741476557763028483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210485 (A046092 n).toNat) (A251269 (n + 1))

end

end A364245.P9741476557763028483

/-! ## A364245.P7028946060395719635

`A210485(A046092(n))^gcd(n, A016777(n))`
-/

namespace A364245.P7028946060395719635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (A046092 n).toNat ^ Int.gcd (n : ℤ) (A016777 n)

end

end A364245.P7028946060395719635

/-! ## A364245.P9654567382670996324

`A210485(A046092(n))+A000007(3*n+1)`
-/

namespace A364245.P9654567382670996324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (A046092 n).toNat + A000007 (3 * n + 1)

end

end A364245.P9654567382670996324

/-! ## A364245.P15027179279853545442

`A227595(3*n+2)+A210485(A046092(n))`
-/

namespace A364245.P15027179279853545442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227595 (3 * n + 2) + A210485 (A046092 n).toNat

end

end A364245.P15027179279853545442

/-! ## A364245.P16381897109394750884

`A210485(A046092(n))-A302048(A000384(n))`
-/

namespace A364245.P16381897109394750884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (A046092 n).toNat - A302048 (A000384 n).toNat

end

end A364245.P16381897109394750884

/-! ## A364245.P4769119223306252032

`A210485(A046092(n))-A302048(A301686(n))`
-/

namespace A364245.P4769119223306252032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210485 (A046092 n).toNat - A302048 (A301686 n).toNat

end

end A364245.P4769119223306252032

/-!
# A364248: For n >= 3, a(n) is the least r >= 0 such that the elliptic equation y^2 = n^3 + n^2 + 2*r*n + r^2 has an integer solution.

The programs for A364248, there is no canonical definition to state claims against.
-/

/-! ## A364248.P12444025014505848161

`(∑[n]+n)%A299970(A008292(2*n+1))`
-/

namespace A364248.P12444025014505848161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) (A299970 (A008292 (2 * n + 1)).toNat)

end

end A364248.P12444025014505848161

/-! ## A364248.P457600312638268425

`A000096(n)%A090084(A157210(2*n))`
-/

namespace A364248.P457600312638268425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 n) (A090084 (A157210 (2 * n)).toNat)

end

end A364248.P457600312638268425

/-!
# A364250: a(n) = A364249(n) mod 2.

The programs for A364250, there is no canonical definition to state claims against.
-/

/-! ## A364250.P12005265189012418598

`and(1, A349348(n+1))`
-/

namespace A364250.P12005265189012418598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A349348 (n + 1))

end

end A364250.P12005265189012418598

/-! ## A364250.P8692673747061700352

`and(1, A364249(n+1))`
-/

namespace A364250.P8692673747061700352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A364249 (n + 1))

end

end A364250.P8692673747061700352

/-! ## A364250.P908360163695054442

`A000035(A364249(n+1)²)`
-/

namespace A364250.P908360163695054442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A364249 (n + 1) ^ 2).toNat

end

end A364250.P908360163695054442

/-! ## A364250.P2182013204240880969

`A000035(A364249(n+1)+2*n)`
-/

namespace A364250.P2182013204240880969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A364249 (n + 1) + (2 * n : ℤ)).toNat

end

end A364250.P2182013204240880969

/-! ## A364250.P6291348613720316391

`A000035(A349348(n+1)+2*n)`
-/

namespace A364250.P6291348613720316391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A349348 (n + 1) + (2 * n : ℤ)).toNat

end

end A364250.P6291348613720316391

/-! ## A364250.P13096621841459355908

`A000035((A349348(n+1)+2)²)`
-/

namespace A364250.P13096621841459355908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((A349348 (n + 1) + 2) ^ 2).toNat

end

end A364250.P13096621841459355908

/-! ## A364250.P14458247724850116363

`A000035(A349348(n+1)²)`
-/

namespace A364250.P14458247724850116363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A349348 (n + 1) ^ 2).toNat

end

end A364250.P14458247724850116363

/-!
# A364251: a(n) = 1 if n is of the form q*(2^k), where q is one of the Mersenne primes (A000668) and k >= 0, otherwise a(n) = 0.

The programs for A364251, the canonical program `A364251.P5010928249471816249` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364251 has offset 1).

The definition of A364251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364251.P6202930510539598820

`A209229(A335876(2*(n+1)))`
-/

namespace A364251.P6202930510539598820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A335876 (2 * (n + 1))).toNat

end

end A364251.P6202930510539598820

namespace A364251

/-- `A209229(A335876(2*(n+1)))` -/
def P6202930510539598820.Spec : Prop :=
  ∀ n, P6202930510539598820.a n = A364251 (n + 1)

end A364251

/-! ## A364251.P2222127169278236557

`A023531((A336362(n+1)+2)²)`
-/

namespace A364251.P2222127169278236557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 ((A336362 (n + 1) + 2) ^ 2).toNat

end

end A364251.P2222127169278236557

namespace A364251

/-- `A023531((A336362(n+1)+2)²)` -/
def P2222127169278236557.Spec : Prop :=
  ∀ n, P2222127169278236557.a n = A364251 (n + 1)

end A364251

/-! ## A364251.P6595525554573524374

`A147645(n+1)*A340371(n+1)`
-/

namespace A364251.P6595525554573524374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147645 (n + 1) * A340371 (n + 1)

end

end A364251.P6595525554573524374

namespace A364251

/-- `A147645(n+1)*A340371(n+1)` -/
def P6595525554573524374.Spec : Prop :=
  ∀ n, P6595525554573524374.a n = A364251 (n + 1)

end A364251

/-! ## A364251.P5836258106081389272

`A147645(n+1)*A353670(n+1)`
-/

namespace A364251.P5836258106081389272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147645 (n + 1) * A353670 (n + 1)

end

end A364251.P5836258106081389272

namespace A364251

/-- `A147645(n+1)*A353670(n+1)` -/
def P5836258106081389272.Spec : Prop :=
  ∀ n, P5836258106081389272.a n = A364251 (n + 1)

end A364251

/-! ## A364251.P4370201679879326970

`A336923(n+1)*A340373(n+1)`
-/

namespace A364251.P4370201679879326970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336923 (n + 1) * A340373 (n + 1)

end

end A364251.P4370201679879326970

namespace A364251

/-- `A336923(n+1)*A340373(n+1)` -/
def P4370201679879326970.Spec : Prop :=
  ∀ n, P4370201679879326970.a n = A364251 (n + 1)

end A364251

/-! ## A364251.P5010928249471816249

`A340373(n+1)*A340375(n+1)`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A364251

/-- `A340373(n+1)*A340375(n+1)` -/
def P5010928249471816249.Spec : Prop :=
  ∀ n, P5010928249471816249.a n = A364251 (n + 1)

theorem P5010928249471816249.correct : P5010928249471816249.Spec := by
  intro n
  simp only [A364251, Nat.add_sub_cancel]

end A364251

/-! ## A364251.P2246668304418004337

`A336923(n+1)*A353670(n+1)`
-/

namespace A364251.P2246668304418004337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336923 (n + 1) * A353670 (n + 1)

end

end A364251.P2246668304418004337

namespace A364251

/-- `A336923(n+1)*A353670(n+1)` -/
def P2246668304418004337.Spec : Prop :=
  ∀ n, P2246668304418004337.a n = A364251 (n + 1)

end A364251

/-! ## A364251.P11540781959626083730

`A336923(n+1)*A365421(n+1)`
-/

namespace A364251.P11540781959626083730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336923 (n + 1) * A365421 (n + 1)

end

end A364251.P11540781959626083730

namespace A364251

/-- `A336923(n+1)*A365421(n+1)` -/
def P11540781959626083730.Spec : Prop :=
  ∀ n, P11540781959626083730.a n = A364251 (n + 1)

end A364251

/-! ## A364251.P17134108198489372107

`A353670(n+1)*A364252(n+1)`
-/

namespace A364251.P17134108198489372107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353670 (n + 1) * A364252 (n + 1)

end

end A364251.P17134108198489372107

namespace A364251

/-- `A353670(n+1)*A364252(n+1)` -/
def P17134108198489372107.Spec : Prop :=
  ∀ n, P17134108198489372107.a n = A364251 (n + 1)

end A364251

/-! ## A364251.P12155666844933727453

`lcm(A147645(n+1), A304438(n+1))`
-/

namespace A364251.P12155666844933727453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A147645 (n + 1)) (A304438 (n + 1))

end

end A364251.P12155666844933727453

namespace A364251

/-- `lcm(A147645(n+1), A304438(n+1))` -/
def P12155666844933727453.Spec : Prop :=
  ∀ n, (P12155666844933727453.a n : ℤ) = A364251 (n + 1)

end A364251

/-! ## A364251.P7465803980802693484

`∑{d}[n+1, A087003(#)*A147645((n+1)/#)]`
-/

namespace A364251.P7465803980802693484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A147645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364251.P7465803980802693484

namespace A364251

/-- `∑{d}[n+1, A087003(#)*A147645((n+1)/#)]` -/
def P7465803980802693484.Spec : Prop :=
  ∀ n, P7465803980802693484.a n = A364251 (n + 1)

end A364251

/-! ## A364251.P2472572646658052139

`A209229(A000217(A336362(n+1)))`
-/

namespace A364251.P2472572646658052139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A000217 (A336362 (n + 1)).toNat).toNat

end

end A364251.P2472572646658052139

namespace A364251

/-- `A209229(A000217(A336362(n+1)))` -/
def P2472572646658052139.Spec : Prop :=
  ∀ n, P2472572646658052139.a n = A364251 (n + 1)

end A364251

/-! ## A364251.P2426528621865090326

`A341509(A000265(n+1)*A340373(n+1))`
-/

namespace A364251.P2426528621865090326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341509 (A000265 (n + 1) * A340373 (n + 1)).toNat

end

end A364251.P2426528621865090326

namespace A364251

/-- `A341509(A000265(n+1)*A340373(n+1))` -/
def P2426528621865090326.Spec : Prop :=
  ∀ n, P2426528621865090326.a n = A364251 (n + 1)

end A364251

/-! ## A364251.P7601735127953319826

`A209229(A341509((n+1)*A340373(n+1)))`
-/

namespace A364251.P7601735127953319826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A341509 ((n + 1 : ℤ) * A340373 (n + 1)).toNat).toNat

end

end A364251.P7601735127953319826

namespace A364251

/-- `A209229(A341509((n+1)*A340373(n+1)))` -/
def P7601735127953319826.Spec : Prop :=
  ∀ n, P7601735127953319826.a n = A364251 (n + 1)

end A364251

/-! ## A364251.P4252142045728798836

`A209229(A336362(n+1)+A336362(n+1)²)`
-/

namespace A364251.P4252142045728798836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A336362 (n + 1) + A336362 (n + 1) ^ 2).toNat

end

end A364251.P4252142045728798836

namespace A364251

/-- `A209229(A336362(n+1)+A336362(n+1)²)` -/
def P4252142045728798836.Spec : Prop :=
  ∀ n, P4252142045728798836.a n = A364251 (n + 1)

end A364251

/-! ## A364251.P8514893583632014309

`A209229(A002131(A002131(n+1))-(n+1))`
-/

namespace A364251.P8514893583632014309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A002131 (A002131 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A364251.P8514893583632014309

namespace A364251

/-- `A209229(A002131(A002131(n+1))-(n+1))` -/
def P8514893583632014309.Spec : Prop :=
  ∀ n, P8514893583632014309.a n = A364251 (n + 1)

end A364251

/-! ## A364251.P7568781904453399224

`A209229(A051953(2*(n+1)))-A209229(n+1)`
-/

namespace A364251.P7568781904453399224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A051953 (2 * (n + 1))).toNat - A209229 (n + 1)

end

end A364251.P7568781904453399224

namespace A364251

/-- `A209229(A051953(2*(n+1)))-A209229(n+1)` -/
def P7568781904453399224.Spec : Prop :=
  ∀ n, P7568781904453399224.a n = A364251 (n + 1)

end A364251

/-! ## A364251.P7834689579774894858

`A010055(A051953(2*(n+1)))-A010055(2*(n+1))`
-/

namespace A364251.P7834689579774894858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A051953 (2 * (n + 1))).toNat - A010055 (2 * (n + 1))

end

end A364251.P7834689579774894858

namespace A364251

/-- `A010055(A051953(2*(n+1)))-A010055(2*(n+1))` -/
def P7834689579774894858.Spec : Prop :=
  ∀ n, P7834689579774894858.a n = A364251 (n + 1)

end A364251

/-! ## A364251.P6039827987138411778

`A010051(A366275(A037277(A369033(n+1))))`
-/

namespace A364251.P6039827987138411778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A366275 (A037277 (A369033 (n + 1)).toNat).toNat).toNat

end

end A364251.P6039827987138411778

namespace A364251

/-- `A010051(A366275(A037277(A369033(n+1))))` -/
def P6039827987138411778.Spec : Prop :=
  ∀ n, P6039827987138411778.a n = A364251 (n + 1)

end A364251

/-! ## A364251.P7462731685252902308

`A304438(A000217(A000265(n+1)))²`
-/

namespace A364251.P7462731685252902308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (A000217 (A000265 (n + 1)).toNat).toNat ^ 2

end

end A364251.P7462731685252902308

namespace A364251

/-- `A304438(A000217(A000265(n+1)))²` -/
def P7462731685252902308.Spec : Prop :=
  ∀ n, P7462731685252902308.a n = A364251 (n + 1)

end A364251

/-!
# A364252: a(n) = 1 if n has no other prime factors than 2 and/or Mersenne primes, otherwise 0.

The programs for A364252, the canonical program `A364252.P12037896346580128472` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364252 has offset 1).

The definition of A364252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364252.P11586843298562784748

`A336923(∏{p}[n+1, #])`
-/

namespace A364252.P11586843298562784748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336923 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A364252.P11586843298562784748

namespace A364252

/-- `A336923(∏{p}[n+1, #])` -/
def P11586843298562784748.Spec : Prop :=
  ∀ n, P11586843298562784748.a n = A364252 (n + 1)

end A364252

/-! ## A364252.P12037896346580128472

`∏{p}[n+1, A340375(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A364252

/-- `∏{p}[n+1, A340375(#)]` -/
def P12037896346580128472.Spec : Prop :=
  ∀ n, P12037896346580128472.a n = A364252 (n + 1)

theorem P12037896346580128472.correct : P12037896346580128472.Spec := by
  intro n
  simp only [A364252, Nat.add_sub_cancel]

end A364252

/-! ## A364252.P8571388424855834207

`∏{p}[n+1, A377782(#)]`
-/

namespace A364252.P8571388424855834207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A377782 p

end

end A364252.P8571388424855834207

namespace A364252

/-- `∏{p}[n+1, A377782(#)]` -/
def P8571388424855834207.Spec : Prop :=
  ∀ n, P8571388424855834207.a n = A364252 (n + 1)

end A364252

/-! ## A364252.P14417504612633877166

`A000007(A336921(n+1))`
-/

namespace A364252.P14417504612633877166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A336921 (n + 1)).toNat

end

end A364252.P14417504612633877166

namespace A364252

/-- `A000007(A336921(n+1))` -/
def P14417504612633877166.Spec : Prop :=
  ∀ n, P14417504612633877166.a n = A364252 (n + 1)

end A364252

/-! ## A364252.P10727053445639211970

`A336923(A007947(n+1))`
-/

namespace A364252.P10727053445639211970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336923 (A007947 (n + 1)).toNat

end

end A364252.P10727053445639211970

namespace A364252

/-- `A336923(A007947(n+1))` -/
def P10727053445639211970.Spec : Prop :=
  ∀ n, P10727053445639211970.a n = A364252 (n + 1)

end A364252

/-! ## A364252.P6240885403416141713

`A336923(A099985(n+1))`
-/

namespace A364252.P6240885403416141713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336923 (A099985 (n + 1)).toNat

end

end A364252.P6240885403416141713

namespace A364252

/-- `A336923(A099985(n+1))` -/
def P6240885403416141713.Spec : Prop :=
  ∀ n, P6240885403416141713.a n = A364252 (n + 1)

end A364252

/-! ## A364252.P6288492865376196181

`A209229(A336467(n+1))`
-/

namespace A364252.P6288492865376196181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A336467 (n + 1)).toNat

end

end A364252.P6288492865376196181

namespace A364252

/-- `A209229(A336467(n+1))` -/
def P6288492865376196181.Spec : Prop :=
  ∀ n, P6288492865376196181.a n = A364252 (n + 1)

end A364252

/-! ## A364252.P17438265659584242609

`A336923(A302138(n+1))`
-/

namespace A364252.P17438265659584242609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336923 (A302138 (n + 1)).toNat

end

end A364252.P17438265659584242609

namespace A364252

/-- `A336923(A302138(n+1))` -/
def P17438265659584242609.Spec : Prop :=
  ∀ n, P17438265659584242609.a n = A364252 (n + 1)

end A364252

/-! ## A364252.P3858107297604757428

`A336923(A332881(n+1))`
-/

namespace A364252.P3858107297604757428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336923 (A332881 (n + 1)).toNat

end

end A364252.P3858107297604757428

namespace A364252

/-- `A336923(A332881(n+1))` -/
def P3858107297604757428.Spec : Prop :=
  ∀ n, P3858107297604757428.a n = A364252 (n + 1)

end A364252

/-! ## A364252.P1893156776541954731

`A257000(A336467(n+1)+1)`
-/

namespace A364252.P1893156776541954731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257000 (A336467 (n + 1) + 1).toNat

end

end A364252.P1893156776541954731

namespace A364252

/-- `A257000(A336467(n+1)+1)` -/
def P1893156776541954731.Spec : Prop :=
  ∀ n, P1893156776541954731.a n = A364252 (n + 1)

end A364252

/-! ## A364252.P4810889752531027689

`A036987(A336467(n+1)-1)`
-/

namespace A364252.P4810889752531027689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A336467 (n + 1) - 1).toNat

end

end A364252.P4810889752531027689

namespace A364252

/-- `A036987(A336467(n+1)-1)` -/
def P4810889752531027689.Spec : Prop :=
  ∀ n, P4810889752531027689.a n = A364252 (n + 1)

end A364252

/-! ## A364252.P12034802933650045775

`1-A347523(A206787(n+1))`
-/

namespace A364252.P12034802933650045775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A347523 (A206787 (n + 1)).toNat

end

end A364252.P12034802933650045775

namespace A364252

/-- `1-A347523(A206787(n+1))` -/
def P12034802933650045775.Spec : Prop :=
  ∀ n, P12034802933650045775.a n = A364252 (n + 1)

end A364252

/-! ## A364252.P6557004916703252323

`A092037(2*A336921(n+1)²)`
-/

namespace A364252.P6557004916703252323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092037 (2 * A336921 (n + 1) ^ 2).toNat

end

end A364252.P6557004916703252323

namespace A364252

/-- `A092037(2*A336921(n+1)²)` -/
def P6557004916703252323.Spec : Prop :=
  ∀ n, P6557004916703252323.a n = A364252 (n + 1)

end A364252

/-! ## A364252.P18432153588202485388

`A000038(A336921(n+1)²)/2`
-/

namespace A364252.P18432153588202485388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A336921 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A364252.P18432153588202485388

namespace A364252

/-- `A000038(A336921(n+1)²)/2` -/
def P18432153588202485388.Spec : Prop :=
  ∀ n, P18432153588202485388.a n = (A364252 (n + 1) : ℚ)

end A364252

/-! ## A364252.P10492940286983033787

`A000038(A336921(2*(n+1)))/2`
-/

namespace A364252.P10492940286983033787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (A336921 (2 * (n + 1))).toNat : ℚ) / 2

end

end A364252.P10492940286983033787

namespace A364252

/-- `A000038(A336921(2*(n+1)))/2` -/
def P10492940286983033787.Spec : Prop :=
  ∀ n, P10492940286983033787.a n = (A364252 (n + 1) : ℚ)

end A364252

/-! ## A364252.P17301762606781493753

`∑{d}[n+1, A087003(#)*A368542((n+1)/#)]`
-/

namespace A364252.P17301762606781493753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A368542 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364252.P17301762606781493753

namespace A364252

/-- `∑{d}[n+1, A087003(#)*A368542((n+1)/#)]` -/
def P17301762606781493753.Spec : Prop :=
  ∀ n, P17301762606781493753.a n = A364252 (n + 1)

end A364252

/-! ## A364252.P3625539981609070891

`A340375(A162687(n+1))`
-/

namespace A364252.P3625539981609070891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340375 (A162687 (n + 1)).toNat

end

end A364252.P3625539981609070891

namespace A364252

/-- `A340375(A162687(n+1))` -/
def P3625539981609070891.Spec : Prop :=
  ∀ n, P3625539981609070891.a n = A364252 (n + 1)

end A364252

/-! ## A364252.P14230002162242020785

`A010055(A206787(n+1))`
-/

namespace A364252.P14230002162242020785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A206787 (n + 1)).toNat

end

end A364252.P14230002162242020785

namespace A364252

/-- `A010055(A206787(n+1))` -/
def P14230002162242020785.Spec : Prop :=
  ∀ n, P14230002162242020785.a n = A364252 (n + 1)

end A364252

/-! ## A364252.P697130723510826767

`A036987(A336467(n+1)²)`
-/

namespace A364252.P697130723510826767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A336467 (n + 1) ^ 2).toNat

end

end A364252.P697130723510826767

namespace A364252

/-- `A036987(A336467(n+1)²)` -/
def P697130723510826767.Spec : Prop :=
  ∀ n, P697130723510826767.a n = A364252 (n + 1)

end A364252

/-! ## A364252.P6080440320022092031

`A336923(A336467(n+1)²)`
-/

namespace A364252.P6080440320022092031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336923 (A336467 (n + 1) ^ 2).toNat

end

end A364252.P6080440320022092031

namespace A364252

/-- `A336923(A336467(n+1)²)` -/
def P6080440320022092031.Spec : Prop :=
  ∀ n, P6080440320022092031.a n = A364252 (n + 1)

end A364252

/-!
# A364253: a(n) = n - A332215(n).

The programs for A364253, there is no canonical definition to state claims against.
-/

/-! ## A364253.P15514543779330535411

`n+1-A332215(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364253.P15514543779330535411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A332215 (n + 1)

end

end A364253.P15514543779330535411

/-! ## A364253.P7040393435742519351

`n+1-A243071(A332213(n+1))`
-/

namespace A364253.P7040393435742519351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A243071 (A332213 (n + 1)).toNat

end

end A364253.P7040393435742519351

/-! ## A364253.P14356276170884896286

`1-∑{d}[A332213(n+1), A297171(#)]+n`
-/

namespace A364253.P14356276170884896286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n).natAbs, A297171 d + (n : ℤ)

end

end A364253.P14356276170884896286

/-! ## A364253.P14100156754488719267

`A366372(A332215(n+1))`
-/

namespace A364253.P14100156754488719267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366372 (A332215 (n + 1)).toNat

end

end A364253.P14100156754488719267

/-! ## A364253.P17150900257619050669

`A022958(A332215(n+1)+1)+n`
-/

namespace A364253.P17150900257619050669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A332215 (n + 1) + 1).toNat + (n : ℤ)

end

end A364253.P17150900257619050669

/-!
# A364254: a(n) = gcd(n, A332215(n)).

The programs for A364254, there is no canonical definition to state claims against.
-/

/-! ## A364254.P6004157215855782593

`gcd(n+1, A332215(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364254.P6004157215855782593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A332215 (n + 1))

end

end A364254.P6004157215855782593

/-! ## A364254.P9208476165193497261

`gcd(A131738(n), A364253(n+1))`
-/

namespace A364254.P9208476165193497261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A364253 (n + 1))

end

end A364254.P9208476165193497261

/-! ## A364254.P13003018331201066722

`gcd(-A364253(n+1), A000027(n+1))`
-/

namespace A364254.P13003018331201066722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A364253 (n + 1)) (A000027 (n + 1))

end

end A364254.P13003018331201066722

/-! ## A364254.P5196583216429151409

`gcd(A032742(2*(n+1)), A364253(A032742(2*(n+1))))`
-/

namespace A364254.P5196583216429151409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032742 (2 * (n + 1))) (A364253 (A032742 (2 * (n + 1))).toNat)

end

end A364254.P5196583216429151409

/-! ## A364254.P9068322394446825940

`A366373(A332215(n+1))`
-/

namespace A364254.P9068322394446825940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366373 (A332215 (n + 1)).toNat

end

end A364254.P9068322394446825940

/-!
# A364255: a(n) = gcd(n, A163511(n)).

The programs for A364255, the canonical program `A364255.P6900546977642634575` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364255 has offset 0).

The definition of A364255 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364255.P6900546977642634575

`gcd(n, A163511(n))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A364255

/-- `gcd(n, A163511(n))` -/
def P6900546977642634575.Spec : Prop :=
  ∀ n, (P6900546977642634575.a n : ℤ) = A364255 n

theorem P6900546977642634575.correct : P6900546977642634575.Spec := by
  intro n
  simp only [A364255]

end A364255

/-! ## A364255.P6718210461838822285

`A163511(n)/A364492(n)`
-/

namespace A364255.P6718210461838822285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163511 n : ℚ) / (A364492 n : ℚ)

end

end A364255.P6718210461838822285

namespace A364255

/-- `A163511(n)/A364492(n)` -/
def P6718210461838822285.Spec : Prop :=
  ∀ n, P6718210461838822285.a n = (A364255 n : ℚ)

end A364255

/-! ## A364255.P13201096719534058714

`gcd(A028310(n), A364258(n))`
-/

namespace A364255.P13201096719534058714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n) (A364258 n)

end

end A364255.P13201096719534058714

namespace A364255

/-- `gcd(A028310(n), A364258(n))` -/
def P13201096719534058714.Spec : Prop :=
  ∀ n, (P13201096719534058714.a n : ℤ) = A364255 n

end A364255

/-! ## A364255.P6905107396420791629

`(A364258(n)+n)/A364492(n)`
-/

namespace A364255.P6905107396420791629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364258 n + (n : ℤ) : ℚ) / (A364492 n : ℚ)

end

end A364255.P6905107396420791629

namespace A364255

/-- `(A364258(n)+n)/A364492(n)` -/
def P6905107396420791629.Spec : Prop :=
  ∀ n, P6905107396420791629.a n = (A364255 n : ℚ)

end A364255

/-! ## A364255.P16334258490116098600

`A004277(n)/A004277(A364491(n))`
-/

namespace A364255.P16334258490116098600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 n : ℚ) / (A004277 (A364491 n).toNat : ℚ)

end

end A364255.P16334258490116098600

namespace A364255

/-- `A004277(n)/A004277(A364491(n))` -/
def P16334258490116098600.Spec : Prop :=
  ∀ n, P16334258490116098600.a n = (A364255 n : ℚ)

end A364255

/-! ## A364255.P15311803311397588168

`A366275(A057889(n))/A364492(n)`
-/

namespace A364255.P15311803311397588168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366275 (A057889 n).toNat : ℚ) / (A364492 n : ℚ)

end

end A364255.P15311803311397588168

namespace A364255

/-- `A366275(A057889(n))/A364492(n)` -/
def P15311803311397588168.Spec : Prop :=
  ∀ n, P15311803311397588168.a n = (A364255 n : ℚ)

end A364255

/-! ## A364255.P1430240687482652965

`(A075157(A006068(n))+1)/A364492(n)`
-/

namespace A364255.P1430240687482652965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075157 (A006068 n).toNat + 1 : ℚ) / (A364492 n : ℚ)

end

end A364255.P1430240687482652965

namespace A364255

/-- `(A075157(A006068(n))+1)/A364492(n)` -/
def P1430240687482652965.Spec : Prop :=
  ∀ n, P1430240687482652965.a n = (A364255 n : ℚ)

end A364255

/-! ## A364255.P9784652507496742311

`A253563(A145342(n+1)-1)/A364492(n)`
-/

namespace A364255.P9784652507496742311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253563 (A145342 (n + 1) - 1).toNat : ℚ) / (A364492 n : ℚ)

end

end A364255.P9784652507496742311

namespace A364255

/-- `A253563(A145342(n+1)-1)/A364492(n)` -/
def P9784652507496742311.Spec : Prop :=
  ∀ n, P9784652507496742311.a n = (A364255 n : ℚ)

end A364255

/-! ## A364255.P15194846634645570683

`A302026(A269385(n))/A364492(n)`
-/

namespace A364255.P15194846634645570683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302026 (A269385 n).toNat : ℚ) / (A364492 n : ℚ)

end

end A364255.P15194846634645570683

namespace A364255

/-- `A302026(A269385(n))/A364492(n)` -/
def P15194846634645570683.Spec : Prop :=
  ∀ n, P15194846634645570683.a n = (A364255 n : ℚ)

end A364255

/-! ## A364255.P17087534993566714921

`A364256(A163511(n))`
-/

namespace A364255.P17087534993566714921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364256 (A163511 n).toNat

end

end A364255.P17087534993566714921

namespace A364255

/-- `A364256(A163511(n))` -/
def P17087534993566714921.Spec : Prop :=
  ∀ n, P17087534993566714921.a n = A364255 n

end A364255

/-! ## A364255.P17218155388708286412

`A364256(A364258(n)+n)`
-/

namespace A364255.P17218155388708286412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364256 (A364258 n + (n : ℤ)).toNat

end

end A364255.P17218155388708286412

namespace A364255

/-- `A364256(A364258(n)+n)` -/
def P17218155388708286412.Spec : Prop :=
  ∀ n, P17218155388708286412.a n = A364255 n

end A364255

/-!
# A364256: a(n) = gcd(n, A243071(n)).

The programs for A364256, the canonical program `A364256.P14569600379952881101` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364256 has offset 1).

The definition of A364256 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243071, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364256.P14569600379952881101

`gcd(n+1, A243071(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A364256

/-- `gcd(n+1, A243071(n+1))` -/
def P14569600379952881101.Spec : Prop :=
  ∀ n, (P14569600379952881101.a n : ℤ) = A364256 (n + 1)

theorem P14569600379952881101.correct : P14569600379952881101.Spec := by
  intro n
  simp only [A364256, Nat.add_sub_cancel]

end A364256

/-! ## A364256.P16400018052612761885

`gcd(A131738(n), A364288(n+1))`
-/

namespace A364256.P16400018052612761885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A364288 (n + 1))

end

end A364256.P16400018052612761885

namespace A364256

/-- `gcd(A131738(n), A364288(n+1))` -/
def P16400018052612761885.Spec : Prop :=
  ∀ n, (P16400018052612761885.a n : ℤ) = A364256 (n + 1)

end A364256

/-! ## A364256.P15748061547821134002

`gcd(-A364288(n+1), A000027(n+1))`
-/

namespace A364256.P15748061547821134002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A364288 (n + 1)) (A000027 (n + 1))

end

end A364256.P15748061547821134002

namespace A364256

/-- `gcd(-A364288(n+1), A000027(n+1))` -/
def P15748061547821134002.Spec : Prop :=
  ∀ n, (P15748061547821134002.a n : ℤ) = A364256 (n + 1)

end A364256

/-! ## A364256.P16061698452357491074

`gcd(A332811(n+1), A343150(A343150(n+1)))`
-/

namespace A364256.P16061698452357491074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A332811 (n + 1)) (A343150 (A343150 (n + 1)).toNat)

end

end A364256.P16061698452357491074

namespace A364256

/-- `gcd(A332811(n+1), A343150(A343150(n+1)))` -/
def P16061698452357491074.Spec : Prop :=
  ∀ n, (P16061698452357491074.a n : ℤ) = A364256 (n + 1)

end A364256

/-! ## A364256.P16358639717334781357

`A364255(A243071(n+1))`
-/

namespace A364256.P16358639717334781357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364255 (A243071 (n + 1)).toNat

end

end A364256.P16358639717334781357

namespace A364256

/-- `A364255(A243071(n+1))` -/
def P16358639717334781357.Spec : Prop :=
  ∀ n, P16358639717334781357.a n = A364256 (n + 1)

end A364256

/-!
# A364257: Dirichlet inverse of A364255.

The programs for A364257, there is no canonical definition to state claims against.
-/

/-! ## A364257.P7815719094048146648

`A366258(n+1)%A250120(A126953(n+3))`
-/

namespace A364257.P7815719094048146648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366258 (n + 1)) (A250120 (A126953 (n + 3)).toNat)

end

end A364257.P7815719094048146648

/-! ## A364257.P759235312128997706

`A366258(n+1)%A126766(n+1)`
-/

namespace A364257.P759235312128997706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366258 (n + 1)) (A126766 (n + 1))

end

end A364257.P759235312128997706

/-! ## A364257.P802019109616637879

`A366258(n+1)^A288840(∏{e}[n+1, floor(#/2)+1]-1)`
-/

namespace A364257.P802019109616637879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366258 (n + 1) : ℚ) ^ (A288840 (∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1) - 1).toNat : ℤ)

end

end A364257.P802019109616637879

/-! ## A364257.P15737416355734246424

`A366258(n+1)%A008591(A323429(n))`
-/

namespace A364257.P15737416355734246424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A366258 (n + 1)) (A008591 (A323429 n).toNat)

end

end A364257.P15737416355734246424

/-! ## A364257.P2015278817809066083

`A366258(n+1)+A000122(A000978(n+1))`
-/

namespace A364257.P2015278817809066083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366258 (n + 1) + A000122 (A000978 (n + 1)).toNat

end

end A364257.P2015278817809066083

/-!
# A364258: a(n) = A163511(n) - n.

The programs for A364258, the canonical program `A364258.P6786196179042320049` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364258 has offset 0).

The definition of A364258 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364258.P6786196179042320049

`A163511(n)-n`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A364258

/-- `A163511(n)-n` -/
def P6786196179042320049.Spec : Prop :=
  ∀ n, P6786196179042320049.a n = A364258 n

theorem P6786196179042320049.correct : P6786196179042320049.Spec := by
  intro n
  simp only [A364258]

end A364258

/-! ## A364258.P4580549717621897024

`A364288(A163511(n))`
-/

namespace A364258.P4580549717621897024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364288 (A163511 n).toNat

end

end A364258.P4580549717621897024

namespace A364258

/-- `A364288(A163511(n))` -/
def P4580549717621897024.Spec : Prop :=
  ∀ n, P4580549717621897024.a n = A364258 n

end A364258

/-! ## A364258.P2597204434740237552

`A366275(A057889(n))-n`
-/

namespace A364258.P2597204434740237552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366275 (A057889 n).toNat - (n : ℤ)

end

end A364258.P2597204434740237552

namespace A364258

/-- `A366275(A057889(n))-n` -/
def P2597204434740237552.Spec : Prop :=
  ∀ n, P2597204434740237552.a n = A364258 n

end A364258

/-! ## A364258.P3170557994516117860

`A364255(n)*A364492(n)-n`
-/

namespace A364258.P3170557994516117860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364255 n * A364492 n - (n : ℤ)

end

end A364258.P3170557994516117860

namespace A364258

/-- `A364255(n)*A364492(n)-n` -/
def P3170557994516117860.Spec : Prop :=
  ∀ n, P3170557994516117860.a n = A364258 n

end A364258

/-! ## A364258.P7868661918948326877

`A243353(A180200(n))-n`
-/

namespace A364258.P7868661918948326877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (A180200 n).toNat - (n : ℤ)

end

end A364258.P7868661918948326877

namespace A364258

/-- `A243353(A180200(n))-n` -/
def P7868661918948326877.Spec : Prop :=
  ∀ n, P7868661918948326877.a n = A364258 n

end A364258

/-! ## A364258.P16036880311481016796

`A366263(A234026(n))-n`
-/

namespace A364258.P16036880311481016796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366263 (A234026 n).toNat - (n : ℤ)

end

end A364258.P16036880311481016796

namespace A364258

/-- `A366263(A234026(n))-n` -/
def P16036880311481016796.Spec : Prop :=
  ∀ n, P16036880311481016796.a n = A364258 n

end A364258

/-! ## A364258.P3565395239384394821

`A075159(A066194(n+1))-n`
-/

namespace A364258.P3565395239384394821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075159 (A066194 (n + 1)).toNat - (n : ℤ)

end

end A364258.P3565395239384394821

namespace A364258

/-- `A075159(A066194(n+1))-n` -/
def P3565395239384394821.Spec : Prop :=
  ∀ n, P3565395239384394821.a n = A364258 n

end A364258

/-! ## A364258.P2801846885229571726

`A005940(A337909(n+1))-n`
-/

namespace A364258.P2801846885229571726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A337909 (n + 1)).toNat - (n : ℤ)

end

end A364258.P2801846885229571726

namespace A364258

/-- `A005940(A337909(n+1))-n` -/
def P2801846885229571726.Spec : Prop :=
  ∀ n, P2801846885229571726.a n = A364258 n

end A364258

/-! ## A364258.P15206129793492088737

`A279338(A279342(n))-n`
-/

namespace A364258.P15206129793492088737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (A279342 n).toNat - (n : ℤ)

end

end A364258.P15206129793492088737

namespace A364258

/-- `A279338(A279342(n))-n` -/
def P15206129793492088737.Spec : Prop :=
  ∀ n, P15206129793492088737.a n = A364258 n

end A364258

/-! ## A364258.P7756031630620886665

`A250246(A252755(n))-n`
-/

namespace A364258.P7756031630620886665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A252755 n).toNat - (n : ℤ)

end

end A364258.P7756031630620886665

namespace A364258

/-- `A250246(A252755(n))-n` -/
def P7756031630620886665.Spec : Prop :=
  ∀ n, P7756031630620886665.a n = A364258 n

end A364258

/-! ## A364258.P12229001227175135787

`A302026(A269385(n))-n`
-/

namespace A364258.P12229001227175135787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (A269385 n).toNat - (n : ℤ)

end

end A364258.P12229001227175135787

namespace A364258

/-- `A302026(A269385(n))-n` -/
def P12229001227175135787.Spec : Prop :=
  ∀ n, P12229001227175135787.a n = A364258 n

end A364258

/-! ## A364258.P17405463393803288127

`A241916(A253563(n))-n`
-/

namespace A364258.P17405463393803288127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241916 (A253563 n).toNat - (n : ℤ)

end

end A364258.P17405463393803288127

namespace A364258

/-- `A241916(A253563(n))-n` -/
def P17405463393803288127.Spec : Prop :=
  ∀ n, P17405463393803288127.a n = A364258 n

end A364258

/-! ## A364258.P5966038798835267376

`A269847(A237739(n))-n`
-/

namespace A364258.P5966038798835267376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269847 (A237739 n).toNat - (n : ℤ)

end

end A364258.P5966038798835267376

namespace A364258

/-- `A269847(A237739(n))-n` -/
def P5966038798835267376.Spec : Prop :=
  ∀ n, P5966038798835267376.a n = A364258 n

end A364258

/-! ## A364258.P15143985137359046921

`A108548(A332817(n))-n`
-/

namespace A364258.P15143985137359046921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108548 (A332817 n).toNat - (n : ℤ)

end

end A364258.P15143985137359046921

namespace A364258

/-- `A108548(A332817(n))-n` -/
def P15143985137359046921.Spec : Prop :=
  ∀ n, P15143985137359046921.a n = A364258 n

end A364258

/-! ## A364258.P7555622988388859379

`A091203(A305427(n))-n`
-/

namespace A364258.P7555622988388859379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (A305427 n).toNat - (n : ℤ)

end

end A364258.P7555622988388859379

namespace A364258

/-- `A091203(A305427(n))-n` -/
def P7555622988388859379.Spec : Prop :=
  ∀ n, P7555622988388859379.a n = A364258 n

end A364258

/-! ## A364258.P11004462278717946157

`A332213(A332214(n))-n`
-/

namespace A364258.P11004462278717946157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332213 (A332214 n).toNat - (n : ℤ)

end

end A364258.P11004462278717946157

namespace A364258

/-- `A332213(A332214(n))-n` -/
def P11004462278717946157.Spec : Prop :=
  ∀ n, P11004462278717946157.a n = A364258 n

end A364258

/-! ## A364258.P5638903209621264750

`A064216(A245612(n))-n`
-/

namespace A364258.P5638903209621264750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A245612 n).toNat - (n : ℤ)

end

end A364258.P5638903209621264750

namespace A364258

/-- `A064216(A245612(n))-n` -/
def P5638903209621264750.Spec : Prop :=
  ∀ n, P5638903209621264750.a n = A364258 n

end A364258

/-! ## A364258.P16077367991202132999

`A241909(A005940(n+1))-n`
-/

namespace A364258.P16077367991202132999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A005940 (n + 1)).toNat - (n : ℤ)

end

end A364258.P16077367991202132999

namespace A364258

/-- `A241909(A005940(n+1))-n` -/
def P16077367991202132999.Spec : Prop :=
  ∀ n, P16077367991202132999.a n = A364258 n

end A364258

/-! ## A364258.P7166011573165271038

`A241909(A064216(A244154(n)))-n`
-/

namespace A364258.P7166011573165271038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241909 (A064216 (A244154 n).toNat).toNat - (n : ℤ)

end

end A364258.P7166011573165271038

namespace A364258

/-- `A241909(A064216(A244154(n)))-n` -/
def P7166011573165271038.Spec : Prop :=
  ∀ n, P7166011573165271038.a n = A364258 n

end A364258

/-!
# A364259: a(n) = A331410(A332212(n)).

The programs for A364259, there is no canonical definition to state claims against.
-/

/-! ## A364259.P10404274683461771081

`A331410(A332212(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364259.P10404274683461771081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A332212 (n + 1)).toNat

end

end A364259.P10404274683461771081

/-! ## A364259.P14609674238488834202

`A364260(A243071(n+1))`
-/

namespace A364259.P14609674238488834202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364260 (A243071 (n + 1)).toNat

end

end A364259.P14609674238488834202

/-! ## A364259.P10934323686830592527

`A364260(A332215(A332212(A332215(A332214(n+1)))))`
-/

namespace A364259.P10934323686830592527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364260 (A332215 (A332212 (A332215 (A332214 (n + 1)).toNat).toNat).toNat).toNat

end

end A364259.P10934323686830592527

/-! ## A364259.P16753755134992169560

`A302242(A267099(n+1)%A363847(n+3))`
-/

namespace A364259.P16753755134992169560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (Int.tmod (A267099 (n + 1)) (A363847 (n + 3))).toNat

end

end A364259.P16753755134992169560

/-! ## A364259.P7227725095801933361

`A087182(A347101(n+1)%A281110(n+1))`
-/

namespace A364259.P7227725095801933361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087182 (Int.tmod (A347101 (n + 1)) (A281110 (n + 1))).toNat

end

end A364259.P7227725095801933361

/-!
# A364260: a(n) = A331410(A332214(n)).

The programs for A364260, there is no canonical definition to state claims against.
-/

/-! ## A364260.P8132364347082390227

`A364259(A163511(n))`
-/

namespace A364260.P8132364347082390227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364259 (A163511 n).toNat

end

end A364260.P8132364347082390227

/-! ## A364260.P12329505787510194848

`A331410(A332214(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364260.P12329505787510194848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A332214 n).toNat

end

end A364260.P12329505787510194848

/-! ## A364260.P3137542663814615721

`A364259(A364258(n)+n)`
-/

namespace A364260.P3137542663814615721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364259 (A364258 n + (n : ℤ)).toNat

end

end A364260.P3137542663814615721

/-! ## A364260.P10977307361267053580

`A331410(A366372(n)+n)`
-/

namespace A364260.P10977307361267053580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A366372 n + (n : ℤ)).toNat

end

end A364260.P10977307361267053580

/-! ## A364260.P4444772538123865836

`A364259(A332213(A332214(2*n)))`
-/

namespace A364260.P4444772538123865836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364259 (A332213 (A332214 (2 * n)).toNat).toNat

end

end A364260.P4444772538123865836

/-!
# A364263: Numbers j such that k=210*j, 2*k, k^2+k, k^2-k all are averages of twin primes.

The programs for A364263, there is no canonical definition to state claims against.
-/

/-! ## A364263.P6893768241751182135

`A363500(n+2)/210`
-/

namespace A364263.P6893768241751182135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363500 (n + 2) : ℚ) / 210

end

end A364263.P6893768241751182135

/-!
# A364268: a(n) = Sum_{k=1..n} k^2*sigma_2(k), where sigma_2 is A001157.

The programs for A364268, the canonical program `A364268.P11702098000905374280` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364268 has offset 1).

The definition of A364268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364268.P11702098000905374280

`∑[∑{d}[n+1, (#*(n+1))²]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A364268

/-- `∑[∑{d}[n+1, (#*(n+1))²]]` -/
def P11702098000905374280.Spec : Prop :=
  ∀ n, (P11702098000905374280.a n : ℤ) = A364268 (n + 1)

theorem P11702098000905374280.correct : P11702098000905374280.Spec := by
  intro n
  simp only [A364268, Nat.add_sub_cancel]

end A364268

/-! ## A364268.P2458095600091536961

`∑[A386745(n+1)]`
-/

namespace A364268.P2458095600091536961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364268.P2458095600091536961

namespace A364268

/-- `∑[A386745(n+1)]` -/
def P2458095600091536961.Spec : Prop :=
  ∀ n, P2458095600091536961.a n = A364268 (n + 1)

end A364268

/-! ## A364268.P6395965886573829783

`∑[(n+1)*A328259(n+1)]`
-/

namespace A364268.P6395965886573829783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A328259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364268.P6395965886573829783

namespace A364268

/-- `∑[(n+1)*A328259(n+1)]` -/
def P6395965886573829783.Spec : Prop :=
  ∀ n, P6395965886573829783.a n = A364268 (n + 1)

end A364268

/-! ## A364268.P11144825218948292254

`∑[(n+1)²*A001157(n+1)]`
-/

namespace A364268.P11144825218948292254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364268.P11144825218948292254

namespace A364268

/-- `∑[(n+1)²*A001157(n+1)]` -/
def P11144825218948292254.Spec : Prop :=
  ∀ n, P11144825218948292254.a n = A364268 (n + 1)

end A364268

/-! ## A364268.P13183810957843187746

`∑[A386783(n+1)/(n+1)²]`
-/

namespace A364268.P13183810957843187746
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386783 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364268.P13183810957843187746

namespace A364268

/-- `∑[A386783(n+1)/(n+1)²]` -/
def P13183810957843187746.Spec : Prop :=
  ∀ n, P13183810957843187746.a n = (A364268 (n + 1) : ℚ)

end A364268

/-! ## A364268.P6210315291998773211

`∑[A386746(n+1)/(n+1)]`
-/

namespace A364268.P6210315291998773211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386746 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364268.P6210315291998773211

namespace A364268

/-- `∑[A386746(n+1)/(n+1)]` -/
def P6210315291998773211.Spec : Prop :=
  ∀ n, P6210315291998773211.a n = (A364268 (n + 1) : ℚ)

end A364268

/-! ## A364268.P8109066492400978296

`∑[A001157(n+1)*A002620(2*(n+1))]`
-/

namespace A364268.P8109066492400978296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) * A002620 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364268.P8109066492400978296

namespace A364268

/-- `∑[A001157(n+1)*A002620(2*(n+1))]` -/
def P8109066492400978296.Spec : Prop :=
  ∀ n, P8109066492400978296.a n = A364268 (n + 1)

end A364268

/-! ## A364268.P4876481721942820169

`∑[A001157(n+1)*A109594(3*(n+1))]`
-/

namespace A364268.P4876481721942820169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) * A109594 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364268.P4876481721942820169

namespace A364268

/-- `∑[A001157(n+1)*A109594(3*(n+1))]` -/
def P4876481721942820169.Spec : Prop :=
  ∀ n, P4876481721942820169.a n = A364268 (n + 1)

end A364268

/-! ## A364268.P3744951346196468944

`∑[A351600((n+1)²)]`
-/

namespace A364268.P3744951346196468944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351600 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364268.P3744951346196468944

namespace A364268

/-- `∑[A351600((n+1)²)]` -/
def P3744951346196468944.Spec : Prop :=
  ∀ n, P3744951346196468944.a n = A364268 (n + 1)

end A364268

/-!
# A364269: a(n) = Sum_{k=1..n} k^3*sigma_2(k), where sigma_2 is A001157.

The programs for A364269, the canonical program `A364269.P1640320168653487938` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364269 has offset 1).

The definition of A364269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364269.P9556741180002961082

`∑[(n+1)*A386745(n+1)]`
-/

namespace A364269.P9556741180002961082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A386745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364269.P9556741180002961082

namespace A364269

/-- `∑[(n+1)*A386745(n+1)]` -/
def P9556741180002961082.Spec : Prop :=
  ∀ n, P9556741180002961082.a n = A364269 (n + 1)

end A364269

/-! ## A364269.P17260395541868649321

`∑[A386783(n+1)/(n+1)]`
-/

namespace A364269.P17260395541868649321
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386783 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364269.P17260395541868649321

namespace A364269

/-- `∑[A386783(n+1)/(n+1)]` -/
def P17260395541868649321.Spec : Prop :=
  ∀ n, P17260395541868649321.a n = (A364269 (n + 1) : ℚ)

end A364269

/-! ## A364269.P1640320168653487938

`∑[(n+1)²*A328259(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A364269

/-- `∑[(n+1)²*A328259(n+1)]` -/
def P1640320168653487938.Spec : Prop :=
  ∀ n, P1640320168653487938.a n = A364269 (n + 1)

theorem P1640320168653487938.correct : P1640320168653487938.Spec := by
  intro n
  simp only [A364269, Nat.add_sub_cancel]

end A364269

/-! ## A364269.P15834405515164754763

`∑[A000578(n+1)*A001157(n+1)]`
-/

namespace A364269.P15834405515164754763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) * A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364269.P15834405515164754763

namespace A364269

/-- `∑[A000578(n+1)*A001157(n+1)]` -/
def P15834405515164754763.Spec : Prop :=
  ∀ n, P15834405515164754763.a n = A364269 (n + 1)

end A364269

/-! ## A364269.P2170397493817027996

`∑[A386746(n+1)]`
-/

namespace A364269.P2170397493817027996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364269.P2170397493817027996

namespace A364269

/-- `∑[A386746(n+1)]` -/
def P2170397493817027996.Spec : Prop :=
  ∀ n, P2170397493817027996.a n = A364269 (n + 1)

end A364269

/-! ## A364269.P17265007971406587828

`∑[(n+1)*A351600((n+1)²)]`
-/

namespace A364269.P17265007971406587828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A351600 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364269.P17265007971406587828

namespace A364269

/-- `∑[(n+1)*A351600((n+1)²)]` -/
def P17265007971406587828.Spec : Prop :=
  ∀ n, P17265007971406587828.a n = A364269 (n + 1)

end A364269

/-!
# A364272: Number of strict integer partitions of n containing the sum of some subset of the parts. A variation of sum-full strict partitions.

The programs for A364272, there is no canonical definition to state claims against.
-/

/-! ## A364272.P12269647490144365879

`A000009(n)-A364349(n)`
-/

namespace A364272.P12269647490144365879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A364349 n

end

end A364272.P12269647490144365879

/-! ## A364272.P11527386461220747707

`abs(A081360(n))-A364349(n)`
-/

namespace A364272.P11527386461220747707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A364349 n

end

end A364272.P11527386461220747707

/-! ## A364272.P6102840345629728750

`∑[A087897(n)]-A364349(n)`
-/

namespace A364272.P6102840345629728750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A364349 n

end

end A364272.P6102840345629728750

/-! ## A364272.P6932496649203865887

`A364916(∑[n])-A364349(n)`
-/

namespace A364272.P6932496649203865887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (∑ j ∈ Finset.range (n + 1), f1 j) - A364349 n

end

end A364272.P6932496649203865887

/-! ## A364272.P9425785830778168184

`A111133(n)+1-A364349(n)`
-/

namespace A364272.P9425785830778168184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A364349 n)

end

end A364272.P9425785830778168184

/-! ## A364272.P5539262161357458450

`A057428(n)+A052839(n)-A364349(n)`
-/

namespace A364272.P5539262161357458450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A052839 n - A364349 n

end

end A364272.P5539262161357458450

/-! ## A364272.P11250784974646451094

`A025147(n)+A096765(n)-A364349(n)`
-/

namespace A364272.P11250784974646451094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n + (A096765 n - A364349 n)

end

end A364272.P11250784974646451094

/-! ## A364272.P15319802284854817200

`A282892(n)+A035363(n)-A364349(n)`
-/

namespace A364272.P15319802284854817200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 n + A035363 n - A364349 n

end

end A364272.P15319802284854817200

/-! ## A364272.P2365440293567998481

`A240855(n)+A240861(n)-A364349(n)`
-/

namespace A364272.P2365440293567998481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240855 n + (A240861 n - A364349 n)

end

end A364272.P2365440293567998481

/-! ## A364272.P14924135446082090102

`A316996(n)+A317239(n)-A364349(n)`
-/

namespace A364272.P14924135446082090102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316996 n + (A317239 n - A364349 n)

end

end A364272.P14924135446082090102

/-!
# A364277: Number of permutations of [n] such that no cycle contains its length as an element.

The programs for A364277, there is no canonical definition to state claims against.
-/

/-! ## A364277.P17850253179516820887

`A353400(n)+A282192(A327367(n))`
-/

namespace A364277.P17850253179516820887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353400 n + A282192 (A327367 n).toNat

end

end A364277.P17850253179516820887

/-! ## A364277.P5020638020417349009

`A134478(A005203(n))-A022290(n)`
-/

namespace A364277.P5020638020417349009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A005203 n).toNat - A022290 n

end

end A364277.P5020638020417349009

/-! ## A364277.P1321735221795215141

`A185334(n)*A193169(A006664(n))`
-/

namespace A364277.P1321735221795215141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185334 n * A193169 (A006664 n).toNat

end

end A364277.P1321735221795215141

/-!
# A364281: Number of permutations of [n] with distinct cycle lengths such that each cycle contains exactly one cycle length as an element.

The programs for A364281, there is no canonical definition to state claims against.
-/

/-! ## A364281.P14648723537494409723

`A134682(A384271(n))`
-/

namespace A364281.P14648723537494409723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134682 (A384271 n).toNat

end

end A364281.P14648723537494409723

/-! ## A364281.P1173920100606452207

`A231149(A038119(n+1)+∏{e}[(n+2)²+1, #+1]-1)`
-/

namespace A364281.P1173920100606452207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231149 (A038119 (n + 1) + (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 1)).toNat

end

end A364281.P1173920100606452207

/-! ## A364281.P2378798813402961466

`A003963(A377325(n)+A002033(n))`
-/

namespace A364281.P2378798813402961466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A377325 n + A002033 n).toNat

end

end A364281.P2378798813402961466

/-!
# A364284: Numbers k such that A261627(k) = 1.

The programs for A364284, there is no canonical definition to state claims against.
-/

/-! ## A364284.P4768541038520641554

`eq[1, A261627(n+1)]+1`
-/

namespace A364284.P4768541038520641554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261627 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364284.P4768541038520641554

/-! ## A364284.P4181641921864575901

`eq[1, A261627(A028310(n))]`
-/

namespace A364284.P4181641921864575901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261627 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A364284.P4181641921864575901

/-!
# A364285: Number T(n,k) of partitions of n with largest part k where each block of part i with multiplicity j is marked with a word of length i*j over an n-ary alphabet whose letters appear in alphabetical order and all n letters occur exactly once in the partition; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A364285, there is no canonical definition to state claims against.
-/

/-! ## A364285.P2801325454021622742

`A318440(4^A004248(n))`
-/

namespace A364285.P2801325454021622742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A004248 n : ℤ))).toNat

end

end A364285.P2801325454021622742

/-! ## A364285.P17498727621478471995

`A048993(n)-A348613(A300003(n))`
-/

namespace A364285.P17498727621478471995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n - A348613 (A300003 n).toNat

end

end A364285.P17498727621478471995

/-! ## A364285.P2181546645932111593

`A048993(n)-A024362(A237816(n+1))`
-/

namespace A364285.P2181546645932111593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n - A024362 (A237816 (n + 1)).toNat

end

end A364285.P2181546645932111593

/-! ## A364285.P9842173256608868170

`A385889(A269945(n)^A000030(n+2))`
-/

namespace A364285.P9842173256608868170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385889 (SequenceMachineLib.roundAway ((A269945 n : ℚ) ^ (A000030 (n + 2) : ℤ))).toNat

end

end A364285.P9842173256608868170

/-! ## A364285.P6039207050855297041

`A385889(A269945(n)^A088529(n+2))`
-/

namespace A364285.P6039207050855297041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385889 (SequenceMachineLib.roundAway ((A269945 n : ℚ) ^ (A088529 (n + 2) : ℤ))).toNat

end

end A364285.P6039207050855297041

/-!
# A364286: Composite numbers k for which A324644(k)/A324198(k) = 2.

The programs for A364286, there is no canonical definition to state claims against.
-/

/-! ## A364286.P16892547490869520620

`A374672(xor(A138390(3*n+4), A387688(n+1)))`
-/

namespace A364286.P16892547490869520620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374672 (Int.xor (A138390 (3 * n + 4)) (A387688 (n + 1))).toNat

end

end A364286.P16892547490869520620

/-!
# A364287: Numbers k such that A163511(k) < k.

The programs for A364287, the canonical program `A364287.P1164900162732185155` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364287 has offset 1).

The definition of A364287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 557 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364287.P3307128443065877711

`∩[A004781(n+1), A364292(n+1)]`
-/

namespace A364287.P3307128443065877711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364287.P3307128443065877711

namespace A364287

/-- `∩[A004781(n+1), A364292(n+1)]` -/
def P3307128443065877711.Spec : Prop :=
  ∀ n, (P3307128443065877711.a n : ℤ) = A364287 (n + 1)

end A364287

/-! ## A364287.P1164900162732185155

`lt[A364258(n), 0]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A364287

/-- `lt[A364258(n), 0]` -/
def P1164900162732185155.Spec : Prop :=
  ∀ n, (P1164900162732185155.a n : ℤ) = A364287 (n + 1)

theorem P1164900162732185155.correct : P1164900162732185155.Spec := by
  intro n
  simp only [A364287, Nat.add_sub_cancel]

end A364287

/-! ## A364287.P8486065543028664641

`lt[A163511(n), n]`
-/

namespace A364287.P8486065543028664641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364287.P8486065543028664641

namespace A364287

/-- `lt[A163511(n), n]` -/
def P8486065543028664641.Spec : Prop :=
  ∀ n, (P8486065543028664641.a n : ℤ) = A364287 (n + 1)

end A364287

/-! ## A364287.P5442872790405533735

`lt[A243353(A180200(n)), n]`
-/

namespace A364287.P5442872790405533735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (A180200 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364287.P5442872790405533735

namespace A364287

/-- `lt[A243353(A180200(n)), n]` -/
def P5442872790405533735.Spec : Prop :=
  ∀ n, (P5442872790405533735.a n : ℤ) = A364287 (n + 1)

end A364287

/-! ## A364287.P9744938520564603764

`∩[A364292(n+1), A116451(n)]`
-/

namespace A364287.P9744938520564603764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116451 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364287.P9744938520564603764

namespace A364287

/-- `∩[A364292(n+1), A116451(n)]` -/
def P9744938520564603764.Spec : Prop :=
  ∀ n, (P9744938520564603764.a n : ℤ) = A364287 (n + 1)

end A364287

/-! ## A364287.P4792753984844355105

`∩[A059485(n+1), A364292(n+1)]`
-/

namespace A364287.P4792753984844355105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364287.P4792753984844355105

namespace A364287

/-- `∩[A059485(n+1), A364292(n+1)]` -/
def P4792753984844355105.Spec : Prop :=
  ∀ n, (P4792753984844355105.a n : ℤ) = A364287 (n + 1)

end A364287

/-! ## A364287.P2457827609466973923

`∩[A072823(n+1), A364292(n+1)]`
-/

namespace A364287.P2457827609466973923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364287.P2457827609466973923

namespace A364287

/-- `∩[A072823(n+1), A364292(n+1)]` -/
def P2457827609466973923.Spec : Prop :=
  ∀ n, (P2457827609466973923.a n : ℤ) = A364287 (n + 1)

end A364287

/-! ## A364287.P5849132302081237159

`∩[A161989(n+1), A364292(n+1)]`
-/

namespace A364287.P5849132302081237159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364287.P5849132302081237159

namespace A364287

/-- `∩[A161989(n+1), A364292(n+1)]` -/
def P5849132302081237159.Spec : Prop :=
  ∀ n, (P5849132302081237159.a n : ℤ) = A364287 (n + 1)

end A364287

/-! ## A364287.P14001284463992457258

`∩[A161992(n+1), A364292(n+1)]`
-/

namespace A364287.P14001284463992457258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364287.P14001284463992457258

namespace A364287

/-- `∩[A161992(n+1), A364292(n+1)]` -/
def P14001284463992457258.Spec : Prop :=
  ∀ n, (P14001284463992457258.a n : ℤ) = A364287 (n + 1)

end A364287

/-! ## A364287.P934584217163967102

`∩[A175382(n+1), A364292(n+1)]`
-/

namespace A364287.P934584217163967102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364287.P934584217163967102

namespace A364287

/-- `∩[A175382(n+1), A364292(n+1)]` -/
def P934584217163967102.Spec : Prop :=
  ∀ n, (P934584217163967102.a n : ℤ) = A364287 (n + 1)

end A364287

/-! ## A364287.P2041912332995360882

`lt[A279338(A279342(n)), n]`
-/

namespace A364287.P2041912332995360882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (A279342 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364287.P2041912332995360882

namespace A364287

/-- `lt[A279338(A279342(n)), n]` -/
def P2041912332995360882.Spec : Prop :=
  ∀ n, (P2041912332995360882.a n : ℤ) = A364287 (n + 1)

end A364287

/-! ## A364287.P12397839535971145530

`lt[A302026(A269385(n)), n]`
-/

namespace A364287.P12397839535971145530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (A269385 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364287.P12397839535971145530

namespace A364287

/-- `lt[A302026(A269385(n)), n]` -/
def P12397839535971145530.Spec : Prop :=
  ∀ n, (P12397839535971145530.a n : ℤ) = A364287 (n + 1)

end A364287

/-!
# A364288: a(n) = n - A243071(n).

The programs for A364288, the canonical program `A364288.P15840264217698276728` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364288 has offset 1).

The definition of A364288 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A243071, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364288.P15840264217698276728

`n+1-A243071(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A364288

/-- `n+1-A243071(n+1)` -/
def P15840264217698276728.Spec : Prop :=
  ∀ n, P15840264217698276728.a n = A364288 (n + 1)

theorem P15840264217698276728.correct : P15840264217698276728.Spec := by
  intro n
  simp only [A364288, Nat.add_sub_cancel]

end A364288

/-! ## A364288.P14492508398783568391

`A364258(A243071(n+1))`
-/

namespace A364288.P14492508398783568391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364258 (A243071 (n + 1)).toNat

end

end A364288.P14492508398783568391

namespace A364288

/-- `A364258(A243071(n+1))` -/
def P14492508398783568391.Spec : Prop :=
  ∀ n, P14492508398783568391.a n = A364288 (n + 1)

end A364288

/-! ## A364288.P8918466386395533972

`1-∑{d}[n+1, A297171(#)]+n`
-/

namespace A364288.P8918466386395533972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A297171 d + (n : ℤ)

end

end A364288.P8918466386395533972

namespace A364288

/-- `1-∑{d}[n+1, A297171(#)]+n` -/
def P8918466386395533972.Spec : Prop :=
  ∀ n, P8918466386395533972.a n = A364288 (n + 1)

end A364288

/-! ## A364288.P14419552462924426450

`n+1-A332811(A108548(n+1))`
-/

namespace A364288.P14419552462924426450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A332811 (A108548 (n + 1)).toNat

end

end A364288.P14419552462924426450

namespace A364288

/-- `n+1-A332811(A108548(n+1))` -/
def P14419552462924426450.Spec : Prop :=
  ∀ n, P14419552462924426450.a n = A364288 (n + 1)

end A364288

/-! ## A364288.P4279671004339792064

`n+1-A305428(A091202(n+1))`
-/

namespace A364288.P4279671004339792064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A305428 (A091202 (n + 1)).toNat

end

end A364288.P4279671004339792064

namespace A364288

/-- `n+1-A305428(A091202(n+1))` -/
def P4279671004339792064.Spec : Prop :=
  ∀ n, P4279671004339792064.a n = A364288 (n + 1)

end A364288

/-! ## A364288.P8256471630519947897

`n+1-A252756(A269172(A302025(n+1)))`
-/

namespace A364288.P8256471630519947897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A252756 (A269172 (A302025 (n + 1)).toNat).toNat

end

end A364288.P8256471630519947897

namespace A364288

/-- `n+1-A252756(A269172(A302025(n+1)))` -/
def P8256471630519947897.Spec : Prop :=
  ∀ n, P8256471630519947897.a n = A364288 (n + 1)

end A364288

/-! ## A364288.P4097254970556346044

`n+1-A245611(A048673(n+1))`
-/

namespace A364288.P4097254970556346044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A245611 (A048673 (n + 1)).toNat

end

end A364288.P4097254970556346044

namespace A364288

/-- `n+1-A245611(A048673(n+1))` -/
def P4097254970556346044.Spec : Prop :=
  ∀ n, P4097254970556346044.a n = A364288 (n + 1)

end A364288

/-!
# A364289: Numbers k such that A243071(k) >= k.

The programs for A364289, the canonical program `A364289.P11611959133144613708` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364289 has offset 1).

The definition of A364289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1925 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364289.P11611959133144613708

`lt[A364288(n+1), 1]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A364289

/-- `lt[A364288(n+1), 1]+1` -/
def P11611959133144613708.Spec : Prop :=
  ∀ n, (P11611959133144613708.a n : ℤ) = A364289 (n + 1)

theorem P11611959133144613708.correct : P11611959133144613708.Spec := by
  intro n
  simp only [A364289, Nat.add_sub_cancel]

end A364289

/-! ## A364289.P16180059031461232292

`lt[n, A243071(n+1)]+1`
-/

namespace A364289.P16180059031461232292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A364289.P16180059031461232292

namespace A364289

/-- `lt[n, A243071(n+1)]+1` -/
def P16180059031461232292.Spec : Prop :=
  ∀ n, (P16180059031461232292.a n : ℤ) = A364289 (n + 1)

end A364289

/-! ## A364289.P18444897634749993535

`lt[A364288(A028310(n)), 1]`
-/

namespace A364289.P18444897634749993535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364288 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364289.P18444897634749993535

namespace A364289

/-- `lt[A364288(A028310(n)), 1]` -/
def P18444897634749993535.Spec : Prop :=
  ∀ n, (P18444897634749993535.a n : ℤ) = A364289 (n + 1)

end A364289

/-! ## A364289.P11299018455017423247

`lt[A364288(A004277(n)), 1]`
-/

namespace A364289.P11299018455017423247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364288 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364289.P11299018455017423247

namespace A364289

/-- `lt[A364288(A004277(n)), 1]` -/
def P11299018455017423247.Spec : Prop :=
  ∀ n, (P11299018455017423247.a n : ℤ) = A364289 (n + 1)

end A364289

/-! ## A364289.P10909141127618527089

`lt[A364288(A057543(n)), 1]`
-/

namespace A364289.P10909141127618527089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364288 (A057543 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364289.P10909141127618527089

namespace A364289

/-- `lt[A364288(A057543(n)), 1]` -/
def P10909141127618527089.Spec : Prop :=
  ∀ n, (P10909141127618527089.a n : ℤ) = A364289 (n + 1)

end A364289

/-! ## A364289.P17181789796931145270

`lt[A219650(2*n), A243071(A008574(n))]`
-/

namespace A364289.P17181789796931145270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219650 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364289.P17181789796931145270

namespace A364289

/-- `lt[A219650(2*n), A243071(A008574(n))]` -/
def P17181789796931145270.Spec : Prop :=
  ∀ n, (P17181789796931145270.a n : ℤ) = A364289 (n + 1)

end A364289

/-!
# A364290: Numbers k such that A243071(k) < k.

The programs for A364290, the canonical program `A364290.P18274658476880475366` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364290 has offset 1).

The definition of A364290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364290.P18274658476880475366

`∩[A347202(n+1), A364291(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A364290

/-- `∩[A347202(n+1), A364291(n+1)]` -/
def P18274658476880475366.Spec : Prop :=
  ∀ n, (P18274658476880475366.a n : ℤ) = A364290 (n + 1)

theorem P18274658476880475366.correct : P18274658476880475366.Spec := by
  intro n
  simp only [A364290, Nat.add_sub_cancel]

end A364290

/-! ## A364290.P7493155757214949058

`lt[0, A364288(n+1)]+1`
-/

namespace A364290.P7493155757214949058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A364290.P7493155757214949058

namespace A364290

/-- `lt[0, A364288(n+1)]+1` -/
def P7493155757214949058.Spec : Prop :=
  ∀ n, (P7493155757214949058.a n : ℤ) = A364290 (n + 1)

end A364290

/-! ## A364290.P16754086779798689557

`lt[A243071(abs(1-n)+1), n]`
-/

namespace A364290.P16754086779798689557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364290.P16754086779798689557

namespace A364290

/-- `lt[A243071(abs(1-n)+1), n]` -/
def P16754086779798689557.Spec : Prop :=
  ∀ n, (P16754086779798689557.a n : ℤ) = A364290 (n + 1)

end A364290

/-! ## A364290.P5549921828260213235

`lt[A243071(n+1), n+1]+1`
-/

namespace A364290.P5549921828260213235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A364290.P5549921828260213235

namespace A364290

/-- `lt[A243071(n+1), n+1]+1` -/
def P5549921828260213235.Spec : Prop :=
  ∀ n, (P5549921828260213235.a n : ℤ) = A364290 (n + 1)

end A364290

/-! ## A364290.P2887564723945014487

`lt[A332811(A108548(n+1)), n+1]+1`
-/

namespace A364290.P2887564723945014487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332811 (A108548 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A364290.P2887564723945014487

namespace A364290

/-- `lt[A332811(A108548(n+1)), n+1]+1` -/
def P2887564723945014487.Spec : Prop :=
  ∀ n, (P2887564723945014487.a n : ℤ) = A364290 (n + 1)

end A364290

/-! ## A364290.P17887669674188428539

`lt[1, A364288(A004277(2*n))]`
-/

namespace A364290.P17887669674188428539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364288 (A004277 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A364290.P17887669674188428539

namespace A364290

/-- `lt[1, A364288(A004277(2*n))]` -/
def P17887669674188428539.Spec : Prop :=
  ∀ n, (P17887669674188428539.a n : ℤ) = A364290 (n + 1)

end A364290

/-!
# A364291: Numbers k such that A243071(k) <= k.

The programs for A364291, the canonical program `A364291.P17970207636482923392` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364291 has offset 1).

The definition of A364291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364291.P17970207636482923392

`lt[A243071(n+1), A265283(n)]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A364291

/-- `lt[A243071(n+1), A265283(n)]+1` -/
def P17970207636482923392.Spec : Prop :=
  ∀ n, (P17970207636482923392.a n : ℤ) = A364291 (n + 1)

theorem P17970207636482923392.correct : P17970207636482923392.Spec := by
  intro n
  simp only [A364291, Nat.add_sub_cancel]

end A364291

/-! ## A364291.P7866682756640192702

`lt[A005094(n+1), A364288(n+1)]+1`
-/

namespace A364291.P7866682756640192702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A364291.P7866682756640192702

namespace A364291

/-- `lt[A005094(n+1), A364288(n+1)]+1` -/
def P7866682756640192702.Spec : Prop :=
  ∀ n, (P7866682756640192702.a n : ℤ) = A364291 (n + 1)

end A364291

/-! ## A364291.P12325642505491341841

`A000027(lt[A243071(n+1), n+2]+1)`
-/

namespace A364291.P12325642505491341841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A364291.P12325642505491341841

namespace A364291

/-- `A000027(lt[A243071(n+1), n+2]+1)` -/
def P12325642505491341841.Spec : Prop :=
  ∀ n, P12325642505491341841.a n = A364291 (n + 1)

end A364291

/-! ## A364291.P16571440922806675156

`lt[A243071(n+1), A026741(2*(n+2))]+1`
-/

namespace A364291.P16571440922806675156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A364291.P16571440922806675156

namespace A364291

/-- `lt[A243071(n+1), A026741(2*(n+2))]+1` -/
def P16571440922806675156.Spec : Prop :=
  ∀ n, (P16571440922806675156.a n : ℤ) = A364291 (n + 1)

end A364291

/-! ## A364291.P5452451664936026640

`lt[A243071(n+1), A001057(2*n+3)]+1`
-/

namespace A364291.P5452451664936026640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A364291.P5452451664936026640

namespace A364291

/-- `lt[A243071(n+1), A001057(2*n+3)]+1` -/
def P5452451664936026640.Spec : Prop :=
  ∀ n, (P5452451664936026640.a n : ℤ) = A364291 (n + 1)

end A364291

/-!
# A364292: Numbers k such that A163511(k) <= k.

The programs for A364292, the canonical program `A364292.P14793139162051283291` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364292 has offset 1).

The definition of A364292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364292.P14793139162051283291

`∪[A175332(n+1), A364287(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A364292

/-- `∪[A175332(n+1), A364287(n+1)]` -/
def P14793139162051283291.Spec : Prop :=
  ∀ n, (P14793139162051283291.a n : ℤ) = A364292 (n + 1)

theorem P14793139162051283291.correct : P14793139162051283291.Spec := by
  intro n
  simp only [A364292, Nat.add_sub_cancel]

end A364292

/-! ## A364292.P7039259375962844082

`lt[A364258(n), 1]`
-/

namespace A364292.P7039259375962844082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364258 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364292.P7039259375962844082

namespace A364292

/-- `lt[A364258(n), 1]` -/
def P7039259375962844082.Spec : Prop :=
  ∀ n, (P7039259375962844082.a n : ℤ) = A364292 (n + 1)

end A364292

/-! ## A364292.P7806569204019854668

`lt[A163511(n), n+1]`
-/

namespace A364292.P7806569204019854668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364292.P7806569204019854668

namespace A364292

/-- `lt[A163511(n), n+1]` -/
def P7806569204019854668.Spec : Prop :=
  ∀ n, (P7806569204019854668.a n : ℤ) = A364292 (n + 1)

end A364292

/-! ## A364292.P4961859787332162161

`lt[A163511(n)², A005563(n)]`
-/

namespace A364292.P4961859787332162161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364292.P4961859787332162161

namespace A364292

/-- `lt[A163511(n)², A005563(n)]` -/
def P4961859787332162161.Spec : Prop :=
  ∀ n, (P4961859787332162161.a n : ℤ) = A364292 (n + 1)

end A364292

/-! ## A364292.P6680576252982624660

`lt[A163511(n)-n, A364255(n)]`
-/

namespace A364292.P6680576252982624660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364292.P6680576252982624660

namespace A364292

/-- `lt[A163511(n)-n, A364255(n)]` -/
def P6680576252982624660.Spec : Prop :=
  ∀ n, (P6680576252982624660.a n : ℤ) = A364292 (n + 1)

end A364292

/-!
# A364293: Odd numbers k for which A163511(k) <= k.

The programs for A364293, the canonical program `A364293.P11641041435075088768` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364293 has offset 1).

The definition of A364293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364293.P11641041435075088768

`∩[2*n+1, A364292(n+1)]`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A364293

/-- `∩[2*n+1, A364292(n+1)]` -/
def P11641041435075088768.Spec : Prop :=
  ∀ n, (P11641041435075088768.a n : ℤ) = A364293 (n + 1)

theorem P11641041435075088768.correct : P11641041435075088768.Spec := by
  intro n
  simp only [A364293, Nat.add_sub_cancel]

end A364293

/-! ## A364293.P11872698543589514457

`∩[A364292(n+1), A004273(n)]`
-/

namespace A364293.P11872698543589514457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364293.P11872698543589514457

namespace A364293

/-- `∩[A364292(n+1), A004273(n)]` -/
def P11872698543589514457.Spec : Prop :=
  ∀ n, (P11872698543589514457.a n : ℤ) = A364293 (n + 1)

end A364293

/-! ## A364293.P4381402536388043515

`∩[A364292(n+1), A004274(n)]`
-/

namespace A364293.P4381402536388043515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364293.P4381402536388043515

namespace A364293

/-- `∩[A364292(n+1), A004274(n)]` -/
def P4381402536388043515.Spec : Prop :=
  ∀ n, (P4381402536388043515.a n : ℤ) = A364293 (n + 1)

end A364293

/-! ## A364293.P16582798753242048989

`∩[A364292(n+1), A004276(n)]`
-/

namespace A364293.P16582798753242048989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364293.P16582798753242048989

namespace A364293

/-- `∩[A364292(n+1), A004276(n)]` -/
def P16582798753242048989.Spec : Prop :=
  ∀ n, (P16582798753242048989.a n : ℤ) = A364293 (n + 1)

end A364293

/-! ## A364293.P18290559497993084501

`∩[A364292(n+1), A004281(n)]`
-/

namespace A364293.P18290559497993084501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364293.P18290559497993084501

namespace A364293

/-- `∩[A364292(n+1), A004281(n)]` -/
def P18290559497993084501.Spec : Prop :=
  ∀ n, (P18290559497993084501.a n : ℤ) = A364293 (n + 1)

end A364293

/-! ## A364293.P15116732498042295676

`∩[A364292(n+1), A060747(n)]`
-/

namespace A364293.P15116732498042295676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364293.P15116732498042295676

namespace A364293

/-- `∩[A364292(n+1), A060747(n)]` -/
def P15116732498042295676.Spec : Prop :=
  ∀ n, (P15116732498042295676.a n : ℤ) = A364293 (n + 1)

end A364293

/-! ## A364293.P3828405912282667036

`∩[A364292(n+1), A005818(n+1)]`
-/

namespace A364293.P3828405912282667036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364293.P3828405912282667036

namespace A364293

/-- `∩[A364292(n+1), A005818(n+1)]` -/
def P3828405912282667036.Spec : Prop :=
  ∀ n, (P3828405912282667036.a n : ℤ) = A364293 (n + 1)

end A364293

/-! ## A364293.P12848301087644885500

`∩[A364292(n+1), A088948(n+1)]`
-/

namespace A364293.P12848301087644885500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364293.P12848301087644885500

namespace A364293

/-- `∩[A364292(n+1), A088948(n+1)]` -/
def P12848301087644885500.Spec : Prop :=
  ∀ n, (P12848301087644885500.a n : ℤ) = A364293 (n + 1)

end A364293

/-! ## A364293.P11645015047925831687

`∩[A364292(n+1), A102213(n+1)]`
-/

namespace A364293.P11645015047925831687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364293.P11645015047925831687

namespace A364293

/-- `∩[A364292(n+1), A102213(n+1)]` -/
def P11645015047925831687.Spec : Prop :=
  ∀ n, (P11645015047925831687.a n : ℤ) = A364293 (n + 1)

end A364293

/-! ## A364293.P5912717106279123047

`∩[A364292(n+1), A144396(n+1)]`
-/

namespace A364293.P5912717106279123047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364293.P5912717106279123047

namespace A364293

/-- `∩[A364292(n+1), A144396(n+1)]` -/
def P5912717106279123047.Spec : Prop :=
  ∀ n, (P5912717106279123047.a n : ℤ) = A364293 (n + 1)

end A364293

/-! ## A364293.P8594697526892180850

`lt[A163511(n), n*n%2+1]`
-/

namespace A364293.P8594697526892180850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A364293.P8594697526892180850

namespace A364293

/-- `lt[A163511(n), n*n%2+1]` -/
def P8594697526892180850.Spec : Prop :=
  ∀ n, (P8594697526892180850.a n : ℤ) = A364293 (n + 1)

end A364293

/-! ## A364293.P15005890286988750354

`record[A026741(A364292(n+1))]`
-/

namespace A364293.P15005890286988750354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A364292 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364293.P15005890286988750354

namespace A364293

/-- `record[A026741(A364292(n+1))]` -/
def P15005890286988750354.Spec : Prop :=
  ∀ n, P15005890286988750354.a n = A364293 (n + 1)

end A364293

/-! ## A364293.P446245878775551627

`filter[A364292(n+1), A000035(#)]`
-/

namespace A364293.P446245878775551627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A364293.P446245878775551627

namespace A364293

/-- `filter[A364292(n+1), A000035(#)]` -/
def P446245878775551627.Spec : Prop :=
  ∀ n, P446245878775551627.a n = A364293 (n + 1)

end A364293

/-! ## A364293.P16957897921287629624

`filter[A364292(n+1), A266070(#)]`
-/

namespace A364293.P16957897921287629624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A364293.P16957897921287629624

namespace A364293

/-- `filter[A364292(n+1), A266070(#)]` -/
def P16957897921287629624.Spec : Prop :=
  ∀ n, P16957897921287629624.a n = A364293 (n + 1)

end A364293

/-! ## A364293.P18372580883598581741

`filter[A364292(n+1), A266719(#)]`
-/

namespace A364293.P18372580883598581741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A364293.P18372580883598581741

namespace A364293

/-- `filter[A364292(n+1), A266719(#)]` -/
def P18372580883598581741.Spec : Prop :=
  ∀ n, P18372580883598581741.a n = A364293 (n + 1)

end A364293

/-! ## A364293.P6246286820666150556

`filter[A364292(n+1), A296066(#)]`
-/

namespace A364293.P6246286820666150556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A364293.P6246286820666150556

namespace A364293

/-- `filter[A364292(n+1), A296066(#)]` -/
def P6246286820666150556.Spec : Prop :=
  ∀ n, P6246286820666150556.a n = A364293 (n + 1)

end A364293

/-!
# A364294: Difference k - A163511(k) computed for those odd numbers k for which the difference is nonnegative.

The programs for A364294, the canonical program `A364294.P12132562962203792627` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364294 has offset 1).

The definition of A364294 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A364258, A364293, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364294.P12132562962203792627

`-A364258(A364293(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A364294

/-- `-A364258(A364293(n+1))` -/
def P12132562962203792627.Spec : Prop :=
  ∀ n, P12132562962203792627.a n = A364294 (n + 1)

theorem P12132562962203792627.correct : P12132562962203792627.Spec := by
  intro n
  simp only [A364294, Nat.add_sub_cancel]

end A364294

/-! ## A364294.P17676130120471109427

`A000007(n+1)-A364258(A364293(n+1))`
-/

namespace A364294.P17676130120471109427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A364258 (A364293 (n + 1)).toNat

end

end A364294.P17676130120471109427

namespace A364294

/-- `A000007(n+1)-A364258(A364293(n+1))` -/
def P17676130120471109427.Spec : Prop :=
  ∀ n, P17676130120471109427.a n = A364294 (n + 1)

end A364294

/-! ## A364294.P12345327026885803899

`A010051(2*(n+2))-A364258(A364293(n+1))`
-/

namespace A364294.P12345327026885803899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 2)) - A364258 (A364293 (n + 1)).toNat

end

end A364294.P12345327026885803899

namespace A364294

/-- `A010051(2*(n+2))-A364258(A364293(n+1))` -/
def P12345327026885803899.Spec : Prop :=
  ∀ n, P12345327026885803899.a n = A364294 (n + 1)

end A364294

/-! ## A364294.P10692115205238014179

`A010054(A000040(n+4))-A364258(A364293(n+1))`
-/

namespace A364294.P10692115205238014179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000040 (n + 4)).toNat - A364258 (A364293 (n + 1)).toNat

end

end A364294.P10692115205238014179

namespace A364294

/-- `A010054(A000040(n+4))-A364258(A364293(n+1))` -/
def P10692115205238014179.Spec : Prop :=
  ∀ n, P10692115205238014179.a n = A364294 (n + 1)

end A364294

/-! ## A364294.P14945567177159550154

`A010054(A119504(n+1))-A364258(A364293(n+1))`
-/

namespace A364294.P14945567177159550154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A119504 (n + 1)).toNat - A364258 (A364293 (n + 1)).toNat

end

end A364294.P14945567177159550154

namespace A364294

/-- `A010054(A119504(n+1))-A364258(A364293(n+1))` -/
def P14945567177159550154.Spec : Prop :=
  ∀ n, P14945567177159550154.a n = A364294 (n + 1)

end A364294

/-!
# A364295: Numbers k such that A292943(k) = A292944(k).

The programs for A364295, there is no canonical definition to state claims against.
-/

/-! ## A364295.P10517107379107882313

`lt[A065395(A327076(n+1)), A128212(n+1)]+1`
-/

namespace A364295.P10517107379107882313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065395 (A327076 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128212 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A364295.P10517107379107882313

/-! ## A364295.P16452571876540486790

`∩[A020656(n+1), A291719(n+1)]`
-/

namespace A364295.P16452571876540486790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364295.P16452571876540486790

/-! ## A364295.P3772711184061303349

`eq[A277824(n), A301333(n)]`
-/

namespace A364295.P3772711184061303349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277824 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364295.P3772711184061303349

/-! ## A364295.P872937582589929081

`eq[A301333(n), A309026(n)]`
-/

namespace A364295.P872937582589929081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301333 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309026 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364295.P872937582589929081

/-!
# A364296: Odd numbers k for which A292943(k) == A292944(k).

The programs for A364296, there is no canonical definition to state claims against.
-/

/-! ## A364296.P11166215248803266425

`filter[A364295(n+1), A000035(#)]`
-/

namespace A364296.P11166215248803266425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A364296.P11166215248803266425

/-! ## A364296.P3995106681357043278

`∩[A364295(n+1), A178207(n)]`
-/

namespace A364296.P3995106681357043278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178207 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364296.P3995106681357043278

/-!
# A364297: a(n) = A348717(A163511(n)).

The programs for A364297, the canonical program `A364297.P2273147970006164047` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364297 has offset 0).

The definition of A364297 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A348717, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364297.P2273147970006164047

`A348717(A163511(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A364297

/-- `A348717(A163511(n))` -/
def P2273147970006164047.Spec : Prop :=
  ∀ n, P2273147970006164047.a n = A364297 n

theorem P2273147970006164047.correct : P2273147970006164047.Spec := by
  intro n
  simp only [A364297]

end A364297

/-! ## A364297.P7331482797092265084

`A348717(A364258(n)+n)`
-/

namespace A364297.P7331482797092265084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A364258 n + (n : ℤ)).toNat

end

end A364297.P7331482797092265084

namespace A364297

/-- `A348717(A364258(n)+n)` -/
def P7331482797092265084.Spec : Prop :=
  ∀ n, P7331482797092265084.a n = A364297 n

end A364297

/-! ## A364297.P671394965010437747

`A348717(gcd(n, A364258(n))*A364492(n))`
-/

namespace A364297.P671394965010437747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 ((Int.gcd (n : ℤ) (A364258 n) : ℤ) * A364492 n).toNat

end

end A364297.P671394965010437747

namespace A364297

/-- `A348717(gcd(n, A364258(n))*A364492(n))` -/
def P671394965010437747.Spec : Prop :=
  ∀ n, P671394965010437747.a n = A364297 n

end A364297

/-! ## A364297.P47609163150144374

`A064989(A163511(2*(n+1)))*A069932(2*n+1)`
-/

namespace A364297.P47609163150144374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A163511 (2 * (n + 1))).toNat * A069932 (2 * n + 1)

end

end A364297.P47609163150144374

namespace A364297

/-- `A064989(A163511(2*(n+1)))*A069932(2*n+1)` -/
def P47609163150144374.Spec : Prop :=
  ∀ n, P47609163150144374.a n = A364297 n

end A364297

/-! ## A364297.P7423661902923958005

`A137502(A281589(2*n+1)%A233315(3*n+2))`
-/

namespace A364297.P7423661902923958005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (Int.tmod (A281589 (2 * n + 1)) (A233315 (3 * n + 2))).toNat

end

end A364297.P7423661902923958005

namespace A364297

/-- `A137502(A281589(2*n+1)%A233315(3*n+2))` -/
def P7423661902923958005.Spec : Prop :=
  ∀ n, P7423661902923958005.a n = A364297 n

end A364297

/-!
# A364298: Square array read by ascending antidiagonals: T(n,k) = [x^k] 1/(1 + x) * Legendre_P(k, (1 - x)/(1 + x))^(-n) for n >= 1, k >= 0.

The programs for A364298, there is no canonical definition to state claims against.
-/

/-! ## A364298.P197958524227304320

`A089167(A352589(n))`
-/

namespace A364298.P197958524227304320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089167 (A352589 n).toNat

end

end A364298.P197958524227304320

/-! ## A364298.P13066006349205698522

`A352826(A354130(n))`
-/

namespace A364298.P13066006349205698522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352826 (A354130 n).toNat

end

end A364298.P13066006349205698522

/-! ## A364298.P17663492553469466466

`ceil((A127287(A124320(n)²)+1)/2)`
-/

namespace A364298.P17663492553469466466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127287 (A124320 n ^ 2).toNat + 1 : ℚ) / 2⌉

end

end A364298.P17663492553469466466

/-! ## A364298.P16477915321415965018

`A099392(A176120(n)%A224507(n+1))`
-/

namespace A364298.P16477915321415965018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (Int.tmod (A176120 n) (A224507 (n + 1))).toNat

end

end A364298.P16477915321415965018

/-! ## A364298.P1407613831223742350

`A224507(n+1)%A191370(A260355(n+1))`
-/

namespace A364298.P1407613831223742350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224507 (n + 1)) (A191370 (A260355 (n + 1)).toNat)

end

end A364298.P1407613831223742350

/-!
# A364299: a(n) = [x^n] 1/(1 + x) * Legendre_P(n, (1 - x)/(1 + x))^(-1) for n >= 0.

The programs for A364299, there is no canonical definition to state claims against.
-/

/-! ## A364299.P7757306767331076327

`A364298(∑[n+1])`
-/

namespace A364299.P7757306767331076327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364298 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364299.P7757306767331076327

/-! ## A364299.P9922498077247903785

`or(1, A364298(A000217(n+1)))`
-/

namespace A364299.P9922498077247903785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A364298 (A000217 (n + 1)).toNat)

end

end A364299.P9922498077247903785

/-! ## A364299.P15277241852285282705

`A364298(A262544(n+1))/∑{digits}[n, 10^#]%9`
-/

namespace A364299.P15277241852285282705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364298 (A262544 (n + 1)).toNat : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9 : ℕ) : ℚ)

end

end A364299.P15277241852285282705

/-! ## A364299.P9739139846306650394

`A364298(A262544(n+1))+A326598(n)`
-/

namespace A364299.P9739139846306650394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364298 (A262544 (n + 1)).toNat + A326598 n

end

end A364299.P9739139846306650394

