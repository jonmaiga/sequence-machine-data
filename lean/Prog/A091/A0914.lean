import SequenceMachineLib
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C033
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A091400: a(n) = Product_{ odd primes p | n } (1 + Legendre(-1,p) ).

The programs for A091400, the canonical program `A091400.P16416560500438088350` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091400 has offset 1).

The definition of A091400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091400.P16416560500438088350

`∏{p}[n+1, 3-#%4]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A091400

/-- `∏{p}[n+1, 3-#%4]` -/
def P16416560500438088350.Spec : Prop :=
  ∀ n, P16416560500438088350.a n = A091400 (n + 1)

theorem P16416560500438088350.correct : P16416560500438088350.Spec := by
  intro n
  simp only [A091400, Nat.add_sub_cancel]

end A091400

/-! ## A091400.P4511867634734828781

`∏{p}[n+1, xor(3, #)%4]`
-/

namespace A091400.P4511867634734828781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.xor 3 p % 4

end

end A091400.P4511867634734828781

namespace A091400

/-- `∏{p}[n+1, xor(3, #)%4]` -/
def P4511867634734828781.Spec : Prop :=
  ∀ n, (P4511867634734828781.a n : ℤ) = A091400 (n + 1)

end A091400

/-! ## A091400.P5823853915576214510

`∏{p}[n+1, or(3, #)-#]`
-/

namespace A091400.P5823853915576214510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((Nat.lor 3 p : ℤ) - (p : ℤ))

end

end A091400.P5823853915576214510

namespace A091400

/-- `∏{p}[n+1, or(3, #)-#]` -/
def P5823853915576214510.Spec : Prop :=
  ∀ n, P5823853915576214510.a n = A091400 (n + 1)

end A091400

/-! ## A091400.P17578263980209044264

`∏{p}[n+1, or(3, #)%#]`
-/

namespace A091400.P17578263980209044264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.lor 3 p % p

end

end A091400.P17578263980209044264

namespace A091400

/-- `∏{p}[n+1, or(3, #)%#]` -/
def P17578263980209044264.Spec : Prop :=
  ∀ n, (P17578263980209044264.a n : ℤ) = A091400 (n + 1)

end A091400

/-! ## A091400.P5722794992667705440

`∏{p}[n+1, and(3, -(#+1))]`
-/

namespace A091400.P5722794992667705440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.land 3 (-(p + 1 : ℤ))

end

end A091400.P5722794992667705440

namespace A091400

/-- `∏{p}[n+1, and(3, -(#+1))]` -/
def P5722794992667705440.Spec : Prop :=
  ∀ n, P5722794992667705440.a n = A091400 (n + 1)

end A091400

/-! ## A091400.P7124623233677907292

`∑{d}[n+1, A318608(#)]`
-/

namespace A091400.P7124623233677907292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A318608 d

end

end A091400.P7124623233677907292

namespace A091400

/-- `∑{d}[n+1, A318608(#)]` -/
def P7124623233677907292.Spec : Prop :=
  ∀ n, P7124623233677907292.a n = A091400 (n + 1)

end A091400

/-! ## A091400.P13192831205594193588

`A000089(∏{p}[n+1, #])`
-/

namespace A091400.P13192831205594193588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091400.P13192831205594193588

namespace A091400

/-- `A000089(∏{p}[n+1, #])` -/
def P13192831205594193588.Spec : Prop :=
  ∀ n, P13192831205594193588.a n = A091400 (n + 1)

end A091400

/-! ## A091400.P3476347852346930357

`∏{p}[n+1, A000925(#)]`
-/

namespace A091400.P3476347852346930357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000925 p

end

end A091400.P3476347852346930357

namespace A091400

/-- `∏{p}[n+1, A000925(#)]` -/
def P3476347852346930357.Spec : Prop :=
  ∀ n, P3476347852346930357.a n = A091400 (n + 1)

end A091400

/-! ## A091400.P4038737010143356777

`A002654(∏{p}[n+1, #])`
-/

namespace A091400.P4038737010143356777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091400.P4038737010143356777

namespace A091400

/-- `A002654(∏{p}[n+1, #])` -/
def P4038737010143356777.Spec : Prop :=
  ∀ n, P4038737010143356777.a n = A091400 (n + 1)

end A091400

/-! ## A091400.P5845456268396173455

`∏{p}[n+1, A055029(#)]`
-/

namespace A091400.P5845456268396173455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A055029 p

end

end A091400.P5845456268396173455

namespace A091400

/-- `∏{p}[n+1, A055029(#)]` -/
def P5845456268396173455.Spec : Prop :=
  ∀ n, P5845456268396173455.a n = A091400 (n + 1)

end A091400

/-! ## A091400.P12498281443088765570

`∏{p}[n+1, A063725(#)]`
-/

namespace A091400.P12498281443088765570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A063725 p

end

end A091400.P12498281443088765570

namespace A091400

/-- `∏{p}[n+1, A063725(#)]` -/
def P12498281443088765570.Spec : Prop :=
  ∀ n, P12498281443088765570.a n = A091400 (n + 1)

end A091400

/-! ## A091400.P6396244242451220028

`∏{p}[n+1, A092147(#)]`
-/

namespace A091400.P6396244242451220028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A092147 p

end

end A091400.P6396244242451220028

namespace A091400

/-- `∏{p}[n+1, A092147(#)]` -/
def P6396244242451220028.Spec : Prop :=
  ∀ n, P6396244242451220028.a n = A091400 (n + 1)

end A091400

/-! ## A091400.P13996682241772381947

`∏{p}[n+1, A113414(#)]`
-/

namespace A091400.P13996682241772381947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A113414 p

end

end A091400.P13996682241772381947

namespace A091400

/-- `∏{p}[n+1, A113414(#)]` -/
def P13996682241772381947.Spec : Prop :=
  ∀ n, P13996682241772381947.a n = A091400 (n + 1)

end A091400

/-! ## A091400.P6650039087878409979

`A258256(∏{p}[n+1, #])`
-/

namespace A091400.P6650039087878409979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258256 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091400.P6650039087878409979

namespace A091400

/-- `A258256(∏{p}[n+1, #])` -/
def P6650039087878409979.Spec : Prop :=
  ∀ n, P6650039087878409979.a n = A091400 (n + 1)

end A091400

/-! ## A091400.P3897493495579759960

`∏{p}[n+1, A295819(#)]`
-/

namespace A091400.P3897493495579759960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A295819 p

end

end A091400.P3897493495579759960

namespace A091400

/-- `∏{p}[n+1, A295819(#)]` -/
def P3897493495579759960.Spec : Prop :=
  ∀ n, P3897493495579759960.a n = A091400 (n + 1)

end A091400

/-! ## A091400.P11872232815996692847

`∏{p}[n+1, A350871(#)]`
-/

namespace A091400.P11872232815996692847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A350871 p

end

end A091400.P11872232815996692847

namespace A091400

/-- `∏{p}[n+1, A350871(#)]` -/
def P11872232815996692847.Spec : Prop :=
  ∀ n, P11872232815996692847.a n = A091400 (n + 1)

end A091400

/-! ## A091400.P3391178152226252126

`∏{p}[n+1, A354107(#)]`
-/

namespace A091400.P3391178152226252126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A354107 p

end

end A091400.P3391178152226252126

namespace A091400

/-- `∏{p}[n+1, A354107(#)]` -/
def P3391178152226252126.Spec : Prop :=
  ∀ n, P3391178152226252126.a n = A091400 (n + 1)

end A091400

/-! ## A091400.P322966823515833935

`A091379(2*(n+1))/2`
-/

namespace A091400.P322966823515833935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091379 (2 * (n + 1)) : ℚ) / 2

end

end A091400.P322966823515833935

namespace A091400

/-- `A091379(2*(n+1))/2` -/
def P322966823515833935.Spec : Prop :=
  ∀ n, P322966823515833935.a n = (A091400 (n + 1) : ℚ)

end A091400

/-! ## A091400.P4255735187604426320

`A000089(A000265(n+1))`
-/

namespace A091400.P4255735187604426320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A000265 (n + 1)).toNat

end

end A091400.P4255735187604426320

namespace A091400

/-- `A000089(A000265(n+1))` -/
def P4255735187604426320.Spec : Prop :=
  ∀ n, P4255735187604426320.a n = A091400 (n + 1)

end A091400

/-! ## A091400.P8796644029551843599

`A000089(A007947(n+1))`
-/

namespace A091400.P8796644029551843599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (A007947 (n + 1)).toNat

end

end A091400.P8796644029551843599

namespace A091400

/-- `A000089(A007947(n+1))` -/
def P8796644029551843599.Spec : Prop :=
  ∀ n, P8796644029551843599.a n = A091400 (n + 1)

end A091400

/-!
# A091403: Numbers n such that genus of group Gamma_0(n) is 1.

The programs for A091403, there is no canonical definition to state claims against.
-/

/-! ## A091403.P4910427276251365151

`eq[1, ∑{d}[n, A001617(#)]]`
-/

namespace A091403.P4910427276251365151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), A001617 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091403.P4910427276251365151

/-! ## A091403.P5084971835353844976

`eq[1, A001617(n+1)]+1`
-/

namespace A091403.P5084971835353844976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091403.P5084971835353844976

/-! ## A091403.P681269142151960927

`eq[1, A001617(A028310(n))]`
-/

namespace A091403.P681269142151960927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091403.P681269142151960927

/-! ## A091403.P8933801597425638613

`eq[1, A001617(sqrt(A253909(n)))]`
-/

namespace A091403.P8933801597425638613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A091403.P8933801597425638613

/-! ## A091403.P13748866142255889271

`A020725(eq[1, A001617(n+1)])`
-/

namespace A091403.P13748866142255889271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091403.P13748866142255889271

/-!
# A091407: Values of len_y(n) for A090822.

The programs for A091407, there is no canonical definition to state claims against.
-/

/-! ## A091407.P8319801771568984689

`(n-A091408(n+1))/Δ[A091413(n)]`
-/

namespace A091407.P8319801771568984689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091413 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A091408 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A091407.P8319801771568984689

/-! ## A091407.P12822954152581038034

`(n-A091408(n+1))/A090822(n+1)`
-/

namespace A091407.P12822954152581038034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A091408 (n + 1) : ℚ) / (A090822 (n + 1) : ℚ)

end

end A091407.P12822954152581038034

/-! ## A091407.P11245716863944225432

`(n-A091408(n+1))/(A093955(n+1)+1)`
-/

namespace A091407.P11245716863944225432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A091408 (n + 1) : ℚ) / (A093955 (n + 1) + 1 : ℚ)

end

end A091407.P11245716863944225432

/-! ## A091407.P17195899801200287628

`gcd(A316648(A316648(n+2)), A327539(n))`
-/

namespace A091407.P17195899801200287628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A316648 (A316648 (n + 2)).toNat) (A327539 n)

end

end A091407.P17195899801200287628

/-!
# A091408: Values of len_x(n) for A090822.

The programs for A091408, there is no canonical definition to state claims against.
-/

/-! ## A091408.P507017039578973701

`n-Δ[A091413(n)]*A091407(n+1)`
-/

namespace A091408.P507017039578973701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n) * A091407 (n + 1)

end

end A091408.P507017039578973701

/-! ## A091408.P13221934122752193490

`n-A090822(n+1)*A091407(n+1)`
-/

namespace A091408.P13221934122752193490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A090822 (n + 1) * A091407 (n + 1)

end

end A091408.P13221934122752193490

/-! ## A091408.P17471066999080175044

`n-(A093955(n+1)+1)*A091407(n+1)`
-/

namespace A091408.P17471066999080175044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A093955 (n + 1) + 1) * A091407 (n + 1)

end

end A091408.P17471066999080175044

/-! ## A091408.P12364412512445063128

`n-lcm(A090822(n+1), A091407(n+1))%A094005(n+1)`
-/

namespace A091408.P12364412512445063128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (Int.lcm (A090822 (n + 1)) (A091407 (n + 1)) : ℤ) (A094005 (n + 1))

end

end A091408.P12364412512445063128

/-! ## A091408.P16280105947089269553

`A001222(A000079(n))-A091407(n+1)*A091975(n+1)`
-/

namespace A091408.P16280105947089269553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000079 n).toNat - A091407 (n + 1) * A091975 (n + 1)

end

end A091408.P16280105947089269553

/-!
# A091411: Lengths of the B blocks in analysis of A090822.

The programs for A091411, there is no canonical definition to state claims against.
-/

/-! ## A091411.P16801096066578811756

`a(n-1)+A091579(n)+a(n-1)` with `a(0)=1`
-/

namespace A091411.P16801096066578811756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A091579 n + a (n - 1))

end

end A091411.P16801096066578811756

/-! ## A091411.P17447705669012186110

`∑[A157217(comp[2*(n+1)])]`
-/

namespace A091411.P17447705669012186110
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157217 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091411.P17447705669012186110

/-! ## A091411.P5056869029184900292

`∑[record[A157217(A026741(n))]]`
-/

namespace A091411.P5056869029184900292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157217 (A026741 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091411.P5056869029184900292

/-! ## A091411.P9668519931077099611

`∑[record[A157217(A195938(n+1))]]`
-/

namespace A091411.P9668519931077099611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157217 (A195938 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091411.P9668519931077099611

/-! ## A091411.P6362306497416665423

`A157217(2*n)`
-/

namespace A091411.P6362306497416665423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157217 (2 * n)

end

end A091411.P6362306497416665423

/-!
# A091412: Lengths of runs in A090822.

The programs for A091412, there is no canonical definition to state claims against.
-/

/-! ## A091412.P7188732680503926910

`A161223(n+87)`
-/

namespace A091412.P7188732680503926910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161223 (n + 87)

end

end A091412.P7188732680503926910

/-!
# A091413: Partial sums of A090822.

The programs for A091413, there is no canonical definition to state claims against.
-/

/-! ## A091413.P344713501052609467

`A090822(n)+a(n-1)` with `a(0)=0`
-/

namespace A091413.P344713501052609467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A090822 n + a (n - 1)

end

end A091413.P344713501052609467

/-! ## A091413.P3585527391562496463

`∑[A090822(ceil(abs(γ-n)))]-1`
-/

namespace A091413.P3585527391562496463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A091413.P3585527391562496463

/-! ## A091413.P3272194831111906179

`a(n-1)+A093955(n)+1` with `a(0)=0`
-/

namespace A091413.P3272194831111906179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A093955 n + 1)

end

end A091413.P3272194831111906179

/-! ## A091413.P1082076060513645495

`∑[A093955(abs(1-n)+1)]+n`
-/

namespace A091413.P1082076060513645495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093955 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A091413.P1082076060513645495

/-! ## A091413.P16926503322527823689

`∑[A093955(round(sqrt(n²+1)))+1]-1`
-/

namespace A091413.P16926503322527823689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093955 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A091413.P16926503322527823689

/-! ## A091413.P5428076827226415174

`∑[A093955(n+1)]-A093955(n+1)+n`
-/

namespace A091413.P5428076827226415174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A093955 (n + 1) + (n : ℤ)

end

end A091413.P5428076827226415174

/-! ## A091413.P2052633648854975789

`∑[A090822(A028310(n))+A008683(2*(n+1)²)]`
-/

namespace A091413.P2052633648854975789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A028310 n).toNat + A008683 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091413.P2052633648854975789

/-!
# A091415: Numbers k such that k!*2^k - 1 is prime.

The programs for A091415, there is no canonical definition to state claims against.
-/

/-! ## A091415.P13457527428031010932

`A007749(n+2)/2`
-/

namespace A091415.P13457527428031010932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007749 (n + 2) : ℚ) / 2

end

end A091415.P13457527428031010932

/-! ## A091415.P1320842079004229224

`a(n-1)*ratio[A007749(n+1)]` with `a(0)=2`
-/

namespace A091415.P1320842079004229224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007749 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A091415.P1320842079004229224

/-! ## A091415.P12705911657795032853

`∑[A014682(Δ[A007749(n+1)])]`
-/

namespace A091415.P12705911657795032853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007749 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091415.P12705911657795032853

/-! ## A091415.P15291482336819314513

`2^A008683(A181758(n+1))*A007749(n+2)`
-/

namespace A091415.P15291482336819314513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A181758 (n + 1)).toNat : ℤ) * (A007749 (n + 2) : ℚ)

end

end A091415.P15291482336819314513

/-! ## A091415.P16670201133021308695

`A273943(A007749(n+2))`
-/

namespace A091415.P16670201133021308695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A007749 (n + 2)).toNat

end

end A091415.P16670201133021308695

/-!
# A091418: Integers n which are not the sum or difference of 2 integers A and B where A is less than or equal to n such that AB+1 and AB-1are both primes. In other words, the product A*B cannot be the middle integer of a twin prime pair.

The programs for A091418, there is no canonical definition to state claims against.
-/

/-! ## A091418.P3273853398203418310

`∩[A090695(n+1), A091417(n+1)]`
-/

namespace A091418.P3273853398203418310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091418.P3273853398203418310

/-! ## A091418.P18278940735470134572

`∩[eq[0, A091182(n+1)]+1, A091417(n+1)]`
-/

namespace A091418.P18278940735470134572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091182 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A091418.P18278940735470134572

/-! ## A091418.P5503835314521090717

`∩[A091417(n+1), A109666(n+1)]`
-/

namespace A091418.P5503835314521090717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091418.P5503835314521090717

/-! ## A091418.P15138388786091599433

`5*A276656(A288583(n+1))`
-/

namespace A091418.P15138388786091599433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A276656 (A288583 (n + 1)).toNat

end

end A091418.P15138388786091599433

/-! ## A091418.P7991145978144482061

`∩[A091417(n+1), A120686(n)]`
-/

namespace A091418.P7991145978144482061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120686 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091418.P7991145978144482061

/-!
# A091419: Squares arising in A089653.

The programs for A091419, there is no canonical definition to state claims against.
-/

/-! ## A091419.P14315973150035164300

`A007947(A089653(n+1))-1`
-/

namespace A091419.P14315973150035164300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A089653 (n + 1)).toNat - 1

end

end A091419.P14315973150035164300

/-! ## A091419.P2319421944734300257

`A091420(n+1)²`
-/

namespace A091419.P2319421944734300257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091420 (n + 1) ^ 2

end

end A091419.P2319421944734300257

/-! ## A091419.P17824228751850939293

`A091420(2*(n+1)-(n+1))^2`
-/

namespace A091419.P17824228751850939293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091420 (2 * (n + 1) - (n + 1)) ^ 2

end

end A091419.P17824228751850939293

/-! ## A091419.P10180312779672885597

`A002620(2*A091420(n+1))`
-/

namespace A091419.P10180312779672885597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A091420 (n + 1)).toNat

end

end A091419.P10180312779672885597

/-! ## A091419.P12285486760197175168

`(A091420(n+1)+A000007(A009194(n+1)))*A091420(n+1)`
-/

namespace A091419.P12285486760197175168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091420 (n + 1) + A000007 (A009194 (n + 1)).toNat) * A091420 (n + 1)

end

end A091419.P12285486760197175168

/-! ## A091419.P4834064049165374241

`and(1, A067201(2*n+5))*A091420(n+1)*A091420(n+1)`
-/

namespace A091419.P4834064049165374241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A067201 (2 * n + 5)) * A091420 (n + 1) * A091420 (n + 1)

end

end A091419.P4834064049165374241

/-! ## A091419.P17278010707448393468

`and(1, A077800(3*n+2))*A091420(n+1)*A091420(n+1)`
-/

namespace A091419.P17278010707448393468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A077800 (3 * n + 2)) * A091420 (n + 1) * A091420 (n + 1)

end

end A091419.P17278010707448393468

/-! ## A091419.P12636629721330855578

`A326690(A091420(n+1)*A091420(n+1))`
-/

namespace A091419.P12636629721330855578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326690 (A091420 (n + 1) * A091420 (n + 1)).toNat

end

end A091419.P12636629721330855578

/-! ## A091419.P14939447145150738805

`A075423(A089653(n+1))`
-/

namespace A091419.P14939447145150738805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075423 (A089653 (n + 1)).toNat

end

end A091419.P14939447145150738805

/-! ## A091419.P8871697793712965262

`filter[A075423(n+2), A010052(#)]`
-/

namespace A091419.P8871697793712965262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075423 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010052 (f1 j).toNat = 1) n)

end

end A091419.P8871697793712965262

/-! ## A091419.P11987111807623588812

`A007947(eq[1, A003285(∏{p}[n+1, #])]+1)-1`
-/

namespace A091419.P11987111807623588812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A091419.P11987111807623588812

/-!
# A091420: Square roots of A091419.

The programs for A091420, there is no canonical definition to state claims against.
-/

/-! ## A091420.P1800615934229197298

`sqrt(A091419(n+1))`
-/

namespace A091420.P1800615934229197298
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A091419 (n + 1) : ℝ)

end

end A091420.P1800615934229197298

/-! ## A091420.P9989484456936768887

`A091453(A091419(n+1)+2)`
-/

namespace A091420.P9989484456936768887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (A091419 (n + 1) + 2).toNat

end

end A091420.P9989484456936768887

/-! ## A091420.P7437192209621733801

`A000188(A091419(Δ[n²]-n))`
-/

namespace A091420.P7437192209621733801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A091419 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A091420.P7437192209621733801

/-! ## A091420.P4708710569859106918

`A037213(A091419(n+1))%A000040(n+1)`
-/

namespace A091420.P4708710569859106918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037213 (A091419 (n + 1)).toNat) (A000040 (n + 1))

end

end A091420.P4708710569859106918

/-! ## A091420.P12997900034827177936

`A037213(A091419(n+1)%A073337(n+1))`
-/

namespace A091420.P12997900034827177936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (Int.tmod (A091419 (n + 1)) (A073337 (n + 1))).toNat

end

end A091420.P12997900034827177936

/-! ## A091420.P3033670747196346196

`A000188(A007913((n+1)²)*A091419(n+1))`
-/

namespace A091420.P3033670747196346196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A007913 ((n + 1) ^ 2) * A091419 (n + 1)).toNat

end

end A091420.P3033670747196346196

/-! ## A091420.P14822790212250675099

`A037213(2*A091419(n+1)-A091419(n+1))`
-/

namespace A091420.P14822790212250675099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (2 * A091419 (n + 1) - A091419 (n + 1)).toNat

end

end A091420.P14822790212250675099

/-! ## A091420.P940662542122392938

`A000188(A014963(2*(n+1))*A091419(n+1))`
-/

namespace A091420.P940662542122392938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A014963 (2 * (n + 1)) * A091419 (n + 1)).toNat

end

end A091420.P940662542122392938

/-! ## A091420.P14861209121422985045

`A000188(A007947(n+1))+A000188(A091419(n+1))-1`
-/

namespace A091420.P14861209121422985045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A007947 (n + 1)).toNat + (A000188 (A091419 (n + 1)).toNat - 1)

end

end A091420.P14861209121422985045

/-! ## A091420.P18421783700035079793

`A000196(A091419(n+1)+1)`
-/

namespace A091420.P18421783700035079793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A091419 (n + 1) + 1).toNat

end

end A091420.P18421783700035079793

/-! ## A091420.P7327247681202281443

`A127093(2*A091419(n+1))`
-/

namespace A091420.P7327247681202281443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (2 * A091419 (n + 1)).toNat

end

end A091420.P7327247681202281443

/-! ## A091420.P4653223643273447800

`A002262(2*A091419(n+1))`
-/

namespace A091420.P4653223643273447800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * A091419 (n + 1)).toNat

end

end A091420.P4653223643273447800

/-! ## A091420.P12102415733302959320

`A000188(A091419(n+1)+A091419(n+1))`
-/

namespace A091420.P12102415733302959320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A091419 (n + 1) + A091419 (n + 1)).toNat

end

end A091420.P12102415733302959320

/-!
# A091421: Numbers m such that m#*2^m - 1 is prime, where m# = A002110(m).

The programs for A091421, there is no canonical definition to state claims against.
-/

/-! ## A091421.P13328694341353200264

`record[A340351(A001055(n+1))]`
-/

namespace A091421.P13328694341353200264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340351 (A001055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091421.P13328694341353200264

/-! ## A091421.P14364894963944473796

`eq[A029123(n), A098965(n+1)]`
-/

namespace A091421.P14364894963944473796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091421.P14364894963944473796

/-! ## A091421.P4043099467790910494

`record[A004001(A143654(2*n+3))]`
-/

namespace A091421.P4043099467790910494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A143654 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091421.P4043099467790910494

/-! ## A091421.P9013387551492794539

`lt[A300121(n+1), A283312(n+1)]`
-/

namespace A091421.P9013387551492794539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091421.P9013387551492794539

/-! ## A091421.P6074242911964169728

`record[A319695(∑[A128588(n+1)]+1)]`
-/

namespace A091421.P6074242911964169728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128588 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319695 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091421.P6074242911964169728

/-!
# A091422: Write the natural numbers in binary, break the result up into blocks of 2 digits each and convert each block back into decimal.

The programs for A091422, there is no canonical definition to state claims against.
-/

/-! ## A091422.P13374528244031404162

`and(A055143(2*(n+1)), 3)`
-/

namespace A091422.P13374528244031404162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055143 (2 * (n + 1))) 3

end

end A091422.P13374528244031404162

/-! ## A091422.P12640613146271455298

`and(3, A055143(n+2+n))`
-/

namespace A091422.P12640613146271455298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A055143 (n + 2 + n))

end

end A091422.P12640613146271455298

/-! ## A091422.P1543885884051333848

`A244528(n+1)+2*A244527(n+1)`
-/

namespace A091422.P1543885884051333848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244528 (n + 1) + 2 * A244527 (n + 1)

end

end A091422.P1543885884051333848

/-! ## A091422.P6045368645952283581

`A030190(2*(n+1))+2*A030190(2*n+1)`
-/

namespace A091422.P6045368645952283581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (2 * (n + 1)) + 2 * A030190 (2 * n + 1)

end

end A091422.P6045368645952283581

/-! ## A091422.P6590024118915866328

`A030302(2*(n+1))+2*A030302(2*n+1)`
-/

namespace A091422.P6590024118915866328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (2 * (n + 1)) + 2 * A030302 (2 * n + 1)

end

end A091422.P6590024118915866328

/-!
# A091423: G.f.: ((1 + x^9)*(1 + x^(15)) ) / ( (1 - x^3)*(1 - x^5)*(1 - x^8)*(1 - x^(12))).

The programs for A091423, there is no canonical definition to state claims against.
-/

/-! ## A091423.P2442401097670244210

`A027357(record[A077168(n-n²%3)])`
-/

namespace A091423.P2442401097670244210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (n - n ^ 2 % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027357 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091423.P2442401097670244210

/-! ## A091423.P6864574232613325438

`A102683(A161953(2*(n+1)))+A000196(A317239(n))`
-/

namespace A091423.P6864574232613325438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A161953 (2 * (n + 1))).toNat + A000196 (A317239 n).toNat

end

end A091423.P6864574232613325438

/-! ## A091423.P3269808614174486949

`A000700(n)-A264676(∑[n+1])`
-/

namespace A091423.P3269808614174486949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - A264676 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091423.P3269808614174486949

/-! ## A091423.P2723303042615932988

`floor(sqrt(A089596(n)%A089592(n+1)))`
-/

namespace A091423.P2723303042615932988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.tmod (A089596 n) (A089592 (n + 1)))

end

end A091423.P2723303042615932988

/-! ## A091423.P11947117266302398161

`A000700(n)-A000035(A024629(n))`
-/

namespace A091423.P11947117266302398161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - A000035 (A024629 n).toNat

end

end A091423.P11947117266302398161

/-!
# A091425: Write the natural numbers in a triangle with k digits in the k-th row, as shown below. Sequence gives the leading diagonal.

The programs for A091425, there is no canonical definition to state claims against.
-/

/-! ## A091425.P14655301766407730957

`A007376(∑[n+1])`
-/

namespace A091425.P14655301766407730957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091425.P14655301766407730957

/-! ## A091425.P824649569482556899

`A033307(∑[n]+n)`
-/

namespace A091425.P824649569482556899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A091425.P824649569482556899

/-! ## A091425.P8760009789421371982

`dr(A007376(C(n+2, 2)))`
-/

namespace A091425.P8760009789421371982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Nat.choose (n + 2) 2))

end

end A091425.P8760009789421371982

/-! ## A091425.P14067902530365405024

`9-A031310(∑[n+1])`
-/

namespace A091425.P14067902530365405024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A031310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091425.P14067902530365405024

/-! ## A091425.P13078632218781899531

`A065649(∑[n+1])%10`
-/

namespace A091425.P13078632218781899531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065649 (∑ j ∈ Finset.range (n + 1), f1 j)) 10

end

end A091425.P13078632218781899531

/-! ## A091425.P7298911850867621648

`∑[Δ[A007376(∑[n])]%10]`
-/

namespace A091425.P7298911850867621648
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091425.P7298911850867621648

/-! ## A091425.P7220838518036182879

`dr(A007376(∑[-xor(n, -1)]))`
-/

namespace A091425.P7220838518036182879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A091425.P7220838518036182879

/-! ## A091425.P15240208569818314706

`dr(A007376(∑[1-(n-2*n)]))`
-/

namespace A091425.P15240208569818314706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A091425.P15240208569818314706

/-! ## A091425.P9174250284480546856

`A182660(A000217(n))+A007376(A000217(n+1))`
-/

namespace A091425.P9174250284480546856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182660 (A000217 n).toNat + A007376 (A000217 (n + 1)).toNat

end

end A091425.P9174250284480546856

/-! ## A091425.P15126798292796384717

`A108202(∑[2*(n+1)])`
-/

namespace A091425.P15126798292796384717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091425.P15126798292796384717

/-!
# A091426: Expansion of (1 + x^18 + x^21 + x^22 + x^23 + x^24 + x^27 + x^45) / ( (1 - x^8)*(1 - x^12)*(1 - x^14)*(1 - x^15)).

The programs for A091426, there is no canonical definition to state claims against.
-/

/-! ## A091426.P16235306969376700843

`A029437(n)%A007906(A017653(n))`
-/

namespace A091426.P16235306969376700843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029437 n) (A007906 (A017653 n).toNat)

end

end A091426.P16235306969376700843

/-! ## A091426.P15479440912778979662

`A079944(lcm(A376263(n), A390662(n)))`
-/

namespace A091426.P15479440912778979662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (Int.lcm (A376263 n) (A390662 n))

end

end A091426.P15479440912778979662

/-! ## A091426.P7970284360384575153

`A254114(A228482(2*n+5)-A254114(3*n))`
-/

namespace A091426.P7970284360384575153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254114 (A228482 (2 * n + 5) - A254114 (3 * n)).toNat

end

end A091426.P7970284360384575153

/-! ## A091426.P11505681228627446775

`A354108(A049855(n))`
-/

namespace A091426.P11505681228627446775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354108 (A049855 n).toNat

end

end A091426.P11505681228627446775

/-! ## A091426.P17268715415620097607

`A373834(A376588(3*n+5)-A138261(n+1))`
-/

namespace A091426.P17268715415620097607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373834 (A376588 (3 * n + 5) - A138261 (n + 1)).toNat

end

end A091426.P17268715415620097607

/-!
# A091428: Numbers k such that abs(A092673(k)) = 1.

The programs for A091428, the canonical program `A091428.P6349186138963889420` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091428 has offset 1).

The definition of A091428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091428.P6349186138963889420

`∪[A056911(n+1), A081770(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091428

/-- `∪[A056911(n+1), A081770(n+1)]` -/
def P6349186138963889420.Spec : Prop :=
  ∀ n, (P6349186138963889420.a n : ℤ) = A091428 (n + 1)

theorem P6349186138963889420.correct : P6349186138963889420.Spec := by
  intro n
  simp only [A091428, Nat.add_sub_cancel]

end A091428

/-! ## A091428.P15642659385453958669

`filter[A354270(n+1), A035263(#)]`
-/

namespace A091428.P15642659385453958669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A091428.P15642659385453958669

namespace A091428

/-- `filter[A354270(n+1), A035263(#)]` -/
def P15642659385453958669.Spec : Prop :=
  ∀ n, P15642659385453958669.a n = A091428 (n + 1)

end A091428

/-! ## A091428.P4752002728930607162

`filter[A354270(n+1), A105234(#)]`
-/

namespace A091428.P4752002728930607162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A091428.P4752002728930607162

namespace A091428

/-- `filter[A354270(n+1), A105234(#)]` -/
def P4752002728930607162.Spec : Prop :=
  ∀ n, P4752002728930607162.a n = A091428 (n + 1)

end A091428

/-! ## A091428.P10973904448845733151

`filter[A354270(n+1), A152822(#)]`
-/

namespace A091428.P10973904448845733151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A091428.P10973904448845733151

namespace A091428

/-- `filter[A354270(n+1), A152822(#)]` -/
def P10973904448845733151.Spec : Prop :=
  ∀ n, P10973904448845733151.a n = A091428 (n + 1)

end A091428

/-! ## A091428.P5179933126339035271

`filter[A354270(n+1), A359590(#)]`
-/

namespace A091428.P5179933126339035271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A091428.P5179933126339035271

namespace A091428

/-- `filter[A354270(n+1), A359590(#)]` -/
def P5179933126339035271.Spec : Prop :=
  ∀ n, P5179933126339035271.a n = A091428 (n + 1)

end A091428

/-! ## A091428.P12491827019443754471

`filter[A354270(n+1), A359592(#)]`
-/

namespace A091428.P12491827019443754471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A091428.P12491827019443754471

namespace A091428

/-- `filter[A354270(n+1), A359592(#)]` -/
def P12491827019443754471.Spec : Prop :=
  ∀ n, P12491827019443754471.a n = A091428 (n + 1)

end A091428

/-! ## A091428.P12773404301575433821

`filter[A020486(n+1), A359592(#)]`
-/

namespace A091428.P12773404301575433821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A091428.P12773404301575433821

namespace A091428

/-- `filter[A020486(n+1), A359592(#)]` -/
def P12773404301575433821.Spec : Prop :=
  ∀ n, P12773404301575433821.a n = A091428 (n + 1)

end A091428

/-! ## A091428.P6763636112539832236

`∩[A020486(n+1), A354270(n+1)]`
-/

namespace A091428.P6763636112539832236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091428.P6763636112539832236

namespace A091428

/-- `∩[A020486(n+1), A354270(n+1)]` -/
def P6763636112539832236.Spec : Prop :=
  ∀ n, (P6763636112539832236.a n : ℤ) = A091428 (n + 1)

end A091428

/-! ## A091428.P14226531120583667435

`filter[A046840(n+1), A359592(#)]`
-/

namespace A091428.P14226531120583667435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A091428.P14226531120583667435

namespace A091428

/-- `filter[A046840(n+1), A359592(#)]` -/
def P14226531120583667435.Spec : Prop :=
  ∀ n, P14226531120583667435.a n = A091428 (n + 1)

end A091428

/-! ## A091428.P13052357198012604175

`∩[A046840(n+1), A354270(n+1)]`
-/

namespace A091428.P13052357198012604175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091428.P13052357198012604175

namespace A091428

/-- `∩[A046840(n+1), A354270(n+1)]` -/
def P13052357198012604175.Spec : Prop :=
  ∀ n, (P13052357198012604175.a n : ℤ) = A091428 (n + 1)

end A091428

/-! ## A091428.P6621086420874130433

`filter[A047501(n+1), A353627(#)]`
-/

namespace A091428.P6621086420874130433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A091428.P6621086420874130433

namespace A091428

/-- `filter[A047501(n+1), A353627(#)]` -/
def P6621086420874130433.Spec : Prop :=
  ∀ n, P6621086420874130433.a n = A091428 (n + 1)

end A091428

/-! ## A091428.P2659487346380995852

`filter[A047501(n+1), A359590(#)]`
-/

namespace A091428.P2659487346380995852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A091428.P2659487346380995852

namespace A091428

/-- `filter[A047501(n+1), A359590(#)]` -/
def P2659487346380995852.Spec : Prop :=
  ∀ n, P2659487346380995852.a n = A091428 (n + 1)

end A091428

/-! ## A091428.P15814543163967113665

`filter[A047501(n+1), A359592(#)]`
-/

namespace A091428.P15814543163967113665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A091428.P15814543163967113665

namespace A091428

/-- `filter[A047501(n+1), A359592(#)]` -/
def P15814543163967113665.Spec : Prop :=
  ∀ n, P15814543163967113665.a n = A091428 (n + 1)

end A091428

/-! ## A091428.P5977227802545268797

`filter[A047501(n+1), A359834(#)]`
-/

namespace A091428.P5977227802545268797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A091428.P5977227802545268797

namespace A091428

/-- `filter[A047501(n+1), A359834(#)]` -/
def P5977227802545268797.Spec : Prop :=
  ∀ n, P5977227802545268797.a n = A091428 (n + 1)

end A091428

/-! ## A091428.P1499244303643736767

`∩[A047501(n+1), A354270(n+1)]`
-/

namespace A091428.P1499244303643736767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091428.P1499244303643736767

namespace A091428

/-- `∩[A047501(n+1), A354270(n+1)]` -/
def P1499244303643736767.Spec : Prop :=
  ∀ n, (P1499244303643736767.a n : ℤ) = A091428 (n + 1)

end A091428

/-! ## A091428.P17065084275729979793

`filter[A003159(n+1), A359592(#)]`
-/

namespace A091428.P17065084275729979793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A091428.P17065084275729979793

namespace A091428

/-- `filter[A003159(n+1), A359592(#)]` -/
def P17065084275729979793.Spec : Prop :=
  ∀ n, P17065084275729979793.a n = A091428 (n + 1)

end A091428

/-! ## A091428.P17216490010262703720

`∩[A003159(n+1), A354270(n+1)]`
-/

namespace A091428.P17216490010262703720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091428.P17216490010262703720

namespace A091428

/-- `∩[A003159(n+1), A354270(n+1)]` -/
def P17216490010262703720.Spec : Prop :=
  ∀ n, (P17216490010262703720.a n : ℤ) = A091428 (n + 1)

end A091428

/-! ## A091428.P14049077556222303976

`filter[A260401(n+1), A359592(#)]`
-/

namespace A091428.P14049077556222303976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A091428.P14049077556222303976

namespace A091428

/-- `filter[A260401(n+1), A359592(#)]` -/
def P14049077556222303976.Spec : Prop :=
  ∀ n, P14049077556222303976.a n = A091428 (n + 1)

end A091428

/-! ## A091428.P11001232676090781558

`∩[A260401(n+1), A354270(n+1)]`
-/

namespace A091428.P11001232676090781558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091428.P11001232676090781558

namespace A091428

/-- `∩[A260401(n+1), A354270(n+1)]` -/
def P11001232676090781558.Spec : Prop :=
  ∀ n, (P11001232676090781558.a n : ℤ) = A091428 (n + 1)

end A091428

/-! ## A091428.P1079919526360498668

`filter[A325130(n+1), A359592(#)]`
-/

namespace A091428.P1079919526360498668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A091428.P1079919526360498668

namespace A091428

/-- `filter[A325130(n+1), A359592(#)]` -/
def P1079919526360498668.Spec : Prop :=
  ∀ n, P1079919526360498668.a n = A091428 (n + 1)

end A091428

/-!
# A091430: Number of Hamiltonian symmetric trivalent (or cubic) connected graphs on 2n nodes (the Foster census).

The programs for A091430, there is no canonical definition to state claims against.
-/

/-! ## A091430.P213073538893123939

`A059282(n+1)%A002487(A196254(n+1))`
-/

namespace A091430.P213073538893123939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059282 (n + 1)) (A002487 (A196254 (n + 1)).toNat)

end

end A091430.P213073538893123939

/-! ## A091430.P6994515515003541740

`A059282(n+1)%A099375(A004006(n))`
-/

namespace A091430.P6994515515003541740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059282 (n + 1)) (A099375 (A004006 n).toNat)

end

end A091430.P6994515515003541740

/-! ## A091430.P13016308723086763414

`A059282(n+1)-A024362(A000041(n))`
-/

namespace A091430.P13016308723086763414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059282 (n + 1) - A024362 (A000041 n).toNat

end

end A091430.P13016308723086763414

/-! ## A091430.P8745814041374353831

`and(A059282(n+1), A161346(A115085(n)))`
-/

namespace A091430.P8745814041374353831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059282 (n + 1)) (A161346 (A115085 n).toNat)

end

end A091430.P8745814041374353831

/-! ## A091430.P13869900982260505998

`A059282(A332994(n+1)^A059282(n+1))`
-/

namespace A091430.P13869900982260505998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059282 (SequenceMachineLib.roundAway ((A332994 (n + 1) : ℚ) ^ (A059282 (n + 1) : ℤ))).toNat

end

end A091430.P13869900982260505998

/-!
# A091431: Happy-go-Lucky numbers: numbers that are both Happy (A007770) and Lucky (A000959).

The programs for A091431, there is no canonical definition to state claims against.
-/

/-! ## A091431.P10970135813605184363

`∩[A000959(n+1), A007770(n+1)]`
-/

namespace A091431.P10970135813605184363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091431.P10970135813605184363

/-! ## A091431.P5327477024268503057

`filter[A007770(n+1), A145649(#)]`
-/

namespace A091431.P5327477024268503057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A091431.P5327477024268503057

/-! ## A091431.P10766977845017146083

`∩[2*A049781(n+1)-1, A007770(n+1)]`
-/

namespace A091431.P10766977845017146083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049781 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091431.P10766977845017146083

/-! ## A091431.P9935339622786687511

`∩[A007770(n+1), A031883(n)+a(n-1)]` with `a(0)=1`
-/

namespace A091431.P9935339622786687511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A031883 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091431.P9935339622786687511

/-! ## A091431.P15816141010806404621

`∩[A007770(n+1), A032602(n+1)-A000040(n+1)]`
-/

namespace A091431.P15816141010806404621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032602 (n + 1) - A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091431.P15816141010806404621

/-! ## A091431.P14123830699327987156

`∩[A032603(n+1)%A001750(n+1), A007770(n+1)]`
-/

namespace A091431.P14123830699327987156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032603 (n + 1)) (A001750 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091431.P14123830699327987156

/-! ## A091431.P12031396514103002028

`∩[eq[1, A031176(n)], A000959(n+1)]`
-/

namespace A091431.P12031396514103002028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A091431.P12031396514103002028

/-! ## A091431.P14546251211851674501

`∩[lt[A103369(n+1), 2]+1, A000959(n+1)]`
-/

namespace A091431.P14546251211851674501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A091431.P14546251211851674501

/-! ## A091431.P15295270758310149412

`∩[eq[1, A031176(n+1)]+1, 2*A049781(n+1)-1]`
-/

namespace A091431.P15295270758310149412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049781 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A091431.P15295270758310149412

/-!
# A091432: Happy-go-Lucky primes: primes arising in A091431.

The programs for A091432, there is no canonical definition to state claims against.
-/

/-! ## A091432.P5054955759414359053

`p?[A091431(n+1)]`
-/

namespace A091432.P5054955759414359053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091432.P5054955759414359053

/-! ## A091432.P8108833511555860369

`∩[A031157(n+1), A091431(n+1)]`
-/

namespace A091432.P8108833511555860369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P8108833511555860369

/-! ## A091432.P5181462518024923363

`∩[A031157(n+1), A035497(n+1)]`
-/

namespace A091432.P5181462518024923363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P5181462518024923363

/-! ## A091432.P11605503771858329162

`∩[A035497(n+1), A043772(n+1)]`
-/

namespace A091432.P11605503771858329162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P11605503771858329162

/-! ## A091432.P15333946657872287293

`∩[A035497(n+1), A091431(n+1)]`
-/

namespace A091432.P15333946657872287293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P15333946657872287293

/-! ## A091432.P7482544264671774429

`∩[A035497(n+1), A118643(n+1)]`
-/

namespace A091432.P7482544264671774429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P7482544264671774429

/-! ## A091432.P9657245178036974846

`∩[A035497(n+1), A137165(n+1)]`
-/

namespace A091432.P9657245178036974846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P9657245178036974846

/-! ## A091432.P11642453238769300863

`∩[A002476(n+1), A091431(n+1)]`
-/

namespace A091432.P11642453238769300863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P11642453238769300863

/-! ## A091432.P10254758019016719207

`∩[A007645(n+1), A091431(n+1)]`
-/

namespace A091432.P10254758019016719207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P10254758019016719207

/-! ## A091432.P11441840447424027823

`∩[A045331(n+1), A091431(n+1)]`
-/

namespace A091432.P11441840447424027823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P11441840447424027823

/-! ## A091432.P18052027922565259476

`∩[A045375(n+1), A091431(n+1)]`
-/

namespace A091432.P18052027922565259476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P18052027922565259476

/-! ## A091432.P15052656803158478391

`∩[A091431(n+1), A279815(n+1)]`
-/

namespace A091432.P15052656803158478391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P15052656803158478391

/-! ## A091432.P12183343328823764552

`∩[A040116(n+1), A091431(n+1)]`
-/

namespace A091432.P12183343328823764552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P12183343328823764552

/-! ## A091432.P10450569368687568025

`∩[A091431(n+1), A325143(n+1)]`
-/

namespace A091432.P10450569368687568025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P10450569368687568025

/-! ## A091432.P10997538436317893756

`∩[A045320(n+1), A091431(n+1)]`
-/

namespace A091432.P10997538436317893756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P10997538436317893756

/-! ## A091432.P12909158095810447574

`∩[A091431(n+1), A140557(n+1)]`
-/

namespace A091432.P12909158095810447574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P12909158095810447574

/-! ## A091432.P14350984938933039332

`∩[A091431(n+1), A140562(n+1)]`
-/

namespace A091432.P14350984938933039332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P14350984938933039332

/-! ## A091432.P5157280309544590719

`∩[A091431(n+1), A140563(n+1)]`
-/

namespace A091432.P5157280309544590719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P5157280309544590719

/-! ## A091432.P7977151479287510792

`∩[A091431(n+1), A167464(n+1)]`
-/

namespace A091432.P7977151479287510792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P7977151479287510792

/-! ## A091432.P10045884624541514328

`∩[A049591(n+1), A091431(n+1)]`
-/

namespace A091432.P10045884624541514328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091432.P10045884624541514328

/-!
# A091433: a(n) = 2*3^n - 18*4^n + 24*5^n.

The programs for A091433, the canonical program `A091433.P1020021681590670023` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091433 has offset 0).

The definition of A091433 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*3^n-18*4^n+24*5^n` (program `A091433.P1020021681590670023`, by `A091433.P1020021681590670023.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091433.P1020021681590670023

`2*3^n-18*4^n+24*5^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A091433

/-- `2*3^n-18*4^n+24*5^n` -/
def P1020021681590670023.Spec : Prop :=
  ∀ n, P1020021681590670023.a n = A091433 n

theorem P1020021681590670023.correct : P1020021681590670023.Spec := by
  intro n
  simp only [A091433]

end A091433

/-! ## A091433.P1433213930624142408

`abs(A027651(n)+Δ[A027650(n)])`
-/

namespace A091433.P1433213930624142408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027651 n + (f1 (n + 1) - f1 n)|

end

end A091433.P1433213930624142408

namespace A091433

/-- `abs(A027651(n)+Δ[A027650(n)])` -/
def P1433213930624142408.Spec : Prop :=
  ∀ n, P1433213930624142408.a n = A091433 n

end A091433

/-! ## A091433.P5046657490747413740

`A000027(A027651(n)+Δ[A027650(n)])`
-/

namespace A091433.P5046657490747413740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027650 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A027651 n + (f1 (n + 1) - f1 n)).toNat

end

end A091433.P5046657490747413740

namespace A091433

/-- `A000027(A027651(n)+Δ[A027650(n)])` -/
def P5046657490747413740.Spec : Prop :=
  ∀ n, P5046657490747413740.a n = A091433 n

end A091433

/-!
# A091434: Poincaré series [or Poincare series] (or Molien series) for a certain four-fold wreath product P_4.

The programs for A091434, there is no canonical definition to state claims against.
-/

/-! ## A091434.P9306534616613800014

`A027633(n)-A117707(A033483(n))`
-/

namespace A091434.P9306534616613800014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027633 n - A117707 (A033483 n).toNat

end

end A091434.P9306534616613800014

/-! ## A091434.P370942649112821250

`A091726(n)-A117707(A033483(n))`
-/

namespace A091434.P370942649112821250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091726 n - A117707 (A033483 n).toNat

end

end A091434.P370942649112821250

/-! ## A091434.P15729111690435709150

`A318844(n)+A102683(A102683(2^n)+A027633(n))`
-/

namespace A091434.P15729111690435709150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318844 n + A102683 (A102683 (2 ^ n) + A027633 n).toNat

end

end A091434.P15729111690435709150

/-! ## A091434.P5094808050604258244

`A318844(n)+A188432(A056993(n))`
-/

namespace A091434.P5094808050604258244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318844 n + A188432 (A056993 n).toNat

end

end A091434.P5094808050604258244

/-! ## A091434.P4935617854063786682

`A318844(n)+A011738(A318852(n))`
-/

namespace A091434.P4935617854063786682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318844 n + A011738 (A318852 n).toNat

end

end A091434.P4935617854063786682

/-!
# A091435: Array T(n,k) = n*(n+k), read by antidiagonals.

The programs for A091435, the canonical program `A091435.P17438393200841062209` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091435 has offset 0).

The definition of A091435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091435.P12465169920831435406

`∑[char[∑[n+1]]]*A025581(n)`
-/

namespace A091435.P12465169920831435406
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A025581 n

end

end A091435.P12465169920831435406

namespace A091435

/-- `∑[char[∑[n+1]]]*A025581(n)` -/
def P12465169920831435406.Spec : Prop :=
  ∀ n, P12465169920831435406.a n = A091435 n

end A091435

/-! ## A091435.P5422545480821784826

`A076110(∑[char[∑[n]]]²-n)-1`
-/

namespace A091435.P5422545480821784826
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) - 1

end

end A091435.P5422545480821784826

namespace A091435

/-- `A076110(∑[char[∑[n]]]²-n)-1` -/
def P5422545480821784826.Spec : Prop :=
  ∀ n, P5422545480821784826.a n = A091435 n

end A091435

/-! ## A091435.P13837000263516980105

`(A004736(n+1)-1)*∑[char[∑[n+1]]]`
-/

namespace A091435.P13837000263516980105
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A091435.P13837000263516980105

namespace A091435

/-- `(A004736(n+1)-1)*∑[char[∑[n+1]]]` -/
def P13837000263516980105.Spec : Prop :=
  ∀ n, P13837000263516980105.a n = A091435 n

end A091435

/-! ## A091435.P11168548594011918156

`(C(comp[∑[n]]-n, 2)-(n+1))*A003056(n)`
-/

namespace A091435.P11168548594011918156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) * A003056 n

end

end A091435.P11168548594011918156

namespace A091435

/-- `(C(comp[∑[n]]-n, 2)-(n+1))*A003056(n)` -/
def P11168548594011918156.Spec : Prop :=
  ∀ n, P11168548594011918156.a n = A091435 n

end A091435

/-! ## A091435.P10929132226452045384

`A004247(n)+(C(comp[∑[n]]-n, 2)-(n+1))²`
-/

namespace A091435.P10929132226452045384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) ^ 2

end

end A091435.P10929132226452045384

namespace A091435

/-- `A004247(n)+(C(comp[∑[n]]-n, 2)-(n+1))²` -/
def P10929132226452045384.Spec : Prop :=
  ∀ n, P10929132226452045384.a n = A091435 n

end A091435

/-! ## A091435.P14591266021245613801

`A095834(n+1)-(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A091435.P14591266021245613801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095834 (n + 1) - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A091435.P14591266021245613801

namespace A091435

/-- `A095834(n+1)-(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P14591266021245613801.Spec : Prop :=
  ∀ n, P14591266021245613801.a n = A091435 n

end A091435

/-! ## A091435.P17438393200841062209

`A079904(A061579(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A091435

/-- `A079904(A061579(n))` -/
def P17438393200841062209.Spec : Prop :=
  ∀ n, P17438393200841062209.a n = A091435 n

theorem P17438393200841062209.correct : P17438393200841062209.Spec := by
  intro n
  simp only [A091435]

end A091435

/-! ## A091435.P1570539836477046449

`A079904(A038722(n+2))`
-/

namespace A091435.P1570539836477046449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 (A038722 (n + 2)).toNat

end

end A091435.P1570539836477046449

namespace A091435

/-- `A079904(A038722(n+2))` -/
def P1570539836477046449.Spec : Prop :=
  ∀ n, P1570539836477046449.a n = A091435 n

end A091435

/-! ## A091435.P17586455511222877925

`A073254(n)-A143844(n)`
-/

namespace A091435.P17586455511222877925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n - A143844 n

end

end A091435.P17586455511222877925

namespace A091435

/-- `A073254(n)-A143844(n)` -/
def P17586455511222877925.Spec : Prop :=
  ∀ n, P17586455511222877925.a n = A091435 n

end A091435

/-! ## A091435.P5481546876296770550

`A335821(n)-A004247(n)`
-/

namespace A091435.P5481546876296770550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335821 n - A004247 n

end

end A091435.P5481546876296770550

namespace A091435

/-- `A335821(n)-A004247(n)` -/
def P5481546876296770550.Spec : Prop :=
  ∀ n, P5481546876296770550.a n = A091435 n

end A091435

/-! ## A091435.P15213873955419647685

`A004247(n)+A025581(n)²`
-/

namespace A091435.P15213873955419647685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + A025581 n ^ 2

end

end A091435.P15213873955419647685

namespace A091435

/-- `A004247(n)+A025581(n)²` -/
def P15213873955419647685.Spec : Prop :=
  ∀ n, P15213873955419647685.a n = A091435 n

end A091435

/-! ## A091435.P8119876733957544240

`A073254(n)-A002262(n)²`
-/

namespace A091435.P8119876733957544240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n - A002262 n ^ 2

end

end A091435.P8119876733957544240

namespace A091435

/-- `A073254(n)-A002262(n)²` -/
def P8119876733957544240.Spec : Prop :=
  ∀ n, P8119876733957544240.a n = A091435 n

end A091435

/-! ## A091435.P17151404437692914787

`A003056(n)²-A079904(n)`
-/

namespace A091435.P17151404437692914787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 - A079904 n

end

end A091435.P17151404437692914787

namespace A091435

/-- `A003056(n)²-A079904(n)` -/
def P17151404437692914787.Spec : Prop :=
  ∀ n, P17151404437692914787.a n = A091435 n

end A091435

/-! ## A091435.P18238179916529611200

`log2(A130321(n))*A003056(n)`
-/

namespace A091435.P18238179916529611200
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130321 n : ℝ) * (A003056 n : ℝ)

end

end A091435.P18238179916529611200

namespace A091435

/-- `log2(A130321(n))*A003056(n)` -/
def P18238179916529611200.Spec : Prop :=
  ∀ n, P18238179916529611200.a n = (A091435 n : ℝ)

end A091435

/-! ## A091435.P3832344326086571148

`A095831(n+1)+A004247(n)`
-/

namespace A091435.P3832344326086571148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095831 (n + 1) + A004247 n

end

end A091435.P3832344326086571148

namespace A091435

/-- `A095831(n+1)+A004247(n)` -/
def P3832344326086571148.Spec : Prop :=
  ∀ n, P3832344326086571148.a n = A091435 n

end A091435

/-! ## A091435.P4846773611278505813

`A095834(n+1)-A025581(n)`
-/

namespace A091435.P4846773611278505813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095834 (n + 1) - A025581 n

end

end A091435.P4846773611278505813

namespace A091435

/-- `A095834(n+1)-A025581(n)` -/
def P4846773611278505813.Spec : Prop :=
  ∀ n, P4846773611278505813.a n = A091435 n

end A091435

/-! ## A091435.P2803400982495012786

`A061885(n)-A223544(n+1)`
-/

namespace A091435.P2803400982495012786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n - A223544 (n + 1)

end

end A091435.P2803400982495012786

namespace A091435

/-- `A061885(n)-A223544(n+1)` -/
def P2803400982495012786.Spec : Prop :=
  ∀ n, P2803400982495012786.a n = A091435 n

end A091435

/-! ## A091435.P7831446878261288303

`A025581(n)/2*A279891(n)`
-/

namespace A091435.P7831446878261288303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025581 n : ℚ) / 2 * (A279891 n : ℚ)

end

end A091435.P7831446878261288303

namespace A091435

/-- `A025581(n)/2*A279891(n)` -/
def P7831446878261288303.Spec : Prop :=
  ∀ n, P7831446878261288303.a n = (A091435 n : ℚ)

end A091435

/-! ## A091435.P17877067966740686947

`val(A036561(n), 2)*A003056(n)`
-/

namespace A091435.P17877067966740686947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A036561 n).toNat 2 : ℤ) * A003056 n

end

end A091435.P17877067966740686947

namespace A091435

/-- `val(A036561(n), 2)*A003056(n)` -/
def P17877067966740686947.Spec : Prop :=
  ∀ n, P17877067966740686947.a n = A091435 n

end A091435

/-! ## A091435.P5475970529664383493

`A049780(n)+C(A025581(n), 2)`
-/

namespace A091435.P5475970529664383493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049780 n + (Nat.choose (A025581 n).toNat 2 : ℤ)

end

end A091435.P5475970529664383493

namespace A091435

/-- `A049780(n)+C(A025581(n), 2)` -/
def P5475970529664383493.Spec : Prop :=
  ∀ n, P5475970529664383493.a n = A091435 n

end A091435

/-!
# A091437: Number of bipartite partitions of ceiling(n/2) white objects and floor(n/2) black ones.

The programs for A091437, there is no canonical definition to state claims against.
-/

/-! ## A091437.P4554912472071673323

`A054225(∑[n%2+n])`
-/

namespace A091437.P4554912472071673323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091437.P4554912472071673323

/-! ## A091437.P13673526632057227243

`A054225(∑[and(1, n)+n])`
-/

namespace A091437.P13673526632057227243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091437.P13673526632057227243

/-! ## A091437.P10776916845656672455

`A054225(∑[∑[2*and(1, n)]])`
-/

namespace A091437.P10776916845656672455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091437.P10776916845656672455

/-! ## A091437.P17603593070693367566

`A054225(A194274(n))`
-/

namespace A091437.P17603593070693367566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A194274 n).toNat

end

end A091437.P17603593070693367566

/-! ## A091437.P5336566662038727115

`A054225(record[A245300(n)])`
-/

namespace A091437.P5336566662038727115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091437.P5336566662038727115

/-! ## A091437.P9257354285492500169

`A054225(A007590(n+1))`
-/

namespace A091437.P9257354285492500169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A007590 (n + 1)).toNat

end

end A091437.P9257354285492500169

/-! ## A091437.P13885045902181435803

`A054225(A080476(n+1))`
-/

namespace A091437.P13885045902181435803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A080476 (n + 1)).toNat

end

end A091437.P13885045902181435803

/-! ## A091437.P9192339139784212303

`A054225(A000982(n)+n)`
-/

namespace A091437.P9192339139784212303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000982 n + (n : ℤ)).toNat

end

end A091437.P9192339139784212303

/-! ## A091437.P17231868185167849849

`A054225(A004525(n²)+n)`
-/

namespace A091437.P17231868185167849849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A004525 (n ^ 2) + (n : ℤ)).toNat

end

end A091437.P17231868185167849849

/-! ## A091437.P14017984373845147465

`A054225(A110654(n²)+n)`
-/

namespace A091437.P14017984373845147465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A110654 (n ^ 2) + (n : ℤ)).toNat

end

end A091437.P14017984373845147465

/-! ## A091437.P11381379251182575072

`A054225(A065033(n)+∑[n])`
-/

namespace A091437.P11381379251182575072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A065033 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A091437.P11381379251182575072

/-! ## A091437.P4960692790465994025

`A054225(∑[∑[n]/A065033(n)])`
-/

namespace A091437.P4960692790465994025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (A065033 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A091437.P4960692790465994025

/-! ## A091437.P1525377353899580472

`A054225(A004275(∑[A065033(n)]))`
-/

namespace A091437.P1525377353899580472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A004275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A091437.P1525377353899580472

/-! ## A091437.P8412867758657053232

`A054225(n-(A004525(n)-A000217(n)))`
-/

namespace A091437.P8412867758657053232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 ((n : ℤ) - (A004525 n - A000217 n)).toNat

end

end A091437.P8412867758657053232

/-! ## A091437.P13479598885773044793

`A054225(A000217(n+1)-A065033(n+1))`
-/

namespace A091437.P13479598885773044793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000217 (n + 1) - A065033 (n + 1)).toNat

end

end A091437.P13479598885773044793

/-!
# A091438: Triangle a(n,k) of partitions of n objects of 2 colors, k of which are black and each part with at least one black object.

The programs for A091438, there is no canonical definition to state claims against.
-/

/-! ## A091438.P707243689069112411

`A108456(comp[∑[n]])`
-/

namespace A091438.P707243689069112411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108456 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A091438.P707243689069112411

/-! ## A091438.P14491757666035349315

`and(-1, A108456(A014132(n+1)))`
-/

namespace A091438.P14491757666035349315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A108456 (A014132 (n + 1)).toNat)

end

end A091438.P14491757666035349315

/-! ## A091438.P4375323410684034221

`A108456(A014132(n+1))%A001612(n)`
-/

namespace A091438.P4375323410684034221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108456 (A014132 (n + 1)).toNat) (A001612 n)

end

end A091438.P4375323410684034221

/-! ## A091438.P5332956088296134531

`lcm(A108456(A014132(n+1)), A158388(n))`
-/

namespace A091438.P5332956088296134531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A108456 (A014132 (n + 1)).toNat) (A158388 n)

end

end A091438.P5332956088296134531

/-! ## A091438.P12988798313408251932

`∑{d}[A108456(A014132(n+1)), A000010(#)]`
-/

namespace A091438.P12988798313408251932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108456 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A091438.P12988798313408251932

/-! ## A091438.P5573028625022624983

`∏{d}[A108456(A014132(n+1)), A014963(#)]`
-/

namespace A091438.P5573028625022624983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108456 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A091438.P5573028625022624983

/-! ## A091438.P14770268935658930524

`A108456(A014132(n+1))+A002262(∑[n])`
-/

namespace A091438.P14770268935658930524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108456 (A014132 (n + 1)).toNat + A002262 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091438.P14770268935658930524

/-! ## A091438.P12863236991128487110

`A108456(A014132(n+1))+A008683(4*(n+1))`
-/

namespace A091438.P12863236991128487110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108456 (A014132 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A091438.P12863236991128487110

/-! ## A091438.P6650221462219608918

`A108456(A014132(n+1))^∑{e}[A020639(n+2), #]`
-/

namespace A091438.P6650221462219608918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108456 (A014132 (n + 1)).toNat ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A091438.P6650221462219608918

/-! ## A091438.P10023621006240709826

`A340785(A175840(n))`
-/

namespace A091438.P10023621006240709826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340785 (A175840 n).toNat

end

end A091438.P10023621006240709826

/-!
# A091439: Least k such that k/phi(k) >= n, where phi is Euler's totient function.

The programs for A091439, there is no canonical definition to state claims against.
-/

/-! ## A091439.P3767624958542410663

`A002110(A256968(n+1))`
-/

namespace A091439.P3767624958542410663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A256968 (n + 1)).toNat

end

end A091439.P3767624958542410663

/-! ## A091439.P1808551951964814510

`A266269(n+1)-1`
-/

namespace A091439.P1808551951964814510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266269 (n + 1) - 1

end

end A091439.P1808551951964814510

/-! ## A091439.P17737517775936610250

`A034386(A091440(n+1))`
-/

namespace A091439.P17737517775936610250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A091440 (n + 1)).toNat

end

end A091439.P17737517775936610250

/-! ## A091439.P9729182914794052302

`A104588(3^(n+1)-(n+1))`
-/

namespace A091439.P9729182914794052302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104588 (3 ^ (n + 1) - (n + 1))

end

end A091439.P9729182914794052302

/-!
# A091440: Smallest number m such that m#/phi(m#) >= n, where m# indicates the primorial (A034386) of m and phi is Euler's totient function.

The programs for A091440, there is no canonical definition to state claims against.
-/

/-! ## A091440.P9328684000769555462

`A167348(n+1)-floor(acot(n))`
-/

namespace A091440.P9328684000769555462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167348 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A091440.P9328684000769555462

/-! ## A091440.P2710062410416667508

`A167348(n+1)-A000007(n)`
-/

namespace A091440.P2710062410416667508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167348 (n + 1) - A000007 n

end

end A091440.P2710062410416667508

/-! ## A091440.P6608100015672898162

`A167348(n+1)-A088157(n)`
-/

namespace A091440.P6608100015672898162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167348 (n + 1) - A088157 n

end

end A091440.P6608100015672898162

/-! ## A091440.P15763999751122829684

`A167348(n+1)-A112316(n)`
-/

namespace A091440.P15763999751122829684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167348 (n + 1) - A112316 n

end

end A091440.P15763999751122829684

/-! ## A091440.P9559498191068862947

`A167348(n+1)-A151622(n)`
-/

namespace A091440.P9559498191068862947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167348 (n + 1) - A151622 n

end

end A091440.P9559498191068862947

/-!
# A091441: Table (by antidiagonals) of permutations of two types of objects such that each cycle contains at least one object of each type. Each type of object is labeled from its own label set.

The programs for A091441, the canonical program `A091441.P8017669790093699685` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091441 has offset 1).

The definition of A091441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091441.P15015938587342783044

`A098361(n)*A141611(n)`
-/

namespace A091441.P15015938587342783044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A141611 n

end

end A091441.P15015938587342783044

namespace A091441

/-- `A098361(n)*A141611(n)` -/
def P15015938587342783044.Spec : Prop :=
  ∀ n, P15015938587342783044.a n = A091441 (n + 1)

end A091441

/-! ## A091441.P9738600770706189516

`A004736(n+1)*A162608(n)`
-/

namespace A091441.P9738600770706189516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A162608 n

end

end A091441.P9738600770706189516

namespace A091441

/-- `A004736(n+1)*A162608(n)` -/
def P9738600770706189516.Spec : Prop :=
  ∀ n, P9738600770706189516.a n = A091441 (n + 1)

end A091441

/-! ## A091441.P192521166444982506

`(A025581(n)+1)*A162608(n)`
-/

namespace A091441.P192521166444982506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A162608 n

end

end A091441.P192521166444982506

namespace A091441

/-- `(A025581(n)+1)*A162608(n)` -/
def P192521166444982506.Spec : Prop :=
  ∀ n, P192521166444982506.a n = A091441 (n + 1)

end A091441

/-! ## A091441.P9016732047903291673

`A132159(n)*A166350(n+1)`
-/

namespace A091441.P9016732047903291673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132159 n * A166350 (n + 1)

end

end A091441.P9016732047903291673

namespace A091441

/-- `A132159(n)*A166350(n+1)` -/
def P9016732047903291673.Spec : Prop :=
  ∀ n, P9016732047903291673.a n = A091441 (n + 1)

end A091441

/-! ## A091441.P7530903135239361617

`A094587(n)*A288777(n+1)`
-/

namespace A091441.P7530903135239361617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A288777 (n + 1)

end

end A091441.P7530903135239361617

namespace A091441

/-- `A094587(n)*A288777(n+1)` -/
def P7530903135239361617.Spec : Prop :=
  ∀ n, P7530903135239361617.a n = A091441 (n + 1)

end A091441

/-! ## A091441.P8017669790093699685

`A003056(n)!*A003991(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A091441

/-- `A003056(n)!*A003991(n+1)` -/
def P8017669790093699685.Spec : Prop :=
  ∀ n, P8017669790093699685.a n = A091441 (n + 1)

theorem P8017669790093699685.correct : P8017669790093699685.Spec := by
  intro n
  simp only [A091441, Nat.add_sub_cancel]

end A091441

/-! ## A091441.P17924622901108105677

`(A127739(n+1)-n)*A162608(n)`
-/

namespace A091441.P17924622901108105677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127739 (n + 1) - (n : ℤ)) * A162608 n

end

end A091441.P17924622901108105677

namespace A091441

/-- `(A127739(n+1)-n)*A162608(n)` -/
def P17924622901108105677.Spec : Prop :=
  ∀ n, P17924622901108105677.a n = A091441 (n + 1)

end A091441

/-! ## A091441.P10667611706782526249

`A121757(n)/A007318(n)*A132159(n)`
-/

namespace A091441.P10667611706782526249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121757 n : ℚ) / (A007318 n : ℚ) * (A132159 n : ℚ)

end

end A091441.P10667611706782526249

namespace A091441

/-- `A121757(n)/A007318(n)*A132159(n)` -/
def P10667611706782526249.Spec : Prop :=
  ∀ n, P10667611706782526249.a n = (A091441 (n + 1) : ℚ)

end A091441

/-! ## A091441.P5678994291575131662

`A059036(A057944(n))!*A003991(n+1)`
-/

namespace A091441.P5678994291575131662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A059036 (A057944 n).toNat).toNat : ℤ) * A003991 (n + 1)

end

end A091441.P5678994291575131662

namespace A091441

/-- `A059036(A057944(n))!*A003991(n+1)` -/
def P5678994291575131662.Spec : Prop :=
  ∀ n, P5678994291575131662.a n = A091441 (n + 1)

end A091441

/-! ## A091441.P14909498211753849137

`(A057944(A007401(n+1))-n)*A162608(n)`
-/

namespace A091441.P14909498211753849137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057944 (A007401 (n + 1)).toNat - (n : ℤ)) * A162608 n

end

end A091441.P14909498211753849137

namespace A091441

/-- `(A057944(A007401(n+1))-n)*A162608(n)` -/
def P14909498211753849137.Spec : Prop :=
  ∀ n, P14909498211753849137.a n = A091441 (n + 1)

end A091441

/-!
# A091442: Table (by antidiagonals) of permutations of two types of objects such that each cycle contains at least one object of each type. Each type of object is unlabeled.

The programs for A091442, there is no canonical definition to state claims against.
-/

/-! ## A091442.P3125390467989902257

`A196172(A008619(or(2, A144463(n))))`
-/

namespace A091442.P3125390467989902257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196172 (A008619 (Int.lor 2 (A144463 n)).toNat).toNat

end

end A091442.P3125390467989902257

/-! ## A091442.P14778450767289653401

`A196172(A159623(n)+A003989(n+1))`
-/

namespace A091442.P14778450767289653401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196172 (A159623 n + A003989 (n + 1)).toNat

end

end A091442.P14778450767289653401

/-! ## A091442.P14178829945446598146

`A196172(A008619(A144463(n)+A003989(n+1)))`
-/

namespace A091442.P14178829945446598146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196172 (A008619 (A144463 n + A003989 (n + 1)).toNat).toNat

end

end A091442.P14178829945446598146

/-! ## A091442.P3907574485509070123

`A196172(A010051(n+1)+A008619(A144463(n)))`
-/

namespace A091442.P3907574485509070123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196172 (A010051 (n + 1) + A008619 (A144463 n).toNat).toNat

end

end A091442.P3907574485509070123

/-! ## A091442.P2324492986169359015

`A285118(n)+A000005(A118190(n))`
-/

namespace A091442.P2324492986169359015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285118 n + A000005 (A118190 n).toNat

end

end A091442.P2324492986169359015

/-!
# A091444: Concatenate binary vectors ordered first by length, then by the number of 1's and finally lexicographically.

The programs for A091444, there is no canonical definition to state claims against.
-/

/-! ## A091444.P3874323586918304465

`A091445(n)+A091447(n)-A091446(n)`
-/

namespace A091444.P3874323586918304465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091445 n + (A091447 n - A091446 n)

end

end A091444.P3874323586918304465

/-! ## A091444.P3265027367134520306

`and(A091447(n), A162430(A250261(n)))`
-/

namespace A091444.P3265027367134520306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091447 n) (A162430 (A250261 n).toNat)

end

end A091444.P3265027367134520306

/-! ## A091444.P11679275893235270525

`A091447(n)-A011735(A341100(n+1))`
-/

namespace A091444.P11679275893235270525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091447 n - A011735 (A341100 (n + 1)).toNat

end

end A091444.P11679275893235270525

/-! ## A091444.P6517921683037401813

`A030190(A091447(n)*A341100(n+1))`
-/

namespace A091444.P6517921683037401813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A091447 n * A341100 (n + 1)).toNat

end

end A091444.P6517921683037401813

/-! ## A091444.P9900254776216387158

`and(A091447(n), A151728(n))`
-/

namespace A091444.P9900254776216387158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091447 n) (A151728 n)

end

end A091444.P9900254776216387158

/-! ## A091444.P15504124276625552751

`and(A091447(n), A327330(n))`
-/

namespace A091444.P15504124276625552751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091447 n) (A327330 n)

end

end A091444.P15504124276625552751

/-! ## A091444.P516796886602631727

`and(A001913(A000433(2*n+3)), A091447(n))`
-/

namespace A091444.P516796886602631727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001913 (A000433 (2 * n + 3)).toNat) (A091447 n)

end

end A091444.P516796886602631727

/-! ## A091444.P10856568059086249460

`and(A089998(n), A091447(n))`
-/

namespace A091444.P10856568059086249460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089998 n) (A091447 n)

end

end A091444.P10856568059086249460

/-! ## A091444.P2435369423028659772

`and(A045535(n), A091447(n))`
-/

namespace A091444.P2435369423028659772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 n) (A091447 n)

end

end A091444.P2435369423028659772

/-!
# A091445: Concatenate binary vectors ordered first by length, then by the number of 1's and finally by a 'reverse' lexicographical ordering (read words from right to left).

The programs for A091445, there is no canonical definition to state claims against.
-/

/-! ## A091445.P1652463997078896740

`A091444(n)+A091446(n)-A091447(n)`
-/

namespace A091445.P1652463997078896740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091444 n + (A091446 n - A091447 n)

end

end A091445.P1652463997078896740

/-! ## A091445.P5459815253813998038

`A091446(C(n+1, 63)+n)`
-/

namespace A091445.P5459815253813998038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091446 (Nat.choose (n + 1) 63 + n)

end

end A091445.P5459815253813998038

/-! ## A091445.P9124563499576868888

`A091446(n)-A011735(A341100(n+1))`
-/

namespace A091445.P9124563499576868888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091446 n - A011735 (A341100 (n + 1)).toNat

end

end A091445.P9124563499576868888

/-! ## A091445.P16279391844573827731

`A091446(n)*A333867(A094842(A239550(n)))`
-/

namespace A091445.P16279391844573827731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091446 n * A333867 (A094842 (A239550 n).toNat).toNat

end

end A091445.P16279391844573827731

/-! ## A091445.P509133101891584060

`and(A091446(n), A327330(n))`
-/

namespace A091445.P509133101891584060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091446 n) (A327330 n)

end

end A091445.P509133101891584060

/-! ## A091445.P12601254444163631198

`and(p?[A008005(n)], A091446(n))`
-/

namespace A091445.P12601254444163631198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A091446 n)

end

end A091445.P12601254444163631198

/-! ## A091445.P1955585556562019716

`and(1, A089998(n*A091446(n)))`
-/

namespace A091445.P1955585556562019716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A089998 ((n : ℤ) * A091446 n).toNat)

end

end A091445.P1955585556562019716

/-! ## A091445.P10127710906802887499

`and(A089998(n), A091446(n))`
-/

namespace A091445.P10127710906802887499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A089998 n) (A091446 n)

end

end A091445.P10127710906802887499

/-! ## A091445.P1599431730582005376

`and(A006530(A013610(n)), A091446(n))`
-/

namespace A091445.P1599431730582005376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A013610 n).toNat) (A091446 n)

end

end A091445.P1599431730582005376

/-! ## A091445.P4280362969371867094

`and(A045535(n), A091446(n))`
-/

namespace A091445.P4280362969371867094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 n) (A091446 n)

end

end A091445.P4280362969371867094

/-!
# A091446: Concatenate binary vectors ordered first by length, then by the number of 1's and finally by an 'unusual' lexicographical ordering (1 comes before 0).

The programs for A091446, there is no canonical definition to state claims against.
-/

/-! ## A091446.P5523811672076200205

`A091445(n)+A091447(n)-A091444(n)`
-/

namespace A091446.P5523811672076200205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091445 n + (A091447 n - A091444 n)

end

end A091446.P5523811672076200205

/-! ## A091446.P9187044171596948623

`A091445(n)+A011735(A341100(n+1))`
-/

namespace A091446.P9187044171596948623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091445 n + A011735 (A341100 (n + 1)).toNat

end

end A091446.P9187044171596948623

/-!
# A091447: Concatenate binary vectors ordered first by length, then by the number of 1's and finally by an 'unusual' lexicographical ordering (read words from right to left, 1 comes before 0).

The programs for A091447, there is no canonical definition to state claims against.
-/

/-! ## A091447.P16061508791116963707

`A091444(n)+A091446(n)-A091445(n)`
-/

namespace A091447.P16061508791116963707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091444 n + (A091446 n - A091445 n)

end

end A091447.P16061508791116963707

/-! ## A091447.P4797654913163769878

`A091444(n)+A011735(A341100(n+1))`
-/

namespace A091447.P4797654913163769878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091444 n + A011735 (A341100 (n + 1)).toNat

end

end A091447.P4797654913163769878

/-!
# A091449: Array T(n,k) read by antidiagonals, where row n is the increasing sequence of numbers m for which the simple continued fraction of sqrt(m) has period n, n >= 0, k >= 1.

The programs for A091449, there is no canonical definition to state claims against.
-/

/-! ## A091449.P2918560790387592778

`A091450(∑[char[∑[n]]]²-n)`
-/

namespace A091449.P2918560790387592778
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091450 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A091449.P2918560790387592778

/-! ## A091449.P1294262941065618990

`or(char[3], A091450(A038722(n+1)))`
-/

namespace A091449.P1294262941065618990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A091450 (A038722 (n + 1)).toNat)

end

end A091449.P1294262941065618990

/-! ## A091449.P4275010512090127115

`A091450(A038722(n+1))%A016840(n)`
-/

namespace A091449.P4275010512090127115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091450 (A038722 (n + 1)).toNat) (A016840 n)

end

end A091449.P4275010512090127115

/-! ## A091449.P12325952836474684468

`gcd(A000038(n), A091450(A038722(n+1)))`
-/

namespace A091449.P12325952836474684468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A091450 (A038722 (n + 1)).toNat)

end

end A091449.P12325952836474684468

/-! ## A091449.P15056279463418619057

`lcm(A091450(A038722(n+1)), A112865(n))`
-/

namespace A091449.P15056279463418619057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A091450 (A038722 (n + 1)).toNat) (A112865 n)

end

end A091449.P15056279463418619057

/-! ## A091449.P7522007695632612058

`char[A004482(n)]*A091450(A038722(n+1))`
-/

namespace A091449.P7522007695632612058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A091450 (A038722 (n + 1)).toNat

end

end A091449.P7522007695632612058

/-! ## A091449.P6408483608879304351

`A091450(A038722(n+1))+A000007(n+1)`
-/

namespace A091449.P6408483608879304351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091450 (A038722 (n + 1)).toNat + A000007 (n + 1)

end

end A091449.P6408483608879304351

/-! ## A091449.P6737919342461164900

`A007318(C(2, n+2))*A091450(A038722(n+1))`
-/

namespace A091449.P6737919342461164900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A091450 (A038722 (n + 1)).toNat

end

end A091449.P6737919342461164900

/-! ## A091449.P4683763341690981368

`A000045(((-1)^n)²)*A091450(A038722(n+1))`
-/

namespace A091449.P4683763341690981368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * A091450 (A038722 (n + 1)).toNat

end

end A091449.P4683763341690981368

/-!
# A091450: Transpose of A091449: array T(n,k) read by antidiagonals, where column k is the increasing sequence of numbers m for which the simple continued fraction of sqrt(m) has period k, n >= 1, k >= 0.

The programs for A091450, there is no canonical definition to state claims against.
-/

/-! ## A091450.P8879381093106162018

`A091449(∑[char[∑[n]]]²-(n+1))`
-/

namespace A091450.P8879381093106162018
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091449 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A091450.P8879381093106162018

/-! ## A091450.P2880087407227026658

`A091452(A257554(n+1))`
-/

namespace A091450.P2880087407227026658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091452 (A257554 (n + 1)).toNat

end

end A091450.P2880087407227026658

/-!
# A091451: Array T(n,k) read by antidiagonals: (row 0)=squares, (row 1)={numbers m for which the simple continued fraction (CF) of sqrt(m) has period length 1}; once (row n) is defined, let (row n+1) begin with the least positive integer not already in a row and let the rest of (row n+1) be the other m's for which CF(sqrt(m)) has the same period length.

The programs for A091451, there is no canonical definition to state claims against.
-/

/-! ## A091451.P11823175831705472050

`A091452(A243833(n)+A038722(n+1))`
-/

namespace A091451.P11823175831705472050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091452 (A243833 n + A038722 (n + 1)).toNat

end

end A091451.P11823175831705472050

/-!
# A091452: Transpose of array in A091451 associated with period lengths of square roots of positive integers.

The programs for A091452, there is no canonical definition to state claims against.
-/

/-! ## A091452.P9944378481077785184

`A091450(A161951(n+1))%A047211(n+5)`
-/

namespace A091452.P9944378481077785184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091450 (A161951 (n + 1)).toNat) (A047211 (n + 5))

end

end A091452.P9944378481077785184

/-! ## A091452.P13100726894076227075

`A091450(n+1)%A140679(A008292(3*n+1))`
-/

namespace A091452.P13100726894076227075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091450 (n + 1)) (A140679 (A008292 (3 * n + 1)).toNat)

end

end A091452.P13100726894076227075

/-!
# A091453: Triangular array T(n,k) read by rows in which row n consists of the numbers floor(2n/k), k=1,2,...,2n+1.

The programs for A091453, the canonical program `A091453.P13154820347663244878` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091453 has offset 0).

The definition of A091453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091453.P14002880606694483772

`ceil(1/(sqrt(n)+1-ceil(sqrt(n))))-1`
-/

namespace A091453.P14002880606694483772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (Real.sqrt (n : ℝ) + (1 - ⌈Real.sqrt (n : ℝ)⌉ : ℝ))⌉ - 1

end

end A091453.P14002880606694483772

namespace A091453

/-- `ceil(1/(sqrt(n)+1-ceil(sqrt(n))))-1` -/
def P14002880606694483772.Spec : Prop :=
  ∀ n, P14002880606694483772.a n = A091453 n

end A091453

/-! ## A091453.P13154820347663244878

`ceil(A068527(n)/A028310(A053186(n)))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A091453

/-- `ceil(A068527(n)/A028310(A053186(n)))` -/
def P13154820347663244878.Spec : Prop :=
  ∀ n, P13154820347663244878.a n = A091453 n

theorem P13154820347663244878.correct : P13154820347663244878.Spec := by
  intro n
  simp only [A091453]

end A091453

/-! ## A091453.P7624935277000094438

`ceil(A068527(n)/A071797(A028310(n)))`
-/

namespace A091453.P7624935277000094438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068527 n : ℚ) / (A071797 (A028310 n).toNat : ℚ)⌉

end

end A091453.P7624935277000094438

namespace A091453

/-- `ceil(A068527(n)/A071797(A028310(n)))` -/
def P7624935277000094438.Spec : Prop :=
  ∀ n, P7624935277000094438.a n = A091453 n

end A091453

/-! ## A091453.P10557271732469497080

`ceil(A068527(n)/A080883(A020703(n+1)))`
-/

namespace A091453.P10557271732469497080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068527 n : ℚ) / (A080883 (A020703 (n + 1)).toNat : ℚ)⌉

end

end A091453.P10557271732469497080

namespace A091453

/-- `ceil(A068527(n)/A080883(A020703(n+1)))` -/
def P10557271732469497080.Spec : Prop :=
  ∀ n, P10557271732469497080.a n = A091453 n

end A091453

/-! ## A091453.P5691909820750135245

`Δ[A347520(n)]!*A276689(n)`
-/

namespace A091453.P5691909820750135245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) * A276689 n

end

end A091453.P5691909820750135245

namespace A091453

/-- `Δ[A347520(n)]!*A276689(n)` -/
def P5691909820750135245.Spec : Prop :=
  ∀ n, P5691909820750135245.a n = A091453 n

end A091453

/-!
# A091454: Integers k such that 3*phi(k) < k.

The programs for A091454, the canonical program `A091454.P11422470773491775725` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091454 has offset 1).

The definition of A091454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8432 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091454.P11422470773491775725

`lt[3*A000010(n+1), n]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A091454

/-- `lt[3*A000010(n+1), n]+1` -/
def P11422470773491775725.Spec : Prop :=
  ∀ n, (P11422470773491775725.a n : ℤ) = A091454 (n + 1)

theorem P11422470773491775725.correct : P11422470773491775725.Spec := by
  intro n
  simp only [A091454, Nat.add_sub_cancel]

end A091454

/-! ## A091454.P2374979750495066971

`lt[3, n/A000010(n+2)]+2`
-/

namespace A091454.P2374979750495066971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000010 (n + 2) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 2

end

end A091454.P2374979750495066971

namespace A091454

/-- `lt[3, n/A000010(n+2)]+2` -/
def P2374979750495066971.Spec : Prop :=
  ∀ n, (P2374979750495066971.a n : ℤ) = A091454 (n + 1)

end A091454

/-! ## A091454.P11355342340149976549

`lt[n, 3*A082023(n)]`
-/

namespace A091454.P11355342340149976549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A082023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A091454.P11355342340149976549

namespace A091454

/-- `lt[n, 3*A082023(n)]` -/
def P11355342340149976549.Spec : Prop :=
  ∀ n, (P11355342340149976549.a n : ℤ) = A091454 (n + 1)

end A091454

/-! ## A091454.P8795457924063767244

`lt[A189666(A000010(n+1)), n]+1`
-/

namespace A091454.P8795457924063767244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189666 (A000010 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A091454.P8795457924063767244

namespace A091454

/-- `lt[A189666(A000010(n+1)), n]+1` -/
def P8795457924063767244.Spec : Prop :=
  ∀ n, (P8795457924063767244.a n : ℤ) = A091454 (n + 1)

end A091454

/-! ## A091454.P7143958685295621050

`lt[A168329(A000010(n+1)+1)-1, n]+1`
-/

namespace A091454.P7143958685295621050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168329 (A000010 (n + 1) + 1).toNat - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A091454.P7143958685295621050

namespace A091454

/-- `lt[A168329(A000010(n+1)+1)-1, n]+1` -/
def P7143958685295621050.Spec : Prop :=
  ∀ n, (P7143958685295621050.a n : ℤ) = A091454 (n + 1)

end A091454

/-! ## A091454.P15746620233857957829

`lt[A039649(n+1), n/3]+1`
-/

namespace A091454.P15746620233857957829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A091454.P15746620233857957829

namespace A091454

/-- `lt[A039649(n+1), n/3]+1` -/
def P15746620233857957829.Spec : Prop :=
  ∀ n, (P15746620233857957829.a n : ℤ) = A091454 (n + 1)

end A091454

/-! ## A091454.P5515586996590769409

`lt[A008133(n), A082023(n)²]`
-/

namespace A091454.P5515586996590769409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091454.P5515586996590769409

namespace A091454

/-- `lt[A008133(n), A082023(n)²]` -/
def P5515586996590769409.Spec : Prop :=
  ∀ n, (P5515586996590769409.a n : ℤ) = A091454 (n + 1)

end A091454

/-! ## A091454.P5332897265811825457

`lt[A000010(A028310(n)), n/3]`
-/

namespace A091454.P5332897265811825457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A091454.P5332897265811825457

namespace A091454

/-- `lt[A000010(A028310(n)), n/3]` -/
def P5332897265811825457.Spec : Prop :=
  ∀ n, (P5332897265811825457.a n : ℤ) = A091454 (n + 1)

end A091454

/-! ## A091454.P16338352049897309780

`lt[A000010(n+1), A002264(n)]+1`
-/

namespace A091454.P16338352049897309780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091454.P16338352049897309780

namespace A091454

/-- `lt[A000010(n+1), A002264(n)]+1` -/
def P16338352049897309780.Spec : Prop :=
  ∀ n, (P16338352049897309780.a n : ℤ) = A091454 (n + 1)

end A091454

/-! ## A091454.P17729766435900412893

`lt[A000010(n+1), A008611(n)]+1`
-/

namespace A091454.P17729766435900412893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091454.P17729766435900412893

namespace A091454

/-- `lt[A000010(n+1), A008611(n)]+1` -/
def P17729766435900412893.Spec : Prop :=
  ∀ n, (P17729766435900412893.a n : ℤ) = A091454 (n + 1)

end A091454

/-! ## A091454.P2444853151559159497

`lt[A000010(n+1), A008620(n)]+1`
-/

namespace A091454.P2444853151559159497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091454.P2444853151559159497

namespace A091454

/-- `lt[A000010(n+1), A008620(n)]+1` -/
def P2444853151559159497.Spec : Prop :=
  ∀ n, (P2444853151559159497.a n : ℤ) = A091454 (n + 1)

end A091454

/-! ## A091454.P628280605160901983

`lt[A006370(A039649(n+1)), n]+1`
-/

namespace A091454.P628280605160901983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A039649 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A091454.P628280605160901983

namespace A091454

/-- `lt[A006370(A039649(n+1)), n]+1` -/
def P628280605160901983.Spec : Prop :=
  ∀ n, (P628280605160901983.a n : ℤ) = A091454 (n + 1)

end A091454

/-! ## A091454.P17489063889332650435

`lt[A004396(n), A219428(n+1)]+1`
-/

namespace A091454.P17489063889332650435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091454.P17489063889332650435

namespace A091454

/-- `lt[A004396(n), A219428(n+1)]+1` -/
def P17489063889332650435.Spec : Prop :=
  ∀ n, (P17489063889332650435.a n : ℤ) = A091454 (n + 1)

end A091454

/-! ## A091454.P10826086139880224848

`lt[A039649(A028310(n)), A008620(n)]`
-/

namespace A091454.P10826086139880224848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091454.P10826086139880224848

namespace A091454

/-- `lt[A039649(A028310(n)), A008620(n)]` -/
def P10826086139880224848.Spec : Prop :=
  ∀ n, (P10826086139880224848.a n : ℤ) = A091454 (n + 1)

end A091454

/-! ## A091454.P4513818970559316212

`A020725(lt[A000010(n+1), A008620(n)])`
-/

namespace A091454.P4513818970559316212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A091454.P4513818970559316212

namespace A091454

/-- `A020725(lt[A000010(n+1), A008620(n)])` -/
def P4513818970559316212.Spec : Prop :=
  ∀ n, P4513818970559316212.a n = A091454 (n + 1)

end A091454

/-! ## A091454.P12161040427091215796

`lt[A039649(A233583(n+1)), A008620(n)]`
-/

namespace A091454.P12161040427091215796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091454.P12161040427091215796

namespace A091454

/-- `lt[A039649(A233583(n+1)), A008620(n)]` -/
def P12161040427091215796.Spec : Prop :=
  ∀ n, (P12161040427091215796.a n : ℤ) = A091454 (n + 1)

end A091454

/-! ## A091454.P3893872540885647049

`6*lt[gcd(n, 6^n), n]`
-/

namespace A091454.P3893872540885647049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (6 ^ n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091454.P3893872540885647049

namespace A091454

/-- `6*lt[gcd(n, 6^n), n]` -/
def P3893872540885647049.Spec : Prop :=
  ∀ n, (P3893872540885647049.a n : ℤ) = A091454 (n + 1)

end A091454

/-!
# A091455: Integers n such that 3*phi(n) < n that are not multiples of smaller integers with this property.

The programs for A091455, there is no canonical definition to state claims against.
-/

/-! ## A091455.P9777104864608737850

`filter[A087248(n+1), A373585(#)]`
-/

namespace A091455.P9777104864608737850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A091455.P9777104864608737850

/-! ## A091455.P11465001955499773174

`filter[A389463(n+1), A373585(#)]`
-/

namespace A091455.P11465001955499773174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A091455.P11465001955499773174

/-! ## A091455.P15283210314057760241

`filter[A392009(n+1), A373585(#)]`
-/

namespace A091455.P15283210314057760241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A091455.P15283210314057760241

/-! ## A091455.P16551895013700851178

`record[6*A347619(n+5)]`
-/

namespace A091455.P16551895013700851178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A347619 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091455.P16551895013700851178

/-! ## A091455.P14403247615851717341

`record[6*A136096(2*n+5)]`
-/

namespace A091455.P14403247615851717341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A136096 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091455.P14403247615851717341

/-!
# A091456: Least number k such that n * phi(k) < k, where phi is Euler's totient function.

The programs for A091456, there is no canonical definition to state claims against.
-/

/-! ## A091456.P2553517107700828502

`A002110(A005579(n+1))`
-/

namespace A091456.P2553517107700828502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A005579 (n + 1)).toNat

end

end A091456.P2553517107700828502

/-! ## A091456.P11837396467520794218

`lcm(2, A073087(n+1))`
-/

namespace A091456.P11837396467520794218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A073087 (n + 1))

end

end A091456.P11837396467520794218

/-! ## A091456.P9306464871108525473

`A002110(A256969(n+1))`
-/

namespace A091456.P9306464871108525473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A256969 (n + 1)).toNat

end

end A091456.P9306464871108525473

/-! ## A091456.P17760439477814503687

`A034386(A061556(n+1)+1)`
-/

namespace A091456.P17760439477814503687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A061556 (n + 1) + 1).toNat

end

end A091456.P17760439477814503687

/-! ## A091456.P4413162051314411812

`A002110(A202278(n+1)+1)`
-/

namespace A091456.P4413162051314411812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A202278 (n + 1) + 1).toNat

end

end A091456.P4413162051314411812

/-!
# A091458: Denominators corresponding to A091457.

The programs for A091458, there is no canonical definition to state claims against.
-/

/-! ## A091458.P17968382975567418319

`∏[A082006(2^n)]`
-/

namespace A091458.P17968382975567418319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082006 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A091458.P17968382975567418319

/-!
# A091459: Numbers n such that n-1, n and n+1 can be expressed as a sum of 2 squares in at least 2 ways.

The programs for A091459, there is no canonical definition to state claims against.
-/

/-! ## A091459.P8018744040155285243

`∩[A333443(n+1)+1, A333443(n+1)]`
-/

namespace A091459.P8018744040155285243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333443 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091459.P8018744040155285243

/-!
# A091460: Greatest size of an arithmetic progression contained as substrings in binary representation of n.

The programs for A091460, there is no canonical definition to state claims against.
-/

/-! ## A091460.P2252952245604200134

`A261461(n-A048298(A181497(n)))`
-/

namespace A091460.P2252952245604200134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 ((n : ℤ) - A048298 (A181497 n).toNat).toNat

end

end A091460.P2252952245604200134

/-! ## A091460.P10909519476483601774

`A261461(n-A209229(A062708(n)))`
-/

namespace A091460.P10909519476483601774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 ((n : ℤ) - A209229 (A062708 n).toNat).toNat

end

end A091460.P10909519476483601774

/-! ## A091460.P16446269923993560837

`A261461(n-A209229(A062728(n)))`
-/

namespace A091460.P16446269923993560837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 ((n : ℤ) - A209229 (A062728 n).toNat).toNat

end

end A091460.P16446269923993560837

/-! ## A091460.P2464588404776703553

`gcd(A048298(A181497(n)), A261461(n))`
-/

namespace A091460.P2464588404776703553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048298 (A181497 n).toNat) (A261461 n)

end

end A091460.P2464588404776703553

/-! ## A091460.P15379639631428264273

`A261461(n*A275730(A000124(n)))`
-/

namespace A091460.P15379639631428264273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 ((n : ℤ) * A275730 (A000124 n).toNat).toNat

end

end A091460.P15379639631428264273

/-! ## A091460.P3666969427725673527

`A261461(n)^A275730(A000124(n))`
-/

namespace A091460.P3666969427725673527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261461 n : ℚ) ^ (A275730 (A000124 n).toNat : ℤ)

end

end A091460.P3666969427725673527

/-! ## A091460.P17380924566803903889

`A261461(n)-A147612(A054825(n+1))`
-/

namespace A091460.P17380924566803903889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 n - A147612 (A054825 (n + 1)).toNat

end

end A091460.P17380924566803903889

/-! ## A091460.P11873219614925678031

`A261461(n)/A000005(A093178(A065958(n+1)))`
-/

namespace A091460.P11873219614925678031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261461 n : ℚ) / (A000005 (A093178 (A065958 (n + 1)).toNat).toNat : ℚ)

end

end A091460.P11873219614925678031

/-! ## A091460.P15424109112768214282

`A261461(n)-A033683(A006918(n))`
-/

namespace A091460.P15424109112768214282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 n - A033683 (A006918 n).toNat

end

end A091460.P15424109112768214282

/-! ## A091460.P11657230406642466668

`A261461(n-A101264(A001107(n)))`
-/

namespace A091460.P11657230406642466668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 ((n : ℤ) - A101264 (A001107 n).toNat).toNat

end

end A091460.P11657230406642466668

/-! ## A091460.P8988868328394775439

`A261461(n)-A007814(A100287(n+1))`
-/

namespace A091460.P8988868328394775439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 n - A007814 (A100287 (n + 1)).toNat

end

end A091460.P8988868328394775439

/-! ## A091460.P2678582710615673492

`A261461(n)/A001511(A018800(n+1))`
-/

namespace A091460.P2678582710615673492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261461 n : ℚ) / (A001511 (A018800 (n + 1)).toNat : ℚ)

end

end A091460.P2678582710615673492

/-! ## A091460.P14596026694317951227

`A261461(n)/A001511(A068164(n+1))`
-/

namespace A091460.P14596026694317951227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261461 n : ℚ) / (A001511 (A068164 (n + 1)).toNat : ℚ)

end

end A091460.P14596026694317951227

/-! ## A091460.P15923889905453249095

`A261461(n)-A036987(A136162(n+1))`
-/

namespace A091460.P15923889905453249095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 n - A036987 (A136162 (n + 1)).toNat

end

end A091460.P15923889905453249095

/-! ## A091460.P9194871142351396035

`A261461(n)-A084928(A261461(n²))`
-/

namespace A091460.P9194871142351396035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 n - A084928 (A261461 (n ^ 2)).toNat

end

end A091460.P9194871142351396035

/-! ## A091460.P4614966293158507860

`A261461(n*A267442(n²))`
-/

namespace A091460.P4614966293158507860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 ((n : ℤ) * A267442 (n ^ 2)).toNat

end

end A091460.P4614966293158507860

/-!
# A091462: a(n) is the smallest j such that 1/3 + 1/6 + 1/9 + ... + 1/j exceeds n.

The programs for A091462, the canonical program `A091462.P5675951581171116121` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091462 has offset 0).

The definition of A091462 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002387, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A091462.P5675951581171116121

`3*A002387(3*n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A091462

/-- `3*A002387(3*n)` -/
def P5675951581171116121.Spec : Prop :=
  ∀ n, P5675951581171116121.a n = A091462 n

theorem P5675951581171116121.correct : P5675951581171116121.Spec := by
  intro n
  simp only [A091462]

end A091462

/-! ## A091462.P335347163138731336

`3*A004080(A008486(n))`
-/

namespace A091462.P335347163138731336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004080 (A008486 n).toNat

end

end A091462.P335347163138731336

namespace A091462

/-- `3*A004080(A008486(n))` -/
def P335347163138731336.Spec : Prop :=
  ∀ n, P335347163138731336.a n = A091462 n

end A091462

/-!
# A091465: Smallest prime with digit product 6^n.

The programs for A091465, there is no canonical definition to state claims against.
-/

/-! ## A091465.P16818557163232881866

`A016112(6^n)`
-/

namespace A091465.P16818557163232881866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016112 (6 ^ n)

end

end A091465.P16818557163232881866

/-! ## A091465.P2009936893656002115

`p?[A016112(A000400(n))]`
-/

namespace A091465.P2009936893656002115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016112 (A000400 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091465.P2009936893656002115

/-!
# A091466: Table (by antidiagonals) of labeled alternating octopuses with n black nodes and k white nodes. Each type of object labeled from its own label set.

The programs for A091466, there is no canonical definition to state claims against.
-/

/-! ## A091466.P14236523256725524587

`A008441(A094688(n))*A197098(n+1)`
-/

namespace A091466.P14236523256725524587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (A094688 n).toNat * A197098 (n + 1)

end

end A091466.P14236523256725524587

/-!
# A091467: Table (by antidiagonals) of unlabeled alternating octopuses with n black nodes and k white nodes.

The programs for A091467, there is no canonical definition to state claims against.
-/

/-! ## A091467.P6521937745014378190

`A339742(A038253(n))`
-/

namespace A091467.P6521937745014378190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339742 (A038253 n).toNat

end

end A091467.P6521937745014378190

/-! ## A091467.P5106574803313346718

`A339742(A038271(n))`
-/

namespace A091467.P5106574803313346718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339742 (A038271 n).toNat

end

end A091467.P5106574803313346718

/-! ## A091467.P9849583920099502512

`A339742(A038277(n))`
-/

namespace A091467.P9849583920099502512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339742 (A038277 n).toNat

end

end A091467.P9849583920099502512

/-! ## A091467.P8627696836984549390

`A339742(A038319(n))`
-/

namespace A091467.P8627696836984549390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339742 (A038319 n).toNat

end

end A091467.P8627696836984549390

/-! ## A091467.P1778613617672022632

`A339742(A038321(n))`
-/

namespace A091467.P1778613617672022632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339742 (A038321 n).toNat

end

end A091467.P1778613617672022632

/-!
# A091468: Number of unlabeled alternating octopuses with n black nodes and n white nodes.

The programs for A091468, there is no canonical definition to state claims against.
-/

/-! ## A091468.P2612902444557391860

`3*A003239(n+1)-2`
-/

namespace A091468.P2612902444557391860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003239 (n + 1) - 2

end

end A091468.P2612902444557391860

/-! ## A091468.P7311210085954533124

`3/2*A123611(n+1)-2`
-/

namespace A091468.P7311210085954533124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A123611 (n + 1) : ℚ) - 2

end

end A091468.P7311210085954533124

/-! ## A091468.P4777099648041047893

`A003239(n+1)+A123611(n+1)-2`
-/

namespace A091468.P4777099648041047893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 (n + 1) + (A123611 (n + 1) - 2)

end

end A091468.P4777099648041047893

/-! ## A091468.P17695933464116149525

`∑[A008486(Δ[A003239(n)])]`
-/

namespace A091468.P17695933464116149525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091468.P17695933464116149525

/-! ## A091468.P13790738116643983702

`A016777(A003239(n+1)-1)`
-/

namespace A091468.P13790738116643983702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A003239 (n + 1) - 1).toNat

end

end A091468.P13790738116643983702

/-!
# A091469: Number of unlabeled alternating octopuses with n black nodes.

The programs for A091469, there is no canonical definition to state claims against.
-/

/-! ## A091469.P5035880377724422032

`A237055(C(n+4, 5)+1)-∏{p}[n+1, -#]`
-/

namespace A091469.P5035880377724422032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237055 (Nat.choose (n + 4) 5 + 1) - ∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))

end

end A091469.P5035880377724422032

/-!
# A091479: Number of graphs with n nodes. Nodes and edges labeled each from their own label set.

The programs for A091479, there is no canonical definition to state claims against.
-/

/-! ## A091479.P7807052189355348662

`A000522(C(n, 2))`
-/

namespace A091479.P7807052189355348662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (Nat.choose n 2)

end

end A091479.P7807052189355348662

/-! ## A091479.P14907906885537090832

`A000522(∑[n]-n)`
-/

namespace A091479.P14907906885537090832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A091479.P14907906885537090832

/-! ## A091479.P888254208449757591

`A007526(C(n, 2))+1`
-/

namespace A091479.P888254208449757591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 (Nat.choose n 2) + 1

end

end A091479.P888254208449757591

/-! ## A091479.P695870829405287914

`A243014(C(n, 2))+C(n, 2)`
-/

namespace A091479.P695870829405287914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243014 (Nat.choose n 2) + (Nat.choose n 2 : ℤ)

end

end A091479.P695870829405287914

/-! ## A091479.P7889265338906204887

`A007526(A161680(n))+1`
-/

namespace A091479.P7889265338906204887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 (A161680 n).toNat + 1

end

end A091479.P7889265338906204887

/-!
# A091480: Table of multigraphs (by antidiagonals) with n (>=1) nodes and k (>=0) edges. Each type of object labeled from its own label set.

The programs for A091480, there is no canonical definition to state claims against.
-/

/-! ## A091480.P15826070994465097222

`C(1-C(∑[char[∑[n]]], 2)+n, 2)^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A091480.P15826070994465097222
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
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat 2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A091480.P15826070994465097222

/-! ## A091480.P4391060010772536537

`A112367(n)^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A091480.P4391060010772536537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112367 n : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A091480.P4391060010772536537

/-! ## A091480.P13473435601227130588

`C(1-C(∑[char[∑[n]]], 2)+n, 2)^A025581(n)`
-/

namespace A091480.P13473435601227130588
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat 2 : ℚ) ^ (A025581 n : ℤ)

end

end A091480.P13473435601227130588

/-! ## A091480.P14860258162940418353

`C(1-C(∑[char[∑[n]]], 2)+n, 2)^log2(A130321(n))`
-/

namespace A091480.P14860258162940418353
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat 2 : ℝ) ^ (Real.logb 2 (A130321 n : ℝ))

end

end A091480.P14860258162940418353

/-! ## A091480.P9434792842719268887

`A000217(n-C(∑[char[∑[n]]], 2))^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A091480.P9434792842719268887
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
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A091480.P9434792842719268887

/-! ## A091480.P13408646416495738991

`A338334(1-C(∑[char[∑[n]]], 2)+n)^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A091480.P13408646416495738991
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
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338334 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A091480.P13408646416495738991

/-! ## A091480.P3021321137106933814

`A347129(2^(n-C(∑[char[∑[n]]], 2)))^(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A091480.P3021321137106933814
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
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347129 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A091480.P3021321137106933814

/-! ## A091480.P17463518567406849809

`C(1-C(∑[char[∑[n]]], 2)+n, 2)^A023751(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A091480.P17463518567406849809
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
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat 2 : ℚ) ^ (A023751 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℤ)

end

end A091480.P17463518567406849809

/-! ## A091480.P17261443939142005919

`C(1-C(∑[char[∑[n]]], 2)+n, 2)^A023753(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A091480.P17261443939142005919
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
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat 2 : ℚ) ^ (A023753 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℤ)

end

end A091480.P17261443939142005919

/-! ## A091480.P15685513754271140394

`C(1-C(∑[char[∑[n]]], 2)+n, 2)^A335469(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A091480.P15685513754271140394
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
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat 2 : ℚ) ^ (A335469 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℤ)

end

end A091480.P15685513754271140394

/-!
# A091481: Number of labeled rooted 2,3 cacti (triangular cacti with bridges).

The programs for A091481, there is no canonical definition to state claims against.
-/

/-! ## A091481.P12742199282670429698

`(n+1)*A091485(n+1)`
-/

namespace A091481.P12742199282670429698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A091485 (n + 1)

end

end A091481.P12742199282670429698

/-! ## A091481.P9305598308112519632

`record[A091485(A134478(n))*A134478(n)]`
-/

namespace A091481.P9305598308112519632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091485 (A134478 n).toNat * A134478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091481.P9305598308112519632

/-! ## A091481.P8729552574709560289

`A091485(A158416(2*n))*A158416(2*n)`
-/

namespace A091481.P8729552574709560289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091485 (A158416 (2 * n)).toNat * A158416 (2 * n)

end

end A091481.P8729552574709560289

/-!
# A091482: a(n) = (3*n)^n.

The programs for A091482, the canonical program `A091482.P18152781613983179629` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091482 has offset 0).

The definition of A091482 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3*n)^n` (program `A091482.P18152781613983179629`, by `A091482.P18152781613983179629.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091482.P18152781613983179629

`(3*n)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A091482

/-- `(3*n)^n` -/
def P18152781613983179629.Spec : Prop :=
  ∀ n, (P18152781613983179629.a n : ℤ) = A091482 n

theorem P18152781613983179629.correct : P18152781613983179629.Spec := by
  intro n
  simp only [A091482]

end A091482

/-!
# A091483: a(n) = (4*n)^n.

The programs for A091483, the canonical program `A091483.P16704277403764483661` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091483 has offset 0).

The definition of A091483 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n)^n` (program `A091483.P16704277403764483661`, by `A091483.P16704277403764483661.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091483.P16704277403764483661

`(4*n)^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A091483

/-- `(4*n)^n` -/
def P16704277403764483661.Spec : Prop :=
  ∀ n, (P16704277403764483661.a n : ℤ) = A091483 n

theorem P16704277403764483661.correct : P16704277403764483661.Spec := by
  intro n
  simp only [A091483]

end A091483

/-!
# A091485: Number of labeled 2,3 cacti (triangular cacti with bridges).

The programs for A091485, there is no canonical definition to state claims against.
-/

/-! ## A091485.P4836458966121756367

`A091481(n+1)/(n+1)`
-/

namespace A091485.P4836458966121756367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091481 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A091485.P4836458966121756367

/-!
# A091486: Number of unlabeled rooted 2,3 cacti (triangular cacti with bridges).

The programs for A091486, there is no canonical definition to state claims against.
-/

/-! ## A091486.P15241705459597489924

`A247983(A025235(n)+A008642(n))`
-/

namespace A091486.P15241705459597489924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (A025235 n + A008642 n).toNat

end

end A091486.P15241705459597489924

/-! ## A091486.P4474069512176177167

`A025235(n)-A334739(A158616(n+1))`
-/

namespace A091486.P4474069512176177167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025235 n - A334739 (A158616 (n + 1)).toNat

end

end A091486.P4474069512176177167

/-! ## A091486.P9475010629629640782

`A024417(A150082(n))`
-/

namespace A091486.P9475010629629640782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A150082 n).toNat

end

end A091486.P9475010629629640782

/-!
# A091487: Number of unlabeled 2,3 cacti (triangular cacti with bridges).

The programs for A091487, there is no canonical definition to state claims against.
-/

/-! ## A091487.P15356298114488483215

`A239561(n)+A054404(A089844(n))`
-/

namespace A091487.P15356298114488483215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239561 n + A054404 (A089844 n).toNat

end

end A091487.P15356298114488483215

/-! ## A091487.P14465838235416955152

`A023193(or(A025235(n), A045905(n)))`
-/

namespace A091487.P14465838235416955152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.lor (A025235 n) (A045905 n)).toNat

end

end A091487.P14465838235416955152

/-! ## A091487.P17855275033955087732

`A166155(A205484(n))`
-/

namespace A091487.P17855275033955087732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166155 (A205484 n).toNat

end

end A091487.P17855275033955087732

/-! ## A091487.P11560619429535428403

`A031980(A002024(n!))`
-/

namespace A091487.P11560619429535428403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031980 (A002024 (Nat.factorial n)).toNat

end

end A091487.P11560619429535428403

/-!
# A091488: Number of asymmetric rooted 2,3 cacti (triangular cacti with bridges).

The programs for A091488, there is no canonical definition to state claims against.
-/

/-! ## A091488.P6445169224193628215

`A001462(A032346(n))-A004526(n)`
-/

namespace A091488.P6445169224193628215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A032346 n).toNat - A004526 n

end

end A091488.P6445169224193628215

/-! ## A091488.P653999873310432681

`A008679(2*A064216(n+1)+A018039(n))`
-/

namespace A091488.P653999873310432681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (2 * A064216 (n + 1) + A018039 n).toNat

end

end A091488.P653999873310432681

/-! ## A091488.P10764870602320751792

`A008679(A322030(2*(n+1))+A018039(n))`
-/

namespace A091488.P10764870602320751792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A322030 (2 * (n + 1)) + A018039 n).toNat

end

end A091488.P10764870602320751792

/-! ## A091488.P4131604284778798403

`round(sqrt(A322030(n!)))`
-/

namespace A091488.P4131604284778798403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A322030 (Nat.factorial n) : ℝ))

end

end A091488.P4131604284778798403

/-!
# A091489: Number of asymmetric 2,3 cacti (triangular cacti with bridges).

The programs for A091489, there is no canonical definition to state claims against.
-/

/-! ## A091489.P7137787931815213820

`floor(A349413(n)/Δ[n²])`
-/

namespace A091489.P7137787931815213820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A349413 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)⌋

end

end A091489.P7137787931815213820

/-! ## A091489.P1777244477954187766

`A130574(A035080(n+1))`
-/

namespace A091489.P1777244477954187766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130574 (A035080 (n + 1)).toNat

end

end A091489.P1777244477954187766

/-! ## A091489.P6824424699355415594

`floor(A066951(n+1)/A222947(n))`
-/

namespace A091489.P6824424699355415594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066951 (n + 1) : ℚ) / (A222947 n : ℚ)⌋

end

end A091489.P6824424699355415594

/-! ## A091489.P14307038836673387988

`or(A000196(A260657(n)), A209402(n))`
-/

namespace A091489.P14307038836673387988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000196 (A260657 n).toNat) (A209402 n)

end

end A091489.P14307038836673387988

/-! ## A091489.P17276127833854723934

`floor(A148283(A087051(n))/A315008(n))`
-/

namespace A091489.P17276127833854723934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A148283 (A087051 n).toNat : ℚ) / (A315008 n : ℚ)⌋

end

end A091489.P17276127833854723934

/-!
# A091490: Primes p such that all prime divisors of p^2 + p + 1 are less than p.

The programs for A091490, the canonical program `A091490.P4404189129954504713` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091490 has offset 1).

The definition of A091490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1089 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091490.P4404189129954504713

`p?[A081258(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A091490

/-- `p?[A081258(n+1)]` -/
def P4404189129954504713.Spec : Prop :=
  ∀ n, P4404189129954504713.a n = A091490 (n + 1)

theorem P4404189129954504713.correct : P4404189129954504713.Spec := by
  intro n
  simp only [A091490, Nat.add_sub_cancel]

end A091490

/-! ## A091490.P1459267398483338627

`p?[record[A081258(A324347(n))]]`
-/

namespace A091490.P1459267398483338627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091490.P1459267398483338627

namespace A091490

/-- `p?[record[A081258(A324347(n))]]` -/
def P1459267398483338627.Spec : Prop :=
  ∀ n, P1459267398483338627.a n = A091490 (n + 1)

end A091490

/-! ## A091490.P3152491533489232038

`p?[record[A081258(A328399(n))]]`
-/

namespace A091490.P3152491533489232038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091490.P3152491533489232038

namespace A091490

/-- `p?[record[A081258(A328399(n))]]` -/
def P3152491533489232038.Spec : Prop :=
  ∀ n, P3152491533489232038.a n = A091490 (n + 1)

end A091490

/-! ## A091490.P8271708012380694284

`filter[A081258(n+1), A010051(#)]`
-/

namespace A091490.P8271708012380694284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A091490.P8271708012380694284

namespace A091490

/-- `filter[A081258(n+1), A010051(#)]` -/
def P8271708012380694284.Spec : Prop :=
  ∀ n, P8271708012380694284.a n = A091490 (n + 1)

end A091490

/-! ## A091490.P8929559427851324004

`filter[A081258(n+1), A323152(#)]`
-/

namespace A091490.P8929559427851324004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A091490.P8929559427851324004

namespace A091490

/-- `filter[A081258(n+1), A323152(#)]` -/
def P8929559427851324004.Spec : Prop :=
  ∀ n, P8929559427851324004.a n = A091490 (n + 1)

end A091490

/-! ## A091490.P10020534562864779996

`filter[A081258(n+1), A323153(#)]`
-/

namespace A091490.P10020534562864779996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A091490.P10020534562864779996

namespace A091490

/-- `filter[A081258(n+1), A323153(#)]` -/
def P10020534562864779996.Spec : Prop :=
  ∀ n, P10020534562864779996.a n = A091490 (n + 1)

end A091490

/-! ## A091490.P9092672793421162093

`∩[A000040(n+1), A081258(n+1)]`
-/

namespace A091490.P9092672793421162093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091490.P9092672793421162093

namespace A091490

/-- `∩[A000040(n+1), A081258(n+1)]` -/
def P9092672793421162093.Spec : Prop :=
  ∀ n, (P9092672793421162093.a n : ℤ) = A091490 (n + 1)

end A091490

/-! ## A091490.P15596352599019619594

`∩[A004139(n+1), A081258(n+1)]`
-/

namespace A091490.P15596352599019619594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091490.P15596352599019619594

namespace A091490

/-- `∩[A004139(n+1), A081258(n+1)]` -/
def P15596352599019619594.Spec : Prop :=
  ∀ n, (P15596352599019619594.a n : ℤ) = A091490 (n + 1)

end A091490

/-! ## A091490.P10810617407078897427

`∩[A006005(n+1), A081258(n+1)]`
-/

namespace A091490.P10810617407078897427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091490.P10810617407078897427

namespace A091490

/-- `∩[A006005(n+1), A081258(n+1)]` -/
def P10810617407078897427.Spec : Prop :=
  ∀ n, (P10810617407078897427.a n : ℤ) = A091490 (n + 1)

end A091490

/-! ## A091490.P8486901922409805938

`∩[A008578(n+1), A081258(n+1)]`
-/

namespace A091490.P8486901922409805938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091490.P8486901922409805938

namespace A091490

/-- `∩[A008578(n+1), A081258(n+1)]` -/
def P8486901922409805938.Spec : Prop :=
  ∀ n, (P8486901922409805938.a n : ℤ) = A091490 (n + 1)

end A091490

/-! ## A091490.P5396699494658293407

`∩[A045319(n+1), A081258(n+1)]`
-/

namespace A091490.P5396699494658293407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091490.P5396699494658293407

namespace A091490

/-- `∩[A045319(n+1), A081258(n+1)]` -/
def P5396699494658293407.Spec : Prop :=
  ∀ n, (P5396699494658293407.a n : ℤ) = A091490 (n + 1)

end A091490

/-! ## A091490.P7925216476572666445

`∩[A045344(n+1), A081258(n+1)]`
-/

namespace A091490.P7925216476572666445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091490.P7925216476572666445

namespace A091490

/-- `∩[A045344(n+1), A081258(n+1)]` -/
def P7925216476572666445.Spec : Prop :=
  ∀ n, (P7925216476572666445.a n : ℤ) = A091490 (n + 1)

end A091490

/-! ## A091490.P4114436362607845706

`∩[A046022(n+1), A081258(n+1)]`
-/

namespace A091490.P4114436362607845706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091490.P4114436362607845706

namespace A091490

/-- `∩[A046022(n+1), A081258(n+1)]` -/
def P4114436362607845706.Spec : Prop :=
  ∀ n, (P4114436362607845706.a n : ℤ) = A091490 (n + 1)

end A091490

/-! ## A091490.P1191016135023265661

`∩[A053813(n+1), A081258(n+1)]`
-/

namespace A091490.P1191016135023265661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091490.P1191016135023265661

namespace A091490

/-- `∩[A053813(n+1), A081258(n+1)]` -/
def P1191016135023265661.Spec : Prop :=
  ∀ n, (P1191016135023265661.a n : ℤ) = A091490 (n + 1)

end A091490

/-! ## A091490.P133152245178618035

`∩[A065091(n+1), A081258(n+1)]`
-/

namespace A091490.P133152245178618035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091490.P133152245178618035

namespace A091490

/-- `∩[A065091(n+1), A081258(n+1)]` -/
def P133152245178618035.Spec : Prop :=
  ∀ n, (P133152245178618035.a n : ℤ) = A091490 (n + 1)

end A091490

/-! ## A091490.P16358575110767932590

`∩[A066050(n+1), A081258(n+1)]`
-/

namespace A091490.P16358575110767932590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091490.P16358575110767932590

namespace A091490

/-- `∩[A066050(n+1), A081258(n+1)]` -/
def P16358575110767932590.Spec : Prop :=
  ∀ n, (P16358575110767932590.a n : ℤ) = A091490 (n + 1)

end A091490

/-! ## A091490.P17068727105865890311

`∩[A067126(n+1), A081258(n+1)]`
-/

namespace A091490.P17068727105865890311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091490.P17068727105865890311

namespace A091490

/-- `∩[A067126(n+1), A081258(n+1)]` -/
def P17068727105865890311.Spec : Prop :=
  ∀ n, (P17068727105865890311.a n : ℤ) = A091490 (n + 1)

end A091490

/-! ## A091490.P11244896147872858771

`∩[A071621(n+1), A081258(n+1)]`
-/

namespace A091490.P11244896147872858771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091490.P11244896147872858771

namespace A091490

/-- `∩[A071621(n+1), A081258(n+1)]` -/
def P11244896147872858771.Spec : Prop :=
  ∀ n, (P11244896147872858771.a n : ℤ) = A091490 (n + 1)

end A091490

/-! ## A091490.P9773989374428659585

`∩[A138837(n+1), A081258(n+1)]`
-/

namespace A091490.P9773989374428659585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091490.P9773989374428659585

namespace A091490

/-- `∩[A138837(n+1), A081258(n+1)]` -/
def P9773989374428659585.Spec : Prop :=
  ∀ n, (P9773989374428659585.a n : ℤ) = A091490 (n + 1)

end A091490

/-! ## A091490.P14200616095313717578

`∩[A081258(n+1), A161346(n+1)]`
-/

namespace A091490.P14200616095313717578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091490.P14200616095313717578

namespace A091490

/-- `∩[A081258(n+1), A161346(n+1)]` -/
def P14200616095313717578.Spec : Prop :=
  ∀ n, (P14200616095313717578.a n : ℤ) = A091490 (n + 1)

end A091490

/-!
# A091491: Triangle, read by rows, where the n-th diagonal is generated from the n-th row by the sum of the products of the n-th row terms with binomial coefficients.

The programs for A091491, there is no canonical definition to state claims against.
-/

/-! ## A091491.P400397341926796262

`A096465(A061579(n))`
-/

namespace A091491.P400397341926796262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A061579 n).toNat

end

end A091491.P400397341926796262

/-! ## A091491.P12418785544661897619

`A096465(A038722(n+2))`
-/

namespace A091491.P12418785544661897619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A038722 (n + 2)).toNat

end

end A091491.P12418785544661897619

/-! ## A091491.P16570049573718094595

`A096465(A114327(n)+n)`
-/

namespace A091491.P16570049573718094595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096465 (A114327 n + (n : ℤ)).toNat

end

end A091491.P16570049573718094595

/-! ## A091491.P4508839936578857303

`A283054(A056943(n))`
-/

namespace A091491.P4508839936578857303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (A056943 n).toNat

end

end A091491.P4508839936578857303

/-! ## A091491.P18382796967764862846

`A283054(n-2*A002262(n))`
-/

namespace A091491.P18382796967764862846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 ((n : ℤ) - 2 * A002262 n).toNat

end

end A091491.P18382796967764862846

/-! ## A091491.P9761235478488324725

`A283054(2*A057944(n)-n)`
-/

namespace A091491.P9761235478488324725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (2 * A057944 n - (n : ℤ)).toNat

end

end A091491.P9761235478488324725

/-! ## A091491.P722929404953896963

`A283054(A057944(n)+A057944(n)-n)`
-/

namespace A091491.P722929404953896963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (A057944 n + (A057944 n - (n : ℤ))).toNat

end

end A091491.P722929404953896963

/-! ## A091491.P11118489322050004191

`A283054(n-A002262(n)-A002262(n))`
-/

namespace A091491.P11118489322050004191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 ((n : ℤ) - A002262 n - A002262 n).toNat

end

end A091491.P11118489322050004191

/-! ## A091491.P16175013999628791923

`A283054(A057944(n)-(n-A057944(n)))`
-/

namespace A091491.P16175013999628791923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283054 (A057944 n - ((n : ℤ) - A057944 n)).toNat

end

end A091491.P16175013999628791923

/-! ## A091491.P6666001482474084425

`A112307(n+1)/A144328(n+1)`
-/

namespace A091491.P6666001482474084425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112307 (n + 1) : ℚ) / (A144328 (n + 1) : ℚ)

end

end A091491.P6666001482474084425

/-!
# A091492: Triangle, read by rows, generated recursively and related to partitions.

The programs for A091492, there is no canonical definition to state claims against.
-/

/-! ## A091492.P8832590974691890771

`round(A290353(n)/A166018(A113143(n)))`
-/

namespace A091492.P8832590974691890771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A290353 n : ℚ) / (A166018 (A113143 n).toNat : ℚ))

end

end A091492.P8832590974691890771

/-! ## A091492.P8586012170210629006

`round(A290353(n)/A008620(A195644(n+1)))`
-/

namespace A091492.P8586012170210629006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A290353 n : ℚ) / (A008620 (A195644 (n + 1)).toNat : ℚ))

end

end A091492.P8586012170210629006

/-! ## A091492.P13320081786817412617

`A124766(A201701(n))^A333382(n)`
-/

namespace A091492.P13320081786817412617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124766 (A201701 n).toNat : ℚ) ^ (A333382 n : ℤ)

end

end A091492.P13320081786817412617

/-! ## A091492.P584674904660074387

`A028310(A195739(n+1))%4`
-/

namespace A091492.P584674904660074387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A195739 (n + 1)).toNat) 4

end

end A091492.P584674904660074387

/-! ## A091492.P5132736965042976827

`floor(A099053(A335545(n+1))/A335545(n))`
-/

namespace A091492.P5132736965042976827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A099053 (A335545 (n + 1)).toNat : ℚ) / (A335545 n : ℚ)⌋

end

end A091492.P5132736965042976827

/-!
# A091493: Row sums of triangle A091492.

The programs for A091493, there is no canonical definition to state claims against.
-/

/-! ## A091493.P2633756657541616661

`A008619(A003056(∑[A022161(n)]))`
-/

namespace A091493.P2633756657541616661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A091493.P2633756657541616661

/-! ## A091493.P14555431688424375287

`A008620(∑[A077168(A045931(n))])`
-/

namespace A091493.P14555431688424375287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A045931 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A091493.P14555431688424375287

/-! ## A091493.P16700073574388185812

`A083375(A367691(n)+A000009(n))`
-/

namespace A091493.P16700073574388185812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083375 (A367691 n + A000009 n).toNat

end

end A091493.P16700073574388185812

/-! ## A091493.P1714743675240162261

`A391618(A274951(n))`
-/

namespace A091493.P1714743675240162261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391618 (A274951 n).toNat

end

end A091493.P1714743675240162261

/-! ## A091493.P13151609620068670066

`ceil(A000196(A020741(n))/2)`
-/

namespace A091493.P13151609620068670066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000196 (A020741 n).toNat : ℚ) / 2⌉

end

end A091493.P13151609620068670066

/-!
# A091496: a(n) = ((5*n)!/(n!*(2*n)!))*(Gamma(1+n/2)/Gamma(1+5*n/2)).

The programs for A091496, there is no canonical definition to state claims against.
-/

/-! ## A091496.P17714706857869493872

`A091527(n)/A000984(n)*A262732(n)`
-/

namespace A091496.P17714706857869493872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091527 n : ℚ) / (A000984 n : ℚ) * (A262732 n : ℚ)

end

end A091496.P17714706857869493872

/-! ## A091496.P17492945525693919362

`A054335(A062725(n))`
-/

namespace A091496.P17492945525693919362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A062725 n).toNat

end

end A091496.P17492945525693919362

/-! ## A091496.P1127982936219815354

`A205813(A117625(n+1))`
-/

namespace A091496.P1127982936219815354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205813 (A117625 (n + 1)).toNat

end

end A091496.P1127982936219815354

/-! ## A091496.P7111000837240890131

`A054335(A081266(n)+n)`
-/

namespace A091496.P7111000837240890131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A081266 n + (n : ℤ)).toNat

end

end A091496.P7111000837240890131

/-! ## A091496.P9176665011636599671

`A054335(A062728(n)-n)`
-/

namespace A091496.P9176665011636599671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A062728 n - (n : ℤ)).toNat

end

end A091496.P9176665011636599671

/-!
# A091498: The sixth column of triangle A091492, excluding leading zeros.

The programs for A091498, the canonical program `A091498.P8170491020747909582` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091498 has offset 0).

The definition of A091498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091498.P8170491020747909582

`A026812(n)+∑[A008670(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A091498

/-- `A026812(n)+∑[A008670(n)]` -/
def P8170491020747909582.Spec : Prop :=
  ∀ n, P8170491020747909582.a n = A091498 n

theorem P8170491020747909582.correct : P8170491020747909582.Spec := by
  intro n
  simp only [A091498]

end A091498

/-! ## A091498.P15698042027704240133

`A026812(n)+∑[∑[A025828(n)]]`
-/

namespace A091498.P15698042027704240133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025828 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091498.P15698042027704240133

namespace A091498

/-- `A026812(n)+∑[∑[A025828(n)]]` -/
def P15698042027704240133.Spec : Prop :=
  ∀ n, P15698042027704240133.a n = A091498 n

end A091498

/-! ## A091498.P11851471505882437977

`A026812(n+2)+∑[A029039(n)]`
-/

namespace A091498.P11851471505882437977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091498.P11851471505882437977

namespace A091498

/-- `A026812(n+2)+∑[A029039(n)]` -/
def P11851471505882437977.Spec : Prop :=
  ∀ n, P11851471505882437977.a n = A091498 n

end A091498

/-! ## A091498.P13343070472566373823

`A001402(n)+∑[A029270(2*n+1)]`
-/

namespace A091498.P13343070472566373823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029270 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001402 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091498.P13343070472566373823

namespace A091498

/-- `A001402(n)+∑[A029270(2*n+1)]` -/
def P13343070472566373823.Spec : Prop :=
  ∀ n, P13343070472566373823.a n = A091498 n

end A091498

/-! ## A091498.P4378782137883792917

`∑[A037145(n)+A029270(2*n+1)]`
-/

namespace A091498.P4378782137883792917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n + A029270 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091498.P4378782137883792917

namespace A091498

/-- `∑[A037145(n)+A029270(2*n+1)]` -/
def P4378782137883792917.Spec : Prop :=
  ∀ n, P4378782137883792917.a n = A091498 n

end A091498

/-!
# A091499: Triangle read by rows, such that T(n,k) equals the k-th term of the convolution of the two prior rows indexed by (n-k) and (k-1).

The programs for A091499, there is no canonical definition to state claims against.
-/

/-! ## A091499.P14781600455981741259

`A138033(4*A305027(n))`
-/

namespace A091499.P14781600455981741259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138033 (4 * A305027 n).toNat

end

end A091499.P14781600455981741259

/-! ## A091499.P15655931727242329394

`A297770(A305027(n)^3)`
-/

namespace A091499.P15655931727242329394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A305027 n ^ 3).toNat

end

end A091499.P15655931727242329394

/-! ## A091499.P10802610602844911994

`A138033(A263597(n+2)+1)`
-/

namespace A091499.P10802610602844911994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138033 (A263597 (n + 2) + 1).toNat

end

end A091499.P10802610602844911994

/-! ## A091499.P3542293461310260999

`A055642(A179748(n+1)^4)`
-/

namespace A091499.P3542293461310260999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A179748 (n + 1) ^ 4).toNat

end

end A091499.P3542293461310260999

/-! ## A091499.P8885705267465989949

`A055642(A179748(n+1)²²)`
-/

namespace A091499.P8885705267465989949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((A179748 (n + 1) ^ 2) ^ 2).toNat

end

end A091499.P8885705267465989949

