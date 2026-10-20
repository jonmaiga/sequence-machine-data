import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
# A162300: Number of reduced words of length n in the Weyl group D_13.

The programs for A162300, there is no canonical definition to state claims against.
-/

/-! ## A162300.P11085388454240506907

`A161859(n)-Δ[A185284(A165249(n+1))]`
-/

namespace A162300.P11085388454240506907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A165249 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161859 n - (f1 (n + 1) - f1 n)

end

end A162300.P11085388454240506907

/-!
# A162301: Number of reduced words of length n in the Weyl group D_14.

The programs for A162301, there is no canonical definition to state claims against.
-/

/-! ## A162301.P7846755829625160200

`A161862(n)-A185284(∑[A008624(n)])`
-/

namespace A162301.P7846755829625160200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161862 n - A185284 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162301.P7846755829625160200

/-!
# A162303: Product matrix [C(k,n-k)]*A001263.

The programs for A162303, there is no canonical definition to state claims against.
-/

/-! ## A162303.P11334975105246827008

`A112973(n)+A060952(A274487(n))`
-/

namespace A162303.P11334975105246827008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112973 n + A060952 (A274487 n).toNat

end

end A162303.P11334975105246827008

/-! ## A162303.P2847280666078244446

`A185284(A250167(n+1))+A112973(n)`
-/

namespace A162303.P2847280666078244446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A250167 (n + 1)).toNat + A112973 n

end

end A162303.P2847280666078244446

/-! ## A162303.P1943362625363221990

`A342707(A231246(n+1))+A112973(n)`
-/

namespace A162303.P1943362625363221990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342707 (A231246 (n + 1)).toNat + A112973 n

end

end A162303.P1943362625363221990

/-!
# A162304: Triangular numbers that contain exactly 3 different decimal digits.

The programs for A162304, there is no canonical definition to state claims against.
-/

/-! ## A162304.P15323396970077395001

`C(eq[3, A118668(n)]+1, 2)`
-/

namespace A162304.P15323396970077395001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) 2

end

end A162304.P15323396970077395001

/-! ## A162304.P7860310682947683239

`A000217(eq[3, A118668(n)])`
-/

namespace A162304.P7860310682947683239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A162304.P7860310682947683239

/-! ## A162304.P6169989654501011329

`A179865(eq[3, A118668(n)]+1)`
-/

namespace A162304.P6169989654501011329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A162304.P6169989654501011329

/-! ## A162304.P12646115667316072307

`A000124(eq[3, A118668(n)])-1`
-/

namespace A162304.P12646115667316072307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A162304.P12646115667316072307

/-! ## A162304.P16624863616100684131

`A133263(eq[3, A118668(n)])-2`
-/

namespace A162304.P16624863616100684131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 2

end

end A162304.P16624863616100684131

/-!
# A162305: Numbers n which have as substrings two of their proper positive divisors (except 1) so that the product of those divisors equals n.

The programs for A162305, there is no canonical definition to state claims against.
-/

/-! ## A162305.P2310107188871995962

`A046659(n+4)-A046665(A046662(n))`
-/

namespace A162305.P2310107188871995962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046659 (n + 4) - A046665 (A046662 n).toNat

end

end A162305.P2310107188871995962

/-!
# A162306: Irregular triangle in which row n contains the numbers <= n whose prime factors are a subset of prime factors of n.

The programs for A162306, the canonical program `A162306.P11821351337870936000` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162306 has offset 1).

The definition of A162306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1368 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162306.P11821351337870936000

`A002260(eq[1, A304569(n+1)]+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A162306

/-- `A002260(eq[1, A304569(n+1)]+1)` -/
def P11821351337870936000.Spec : Prop :=
  ∀ n, P11821351337870936000.a n = A162306 (n + 1)

theorem P11821351337870936000.correct : P11821351337870936000.Spec := by
  intro n
  simp only [A162306, Nat.add_sub_cancel]

end A162306

/-! ## A162306.P4021351369500239520

`A002260(record[(n+1)*A304569(n+1)])`
-/

namespace A162306.P4021351369500239520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A304569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A162306.P4021351369500239520

namespace A162306

/-- `A002260(record[(n+1)*A304569(n+1)])` -/
def P4021351369500239520.Spec : Prop :=
  ∀ n, P4021351369500239520.a n = A162306 (n + 1)

end A162306

/-! ## A162306.P1099538625038163767

`A002260(record[A014132(n+1)-A096133(n+1)])`
-/

namespace A162306.P1099538625038163767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) - A096133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A162306.P1099538625038163767

namespace A162306

/-- `A002260(record[A014132(n+1)-A096133(n+1)])` -/
def P1099538625038163767.Spec : Prop :=
  ∀ n, P1099538625038163767.a n = A162306 (n + 1)

end A162306

/-! ## A162306.P11611015257658843862

`A164306(record[A080036(n)-A096133(n+1)])`
-/

namespace A162306.P11611015257658843862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n - A096133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A162306.P11611015257658843862

namespace A162306

/-- `A164306(record[A080036(n)-A096133(n+1)])` -/
def P11611015257658843862.Spec : Prop :=
  ∀ n, P11611015257658843862.a n = A162306 (n + 1)

end A162306

/-! ## A162306.P14200654663409347003

`A002262(record[A014132(n+1)-A096133(n+1)])`
-/

namespace A162306.P14200654663409347003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) - A096133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A162306.P14200654663409347003

namespace A162306

/-- `A002262(record[A014132(n+1)-A096133(n+1)])` -/
def P14200654663409347003.Spec : Prop :=
  ∀ n, P14200654663409347003.a n = A162306 (n + 1)

end A162306

/-!
# A162307: Primes of the form k*(k+2)/3 - 2, k > 0.

The programs for A162307, the canonical program `A162307.P15037244518481063845` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162307 has offset 1).

The definition of A162307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162307.P15037244518481063845

`p?[ceil(n²/3)-3]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162307

/-- `p?[ceil(n²/3)-3]` -/
def P15037244518481063845.Spec : Prop :=
  ∀ n, P15037244518481063845.a n = A162307 (n + 1)

theorem P15037244518481063845.correct : P15037244518481063845.Spec := by
  intro n
  simp only [A162307, Nat.add_sub_cancel]

end A162307

/-! ## A162307.P14511084843255962836

`∏{d}[p?[floor((2*n)²/3)-2], #]`
-/

namespace A162307.P14511084843255962836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / 3⌋ - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A162307.P14511084843255962836

namespace A162307

/-- `∏{d}[p?[floor((2*n)²/3)-2], #]` -/
def P14511084843255962836.Spec : Prop :=
  ∀ n, (P14511084843255962836.a n : ℤ) = A162307 (n + 1)

end A162307

/-! ## A162307.P9239422623576456595

`or(1, p?[A115285(n)-4])`
-/

namespace A162307.P9239422623576456595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115285 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A162307.P9239422623576456595

namespace A162307

/-- `or(1, p?[A115285(n)-4])` -/
def P9239422623576456595.Spec : Prop :=
  ∀ n, P9239422623576456595.a n = A162307 (n + 1)

end A162307

/-! ## A162307.P6257903131713114069

`or(1, p?[A001082(n+1)-2])`
-/

namespace A162307.P6257903131713114069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A162307.P6257903131713114069

namespace A162307

/-- `or(1, p?[A001082(n+1)-2])` -/
def P6257903131713114069.Spec : Prop :=
  ∀ n, P6257903131713114069.a n = A162307 (n + 1)

end A162307

/-! ## A162307.P3471708395242930790

`∏{p}[p?[A001082(n+2)-2], #]`
-/

namespace A162307.P3471708395242930790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 2) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A162307.P3471708395242930790

namespace A162307

/-- `∏{p}[p?[A001082(n+2)-2], #]` -/
def P3471708395242930790.Spec : Prop :=
  ∀ n, (P3471708395242930790.a n : ℤ) = A162307 (n + 1)

end A162307

/-! ## A162307.P7148758733238422153

`abs(p?[A008810(n)-3]-1)+1`
-/

namespace A162307.P7148758733238422153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1| + 1

end

end A162307.P7148758733238422153

namespace A162307

/-- `abs(p?[A008810(n)-3]-1)+1` -/
def P7148758733238422153.Spec : Prop :=
  ∀ n, P7148758733238422153.a n = A162307 (n + 1)

end A162307

/-! ## A162307.P8168266832010327085

`lcm(log2(1/2), p?[A256320(n)-2])`
-/

namespace A162307.P8168266832010327085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A162307.P8168266832010327085

namespace A162307

/-- `lcm(log2(1/2), p?[A256320(n)-2])` -/
def P8168266832010327085.Spec : Prop :=
  ∀ n, (P8168266832010327085.a n : ℤ) = A162307 (n + 1)

end A162307

/-! ## A162307.P8651419422429014570

`A007318(C(2, n))*p?[A256320(n)-2]`
-/

namespace A162307.P8651419422429014570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162307.P8651419422429014570

namespace A162307

/-- `A007318(C(2, n))*p?[A256320(n)-2]` -/
def P8651419422429014570.Spec : Prop :=
  ∀ n, P8651419422429014570.a n = A162307 (n + 1)

end A162307

/-! ## A162307.P8187797268931602056

`A007318(C(2, n))*p?[A001082(n+1)-2]`
-/

namespace A162307.P8187797268931602056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162307.P8187797268931602056

namespace A162307

/-- `A007318(C(2, n))*p?[A001082(n+1)-2]` -/
def P8187797268931602056.Spec : Prop :=
  ∀ n, P8187797268931602056.a n = A162307 (n + 1)

end A162307

/-! ## A162307.P5163863294964184801

`p?[A001082(n+1)-2]^A007318(C(3, n))`
-/

namespace A162307.P5163863294964184801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A007318 (Nat.choose 3 n) : ℤ)

end

end A162307.P5163863294964184801

namespace A162307

/-- `p?[A001082(n+1)-2]^A007318(C(3, n))` -/
def P5163863294964184801.Spec : Prop :=
  ∀ n, P5163863294964184801.a n = (A162307 (n + 1) : ℚ)

end A162307

/-! ## A162307.P8541844939467962209

`A007318(and(1, -n))*p?[A001082(n+1)-2]`
-/

namespace A162307.P8541844939467962209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162307.P8541844939467962209

namespace A162307

/-- `A007318(and(1, -n))*p?[A001082(n+1)-2]` -/
def P8541844939467962209.Spec : Prop :=
  ∀ n, P8541844939467962209.a n = A162307 (n + 1)

end A162307

/-! ## A162307.P15299678580149287018

`A000010(C(2, n)!)*p?[A001082(n+1)-2]`
-/

namespace A162307.P15299678580149287018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162307.P15299678580149287018

namespace A162307

/-- `A000010(C(2, n)!)*p?[A001082(n+1)-2]` -/
def P15299678580149287018.Spec : Prop :=
  ∀ n, P15299678580149287018.a n = A162307 (n + 1)

end A162307

/-! ## A162307.P17975608868958572481

`p?[A001082(n+1)-2]+A008683(4*(n+1))`
-/

namespace A162307.P17975608868958572481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A162307.P17975608868958572481

namespace A162307

/-- `p?[A001082(n+1)-2]+A008683(4*(n+1))` -/
def P17975608868958572481.Spec : Prop :=
  ∀ n, P17975608868958572481.a n = A162307 (n + 1)

end A162307

/-! ## A162307.P6629626732383023910

`p?[A001082(n+1)-2]/A014963(12*(n+1))`
-/

namespace A162307.P6629626732383023910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A014963 (12 * (n + 1)) : ℚ)

end

end A162307.P6629626732383023910

namespace A162307

/-- `p?[A001082(n+1)-2]/A014963(12*(n+1))` -/
def P6629626732383023910.Spec : Prop :=
  ∀ n, P6629626732383023910.a n = (A162307 (n + 1) : ℚ)

end A162307

/-! ## A162307.P7950836060603546360

`p?[A001082(n+1)-2]+val(A000040(n+1), 4)`
-/

namespace A162307.P7950836060603546360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 4 : ℤ)

end

end A162307.P7950836060603546360

namespace A162307

/-- `p?[A001082(n+1)-2]+val(A000040(n+1), 4)` -/
def P7950836060603546360.Spec : Prop :=
  ∀ n, P7950836060603546360.a n = A162307 (n + 1)

end A162307

/-! ## A162307.P5202872789932270568

`A000108(C(2, n+2))*p?[A001082(n+1)-2]`
-/

namespace A162307.P5202872789932270568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162307.P5202872789932270568

namespace A162307

/-- `A000108(C(2, n+2))*p?[A001082(n+1)-2]` -/
def P5202872789932270568.Spec : Prop :=
  ∀ n, P5202872789932270568.a n = A162307 (n + 1)

end A162307

/-! ## A162307.P11997770567111153913

`p?[A001082(n+1)-2]/A000005(gcd(n, n+1))`
-/

namespace A162307.P11997770567111153913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A000005 (Nat.gcd n (n + 1)) : ℚ)

end

end A162307.P11997770567111153913

namespace A162307

/-- `p?[A001082(n+1)-2]/A000005(gcd(n, n+1))` -/
def P11997770567111153913.Spec : Prop :=
  ∀ n, P11997770567111153913.a n = (A162307 (n + 1) : ℚ)

end A162307

/-! ## A162307.P17678898070518448986

`p?[A001082(n+1)-2]+A001222(((-1)^n)²)`
-/

namespace A162307.P17678898070518448986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A001222 (((-1) ^ n) ^ 2).toNat

end

end A162307.P17678898070518448986

namespace A162307

/-- `p?[A001082(n+1)-2]+A001222(((-1)^n)²)` -/
def P17678898070518448986.Spec : Prop :=
  ∀ n, P17678898070518448986.a n = A162307 (n + 1)

end A162307

/-! ## A162307.P17515323933992035378

`p?[A001082(n+1)-2]*∏{e}[A006530(n+1), #]`
-/

namespace A162307.P17515323933992035378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

end

end A162307.P17515323933992035378

namespace A162307

/-- `p?[A001082(n+1)-2]*∏{e}[A006530(n+1), #]` -/
def P17515323933992035378.Spec : Prop :=
  ∀ n, P17515323933992035378.a n = A162307 (n + 1)

end A162307

/-! ## A162307.P1595274567465974248

`A007318(1-(-1)^n)*p?[A001082(n+1)-2]`
-/

namespace A162307.P1595274567465974248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (1 - (-1) ^ n).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162307.P1595274567465974248

namespace A162307

/-- `A007318(1-(-1)^n)*p?[A001082(n+1)-2]` -/
def P1595274567465974248.Spec : Prop :=
  ∀ n, P1595274567465974248.a n = A162307 (n + 1)

end A162307

/-!
# A162308: Number of twin primes A001097 smaller than the non-twin prime A007510(n).

The programs for A162308, there is no canonical definition to state claims against.
-/

/-! ## A162308.P17333161190145567899

`A176656(n+1)-(n+1)`
-/

namespace A162308.P17333161190145567899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176656 (n + 1) - (n + 1 : ℤ)

end

end A162308.P17333161190145567899

/-! ## A162308.P10509744948326443223

`A176704(n)+a(n-1)` with `a(0)=0`
-/

namespace A162308.P10509744948326443223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A176704 n + a (n - 1)

end

end A162308.P10509744948326443223

/-! ## A162308.P16551070632133020843

`comp[A334142(n+1)-1]-n`
-/

namespace A162308.P16551070632133020843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A162308.P16551070632133020843

/-! ## A162308.P10168492736114974015

`comp[C(n, A046929(n+1))]-n`
-/

namespace A162308.P10168492736114974015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A046929 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A162308.P10168492736114974015

/-! ## A162308.P3925075814816593222

`∑[A176704(abs(1-n)+1)]-2`
-/

namespace A162308.P3925075814816593222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176704 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A162308.P3925075814816593222

/-! ## A162308.P13876281836380498070

`floor(2/acot(A162310(n+1)))-1`
-/

namespace A162308.P13876281836380498070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (A162310 (n + 1) : ℝ)⌋ - 1

end

end A162308.P13876281836380498070

/-! ## A162308.P16998608599594958068

`comp[A162309(ceil(n/2)+1)+n]-n`
-/

namespace A162308.P16998608599594958068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162309 (⌈(n : ℚ) / 2⌉ + 1).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A162308.P16998608599594958068

/-! ## A162308.P13563978839313080153

`A004273(A162310(n+1))`
-/

namespace A162308.P13563978839313080153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A162310 (n + 1)).toNat

end

end A162308.P13563978839313080153

/-! ## A162308.P12077613546963440797

`A055086(A162310(n+1)²)`
-/

namespace A162308.P12077613546963440797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A162310 (n + 1) ^ 2).toNat

end

end A162308.P12077613546963440797

/-! ## A162308.P81610559855968404

`A293137(A162310(n+1)²)`
-/

namespace A162308.P81610559855968404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A162310 (n + 1) ^ 2).toNat

end

end A162308.P81610559855968404

/-!
# A162309: a(n) is the number of isolated primes up to the smaller component of the n-th twin prime pair.

The programs for A162309, there is no canonical definition to state claims against.
-/

/-! ## A162309.P5790537272520702020

`A048614(n)+a(n-1)` with `a(0)=1`
-/

namespace A162309.P5790537272520702020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A048614 n + a (n - 1)

end

end A162309.P5790537272520702020

/-! ## A162309.P17476582895536901570

`∑[A048614(abs(2-n)+2)]`
-/

namespace A162309.P17476582895536901570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (|2 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162309.P17476582895536901570

/-! ## A162309.P5550227181921304893

`A242398(floor(acot(n)+n))+1`
-/

namespace A162309.P5550227181921304893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242398 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + 1

end

end A162309.P5550227181921304893

/-! ## A162309.P1061218746166791396

`A242398(round(acot(n)+n))+1`
-/

namespace A162309.P1061218746166791396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242398 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + 1

end

end A162309.P1061218746166791396

/-! ## A162309.P6408569977753489118

`A334142(Δ[n²])-Δ[n²]`
-/

namespace A162309.P6408569977753489118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A162309.P6408569977753489118

/-! ## A162309.P4308939423672632325

`A242398(round(sqrt(n²+1)))+1`
-/

namespace A162309.P4308939423672632325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242398 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

end

end A162309.P4308939423672632325

/-! ## A162309.P17882130372489080579

`A029707(n+1)-floor(2/acot(n))`
-/

namespace A162309.P17882130372489080579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A162309.P17882130372489080579

/-! ## A162309.P4730369312958456062

`A155752(n+1)-comp[2*(n+1)]`
-/

namespace A162309.P4730369312958456062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A162309.P4730369312958456062

/-! ## A162309.P3001351095447840595

`lt[A050216(n), 2*n+1]-2*n`
-/

namespace A162309.P3001351095447840595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (2 * n : ℤ)

end

end A162309.P3001351095447840595

/-! ## A162309.P9481029826064066982

`A029707(n+1)-A004277(n)`
-/

namespace A162309.P9481029826064066982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1) - A004277 n

end

end A162309.P9481029826064066982

/-!
# A162310: The count of lesser-twin-primes smaller than the n-th isolated prime.

The programs for A162310, there is no canonical definition to state claims against.
-/

/-! ## A162310.P6111554115201065728

`comp[A162309(n+1)+n]-n`
-/

namespace A162310.P6111554115201065728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162309 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A162310.P6111554115201065728

/-! ## A162310.P2103935988313631697

`comp[A334142(Δ[n²])-1-n]-n`
-/

namespace A162310.P2103935988313631697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - 1 - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A162310.P2103935988313631697

/-! ## A162310.P16932388561026378610

`ceil((comp[A334142(n+1)-1]-n)/2)`
-/

namespace A162310.P16932388561026378610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) : ℚ) / 2⌉

end

end A162310.P16932388561026378610

/-! ## A162310.P4822047637874084562

`comp[comp[A204892(3*(n+1))]-n+1]-n`
-/

namespace A162310.P4822047637874084562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (3 * (n + 1))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A162310.P4822047637874084562

/-! ## A162310.P15548927535416823675

`A071538(A007510(n+1))`
-/

namespace A162310.P15548927535416823675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A007510 (n + 1)).toNat

end

end A162310.P15548927535416823675

/-! ## A162310.P17224347098383517967

`A071538(A164534(n+1))`
-/

namespace A162310.P17224347098383517967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A164534 (n + 1)).toNat

end

end A162310.P17224347098383517967

/-! ## A162310.P4263135502198119698

`A071538(A167277(n+1))`
-/

namespace A162310.P4263135502198119698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A167277 (n + 1)).toNat

end

end A162310.P4263135502198119698

/-! ## A162310.P7277662049653012035

`A082462(A176656(n+1))`
-/

namespace A162310.P7277662049653012035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082462 (A176656 (n + 1)).toNat

end

end A162310.P7277662049653012035

/-! ## A162310.P9212134294729505721

`A071538(p?[A062729(n+1)])`
-/

namespace A162310.P9212134294729505721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A162310.P9212134294729505721

/-! ## A162310.P5652630984678405708

`A071538(p?[A167706(n+1)])`
-/

namespace A162310.P5652630984678405708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A162310.P5652630984678405708

/-!
# A162311: Numbers such that A010060(n) = A010060(n+7).

The programs for A162311, the canonical program `A162311.P12274559168185848663` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162311 has offset 1).

The definition of A162311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162311.P12274559168185848663

`eq[2, and(n+7, -(n+1))%3]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162311

/-- `eq[2, and(n+7, -(n+1))%3]` -/
def P12274559168185848663.Spec : Prop :=
  ∀ n, (P12274559168185848663.a n : ℤ) = A162311 (n + 1)

theorem P12274559168185848663.correct : P12274559168185848663.Spec := by
  intro n
  simp only [A162311, Nat.add_sub_cancel]

end A162311

/-! ## A162311.P4052007427083682242

`eq[3, A020639(xor(n, n+7))]`
-/

namespace A162311.P4052007427083682242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.xor n (n + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162311.P4052007427083682242

namespace A162311

/-- `eq[3, A020639(xor(n, n+7))]` -/
def P4052007427083682242.Spec : Prop :=
  ∀ n, (P4052007427083682242.a n : ℤ) = A162311 (n + 1)

end A162311

/-! ## A162311.P10724384849942063027

`eq[A010060(n+7), A010060(n)]`
-/

namespace A162311.P10724384849942063027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162311.P10724384849942063027

namespace A162311

/-- `eq[A010060(n+7), A010060(n)]` -/
def P10724384849942063027.Spec : Prop :=
  ∀ n, (P10724384849942063027.a n : ℤ) = A162311 (n + 1)

end A162311

/-! ## A162311.P4173595917135029631

`eq[A001285(n+7), A001285(n)]`
-/

namespace A162311.P4173595917135029631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162311.P4173595917135029631

namespace A162311

/-- `eq[A001285(n+7), A001285(n)]` -/
def P4173595917135029631.Spec : Prop :=
  ∀ n, (P4173595917135029631.a n : ℤ) = A162311 (n + 1)

end A162311

/-! ## A162311.P2644663644215455965

`eq[A010059(n+7), A010059(n)]`
-/

namespace A162311.P2644663644215455965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (n + 7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162311.P2644663644215455965

namespace A162311

/-- `eq[A010059(n+7), A010059(n)]` -/
def P2644663644215455965.Spec : Prop :=
  ∀ n, (P2644663644215455965.a n : ℤ) = A162311 (n + 1)

end A162311

/-! ## A162311.P7003358971154758517

`eq[1, A284789(xor(n, n+7))]`
-/

namespace A162311.P7003358971154758517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284789 (Nat.xor n (n + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162311.P7003358971154758517

namespace A162311

/-- `eq[1, A284789(xor(n, n+7))]` -/
def P7003358971154758517.Spec : Prop :=
  ∀ n, (P7003358971154758517.a n : ℤ) = A162311 (n + 1)

end A162311

/-!
# A162312: Triangular array, inverse of 2*P - I, where P is Pascal's triangle and I is the identity matrix.

The programs for A162312, there is no canonical definition to state claims against.
-/

/-! ## A162312.P4932057393716267371

`A000629(A025581(n))*A130595(n)`
-/

namespace A162312.P4932057393716267371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 (A025581 n).toNat * A130595 n

end

end A162312.P4932057393716267371

/-! ## A162312.P1085197156823057994

`A154921(n)*A280560(A025581(n))`
-/

namespace A162312.P1085197156823057994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 n * A280560 (A025581 n).toNat

end

end A162312.P1085197156823057994

/-!
# A162313: Triangular array P*(2*I - P^2)^-1, where P is Pascal's triangle A007318 and I is the identity matrix.

The programs for A162313, there is no canonical definition to state claims against.
-/

/-! ## A162313.P12729927810838218378

`A007318(n)*A080253(A025581(n))`
-/

namespace A162313.P12729927810838218378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A080253 (A025581 n).toNat

end

end A162313.P12729927810838218378

/-! ## A162313.P4337462156625688642

`abs(A080253(A025581(n))*A108086(n))`
-/

namespace A162313.P4337462156625688642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080253 (A025581 n).toNat * A108086 n|

end

end A162313.P4337462156625688642

/-! ## A162313.P1776903602224087351

`abs(A080253(A025581(n))*A130595(n))`
-/

namespace A162313.P1776903602224087351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080253 (A025581 n).toNat * A130595 n|

end

end A162313.P1776903602224087351

/-! ## A162313.P9377862470977116935

`sqrt(A008459(n))*A080253(A025581(n))`
-/

namespace A162313.P9377862470977116935
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A080253 (A025581 n).toNat : ℝ)

end

end A162313.P9377862470977116935

/-! ## A162313.P1863765614971389285

`Δ[A102363(n)]*A080253(A025581(n))`
-/

namespace A162313.P1863765614971389285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A080253 (A025581 n).toNat

end

end A162313.P1863765614971389285

/-!
# A162314: Row sums of A162313.

The programs for A162314, there is no canonical definition to state claims against.
-/

/-! ## A162314.P9050413863089865437

`2^n*A000629(n)`
-/

namespace A162314.P9050413863089865437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000629 n

end

end A162314.P9050413863089865437

/-! ## A162314.P17493221794212114368

`2^n*∑[A162509(n)]`
-/

namespace A162314.P17493221794212114368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162314.P17493221794212114368

/-! ## A162314.P15858464059511013331

`(A002050(n)+1)*2^n`
-/

namespace A162314.P15858464059511013331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002050 n + 1) * (2 ^ n : ℤ)

end

end A162314.P15858464059511013331

/-! ## A162314.P12704294944945562636

`∑[ceil(2^(n-1))]*A054255(∑[n+1])`
-/

namespace A162314.P12704294944945562636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A054255 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A162314.P12704294944945562636

/-! ## A162314.P3401589771924161957

`A000629(n)*A038719(∑[n])`
-/

namespace A162314.P3401589771924161957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 n * A038719 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162314.P3401589771924161957

/-! ## A162314.P10102845896876363851

`∑[A162509(n)]*A000079(n)`
-/

namespace A162314.P10102845896876363851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A162314.P10102845896876363851

/-! ## A162314.P17144401715596062769

`Δ[A198633(n)]*A000670(n)`
-/

namespace A162314.P17144401715596062769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000670 n

end

end A162314.P17144401715596062769

/-! ## A162314.P11864799989643737448

`lcm(Δ[A198633(n)], A000629(n))`
-/

namespace A162314.P11864799989643737448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A000629 n)

end

end A162314.P11864799989643737448

/-! ## A162314.P14654067551635467

`A000629(n)*A011782(n+1)`
-/

namespace A162314.P14654067551635467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000629 n * A011782 (n + 1)

end

end A162314.P14654067551635467

/-! ## A162314.P2368490746239802639

`A000670(n)*A151821(n+1)`
-/

namespace A162314.P2368490746239802639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n * A151821 (n + 1)

end

end A162314.P2368490746239802639

/-!
# A162315: Triangular array 2*P - P^-1, where P is Pascal's triangle A007318.

The programs for A162315, the canonical program `A162315.P7831858856993321518` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162315 has offset 0).

The definition of A162315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162315.P4332849649506097037

`(A131061(n)+3)/4*and(3, -(-1)^comp[∑[4*n]])`
-/

namespace A162315.P4332849649506097037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131061 n + 3 : ℚ) / 4 * (Int.land 3 (-((-1) ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) : ℚ)

end

end A162315.P4332849649506097037

namespace A162315

/-- `(A131061(n)+3)/4*and(3, -(-1)^comp[∑[4*n]])` -/
def P4332849649506097037.Spec : Prop :=
  ∀ n, P4332849649506097037.a n = (A162315 n : ℚ)

end A162315

/-! ## A162315.P8584039355629364427

`(3^(C(comp[∑[n]]-n, 2)-(n+1)))%4*A007318(n)`
-/

namespace A162315.P8584039355629364427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))) 4 * A007318 n

end

end A162315.P8584039355629364427

namespace A162315

/-- `(3^(C(comp[∑[n]]-n, 2)-(n+1)))%4*A007318(n)` -/
def P8584039355629364427.Spec : Prop :=
  ∀ n, P8584039355629364427.a n = A162315 n

end A162315

/-! ## A162315.P4517023555153208308

`A140575(n)+A124927(n)`
-/

namespace A162315.P4517023555153208308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140575 n + A124927 n

end

end A162315.P4517023555153208308

namespace A162315

/-- `A140575(n)+A124927(n)` -/
def P4517023555153208308.Spec : Prop :=
  ∀ n, P4517023555153208308.a n = A162315 n

end A162315

/-! ## A162315.P7831858856993321518

`A028326(n)-A130595(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A162315

/-- `A028326(n)-A130595(n)` -/
def P7831858856993321518.Spec : Prop :=
  ∀ n, P7831858856993321518.a n = A162315 n

theorem P7831858856993321518.correct : P7831858856993321518.Spec := by
  intro n
  simp only [A162315]

end A162315

/-! ## A162315.P17660179408154566744

`gcd(A119467(n), A134059(n))`
-/

namespace A162315.P17660179408154566744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119467 n) (A134059 n)

end

end A162315.P17660179408154566744

namespace A162315

/-- `gcd(A119467(n), A134059(n))` -/
def P17660179408154566744.Spec : Prop :=
  ∀ n, (P17660179408154566744.a n : ℤ) = A162315 n

end A162315

/-! ## A162315.P16853612875542325725

`A109128(n)+1-A130595(n)`
-/

namespace A162315.P16853612875542325725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (1 - A130595 n)

end

end A162315.P16853612875542325725

namespace A162315

/-- `A109128(n)+1-A130595(n)` -/
def P16853612875542325725.Spec : Prop :=
  ∀ n, P16853612875542325725.a n = A162315 n

end A162315

/-! ## A162315.P11950249328630070012

`(2-A097807(n))*A007318(n)`
-/

namespace A162315.P11950249328630070012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A097807 n) * A007318 n

end

end A162315.P11950249328630070012

namespace A162315

/-- `(2-A097807(n))*A007318(n)` -/
def P11950249328630070012.Spec : Prop :=
  ∀ n, P11950249328630070012.a n = A162315 n

end A162315

/-! ## A162315.P16962705724891105416

`2*A007318(n)-A130595(n)`
-/

namespace A162315.P16962705724891105416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A130595 n

end

end A162315.P16962705724891105416

namespace A162315

/-- `2*A007318(n)-A130595(n)` -/
def P16962705724891105416.Spec : Prop :=
  ∀ n, P16962705724891105416.a n = A162315 n

end A162315

/-! ## A162315.P15786503567232611419

`A124846(∑[2*n]%comp[∑[n]])`
-/

namespace A162315.P15786503567232611419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124846 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A162315.P15786503567232611419

namespace A162315

/-- `A124846(∑[2*n]%comp[∑[n]])` -/
def P15786503567232611419.Spec : Prop :=
  ∀ n, P15786503567232611419.a n = A162315 n

end A162315

/-! ## A162315.P14013783262031865645

`A124846(∑[char[∑[n]]]²-n-1)`
-/

namespace A162315.P14013783262031865645
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124846 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A162315.P14013783262031865645

namespace A162315

/-- `A124846(∑[char[∑[n]]]²-n-1)` -/
def P14013783262031865645.Spec : Prop :=
  ∀ n, P14013783262031865645.a n = A162315 n

end A162315

/-! ## A162315.P13065773213358241538

`gcd(A013622(n), A162313(n))`
-/

namespace A162315.P13065773213358241538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013622 n) (A162313 n)

end

end A162315.P13065773213358241538

namespace A162315

/-- `gcd(A013622(n), A162313(n))` -/
def P13065773213358241538.Spec : Prop :=
  ∀ n, (P13065773213358241538.a n : ℤ) = A162315 n

end A162315

/-! ## A162315.P2576924003225039822

`A005843(abs(A130595(n)))-A130595(n)`
-/

namespace A162315.P2576924003225039822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 |A130595 n|.toNat - A130595 n

end

end A162315.P2576924003225039822

namespace A162315

/-- `A005843(abs(A130595(n)))-A130595(n)` -/
def P2576924003225039822.Spec : Prop :=
  ∀ n, P2576924003225039822.a n = A162315 n

end A162315

/-! ## A162315.P4485176566432123414

`A064455(A131087(n))`
-/

namespace A162315.P4485176566432123414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (A131087 n).toNat

end

end A162315.P4485176566432123414

namespace A162315

/-- `A064455(A131087(n))` -/
def P4485176566432123414.Spec : Prop :=
  ∀ n, P4485176566432123414.a n = A162315 n

end A162315

/-!
# A162316: a(n) = 5*n^2 + 20*n + 1.

The programs for A162316, the canonical program `A162316.P13193295874970152137` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162316 has offset 0).

The definition of A162316 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n²+20*n+1` (program `A162316.P13193295874970152137`, by `A162316.P13193295874970152137.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162316.P13193295874970152137

`5*n²+20*n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162316

/-- `5*n²+20*n+1` -/
def P13193295874970152137.Spec : Prop :=
  ∀ n, (P13193295874970152137.a n : ℤ) = A162316 n

theorem P13193295874970152137.correct : P13193295874970152137.Spec := by
  intro n
  simp only [A162316]

end A162316

/-! ## A162316.P425089688213971496

`∑[a(n-1)+10]` with `a(0)=1, a(1)=25`
-/

namespace A162316.P425089688213971496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 25] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162316.P425089688213971496

namespace A162316

/-- `∑[a(n-1)+10]` -/
def P425089688213971496.Spec : Prop :=
  ∀ n, (P425089688213971496.a n : ℤ) = A162316 n

end A162316

/-! ## A162316.P1302595699101031691

`abs(14-A067724(n+1))`
-/

namespace A162316.P1302595699101031691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |14 - A067724 (n + 1)|

end

end A162316.P1302595699101031691

namespace A162316

/-- `abs(14-A067724(n+1))` -/
def P1302595699101031691.Spec : Prop :=
  ∀ n, P1302595699101031691.a n = A162316 n

end A162316

/-! ## A162316.P13596445222668201725

`abs(5*(A028872(n+2)+2)-14)`
-/

namespace A162316.P13596445222668201725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 * (A028872 (n + 2) + 2) - 14|

end

end A162316.P13596445222668201725

namespace A162316

/-- `abs(5*(A028872(n+2)+2)-14)` -/
def P13596445222668201725.Spec : Prop :=
  ∀ n, P13596445222668201725.a n = A162316 n

end A162316

/-! ## A162316.P15385472472880324763

`abs(a(n-1)+A017353(n)+8)` with `a(0)=1`
-/

namespace A162316.P15385472472880324763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) + (A017353 n + 8)|

end

end A162316.P15385472472880324763

namespace A162316

/-- `abs(a(n-1)+A017353(n)+8)` -/
def P15385472472880324763.Spec : Prop :=
  ∀ n, P15385472472880324763.a n = A162316 n

end A162316

/-! ## A162316.P16636852727775940623

`record[A190816(n)-A008598(n)]`
-/

namespace A162316.P16636852727775940623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190816 n - A008598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162316.P16636852727775940623

namespace A162316

/-- `record[A190816(n)-A008598(n)]` -/
def P16636852727775940623.Spec : Prop :=
  ∀ n, P16636852727775940623.a n = A162316 n

end A162316

/-! ## A162316.P11352272141000745060

`∑[A008706(A062545(n))]`
-/

namespace A162316.P11352272141000745060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A062545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162316.P11352272141000745060

namespace A162316

/-- `∑[A008706(A062545(n))]` -/
def P11352272141000745060.Spec : Prop :=
  ∀ n, P11352272141000745060.a n = A162316 n

end A162316

/-! ## A162316.P8970778271394020255

`∑[A081422(A055999(n)+10)]`
-/

namespace A162316.P8970778271394020255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081422 (A055999 n + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162316.P8970778271394020255

namespace A162316

/-- `∑[A081422(A055999(n)+10)]` -/
def P8970778271394020255.Spec : Prop :=
  ∀ n, P8970778271394020255.a n = A162316 n

end A162316

/-! ## A162316.P14431641991695848692

`∑[A081422(Δ[A008778(n)]+6)]`
-/

namespace A162316.P14431641991695848692
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081422 (f2 (n + 1) - f2 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162316.P14431641991695848692

namespace A162316

/-- `∑[A081422(Δ[A008778(n)]+6)]` -/
def P14431641991695848692.Spec : Prop :=
  ∀ n, P14431641991695848692.a n = A162316 n

end A162316

/-!
# A162317: A positive integer k is included if |d(k+1) - d(k)| is a prime, where d(k) is the number of divisors of k.

The programs for A162317, the canonical program `A162317.P9214801070444751415` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162317 has offset 1).

The definition of A162317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162317.P9214801070444751415

`eq[1, ∑{e}[Δ[∑{d}[n, (n+1)%#]], #]]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162317

/-- `eq[1, ∑{e}[Δ[∑{d}[n, (n+1)%#]], #]]` -/
def P9214801070444751415.Spec : Prop :=
  ∀ n, (P9214801070444751415.a n : ℤ) = A162317 (n + 1)

theorem P9214801070444751415.correct : P9214801070444751415.Spec := by
  intro n
  simp only [A162317, Nat.add_sub_cancel]

end A162317

/-! ## A162317.P17443410588476076776

`eq[1, ∑{e}[A341062(n+1), #]]`
-/

namespace A162317.P17443410588476076776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A162317.P17443410588476076776

namespace A162317

/-- `eq[1, ∑{e}[A341062(n+1), #]]` -/
def P17443410588476076776.Spec : Prop :=
  ∀ n, (P17443410588476076776.a n : ℤ) = A162317 (n + 1)

end A162317

/-! ## A162317.P7757343270650011370

`eq[2, A032741(Δ[A032741(n)]²)]`
-/

namespace A162317.P7757343270650011370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 ((f3 (n + 1) - f3 n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162317.P7757343270650011370

namespace A162317

/-- `eq[2, A032741(Δ[A032741(n)]²)]` -/
def P7757343270650011370.Spec : Prop :=
  ∀ n, (P7757343270650011370.a n : ℤ) = A162317 (n + 1)

end A162317

/-! ## A162317.P13656014955812219517

`eq[1, A032741(abs(A341062(n+1)))]`
-/

namespace A162317.P13656014955812219517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 |A341062 (n + 1)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162317.P13656014955812219517

namespace A162317

/-- `eq[1, A032741(abs(A341062(n+1)))]` -/
def P13656014955812219517.Spec : Prop :=
  ∀ n, (P13656014955812219517.a n : ℤ) = A162317 (n + 1)

end A162317

/-! ## A162317.P14807983303579480479

`eq[3, A278663(abs(A341062(n+1)))]`
-/

namespace A162317.P14807983303579480479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278663 |A341062 (n + 1)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162317.P14807983303579480479

namespace A162317

/-- `eq[3, A278663(abs(A341062(n+1)))]` -/
def P14807983303579480479.Spec : Prop :=
  ∀ n, (P14807983303579480479.a n : ℤ) = A162317 (n + 1)

end A162317

/-! ## A162317.P1025525253070942352

`eq[2, A032741(A341062(n+1)²)]`
-/

namespace A162317.P1025525253070942352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A341062 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162317.P1025525253070942352

namespace A162317

/-- `eq[2, A032741(A341062(n+1)²)]` -/
def P1025525253070942352.Spec : Prop :=
  ∀ n, (P1025525253070942352.a n : ℤ) = A162317 (n + 1)

end A162317

/-!
# A162318: A positive integer n is included if |d(n+1)-d(n)| = 2, where d(n) is the number of divisors of n.

The programs for A162318, the canonical program `A162318.P421080468342978565` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162318 has offset 1).

The definition of A162318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1905 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162318.P421080468342978565

`eq[1, A130632(n+1)]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A162318

/-- `eq[1, A130632(n+1)]+1` -/
def P421080468342978565.Spec : Prop :=
  ∀ n, (P421080468342978565.a n : ℤ) = A162318 (n + 1)

theorem P421080468342978565.correct : P421080468342978565.Spec := by
  intro n
  simp only [A162318, Nat.add_sub_cancel]

end A162318

/-! ## A162318.P9468362228011633405

`eq[2, abs(A341062(n+1))]`
-/

namespace A162318.P9468362228011633405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A341062 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162318.P9468362228011633405

namespace A162318

/-- `eq[2, abs(A341062(n+1))]` -/
def P9468362228011633405.Spec : Prop :=
  ∀ n, (P9468362228011633405.a n : ℤ) = A162318 (n + 1)

end A162318

/-! ## A162318.P15048819436712034728

`eq[2, abs(Δ[A000005(n+1)])]+1`
-/

namespace A162318.P15048819436712034728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f3 (n + 1) - f3 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A162318.P15048819436712034728

namespace A162318

/-- `eq[2, abs(Δ[A000005(n+1)])]+1` -/
def P15048819436712034728.Spec : Prop :=
  ∀ n, (P15048819436712034728.a n : ℤ) = A162318 (n + 1)

end A162318

/-! ## A162318.P12167013647298298302

`eq[1, A130632(A028310(n))]`
-/

namespace A162318.P12167013647298298302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130632 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162318.P12167013647298298302

namespace A162318

/-- `eq[1, A130632(A028310(n))]` -/
def P12167013647298298302.Spec : Prop :=
  ∀ n, (P12167013647298298302.a n : ℤ) = A162318 (n + 1)

end A162318

/-! ## A162318.P12810431665802781531

`eq[4, (A032741(n+1)-A032741(n))²]`
-/

namespace A162318.P12810431665802781531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) - A032741 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162318.P12810431665802781531

namespace A162318

/-- `eq[4, (A032741(n+1)-A032741(n))²]` -/
def P12810431665802781531.Spec : Prop :=
  ∀ n, (P12810431665802781531.a n : ℤ) = A162318 (n + 1)

end A162318

/-! ## A162318.P1987098060854565709

`record[A162317(n+1)/A130632(A162317(n+1))]`
-/

namespace A162318.P1987098060854565709
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162317 (n + 1) : ℚ) / (A130632 (A162317 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162318.P1987098060854565709

namespace A162318

/-- `record[A162317(n+1)/A130632(A162317(n+1))]` -/
def P1987098060854565709.Spec : Prop :=
  ∀ n, P1987098060854565709.a n = (A162318 (n + 1) : ℚ)

end A162318

/-! ## A162318.P4175279739438393248

`eq[1, A130632(A123108(2*n))]`
-/

namespace A162318.P4175279739438393248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130632 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162318.P4175279739438393248

namespace A162318

/-- `eq[1, A130632(A123108(2*n))]` -/
def P4175279739438393248.Spec : Prop :=
  ∀ n, (P4175279739438393248.a n : ℤ) = A162318 (n + 1)

end A162318

/-! ## A162318.P6703107358499772007

`eq[1, A130632(A233583(n+1))]`
-/

namespace A162318.P6703107358499772007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130632 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162318.P6703107358499772007

namespace A162318

/-- `eq[1, A130632(A233583(n+1))]` -/
def P6703107358499772007.Spec : Prop :=
  ∀ n, (P6703107358499772007.a n : ℤ) = A162318 (n + 1)

end A162318

/-!
# A162319: Array read by antidiagonals: a(n,m) = the number of digits of m is when written in base n. The top row is the number of digits for each m in base 1.

The programs for A162319, there is no canonical definition to state claims against.
-/

/-! ## A162319.P8411283574492873403

`∑{digits}[A063431(n+1), A014902(#)]`
-/

namespace A162319.P8411283574492873403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014902 x).sum

end

end A162319.P8411283574492873403

/-! ## A162319.P4854707190478396434

`∑{digits}[A063431(n+1), A015012(#)]`
-/

namespace A162319.P4854707190478396434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015012 x).sum

end

end A162319.P4854707190478396434

/-! ## A162319.P2109414373970866164

`∑{digits}[A063431(n+1), A015120(#)]`
-/

namespace A162319.P2109414373970866164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015120 x).sum

end

end A162319.P2109414373970866164

/-! ## A162319.P16694386582281229970

`∑{digits}[A063431(n+1), A015748(#)]`
-/

namespace A162319.P16694386582281229970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015748 x).sum

end

end A162319.P16694386582281229970

/-!
# A162320: Array read by antidiagonals: a(n,m) = the number of digits of m when written in base n. The top row is the number of digits for each m in base 2.

The programs for A162320, there is no canonical definition to state claims against.
-/

/-! ## A162320.P15523186487881235770

`A162319(comp[∑[n]])`
-/

namespace A162320.P15523186487881235770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162319 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A162320.P15523186487881235770

/-! ## A162320.P15205081447542985296

`A162319(A014132(n+1))%27`
-/

namespace A162320.P15205081447542985296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162319 (A014132 (n + 1)).toNat) 27

end

end A162320.P15205081447542985296

/-! ## A162320.P13777925307693771516

`A055642(A004209(n+2)-A004197(n)-1)`
-/

namespace A162320.P13777925307693771516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A004209 (n + 2) - A004197 n - 1).toNat

end

end A162320.P13777925307693771516

/-! ## A162320.P13201429193921801205

`A004218(A004209(n+2)-A004197(n))`
-/

namespace A162320.P13201429193921801205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A004209 (n + 2) - A004197 n).toNat

end

end A162320.P13201429193921801205

/-! ## A162320.P12625677594559277745

`A070939(A010783(n+1)%A241523(n))`
-/

namespace A162320.P12625677594559277745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A010783 (n + 1)) (A241523 n)).toNat

end

end A162320.P12625677594559277745

/-!
# A162321: Number of reduced words of length n in the Weyl group D_15.

The programs for A162321, there is no canonical definition to state claims against.
-/

/-! ## A162321.P5096181201563354530

`A161875(n)-A016389(A103880(n))`
-/

namespace A162321.P5096181201563354530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161875 n - A016389 (A103880 n).toNat

end

end A162321.P5096181201563354530

/-!
# A162322: Take sequence A000005 (where A000005(n) = the number of divisors of n). To get {a(k)}, replace each run of multiple occurrences of the same integer in sequence A000005 with just one occurrence of that integer, such that a(n) never equals a(n+1).

The programs for A162322, the canonical program `A162322.P10409462531012993339` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162322 has offset 1).

The definition of A162322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162322.P10409462531012993339

`∏{e}[A083794(n+1), #+1]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A162322

/-- `∏{e}[A083794(n+1), #+1]` -/
def P10409462531012993339.Spec : Prop :=
  ∀ n, (P10409462531012993339.a n : ℤ) = A162322 (n + 1)

theorem P10409462531012993339.correct : P10409462531012993339.Spec := by
  intro n
  simp only [A162322, Nat.add_sub_cancel]

end A162322

/-! ## A162322.P15846928718356976628

`A000005(A083794(1+n))`
-/

namespace A162322.P15846928718356976628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A083794 (1 + n)).toNat

end

end A162322.P15846928718356976628

namespace A162322

/-- `A000005(A083794(1+n))` -/
def P15846928718356976628.Spec : Prop :=
  ∀ n, P15846928718356976628.a n = A162322 (n + 1)

end A162322

/-! ## A162322.P12270273731535907457

`A000005(∑[A131789(n+1)])`
-/

namespace A162322.P12270273731535907457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162322.P12270273731535907457

namespace A162322

/-- `A000005(∑[A131789(n+1)])` -/
def P12270273731535907457.Spec : Prop :=
  ∀ n, P12270273731535907457.a n = A162322 (n + 1)

end A162322

/-! ## A162322.P13230245878293486240

`∑[A341062(A083794(n+1))]`
-/

namespace A162322.P13230245878293486240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (A083794 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162322.P13230245878293486240

namespace A162322

/-- `∑[A341062(A083794(n+1))]` -/
def P13230245878293486240.Spec : Prop :=
  ∀ n, P13230245878293486240.a n = A162322 (n + 1)

end A162322

/-! ## A162322.P12082610557508405129

`A183063(2*A083794(n+1))`
-/

namespace A162322.P12082610557508405129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A083794 (n + 1)).toNat

end

end A162322.P12082610557508405129

namespace A162322

/-- `A183063(2*A083794(n+1))` -/
def P12082610557508405129.Spec : Prop :=
  ∀ n, P12082610557508405129.a n = A162322 (n + 1)

end A162322

/-! ## A162322.P10488272808331768283

`∑{d}[A083794(n+1), A054977(#)]`
-/

namespace A162322.P10488272808331768283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 d

end

end A162322.P10488272808331768283

namespace A162322

/-- `∑{d}[A083794(n+1), A054977(#)]` -/
def P10488272808331768283.Spec : Prop :=
  ∀ n, P10488272808331768283.a n = A162322 (n + 1)

end A162322

/-! ## A162322.P1763381868158406182

`A000005(comp[A005237(n+1)]+1)`
-/

namespace A162322.P1763381868158406182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A162322.P1763381868158406182

namespace A162322

/-- `A000005(comp[A005237(n+1)]+1)` -/
def P1763381868158406182.Spec : Prop :=
  ∀ n, P1763381868158406182.a n = A162322 (n + 1)

end A162322

/-! ## A162322.P6470508810681259291

`A000005(comp[eq[0, A182394(n+2)]]+1)`
-/

namespace A162322.P6470508810681259291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A162322.P6470508810681259291

namespace A162322

/-- `A000005(comp[eq[0, A182394(n+2)]]+1)` -/
def P6470508810681259291.Spec : Prop :=
  ∀ n, P6470508810681259291.a n = A162322 (n + 1)

end A162322

/-! ## A162322.P4557613160399233977

`A000005(comp[eq[n, A347982(n+1)]]+1)`
-/

namespace A162322.P4557613160399233977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347982 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A162322.P4557613160399233977

namespace A162322

/-- `A000005(comp[eq[n, A347982(n+1)]]+1)` -/
def P4557613160399233977.Spec : Prop :=
  ∀ n, P4557613160399233977.a n = A162322 (n + 1)

end A162322

/-!
# A162323: a(n) = the smallest positive integer such that when a(n) is represented in binary, it contains the binary representations of every prime dividing n as substrings.

The programs for A162323, there is no canonical definition to state claims against.
-/

/-! ## A162323.P7831353940658124502

`∏{p}[n+1, #]/A030395(2^n)`
-/

namespace A162323.P7831353940658124502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / (A030395 (2 ^ n) : ℚ)

end

end A162323.P7831353940658124502

/-! ## A162323.P8268123776566976200

`gcd(C(A131627(n+1), n), ∏{p}[n+1, #])`
-/

namespace A162323.P8268123776566976200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose (A131627 (n + 1)).toNat n) (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A162323.P8268123776566976200

/-! ## A162323.P13374421549332180856

`∏{p}[n+1, #]/∏{e}[A248870(∏{p}[n+1, #]), #!]`
-/

namespace A162323.P13374421549332180856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248870 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorial (Nat.factorization (f2 n).natAbs p) : ℕ) : ℚ)

end

end A162323.P13374421549332180856

/-! ## A162323.P5977653441331000347

`∏{p}[A036440(A306846(n))²+n, #]`
-/

namespace A162323.P5977653441331000347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036440 (A306846 n).toNat ^ 2 + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A162323.P5977653441331000347

/-!
# A162325: a(n) = the largest divisor of n such that this and every smaller divisor of n are all coprime to each other.

The programs for A162325, there is no canonical definition to state claims against.
-/

/-! ## A162325.P8075297062878350674

`A006530(A135875(∏{p}[n+1, gcd(n+1, #²)]))`
-/

namespace A162325.P8075297062878350674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A135875 (∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2))).toNat

end

end A162325.P8075297062878350674

/-! ## A162325.P3645432111785472742

`A006530(A135875(A007948(n+1)))`
-/

namespace A162325.P3645432111785472742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A135875 (A007948 (n + 1)).toNat).toNat

end

end A162325.P3645432111785472742

/-! ## A162325.P10443284074163219176

`A085392(A261969(n+1)²*A066750(n+1))`
-/

namespace A162325.P10443284074163219176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A261969 (n + 1) ^ 2 * A066750 (n + 1)).toNat

end

end A162325.P10443284074163219176

/-! ## A162325.P3094725967625006682

`A085392(A066750(n+1)*A261969(n+1)*A261969(n+1))`
-/

namespace A162325.P3094725967625006682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A066750 (n + 1) * A261969 (n + 1) * A261969 (n + 1)).toNat

end

end A162325.P3094725967625006682

/-! ## A162325.P4954490592272197015

`A006530(A066638(A135875(n+1)²))`
-/

namespace A162325.P4954490592272197015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A066638 (A135875 (n + 1) ^ 2).toNat).toNat

end

end A162325.P4954490592272197015

/-!
# A162326: Let a(0) = a(1) = 1, and n*a(n) = 2*(-7+5*n)*a(n-1) + 9*(2-n)*a(n-2) for n >= 2.

The programs for A162326, the canonical program `A162326.P6298705676017396747` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162326 has offset 0).

The definition of A162326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162326.P6298705676017396747

`A086871(n-1)+a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A162326

/-- `A086871(n-1)+a(n-1)` -/
def P6298705676017396747.Spec : Prop :=
  ∀ n, P6298705676017396747.a n = A162326 n

theorem P6298705676017396747.correct : P6298705676017396747.Spec := by
  intro n
  simp only [A162326]

end A162326

/-! ## A162326.P2215964831916069417

`A231482(A028310(n))/A028310(n)`
-/

namespace A162326.P2215964831916069417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231482 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A162326.P2215964831916069417

namespace A162326

/-- `A231482(A028310(n))/A028310(n)` -/
def P2215964831916069417.Spec : Prop :=
  ∀ n, P2215964831916069417.a n = (A162326 n : ℚ)

end A162326

/-! ## A162326.P10238793587181006542

`A084771(n)%(2*A059231(n))`
-/

namespace A162326.P10238793587181006542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084771 n) (2 * A059231 n)

end

end A162326.P10238793587181006542

namespace A162326

/-- `A084771(n)%(2*A059231(n))` -/
def P10238793587181006542.Spec : Prop :=
  ∀ n, P10238793587181006542.a n = A162326 n

end A162326

/-! ## A162326.P4058758808864744321

`A340968(∑[n+2]-2)`
-/

namespace A162326.P4058758808864744321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340968 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A162326.P4058758808864744321

namespace A162326

/-- `A340968(∑[n+2]-2)` -/
def P4058758808864744321.Spec : Prop :=
  ∀ n, P4058758808864744321.a n = A162326 n

end A162326

/-! ## A162326.P4854456655498141298

`or(1, A340968(A055998(n)))`
-/

namespace A162326.P4854456655498141298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A340968 (A055998 n).toNat)

end

end A162326.P4854456655498141298

namespace A162326

/-- `or(1, A340968(A055998(n)))` -/
def P4854456655498141298.Spec : Prop :=
  ∀ n, P4854456655498141298.a n = A162326 n

end A162326

/-!
# A162327: Number of reduced words of length n in the Weyl group D_16.

The programs for A162327, there is no canonical definition to state claims against.
-/

/-! ## A162327.P15692930369128414680

`A161876(n)+A016389(A089447(n))`
-/

namespace A162327.P15692930369128414680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161876 n + A016389 (A089447 n).toNat

end

end A162327.P15692930369128414680

/-!
# A162328: Number of reduced words of length n in the Weyl group D_17.

The programs for A162328, there is no canonical definition to state claims against.
-/

/-! ## A162328.P10685307449753432716

`A161877(n)+A016389(A013610(n))`
-/

namespace A162328.P10685307449753432716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161877 n + A016389 (A013610 n).toNat

end

end A162328.P10685307449753432716

/-!
# A162329: Sum of all parts of the partitions of n, minus sigma(n).

The programs for A162329, there is no canonical definition to state claims against.
-/

/-! ## A162329.P17486581417073104707

`A066186(n+1)-A000203(n+1)`
-/

namespace A162329.P17486581417073104707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A000203 (n + 1)

end

end A162329.P17486581417073104707

/-! ## A162329.P8919955533077444284

`A182724(n+1)+A086738(n+1)`
-/

namespace A162329.P8919955533077444284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182724 (n + 1) + A086738 (n + 1)

end

end A162329.P8919955533077444284

/-! ## A162329.P13211222200138643316

`A220486(n+1)+A094471(n+1)`
-/

namespace A162329.P13211222200138643316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220486 (n + 1) + A094471 (n + 1)

end

end A162329.P13211222200138643316

/-! ## A162329.P1276821791333444616

`A220477(n+1)+A196087(n+1)`
-/

namespace A162329.P1276821791333444616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220477 (n + 1) + A196087 (n + 1)

end

end A162329.P1276821791333444616

/-! ## A162329.P9355100497275290789

`∑[Δ[A066186(n)]-A340793(n+1)]`
-/

namespace A162329.P9355100497275290789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162329.P9355100497275290789

/-! ## A162329.P980326072847085724

`∑[A138879(n+1)]-A000203(n+1)`
-/

namespace A162329.P980326072847085724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000203 (n + 1)

end

end A162329.P980326072847085724

/-! ## A162329.P18031664861500414526

`A066186(n+1)-A245092(2*n+1)`
-/

namespace A162329.P18031664861500414526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A245092 (2 * n + 1)

end

end A162329.P18031664861500414526

/-! ## A162329.P347250139721527232

`(n+1)*A000041(n+1)-A000203(n+1)`
-/

namespace A162329.P347250139721527232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000041 (n + 1) - A000203 (n + 1)

end

end A162329.P347250139721527232

/-! ## A162329.P13686041066057373681

`A066966(n+1)+A066967(n+1)-A000203(n+1)`
-/

namespace A162329.P13686041066057373681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066966 (n + 1) + (A066967 (n + 1) - A000203 (n + 1))

end

end A162329.P13686041066057373681

/-! ## A162329.P8449244922192022536

`A004125(n+1)+A066186(n+1)-A123327(n+1)`
-/

namespace A162329.P8449244922192022536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) + (A066186 (n + 1) - A123327 (n + 1))

end

end A162329.P8449244922192022536

/-! ## A162329.P8910258305062691978

`A066186(n+1)+A220477(n+1)-A006128(n+1)`
-/

namespace A162329.P8910258305062691978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) + (A220477 (n + 1) - A006128 (n + 1))

end

end A162329.P8910258305062691978

/-! ## A162329.P13686799751212504929

`A220909(n+1)/2-A000203(n+1)`
-/

namespace A162329.P13686799751212504929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220909 (n + 1) : ℚ) / 2 - (A000203 (n + 1) : ℚ)

end

end A162329.P13686799751212504929

/-! ## A162329.P5191212193927725514

`A268191(n+1)+A220907(n+1)`
-/

namespace A162329.P5191212193927725514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268191 (n + 1) + A220907 (n + 1)

end

end A162329.P5191212193927725514

/-! ## A162329.P2856078409746742829

`A066186(n+1)-A127571(A000217(n+1))`
-/

namespace A162329.P2856078409746742829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A127571 (A000217 (n + 1)).toNat

end

end A162329.P2856078409746742829

/-! ## A162329.P3867684201122233113

`A182700(∑[n+1])-A000203(n+1)`
-/

namespace A162329.P3867684201122233113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182700 (∑ j ∈ Finset.range (n + 1), f1 j) - A000203 (n + 1)

end

end A162329.P3867684201122233113

/-! ## A162329.P15035820616431311222

`A182702(∑[n]+1)-A000203(n+1)`
-/

namespace A162329.P15035820616431311222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182702 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A000203 (n + 1)

end

end A162329.P15035820616431311222

/-!
# A162330: Blocks of 4 numbers of the form 2k, 2k-1, 2k, 2k+1, k=1,2,3,4,...

The programs for A162330, the canonical program `A162330.P5046183375246826548` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162330 has offset 1).

The definition of A162330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162330.P5046183375246826548

`n+2-2*floor((n+3)/4)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162330

/-- `n+2-2*floor((n+3)/4)` -/
def P5046183375246826548.Spec : Prop :=
  ∀ n, P5046183375246826548.a n = A162330 (n + 1)

theorem P5046183375246826548.correct : P5046183375246826548.Spec := by
  intro n
  simp only [A162330, Nat.add_sub_cancel]

end A162330

/-! ## A162330.P12126410652839416005

`ceil(or(2, n+1)/2)`
-/

namespace A162330.P12126410652839416005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 2 (n + 1) : ℚ) / 2⌉

end

end A162330.P12126410652839416005

namespace A162330

/-- `ceil(or(2, n+1)/2)` -/
def P12126410652839416005.Spec : Prop :=
  ∀ n, P12126410652839416005.a n = A162330 (n + 1)

end A162330

/-! ## A162330.P11503685382965593453

`round(or(2, n+1)/2)`
-/

namespace A162330.P11503685382965593453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 (n + 1) : ℚ) / 2)

end

end A162330.P11503685382965593453

namespace A162330

/-- `round(or(2, n+1)/2)` -/
def P11503685382965593453.Spec : Prop :=
  ∀ n, P11503685382965593453.a n = A162330 (n + 1)

end A162330

/-! ## A162330.P7271171999181512647

`round(cosh(log(or(2, n+1))))`
-/

namespace A162330.P7271171999181512647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (Nat.lor 2 (n + 1) : ℝ)))

end

end A162330.P7271171999181512647

namespace A162330

/-- `round(cosh(log(or(2, n+1))))` -/
def P7271171999181512647.Spec : Prop :=
  ∀ n, P7271171999181512647.a n = A162330 (n + 1)

end A162330

/-! ## A162330.P9754514867325799353

`ceil(sinh(log(or(2, n+1))))`
-/

namespace A162330.P9754514867325799353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log (Nat.lor 2 (n + 1) : ℝ))⌉

end

end A162330.P9754514867325799353

namespace A162330

/-- `ceil(sinh(log(or(2, n+1))))` -/
def P9754514867325799353.Spec : Prop :=
  ∀ n, P9754514867325799353.a n = A162330 (n + 1)

end A162330

/-! ## A162330.P13273899324184731560

`floor(gcd(2, ∑[n])+n/2)`
-/

namespace A162330.P13273899324184731560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) + (n : ℚ) / 2⌋

end

end A162330.P13273899324184731560

namespace A162330

/-- `floor(gcd(2, ∑[n])+n/2)` -/
def P13273899324184731560.Spec : Prop :=
  ∀ n, P13273899324184731560.a n = A162330 (n + 1)

end A162330

/-! ## A162330.P10292392701485055450

`floor((or(2, n+1)+1)/2)`
-/

namespace A162330.P10292392701485055450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 (n + 1) + 1 : ℚ) / 2⌋

end

end A162330.P10292392701485055450

namespace A162330

/-- `floor((or(2, n+1)+1)/2)` -/
def P10292392701485055450.Spec : Prop :=
  ∀ n, P10292392701485055450.a n = A162330 (n + 1)

end A162330

/-! ## A162330.P10098344827978328056

`ceil((and(3, n-1)+n)/2)`
-/

namespace A162330.P10098344827978328056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.land 3 ((n : ℤ) - 1) + (n : ℤ) : ℚ) / 2⌉

end

end A162330.P10098344827978328056

namespace A162330

/-- `ceil((and(3, n-1)+n)/2)` -/
def P10098344827978328056.Spec : Prop :=
  ∀ n, P10098344827978328056.a n = A162330 (n + 1)

end A162330

/-! ## A162330.P12621683211994220412

`round((and(3, n-1)+n)/2)`
-/

namespace A162330.P12621683211994220412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land 3 ((n : ℤ) - 1) + (n : ℤ) : ℚ) / 2)

end

end A162330.P12621683211994220412

namespace A162330

/-- `round((and(3, n-1)+n)/2)` -/
def P12621683211994220412.Spec : Prop :=
  ∀ n, P12621683211994220412.a n = A162330 (n + 1)

end A162330

/-! ## A162330.P14509805755835493220

`abs(a(n-4)+2)` with `a(0)=2, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A162330.P14509805755835493220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 3] fun n a =>
  a (n - 4) + 2

end

end A162330.P14509805755835493220

namespace A162330

/-- `abs(a(n-4)+2)` -/
def P14509805755835493220.Spec : Prop :=
  ∀ n, (P14509805755835493220.a n : ℤ) = A162330 (n + 1)

end A162330

/-! ## A162330.P4732457136862574390

`((n+3)%4+1+n)/2`
-/

namespace A162330.P4732457136862574390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 3) % 4 + 1 + n : ℕ) : ℚ) / 2

end

end A162330.P4732457136862574390

namespace A162330

/-- `((n+3)%4+1+n)/2` -/
def P4732457136862574390.Spec : Prop :=
  ∀ n, P4732457136862574390.a n = (A162330 (n + 1) : ℚ)

end A162330

/-! ## A162330.P9061912334752188413

`(and(3, n-1)+n+1)/2`
-/

namespace A162330.P9061912334752188413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 3 ((n : ℤ) - 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A162330.P9061912334752188413

namespace A162330

/-- `(and(3, n-1)+n+1)/2` -/
def P9061912334752188413.Spec : Prop :=
  ∀ n, P9061912334752188413.a n = (A162330 (n + 1) : ℚ)

end A162330

/-! ## A162330.P18148612239189570885

`(4-((3*n)%4-n))/2`
-/

namespace A162330.P18148612239189570885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - (((3 * n % 4 : ℕ) : ℤ) - (n : ℤ)) : ℚ) / 2

end

end A162330.P18148612239189570885

namespace A162330

/-- `(4-((3*n)%4-n))/2` -/
def P18148612239189570885.Spec : Prop :=
  ∀ n, P18148612239189570885.a n = (A162330 (n + 1) : ℚ)

end A162330

/-! ## A162330.P8220218331361295918

`∑[floor(a(n-4))]` with `a(0)=2, a(1)=-1, a(2)=1, a(3)=1, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A162330.P8220218331361295918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 1, 1, 1] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162330.P8220218331361295918

namespace A162330

/-- `∑[floor(a(n-4))]` -/
def P8220218331361295918.Spec : Prop :=
  ∀ n, P8220218331361295918.a n = A162330 (n + 1)

end A162330

/-! ## A162330.P4344159888297378994

`(or(3, -n)+2*n+1)/2`
-/

namespace A162330.P4344159888297378994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 3 (-(n : ℤ)) + (2 * n + 1 : ℤ) : ℚ) / 2

end

end A162330.P4344159888297378994

namespace A162330

/-- `(or(3, -n)+2*n+1)/2` -/
def P4344159888297378994.Spec : Prop :=
  ∀ n, P4344159888297378994.a n = (A162330 (n + 1) : ℚ)

end A162330

/-! ## A162330.P17660742590400125127

`(dr(and(3, n+3))+n+1)/2`
-/

namespace A162330.P17660742590400125127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (Nat.land 3 (n + 3) : ℤ) + (n + 1) : ℚ) / 2

end

end A162330.P17660742590400125127

namespace A162330

/-- `(dr(and(3, n+3))+n+1)/2` -/
def P17660742590400125127.Spec : Prop :=
  ∀ n, P17660742590400125127.a n = (A162330 (n + 1) : ℚ)

end A162330

/-! ## A162330.P7993909296971409165

`floor((and(2, n+3)+n+2)/2)`
-/

namespace A162330.P7993909296971409165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 2 (n + 3) + (n + 2) : ℚ) / 2⌋

end

end A162330.P7993909296971409165

namespace A162330

/-- `floor((and(2, n+3)+n+2)/2)` -/
def P7993909296971409165.Spec : Prop :=
  ∀ n, P7993909296971409165.a n = A162330 (n + 1)

end A162330

/-! ## A162330.P594897183334602211

`ceil((xor(2, n+1)+n+2)/4)`
-/

namespace A162330.P594897183334602211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 2 (n + 1) + (n + 2) : ℚ) / 4⌉

end

end A162330.P594897183334602211

namespace A162330

/-- `ceil((xor(2, n+1)+n+2)/4)` -/
def P594897183334602211.Spec : Prop :=
  ∀ n, P594897183334602211.a n = A162330 (n + 1)

end A162330

/-! ## A162330.P16890353278155937916

`round((xor(2, n+1)+n+3)/4)`
-/

namespace A162330.P16890353278155937916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (n + 1) + (n + 3) : ℚ) / 4)

end

end A162330.P16890353278155937916

namespace A162330

/-- `round((xor(2, n+1)+n+3)/4)` -/
def P16890353278155937916.Spec : Prop :=
  ∀ n, P16890353278155937916.a n = A162330 (n + 1)

end A162330

/-!
# A162336: Primes p of the form p = r+(r+1)/2 (where r is a prime number).

The programs for A162336, there is no canonical definition to state claims against.
-/

/-! ## A162336.P15157287864570079183

`A276626(n+1)/2`
-/

namespace A162336.P15157287864570079183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276626 (n + 1) : ℚ) / 2

end

end A162336.P15157287864570079183

/-! ## A162336.P3978738499325791021

`p?[2*A190105(n+1)+1]`
-/

namespace A162336.P3978738499325791021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190105 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162336.P3978738499325791021

/-! ## A162336.P17345563731673508705

`p?[A104635(n+1)+A090658(n+1)]`
-/

namespace A162336.P17345563731673508705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1) + A090658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162336.P17345563731673508705

/-! ## A162336.P15065065342237564693

`∩[A003627(n+1), A328058(n+1)]`
-/

namespace A162336.P15065065342237564693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162336.P15065065342237564693

/-! ## A162336.P15403861738023893873

`∩[A056955(n+1), A328058(n+1)]`
-/

namespace A162336.P15403861738023893873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162336.P15403861738023893873

/-! ## A162336.P11977539293463162869

`∩[A109373(n+1), A112774(n+1)]/2`
-/

namespace A162336.P11977539293463162869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112774 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A162336.P11977539293463162869

/-! ## A162336.P3396635299642030135

`∩[A003627(n+1), A114454(n+1)]`
-/

namespace A162336.P3396635299642030135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162336.P3396635299642030135

/-! ## A162336.P18063958402173150522

`∩[A007528(n+1), A114454(n+1)]`
-/

namespace A162336.P18063958402173150522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162336.P18063958402173150522

/-! ## A162336.P17295109205977523712

`∩[A045309(n+1), A114454(n+1)]`
-/

namespace A162336.P17295109205977523712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162336.P17295109205977523712

/-! ## A162336.P5694893004949406237

`∩[A045410(n+1), A114454(n+1)]`
-/

namespace A162336.P5694893004949406237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162336.P5694893004949406237

/-! ## A162336.P14089584064860749944

`∩[A056955(n+1), A114454(n+1)]`
-/

namespace A162336.P14089584064860749944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162336.P14089584064860749944

/-! ## A162336.P6388193127192509797

`record[A087273(n+2)]`
-/

namespace A162336.P6388193127192509797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087273 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162336.P6388193127192509797

/-! ## A162336.P2186868523632487657

`p?[A168565(n+2)+1]`
-/

namespace A162336.P2186868523632487657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168565 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162336.P2186868523632487657

/-! ## A162336.P11168494608212558265

`p?[A179893(n+2)+2]`
-/

namespace A162336.P11168494608212558265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179893 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162336.P11168494608212558265

/-! ## A162336.P10741853670437298331

`p?[A065091(n+1)+A006254(n+1)]`
-/

namespace A162336.P10741853670437298331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A006254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162336.P10741853670437298331

/-! ## A162336.P6224501525792894786

`p?[A111333(n+2)+A000040(n+2)]`
-/

namespace A162336.P6224501525792894786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 2) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162336.P6224501525792894786

/-! ## A162336.P4317478090684354247

`p?[A102781(n+2)+A008864(n+2)]`
-/

namespace A162336.P4317478090684354247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 2) + A008864 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162336.P4317478090684354247

/-! ## A162336.P11278477583256112114

`p?[2*A000040(n+1)-A102781(n+1)]`
-/

namespace A162336.P11278477583256112114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A102781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162336.P11278477583256112114

/-! ## A162336.P2096737194893561448

`p?[A014682(p?[xor(1, n)])]`
-/

namespace A162336.P2096737194893561448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162336.P2096737194893561448

/-! ## A162336.P7162884770760382982

`p?[A014682(p?[2*n+1])]`
-/

namespace A162336.P7162884770760382982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162336.P7162884770760382982

/-!
# A162337: Primes p such that floor(p/3) is prime.

The programs for A162337, the canonical program `A162337.P18201033645645115533` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162337 has offset 1).

The definition of A162337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162337.P18201033645645115533

`p?[or(1, A001748(n+1)+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A162337

/-- `p?[or(1, A001748(n+1)+1)]` -/
def P18201033645645115533.Spec : Prop :=
  ∀ n, P18201033645645115533.a n = A162337 (n + 1)

theorem P18201033645645115533.correct : P18201033645645115533.Spec := by
  intro n
  simp only [A162337, Nat.add_sub_cancel]

end A162337

/-! ## A162337.P1697248747546011577

`p?[or(1, 3*A000040(n+1)+1)]`
-/

namespace A162337.P1697248747546011577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * A000040 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162337.P1697248747546011577

namespace A162337

/-- `p?[or(1, 3*A000040(n+1)+1)]` -/
def P1697248747546011577.Spec : Prop :=
  ∀ n, P1697248747546011577.a n = A162337 (n + 1)

end A162337

/-! ## A162337.P4151213001918444848

`p?[A006005(n+1)+2*A008864(n+1)]`
-/

namespace A162337.P4151213001918444848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) + 2 * A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162337.P4151213001918444848

namespace A162337

/-- `p?[A006005(n+1)+2*A008864(n+1)]` -/
def P4151213001918444848.Spec : Prop :=
  ∀ n, P4151213001918444848.a n = A162337 (n + 1)

end A162337

/-! ## A162337.P8861633002183114539

`p?[A000032(C(2, n+2))+3*A000040(n+1)]`
-/

namespace A162337.P8861633002183114539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) + 3 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162337.P8861633002183114539

namespace A162337

/-- `p?[A000032(C(2, n+2))+3*A000040(n+1)]` -/
def P8861633002183114539.Spec : Prop :=
  ∀ n, P8861633002183114539.a n = A162337 (n + 1)

end A162337

/-! ## A162337.P15486203814806558548

`p?[A020639(A000010(n+2))+3*A000040(n+1)]`
-/

namespace A162337.P15486203814806558548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat + 3 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162337.P15486203814806558548

namespace A162337

/-- `p?[A020639(A000010(n+2))+3*A000040(n+1)]` -/
def P15486203814806558548.Spec : Prop :=
  ∀ n, P15486203814806558548.a n = A162337 (n + 1)

end A162337

/-! ## A162337.P12577681372826417660

`p?[A001222(2*A006530(n+1))+3*A000040(n+1)]`
-/

namespace A162337.P12577681372826417660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A006530 (n + 1)).toNat + 3 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162337.P12577681372826417660

namespace A162337

/-- `p?[A001222(2*A006530(n+1))+3*A000040(n+1)]` -/
def P12577681372826417660.Spec : Prop :=
  ∀ n, P12577681372826417660.a n = A162337 (n + 1)

end A162337

/-! ## A162337.P15644247946643113004

`p?[A075862(n+1)+2]`
-/

namespace A162337.P15644247946643113004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162337.P15644247946643113004

namespace A162337

/-- `p?[A075862(n+1)+2]` -/
def P15644247946643113004.Spec : Prop :=
  ∀ n, P15644247946643113004.a n = A162337 (n + 1)

end A162337

/-! ## A162337.P6548518411316294982

`p?[A112773(n+2)+A001222(A112773(2*n+1))]`
-/

namespace A162337.P6548518411316294982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 2) + A001222 (A112773 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162337.P6548518411316294982

namespace A162337

/-- `p?[A112773(n+2)+A001222(A112773(2*n+1))]` -/
def P6548518411316294982.Spec : Prop :=
  ∀ n, P6548518411316294982.a n = A162337 (n + 1)

end A162337

/-! ## A162337.P11323349188498761633

`A306289(A162338(n+1))`
-/

namespace A162337.P11323349188498761633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306289 (A162338 (n + 1)).toNat

end

end A162337.P11323349188498761633

namespace A162337

/-- `A306289(A162338(n+1))` -/
def P11323349188498761633.Spec : Prop :=
  ∀ n, P11323349188498761633.a n = A162337 (n + 1)

end A162337

/-! ## A162337.P10158759705939928726

`p?[A007310(A000040(n+1)+1)]`
-/

namespace A162337.P10158759705939928726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162337.P10158759705939928726

namespace A162337

/-- `p?[A007310(A000040(n+1)+1)]` -/
def P10158759705939928726.Spec : Prop :=
  ∀ n, P10158759705939928726.a n = A162337 (n + 1)

end A162337

/-! ## A162337.P17251462565449730091

`p?[A105700(n)+A047233(n+1)]`
-/

namespace A162337.P17251462565449730091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n + A047233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162337.P17251462565449730091

namespace A162337

/-- `p?[A105700(n)+A047233(n+1)]` -/
def P17251462565449730091.Spec : Prop :=
  ∀ n, P17251462565449730091.a n = A162337 (n + 1)

end A162337

/-! ## A162337.P9125750904281508077

`p?[(A047270(n+1)+2)*A001222(n+1)]`
-/

namespace A162337.P9125750904281508077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047270 (n + 1) + 2) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162337.P9125750904281508077

namespace A162337

/-- `p?[(A047270(n+1)+2)*A001222(n+1)]` -/
def P9125750904281508077.Spec : Prop :=
  ∀ n, P9125750904281508077.a n = A162337 (n + 1)

end A162337

/-! ## A162337.P84008598396017764

`p?[A007310(p?[A166711(n)]+1)]`
-/

namespace A162337.P84008598396017764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166711 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162337.P84008598396017764

namespace A162337

/-- `p?[A007310(p?[A166711(n)]+1)]` -/
def P84008598396017764.Spec : Prop :=
  ∀ n, P84008598396017764.a n = A162337 (n + 1)

end A162337

/-! ## A162337.P5372432782074327454

`p?[A007310(n+1)*A032741(n)]`
-/

namespace A162337.P5372432782074327454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) * A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162337.P5372432782074327454

namespace A162337

/-- `p?[A007310(n+1)*A032741(n)]` -/
def P5372432782074327454.Spec : Prop :=
  ∀ n, P5372432782074327454.a n = A162337 (n + 1)

end A162337

/-!
# A162338: Primes q such that q = floor(p/3) for some prime p.

The programs for A162338, the canonical program `A162338.P8262832868775111247` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162338 has offset 1).

The definition of A162338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162338.P8262832868775111247

`A023208(n%a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A162338

/-- `A023208(n%a(n-1))` -/
def P8262832868775111247.Spec : Prop :=
  ∀ n, P8262832868775111247.a n = A162338 (n + 1)

theorem P8262832868775111247.correct : P8262832868775111247.Spec := by
  intro n
  simp only [A162338, Nat.add_sub_cancel]

end A162338

/-! ## A162338.P7614777421377729868

`∪[A006686(n+1), A023208(n+1)]`
-/

namespace A162338.P7614777421377729868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162338.P7614777421377729868

namespace A162338

/-- `∪[A006686(n+1), A023208(n+1)]` -/
def P7614777421377729868.Spec : Prop :=
  ∀ n, (P7614777421377729868.a n : ℤ) = A162338 (n + 1)

end A162338

/-! ## A162338.P15187948765488111563

`∪[A007352(n+1), A023208(n+1)]`
-/

namespace A162338.P15187948765488111563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A162338.P15187948765488111563

namespace A162338

/-- `∪[A007352(n+1), A023208(n+1)]` -/
def P15187948765488111563.Spec : Prop :=
  ∀ n, (P15187948765488111563.a n : ℤ) = A162338 (n + 1)

end A162338

/-! ## A162338.P11324109646870447942

`A023208(A028310(n))-A000007(n)`
-/

namespace A162338.P11324109646870447942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (A028310 n).toNat - A000007 n

end

end A162338.P11324109646870447942

namespace A162338

/-- `A023208(A028310(n))-A000007(n)` -/
def P11324109646870447942.Spec : Prop :=
  ∀ n, P11324109646870447942.a n = A162338 (n + 1)

end A162338

/-! ## A162338.P16184496752222490626

`p?[or(char[1], A087370(n+1))-1]`
-/

namespace A162338.P16184496752222490626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) (A087370 (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162338.P16184496752222490626

namespace A162338

/-- `p?[or(char[1], A087370(n+1))-1]` -/
def P16184496752222490626.Spec : Prop :=
  ∀ n, P16184496752222490626.a n = A162338 (n + 1)

end A162338

/-! ## A162338.P12880407770191778176

`record[A006530(2*A024893(n+2))]`
-/

namespace A162338.P12880407770191778176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A024893 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162338.P12880407770191778176

namespace A162338

/-- `record[A006530(2*A024893(n+2))]` -/
def P12880407770191778176.Spec : Prop :=
  ∀ n, P12880407770191778176.a n = A162338 (n + 1)

end A162338

/-! ## A162338.P6933579108974194668

`p?[A181709(n+1)-1]`
-/

namespace A162338.P6933579108974194668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181709 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162338.P6933579108974194668

namespace A162338

/-- `p?[A181709(n+1)-1]` -/
def P6933579108974194668.Spec : Prop :=
  ∀ n, P6933579108974194668.a n = A162338 (n + 1)

end A162338

/-! ## A162338.P2223211793092022148

`record[A006530(A181709(n+2)-1)]`
-/

namespace A162338.P2223211793092022148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A181709 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162338.P2223211793092022148

namespace A162338

/-- `record[A006530(A181709(n+2)-1)]` -/
def P2223211793092022148.Spec : Prop :=
  ∀ n, P2223211793092022148.a n = A162338 (n + 1)

end A162338

/-! ## A162338.P4860096791485483243

`p?[floor(p?[2*n+1]/3)]`
-/

namespace A162338.P4860096791485483243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162338.P4860096791485483243

namespace A162338

/-- `p?[floor(p?[2*n+1]/3)]` -/
def P4860096791485483243.Spec : Prop :=
  ∀ n, P4860096791485483243.a n = A162338 (n + 1)

end A162338

/-! ## A162338.P6905228652297072808

`p?[A144769(n+1)]`
-/

namespace A162338.P6905228652297072808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162338.P6905228652297072808

namespace A162338

/-- `p?[A144769(n+1)]` -/
def P6905228652297072808.Spec : Prop :=
  ∀ n, P6905228652297072808.a n = A162338 (n + 1)

end A162338

/-! ## A162338.P15536731939991111551

`p?[floor(A000040(n+1)/3)]`
-/

namespace A162338.P15536731939991111551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162338.P15536731939991111551

namespace A162338

/-- `p?[floor(A000040(n+1)/3)]` -/
def P15536731939991111551.Spec : Prop :=
  ∀ n, P15536731939991111551.a n = A162338 (n + 1)

end A162338

/-! ## A162338.P16690021802277597226

`p?[floor(A006093(n+2)/3)]`
-/

namespace A162338.P16690021802277597226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 2) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162338.P16690021802277597226

namespace A162338

/-- `p?[floor(A006093(n+2)/3)]` -/
def P16690021802277597226.Spec : Prop :=
  ∀ n, P16690021802277597226.a n = A162338 (n + 1)

end A162338

/-! ## A162338.P534572789927182992

`p?[floor(A008578(n+2)/3)]`
-/

namespace A162338.P534572789927182992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008578 (n + 2) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162338.P534572789927182992

namespace A162338

/-- `p?[floor(A008578(n+2)/3)]` -/
def P534572789927182992.Spec : Prop :=
  ∀ n, P534572789927182992.a n = A162338 (n + 1)

end A162338

/-! ## A162338.P5569598200424805168

`p?[ceil(A040976(n+1)/3)]`
-/

namespace A162338.P5569598200424805168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A040976 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162338.P5569598200424805168

namespace A162338

/-- `p?[ceil(A040976(n+1)/3)]` -/
def P5569598200424805168.Spec : Prop :=
  ∀ n, P5569598200424805168.a n = A162338 (n + 1)

end A162338

/-! ## A162338.P17975404240955176536

`p?[ceil((A006093(n+1)-1)/3)]`
-/

namespace A162338.P17975404240955176536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006093 (n + 1) - 1 : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162338.P17975404240955176536

namespace A162338

/-- `p?[ceil((A006093(n+1)-1)/3)]` -/
def P17975404240955176536.Spec : Prop :=
  ∀ n, P17975404240955176536.a n = A162338 (n + 1)

end A162338

/-! ## A162338.P7584861871347152746

`p?[round((A000040(n+2)-1)/3)]`
-/

namespace A162338.P7584861871347152746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 2) - 1 : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162338.P7584861871347152746

namespace A162338

/-- `p?[round((A000040(n+2)-1)/3)]` -/
def P7584861871347152746.Spec : Prop :=
  ∀ n, P7584861871347152746.a n = A162338 (n + 1)

end A162338

/-! ## A162338.P4409446473706168531

`p?[ceil(A000040(n+3)/3)-1]`
-/

namespace A162338.P4409446473706168531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 3) : ℚ) / 3⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162338.P4409446473706168531

namespace A162338

/-- `p?[ceil(A000040(n+3)/3)-1]` -/
def P4409446473706168531.Spec : Prop :=
  ∀ n, P4409446473706168531.a n = A162338 (n + 1)

end A162338

/-! ## A162338.P4949087735818914257

`p?[abs(round((A008578(n+1)-1)/3))]`
-/

namespace A162338.P4949087735818914257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway ((A008578 (n + 1) - 1 : ℚ) / 3)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162338.P4949087735818914257

namespace A162338

/-- `p?[abs(round((A008578(n+1)-1)/3))]` -/
def P4949087735818914257.Spec : Prop :=
  ∀ n, P4949087735818914257.a n = A162338 (n + 1)

end A162338

/-! ## A162338.P14197512920981067306

`filter[A144769(n+2), A010051(#)]`
-/

namespace A162338.P14197512920981067306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144769 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A162338.P14197512920981067306

namespace A162338

/-- `filter[A144769(n+2), A010051(#)]` -/
def P14197512920981067306.Spec : Prop :=
  ∀ n, P14197512920981067306.a n = A162338 (n + 1)

end A162338

/-! ## A162338.P7698329352829493419

`record[A006530(floor(A000040(n+4)/3))]`
-/

namespace A162338.P7698329352829493419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊(A000040 (n + 4) : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162338.P7698329352829493419

namespace A162338

/-- `record[A006530(floor(A000040(n+4)/3))]` -/
def P7698329352829493419.Spec : Prop :=
  ∀ n, P7698329352829493419.a n = A162338 (n + 1)

end A162338

/-!
# A162339: Numbers A161912 such that a(n)<>a(n+1).

The programs for A162339, there is no canonical definition to state claims against.
-/

/-! ## A162339.P15596157150279907961

`A161912(comp[A068526(n+1)])`
-/

namespace A162339.P15596157150279907961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161912 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A162339.P15596157150279907961

/-! ## A162339.P18198312892386371639

`A161912(A161913(n+1)-1)`
-/

namespace A162339.P18198312892386371639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161912 (A161913 (n + 1) - 1).toNat

end

end A162339.P18198312892386371639

/-! ## A162339.P4240440459894573348

`A161912(eq[0, char[A068526(n+1)]])`
-/

namespace A162339.P4240440459894573348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068526 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161912 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A162339.P4240440459894573348

/-! ## A162339.P3607243167476420236

`A161912(comp[eq[0, A161911(n+1)]+1])`
-/

namespace A162339.P3607243167476420236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161911 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161912 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A162339.P3607243167476420236

/-! ## A162339.P12655123843807742368

`A161912(∪[A161913(n+2), Δ[n^3]])`
-/

namespace A162339.P12655123843807742368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161913 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161912 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A162339.P12655123843807742368

/-! ## A162339.P858820322096807777

`A161912(∪[A161861(n+1), A161913(n+1)])`
-/

namespace A162339.P858820322096807777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161913 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161912 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A162339.P858820322096807777

/-!
# A162340: Number of "ON" cells at n-th stage in simple 2-dimensional cellular automaton whose virtual skeleton is a polyedge as the graph of the "mountain path" function for prime numbers.

The programs for A162340, there is no canonical definition to state claims against.
-/

/-! ## A162340.P6119271506761820276

`∑[A162341(n)]`
-/

namespace A162340.P6119271506761820276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162340.P6119271506761820276

/-! ## A162340.P2136331302446418733

`A162800(n)+log2(gcd(2, n))`
-/

namespace A162340.P2136331302446418733
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A162800 n : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A162340.P2136331302446418733

/-! ## A162340.P12370193321824972360

`record[A285712(n+1)+n]+∑[(-1)^n]`
-/

namespace A162340.P12370193321824972360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285712 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A162340.P12370193321824972360

/-! ## A162340.P2142715171587593281

`A162800(n)+A059841(n)`
-/

namespace A162340.P2142715171587593281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n + A059841 n

end

end A162340.P2142715171587593281

/-! ## A162340.P14282160418207682482

`A162800(n)+abs(A056594(n))`
-/

namespace A162340.P14282160418207682482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n + |A056594 n|

end

end A162340.P14282160418207682482

/-! ## A162340.P18388055048227869239

`A162800(n)+A056594(n²)`
-/

namespace A162340.P18388055048227869239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n + A056594 (n ^ 2)

end

end A162340.P18388055048227869239

/-! ## A162340.P16457218564207000070

`A162800(n)+∑[A033999(n)]`
-/

namespace A162340.P16457218564207000070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162340.P16457218564207000070

/-! ## A162340.P18047781720660658392

`A162800(n)+Δ[A080513(n)]`
-/

namespace A162340.P18047781720660658392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n + (f1 (n + 1) - f1 n)

end

end A162340.P18047781720660658392

/-! ## A162340.P2700390194622597283

`A162800(n)+Δ[A110654(n)]`
-/

namespace A162340.P2700390194622597283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n + (f1 (n + 1) - f1 n)

end

end A162340.P2700390194622597283

/-! ## A162340.P5194234187823524381

`A374134(n+1)+A162800(n)`
-/

namespace A162340.P5194234187823524381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374134 (n + 1) + A162800 n

end

end A162340.P5194234187823524381

/-!
# A162341: a(n) = number of grid points P(x,y) that are covered by a polyedge as the graph of the "mountain path" function for prime numbers, where x=n and y=0..oo.

The programs for A162341, the canonical program `A162341.P7364615635833394252` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162341 has offset 0).

The definition of A162341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162341.P7364615635833394252

`A115061(A233583(n+1))-A165326(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A162341

/-- `A115061(A233583(n+1))-A165326(n)` -/
def P7364615635833394252.Spec : Prop :=
  ∀ n, P7364615635833394252.a n = A162341 n

theorem P7364615635833394252.correct : P7364615635833394252.Spec := by
  intro n
  simp only [A162341]

end A162341

/-! ## A162341.P17736822742382802891

`abs(A162201(floor(acot(n)+n)))+1`
-/

namespace A162341.P17736822742382802891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A162201 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat| + 1

end

end A162341.P17736822742382802891

namespace A162341

/-- `abs(A162201(floor(acot(n)+n)))+1` -/
def P17736822742382802891.Spec : Prop :=
  ∀ n, P17736822742382802891.a n = A162341 n

end A162341

/-! ## A162341.P3624347884956144804

`abs(A162201(floor(sqrt(n²+1))))+1`
-/

namespace A162341.P3624347884956144804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A162201 (Nat.sqrt (n ^ 2 + 1))| + 1

end

end A162341.P3624347884956144804

namespace A162341

/-- `abs(A162201(floor(sqrt(n²+1))))+1` -/
def P3624347884956144804.Spec : Prop :=
  ∀ n, P3624347884956144804.a n = A162341 n

end A162341

/-! ## A162341.P15341405808340114055

`A033999(n)*A162201(A028310(n))+1`
-/

namespace A162341.P15341405808340114055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A162201 (A028310 n).toNat + 1

end

end A162341.P15341405808340114055

namespace A162341

/-- `A033999(n)*A162201(A028310(n))+1` -/
def P15341405808340114055.Spec : Prop :=
  ∀ n, P15341405808340114055.a n = A162341 n

end A162341

/-!
# A162342: Partial sums of A162200.

The programs for A162342, there is no canonical definition to state claims against.
-/

/-! ## A162342.P7221741333647491198

`∑[A162200(n+1)]`
-/

namespace A162342.P7221741333647491198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162342.P7221741333647491198

/-! ## A162342.P4341955060460178687

`∑[A162201(n)+a(n-1)]` with `a(0)=0`
-/

namespace A162342.P4341955060460178687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A162201 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162342.P4341955060460178687

/-! ## A162342.P13155569732708377034

`∑[∑[A162201(abs(1-n)+1)]-2]`
-/

namespace A162342.P13155569732708377034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162201 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162342.P13155569732708377034

/-! ## A162342.P3547107895198746215

`∑[∑[(A162341(n)-1)*(-1)^n]]`
-/

namespace A162342.P3547107895198746215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162341 n - 1) * (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162342.P3547107895198746215

/-! ## A162342.P5325520267501148510

`∑[∑[A162201(floor(1/(n+1)+n))]]`
-/

namespace A162342.P5325520267501148510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162201 ⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162342.P5325520267501148510

/-! ## A162342.P2663063781211670433

`∑[abs(∑[-A162201(A028310(n))])]`
-/

namespace A162342.P2663063781211670433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A162201 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162342.P2663063781211670433

/-! ## A162342.P11061389024077107030

`∑[∑[A162201(A193739(∑[n]))%13]]`
-/

namespace A162342.P11061389024077107030
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162201 (A193739 (∑ j ∈ Finset.range (n + 1), f3 j)).toNat) 13

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162342.P11061389024077107030

/-! ## A162342.P2895204620090612873

`∑[abs(∑[A162201(A000007(n)+n)])]`
-/

namespace A162342.P2895204620090612873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162201 (A000007 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162342.P2895204620090612873

/-! ## A162342.P2879051331443324427

`∑[abs(∑[A162201(A004277(n)-n)])]`
-/

namespace A162342.P2879051331443324427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162201 (A004277 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162342.P2879051331443324427

/-! ## A162342.P4973022097382985449

`∑[∑[A162201(A028310(n))]%A000032(n)]`
-/

namespace A162342.P4973022097382985449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162201 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A000032 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162342.P4973022097382985449

/-!
# A162345: Length of n-th edge in the graph of the zig-zag function for prime numbers.

The programs for A162345, the canonical program `A162345.P16599755805380939880` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162345 has offset 1).

The definition of A162345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162345.P1321271131146695996

`Δ[A162800(n)]`
-/

namespace A162345.P1321271131146695996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162345.P1321271131146695996

namespace A162345

/-- `Δ[A162800(n)]` -/
def P1321271131146695996.Spec : Prop :=
  ∀ n, P1321271131146695996.a n = A162345 (n + 1)

end A162345

/-! ## A162345.P16599755805380939880

`round(Δ[A011974(n+1)/2])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A162345

/-- `round(Δ[A011974(n+1)/2])` -/
def P16599755805380939880.Spec : Prop :=
  ∀ n, P16599755805380939880.a n = A162345 (n + 1)

theorem P16599755805380939880.correct : P16599755805380939880.Spec := by
  intro n
  simp only [A162345, Nat.add_sub_cancel]

end A162345

/-! ## A162345.P12592837154179765966

`ceil(A046930(n+1)/2)+1`
-/

namespace A162345.P12592837154179765966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046930 (n + 1) : ℚ) / 2⌉ + 1

end

end A162345.P12592837154179765966

namespace A162345

/-- `ceil(A046930(n+1)/2)+1` -/
def P12592837154179765966.Spec : Prop :=
  ∀ n, P12592837154179765966.a n = A162345 (n + 1)

end A162345

/-! ## A162345.P3682125047923896116

`A263997(A075527(n))`
-/

namespace A162345.P3682125047923896116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263997 (A075527 n).toNat

end

end A162345.P3682125047923896116

namespace A162345

/-- `A263997(A075527(n))` -/
def P3682125047923896116.Spec : Prop :=
  ∀ n, P3682125047923896116.a n = A162345 (n + 1)

end A162345

/-! ## A162345.P9889931475966323725

`A080513(A046930(n+1))`
-/

namespace A162345.P9889931475966323725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A046930 (n + 1)).toNat

end

end A162345.P9889931475966323725

namespace A162345

/-- `A080513(A046930(n+1))` -/
def P9889931475966323725.Spec : Prop :=
  ∀ n, P9889931475966323725.a n = A162345 (n + 1)

end A162345

/-! ## A162345.P1332682150423775463

`A115061(A028310(n)+1)`
-/

namespace A162345.P1332682150423775463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (A028310 n + 1).toNat

end

end A162345.P1332682150423775463

namespace A162345

/-- `A115061(A028310(n)+1)` -/
def P1332682150423775463.Spec : Prop :=
  ∀ n, P1332682150423775463.a n = A162345 (n + 1)

end A162345

/-! ## A162345.P9525407930763365340

`A115061(A348776(n+1))`
-/

namespace A162345.P9525407930763365340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (A348776 (n + 1)).toNat

end

end A162345.P9525407930763365340

namespace A162345

/-- `A115061(A348776(n+1))` -/
def P9525407930763365340.Spec : Prop :=
  ∀ n, P9525407930763365340.a n = A162345 (n + 1)

end A162345

/-! ## A162345.P13277582116414108488

`A029578(Δ[A011974(n+1)])`
-/

namespace A162345.P13277582116414108488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f1 (n + 1) - f1 n).toNat

end

end A162345.P13277582116414108488

namespace A162345

/-- `A029578(Δ[A011974(n+1)])` -/
def P13277582116414108488.Spec : Prop :=
  ∀ n, P13277582116414108488.a n = A162345 (n + 1)

end A162345

/-! ## A162345.P17858921959921491761

`A115061(A000007(n)+1+n)`
-/

namespace A162345.P17858921959921491761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (A000007 n + 1 + (n : ℤ)).toNat

end

end A162345.P17858921959921491761

namespace A162345

/-- `A115061(A000007(n)+1+n)` -/
def P17858921959921491761.Spec : Prop :=
  ∀ n, P17858921959921491761.a n = A162345 (n + 1)

end A162345

/-! ## A162345.P11521589425158809224

`A162800(n+1)-A162800(n)`
-/

namespace A162345.P11521589425158809224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (n + 1) - A162800 n

end

end A162345.P11521589425158809224

namespace A162345

/-- `A162800(n+1)-A162800(n)` -/
def P11521589425158809224.Spec : Prop :=
  ∀ n, P11521589425158809224.a n = A162345 (n + 1)

end A162345

/-! ## A162345.P6645946781722601702

`A002265(2*(A046930(n+1)+3))`
-/

namespace A162345.P6645946781722601702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A046930 (n + 1) + 3)).toNat

end

end A162345.P6645946781722601702

namespace A162345

/-- `A002265(2*(A046930(n+1)+3))` -/
def P6645946781722601702.Spec : Prop :=
  ∀ n, P6645946781722601702.a n = A162345 (n + 1)

end A162345

/-! ## A162345.P14236460814096183532

`A065091(n+1)-A062839(n+1)`
-/

namespace A162345.P14236460814096183532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A062839 (n + 1)

end

end A162345.P14236460814096183532

namespace A162345

/-- `A065091(n+1)-A062839(n+1)` -/
def P14236460814096183532.Spec : Prop :=
  ∀ n, P14236460814096183532.a n = A162345 (n + 1)

end A162345

/-! ## A162345.P18145284910625886891

`A115061(A162203(2*n+1)+n)`
-/

namespace A162345.P18145284910625886891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (A162203 (2 * n + 1) + (n : ℤ)).toNat

end

end A162345.P18145284910625886891

namespace A162345

/-- `A115061(A162203(2*n+1)+n)` -/
def P18145284910625886891.Spec : Prop :=
  ∀ n, P18145284910625886891.a n = A162345 (n + 1)

end A162345

/-! ## A162345.P5751084386617600134

`A024675(n+1)-(A062839(n+1)+A028334(n+2))`
-/

namespace A162345.P5751084386617600134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1) - (A062839 (n + 1) + A028334 (n + 2))

end

end A162345.P5751084386617600134

namespace A162345

/-- `A024675(n+1)-(A062839(n+1)+A028334(n+2))` -/
def P5751084386617600134.Spec : Prop :=
  ∀ n, P5751084386617600134.a n = A162345 (n + 1)

end A162345

/-! ## A162345.P8623131725017302696

`A115061(A254667(n+1))`
-/

namespace A162345.P8623131725017302696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (A254667 (n + 1)).toNat

end

end A162345.P8623131725017302696

namespace A162345

/-- `A115061(A254667(n+1))` -/
def P8623131725017302696.Spec : Prop :=
  ∀ n, P8623131725017302696.a n = A162345 (n + 1)

end A162345

/-! ## A162345.P4181538522818459686

`A000040(n+2)-A062839(n+1)`
-/

namespace A162345.P4181538522818459686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A062839 (n + 1)

end

end A162345.P4181538522818459686

namespace A162345

/-- `A000040(n+2)-A062839(n+1)` -/
def P4181538522818459686.Spec : Prop :=
  ∀ n, P4181538522818459686.a n = A162345 (n + 1)

end A162345

/-! ## A162345.P5098538742163911671

`A006005(n+1)+A115061(n+1)-A008578(n+2)`
-/

namespace A162345.P5098538742163911671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) + (A115061 (n + 1) - A008578 (n + 2))

end

end A162345.P5098538742163911671

namespace A162345

/-- `A006005(n+1)+A115061(n+1)-A008578(n+2)` -/
def P5098538742163911671.Spec : Prop :=
  ∀ n, P5098538742163911671.a n = A162345 (n + 1)

end A162345

/-! ## A162345.P14933034587557168688

`and(A115374(n+1)²-2, A115061(n+1))`
-/

namespace A162345.P14933034587557168688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115374 (n + 1) ^ 2 - 2) (A115061 (n + 1))

end

end A162345.P14933034587557168688

namespace A162345

/-- `and(A115374(n+1)²-2, A115061(n+1))` -/
def P14933034587557168688.Spec : Prop :=
  ∀ n, P14933034587557168688.a n = A162345 (n + 1)

end A162345

/-! ## A162345.P4147767760549171381

`A115061(A233583(n+1)+1)`
-/

namespace A162345.P4147767760549171381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (A233583 (n + 1) + 1).toNat

end

end A162345.P4147767760549171381

namespace A162345

/-- `A115061(A233583(n+1)+1)` -/
def P4147767760549171381.Spec : Prop :=
  ∀ n, P4147767760549171381.a n = A162345 (n + 1)

end A162345

/-!
# A162346: Number of reduced words of length n in the Weyl group D_18.

The programs for A162346, there is no canonical definition to state claims against.
-/

/-! ## A162346.P15568616871442233520

`A161878(n)-A185284(2*n+1)`
-/

namespace A162346.P15568616871442233520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161878 n - A185284 (2 * n + 1)

end

end A162346.P15568616871442233520

/-!
# A162347: Number of reduced words of length n in the Weyl group D_19.

The programs for A162347, there is no canonical definition to state claims against.
-/

/-! ## A162347.P4059169888241737328

`A185284(A143632(n))+A161879(n)`
-/

namespace A162347.P4059169888241737328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A143632 n).toNat + A161879 n

end

end A162347.P4059169888241737328

/-!
# A162348: List of pairs (i,j) of central factors of n, such that i*j = n, where i is the largest divisor of n <= sqrt(n) and j is the smallest divisor of n >= sqrt(n).

The programs for A162348, there is no canonical definition to state claims against.
-/

/-! ## A162348.P1428860887861908788

`A207375(∑[A049240(2*(n+1))])`
-/

namespace A162348.P1428860887861908788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207375 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162348.P1428860887861908788

/-! ## A162348.P17917668310817114197

`A207375(∑[A169695(2*(n+1))-1])`
-/

namespace A162348.P17917668310817114197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207375 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162348.P17917668310817114197

/-! ## A162348.P4972530316942290309

`A207375(∑[A000035(A340195(n+1))])`
-/

namespace A162348.P4972530316942290309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A340195 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207375 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162348.P4972530316942290309

/-! ## A162348.P7335466053830765895

`ratio[A033676(A152271(n))]*A152271(n)`
-/

namespace A162348.P7335466053830765895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A152271 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A152271 n : ℚ)

end

end A162348.P7335466053830765895

/-! ## A162348.P15576626774574902186

`A207375(∑[A263804(2*(n+1))])`
-/

namespace A162348.P15576626774574902186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263804 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207375 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162348.P15576626774574902186

/-! ## A162348.P15896340548824831239

`A207375(∑[log2(A275437(2*n+1))])`
-/

namespace A162348.P15896340548824831239
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A275437 (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207375 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A162348.P15896340548824831239

/-! ## A162348.P1397653714631581767

`A207375(∑[A275437(2*n+1)-1])`
-/

namespace A162348.P1397653714631581767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207375 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162348.P1397653714631581767

/-!
# A162349: First differences of A160412.

The programs for A162349, the canonical program `A162349.P17912543935636946866` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162349 has offset 1).

The definition of A162349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162349.P17912543935636946866

`3*A048883(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A162349

/-- `3*A048883(n)` -/
def P17912543935636946866.Spec : Prop :=
  ∀ n, P17912543935636946866.a n = A162349 (n + 1)

theorem P17912543935636946866.correct : P17912543935636946866.Spec := by
  intro n
  simp only [A162349, Nat.add_sub_cancel]

end A162349

/-! ## A162349.P10732276405633361853

`3^A063787(n+1)`
-/

namespace A162349.P10732276405633361853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A063787 (n + 1) : ℤ)

end

end A162349.P10732276405633361853

namespace A162349

/-- `3^A063787(n+1)` -/
def P10732276405633361853.Spec : Prop :=
  ∀ n, P10732276405633361853.a n = (A162349 (n + 1) : ℚ)

end A162349

/-! ## A162349.P646580774562941690

`3*a(and(n, n-1))` with `a(0)=3`
-/

namespace A162349.P646580774562941690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A162349.P646580774562941690

namespace A162349

/-- `3*a(and(n, n-1))` -/
def P646580774562941690.Spec : Prop :=
  ∀ n, (P646580774562941690.a n : ℤ) = A162349 (n + 1)

end A162349

/-! ## A162349.P15591638958413962457

`3*a(or(n, -n)+n)` with `a(0)=3`
-/

namespace A162349.P15591638958413962457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 * a (Int.lor (n : ℤ) (-(n : ℤ)) + (n : ℤ)).toNat

end

end A162349.P15591638958413962457

namespace A162349

/-- `3*a(or(n, -n)+n)` -/
def P15591638958413962457.Spec : Prop :=
  ∀ n, (P15591638958413962457.a n : ℤ) = A162349 (n + 1)

end A162349

/-! ## A162349.P1550727033315070734

`3*a(n-abs(or(n, -n)))` with `a(0)=3`
-/

namespace A162349.P1550727033315070734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 * a ((n : ℤ) - |Int.lor (n : ℤ) (-(n : ℤ))|).toNat

end

end A162349.P1550727033315070734

namespace A162349

/-- `3*a(n-abs(or(n, -n)))` -/
def P1550727033315070734.Spec : Prop :=
  ∀ n, (P1550727033315070734.a n : ℤ) = A162349 (n + 1)

end A162349

/-! ## A162349.P2104786435557312356

`6/abs(2/a(and(n, n-1)))` with `a(0)=3`
-/

namespace A162349.P2104786435557312356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  6 / |2 / a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat|

end

end A162349.P2104786435557312356

namespace A162349

/-- `6/abs(2/a(and(n, n-1)))` -/
def P2104786435557312356.Spec : Prop :=
  ∀ n, P2104786435557312356.a n = (A162349 (n + 1) : ℚ)

end A162349

/-! ## A162349.P10809685917570185905

`3*a(xor(n, -n)/2+n)` with `a(0)=3`
-/

namespace A162349.P10809685917570185905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 * a (SequenceMachineLib.roundAway ((Int.xor (n : ℤ) (-(n : ℤ)) : ℚ) / 2 + (n : ℚ))).toNat

end

end A162349.P10809685917570185905

namespace A162349

/-- `3*a(xor(n, -n)/2+n)` -/
def P10809685917570185905.Spec : Prop :=
  ∀ n, (P10809685917570185905.a n : ℤ) = A162349 (n + 1)

end A162349

/-! ## A162349.P8652996234406512673

`3*a(n-n%xor(n, -n))` with `a(0)=3`
-/

namespace A162349.P8652996234406512673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  3 * a ((n : ℤ) - Int.tmod (n : ℤ) (Int.xor (n : ℤ) (-(n : ℤ)))).toNat

end

end A162349.P8652996234406512673

namespace A162349

/-- `3*a(n-n%xor(n, -n))` -/
def P8652996234406512673.Spec : Prop :=
  ∀ n, (P8652996234406512673.a n : ℤ) = A162349 (n + 1)

end A162349

/-! ## A162349.P16999710070594003328

`3*(A151712(n)-1)`
-/

namespace A162349.P16999710070594003328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A151712 n - 1)

end

end A162349.P16999710070594003328

namespace A162349

/-- `3*(A151712(n)-1)` -/
def P16999710070594003328.Spec : Prop :=
  ∀ n, P16999710070594003328.a n = A162349 (n + 1)

end A162349

/-! ## A162349.P16047593934911102919

`3^(A000120(n)+1)`
-/

namespace A162349.P16047593934911102919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000120 n + 1 : ℤ)

end

end A162349.P16047593934911102919

namespace A162349

/-- `3^(A000120(n)+1)` -/
def P16047593934911102919.Spec : Prop :=
  ∀ n, P16047593934911102919.a n = (A162349 (n + 1) : ℚ)

end A162349

/-! ## A162349.P11872136182417670330

`3^(n+1-A011371(n))`
-/

namespace A162349.P11872136182417670330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n + 1 : ℤ) - A011371 n : ℤ)

end

end A162349.P11872136182417670330

namespace A162349

/-- `3^(n+1-A011371(n))` -/
def P11872136182417670330.Spec : Prop :=
  ∀ n, P11872136182417670330.a n = (A162349 (n + 1) : ℚ)

end A162349

/-! ## A162349.P17486228779281802393

`3^(A230300(n+1)-n)`
-/

namespace A162349.P17486228779281802393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A230300 (n + 1) - (n : ℤ) : ℤ)

end

end A162349.P17486228779281802393

namespace A162349

/-- `3^(A230300(n+1)-n)` -/
def P17486228779281802393.Spec : Prop :=
  ∀ n, P17486228779281802393.a n = (A162349 (n + 1) : ℚ)

end A162349

/-! ## A162349.P13505636460052015693

`A074938(A001316(n))`
-/

namespace A162349.P13505636460052015693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 (A001316 n).toNat

end

end A162349.P13505636460052015693

namespace A162349

/-- `A074938(A001316(n))` -/
def P13505636460052015693.Spec : Prop :=
  ∀ n, P13505636460052015693.a n = A162349 (n + 1)

end A162349

/-! ## A162349.P12649030038244246392

`A003959(A117973(n))`
-/

namespace A162349.P12649030038244246392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A117973 n).toNat

end

end A162349.P12649030038244246392

namespace A162349

/-- `A003959(A117973(n))` -/
def P12649030038244246392.Spec : Prop :=
  ∀ n, P12649030038244246392.a n = A162349 (n + 1)

end A162349

/-! ## A162349.P16330101452417711231

`A000244(A000120(n)+1)`
-/

namespace A162349.P16330101452417711231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A000120 n + 1).toNat

end

end A162349.P16330101452417711231

namespace A162349

/-- `A000244(A000120(n)+1)` -/
def P16330101452417711231.Spec : Prop :=
  ∀ n, P16330101452417711231.a n = A162349 (n + 1)

end A162349

/-! ## A162349.P1114708080945394491

`A133494(A000120(n)+2)`
-/

namespace A162349.P1114708080945394491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (A000120 n + 2).toNat

end

end A162349.P1114708080945394491

namespace A162349

/-- `A133494(A000120(n)+2)` -/
def P1114708080945394491.Spec : Prop :=
  ∀ n, P1114708080945394491.a n = A162349 (n + 1)

end A162349

/-! ## A162349.P10591279296541497043

`A003959(2*A001316(n))`
-/

namespace A162349.P10591279296541497043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (2 * A001316 n).toNat

end

end A162349.P10591279296541497043

namespace A162349

/-- `A003959(2*A001316(n))` -/
def P10591279296541497043.Spec : Prop :=
  ∀ n, P10591279296541497043.a n = A162349 (n + 1)

end A162349

/-! ## A162349.P16196293719744220987

`A256256(A001316(2*n))/2`
-/

namespace A162349.P16196293719744220987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256256 (A001316 (2 * n)).toNat : ℚ) / 2

end

end A162349.P16196293719744220987

namespace A162349

/-- `A256256(A001316(2*n))/2` -/
def P16196293719744220987.Spec : Prop :=
  ∀ n, P16196293719744220987.a n = (A162349 (n + 1) : ℚ)

end A162349

/-! ## A162349.P11172914215737531206

`A003959(A001316(n+1+n))`
-/

namespace A162349.P11172914215737531206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A001316 (n + 1 + n)).toNat

end

end A162349.P11172914215737531206

namespace A162349

/-- `A003959(A001316(n+1+n))` -/
def P11172914215737531206.Spec : Prop :=
  ∀ n, P11172914215737531206.a n = A162349 (n + 1)

end A162349

/-! ## A162349.P16808399225460557981

`A161411(n+1)-A048883(n)`
-/

namespace A162349.P16808399225460557981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161411 (n + 1) - A048883 n

end

end A162349.P16808399225460557981

namespace A162349

/-- `A161411(n+1)-A048883(n)` -/
def P16808399225460557981.Spec : Prop :=
  ∀ n, P16808399225460557981.a n = A162349 (n + 1)

end A162349

/-!
# A162350: The path of the primes: Pairs (x,y) such that the points P(x,y) represent the position of the nonnegative integers in the graph of the "mountain path" function for prime numbers.

The programs for A162350, there is no canonical definition to state claims against.
-/

/-! ## A162350.P15206656591728068785

`A083895(5*A112032(n))`
-/

namespace A162350.P15206656591728068785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083895 (5 * A112032 n).toNat

end

end A162350.P15206656591728068785

/-! ## A162350.P1647203739383010814

`A083895(lcm(5, A112032(n)))`
-/

namespace A162350.P1647203739383010814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083895 (Int.lcm 5 (A112032 n))

end

end A162350.P1647203739383010814

/-! ## A162350.P4087818503899072822

`A251631(A084964(n)%A145041(n+1))`
-/

namespace A162350.P4087818503899072822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251631 (Int.tmod (A084964 n) (A145041 (n + 1))).toNat

end

end A162350.P4087818503899072822

/-! ## A162350.P16172237407462696440

`A007318(A001498(n))!*A004524(A084964(n))`
-/

namespace A162350.P16172237407462696440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A007318 (A001498 n).toNat).toNat : ℤ) * A004524 (A084964 n).toNat

end

end A162350.P16172237407462696440

/-! ## A162350.P9718387237691258422

`A185018(A321156(2*n+1))+A083918(A112033(n))`
-/

namespace A162350.P9718387237691258422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 (A321156 (2 * n + 1)).toNat + A083918 (A112033 n).toNat

end

end A162350.P9718387237691258422

/-!
# A162351: Values x of pairs (x,y) that generate the graph of the "mountain path" function for prime numbers.

The programs for A162351, there is no canonical definition to state claims against.
-/

/-! ## A162351.P6608138283815460593

`comp[A162340(n)+n]-n`
-/

namespace A162351.P6608138283815460593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162340 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A162351.P6608138283815460593

/-! ## A162351.P2054134101092939784

`A162350(2*n)`
-/

namespace A162351.P2054134101092939784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162350 (2 * n)

end

end A162351.P2054134101092939784

/-! ## A162351.P3600889162257754158

`A162350(n+n)%25`
-/

namespace A162351.P3600889162257754158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162350 (n + n)) 25

end

end A162351.P3600889162257754158

/-! ## A162351.P8440853242901574289

`and(15, A162350(A004277(n)))`
-/

namespace A162351.P8440853242901574289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A162350 (A004277 n).toNat)

end

end A162351.P8440853242901574289

/-!
# A162352: Bisection of A162350.

The programs for A162352, there is no canonical definition to state claims against.
-/

/-! ## A162352.P15935259994831413793

`A162350(Δ[n²])`
-/

namespace A162352.P15935259994831413793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162350 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A162352.P15935259994831413793

/-! ## A162352.P10317936565444871245

`A162350(2*n+1)%11`
-/

namespace A162352.P10317936565444871245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162350 (2 * n + 1)) 11

end

end A162352.P10317936565444871245

/-! ## A162352.P4867267793081844698

`A072088(A162350(2*n+1))`
-/

namespace A162352.P4867267793081844698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A162350 (2 * n + 1)).toNat

end

end A162352.P4867267793081844698

/-! ## A162352.P10602129031769579487

`A014157(A162350(2*n+1)+1)`
-/

namespace A162352.P10602129031769579487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014157 (A162350 (2 * n + 1) + 1).toNat

end

end A162352.P10602129031769579487

/-! ## A162352.P9696847898109466222

`A342042(A162350(2*n+1)+1)`
-/

namespace A162352.P9696847898109466222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342042 (A162350 (2 * n + 1) + 1).toNat

end

end A162352.P9696847898109466222

/-!
# A162354: Primes that are anagrams of triangular numbers.

The programs for A162354, there is no canonical definition to state claims against.
-/

/-! ## A162354.P7634898663454622849

`A266646(p?[A007960(n+1)])`
-/

namespace A162354.P7634898663454622849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266646 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A162354.P7634898663454622849

/-! ## A162354.P13266501648619970266

`p?[A007960(n+1)*A178334(n)]`
-/

namespace A162354.P13266501648619970266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007960 (n + 1) * A178334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162354.P13266501648619970266

/-! ## A162354.P10517336730557626120

`p?[A007960(A354487(n+4)+n)]`
-/

namespace A162354.P10517336730557626120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007960 (A354487 (n + 4) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162354.P10517336730557626120

/-! ## A162354.P18116938056460223806

`p?[A007960(n+1)*A007968(2*n)]`
-/

namespace A162354.P18116938056460223806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007960 (n + 1) * A007968 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162354.P18116938056460223806

/-!
# A162356: a(n) = 8*a(n-1)-14*a(n-2) for n>1; a(0) = 2; a(1) = 9.

The programs for A162356, the canonical program `A162356.P1287878513775587278` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162356 has offset 0).

The definition of A162356 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-14*a(n-2)` (program `A162356.P1287878513775587278`, by `A162356.P1287878513775587278.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162356.P1287878513775587278

`8*a(n-1)-14*a(n-2)` with `a(0)=2, a(1)=9`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162356

/-- `8*a(n-1)-14*a(n-2)` -/
def P1287878513775587278.Spec : Prop :=
  ∀ n, P1287878513775587278.a n = A162356 n

theorem P1287878513775587278.correct : P1287878513775587278.Spec := by
  intro n
  simp only [A162356]

end A162356

/-! ## A162356.P9563022776892672733

`((4+sqrt(2))^(n+1)+(4-sqrt(2))^(n+1))/4`
-/

namespace A162356.P9563022776892672733
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (2 : ℝ)) ^ (n + 1) + (4 - Real.sqrt (2 : ℝ)) ^ (n + 1)) / 4

end

end A162356.P9563022776892672733

namespace A162356

/-- `((4+sqrt(2))^(n+1)+(4-sqrt(2))^(n+1))/4` -/
def P9563022776892672733.Spec : Prop :=
  ∀ n, P9563022776892672733.a n = (A162356 n : ℝ)

end A162356

/-! ## A162356.P1733762297055823272

`ogf((2-7x)/(1-8x+14x^2))`
-/

namespace A162356.P1733762297055823272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7] [1, -8, 14] n

end

end A162356.P1733762297055823272

namespace A162356

/-- `ogf((2-7x)/(1-8x+14x^2))` -/
def P1733762297055823272.Spec : Prop :=
  ∀ n, P1733762297055823272.a n = A162356 n

end A162356

/-! ## A162356.P7841913478400659599

`A161731(n)+A083879(n)`
-/

namespace A162356.P7841913478400659599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161731 n + A083879 n

end

end A162356.P7841913478400659599

namespace A162356

/-- `A161731(n)+A083879(n)` -/
def P7841913478400659599.Spec : Prop :=
  ∀ n, P7841913478400659599.a n = A162356 n

end A162356

/-! ## A162356.P886593846244887341

`A081180(n)+2*A083879(n)`
-/

namespace A162356.P886593846244887341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081180 n + 2 * A083879 n

end

end A162356.P886593846244887341

namespace A162356

/-- `A081180(n)+2*A083879(n)` -/
def P886593846244887341.Spec : Prop :=
  ∀ n, P886593846244887341.a n = A162356 n

end A162356

/-! ## A162356.P16130218119294629802

`2*A161731(n)-A081180(n)`
-/

namespace A162356.P16130218119294629802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161731 n - A081180 n

end

end A162356.P16130218119294629802

namespace A162356

/-- `2*A161731(n)-A081180(n)` -/
def P16130218119294629802.Spec : Prop :=
  ∀ n, P16130218119294629802.a n = A162356 n

end A162356

/-! ## A162356.P3873449915904618643

`floor(A083879(n+1)/2)`
-/

namespace A162356.P3873449915904618643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083879 (n + 1) : ℚ) / 2⌋

end

end A162356.P3873449915904618643

namespace A162356

/-- `floor(A083879(n+1)/2)` -/
def P3873449915904618643.Spec : Prop :=
  ∀ n, P3873449915904618643.a n = A162356 n

end A162356

/-! ## A162356.P2095886877993085274

`A163604(n)-A164072(n)`
-/

namespace A162356.P2095886877993085274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163604 n - A164072 n

end

end A162356.P2095886877993085274

namespace A162356

/-- `A163604(n)-A164072(n)` -/
def P2095886877993085274.Spec : Prop :=
  ∀ n, P2095886877993085274.a n = A162356 n

end A162356

/-! ## A162356.P2209181042026893687

`record[A083879(A007599(n))/2]`
-/

namespace A162356.P2209181042026893687
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083879 (A007599 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162356.P2209181042026893687

namespace A162356

/-- `record[A083879(A007599(n))/2]` -/
def P2209181042026893687.Spec : Prop :=
  ∀ n, P2209181042026893687.a n = (A162356 n : ℚ)

end A162356

/-! ## A162356.P11479599738356693338

`A164034(n)-2*A081180(n)`
-/

namespace A162356.P11479599738356693338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164034 n - 2 * A081180 n

end

end A162356.P11479599738356693338

namespace A162356

/-- `A164034(n)-2*A081180(n)` -/
def P11479599738356693338.Spec : Prop :=
  ∀ n, P11479599738356693338.a n = A162356 n

end A162356

/-! ## A162356.P9030334009658014842

`A163350(n+1)/2-A081180(n+1)`
-/

namespace A162356.P9030334009658014842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163350 (n + 1) : ℚ) / 2 - (A081180 (n + 1) : ℚ)

end

end A162356.P9030334009658014842

namespace A162356

/-- `A163350(n+1)/2-A081180(n+1)` -/
def P9030334009658014842.Spec : Prop :=
  ∀ n, P9030334009658014842.a n = (A162356 n : ℚ)

end A162356

/-! ## A162356.P9152113054371027189

`A161731(n+1)-A163350(n+1)/2`
-/

namespace A162356.P9152113054371027189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161731 (n + 1) : ℚ) - (A163350 (n + 1) : ℚ) / 2

end

end A162356.P9152113054371027189

namespace A162356

/-- `A161731(n+1)-A163350(n+1)/2` -/
def P9152113054371027189.Spec : Prop :=
  ∀ n, P9152113054371027189.a n = (A162356 n : ℚ)

end A162356

/-! ## A162356.P13366130870945226434

`Δ[A161731(n)]-(A164072(n)+A161731(n))`
-/

namespace A162356.P13366130870945226434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A164072 n + A161731 n)

end

end A162356.P13366130870945226434

namespace A162356

/-- `Δ[A161731(n)]-(A164072(n)+A161731(n))` -/
def P13366130870945226434.Spec : Prop :=
  ∀ n, P13366130870945226434.a n = A162356 n

end A162356

/-! ## A162356.P15384865861246444246

`A083879(n+1)/A056236(n)*A006012(n)`
-/

namespace A162356.P15384865861246444246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083879 (n + 1) : ℚ) / (A056236 n : ℚ) * (A006012 n : ℚ)

end

end A162356.P15384865861246444246

namespace A162356

/-- `A083879(n+1)/A056236(n)*A006012(n)` -/
def P15384865861246444246.Spec : Prop :=
  ∀ n, P15384865861246444246.a n = (A162356 n : ℚ)

end A162356

/-!
# A162357: a(n) is the smallest prime p beginning with 2n such that the difference between p and the next prime is 2n.

The programs for A162357, there is no canonical definition to state claims against.
-/

/-! ## A162357.P6425033050525317831

`p?[A244249(A319059(n+1))-A185103(n+2)]`
-/

namespace A162357.P6425033050525317831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244249 (A319059 (n + 1)).toNat - A185103 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162357.P6425033050525317831

/-!
# A162358: The larger member q in a pair of successive primes (p,q) such that p*q+p+q is prime.

The programs for A162358, there is no canonical definition to state claims against.
-/

/-! ## A162358.P6729214847037957284

`A151800(A126148(n+1))`
-/

namespace A162358.P6729214847037957284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A126148 (n + 1)).toNat

end

end A162358.P6729214847037957284

/-! ## A162358.P18147369205006488581

`A096342(n+1)%(2*A126148(n+1))`
-/

namespace A162358.P18147369205006488581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096342 (n + 1)) (2 * A126148 (n + 1))

end

end A162358.P18147369205006488581

/-! ## A162358.P5932703334275688565

`A000040(A000720(A126148(n+1))+1)`
-/

namespace A162358.P5932703334275688565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A126148 (n + 1)).toNat + 1).toNat

end

end A162358.P5932703334275688565

/-! ## A162358.P6944246804128658235

`A000040(A061395(A126148(n+1))+1)`
-/

namespace A162358.P6944246804128658235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 (A126148 (n + 1)).toNat + 1).toNat

end

end A162358.P6944246804128658235

/-! ## A162358.P7214361674978850109

`A003961(p?[A126148(n+1)])`
-/

namespace A162358.P7214361674978850109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A162358.P7214361674978850109

/-! ## A162358.P17232500264753982047

`A045965(p?[A126148(n+1)])`
-/

namespace A162358.P17232500264753982047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A162358.P17232500264753982047

/-! ## A162358.P10534133128082998127

`A117366(p?[A126148(n+1)])`
-/

namespace A162358.P10534133128082998127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A162358.P10534133128082998127

/-! ## A162358.P3792059476691508865

`A007918(A126148(n+1)+1)`
-/

namespace A162358.P3792059476691508865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A126148 (n + 1) + 1).toNat

end

end A162358.P3792059476691508865

/-! ## A162358.P14716654476817792263

`A210882(A126148(n+1)+1)`
-/

namespace A162358.P14716654476817792263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (A126148 (n + 1) + 1).toNat

end

end A162358.P14716654476817792263

/-! ## A162358.P5789489547163932731

`A101300(A126148(n+1)-1)`
-/

namespace A162358.P5789489547163932731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 (A126148 (n + 1) - 1).toNat

end

end A162358.P5789489547163932731

/-! ## A162358.P16354623164879295424

`A003961(∏{d}[A126148(n+1), #])`
-/

namespace A162358.P16354623164879295424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A162358.P16354623164879295424

/-! ## A162358.P5515855818640347157

`A003961(∏{p}[A126148(n+1), #])`
-/

namespace A162358.P5515855818640347157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A162358.P5515855818640347157

/-! ## A162358.P14256744449791274080

`A285639(A126148(2*n+1-n))`
-/

namespace A162358.P14256744449791274080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285639 (A126148 (2 * n + 1 - n)).toNat

end

end A162358.P14256744449791274080

/-! ## A162358.P1602624092978491331

`A003961(char[A004450(n)]*A126148(n+1))`
-/

namespace A162358.P1602624092978491331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004450 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A126148 (n + 1)).toNat

end

end A162358.P1602624092978491331

/-! ## A162358.P10797224766534751581

`A003961(2*A126148(n+1)-A126148(n+1))`
-/

namespace A162358.P10797224766534751581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * A126148 (n + 1) - A126148 (n + 1)).toNat

end

end A162358.P10797224766534751581

/-! ## A162358.P5025653832773780249

`A045965(2*A126148(n+1)-A126148(n+1))`
-/

namespace A162358.P5025653832773780249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (2 * A126148 (n + 1) - A126148 (n + 1)).toNat

end

end A162358.P5025653832773780249

/-! ## A162358.P13035932549653389942

`A117366(2*A126148(n+1))`
-/

namespace A162358.P13035932549653389942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (2 * A126148 (n + 1)).toNat

end

end A162358.P13035932549653389942

/-!
# A162359: Number of reduced words of length n in the Weyl group D_20.

The programs for A162359, there is no canonical definition to state claims against.
-/

/-! ## A162359.P12507567661050928839

`A161880(n)+A161840(A001578(n+3))`
-/

namespace A162359.P12507567661050928839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161880 n + A161840 (A001578 (n + 3)).toNat

end

end A162359.P12507567661050928839

/-!
# A162360: Number of reduced words of length n in the Weyl group D_21.

The programs for A162360, there is no canonical definition to state claims against.
-/

/-! ## A162360.P16760448793613610649

`A161899(n)-A172542(A128084(n))`
-/

namespace A162360.P16760448793613610649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161899 n - A172542 (A128084 n).toNat

end

end A162360.P16760448793613610649

/-!
# A162361: Central prime factor of A014612(n).

The programs for A162361, the canonical program `A162361.P4203513439730037896` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162361 has offset 1).

The definition of A162361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A162361.P13278442224766101448

`A014612(n+1)-A162731(n+1)`
-/

namespace A162361.P13278442224766101448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1) - A162731 (n + 1)

end

end A162361.P13278442224766101448

namespace A162361

/-- `A014612(n+1)-A162731(n+1)` -/
def P13278442224766101448.Spec : Prop :=
  ∀ n, P13278442224766101448.a n = A162361 (n + 1)

end A162361

/-! ## A162361.P9904666730248017654

`A014612(n+1)/A163173(n+1)`
-/

namespace A162361.P9904666730248017654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014612 (n + 1) : ℚ) / (A163173 (n + 1) : ℚ)

end

end A162361.P9904666730248017654

namespace A162361

/-- `A014612(n+1)/A163173(n+1)` -/
def P9904666730248017654.Spec : Prop :=
  ∀ n, P9904666730248017654.a n = (A162361 (n + 1) : ℚ)

end A162361

/-! ## A162361.P4203513439730037896

`A006530(A014612(n+1)/A006530(A014612(n+1)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A162361

/-- `A006530(A014612(n+1)/A006530(A014612(n+1)))` -/
def P4203513439730037896.Spec : Prop :=
  ∀ n, P4203513439730037896.a n = A162361 (n + 1)

theorem P4203513439730037896.correct : P4203513439730037896.Spec := by
  intro n
  simp only [A162361, Nat.add_sub_cancel]

end A162361

/-! ## A162361.P12442293720325758456

`A020639(A014612(n+1)/A020639(A014612(n+1)))`
-/

namespace A162361.P12442293720325758456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A014612 (n + 1) : ℚ) / (A020639 (A014612 (n + 1)).toNat : ℚ))).toNat

end

end A162361.P12442293720325758456

namespace A162361

/-- `A020639(A014612(n+1)/A020639(A014612(n+1)))` -/
def P12442293720325758456.Spec : Prop :=
  ∀ n, P12442293720325758456.a n = A162361 (n + 1)

end A162361

/-! ## A162361.P13001617318083588927

`p?[A032742((n+1)/A006530(n+1))]`
-/

namespace A162361.P13001617318083588927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162361.P13001617318083588927

namespace A162361

/-- `p?[A032742((n+1)/A006530(n+1))]` -/
def P13001617318083588927.Spec : Prop :=
  ∀ n, P13001617318083588927.a n = A162361 (n + 1)

end A162361

/-! ## A162361.P7341222692867266212

`p?[A052126((n+1)/A020639(n+1))]`
-/

namespace A162361.P7341222692867266212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162361.P7341222692867266212

namespace A162361

/-- `p?[A052126((n+1)/A020639(n+1))]` -/
def P7341222692867266212.Spec : Prop :=
  ∀ n, P7341222692867266212.a n = A162361 (n + 1)

end A162361

/-! ## A162361.P6278423636632233973

`A329888(A014612(n+1))`
-/

namespace A162361.P6278423636632233973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A014612 (n + 1)).toNat

end

end A162361.P6278423636632233973

namespace A162361

/-- `A329888(A014612(n+1))` -/
def P6278423636632233973.Spec : Prop :=
  ∀ n, P6278423636632233973.a n = A162361 (n + 1)

end A162361

/-! ## A162361.P5724100227734182707

`p?[A329888(n+1)%((n+1)/A006530(n+1))]`
-/

namespace A162361.P5724100227734182707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329888 (n + 1)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162361.P5724100227734182707

namespace A162361

/-- `p?[A329888(n+1)%((n+1)/A006530(n+1))]` -/
def P5724100227734182707.Spec : Prop :=
  ∀ n, P5724100227734182707.a n = A162361 (n + 1)

end A162361

/-! ## A162361.P2372916474081951072

`p?[A070821(n+1)]`
-/

namespace A162361.P2372916474081951072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162361.P2372916474081951072

namespace A162361

/-- `p?[A070821(n+1)]` -/
def P2372916474081951072.Spec : Prop :=
  ∀ n, P2372916474081951072.a n = A162361 (n + 1)

end A162361

/-! ## A162361.P14503847101843722343

`p?[A052126(A032742(n+1))]`
-/

namespace A162361.P14503847101843722343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162361.P14503847101843722343

namespace A162361

/-- `p?[A052126(A032742(n+1))]` -/
def P14503847101843722343.Spec : Prop :=
  ∀ n, P14503847101843722343.a n = A162361 (n + 1)

end A162361

/-! ## A162361.P8693964124696219979

`p?[A073752(2*A032742(n+1))]`
-/

namespace A162361.P8693964124696219979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073752 (2 * A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162361.P8693964124696219979

namespace A162361

/-- `p?[A073752(2*A032742(n+1))]` -/
def P8693964124696219979.Spec : Prop :=
  ∀ n, P8693964124696219979.a n = A162361 (n + 1)

end A162361

/-! ## A162361.P10117783662458329759

`A014673(eq[3, A001222(n+1)]+1)`
-/

namespace A162361.P10117783662458329759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A162361.P10117783662458329759

namespace A162361

/-- `A014673(eq[3, A001222(n+1)]+1)` -/
def P10117783662458329759.Spec : Prop :=
  ∀ n, P10117783662458329759.a n = A162361 (n + 1)

end A162361

/-! ## A162361.P9596354646575513763

`p?[A052126(n+1-A060681(n+1))]`
-/

namespace A162361.P9596354646575513763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 ((n + 1 : ℤ) - A060681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162361.P9596354646575513763

namespace A162361

/-- `p?[A052126(n+1-A060681(n+1))]` -/
def P9596354646575513763.Spec : Prop :=
  ∀ n, P9596354646575513763.a n = A162361 (n + 1)

end A162361

/-! ## A162361.P6437820631373586502

`p?[A032742(1-A171462(n+1)+n)]`
-/

namespace A162361.P6437820631373586502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (1 - A171462 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162361.P6437820631373586502

namespace A162361

/-- `p?[A032742(1-A171462(n+1)+n)]` -/
def P6437820631373586502.Spec : Prop :=
  ∀ n, P6437820631373586502.a n = A162361 (n + 1)

end A162361

/-! ## A162361.P3592712033054795357

`p?[A032742(A342768(n+1)/(n+1))]`
-/

namespace A162361.P3592712033054795357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((A342768 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162361.P3592712033054795357

namespace A162361

/-- `p?[A032742(A342768(n+1)/(n+1))]` -/
def P3592712033054795357.Spec : Prop :=
  ∀ n, P3592712033054795357.a n = A162361 (n + 1)

end A162361

/-! ## A162361.P17038733426467656373

`p?[A329888(n+1)%A052126(n+1)]`
-/

namespace A162361.P17038733426467656373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329888 (n + 1)) (A052126 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162361.P17038733426467656373

namespace A162361

/-- `p?[A329888(n+1)%A052126(n+1)]` -/
def P17038733426467656373.Spec : Prop :=
  ∀ n, P17038733426467656373.a n = A162361 (n + 1)

end A162361

/-! ## A162361.P15555360164162118989

`p?[A052126(gcd((2*n+1)²+n, A220096(n+1)))]`
-/

namespace A162361.P15555360164162118989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (Int.gcd ((2 * n + 1) ^ 2 + n : ℤ) (A220096 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A162361.P15555360164162118989

namespace A162361

/-- `p?[A052126(gcd((2*n+1)²+n, A220096(n+1)))]` -/
def P15555360164162118989.Spec : Prop :=
  ∀ n, P15555360164162118989.a n = A162361 (n + 1)

end A162361

/-! ## A162361.P17567275790635641094

`A020639(A032742(eq[1, A001222(n+1)-2]+1))`
-/

namespace A162361.P17567275790635641094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A032742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)).toNat

end

end A162361.P17567275790635641094

namespace A162361

/-- `A020639(A032742(eq[1, A001222(n+1)-2]+1))` -/
def P17567275790635641094.Spec : Prop :=
  ∀ n, P17567275790635641094.a n = A162361 (n + 1)

end A162361

/-! ## A162361.P2780073850744188695

`A087039(A014612(n+1))+A086971(A087039(n+1))`
-/

namespace A162361.P2780073850744188695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A014612 (n + 1)).toNat + A086971 (A087039 (n + 1)).toNat

end

end A162361.P2780073850744188695

namespace A162361

/-- `A087039(A014612(n+1))+A086971(A087039(n+1))` -/
def P2780073850744188695.Spec : Prop :=
  ∀ n, P2780073850744188695.a n = A162361 (n + 1)

end A162361

/-!
# A162362: a(n) = A066186(n) - A004125(n).

The programs for A162362, there is no canonical definition to state claims against.
-/

/-! ## A162362.P9504237841437996107

`A066186(n+1)-A004125(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A162362.P9504237841437996107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A004125 (n + 1)

end

end A162362.P9504237841437996107

/-! ## A162362.P11392959172620995952

`∑[A138879(n+1)]-((n+1)²-∑[∑{d}[n+1, #]])`
-/

namespace A162362.P11392959172620995952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A162362.P11392959172620995952

/-! ## A162362.P3861256541946881074

`A066186(n+1)-Δ[A072481(n)]`
-/

namespace A162362.P3861256541946881074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - (f1 (n + 1) - f1 n)

end

end A162362.P3861256541946881074

/-! ## A162362.P6854207997216496029

`∑[A138879(n+1)]-((n+1)²-∑[A000203(2*n+1-n)])`
-/

namespace A162362.P6854207997216496029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A162362.P6854207997216496029

/-! ## A162362.P2331568856499586623

`∑[A138879(n+1)]-∑[1-(A000203(2*n-(n-1))-2*n)]`
-/

namespace A162362.P2331568856499586623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A162362.P2331568856499586623

/-!
# A162363: Binary Keith numbers, excluding positive powers of 2 that are larger than 1.

The programs for A162363, there is no canonical definition to state claims against.
-/

/-! ## A162363.P4767419074760740798

`filter[A162724(n+1), A267579(#)]`
-/

namespace A162363.P4767419074760740798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A162363.P4767419074760740798

/-! ## A162363.P4552157638271858812

`filter[A162724(n+1), A361023(#)]`
-/

namespace A162363.P4552157638271858812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361023 (f1 j).toNat = 1) n)

end

end A162363.P4552157638271858812

/-! ## A162363.P17747216482198266233

`filter[A162724(n+1), A039982(#)]`
-/

namespace A162363.P17747216482198266233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A162363.P17747216482198266233

/-!
# A162364: Number of reduced words of length n in the Weyl group D_22.

The programs for A162364, there is no canonical definition to state claims against.
-/

/-! ## A162364.P7532148241348727065

`A161900(n)-A340998(A047080(3*(n+1)))`
-/

namespace A162364.P7532148241348727065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161900 n - A340998 ((A047080 (3 * (n + 1))).toNat + 140)

end

end A162364.P7532148241348727065

/-!
# A162365: Number of reduced words of length n in the Weyl group D_23.

The programs for A162365, there is no canonical definition to state claims against.
-/

/-! ## A162365.P14472057717015802572

`A161930(n)-A011737(A171882(n))`
-/

namespace A162365.P14472057717015802572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161930 n - A011737 (A171882 n).toNat

end

end A162365.P14472057717015802572

/-!
# A162366: Number of reduced words of length n in the Weyl group D_24.

The programs for A162366, there is no canonical definition to state claims against.
-/

/-! ## A162366.P5124795818546253461

`lcm(A161931(n), A350388(A300301(n)))`
-/

namespace A162366.P5124795818546253461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A161931 n) (A350388 (A300301 n).toNat)

end

end A162366.P5124795818546253461

/-!
# A162367: Number of reduced words of length n in the Weyl group D_25.

The programs for A162367, there is no canonical definition to state claims against.
-/

/-! ## A162367.P3058670874421049593

`A161932(n)-A011737(A005135(n))`
-/

namespace A162367.P3058670874421049593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161932 n - A011737 (A005135 n).toNat

end

end A162367.P3058670874421049593

/-!
# A162368: Number of reduced words of length n in the Weyl group D_26.

The programs for A162368, there is no canonical definition to state claims against.
-/

/-! ## A162368.P15539652952413546907

`A185284(A005135(n))+A161933(n)`
-/

namespace A162368.P15539652952413546907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A005135 n).toNat + A161933 n

end

end A162368.P15539652952413546907

/-!
# A162369: Number of reduced words of length n in the Weyl group D_27.

The programs for A162369, there is no canonical definition to state claims against.
-/

/-! ## A162369.P13762327943255774056

`A161954(n)*A330098(A078840(n))`
-/

namespace A162369.P13762327943255774056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161954 n * A330098 (A078840 n).toNat

end

end A162369.P13762327943255774056

/-!
# A162370: Number of reduced words of length n in the Weyl group D_28.

The programs for A162370, there is no canonical definition to state claims against.
-/

/-! ## A162370.P17160028783175263389

`A161956(n)+A007814(A236075(n+1))`
-/

namespace A162370.P17160028783175263389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161956 n + A007814 (A236075 (n + 1)).toNat

end

end A162370.P17160028783175263389

/-!
# A162372: Right edge of the triangle in A162371.

The programs for A162372, there is no canonical definition to state claims against.
-/

/-! ## A162372.P15995525519268502773

`A162371(∑[n+1])`
-/

namespace A162372.P15995525519268502773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162371 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162372.P15995525519268502773

/-! ## A162372.P7738548610525866055

`A162371(∑[-xor(n, -1)])-(2-4/2)`
-/

namespace A162372.P7738548610525866055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162371 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) - (2 - (4 : ℚ) / 2)

end

end A162372.P7738548610525866055

/-! ## A162372.P10081673832298999727

`record[A162371(A260220(n))]`
-/

namespace A162372.P10081673832298999727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162371 (A260220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162372.P10081673832298999727

/-! ## A162372.P12997053650555597171

`record[A162371(A038722(n+1))]`
-/

namespace A162372.P12997053650555597171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162371 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162372.P12997053650555597171

/-! ## A162372.P10951561909358564269

`record[A162371(A135223(n+1))]`
-/

namespace A162372.P10951561909358564269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162371 (A135223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162372.P10951561909358564269

/-!
# A162373: Row sums of the triangle in A162371.

The programs for A162373, there is no canonical definition to state claims against.
-/

/-! ## A162373.P14111529916973173695

`A006005(∑[∑[A023575(n!)]])`
-/

namespace A162373.P14111529916973173695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023575 (Nat.factorial n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A162373.P14111529916973173695

/-! ## A162373.P14076964112499789779

`A122089(A261203(n+1))`
-/

namespace A162373.P14076964112499789779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122089 (A261203 (n + 1)).toNat

end

end A162373.P14076964112499789779

/-! ## A162373.P7058377434826316128

`A122089(A262968(n+1))`
-/

namespace A162373.P7058377434826316128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122089 (A262968 (n + 1)).toNat

end

end A162373.P7058377434826316128

/-!
# A162374: Fixed points of A162371.

The programs for A162374, there is no canonical definition to state claims against.
-/

/-! ## A162374.P5247593804462660361

`eq[n, A162371(abs(1-n)+1)]`
-/

namespace A162374.P5247593804462660361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162371 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162374.P5247593804462660361

/-! ## A162374.P9006519574216292724

`record[gcd(n+1, A162371(n+1))]`
-/

namespace A162374.P9006519574216292724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A162371 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162374.P9006519574216292724

/-! ## A162374.P9394272066939629509

`A000027(eq[n+1, A162371(n+1)]+1)`
-/

namespace A162374.P9394272066939629509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A162374.P9394272066939629509

/-! ## A162374.P10447317449255358085

`eq[A110654(2*n)+1, A162371(n+1)]+1`
-/

namespace A162374.P10447317449255358085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A162374.P10447317449255358085

/-! ## A162374.P10758852984879504589

`eq[A152271(2*n+1), A162371(n+1)]+1`
-/

namespace A162374.P10758852984879504589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A162374.P10758852984879504589

/-! ## A162374.P17420239168693182215

`eq[A000010(n+1), A000010(A162371(n+1))]+1`
-/

namespace A162374.P17420239168693182215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A162371 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A162374.P17420239168693182215

/-! ## A162374.P6964692267254194527

`eq[A265345(n+1), A265345(A162371(n+1))]+1`
-/

namespace A162374.P6964692267254194527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265345 (A162371 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A162374.P6964692267254194527

/-! ## A162374.P8843564315079162606

`eq[A162371(n+1), A292579(n+1)]+1`
-/

namespace A162374.P8843564315079162606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A162374.P8843564315079162606

/-!
# A162376: 

The programs for A162376, there is no canonical definition to state claims against.
-/

/-! ## A162376.P13369111334905786100

`∑[A162370(n)+A055897(2*(n+1))%2]`
-/

namespace A162376.P13369111334905786100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162370 n + Int.tmod (A055897 (2 * (n + 1))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162376.P13369111334905786100

/-!
# A162382: Triangle, read by rows, defined by: T(n,k) = 1/((k+1)n-1) binomial((k+1)n-1,n) for n,k>0.

The programs for A162382, there is no canonical definition to state claims against.
-/

/-! ## A162382.P10457764676654865816

`A386558(A380649(n+1))`
-/

namespace A162382.P10457764676654865816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386558 (A380649 (n + 1)).toNat

end

end A162382.P10457764676654865816

/-! ## A162382.P5878290912520886364

`C(A127738(n+1), A004736(n+1))/A127738(n+1)`
-/

namespace A162382.P5878290912520886364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A127738 (n + 1)).toNat (A004736 (n + 1)).toNat : ℚ) / (A127738 (n + 1) : ℚ)

end

end A162382.P5878290912520886364

/-! ## A162382.P10997069192217512340

`or(A110488(n), A144775(A347811(n)))`
-/

namespace A162382.P10997069192217512340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A110488 n) (A144775 (A347811 n).toNat)

end

end A162382.P10997069192217512340

/-! ## A162382.P2675894104183572256

`A085516(or(A110488(n), A259691(n)))`
-/

namespace A162382.P2675894104183572256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (Int.lor (A110488 n) (A259691 n)).toNat

end

end A162382.P2675894104183572256

/-! ## A162382.P6876627620403192812

`A085516(or(A056857(n+1), A110488(n)))`
-/

namespace A162382.P6876627620403192812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (Int.lor (A056857 (n + 1)) (A110488 n)).toNat

end

end A162382.P6876627620403192812

/-!
# A162385: Alternating sum from the n-th Mersenne prime up to the n-th perfect number.

The programs for A162385, there is no canonical definition to state claims against.
-/

/-! ## A162385.P3112823503797227137

`(1+A139224(n+1))/2`
-/

namespace A162385.P3112823503797227137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A139224 (n + 1) : ℚ) / 2

end

end A162385.P3112823503797227137

/-! ## A162385.P13150608753297051841

`(A000396(n+1)-A000668(n+1)+1)/2`
-/

namespace A162385.P13150608753297051841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000396 (n + 1) - A000668 (n + 1) + 1 : ℚ) / 2

end

end A162385.P13150608753297051841

/-! ## A162385.P6279198295278870598

`(A139223(n+1)+2)/4`
-/

namespace A162385.P6279198295278870598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139223 (n + 1) + 2 : ℚ) / 4

end

end A162385.P6279198295278870598

/-! ## A162385.P4624722119704987589

`(A134057(A000043(n+1))+1)/2`
-/

namespace A162385.P4624722119704987589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134057 (A000043 (n + 1)).toNat + 1 : ℚ) / 2

end

end A162385.P4624722119704987589

/-! ## A162385.P5928530442741750213

`and(A133028(n+1), A135627(n+1))+1`
-/

namespace A162385.P5928530442741750213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133028 (n + 1)) (A135627 (n + 1)) + 1

end

end A162385.P5928530442741750213

/-!
# A162387: Triangle read by rows: the n-th Euclid number followed by the first n primes and 1.

The programs for A162387, there is no canonical definition to state claims against.
-/

/-! ## A162387.P15383524971340544559

`gcd(C(comp[∑[n]]-n, 2)-(n+1), A014681(A308317(n+1)))`
-/

namespace A162387.P15383524971340544559
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) (A014681 (A308317 (n + 1)).toNat)

end

end A162387.P15383524971340544559

/-! ## A162387.P10167533601571836256

`gcd(A014681(A308317(n+1)), A025581(n))`
-/

namespace A162387.P10167533601571836256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014681 (A308317 (n + 1)).toNat) (A025581 n)

end

end A162387.P10167533601571836256

/-!
# A162391: Numbers m such that m^2 is an anagram of a Fibonacci number.

The programs for A162391, there is no canonical definition to state claims against.
-/

/-! ## A162391.P2318166078182958883

`sqrt(A151820(n+1))`
-/

namespace A162391.P2318166078182958883
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A151820 (n + 1) : ℝ)

end

end A162391.P2318166078182958883

/-! ## A162391.P4660359210424120998

`root(A151820(n+1), 2%A027691(n))`
-/

namespace A162391.P4660359210424120998
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A151820 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A027691 n) : ℝ))

end

end A162391.P4660359210424120998

/-! ## A162391.P3463839871222630767

`root(A151820(n+1), gcd(2, A008588(n)))`
-/

namespace A162391.P3463839871222630767
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A151820 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A008588 n) : ℝ))

end

end A162391.P3463839871222630767

/-! ## A162391.P16588145565849583119

`root(A151820(n+1), A133265(A133265(n)))`
-/

namespace A162391.P16588145565849583119
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A151820 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A162391.P16588145565849583119

/-!
# A162393: Fibonacci numbers equal to a promic number or an anagram of a promic number.

The programs for A162393, there is no canonical definition to state claims against.
-/

/-! ## A162393.P4782343657717553161

`A000045(eq[(gcd(4, n)+1)%4, A303138(2*n+5)])`
-/

namespace A162393.P4782343657717553161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 n + 1) % 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303138 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A162393.P4782343657717553161

/-!
# A162394: Fibonacci numbers (A000045) which are anagrams of Triangular numbers (A000217).

The programs for A162394, there is no canonical definition to state claims against.
-/

/-! ## A162394.P11337031434399879349

`A000045(A085263(∑{d}[n+1, C(#, 2)+#²]²))`
-/

namespace A162394.P11337031434399879349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A085263 ((∑ d ∈ Nat.divisors (f1 n), (Nat.choose d 2 + d ^ 2)) ^ 2)).toNat

end

end A162394.P11337031434399879349

/-! ## A162394.P9653210918096165627

`A212804(∑{d}[A000079(n), A195073(#)])`
-/

namespace A162394.P9653210918096165627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (∑ d ∈ Nat.divisors (f1 n).natAbs, A195073 d).toNat

end

end A162394.P9653210918096165627

/-! ## A162394.P2269041563549578963

`A000045(eq[A321252(n+1), A321254(2*n+5)])`
-/

namespace A162394.P2269041563549578963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321254 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A162394.P2269041563549578963

/-!
# A162395: a(n) = -(-1)^n * n^2.

The programs for A162395, the canonical program `A162395.P2555601170956106588` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162395 has offset 1).

The definition of A162395 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-(-1)^(n+1)*(n+1)²` (program `A162395.P2555601170956106588`, by `A162395.P2555601170956106588.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162395.P4290779939807218844

`(-1)^(n+2)*(n+1)²`
-/

namespace A162395.P4290779939807218844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 2) * ((n + 1) ^ 2 : ℤ)

end

end A162395.P4290779939807218844

namespace A162395

/-- `(-1)^(n+2)*(n+1)²` -/
def P4290779939807218844.Spec : Prop :=
  ∀ n, P4290779939807218844.a n = A162395 (n + 1)

theorem P4290779939807218844.correct : P4290779939807218844.Spec := by
  intro n
  simp only [A162395, Nat.add_sub_cancel, A162395.P4290779939807218844.a, A162395.P2555601170956106588.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A162395

/-! ## A162395.P2555601170956106588

`-(-1)^(n+1)*(n+1)²`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162395

/-- `-(-1)^(n+1)*(n+1)²` -/
def P2555601170956106588.Spec : Prop :=
  ∀ n, P2555601170956106588.a n = A162395 (n + 1)

theorem P2555601170956106588.correct : P2555601170956106588.Spec := by
  intro n
  simp only [A162395, Nat.add_sub_cancel]

end A162395

/-! ## A162395.P14069326510132447549

`ogf((1-x)/(1+3x+3x^2+x^3))`
-/

namespace A162395.P14069326510132447549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, 3, 3, 1] n

end

end A162395.P14069326510132447549

namespace A162395

/-- `ogf((1-x)/(1+3x+3x^2+x^3))` -/
def P14069326510132447549.Spec : Prop :=
  ∀ n, P14069326510132447549.a n = A162395 (n + 1)

end A162395

/-! ## A162395.P12452804599605499345

`xor(n, -1)²/(-1)^n`
-/

namespace A162395.P12452804599605499345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (-1) ^ 2 : ℚ) / ((-1) ^ n : ℚ)

end

end A162395.P12452804599605499345

namespace A162395

/-- `xor(n, -1)²/(-1)^n` -/
def P12452804599605499345.Spec : Prop :=
  ∀ n, P12452804599605499345.a n = (A162395 (n + 1) : ℚ)

end A162395

/-! ## A162395.P2118410749731882221

`∑[xor((-1)^n, ∑[4*n])]`
-/

namespace A162395.P2118410749731882221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((-1) ^ n) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A162395.P2118410749731882221

namespace A162395

/-- `∑[xor((-1)^n, ∑[4*n])]` -/
def P2118410749731882221.Spec : Prop :=
  ∀ n, P2118410749731882221.a n = A162395 (n + 1)

end A162395

/-! ## A162395.P10338907520724018962

`(n+1)²/(xor(1, n)-n)`
-/

namespace A162395.P10338907520724018962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((Nat.xor 1 n : ℤ) - (n : ℤ) : ℚ)

end

end A162395.P10338907520724018962

namespace A162395

/-- `(n+1)²/(xor(1, n)-n)` -/
def P10338907520724018962.Spec : Prop :=
  ∀ n, P10338907520724018962.a n = (A162395 (n + 1) : ℚ)

end A162395

/-! ## A162395.P1474606367745449641

`xor(n*(n+2), (-1)^n)`
-/

namespace A162395.P1474606367745449641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n * (n + 2) : ℤ) ((-1) ^ n)

end

end A162395.P1474606367745449641

namespace A162395

/-- `xor(n*(n+2), (-1)^n)` -/
def P1474606367745449641.Spec : Prop :=
  ∀ n, P1474606367745449641.a n = A162395 (n + 1)

end A162395

/-! ## A162395.P15466220268487239856

`record[(n-1)²]/(-1)^n`
-/

namespace A162395.P15466220268487239856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / ((-1) ^ n : ℚ)

end

end A162395.P15466220268487239856

namespace A162395

/-- `record[(n-1)²]/(-1)^n` -/
def P15466220268487239856.Spec : Prop :=
  ∀ n, P15466220268487239856.a n = (A162395 (n + 1) : ℚ)

end A162395

/-! ## A162395.P16810814612084416932

`(n+1)²/(2*gcd(2, n)-3)`
-/

namespace A162395.P16810814612084416932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((2 * Nat.gcd 2 n : ℤ) - 3 : ℚ)

end

end A162395.P16810814612084416932

namespace A162395

/-- `(n+1)²/(2*gcd(2, n)-3)` -/
def P16810814612084416932.Spec : Prop :=
  ∀ n, P16810814612084416932.a n = (A162395 (n + 1) : ℚ)

end A162395

/-! ## A162395.P8112734105704700474

`(n+1)²/(1-2*and(1, n))`
-/

namespace A162395.P8112734105704700474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (1 - (2 * Nat.land 1 n : ℤ) : ℚ)

end

end A162395.P8112734105704700474

namespace A162395

/-- `(n+1)²/(1-2*and(1, n))` -/
def P8112734105704700474.Spec : Prop :=
  ∀ n, P8112734105704700474.a n = (A162395 (n + 1) : ℚ)

end A162395

/-! ## A162395.P3586636909031819443

`-(∑[2*n]²/a(n-1))` with `a(0)=1`
-/

namespace A162395.P3586636909031819443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  -((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / a (n - 1))

end

end A162395.P3586636909031819443

namespace A162395

/-- `-(∑[2*n]²/a(n-1))` -/
def P3586636909031819443.Spec : Prop :=
  ∀ n, P3586636909031819443.a n = (A162395 (n + 1) : ℚ)

end A162395

/-! ## A162395.P3324811778632083562

`(n+1)²/(-1)^a(n-1)` with `a(0)=1`
-/

namespace A162395.P3324811778632083562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ 2 : ℝ) / (-1 : ℝ) ^ (a (n - 1))

end

end A162395.P3324811778632083562

namespace A162395

/-- `(n+1)²/(-1)^a(n-1)` -/
def P3324811778632083562.Spec : Prop :=
  ∀ n, P3324811778632083562.a n = (A162395 (n + 1) : ℝ)

end A162395

/-! ## A162395.P11881095375505939839

`(1-n²)²/a(n-2)` with `a(0)=1, a(1)=-4`
-/

namespace A162395.P11881095375505939839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -4] fun n a =>
  ((1 - (n ^ 2 : ℤ)) ^ 2 : ℚ) / a (n - 2)

end

end A162395.P11881095375505939839

namespace A162395

/-- `(1-n²)²/a(n-2)` -/
def P11881095375505939839.Spec : Prop :=
  ∀ n, P11881095375505939839.a n = (A162395 (n + 1) : ℚ)

end A162395

/-! ## A162395.P11944837751900663387

`∑[2*n+1]/(1-and(2, 2*n))`
-/

namespace A162395.P11944837751900663387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (1 - (Nat.land 2 (2 * n) : ℤ) : ℚ)

end

end A162395.P11944837751900663387

namespace A162395

/-- `∑[2*n+1]/(1-and(2, 2*n))` -/
def P11944837751900663387.Spec : Prop :=
  ∀ n, P11944837751900663387.a n = (A162395 (n + 1) : ℚ)

end A162395

/-! ## A162395.P16047544992653730059

`3*(n+1)-Δ[lcm(n+1, 2*n)]`
-/

namespace A162395.P16047544992653730059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A162395.P16047544992653730059

namespace A162395

/-- `3*(n+1)-Δ[lcm(n+1, 2*n)]` -/
def P16047544992653730059.Spec : Prop :=
  ∀ n, P16047544992653730059.a n = A162395 (n + 1)

end A162395

/-! ## A162395.P7024023338119223798

`(n+1)²-2*and(1, n)*(n+1)²`
-/

namespace A162395.P7024023338119223798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - (2 * Nat.land 1 n * (n + 1) ^ 2 : ℤ)

end

end A162395.P7024023338119223798

namespace A162395

/-- `(n+1)²-2*and(1, n)*(n+1)²` -/
def P7024023338119223798.Spec : Prop :=
  ∀ n, P7024023338119223798.a n = A162395 (n + 1)

end A162395

/-! ## A162395.P12939534091885504916

`(n+1)²/(2*or(1, n)-(2*n+1))`
-/

namespace A162395.P12939534091885504916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((2 * Nat.lor 1 n : ℤ) - (2 * n + 1 : ℤ) : ℚ)

end

end A162395.P12939534091885504916

namespace A162395

/-- `(n+1)²/(2*or(1, n)-(2*n+1))` -/
def P12939534091885504916.Spec : Prop :=
  ∀ n, P12939534091885504916.a n = (A162395 (n + 1) : ℚ)

end A162395

/-! ## A162395.P9499742941201983307

`∑[2*n+1]/(n+1-xor(1, n+1))`
-/

namespace A162395.P9499742941201983307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((n + 1 : ℤ) - (Nat.xor 1 (n + 1) : ℤ) : ℚ)

end

end A162395.P9499742941201983307

namespace A162395

/-- `∑[2*n+1]/(n+1-xor(1, n+1))` -/
def P9499742941201983307.Spec : Prop :=
  ∀ n, P9499742941201983307.a n = (A162395 (n + 1) : ℚ)

end A162395

/-! ## A162395.P9464158411229145966

`(n+1)*a(n-1)/(n/(n+1)-n)` with `a(0)=1`
-/

namespace A162395.P9464158411229145966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * a (n - 1) / ((n : ℚ) / (n + 1 : ℚ) - (n : ℚ))

end

end A162395.P9464158411229145966

namespace A162395

/-- `(n+1)*a(n-1)/(n/(n+1)-n)` -/
def P9464158411229145966.Spec : Prop :=
  ∀ n, P9464158411229145966.a n = (A162395 (n + 1) : ℚ)

end A162395

/-! ## A162395.P3467469410347831430

`∑[2*n+1]-and(2, 2*n)*∑[2*n+1]`
-/

namespace A162395.P3467469410347831430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((Nat.land 2 (2 * n) * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ)

end

end A162395.P3467469410347831430

namespace A162395

/-- `∑[2*n+1]-and(2, 2*n)*∑[2*n+1]` -/
def P3467469410347831430.Spec : Prop :=
  ∀ n, P3467469410347831430.a n = A162395 (n + 1)

end A162395

/-!
# A162396: a(n) = 2*a(n-2) for n > 2; a(1) = 5, a(2) = 2.

The programs for A162396, the canonical program `A162396.P15123260927066118000` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162396 has offset 1).

The definition of A162396 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)` (program `A162396.P15123260927066118000`, by `A162396.P15123260927066118000.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A162396.P15123260927066118000

`2*a(n-2)` with `a(0)=5, a(1)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A162396

/-- `2*a(n-2)` -/
def P15123260927066118000.Spec : Prop :=
  ∀ n, (P15123260927066118000.a n : ℤ) = A162396 (n + 1)

theorem P15123260927066118000.correct : P15123260927066118000.Spec := by
  intro n
  simp only [A162396, Nat.add_sub_cancel]

end A162396

/-! ## A162396.P2452441026905157360

`(3/2-(-1)^(n+1))*2^(1/4*(2*(n+1)+3+(-1)^(n+1)))`
-/

namespace A162396.P2452441026905157360
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2 - ((-1) ^ (n + 1) : ℚ) : ℝ) * (2 : ℝ) ^ ((1 : ℚ) / 4 * ((2 * (n + 1) + 3 : ℤ) + (-1) ^ (n + 1) : ℚ) : ℝ)

end

end A162396.P2452441026905157360

namespace A162396

/-- `(3/2-(-1)^(n+1))*2^(1/4*(2*(n+1)+3+(-1)^(n+1)))` -/
def P2452441026905157360.Spec : Prop :=
  ∀ n, P2452441026905157360.a n = (A162396 (n + 1) : ℝ)

end A162396

/-! ## A162396.P6511897335210771789

`ogf((5+2x)/(1-2x^2))`
-/

namespace A162396.P6511897335210771789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 2] [1, 0, -2] n

end

end A162396.P6511897335210771789

namespace A162396

/-- `ogf((5+2x)/(1-2x^2))` -/
def P6511897335210771789.Spec : Prop :=
  ∀ n, P6511897335210771789.a n = A162396 (n + 1)

end A162396

/-! ## A162396.P14665229421721638452

`∏[2/a(n-1)]` with `a(0)=5`
-/

namespace A162396.P14665229421721638452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162396.P14665229421721638452

namespace A162396

/-- `∏[2/a(n-1)]` -/
def P14665229421721638452.Spec : Prop :=
  ∀ n, P14665229421721638452.a n = (A162396 (n + 1) : ℚ)

end A162396

/-! ## A162396.P6098339560230266644

`∏[log2(root(4, a(n-1)))]` with `a(0)=5`
-/

namespace A162396.P6098339560230266644
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [5] fun n f1 =>
  Real.logb 2 ((4 : ℝ) ^ (1 / f1 (n - 1)))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A162396.P6098339560230266644

namespace A162396

/-- `∏[log2(root(4, a(n-1)))]` -/
def P6098339560230266644.Spec : Prop :=
  ∀ n, P6098339560230266644.a n = (A162396 (n + 1) : ℝ)

end A162396

/-! ## A162396.P7663885561084064221

`a(n-2)/sqrt(1/4)` with `a(0)=5, a(1)=2`
-/

namespace A162396.P7663885561084064221
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [5, 2] fun n a =>
  a (n - 2) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A162396.P7663885561084064221

namespace A162396

/-- `a(n-2)/sqrt(1/4)` -/
def P7663885561084064221.Spec : Prop :=
  ∀ n, P7663885561084064221.a n = (A162396 (n + 1) : ℝ)

end A162396

/-! ## A162396.P9484483858952667189

`a(n-2)+a(n-2)` with `a(0)=5, a(1)=2`
-/

namespace A162396.P9484483858952667189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 2] fun n a =>
  a (n - 2) + a (n - 2)

end

end A162396.P9484483858952667189

namespace A162396

/-- `a(n-2)+a(n-2)` -/
def P9484483858952667189.Spec : Prop :=
  ∀ n, (P9484483858952667189.a n : ℤ) = A162396 (n + 1)

theorem P9484483858952667189.correct : P9484483858952667189.Spec := by
  intro n
  simp only [A162396, Nat.add_sub_cancel, A162396.P9484483858952667189.a, A162396.P15123260927066118000.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A162396

/-! ## A162396.P9543912859317826831

`lcm(3, a(n-2))-a(n-2)` with `a(0)=5, a(1)=2`
-/

namespace A162396.P9543912859317826831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n a =>
  (Int.lcm 3 (a (n - 2)) : ℤ) - a (n - 2)

end

end A162396.P9543912859317826831

namespace A162396

/-- `lcm(3, a(n-2))-a(n-2)` -/
def P9543912859317826831.Spec : Prop :=
  ∀ n, P9543912859317826831.a n = A162396 (n + 1)

end A162396

/-! ## A162396.P2131366017006706855

`1-floor(1-a(n-2)-a(n-2))` with `a(0)=5, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A162396.P2131366017006706855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n a =>
  1 - (1 - a (n - 2) - a (n - 2))

end

end A162396.P2131366017006706855

namespace A162396

/-- `1-floor(1-a(n-2)-a(n-2))` -/
def P2131366017006706855.Spec : Prop :=
  ∀ n, P2131366017006706855.a n = A162396 (n + 1)

end A162396

/-! ## A162396.P9075921251700019049

`abs(Δ[A164654(n+1)])`
-/

namespace A162396.P9075921251700019049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A162396.P9075921251700019049

namespace A162396

/-- `abs(Δ[A164654(n+1)])` -/
def P9075921251700019049.Spec : Prop :=
  ∀ n, P9075921251700019049.a n = A162396 (n + 1)

end A162396

/-! ## A162396.P13694958691282799610

`A071831(A047382(n+2))`
-/

namespace A162396.P13694958691282799610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071831 (A047382 (n + 2)).toNat

end

end A162396.P13694958691282799610

namespace A162396

/-- `A071831(A047382(n+2))` -/
def P13694958691282799610.Spec : Prop :=
  ∀ n, P13694958691282799610.a n = A162396 (n + 1)

end A162396

/-! ## A162396.P15117765916237946326

`A112032(n)+A016116(n)`
-/

namespace A162396.P15117765916237946326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112032 n + A016116 n

end

end A162396.P15117765916237946326

namespace A162396

/-- `A112032(n)+A016116(n)` -/
def P15117765916237946326.Spec : Prop :=
  ∀ n, P15117765916237946326.a n = A162396 (n + 1)

end A162396

/-! ## A162396.P15863506776105561080

`lcm(A040024(n), A060546(n))`
-/

namespace A162396.P15863506776105561080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040024 n) (A060546 n)

end

end A162396.P15863506776105561080

namespace A162396

/-- `lcm(A040024(n), A060546(n))` -/
def P15863506776105561080.Spec : Prop :=
  ∀ n, (P15863506776105561080.a n : ℤ) = A162396 (n + 1)

end A162396

/-! ## A162396.P3457874654885851975

`lcm(A040029(n), A152166(n))`
-/

namespace A162396.P3457874654885851975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040029 n) (A152166 n)

end

end A162396.P3457874654885851975

namespace A162396

/-- `lcm(A040029(n), A152166(n))` -/
def P3457874654885851975.Spec : Prop :=
  ∀ n, (P3457874654885851975.a n : ℤ) = A162396 (n + 1)

end A162396

/-! ## A162396.P12601128111550579847

`A071831(A047389(n+1)+2)`
-/

namespace A162396.P12601128111550579847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071831 (A047389 (n + 1) + 2).toNat

end

end A162396.P12601128111550579847

namespace A162396

/-- `A071831(A047389(n+1)+2)` -/
def P12601128111550579847.Spec : Prop :=
  ∀ n, P12601128111550579847.a n = A162396 (n + 1)

end A162396

/-! ## A162396.P8627889813236057299

`A143095(n+1)+A077957(n)`
-/

namespace A162396.P8627889813236057299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (n + 1) + A077957 n

end

end A162396.P8627889813236057299

namespace A162396

/-- `A143095(n+1)+A077957(n)` -/
def P8627889813236057299.Spec : Prop :=
  ∀ n, P8627889813236057299.a n = A162396 (n + 1)

end A162396

/-! ## A162396.P15866347675234646430

`A135530(n+2)+A077957(n)`
-/

namespace A162396.P15866347675234646430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (n + 2) + A077957 n

end

end A162396.P15866347675234646430

namespace A162396

/-- `A135530(n+2)+A077957(n)` -/
def P15866347675234646430.Spec : Prop :=
  ∀ n, P15866347675234646430.a n = A162396 (n + 1)

end A162396

/-! ## A162396.P14736240194691439559

`A163888(n+1)/A000034(n)`
-/

namespace A162396.P14736240194691439559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163888 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A162396.P14736240194691439559

namespace A162396

/-- `A163888(n+1)/A000034(n)` -/
def P14736240194691439559.Spec : Prop :=
  ∀ n, P14736240194691439559.a n = (A162396 (n + 1) : ℚ)

end A162396

/-! ## A162396.P6064464195458382638

`A164095(n+1)/A010684(n)`
-/

namespace A162396.P6064464195458382638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164095 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A162396.P6064464195458382638

namespace A162396

/-- `A164095(n+1)/A010684(n)` -/
def P6064464195458382638.Spec : Prop :=
  ∀ n, P6064464195458382638.a n = (A162396 (n + 1) : ℚ)

end A162396

/-!
# A162397: a(n) = n * Kronecker(-3, n).

The programs for A162397, the canonical program `A162397.P17892200127642729839` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A162397 has offset 1).

The definition of A162397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A162397.P17892200127642729839

`(n+1)*A102283(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A162397

/-- `(n+1)*A102283(n+1)` -/
def P17892200127642729839.Spec : Prop :=
  ∀ n, P17892200127642729839.a n = A162397 (n + 1)

theorem P17892200127642729839.correct : P17892200127642729839.Spec := by
  intro n
  simp only [A162397, Nat.add_sub_cancel]

end A162397

/-! ## A162397.P5358400286163241187

`ogf((1-x^2)/(1+2x+3x^2+2x^3+x^4))`
-/

namespace A162397.P5358400286163241187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, 2, 3, 2, 1] n

end

end A162397.P5358400286163241187

namespace A162397

/-- `ogf((1-x^2)/(1+2x+3x^2+2x^3+x^4))` -/
def P5358400286163241187.Spec : Prop :=
  ∀ n, P5358400286163241187.a n = A162397 (n + 1)

end A162397

/-! ## A162397.P12848639532763814432

`(n+1)*((n+2)%3-1)`
-/

namespace A162397.P12848639532763814432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((((n + 2) % 3 : ℕ) : ℤ) - 1)

end

end A162397.P12848639532763814432

namespace A162397

/-- `(n+1)*((n+2)%3-1)` -/
def P12848639532763814432.Spec : Prop :=
  ∀ n, P12848639532763814432.a n = A162397 (n + 1)

end A162397

/-! ## A162397.P7484743703735940473

`(n+1)*floor(cos((2*n)%3))`
-/

namespace A162397.P7484743703735940473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊Real.cos ((2 * n % 3 : ℕ) : ℝ)⌋

end

end A162397.P7484743703735940473

namespace A162397

/-- `(n+1)*floor(cos((2*n)%3))` -/
def P7484743703735940473.Spec : Prop :=
  ∀ n, P7484743703735940473.a n = A162397 (n + 1)

end A162397

/-! ## A162397.P1970644732508067016

`(n+1)*∑[(-2)^(∑[n]%3)]`
-/

namespace A162397.P1970644732508067016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162397.P1970644732508067016

namespace A162397

/-- `(n+1)*∑[(-2)^(∑[n]%3)]` -/
def P1970644732508067016.Spec : Prop :=
  ∀ n, P1970644732508067016.a n = A162397 (n + 1)

end A162397

/-! ## A162397.P15168264448188809495

`(n+1)*round(cos((2*n+1)%6))`
-/

namespace A162397.P15168264448188809495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * SequenceMachineLib.roundAway (Real.cos (((2 * n + 1) % 6 : ℕ) : ℝ))

end

end A162397.P15168264448188809495

namespace A162397

/-- `(n+1)*round(cos((2*n+1)%6))` -/
def P15168264448188809495.Spec : Prop :=
  ∀ n, P15168264448188809495.a n = A162397 (n + 1)

end A162397

/-! ## A162397.P6034121176667859893

`(n+1)*∑[floor(a(n-3))]` with `a(0)=1, a(1)=-2, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A162397.P6034121176667859893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162397.P6034121176667859893

namespace A162397

/-- `(n+1)*∑[floor(a(n-3))]` -/
def P6034121176667859893.Spec : Prop :=
  ∀ n, P6034121176667859893.a n = A162397 (n + 1)

end A162397

/-! ## A162397.P4708093139547660077

`a(n-3)/(1-3/(n+1))` with `a(0)=1, a(1)=-2, a(2)=0`
-/

namespace A162397.P4708093139547660077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -2, 0] fun n a =>
  a (n - 3) / (1 - 3 / (n + 1 : ℚ))

end

end A162397.P4708093139547660077

namespace A162397

/-- `a(n-3)/(1-3/(n+1))` -/
def P4708093139547660077.Spec : Prop :=
  ∀ n, P4708093139547660077.a n = (A162397 (n + 1) : ℚ)

end A162397

/-! ## A162397.P4601284693635133953

`(n+1)*∑[2-a(n-3)²]` with `a(0)=1, a(1)=-2, a(2)=1`
-/

namespace A162397.P4601284693635133953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1] fun n f1 =>
  2 - f1 (n - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162397.P4601284693635133953

namespace A162397

/-- `(n+1)*∑[2-a(n-3)²]` -/
def P4601284693635133953.Spec : Prop :=
  ∀ n, P4601284693635133953.a n = A162397 (n + 1)

end A162397

/-! ## A162397.P17231275795278224584

`(n+1)*floor((1-a(n-1))^(-1))` with `a(0)=1, a(1)=-2`
-/

namespace A162397.P17231275795278224584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  (n + 1 : ℤ) * ⌊(1 - a (n - 1) : ℚ) ^ (-1 : ℤ)⌋

end

end A162397.P17231275795278224584

namespace A162397

/-- `(n+1)*floor((1-a(n-1))^(-1))` -/
def P17231275795278224584.Spec : Prop :=
  ∀ n, P17231275795278224584.a n = A162397 (n + 1)

end A162397

/-! ## A162397.P12466566804191156699

`(n+1)*A049347(n)`
-/

namespace A162397.P12466566804191156699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A049347 n

end

end A162397.P12466566804191156699

namespace A162397

/-- `(n+1)*A049347(n)` -/
def P12466566804191156699.Spec : Prop :=
  ∀ n, P12466566804191156699.a n = A162397 (n + 1)

end A162397

/-! ## A162397.P3780692466576381395

`(n+1)*∑[A131713(n)]`
-/

namespace A162397.P3780692466576381395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A162397.P3780692466576381395

namespace A162397

/-- `(n+1)*∑[A131713(n)]` -/
def P3780692466576381395.Spec : Prop :=
  ∀ n, P3780692466576381395.a n = A162397 (n + 1)

end A162397

/-! ## A162397.P16529144076273134190

`(n+1)*(1-A080425(n))`
-/

namespace A162397.P16529144076273134190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A080425 n)

end

end A162397.P16529144076273134190

namespace A162397

/-- `(n+1)*(1-A080425(n))` -/
def P16529144076273134190.Spec : Prop :=
  ∀ n, P16529144076273134190.a n = A162397 (n + 1)

end A162397

/-! ## A162397.P7248724795647604993

`(n+1)*(2-A130784(n))`
-/

namespace A162397.P7248724795647604993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A130784 n)

end

end A162397.P7248724795647604993

namespace A162397

/-- `(n+1)*(2-A130784(n))` -/
def P7248724795647604993.Spec : Prop :=
  ∀ n, P7248724795647604993.a n = A162397 (n + 1)

end A162397

/-! ## A162397.P2290657665205983387

`(n+1)*(A236348(n)-n)`
-/

namespace A162397.P2290657665205983387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A236348 n - (n : ℤ))

end

end A162397.P2290657665205983387

namespace A162397

/-- `(n+1)*(A236348(n)-n)` -/
def P2290657665205983387.Spec : Prop :=
  ∀ n, P2290657665205983387.a n = A162397 (n + 1)

end A162397

/-! ## A162397.P11691062937906356427

`A049347(n)*A222257(n)`
-/

namespace A162397.P11691062937906356427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A222257 n

end

end A162397.P11691062937906356427

namespace A162397

/-- `A049347(n)*A222257(n)` -/
def P11691062937906356427.Spec : Prop :=
  ∀ n, P11691062937906356427.a n = A162397 (n + 1)

end A162397

/-! ## A162397.P13490216455689298616

`(1-A080425(n))*A004482(n)`
-/

namespace A162397.P13490216455689298616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A080425 n) * A004482 n

end

end A162397.P13490216455689298616

namespace A162397

/-- `(1-A080425(n))*A004482(n)` -/
def P13490216455689298616.Spec : Prop :=
  ∀ n, P13490216455689298616.a n = A162397 (n + 1)

end A162397

/-! ## A162397.P2698854164388626102

`(2-A130784(n))*A004482(n)`
-/

namespace A162397.P2698854164388626102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A130784 n) * A004482 n

end

end A162397.P2698854164388626102

namespace A162397

/-- `(2-A130784(n))*A004482(n)` -/
def P2698854164388626102.Spec : Prop :=
  ∀ n, P2698854164388626102.a n = A162397 (n + 1)

end A162397

/-! ## A162397.P15265368594800216457

`(n+1)*A008683(A350033(n+1))`
-/

namespace A162397.P15265368594800216457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (A350033 (n + 1)).toNat

end

end A162397.P15265368594800216457

namespace A162397

/-- `(n+1)*A008683(A350033(n+1))` -/
def P15265368594800216457.Spec : Prop :=
  ∀ n, P15265368594800216457.a n = A162397 (n + 1)

end A162397

/-! ## A162397.P9013233825354248768

`∑{d}[n+1, A055615(#)*A131099((n+1)/#)]`
-/

namespace A162397.P9013233825354248768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A131099 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A162397.P9013233825354248768

namespace A162397

/-- `∑{d}[n+1, A055615(#)*A131099((n+1)/#)]` -/
def P9013233825354248768.Spec : Prop :=
  ∀ n, P9013233825354248768.a n = A162397 (n + 1)

end A162397

/-!
# A162398: a(n) = the largest Fibonacci number that when represented in binary is a substring in the binary representation of n.

The programs for A162398, there is no canonical definition to state claims against.
-/

/-! ## A162398.P15531009875965569984

`A000045(A001222(A000043(n+1)*A290258(n+2)))`
-/

namespace A162398.P15531009875965569984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001222 (A000043 (n + 1) * A290258 (n + 2)).toNat).toNat

end

end A162398.P15531009875965569984

