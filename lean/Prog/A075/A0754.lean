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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A075400: a(n) = A075399(n)/n.

The programs for A075400, there is no canonical definition to state claims against.
-/

/-! ## A075400.P5641844095751666346

`A075399(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075400.P5641844095751666346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075399 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A075400.P5641844095751666346

/-! ## A075400.P3132740511703800607

`A079840(A001104(n+1))/(n+1)`
-/

namespace A075400.P3132740511703800607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079840 (A001104 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A075400.P3132740511703800607

/-! ## A075400.P10333814062888866968

`A000027(A079840(n+1)/(n+1))`
-/

namespace A075400.P10333814062888866968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A079840 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A075400.P10333814062888866968

/-!
# A075402: Smallest number such that a(n) + T(n) is a prime, where T(n) is the n-th triangular number.

The programs for A075402, the canonical program `A075402.P300143287191139796` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075402 has offset 1).

The definition of A075402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075402.P300143287191139796

`A065383(n+1)-∑[n+1]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A075402

/-- `A065383(n+1)-∑[n+1]` -/
def P300143287191139796.Spec : Prop :=
  ∀ n, P300143287191139796.a n = A075402 (n + 1)

theorem P300143287191139796.correct : P300143287191139796.Spec := by
  intro n
  simp only [A075402, Nat.add_sub_cancel]

end A075402

/-! ## A075402.P5141964685505679240

`A065383(n+1)+7-A167487(n)`
-/

namespace A075402.P5141964685505679240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065383 (n + 1) + 7 - A167487 n

end

end A075402.P5141964685505679240

namespace A075402

/-- `A065383(n+1)+7-A167487(n)` -/
def P5141964685505679240.Spec : Prop :=
  ∀ n, P5141964685505679240.a n = A075402 (n + 1)

end A075402

/-! ## A075402.P6284005248348733825

`A065383(n+1)-n-A000124(n)`
-/

namespace A075402.P6284005248348733825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065383 (n + 1) - (n : ℤ) - A000124 n

end

end A075402.P6284005248348733825

namespace A075402

/-- `A065383(n+1)-n-A000124(n)` -/
def P6284005248348733825.Spec : Prop :=
  ∀ n, P6284005248348733825.a n = A075402 (n + 1)

end A075402

/-! ## A075402.P11728647376965399584

`A151800(∑[n]+n)-∑[n+1]`
-/

namespace A075402.P11728647376965399584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j + n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A075402.P11728647376965399584

namespace A075402

/-- `A151800(∑[n]+n)-∑[n+1]` -/
def P11728647376965399584.Spec : Prop :=
  ∀ n, P11728647376965399584.a n = A075402 (n + 1)

end A075402

/-! ## A075402.P11160202681354946523

`A000010(A065383(n+1))-A000096(n)`
-/

namespace A075402.P11160202681354946523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A065383 (n + 1)).toNat - A000096 n

end

end A075402.P11160202681354946523

namespace A075402

/-- `A000010(A065383(n+1))-A000096(n)` -/
def P11160202681354946523.Spec : Prop :=
  ∀ n, P11160202681354946523.a n = A075402 (n + 1)

end A075402

/-! ## A075402.P2934328239066885568

`A002260(A065383(n+1)/A014963(4*n+2))%A007918(n)`
-/

namespace A075402.P2934328239066885568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (SequenceMachineLib.roundAway ((A065383 (n + 1) : ℚ) / (A014963 (4 * n + 2) : ℚ))).toNat) (A007918 n)

end

end A075402.P2934328239066885568

namespace A075402

/-- `A002260(A065383(n+1)/A014963(4*n+2))%A007918(n)` -/
def P2934328239066885568.Spec : Prop :=
  ∀ n, P2934328239066885568.a n = A075402 (n + 1)

end A075402

/-! ## A075402.P13227708615797339164

`A007920(∑[n+1])`
-/

namespace A075402.P13227708615797339164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075402.P13227708615797339164

namespace A075402

/-- `A007920(∑[n+1])` -/
def P13227708615797339164.Spec : Prop :=
  ∀ n, P13227708615797339164.a n = A075402 (n + 1)

end A075402

/-! ## A075402.P12242792637295487889

`A308046(∑[n+1])/2`
-/

namespace A075402.P12242792637295487889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308046 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A075402.P12242792637295487889

namespace A075402

/-- `A308046(∑[n+1])/2` -/
def P12242792637295487889.Spec : Prop :=
  ∀ n, P12242792637295487889.a n = (A075402 (n + 1) : ℚ)

end A075402

/-! ## A075402.P815983382835189312

`A013632(∑[n]+n)-1`
-/

namespace A075402.P815983382835189312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (∑ j ∈ Finset.range (n + 1), f1 j + n) - 1

end

end A075402.P815983382835189312

namespace A075402

/-- `A013632(∑[n]+n)-1` -/
def P815983382835189312.Spec : Prop :=
  ∀ n, P815983382835189312.a n = A075402 (n + 1)

end A075402

/-! ## A075402.P18129262660990031637

`A007918(∑[n+1])-∑[n+1]`
-/

namespace A075402.P18129262660990031637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A075402.P18129262660990031637

namespace A075402

/-- `A007918(∑[n+1])-∑[n+1]` -/
def P18129262660990031637.Spec : Prop :=
  ∀ n, P18129262660990031637.a n = A075402 (n + 1)

end A075402

/-! ## A075402.P5141370009235943745

`A002262(A065383(n+1))`
-/

namespace A075402.P5141370009235943745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A065383 (n + 1)).toNat

end

end A075402.P5141370009235943745

namespace A075402

/-- `A002262(A065383(n+1))` -/
def P5141370009235943745.Spec : Prop :=
  ∀ n, P5141370009235943745.a n = A075402 (n + 1)

end A075402

/-! ## A075402.P14483527499730541279

`A051126(A077128(n+1))`
-/

namespace A075402.P14483527499730541279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051126 (A077128 (n + 1)).toNat

end

end A075402.P14483527499730541279

namespace A075402

/-- `A051126(A077128(n+1))` -/
def P14483527499730541279.Spec : Prop :=
  ∀ n, P14483527499730541279.a n = A075402 (n + 1)

end A075402

/-! ## A075402.P12353811652434561766

`A051126(A097050(n+1))`
-/

namespace A075402.P12353811652434561766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051126 (A097050 (n + 1)).toNat

end

end A075402.P12353811652434561766

namespace A075402

/-- `A051126(A097050(n+1))` -/
def P12353811652434561766.Spec : Prop :=
  ∀ n, P12353811652434561766.a n = A075402 (n + 1)

end A075402

/-! ## A075402.P1415839218714436870

`A002262(A007918(∑[n+1]))`
-/

namespace A075402.P1415839218714436870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A007918 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A075402.P1415839218714436870

namespace A075402

/-- `A002262(A007918(∑[n+1]))` -/
def P1415839218714436870.Spec : Prop :=
  ∀ n, P1415839218714436870.a n = A075402 (n + 1)

end A075402

/-! ## A075402.P13867923021122242970

`A014963(A065383(n+1))-A000217(n+1)`
-/

namespace A075402.P13867923021122242970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A065383 (n + 1)).toNat - A000217 (n + 1)

end

end A075402.P13867923021122242970

namespace A075402

/-- `A014963(A065383(n+1))-A000217(n+1)` -/
def P13867923021122242970.Spec : Prop :=
  ∀ n, P13867923021122242970.a n = A075402 (n + 1)

end A075402

/-!
# A075406: a(n) is the number of terms in the sum in A075405 (or 0 if no such square exists).

The programs for A075406, there is no canonical definition to state claims against.
-/

/-! ## A075406.P12683767595141810049

`((n+1)*A075404(n+1))%(A075404(n+1)+1)`
-/

namespace A075406.P12683767595141810049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A075404 (n + 1)) (A075404 (n + 1) + 1)

end

end A075406.P12683767595141810049

/-!
# A075408: Perfect powers pp such that pp+1 is prime.

The programs for A075408, the canonical program `A075408.P15345791535842021127` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075408 has offset 1).

The definition of A075408 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002496, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A075408.P15345791535842021127

`A002496(n+1)-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A075408

/-- `A002496(n+1)-1` -/
def P15345791535842021127.Spec : Prop :=
  ∀ n, P15345791535842021127.a n = A075408 (n + 1)

theorem P15345791535842021127.correct : P15345791535842021127.Spec := by
  intro n
  simp only [A075408, Nat.add_sub_cancel]

end A075408

/-! ## A075408.P16861964735602758992

`A005574(n+1)²`
-/

namespace A075408.P16861964735602758992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) ^ 2

end

end A075408.P16861964735602758992

namespace A075408

/-- `A005574(n+1)²` -/
def P16861964735602758992.Spec : Prop :=
  ∀ n, P16861964735602758992.a n = A075408 (n + 1)

end A075408

/-! ## A075408.P2044352482062677705

`(A059793(n)/2)²`
-/

namespace A075408.P2044352482062677705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A059793 n : ℚ) / 2) ^ 2

end

end A075408.P2044352482062677705

namespace A075408

/-- `(A059793(n)/2)²` -/
def P2044352482062677705.Spec : Prop :=
  ∀ n, P2044352482062677705.a n = (A075408 (n + 1) : ℚ)

end A075408

/-! ## A075408.P11707687491842544784

`(A089593(n+1)+1)²`
-/

namespace A075408.P11707687491842544784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089593 (n + 1) + 1) ^ 2

end

end A075408.P11707687491842544784

namespace A075408

/-- `(A089593(n+1)+1)²` -/
def P11707687491842544784.Spec : Prop :=
  ∀ n, P11707687491842544784.a n = A075408 (n + 1)

end A075408

/-! ## A075408.P3773415282202198282

`(1-A090693(n+1))²`
-/

namespace A075408.P3773415282202198282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A090693 (n + 1)) ^ 2

end

end A075408.P3773415282202198282

namespace A075408

/-- `(1-A090693(n+1))²` -/
def P3773415282202198282.Spec : Prop :=
  ∀ n, P3773415282202198282.a n = A075408 (n + 1)

end A075408

/-! ## A075408.P2838649190961529912

`A193558(n)+a(n-1)` with `a(0)=1`
-/

namespace A075408.P2838649190961529912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A193558 n + a (n - 1)

end

end A075408.P2838649190961529912

namespace A075408

/-- `A193558(n)+a(n-1)` -/
def P2838649190961529912.Spec : Prop :=
  ∀ n, P2838649190961529912.a n = A075408 (n + 1)

end A075408

/-! ## A075408.P8070575469413083965

`A005574(n+1)^A105220(A006257(n))`
-/

namespace A075408.P8070575469413083965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005574 (n + 1) : ℚ) ^ (A105220 (A006257 n).toNat : ℤ)

end

end A075408.P8070575469413083965

namespace A075408

/-- `A005574(n+1)^A105220(A006257(n))` -/
def P8070575469413083965.Spec : Prop :=
  ∀ n, P8070575469413083965.a n = (A075408 (n + 1) : ℚ)

end A075408

/-! ## A075408.P7471863732967018527

`A005574(n+1)*A005574(A000027(n+1))`
-/

namespace A075408.P7471863732967018527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) * A005574 (A000027 (n + 1)).toNat

end

end A075408.P7471863732967018527

namespace A075408

/-- `A005574(n+1)*A005574(A000027(n+1))` -/
def P7471863732967018527.Spec : Prop :=
  ∀ n, P7471863732967018527.a n = A075408 (n + 1)

end A075408

/-! ## A075408.P4858472963626896696

`(A059793(n)-A005574(n+1))*A005574(n+1)`
-/

namespace A075408.P4858472963626896696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059793 n - A005574 (n + 1)) * A005574 (n + 1)

end

end A075408.P4858472963626896696

namespace A075408

/-- `(A059793(n)-A005574(n+1))*A005574(n+1)` -/
def P4858472963626896696.Spec : Prop :=
  ∀ n, P4858472963626896696.a n = A075408 (n + 1)

end A075408

/-! ## A075408.P17045071984256498621

`floor(sqrt(A163588(n+2)))²`
-/

namespace A075408.P17045071984256498621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A163588 (n + 2)) ^ 2

end

end A075408.P17045071984256498621

namespace A075408

/-- `floor(sqrt(A163588(n+2)))²` -/
def P17045071984256498621.Spec : Prop :=
  ∀ n, P17045071984256498621.a n = A075408 (n + 1)

end A075408

/-! ## A075408.P2008580424531991070

`A163588(A065475(n+1))-1`
-/

namespace A075408.P2008580424531991070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (A065475 (n + 1)).toNat - 1

end

end A075408.P2008580424531991070

namespace A075408

/-- `A163588(A065475(n+1))-1` -/
def P2008580424531991070.Spec : Prop :=
  ∀ n, P2008580424531991070.a n = A075408 (n + 1)

end A075408

/-! ## A075408.P3747130341249311141

`A163588(A181440(n+2))-1`
-/

namespace A075408.P3747130341249311141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (A181440 (n + 2)).toNat - 1

end

end A075408.P3747130341249311141

namespace A075408

/-- `A163588(A181440(n+2))-1` -/
def P3747130341249311141.Spec : Prop :=
  ∀ n, P3747130341249311141.a n = A075408 (n + 1)

end A075408

/-! ## A075408.P16547981796329513647

`A163588(A184985(n+2))-1`
-/

namespace A075408.P16547981796329513647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (A184985 (n + 2)).toNat - 1

end

end A075408.P16547981796329513647

namespace A075408

/-- `A163588(A184985(n+2))-1` -/
def P16547981796329513647.Spec : Prop :=
  ∀ n, P16547981796329513647.a n = A075408 (n + 1)

end A075408

/-! ## A075408.P2818458099168172593

`(eq[1, A295405(n+1)]+1)²`
-/

namespace A075408.P2818458099168172593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A075408.P2818458099168172593

namespace A075408

/-- `(eq[1, A295405(n+1)]+1)²` -/
def P2818458099168172593.Spec : Prop :=
  ∀ n, (P2818458099168172593.a n : ℤ) = A075408 (n + 1)

end A075408

/-! ## A075408.P2866424980410401625

`∩[A054755(n+1)-1, n²]`
-/

namespace A075408.P2866424980410401625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A075408.P2866424980410401625

namespace A075408

/-- `∩[A054755(n+1)-1, n²]` -/
def P2866424980410401625.Spec : Prop :=
  ∀ n, (P2866424980410401625.a n : ℤ) = A075408 (n + 1)

end A075408

/-! ## A075408.P13904373518716308629

`∩[A088259(n+1), A221285(n+1)]`
-/

namespace A075408.P13904373518716308629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075408.P13904373518716308629

namespace A075408

/-- `∩[A088259(n+1), A221285(n+1)]` -/
def P13904373518716308629.Spec : Prop :=
  ∀ n, (P13904373518716308629.a n : ℤ) = A075408 (n + 1)

end A075408

/-! ## A075408.P262923630266994040

`∩[A055808(n), A088259(n+1)]`
-/

namespace A075408.P262923630266994040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055808 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075408.P262923630266994040

namespace A075408

/-- `∩[A055808(n), A088259(n+1)]` -/
def P262923630266994040.Spec : Prop :=
  ∀ n, (P262923630266994040.a n : ℤ) = A075408 (n + 1)

end A075408

/-! ## A075408.P14934759469358872063

`∩[A088259(n+1), A256944(n+1)]`
-/

namespace A075408.P14934759469358872063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075408.P14934759469358872063

namespace A075408

/-- `∩[A088259(n+1), A256944(n+1)]` -/
def P14934759469358872063.Spec : Prop :=
  ∀ n, (P14934759469358872063.a n : ℤ) = A075408 (n + 1)

end A075408

/-! ## A075408.P14810373746463076853

`A106743(A000040(n+1))+A002496(n+1)`
-/

namespace A075408.P14810373746463076853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106743 (A000040 (n + 1)).toNat + A002496 (n + 1)

end

end A075408.P14810373746463076853

namespace A075408

/-- `A106743(A000040(n+1))+A002496(n+1)` -/
def P14810373746463076853.Spec : Prop :=
  ∀ n, P14810373746463076853.a n = A075408 (n + 1)

end A075408

/-! ## A075408.P6775888019721420647

`floor(sqrt(A168024(n)))²`
-/

namespace A075408.P6775888019721420647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A168024 n) ^ 2

end

end A075408.P6775888019721420647

namespace A075408

/-- `floor(sqrt(A168024(n)))²` -/
def P6775888019721420647.Spec : Prop :=
  ∀ n, P6775888019721420647.a n = A075408 (n + 1)

end A075408

/-!
# A075409: a(n) is the smallest m such that n!-m and n!+m are both primes.

The programs for A075409, there is no canonical definition to state claims against.
-/

/-! ## A075409.P4068475054834818122

`A245697(n+3)/(n+3)`
-/

namespace A075409.P4068475054834818122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245697 (n + 3) : ℚ) / (n + 3 : ℚ)

end

end A075409.P4068475054834818122

/-!
# A075411: Squares of A002276.

The programs for A075411, the canonical program `A075411.P3946849046165392203` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075411 has offset 0).

The definition of A075411 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075411.P3946849046165392203

`A002276(n)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075411

/-- `A002276(n)²` -/
def P3946849046165392203.Spec : Prop :=
  ∀ n, P3946849046165392203.a n = A075411 n

theorem P3946849046165392203.correct : P3946849046165392203.Spec := by
  intro n
  simp only [A075411]

end A075411

/-! ## A075411.P17523045378963629922

`(2*A002275(n))²`
-/

namespace A075411.P17523045378963629922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A002275 n) ^ 2

end

end A075411.P17523045378963629922

namespace A075411

/-- `(2*A002275(n))²` -/
def P17523045378963629922.Spec : Prop :=
  ∀ n, P17523045378963629922.a n = A075411 n

end A075411

/-! ## A075411.P15976416058471416173

`4*(10^n-1)²/81`
-/

namespace A075411.P15976416058471416173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * ((10 ^ n : ℤ) - 1) ^ 2 : ℚ) / 81

end

end A075411.P15976416058471416173

namespace A075411

/-- `4*(10^n-1)²/81` -/
def P15976416058471416173.Spec : Prop :=
  ∀ n, P15976416058471416173.a n = (A075411 n : ℚ)

end A075411

/-! ## A075411.P15830011391756988661

`lcm(4, floor(10^n/9)²)`
-/

namespace A075411.P15830011391756988661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (⌊(10 ^ n : ℚ) / 9⌋ ^ 2)

end

end A075411.P15830011391756988661

namespace A075411

/-- `lcm(4, floor(10^n/9)²)` -/
def P15830011391756988661.Spec : Prop :=
  ∀ n, (P15830011391756988661.a n : ℤ) = A075411 n

end A075411

/-! ## A075411.P12523577869663669191

`∑[10*a(n-1)]²` with `a(0)=0, a(1)=2`
-/

namespace A075411.P12523577869663669191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A075411.P12523577869663669191

namespace A075411

/-- `∑[10*a(n-1)]²` -/
def P12523577869663669191.Spec : Prop :=
  ∀ n, (P12523577869663669191.a n : ℤ) = A075411 n

end A075411

/-! ## A075411.P2700798579756725599

`4*round(or(1, 10^n)/9)²`
-/

namespace A075411.P2700798579756725599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.roundAway ((Nat.lor 1 (10 ^ n) : ℚ) / 9) ^ 2

end

end A075411.P2700798579756725599

namespace A075411

/-- `4*round(or(1, 10^n)/9)²` -/
def P2700798579756725599.Spec : Prop :=
  ∀ n, P2700798579756725599.a n = A075411 n

end A075411

/-! ## A075411.P14392635619084180965

`4*(∑[10^n]%(10^n))²`
-/

namespace A075411.P14392635619084180965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * ((∑ j ∈ Finset.range (n + 1), f1 j) % 10 ^ n) ^ 2

end

end A075411.P14392635619084180965

namespace A075411

/-- `4*(∑[10^n]%(10^n))²` -/
def P14392635619084180965.Spec : Prop :=
  ∀ n, (P14392635619084180965.a n : ℤ) = A075411 n

end A075411

/-! ## A075411.P2879326830842088771

`4*∑[and(10^n, -2)/10]²`
-/

namespace A075411.P2879326830842088771
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (10 ^ n : ℤ) (-2) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A075411.P2879326830842088771

namespace A075411

/-- `4*∑[and(10^n, -2)/10]²` -/
def P2879326830842088771.Spec : Prop :=
  ∀ n, P2879326830842088771.a n = (A075411 n : ℚ)

end A075411

/-! ## A075411.P9158039707817127572

`4*xor(-ceil(10^n/9), -1)²`
-/

namespace A075411.P9158039707817127572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.xor (-⌈(10 ^ n : ℚ) / 9⌉) (-1) ^ 2

end

end A075411.P9158039707817127572

namespace A075411

/-- `4*xor(-ceil(10^n/9), -1)²` -/
def P9158039707817127572.Spec : Prop :=
  ∀ n, P9158039707817127572.a n = A075411 n

end A075411

/-! ## A075411.P7385331847185746186

`4*and(∑[floor(10^(n-1))], -1)²`
-/

namespace A075411.P7385331847185746186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1) ^ 2

end

end A075411.P7385331847185746186

namespace A075411

/-- `4*and(∑[floor(10^(n-1))], -1)²` -/
def P7385331847185746186.Spec : Prop :=
  ∀ n, P7385331847185746186.a n = A075411 n

end A075411

/-!
# A075412: Squares of A002277.

The programs for A075412, the canonical program `A075412.P250540107073247414` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075412 has offset 0).

The definition of A075412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075412.P250540107073247414

`A002277(n)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075412

/-- `A002277(n)²` -/
def P250540107073247414.Spec : Prop :=
  ∀ n, P250540107073247414.a n = A075412 n

theorem P250540107073247414.correct : P250540107073247414.Spec := by
  intro n
  simp only [A075412]

end A075412

/-! ## A075412.P10931318750681074967

`(3*A002275(n))²`
-/

namespace A075412.P10931318750681074967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A002275 n) ^ 2

end

end A075412.P10931318750681074967

namespace A075412

/-- `(3*A002275(n))²` -/
def P10931318750681074967.Spec : Prop :=
  ∀ n, P10931318750681074967.a n = A075412 n

end A075412

/-! ## A075412.P8586126903510995732

`A002283(n)*A002275(n)`
-/

namespace A075412.P8586126903510995732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n * A002275 n

end

end A075412.P8586126903510995732

namespace A075412

/-- `A002283(n)*A002275(n)` -/
def P8586126903510995732.Spec : Prop :=
  ∀ n, P8586126903510995732.a n = A075412 n

end A075412

/-! ## A075412.P8866142581376477966

`(10^(n+1)-10)²/900`
-/

namespace A075412.P8866142581376477966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((10 ^ (n + 1) : ℤ) - 10) ^ 2 : ℚ) / 900

end

end A075412.P8866142581376477966

namespace A075412

/-- `(10^(n+1)-10)²/900` -/
def P8866142581376477966.Spec : Prop :=
  ∀ n, P8866142581376477966.a n = (A075412 n : ℚ)

end A075412

/-! ## A075412.P13914920487620171852

`∑[10*a(n-1)]²` with `a(0)=0, a(1)=3`
-/

namespace A075412.P13914920487620171852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A075412.P13914920487620171852

namespace A075412

/-- `∑[10*a(n-1)]²` -/
def P13914920487620171852.Spec : Prop :=
  ∀ n, (P13914920487620171852.a n : ℤ) = A075412 n

end A075412

/-! ## A075412.P3708776562255386480

`9*round(or(1, 10^n)/9)²`
-/

namespace A075412.P3708776562255386480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * SequenceMachineLib.roundAway ((Nat.lor 1 (10 ^ n) : ℚ) / 9) ^ 2

end

end A075412.P3708776562255386480

namespace A075412

/-- `9*round(or(1, 10^n)/9)²` -/
def P3708776562255386480.Spec : Prop :=
  ∀ n, P3708776562255386480.a n = A075412 n

end A075412

/-! ## A075412.P9874837897461932184

`9*(∑[10^n]%(10^n))²`
-/

namespace A075412.P9874837897461932184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * ((∑ j ∈ Finset.range (n + 1), f1 j) % 10 ^ n) ^ 2

end

end A075412.P9874837897461932184

namespace A075412

/-- `9*(∑[10^n]%(10^n))²` -/
def P9874837897461932184.Spec : Prop :=
  ∀ n, (P9874837897461932184.a n : ℤ) = A075412 n

end A075412

/-! ## A075412.P536276547413912443

`floor(10^n/3)^ceil(cosh(sin(n)))`
-/

namespace A075412.P536276547413912443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(10 ^ n : ℚ) / 3⌋ : ℚ) ^ (⌈Real.cosh (Real.sin (n : ℝ))⌉ : ℤ)

end

end A075412.P536276547413912443

namespace A075412

/-- `floor(10^n/3)^ceil(cosh(sin(n)))` -/
def P536276547413912443.Spec : Prop :=
  ∀ n, P536276547413912443.a n = (A075412 n : ℚ)

end A075412

/-! ## A075412.P5492090628206170561

`9*∑[and(10^n, -2)/10]²`
-/

namespace A075412.P5492090628206170561
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (10 ^ n : ℤ) (-2) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A075412.P5492090628206170561

namespace A075412

/-- `9*∑[and(10^n, -2)/10]²` -/
def P5492090628206170561.Spec : Prop :=
  ∀ n, P5492090628206170561.a n = (A075412 n : ℚ)

end A075412

/-! ## A075412.P7959209491815824189

`(10^n-1)*round(or(1, 10^n)/9)`
-/

namespace A075412.P7959209491815824189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 1) * SequenceMachineLib.roundAway ((Nat.lor 1 (10 ^ n) : ℚ) / 9)

end

end A075412.P7959209491815824189

namespace A075412

/-- `(10^n-1)*round(or(1, 10^n)/9)` -/
def P7959209491815824189.Spec : Prop :=
  ∀ n, P7959209491815824189.a n = A075412 n

end A075412

/-!
# A075413: Squares of A002278.

The programs for A075413, the canonical program `A075413.P15256953375010345913` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075413 has offset 0).

The definition of A075413 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075413.P15256953375010345913

`A002278(n)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075413

/-- `A002278(n)²` -/
def P15256953375010345913.Spec : Prop :=
  ∀ n, P15256953375010345913.a n = A075413 n

theorem P15256953375010345913.correct : P15256953375010345913.Spec := by
  intro n
  simp only [A075413]

end A075413

/-! ## A075413.P11343253305467935530

`(4*A002275(n))²`
-/

namespace A075413.P11343253305467935530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A002275 n) ^ 2

end

end A075413.P11343253305467935530

namespace A075413

/-- `(4*A002275(n))²` -/
def P11343253305467935530.Spec : Prop :=
  ∀ n, P11343253305467935530.a n = A075413 n

end A075413

/-! ## A075413.P6917835116392254002

`16*(10^n-1)²/81`
-/

namespace A075413.P6917835116392254002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 * ((10 ^ n : ℤ) - 1) ^ 2 : ℚ) / 81

end

end A075413.P6917835116392254002

namespace A075413

/-- `16*(10^n-1)²/81` -/
def P6917835116392254002.Spec : Prop :=
  ∀ n, P6917835116392254002.a n = (A075413 n : ℚ)

end A075413

/-! ## A075413.P5215360850156062516

`lcm(16, floor(10^n/9)²)`
-/

namespace A075413.P5215360850156062516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 16 (⌊(10 ^ n : ℚ) / 9⌋ ^ 2)

end

end A075413.P5215360850156062516

namespace A075413

/-- `lcm(16, floor(10^n/9)²)` -/
def P5215360850156062516.Spec : Prop :=
  ∀ n, (P5215360850156062516.a n : ℤ) = A075413 n

end A075413

/-! ## A075413.P16612747625774837285

`∑[10*a(n-1)]²` with `a(0)=0, a(1)=4`
-/

namespace A075413.P16612747625774837285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A075413.P16612747625774837285

namespace A075413

/-- `∑[10*a(n-1)]²` -/
def P16612747625774837285.Spec : Prop :=
  ∀ n, (P16612747625774837285.a n : ℤ) = A075413 n

end A075413

/-! ## A075413.P9886215140296519484

`16*round(or(1, 10^n)/9)²`
-/

namespace A075413.P9886215140296519484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * SequenceMachineLib.roundAway ((Nat.lor 1 (10 ^ n) : ℚ) / 9) ^ 2

end

end A075413.P9886215140296519484

namespace A075413

/-- `16*round(or(1, 10^n)/9)²` -/
def P9886215140296519484.Spec : Prop :=
  ∀ n, P9886215140296519484.a n = A075413 n

end A075413

/-! ## A075413.P17171740028749209361

`4*A075411(n)`
-/

namespace A075413.P17171740028749209361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A075411 n

end

end A075413.P17171740028749209361

namespace A075413

/-- `4*A075411(n)` -/
def P17171740028749209361.Spec : Prop :=
  ∀ n, P17171740028749209361.a n = A075413 n

end A075413

/-! ## A075413.P1030771027939114276

`(2*A002276(n))²`
-/

namespace A075413.P1030771027939114276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A002276 n) ^ 2

end

end A075413.P1030771027939114276

namespace A075413

/-- `(2*A002276(n))²` -/
def P1030771027939114276.Spec : Prop :=
  ∀ n, P1030771027939114276.a n = A075413 n

end A075413

/-! ## A075413.P3719622295869172063

`A002276(n)*A002282(n)`
-/

namespace A075413.P3719622295869172063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n * A002282 n

end

end A075413.P3719622295869172063

namespace A075413

/-- `A002276(n)*A002282(n)` -/
def P3719622295869172063.Spec : Prop :=
  ∀ n, P3719622295869172063.a n = A075413 n

end A075413

/-! ## A075413.P9417531281590844042

`(A002279(n)+A002277(n))*A002276(n)`
-/

namespace A075413.P9417531281590844042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002279 n + A002277 n) * A002276 n

end

end A075413.P9417531281590844042

namespace A075413

/-- `(A002279(n)+A002277(n))*A002276(n)` -/
def P9417531281590844042.Spec : Prop :=
  ∀ n, P9417531281590844042.a n = A075413 n

end A075413

/-!
# A075414: Squares of A002279: a(n) = (5*(10^n - 1)/9)^2.

The programs for A075414, the canonical program `A075414.P18308230916955902644` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075414 has offset 0).

The definition of A075414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075414.P13084356715181726652

`(5*(10^n-1)/9)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075414.P13084356715181726652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * ((10 ^ n : ℤ) - 1) : ℚ) / 9) ^ 2

end

end A075414.P13084356715181726652

namespace A075414

/-- `(5*(10^n-1)/9)²` -/
def P13084356715181726652.Spec : Prop :=
  ∀ n, P13084356715181726652.a n = (A075414 n : ℚ)

end A075414

/-! ## A075414.P18308230916955902644

`25*A002275(n)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075414

/-- `25*A002275(n)²` -/
def P18308230916955902644.Spec : Prop :=
  ∀ n, P18308230916955902644.a n = A075414 n

theorem P18308230916955902644.correct : P18308230916955902644.Spec := by
  intro n
  simp only [A075414]

end A075414

/-! ## A075414.P10640673971219565568

`lcm(25, floor(10^n/9)²)`
-/

namespace A075414.P10640673971219565568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 25 (⌊(10 ^ n : ℚ) / 9⌋ ^ 2)

end

end A075414.P10640673971219565568

namespace A075414

/-- `lcm(25, floor(10^n/9)²)` -/
def P10640673971219565568.Spec : Prop :=
  ∀ n, (P10640673971219565568.a n : ℤ) = A075414 n

end A075414

/-! ## A075414.P8674741254688880056

`floor(∑[10*a(n-1)]²)` with `a(0)=0, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A075414.P8674741254688880056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A075414.P8674741254688880056

namespace A075414

/-- `floor(∑[10*a(n-1)]²)` -/
def P8674741254688880056.Spec : Prop :=
  ∀ n, (P8674741254688880056.a n : ℤ) = A075414 n

end A075414

/-! ## A075414.P4751370566730041267

`ceil((5*∑[and(10^n, -2)/10])²)`
-/

namespace A075414.P4751370566730041267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (10 ^ n : ℤ) (-2) : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 * (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2⌉

end

end A075414.P4751370566730041267

namespace A075414

/-- `ceil((5*∑[and(10^n, -2)/10])²)` -/
def P4751370566730041267.Spec : Prop :=
  ∀ n, P4751370566730041267.a n = A075414 n

end A075414

/-! ## A075414.P15320576868598022597

`round((5*∑[and(10^n, -2)/10])²)`
-/

namespace A075414.P15320576868598022597
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (10 ^ n : ℤ) (-2) : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 * (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2)

end

end A075414.P15320576868598022597

namespace A075414

/-- `round((5*∑[and(10^n, -2)/10])²)` -/
def P15320576868598022597.Spec : Prop :=
  ∀ n, P15320576868598022597.a n = A075414 n

end A075414

/-! ## A075414.P3471534280137091677

`and((5*round(or(1, 10^n)/9))², -1)`
-/

namespace A075414.P3471534280137091677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((5 * SequenceMachineLib.roundAway ((Nat.lor 1 (10 ^ n) : ℚ) / 9)) ^ 2) (-1)

end

end A075414.P3471534280137091677

namespace A075414

/-- `and((5*round(or(1, 10^n)/9))², -1)` -/
def P3471534280137091677.Spec : Prop :=
  ∀ n, P3471534280137091677.a n = A075414 n

end A075414

/-! ## A075414.P3022289448636669310

`and(xor(-∑[ceil(10^n/2)], -1)², -1)`
-/

namespace A075414.P3022289448636669310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 ^ n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.xor (-(∑ j ∈ Finset.range (n + 1), f1 j)) (-1) ^ 2) (-1)

end

end A075414.P3022289448636669310

namespace A075414

/-- `and(xor(-∑[ceil(10^n/2)], -1)², -1)` -/
def P3022289448636669310.Spec : Prop :=
  ∀ n, P3022289448636669310.a n = A075414 n

end A075414

/-! ## A075414.P6278048146187740017

`5*round(or(1, 10^n)/9)*∑[floor(10^n/2)]`
-/

namespace A075414.P6278048146187740017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.roundAway ((Nat.lor 1 (10 ^ n) : ℚ) / 9) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075414.P6278048146187740017

namespace A075414

/-- `5*round(or(1, 10^n)/9)*∑[floor(10^n/2)]` -/
def P6278048146187740017.Spec : Prop :=
  ∀ n, P6278048146187740017.a n = A075414 n

end A075414

/-! ## A075414.P7673858753263596468

`A002279(n)*A002279(n)`
-/

namespace A075414.P7673858753263596468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n * A002279 n

end

end A075414.P7673858753263596468

namespace A075414

/-- `A002279(n)*A002279(n)` -/
def P7673858753263596468.Spec : Prop :=
  ∀ n, P7673858753263596468.a n = A075414 n

end A075414

/-!
# A075415: Squares of A002280 or numbers (666...6)^2.

The programs for A075415, the canonical program `A075415.P11021567169670253529` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075415 has offset 0).

The definition of A075415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075415.P8990561158481708762

`(6*(10^n-1)/9)²`
-/

namespace A075415.P8990561158481708762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * ((10 ^ n : ℤ) - 1) : ℚ) / 9) ^ 2

end

end A075415.P8990561158481708762

namespace A075415

/-- `(6*(10^n-1)/9)²` -/
def P8990561158481708762.Spec : Prop :=
  ∀ n, P8990561158481708762.a n = (A075415 n : ℚ)

end A075415

/-! ## A075415.P11021567169670253529

`A002283(n)*A002278(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075415

/-- `A002283(n)*A002278(n)` -/
def P11021567169670253529.Spec : Prop :=
  ∀ n, P11021567169670253529.a n = A075415 n

theorem P11021567169670253529.correct : P11021567169670253529.Spec := by
  intro n
  simp only [A075415]

end A075415

/-! ## A075415.P13919767033415138114

`lcm(4, floor(10^n/3)²)`
-/

namespace A075415.P13919767033415138114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (⌊(10 ^ n : ℚ) / 3⌋ ^ 2)

end

end A075415.P13919767033415138114

namespace A075415

/-- `lcm(4, floor(10^n/3)²)` -/
def P13919767033415138114.Spec : Prop :=
  ∀ n, (P13919767033415138114.a n : ℤ) = A075415 n

end A075415

/-! ## A075415.P17875750129974169710

`floor(∑[10*a(n-1)]²)` with `a(0)=0, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A075415.P17875750129974169710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A075415.P17875750129974169710

namespace A075415

/-- `floor(∑[10*a(n-1)]²)` -/
def P17875750129974169710.Spec : Prop :=
  ∀ n, (P17875750129974169710.a n : ℤ) = A075415 n

end A075415

/-! ## A075415.P9935777502916917514

`4*A075412(n)`
-/

namespace A075415.P9935777502916917514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A075412 n

end

end A075415.P9935777502916917514

namespace A075415

/-- `4*A075412(n)` -/
def P9935777502916917514.Spec : Prop :=
  ∀ n, P9935777502916917514.a n = A075415 n

end A075415

/-! ## A075415.P3902789902716561180

`6*A271528(n)`
-/

namespace A075415.P3902789902716561180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A271528 n

end

end A075415.P3902789902716561180

namespace A075415

/-- `6*A271528(n)` -/
def P3902789902716561180.Spec : Prop :=
  ∀ n, P3902789902716561180.a n = A075415 n

end A075415

/-! ## A075415.P8177306287620638715

`9*A075411(n)`
-/

namespace A075415.P8177306287620638715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A075411 n

end

end A075415.P8177306287620638715

namespace A075415

/-- `9*A075411(n)` -/
def P8177306287620638715.Spec : Prop :=
  ∀ n, P8177306287620638715.a n = A075415 n

end A075415

/-! ## A075415.P17534970351504159317

`4*A002277(n)²`
-/

namespace A075415.P17534970351504159317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002277 n ^ 2

end

end A075415.P17534970351504159317

namespace A075415

/-- `4*A002277(n)²` -/
def P17534970351504159317.Spec : Prop :=
  ∀ n, P17534970351504159317.a n = A075415 n

end A075415

/-! ## A075415.P5050068120699241922

`9*A002276(n)²`
-/

namespace A075415.P5050068120699241922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A002276 n ^ 2

end

end A075415.P5050068120699241922

namespace A075415

/-- `9*A002276(n)²` -/
def P5050068120699241922.Spec : Prop :=
  ∀ n, P5050068120699241922.a n = A075415 n

end A075415

/-! ## A075415.P14182692161685524640

`floor(2/3*10^n)^A020639((n%2)^n+n)`
-/

namespace A075415.P14182692161685524640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(2 : ℚ) / 3 * (10 ^ n : ℚ)⌋ : ℚ) ^ (A020639 ((n % 2) ^ n + n) : ℤ)

end

end A075415.P14182692161685524640

namespace A075415

/-- `floor(2/3*10^n)^A020639((n%2)^n+n)` -/
def P14182692161685524640.Spec : Prop :=
  ∀ n, P14182692161685524640.a n = (A075415 n : ℚ)

end A075415

/-!
# A075416: Squares of A002281.

The programs for A075416, the canonical program `A075416.P12867209049900702389` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075416 has offset 0).

The definition of A075416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075416.P12867209049900702389

`A002281(n)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075416

/-- `A002281(n)²` -/
def P12867209049900702389.Spec : Prop :=
  ∀ n, P12867209049900702389.a n = A075416 n

theorem P12867209049900702389.correct : P12867209049900702389.Spec := by
  intro n
  simp only [A075416]

end A075416

/-! ## A075416.P3827215870174456376

`(7*A002275(n))²`
-/

namespace A075416.P3827215870174456376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * A002275 n) ^ 2

end

end A075416.P3827215870174456376

namespace A075416

/-- `(7*A002275(n))²` -/
def P3827215870174456376.Spec : Prop :=
  ∀ n, P3827215870174456376.a n = A075416 n

end A075416

/-! ## A075416.P15320381555645458450

`49*(10^n-1)²/81`
-/

namespace A075416.P15320381555645458450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (49 * ((10 ^ n : ℤ) - 1) ^ 2 : ℚ) / 81

end

end A075416.P15320381555645458450

namespace A075416

/-- `49*(10^n-1)²/81` -/
def P15320381555645458450.Spec : Prop :=
  ∀ n, P15320381555645458450.a n = (A075416 n : ℚ)

end A075416

/-! ## A075416.P14533022519942286798

`∑[10*a(n-1)]²` with `a(0)=0, a(1)=7`
-/

namespace A075416.P14533022519942286798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A075416.P14533022519942286798

namespace A075416

/-- `∑[10*a(n-1)]²` -/
def P14533022519942286798.Spec : Prop :=
  ∀ n, (P14533022519942286798.a n : ℤ) = A075416 n

end A075416

/-! ## A075416.P4625967716475266611

`floor(7/9*10^n)^A000005(A051698(n))`
-/

namespace A075416.P4625967716475266611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(7 : ℚ) / 9 * (10 ^ n : ℚ)⌋ : ℚ) ^ (A000005 (A051698 n).toNat : ℤ)

end

end A075416.P4625967716475266611

namespace A075416

/-- `floor(7/9*10^n)^A000005(A051698(n))` -/
def P4625967716475266611.Spec : Prop :=
  ∀ n, P4625967716475266611.a n = (A075416 n : ℚ)

end A075416

/-! ## A075416.P17344874748441935819

`floor(7/9*10^n)^A000005(A002476(n+1))`
-/

namespace A075416.P17344874748441935819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(7 : ℚ) / 9 * (10 ^ n : ℚ)⌋ : ℚ) ^ (A000005 (A002476 (n + 1)).toNat : ℤ)

end

end A075416.P17344874748441935819

namespace A075416

/-- `floor(7/9*10^n)^A000005(A002476(n+1))` -/
def P17344874748441935819.Spec : Prop :=
  ∀ n, P17344874748441935819.a n = (A075416 n : ℚ)

end A075416

/-! ## A075416.P14347653872181167985

`floor(7/9*10^n)^A000005(A038903(n+1))`
-/

namespace A075416.P14347653872181167985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(7 : ℚ) / 9 * (10 ^ n : ℚ)⌋ : ℚ) ^ (A000005 (A038903 (n + 1)).toNat : ℤ)

end

end A075416.P14347653872181167985

namespace A075416

/-- `floor(7/9*10^n)^A000005(A038903(n+1))` -/
def P14347653872181167985.Spec : Prop :=
  ∀ n, P14347653872181167985.a n = (A075416 n : ℚ)

end A075416

/-! ## A075416.P8901710021407485263

`floor(7/9*10^n)^A020639(A139279(n+1))`
-/

namespace A075416.P8901710021407485263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(7 : ℚ) / 9 * (10 ^ n : ℚ)⌋ : ℚ) ^ (A020639 (A139279 (n + 1)).toNat : ℤ)

end

end A075416.P8901710021407485263

namespace A075416

/-- `floor(7/9*10^n)^A020639(A139279(n+1))` -/
def P8901710021407485263.Spec : Prop :=
  ∀ n, P8901710021407485263.a n = (A075416 n : ℚ)

end A075416

/-!
# A075417: Squares of A002282: a(n) = (8*(10^n - 1)/9)^2.

The programs for A075417, the canonical program `A075417.P7598423870228793073` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075417 has offset 0).

The definition of A075417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075417.P188123289311506945

`(8*(10^n-1)/9)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075417.P188123289311506945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 * ((10 ^ n : ℤ) - 1) : ℚ) / 9) ^ 2

end

end A075417.P188123289311506945

namespace A075417

/-- `(8*(10^n-1)/9)²` -/
def P188123289311506945.Spec : Prop :=
  ∀ n, P188123289311506945.a n = (A075417 n : ℚ)

end A075417

/-! ## A075417.P7598423870228793073

`64*A002275(n)²`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075417

/-- `64*A002275(n)²` -/
def P7598423870228793073.Spec : Prop :=
  ∀ n, P7598423870228793073.a n = A075417 n

theorem P7598423870228793073.correct : P7598423870228793073.Spec := by
  intro n
  simp only [A075417]

end A075417

/-! ## A075417.P1245134655459627106

`lcm(64, floor(10^n/9)²)`
-/

namespace A075417.P1245134655459627106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 64 (⌊(10 ^ n : ℚ) / 9⌋ ^ 2)

end

end A075417.P1245134655459627106

namespace A075417

/-- `lcm(64, floor(10^n/9)²)` -/
def P1245134655459627106.Spec : Prop :=
  ∀ n, (P1245134655459627106.a n : ℤ) = A075417 n

end A075417

/-! ## A075417.P8580406658720698749

`4*∑[10*a(n-1)]²` with `a(0)=0, a(1)=4`
-/

namespace A075417.P8580406658720698749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A075417.P8580406658720698749

namespace A075417

/-- `4*∑[10*a(n-1)]²` -/
def P8580406658720698749.Spec : Prop :=
  ∀ n, (P8580406658720698749.a n : ℤ) = A075417 n

end A075417

/-! ## A075417.P9863786662904097275

`4*A075413(n)`
-/

namespace A075417.P9863786662904097275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A075413 n

end

end A075417.P9863786662904097275

namespace A075417

/-- `4*A075413(n)` -/
def P9863786662904097275.Spec : Prop :=
  ∀ n, P9863786662904097275.a n = A075417 n

end A075417

/-! ## A075417.P10777199960701696102

`16*A075411(n)`
-/

namespace A075417.P10777199960701696102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A075411 n

end

end A075417.P10777199960701696102

namespace A075417

/-- `16*A075411(n)` -/
def P10777199960701696102.Spec : Prop :=
  ∀ n, P10777199960701696102.a n = A075417 n

end A075417

/-! ## A075417.P8002182108447962983

`4*A002278(n)²`
-/

namespace A075417.P8002182108447962983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002278 n ^ 2

end

end A075417.P8002182108447962983

namespace A075417

/-- `4*A002278(n)²` -/
def P8002182108447962983.Spec : Prop :=
  ∀ n, P8002182108447962983.a n = A075417 n

end A075417

/-! ## A075417.P6511911522431856466

`floor(8/9*10^n)^A020639((n%2)^n+n)`
-/

namespace A075417.P6511911522431856466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(8 : ℚ) / 9 * (10 ^ n : ℚ)⌋ : ℚ) ^ (A020639 ((n % 2) ^ n + n) : ℤ)

end

end A075417.P6511911522431856466

namespace A075417

/-- `floor(8/9*10^n)^A020639((n%2)^n+n)` -/
def P6511911522431856466.Spec : Prop :=
  ∀ n, P6511911522431856466.a n = (A075417 n : ℚ)

end A075417

/-! ## A075417.P16392489148393414314

`A002282(n)*A002282(n)`
-/

namespace A075417.P16392489148393414314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 n * A002282 n

end

end A075417.P16392489148393414314

namespace A075417

/-- `A002282(n)*A002282(n)` -/
def P16392489148393414314.Spec : Prop :=
  ∀ n, P16392489148393414314.a n = A075417 n

end A075417

/-! ## A075417.P6269485361432814921

`(A002283(n)+A002281(n))*A002278(n)`
-/

namespace A075417.P6269485361432814921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002283 n + A002281 n) * A002278 n

end

end A075417.P6269485361432814921

namespace A075417

/-- `(A002283(n)+A002281(n))*A002278(n)` -/
def P6269485361432814921.Spec : Prop :=
  ∀ n, P6269485361432814921.a n = A075417 n

end A075417

/-!
# A075418: Sum of generalized tribonacci numbers A001644 and inverted tribonacci numbers A075298.

The programs for A075418, the canonical program `A075418.P2720003904036151173` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075418 has offset 0).

The definition of A075418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075418.P2720003904036151173

`a(n-2)+4*a(n-3)+a(n-4)-a(n-6)` with `a(0)=4, a(1)=2, a(2)=-2, a(3)=12, a(4)=12, a(5)=10`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075418

/-- `a(n-2)+4*a(n-3)+a(n-4)-a(n-6)` -/
def P2720003904036151173.Spec : Prop :=
  ∀ n, P2720003904036151173.a n = A075418 n

theorem P2720003904036151173.correct : P2720003904036151173.Spec := by
  intro n
  simp only [A075418]

end A075418

/-! ## A075418.P14258571787324368055

`A075298(n)+A001644(n)`
-/

namespace A075418.P14258571787324368055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075298 n + A001644 n

end

end A075418.P14258571787324368055

namespace A075418

/-- `A075298(n)+A001644(n)` -/
def P14258571787324368055.Spec : Prop :=
  ∀ n, P14258571787324368055.a n = A075418 n

end A075418

/-! ## A075418.P11488667424958722272

`A001644(n)-A073145(n+1)`
-/

namespace A075418.P11488667424958722272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n - A073145 (n + 1)

end

end A075418.P11488667424958722272

namespace A075418

/-- `A001644(n)-A073145(n+1)` -/
def P11488667424958722272.Spec : Prop :=
  ∀ n, P11488667424958722272.a n = A075418 n

end A075418

/-! ## A075418.P16606309167386855589

`A075092(n)+A075298(n)-A073145(n)`
-/

namespace A075418.P16606309167386855589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075092 n + (A075298 n - A073145 n)

end

end A075418.P16606309167386855589

namespace A075418

/-- `A075092(n)+A075298(n)-A073145(n)` -/
def P16606309167386855589.Spec : Prop :=
  ∀ n, P16606309167386855589.a n = A075418 n

end A075418

/-! ## A075418.P1319043182327860672

`A075092(n)-(A073145(n+1)+A073145(n))`
-/

namespace A075418.P1319043182327860672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075092 n - (A073145 (n + 1) + A073145 n)

end

end A075418.P1319043182327860672

namespace A075418

/-- `A075092(n)-(A073145(n+1)+A073145(n))` -/
def P1319043182327860672.Spec : Prop :=
  ∀ n, P1319043182327860672.a n = A075418 n

end A075418

/-! ## A075418.P5349354734549717988

`A001644(n+1)+A001644(n)-A075092(n+1)`
-/

namespace A075418.P5349354734549717988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (n + 1) + (A001644 n - A075092 (n + 1))

end

end A075418.P5349354734549717988

namespace A075418

/-- `A001644(n+1)+A001644(n)-A075092(n+1)` -/
def P5349354734549717988.Spec : Prop :=
  ∀ n, P5349354734549717988.a n = A075418 n

end A075418

/-! ## A075418.P13697772199479465042

`Δ[Δ[A214727(n+1)]]-A073145(n+1)`
-/

namespace A075418.P13697772199479465042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073145 (n + 1)

end

end A075418.P13697772199479465042

namespace A075418

/-- `Δ[Δ[A214727(n+1)]]-A073145(n+1)` -/
def P13697772199479465042.Spec : Prop :=
  ∀ n, P13697772199479465042.a n = A075418 n

end A075418

/-!
# A075423: a(n) = rad(n) - 1, where rad(n) is the squarefree kernel of n (A007947).

The programs for A075423, the canonical program `A075423.P9295275118584164197` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075423 has offset 1).

The definition of A075423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075423.P9295275118584164197

`∏{p}[n+1, #]-1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075423

/-- `∏{p}[n+1, #]-1` -/
def P9295275118584164197.Spec : Prop :=
  ∀ n, P9295275118584164197.a n = A075423 (n + 1)

theorem P9295275118584164197.correct : P9295275118584164197.Spec := by
  intro n
  simp only [A075423, Nat.add_sub_cancel]

end A075423

/-! ## A075423.P16342735383640839037

`n%∏{p}[n+1, #]`
-/

namespace A075423.P16342735383640839037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A075423.P16342735383640839037

namespace A075423

/-- `n%∏{p}[n+1, #]` -/
def P16342735383640839037.Spec : Prop :=
  ∀ n, (P16342735383640839037.a n : ℤ) = A075423 (n + 1)

end A075423

/-! ## A075423.P8495567844431480565

`exp(∑{p}[n+1, log(#)])-1`
-/

namespace A075423.P8495567844431480565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (p : ℝ)) - 1

end

end A075423.P8495567844431480565

namespace A075423

/-- `exp(∑{p}[n+1, log(#)])-1` -/
def P8495567844431480565.Spec : Prop :=
  ∀ n, P8495567844431480565.a n = (A075423 (n + 1) : ℝ)

end A075423

/-! ## A075423.P3621890833647260177

`xor(-1, -∏{p}[n+1, #])`
-/

namespace A075423.P3621890833647260177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ))

end

end A075423.P3621890833647260177

namespace A075423

/-- `xor(-1, -∏{p}[n+1, #])` -/
def P3621890833647260177.Spec : Prop :=
  ∀ n, P3621890833647260177.a n = A075423 (n + 1)

end A075423

/-! ## A075423.P15428830742286071801

`2^∑{p}[n+1, log2(#)]-1`
-/

namespace A075423.P15428830742286071801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)) - 1

end

end A075423.P15428830742286071801

namespace A075423

/-- `2^∑{p}[n+1, log2(#)]-1` -/
def P15428830742286071801.Spec : Prop :=
  ∀ n, P15428830742286071801.a n = (A075423 (n + 1) : ℝ)

end A075423

/-! ## A075423.P2317620806797830884

`abs(1-∏{p}[2*n-(n-1), #])`
-/

namespace A075423.P2317620806797830884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ)|

end

end A075423.P2317620806797830884

namespace A075423

/-- `abs(1-∏{p}[2*n-(n-1), #])` -/
def P2317620806797830884.Spec : Prop :=
  ∀ n, P2317620806797830884.a n = A075423 (n + 1)

end A075423

/-! ## A075423.P4959685667860355888

`floor(n*∏{p}[n+1, #]/(n+1))`
-/

namespace A075423.P4959685667860355888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / (n + 1 : ℚ))⌋

end

end A075423.P4959685667860355888

namespace A075423

/-- `floor(n*∏{p}[n+1, #]/(n+1))` -/
def P4959685667860355888.Spec : Prop :=
  ∀ n, P4959685667860355888.a n = A075423 (n + 1)

end A075423

/-! ## A075423.P4628253282240293727

`A007947(n+1)-1`
-/

namespace A075423.P4628253282240293727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) - 1

end

end A075423.P4628253282240293727

namespace A075423

/-- `A007947(n+1)-1` -/
def P4628253282240293727.Spec : Prop :=
  ∀ n, P4628253282240293727.a n = A075423 (n + 1)

end A075423

/-! ## A075423.P8448143704643985630

`A076618(n+1)-2`
-/

namespace A075423.P8448143704643985630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 1) - 2

end

end A075423.P8448143704643985630

namespace A075423

/-- `A076618(n+1)-2` -/
def P8448143704643985630.Spec : Prop :=
  ∀ n, P8448143704643985630.a n = A075423 (n + 1)

theorem P8448143704643985630.correct : P8448143704643985630.Spec := by
  intro n
  simp only [A075423, Nat.add_sub_cancel, A075423.P8448143704643985630.a, A075423.P9295275118584164197.f1, A075423.P9295275118584164197.a, A076618, A076618.P8099091245670450071.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075423

/-! ## A075423.P17241098320726745812

`n-A066503(n+1)`
-/

namespace A075423.P17241098320726745812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A066503 (n + 1)

end

end A075423.P17241098320726745812

namespace A075423

/-- `n-A066503(n+1)` -/
def P17241098320726745812.Spec : Prop :=
  ∀ n, P17241098320726745812.a n = A075423 (n + 1)

theorem P17241098320726745812.correct : P17241098320726745812.Spec := by
  intro n
  simp only [A075423, Nat.add_sub_cancel, A075423.P17241098320726745812.a, A075423.P9295275118584164197.f1, A075423.P9295275118584164197.a, A066503, A066503.P17588364347287804265.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075423

/-! ## A075423.P17648875504433792112

`n%A062953(n+1)`
-/

namespace A075423.P17648875504433792112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A062953 (n + 1))

end

end A075423.P17648875504433792112

namespace A075423

/-- `n%A062953(n+1)` -/
def P17648875504433792112.Spec : Prop :=
  ∀ n, P17648875504433792112.a n = A075423 (n + 1)

end A075423

/-! ## A075423.P2710856229481139738

`A010848(∏{p}[n+1, #])`
-/

namespace A075423.P2710856229481139738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A075423.P2710856229481139738

namespace A075423

/-- `A010848(∏{p}[n+1, #])` -/
def P2710856229481139738.Spec : Prop :=
  ∀ n, P2710856229481139738.a n = A075423 (n + 1)

end A075423

/-! ## A075423.P5293236097097779426

`A023443(∏{p}[n+1, #])`
-/

namespace A075423.P5293236097097779426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A075423.P5293236097097779426

namespace A075423

/-- `A023443(∏{p}[n+1, #])` -/
def P5293236097097779426.Spec : Prop :=
  ∀ n, P5293236097097779426.a n = A075423 (n + 1)

end A075423

/-! ## A075423.P12721718673890458803

`A263313(∏{p}[n+1, #])`
-/

namespace A075423.P12721718673890458803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263313 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A075423.P12721718673890458803

namespace A075423

/-- `A263313(∏{p}[n+1, #])` -/
def P12721718673890458803.Spec : Prop :=
  ∀ n, P12721718673890458803.a n = A075423 (n + 1)

end A075423

/-! ## A075423.P3737064036753133375

`sqrt(A078615(n+1))-1`
-/

namespace A075423.P3737064036753133375
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A078615 (n + 1) : ℝ) - 1

end

end A075423.P3737064036753133375

namespace A075423

/-- `sqrt(A078615(n+1))-1` -/
def P3737064036753133375.Spec : Prop :=
  ∀ n, P3737064036753133375.a n = (A075423 (n + 1) : ℝ)

end A075423

/-! ## A075423.P12389715591144318068

`floor(n/A003557(n+1))`
-/

namespace A075423.P12389715591144318068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A003557 (n + 1) : ℚ)⌋

end

end A075423.P12389715591144318068

namespace A075423

/-- `floor(n/A003557(n+1))` -/
def P12389715591144318068.Spec : Prop :=
  ∀ n, P12389715591144318068.a n = A075423 (n + 1)

end A075423

/-! ## A075423.P17605441252633718849

`A073353(n+1)-(n+2)`
-/

namespace A075423.P17605441252633718849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 1) - (n + 2 : ℤ)

end

end A075423.P17605441252633718849

namespace A075423

/-- `A073353(n+1)-(n+2)` -/
def P17605441252633718849.Spec : Prop :=
  ∀ n, P17605441252633718849.a n = A075423 (n + 1)

theorem P17605441252633718849.correct : P17605441252633718849.Spec := by
  intro n
  simp only [A075423, Nat.add_sub_cancel, A075423.P17605441252633718849.a, A075423.P9295275118584164197.f1, A075423.P9295275118584164197.a, A073353, A073353.P4516188460080726977.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075423

/-! ## A075423.P17417277594688450590

`A064549(n+1)/(n+1)-1`
-/

namespace A075423.P17417277594688450590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A075423.P17417277594688450590

namespace A075423

/-- `A064549(n+1)/(n+1)-1` -/
def P17417277594688450590.Spec : Prop :=
  ∀ n, P17417277594688450590.a n = (A075423 (n + 1) : ℚ)

end A075423

/-! ## A075423.P13508666813049248526

`A010848(A007947(n+1))`
-/

namespace A075423.P13508666813049248526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (A007947 (n + 1)).toNat

end

end A075423.P13508666813049248526

namespace A075423

/-- `A010848(A007947(n+1))` -/
def P13508666813049248526.Spec : Prop :=
  ∀ n, P13508666813049248526.a n = A075423 (n + 1)

end A075423

/-! ## A075423.P4781253998211245951

`A023444(A076618(n+1))`
-/

namespace A075423.P4781253998211245951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A076618 (n + 1)).toNat

end

end A075423.P4781253998211245951

namespace A075423

/-- `A023444(A076618(n+1))` -/
def P4781253998211245951.Spec : Prop :=
  ∀ n, P4781253998211245951.a n = A075423 (n + 1)

end A075423

/-!
# A075424: a(n) = A075423(A075423(n)).

The programs for A075424, the canonical program `A075424.P8873536088424695582` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075424 has offset 2).

The definition of A075424 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075423, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A075424.P8873536088424695582

`A075423(A075423(n+2))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075424

/-- `A075423(A075423(n+2))` -/
def P8873536088424695582.Spec : Prop :=
  ∀ n, P8873536088424695582.a n = A075424 (n + 2)

theorem P8873536088424695582.correct : P8873536088424695582.Spec := by
  intro n
  simp only [A075424, Nat.add_sub_cancel]

end A075424

/-! ## A075424.P4122905212643841015

`∏{p}[1-∏{p}[n+2, #], #]-1`
-/

namespace A075424.P4122905212643841015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - 1

end

end A075424.P4122905212643841015

namespace A075424

/-- `∏{p}[1-∏{p}[n+2, #], #]-1` -/
def P4122905212643841015.Spec : Prop :=
  ∀ n, P4122905212643841015.a n = A075424 (n + 2)

end A075424

/-! ## A075424.P2872934943216105876

`A007947(∑[A076334(n+1)])-1`
-/

namespace A075424.P2872934943216105876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A075424.P2872934943216105876

namespace A075424

/-- `A007947(∑[A076334(n+1)])-1` -/
def P2872934943216105876.Spec : Prop :=
  ∀ n, P2872934943216105876.a n = A075424 (n + 2)

end A075424

/-! ## A075424.P10464954331121034848

`A007947(A007947(n+2)-1)-1`
-/

namespace A075424.P10464954331121034848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A007947 (n + 2) - 1).toNat - 1

end

end A075424.P10464954331121034848

namespace A075424

/-- `A007947(A007947(n+2)-1)-1` -/
def P10464954331121034848.Spec : Prop :=
  ∀ n, P10464954331121034848.a n = A075424 (n + 2)

end A075424

/-! ## A075424.P16165442186206362848

`A010848(A007947(A010848(A007947(n+2))))`
-/

namespace A075424.P16165442186206362848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (A007947 (A010848 (A007947 (n + 2)).toNat).toNat).toNat

end

end A075424.P16165442186206362848

namespace A075424

/-- `A010848(A007947(A010848(A007947(n+2))))` -/
def P16165442186206362848.Spec : Prop :=
  ∀ n, P16165442186206362848.a n = A075424 (n + 2)

end A075424

/-! ## A075424.P8314158281677156172

`∏{p}[∏{p}[A165754(A165754(n)), #]-1, #]-1`
-/

namespace A075424.P8314158281677156172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 (A165754 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, p : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - 1

end

end A075424.P8314158281677156172

namespace A075424

/-- `∏{p}[∏{p}[A165754(A165754(n)), #]-1, #]-1` -/
def P8314158281677156172.Spec : Prop :=
  ∀ n, P8314158281677156172.a n = A075424 (n + 2)

end A075424

/-!
# A075425: Number of steps to reach 1 starting with n and iterating the map n ->rad(n)-1, where rad(n) is the squarefree kernel of n (A007947).

The programs for A075425, the canonical program `A075425.P11313490393567044434` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075425 has offset 1).

The definition of A075425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075425.P11313490393567044434

`A110157(n+1)-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075425

/-- `A110157(n+1)-1` -/
def P11313490393567044434.Spec : Prop :=
  ∀ n, P11313490393567044434.a n = A075425 (n + 1)

theorem P11313490393567044434.correct : P11313490393567044434.Spec := by
  intro n
  simp only [A075425, Nat.add_sub_cancel]

end A075425

/-! ## A075425.P2529104420811331079

`a(A007947(n+1)-2)+1` with `a(0)=0`
-/

namespace A075425.P2529104420811331079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A007947 (n + 1) - 2).toNat + 1

end

end A075425.P2529104420811331079

namespace A075425

/-- `a(A007947(n+1)-2)+1` -/
def P2529104420811331079.Spec : Prop :=
  ∀ n, (P2529104420811331079.a n : ℤ) = A075425 (n + 1)

end A075425

/-! ## A075425.P2070857039045082196

`A110157(A075423(n+1))`
-/

namespace A075425.P2070857039045082196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110157 (A075423 (n + 1)).toNat

end

end A075425.P2070857039045082196

namespace A075425

/-- `A110157(A075423(n+1))` -/
def P2070857039045082196.Spec : Prop :=
  ∀ n, P2070857039045082196.a n = A075425 (n + 1)

end A075425

/-! ## A075425.P9756412506182400923

`∑[Δ[A110157(n)]-A000007(n)]`
-/

namespace A075425.P9756412506182400923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110157 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075425.P9756412506182400923

namespace A075425

/-- `∑[Δ[A110157(n)]-A000007(n)]` -/
def P9756412506182400923.Spec : Prop :=
  ∀ n, P9756412506182400923.a n = A075425 (n + 1)

end A075425

/-! ## A075425.P9421320536007574405

`A110157(floor(n/A003557(n+1)))`
-/

namespace A075425.P9421320536007574405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110157 ⌊(n : ℚ) / (A003557 (n + 1) : ℚ)⌋.toNat

end

end A075425.P9421320536007574405

namespace A075425

/-- `A110157(floor(n/A003557(n+1)))` -/
def P9421320536007574405.Spec : Prop :=
  ∀ n, P9421320536007574405.a n = A075425 (n + 1)

end A075425

/-! ## A075425.P4520596161237353923

`A023443(∑{e}[2^A110157(n+1), #])`
-/

namespace A075425.P4520596161237353923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A110157 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A075425.P4520596161237353923

namespace A075425

/-- `A023443(∑{e}[2^A110157(n+1), #])` -/
def P4520596161237353923.Spec : Prop :=
  ∀ n, P4520596161237353923.a n = A075425 (n + 1)

end A075425

/-! ## A075425.P16173322453981423908

`Δ[∑[A110157(n)]-n]`
-/

namespace A075425.P16173322453981423908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110157 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075425.P16173322453981423908

namespace A075425

/-- `Δ[∑[A110157(n)]-n]` -/
def P16173322453981423908.Spec : Prop :=
  ∀ n, P16173322453981423908.a n = A075425 (n + 1)

end A075425

/-! ## A075425.P2406625773072006211

`A001222(2^A110157(n+1)/2)`
-/

namespace A075425.P2406625773072006211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A110157 (n + 1) : ℤ) / 2)).toNat

end

end A075425.P2406625773072006211

namespace A075425

/-- `A001222(2^A110157(n+1)/2)` -/
def P2406625773072006211.Spec : Prop :=
  ∀ n, P2406625773072006211.a n = A075425 (n + 1)

end A075425

/-! ## A075425.P5911233950098476291

`A000401(A110157((n+1)²))`
-/

namespace A075425.P5911233950098476291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A110157 ((n + 1) ^ 2)).toNat

end

end A075425.P5911233950098476291

namespace A075425

/-- `A000401(A110157((n+1)²))` -/
def P5911233950098476291.Spec : Prop :=
  ∀ n, P5911233950098476291.a n = A075425 (n + 1)

end A075425

/-!
# A075426: Smallest initial value k that reaches 1 in n steps when iterating the map m -> rad(m)-1, where rad(m) is the squarefree kernel of m (A007947).

The programs for A075426, there is no canonical definition to state claims against.
-/

/-! ## A075426.P6496329521077020822

`eq[n, A334231(A099392(n+1))]`
-/

namespace A075426.P6496329521077020822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334231 (A099392 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A075426.P6496329521077020822

/-! ## A075426.P9006768079026457867

`A327192(∑[2^A002473(n+1)])`
-/

namespace A075426.P9006768079026457867
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002473 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327192 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A075426.P9006768079026457867

/-! ## A075426.P539610495003755874

`or(n+1, A233999(A089408(n+1)))`
-/

namespace A075426.P539610495003755874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A233999 (A089408 (n + 1)).toNat)

end

end A075426.P539610495003755874

/-!
# A075427: a(0) = 1; a(n) = a(n-1)+1 if n is even, otherwise a(n) = 2*a(n-1).

The programs for A075427, the canonical program `A075427.P13613248042276599128` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075427 has offset 0).

The definition of A075427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075427.P13613248042276599128

`2^floor((n+3)/2)-3/2+(-1)^n/2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075427

/-- `2^floor((n+3)/2)-3/2+(-1)^n/2` -/
def P13613248042276599128.Spec : Prop :=
  ∀ n, P13613248042276599128.a n = (A075427 n : ℚ)

end A075427

/-! ## A075427.P17393263978582096598

`ogf((1+2x)/(1-3x^2+2x^4))`
-/

namespace A075427.P17393263978582096598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -3, 0, 2] n

end

end A075427.P17393263978582096598

namespace A075427

/-- `ogf((1+2x)/(1-3x^2+2x^4))` -/
def P17393263978582096598.Spec : Prop :=
  ∀ n, P17393263978582096598.a n = A075427 n

end A075427

/-! ## A075427.P2858025192388245632

`or(n+1, lcm(2, a(n-1)))` with `a(0)=1`
-/

namespace A075427.P2858025192388245632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (n + 1) (Nat.lcm 2 (a (n - 1)))

end

end A075427.P2858025192388245632

namespace A075427

/-- `or(n+1, lcm(2, a(n-1)))` -/
def P2858025192388245632.Spec : Prop :=
  ∀ n, (P2858025192388245632.a n : ℤ) = A075427 n

end A075427

/-! ## A075427.P2260400712433207782

`or(a(n-1)+1, a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A075427.P2260400712433207782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor (a (n - 1) + 1) (a (n - 2))

end

end A075427.P2260400712433207782

namespace A075427

/-- `or(a(n-1)+1, a(n-2))` -/
def P2260400712433207782.Spec : Prop :=
  ∀ n, (P2260400712433207782.a n : ℤ) = A075427 n

end A075427

/-! ## A075427.P1926592529008260850

`or(2*a(n-2), a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A075427.P1926592529008260850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor (2 * a (n - 2)) (a (n - 2))

end

end A075427.P1926592529008260850

namespace A075427

/-- `or(2*a(n-2), a(n-2))` -/
def P1926592529008260850.Spec : Prop :=
  ∀ n, (P1926592529008260850.a n : ℤ) = A075427 n

end A075427

/-! ## A075427.P5485336505000857570

`∑[2*a(n-2)-(-1)^n]` with `a(0)=1, a(1)=1`
-/

namespace A075427.P5485336505000857570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 2) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075427.P5485336505000857570

namespace A075427

/-- `∑[2*a(n-2)-(-1)^n]` -/
def P5485336505000857570.Spec : Prop :=
  ∀ n, P5485336505000857570.a n = A075427 n

end A075427

/-! ## A075427.P101961718058780361

`∑[∏[3-a(n-1)]-a(n-1)]` with `a(0)=1`
-/

namespace A075427.P101961718058780361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ∏ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075427.P101961718058780361

namespace A075427

/-- `∑[∏[3-a(n-1)]-a(n-1)]` -/
def P101961718058780361.Spec : Prop :=
  ∀ n, P101961718058780361.a n = A075427 n

end A075427

/-! ## A075427.P6661958073434435275

`∑[a(n-2)+a(n-2)-(-1)^n]` with `a(0)=1, a(1)=1`
-/

namespace A075427.P6661958073434435275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) - (-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075427.P6661958073434435275

namespace A075427

/-- `∑[a(n-2)+a(n-2)-(-1)^n]` -/
def P6661958073434435275.Spec : Prop :=
  ∀ n, P6661958073434435275.a n = A075427 n

end A075427

/-! ## A075427.P13345289243123694272

`∑[a(n-2)-((-1)^n-a(n-2))]` with `a(0)=1, a(1)=1`
-/

namespace A075427.P13345289243123694272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - ((-1) ^ n - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075427.P13345289243123694272

namespace A075427

/-- `∑[a(n-2)-((-1)^n-a(n-2))]` -/
def P13345289243123694272.Spec : Prop :=
  ∀ n, P13345289243123694272.a n = A075427 n

end A075427

/-! ## A075427.P12340589193629504758

`floor(a(n-1)+gcd((n+1)%2, a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A075427.P12340589193629504758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.gcd ((n + 1) % 2) (a (n - 1))

end

end A075427.P12340589193629504758

namespace A075427

/-- `floor(a(n-1)+gcd((n+1)%2, a(n-1)))` -/
def P12340589193629504758.Spec : Prop :=
  ∀ n, (P12340589193629504758.a n : ℤ) = A075427 n

end A075427

/-! ## A075427.P17345548993141808187

`floor(a(n-1)+a((n-a(n-1)%2)%n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A075427.P17345548993141808187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (Int.tmod ((n : ℤ) - ((a (n - 1) % 2 : ℕ) : ℤ)) (n : ℤ)).toNat

end

end A075427.P17345548993141808187

namespace A075427

/-- `floor(a(n-1)+a((n-a(n-1)%2)%n))` -/
def P17345548993141808187.Spec : Prop :=
  ∀ n, (P17345548993141808187.a n : ℤ) = A075427 n

end A075427

/-! ## A075427.P17815008198529398313

`∑[A094024(n)]`
-/

namespace A075427.P17815008198529398313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075427.P17815008198529398313

namespace A075427

/-- `∑[A094024(n)]` -/
def P17815008198529398313.Spec : Prop :=
  ∀ n, P17815008198529398313.a n = A075427 n

end A075427

/-! ## A075427.P4498119454639456961

`or(n+1, A056453(n+2))`
-/

namespace A075427.P4498119454639456961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A056453 (n + 2))

end

end A075427.P4498119454639456961

namespace A075427

/-- `or(n+1, A056453(n+2))` -/
def P4498119454639456961.Spec : Prop :=
  ∀ n, P4498119454639456961.a n = A075427 n

end A075427

/-! ## A075427.P13709650761045113517

`A000034(n)*A052551(n)`
-/

namespace A075427.P13709650761045113517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A052551 n

end

end A075427.P13709650761045113517

namespace A075427

/-- `A000034(n)*A052551(n)` -/
def P13709650761045113517.Spec : Prop :=
  ∀ n, P13709650761045113517.a n = A075427 n

end A075427

/-! ## A075427.P651837206028251053

`xor(A056453(n+1), A072345(n))`
-/

namespace A075427.P651837206028251053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056453 (n + 1)) (A072345 n)

end

end A075427.P651837206028251053

namespace A075427

/-- `xor(A056453(n+1), A072345(n))` -/
def P651837206028251053.Spec : Prop :=
  ∀ n, P651837206028251053.a n = A075427 n

end A075427

/-! ## A075427.P5860198541102763806

`xor(A029578(n), A147678(n+1))`
-/

namespace A075427.P5860198541102763806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A029578 n) (A147678 (n + 1))

end

end A075427.P5860198541102763806

namespace A075427

/-- `xor(A029578(n), A147678(n+1))` -/
def P5860198541102763806.Spec : Prop :=
  ∀ n, P5860198541102763806.a n = A075427 n

end A075427

/-! ## A075427.P3222777410966150399

`∪[A066880(n+1), A103454(n)]`
-/

namespace A075427.P3222777410966150399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103454 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075427.P3222777410966150399

namespace A075427

/-- `∪[A066880(n+1), A103454(n)]` -/
def P3222777410966150399.Spec : Prop :=
  ∀ n, (P3222777410966150399.a n : ℤ) = A075427 n

end A075427

/-! ## A075427.P9613175853806219102

`∪[A066880(n+1), A126646(n)]`
-/

namespace A075427.P9613175853806219102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075427.P9613175853806219102

namespace A075427

/-- `∪[A066880(n+1), A126646(n)]` -/
def P9613175853806219102.Spec : Prop :=
  ∀ n, (P9613175853806219102.a n : ℤ) = A075427 n

end A075427

/-! ## A075427.P8754623409190187967

`∪[A066880(n+1), A267596(n)]`
-/

namespace A075427.P8754623409190187967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267596 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075427.P8754623409190187967

namespace A075427

/-- `∪[A066880(n+1), A267596(n)]` -/
def P8754623409190187967.Spec : Prop :=
  ∀ n, (P8754623409190187967.a n : ℤ) = A075427 n

end A075427

/-! ## A075427.P2697656946356979112

`∪[A066880(n+1), A290682(n)]`
-/

namespace A075427.P2697656946356979112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290682 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075427.P2697656946356979112

namespace A075427

/-- `∪[A066880(n+1), A290682(n)]` -/
def P2697656946356979112.Spec : Prop :=
  ∀ n, (P2697656946356979112.a n : ℤ) = A075427 n

end A075427

/-!
# A075428: Number of steps to reach the first integer (= A075429(n)) starting with 1 + 2/(n*(n+1)) and iterating the map x -> x*ceiling(x), or -1 if no integer is ever reached.

The programs for A075428, there is no canonical definition to state claims against.
-/

/-! ## A075428.P12059881629946427702

`A073524(∑[n+1])`
-/

namespace A075428.P12059881629946427702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073524 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075428.P12059881629946427702

/-! ## A075428.P2803379871179722479

`or(char[3], A073524(A000217(n+1)))`
-/

namespace A075428.P2803379871179722479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A073524 (A000217 (n + 1)).toNat)

end

end A075428.P2803379871179722479

/-! ## A075428.P8540683109625587679

`A054977(n)*A073524(A000217(n+1))`
-/

namespace A075428.P8540683109625587679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A073524 (A000217 (n + 1)).toNat

end

end A075428.P8540683109625587679

/-! ## A075428.P5430559494644764288

`A073524(A000217(n+1))%A016754(n)`
-/

namespace A075428.P5430559494644764288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073524 (A000217 (n + 1)).toNat) (A016754 n)

end

end A075428.P5430559494644764288

/-! ## A075428.P16151815757220849556

`A007318(C(2, n))*A073524(A000217(n+1))`
-/

namespace A075428.P16151815757220849556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A073524 (A000217 (n + 1)).toNat

end

end A075428.P16151815757220849556

/-! ## A075428.P6839430640497621615

`∏{p}[n, A001221(#)]*A073524(A000217(n+1))`
-/

namespace A075428.P6839430640497621615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A073524 (A000217 (n + 1)).toNat

end

end A075428.P6839430640497621615

/-! ## A075428.P1296132085791929760

`A007318(and(1, -n))*A073524(A000217(n+1))`
-/

namespace A075428.P1296132085791929760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A073524 (A000217 (n + 1)).toNat

end

end A075428.P1296132085791929760

/-! ## A075428.P1409243386722561451

`A014963(4*n+2)*A073524(A000217(n+1))`
-/

namespace A075428.P1409243386722561451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A073524 (A000217 (n + 1)).toNat

end

end A075428.P1409243386722561451

/-! ## A075428.P16857472215824697866

`and(1, A000040(n+1))*A073524(A000217(n+1))`
-/

namespace A075428.P16857472215824697866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A073524 (A000217 (n + 1)).toNat

end

end A075428.P16857472215824697866

/-! ## A075428.P9355546333035399155

`A073524(A000217(n+1))+A001221(gcd(n, n+1))`
-/

namespace A075428.P9355546333035399155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073524 (A000217 (n + 1)).toNat + A001221 (Nat.gcd n (n + 1))

end

end A075428.P9355546333035399155

/-!
# A075430: Primes with a squarefree neighbor.

The programs for A075430, the canonical program `A075430.P13262603035968120871` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075430 has offset 1).

The definition of A075430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075430.P4383016308336296492

`∪[A039787(n+1), A049097(n+1)]`
-/

namespace A075430.P4383016308336296492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075430.P4383016308336296492

namespace A075430

/-- `∪[A039787(n+1), A049097(n+1)]` -/
def P4383016308336296492.Spec : Prop :=
  ∀ n, (P4383016308336296492.a n : ℤ) = A075430 (n + 1)

end A075430

/-! ## A075430.P9401722609518661911

`∪[A062304(n+1), A075431(n+1)]`
-/

namespace A075430.P9401722609518661911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075430.P9401722609518661911

namespace A075430

/-- `∪[A062304(n+1), A075431(n+1)]` -/
def P9401722609518661911.Spec : Prop :=
  ∀ n, (P9401722609518661911.a n : ℤ) = A075430 (n + 1)

end A075430

/-! ## A075430.P18109590525965198226

`record[A000040((n+1)^A089496(n+1)²)]`
-/

namespace A075430.P18109590525965198226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A089496 (n + 1) ^ 2 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075430.P18109590525965198226

namespace A075430

/-- `record[A000040((n+1)^A089496(n+1)²)]` -/
def P18109590525965198226.Spec : Prop :=
  ∀ n, P18109590525965198226.a n = A075430 (n + 1)

end A075430

/-! ## A075430.P126947067080656616

`record[A000040((n+1)^A089496(n+1)^2)]`
-/

namespace A075430.P126947067080656616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A089496 (n + 1) ^ 2 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075430.P126947067080656616

namespace A075430

/-- `record[A000040((n+1)^A089496(n+1)^2)]` -/
def P126947067080656616.Spec : Prop :=
  ∀ n, P126947067080656616.a n = A075430 (n + 1)

end A075430

/-! ## A075430.P13262603035968120871

`p?[(n+1)*A008683(or(2, n))²]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A075430

/-- `p?[(n+1)*A008683(or(2, n))²]` -/
def P13262603035968120871.Spec : Prop :=
  ∀ n, P13262603035968120871.a n = A075430 (n + 1)

theorem P13262603035968120871.correct : P13262603035968120871.Spec := by
  intro n
  simp only [A075430, Nat.add_sub_cancel]

end A075430

/-! ## A075430.P1076467160443750333

`p?[n+1-A105570(A105570(n)+2)]`
-/

namespace A075430.P1076467160443750333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A105570 (A105570 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075430.P1076467160443750333

namespace A075430

/-- `p?[n+1-A105570(A105570(n)+2)]` -/
def P1076467160443750333.Spec : Prop :=
  ∀ n, P1076467160443750333.a n = A075430 (n + 1)

end A075430

/-! ## A075430.P4977187145213656169

`p?[n*A255326(A004525(n))]`
-/

namespace A075430.P4977187145213656169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A255326 (A004525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075430.P4977187145213656169

namespace A075430

/-- `p?[n*A255326(A004525(n))]` -/
def P4977187145213656169.Spec : Prop :=
  ∀ n, P4977187145213656169.a n = A075430 (n + 1)

end A075430

/-!
# A075431: Primes of the form n+mu(n), where mu is the Moebius function (A008683).

The programs for A075431, there is no canonical definition to state claims against.
-/

/-! ## A075431.P5484692854501474262

`∪[A078329(n+1), A088179(n+1)]`
-/

namespace A075431.P5484692854501474262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A075431.P5484692854501474262

/-! ## A075431.P2086064869437338350

`p?[A008683(n+3)+n+3]`
-/

namespace A075431.P2086064869437338350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 3) + (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075431.P2086064869437338350

/-! ## A075431.P9510881244877775185

`record[A006530(A008683(n+3)+n+3)]`
-/

namespace A075431.P9510881244877775185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008683 (n + 3) + (n + 3 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075431.P9510881244877775185

/-! ## A075431.P3753239358861218130

`record[A020639(A008683(n+3)+n+3)]`
-/

namespace A075431.P3753239358861218130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008683 (n + 3) + (n + 3 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075431.P3753239358861218130

/-! ## A075431.P11078456098613480720

`p?[1-A067856(n+1)+n]`
-/

namespace A075431.P11078456098613480720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A067856 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075431.P11078456098613480720

/-! ## A075431.P18232603044279981995

`p?[1-A085384(n+1)+n]`
-/

namespace A075431.P18232603044279981995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A085384 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075431.P18232603044279981995

/-! ## A075431.P8180062799283274723

`p?[A140668(n+1)]`
-/

namespace A075431.P8180062799283274723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075431.P8180062799283274723

/-! ## A075431.P3467159634745050508

`p?[abs(A055615(n+2)+1)]`
-/

namespace A075431.P3467159634745050508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055615 (n + 2) + 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075431.P3467159634745050508

/-! ## A075431.P12371938659634022518

`p?[A076369(n+2)]`
-/

namespace A075431.P12371938659634022518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076369 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075431.P12371938659634022518

/-! ## A075431.P11335080604530040300

`p?[1-A157658(n+1)+n]`
-/

namespace A075431.P11335080604530040300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A157658 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075431.P11335080604530040300

/-! ## A075431.P9680544062612359271

`A076369(A063015(n+2))`
-/

namespace A075431.P9680544062612359271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076369 (A063015 (n + 2)).toNat

end

end A075431.P9680544062612359271

/-! ## A075431.P2158040399189736259

`record[A006530(A076369(n+1))]`
-/

namespace A075431.P2158040399189736259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A076369 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075431.P2158040399189736259

/-! ## A075431.P12072772808541621549

`record[A014963(A008683(n+3)+n+3)]`
-/

namespace A075431.P12072772808541621549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008683 (n + 3) + (n + 3 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075431.P12072772808541621549

/-! ## A075431.P13324188863158883343

`record[A051664(A008683(n+1)+n+1)]`
-/

namespace A075431.P13324188863158883343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (A008683 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075431.P13324188863158883343

/-!
# A075432: Primes with no squarefree neighbors.

The programs for A075432, the canonical program `A075432.P9727196206046157024` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075432 has offset 1).

The definition of A075432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3093 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075432.P12842795376837236455

`∩[A049092(n+1), A049098(n+1)]`
-/

namespace A075432.P12842795376837236455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075432.P12842795376837236455

namespace A075432

/-- `∩[A049092(n+1), A049098(n+1)]` -/
def P12842795376837236455.Spec : Prop :=
  ∀ n, (P12842795376837236455.a n : ℤ) = A075432 (n + 1)

end A075432

/-! ## A075432.P9727196206046157024

`p?[gcd(2*(n+1), A067856(or(1, n)))-1]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075432

/-- `p?[gcd(2*(n+1), A067856(or(1, n)))-1]` -/
def P9727196206046157024.Spec : Prop :=
  ∀ n, P9727196206046157024.a n = A075432 (n + 1)

theorem P9727196206046157024.correct : P9727196206046157024.Spec := by
  intro n
  simp only [A075432, Nat.add_sub_cancel]

end A075432

/-! ## A075432.P10420039754744706426

`p?[A073247(n+1)]`
-/

namespace A075432.P10420039754744706426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075432.P10420039754744706426

namespace A075432

/-- `p?[A073247(n+1)]` -/
def P10420039754744706426.Spec : Prop :=
  ∀ n, P10420039754744706426.a n = A075432 (n + 1)

end A075432

/-! ## A075432.P13065420004253623282

`∩[A009087(n+1), A073247(n+1)]`
-/

namespace A075432.P13065420004253623282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075432.P13065420004253623282

namespace A075432

/-- `∩[A009087(n+1), A073247(n+1)]` -/
def P13065420004253623282.Spec : Prop :=
  ∀ n, (P13065420004253623282.a n : ℤ) = A075432 (n + 1)

end A075432

/-! ## A075432.P14079397533339550397

`∩[A049092(n+1), A073247(n+1)]`
-/

namespace A075432.P14079397533339550397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075432.P14079397533339550397

namespace A075432

/-- `∩[A049092(n+1), A073247(n+1)]` -/
def P14079397533339550397.Spec : Prop :=
  ∀ n, (P14079397533339550397.a n : ℤ) = A075432 (n + 1)

end A075432

/-! ## A075432.P4210667931432456106

`∩[A049098(n+1), A073247(n+1)]`
-/

namespace A075432.P4210667931432456106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075432.P4210667931432456106

namespace A075432

/-- `∩[A049098(n+1), A073247(n+1)]` -/
def P4210667931432456106.Spec : Prop :=
  ∀ n, (P4210667931432456106.a n : ℤ) = A075432 (n + 1)

end A075432

/-! ## A075432.P15106678204632626125

`∩[A060254(n+1), A073247(n+1)]`
-/

namespace A075432.P15106678204632626125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075432.P15106678204632626125

namespace A075432

/-- `∩[A060254(n+1), A073247(n+1)]` -/
def P15106678204632626125.Spec : Prop :=
  ∀ n, (P15106678204632626125.a n : ℤ) = A075432 (n + 1)

end A075432

/-! ## A075432.P854935256959028409

`∩[A034849(n+1), A073247(n+1)]`
-/

namespace A075432.P854935256959028409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075432.P854935256959028409

namespace A075432

/-- `∩[A034849(n+1), A073247(n+1)]` -/
def P854935256959028409.Spec : Prop :=
  ∀ n, (P854935256959028409.a n : ℤ) = A075432 (n + 1)

end A075432

/-! ## A075432.P15478161485299825557

`∩[A059456(n+1), A073247(n+1)]`
-/

namespace A075432.P15478161485299825557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075432.P15478161485299825557

namespace A075432

/-- `∩[A059456(n+1), A073247(n+1)]` -/
def P15478161485299825557.Spec : Prop :=
  ∀ n, (P15478161485299825557.a n : ℤ) = A075432 (n + 1)

end A075432

/-! ## A075432.P1484517589564198530

`∩[A004139(n+1), A073247(n+1)]`
-/

namespace A075432.P1484517589564198530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075432.P1484517589564198530

namespace A075432

/-- `∩[A004139(n+1), A073247(n+1)]` -/
def P1484517589564198530.Spec : Prop :=
  ∀ n, (P1484517589564198530.a n : ℤ) = A075432 (n + 1)

end A075432

/-! ## A075432.P18271881088964263672

`∩[A045319(n+1), A073247(n+1)]`
-/

namespace A075432.P18271881088964263672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075432.P18271881088964263672

namespace A075432

/-- `∩[A045319(n+1), A073247(n+1)]` -/
def P18271881088964263672.Spec : Prop :=
  ∀ n, (P18271881088964263672.a n : ℤ) = A075432 (n + 1)

end A075432

/-! ## A075432.P3165874560021753853

`∩[A045344(n+1), A073247(n+1)]`
-/

namespace A075432.P3165874560021753853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075432.P3165874560021753853

namespace A075432

/-- `∩[A045344(n+1), A073247(n+1)]` -/
def P3165874560021753853.Spec : Prop :=
  ∀ n, (P3165874560021753853.a n : ℤ) = A075432 (n + 1)

end A075432

/-! ## A075432.P17064840224387351984

`∩[A000040(n+1), A073247(n+1)]`
-/

namespace A075432.P17064840224387351984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075432.P17064840224387351984

namespace A075432

/-- `∩[A000040(n+1), A073247(n+1)]` -/
def P17064840224387351984.Spec : Prop :=
  ∀ n, (P17064840224387351984.a n : ℤ) = A075432 (n + 1)

end A075432

/-! ## A075432.P12896919153470767716

`∩[A006005(n+1), A073247(n+1)]`
-/

namespace A075432.P12896919153470767716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075432.P12896919153470767716

namespace A075432

/-- `∩[A006005(n+1), A073247(n+1)]` -/
def P12896919153470767716.Spec : Prop :=
  ∀ n, (P12896919153470767716.a n : ℤ) = A075432 (n + 1)

end A075432

/-! ## A075432.P9142549493664160648

`∩[A008578(n+1), A073247(n+1)]`
-/

namespace A075432.P9142549493664160648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075432.P9142549493664160648

namespace A075432

/-- `∩[A008578(n+1), A073247(n+1)]` -/
def P9142549493664160648.Spec : Prop :=
  ∀ n, (P9142549493664160648.a n : ℤ) = A075432 (n + 1)

end A075432

/-! ## A075432.P17346958924543988014

`∩[A033946(n+1), A073247(n+1)]`
-/

namespace A075432.P17346958924543988014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075432.P17346958924543988014

namespace A075432

/-- `∩[A033946(n+1), A073247(n+1)]` -/
def P17346958924543988014.Spec : Prop :=
  ∀ n, (P17346958924543988014.a n : ℤ) = A075432 (n + 1)

end A075432

/-! ## A075432.P12953769727806578106

`∩[A046022(n+1), A073247(n+1)]`
-/

namespace A075432.P12953769727806578106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075432.P12953769727806578106

namespace A075432

/-- `∩[A046022(n+1), A073247(n+1)]` -/
def P12953769727806578106.Spec : Prop :=
  ∀ n, (P12953769727806578106.a n : ℤ) = A075432 (n + 1)

end A075432

/-! ## A075432.P7154109877598702576

`∩[A053813(n+1), A073247(n+1)]`
-/

namespace A075432.P7154109877598702576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075432.P7154109877598702576

namespace A075432

/-- `∩[A053813(n+1), A073247(n+1)]` -/
def P7154109877598702576.Spec : Prop :=
  ∀ n, (P7154109877598702576.a n : ℤ) = A075432 (n + 1)

end A075432

/-! ## A075432.P10408597982553136042

`∩[A067126(n+1), A073247(n+1)]`
-/

namespace A075432.P10408597982553136042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075432.P10408597982553136042

namespace A075432

/-- `∩[A067126(n+1), A073247(n+1)]` -/
def P10408597982553136042.Spec : Prop :=
  ∀ n, (P10408597982553136042.a n : ℤ) = A075432 (n + 1)

end A075432

/-! ## A075432.P3499396600652289731

`∩[A073247(n+1), A093515(n+1)]`
-/

namespace A075432.P3499396600652289731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075432.P3499396600652289731

namespace A075432

/-- `∩[A073247(n+1), A093515(n+1)]` -/
def P3499396600652289731.Spec : Prop :=
  ∀ n, (P3499396600652289731.a n : ℤ) = A075432 (n + 1)

end A075432

/-!
# A075433: Perfect powers pp(n) with perfect power index n.

The programs for A075433, there is no canonical definition to state claims against.
-/

/-! ## A075433.P14172860217105109482

`A001597(∑[A076412(n)])`
-/

namespace A075433.P14172860217105109482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075433.P14172860217105109482

/-! ## A075433.P14930145222348257699

`A001597(A001597(n+1))`
-/

namespace A075433.P14930145222348257699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A001597 (n + 1)).toNat

end

end A075433.P14930145222348257699

/-! ## A075433.P4785547528409942746

`A001597(eq[0, A301573(n)])`
-/

namespace A075433.P4785547528409942746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A075433.P4785547528409942746

/-! ## A075433.P9591437536943364783

`A001597(lt[A301573(n), 1])`
-/

namespace A075433.P9591437536943364783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A075433.P9591437536943364783

/-! ## A075433.P893898509786797297

`abs(A157985(∑[A076412(n)]))`
-/

namespace A075433.P893898509786797297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A075433.P893898509786797297

/-! ## A075433.P12017054411052974378

`abs(A157985(abs(A157985(n+1))))`
-/

namespace A075433.P12017054411052974378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A157985 |A157985 (n + 1)|.toNat)|

end

end A075433.P12017054411052974378

/-! ## A075433.P13756734354094247824

`sqrt(A340588(sqrt(A340588(n+1))))`
-/

namespace A075433.P13756734354094247824
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340588 (SequenceMachineLib.roundAway (Real.sqrt (A340588 (n + 1) : ℝ))).toNat : ℝ)

end

end A075433.P13756734354094247824

/-!
# A075434: Numbers that are not the sum of two perfect powers.

The programs for A075434, there is no canonical definition to state claims against.
-/

/-! ## A075434.P9861782777216234523

`comp[A070049(n+1)-1]+1`
-/

namespace A075434.P9861782777216234523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070049 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A075434.P9861782777216234523

/-! ## A075434.P11513021400741655438

`eq[A000007(n), A362426(n)]`
-/

namespace A075434.P11513021400741655438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075434.P11513021400741655438

/-! ## A075434.P7562460097402062967

`eq[A000038(n), A362426(n)]`
-/

namespace A075434.P7562460097402062967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075434.P7562460097402062967

/-! ## A075434.P831618637929762064

`eq[A089798(n), A362426(n)]`
-/

namespace A075434.P831618637929762064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075434.P831618637929762064

/-! ## A075434.P6044908154869074031

`lt[A075417(A362426(n)), A001222(n+1)]`
-/

namespace A075434.P6044908154869074031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075417 (A362426 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075434.P6044908154869074031

/-! ## A075434.P3578761078806484020

`lt[A362426(n)-A033999(A008458(n))+n, n]`
-/

namespace A075434.P3578761078806484020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362426 n - A033999 (A008458 n).toNat + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A075434.P3578761078806484020

/-!
# A075435: T(n,k) = right- or upward-moving paths connecting opposite corners of an n X n chessboard, visiting the diagonal at k points between start and finish.

The programs for A075435, there is no canonical definition to state claims against.
-/

/-! ## A075435.P13692163501292550424

`2*A035324(n+1)*A059268(n)`
-/

namespace A075435.P13692163501292550424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A035324 (n + 1) * A059268 n)

end

end A075435.P13692163501292550424

/-! ## A075435.P16042721880204366655

`2^A002260(n+1)*A035324(n+1)`
-/

namespace A075435.P16042721880204366655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002260 (n + 1) : ℤ) * (A035324 (n + 1) : ℚ)

end

end A075435.P16042721880204366655

/-! ## A075435.P11971381016471635498

`A035324(n+1)*A140513(A112367(n))`
-/

namespace A075435.P11971381016471635498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035324 (n + 1) * A140513 (A112367 n).toNat

end

end A075435.P11971381016471635498

/-! ## A075435.P12290826726078920270

`A000079(A002260(n+1))*A035324(n+1)`
-/

namespace A075435.P12290826726078920270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002260 (n + 1)).toNat * A035324 (n + 1)

end

end A075435.P12290826726078920270

/-! ## A075435.P14555186660430710631

`A035324(n+1)*A048656(A037126(n+1))`
-/

namespace A075435.P14555186660430710631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035324 (n + 1) * A048656 (A037126 (n + 1)).toNat

end

end A075435.P14555186660430710631

/-! ## A075435.P16675056757052670374

`A004277(A059268(n))*A035324(n+1)`
-/

namespace A075435.P16675056757052670374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A059268 n).toNat * A035324 (n + 1)

end

end A075435.P16675056757052670374

/-!
# A075436: Right- or upward-moving paths connecting opposite corners of an n X n chessboard, visiting the diagonal in 0 up to (n-2) intermediate points between start and finish. Equivalently, subdivide the chessboard into 1 up to (n-1) blocks along the diagonal in all possible ways and sum the path-count over all sub-blocks.

The programs for A075436, the canonical program `A075436.P16769685247187580012` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075436 has offset 2).

The definition of A075436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075436.P16769685247187580012

`2*A076025(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A075436

/-- `2*A076025(n+1)` -/
def P16769685247187580012.Spec : Prop :=
  ∀ n, P16769685247187580012.a n = A075436 (n + 2)

theorem P16769685247187580012.correct : P16769685247187580012.Spec := by
  intro n
  simp only [A075436, Nat.add_sub_cancel]

end A075436

/-! ## A075436.P5614938597834683812

`Δ[2*∑[A076025(n)]]`
-/

namespace A075436.P5614938597834683812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076025 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075436.P5614938597834683812

namespace A075436

/-- `Δ[2*∑[A076025(n)]]` -/
def P5614938597834683812.Spec : Prop :=
  ∀ n, P5614938597834683812.a n = A075436 (n + 2)

end A075436

/-! ## A075436.P6368892888867445655

`lcm(A001316(n+1), A076025(n+1))`
-/

namespace A075436.P6368892888867445655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 (n + 1)) (A076025 (n + 1))

end

end A075436.P6368892888867445655

namespace A075436

/-- `lcm(A001316(n+1), A076025(n+1))` -/
def P6368892888867445655.Spec : Prop :=
  ∀ n, (P6368892888867445655.a n : ℤ) = A075436 (n + 2)

end A075436

/-! ## A075436.P13204643113573264495

`A076035(n+1)/2`
-/

namespace A075436.P13204643113573264495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076035 (n + 1) : ℚ) / 2

end

end A075436.P13204643113573264495

namespace A075436

/-- `A076035(n+1)/2` -/
def P13204643113573264495.Spec : Prop :=
  ∀ n, P13204643113573264495.a n = (A075436 (n + 2) : ℚ)

end A075436

/-! ## A075436.P7111395920200719931

`A117380(∑[n+1])/2`
-/

namespace A075436.P7111395920200719931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117380 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A075436.P7111395920200719931

namespace A075436

/-- `A117380(∑[n+1])/2` -/
def P7111395920200719931.Spec : Prop :=
  ∀ n, P7111395920200719931.a n = (A075436 (n + 2) : ℚ)

end A075436

/-! ## A075436.P135996395068645123

`record[A117380(n+1)/2]`
-/

namespace A075436.P135996395068645123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117380 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075436.P135996395068645123

namespace A075436

/-- `record[A117380(n+1)/2]` -/
def P135996395068645123.Spec : Prop :=
  ∀ n, P135996395068645123.a n = (A075436 (n + 2) : ℚ)

end A075436

/-! ## A075436.P16824834139133455815

`2/3*A104530(n+1)`
-/

namespace A075436.P16824834139133455815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A104530 (n + 1) : ℚ)

end

end A075436.P16824834139133455815

namespace A075436

/-- `2/3*A104530(n+1)` -/
def P16824834139133455815.Spec : Prop :=
  ∀ n, P16824834139133455815.a n = (A075436 (n + 2) : ℚ)

end A075436

/-! ## A075436.P12822632700303176509

`A104530(n+1)-A076025(n+1)`
-/

namespace A075436.P12822632700303176509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104530 (n + 1) - A076025 (n + 1)

end

end A075436.P12822632700303176509

namespace A075436

/-- `A104530(n+1)-A076025(n+1)` -/
def P12822632700303176509.Spec : Prop :=
  ∀ n, P12822632700303176509.a n = A075436 (n + 2)

end A075436

/-! ## A075436.P11268490359841478931

`2*(A076035(n+1)-A104530(n+1))`
-/

namespace A075436.P11268490359841478931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A076035 (n + 1) - A104530 (n + 1))

end

end A075436.P11268490359841478931

namespace A075436

/-- `2*(A076035(n+1)-A104530(n+1))` -/
def P11268490359841478931.Spec : Prop :=
  ∀ n, P11268490359841478931.a n = A075436 (n + 2)

end A075436

/-! ## A075436.P9034332543128842068

`A076035(n+1)-(A076025(n+1)+A076025(n+1))`
-/

namespace A075436.P9034332543128842068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076035 (n + 1) - (A076025 (n + 1) + A076025 (n + 1))

end

end A075436.P9034332543128842068

namespace A075436

/-- `A076035(n+1)-(A076025(n+1)+A076025(n+1))` -/
def P9034332543128842068.Spec : Prop :=
  ∀ n, P9034332543128842068.a n = A075436 (n + 2)

end A075436

/-!
# A075437: Triangle read by rows giving successive iterations of the Rule 110 elementary cellular automaton starting with a single black (1) cell where row n is of length 2n+1.

The programs for A075437, there is no canonical definition to state claims against.
-/

/-! ## A075437.P12191332550012509577

`A267355(A020703(n+1)-1)`
-/

namespace A075437.P12191332550012509577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267355 (A020703 (n + 1) - 1).toNat

end

end A075437.P12191332550012509577

/-! ## A075437.P1377783484936923078

`char[A063656(eq[1, A070887(n+1)])]`
-/

namespace A075437.P1377783484936923078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070887 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A075437.P1377783484936923078

/-! ## A075437.P10657013221455466057

`A070887(∑[A267708(n)])*A267708(n)`
-/

namespace A075437.P10657013221455466057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070887 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A267708 n

end

end A075437.P10657013221455466057

/-! ## A075437.P16540526983969380715

`A267355(A153881(n+1)+A020703(n+1))`
-/

namespace A075437.P16540526983969380715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267355 (A153881 (n + 1) + A020703 (n + 1)).toNat

end

end A075437.P16540526983969380715

/-! ## A075437.P5645309168929747404

`char[A063656(n*A070887(n+1))]`
-/

namespace A075437.P5645309168929747404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 ((n : ℤ) * A070887 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A075437.P5645309168929747404

/-! ## A075437.P2695977533527400654

`A379952(A316649(n))`
-/

namespace A075437.P2695977533527400654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379952 (A316649 n).toNat

end

end A075437.P2695977533527400654

/-! ## A075437.P10229874971930489880

`gcd(A114692(n), A316649(n))%2`
-/

namespace A075437.P10229874971930489880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114692 n) (A316649 n) % 2

end

end A075437.P10229874971930489880

/-! ## A075437.P13885368546037857394

`A000035(gcd(A114692(n), A316649(n)))`
-/

namespace A075437.P13885368546037857394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.gcd (A114692 n) (A316649 n))

end

end A075437.P13885368546037857394

/-!
# A075438: Triangle read by rows giving successive iterations of the Rule 60 elementary cellular automaton starting with a single ON cell where row n is of length 2n+1.

The programs for A075438, the canonical program `A075438.P6472558506111138179` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075438 has offset 0).

The definition of A075438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075438.P6472558506111138179

`A034867(n)%2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A075438

/-- `A034867(n)%2` -/
def P6472558506111138179.Spec : Prop :=
  ∀ n, P6472558506111138179.a n = A075438 n

theorem P6472558506111138179.correct : P6472558506111138179.Spec := by
  intro n
  simp only [A075438]

end A075438

/-! ## A075438.P8397868554710402274

`A336996(n)%2`
-/

namespace A075438.P8397868554710402274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336996 n) 2

end

end A075438.P8397868554710402274

namespace A075438

/-- `A336996(n)%2` -/
def P8397868554710402274.Spec : Prop :=
  ∀ n, P8397868554710402274.a n = A075438 n

end A075438

/-! ## A075438.P8951475876267789656

`A109447(n+1)%2`
-/

namespace A075438.P8951475876267789656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109447 (n + 1)) 2

end

end A075438.P8951475876267789656

namespace A075438

/-- `A109447(n+1)%2` -/
def P8951475876267789656.Spec : Prop :=
  ∀ n, P8951475876267789656.a n = A075438 n

end A075438

/-! ## A075438.P17891086179433921504

`(1-A267673(n))^n`
-/

namespace A075438.P17891086179433921504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A267673 n) ^ n

end

end A075438.P17891086179433921504

namespace A075438

/-- `(1-A267673(n))^n` -/
def P17891086179433921504.Spec : Prop :=
  ∀ n, P17891086179433921504.a n = A075438 n

end A075438

/-! ## A075438.P3919596592601942538

`A054977(n)-A267673(n)`
-/

namespace A075438.P3919596592601942538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A267673 n

end

end A075438.P3919596592601942538

namespace A075438

/-- `A054977(n)-A267673(n)` -/
def P3919596592601942538.Spec : Prop :=
  ∀ n, P3919596592601942538.a n = A075438 n

end A075438

/-! ## A075438.P966077398294726406

`and(A034867(n), A060576(n))`
-/

namespace A075438.P966077398294726406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034867 n) (A060576 n)

end

end A075438.P966077398294726406

namespace A075438

/-- `and(A034867(n), A060576(n))` -/
def P966077398294726406.Spec : Prop :=
  ∀ n, P966077398294726406.a n = A075438 n

end A075438

/-! ## A075438.P7686779386284373644

`and(A034867(n), A071038(n))`
-/

namespace A075438.P7686779386284373644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034867 n) (A071038 n)

end

end A075438.P7686779386284373644

namespace A075438

/-- `and(A034867(n), A071038(n))` -/
def P7686779386284373644.Spec : Prop :=
  ∀ n, P7686779386284373644.a n = A075438 n

end A075438

/-! ## A075438.P14175477774078601083

`and(A034839(n), A118175(n))`
-/

namespace A075438.P14175477774078601083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034839 n) (A118175 n)

end

end A075438.P14175477774078601083

namespace A075438

/-- `and(A034839(n), A118175(n))` -/
def P14175477774078601083.Spec : Prop :=
  ∀ n, P14175477774078601083.a n = A075438 n

end A075438

/-! ## A075438.P10085952123171425678

`and(A034867(n), A118175(n))`
-/

namespace A075438.P10085952123171425678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034867 n) (A118175 n)

end

end A075438.P10085952123171425678

namespace A075438

/-- `and(A034867(n), A118175(n))` -/
def P10085952123171425678.Spec : Prop :=
  ∀ n, P10085952123171425678.a n = A075438 n

end A075438

/-! ## A075438.P10743897228457454192

`and(A034867(n), A158388(n))`
-/

namespace A075438.P10743897228457454192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034867 n) (A158388 n)

end

end A075438.P10743897228457454192

namespace A075438

/-- `and(A034867(n), A158388(n))` -/
def P10743897228457454192.Spec : Prop :=
  ∀ n, P10743897228457454192.a n = A075438 n

end A075438

/-! ## A075438.P6114503482743930129

`A075439(A020703(n+1)-1)`
-/

namespace A075438.P6114503482743930129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075439 (A020703 (n + 1) - 1).toNat

end

end A075438.P6114503482743930129

namespace A075438

/-- `A075439(A020703(n+1)-1)` -/
def P6114503482743930129.Spec : Prop :=
  ∀ n, P6114503482743930129.a n = A075438 n

end A075438

/-! ## A075438.P6093630985998865981

`A267673(a(n-1))-A267673(n)` with `a(0)=1`
-/

namespace A075438.P6093630985998865981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267673 (a (n - 1)).toNat - A267673 n

end

end A075438.P6093630985998865981

namespace A075438

/-- `A267673(a(n-1))-A267673(n)` -/
def P6093630985998865981.Spec : Prop :=
  ∀ n, P6093630985998865981.a n = A075438 n

end A075438

/-! ## A075438.P14645079840747113118

`and(A001222(A337013(n+1)), A336996(n))`
-/

namespace A075438.P14645079840747113118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A337013 (n + 1)).toNat) (A336996 n)

end

end A075438.P14645079840747113118

namespace A075438

/-- `and(A001222(A337013(n+1)), A336996(n))` -/
def P14645079840747113118.Spec : Prop :=
  ∀ n, P14645079840747113118.a n = A075438 n

end A075438

/-! ## A075438.P2097670284363056200

`1-A262855(A020703(n+2))`
-/

namespace A075438.P2097670284363056200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A262855 (A020703 (n + 2)).toNat

end

end A075438.P2097670284363056200

namespace A075438

/-- `1-A262855(A020703(n+2))` -/
def P2097670284363056200.Spec : Prop :=
  ∀ n, P2097670284363056200.a n = A075438 n

end A075438

/-! ## A075438.P5174622952758101252

`A075439(A020703(n+2))`
-/

namespace A075438.P5174622952758101252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075439 (A020703 (n + 2)).toNat

end

end A075438.P5174622952758101252

namespace A075438

/-- `A075439(A020703(n+2))` -/
def P5174622952758101252.Spec : Prop :=
  ∀ n, P5174622952758101252.a n = A075438 n

end A075438

/-! ## A075438.P2880010193915585456

`and(A098978(n), A118175(n))`
-/

namespace A075438.P2880010193915585456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098978 n) (A118175 n)

end

end A075438.P2880010193915585456

namespace A075438

/-- `and(A098978(n), A118175(n))` -/
def P2880010193915585456.Spec : Prop :=
  ∀ n, P2880010193915585456.a n = A075438 n

end A075438

/-! ## A075438.P10269450684722303513

`A261711(n)%2`
-/

namespace A075438.P10269450684722303513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261711 n) 2

end

end A075438.P10269450684722303513

namespace A075438

/-- `A261711(n)%2` -/
def P10269450684722303513.Spec : Prop :=
  ∀ n, P10269450684722303513.a n = A075438 n

end A075438

/-! ## A075438.P16073974753861796433

`and(A008316(n), A118175(n))`
-/

namespace A075438.P16073974753861796433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008316 n) (A118175 n)

end

end A075438.P16073974753861796433

namespace A075438

/-- `and(A008316(n), A118175(n))` -/
def P16073974753861796433.Spec : Prop :=
  ∀ n, P16073974753861796433.a n = A075438 n

end A075438

/-! ## A075438.P18080041312847342927

`A047999(comp[n²]+n)`
-/

namespace A075438.P18080041312847342927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A075438.P18080041312847342927

namespace A075438

/-- `A047999(comp[n²]+n)` -/
def P18080041312847342927.Spec : Prop :=
  ∀ n, P18080041312847342927.a n = A075438 n

end A075438

/-! ## A075438.P743155509682000915

`A007318(comp[n²]+n)%2`
-/

namespace A075438.P743155509682000915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)) 2

end

end A075438.P743155509682000915

namespace A075438

/-- `A007318(comp[n²]+n)%2` -/
def P743155509682000915.Spec : Prop :=
  ∀ n, P743155509682000915.a n = A075438 n

end A075438

/-!
# A075439: Triangle read by rows giving successive iterations of the Rule 102 elementary cellular automaton starting with a single ON cell where row n is of length 2n+1.

The programs for A075439, the canonical program `A075439.P4067390105220631629` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075439 has offset 0).

The definition of A075439 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075439.P14050598342208065096

`A084600(n)%2`
-/

namespace A075439.P14050598342208065096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084600 n) 2

end

end A075439.P14050598342208065096

namespace A075439

/-- `A084600(n)%2` -/
def P14050598342208065096.Spec : Prop :=
  ∀ n, P14050598342208065096.a n = A075439 n

end A075439

/-! ## A075439.P5093328381799730138

`A084604(n)%2`
-/

namespace A075439.P5093328381799730138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084604 n) 2

end

end A075439.P5093328381799730138

namespace A075439

/-- `A084604(n)%2` -/
def P5093328381799730138.Spec : Prop :=
  ∀ n, P5093328381799730138.a n = A075439 n

end A075439

/-! ## A075439.P17381606294875879311

`and(1, A084612(n))`
-/

namespace A075439.P17381606294875879311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A084612 n)

end

end A075439.P17381606294875879311

namespace A075439

/-- `and(1, A084612(n))` -/
def P17381606294875879311.Spec : Prop :=
  ∀ n, P17381606294875879311.a n = A075439 n

end A075439

/-! ## A075439.P4067390105220631629

`(1-A262855(n))^n`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A075439

/-- `(1-A262855(n))^n` -/
def P4067390105220631629.Spec : Prop :=
  ∀ n, P4067390105220631629.a n = A075439 n

theorem P4067390105220631629.correct : P4067390105220631629.Spec := by
  intro n
  simp only [A075439]

end A075439

/-! ## A075439.P6615238925283276899

`A054977(n)-A262855(n)`
-/

namespace A075439.P6615238925283276899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A262855 n

end

end A075439.P6615238925283276899

namespace A075439

/-- `A054977(n)-A262855(n)` -/
def P6615238925283276899.Spec : Prop :=
  ∀ n, P6615238925283276899.a n = A075439 n

end A075439

/-! ## A075439.P1133003181743388567

`A000007(n*A262855(n))`
-/

namespace A075439.P1133003181743388567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A262855 n).toNat

end

end A075439.P1133003181743388567

namespace A075439

/-- `A000007(n*A262855(n))` -/
def P1133003181743388567.Spec : Prop :=
  ∀ n, P1133003181743388567.a n = A075439 n

end A075439

/-! ## A075439.P9729551943873208408

`A000122(n*A262855(n))`
-/

namespace A075439.P9729551943873208408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 ((n : ℤ) * A262855 n).toNat

end

end A075439.P9729551943873208408

namespace A075439

/-- `A000122(n*A262855(n))` -/
def P9729551943873208408.Spec : Prop :=
  ∀ n, P9729551943873208408.a n = A075439 n

end A075439

/-! ## A075439.P12847449447417415395

`and(A071038(n), A084600(n))`
-/

namespace A075439.P12847449447417415395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071038 n) (A084600 n)

end

end A075439.P12847449447417415395

namespace A075439

/-- `and(A071038(n), A084600(n))` -/
def P12847449447417415395.Spec : Prop :=
  ∀ n, P12847449447417415395.a n = A075439 n

end A075439

/-! ## A075439.P10820972277860601023

`and(A071038(n), A084604(n))`
-/

namespace A075439.P10820972277860601023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071038 n) (A084604 n)

end

end A075439.P10820972277860601023

namespace A075439

/-- `and(A071038(n), A084604(n))` -/
def P10820972277860601023.Spec : Prop :=
  ∀ n, P10820972277860601023.a n = A075439 n

end A075439

/-! ## A075439.P11260654857871022220

`A000007(n)+1-A262855(n)`
-/

namespace A075439.P11260654857871022220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (1 - A262855 n)

end

end A075439.P11260654857871022220

namespace A075439

/-- `A000007(n)+1-A262855(n)` -/
def P11260654857871022220.Spec : Prop :=
  ∀ n, P11260654857871022220.a n = A075439 n

end A075439

/-! ## A075439.P17781405245296155701

`A336996(A020703(n+1)-1)%2`
-/

namespace A075439.P17781405245296155701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336996 (A020703 (n + 1) - 1).toNat) 2

end

end A075439.P17781405245296155701

namespace A075439

/-- `A336996(A020703(n+1)-1)%2` -/
def P17781405245296155701.Spec : Prop :=
  ∀ n, P17781405245296155701.a n = A075439 n

end A075439

/-! ## A075439.P2795421237040250873

`A075438(A028392(n))`
-/

namespace A075439.P2795421237040250873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075438 (A028392 n).toNat

end

end A075439.P2795421237040250873

namespace A075439

/-- `A075438(A028392(n))` -/
def P2795421237040250873.Spec : Prop :=
  ∀ n, P2795421237040250873.a n = A075439 n

end A075439

/-! ## A075439.P6193252301073737800

`A070886(A094761(n))`
-/

namespace A075439.P6193252301073737800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070886 (A094761 n).toNat

end

end A075439.P6193252301073737800

namespace A075439

/-- `A070886(A094761(n))` -/
def P6193252301073737800.Spec : Prop :=
  ∀ n, P6193252301073737800.a n = A075439 n

end A075439

/-! ## A075439.P12129389159807587745

`and(1, Δ[A316649(n)])`
-/

namespace A075439.P12129389159807587745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A075439.P12129389159807587745

namespace A075439

/-- `and(1, Δ[A316649(n)])` -/
def P12129389159807587745.Spec : Prop :=
  ∀ n, P12129389159807587745.a n = A075439 n

end A075439

/-! ## A075439.P16150082207127432516

`(A316649(n+1)+A316649(n))%2`
-/

namespace A075439.P16150082207127432516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316649 (n + 1) + A316649 n) 2

end

end A075439.P16150082207127432516

namespace A075439

/-- `(A316649(n+1)+A316649(n))%2` -/
def P16150082207127432516.Spec : Prop :=
  ∀ n, P16150082207127432516.a n = A075439 n

end A075439

/-! ## A075439.P6805934086578417410

`and(1, A034870(4*n))`
-/

namespace A075439.P6805934086578417410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A034870 (4 * n))

end

end A075439.P6805934086578417410

namespace A075439

/-- `and(1, A034870(4*n))` -/
def P6805934086578417410.Spec : Prop :=
  ∀ n, P6805934086578417410.a n = A075439 n

end A075439

/-! ## A075439.P4462834633115606354

`and(1, A147310(2*n))`
-/

namespace A075439.P4462834633115606354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A147310 (2 * n))

end

end A075439.P4462834633115606354

namespace A075439

/-- `and(1, A147310(2*n))` -/
def P4462834633115606354.Spec : Prop :=
  ∀ n, P4462834633115606354.a n = A075439 n

end A075439

/-! ## A075439.P16660861561096044355

`A087755(A162917(n+1))`
-/

namespace A075439.P16660861561096044355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087755 (A162917 (n + 1)).toNat

end

end A075439.P16660861561096044355

namespace A075439

/-- `A087755(A162917(n+1))` -/
def P16660861561096044355.Spec : Prop :=
  ∀ n, P16660861561096044355.a n = A075439 n

end A075439

/-! ## A075439.P15272067092722061636

`A087755(A165776(n))`
-/

namespace A075439.P15272067092722061636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087755 (A165776 n).toNat

end

end A075439.P15272067092722061636

namespace A075439

/-- `A087755(A165776(n))` -/
def P15272067092722061636.Spec : Prop :=
  ∀ n, P15272067092722061636.a n = A075439 n

end A075439

/-! ## A075439.P14360704449758637528

`A249133(4*n)`
-/

namespace A075439.P14360704449758637528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249133 (4 * n)

end

end A075439.P14360704449758637528

namespace A075439

/-- `A249133(4*n)` -/
def P14360704449758637528.Spec : Prop :=
  ∀ n, P14360704449758637528.a n = A075439 n

end A075439

/-!
# A075440: Numerator of 1/pp(n) - 1/pp(n+1), where pp(n) = n-th prime power.

The programs for A075440, there is no canonical definition to state claims against.
-/

/-! ## A075440.P11528137715886222237

`A053289(n+1)/gcd(A076405(n+1), A076412(n+1))`
-/

namespace A075440.P11528137715886222237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053289 (n + 1) : ℚ) / (Int.gcd (A076405 (n + 1)) (A076412 (n + 1)) : ℚ)

end

end A075440.P11528137715886222237

/-! ## A075440.P16318826009125519638

`Δ[A001597(n+1)]/A025474(A188165(n))`
-/

namespace A075440.P16318826009125519638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A025474 (A188165 n).toNat : ℚ)

end

end A075440.P16318826009125519638

/-! ## A075440.P6769655286914717686

`C(A053289(n+1), A332677(A045326(n+1)))`
-/

namespace A075440.P6769655286914717686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053289 (n + 1)).toNat (A332677 (A045326 (n + 1)).toNat).toNat

end

end A075440.P6769655286914717686

/-!
# A075444: a(n) = A075443(n) mod A000010(n) [using least nonnegative residue].

The programs for A075444, there is no canonical definition to state claims against.
-/

/-! ## A075444.P12506510263050084877

`A075443(n+1)%Δ[A002088(n)]`
-/

namespace A075444.P12506510263050084877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075443 (n + 1)) (f1 (n + 1) - f1 n)

end

end A075444.P12506510263050084877

/-! ## A075444.P9412422770631833257

`A075443(Δ[n²]-n)%Δ[A005728(n)]`
-/

namespace A075444.P9412422770631833257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075443 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) (f2 (n + 1) - f2 n)

end

end A075444.P9412422770631833257

/-! ## A075444.P3827054059231166816

`A075443(A054977(n)+n)%A000010(n+1)`
-/

namespace A075444.P3827054059231166816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075443 (A054977 n + (n : ℤ)).toNat) (A000010 (n + 1))

end

end A075444.P3827054059231166816

/-! ## A075444.P7668119317705010781

`A075443(A000027(n+1))%A349137(Δ[n²])`
-/

namespace A075444.P7668119317705010781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075443 (A000027 (n + 1)).toNat) (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A075444.P7668119317705010781

/-! ## A075444.P2621927019247141264

`A075446(n+1)%A075447(n+1)*A075445(n+1)`
-/

namespace A075444.P2621927019247141264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075446 (n + 1)) (A075447 (n + 1)) * A075445 (n + 1)

end

end A075444.P2621927019247141264

/-!
# A075445: a(n) = gcd(A075443(n), A000010(n)).

The programs for A075445, there is no canonical definition to state claims against.
-/

/-! ## A075445.P11282727006068243853

`gcd(A075443(n+1), A000010(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075445.P11282727006068243853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075443 (n + 1)) (A000010 (n + 1))

end

end A075445.P11282727006068243853

/-! ## A075445.P13513524555383200883

`Δ[A002088(n)]/A075447(n+1)`
-/

namespace A075445.P13513524555383200883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A075447 (n + 1) : ℚ)

end

end A075445.P13513524555383200883

/-! ## A075445.P13167059401613512762

`Δ[A005728(n)]/A075447(n+1)`
-/

namespace A075445.P13167059401613512762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A075447 (n + 1) : ℚ)

end

end A075445.P13167059401613512762

/-! ## A075445.P8749953973939773809

`gcd(Δ[A002088(n)], A075444(n+1))`
-/

namespace A075445.P8749953973939773809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A075444 (n + 1))

end

end A075445.P8749953973939773809

/-! ## A075445.P15200545436621158327

`A000010(n+1)/A075447(n+1)`
-/

namespace A075445.P15200545436621158327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A075447 (n + 1) : ℚ)

end

end A075445.P15200545436621158327

/-! ## A075445.P6617758858452185350

`(A109606(n+1)+1)/A075447(n+1)`
-/

namespace A075445.P6617758858452185350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1 : ℚ) / (A075447 (n + 1) : ℚ)

end

end A075445.P6617758858452185350

/-! ## A075445.P13222104926381600537

`(A039649(n+1)-1)/A075447(n+1)`
-/

namespace A075445.P13222104926381600537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) / (A075447 (n + 1) : ℚ)

end

end A075445.P13222104926381600537

/-! ## A075445.P18302385712313466191

`(n+1-A051953(n+1))/A075447(n+1)`
-/

namespace A075445.P18302385712313466191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A051953 (n + 1) : ℚ) / (A075447 (n + 1) : ℚ)

end

end A075445.P18302385712313466191

/-! ## A075445.P17068109008434041548

`(A002088(n+1)-A002088(n))/A075447(n+1)`
-/

namespace A075445.P17068109008434041548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n : ℚ) / (A075447 (n + 1) : ℚ)

end

end A075445.P17068109008434041548

/-! ## A075445.P10004105601704736218

`(A285709(n+1)+A285699(n+1))/A075447(n+1)`
-/

namespace A075445.P10004105601704736218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285709 (n + 1) + A285699 (n + 1) : ℚ) / (A075447 (n + 1) : ℚ)

end

end A075445.P10004105601704736218

/-! ## A075445.P17280818670012350409

`(A300822(n+1)+A300821(n+1))/A075447(n+1)`
-/

namespace A075445.P17280818670012350409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300822 (n + 1) + A300821 (n + 1) : ℚ) / (A075447 (n + 1) : ℚ)

end

end A075445.P17280818670012350409

/-! ## A075445.P17865286256765277647

`A046073(n+1)*A060594(n+1)/A075447(n+1)`
-/

namespace A075445.P17865286256765277647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046073 (n + 1) * A060594 (n + 1) : ℚ) / (A075447 (n + 1) : ℚ)

end

end A075445.P17865286256765277647

/-! ## A075445.P2683219517273983128

`(A164297(n+1)+A164296(n+1))/A075447(n+1)`
-/

namespace A075445.P2683219517273983128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164297 (n + 1) + A164296 (n + 1) : ℚ) / (A075447 (n + 1) : ℚ)

end

end A075445.P2683219517273983128

/-! ## A075445.P1584715551614738161

`Δ[eq[1, A038566(n+1)]]/A075447(n+1)`
-/

namespace A075445.P1584715551614738161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A075447 (n + 1) : ℚ)

end

end A075445.P1584715551614738161

/-!
# A075446: Numerator of A075443(n)/A000010(n).

The programs for A075446, there is no canonical definition to state claims against.
-/

/-! ## A075446.P11070349469903872190

`A075443(n+1)/A075445(n+1)`
-/

namespace A075446.P11070349469903872190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075443 (n + 1) : ℚ) / (A075445 (n + 1) : ℚ)

end

end A075446.P11070349469903872190

/-! ## A075446.P5775571900743277678

`A075443(n+1)/A000010(n+1)*A075447(n+1)`
-/

namespace A075446.P5775571900743277678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075443 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A075447 (n + 1) : ℚ)

end

end A075446.P5775571900743277678

/-!
# A075447: Denominator of A075443(n)/A000010(n).

The programs for A075447, there is no canonical definition to state claims against.
-/

/-! ## A075447.P15157144183842172965

`Δ[A002088(n)]/A075445(n+1)`
-/

namespace A075447.P15157144183842172965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A075445 (n + 1) : ℚ)

end

end A075447.P15157144183842172965

/-! ## A075447.P6859711803986352493

`Δ[A005728(n)]/A075445(n+1)`
-/

namespace A075447.P6859711803986352493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A075445 (n + 1) : ℚ)

end

end A075447.P6859711803986352493

/-! ## A075447.P6333768804322709441

`A000010(n+1)/A075445(n+1)`
-/

namespace A075447.P6333768804322709441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A075445 (n + 1) : ℚ)

end

end A075447.P6333768804322709441

/-! ## A075447.P11120823919174269390

`(A109606(n+1)+1)/A075445(n+1)`
-/

namespace A075447.P11120823919174269390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1 : ℚ) / (A075445 (n + 1) : ℚ)

end

end A075447.P11120823919174269390

/-! ## A075447.P18344381761412606966

`(A039649(n+1)-1)/A075445(n+1)`
-/

namespace A075447.P18344381761412606966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) / (A075445 (n + 1) : ℚ)

end

end A075447.P18344381761412606966

/-! ## A075447.P7016932097215834831

`(n+1-A051953(n+1))/A075445(n+1)`
-/

namespace A075447.P7016932097215834831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A051953 (n + 1) : ℚ) / (A075445 (n + 1) : ℚ)

end

end A075447.P7016932097215834831

/-! ## A075447.P13501465927291781902

`A349137(A005408(n))/A075445(n+1)`
-/

namespace A075447.P13501465927291781902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349137 (A005408 n).toNat : ℚ) / (A075445 (n + 1) : ℚ)

end

end A075447.P13501465927291781902

/-! ## A075447.P12321748103992574033

`(A002088(n+1)-A002088(n))/A075445(n+1)`
-/

namespace A075447.P12321748103992574033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n : ℚ) / (A075445 (n + 1) : ℚ)

end

end A075447.P12321748103992574033

/-! ## A075447.P10670326764020764395

`(A285709(n+1)+A285699(n+1))/A075445(n+1)`
-/

namespace A075447.P10670326764020764395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285709 (n + 1) + A285699 (n + 1) : ℚ) / (A075445 (n + 1) : ℚ)

end

end A075447.P10670326764020764395

/-! ## A075447.P6282669780552077991

`(A300822(n+1)+A300821(n+1))/A075445(n+1)`
-/

namespace A075447.P6282669780552077991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300822 (n + 1) + A300821 (n + 1) : ℚ) / (A075445 (n + 1) : ℚ)

end

end A075447.P6282669780552077991

/-! ## A075447.P11581942432156374416

`A046073(n+1)*A060594(n+1)/A075445(n+1)`
-/

namespace A075447.P11581942432156374416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046073 (n + 1) * A060594 (n + 1) : ℚ) / (A075445 (n + 1) : ℚ)

end

end A075447.P11581942432156374416

/-! ## A075447.P9042046314741963546

`A000010(n+1)/gcd(A000010(n+1), A075444(n+1))`
-/

namespace A075447.P9042046314741963546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (Int.gcd (A000010 (n + 1)) (A075444 (n + 1)) : ℚ)

end

end A075447.P9042046314741963546

/-! ## A075447.P605665557372867513

`Δ[A049632(n)-A049643(n)]/A075445(n+1)`
-/

namespace A075447.P605665557372867513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049632 n - A049643 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A075445 (n + 1) : ℚ)

end

end A075447.P605665557372867513

/-! ## A075447.P18284182388530524379

`(A049633(n)-A049632(n))/A075445(n+1)`
-/

namespace A075447.P18284182388530524379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049633 n - A049632 n : ℚ) / (A075445 (n + 1) : ℚ)

end

end A075447.P18284182388530524379

/-! ## A075447.P12164608343818194337

`(A164297(n+1)+A164296(n+1))/A075445(n+1)`
-/

namespace A075447.P12164608343818194337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164297 (n + 1) + A164296 (n + 1) : ℚ) / (A075445 (n + 1) : ℚ)

end

end A075447.P12164608343818194337

/-!
# A075448: A075443(n^2)-A075443(n) mod n [i.e., least nonnegative residue].

The programs for A075448, there is no canonical definition to state claims against.
-/

/-! ## A075448.P12865333033875803948

`(A075443((n+1)²)-A075443(n+1))%(n+1)`
-/

namespace A075448.P12865333033875803948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075443 ((n + 1) ^ 2) - A075443 (n + 1)) (n + 1 : ℤ)

end

end A075448.P12865333033875803948

/-!
# A075449: Numbers k such that A075443(k) == 0 (mod A000010(k)).

The programs for A075449, there is no canonical definition to state claims against.
-/

/-! ## A075449.P7150448980977426238

`eq[0, A075444(n+1)]+1`
-/

namespace A075449.P7150448980977426238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A075449.P7150448980977426238

/-! ## A075449.P5363360660829109754

`eq[1, A075447(n+1)]+1`
-/

namespace A075449.P5363360660829109754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A075449.P5363360660829109754

/-! ## A075449.P16671354002506436927

`record[(n+1)/A075447(round(sqrt(n²+1))+1)]`
-/

namespace A075449.P16671354002506436927
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A075447 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075449.P16671354002506436927

/-! ## A075449.P15965941766995053979

`A028310(record[(n+1)/A075447(n+1)])`
-/

namespace A075449.P15965941766995053979
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A075447 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A075449.P15965941766995053979

/-! ## A075449.P14574165815489805621

`record[gcd(A000027(n+1), A075444(n+1))]`
-/

namespace A075449.P14574165815489805621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A075444 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075449.P14574165815489805621

/-! ## A075449.P17156242402049930594

`record[(n+1)/A075447(n+1)^A003434(n+1)]`
-/

namespace A075449.P17156242402049930594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A075447 (n + 1) : ℚ) ^ (A003434 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075449.P17156242402049930594

/-! ## A075449.P15627254155746871239

`record[A028310(n)/A075447(A028310(n))²]`
-/

namespace A075449.P15627254155746871239
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A075447 (A028310 n).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075449.P15627254155746871239

/-! ## A075449.P15779050297326755020

`record[(n+1)/A000010(A075447(n+1)²)]`
-/

namespace A075449.P15779050297326755020
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (A075447 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075449.P15779050297326755020

/-!
# A075450: a(n)=A075443(A075449(n)).

The programs for A075450, there is no canonical definition to state claims against.
-/

/-! ## A075450.P4401195761642676331

`A075443(A075449(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075450.P4401195761642676331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (A075449 (n + 1)).toNat

end

end A075450.P4401195761642676331

/-! ## A075450.P5046511795474323724

`A075443(eq[1, A075447(n+1)]+1)`
-/

namespace A075450.P5046511795474323724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A075450.P5046511795474323724

/-! ## A075450.P868401737743512165

`A075443(lt[A075444(n+1), 1]+1)`
-/

namespace A075450.P868401737743512165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075444 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A075450.P868401737743512165

/-! ## A075450.P16221637461975139479

`A075443(record[(n+1)/A075447(n+1)])`
-/

namespace A075450.P16221637461975139479
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A075447 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A075450.P16221637461975139479

/-! ## A075450.P10471851665974514013

`A075443(record[gcd(n+1, A075444(n+1))])`
-/

namespace A075450.P10471851665974514013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A075444 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A075450.P10471851665974514013

/-!
# A075451: Numbers k such that gcd(A075443(k), A000010(k)) = 1.

The programs for A075451, there is no canonical definition to state claims against.
-/

/-! ## A075451.P7502387541499457790

`eq[1, A075445(n+1)]+1`
-/

namespace A075451.P7502387541499457790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075445 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A075451.P7502387541499457790

/-! ## A075451.P960954289582193169

`record[A000015(n+1)/A075445(n+1)]`
-/

namespace A075451.P960954289582193169
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000015 (n + 1) : ℚ) / (A075445 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075451.P960954289582193169

/-! ## A075451.P17200749474684974906

`record[A000027(n+1)/A075445(n+1)]`
-/

namespace A075451.P17200749474684974906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A075445 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075451.P17200749474684974906

/-! ## A075451.P10071138639487080461

`record[A038502(n+1)/A075445(n+1)]`
-/

namespace A075451.P10071138639487080461
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038502 (n + 1) : ℚ) / (A075445 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075451.P10071138639487080461

/-! ## A075451.P12431611858752448409

`record[A072436(n+1)/A075445(n+1)]`
-/

namespace A075451.P12431611858752448409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072436 (n + 1) : ℚ) / (A075445 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075451.P12431611858752448409

/-! ## A075451.P22884954921038808

`eq[Δ[A002088(n)], A075447(n+1)]+1`
-/

namespace A075451.P22884954921038808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A075451.P22884954921038808

/-! ## A075451.P4318670488876865496

`record[A085801(n+1)/A075445(A085801(n+1))]`
-/

namespace A075451.P4318670488876865496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085801 (n + 1) : ℚ) / (A075445 (A085801 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075451.P4318670488876865496

/-! ## A075451.P14595577392925401855

`record[A032742(2*(n+1))/A075445(n+1)]`
-/

namespace A075451.P14595577392925401855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (2 * (n + 1)) : ℚ) / (A075445 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075451.P14595577392925401855

/-!
# A075452: a(n) = A075443(A075451(n)).

The programs for A075452, there is no canonical definition to state claims against.
-/

/-! ## A075452.P669939679202787262

`A075443(A075451(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075452.P669939679202787262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075443 (A075451 (n + 1)).toNat

end

end A075452.P669939679202787262

/-! ## A075452.P1672625087994032894

`A075446(or(1, A075451(n+1)))`
-/

namespace A075452.P1672625087994032894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075446 (Int.lor 1 (A075451 (n + 1))).toNat

end

end A075452.P1672625087994032894

/-! ## A075452.P4360434491120294746

`A075446(and(-1, A075451(n+1)))`
-/

namespace A075452.P4360434491120294746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075446 (Int.land (-1) (A075451 (n + 1))).toNat

end

end A075452.P4360434491120294746

/-! ## A075452.P15832462679171234158

`A075446(A075451(n+1)+char[1])`
-/

namespace A075452.P15832462679171234158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075446 (A075451 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A075452.P15832462679171234158

/-! ## A075452.P11964392490228450270

`A075446(A075451(2*n+1-n))`
-/

namespace A075452.P11964392490228450270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075446 (A075451 (2 * n + 1 - n)).toNat

end

end A075452.P11964392490228450270

/-!
# A075454: Integer averages of two successive perfect powers (pp(n) + pp(n+1))/2.

The programs for A075454, there is no canonical definition to state claims against.
-/

/-! ## A075454.P12444849563763597081

`A075456(C(n+1, lcm(24, n)/24))`
-/

namespace A075454.P12444849563763597081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075456 (Nat.choose (n + 1) (SequenceMachineLib.roundAway ((Nat.lcm 24 n : ℚ) / 24)).toNat)

end

end A075454.P12444849563763597081

/-! ## A075454.P3345836144367271267

`A075456(A381225(n))`
-/

namespace A075454.P3345836144367271267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075456 (A381225 n).toNat

end

end A075454.P3345836144367271267

/-! ## A075454.P4712480850958914341

`A075456(A001104(n+1))`
-/

namespace A075454.P4712480850958914341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075456 (A001104 (n + 1)).toNat

end

end A075454.P4712480850958914341

/-! ## A075454.P12682801091805047971

`A075456(A002998(n+1))`
-/

namespace A075454.P12682801091805047971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075456 (A002998 (n + 1)).toNat

end

end A075454.P12682801091805047971

/-! ## A075454.P16458129780734381894

`A075456(A023106(n+1))`
-/

namespace A075454.P16458129780734381894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075456 (A023106 (n + 1)).toNat

end

end A075454.P16458129780734381894

/-!
# A075455: Prime averages of two successive perfect powers (A001597(k) + A001597(k+1))/2.

The programs for A075455, there is no canonical definition to state claims against.
-/

/-! ## A075455.P4553702870374874984

`p?[A075454(n+1)]`
-/

namespace A075455.P4553702870374874984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A075455.P4553702870374874984

/-!
# A075456: Distinct-digit averages of two successive perfect powers (pp(n) + pp(n+1))/2.

The programs for A075456, there is no canonical definition to state claims against.
-/

/-! ## A075456.P12063764530214343397

`record[A137564(A075454(n+1))]`
-/

namespace A075456.P12063764530214343397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A075454 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075456.P12063764530214343397

/-! ## A075456.P8883290240618430905

`filter[A075454(n+1), A178788(#)]`
-/

namespace A075456.P8883290240618430905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A075456.P8883290240618430905

/-!
# A075458: Domination number for queens' graph Q(n).

The programs for A075458, there is no canonical definition to state claims against.
-/

/-! ## A075458.P9454780310512665581

`∑[A264739(Δ[A086096(n+1)])]`
-/

namespace A075458.P9454780310512665581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086096 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075458.P9454780310512665581

/-! ## A075458.P12974819189735180945

`∑[A322860(Δ[A086096(n+1)])]`
-/

namespace A075458.P12974819189735180945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086096 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075458.P12974819189735180945

/-! ## A075458.P15752283008278199245

`∑[A341629(Δ[A086096(n+1)])]`
-/

namespace A075458.P15752283008278199245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086096 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075458.P15752283008278199245

/-! ## A075458.P14669296393736993965

`∑[A365429(Δ[A086096(n+1)])]`
-/

namespace A075458.P14669296393736993965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086096 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365429 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075458.P14669296393736993965

/-! ## A075458.P17228509110690678874

`∑[A137893(A020639(A314049(n)))]`
-/

namespace A075458.P17228509110690678874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (A020639 (A314049 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075458.P17228509110690678874

/-!
# A075460: Odd primitive numbers such that n! divided by product of factorials of all proper divisors of n is not an integer.

The programs for A075460, there is no canonical definition to state claims against.
-/

/-! ## A075460.P1313409664144701361

`A005231(lt[A003000(n), A066608(n+1)])`
-/

namespace A075460.P1313409664144701361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A075460.P1313409664144701361

/-! ## A075460.P2326851013300292257

`A174865(lt[A003000(n), A066608(n+1)])`
-/

namespace A075460.P2326851013300292257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174865 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A075460.P2326851013300292257

/-! ## A075460.P13281175631364488731

`A005231(lt[A095714(n+1), A066608(n+1)])`
-/

namespace A075460.P13281175631364488731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A075460.P13281175631364488731

/-! ## A075460.P14947541303397744118

`A005231(lt[A120421(n+1), A066608(n+1)])`
-/

namespace A075460.P14947541303397744118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A075460.P14947541303397744118

/-! ## A075460.P3106932587596110050

`A174865(lt[A120421(n+1), A066608(n+1)])`
-/

namespace A075460.P3106932587596110050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174865 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A075460.P3106932587596110050

/-!
# A075461: List of solutions to the Znám problem sorted first by length, then lexicographically.

The programs for A075461, there is no canonical definition to state claims against.
-/

/-! ## A075461.P7966719841561609049

`p?[A005248(n)]%604`
-/

namespace A075461.P7966719841561609049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 604

end

end A075461.P7966719841561609049

/-!
# A075462: a(n) is the number of solutions to the all-ones lights out problem on an n X n square.

The programs for A075462, there is no canonical definition to state claims against.
-/

/-! ## A075462.P2856178997599205801

`2^A159257(n+1)`
-/

namespace A075462.P2856178997599205801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A159257 (n + 1) : ℤ)

end

end A075462.P2856178997599205801

/-! ## A075462.P5403311791817547801

`A000079(A159257(n+1))`
-/

namespace A075462.P5403311791817547801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A159257 (n + 1)).toNat

end

end A075462.P5403311791817547801

/-! ## A075462.P14598778850260057653

`A016116(2*A159257(n+1))`
-/

namespace A075462.P14598778850260057653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A159257 (n + 1)).toNat

end

end A075462.P14598778850260057653

/-! ## A075462.P1623822354454191043

`A164587(A159257(n+1)+1)²`
-/

namespace A075462.P1623822354454191043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164587 (A159257 (n + 1) + 1).toNat ^ 2

end

end A075462.P1623822354454191043

/-! ## A075462.P6802911272025598723

`A164587(2*A159257(n+1)+1)`
-/

namespace A075462.P6802911272025598723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164587 (2 * A159257 (n + 1) + 1).toNat

end

end A075462.P6802911272025598723

/-! ## A075462.P10198175339796610802

`A016116(A159257(n+1)+A159257(n+1)+1)`
-/

namespace A075462.P10198175339796610802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A159257 (n + 1) + (A159257 (n + 1) + 1)).toNat

end

end A075462.P10198175339796610802

/-! ## A075462.P4380833216915974995

`A164587(A159257(n+1)+A159257(n+1)+1)`
-/

namespace A075462.P4380833216915974995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164587 (A159257 (n + 1) + (A159257 (n + 1) + 1)).toNat

end

end A075462.P4380833216915974995

/-!
# A075463: a(n) is the number of rotation-reflection inequivalent solutions to the all-ones lights out problem on an n X n square.

The programs for A075463, there is no canonical definition to state claims against.
-/

/-! ## A075463.P7867699877363097518

`A324337(A003477(A159257(n+1)))`
-/

namespace A075463.P7867699877363097518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A003477 (A159257 (n + 1)).toNat).toNat

end

end A075463.P7867699877363097518

/-! ## A075463.P4893343645310544894

`A085098(gcd(n, ∑{d}[∏{p}[n+1, #], (n+1)/#]))`
-/

namespace A075463.P4893343645310544894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085098 (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))))

end

end A075463.P4893343645310544894

/-! ## A075463.P6042816874435150138

`A136730(gcd(3^n+4^n, floor(4^n/3)))`
-/

namespace A075463.P6042816874435150138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136730 (Int.gcd (3 ^ n + 4 ^ n : ℤ) ⌊(4 ^ n : ℚ) / 3⌋)

end

end A075463.P6042816874435150138

/-! ## A075463.P1777647506805824088

`gcd((∏{e}[n+1, #+1]+1)%3-1, A354372((n+1)*∏{p}[n+1, #]))`
-/

namespace A075463.P1777647506805824088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1) % 3 : ℕ) : ℤ) - 1) (A354372 ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)))

end

end A075463.P1777647506805824088

/-! ## A075463.P13700060161848828222

`A055515(A181061(n))`
-/

namespace A075463.P13700060161848828222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055515 (A181061 n).toNat

end

end A075463.P13700060161848828222

/-!
# A075465: Rounded average of first n primes.

The programs for A075465, the canonical program `A075465.P1079195501132241979` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075465 has offset 1).

The definition of A075465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075465.P8813425579541377956

`ceil(∑[sqrt(A036689(n+1))]/(n+1))`
-/

namespace A075465.P8813425579541377956
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036689 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ j ∈ Finset.range (n + 1), f1 j) / (n + 1 : ℝ)⌉

end

end A075465.P8813425579541377956

namespace A075465

/-- `ceil(∑[sqrt(A036689(n+1))]/(n+1))` -/
def P8813425579541377956.Spec : Prop :=
  ∀ n, P8813425579541377956.a n = A075465 (n + 1)

end A075465

/-! ## A075465.P1079195501132241979

`round((∑[A014686(n+1)]-1)/(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075465

/-- `round((∑[A014686(n+1)]-1)/(n+1))` -/
def P1079195501132241979.Spec : Prop :=
  ∀ n, P1079195501132241979.a n = A075465 (n + 1)

theorem P1079195501132241979.correct : P1079195501132241979.Spec := by
  intro n
  simp only [A075465, Nat.add_sub_cancel]

end A075465

/-! ## A075465.P11401737494417763370

`floor((A007504(n+1)+A004524(n+1))/(n+1))`
-/

namespace A075465.P11401737494417763370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007504 (n + 1) + A004524 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A075465.P11401737494417763370

namespace A075465

/-- `floor((A007504(n+1)+A004524(n+1))/(n+1))` -/
def P11401737494417763370.Spec : Prop :=
  ∀ n, P11401737494417763370.a n = A075465 (n + 1)

end A075465

/-! ## A075465.P6454502450547130388

`A301277(n+1)-A099475(A000040(n+1))`
-/

namespace A075465.P6454502450547130388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301277 (n + 1) - A099475 (A000040 (n + 1)).toNat

end

end A075465.P6454502450547130388

namespace A075465

/-- `A301277(n+1)-A099475(A000040(n+1))` -/
def P6454502450547130388.Spec : Prop :=
  ∀ n, P6454502450547130388.a n = A075465 (n + 1)

end A075465

/-! ## A075465.P15419617799468057231

`A301277(and(n, A087522(n))+1)`
-/

namespace A075465.P15419617799468057231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301277 (Int.land (n : ℤ) (A087522 n) + 1).toNat

end

end A075465.P15419617799468057231

namespace A075465

/-- `A301277(and(n, A087522(n))+1)` -/
def P15419617799468057231.Spec : Prop :=
  ∀ n, P15419617799468057231.a n = A075465 (n + 1)

end A075465

/-! ## A075465.P1857746762086734482

`A301277(n+1)-A063524(n²)`
-/

namespace A075465.P1857746762086734482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301277 (n + 1) - A063524 (n ^ 2)

end

end A075465.P1857746762086734482

namespace A075465

/-- `A301277(n+1)-A063524(n²)` -/
def P1857746762086734482.Spec : Prop :=
  ∀ n, P1857746762086734482.a n = A075465 (n + 1)

end A075465

/-! ## A075465.P15375494110122183492

`A301277(n+1)+A159075(n²)`
-/

namespace A075465.P15375494110122183492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301277 (n + 1) + A159075 (n ^ 2)

end

end A075465.P15375494110122183492

namespace A075465

/-- `A301277(n+1)+A159075(n²)` -/
def P15375494110122183492.Spec : Prop :=
  ∀ n, P15375494110122183492.a n = A075465 (n + 1)

end A075465

/-!
# A075470: Primes arising from the rearrangement of the natural numbers such that sum of n (n>1) terms starting from the n-th term (included) is a prime (A073672).

The programs for A075470, there is no canonical definition to state claims against.
-/

/-! ## A075470.P15259966570133232091

`A008578(∑[∑{e}[A076281(n+1)+n, #]+2])`
-/

namespace A075470.P15259966570133232091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076281 (n + 1) + (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075470.P15259966570133232091

/-! ## A075470.P12126276283592808596

`A059168(lt[A192211(n+1), A212044(2*(n+2))])`
-/

namespace A075470.P12126276283592808596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212044 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059168 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A075470.P12126276283592808596

/-!
# A075471: Rounded root-mean-square (RMS) value of first n primes.

The programs for A075471, the canonical program `A075471.P15021078902774570681` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075471 has offset 1).

The definition of A075471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075471.P15021078902774570681

`round(sqrt(A024450(n+1)/(n+1)))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A075471

/-- `round(sqrt(A024450(n+1)/(n+1)))` -/
def P15021078902774570681.Spec : Prop :=
  ∀ n, P15021078902774570681.a n = A075471 (n + 1)

theorem P15021078902774570681.correct : P15021078902774570681.Spec := by
  intro n
  simp only [A075471, Nat.add_sub_cancel]

end A075471

/-! ## A075471.P3172487863063182406

`round(sqrt(∑[A001248(n+1)]/(n+1)))`
-/

namespace A075471.P3172487863063182406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) : ℝ))

end

end A075471.P3172487863063182406

namespace A075471

/-- `round(sqrt(∑[A001248(n+1)]/(n+1)))` -/
def P3172487863063182406.Spec : Prop :=
  ∀ n, P3172487863063182406.a n = A075471 (n + 1)

end A075471

/-! ## A075471.P10712367365995299311

`round(sqrt(∑[A000040(n+1)²]/(n+1)))`
-/

namespace A075471.P10712367365995299311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) : ℝ))

end

end A075471.P10712367365995299311

namespace A075471

/-- `round(sqrt(∑[A000040(n+1)²]/(n+1)))` -/
def P10712367365995299311.Spec : Prop :=
  ∀ n, P10712367365995299311.a n = A075471 (n + 1)

end A075471

/-! ## A075471.P1269217775074477498

`round(sqrt(A024525(n+1))/sqrt(n+1))`
-/

namespace A075471.P1269217775074477498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A024525 (n + 1) : ℝ) / Real.sqrt (n + 1 : ℝ))

end

end A075471.P1269217775074477498

namespace A075471

/-- `round(sqrt(A024525(n+1))/sqrt(n+1))` -/
def P1269217775074477498.Spec : Prop :=
  ∀ n, P1269217775074477498.a n = A075471 (n + 1)

end A075471

/-! ## A075471.P7983416039523183187

`A276611(∑[A000040(A001304(n))])`
-/

namespace A075471.P7983416039523183187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A075471.P7983416039523183187

namespace A075471

/-- `A276611(∑[A000040(A001304(n))])` -/
def P7983416039523183187.Spec : Prop :=
  ∀ n, P7983416039523183187.a n = A075471 (n + 1)

end A075471

/-!
# A075472: Rounded root-mean-square (RMS) value of first n perfect powers.

The programs for A075472, there is no canonical definition to state claims against.
-/

/-! ## A075472.P3906289210820192042

`record[A130154(n+1)-A160753(n)]`
-/

namespace A075472.P3906289210820192042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130154 (n + 1) - A160753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075472.P3906289210820192042

/-! ## A075472.P11686623800089985284

`A131138(A001747(n+1)^A055640(n))`
-/

namespace A075472.P11686623800089985284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131138 (SequenceMachineLib.roundAway ((A001747 (n + 1) : ℚ) ^ (A055640 n : ℤ))).toNat

end

end A075472.P11686623800089985284

/-! ## A075472.P2380735122887419656

`A304465(A115185(n+1))+A008578(n+1)`
-/

namespace A075472.P2380735122887419656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (A115185 (n + 1)).toNat + A008578 (n + 1)

end

end A075472.P2380735122887419656

/-! ## A075472.P10132392184119443175

`A131138(A001747(n+1)^A071625(n+1))`
-/

namespace A075472.P10132392184119443175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131138 (SequenceMachineLib.roundAway ((A001747 (n + 1) : ℚ) ^ (A071625 (n + 1) : ℤ))).toNat

end

end A075472.P10132392184119443175

/-! ## A075472.P2731561882464087075

`or(A175468(A083615(n+3)+1)%2, A325781(n+1))`
-/

namespace A075472.P2731561882464087075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A175468 (A083615 (n + 3) + 1).toNat) 2) (A325781 (n + 1))

end

end A075472.P2731561882464087075

/-!
# A075473: n^n + n! - 2*(n+1)^(n-1).

The programs for A075473, the canonical program `A075473.P11458697594015001837` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075473 has offset 0).

The definition of A075473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075473.P11458697594015001837

`n^n+n!-2*(n+1)^(n-1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075473

/-- `n^n+n!-2*(n+1)^(n-1)` -/
def P11458697594015001837.Spec : Prop :=
  ∀ n, P11458697594015001837.a n = (A075473 n : ℚ)

end A075473

/-! ## A075473.P14984089710994412132

`A000312(n)+A000142(n)-2*A000272(n+1)`
-/

namespace A075473.P14984089710994412132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n + A000142 n - 2 * A000272 (n + 1)

end

end A075473.P14984089710994412132

namespace A075473

/-- `A000312(n)+A000142(n)-2*A000272(n+1)` -/
def P14984089710994412132.Spec : Prop :=
  ∀ n, P14984089710994412132.a n = A075473 n

end A075473

/-! ## A075473.P10807254269425498584

`n!+A000312(n)-A003308(n+1)`
-/

namespace A075473.P10807254269425498584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + (A000312 n - A003308 (n + 1))

end

end A075473.P10807254269425498584

namespace A075473

/-- `n!+A000312(n)-A003308(n+1)` -/
def P10807254269425498584.Spec : Prop :=
  ∀ n, P10807254269425498584.a n = A075473 n

end A075473

/-! ## A075473.P2100709859346517176

`A000142(n)+A000312(n)-A003308(n+1)`
-/

namespace A075473.P2100709859346517176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (A000312 n - A003308 (n + 1))

end

end A075473.P2100709859346517176

namespace A075473

/-- `A000142(n)+A000312(n)-A003308(n+1)` -/
def P2100709859346517176.Spec : Prop :=
  ∀ n, P2100709859346517176.a n = A075473 n

end A075473

/-!
# A075475: Numbers n such that reverse(phi(n+1)) = phi(n).

The programs for A075475, there is no canonical definition to state claims against.
-/

/-! ## A075475.P16380318146007615332

`∑[∑[A239136(A132105(n))]]`
-/

namespace A075475.P16380318146007615332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239136 (A132105 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075475.P16380318146007615332

/-!
# A075476: Number of iteration that first becomes smaller than the initial value if Collatz-function (A006370) is iterated, starting with numbers of form 64n+7. Corresponds to selection of every 16th term from A074474.

The programs for A075476, there is no canonical definition to state claims against.
-/

/-! ## A075476.P13251213506910834550

`A074473(64*n+7)`
-/

namespace A075476.P13251213506910834550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (64 * n + 7)

end

end A075476.P13251213506910834550

/-! ## A075476.P3644607458146058830

`A074474(A008598(n)+2)`
-/

namespace A075476.P3644607458146058830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (A008598 n + 2).toNat

end

end A075476.P3644607458146058830

/-! ## A075476.P12521518375835023625

`A074474(2*A017077(n))`
-/

namespace A075476.P12521518375835023625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (2 * A017077 n).toNat

end

end A075476.P12521518375835023625

/-! ## A075476.P4458003578743431340

`A074474(A119413(n+1)-2)`
-/

namespace A075476.P4458003578743431340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (A119413 (n + 1) - 2).toNat

end

end A075476.P4458003578743431340

/-! ## A075476.P11515672576259327639

`A074474(A119413(2*n+1)/2)`
-/

namespace A075476.P11515672576259327639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (SequenceMachineLib.roundAway ((A119413 (2 * n + 1) : ℚ) / 2)).toNat

end

end A075476.P11515672576259327639

/-! ## A075476.P3480770384127958565

`A074474(A004523(A016957(4*n)))`
-/

namespace A075476.P3480770384127958565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (A004523 (A016957 (4 * n)).toNat).toNat

end

end A075476.P3480770384127958565

/-! ## A075476.P9059795776669075052

`A102419(A004771(2*n+6*n))+1`
-/

namespace A075476.P9059795776669075052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102419 (A004771 (2 * n + 6 * n)).toNat + 1

end

end A075476.P9059795776669075052

/-!
# A075477: Number of iteration that first becomes smaller than the initial value if Collatz-function (A006370) is iterated, starting with numbers of form 64n+15. Corresponds to selection of every 16th term from A074474.

The programs for A075477, there is no canonical definition to state claims against.
-/

/-! ## A075477.P12625846264252769450

`A074473(64*n+15)`
-/

namespace A075477.P12625846264252769450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (64 * n + 15)

end

end A075477.P12625846264252769450

/-! ## A075477.P16532548188057446064

`A074474(A119413(n+1))`
-/

namespace A075477.P16532548188057446064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (A119413 (n + 1)).toNat

end

end A075477.P16532548188057446064

/-! ## A075477.P16121860901681406676

`A074474(2*A017089(n))`
-/

namespace A075477.P16121860901681406676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (2 * A017089 n).toNat

end

end A075477.P16121860901681406676

/-! ## A075477.P2556596421704084932

`A074474(lcm(4, A017089(n)))`
-/

namespace A075477.P2556596421704084932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (Int.lcm 4 (A017089 n))

end

end A075477.P2556596421704084932

/-! ## A075477.P6836351873945270823

`A074474(A005843(8*n+2))`
-/

namespace A075477.P6836351873945270823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (A005843 (8 * n + 2)).toNat

end

end A075477.P6836351873945270823

/-! ## A075477.P10327250222863614063

`A074474(A008574(Δ[C(2*n, 2)]))`
-/

namespace A075477.P10327250222863614063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (A008574 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A075477.P10327250222863614063

/-! ## A075477.P2856559366692427173

`A102419(A004771(8*n+1))+1`
-/

namespace A075477.P2856559366692427173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102419 (A004771 (8 * n + 1)).toNat + 1

end

end A075477.P2856559366692427173

/-!
# A075478: Number of iteration that first becomes smaller than the initial value if Collatz-function (A006370) is iterated, starting with numbers of form 64n+27. Corresponds to selection of every 16th term from A074474.

The programs for A075478, there is no canonical definition to state claims against.
-/

/-! ## A075478.P10906535002372209770

`A074474(eq[8, 2^val(n+1, 2)])`
-/

namespace A075478.P10906535002372209770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A075478.P10906535002372209770

/-! ## A075478.P1995928683480990434

`A074473(A157330(n+1)-29)`
-/

namespace A075478.P1995928683480990434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (A157330 (n + 1) - 29).toNat

end

end A075478.P1995928683480990434

/-! ## A075478.P5785129778510779660

`A074473(xor(35, A157330(n+1)))`
-/

namespace A075478.P5785129778510779660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (Int.xor 35 (A157330 (n + 1))).toNat

end

end A075478.P5785129778510779660

/-! ## A075478.P14013502960353196424

`A074473(A017101(A017101(n)))`
-/

namespace A075478.P14013502960353196424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (A017101 (A017101 n).toNat).toNat

end

end A075478.P14013502960353196424

/-! ## A075478.P331796106497173174

`A074473(A004769(A004769(n)-9))`
-/

namespace A075478.P331796106497173174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (A004769 (A004769 n - 9).toNat).toNat

end

end A075478.P331796106497173174

/-!
# A075479: Number of iteration that first becomes smaller than the initial value if Collatz-function (A006370) is iterated, starting with numbers of form 64n+31. Corresponds to selection of every 16th term from A074474.

The programs for A075479, there is no canonical definition to state claims against.
-/

/-! ## A075479.P7199677739002849673

`A074474(8*(2*n+1))`
-/

namespace A075479.P7199677739002849673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (8 * (2 * n + 1))

end

end A075479.P7199677739002849673

/-! ## A075479.P3861562530516264626

`A060445(A125169(2*n))+1`
-/

namespace A075479.P3861562530516264626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060445 (A125169 (2 * n)).toNat + 1

end

end A075479.P3861562530516264626

/-! ## A075479.P4201331046290783737

`A074473(A157330(n+1)-25)`
-/

namespace A075479.P4201331046290783737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (A157330 (n + 1) - 25).toNat

end

end A075479.P4201331046290783737

/-! ## A075479.P11457445668699593493

`A074473(A125169(Δ[A130883(n)]))`
-/

namespace A075479.P11457445668699593493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (A125169 (f1 (n + 1) - f1 n).toNat).toNat

end

end A075479.P11457445668699593493

/-! ## A075479.P15097783733994741482

`A074473(A004771(A004771(n)-4))`
-/

namespace A075479.P15097783733994741482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (A004771 (A004771 n - 4).toNat).toNat

end

end A075479.P15097783733994741482

/-! ## A075479.P13441527038138675423

`A074473(A017137(A017137(n))-23)`
-/

namespace A075479.P13441527038138675423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (A017137 (A017137 n).toNat - 23).toNat

end

end A075479.P13441527038138675423

/-! ## A075479.P15979589887895078333

`A074473(A004771(xor(4, A004771(n))))`
-/

namespace A075479.P15979589887895078333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (A004771 (Int.xor 4 (A004771 n)).toNat).toNat

end

end A075479.P15979589887895078333

/-!
# A075480: Number of iteration that first becomes smaller than the initial value if Collatz function (A006370) is iterated, starting with numbers of the form 64n + 39.

The programs for A075480, there is no canonical definition to state claims against.
-/

/-! ## A075480.P1866122376593694325

`A074473(64*n+39)`
-/

namespace A075480.P1866122376593694325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (64 * n + 39)

end

end A075480.P1866122376593694325

/-! ## A075480.P16827820411258394444

`A074474(A113770(n+1))`
-/

namespace A075480.P16827820411258394444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (A113770 (n + 1)).toNat

end

end A075480.P16827820411258394444

/-! ## A075480.P5725134978303540813

`A074474(A098502(n+1)-2)`
-/

namespace A075480.P5725134978303540813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (A098502 (n + 1) - 2).toNat

end

end A075480.P5725134978303540813

/-! ## A075480.P12650136888707920228

`A074474(A119413(2*(n+1))/2)`
-/

namespace A075480.P12650136888707920228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (SequenceMachineLib.roundAway ((A119413 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A075480.P12650136888707920228

/-! ## A075480.P5947846816379400798

`A074474(A004523(A016957(A005843(2*n+1))))`
-/

namespace A075480.P5947846816379400798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (A004523 (A016957 (A005843 (2 * n + 1)).toNat).toNat).toNat

end

end A075480.P5947846816379400798

/-! ## A075480.P990947674092657757

`A102419(A004771(5*n+3*(n+1)+1))+1`
-/

namespace A075480.P990947674092657757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102419 (A004771 (5 * n + (3 * (n + 1) + 1))).toNat + 1

end

end A075480.P990947674092657757

/-!
# A075481: Number of iteration that first becomes smaller than the initial value if Collatz-function (A006370) is iterated, starting with numbers of form 64n+47. Corresponds to selection of every 16th term from A074474.

The programs for A075481, there is no canonical definition to state claims against.
-/

/-! ## A075481.P5253321821558781464

`A074474(4*record[xor(3, n)])`
-/

namespace A075481.P5253321821558781464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A075481.P5253321821558781464

/-! ## A075481.P3996690382774595303

`A074474(A098502(n+1))`
-/

namespace A075481.P3996690382774595303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (A098502 (n + 1)).toNat

end

end A075481.P3996690382774595303

/-! ## A075481.P14633304652730016295

`A074474(A008574(record[xor(3, n)]))`
-/

namespace A075481.P14633304652730016295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (A008574 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A075481.P14633304652730016295

/-! ## A075481.P13007148993743362716

`A074474(A113770(n+1)+2)`
-/

namespace A075481.P13007148993743362716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (A113770 (n + 1) + 2).toNat

end

end A075481.P13007148993743362716

/-! ## A075481.P13531324096220455243

`A074474(A005843(A004523(A016957(2*n+1))))`
-/

namespace A075481.P13531324096220455243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (A005843 (A004523 (A016957 (2 * n + 1)).toNat).toNat).toNat

end

end A075481.P13531324096220455243

/-! ## A075481.P379795184520059450

`A074473(A157330(n+1)-9)`
-/

namespace A075481.P379795184520059450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (A157330 (n + 1) - 9).toNat

end

end A075481.P379795184520059450

/-! ## A075481.P5745434256461388029

`A074473(xor(23, A157330(n+1)))`
-/

namespace A075481.P5745434256461388029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (Int.xor 23 (A157330 (n + 1))).toNat

end

end A075481.P5745434256461388029

/-! ## A075481.P2092474920368092851

`A074473(Δ[n*A125169(2*n)])`
-/

namespace A075481.P2092474920368092851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A125169 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (f1 (n + 1) - f1 n).toNat

end

end A075481.P2092474920368092851

/-! ## A075481.P9821350344293226693

`A102419(A004771(Δ[(2*n)²]+1))+1`
-/

namespace A075481.P9821350344293226693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102419 (A004771 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat).toNat + 1

end

end A075481.P9821350344293226693

/-! ## A075481.P10481169113522382563

`A074473(A004771(Δ[A007742(n)]))`
-/

namespace A075481.P10481169113522382563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (A004771 (f1 (n + 1) - f1 n).toNat).toNat

end

end A075481.P10481169113522382563

/-! ## A075481.P15165674761105921591

`A074473(A004771(A004770(n+1)))`
-/

namespace A075481.P15165674761105921591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (A004771 (A004770 (n + 1)).toNat).toNat

end

end A075481.P15165674761105921591

/-! ## A075481.P9168278795389630275

`A074473(A004771(A004771(n)-2))`
-/

namespace A075481.P9168278795389630275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (A004771 (A004771 n - 2).toNat).toNat

end

end A075481.P9168278795389630275

/-! ## A075481.P1381436862472413984

`A074473(A004273(8*A004767(n)))`
-/

namespace A075481.P1381436862472413984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (A004273 (8 * A004767 n).toNat).toNat

end

end A075481.P1381436862472413984

/-! ## A075481.P12309690533623746368

`A074473(A004771(xor(2, A004771(n))))`
-/

namespace A075481.P12309690533623746368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (A004771 (Int.xor 2 (A004771 n)).toNat).toNat

end

end A075481.P12309690533623746368

/-!
# A075482: Number of iteration that first becomes smaller than the initial value if Collatz-function (A006370) is iterated, starting with numbers of the form 64n + 59.

The programs for A075482, there is no canonical definition to state claims against.
-/

/-! ## A075482.P11484921926123942334

`A074473(64*n+59)`
-/

namespace A075482.P11484921926123942334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (64 * n + 59)

end

end A075482.P11484921926123942334

/-! ## A075482.P13942161240161584568

`A074474(A125169(n))`
-/

namespace A075482.P13942161240161584568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (A125169 n).toNat

end

end A075482.P13942161240161584568

/-! ## A075482.P2638523820829177199

`A074474(A008598(n+1)-1)`
-/

namespace A075482.P2638523820829177199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (A008598 (n + 1) - 1).toNat

end

end A075482.P2638523820829177199

/-! ## A075482.P17726030780184023305

`A074474(lt[4, A001511(n+1)])`
-/

namespace A075482.P17726030780184023305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A075482.P17726030780184023305

/-! ## A075482.P18042144549732756669

`A102419(64*(n+1)-5)+1`
-/

namespace A075482.P18042144549732756669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102419 (64 * (n + 1) - 5) + 1

end

end A075482.P18042144549732756669

/-!
# A075483: Number of iteration that first becomes smaller than the initial value if Collatz-function (A006370) is iterated, starting with numbers of form 64n+63.

The programs for A075483, there is no canonical definition to state claims against.
-/

/-! ## A075483.P10034539297954530725

`A074473(64*n+63)`
-/

namespace A075483.P10034539297954530725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (64 * n + 63)

end

end A075483.P10034539297954530725

/-! ## A075483.P7478075750692283374

`A074474(A008598(n+1))`
-/

namespace A075483.P7478075750692283374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (A008598 (n + 1)).toNat

end

end A075483.P7478075750692283374

/-! ## A075483.P11021594603826648678

`A074474(A125169(n)+1)`
-/

namespace A075483.P11021594603826648678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (A125169 n + 1).toNat

end

end A075483.P11021594603826648678

/-! ## A075483.P4904597535037015384

`A074474(2*A008574(2*(n+1)))`
-/

namespace A075483.P4904597535037015384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074474 (2 * A008574 (2 * (n + 1))).toNat

end

end A075483.P4904597535037015384

/-! ## A075483.P4313621263319872090

`A060445(32*n+31)+1`
-/

namespace A075483.P4313621263319872090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060445 (32 * n + 31) + 1

end

end A075483.P4313621263319872090

/-! ## A075483.P5886327969909888229

`abs(A060445(A125169(Δ[n²]))-1)+2`
-/

namespace A075483.P5886327969909888229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060445 (A125169 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - 1| + 2

end

end A075483.P5886327969909888229

/-!
# A075484: Length of iteration-list when Collatz-function(A006370) is iterated with initial value 5^n.

The programs for A075484, there is no canonical definition to state claims against.
-/

/-! ## A075484.P293943868556138033

`A008908(5^n)`
-/

namespace A075484.P293943868556138033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (5 ^ n)

end

end A075484.P293943868556138033

/-! ## A075484.P7989282758973191468

`A006577(5^n)+1`
-/

namespace A075484.P7989282758973191468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (5 ^ n) + 1

end

end A075484.P7989282758973191468

/-!
# A075485: Length of iteration list when Collatz-function is iterated with initial value 2^n - 1.

The programs for A075485, there is no canonical definition to state claims against.
-/

/-! ## A075485.P551147225439465233

`A008908(2^(n+1)-1)`
-/

namespace A075485.P551147225439465233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (2 ^ (n + 1) - 1)

end

end A075485.P551147225439465233

/-! ## A075485.P17958264677872318543

`A193688(n+1)+1`
-/

namespace A075485.P17958264677872318543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193688 (n + 1) + 1

end

end A075485.P17958264677872318543

/-! ## A075485.P16616601518419826245

`A075488(n+1)+A062545(n)-1`
-/

namespace A075485.P16616601518419826245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075488 (n + 1) + (A062545 n - 1)

end

end A075485.P16616601518419826245

/-! ## A075485.P4047827237966533212

`A075488(n+1)-A024000(A062545(n))`
-/

namespace A075485.P4047827237966533212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075488 (n + 1) - A024000 (A062545 n).toNat

end

end A075485.P4047827237966533212

/-! ## A075485.P11300419301128208761

`A213214(n+1)+A062545(n)`
-/

namespace A075485.P11300419301128208761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213214 (n + 1) + A062545 n

end

end A075485.P11300419301128208761

/-! ## A075485.P18355065036007351367

`A213214(n+1)+A004442(A103517(n))`
-/

namespace A075485.P18355065036007351367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213214 (n + 1) + A004442 (A103517 n).toNat

end

end A075485.P18355065036007351367

/-!
# A075486: Length of iteration list when Collatz-function is iterated with initial value 2^n + 1.

The programs for A075486, there is no canonical definition to state claims against.
-/

/-! ## A075486.P6829109061658577232

`A008908(2^(n+1)+1)`
-/

namespace A075486.P6829109061658577232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (2 ^ (n + 1) + 1)

end

end A075486.P6829109061658577232

/-! ## A075486.P9295683962593344922

`A179118(n+1)+1`
-/

namespace A075486.P9295683962593344922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179118 (n + 1) + 1

end

end A075486.P9295683962593344922

/-! ## A075486.P14503820489531088562

`A352890(A100484(n+1))+1`
-/

namespace A075486.P14503820489531088562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352890 (A100484 (n + 1)).toNat + 1

end

end A075486.P14503820489531088562

/-! ## A075486.P8531954036945468832

`A352890(2*A000040(n+1))+1`
-/

namespace A075486.P8531954036945468832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352890 (2 * A000040 (n + 1)).toNat + 1

end

end A075486.P8531954036945468832

/-! ## A075486.P14909704655552478041

`A352890(A001749(n+1)/2)+1`
-/

namespace A075486.P14909704655552478041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352890 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat + 1

end

end A075486.P14909704655552478041

/-! ## A075486.P15312263611803084011

`A020725(A179118(n+1))`
-/

namespace A075486.P15312263611803084011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A179118 (n + 1)).toNat

end

end A075486.P15312263611803084011

/-! ## A075486.P7940447127094857052

`A352890(A001748(n+2))`
-/

namespace A075486.P7940447127094857052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352890 (A001748 (n + 2)).toNat

end

end A075486.P7940447127094857052

/-! ## A075486.P8933026818089496358

`A352890(3*A065091(n+1))`
-/

namespace A075486.P8933026818089496358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352890 (3 * A065091 (n + 1)).toNat

end

end A075486.P8933026818089496358

/-! ## A075486.P9395701173146071628

`A352890(3*A000040(n+2))`
-/

namespace A075486.P9395701173146071628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352890 (3 * A000040 (n + 2)).toNat

end

end A075486.P9395701173146071628

/-! ## A075486.P3433484027533148434

`A352890(A169585(n)+A001749(n+1))`
-/

namespace A075486.P3433484027533148434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352890 (A169585 n + A001749 (n + 1)).toNat

end

end A075486.P3433484027533148434

/-!
# A075487: Length of iteration list when Collatz-function is iterated with initial value 1+3^n.

The programs for A075487, there is no canonical definition to state claims against.
-/

/-! ## A075487.P15644791886716521897

`A008908(3^n+1)`
-/

namespace A075487.P15644791886716521897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (3 ^ n + 1)

end

end A075487.P15644791886716521897

/-! ## A075487.P6889102245312512118

`A212653(n)+1`
-/

namespace A075487.P6889102245312512118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212653 n + 1

end

end A075487.P6889102245312512118

/-! ## A075487.P14667812353691171927

`A020725(A212653(n))`
-/

namespace A075487.P14667812353691171927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A212653 n).toNat

end

end A075487.P14667812353691171927

/-! ## A075487.P12232961630838997704

`A008619(2*A212653(n))`
-/

namespace A075487.P12232961630838997704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A212653 n).toNat

end

end A075487.P12232961630838997704

/-! ## A075487.P2779208047898314624

`A000051(n)-(A000079(n)-A212653(n))`
-/

namespace A075487.P2779208047898314624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A000079 n - A212653 n)

end

end A075487.P2779208047898314624

/-! ## A075487.P4005554123853257583

`A000079(n)-(A000225(n)-A212653(n))`
-/

namespace A075487.P4005554123853257583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A000225 n - A212653 n)

end

end A075487.P4005554123853257583

/-! ## A075487.P18283268125323867026

`A008611(3*A212653(n))`
-/

namespace A075487.P18283268125323867026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A212653 n).toNat

end

end A075487.P18283268125323867026

/-! ## A075487.P10282357604866107493

`A008620(3*A212653(n))`
-/

namespace A075487.P10282357604866107493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A212653 n).toNat

end

end A075487.P10282357604866107493

/-! ## A075487.P2857622460940024391

`A034472(n)-(A000244(n)-A212653(n))`
-/

namespace A075487.P2857622460940024391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n - (A000244 n - A212653 n)

end

end A075487.P2857622460940024391

/-! ## A075487.P6064089002773214256

`2-(A007318(∑[n])-A212653(n))`
-/

namespace A075487.P6064089002773214256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - A212653 n)

end

end A075487.P6064089002773214256

/-!
# A075488: Length of iteration list when Collatz-function is iterated with initial value -1+3^n.

The programs for A075488, there is no canonical definition to state claims against.
-/

/-! ## A075488.P7521698157774942354

`A075485(n+1)+1-A062545(n)`
-/

namespace A075488.P7521698157774942354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075485 (n + 1) + (1 - A062545 n)

end

end A075488.P7521698157774942354

/-! ## A075488.P1201171052028255286

`A193688(n+1)+2-A062545(n)`
-/

namespace A075488.P1201171052028255286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193688 (n + 1) + (2 - A062545 n)

end

end A075488.P1201171052028255286

/-! ## A075488.P5959845461791165692

`abs(A075485(n+1)-A051755(n+2))`
-/

namespace A075488.P5959845461791165692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075485 (n + 1) - A051755 (n + 2)|

end

end A075488.P5959845461791165692

/-! ## A075488.P15807615818650353420

`A075485(n+1)-A038608(A103517(n))`
-/

namespace A075488.P15807615818650353420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075485 (n + 1) - A038608 (A103517 n).toNat

end

end A075488.P15807615818650353420

/-! ## A075488.P6529236856391780865

`A213214(n+1)+1`
-/

namespace A075488.P6529236856391780865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213214 (n + 1) + 1

end

end A075488.P6529236856391780865

/-! ## A075488.P14061073219926679003

`A020725(A213214(n+1))`
-/

namespace A075488.P14061073219926679003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A213214 (n + 1)).toNat

end

end A075488.P14061073219926679003

/-!
# A075489: a(n) = prime((n+1)!) - prime(n!).

The programs for A075489, the canonical program `A075489.P8902865245744209710` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075489 has offset 1).

The definition of A075489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075489.P8902865245744209710

`A062439(n+2)-A062439(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075489

/-- `A062439(n+2)-A062439(n+1)` -/
def P8902865245744209710.Spec : Prop :=
  ∀ n, P8902865245744209710.a n = A075489 (n + 1)

theorem P8902865245744209710.correct : P8902865245744209710.Spec := by
  intro n
  simp only [A075489, Nat.add_sub_cancel]

end A075489

/-! ## A075489.P789684053194086257

`Δ[A062439(n+1)]`
-/

namespace A075489.P789684053194086257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075489.P789684053194086257

namespace A075489

/-- `Δ[A062439(n+1)]` -/
def P789684053194086257.Spec : Prop :=
  ∀ n, P789684053194086257.a n = A075489 (n + 1)

theorem P789684053194086257.correct : P789684053194086257.Spec := by
  intro n
  simp only [A075489, Nat.add_sub_cancel, A075489.P789684053194086257.f1, A075489.P789684053194086257.a, A075489.P8902865245744209710.a, SequenceMachineLib.memo_apply]

end A075489

/-! ## A075489.P13246504034224188491

`abs(Δ[A062439(Δ[n²]-n)])`
-/

namespace A075489.P13246504034224188491
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062439 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075489.P13246504034224188491

namespace A075489

/-- `abs(Δ[A062439(Δ[n²]-n)])` -/
def P13246504034224188491.Spec : Prop :=
  ∀ n, P13246504034224188491.a n = A075489 (n + 1)

end A075489

/-! ## A075489.P3401914273199919309

`Δ[record[A062439(A002262(n))]]`
-/

namespace A075489.P3401914273199919309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062439 (A002262 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075489.P3401914273199919309

namespace A075489

/-- `Δ[record[A062439(A002262(n))]]` -/
def P3401914273199919309.Spec : Prop :=
  ∀ n, P3401914273199919309.a n = A075489 (n + 1)

end A075489

/-! ## A075489.P3024768670834248866

`Δ[record[A062439(A008616(n))]]`
-/

namespace A075489.P3024768670834248866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062439 (A008616 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075489.P3024768670834248866

namespace A075489

/-- `Δ[record[A062439(A008616(n))]]` -/
def P3024768670834248866.Spec : Prop :=
  ∀ n, P3024768670834248866.a n = A075489 (n + 1)

end A075489

/-!
# A075490: a(n) = Sum_{j=1..n} phi(n)^j.

The programs for A075490, there is no canonical definition to state claims against.
-/

/-! ## A075490.P4066665645304854292

`A183209(A299640(n+1))`
-/

namespace A075490.P4066665645304854292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183209 (A299640 (n + 1)).toNat

end

end A075490.P4066665645304854292

/-!
# A075491: Sum of digits of n minus number of divisors of n.

The programs for A075491, the canonical program `A075491.P11550484863816011754` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075491 has offset 1).

The definition of A075491 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A075491.P11550484863816011754

`A007953(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075491

/-- `A007953(n+1)-A000005(n+1)` -/
def P11550484863816011754.Spec : Prop :=
  ∀ n, P11550484863816011754.a n = A075491 (n + 1)

theorem P11550484863816011754.correct : P11550484863816011754.Spec := by
  intro n
  simp only [A075491, Nat.add_sub_cancel]

end A075491

/-! ## A075491.P17523818441092777785

`∑{digits}[n+1, #]-∏{e}[n+1, #+1]`
-/

namespace A075491.P17523818441092777785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A075491.P17523818441092777785

namespace A075491

/-- `∑{digits}[n+1, #]-∏{e}[n+1, #+1]` -/
def P17523818441092777785.Spec : Prop :=
  ∀ n, P17523818441092777785.a n = A075491 (n + 1)

end A075491

/-! ## A075491.P10589793920263315295

`∑{digits}[n+1, #]-∑{d}[n+1, gcd(n, #)]`
-/

namespace A075491.P10589793920263315295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d : ℕ) : ℤ)

end

end A075491.P10589793920263315295

namespace A075491

/-- `∑{digits}[n+1, #]-∑{d}[n+1, gcd(n, #)]` -/
def P10589793920263315295.Spec : Prop :=
  ∀ n, P10589793920263315295.a n = A075491 (n + 1)

end A075491

/-! ## A075491.P170705594149259471

`∑{digits}[n+1, #]-∑{d}[n+1, ceil(acot(#))]`
-/

namespace A075491.P170705594149259471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f2 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉

end

end A075491.P170705594149259471

namespace A075491

/-- `∑{digits}[n+1, #]-∑{d}[n+1, ceil(acot(#))]` -/
def P170705594149259471.Spec : Prop :=
  ∀ n, P170705594149259471.a n = A075491 (n + 1)

end A075491

/-! ## A075491.P10488622984046414605

`∑{digits}[n+1, #]-∑{d}[n+1, ceil(1/#)]`
-/

namespace A075491.P10488622984046414605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉

end

end A075491.P10488622984046414605

namespace A075491

/-- `∑{digits}[n+1, #]-∑{d}[n+1, ceil(1/#)]` -/
def P10488622984046414605.Spec : Prop :=
  ∀ n, P10488622984046414605.a n = A075491 (n + 1)

end A075491

/-! ## A075491.P17504628606958647813

`∑{digits}[n+1, #]-2^∑{e}[n+1, log2(#+1)]`
-/

namespace A075491.P17504628606958647813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℝ) - (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f2 n), Real.logb 2 (Nat.factorization (f2 n) p + 1 : ℝ))

end

end A075491.P17504628606958647813

namespace A075491

/-- `∑{digits}[n+1, #]-2^∑{e}[n+1, log2(#+1)]` -/
def P17504628606958647813.Spec : Prop :=
  ∀ n, P17504628606958647813.a n = (A075491 (n + 1) : ℝ)

end A075491

/-! ## A075491.P12386224064323175315

`∑{digits}[n+1, #]-(∑{d}[n+1, C(2, #)!]-1)`
-/

namespace A075491.P12386224064323175315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (((∑ d ∈ Nat.divisors (f2 n), Nat.factorial (Nat.choose 2 d) : ℕ) : ℤ) - 1)

end

end A075491.P12386224064323175315

namespace A075491

/-- `∑{digits}[n+1, #]-(∑{d}[n+1, C(2, #)!]-1)` -/
def P12386224064323175315.Spec : Prop :=
  ∀ n, P12386224064323175315.a n = A075491 (n + 1)

end A075491

/-! ## A075491.P4752588402534502751

`∑{digits}[n+1, #]-(∑{d}[n+1, n²%#]+1)`
-/

namespace A075491.P4752588402534502751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), n ^ 2 % d + 1 : ℕ) : ℤ)

end

end A075491.P4752588402534502751

namespace A075491

/-- `∑{digits}[n+1, #]-(∑{d}[n+1, n²%#]+1)` -/
def P4752588402534502751.Spec : Prop :=
  ∀ n, P4752588402534502751.a n = A075491 (n + 1)

end A075491

/-! ## A075491.P10033141418461668893

`∑{digits}[n+1, #]-∏{p}[n+1, val(n+1, #)+1]`
-/

namespace A075491.P10033141418461668893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (SequenceMachineLib.valuation (n + 1) p + 1) : ℕ) : ℤ)

end

end A075491.P10033141418461668893

namespace A075491

/-- `∑{digits}[n+1, #]-∏{p}[n+1, val(n+1, #)+1]` -/
def P10033141418461668893.Spec : Prop :=
  ∀ n, P10033141418461668893.a n = A075491 (n + 1)

end A075491

/-! ## A075491.P17139710263603596863

`∑{digits}[n+1, #]-Δ[A006218(n)]`
-/

namespace A075491.P17139710263603596863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A075491.P17139710263603596863

namespace A075491

/-- `∑{digits}[n+1, #]-Δ[A006218(n)]` -/
def P17139710263603596863.Spec : Prop :=
  ∀ n, P17139710263603596863.a n = A075491 (n + 1)

end A075491

/-! ## A075491.P10405021590107515847

`∑{digits}[n+1, #]-(A032741(n+1)+1)`
-/

namespace A075491.P10405021590107515847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (A032741 (n + 1) + 1)

end

end A075491.P10405021590107515847

namespace A075491

/-- `∑{digits}[n+1, #]-(A032741(n+1)+1)` -/
def P10405021590107515847.Spec : Prop :=
  ∀ n, P10405021590107515847.a n = A075491 (n + 1)

end A075491

/-! ## A075491.P2385990847572708676

`∑{digits}[n+1, #]-∑{d}[n+1, A020639(2*#)]/2`
-/

namespace A075491.P2385990847572708676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ) - ((∑ d ∈ Nat.divisors (f2 n), A020639 (2 * d) : ℤ) : ℚ) / 2

end

end A075491.P2385990847572708676

namespace A075491

/-- `∑{digits}[n+1, #]-∑{d}[n+1, A020639(2*#)]/2` -/
def P2385990847572708676.Spec : Prop :=
  ∀ n, P2385990847572708676.a n = (A075491 (n + 1) : ℚ)

end A075491

/-! ## A075491.P11104812383258857975

`∑{digits}[n+1, #]-(∑{d}[n+1, 1-#]+A000203(n+1))`
-/

namespace A075491.P11104812383258857975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (∑ d ∈ Nat.divisors (f2 n), (1 - (d : ℤ)) + A000203 (n + 1))

end

end A075491.P11104812383258857975

namespace A075491

/-- `∑{digits}[n+1, #]-(∑{d}[n+1, 1-#]+A000203(n+1))` -/
def P11104812383258857975.Spec : Prop :=
  ∀ n, P11104812383258857975.a n = A075491 (n + 1)

end A075491

/-! ## A075491.P18216266145680816594

`Δ[A037123(n)-A006218(n)]`
-/

namespace A075491.P18216266145680816594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n - A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075491.P18216266145680816594

namespace A075491

/-- `Δ[A037123(n)-A006218(n)]` -/
def P18216266145680816594.Spec : Prop :=
  ∀ n, P18216266145680816594.a n = A075491 (n + 1)

end A075491

/-! ## A075491.P7232700768858807734

`Δ[A037123(n)-A054519(n)]`
-/

namespace A075491.P7232700768858807734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n - A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075491.P7232700768858807734

namespace A075491

/-- `Δ[A037123(n)-A054519(n)]` -/
def P7232700768858807734.Spec : Prop :=
  ∀ n, P7232700768858807734.a n = A075491 (n + 1)

end A075491

/-! ## A075491.P10646569801483249293

`A007953(n+1)-Δ[A006218(n)]`
-/

namespace A075491.P10646569801483249293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - (f1 (n + 1) - f1 n)

end

end A075491.P10646569801483249293

namespace A075491

/-- `A007953(n+1)-Δ[A006218(n)]` -/
def P10646569801483249293.Spec : Prop :=
  ∀ n, P10646569801483249293.a n = A075491 (n + 1)

end A075491

/-! ## A075491.P7334311429624382752

`Δ[A037123(n)]-A000005(n+1)`
-/

namespace A075491.P7334311429624382752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000005 (n + 1)

end

end A075491.P7334311429624382752

namespace A075491

/-- `Δ[A037123(n)]-A000005(n+1)` -/
def P7334311429624382752.Spec : Prop :=
  ∀ n, P7334311429624382752.a n = A075491 (n + 1)

end A075491

/-! ## A075491.P14974837481616286411

`A007953(n+1)-(A032741(n+1)+1)`
-/

namespace A075491.P14974837481616286411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - (A032741 (n + 1) + 1)

end

end A075491.P14974837481616286411

namespace A075491

/-- `A007953(n+1)-(A032741(n+1)+1)` -/
def P14974837481616286411.Spec : Prop :=
  ∀ n, P14974837481616286411.a n = A075491 (n + 1)

end A075491

/-! ## A075491.P3244200132212340418

`A007953(n+1)-A320111(2*(n+1))`
-/

namespace A075491.P3244200132212340418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - A320111 (2 * (n + 1))

end

end A075491.P3244200132212340418

namespace A075491

/-- `A007953(n+1)-A320111(2*(n+1))` -/
def P3244200132212340418.Spec : Prop :=
  ∀ n, P3244200132212340418.a n = A075491 (n + 1)

end A075491

/-! ## A075491.P6758526392098173015

`A007953(n+1)-A141667(n+1)/A000041(n+1)`
-/

namespace A075491.P6758526392098173015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 (n + 1) : ℚ) - (A141667 (n + 1) : ℚ) / (A000041 (n + 1) : ℚ)

end

end A075491.P6758526392098173015

namespace A075491

/-- `A007953(n+1)-A141667(n+1)/A000041(n+1)` -/
def P6758526392098173015.Spec : Prop :=
  ∀ n, P6758526392098173015.a n = (A075491 (n + 1) : ℚ)

end A075491

/-!
# A075492: Numbers k such that sum of digits of k < number of divisors of k.

The programs for A075492, the canonical program `A075492.P12090951350268640498` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075492 has offset 1).

The definition of A075492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075492.P17015500472837063328

`lt[A007953(n+1), A000005(n+1)]+1`
-/

namespace A075492.P17015500472837063328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A075492.P17015500472837063328

namespace A075492

/-- `lt[A007953(n+1), A000005(n+1)]+1` -/
def P17015500472837063328.Spec : Prop :=
  ∀ n, (P17015500472837063328.a n : ℤ) = A075492 (n + 1)

end A075492

/-! ## A075492.P17608388591564457907

`A181569(lt[A007953(n+1), ∏{e}[n+1, #+1]])`
-/

namespace A075492.P17608388591564457907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A075492.P17608388591564457907

namespace A075492

/-- `A181569(lt[A007953(n+1), ∏{e}[n+1, #+1]])` -/
def P17608388591564457907.Spec : Prop :=
  ∀ n, P17608388591564457907.a n = A075492 (n + 1)

end A075492

/-! ## A075492.P11964171316652566615

`A020725(lt[A007953(n+1), A000005(n+1)])`
-/

namespace A075492.P11964171316652566615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A075492.P11964171316652566615

namespace A075492

/-- `A020725(lt[A007953(n+1), A000005(n+1)])` -/
def P11964171316652566615.Spec : Prop :=
  ∀ n, P11964171316652566615.a n = A075492 (n + 1)

end A075492

/-! ## A075492.P11035129323905346975

`lt[A004277(A169805(n)), A145154(n)]`
-/

namespace A075492.P11035129323905346975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A169805 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075492.P11035129323905346975

namespace A075492

/-- `lt[A004277(A169805(n)), A145154(n)]` -/
def P11035129323905346975.Spec : Prop :=
  ∀ n, (P11035129323905346975.a n : ℤ) = A075492 (n + 1)

end A075492

/-! ## A075492.P12982489144972831270

`lt[A007953(n+1), A183063(2*(n+1))]+1`
-/

namespace A075492.P12982489144972831270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A075492.P12982489144972831270

namespace A075492

/-- `lt[A007953(n+1), A183063(2*(n+1))]+1` -/
def P12982489144972831270.Spec : Prop :=
  ∀ n, (P12982489144972831270.a n : ℤ) = A075492 (n + 1)

end A075492

/-! ## A075492.P10522911994269692720

`lt[A007953(n), A183063(A004277(n))]`
-/

namespace A075492.P10522911994269692720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075492.P10522911994269692720

namespace A075492

/-- `lt[A007953(n), A183063(A004277(n))]` -/
def P10522911994269692720.Spec : Prop :=
  ∀ n, (P10522911994269692720.a n : ℤ) = A075492 (n + 1)

end A075492

/-! ## A075492.P12090951350268640498

`lt[A007953(n), A277692(2*n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A075492

/-- `lt[A007953(n), A277692(2*n+1)]` -/
def P12090951350268640498.Spec : Prop :=
  ∀ n, (P12090951350268640498.a n : ℤ) = A075492 (n + 1)

theorem P12090951350268640498.correct : P12090951350268640498.Spec := by
  intro n
  simp only [A075492, Nat.add_sub_cancel]

end A075492

/-! ## A075492.P2795630532932775576

`lt[A118881(n), A277692(2*n+1)²]`
-/

namespace A075492.P2795630532932775576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075492.P2795630532932775576

namespace A075492

/-- `lt[A118881(n), A277692(2*n+1)²]` -/
def P2795630532932775576.Spec : Prop :=
  ∀ n, (P2795630532932775576.a n : ℤ) = A075492 (n + 1)

end A075492

/-! ## A075492.P9230826384736221429

`lt[log2(A329562(n)), A277692(2*n+1)]`
-/

namespace A075492.P9230826384736221429
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A075492.P9230826384736221429

namespace A075492

/-- `lt[log2(A329562(n)), A277692(2*n+1)]` -/
def P9230826384736221429.Spec : Prop :=
  ∀ n, (P9230826384736221429.a n : ℤ) = A075492 (n + 1)

end A075492

/-! ## A075492.P14055419541259442879

`lt[A062028(n)-n, A277692(2*n+1)]`
-/

namespace A075492.P14055419541259442879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075492.P14055419541259442879

namespace A075492

/-- `lt[A062028(n)-n, A277692(2*n+1)]` -/
def P14055419541259442879.Spec : Prop :=
  ∀ n, (P14055419541259442879.a n : ℤ) = A075492 (n + 1)

theorem P14055419541259442879.correct : P14055419541259442879.Spec := by
  intro n
  simp only [A075492, Nat.add_sub_cancel, A075492.P14055419541259442879.f1, A075492.P14055419541259442879.f2, A075492.P14055419541259442879.a, A075492.P12090951350268640498.f1, A075492.P12090951350268640498.f2, A075492.P12090951350268640498.a, A007953, A007953.P3472751987379697826.a, A062028, A062028.P8420805724104474199.a, A277692, A277692.P7540958945063117141.a, A026741, A026741.P7397200255647832146.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A054899, A054899.P10770181254942084517.a, A296066, A296066.P16015597603883370750.a, A000217, A000217.P10269402890581615239.a, A296065, A296065.P9151723861670224574.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A075492

/-!
# A075493: Numbers k such that (sum of digits of k) > (number of divisors of k).

The programs for A075493, the canonical program `A075493.P5582353736651150310` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075493 has offset 1).

The definition of A075493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075493.P5582353736651150310

`lt[0, A075491(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A075493

/-- `lt[0, A075491(n+1)]+1` -/
def P5582353736651150310.Spec : Prop :=
  ∀ n, (P5582353736651150310.a n : ℤ) = A075493 (n + 1)

theorem P5582353736651150310.correct : P5582353736651150310.Spec := by
  intro n
  simp only [A075493, Nat.add_sub_cancel]

end A075493

/-! ## A075493.P7529568820614077339

`lt[∏{e}[n, #+1], A007953(n)]`
-/

namespace A075493.P7529568820614077339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A075493.P7529568820614077339

namespace A075493

/-- `lt[∏{e}[n, #+1], A007953(n)]` -/
def P7529568820614077339.Spec : Prop :=
  ∀ n, (P7529568820614077339.a n : ℤ) = A075493 (n + 1)

end A075493

/-! ## A075493.P9670341367582723104

`lt[A000005(n+1), ∑{digits}[n+1, #]]+1`
-/

namespace A075493.P9670341367582723104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A075493.P9670341367582723104

namespace A075493

/-- `lt[A000005(n+1), ∑{digits}[n+1, #]]+1` -/
def P9670341367582723104.Spec : Prop :=
  ∀ n, (P9670341367582723104.a n : ℤ) = A075493 (n + 1)

end A075493

/-! ## A075493.P4704776841409843128

`lt[0, A075491(A028310(n))]`
-/

namespace A075493.P4704776841409843128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075491 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A075493.P4704776841409843128

namespace A075493

/-- `lt[0, A075491(A028310(n))]` -/
def P4704776841409843128.Spec : Prop :=
  ∀ n, (P4704776841409843128.a n : ℤ) = A075493 (n + 1)

end A075493

/-! ## A075493.P3312143415542384010

`lt[A032741(n)+1, A007953(n)]`
-/

namespace A075493.P3312143415542384010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075493.P3312143415542384010

namespace A075493

/-- `lt[A032741(n)+1, A007953(n)]` -/
def P3312143415542384010.Spec : Prop :=
  ∀ n, (P3312143415542384010.a n : ℤ) = A075493 (n + 1)

end A075493

/-! ## A075493.P2149666308310412872

`lt[A145154(n), 2*A169805(n)]`
-/

namespace A075493.P2149666308310412872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075493.P2149666308310412872

namespace A075493

/-- `lt[A145154(n), 2*A169805(n)]` -/
def P2149666308310412872.Spec : Prop :=
  ∀ n, (P2149666308310412872.a n : ℤ) = A075493 (n + 1)

end A075493

/-! ## A075493.P10362784494118965380

`lt[A000005(A000007(n)+n), ∑{digits}[n, #]]`
-/

namespace A075493.P10362784494118965380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000007 n + (n : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A075493.P10362784494118965380

namespace A075493

/-- `lt[A000005(A000007(n)+n), ∑{digits}[n, #]]` -/
def P10362784494118965380.Spec : Prop :=
  ∀ n, (P10362784494118965380.a n : ℤ) = A075493 (n + 1)

end A075493

/-! ## A075493.P1600710011902127479

`lt[A000005(abs(1-n)+1), A007953(n)]`
-/

namespace A075493.P1600710011902127479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075493.P1600710011902127479

namespace A075493

/-- `lt[A000005(abs(1-n)+1), A007953(n)]` -/
def P1600710011902127479.Spec : Prop :=
  ∀ n, (P1600710011902127479.a n : ℤ) = A075493 (n + 1)

end A075493

/-! ## A075493.P10135203812611111367

`lt[A145154(n), A004277(A169805(n))]`
-/

namespace A075493.P10135203812611111367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075493.P10135203812611111367

namespace A075493

/-- `lt[A145154(n), A004277(A169805(n))]` -/
def P10135203812611111367.Spec : Prop :=
  ∀ n, (P10135203812611111367.a n : ℤ) = A075493 (n + 1)

end A075493

/-! ## A075493.P7691431264756307311

`lt[A277692(2*n+1), A007953(n)]`
-/

namespace A075493.P7691431264756307311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075493.P7691431264756307311

namespace A075493

/-- `lt[A277692(2*n+1), A007953(n)]` -/
def P7691431264756307311.Spec : Prop :=
  ∀ n, (P7691431264756307311.a n : ℤ) = A075493 (n + 1)

end A075493

/-! ## A075493.P15154845284403200299

`lt[A183063(A004277(n)), A007953(n)]`
-/

namespace A075493.P15154845284403200299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075493.P15154845284403200299

namespace A075493

/-- `lt[A183063(A004277(n)), A007953(n)]` -/
def P15154845284403200299.Spec : Prop :=
  ∀ n, (P15154845284403200299.a n : ℤ) = A075493 (n + 1)

end A075493

/-! ## A075493.P15793500324981162931

`lt[A000005(A233583(n+1)), ∑{digits}[n, #]]`
-/

namespace A075493.P15793500324981162931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A233583 (n + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A075493.P15793500324981162931

namespace A075493

/-- `lt[A000005(A233583(n+1)), ∑{digits}[n, #]]` -/
def P15793500324981162931.Spec : Prop :=
  ∀ n, (P15793500324981162931.a n : ℤ) = A075493 (n + 1)

end A075493

/-!
# A075494: Squares whose sum of digits exceeds the number of divisors.

The programs for A075494, there is no canonical definition to state claims against.
-/

/-! ## A075494.P3048607768694639559

`∩[A075493(n+1), n²]`
-/

namespace A075494.P3048607768694639559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075493 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A075494.P3048607768694639559

/-! ## A075494.P2979235189054717935

`∩[A000290(n), A075493(n+1)]`
-/

namespace A075494.P2979235189054717935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A075494.P2979235189054717935

/-! ## A075494.P4137545810750964326

`A036042(A140410(n+2))²`
-/

namespace A075494.P4137545810750964326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A140410 (n + 2)).toNat ^ 2

end

end A075494.P4137545810750964326

/-! ## A075494.P16631174490209762211

`A036042(A140410(n+2))^ratio[A000079(n)]`
-/

namespace A075494.P16631174490209762211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036042 (A140410 (n + 2)).toNat : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)

end

end A075494.P16631174490209762211

/-! ## A075494.P11979965365646583741

`A036042(A140410(n+2))^A076303(n+1)`
-/

namespace A075494.P11979965365646583741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036042 (A140410 (n + 2)).toNat : ℚ) ^ (A076303 (n + 1) : ℤ)

end

end A075494.P11979965365646583741

/-!
# A075495: Convolution of A075298 with A056594.

The programs for A075495, the canonical program `A075495.P7130730270082164988` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075495 has offset 0).

The definition of A075495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 748 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075495.P7130730270082164988

`A075298(n)-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A075495

/-- `A075298(n)-a(n-2)` -/
def P7130730270082164988.Spec : Prop :=
  ∀ n, P7130730270082164988.a n = A075495 n

theorem P7130730270082164988.correct : P7130730270082164988.Spec := by
  intro n
  simp only [A075495]

end A075495

/-!
# A075496: a(1)=1, a(n) = Sum_{k=1..n-1} max(a(k), a(n-k)).

The programs for A075496, the canonical program `A075496.P2633307829269488911` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075496 has offset 1).

The definition of A075496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075496.P2633307829269488911

`3*a(n-1)-a(floor((n-1)/2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075496

/-- `3*a(n-1)-a(floor((n-1)/2))` -/
def P2633307829269488911.Spec : Prop :=
  ∀ n, P2633307829269488911.a n = A075496 (n + 1)

theorem P2633307829269488911.correct : P2633307829269488911.Spec := by
  intro n
  simp only [A075496, Nat.add_sub_cancel]

end A075496

/-! ## A075496.P11659392420495266766

`A064775(A190214(n))`
-/

namespace A075496.P11659392420495266766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064775 (A190214 n).toNat

end

end A075496.P11659392420495266766

namespace A075496

/-- `A064775(A190214(n))` -/
def P11659392420495266766.Spec : Prop :=
  ∀ n, P11659392420495266766.a n = A075496 (n + 1)

end A075496

/-! ## A075496.P10440388691217533658

`A008617(2*A296003(n))`
-/

namespace A075496.P10440388691217533658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (2 * A296003 n).toNat

end

end A075496.P10440388691217533658

namespace A075496

/-- `A008617(2*A296003(n))` -/
def P10440388691217533658.Spec : Prop :=
  ∀ n, P10440388691217533658.a n = A075496 (n + 1)

end A075496

/-! ## A075496.P17138573687541531788

`A137588(A292232(n+6)+3)`
-/

namespace A075496.P17138573687541531788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A292232 (n + 6) + 3).toNat

end

end A075496.P17138573687541531788

namespace A075496

/-- `A137588(A292232(n+6)+3)` -/
def P17138573687541531788.Spec : Prop :=
  ∀ n, P17138573687541531788.a n = A075496 (n + 1)

end A075496

/-!
# A075497: Stirling2 triangle with scaled diagonals (powers of 2).

The programs for A075497, there is no canonical definition to state claims against.
-/

/-! ## A075497.P10108843793783538342

`A008277(n+1)*A130321(n)`
-/

namespace A075497.P10108843793783538342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A130321 n

end

end A075497.P10108843793783538342

/-! ## A075497.P8911243235615744186

`A000079(A025581(n))*A008277(n+1)`
-/

namespace A075497.P8911243235615744186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat * A008277 (n + 1)

end

end A075497.P8911243235615744186

/-! ## A075497.P4853282424210519498

`A075498(n+1)/A100852(n)*A100851(n)`
-/

namespace A075497.P4853282424210519498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075498 (n + 1) : ℚ) / (A100852 n : ℚ) * (A100851 n : ℚ)

end

end A075497.P4853282424210519498

/-! ## A075497.P14378121745165061701

`A075499(n+1)/A130321(n)`
-/

namespace A075497.P14378121745165061701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075499 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A075497.P14378121745165061701

/-! ## A075497.P16254890970986142520

`sqrt(A008277(n+1))*sqrt(A075499(n+1))`
-/

namespace A075497.P16254890970986142520
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008277 (n + 1) : ℝ) * Real.sqrt (A075499 (n + 1) : ℝ)

end

end A075497.P16254890970986142520

/-! ## A075497.P3375969242179803130

`A075501(n+1)/A140303(n)`
-/

namespace A075497.P3375969242179803130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075501 (n + 1) : ℚ) / (A140303 n : ℚ)

end

end A075497.P3375969242179803130

/-! ## A075497.P12714538636315937946

`gcd(A075499(n+1), A075501(n+1))`
-/

namespace A075497.P12714538636315937946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075499 (n + 1)) (A075501 (n + 1))

end

end A075497.P12714538636315937946

/-! ## A075497.P3392308690126750257

`A075503(n+1)/A262616(n)`
-/

namespace A075497.P3392308690126750257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075503 (n + 1) : ℚ) / (A262616 n : ℚ)

end

end A075497.P3392308690126750257

/-! ## A075497.P644881207915583115

`A075503(n+1)/A130321(n)²`
-/

namespace A075497.P644881207915583115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075503 (n + 1) : ℚ) / (A130321 n ^ 2 : ℚ)

end

end A075497.P644881207915583115

/-! ## A075497.P5826045444704581191

`A075499(n+1)/A075503(n+1)*A075499(n+1)`
-/

namespace A075497.P5826045444704581191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075499 (n + 1) : ℚ) / (A075503 (n + 1) : ℚ) * (A075499 (n + 1) : ℚ)

end

end A075497.P5826045444704581191

/-! ## A075497.P18056337130616559517

`gcd(A075503(n+1), A075505(n+1))`
-/

namespace A075497.P18056337130616559517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075503 (n + 1)) (A075505 (n + 1))

end

end A075497.P18056337130616559517

/-! ## A075497.P15582973653433968028

`A187075(n+1)/A186695(n+1)*A039755(n)`
-/

namespace A075497.P15582973653433968028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187075 (n + 1) : ℚ) / (A186695 (n + 1) : ℚ) * (A039755 n : ℚ)

end

end A075497.P15582973653433968028

/-! ## A075497.P15998911569585320458

`A008277(n+1)/A080248(n)*A071951(n+1)`
-/

namespace A075497.P15998911569585320458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A080248 n : ℚ) * (A071951 (n + 1) : ℚ)

end

end A075497.P15998911569585320458

/-! ## A075497.P7616359150045407536

`sqrt(A008277(n+1)*A075499(n+1))`
-/

namespace A075497.P7616359150045407536
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008277 (n + 1) * A075499 (n + 1) : ℝ)

end

end A075497.P7616359150045407536

/-! ## A075497.P7876313214357962420

`A075499(n+1)²/A075503(n+1)`
-/

namespace A075497.P7876313214357962420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075499 (n + 1) ^ 2 : ℚ) / (A075503 (n + 1) : ℚ)

end

end A075497.P7876313214357962420

/-!
# A075498: Stirling2 triangle with scaled diagonals (powers of 3).

The programs for A075498, there is no canonical definition to state claims against.
-/

/-! ## A075498.P17920571167689544747

`A008277(n+1)*A140303(n)`
-/

namespace A075498.P17920571167689544747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A140303 n

end

end A075498.P17920571167689544747

/-! ## A075498.P3362735109978181996

`A000244(A025581(n))*A008277(n+1)`
-/

namespace A075498.P3362735109978181996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A025581 n).toNat * A008277 (n + 1)

end

end A075498.P3362735109978181996

/-! ## A075498.P8989814780776749370

`A008277(n+1)*A166552(A099375(n))`
-/

namespace A075498.P8989814780776749370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A166552 (A099375 n).toNat

end

end A075498.P8989814780776749370

/-! ## A075498.P685330988020151150

`A008277(n+1)/A007318(n)*A027465(n)`
-/

namespace A075498.P685330988020151150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A007318 n : ℚ) * (A027465 n : ℚ)

end

end A075498.P685330988020151150

/-! ## A075498.P14757682566314087897

`A075501(n+1)/A130321(n)`
-/

namespace A075498.P14757682566314087897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075501 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A075498.P14757682566314087897

/-! ## A075498.P5551520281751013115

`A075504(n+1)/A140303(n)`
-/

namespace A075498.P5551520281751013115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075504 (n + 1) : ℚ) / (A140303 n : ℚ)

end

end A075498.P5551520281751013115

/-! ## A075498.P2576479552882556073

`gcd(A075501(n+1), A075504(n+1))`
-/

namespace A075498.P2576479552882556073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075501 (n + 1)) (A075504 (n + 1))

end

end A075498.P2576479552882556073

/-! ## A075498.P17631139591416775038

`A008277(n+1)/A008275(n+1)*A051141(n+1)`
-/

namespace A075498.P17631139591416775038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A008275 (n + 1) : ℚ) * (A051141 (n + 1) : ℚ)

end

end A075498.P17631139591416775038

/-! ## A075498.P3933786775576035957

`A008277(n+1)*A165824(A130321(n))`
-/

namespace A075498.P3933786775576035957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A165824 (A130321 n).toNat

end

end A075498.P3933786775576035957

/-! ## A075498.P12403096085069476123

`A075497(n+1)/A130321(n)*A165824(A130321(n))`
-/

namespace A075498.P12403096085069476123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075497 (n + 1) : ℚ) / (A130321 n : ℚ) * (A165824 (A130321 n).toNat : ℚ)

end

end A075498.P12403096085069476123

/-!
# A075499: Stirling2 triangle with scaled diagonals (powers of 4).

The programs for A075499, there is no canonical definition to state claims against.
-/

/-! ## A075499.P16945175903279879256

`A075497(n+1)*A130321(n)`
-/

namespace A075499.P16945175903279879256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075497 (n + 1) * A130321 n

end

end A075499.P16945175903279879256

/-! ## A075499.P10452796200808199467

`A008277(n+1)*A262616(n)`
-/

namespace A075499.P10452796200808199467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A262616 n

end

end A075499.P10452796200808199467

/-! ## A075499.P12680921509635275453

`A130321(n)²*A008277(n+1)`
-/

namespace A075499.P12680921509635275453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A008277 (n + 1)

end

end A075499.P12680921509635275453

/-! ## A075499.P4752615883717980960

`A000079(A025581(n))²*A008277(n+1)`
-/

namespace A075499.P4752615883717980960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat ^ 2 * A008277 (n + 1)

end

end A075499.P4752615883717980960

/-! ## A075499.P5288191746952523156

`A000079(2*A025581(n))*A008277(n+1)`
-/

namespace A075499.P5288191746952523156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A025581 n).toNat * A008277 (n + 1)

end

end A075499.P5288191746952523156

/-! ## A075499.P13996175796998518651

`A075497(n+1)/A008277(n+1)*A075497(n+1)`
-/

namespace A075499.P13996175796998518651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075497 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ) * (A075497 (n + 1) : ℚ)

end

end A075499.P13996175796998518651

/-! ## A075499.P3925884774153383655

`A075503(n+1)/A130321(n)`
-/

namespace A075499.P3925884774153383655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075503 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A075499.P3925884774153383655

/-! ## A075499.P10548945787349455121

`A075501(n+1)/A075504(n+1)*A075501(n+1)`
-/

namespace A075499.P10548945787349455121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075501 (n + 1) : ℚ) / (A075504 (n + 1) : ℚ) * (A075501 (n + 1) : ℚ)

end

end A075499.P10548945787349455121

/-! ## A075499.P7728092000798625530

`(A075497(n+1)/A075498(n+1))²*A075504(n+1)`
-/

namespace A075499.P7728092000798625530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A075497 (n + 1) : ℚ) / (A075498 (n + 1) : ℚ)) ^ 2 * (A075504 (n + 1) : ℚ)

end

end A075499.P7728092000798625530

/-! ## A075499.P18403801382274075797

`A099394(n)/A233543(n)`
-/

namespace A075499.P18403801382274075797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099394 n : ℚ) / (A233543 n : ℚ)

end

end A075499.P18403801382274075797

/-! ## A075499.P1472265815107426626

`A008277(n+1)/A028246(n+1)*A099394(n)`
-/

namespace A075499.P1472265815107426626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A028246 (n + 1) : ℚ) * (A099394 n : ℚ)

end

end A075499.P1472265815107426626

/-! ## A075499.P4892685386358035321

`A075497(n+1)²/A008277(n+1)`
-/

namespace A075499.P4892685386358035321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075497 (n + 1) ^ 2 : ℚ) / (A008277 (n + 1) : ℚ)

end

end A075499.P4892685386358035321

/-! ## A075499.P9753450179741530348

`A075497(n+1)²/gcd(A075497(n+1), A075502(n+1))`
-/

namespace A075499.P9753450179741530348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075497 (n + 1) ^ 2 : ℚ) / (Int.gcd (A075497 (n + 1)) (A075502 (n + 1)) : ℚ)

end

end A075499.P9753450179741530348

/-! ## A075499.P15838209705122979552

`A075501(n+1)²/A075504(n+1)`
-/

namespace A075499.P15838209705122979552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075501 (n + 1) ^ 2 : ℚ) / (A075504 (n + 1) : ℚ)

end

end A075499.P15838209705122979552

