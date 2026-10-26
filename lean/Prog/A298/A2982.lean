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
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
# A298201: Number of Eulerian orientations of the torus grid graph C_4 X C_n.

The programs for A298201, there is no canonical definition to state claims against.
-/

/-! ## A298201.P4668300742742614250

`A298119(A141214(n+1))`
-/

namespace A298201.P4668300742742614250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298119 (A141214 (n + 1)).toNat

end

end A298201.P4668300742742614250

/-! ## A298201.P4935774154160679847

`A298119(A374004(n+1))`
-/

namespace A298201.P4935774154160679847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298119 (A374004 (n + 1)).toNat

end

end A298201.P4935774154160679847

/-! ## A298201.P3251472739288818336

`A298119(A055998(n+2))`
-/

namespace A298201.P3251472739288818336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298119 (A055998 (n + 2)).toNat

end

end A298201.P3251472739288818336

/-! ## A298201.P17471778901403757175

`A298119(A155212(n)+5)`
-/

namespace A298201.P17471778901403757175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298119 (A155212 n + 5).toNat

end

end A298201.P17471778901403757175

/-! ## A298201.P17326764095380320633

`A298119(A056000(n)+7)`
-/

namespace A298201.P17326764095380320633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298119 (A056000 n + 7).toNat

end

end A298201.P17326764095380320633

/-!
# A298204: Number of unlabeled rooted trees with n nodes in which all outdegrees are either 0, 1, or 3.

The programs for A298204, there is no canonical definition to state claims against.
-/

/-! ## A298204.P1059788141639102005

`A226762(A322429(n+1)+A226729(n))`
-/

namespace A298204.P1059788141639102005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A322429 (n + 1) + A226729 n).toNat

end

end A298204.P1059788141639102005

/-! ## A298204.P1330302651050054080

`A257639(A297708(n))`
-/

namespace A298204.P1330302651050054080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A297708 n).toNat

end

end A298204.P1330302651050054080

/-! ## A298204.P15447098618950289030

`A257639(4*A000105(n))`
-/

namespace A298204.P15447098618950289030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (4 * A000105 n).toNat

end

end A298204.P15447098618950289030

/-! ## A298204.P8220371639141944128

`A276571(ceil(A192681(n)/2))`
-/

namespace A298204.P8220371639141944128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 ⌈(A192681 n : ℚ) / 2⌉.toNat

end

end A298204.P8220371639141944128

/-! ## A298204.P12888329362992990654

`A000196(A148107(n))`
-/

namespace A298204.P12888329362992990654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A148107 n).toNat

end

end A298204.P12888329362992990654

/-!
# A298206: a(n) is the smallest b >= 2 such that b^(6*2^n) - b^(3*2^n) + 1 is prime.

The programs for A298206, there is no canonical definition to state claims against.
-/

/-! ## A298206.P17840314232080877446

`A085398(18*2^n)`
-/

namespace A298206.P17840314232080877446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (18 * 2 ^ n)

end

end A298206.P17840314232080877446

/-! ## A298206.P1216238702634601367

`A205506(A007980(n+1)+1)`
-/

namespace A298206.P1216238702634601367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205506 (A007980 (n + 1) + 1).toNat

end

end A298206.P1216238702634601367

/-! ## A298206.P17534415887127434898

`A205506(A047808(n+1)+1)`
-/

namespace A298206.P17534415887127434898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205506 (A047808 (n + 1) + 1).toNat

end

end A298206.P17534415887127434898

/-! ## A298206.P13097513157109178426

`A205506(A117634(n+1)+1)`
-/

namespace A298206.P13097513157109178426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205506 (A117634 (n + 1) + 1).toNat

end

end A298206.P13097513157109178426

/-! ## A298206.P6408907555183735425

`A205506(A022339(n+2)+1)`
-/

namespace A298206.P6408907555183735425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205506 (A022339 (n + 2) + 1).toNat

end

end A298206.P6408907555183735425

/-!
# A298207: Numbers that are a product of zero, one, or three (not necessarily distinct) prime numbers.

The programs for A298207, the canonical program `A298207.P6466011691375944331` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298207 has offset 1).

The definition of A298207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298207.P10585841775244909964

`eq[n-1-a(A001222(n))², n-2]` with `a(0)=1`
-/

namespace A298207.P10585841775244909964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - 1 - f1 (A001222 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298207.P10585841775244909964

namespace A298207

/-- `eq[n-1-a(A001222(n))², n-2]` -/
def P10585841775244909964.Spec : Prop :=
  ∀ n, (P10585841775244909964.a n : ℤ) = A298207 (n + 1)

end A298207

/-! ## A298207.P19263952166701355

`eq[1, A289094(A001222(n+1))]+1`
-/

namespace A298207.P19263952166701355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289094 (A001222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A298207.P19263952166701355

namespace A298207

/-- `eq[1, A289094(A001222(n+1))]+1` -/
def P19263952166701355.Spec : Prop :=
  ∀ n, (P19263952166701355.a n : ℤ) = A298207 (n + 1)

end A298207

/-! ## A298207.P6466011691375944331

`∪[A008578(n+1), A014612(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A298207

/-- `∪[A008578(n+1), A014612(n+1)]` -/
def P6466011691375944331.Spec : Prop :=
  ∀ n, (P6466011691375944331.a n : ℤ) = A298207 (n + 1)

theorem P6466011691375944331.correct : P6466011691375944331.Spec := by
  intro n
  simp only [A298207, Nat.add_sub_cancel]

end A298207

/-! ## A298207.P16576790619893340849

`∪[A014612(n+1), A324050(n+1)]`
-/

namespace A298207.P16576790619893340849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A298207.P16576790619893340849

namespace A298207

/-- `∪[A014612(n+1), A324050(n+1)]` -/
def P16576790619893340849.Spec : Prop :=
  ∀ n, (P16576790619893340849.a n : ℤ) = A298207 (n + 1)

end A298207

/-! ## A298207.P6999894253431296925

`eq[1, A039599(A001222(n+1)²)]+1`
-/

namespace A298207.P6999894253431296925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (A001222 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A298207.P6999894253431296925

namespace A298207

/-- `eq[1, A039599(A001222(n+1)²)]+1` -/
def P6999894253431296925.Spec : Prop :=
  ∀ n, (P6999894253431296925.a n : ℤ) = A298207 (n + 1)

end A298207

/-! ## A298207.P4301362010413805279

`eq[1, A108087(A001222(n+1)²)]+1`
-/

namespace A298207.P4301362010413805279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A001222 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A298207.P4301362010413805279

namespace A298207

/-- `eq[1, A108087(A001222(n+1)²)]+1` -/
def P4301362010413805279.Spec : Prop :=
  ∀ n, (P4301362010413805279.a n : ℤ) = A298207 (n + 1)

end A298207

/-! ## A298207.P13768300810956562158

`eq[2, A242112(A001222(n+1)+2)]+1`
-/

namespace A298207.P13768300810956562158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 (A001222 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A298207.P13768300810956562158

namespace A298207

/-- `eq[2, A242112(A001222(n+1)+2)]+1` -/
def P13768300810956562158.Spec : Prop :=
  ∀ n, (P13768300810956562158.a n : ℤ) = A298207 (n + 1)

end A298207

/-! ## A298207.P165746167117931248

`eq[2, A000010(A001222(n+1)+3)]+1`
-/

namespace A298207.P165746167117931248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001222 (n + 1) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A298207.P165746167117931248

namespace A298207

/-- `eq[2, A000010(A001222(n+1)+3)]+1` -/
def P165746167117931248.Spec : Prop :=
  ∀ n, (P165746167117931248.a n : ℤ) = A298207 (n + 1)

end A298207

/-! ## A298207.P13828652207112831674

`eq[1, A052250(A001222(n+1)²+1)]+1`
-/

namespace A298207.P13828652207112831674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052250 (A001222 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A298207.P13828652207112831674

namespace A298207

/-- `eq[1, A052250(A001222(n+1)²+1)]+1` -/
def P13828652207112831674.Spec : Prop :=
  ∀ n, (P13828652207112831674.a n : ℤ) = A298207 (n + 1)

end A298207

/-! ## A298207.P4410667059196829335

`lt[A341923(A001222(n+1)²+2), 2]+1`
-/

namespace A298207.P4410667059196829335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341923 (A001222 (n + 1) ^ 2 + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A298207.P4410667059196829335

namespace A298207

/-- `lt[A341923(A001222(n+1)²+2), 2]+1` -/
def P4410667059196829335.Spec : Prop :=
  ∀ n, (P4410667059196829335.a n : ℤ) = A298207 (n + 1)

end A298207

/-! ## A298207.P11067984347779880984

`lt[A207790(A001222(n+1)+1)², 14]+1`
-/

namespace A298207.P11067984347779880984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A001222 (n + 1) + 1).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A298207.P11067984347779880984

namespace A298207

/-- `lt[A207790(A001222(n+1)+1)², 14]+1` -/
def P11067984347779880984.Spec : Prop :=
  ∀ n, (P11067984347779880984.a n : ℤ) = A298207 (n + 1)

end A298207

/-! ## A298207.P9060441530368345872

`record[(n+1)/A003986(A001222(n+1)+1)]`
-/

namespace A298207.P9060441530368345872
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003986 (A001222 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298207.P9060441530368345872

namespace A298207

/-- `record[(n+1)/A003986(A001222(n+1)+1)]` -/
def P9060441530368345872.Spec : Prop :=
  ∀ n, P9060441530368345872.a n = (A298207 (n + 1) : ℚ)

end A298207

/-! ## A298207.P7559984330091655249

`filter[A026422(n+1), A340369(#)]`
-/

namespace A298207.P7559984330091655249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A298207.P7559984330091655249

namespace A298207

/-- `filter[A026422(n+1), A340369(#)]` -/
def P7559984330091655249.Spec : Prop :=
  ∀ n, P7559984330091655249.a n = A298207 (n + 1)

end A298207

/-! ## A298207.P4603214487226078923

`∩[A026422(n+1), A037144(n+1)]`
-/

namespace A298207.P4603214487226078923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298207.P4603214487226078923

namespace A298207

/-- `∩[A026422(n+1), A037144(n+1)]` -/
def P4603214487226078923.Spec : Prop :=
  ∀ n, (P4603214487226078923.a n : ℤ) = A298207 (n + 1)

end A298207

/-! ## A298207.P6848774166178488093

`∩[A026422(n+1), A289555(n+1)]`
-/

namespace A298207.P6848774166178488093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298207.P6848774166178488093

namespace A298207

/-- `∩[A026422(n+1), A289555(n+1)]` -/
def P6848774166178488093.Spec : Prop :=
  ∀ n, (P6848774166178488093.a n : ℤ) = A298207 (n + 1)

end A298207

/-! ## A298207.P4127120765888658923

`filter[A100959(n+1), A340369(#)]`
-/

namespace A298207.P4127120765888658923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A298207.P4127120765888658923

namespace A298207

/-- `filter[A100959(n+1), A340369(#)]` -/
def P4127120765888658923.Spec : Prop :=
  ∀ n, P4127120765888658923.a n = A298207 (n + 1)

end A298207

/-! ## A298207.P17831796512443692719

`∩[A037144(n+1), A100959(n+1)]`
-/

namespace A298207.P17831796512443692719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298207.P17831796512443692719

namespace A298207

/-- `∩[A037144(n+1), A100959(n+1)]` -/
def P17831796512443692719.Spec : Prop :=
  ∀ n, (P17831796512443692719.a n : ℤ) = A298207 (n + 1)

end A298207

/-! ## A298207.P12256221863653812161

`∩[A026422(n+1), A166718(n+1)]`
-/

namespace A298207.P12256221863653812161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298207.P12256221863653812161

namespace A298207

/-- `∩[A026422(n+1), A166718(n+1)]` -/
def P12256221863653812161.Spec : Prop :=
  ∀ n, (P12256221863653812161.a n : ℤ) = A298207 (n + 1)

end A298207

/-! ## A298207.P423882295102019212

`eq[3, A000203(A000010(∑{e}[n+1, #]+3))]+1`
-/

namespace A298207.P423882295102019212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A298207.P423882295102019212

namespace A298207

/-- `eq[3, A000203(A000010(∑{e}[n+1, #]+3))]+1` -/
def P423882295102019212.Spec : Prop :=
  ∀ n, (P423882295102019212.a n : ℤ) = A298207 (n + 1)

end A298207

/-! ## A298207.P2984888519047876678

`filter[A215261(2*n+1), A340369(#)]`
-/

namespace A298207.P2984888519047876678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215261 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A298207.P2984888519047876678

namespace A298207

/-- `filter[A215261(2*n+1), A340369(#)]` -/
def P2984888519047876678.Spec : Prop :=
  ∀ n, P2984888519047876678.a n = A298207 (n + 1)

end A298207

/-!
# A298210: Smallest n such that A001542(a(n)) == 0 (mod n), i.e., x=A001541(a(n)) and y=A001542(a(n)) is the fundamental solution of the Pell equation x^2 - 2*(n*y)^2 = 1.

The programs for A298210, there is no canonical definition to state claims against.
-/

/-! ## A298210.P6790595316803618401

`lcm(2, A214028(n+1))/2`
-/

namespace A298210.P6790595316803618401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A214028 (n + 1)) : ℚ) / 2

end

end A298210.P6790595316803618401

/-! ## A298210.P14950533405164895430

`A026741(A214028(n+1))`
-/

namespace A298210.P14950533405164895430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A214028 (n + 1)).toNat

end

end A298210.P14950533405164895430

/-! ## A298210.P11614653646154724191

`A004525(lcm(2, A214028(n+1)))`
-/

namespace A298210.P11614653646154724191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A214028 (n + 1)))

end

end A298210.P11614653646154724191

/-! ## A298210.P5499920852788855921

`A060819(2*A214028(n+1))`
-/

namespace A298210.P5499920852788855921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A214028 (n + 1)).toNat

end

end A298210.P5499920852788855921

/-! ## A298210.P18197726378439985709

`A060789(3*A214028(n+1))`
-/

namespace A298210.P18197726378439985709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (3 * A214028 (n + 1)).toNat

end

end A298210.P18197726378439985709

/-! ## A298210.P6635445588868878669

`A106611(5*A214028(n+1))`
-/

namespace A298210.P6635445588868878669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (5 * A214028 (n + 1)).toNat

end

end A298210.P6635445588868878669

/-!
# A298211: Smallest n such that A001353(a(n)) == 0 (mod n), i.e., x=A001075(a(n)) and y=A001353(a(n)) is the fundamental solution of the Pell equation x^2 - 3*(n*y)^2 = 1.

The programs for A298211, there is no canonical definition to state claims against.
-/

/-! ## A298211.P5210401146354992460

`A034968(A322475(n+1)^A034851(n))`
-/

namespace A298211.P5210401146354992460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (SequenceMachineLib.roundAway ((A322475 (n + 1) : ℚ) ^ (A034851 n : ℤ))).toNat

end

end A298211.P5210401146354992460

/-!
# A298212: Smallest n such that A060645(a(n)) = 0 (mod n), i.e., x=A023039(a(n)) and y=A060645(a(n)) is the fundamental solution of the Pell equation x^2 - 5*(n*y)^2 = 1.

The programs for A298212, there is no canonical definition to state claims against.
-/

/-! ## A298212.P1231929486713859067

`A026741(A281230(2*(n+1))/3)`
-/

namespace A298212.P1231929486713859067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A281230 (2 * (n + 1)) : ℚ) / 3)).toNat

end

end A298212.P1231929486713859067

/-! ## A298212.P8976839890630129552

`gcd(A001177(n+1), A304993(A001177(2*(n+1))))`
-/

namespace A298212.P8976839890630129552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001177 (n + 1)) (A304993 (A001177 (2 * (n + 1))).toNat)

end

end A298212.P8976839890630129552

/-! ## A298212.P12080598346654679208

`A051724(lcm(A001175(n+1), A006519(n+1)))`
-/

namespace A298212.P12080598346654679208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (Int.lcm (A001175 (n + 1)) (A006519 (n + 1)))

end

end A298212.P12080598346654679208

/-! ## A298212.P16832665654290613486

`A051724(A001175(2*(n+1)))`
-/

namespace A298212.P16832665654290613486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A001175 (2 * (n + 1))).toNat

end

end A298212.P16832665654290613486

/-! ## A298212.P15960092299293056003

`A106619(3*A001177(2*(n+1)))`
-/

namespace A298212.P15960092299293056003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (3 * A001177 (2 * (n + 1))).toNat

end

end A298212.P15960092299293056003

/-! ## A298212.P3967456353181354225

`A026741(A175183(2*(n+1))/2)`
-/

namespace A298212.P3967456353181354225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A175183 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A298212.P3967456353181354225

/-! ## A298212.P2409431839095395153

`ceil(A262214(lcm(2, n+1))/2)`
-/

namespace A298212.P2409431839095395153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A262214 (Nat.lcm 2 (n + 1)) : ℚ) / 2⌉

end

end A298212.P2409431839095395153

/-! ## A298212.P1387858468386606462

`A003602(A262214(lcm(2, n+1)))`
-/

namespace A298212.P1387858468386606462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A262214 (Nat.lcm 2 (n + 1))).toNat

end

end A298212.P1387858468386606462

/-!
# A298213: Triangle read by rows, expansion of exp(x*exp(z)*tan(z)).

The programs for A298213, there is no canonical definition to state claims against.
-/

/-! ## A298213.P12891496784907161066

`A367068(A262809(n))+A059297(n)`
-/

namespace A298213.P12891496784907161066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367068 (A262809 n).toNat + A059297 n

end

end A298213.P12891496784907161066

/-! ## A298213.P16612664773747668645

`A058716(A055645(n))*A091595(n)`
-/

namespace A298213.P16612664773747668645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058716 (A055645 n).toNat * A091595 n

end

end A298213.P16612664773747668645

/-! ## A298213.P2181429512388379804

`and(A086431(A271703(n)), A130191(n))`
-/

namespace A298213.P2181429512388379804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086431 (A271703 n).toNat) (A130191 n)

end

end A298213.P2181429512388379804

/-! ## A298213.P7013221725996639899

`and(A130191(n), A331430(A105278(n+1)))`
-/

namespace A298213.P7013221725996639899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130191 n) (A331430 (A105278 (n + 1)).toNat)

end

end A298213.P7013221725996639899

/-! ## A298213.P97969403524304285

`(A102683(A022345(n))+A091597(n))*A004248(n)`
-/

namespace A298213.P97969403524304285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102683 (A022345 n).toNat + A091597 n) * A004248 n

end

end A298213.P97969403524304285

/-!
# A298214: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298214, there is no canonical definition to state claims against.
-/

/-! ## A298214.P2678252434780294418

`A298221(∑[4*n]+1)`
-/

namespace A298214.P2678252434780294418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298214.P2678252434780294418

/-! ## A298214.P15556323285037438278

`record[A298221(A330613(n+1))]`
-/

namespace A298214.P15556323285037438278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298214.P15556323285037438278

/-! ## A298214.P6402646458393220176

`A298221(A001844(n))+char[10]`
-/

namespace A298214.P6402646458393220176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298214.P6402646458393220176

/-! ## A298214.P6641239818927509228

`record[A003982(n)*A298221(n+1)]`
-/

namespace A298214.P6641239818927509228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A298221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298214.P6641239818927509228

/-! ## A298214.P7627915876245745367

`A015198(n)*A298221(A001844(n))`
-/

namespace A298214.P7627915876245745367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015198 n * A298221 (A001844 n).toNat

end

end A298214.P7627915876245745367

/-!
# A298215: Number of nX2 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298215, the canonical program `A298215.P6096607446506039463` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298215 has offset 1).

The definition of A298215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298215.P6096607446506039463

`A304349(n+1)+and(-2, 2^n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A298215

/-- `A304349(n+1)+and(-2, 2^n)` -/
def P6096607446506039463.Spec : Prop :=
  ∀ n, P6096607446506039463.a n = A298215 (n + 1)

theorem P6096607446506039463.correct : P6096607446506039463.Spec := by
  intro n
  simp only [A298215, Nat.add_sub_cancel]

end A298215

/-! ## A298215.P13377409398500304413

`A304349(n+1)+A155559(n)`
-/

namespace A298215.P13377409398500304413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304349 (n + 1) + A155559 n

end

end A298215.P13377409398500304413

namespace A298215

/-- `A304349(n+1)+A155559(n)` -/
def P13377409398500304413.Spec : Prop :=
  ∀ n, P13377409398500304413.a n = A298215 (n + 1)

end A298215

/-! ## A298215.P6983607061698631707

`A304349(n+1)+Δ[A255047(n)]`
-/

namespace A298215.P6983607061698631707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304349 (n + 1) + (f1 (n + 1) - f1 n)

end

end A298215.P6983607061698631707

namespace A298215

/-- `A304349(n+1)+Δ[A255047(n)]` -/
def P6983607061698631707.Spec : Prop :=
  ∀ n, P6983607061698631707.a n = A298215 (n + 1)

end A298215

/-! ## A298215.P6087788630538790897

`A304349(n+1)+A131572(2*n)`
-/

namespace A298215.P6087788630538790897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304349 (n + 1) + A131572 (2 * n)

end

end A298215.P6087788630538790897

namespace A298215

/-- `A304349(n+1)+A131572(2*n)` -/
def P6087788630538790897.Spec : Prop :=
  ∀ n, P6087788630538790897.a n = A298215 (n + 1)

end A298215

/-! ## A298215.P10391614226116842338

`A304349(n+1)+A000079(n)-A000007(n)`
-/

namespace A298215.P10391614226116842338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304349 (n + 1) + (A000079 n - A000007 n)

end

end A298215.P10391614226116842338

namespace A298215

/-- `A304349(n+1)+A000079(n)-A000007(n)` -/
def P10391614226116842338.Spec : Prop :=
  ∀ n, P10391614226116842338.a n = A298215 (n + 1)

end A298215

/-! ## A298215.P17752748366234094575

`A304349(n+1)+A000079(n)*A057427(n)`
-/

namespace A298215.P17752748366234094575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304349 (n + 1) + A000079 n * A057427 n

end

end A298215.P17752748366234094575

namespace A298215

/-- `A304349(n+1)+A000079(n)*A057427(n)` -/
def P17752748366234094575.Spec : Prop :=
  ∀ n, P17752748366234094575.a n = A298215 (n + 1)

end A298215

/-! ## A298215.P14859898199674341295

`A304349(n+1)+A000079(n)%A000244(n)`
-/

namespace A298215.P14859898199674341295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304349 (n + 1) + Int.tmod (A000079 n) (A000244 n)

end

end A298215.P14859898199674341295

namespace A298215

/-- `A304349(n+1)+A000079(n)%A000244(n)` -/
def P14859898199674341295.Spec : Prop :=
  ∀ n, P14859898199674341295.a n = A298215 (n + 1)

end A298215

/-!
# A298216: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298216, there is no canonical definition to state claims against.
-/

/-! ## A298216.P2569813312430135490

`A298221(∑[n+2]+4)`
-/

namespace A298216.P2569813312430135490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298216.P2569813312430135490

/-! ## A298216.P12896146748910252903

`A298221(A046691(n)+7)+char[19]`
-/

namespace A298216.P12896146748910252903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298216.P12896146748910252903

/-! ## A298216.P12634748060000186924

`A298221(A167614(n+1))+char[34]`
-/

namespace A298216.P12634748060000186924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298216.P12634748060000186924

/-! ## A298216.P6728632166035190840

`record[gcd(A002262(n+1), A298221(n+4))]`
-/

namespace A298216.P6728632166035190840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 1)) (A298221 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298216.P6728632166035190840

/-! ## A298216.P5266941215016243784

`A015198(n)*A298221(A167614(n+1))`
-/

namespace A298216.P5266941215016243784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015198 n * A298221 (A167614 (n + 1)).toNat

end

end A298216.P5266941215016243784

/-!
# A298217: Number of n X 4 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298217, there is no canonical definition to state claims against.
-/

/-! ## A298217.P18233623740625737761

`A298221(∑[n+3]+7)`
-/

namespace A298217.P18233623740625737761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298217.P18233623740625737761

/-! ## A298217.P6034881086585679052

`A298221(A052905(n)+9)+char[19]`
-/

namespace A298217.P6034881086585679052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298217.P6034881086585679052

/-! ## A298217.P11482533690441378916

`A298221(A052905(n)+9)%A000108(n+5)`
-/

namespace A298217.P11482533690441378916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298221 (A052905 n + 9).toNat) (A000108 (n + 5))

end

end A298217.P11482533690441378916

/-! ## A298217.P7518851023789266076

`gcd(11, A007318(n))*A298221(A052905(n)+9)`
-/

namespace A298217.P7518851023789266076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 11 (A007318 n) : ℤ) * A298221 (A052905 n + 9).toNat

end

end A298217.P7518851023789266076

/-! ## A298217.P10528910523403344833

`A007318(floor(n/5))*A298221(A052905(n)+9)`
-/

namespace A298217.P10528910523403344833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 5⌋.toNat * A298221 (A052905 n + 9).toNat

end

end A298217.P10528910523403344833

/-!
# A298218: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298218, there is no canonical definition to state claims against.
-/

/-! ## A298218.P15136730548645419991

`A298221(∑[n+4]+11)`
-/

namespace A298218.P15136730548645419991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A298218.P15136730548645419991

/-!
# A298219: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298219, there is no canonical definition to state claims against.
-/

/-! ## A298219.P15962032514201717366

`A298221(A374007(n+1))`
-/

namespace A298219.P15962032514201717366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (A374007 (n + 1)).toNat

end

end A298219.P15962032514201717366

/-! ## A298219.P10457979272012392565

`A298221(A166136(n+4))`
-/

namespace A298219.P10457979272012392565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (A166136 (n + 4)).toNat

end

end A298219.P10457979272012392565

/-! ## A298219.P15912433950244680334

`A298221(A056115(n)+21)`
-/

namespace A298219.P15912433950244680334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (A056115 n + 21).toNat

end

end A298219.P15912433950244680334

/-! ## A298219.P9821978884091289726

`A298221(A167487(n+4)-1)`
-/

namespace A298219.P9821978884091289726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (A167487 (n + 4) - 1).toNat

end

end A298219.P9821978884091289726

/-! ## A298219.P8791366385128078457

`A298221(A000124(n+5)+5)`
-/

namespace A298219.P8791366385128078457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (A000124 (n + 5) + 5).toNat

end

end A298219.P8791366385128078457

/-!
# A298220: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298220, there is no canonical definition to state claims against.
-/

/-! ## A298220.P1775675037006769343

`A298221(A374008(n+1))`
-/

namespace A298220.P1775675037006769343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (A374008 (n + 1)).toNat

end

end A298220.P1775675037006769343

/-! ## A298220.P11845804935896067896

`A298221(A056119(n)+28)`
-/

namespace A298220.P11845804935896067896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (A056119 n + 28).toNat

end

end A298220.P11845804935896067896

/-! ## A298220.P16744479042757056174

`A298221(eq[11, A066657(n)])`
-/

namespace A298220.P16744479042757056174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298220.P16744479042757056174

/-! ## A298220.P5258585761090123928

`A298221(A166136(n+5)+1)`
-/

namespace A298220.P5258585761090123928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (A166136 (n + 5) + 1).toNat

end

end A298220.P5258585761090123928

/-! ## A298220.P917355974504312641

`A298221(A167499(n+5)+2)`
-/

namespace A298220.P917355974504312641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298221 (A167499 (n + 5) + 2).toNat

end

end A298220.P917355974504312641

/-!
# A298221: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298221, there is no canonical definition to state claims against.
-/

/-! ## A298221.P16429534714802872295

`A299350(n+1)-A025469(A298719(n+1))`
-/

namespace A298221.P16429534714802872295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (n + 1) - A025469 (A298719 (n + 1)).toNat

end

end A298221.P16429534714802872295

/-! ## A298221.P12686691098315086043

`A299350(n+1)-A235145(A303118(n+1))`
-/

namespace A298221.P12686691098315086043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (n + 1) - A235145 (A303118 (n + 1)).toNat

end

end A298221.P12686691098315086043

/-! ## A298221.P3657021981065098800

`A299350(n+1)-A185238(A034852(n))`
-/

namespace A298221.P3657021981065098800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (n + 1) - A185238 (A034852 n).toNat

end

end A298221.P3657021981065098800

/-! ## A298221.P8119171663129951414

`A299350(n+1)-A235145(A130167(n))`
-/

namespace A298221.P8119171663129951414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (n + 1) - A235145 (A130167 n).toNat

end

end A298221.P8119171663129951414

/-! ## A298221.P9367422959342820474

`A299350(n+1)-A059995(A010894(n))`
-/

namespace A298221.P9367422959342820474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299350 (n + 1) - A059995 (A010894 (n + 21)).toNat

end

end A298221.P9367422959342820474

/-!
# A298222: The first of three consecutive squares the sum of which is equal to the sum of three consecutive primes.

The programs for A298222, there is no canonical definition to state claims against.
-/

/-! ## A298222.P7971224877646633763

`floor(sqrt(A298223(n+1)))²`
-/

namespace A298222.P7971224877646633763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A298223 (n + 1)) ^ 2

end

end A298222.P7971224877646633763

/-! ## A298222.P5705455860918905672

`A000290(floor(sqrt(A298223(n+1))))`
-/

namespace A298222.P5705455860918905672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.sqrt (A298223 (n + 1))).toNat

end

end A298222.P5705455860918905672

/-! ## A298222.P14459612431216796986

`A103390(ceil(sqrt(A298223(n+1))))`
-/

namespace A298222.P14459612431216796986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103390 ⌈Real.sqrt (A298223 (n + 1) : ℝ)⌉.toNat

end

end A298222.P14459612431216796986

/-! ## A298222.P11760828280330120847

`A103390(round(sqrt(A298223(n+1))))`
-/

namespace A298222.P11760828280330120847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103390 (SequenceMachineLib.roundAway (Real.sqrt (A298223 (n + 1) : ℝ))).toNat

end

end A298222.P11760828280330120847

/-! ## A298222.P5551904323663369685

`A004442(ceil(sqrt(A298223(n+1))))²`
-/

namespace A298222.P5551904323663369685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ⌈Real.sqrt (A298223 (n + 1) : ℝ)⌉.toNat ^ 2

end

end A298222.P5551904323663369685

/-! ## A298222.P8589631485595023619

`A004442(round(sqrt(A298223(n+1))))²`
-/

namespace A298222.P8589631485595023619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.roundAway (Real.sqrt (A298223 (n + 1) : ℝ))).toNat ^ 2

end

end A298222.P8589631485595023619

/-! ## A298222.P7971843290762213937

`A103390(floor(sqrt(A298223(n+1)))+1)`
-/

namespace A298222.P7971843290762213937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103390 (Int.sqrt (A298223 (n + 1)) + 1).toNat

end

end A298222.P7971843290762213937

/-! ## A298222.P8334195533157052234

`A000290(ceil(sqrt(A298223(n+1)))-1)`
-/

namespace A298222.P8334195533157052234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (⌈Real.sqrt (A298223 (n + 1) : ℝ)⌉ - 1).toNat

end

end A298222.P8334195533157052234

/-! ## A298222.P9859835905248265768

`A000290(round(sqrt(A298223(n+1)))-1)`
-/

namespace A298222.P9859835905248265768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway (Real.sqrt (A298223 (n + 1) : ℝ)) - 1).toNat

end

end A298222.P9859835905248265768

/-! ## A298222.P18183035057896067721

`A002620(2*floor(sqrt(A298223(n+1))))`
-/

namespace A298222.P18183035057896067721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * Int.sqrt (A298223 (n + 1))).toNat

end

end A298222.P18183035057896067721

/-! ## A298222.P9761919237982848720

`floor(sqrt(A298223(n+1)))^A020639(2*(n+1))`
-/

namespace A298222.P9761919237982848720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (A298223 (n + 1)) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A298222.P9761919237982848720

/-! ## A298222.P14356783205302855092

`(round(sqrt(A298223(n+1)))-A000040(n+2)%2)²`
-/

namespace A298222.P14356783205302855092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (Real.sqrt (A298223 (n + 1) : ℝ)) - Int.tmod (A000040 (n + 2)) 2) ^ 2

end

end A298222.P14356783205302855092

/-! ## A298222.P4253167159700150670

`(A014963(52*(n+1))-ceil(sqrt(A298223(n+1))))²`
-/

namespace A298222.P4253167159700150670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014963 (52 * (n + 1)) - ⌈Real.sqrt (A298223 (n + 1) : ℝ)⌉) ^ 2

end

end A298222.P4253167159700150670

/-! ## A298222.P4428899254921928837

`(((-1)^A007318(n))²-ceil(sqrt(A298223(n+1))))²`
-/

namespace A298222.P4428899254921928837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2 - (⌈Real.sqrt (A298223 (n + 1) : ℝ)⌉ : ℚ)) ^ 2

end

end A298222.P4428899254921928837

/-! ## A298222.P828911766555279635

`floor(sqrt(A298223(n+1)))^(A028242(2*n)-(n-1))`
-/

namespace A298222.P828911766555279635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (A298223 (n + 1)) : ℚ) ^ (A028242 (2 * n) - ((n : ℤ) - 1) : ℤ)

end

end A298222.P828911766555279635

/-!
# A298224: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298224, there is no canonical definition to state claims against.
-/

/-! ## A298224.P2905329888427541116

`A298230(∑[4*n]+1)`
-/

namespace A298224.P2905329888427541116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298224.P2905329888427541116

/-! ## A298224.P4490927691686915144

`record[A298230(Δ[A235355(n)])]`
-/

namespace A298224.P4490927691686915144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298224.P4490927691686915144

/-! ## A298224.P1463756953107524028

`and(-1, A298230(A001844(n)))`
-/

namespace A298224.P1463756953107524028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298230 (A001844 n).toNat)

end

end A298224.P1463756953107524028

/-! ## A298224.P7864807289950276058

`record[A298230(A330613(n+1))]`
-/

namespace A298224.P7864807289950276058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298224.P7864807289950276058

/-! ## A298224.P2286946350986223662

`record[A003982(n)*A298230(n+1)]`
-/

namespace A298224.P2286946350986223662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A298230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298224.P2286946350986223662

/-!
# A298225: Number of nX3 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298225, there is no canonical definition to state claims against.
-/

/-! ## A298225.P11493670357756799130

`A298149(n+1)+A000034(n)-A001611(n)`
-/

namespace A298225.P11493670357756799130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298149 (n + 1) + (A000034 n - A001611 n)

end

end A298225.P11493670357756799130

/-! ## A298225.P16453411870820407162

`A298230(∑[n+2]+4)`
-/

namespace A298225.P16453411870820407162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298225.P16453411870820407162

/-! ## A298225.P15105890299931961747

`and(-1, A298230(A167614(n+1)))`
-/

namespace A298225.P15105890299931961747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298230 (A167614 (n + 1)).toNat)

end

end A298225.P15105890299931961747

/-! ## A298225.P13249657496483890880

`A298230(A167614(n+1))+A025439(n)`
-/

namespace A298225.P13249657496483890880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (A167614 (n + 1)).toNat + A025439 n

end

end A298225.P13249657496483890880

/-! ## A298225.P11701643820507823014

`A298230(A167614(n+1))+A025444(n)`
-/

namespace A298225.P11701643820507823014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (A167614 (n + 1)).toNat + A025444 n

end

end A298225.P11701643820507823014

/-!
# A298226: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298226, there is no canonical definition to state claims against.
-/

/-! ## A298226.P1231294517503349618

`A298230(∑[n+3]+7)`
-/

namespace A298226.P1231294517503349618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298226.P1231294517503349618

/-! ## A298226.P12045834744884112866

`A298230(A000217(n+3)+4)+char[16]`
-/

namespace A298226.P12045834744884112866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298226.P12045834744884112866

/-! ## A298226.P13399772749039315763

`A298230(A374004(n+1))+A025439(n)`
-/

namespace A298226.P13399772749039315763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (A374004 (n + 1)).toNat + A025439 n

end

end A298226.P13399772749039315763

/-! ## A298226.P17449485713736977759

`A298230(A374004(n+1))%A373281(n+5)`
-/

namespace A298226.P17449485713736977759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298230 (A374004 (n + 1)).toNat) (A373281 (n + 5))

end

end A298226.P17449485713736977759

/-! ## A298226.P3120942996075870133

`A007318(C(n, 2))*A298230(A000217(n+3)+4)`
-/

namespace A298226.P3120942996075870133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A298230 (A000217 (n + 3) + 4).toNat

end

end A298226.P3120942996075870133

/-!
# A298227: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298227, there is no canonical definition to state claims against.
-/

/-! ## A298227.P5476152552064975154

`A298230(A374005(n+1))`
-/

namespace A298227.P5476152552064975154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (A374005 (n + 1)).toNat

end

end A298227.P5476152552064975154

/-! ## A298227.P14376734898100845112

`A298230(A167499(n+3))`
-/

namespace A298227.P14376734898100845112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (A167499 (n + 3)).toNat

end

end A298227.P14376734898100845112

/-! ## A298227.P18124284260492774932

`A298230(A155212(n)+13)`
-/

namespace A298227.P18124284260492774932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (A155212 n + 13).toNat

end

end A298227.P18124284260492774932

/-! ## A298227.P6459587887490954054

`A298230(A056000(n)+15)`
-/

namespace A298227.P6459587887490954054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (A056000 n + 15).toNat

end

end A298227.P6459587887490954054

/-! ## A298227.P14903969274300346101

`A298230(eq[7, A066657(n)])`
-/

namespace A298227.P14903969274300346101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298227.P14903969274300346101

/-!
# A298228: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298228, there is no canonical definition to state claims against.
-/

/-! ## A298228.P17117984913635716313

`A298230(A374007(n+1))`
-/

namespace A298228.P17117984913635716313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (A374007 (n + 1)).toNat

end

end A298228.P17117984913635716313

/-! ## A298228.P14444078463981179296

`A298230(A166136(n+4))`
-/

namespace A298228.P14444078463981179296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (A166136 (n + 4)).toNat

end

end A298228.P14444078463981179296

/-! ## A298228.P17079441956770561373

`A298230(A056115(n)+21)`
-/

namespace A298228.P17079441956770561373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (A056115 n + 21).toNat

end

end A298228.P17079441956770561373

/-! ## A298228.P11325907054940801632

`A298230(A167499(n+4)+1)`
-/

namespace A298228.P11325907054940801632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (A167499 (n + 4) + 1).toNat

end

end A298228.P11325907054940801632

/-! ## A298228.P16074539863220691647

`A298230(A167487(n+4)-1)`
-/

namespace A298228.P16074539863220691647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (A167487 (n + 4) - 1).toNat

end

end A298228.P16074539863220691647

/-!
# A298229: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298229, there is no canonical definition to state claims against.
-/

/-! ## A298229.P1575212131237962091

`A298230(A374008(n+1))`
-/

namespace A298229.P1575212131237962091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (A374008 (n + 1)).toNat

end

end A298229.P1575212131237962091

/-! ## A298229.P13866093787849542365

`A298230(A167487(n+5))`
-/

namespace A298229.P13866093787849542365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (A167487 (n + 5)).toNat

end

end A298229.P13866093787849542365

/-! ## A298229.P5578931445617150942

`A298230(A056119(n)+28)`
-/

namespace A298229.P5578931445617150942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (A056119 n + 28).toNat

end

end A298229.P5578931445617150942

/-! ## A298229.P5934477340187890408

`A298230(eq[11, A066657(n)])`
-/

namespace A298229.P5934477340187890408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298229.P5934477340187890408

/-! ## A298229.P13698236027975985977

`A298230(A166136(n+5)+1)`
-/

namespace A298229.P13698236027975985977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298230 (A166136 (n + 5) + 1).toNat

end

end A298229.P13698236027975985977

/-!
# A298230: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298230, there is no canonical definition to state claims against.
-/

/-! ## A298230.P8533758931933618830

`A298154(n+1)+A228368(A168549(n))`
-/

namespace A298230.P8533758931933618830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 (n + 1) + A228368 (A168549 n).toNat

end

end A298230.P8533758931933618830

/-! ## A298230.P2120091078390592672

`A298154(n+1)-A213003(A299905(n))`
-/

namespace A298230.P2120091078390592672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 (n + 1) - A213003 (A299905 n).toNat

end

end A298230.P2120091078390592672

/-! ## A298230.P14078331614892653338

`A298154(n+1)-A124761(A008277(n+1))`
-/

namespace A298230.P14078331614892653338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 (n + 1) - A124761 (A008277 (n + 1)).toNat

end

end A298230.P14078331614892653338

/-! ## A298230.P14836452110368359264

`A298154(n+1)-A011695(A282230(n+1))`
-/

namespace A298230.P14836452110368359264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 (n + 1) - A011695 (A282230 (n + 1)).toNat

end

end A298230.P14836452110368359264

/-! ## A298230.P15884123823302708412

`A298154(n+1)-A010059(A301443(n+1))`
-/

namespace A298230.P15884123823302708412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 (n + 1) - A010059 (A301443 (n + 1)).toNat

end

end A298230.P15884123823302708412

/-!
# A298231: Fixed point of the morphism 1->1221, 2->122.

The programs for A298231, there is no canonical definition to state claims against.
-/

/-! ## A298231.P10598030905337871531

`3-Δ[A284895(n+1)]`
-/

namespace A298231.P10598030905337871531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A298231.P10598030905337871531

/-! ## A298231.P17804169347538421868

`3-Δ[A285343(n+1)]`
-/

namespace A298231.P17804169347538421868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A298231.P17804169347538421868

/-! ## A298231.P15274454952667760688

`5-Δ[A285359(n+1)]`
-/

namespace A298231.P15274454952667760688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (f1 (n + 1) - f1 n)

end

end A298231.P15274454952667760688

/-! ## A298231.P4164463741052424109

`Δ[A285358(n+1)]²+1`
-/

namespace A298231.P4164463741052424109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 1

end

end A298231.P4164463741052424109

/-! ## A298231.P135053910133796508

`A000034(Δ[A284895(n+1)])`
-/

namespace A298231.P135053910133796508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (f1 (n + 1) - f1 n).toNat

end

end A298231.P135053910133796508

/-! ## A298231.P1209615679695703301

`A000002(Δ[A285359(n+1)])`
-/

namespace A298231.P1209615679695703301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (f1 (n + 1) - f1 n).toNat

end

end A298231.P1209615679695703301

/-! ## A298231.P9712428825819385376

`A000034(Δ[A285343(n+1)])`
-/

namespace A298231.P9712428825819385376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (f1 (n + 1) - f1 n).toNat

end

end A298231.P9712428825819385376

/-! ## A298231.P5336093008251135829

`A000034(Δ[A285359(n+1)])`
-/

namespace A298231.P5336093008251135829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (f1 (n + 1) - f1 n).toNat

end

end A298231.P5336093008251135829

/-! ## A298231.P14095138471860236774

`A000032(log2(Δ[A285343(n+1)]))`
-/

namespace A298231.P14095138471860236774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (Real.logb 2 (f1 (n + 1) - f1 n : ℝ))).toNat

end

end A298231.P14095138471860236774

/-! ## A298231.P6165749881135046517

`A007318(Δ[A284895(n+1)]+3)`
-/

namespace A298231.P6165749881135046517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n + 3).toNat

end

end A298231.P6165749881135046517

/-! ## A298231.P17184244238489665339

`A000005(2/Δ[A284895(n+1)])`
-/

namespace A298231.P17184244238489665339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (2 / (f1 (n + 1) - f1 n : ℚ))).toNat

end

end A298231.P17184244238489665339

/-! ## A298231.P12228378639178039282

`A000041(2/Δ[A284895(n+1)])`
-/

namespace A298231.P12228378639178039282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (2 / (f1 (n + 1) - f1 n : ℚ))).toNat

end

end A298231.P12228378639178039282

/-! ## A298231.P11700899797732259272

`A000108(2/Δ[A284895(n+1)])`
-/

namespace A298231.P11700899797732259272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway (2 / (f1 (n + 1) - f1 n : ℚ))).toNat

end

end A298231.P11700899797732259272

/-! ## A298231.P5633062408272390158

`A001221(Δ[A284895(n+1)]+5)`
-/

namespace A298231.P5633062408272390158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n + 5).toNat

end

end A298231.P5633062408272390158

/-! ## A298231.P18139237993677545173

`A005117(2/Δ[A284895(n+1)])`
-/

namespace A298231.P18139237993677545173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.roundAway (2 / (f1 (n + 1) - f1 n : ℚ))).toNat

end

end A298231.P18139237993677545173

/-! ## A298231.P7918773605182392636

`A014963(2/Δ[A284895(n+1)])`
-/

namespace A298231.P7918773605182392636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (2 / (f1 (n + 1) - f1 n : ℚ))).toNat

end

end A298231.P7918773605182392636

/-! ## A298231.P14880675752242157144

`A000041(C(2, Δ[A284895(n+1)]))`
-/

namespace A298231.P14880675752242157144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (f1 (n + 1) - f1 n).toNat)

end

end A298231.P14880675752242157144

/-! ## A298231.P1316635416813815671

`A000108(C(2, Δ[A284895(n+1)]))`
-/

namespace A298231.P1316635416813815671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (f1 (n + 1) - f1 n).toNat)

end

end A298231.P1316635416813815671

/-! ## A298231.P6222123454847285532

`xor(3, A000108(Δ[A284895(n+1)]))`
-/

namespace A298231.P6222123454847285532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A000108 (f1 (n + 1) - f1 n).toNat)

end

end A298231.P6222123454847285532

/-!
# A298233: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298233, there is no canonical definition to state claims against.
-/

/-! ## A298233.P15405269794094019368

`A298240(∑[4*n]+1)`
-/

namespace A298233.P15405269794094019368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298233.P15405269794094019368

/-! ## A298233.P11517062781630912975

`record[gcd(A003987(n), A298240(n+1))]`
-/

namespace A298233.P11517062781630912975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A298240 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298233.P11517062781630912975

/-! ## A298233.P9009209204049157346

`A213217(n)*A298240(A001844(n))`
-/

namespace A298233.P9009209204049157346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n * A298240 (A001844 n).toNat

end

end A298233.P9009209204049157346

/-! ## A298233.P18356631656453513418

`gcd(A000038(n), A298240(A001844(n)))`
-/

namespace A298233.P18356631656453513418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A298240 (A001844 n).toNat)

end

end A298233.P18356631656453513418

/-!
# A298234: Number of nX2 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298234, the canonical program `A298234.P2814153893250768694` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298234 has offset 1).

The definition of A298234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298234.P16194784075834195770

`ogf((1+4x+3x^2)/(1-x-5x^2-4x^3))`
-/

namespace A298234.P16194784075834195770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 3] [1, -1, -5, -4] n

end

end A298234.P16194784075834195770

namespace A298234

/-- `ogf((1+4x+3x^2)/(1-x-5x^2-4x^3))` -/
def P16194784075834195770.Spec : Prop :=
  ∀ n, P16194784075834195770.a n = A298234 (n + 1)

end A298234

/-! ## A298234.P2814153893250768694

`a(n-1)+5*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=5, a(2)=13`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A298234

/-- `a(n-1)+5*a(n-2)+4*a(n-3)` -/
def P2814153893250768694.Spec : Prop :=
  ∀ n, (P2814153893250768694.a n : ℤ) = A298234 (n + 1)

theorem P2814153893250768694.correct : P2814153893250768694.Spec := by
  intro n
  simp only [A298234, Nat.add_sub_cancel]

end A298234

/-! ## A298234.P5991141302630050713

`record[ratio[A298240(n+1)]]`
-/

namespace A298234.P5991141302630050713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298234.P5991141302630050713

namespace A298234

/-- `record[ratio[A298240(n+1)]]` -/
def P5991141302630050713.Spec : Prop :=
  ∀ n, P5991141302630050713.a n = (A298234 (n + 1) : ℚ)

end A298234

/-! ## A298234.P3000365103073004165

`record[ratio[A299060(n+1)]]`
-/

namespace A298234.P3000365103073004165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298234.P3000365103073004165

namespace A298234

/-- `record[ratio[A299060(n+1)]]` -/
def P3000365103073004165.Spec : Prop :=
  ∀ n, P3000365103073004165.a n = (A298234 (n + 1) : ℚ)

end A298234

/-! ## A298234.P14290990058601853063

`record[ratio[A299135(n+1)]]`
-/

namespace A298234.P14290990058601853063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299135 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298234.P14290990058601853063

namespace A298234

/-- `record[ratio[A299135(n+1)]]` -/
def P14290990058601853063.Spec : Prop :=
  ∀ n, P14290990058601853063.a n = (A298234 (n + 1) : ℚ)

end A298234

/-!
# A298235: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298235, there is no canonical definition to state claims against.
-/

/-! ## A298235.P2708265690157241222

`A298240(∑[n+2]+4)`
-/

namespace A298235.P2708265690157241222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298235.P2708265690157241222

/-! ## A298235.P17050027783565803796

`lcm((-1)^(n%3), A298240(A167614(n+1)))`
-/

namespace A298235.P17050027783565803796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (n % 3)) (A298240 (A167614 (n + 1)).toNat)

end

end A298235.P17050027783565803796

/-! ## A298235.P8454900911107356235

`A298240(A167614(n+1))+A011738(n)`
-/

namespace A298235.P8454900911107356235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (A167614 (n + 1)).toNat + A011738 n

end

end A298235.P8454900911107356235

/-! ## A298235.P8857813438930398956

`A298240(A167614(n+1))+A185284(n)`
-/

namespace A298235.P8857813438930398956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (A167614 (n + 1)).toNat + A185284 n

end

end A298235.P8857813438930398956

/-! ## A298235.P11364543844714409069

`A000041(gcd(n, n+1))*A298240(A046691(n)+7)`
-/

namespace A298235.P11364543844714409069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A298240 (A046691 n + 7).toNat

end

end A298235.P11364543844714409069

/-!
# A298236: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298236, there is no canonical definition to state claims against.
-/

/-! ## A298236.P17053934039410643864

`A298240(A374004(n+1))`
-/

namespace A298236.P17053934039410643864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (A374004 (n + 1)).toNat

end

end A298236.P17053934039410643864

/-! ## A298236.P17773236600567045867

`A298240(A141214(n)+7)`
-/

namespace A298236.P17773236600567045867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (A141214 n + 7).toNat

end

end A298236.P17773236600567045867

/-! ## A298236.P5740522895602336111

`A298240(A052905(n)+9)`
-/

namespace A298236.P5740522895602336111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (A052905 n + 9).toNat

end

end A298236.P5740522895602336111

/-! ## A298236.P9495668774433332673

`A298240(A055999(n)+10)`
-/

namespace A298236.P9495668774433332673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (A055999 n + 10).toNat

end

end A298236.P9495668774433332673

/-! ## A298236.P12843235024218671409

`A298240(A167614(n+2)+1)`
-/

namespace A298236.P12843235024218671409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (A167614 (n + 2) + 1).toNat

end

end A298236.P12843235024218671409

/-!
# A298237: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298237, there is no canonical definition to state claims against.
-/

/-! ## A298237.P14179587780318658564

`A298240(A374005(n+1))`
-/

namespace A298237.P14179587780318658564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (A374005 (n + 1)).toNat

end

end A298237.P14179587780318658564

/-! ## A298237.P2556420762642467494

`A298240(A155212(n)+13)`
-/

namespace A298237.P2556420762642467494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (A155212 n + 13).toNat

end

end A298237.P2556420762642467494

/-! ## A298237.P16941386468900530589

`A298240(A056000(n)+15)`
-/

namespace A298237.P16941386468900530589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (A056000 n + 15).toNat

end

end A298237.P16941386468900530589

/-! ## A298237.P4489917748922875047

`A298240(A046691(n+2)+9)`
-/

namespace A298237.P4489917748922875047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (A046691 (n + 2) + 9).toNat

end

end A298237.P4489917748922875047

/-! ## A298237.P6137626865897475544

`A298240(A046691(n+3))`
-/

namespace A298237.P6137626865897475544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (A046691 (n + 3)).toNat

end

end A298237.P6137626865897475544

/-!
# A298238: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298238, there is no canonical definition to state claims against.
-/

/-! ## A298238.P16442340433821011147

`A298240(A374007(n+1))`
-/

namespace A298238.P16442340433821011147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (A374007 (n + 1)).toNat

end

end A298238.P16442340433821011147

/-! ## A298238.P17244515542685716372

`A298240(eq[6, A130270(n+1)])`
-/

namespace A298238.P17244515542685716372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298238.P17244515542685716372

/-! ## A298238.P3168515087833865258

`A298240(A000124(n+6)-(n+1))`
-/

namespace A298238.P3168515087833865258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A298238.P3168515087833865258

/-! ## A298238.P984080413615816714

`A298240(A056119(n)+16)`
-/

namespace A298238.P984080413615816714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (A056119 n + 16).toNat

end

end A298238.P984080413615816714

/-! ## A298238.P18261702820379029436

`A298240(eq[3, A219347(n)])`
-/

namespace A298238.P18261702820379029436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298238.P18261702820379029436

/-!
# A298239: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298239, there is no canonical definition to state claims against.
-/

/-! ## A298239.P9072467816279621813

`A298240(A374008(n+1))`
-/

namespace A298239.P9072467816279621813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (A374008 (n + 1)).toNat

end

end A298239.P9072467816279621813

/-! ## A298239.P6948003231618329302

`A298240(A000217(n+6)+7)`
-/

namespace A298239.P6948003231618329302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (A000217 (n + 6) + 7).toNat

end

end A298239.P6948003231618329302

/-! ## A298239.P7031755761004960309

`A298240(A152947(n+8)+6)`
-/

namespace A298239.P7031755761004960309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (A152947 (n + 8) + 6).toNat

end

end A298239.P7031755761004960309

/-! ## A298239.P6385752334359549940

`A298240(eq[8, A131818(n+1)])`
-/

namespace A298239.P6385752334359549940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298239.P6385752334359549940

/-! ## A298239.P11186605405279311924

`A298240(eq[4, A219347(n)])`
-/

namespace A298239.P11186605405279311924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298240 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298239.P11186605405279311924

/-!
# A298240: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298240, there is no canonical definition to state claims against.
-/

/-! ## A298240.P13371872314921610323

`A299366(n+1)-A080343(A022168(n))`
-/

namespace A298240.P13371872314921610323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (n + 1) - A080343 (A022168 n).toNat

end

end A298240.P13371872314921610323

/-! ## A298240.P1497389802464862439

`A299366(n+1)-A093879(A176791(n))`
-/

namespace A298240.P1497389802464862439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (n + 1) - A093879 (A176791 n).toNat

end

end A298240.P1497389802464862439

/-! ## A298240.P4636808526103424917

`A299366(n+1)-A297155(A189111(n+1))`
-/

namespace A298240.P4636808526103424917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (n + 1) - A297155 (A189111 (n + 1)).toNat

end

end A298240.P4636808526103424917

/-! ## A298240.P12204186667849196289

`A299366(n+1)-A340998(A197373(n+1))`
-/

namespace A298240.P12204186667849196289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (n + 1) - A340998 ((A197373 (n + 1)).toNat + 140)

end

end A298240.P12204186667849196289

/-! ## A298240.P1769038393842938968

`A299366(n+1)+A016389(A022166(n))`
-/

namespace A298240.P1769038393842938968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299366 (n + 1) + A016389 (A022166 n).toNat

end

end A298240.P1769038393842938968

/-!
# A298244: a(n) = n! * [x^n] (sec(x) + tan(x))^n.

The programs for A298244, there is no canonical definition to state claims against.
-/

/-! ## A298244.P17781880259622417028

`A322267(∑[4*n])`
-/

namespace A298244.P17781880259622417028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322267 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298244.P17781880259622417028

/-! ## A298244.P11131808293752312468

`A189933((2*n-1)*a(n-1))/2` with `a(0)=1`
-/

namespace A298244.P11131808293752312468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A189933 (SequenceMachineLib.roundAway (((2 * n : ℤ) - 1 : ℚ) * a (n - 1))).toNat : ℚ) / 2

end

end A298244.P11131808293752312468

/-!
# A298246: Expansion of Product_{k>=1} (1 + x^(k*(k+1)*(2*k+1)/6)).

The programs for A298246, there is no canonical definition to state claims against.
-/

/-! ## A298246.P6871884710162182878

`A034968(A331984(n))`
-/

namespace A298246.P6871884710162182878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A331984 n).toNat

end

end A298246.P6871884710162182878

/-! ## A298246.P4014444868212695170

`A054868(A331984(n)²)`
-/

namespace A298246.P4014444868212695170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054868 (A331984 n ^ 2).toNat

end

end A298246.P4014444868212695170

/-! ## A298246.P17795641489369301551

`A001221(A331984(n)+1)`
-/

namespace A298246.P17795641489369301551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A331984 n + 1).toNat

end

end A298246.P17795641489369301551

/-! ## A298246.P15685553069118986773

`A015716(A331984(n)+8)`
-/

namespace A298246.P15685553069118986773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A331984 n + 8).toNat

end

end A298246.P15685553069118986773

/-! ## A298246.P10616252628699982222

`A015716(or(8, A331984(n)))`
-/

namespace A298246.P10616252628699982222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (Int.lor 8 (A331984 n)).toNat

end

end A298246.P10616252628699982222

/-! ## A298246.P2212707414459123895

`A331984(n*A033461(A331984(n)))`
-/

namespace A298246.P2212707414459123895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331984 ((n : ℤ) * A033461 (A331984 n).toNat).toNat

end

end A298246.P2212707414459123895

/-! ## A298246.P2459365350545778417

`A331984(n*A331844(A331984(n)))`
-/

namespace A298246.P2459365350545778417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331984 ((n : ℤ) * A331844 (A331984 n).toNat).toNat

end

end A298246.P2459365350545778417

/-! ## A298246.P10587138509670162321

`A331984(n*A339430(A331984(n)))`
-/

namespace A298246.P10587138509670162321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331984 ((n : ℤ) * A339430 (A331984 n).toNat).toNat

end

end A298246.P10587138509670162321

/-! ## A298246.P8598344867485359807

`A331984(n*A331919(A331984(n)))`
-/

namespace A298246.P8598344867485359807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331984 ((n : ℤ) * A331919 (A331984 n).toNat).toNat

end

end A298246.P8598344867485359807

/-! ## A298246.P9384637240838133735

`A331984(n*A332005(A331984(n)))`
-/

namespace A298246.P9384637240838133735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331984 ((n : ℤ) * A332005 (A331984 n).toNat).toNat

end

end A298246.P9384637240838133735

/-!
# A298247: Expansion of Product_{k>=1} (1 - x^(k*(k+1)*(k+2)/6)).

The programs for A298247, there is no canonical definition to state claims against.
-/

/-! ## A298247.P9239252296138119893

`(-A279278(n))^A219085(n)`
-/

namespace A298247.P9239252296138119893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A279278 n : ℚ) ^ (A219085 n : ℤ)

end

end A298247.P9239252296138119893

/-! ## A298247.P3867698479275786400

`A024936(A331919(n))^A000051(n)`
-/

namespace A298247.P3867698479275786400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024936 (A331919 n).toNat : ℚ) ^ (A000051 n : ℤ)

end

end A298247.P3867698479275786400

/-! ## A298247.P12405833168062359532

`A024936(A331919(n))^A000225(n)`
-/

namespace A298247.P12405833168062359532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024936 (A331919 n).toNat : ℚ) ^ (A000225 n : ℤ)

end

end A298247.P12405833168062359532

/-! ## A298247.P2068801772053759433

`A024936(A331919(n))^A000045(and(1, n)+n)`
-/

namespace A298247.P2068801772053759433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024936 (A331919 n).toNat : ℚ) ^ (A000045 (Nat.land 1 n + n) : ℤ)

end

end A298247.P2068801772053759433

/-! ## A298247.P7945596424285042077

`A024936(A331919(n))^A000040(comp[28*n]²)²`
-/

namespace A298247.P7945596424285042077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024936 (A331919 n).toNat : ℚ) ^ (A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2) ^ 2 : ℤ)

end

end A298247.P7945596424285042077

/-!
# A298249: Expansion of Product_{k>=1} (1 - x^(k*(k+1)*(2*k+1)/6)).

The programs for A298249, there is no canonical definition to state claims against.
-/

/-! ## A298249.P1868017613888236037

`(A024936(A331984(n))%2)^ceil(acot(n))`
-/

namespace A298249.P1868017613888236037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A024936 (A331984 n).toNat) 2 : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A298249.P1868017613888236037

/-! ## A298249.P8431112429652949137

`A000038(n)+A024936(A331984(n))%2`
-/

namespace A298249.P8431112429652949137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + Int.tmod (A024936 (A331984 n).toNat) 2

end

end A298249.P8431112429652949137

/-! ## A298249.P4154577126525172892

`(A024936(A331984(n-char[1]))%2)^A261077(n+1)`
-/

namespace A298249.P4154577126525172892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A024936 (A331984 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat) 2 : ℚ) ^ (A261077 (n + 1) : ℤ)

end

end A298249.P4154577126525172892

/-! ## A298249.P4466913183325464238

`A024936(A331984(n))^A000230(n)`
-/

namespace A298249.P4466913183325464238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024936 (A331984 n).toNat : ℚ) ^ (A000230 n : ℤ)

end

end A298249.P4466913183325464238

/-! ## A298249.P13851960361066667803

`A024936(A331984(n))^p?[A000124(n)]`
-/

namespace A298249.P13851960361066667803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024936 (A331984 n).toNat : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A298249.P13851960361066667803

/-! ## A298249.P2119042776860933364

`A024936(A331984(n))^A000040(n+1)`
-/

namespace A298249.P2119042776860933364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024936 (A331984 n).toNat : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A298249.P2119042776860933364

/-! ## A298249.P184802455531179284

`A024936(A331984(n))^A001248(n+1)`
-/

namespace A298249.P184802455531179284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024936 (A331984 n).toNat : ℚ) ^ (A001248 (n + 1) : ℤ)

end

end A298249.P184802455531179284

/-! ## A298249.P13468457563080671328

`A024936(A331984(n))^A261077(n+1)`
-/

namespace A298249.P13468457563080671328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024936 (A331984 n).toNat : ℚ) ^ (A261077 (n + 1) : ℤ)

end

end A298249.P13468457563080671328

/-! ## A298249.P55372061208569791

`A024936(A331984(n))^record[A006530(n+2)]`
-/

namespace A298249.P55372061208569791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024936 (A331984 n).toNat : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A298249.P55372061208569791

/-! ## A298249.P10243572036759105457

`A024936(A331984(n))^A000032(A014963(n+3))`
-/

namespace A298249.P10243572036759105457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024936 (A331984 n).toNat : ℚ) ^ (A000032 (A014963 (n + 3)).toNat : ℤ)

end

end A298249.P10243572036759105457

/-!
# A298252: Even integers n such that n-3 is prime.

The programs for A298252, the canonical program `A298252.P859259455876682479` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298252 has offset 1).

The definition of A298252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298252.P859259455876682479

`A113935(n+2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A298252

/-- `A113935(n+2)` -/
def P859259455876682479.Spec : Prop :=
  ∀ n, P859259455876682479.a n = A298252 (n + 1)

theorem P859259455876682479.correct : P859259455876682479.Spec := by
  intro n
  simp only [A298252, Nat.add_sub_cancel]

end A298252

/-! ## A298252.P4904919872977222572

`A000040(n+2)+3`
-/

namespace A298252.P4904919872977222572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + 3

end

end A298252.P4904919872977222572

namespace A298252

/-- `A000040(n+2)+3` -/
def P4904919872977222572.Spec : Prop :=
  ∀ n, P4904919872977222572.a n = A298252 (n + 1)

end A298252

/-! ## A298252.P4361599794961660970

`p?[2*n+1]+3`
-/

namespace A298252.P4361599794961660970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 3

end

end A298252.P4361599794961660970

namespace A298252

/-- `p?[2*n+1]+3` -/
def P4361599794961660970.Spec : Prop :=
  ∀ n, (P4361599794961660970.a n : ℤ) = A298252 (n + 1)

end A298252

/-! ## A298252.P2311959209099302167

`lcm(2, p?[n+1+n]+3)`
-/

namespace A298252.P2311959209099302167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 3)

end

end A298252.P2311959209099302167

namespace A298252

/-- `lcm(2, p?[n+1+n]+3)` -/
def P2311959209099302167.Spec : Prop :=
  ∀ n, (P2311959209099302167.a n : ℤ) = A298252 (n + 1)

end A298252

/-! ## A298252.P4333032718496337141

`or(1, p?[n+1+n])+3`
-/

namespace A298252.P4333032718496337141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 3

end

end A298252.P4333032718496337141

namespace A298252

/-- `or(1, p?[n+1+n])+3` -/
def P4333032718496337141.Spec : Prop :=
  ∀ n, (P4333032718496337141.a n : ℤ) = A298252 (n + 1)

end A298252

/-! ## A298252.P15057679248342007468

`∑{d}[p?[n+1+n], #+1]`
-/

namespace A298252.P15057679248342007468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d + 1)

end

end A298252.P15057679248342007468

namespace A298252

/-- `∑{d}[p?[n+1+n], #+1]` -/
def P15057679248342007468.Spec : Prop :=
  ∀ n, (P15057679248342007468.a n : ℤ) = A298252 (n + 1)

end A298252

/-! ## A298252.P17464597041812634145

`∑{p}[p?[n+1+n], #+3]`
-/

namespace A298252.P17464597041812634145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p + 3)

end

end A298252.P17464597041812634145

namespace A298252

/-- `∑{p}[p?[n+1+n], #+3]` -/
def P17464597041812634145.Spec : Prop :=
  ∀ n, (P17464597041812634145.a n : ℤ) = A298252 (n + 1)

end A298252

/-! ## A298252.P5394553195510112525

`∏{p}[p?[n+1+n], #+3]`
-/

namespace A298252.P5394553195510112525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p + 3)

end

end A298252.P5394553195510112525

namespace A298252

/-- `∏{p}[p?[n+1+n], #+3]` -/
def P5394553195510112525.Spec : Prop :=
  ∀ n, (P5394553195510112525.a n : ℤ) = A298252 (n + 1)

end A298252

/-! ## A298252.P3611990758679686141

`A048974(n+1)+1`
-/

namespace A298252.P3611990758679686141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1) + 1

end

end A298252.P3611990758679686141

namespace A298252

/-- `A048974(n+1)+1` -/
def P3611990758679686141.Spec : Prop :=
  ∀ n, P3611990758679686141.a n = A298252 (n + 1)

theorem P3611990758679686141.correct : P3611990758679686141.Spec := by
  intro n
  simp only [A298252, Nat.add_sub_cancel, A298252.P3611990758679686141.a, A298252.P859259455876682479.a, A048974, A048974.P12620924037349992420.a, A113935, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A298252

/-! ## A298252.P3289104053518678151

`A055670(n+2)+2`
-/

namespace A298252.P3289104053518678151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 2) + 2

end

end A298252.P3289104053518678151

namespace A298252

/-- `A055670(n+2)+2` -/
def P3289104053518678151.Spec : Prop :=
  ∀ n, P3289104053518678151.a n = A298252 (n + 1)

end A298252

/-! ## A298252.P15659016704316294599

`A065091(n+1)+3`
-/

namespace A298252.P15659016704316294599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + 3

end

end A298252.P15659016704316294599

namespace A298252

/-- `A065091(n+1)+3` -/
def P15659016704316294599.Spec : Prop :=
  ∀ n, P15659016704316294599.a n = A298252 (n + 1)

end A298252

/-! ## A298252.P3871746008736111169

`2*A098090(n+1)`
-/

namespace A298252.P3871746008736111169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098090 (n + 1)

end

end A298252.P3871746008736111169

namespace A298252

/-- `2*A098090(n+1)` -/
def P3871746008736111169.Spec : Prop :=
  ∀ n, P3871746008736111169.a n = A298252 (n + 1)

end A298252

/-! ## A298252.P16536502557726500269

`2*(A006254(n+1)+1)`
-/

namespace A298252.P16536502557726500269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006254 (n + 1) + 1)

end

end A298252.P16536502557726500269

namespace A298252

/-- `2*(A006254(n+1)+1)` -/
def P16536502557726500269.Spec : Prop :=
  ∀ n, P16536502557726500269.a n = A298252 (n + 1)

end A298252

/-! ## A298252.P655625556518624683

`2*(A005097(n+1)+2)`
-/

namespace A298252.P655625556518624683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005097 (n + 1) + 2)

end

end A298252.P655625556518624683

namespace A298252

/-- `2*(A005097(n+1)+2)` -/
def P655625556518624683.Spec : Prop :=
  ∀ n, P655625556518624683.a n = A298252 (n + 1)

end A298252

/-! ## A298252.P1822141047031705521

`2*(A089253(n+1)-1)`
-/

namespace A298252.P1822141047031705521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089253 (n + 1) - 1)

end

end A298252.P1822141047031705521

namespace A298252

/-- `2*(A089253(n+1)-1)` -/
def P1822141047031705521.Spec : Prop :=
  ∀ n, P1822141047031705521.a n = A298252 (n + 1)

end A298252

/-! ## A298252.P10288314674229447480

`2*(A089192(n+1)-2)`
-/

namespace A298252.P10288314674229447480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089192 (n + 1) - 2)

end

end A298252.P10288314674229447480

namespace A298252

/-- `2*(A089192(n+1)-2)` -/
def P10288314674229447480.Spec : Prop :=
  ∀ n, P10288314674229447480.a n = A298252 (n + 1)

end A298252

/-! ## A298252.P12221993406234772412

`A014690(n+1)+2-n`
-/

namespace A298252.P12221993406234772412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014690 (n + 1) + (2 - (n : ℤ))

end

end A298252.P12221993406234772412

namespace A298252

/-- `A014690(n+1)+2-n` -/
def P12221993406234772412.Spec : Prop :=
  ∀ n, P12221993406234772412.a n = A298252 (n + 1)

theorem P12221993406234772412.correct : P12221993406234772412.Spec := by
  intro n
  simp only [A298252, Nat.add_sub_cancel, A298252.P12221993406234772412.a, A298252.P859259455876682479.a, A014690, A014690.P15659938011012629912.a, A113935, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A298252

/-! ## A298252.P9303636379967089315

`2*(A177018(n+1)+n)`
-/

namespace A298252.P9303636379967089315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A177018 (n + 1) + (n : ℤ))

end

end A298252.P9303636379967089315

namespace A298252

/-- `2*(A177018(n+1)+n)` -/
def P9303636379967089315.Spec : Prop :=
  ∀ n, P9303636379967089315.a n = A298252 (n + 1)

end A298252

/-! ## A298252.P6117914299959430105

`A014687(n+1)+A010694(n)`
-/

namespace A298252.P6117914299959430105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014687 (n + 1) + A010694 n

end

end A298252.P6117914299959430105

namespace A298252

/-- `A014687(n+1)+A010694(n)` -/
def P6117914299959430105.Spec : Prop :=
  ∀ n, P6117914299959430105.a n = A298252 (n + 1)

end A298252

/-! ## A298252.P5504682263692804027

`A022958(n)+A014690(n+1)`
-/

namespace A298252.P5504682263692804027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 n + A014690 (n + 1)

end

end A298252.P5504682263692804027

namespace A298252

/-- `A022958(n)+A014690(n+1)` -/
def P5504682263692804027.Spec : Prop :=
  ∀ n, P5504682263692804027.a n = A298252 (n + 1)

theorem P5504682263692804027.correct : P5504682263692804027.Spec := by
  intro n
  simp only [A298252, Nat.add_sub_cancel, A298252.P5504682263692804027.a, A298252.P859259455876682479.a, A014690, A014690.P15659938011012629912.a, A022958, A022958.P1044776346471009207.a, A113935, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A298252

/-!
# A298253: Number of n X n 0..1 arrays with every element equal to 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298253, there is no canonical definition to state claims against.
-/

/-! ## A298253.P17432143771892931163

`A298259(∑[4*n]+1)`
-/

namespace A298253.P17432143771892931163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298259 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298253.P17432143771892931163

/-! ## A298253.P10167656415841616209

`A298259(A001844(n))+char[10]`
-/

namespace A298253.P10167656415841616209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298259 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298253.P10167656415841616209

/-! ## A298253.P8572431355314623166

`A326681(n)+A298259(A001844(n))`
-/

namespace A298253.P8572431355314623166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326681 n + A298259 (A001844 n).toNat

end

end A298253.P8572431355314623166

/-! ## A298253.P635617395407524736

`A072137(n)*A298259(A001844(n))`
-/

namespace A298253.P635617395407524736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072137 n * A298259 (A001844 n).toNat

end

end A298253.P635617395407524736

/-! ## A298253.P16650626000775009839

`A136522(n)*A298259(A001844(n))`
-/

namespace A298253.P16650626000775009839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n * A298259 (A001844 n).toNat

end

end A298253.P16650626000775009839

/-!
# A298254: Number of nX3 0..1 arrays with every element equal to 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298254, there is no canonical definition to state claims against.
-/

/-! ## A298254.P1264628009421784344

`A298259(∑[n+2]+4)`
-/

namespace A298254.P1264628009421784344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298259 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298254.P1264628009421784344

/-! ## A298254.P5006630743907424098

`A298930(∑[n+2]+4)`
-/

namespace A298254.P5006630743907424098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298254.P5006630743907424098

/-! ## A298254.P2383182391112425941

`and(-1, A298930(A167614(n+1)))`
-/

namespace A298254.P2383182391112425941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298930 (A167614 (n + 1)).toNat)

end

end A298254.P2383182391112425941

/-! ## A298254.P13368886130090100745

`or(char[1], A298259(A055998(n)+6))`
-/

namespace A298254.P13368886130090100745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298259 (A055998 n + 6).toNat)

end

end A298254.P13368886130090100745

/-! ## A298254.P10432948218708441479

`A298930(A167614(n+1))+A185284(n)`
-/

namespace A298254.P10432948218708441479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298930 (A167614 (n + 1)).toNat + A185284 n

end

end A298254.P10432948218708441479

/-!
# A298255: Number of nX4 0..1 arrays with every element equal to 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298255, there is no canonical definition to state claims against.
-/

/-! ## A298255.P13261192220318524467

`A298259(∑[n+3]+7)`
-/

namespace A298255.P13261192220318524467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298259 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298255.P13261192220318524467

/-! ## A298255.P14798156721392356554

`A298259(A052905(n)+9)+char[19]`
-/

namespace A298255.P14798156721392356554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298259 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298255.P14798156721392356554

/-! ## A298255.P11515100360585260329

`A298259(A374004(n+1))+A025469(n)`
-/

namespace A298255.P11515100360585260329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298259 (A374004 (n + 1)).toNat + A025469 n

end

end A298255.P11515100360585260329

/-! ## A298255.P3872096310023673275

`A298259(A374004(n+1))+A000038(n+2)`
-/

namespace A298255.P3872096310023673275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298259 (A374004 (n + 1)).toNat + A000038 (n + 2)

end

end A298255.P3872096310023673275

/-! ## A298255.P5291242170513286427

`A298259(A052905(n)+9)%A000108(n+2)`
-/

namespace A298255.P5291242170513286427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298259 (A052905 n + 9).toNat) (A000108 (n + 2))

end

end A298255.P5291242170513286427

/-!
# A298256: Number of nX5 0..1 arrays with every element equal to 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298256, there is no canonical definition to state claims against.
-/

/-! ## A298256.P8078859659730734924

`A298259(∑[n+4]+11)`
-/

namespace A298256.P8078859659730734924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298259 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A298256.P8078859659730734924

/-! ## A298256.P15430395806361855292

`or(char[1], A298259(A000124(n+4)+4))`
-/

namespace A298256.P15430395806361855292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298259 (A000124 (n + 4) + 4).toNat)

end

end A298256.P15430395806361855292

/-! ## A298256.P16341688493948538367

`A298259(A134869(n+4)+4)+A061858(n)`
-/

namespace A298256.P16341688493948538367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298259 (A134869 (n + 4) + 4).toNat + A061858 n

end

end A298256.P16341688493948538367

/-! ## A298256.P13017048961492635810

`A007318(C(2, n))*A298259(A000124(n+4)+4)`
-/

namespace A298256.P13017048961492635810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298259 (A000124 (n + 4) + 4).toNat

end

end A298256.P13017048961492635810

/-! ## A298256.P15339639453495014447

`A298259(A000124(n+4)+4)%A000045(or(42, n))`
-/

namespace A298256.P15339639453495014447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298259 (A000124 (n + 4) + 4).toNat) (A000045 (Nat.lor 42 n))

end

end A298256.P15339639453495014447

/-!
# A298257: Number of nX6 0..1 arrays with every element equal to 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298257, there is no canonical definition to state claims against.
-/

/-! ## A298257.P12302246821484101966

`A298259(∑[n+5]+16)`
-/

namespace A298257.P12302246821484101966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298259 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A298257.P12302246821484101966

/-! ## A298257.P15104887258225913045

`A298259(A374007(n+1))+A025439(n)`
-/

namespace A298257.P15104887258225913045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298259 (A374007 (n + 1)).toNat + A025439 n

end

end A298257.P15104887258225913045

/-! ## A298257.P10634892770716860628

`or(A065718(n), A298259(A374007(n+1)))`
-/

namespace A298257.P10634892770716860628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065718 n) (A298259 (A374007 (n + 1)).toNat)

end

end A298257.P10634892770716860628

/-! ## A298257.P6436427787694249962

`A298259(A374007(n+1))%A384400(n+1)`
-/

namespace A298257.P6436427787694249962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298259 (A374007 (n + 1)).toNat) (A384400 (n + 1))

end

end A298257.P6436427787694249962

/-! ## A298257.P7901324171279940052

`A257993(2*n+5)*A298259(A000217(n+5)+6)`
-/

namespace A298257.P7901324171279940052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (2 * n + 5) * A298259 (A000217 (n + 5) + 6).toNat

end

end A298257.P7901324171279940052

/-!
# A298258: Number of nX7 0..1 arrays with every element equal to 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298258, there is no canonical definition to state claims against.
-/

/-! ## A298258.P3948179219381148915

`A298259(A374008(n+1))`
-/

namespace A298258.P3948179219381148915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298259 (A374008 (n + 1)).toNat

end

end A298258.P3948179219381148915

/-! ## A298258.P4540017941922063061

`A298259(A167487(n+5))`
-/

namespace A298258.P4540017941922063061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298259 (A167487 (n + 5)).toNat

end

end A298258.P4540017941922063061

/-! ## A298258.P3522313448114266360

`A298259(A056119(n)+28)`
-/

namespace A298258.P3522313448114266360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298259 (A056119 n + 28).toNat

end

end A298258.P3522313448114266360

/-! ## A298258.P15126491545316134752

`A298259(eq[11, A066657(n)])`
-/

namespace A298258.P15126491545316134752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298259 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298258.P15126491545316134752

/-! ## A298258.P16621049353164917079

`A298259(A167499(n+5)+2)`
-/

namespace A298258.P16621049353164917079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298259 (A167499 (n + 5) + 2).toNat

end

end A298258.P16621049353164917079

/-!
# A298259: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2, 3, 5 or 8 king-move adjacent elements, with upper left element zero.

The programs for A298259, there is no canonical definition to state claims against.
-/

/-! ## A298259.P9385591416377335073

`A097449(A298930(n+1))`
-/

namespace A298259.P9385591416377335073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097449 (A298930 (n + 1)).toNat

end

end A298259.P9385591416377335073

/-! ## A298259.P13564382207956270923

`A298930(n+1)%A392703(n)`
-/

namespace A298259.P13564382207956270923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298930 (n + 1)) (A392703 n)

end

end A298259.P13564382207956270923

/-! ## A298259.P17006078345315466289

`and(A059960(n+1), A298930(n+1))`
-/

namespace A298259.P17006078345315466289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059960 (n + 1)) (A298930 (n + 1))

end

end A298259.P17006078345315466289

/-! ## A298259.P15802726111937114691

`and(A298930(n+1), A349820(n+1))`
-/

namespace A298259.P15802726111937114691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A298930 (n + 1)) (A349820 (n + 1))

end

end A298259.P15802726111937114691

/-!
# A298267: a(n) is the maximum number of heptiamonds in a hexagon of order n.

The programs for A298267, the canonical program `A298267.P2415672189885152104` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298267 has offset 0).

The definition of A298267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298267.P5075926535203247992

`floor(6/7*(n+1)²)`
-/

namespace A298267.P5075926535203247992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 : ℚ) / 7 * ((n + 1) ^ 2 : ℚ)⌋

end

end A298267.P5075926535203247992

namespace A298267

/-- `floor(6/7*(n+1)²)` -/
def P5075926535203247992.Spec : Prop :=
  ∀ n, P5075926535203247992.a n = A298267 n

end A298267

/-! ## A298267.P2415672189885152104

`2*a(n-1)-a(n-2)+a(n-7)-2*a(n-8)+a(n-9)` with `a(0)=0, a(1)=3, a(2)=7, a(3)=13, a(4)=21, a(5)=30, a(6)=42, a(7)=54, a(8)=69`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A298267

/-- `2*a(n-1)-a(n-2)+a(n-7)-2*a(n-8)+a(n-9)` -/
def P2415672189885152104.Spec : Prop :=
  ∀ n, P2415672189885152104.a n = A298267 n

theorem P2415672189885152104.correct : P2415672189885152104.Spec := by
  intro n
  simp only [A298267]

end A298267

/-! ## A298267.P4069075509187968199

`(n+1)²-Δ[A175822(n)]`
-/

namespace A298267.P4069075509187968199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (f1 (n + 1) - f1 n)

end

end A298267.P4069075509187968199

namespace A298267

/-- `(n+1)²-Δ[A175822(n)]` -/
def P4069075509187968199.Spec : Prop :=
  ∀ n, P4069075509187968199.a n = A298267 n

end A298267

/-! ## A298267.P16472775802602724604

`(n+1)²-A036405(n+1)`
-/

namespace A298267.P16472775802602724604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A036405 (n + 1)

end

end A298267.P16472775802602724604

namespace A298267

/-- `(n+1)²-A036405(n+1)` -/
def P16472775802602724604.Spec : Prop :=
  ∀ n, P16472775802602724604.a n = A298267 n

end A298267

/-! ## A298267.P13540083031576647495

`∑[2*n+1-A242062(2*n+1)]`
-/

namespace A298267.P13540083031576647495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A242062 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298267.P13540083031576647495

namespace A298267

/-- `∑[2*n+1-A242062(2*n+1)]` -/
def P13540083031576647495.Spec : Prop :=
  ∀ n, P13540083031576647495.a n = A298267 n

end A298267

/-! ## A298267.P5081842287358644859

`A227849(2*(n+1))/2`
-/

namespace A298267.P5081842287358644859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227849 (2 * (n + 1)) : ℚ) / 2

end

end A298267.P5081842287358644859

namespace A298267

/-- `A227849(2*(n+1))/2` -/
def P5081842287358644859.Spec : Prop :=
  ∀ n, P5081842287358644859.a n = (A298267 n : ℚ)

end A298267

/-! ## A298267.P15111222428867806572

`Δ[∑[A227849(2*n)]/2]`
-/

namespace A298267.P15111222428867806572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227849 (2 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298267.P15111222428867806572

namespace A298267

/-- `Δ[∑[A227849(2*n)]/2]` -/
def P15111222428867806572.Spec : Prop :=
  ∀ n, P15111222428867806572.a n = (A298267 n : ℚ)

end A298267

/-! ## A298267.P3173816612646457546

`A000217(2*n+1)-(A011867(3*n)+A000217(n+1))`
-/

namespace A298267.P3173816612646457546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1) - (A011867 (3 * n) + A000217 (n + 1))

end

end A298267.P3173816612646457546

namespace A298267

/-- `A000217(2*n+1)-(A011867(3*n)+A000217(n+1))` -/
def P3173816612646457546.Spec : Prop :=
  ∀ n, P3173816612646457546.a n = A298267 n

end A298267

/-! ## A298267.P11714020500385197181

`∑[A072229(3*(n+1))]`
-/

namespace A298267.P11714020500385197181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072229 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298267.P11714020500385197181

namespace A298267

/-- `∑[A072229(3*(n+1))]` -/
def P11714020500385197181.Spec : Prop :=
  ∀ n, P11714020500385197181.a n = A298267 n

end A298267

/-! ## A298267.P9268318461352308936

`∑[3*n]-A174738(3*n+2)`
-/

namespace A298267.P9268318461352308936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A174738 (3 * n + 2)

end

end A298267.P9268318461352308936

namespace A298267

/-- `∑[3*n]-A174738(3*n+2)` -/
def P9268318461352308936.Spec : Prop :=
  ∀ n, P9268318461352308936.a n = A298267 n

end A298267

/-! ## A298267.P8026052411558743616

`∑[A242062(2*(6*n+3))]`
-/

namespace A298267.P8026052411558743616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (2 * (6 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298267.P8026052411558743616

namespace A298267

/-- `∑[A242062(2*(6*n+3))]` -/
def P8026052411558743616.Spec : Prop :=
  ∀ n, P8026052411558743616.a n = A298267 n

end A298267

/-! ## A298267.P10548633095802209821

`A025829(A017581(n))`
-/

namespace A298267.P10548633095802209821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025829 (A017581 n).toNat

end

end A298267.P10548633095802209821

namespace A298267

/-- `A025829(A017581(n))` -/
def P10548633095802209821.Spec : Prop :=
  ∀ n, P10548633095802209821.a n = A298267 n

end A298267

/-! ## A298267.P15173599604116858166

`A025897(A063162(n+1))`
-/

namespace A298267.P15173599604116858166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 (A063162 (n + 1)).toNat

end

end A298267.P15173599604116858166

namespace A298267

/-- `A025897(A063162(n+1))` -/
def P15173599604116858166.Spec : Prop :=
  ∀ n, P15173599604116858166.a n = A298267 n

end A298267

/-! ## A298267.P237662000524402332

`A025897(A350052(n))`
-/

namespace A298267.P237662000524402332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 (A350052 n).toNat

end

end A298267.P237662000524402332

namespace A298267

/-- `A025897(A350052(n))` -/
def P237662000524402332.Spec : Prop :=
  ∀ n, P237662000524402332.a n = A298267 n

end A298267

/-! ## A298267.P13761618781183966137

`ceil((A134067(n)%4+2*n+2)*3*n/7)`
-/

namespace A298267.P13761618781183966137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Int.tmod (A134067 n) 4 + (2 * n : ℤ) + 2) * (3 * n : ℤ) : ℚ) / 7⌉

end

end A298267.P13761618781183966137

namespace A298267

/-- `ceil((A134067(n)%4+2*n+2)*3*n/7)` -/
def P13761618781183966137.Spec : Prop :=
  ∀ n, P13761618781183966137.a n = A298267 n

end A298267

/-! ## A298267.P12711935182886222849

`record[A202306(n)²-n]`
-/

namespace A298267.P12711935182886222849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202306 n ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298267.P12711935182886222849

namespace A298267

/-- `record[A202306(n)²-n]` -/
def P12711935182886222849.Spec : Prop :=
  ∀ n, P12711935182886222849.a n = A298267 n

end A298267

/-! ## A298267.P15808068043092356022

`ceil((∑[2*4^n]%4+2*n+2)*3*n/7)`
-/

namespace A298267.P15808068043092356022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((((∑ j ∈ Finset.range (n + 1), f1 j) % 4 + 2 * n + 2) * (3 * n) : ℕ) : ℚ) / 7⌉

end

end A298267.P15808068043092356022

namespace A298267

/-- `ceil((∑[2*4^n]%4+2*n+2)*3*n/7)` -/
def P15808068043092356022.Spec : Prop :=
  ∀ n, P15808068043092356022.a n = A298267 n

end A298267

/-! ## A298267.P9011560425369085600

`A145569(n*(n+2))`
-/

namespace A298267.P9011560425369085600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (n * (n + 2))

end

end A298267.P9011560425369085600

namespace A298267

/-- `A145569(n*(n+2))` -/
def P9011560425369085600.Spec : Prop :=
  ∀ n, P9011560425369085600.a n = A298267 n

end A298267

/-!
# A298268: a(1) = 1, and for any n > 1, if n is the k-th number with greatest prime factor p, then a(n) is the k-th number with least prime factor p.

The programs for A298268, there is no canonical definition to state claims against.
-/

/-! ## A298268.P7489756188945589852

`A004151(A329044(n+1))%60`
-/

namespace A298268.P7489756188945589852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004151 (A329044 (n + 1)).toNat) 60

end

end A298268.P7489756188945589852

/-! ## A298268.P10209250291821922745

`A064989(A324886(n+1))%60`
-/

namespace A298268.P10209250291821922745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064989 (A324886 (n + 1)).toNat) 60

end

end A298268.P10209250291821922745

/-! ## A298268.P3556289249796949230

`A329044(n+1)%A242128(n+2)`
-/

namespace A298268.P3556289249796949230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329044 (n + 1)) (A242128 (n + 2))

end

end A298268.P3556289249796949230

/-! ## A298268.P18296084453282681357

`A329044(n+1)%A130574(A016885(n))`
-/

namespace A298268.P18296084453282681357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329044 (n + 1)) (A130574 (A016885 n).toNat)

end

end A298268.P18296084453282681357

/-! ## A298268.P12833191979961150901

`A085392(n+1)*A087039(A002417(n+1))`
-/

namespace A298268.P12833191979961150901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1) * A087039 (A002417 (n + 1)).toNat

end

end A298268.P12833191979961150901

/-!
# A298269: Number of partitions of the n-th tetrahedral number into tetrahedral numbers.

The programs for A298269, there is no canonical definition to state claims against.
-/

/-! ## A298269.P15226769941809996808

`A068980(A000292(n))`
-/

namespace A298269.P15226769941809996808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068980 (A000292 n).toNat

end

end A298269.P15226769941809996808

/-! ## A298269.P10749992000179931986

`A068980(∑[∑[n]])`
-/

namespace A298269.P10749992000179931986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068980 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298269.P10749992000179931986

/-! ## A298269.P7152660995136810484

`A058032(A149053(n))`
-/

namespace A298269.P7152660995136810484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058032 (A149053 n).toNat

end

end A298269.P7152660995136810484

/-! ## A298269.P8171518538224196409

`A264749(A151289(n))`
-/

namespace A298269.P8171518538224196409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A151289 n).toNat

end

end A298269.P8171518538224196409

/-!
# A298270: Triangular numbers that for some k are also the sum of the first k composites.

The programs for A298270, there is no canonical definition to state claims against.
-/

/-! ## A298270.P6271012909141463337

`∩[∑[n], A053767(n)]`
-/

namespace A298270.P6271012909141463337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A298270.P6271012909141463337

/-! ## A298270.P15676821164245143309

`∩[∑[n], A051349(n)-1]`
-/

namespace A298270.P15676821164245143309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A298270.P15676821164245143309

/-! ## A298270.P4370630353781046603

`∩[A175967(n+2)-2, ∑[n]]`
-/

namespace A298270.P4370630353781046603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 2) - 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A298270.P4370630353781046603

/-! ## A298270.P375242474985250492

`∩[∑[A018252(n+1)]-1, ∑[n]]`
-/

namespace A298270.P375242474985250492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = x) n

end

end A298270.P375242474985250492

/-!
# A298271: Expansion of x/((1 - x)*(1 - 322*x + x^2)).

The programs for A298271, the canonical program `A298271.P4561047088455179864` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298271 has offset 0).

The definition of A298271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298271.P4561047088455179864

`323*a(n-1)-323*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=323`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A298271

/-- `323*a(n-1)-323*a(n-2)+a(n-3)` -/
def P4561047088455179864.Spec : Prop :=
  ∀ n, P4561047088455179864.a n = A298271 n

theorem P4561047088455179864.correct : P4561047088455179864.Spec := by
  intro n
  simp only [A298271]

end A298271

/-! ## A298271.P11157278413917953360

`A157459(n+1)/72`
-/

namespace A298271.P11157278413917953360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157459 (n + 1) : ℚ) / 72

end

end A298271.P11157278413917953360

namespace A298271

/-- `A157459(n+1)/72` -/
def P11157278413917953360.Spec : Prop :=
  ∀ n, P11157278413917953360.a n = (A298271 n : ℚ)

end A298271

/-! ## A298271.P14079102944203322617

`A201003(n)/36`
-/

namespace A298271.P14079102944203322617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201003 n : ℚ) / 36

end

end A298271.P14079102944203322617

namespace A298271

/-- `A201003(n)/36` -/
def P14079102944203322617.Spec : Prop :=
  ∀ n, P14079102944203322617.a n = (A298271 n : ℚ)

end A298271

/-! ## A298271.P3912000733583506060

`A298101(n)-a(n-1)` with `a(0)=0`
-/

namespace A298271.P3912000733583506060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A298101 n - a (n - 1)

end

end A298271.P3912000733583506060

namespace A298271

/-- `A298101(n)-a(n-1)` -/
def P3912000733583506060.Spec : Prop :=
  ∀ n, P3912000733583506060.a n = A298271 n

end A298271

/-! ## A298271.P6342089557225254699

`∑[A000045(12*n)/4]/36`
-/

namespace A298271.P6342089557225254699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (12 * n) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 36

end

end A298271.P6342089557225254699

namespace A298271

/-- `∑[A000045(12*n)/4]/36` -/
def P6342089557225254699.Spec : Prop :=
  ∀ n, P6342089557225254699.a n = (A298271 n : ℚ)

end A298271

/-!
# A298274: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298274, there is no canonical definition to state claims against.
-/

/-! ## A298274.P8959896283118371754

`A298280(∑[4*n]+1)`
-/

namespace A298274.P8959896283118371754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298274.P8959896283118371754

/-! ## A298274.P7494561864757366779

`record[A003982(n)*A298280(n+1)]`
-/

namespace A298274.P7494561864757366779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A298280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298274.P7494561864757366779

/-! ## A298274.P16607978131723346208

`A298280(A001844(n))+A025465(n)`
-/

namespace A298274.P16607978131723346208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (A001844 n).toNat + A025465 n

end

end A298274.P16607978131723346208

/-! ## A298274.P9690704519277371601

`A298280(A001844(n))+A059995(n)`
-/

namespace A298274.P9690704519277371601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (A001844 n).toNat + A059995 n

end

end A298274.P9690704519277371601

/-! ## A298274.P9670398846676137605

`A298280(A001844(n))+A064458(n)`
-/

namespace A298274.P9670398846676137605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (A001844 n).toNat + A064458 n

end

end A298274.P9670398846676137605

/-!
# A298275: Number of nX3 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298275, there is no canonical definition to state claims against.
-/

/-! ## A298275.P3785832493995635954

`A298280(∑[n+2]+4)`
-/

namespace A298275.P3785832493995635954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298275.P3785832493995635954

/-! ## A298275.P3105190779637850552

`A298280(A167614(n+1))+A165878(n)`
-/

namespace A298275.P3105190779637850552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (A167614 (n + 1)).toNat + A165878 n

end

end A298275.P3105190779637850552

/-! ## A298275.P11589558906906931362

`A298280(A167614(n+1))+A185255(n)`
-/

namespace A298275.P11589558906906931362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (A167614 (n + 1)).toNat + A185255 n

end

end A298275.P11589558906906931362

/-! ## A298275.P2768222461818469166

`A278657(n)*A298280(A167614(n+1))`
-/

namespace A298275.P2768222461818469166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n * A298280 (A167614 (n + 1)).toNat

end

end A298275.P2768222461818469166

/-! ## A298275.P874342838929301103

`A298280(A167614(n+1))^A178334(n)`
-/

namespace A298275.P874342838929301103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298280 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A298275.P874342838929301103

/-!
# A298276: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298276, there is no canonical definition to state claims against.
-/

/-! ## A298276.P14199110841720903327

`A298280(∑[n+3]+7)`
-/

namespace A298276.P14199110841720903327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298276.P14199110841720903327

/-! ## A298276.P17289592082352637791

`A298280(A000124(n+3)+3)+A000007(2*(n+2))`
-/

namespace A298276.P17289592082352637791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (A000124 (n + 3) + 3).toNat + A000007 (2 * (n + 2))

end

end A298276.P17289592082352637791

/-! ## A298276.P9207185793386971388

`A298280(A027379(n+2))%A249457(n)`
-/

namespace A298276.P9207185793386971388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298280 (A027379 (n + 2)).toNat) (A249457 n)

end

end A298276.P9207185793386971388

/-! ## A298276.P829585682715063648

`A298280(A141214(n+1))+A000007(n+2)`
-/

namespace A298276.P829585682715063648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (A141214 (n + 1)).toNat + A000007 (n + 2)

end

end A298276.P829585682715063648

/-!
# A298277: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298277, there is no canonical definition to state claims against.
-/

/-! ## A298277.P5753016196629965276

`A298280(A374005(n+1))`
-/

namespace A298277.P5753016196629965276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (A374005 (n + 1)).toNat

end

end A298277.P5753016196629965276

/-! ## A298277.P3536136373649105650

`A298280(A155212(n)+13)`
-/

namespace A298277.P3536136373649105650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (A155212 n + 13).toNat

end

end A298277.P3536136373649105650

/-! ## A298277.P7121860312320006338

`A298280(eq[7, A066657(n)])`
-/

namespace A298277.P7121860312320006338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298277.P7121860312320006338

/-! ## A298277.P14362317161038247656

`A298280(eq[6, A131818(n+1)])`
-/

namespace A298277.P14362317161038247656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298277.P14362317161038247656

/-! ## A298277.P8654872394620030634

`A298280(A167499(n+2)+n+4)`
-/

namespace A298277.P8654872394620030634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (A167499 (n + 2) + (n + 4 : ℤ)).toNat

end

end A298277.P8654872394620030634

/-!
# A298278: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298278, there is no canonical definition to state claims against.
-/

/-! ## A298278.P15556087181451125269

`A298280(A374007(n+1))`
-/

namespace A298278.P15556087181451125269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (A374007 (n + 1)).toNat

end

end A298278.P15556087181451125269

/-! ## A298278.P12044198356306334496

`A298280(eq[7, A131818(n+1)])`
-/

namespace A298278.P12044198356306334496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298278.P12044198356306334496

/-! ## A298278.P3622119807900762214

`A298280(eq[3, A219347(n)])`
-/

namespace A298278.P3622119807900762214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298278.P3622119807900762214

/-! ## A298278.P10835151026289345424

`A298280(eq[5, A193592(n)])`
-/

namespace A298278.P10835151026289345424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298278.P10835151026289345424

/-! ## A298278.P4121158647866534960

`A298280(eq[6, A200370(n+1)])`
-/

namespace A298278.P4121158647866534960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298278.P4121158647866534960

/-!
# A298279: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298279, there is no canonical definition to state claims against.
-/

/-! ## A298279.P10734038244184807316

`A298280(A374008(n+1))`
-/

namespace A298279.P10734038244184807316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (A374008 (n + 1)).toNat

end

end A298279.P10734038244184807316

/-! ## A298279.P10811294659549831476

`A298280(eq[8, A131818(n+1)])`
-/

namespace A298279.P10811294659549831476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298279.P10811294659549831476

/-! ## A298279.P9093438478757973439

`A298280(eq[4, A219347(n)])`
-/

namespace A298279.P9093438478757973439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298279.P9093438478757973439

/-! ## A298279.P9244436157935126611

`A298280(eq[6, A193592(n)])`
-/

namespace A298279.P9244436157935126611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298279.P9244436157935126611

/-! ## A298279.P3748505466927889016

`A298280(eq[7, A200370(n+1)])`
-/

namespace A298279.P3748505466927889016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298280 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298279.P3748505466927889016

/-!
# A298280: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 king-move adjacent elements, with upper left element zero.

The programs for A298280, there is no canonical definition to state claims against.
-/

/-! ## A298280.P11462838290537349764

`A299142(n+1)-A256974(A001263(n+1))`
-/

namespace A298280.P11462838290537349764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (n + 1) - A256974 (A001263 (n + 1)).toNat

end

end A298280.P11462838290537349764

/-! ## A298280.P1096877929170587026

`A299373(n+1)-A342770(A001263(n+1))`
-/

namespace A298280.P1096877929170587026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (n + 1) - A342770 (A001263 (n + 1)).toNat

end

end A298280.P1096877929170587026

/-! ## A298280.P5640548412523346242

`A299373(n+1)-A069283(A301443(n+1))`
-/

namespace A298280.P5640548412523346242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299373 (n + 1) - A069283 (A301443 (n + 1)).toNat

end

end A298280.P5640548412523346242

/-! ## A298280.P784231598351083645

`A299142(A000005(2^n))`
-/

namespace A298280.P784231598351083645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299142 (A000005 (2 ^ n)).toNat

end

end A298280.P784231598351083645

/-! ## A298280.P3098114357957513861

`A056926(A299142(n+1)²)`
-/

namespace A298280.P3098114357957513861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A299142 (n + 1) ^ 2).toNat

end

end A298280.P3098114357957513861

/-!
# A298281: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298281, there is no canonical definition to state claims against.
-/

/-! ## A298281.P17256799511624244628

`A298287(∑[4*n]+1)`
-/

namespace A298281.P17256799511624244628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298281.P17256799511624244628

/-! ## A298281.P17999607347655507119

`record[A003982(n)*A298287(n+1)]`
-/

namespace A298281.P17999607347655507119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A298287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298281.P17999607347655507119

/-! ## A298281.P16461982435481949995

`A036225(n)*A298287(A001844(n))`
-/

namespace A298281.P16461982435481949995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A298287 (A001844 n).toNat

end

end A298281.P16461982435481949995

/-! ## A298281.P11241086483968440793

`lcm(A033999(n), A298287(A001844(n)))`
-/

namespace A298281.P11241086483968440793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A298287 (A001844 n).toNat)

end

end A298281.P11241086483968440793

/-! ## A298281.P4250066786881898036

`or(A000007(n), A298287(A001844(n)))`
-/

namespace A298281.P4250066786881898036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A298287 (A001844 n).toNat)

end

end A298281.P4250066786881898036

/-!
# A298282: Number of n X 3 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298282, there is no canonical definition to state claims against.
-/

/-! ## A298282.P12606898310315985530

`A298287(∑[n+2]+4)`
-/

namespace A298282.P12606898310315985530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298282.P12606898310315985530

/-! ## A298282.P5210766506060756651

`A299359(∑[n+2]+4)`
-/

namespace A298282.P5210766506060756651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298282.P5210766506060756651

/-! ## A298282.P7014895923400055109

`A298287(A167614(n+1))+A185284(n)`
-/

namespace A298282.P7014895923400055109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (A167614 (n + 1)).toNat + A185284 n

end

end A298282.P7014895923400055109

/-! ## A298282.P10640847812272224890

`A299359(A167614(n+1))+A184946(n)`
-/

namespace A298282.P10640847812272224890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (A167614 (n + 1)).toNat + A184946 n

end

end A298282.P10640847812272224890

/-! ## A298282.P13288108616154741801

`A036225(n)*A298287(A167614(n+1))`
-/

namespace A298282.P13288108616154741801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A298287 (A167614 (n + 1)).toNat

end

end A298282.P13288108616154741801

/-!
# A298283: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298283, there is no canonical definition to state claims against.
-/

/-! ## A298283.P14848873715143159918

`A298287(∑[n+3]+7)`
-/

namespace A298283.P14848873715143159918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298283.P14848873715143159918

/-! ## A298283.P7322488395153447694

`A299359(∑[n+3]+7)`
-/

namespace A298283.P7322488395153447694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298283.P7322488395153447694

/-! ## A298283.P10039099425067800097

`or(char[1], A299359(A141214(n)+7))`
-/

namespace A298283.P10039099425067800097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A299359 (A141214 n + 7).toNat)

end

end A298283.P10039099425067800097

/-! ## A298283.P6971429814778810777

`lcm(A033999(n), A299359(A052905(n)+9))`
-/

namespace A298283.P6971429814778810777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A299359 (A052905 n + 9).toNat)

end

end A298283.P6971429814778810777

/-! ## A298283.P12282764133399687294

`A299359(A141214(n)+7)%A299356(n+1)`
-/

namespace A298283.P12282764133399687294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299359 (A141214 n + 7).toNat) (A299356 (n + 1))

end

end A298283.P12282764133399687294

/-!
# A298284: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298284, there is no canonical definition to state claims against.
-/

/-! ## A298284.P15969525388378340407

`A298287(A167499(n+3))`
-/

namespace A298284.P15969525388378340407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (A167499 (n + 3)).toNat

end

end A298284.P15969525388378340407

/-! ## A298284.P12090034865420248692

`A298287(A056000(n)+15)`
-/

namespace A298284.P12090034865420248692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (A056000 n + 15).toNat

end

end A298284.P12090034865420248692

/-! ## A298284.P7393474461936972396

`A298287(A000217(n+4)+5)`
-/

namespace A298284.P7393474461936972396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (A000217 (n + 4) + 5).toNat

end

end A298284.P7393474461936972396

/-! ## A298284.P10491251550670256267

`A298287(A374005(n+1))`
-/

namespace A298284.P10491251550670256267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (A374005 (n + 1)).toNat

end

end A298284.P10491251550670256267

/-! ## A298284.P12388442341141921606

`A298287(A046691(n+3))`
-/

namespace A298284.P12388442341141921606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (A046691 (n + 3)).toNat

end

end A298284.P12388442341141921606

/-!
# A298285: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298285, there is no canonical definition to state claims against.
-/

/-! ## A298285.P11435699089577710195

`A298287(A056115(n)+21)`
-/

namespace A298285.P11435699089577710195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (A056115 n + 21).toNat

end

end A298285.P11435699089577710195

/-! ## A298285.P13308862866576483648

`A298287(A167499(n+4)+1)`
-/

namespace A298285.P13308862866576483648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (A167499 (n + 4) + 1).toNat

end

end A298285.P13308862866576483648

/-! ## A298285.P9157388972541782490

`A298287(A112355(n+3)+6)`
-/

namespace A298285.P9157388972541782490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (A112355 (n + 3) + 6).toNat

end

end A298285.P9157388972541782490

/-! ## A298285.P5749456295441766860

`A298287(A000217(n+5)+6)`
-/

namespace A298285.P5749456295441766860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (A000217 (n + 5) + 6).toNat

end

end A298285.P5749456295441766860

/-! ## A298285.P10782612411370386241

`A298287(A374007(n+1))`
-/

namespace A298285.P10782612411370386241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (A374007 (n + 1)).toNat

end

end A298285.P10782612411370386241

/-!
# A298286: Number of n X 7 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298286, there is no canonical definition to state claims against.
-/

/-! ## A298286.P7326795770233916436

`A298287(A112355(n+4)+7)`
-/

namespace A298286.P7326795770233916436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (A112355 (n + 4) + 7).toNat

end

end A298286.P7326795770233916436

/-! ## A298286.P247532519762884557

`A298287(A000217(n+6)+7)`
-/

namespace A298286.P247532519762884557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (A000217 (n + 6) + 7).toNat

end

end A298286.P247532519762884557

/-! ## A298286.P1926386776344231151

`A298287(A374008(n+1))`
-/

namespace A298286.P1926386776344231151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (A374008 (n + 1)).toNat

end

end A298286.P1926386776344231151

/-! ## A298286.P2846720836574400539

`A298287(A055999(n+4))`
-/

namespace A298286.P2846720836574400539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (A055999 (n + 4)).toNat

end

end A298286.P2846720836574400539

/-! ## A298286.P7851932000545025673

`A298287(A167487(n+6)-13)`
-/

namespace A298286.P7851932000545025673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298287 (A167487 (n + 6) - 13).toNat

end

end A298286.P7851932000545025673

/-!
# A298287: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298287, there is no canonical definition to state claims against.
-/

/-! ## A298287.P11101294480782271936

`A299359(∑[A010894(n)!])`
-/

namespace A298287.P11101294480782271936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298287.P11101294480782271936

/-! ## A298287.P2062684317346185749

`A299359(∑[A036225(n)^13])`
-/

namespace A298287.P2062684317346185749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n ^ 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298287.P2062684317346185749

/-! ## A298287.P18146648503857681206

`A299359((n+1)^A036225(n))`
-/

namespace A298287.P18146648503857681206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A036225 n : ℤ))).toNat

end

end A298287.P18146648503857681206

/-! ## A298287.P8196395886529277199

`A299359(n+1)^A010894(n)!`
-/

namespace A298287.P8196395886529277199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299359 (n + 1) ^ Nat.factorial (A010894 (n + 21)).toNat

end

end A298287.P8196395886529277199

/-! ## A298287.P11276676184598299542

`A299359(n+1)%A213321(n+1)`
-/

namespace A298287.P11276676184598299542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299359 (n + 1)) (A213321 (n + 1))

end

end A298287.P11276676184598299542

/-!
# A298288: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298288, there is no canonical definition to state claims against.
-/

/-! ## A298288.P6582446032537066480

`A298294(∑[4*n]+1)`
-/

namespace A298288.P6582446032537066480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298288.P6582446032537066480

/-! ## A298288.P2009194028521637328

`record[A298294(A152271(n²))]`
-/

namespace A298288.P2009194028521637328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298288.P2009194028521637328

/-! ## A298288.P18188182465400195482

`record[A298294(Δ[A235355(n)])]`
-/

namespace A298288.P18188182465400195482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298288.P18188182465400195482

/-! ## A298288.P597355955915105929

`record[A298294(A330613(n+1))]`
-/

namespace A298288.P597355955915105929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298288.P597355955915105929

/-! ## A298288.P9663827401309319233

`A298294(A001844(n))+char[15]`
-/

namespace A298288.P9663827401309319233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298288.P9663827401309319233

/-!
# A298289: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298289, there is no canonical definition to state claims against.
-/

/-! ## A298289.P11901974907545670518

`A299388(∑[n+2]+4)`
-/

namespace A298289.P11901974907545670518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298289.P11901974907545670518

/-! ## A298289.P9448774513909532152

`or(char[1], A299388(A046691(n)+7))`
-/

namespace A298289.P9448774513909532152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A299388 (A046691 n + 7).toNat)

end

end A298289.P9448774513909532152

/-! ## A298289.P847856497117640799

`lcm(1-and(2, n), A299388(A167614(n+1)))`
-/

namespace A298289.P847856497117640799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A299388 (A167614 (n + 1)).toNat)

end

end A298289.P847856497117640799

/-! ## A298289.P4846005490486912087

`A299388(A167614(n+1))+A025466(n)`
-/

namespace A298289.P4846005490486912087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A167614 (n + 1)).toNat + A025466 n

end

end A298289.P4846005490486912087

/-! ## A298289.P4304766234983632784

`A299388(A167614(n+1))+A185245(n)`
-/

namespace A298289.P4304766234983632784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A167614 (n + 1)).toNat + A185245 n

end

end A298289.P4304766234983632784

/-!
# A298290: Number of n X 4 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298290, there is no canonical definition to state claims against.
-/

/-! ## A298290.P14387986648584187519

`A299388(∑[n+3]+7)`
-/

namespace A298290.P14387986648584187519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298290.P14387986648584187519

/-! ## A298290.P17814524300591557859

`A299388(A166136(n+2)-2)+char[23]`
-/

namespace A298290.P17814524300591557859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (A166136 (n + 2) - 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298290.P17814524300591557859

/-! ## A298290.P7078658647525938289

`A007318(C(2, n))*A299388(A166136(n+2)-2)`
-/

namespace A298290.P7078658647525938289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A299388 (A166136 (n + 2) - 2).toNat

end

end A298290.P7078658647525938289

/-! ## A298290.P861995409774920336

`ceil(1/A000041(n))*A299388(A166136(n+2)-2)`
-/

namespace A298290.P861995409774920336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * A299388 (A166136 (n + 2) - 2).toNat

end

end A298290.P861995409774920336

/-! ## A298290.P3794040606394103857

`A298294(∑[2*a(n-1)-a(n-2)])` with `a(0)=10, a(1)=4, a(2)=5`
-/

namespace A298290.P3794040606394103857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, 4, 5] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298290.P3794040606394103857

/-!
# A298291: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298291, there is no canonical definition to state claims against.
-/

/-! ## A298291.P18131546230258060904

`A298294(∑[n+4]+11)`
-/

namespace A298291.P18131546230258060904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A298291.P18131546230258060904

/-! ## A298291.P15079916336665247752

`A298294(A000217(n+4)+5)+char[20]`
-/

namespace A298291.P15079916336665247752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (A000217 (n + 4) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298291.P15079916336665247752

/-! ## A298291.P2626348318423874964

`A007318(C(2, n))*A298294(A000217(n+4)+5)`
-/

namespace A298291.P2626348318423874964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298294 (A000217 (n + 4) + 5).toNat

end

end A298291.P2626348318423874964

/-! ## A298291.P2276877143980804668

`A007318(and(1, -n))*A298294(A000217(n+4)+5)`
-/

namespace A298291.P2276877143980804668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A298294 (A000217 (n + 4) + 5).toNat

end

end A298291.P2276877143980804668

/-! ## A298291.P16320828945337994944

`A000041(C(2, n+2))*A298294(A000217(n+4)+5)`
-/

namespace A298291.P16320828945337994944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A298294 (A000217 (n + 4) + 5).toNat

end

end A298291.P16320828945337994944

/-!
# A298292: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298292, there is no canonical definition to state claims against.
-/

/-! ## A298292.P14954474038740777345

`A298294(A056115(n)+21)`
-/

namespace A298292.P14954474038740777345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (A056115 n + 21).toNat

end

end A298292.P14954474038740777345

/-! ## A298292.P12669794411924486506

`A298294(∑[A020710(n)]+16)`
-/

namespace A298292.P12669794411924486506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A298292.P12669794411924486506

/-! ## A298292.P17091833985761068082

`A298294(A167499(n+4)+1)`
-/

namespace A298292.P17091833985761068082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (A167499 (n + 4) + 1).toNat

end

end A298292.P17091833985761068082

/-! ## A298292.P11628787205917066560

`A298294(A000124(n+5)+5)`
-/

namespace A298292.P11628787205917066560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (A000124 (n + 5) + 5).toNat

end

end A298292.P11628787205917066560

/-! ## A298292.P10558896316401086525

`A298294(A000096(n+4)+7)`
-/

namespace A298292.P10558896316401086525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (A000096 (n + 4) + 7).toNat

end

end A298292.P10558896316401086525

/-!
# A298293: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298293, there is no canonical definition to state claims against.
-/

/-! ## A298293.P18341058855350349058

`A298294(∑[n+6]+22)`
-/

namespace A298293.P18341058855350349058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298294 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A298293.P18341058855350349058

/-! ## A298293.P5812966179054986482

`or(char[1], A298294(A000124(n+6)+6))`
-/

namespace A298293.P5812966179054986482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298294 (A000124 (n + 6) + 6).toNat)

end

end A298293.P5812966179054986482

/-! ## A298293.P17876766046574297580

`A298294(A000124(n+6)+6)%A000108(n+8)`
-/

namespace A298293.P17876766046574297580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298294 (A000124 (n + 6) + 6).toNat) (A000108 (n + 8))

end

end A298293.P17876766046574297580

/-! ## A298293.P10269140777574663671

`A007318(C(2, n))*A298294(A000124(n+6)+6)`
-/

namespace A298293.P10269140777574663671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298294 (A000124 (n + 6) + 6).toNat

end

end A298293.P10269140777574663671

/-! ## A298293.P609605958567319609

`A014963(10*(n+1))*A298294(A000124(n+6)+6)`
-/

namespace A298293.P609605958567319609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A298294 (A000124 (n + 6) + 6).toNat

end

end A298293.P609605958567319609

/-!
# A298294: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298294, there is no canonical definition to state claims against.
-/

/-! ## A298294.P10951856761514112476

`A299388(n+1)-A025466(A299905(n))`
-/

namespace A298294.P10951856761514112476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (n + 1) - A025466 (A299905 n).toNat

end

end A298294.P10951856761514112476

/-! ## A298294.P15220686909289346773

`A299388(n+1)-A002265(A010894(n))`
-/

namespace A298294.P15220686909289346773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (n + 1) - A002265 (A010894 (n + 21)).toNat

end

end A298294.P15220686909289346773

/-! ## A298294.P13850929134298534706

`A299388(∑[A010894(n)!])`
-/

namespace A298294.P13850929134298534706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298294.P13850929134298534706

/-! ## A298294.P14068108544628589659

`A299388(A010894(n)!+n)`
-/

namespace A298294.P14068108544628589659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (Nat.factorial (A010894 (n + 21)).toNat + n)

end

end A298294.P14068108544628589659

/-! ## A298294.P2739513189532296073

`A299388((n+1)^floor(sqrt(A076303(n+1))))`
-/

namespace A298294.P2739513189532296073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (Int.sqrt (A076303 (n + 1)) : ℤ))).toNat

end

end A298294.P2739513189532296073

/-!
# A298295: Solution a( ) of the complementary equation a(n) = a(0)*b(n) + a(1)*b(n-1), where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A298295, there is no canonical definition to state claims against.
-/

/-! ## A298295.P2005071496366896669

`eq[char[A298296(n)], A000007(n)]`
-/

namespace A298295.P2005071496366896669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298296 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298295.P2005071496366896669

/-! ## A298295.P17131405757574880398

`eq[char[A298296(n)], A000038(n)]`
-/

namespace A298295.P17131405757574880398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298296 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298295.P17131405757574880398

/-! ## A298295.P17519871980840681596

`eq[char[A298296(n)], A063667(n)]`
-/

namespace A298295.P17519871980840681596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298296 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298295.P17519871980840681596

/-! ## A298295.P7476874661320313290

`eq[char[A298296(n)], A049084(2*(n+1))]`
-/

namespace A298295.P7476874661320313290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298296 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298295.P7476874661320313290

/-! ## A298295.P4470768529300956817

`eq[char[A298296(n)], A151933(n)]`
-/

namespace A298295.P4470768529300956817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298296 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298295.P4470768529300956817

/-!
# A298296: Solution b( ) of the complementary equation a(n) = a(0)*b(n) + a(1)*b(n-1), where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (b(n)) is the increasing sequence of positive integers not in (a(n)). See Comments.

The programs for A298296, there is no canonical definition to state claims against.
-/

/-! ## A298296.P13505733418471004969

`eq[char[A298295(n)], A000007(n)]`
-/

namespace A298296.P13505733418471004969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298295 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298296.P13505733418471004969

/-! ## A298296.P12291272189280479634

`eq[char[A298295(n)], A151933(n)]`
-/

namespace A298296.P12291272189280479634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298295 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298296.P12291272189280479634

/-! ## A298296.P5573791749895009513

`∑[ceil(A338744(3*n+4)/A195031(n+3))]+2`
-/

namespace A298296.P5573791749895009513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A338744 (3 * n + 4) : ℚ) / (A195031 (n + 3) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A298296.P5573791749895009513

/-! ## A298296.P1924088709238712961

`lt[A375133(A151842(n)), A023443(n)]`
-/

namespace A298296.P1924088709238712961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375133 (A151842 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298296.P1924088709238712961

/-! ## A298296.P17082694773498341919

`lt[A123251(A123231(n+1)), A033873(n)]`
-/

namespace A298296.P17082694773498341919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123251 (A123231 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298296.P17082694773498341919

/-!
# A298297: Numbers k such that b(k+1) = b(k) + 1, where b = A298296.

The programs for A298297, there is no canonical definition to state claims against.
-/

/-! ## A298297.P17216622893930836725

`comp[A298298(n+1)-1]+1`
-/

namespace A298297.P17216622893930836725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298298 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A298297.P17216622893930836725

/-! ## A298297.P13896528553668617089

`eq[char[A298295(n+2)-(n+3)], A000007(n)]`
-/

namespace A298297.P13896528553668617089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298295 (n + 2) - (n + 3 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298297.P13896528553668617089

/-! ## A298297.P2822551797294621162

`eq[2, A125585(Δ[A298295(n)])]`
-/

namespace A298297.P2822551797294621162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298295 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125585 (f3 (n + 1) - f3 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298297.P2822551797294621162

/-! ## A298297.P6413905878589209882

`eq[char[A298298(n+1)], A151933(n)]`
-/

namespace A298297.P6413905878589209882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298298 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298297.P6413905878589209882

/-! ## A298297.P17426042020007827653

`eq[char[A298295(n+2)-(n+3)], A151933(n)]`
-/

namespace A298297.P17426042020007827653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298295 (n + 2) - (n + 3 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A298297.P17426042020007827653

/-!
# A298298: Numbers k such that b(k+1) = b(k) + 2, where b = A298296.

The programs for A298298, there is no canonical definition to state claims against.
-/

/-! ## A298298.P1283250031323410728

`A298295(n+2)-(n+3)`
-/

namespace A298298.P1283250031323410728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298295 (n + 2) - (n + 3 : ℤ)

end

end A298298.P1283250031323410728

/-! ## A298298.P14479051372360445870

`∑[A008554(Δ[A298295(n+1)])]`
-/

namespace A298298.P14479051372360445870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298295 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298298.P14479051372360445870

/-! ## A298298.P9243570596330262922

`∑[A023443(Δ[A298295(n+1)])]`
-/

namespace A298298.P9243570596330262922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298295 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298298.P9243570596330262922

/-! ## A298298.P11856385404250567814

`eq[5, Δ[A298295(n)]]`
-/

namespace A298298.P11856385404250567814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298295 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298298.P11856385404250567814

/-! ## A298298.P3746374372216297821

`A356660(n+1)+A213712(A324093(n+1))`
-/

namespace A298298.P3746374372216297821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356660 (n + 1) + A213712 (A324093 (n + 1)).toNat

end

end A298298.P3746374372216297821

/-!
# A298299: a(n) is the smallest b > 0 such that b^(2n) + 1 has all prime divisors p == 1 (mod 2n).

The programs for A298299, there is no canonical definition to state claims against.
-/

/-! ## A298299.P5296408955324674230

`A352597(2*(n+1))`
-/

namespace A298299.P5296408955324674230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352597 (2 * (n + 1))

end

end A298299.P5296408955324674230

