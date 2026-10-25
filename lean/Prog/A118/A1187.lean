import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A118701: Largest prime power that divides the average of twin-prime pairs.

The programs for A118701, there is no canonical definition to state claims against.
-/

/-! ## A118701.P2120280476639599294

`A034699(A014574(n+1))`
-/

namespace A118701.P2120280476639599294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A014574 (n + 1)).toNat

end

end A118701.P2120280476639599294

/-! ## A118701.P13413948336592123216

`A114380(A029707(n+1))`
-/

namespace A118701.P13413948336592123216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114380 (A029707 (n + 1)).toNat

end

end A118701.P13413948336592123216

/-! ## A118701.P3482366924632647385

`A034699(sqrt(A075369(n+1)))`
-/

namespace A118701.P3482366924632647385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway (Real.sqrt (A075369 (n + 1) : ℝ))).toNat

end

end A118701.P3482366924632647385

/-! ## A118701.P12271731651138084567

`A034699(A001359(n+1)+1)`
-/

namespace A118701.P12271731651138084567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A001359 (n + 1) + 1).toNat

end

end A118701.P12271731651138084567

/-! ## A118701.P7386203569437447892

`A034699(A006512(n+1)-1)`
-/

namespace A118701.P7386203569437447892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A006512 (n + 1) - 1).toNat

end

end A118701.P7386203569437447892

/-! ## A118701.P2258681417367349507

`A034699(A144834(n+1)+2)`
-/

namespace A118701.P2258681417367349507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A144834 (n + 1) + 2).toNat

end

end A118701.P2258681417367349507

/-! ## A118701.P527734688260876861

`A034699(2*A040040(n+1))`
-/

namespace A118701.P527734688260876861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (2 * A040040 (n + 1)).toNat

end

end A118701.P527734688260876861

/-! ## A118701.P2400390695861925279

`A034699(xor(1, A006512(n+1)))`
-/

namespace A118701.P2400390695861925279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (Int.xor 1 (A006512 (n + 1))).toNat

end

end A118701.P2400390695861925279

/-! ## A118701.P7617899035638688022

`A034699(p?[A001838(n+1)]+1)`
-/

namespace A118701.P7617899035638688022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A118701.P7617899035638688022

/-! ## A118701.P17802811443772615035

`A034699(p?[A000040(n+1)+2]-1)`
-/

namespace A118701.P17802811443772615035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A118701.P17802811443772615035

/-! ## A118701.P6950553553406439648

`A034699(xor(1, p?[A000040(n+1)+2]))`
-/

namespace A118701.P6950553553406439648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A118701.P6950553553406439648

/-!
# A118703: Zero-free primes with digit sum equal to 7.

The programs for A118703, there is no canonical definition to state claims against.
-/

/-! ## A118703.P4984120313239074775

`A113625(n+15)`
-/

namespace A118703.P4984120313239074775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113625 (n + 15)

end

end A118703.P4984120313239074775

/-! ## A118703.P17360119202999161178

`p?[A119461(n+1)]`
-/

namespace A118703.P17360119202999161178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118703.P17360119202999161178

/-! ## A118703.P8516800121511476077

`p?[A069800(n+32)]`
-/

namespace A118703.P8516800121511476077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069800 (n + 32)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118703.P8516800121511476077

/-! ## A118703.P752219790879369991

`∩[A038618(n+1), A052221(n+1)]`
-/

namespace A118703.P752219790879369991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118703.P752219790879369991

/-! ## A118703.P8248299914253356091

`∩[A038618(n+1), A062337(n+1)]`
-/

namespace A118703.P8248299914253356091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118703.P8248299914253356091

/-!
# A118706: Triangular numbers whose digits in base 12 are contained in {1,5,7,11}.

The programs for A118706, there is no canonical definition to state claims against.
-/

/-! ## A118706.P17560118726275094861

`A000217(A118711(n+1))`
-/

namespace A118706.P17560118726275094861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A118711 (n + 1)).toNat

end

end A118706.P17560118726275094861

/-! ## A118706.P6674397394040407445

`A161680(A118711(n+1)+1)`
-/

namespace A118706.P6674397394040407445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A118711 (n + 1) + 1).toNat

end

end A118706.P6674397394040407445

/-! ## A118706.P12628113681514393444

`A179865(A118711(n+1)+1)`
-/

namespace A118706.P12628113681514393444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A118711 (n + 1) + 1).toNat

end

end A118706.P12628113681514393444

/-! ## A118706.P5723985431694217064

`A069834(A036370(n)*A118711(n+1))`
-/

namespace A118706.P5723985431694217064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069834 (A036370 n * A118711 (n + 1)).toNat

end

end A118706.P5723985431694217064

/-!
# A118710: Smallest positive integer k such that k^k + F(n) is prime, where F(n) is the n-th Fibonacci number.

The programs for A118710, there is no canonical definition to state claims against.
-/

/-! ## A118710.P16480056021047815661

`A087037(A000045(n+1))`
-/

namespace A118710.P16480056021047815661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087037 (A000045 (n + 1)).toNat

end

end A118710.P16480056021047815661

/-!
# A118711: Integers k such that the k-th triangular number t_k has all its base-12 digits contained in {1,5,7,11}.

The programs for A118711, there is no canonical definition to state claims against.
-/

/-! ## A118711.P11049682111838996350

`(sqrt(8*A118706(n+1)+1)-1)/2`
-/

namespace A118711.P11049682111838996350
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (8 * A118706 (n + 1) + 1 : ℝ) - 1) / 2

end

end A118711.P11049682111838996350

/-! ## A118711.P6051256843209874290

`floor(sqrt(2*A118706(n+1)))`
-/

namespace A118711.P6051256843209874290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A118706 (n + 1))

end

end A118711.P6051256843209874290

/-!
# A118714: Determinant of n X n matrix whose diagonal contains the first n tetrahedral numbers and all other elements are 1's.

The programs for A118714, the canonical program `A118714.P17832241545491048613` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118714 has offset 1).

The definition of A118714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118714.P17832241545491048613

`a(n-1)*(6+4*(n+1)+(n+1)²)*n/6` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A118714

/-- `a(n-1)*(6+4*(n+1)+(n+1)²)*n/6` -/
def P17832241545491048613.Spec : Prop :=
  ∀ n, P17832241545491048613.a n = (A118714 (n + 1) : ℚ)

end A118714

/-! ## A118714.P9064289825082090265

`∏[∑[∑[n+1]-char[1]]]`
-/

namespace A118714.P9064289825082090265
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118714.P9064289825082090265

namespace A118714

/-- `∏[∑[∑[n+1]-char[1]]]` -/
def P9064289825082090265.Spec : Prop :=
  ∀ n, P9064289825082090265.a n = A118714 (n + 1)

end A118714

/-! ## A118714.P16413418468136032511

`(C(n+3, 3)-1)*a(n-1)` with `a(0)=1`
-/

namespace A118714.P16413418468136032511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((Nat.choose (n + 3) 3 : ℤ) - 1) * a (n - 1)

end

end A118714.P16413418468136032511

namespace A118714

/-- `(C(n+3, 3)-1)*a(n-1)` -/
def P16413418468136032511.Spec : Prop :=
  ∀ n, P16413418468136032511.a n = A118714 (n + 1)

end A118714

/-! ## A118714.P12487776326748668457

`(∑[∑[n+1]]-1)*a(n-1)` with `a(0)=1`
-/

namespace A118714.P12487776326748668457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * a (n - 1)

end

end A118714.P12487776326748668457

namespace A118714

/-- `(∑[∑[n+1]]-1)*a(n-1)` -/
def P12487776326748668457.Spec : Prop :=
  ∀ n, P12487776326748668457.a n = A118714 (n + 1)

end A118714

/-! ## A118714.P17789928074575794113

`a(n-1)/(∑[∑[n+1]]-1)^(-1)` with `a(0)=1`
-/

namespace A118714.P17789928074575794113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) ^ (-1 : ℤ)

end

end A118714.P17789928074575794113

namespace A118714

/-- `a(n-1)/(∑[∑[n+1]]-1)^(-1)` -/
def P17789928074575794113.Spec : Prop :=
  ∀ n, P17789928074575794113.a n = (A118714 (n + 1) : ℚ)

end A118714

/-!
# A118715: Numbers n such that the digital reversal of n is a perfect power (A001597).

The programs for A118715, there is no canonical definition to state claims against.
-/

/-! ## A118715.P3305322155585674897

`eq[A000007(n), A301573(A004086(n))]`
-/

namespace A118715.P3305322155585674897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118715.P3305322155585674897

/-! ## A118715.P16808667156026426053

`eq[1, A301573(A004086(n))+A057427(n)]`
-/

namespace A118715.P16808667156026426053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 (A004086 n).toNat + A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118715.P16808667156026426053

/-! ## A118715.P2517031249828925200

`eq[0, A000578(n)*A301573(A004086(n))]`
-/

namespace A118715.P2517031249828925200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n * A301573 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118715.P2517031249828925200

/-! ## A118715.P6783699938520304634

`eq[0, A003056(n)*A301573(A004086(n))]`
-/

namespace A118715.P6783699938520304634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n * A301573 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118715.P6783699938520304634

/-! ## A118715.P5031658090768552179

`eq[0, A051132(n)*A301573(A004086(n))]`
-/

namespace A118715.P5031658090768552179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 n * A301573 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118715.P5031658090768552179

/-! ## A118715.P4151374737223275981

`eq[A084099(2*n), A301573(A004086(n))]`
-/

namespace A118715.P4151374737223275981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118715.P4151374737223275981

/-! ## A118715.P9422654074689367942

`eq[A266437(2*n), A301573(A004086(n))]`
-/

namespace A118715.P9422654074689367942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118715.P9422654074689367942

/-! ## A118715.P4177019547058999264

`eq[A049084(2*(n+1)), A301573(A004086(n))]`
-/

namespace A118715.P4177019547058999264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118715.P4177019547058999264

/-!
# A118716: Number of different ways to represent n in different bases using only decimal digits or characters (0 to 9).

The programs for A118716, there is no canonical definition to state claims against.
-/

/-! ## A118716.P8656296002671485743

`A192438(n+1)+char[A004859(n+2)]`
-/

namespace A118716.P8656296002671485743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004859 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192438 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A118716.P8656296002671485743

/-!
# A118717: Sum of two consecutive semiprimes.

The programs for A118717, the canonical program `A118717.P5086267492730795154` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118717 has offset 1).

The definition of A118717 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A118717.P5086267492730795154

`A001358(n+1)+A001358(n+2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A118717

/-- `A001358(n+1)+A001358(n+2)` -/
def P5086267492730795154.Spec : Prop :=
  ∀ n, P5086267492730795154.a n = A118717 (n + 1)

theorem P5086267492730795154.correct : P5086267492730795154.Spec := by
  intro n
  simp only [A118717, Nat.add_sub_cancel]

end A118717

/-! ## A118717.P5545026787944736448

`A075818(n+1)+A065516(n+1)`
-/

namespace A118717.P5545026787944736448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) + A065516 (n + 1)

end

end A118717.P5545026787944736448

namespace A118717

/-- `A075818(n+1)+A065516(n+1)` -/
def P5545026787944736448.Spec : Prop :=
  ∀ n, P5545026787944736448.a n = A118717 (n + 1)

theorem P5545026787944736448.correct : P5545026787944736448.Spec := by
  intro n
  simp only [A118717, Nat.add_sub_cancel, A118717.P5545026787944736448.a, A118717.P5086267492730795154.a, A001358, A001358.P632087320844056370.a, A065516, A065516.P1921636422831940081.a, A075818, A075818.P6886237212657486754.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A118717

/-! ## A118717.P17175822086258501811

`A186621(n+1)+A088707(n+2)`
-/

namespace A118717.P17175822086258501811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + A088707 (n + 2)

end

end A118717.P17175822086258501811

namespace A118717

/-- `A186621(n+1)+A088707(n+2)` -/
def P17175822086258501811.Spec : Prop :=
  ∀ n, P17175822086258501811.a n = A118717 (n + 1)

theorem P17175822086258501811.correct : P17175822086258501811.Spec := by
  intro n
  simp only [A118717, Nat.add_sub_cancel, A118717.P17175822086258501811.a, A118717.P5086267492730795154.a, A001358, A001358.P632087320844056370.a, A088707, A088707.P7291141647877559993.a, A186621, A186621.P5089299060388261365.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A118717

/-! ## A118717.P5541763689394510636

`A075818(n+1)+Δ[A088707(n+1)]`
-/

namespace A118717.P5541763689394510636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) + (f1 (n + 1) - f1 n)

end

end A118717.P5541763689394510636

namespace A118717

/-- `A075818(n+1)+Δ[A088707(n+1)]` -/
def P5541763689394510636.Spec : Prop :=
  ∀ n, P5541763689394510636.a n = A118717 (n + 1)

theorem P5541763689394510636.correct : P5541763689394510636.Spec := by
  intro n
  simp only [A118717, Nat.add_sub_cancel, A118717.P5541763689394510636.f1, A118717.P5541763689394510636.a, A118717.P5086267492730795154.a, A001358, A001358.P632087320844056370.a, A075818, A075818.P6886237212657486754.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A118717

/-! ## A118717.P4866154830787675907

`A075818(n+1)+Δ[A186621(n+1)]`
-/

namespace A118717.P4866154830787675907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) + (f1 (n + 1) - f1 n)

end

end A118717.P4866154830787675907

namespace A118717

/-- `A075818(n+1)+Δ[A186621(n+1)]` -/
def P4866154830787675907.Spec : Prop :=
  ∀ n, P4866154830787675907.a n = A118717 (n + 1)

theorem P4866154830787675907.correct : P4866154830787675907.Spec := by
  intro n
  simp only [A118717, Nat.add_sub_cancel, A118717.P4866154830787675907.f1, A118717.P4866154830787675907.a, A118717.P5086267492730795154.a, A001358, A001358.P632087320844056370.a, A075818, A075818.P6886237212657486754.a, A186621, A186621.P5089299060388261365.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A118717

/-! ## A118717.P4711676580620052170

`A088707(n+2)+A088707(n+1)-2`
-/

namespace A118717.P4711676580620052170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 2) + (A088707 (n + 1) - 2)

end

end A118717.P4711676580620052170

namespace A118717

/-- `A088707(n+2)+A088707(n+1)-2` -/
def P4711676580620052170.Spec : Prop :=
  ∀ n, P4711676580620052170.a n = A118717 (n + 1)

theorem P4711676580620052170.correct : P4711676580620052170.Spec := by
  intro n
  simp only [A118717, Nat.add_sub_cancel, A118717.P4711676580620052170.a, A118717.P5086267492730795154.a, A001358, A001358.P632087320844056370.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A118717

/-! ## A118717.P16161077914412568296

`A075818(n+1)+Δ[A175708(n+1)]+1`
-/

namespace A118717.P16161077914412568296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) + (f1 (n + 1) - f1 n + 1)

end

end A118717.P16161077914412568296

namespace A118717

/-- `A075818(n+1)+Δ[A175708(n+1)]+1` -/
def P16161077914412568296.Spec : Prop :=
  ∀ n, P16161077914412568296.a n = A118717 (n + 1)

theorem P16161077914412568296.correct : P16161077914412568296.Spec := by
  intro n
  simp only [A118717, Nat.add_sub_cancel, A118717.P16161077914412568296.f1, A118717.P16161077914412568296.a, A118717.P5086267492730795154.a, A001358, A001358.P632087320844056370.a, A075818, A075818.P6886237212657486754.a, A175708, A175708.P9200072279870982.a, A000027, A000027.P10331202704469894836.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A118717

/-! ## A118717.P2779595349426519628

`A075818(n+1)+Δ[eq[2, A001222(n+1)]]`
-/

namespace A118717.P2779595349426519628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A118717.P2779595349426519628

namespace A118717

/-- `A075818(n+1)+Δ[eq[2, A001222(n+1)]]` -/
def P2779595349426519628.Spec : Prop :=
  ∀ n, P2779595349426519628.a n = A118717 (n + 1)

end A118717

/-! ## A118717.P9925949194961372396

`A075818(n+1)+A001281(Δ[A075818(n+1)])`
-/

namespace A118717.P9925949194961372396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) + A001281 (f1 (n + 1) - f1 n).toNat

end

end A118717.P9925949194961372396

namespace A118717

/-- `A075818(n+1)+A001281(Δ[A075818(n+1)])` -/
def P9925949194961372396.Spec : Prop :=
  ∀ n, P9925949194961372396.a n = A118717 (n + 1)

end A118717

/-! ## A118717.P627970476965083275

`A075818(n+1)+A004526(Δ[A075818(n+1)])`
-/

namespace A118717.P627970476965083275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) + A004526 (f1 (n + 1) - f1 n).toNat

end

end A118717.P627970476965083275

namespace A118717

/-- `A075818(n+1)+A004526(Δ[A075818(n+1)])` -/
def P627970476965083275.Spec : Prop :=
  ∀ n, P627970476965083275.a n = A118717 (n + 1)

end A118717

/-! ## A118717.P2620983924727137790

`A075818(n+1)+A088707(n+2)%A088707(n+1)`
-/

namespace A118717.P2620983924727137790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) + Int.tmod (A088707 (n + 2)) (A088707 (n + 1))

end

end A118717.P2620983924727137790

namespace A118717

/-- `A075818(n+1)+A088707(n+2)%A088707(n+1)` -/
def P2620983924727137790.Spec : Prop :=
  ∀ n, P2620983924727137790.a n = A118717 (n + 1)

end A118717

/-! ## A118717.P10690619541896900055

`A075818(n+1)+Δ[A084126(n+1)*A084127(n+1)]`
-/

namespace A118717.P10690619541896900055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084126 (n + 1) * A084127 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) + (f1 (n + 1) - f1 n)

end

end A118717.P10690619541896900055

namespace A118717

/-- `A075818(n+1)+Δ[A084126(n+1)*A084127(n+1)]` -/
def P10690619541896900055.Spec : Prop :=
  ∀ n, P10690619541896900055.a n = A118717 (n + 1)

end A118717

/-! ## A118717.P12125296288075924225

`A110208(n+2)-A110208(n)`
-/

namespace A118717.P12125296288075924225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110208 (n + 2) - A110208 n

end

end A118717.P12125296288075924225

namespace A118717

/-- `A110208(n+2)-A110208(n)` -/
def P12125296288075924225.Spec : Prop :=
  ∀ n, P12125296288075924225.a n = A118717 (n + 1)

end A118717

/-! ## A118717.P611617801101838155

`A176540(n+2)+A176540(n+3)`
-/

namespace A118717.P611617801101838155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2) + A176540 (n + 3)

end

end A118717.P611617801101838155

namespace A118717

/-- `A176540(n+2)+A176540(n+3)` -/
def P611617801101838155.Spec : Prop :=
  ∀ n, P611617801101838155.a n = A118717 (n + 1)

end A118717

/-! ## A118717.P16745918850184168174

`A129767(2*(n+1))+A075818(n+2)/2`
-/

namespace A118717.P16745918850184168174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129767 (2 * (n + 1)) : ℚ) + (A075818 (n + 2) : ℚ) / 2

end

end A118717.P16745918850184168174

namespace A118717

/-- `A129767(2*(n+1))+A075818(n+2)/2` -/
def P16745918850184168174.Spec : Prop :=
  ∀ n, P16745918850184168174.a n = (A118717 (n + 1) : ℚ)

end A118717

/-! ## A118717.P16624576561457812768

`A129767(2*(n+1))+A129767(2*(n+2))`
-/

namespace A118717.P16624576561457812768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * (n + 1)) + A129767 (2 * (n + 2))

end

end A118717.P16624576561457812768

namespace A118717

/-- `A129767(2*(n+1))+A129767(2*(n+2))` -/
def P16624576561457812768.Spec : Prop :=
  ∀ n, P16624576561457812768.a n = A118717 (n + 1)

end A118717

/-! ## A118717.P14841103010555777675

`A088707(n+2)+eq[2, A226378(n+1)]`
-/

namespace A118717.P14841103010555777675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 2) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A118717.P14841103010555777675

namespace A118717

/-- `A088707(n+2)+eq[2, A226378(n+1)]` -/
def P14841103010555777675.Spec : Prop :=
  ∀ n, P14841103010555777675.a n = A118717 (n + 1)

end A118717

/-! ## A118717.P8807809281482746692

`A088707(n+2)+eq[2, A284289(n+1)]`
-/

namespace A118717.P8807809281482746692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 2) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A118717.P8807809281482746692

namespace A118717

/-- `A088707(n+2)+eq[2, A284289(n+1)]` -/
def P8807809281482746692.Spec : Prop :=
  ∀ n, P8807809281482746692.a n = A118717 (n + 1)

end A118717

/-! ## A118717.P14184792615384568140

`A075818(n+1)+Δ[eq[2, A226378(n)]]`
-/

namespace A118717.P14184792615384568140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A118717.P14184792615384568140

namespace A118717

/-- `A075818(n+1)+Δ[eq[2, A226378(n)]]` -/
def P14184792615384568140.Spec : Prop :=
  ∀ n, P14184792615384568140.a n = A118717 (n + 1)

end A118717

/-! ## A118717.P10331230519179691224

`A075818(n+1)+Δ[eq[2, A284289(n)]]`
-/

namespace A118717.P10331230519179691224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A118717.P10331230519179691224

namespace A118717

/-- `A075818(n+1)+Δ[eq[2, A284289(n)]]` -/
def P10331230519179691224.Spec : Prop :=
  ∀ n, P10331230519179691224.a n = A118717 (n + 1)

end A118717

/-!
# A118718: Lucky numbers with only prime digits.

The programs for A118718, there is no canonical definition to state claims against.
-/

/-! ## A118718.P4303824670488526270

`∩[A000959(n+1), A046034(n+1)]`
-/

namespace A118718.P4303824670488526270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118718.P4303824670488526270

/-! ## A118718.P15397089742755760901

`filter[A046034(n+1), A145649(#)]`
-/

namespace A118718.P15397089742755760901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A118718.P15397089742755760901

/-! ## A118718.P13212674541148167890

`∩[A046034(n+1), A031883(n)+a(n-1)]` with `a(0)=1`
-/

namespace A118718.P13212674541148167890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A031883 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118718.P13212674541148167890

/-! ## A118718.P6746272508750385161

`∩[A032602(n+1)-A000040(n+1), A046034(n+1)]`
-/

namespace A118718.P6746272508750385161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032602 (n + 1) - A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118718.P6746272508750385161

/-!
# A118719: Cubes for which the digital root is also a cube.

The programs for A118719, the canonical program `A118719.P3693820704231465027` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118719 has offset 1).

The definition of A118719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118719.P9761702380519568612

`comp[3*(n+1)]^3`
-/

namespace A118719.P9761702380519568612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 3

end

end A118719.P9761702380519568612

namespace A118719

/-- `comp[3*(n+1)]^3` -/
def P9761702380519568612.Spec : Prop :=
  ∀ n, (P9761702380519568612.a n : ℤ) = A118719 (n + 1)

end A118719

/-! ## A118719.P4677522282378121741

`record[(lcm(3, n)/3)^3]`
-/

namespace A118719.P4677522282378121741
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 3 n : ℚ) / 3) ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118719.P4677522282378121741

namespace A118719

/-- `record[(lcm(3, n)/3)^3]` -/
def P4677522282378121741.Spec : Prop :=
  ∀ n, P4677522282378121741.a n = (A118719 (n + 1) : ℚ)

end A118719

/-! ## A118719.P7076826058496254346

`record[n^(4-gcd(3, n))]`
-/

namespace A118719.P7076826058496254346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (4 - (Nat.gcd 3 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118719.P7076826058496254346

namespace A118719

/-- `record[n^(4-gcd(3, n))]` -/
def P7076826058496254346.Spec : Prop :=
  ∀ n, P7076826058496254346.a n = (A118719 (n + 1) : ℚ)

end A118719

/-! ## A118719.P3693820704231465027

`record[(n*n²%3)^3]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A118719

/-- `record[(n*n²%3)^3]` -/
def P3693820704231465027.Spec : Prop :=
  ∀ n, (P3693820704231465027.a n : ℤ) = A118719 (n + 1)

theorem P3693820704231465027.correct : P3693820704231465027.Spec := by
  intro n
  simp only [A118719, Nat.add_sub_cancel]

end A118719

/-! ## A118719.P1286400765836179766

`record[lcm((n+1)%3-1, n^3)]`
-/

namespace A118719.P1286400765836179766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((((n + 1) % 3 : ℕ) : ℤ) - 1) (n ^ 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118719.P1286400765836179766

namespace A118719

/-- `record[lcm((n+1)%3-1, n^3)]` -/
def P1286400765836179766.Spec : Prop :=
  ∀ n, (P1286400765836179766.a n : ℤ) = A118719 (n + 1)

end A118719

/-! ## A118719.P2276245239551693317

`floor(∑[3-a(n-1)]^3)` with `a(0)=0, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A118719.P2276245239551693317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A118719.P2276245239551693317

namespace A118719

/-- `floor(∑[3-a(n-1)]^3)` -/
def P2276245239551693317.Spec : Prop :=
  ∀ n, P2276245239551693317.a n = A118719 (n + 1)

end A118719

/-! ## A118719.P9048059893097413583

`record[A106610(n)^3]`
-/

namespace A118719.P9048059893097413583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118719.P9048059893097413583

namespace A118719

/-- `record[A106610(n)^3]` -/
def P9048059893097413583.Spec : Prop :=
  ∀ n, P9048059893097413583.a n = A118719 (n + 1)

end A118719

/-! ## A118719.P16209601502674977990

`record[n*A091684(n)²]`
-/

namespace A118719.P16209601502674977990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A091684 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118719.P16209601502674977990

namespace A118719

/-- `record[n*A091684(n)²]` -/
def P16209601502674977990.Spec : Prop :=
  ∀ n, P16209601502674977990.a n = A118719 (n + 1)

end A118719

/-! ## A118719.P9389830914572142609

`A000578(comp[3*(n+1)])`
-/

namespace A118719.P9389830914572142609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A118719.P9389830914572142609

namespace A118719

/-- `A000578(comp[3*(n+1)])` -/
def P9389830914572142609.Spec : Prop :=
  ∀ n, P9389830914572142609.a n = A118719 (n + 1)

end A118719

/-! ## A118719.P9907622059891602164

`record[n^A169609(n)]`
-/

namespace A118719.P9907622059891602164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A169609 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118719.P9907622059891602164

namespace A118719

/-- `record[n^A169609(n)]` -/
def P9907622059891602164.Spec : Prop :=
  ∀ n, P9907622059891602164.a n = (A118719 (n + 1) : ℚ)

end A118719

/-! ## A118719.P14987496674191540409

`record[n*A051176(n)²]`
-/

namespace A118719.P14987496674191540409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051176 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118719.P14987496674191540409

namespace A118719

/-- `record[n*A051176(n)²]` -/
def P14987496674191540409.Spec : Prop :=
  ∀ n, P14987496674191540409.a n = A118719 (n + 1)

end A118719

/-! ## A118719.P13598488872082992326

`record[n*A100050(n)²]`
-/

namespace A118719.P13598488872082992326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A100050 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118719.P13598488872082992326

namespace A118719

/-- `record[n*A100050(n)²]` -/
def P13598488872082992326.Spec : Prop :=
  ∀ n, P13598488872082992326.a n = A118719 (n + 1)

end A118719

/-! ## A118719.P3224299735663104731

`record[A186101(n)²*A186101(n)]`
-/

namespace A118719.P3224299735663104731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 n ^ 2 * A186101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118719.P3224299735663104731

namespace A118719

/-- `record[A186101(n)²*A186101(n)]` -/
def P3224299735663104731.Spec : Prop :=
  ∀ n, P3224299735663104731.a n = A118719 (n + 1)

end A118719

/-! ## A118719.P14805474318679900245

`record[A131742(n)^3]`
-/

namespace A118719.P14805474318679900245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131742 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118719.P14805474318679900245

namespace A118719

/-- `record[A131742(n)^3]` -/
def P14805474318679900245.Spec : Prop :=
  ∀ n, P14805474318679900245.a n = A118719 (n + 1)

end A118719

/-! ## A118719.P1228891750426481474

`record[A030065(n)²*A030065(n)]`
-/

namespace A118719.P1228891750426481474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 n ^ 2 * A030065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118719.P1228891750426481474

namespace A118719

/-- `record[A030065(n)²*A030065(n)]` -/
def P1228891750426481474.Spec : Prop :=
  ∀ n, P1228891750426481474.a n = A118719 (n + 1)

end A118719

/-! ## A118719.P9167194989875873958

`record[A134172(n)²*A134172(n)]`
-/

namespace A118719.P9167194989875873958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134172 n ^ 2 * A134172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118719.P9167194989875873958

namespace A118719

/-- `record[A134172(n)²*A134172(n)]` -/
def P9167194989875873958.Spec : Prop :=
  ∀ n, P9167194989875873958.a n = A118719 (n + 1)

end A118719

/-! ## A118719.P1388253887142097161

`A006368(A004273(n))²*A006368(A004273(n))`
-/

namespace A118719.P1388253887142097161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A004273 n).toNat ^ 2 * A006368 (A004273 n).toNat

end

end A118719.P1388253887142097161

namespace A118719

/-- `A006368(A004273(n))²*A006368(A004273(n))` -/
def P1388253887142097161.Spec : Prop :=
  ∀ n, P1388253887142097161.a n = A118719 (n + 1)

end A118719

/-! ## A118719.P12376700294046880373

`record[n*A030102(A030102(n))²]`
-/

namespace A118719.P12376700294046880373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A030102 (A030102 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118719.P12376700294046880373

namespace A118719

/-- `record[n*A030102(A030102(n))²]` -/
def P12376700294046880373.Spec : Prop :=
  ∀ n, P12376700294046880373.a n = A118719 (n + 1)

end A118719

/-! ## A118719.P3435312729342116619

`record[n*A137305(A137305(n))²]`
-/

namespace A118719.P3435312729342116619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A137305 (A137305 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118719.P3435312729342116619

namespace A118719

/-- `record[n*A137305(A137305(n))²]` -/
def P3435312729342116619.Spec : Prop :=
  ∀ n, P3435312729342116619.a n = A118719 (n + 1)

end A118719

/-! ## A118719.P6355922994631143558

`record[n*A106619(2*n)²]`
-/

namespace A118719.P6355922994631143558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A106619 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118719.P6355922994631143558

namespace A118719

/-- `record[n*A106619(2*n)²]` -/
def P6355922994631143558.Spec : Prop :=
  ∀ n, P6355922994631143558.a n = A118719 (n + 1)

end A118719

/-!
# A118720: Cubes which are divisible by the sum of their digits.

The programs for A118720, there is no canonical definition to state claims against.
-/

/-! ## A118720.P6458426695128503048

`∩[A098121(n+1), n*n²]`
-/

namespace A118720.P6458426695128503048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A118720.P6458426695128503048

/-! ## A118720.P8074548618321307715

`∩[A000578(n), A098121(n+1)]`
-/

namespace A118720.P8074548618321307715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118720.P8074548618321307715

/-! ## A118720.P13824565725449966676

`∩[A109900(n), A098121(n+1)]`
-/

namespace A118720.P13824565725449966676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118720.P13824565725449966676

/-! ## A118720.P17452863751146854749

`∩[n^3, A005349(n+1)]`
-/

namespace A118720.P17452863751146854749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118720.P17452863751146854749

/-! ## A118720.P3569603747332197551

`∩[A005349(n+1), A000578(n)]`
-/

namespace A118720.P3569603747332197551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118720.P3569603747332197551

/-!
# A118721: Chen primes for which the sum of the digits is also a Chen prime.

The programs for A118721, there is no canonical definition to state claims against.
-/

/-! ## A118721.P13153238481092410793

`∩[A046704(n+1), A109611(n+1)]`
-/

namespace A118721.P13153238481092410793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118721.P13153238481092410793

/-! ## A118721.P14866781385796576480

`∩[A028834(n+1), A109611(n+1)]`
-/

namespace A118721.P14866781385796576480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118721.P14866781385796576480

/-! ## A118721.P4763332130470444032

`A046704(lt[A220479(n+1), A002113(n+1)])`
-/

namespace A118721.P4763332130470444032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A118721.P4763332130470444032

/-! ## A118721.P10815794827546740825

`∩[A046704(n+1), A167662(n+1)]`
-/

namespace A118721.P10815794827546740825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118721.P10815794827546740825

/-! ## A118721.P15687456834016411870

`∩[A089392(n+1), A167662(n+1)]`
-/

namespace A118721.P15687456834016411870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118721.P15687456834016411870

/-!
# A118722: Chen primes for which the product of the digits is also a Chen prime.

The programs for A118722, there is no canonical definition to state claims against.
-/

/-! ## A118722.P7229905726480351756

`∩[A028842(n+1), A118724(n+1)]`
-/

namespace A118722.P7229905726480351756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118722.P7229905726480351756

/-! ## A118722.P15462218664108491567

`∩[A046703(n+1), A118724(n+1)]`
-/

namespace A118722.P15462218664108491567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118722.P15462218664108491567

/-! ## A118722.P6751686229716792983

`∩[A117835(n+1), A118724(n+1)]`
-/

namespace A118722.P6751686229716792983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118724 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118722.P6751686229716792983

/-! ## A118722.P13201208901267662178

`∩[A118724(n+1), A307714(n+1)]`
-/

namespace A118722.P13201208901267662178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118722.P13201208901267662178

/-! ## A118722.P4461643031227159376

`∩[A028842(n+1), A109611(n+1)]`
-/

namespace A118722.P4461643031227159376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118722.P4461643031227159376

/-!
# A118723: Chen primes whose digital root is also a Chen prime.

The programs for A118723, there is no canonical definition to state claims against.
-/

/-! ## A118723.P17799131872286432554

`∩[A078403(n+1), A109611(n+1)]`
-/

namespace A118723.P17799131872286432554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118723.P17799131872286432554

/-! ## A118723.P16069088948779713159

`∩[A028835(n+1), A109611(n+1)]`
-/

namespace A118723.P16069088948779713159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118723.P16069088948779713159

/-! ## A118723.P5717684411867826821

`∩[A050687(n+1), A156658(n+1)]`
-/

namespace A118723.P5717684411867826821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118723.P5717684411867826821

/-! ## A118723.P17045354744238354932

`∩[A078403(n+1), A167662(n+1)]`
-/

namespace A118723.P17045354744238354932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118723.P17045354744238354932

/-! ## A118723.P2844580282746430802

`∩[A156658(n+1), A247151(n+1)]`
-/

namespace A118723.P2844580282746430802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118723.P2844580282746430802

/-!
# A118724: Chen primes for which the multiplicative digital root is also a Chen prime.

The programs for A118724, there is no canonical definition to state claims against.
-/

/-! ## A118724.P15946245712219474790

`∩[A109611(n+1), A117159(n+1)]`
-/

namespace A118724.P15946245712219474790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118724.P15946245712219474790

/-! ## A118724.P4982889805183839109

`∩[A028843(n+1), A109611(n+1)]`
-/

namespace A118724.P4982889805183839109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118724.P4982889805183839109

/-! ## A118724.P16061141794256114469

`∩[A097745(n+1), A117159(n+1)]`
-/

namespace A118724.P16061141794256114469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118724.P16061141794256114469

/-! ## A118724.P13211007609712730607

`filter[A117159(n+1), A167850(#)]`
-/

namespace A118724.P13211007609712730607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167850 (f1 j).toNat = 1) n)

end

end A118724.P13211007609712730607

/-! ## A118724.P10680307632608711826

`filter[A117159(n+1), A167851(#)]`
-/

namespace A118724.P10680307632608711826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167851 (f1 j).toNat = 1) n)

end

end A118724.P10680307632608711826

/-!
# A118725: Chen primes for which the reversal is also a Chen prime.

The programs for A118725, there is no canonical definition to state claims against.
-/

/-! ## A118725.P7060245969893454943

`∩[A109611(n+1), A321420(n+1)]`
-/

namespace A118725.P7060245969893454943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118725.P7060245969893454943

/-! ## A118725.P16397185494971883798

`∩[A321420(n+1), A327445(n+1)]`
-/

namespace A118725.P16397185494971883798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118725.P16397185494971883798

/-! ## A118725.P15966535802167893433

`∩[A321420(n+1), A359028(n+1)]`
-/

namespace A118725.P15966535802167893433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118725.P15966535802167893433

/-! ## A118725.P16132398051307979681

`filter[A321420(n+1), A334465(#)]`
-/

namespace A118725.P16132398051307979681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A334465 (f1 j).toNat = 1) n)

end

end A118725.P16132398051307979681

/-! ## A118725.P918115705822428972

`∩[A089743(n+1), A253717(n+1)]`
-/

namespace A118725.P918115705822428972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118725.P918115705822428972

/-!
# A118726: a(n) = Sum_{k=0..n} F(n+k)*binomial(n+k,k) where F=A000045.

The programs for A118726, there is no canonical definition to state claims against.
-/

/-! ## A118726.P14397049795201366901

`A189663(A182616(∑[n+1]))`
-/

namespace A118726.P14397049795201366901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A182616 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A118726.P14397049795201366901

/-!
# A118727: Primes that are the sum of the numerator and denominator of a harmonic number.

The programs for A118727, there is no canonical definition to state claims against.
-/

/-! ## A118727.P9321429295179150844

`A064168(A123538(n+1))`
-/

namespace A118727.P9321429295179150844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064168 (A123538 (n + 1)).toNat

end

end A118727.P9321429295179150844

/-! ## A118727.P1778887427498691434

`A064168(lt[A098273(n+1), A098287(n+1)²])`
-/

namespace A118727.P1778887427498691434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098287 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064168 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A118727.P1778887427498691434

/-! ## A118727.P15419210279015420159

`A064168(lt[A193899(n+1), A130348(3*n+1)])`
-/

namespace A118727.P15419210279015420159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130348 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064168 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A118727.P15419210279015420159

/-! ## A118727.P7370938584505964494

`p?[A064168(n+1)]`
-/

namespace A118727.P7370938584505964494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118727.P7370938584505964494

/-! ## A118727.P8144044198934765375

`p?[A002805(n+1)+A001008(n+1)]`
-/

namespace A118727.P8144044198934765375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) + A001008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118727.P8144044198934765375

/-!
# A118728: a(n) = smallest squarefree number not less than a(n-1)+a(n-2), a(1)=1, a(0)=0.

The programs for A118728, the canonical program `A118728.P17722591334986593474` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118728 has offset 0).

The definition of A118728 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067535, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A118728.P17722591334986593474

`A067535(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A118728

/-- `A067535(a(n-1)+a(n-2))` -/
def P17722591334986593474.Spec : Prop :=
  ∀ n, P17722591334986593474.a n = A118728 n

theorem P17722591334986593474.correct : P17722591334986593474.Spec := by
  intro n
  simp only [A118728]

end A118728

/-! ## A118728.P15389604344781088825

`A055389(n)-A010892(A304961(n))`
-/

namespace A118728.P15389604344781088825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 n - A010892 (A304961 n).toNat

end

end A118728.P15389604344781088825

namespace A118728

/-- `A055389(n)-A010892(A304961(n))` -/
def P15389604344781088825.Spec : Prop :=
  ∀ n, P15389604344781088825.a n = A118728 n

end A118728

/-! ## A118728.P14650182761425578944

`A055389(n)-A188038(A205500(n))`
-/

namespace A118728.P14650182761425578944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 n - A188038 (A205500 n).toNat

end

end A118728.P14650182761425578944

namespace A118728

/-- `A055389(n)-A188038(A205500(n))` -/
def P14650182761425578944.Spec : Prop :=
  ∀ n, P14650182761425578944.a n = A118728 n

end A118728

/-! ## A118728.P3840910930735986790

`A006355(n+1)-A072608(A265062(2*n+1))`
-/

namespace A118728.P3840910930735986790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) - A072608 (A265062 (2 * n + 1)).toNat

end

end A118728.P3840910930735986790

namespace A118728

/-- `A006355(n+1)-A072608(A265062(2*n+1))` -/
def P3840910930735986790.Spec : Prop :=
  ∀ n, P3840910930735986790.a n = A118728 n

end A118728

/-! ## A118728.P7822643146983260147

`A003056(or(A077043(n), A095122(n)))`
-/

namespace A118728.P7822643146983260147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (A077043 n) (A095122 n)).toNat

end

end A118728.P7822643146983260147

namespace A118728

/-- `A003056(or(A077043(n), A095122(n)))` -/
def P7822643146983260147.Spec : Prop :=
  ∀ n, P7822643146983260147.a n = A118728 n

end A118728

/-!
# A118729: Rectangular array where row r contains the 8 numbers 4*r^2 - 3*r, 4*r^2 - 2*r, ..., 4*r^2 + 4*r.

The programs for A118729, the canonical program `A118729.P9679017308414048272` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118729 has offset 0).

The definition of A118729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118729.P9679017308414048272

`floor(n/8)*(n-3-4*floor(n/8))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A118729

/-- `floor(n/8)*(n-3-4*floor(n/8))` -/
def P9679017308414048272.Spec : Prop :=
  ∀ n, P9679017308414048272.a n = A118729 n

theorem P9679017308414048272.correct : P9679017308414048272.Spec := by
  intro n
  simp only [A118729]

end A118729

/-! ## A118729.P9199262516016658083

`∑[and(n, -8)]/8`
-/

namespace A118729.P9199262516016658083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-8)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 8

end

end A118729.P9199262516016658083

namespace A118729

/-- `∑[and(n, -8)]/8` -/
def P9199262516016658083.Spec : Prop :=
  ∀ n, P9199262516016658083.a n = (A118729 n : ℚ)

end A118729

/-! ## A118729.P8171442715282266161

`floor(a(n-1)+n/8)` with `a(0)=0`
-/

namespace A118729.P8171442715282266161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / 8⌋

end

end A118729.P8171442715282266161

namespace A118729

/-- `floor(a(n-1)+n/8)` -/
def P8171442715282266161.Spec : Prop :=
  ∀ n, P8171442715282266161.a n = A118729 n

end A118729

/-! ## A118729.P12875224974590490965

`a(n-1)-floor((7-n)/8)` with `a(0)=0`
-/

namespace A118729.P12875224974590490965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ⌊(7 - (n : ℤ) : ℚ) / 8⌋

end

end A118729.P12875224974590490965

namespace A118729

/-- `a(n-1)-floor((7-n)/8)` -/
def P12875224974590490965.Spec : Prop :=
  ∀ n, P12875224974590490965.a n = A118729 n

end A118729

/-! ## A118729.P11730456039697173524

`n-7+a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=0`
-/

namespace A118729.P11730456039697173524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 0, 0, 0] fun n a =>
  (n : ℤ) - 7 + a (n - 8)

end

end A118729.P11730456039697173524

namespace A118729

/-- `n-7+a(n-8)` -/
def P11730456039697173524.Spec : Prop :=
  ∀ n, P11730456039697173524.a n = A118729 n

end A118729

/-! ## A118729.P189916111276168000

`∑[∑[char[4*n*and(1, n+1)]]]-1-n`
-/

namespace A118729.P189916111276168000
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n * Nat.land 1 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - (n : ℤ)

end

end A118729.P189916111276168000

namespace A118729

/-- `∑[∑[char[4*n*and(1, n+1)]]]-1-n` -/
def P189916111276168000.Spec : Prop :=
  ∀ n, P189916111276168000.a n = A118729 n

end A118729

/-! ## A118729.P14152553135906572259

`∑[A132292(n+1)]`
-/

namespace A118729.P14152553135906572259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118729.P14152553135906572259

namespace A118729

/-- `∑[A132292(n+1)]` -/
def P14152553135906572259.Spec : Prop :=
  ∀ n, P14152553135906572259.a n = A118729 n

end A118729

/-! ## A118729.P3984539762727828073

`∑[A248375(n)-n]`
-/

namespace A118729.P3984539762727828073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118729.P3984539762727828073

namespace A118729

/-- `∑[A248375(n)-n]` -/
def P3984539762727828073.Spec : Prop :=
  ∀ n, P3984539762727828073.a n = A118729 n

end A118729

/-! ## A118729.P11736441496068470748

`A008726(n)-(n+1)`
-/

namespace A118729.P11736441496068470748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008726 n - (n + 1 : ℤ)

end

end A118729.P11736441496068470748

namespace A118729

/-- `A008726(n)-(n+1)` -/
def P11736441496068470748.Spec : Prop :=
  ∀ n, P11736441496068470748.a n = A118729 n

end A118729

/-! ## A118729.P14351878311826162939

`(A008815(n)-(n+1))/2`
-/

namespace A118729.P14351878311826162939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008815 n - (n + 1 : ℤ) : ℚ) / 2

end

end A118729.P14351878311826162939

namespace A118729

/-- `(A008815(n)-(n+1))/2` -/
def P14351878311826162939.Spec : Prop :=
  ∀ n, P14351878311826162939.a n = (A118729 n : ℚ)

end A118729

/-! ## A118729.P13066701496193048906

`∑[A168183(n+1)-(n+1)]`
-/

namespace A118729.P13066701496193048906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118729.P13066701496193048906

namespace A118729

/-- `∑[A168183(n+1)-(n+1)]` -/
def P13066701496193048906.Spec : Prop :=
  ∀ n, P13066701496193048906.a n = A118729 n

end A118729

/-! ## A118729.P730124716822876965

`∑[ceil(sqrt(A005563(n))/8)]-n`
-/

namespace A118729.P730124716822876965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A005563 n : ℝ) / 8⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A118729.P730124716822876965

namespace A118729

/-- `∑[ceil(sqrt(A005563(n))/8)]-n` -/
def P730124716822876965.Spec : Prop :=
  ∀ n, P730124716822876965.a n = A118729 n

end A118729

/-! ## A118729.P2902229249308245722

`∑[comp[A016777(3*n)-2]]-∑[n]`
-/

namespace A118729.P2902229249308245722
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (3 * n) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A118729.P2902229249308245722

namespace A118729

/-- `∑[comp[A016777(3*n)-2]]-∑[n]` -/
def P2902229249308245722.Spec : Prop :=
  ∀ n, P2902229249308245722.a n = A118729 n

end A118729

/-! ## A118729.P11558964570956779933

`∑[comp[9*n]%(n+1)]%A317186(n)`
-/

namespace A118729.P11558964570956779933
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A317186 n)

end

end A118729.P11558964570956779933

namespace A118729

/-- `∑[comp[9*n]%(n+1)]%A317186(n)` -/
def P11558964570956779933.Spec : Prop :=
  ∀ n, P11558964570956779933.a n = A118729 n

end A118729

/-! ## A118729.P4030387376227776956

`A008815(n)-A008726(n)`
-/

namespace A118729.P4030387376227776956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008815 n - A008726 n

end

end A118729.P4030387376227776956

namespace A118729

/-- `A008815(n)-A008726(n)` -/
def P4030387376227776956.Spec : Prop :=
  ∀ n, P4030387376227776956.a n = A118729 n

end A118729

/-! ## A118729.P1600578677790483702

`∑[A110656(n+1)-1]`
-/

namespace A118729.P1600578677790483702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118729.P1600578677790483702

namespace A118729

/-- `∑[A110656(n+1)-1]` -/
def P1600578677790483702.Spec : Prop :=
  ∀ n, P1600578677790483702.a n = A118729 n

end A118729

/-! ## A118729.P16656525072856602758

`∑[n]-A033440(n+1)`
-/

namespace A118729.P16656525072856602758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A033440 (n + 1)

end

end A118729.P16656525072856602758

namespace A118729

/-- `∑[n]-A033440(n+1)` -/
def P16656525072856602758.Spec : Prop :=
  ∀ n, P16656525072856602758.a n = A118729 n

end A118729

/-! ## A118729.P7912218755122840040

`A357745(n+2)-(n+2)`
-/

namespace A118729.P7912218755122840040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357745 (n + 2) - (n + 2 : ℤ)

end

end A118729.P7912218755122840040

namespace A118729

/-- `A357745(n+2)-(n+2)` -/
def P7912218755122840040.Spec : Prop :=
  ∀ n, P7912218755122840040.a n = A118729 n

end A118729

/-! ## A118729.P13804795677313351127

`A002620(n+1)+A002620(n)-A033440(n+1)`
-/

namespace A118729.P13804795677313351127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (A002620 n - A033440 (n + 1))

end

end A118729.P13804795677313351127

namespace A118729

/-- `A002620(n+1)+A002620(n)-A033440(n+1)` -/
def P13804795677313351127.Spec : Prop :=
  ∀ n, P13804795677313351127.a n = A118729 n

end A118729

/-! ## A118729.P4179758570732284515

`Δ[A122056(n+1)]-(n+1)`
-/

namespace A118729.P4179758570732284515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A118729.P4179758570732284515

namespace A118729

/-- `Δ[A122056(n+1)]-(n+1)` -/
def P4179758570732284515.Spec : Prop :=
  ∀ n, P4179758570732284515.a n = A118729 n

end A118729

/-!
# A118730: Numbers k such that 2^k has even digit sum.

The programs for A118730, the canonical program `A118730.P11127108990415150483` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118730 has offset 1).

The definition of A118730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9980 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118730.P11127108990415150483

`comp[A118731(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A118730

/-- `comp[A118731(n+1)]` -/
def P11127108990415150483.Spec : Prop :=
  ∀ n, (P11127108990415150483.a n : ℤ) = A118730 (n + 1)

theorem P11127108990415150483.correct : P11127108990415150483.Spec := by
  intro n
  simp only [A118730, Nat.add_sub_cancel]

end A118730

/-! ## A118730.P2399005197283058266

`eq[0, A071906(n)]`
-/

namespace A118730.P2399005197283058266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118730.P2399005197283058266

namespace A118730

/-- `eq[0, A071906(n)]` -/
def P2399005197283058266.Spec : Prop :=
  ∀ n, (P2399005197283058266.a n : ℤ) = A118730 (n + 1)

end A118730

/-! ## A118730.P8065744364408739938

`eq[0, A001370(n)%2/2]`
-/

namespace A118730.P8065744364408739938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A001370 n) 2 : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A118730.P8065744364408739938

namespace A118730

/-- `eq[0, A001370(n)%2/2]` -/
def P8065744364408739938.Spec : Prop :=
  ∀ n, (P8065744364408739938.a n : ℤ) = A118730 (n + 1)

end A118730

/-! ## A118730.P9359909452078624433

`record[(n+1)*(1-A071906(n+1))]`
-/

namespace A118730.P9359909452078624433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A071906 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118730.P9359909452078624433

namespace A118730

/-- `record[(n+1)*(1-A071906(n+1))]` -/
def P9359909452078624433.Spec : Prop :=
  ∀ n, P9359909452078624433.a n = A118730 (n + 1)

end A118730

/-! ## A118730.P315530883206586498

`eq[0, A000035(A055254(n))]`
-/

namespace A118730.P315530883206586498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A055254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118730.P315530883206586498

namespace A118730

/-- `eq[0, A000035(A055254(n))]` -/
def P315530883206586498.Spec : Prop :=
  ∀ n, (P315530883206586498.a n : ℤ) = A118730 (n + 1)

end A118730

/-! ## A118730.P13017213494033606207

`eq[1, A019426(A001370(n))]`
-/

namespace A118730.P13017213494033606207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A001370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118730.P13017213494033606207

namespace A118730

/-- `eq[1, A019426(A001370(n))]` -/
def P13017213494033606207.Spec : Prop :=
  ∀ n, (P13017213494033606207.a n : ℤ) = A118730 (n + 1)

end A118730

/-! ## A118730.P3765653923864233035

`lt[A071906(n), A329684(n)]`
-/

namespace A118730.P3765653923864233035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A118730.P3765653923864233035

namespace A118730

/-- `lt[A071906(n), A329684(n)]` -/
def P3765653923864233035.Spec : Prop :=
  ∀ n, (P3765653923864233035.a n : ℤ) = A118730 (n + 1)

end A118730

/-! ## A118730.P18018381996742233499

`lt[A071906(n), acot(A071903(n))]`
-/

namespace A118730.P18018381996742233499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A071903 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A118730.P18018381996742233499

namespace A118730

/-- `lt[A071906(n), acot(A071903(n))]` -/
def P18018381996742233499.Spec : Prop :=
  ∀ n, (P18018381996742233499.a n : ℤ) = A118730 (n + 1)

end A118730

/-! ## A118730.P14212817120251441116

`lt[A071906(n), acot(A071922(n))]`
-/

namespace A118730.P14212817120251441116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A071922 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A118730.P14212817120251441116

namespace A118730

/-- `lt[A071906(n), acot(A071922(n))]` -/
def P14212817120251441116.Spec : Prop :=
  ∀ n, (P14212817120251441116.a n : ℤ) = A118730 (n + 1)

end A118730

/-! ## A118730.P18328003467488348785

`lt[A007814(A055254(n)+1), 1]`
-/

namespace A118730.P18328003467488348785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A055254 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A118730.P18328003467488348785

namespace A118730

/-- `lt[A007814(A055254(n)+1), 1]` -/
def P18328003467488348785.Spec : Prop :=
  ∀ n, (P18328003467488348785.a n : ℤ) = A118730 (n + 1)

end A118730

/-! ## A118730.P2282290554709205353

`lt[2, A020639(A001370(n)+1)]`
-/

namespace A118730.P2282290554709205353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001370 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118730.P2282290554709205353

namespace A118730

/-- `lt[2, A020639(A001370(n)+1)]` -/
def P2282290554709205353.Spec : Prop :=
  ∀ n, (P2282290554709205353.a n : ℤ) = A118730 (n + 1)

end A118730

/-! ## A118730.P7486606839900473072

`eq[2, A020639(A055254(n)+2)]`
-/

namespace A118730.P7486606839900473072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A055254 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118730.P7486606839900473072

namespace A118730

/-- `eq[2, A020639(A055254(n)+2)]` -/
def P7486606839900473072.Spec : Prop :=
  ∀ n, (P7486606839900473072.a n : ℤ) = A118730 (n + 1)

end A118730

/-! ## A118730.P8676408608553767379

`lt[1, A001370(val(A001370(n), 2))]`
-/

namespace A118730.P8676408608553767379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (SequenceMachineLib.valuation (A001370 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118730.P8676408608553767379

namespace A118730

/-- `lt[1, A001370(val(A001370(n), 2))]` -/
def P8676408608553767379.Spec : Prop :=
  ∀ n, (P8676408608553767379.a n : ℤ) = A118730 (n + 1)

end A118730

/-! ## A118730.P5153511988809243570

`lt[A071906(n), abs(A071936(n+1))]`
-/

namespace A118730.P5153511988809243570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071936 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A118730.P5153511988809243570

namespace A118730

/-- `lt[A071906(n), abs(A071936(n+1))]` -/
def P5153511988809243570.Spec : Prop :=
  ∀ n, (P5153511988809243570.a n : ℤ) = A118730 (n + 1)

end A118730

/-! ## A118730.P11305868976030452288

`eq[0, A035457(A001370(n)+1)]`
-/

namespace A118730.P11305868976030452288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A001370 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118730.P11305868976030452288

namespace A118730

/-- `eq[0, A035457(A001370(n)+1)]` -/
def P11305868976030452288.Spec : Prop :=
  ∀ n, (P11305868976030452288.a n : ℤ) = A118730 (n + 1)

end A118730

/-! ## A118730.P16707756653448879782

`eq[1, A000035(A001370(n)+1)]`
-/

namespace A118730.P16707756653448879782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001370 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118730.P16707756653448879782

namespace A118730

/-- `eq[1, A000035(A001370(n)+1)]` -/
def P16707756653448879782.Spec : Prop :=
  ∀ n, (P16707756653448879782.a n : ℤ) = A118730 (n + 1)

end A118730

/-! ## A118730.P15554630637284898047

`eq[1, A001511(A001370(n)+1)]`
-/

namespace A118730.P15554630637284898047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001370 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118730.P15554630637284898047

namespace A118730

/-- `eq[1, A001511(A001370(n)+1)]` -/
def P15554630637284898047.Spec : Prop :=
  ∀ n, (P15554630637284898047.a n : ℤ) = A118730 (n + 1)

end A118730

/-! ## A118730.P13698282220142222586

`eq[1, A038712(A001370(n)+1)]`
-/

namespace A118730.P13698282220142222586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A001370 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118730.P13698282220142222586

namespace A118730

/-- `eq[1, A038712(A001370(n)+1)]` -/
def P13698282220142222586.Spec : Prop :=
  ∀ n, (P13698282220142222586.a n : ℤ) = A118730 (n + 1)

end A118730

/-! ## A118730.P7329172208056758875

`eq[A000035(2*n), A000035(A001370(n))]`
-/

namespace A118730.P7329172208056758875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118730.P7329172208056758875

namespace A118730

/-- `eq[A000035(2*n), A000035(A001370(n))]` -/
def P7329172208056758875.Spec : Prop :=
  ∀ n, (P7329172208056758875.a n : ℤ) = A118730 (n + 1)

end A118730

/-! ## A118730.P2995491250893989805

`lt[A071906(n), A071936(A071934(2*n+5))]`
-/

namespace A118730.P2995491250893989805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (A071934 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A118730.P2995491250893989805

namespace A118730

/-- `lt[A071906(n), A071936(A071934(2*n+5))]` -/
def P2995491250893989805.Spec : Prop :=
  ∀ n, (P2995491250893989805.a n : ℤ) = A118730 (n + 1)

end A118730

/-!
# A118731: Numbers k such that 2^k has odd digit sum.

The programs for A118731, the canonical program `A118731.P11117200247568763651` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118731 has offset 1).

The definition of A118731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118731.P12109727328513034929

`comp[A118730(n+1)]`
-/

namespace A118731.P12109727328513034929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118731.P12109727328513034929

namespace A118731

/-- `comp[A118730(n+1)]` -/
def P12109727328513034929.Spec : Prop :=
  ∀ n, (P12109727328513034929.a n : ℤ) = A118731 (n + 1)

end A118731

/-! ## A118731.P11117200247568763651

`lt[0, A071906(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A118731

/-- `lt[0, A071906(n)]` -/
def P11117200247568763651.Spec : Prop :=
  ∀ n, (P11117200247568763651.a n : ℤ) = A118731 (n + 1)

theorem P11117200247568763651.correct : P11117200247568763651.Spec := by
  intro n
  simp only [A118731, Nat.add_sub_cancel]

end A118731

/-! ## A118731.P1757339083408769591

`lt[0, A001370(n)%2]`
-/

namespace A118731.P1757339083408769591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001370 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118731.P1757339083408769591

namespace A118731

/-- `lt[0, A001370(n)%2]` -/
def P1757339083408769591.Spec : Prop :=
  ∀ n, (P1757339083408769591.a n : ℤ) = A118731 (n + 1)

theorem P1757339083408769591.correct : P1757339083408769591.Spec := by
  intro n
  simp only [A118731, Nat.add_sub_cancel, A118731.P1757339083408769591.f1, A118731.P1757339083408769591.f2, A118731.P1757339083408769591.a, A118731.P11117200247568763651.f1, A118731.P11117200247568763651.f2, A118731.P11117200247568763651.a, A001370, A001370.P13283257347180374488.a, A071906, A071906.P15390665811675828273.a, A000079, A000079.P10855139691139572931.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A118731

/-! ## A118731.P17059398489858586151

`eq[1, A055254(n)%2]`
-/

namespace A118731.P17059398489858586151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055254 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118731.P17059398489858586151

namespace A118731

/-- `eq[1, A055254(n)%2]` -/
def P17059398489858586151.Spec : Prop :=
  ∀ n, (P17059398489858586151.a n : ℤ) = A118731 (n + 1)

end A118731

/-! ## A118731.P2421331289300154622

`record[(n+1)*A071906(n+1)]`
-/

namespace A118731.P2421331289300154622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A071906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118731.P2421331289300154622

namespace A118731

/-- `record[(n+1)*A071906(n+1)]` -/
def P2421331289300154622.Spec : Prop :=
  ∀ n, P2421331289300154622.a n = A118731 (n + 1)

end A118731

/-! ## A118731.P11107289730874525743

`eq[1, A000035(A055254(n))]`
-/

namespace A118731.P11107289730874525743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A055254 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118731.P11107289730874525743

namespace A118731

/-- `eq[1, A000035(A055254(n))]` -/
def P11107289730874525743.Spec : Prop :=
  ∀ n, (P11107289730874525743.a n : ℤ) = A118731 (n + 1)

end A118731

/-! ## A118731.P17569138865343212519

`filter[A089389(2*(n+1)), A071906(#)]`
-/

namespace A118731.P17569138865343212519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089389 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071906 (f1 j).toNat = 1) n)

end

end A118731.P17569138865343212519

namespace A118731

/-- `filter[A089389(2*(n+1)), A071906(#)]` -/
def P17569138865343212519.Spec : Prop :=
  ∀ n, P17569138865343212519.a n = A118731 (n + 1)

end A118731

/-! ## A118731.P9862999486204834319

`eq[A071906(n), A329684(n)]`
-/

namespace A118731.P9862999486204834319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118731.P9862999486204834319

namespace A118731

/-- `eq[A071906(n), A329684(n)]` -/
def P9862999486204834319.Spec : Prop :=
  ∀ n, (P9862999486204834319.a n : ℤ) = A118731 (n + 1)

end A118731

/-! ## A118731.P17242361446384566534

`eq[A071906(n), A373565(n)]`
-/

namespace A118731.P17242361446384566534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118731.P17242361446384566534

namespace A118731

/-- `eq[A071906(n), A373565(n)]` -/
def P17242361446384566534.Spec : Prop :=
  ∀ n, (P17242361446384566534.a n : ℤ) = A118731 (n + 1)

end A118731

/-! ## A118731.P11316557184493721518

`eq[A071906(n), A121273(n+1)]`
-/

namespace A118731.P11316557184493721518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118731.P11316557184493721518

namespace A118731

/-- `eq[A071906(n), A121273(n+1)]` -/
def P11316557184493721518.Spec : Prop :=
  ∀ n, (P11316557184493721518.a n : ℤ) = A118731 (n + 1)

end A118731

/-! ## A118731.P1821918654652914311

`eq[A071906(n), A171624(n+1)]`
-/

namespace A118731.P1821918654652914311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171624 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118731.P1821918654652914311

namespace A118731

/-- `eq[A071906(n), A171624(n+1)]` -/
def P1821918654652914311.Spec : Prop :=
  ∀ n, (P1821918654652914311.a n : ℤ) = A118731 (n + 1)

end A118731

/-! ## A118731.P6124028125267574962

`eq[1, A000035(A001370(n))]`
-/

namespace A118731.P6124028125267574962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001370 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118731.P6124028125267574962

namespace A118731

/-- `eq[1, A000035(A001370(n))]` -/
def P6124028125267574962.Spec : Prop :=
  ∀ n, (P6124028125267574962.a n : ℤ) = A118731 (n + 1)

end A118731

/-! ## A118731.P7053012468141058619

`filter[A092942(n), A071906(#)]`
-/

namespace A118731.P7053012468141058619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071906 (f1 j).toNat = 1) n)

end

end A118731.P7053012468141058619

namespace A118731

/-- `filter[A092942(n), A071906(#)]` -/
def P7053012468141058619.Spec : Prop :=
  ∀ n, P7053012468141058619.a n = A118731 (n + 1)

end A118731

/-! ## A118731.P10357245722319522346

`filter[A057979(n), A071906(#)]`
-/

namespace A118731.P10357245722319522346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071906 (f1 j).toNat = 1) n)

end

end A118731.P10357245722319522346

namespace A118731

/-- `filter[A057979(n), A071906(#)]` -/
def P10357245722319522346.Spec : Prop :=
  ∀ n, P10357245722319522346.a n = A118731 (n + 1)

end A118731

/-! ## A118731.P9661441808161789424

`filter[A179820(n), A071906(#)]`
-/

namespace A118731.P9661441808161789424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071906 (f1 j).toNat = 1) n)

end

end A118731.P9661441808161789424

namespace A118731

/-- `filter[A179820(n), A071906(#)]` -/
def P9661441808161789424.Spec : Prop :=
  ∀ n, P9661441808161789424.a n = A118731 (n + 1)

end A118731

/-! ## A118731.P15161600949240208272

`filter[A267182(2*n), A071906(#)]`
-/

namespace A118731.P15161600949240208272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071906 (f1 j).toNat = 1) n)

end

end A118731.P15161600949240208272

namespace A118731

/-- `filter[A267182(2*n), A071906(#)]` -/
def P15161600949240208272.Spec : Prop :=
  ∀ n, P15161600949240208272.a n = A118731 (n + 1)

end A118731

/-! ## A118731.P18380738923807068251

`filter[A174571(2*n), A071906(#)]`
-/

namespace A118731.P18380738923807068251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071906 (f1 j).toNat = 1) n)

end

end A118731.P18380738923807068251

namespace A118731

/-- `filter[A174571(2*n), A071906(#)]` -/
def P18380738923807068251.Spec : Prop :=
  ∀ n, P18380738923807068251.a n = A118731 (n + 1)

end A118731

/-! ## A118731.P11302563606425963592

`filter[A267183(3*n), A071906(#)]`
-/

namespace A118731.P11302563606425963592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267183 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071906 (f1 j).toNat = 1) n)

end

end A118731.P11302563606425963592

namespace A118731

/-- `filter[A267183(3*n), A071906(#)]` -/
def P11302563606425963592.Spec : Prop :=
  ∀ n, P11302563606425963592.a n = A118731 (n + 1)

end A118731

/-!
# A118732: Numbers k such that 3^k has odd digit sum.

The programs for A118732, the canonical program `A118732.P12855575041181134329` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118732 has offset 1).

The definition of A118732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118732.P13811124058381876472

`comp[A118733(n+1)]`
-/

namespace A118732.P13811124058381876472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118732.P13811124058381876472

namespace A118732

/-- `comp[A118733(n+1)]` -/
def P13811124058381876472.Spec : Prop :=
  ∀ n, (P13811124058381876472.a n : ℤ) = A118732 (n + 1)

end A118732

/-! ## A118732.P12855575041181134329

`eq[1, gcd(2, A004166(n))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A118732

/-- `eq[1, gcd(2, A004166(n))]` -/
def P12855575041181134329.Spec : Prop :=
  ∀ n, (P12855575041181134329.a n : ℤ) = A118732 (n + 1)

theorem P12855575041181134329.correct : P12855575041181134329.Spec := by
  intro n
  simp only [A118732, Nat.add_sub_cancel]

end A118732

/-! ## A118732.P233758472110121512

`eq[1, and(1, A055256(n))]`
-/

namespace A118732.P233758472110121512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055256 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118732.P233758472110121512

namespace A118732

/-- `eq[1, and(1, A055256(n))]` -/
def P233758472110121512.Spec : Prop :=
  ∀ n, (P233758472110121512.a n : ℤ) = A118732 (n + 1)

end A118732

/-! ## A118732.P16561851939564422552

`eq[0, A079979(A004166(n))]`
-/

namespace A118732.P16561851939564422552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A004166 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118732.P16561851939564422552

namespace A118732

/-- `eq[0, A079979(A004166(n))]` -/
def P16561851939564422552.Spec : Prop :=
  ∀ n, (P16561851939564422552.a n : ℤ) = A118732 (n + 1)

end A118732

/-! ## A118732.P4182014835433929302

`eq[1, A001511(A055256(n))]`
-/

namespace A118732.P4182014835433929302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A055256 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118732.P4182014835433929302

namespace A118732

/-- `eq[1, A001511(A055256(n))]` -/
def P4182014835433929302.Spec : Prop :=
  ∀ n, (P4182014835433929302.a n : ℤ) = A118732 (n + 1)

end A118732

/-! ## A118732.P3079468483490991114

`eq[1, A040001(A292995(n))]`
-/

namespace A118732.P3079468483490991114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A292995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118732.P3079468483490991114

namespace A118732

/-- `eq[1, A040001(A292995(n))]` -/
def P3079468483490991114.Spec : Prop :=
  ∀ n, (P3079468483490991114.a n : ℤ) = A118732 (n + 1)

end A118732

/-! ## A118732.P12357060193835174740

`eq[2, A020639(A004166(n)+1)]`
-/

namespace A118732.P12357060193835174740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004166 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118732.P12357060193835174740

namespace A118732

/-- `eq[2, A020639(A004166(n)+1)]` -/
def P12357060193835174740.Spec : Prop :=
  ∀ n, (P12357060193835174740.a n : ℤ) = A118732 (n + 1)

end A118732

/-! ## A118732.P1616885073830321121

`eq[2, A020639(A055256(n)+1)]`
-/

namespace A118732.P1616885073830321121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A055256 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118732.P1616885073830321121

namespace A118732

/-- `eq[2, A020639(A055256(n)+1)]` -/
def P1616885073830321121.Spec : Prop :=
  ∀ n, (P1616885073830321121.a n : ℤ) = A118732 (n + 1)

end A118732

/-! ## A118732.P10575809854810460727

`eq[1, A038712(A055256(n)+2)]`
-/

namespace A118732.P10575809854810460727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A055256 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118732.P10575809854810460727

namespace A118732

/-- `eq[1, A038712(A055256(n)+2)]` -/
def P10575809854810460727.Spec : Prop :=
  ∀ n, (P10575809854810460727.a n : ℤ) = A118732 (n + 1)

end A118732

/-! ## A118732.P11037678293340009315

`eq[2, A010673(A055256(n)+2)]`
-/

namespace A118732.P11037678293340009315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A055256 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118732.P11037678293340009315

namespace A118732

/-- `eq[2, A010673(A055256(n)+2)]` -/
def P11037678293340009315.Spec : Prop :=
  ∀ n, (P11037678293340009315.a n : ℤ) = A118732 (n + 1)

end A118732

/-! ## A118732.P17667512077289941822

`lt[2, A020639(A004166(n)+2)]`
-/

namespace A118732.P17667512077289941822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004166 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118732.P17667512077289941822

namespace A118732

/-- `lt[2, A020639(A004166(n)+2)]` -/
def P17667512077289941822.Spec : Prop :=
  ∀ n, (P17667512077289941822.a n : ℤ) = A118732 (n + 1)

end A118732

/-! ## A118732.P10739370135366259684

`eq[1, A000007(val(A004166(n), 2))]`
-/

namespace A118732.P10739370135366259684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A004166 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118732.P10739370135366259684

namespace A118732

/-- `eq[1, A000007(val(A004166(n), 2))]` -/
def P10739370135366259684.Spec : Prop :=
  ∀ n, (P10739370135366259684.a n : ℤ) = A118732 (n + 1)

end A118732

/-! ## A118732.P13008972552810085752

`eq[1, A000079(val(A004166(n), 2))]`
-/

namespace A118732.P13008972552810085752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A004166 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118732.P13008972552810085752

namespace A118732

/-- `eq[1, A000079(val(A004166(n), 2))]` -/
def P13008972552810085752.Spec : Prop :=
  ∀ n, (P13008972552810085752.a n : ℤ) = A118732 (n + 1)

end A118732

/-! ## A118732.P16007948972013370993

`eq[1, A001370(val(A004166(n), 2))]`
-/

namespace A118732.P16007948972013370993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (SequenceMachineLib.valuation (A004166 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118732.P16007948972013370993

namespace A118732

/-- `eq[1, A001370(val(A004166(n), 2))]` -/
def P16007948972013370993.Spec : Prop :=
  ∀ n, (P16007948972013370993.a n : ℤ) = A118732 (n + 1)

end A118732

/-! ## A118732.P7415732680416684998

`eq[1, A004166(val(A004166(n), 2))]`
-/

namespace A118732.P7415732680416684998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004166 (SequenceMachineLib.valuation (A004166 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118732.P7415732680416684998

namespace A118732

/-- `eq[1, A004166(val(A004166(n), 2))]` -/
def P7415732680416684998.Spec : Prop :=
  ∀ n, (P7415732680416684998.a n : ℤ) = A118732 (n + 1)

end A118732

/-! ## A118732.P5870598053564562911

`eq[1, A019426(A004166(n)+1)]`
-/

namespace A118732.P5870598053564562911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A004166 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118732.P5870598053564562911

namespace A118732

/-- `eq[1, A019426(A004166(n)+1)]` -/
def P5870598053564562911.Spec : Prop :=
  ∀ n, (P5870598053564562911.a n : ℤ) = A118732 (n + 1)

end A118732

/-! ## A118732.P2882474354771179957

`eq[1, A019432(A004166(n)+1)]`
-/

namespace A118732.P2882474354771179957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A004166 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118732.P2882474354771179957

namespace A118732

/-- `eq[1, A019432(A004166(n)+1)]` -/
def P2882474354771179957.Spec : Prop :=
  ∀ n, (P2882474354771179957.a n : ℤ) = A118732 (n + 1)

end A118732

/-! ## A118732.P11313788415757933988

`eq[A019432(A004166(n)-1), A057427(n)]`
-/

namespace A118732.P11313788415757933988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019432 (A004166 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118732.P11313788415757933988

namespace A118732

/-- `eq[A019432(A004166(n)-1), A057427(n)]` -/
def P11313788415757933988.Spec : Prop :=
  ∀ n, (P11313788415757933988.a n : ℤ) = A118732 (n + 1)

end A118732

/-! ## A118732.P5622604544051606731

`eq[1, A000035(A004166(n)+2)]`
-/

namespace A118732.P5622604544051606731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004166 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118732.P5622604544051606731

namespace A118732

/-- `eq[1, A000035(A004166(n)+2)]` -/
def P5622604544051606731.Spec : Prop :=
  ∀ n, (P5622604544051606731.a n : ℤ) = A118732 (n + 1)

end A118732

/-! ## A118732.P12465265499348852078

`eq[1, A001511(A004166(n)+2)]`
-/

namespace A118732.P12465265499348852078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A004166 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118732.P12465265499348852078

namespace A118732

/-- `eq[1, A001511(A004166(n)+2)]` -/
def P12465265499348852078.Spec : Prop :=
  ∀ n, (P12465265499348852078.a n : ℤ) = A118732 (n + 1)

end A118732

/-!
# A118733: Numbers k such that 3^k has even digit sum.

The programs for A118733, the canonical program `A118733.P8706932286287417508` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118733 has offset 1).

The definition of A118733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118733.P7042517334723961056

`comp[A118732(n+1)]`
-/

namespace A118733.P7042517334723961056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118733.P7042517334723961056

namespace A118733

/-- `comp[A118732(n+1)]` -/
def P7042517334723961056.Spec : Prop :=
  ∀ n, (P7042517334723961056.a n : ℤ) = A118733 (n + 1)

end A118733

/-! ## A118733.P8706932286287417508

`lt[A004166(n)%2, 1]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A118733

/-- `lt[A004166(n)%2, 1]` -/
def P8706932286287417508.Spec : Prop :=
  ∀ n, (P8706932286287417508.a n : ℤ) = A118733 (n + 1)

theorem P8706932286287417508.correct : P8706932286287417508.Spec := by
  intro n
  simp only [A118733, Nat.add_sub_cancel]

end A118733

/-! ## A118733.P12738363821652548773

`eq[0, and(1, A055256(n))]`
-/

namespace A118733.P12738363821652548773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055256 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118733.P12738363821652548773

namespace A118733

/-- `eq[0, and(1, A055256(n))]` -/
def P12738363821652548773.Spec : Prop :=
  ∀ n, (P12738363821652548773.a n : ℤ) = A118733 (n + 1)

end A118733

/-! ## A118733.P4262694851253284189

`eq[2, A020639(A055256(n))]`
-/

namespace A118733.P4262694851253284189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A055256 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118733.P4262694851253284189

namespace A118733

/-- `eq[2, A020639(A055256(n))]` -/
def P4262694851253284189.Spec : Prop :=
  ∀ n, (P4262694851253284189.a n : ℤ) = A118733 (n + 1)

end A118733

/-! ## A118733.P17000296579935053898

`eq[0, A000035(A004166(n))]`
-/

namespace A118733.P17000296579935053898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004166 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118733.P17000296579935053898

namespace A118733

/-- `eq[0, A000035(A004166(n))]` -/
def P17000296579935053898.Spec : Prop :=
  ∀ n, (P17000296579935053898.a n : ℤ) = A118733 (n + 1)

end A118733

/-! ## A118733.P14930331502559357831

`eq[1, A001511(A004166(n)+1)]`
-/

namespace A118733.P14930331502559357831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A004166 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118733.P14930331502559357831

namespace A118733

/-- `eq[1, A001511(A004166(n)+1)]` -/
def P14930331502559357831.Spec : Prop :=
  ∀ n, (P14930331502559357831.a n : ℤ) = A118733 (n + 1)

end A118733

/-! ## A118733.P15011047622538545662

`eq[0, A097331(A292995(n))]`
-/

namespace A118733.P15011047622538545662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (A292995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118733.P15011047622538545662

namespace A118733

/-- `eq[0, A097331(A292995(n))]` -/
def P15011047622538545662.Spec : Prop :=
  ∀ n, (P15011047622538545662.a n : ℤ) = A118733 (n + 1)

end A118733

/-! ## A118733.P2325589022349325630

`lt[∑{digits}[3^n, #]%2, 1]`
-/

namespace A118733.P2325589022349325630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum % 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A118733.P2325589022349325630

namespace A118733

/-- `lt[∑{digits}[3^n, #]%2, 1]` -/
def P2325589022349325630.Spec : Prop :=
  ∀ n, (P2325589022349325630.a n : ℤ) = A118733 (n + 1)

end A118733

/-! ## A118733.P6300502457090487871

`lt[1-val(∑{digits}[3^n, #]^4, 2), 1]`
-/

namespace A118733.P6300502457090487871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 4) 2 : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A118733.P6300502457090487871

namespace A118733

/-- `lt[1-val(∑{digits}[3^n, #]^4, 2), 1]` -/
def P6300502457090487871.Spec : Prop :=
  ∀ n, (P6300502457090487871.a n : ℤ) = A118733 (n + 1)

end A118733

/-! ## A118733.P5464928563198689249

`lt[1, A260738(∑{digits}[3^n, #]+1)]`
-/

namespace A118733.P5464928563198689249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260738 (((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118733.P5464928563198689249

namespace A118733

/-- `lt[1, A260738(∑{digits}[3^n, #]+1)]` -/
def P5464928563198689249.Spec : Prop :=
  ∀ n, (P5464928563198689249.a n : ℤ) = A118733 (n + 1)

end A118733

/-!
# A118734: Numbers k such that 2^k and 3^k have even digit sum.

The programs for A118734, the canonical program `A118734.P5567306300113816848` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118734 has offset 1).

The definition of A118734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5026 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118734.P5567306300113816848

`∩[A118730(n+1), A118733(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A118734

/-- `∩[A118730(n+1), A118733(n+1)]` -/
def P5567306300113816848.Spec : Prop :=
  ∀ n, (P5567306300113816848.a n : ℤ) = A118734 (n + 1)

theorem P5567306300113816848.correct : P5567306300113816848.Spec := by
  intro n
  simp only [A118734, Nat.add_sub_cancel]

end A118734

/-! ## A118734.P1609007264432657536

`lt[A071906(n), char[A118733(n+1)]]`
-/

namespace A118734.P1609007264432657536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118733 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A118734.P1609007264432657536

namespace A118734

/-- `lt[A071906(n), char[A118733(n+1)]]` -/
def P1609007264432657536.Spec : Prop :=
  ∀ n, (P1609007264432657536.a n : ℤ) = A118734 (n + 1)

end A118734

/-! ## A118734.P1405043144272947817

`eq[A010673(A055256(n)), A071906(n)]`
-/

namespace A118734.P1405043144272947817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A055256 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118734.P1405043144272947817

namespace A118734

/-- `eq[A010673(A055256(n)), A071906(n)]` -/
def P1405043144272947817.Spec : Prop :=
  ∀ n, (P1405043144272947817.a n : ℤ) = A118734 (n + 1)

end A118734

/-! ## A118734.P17388323406796270392

`lt[A071906(n), A079979(A004166(n))]`
-/

namespace A118734.P17388323406796270392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079979 (A004166 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A118734.P17388323406796270392

namespace A118734

/-- `lt[A071906(n), A079979(A004166(n))]` -/
def P17388323406796270392.Spec : Prop :=
  ∀ n, (P17388323406796270392.a n : ℤ) = A118734 (n + 1)

end A118734

/-! ## A118734.P6434163340693188609

`eq[-A071906(n), A210067(A292995(n))]`
-/

namespace A118734.P6434163340693188609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A071906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210067 (A292995 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118734.P6434163340693188609

namespace A118734

/-- `eq[-A071906(n), A210067(A292995(n))]` -/
def P6434163340693188609.Spec : Prop :=
  ∀ n, (P6434163340693188609.a n : ℤ) = A118734 (n + 1)

end A118734

/-!
# A118735: Numbers k such that 2^k and 3^k have odd digit sum.

The programs for A118735, the canonical program `A118735.P16887616288475277364` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118735 has offset 1).

The definition of A118735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5061 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118735.P16887616288475277364

`∩[A118731(n+1), A118732(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A118735

/-- `∩[A118731(n+1), A118732(n+1)]` -/
def P16887616288475277364.Spec : Prop :=
  ∀ n, (P16887616288475277364.a n : ℤ) = A118735 (n + 1)

theorem P16887616288475277364.correct : P16887616288475277364.Spec := by
  intro n
  simp only [A118735, Nat.add_sub_cancel]

end A118735

/-! ## A118735.P618783542156509055

`filter[A118732(n+1), A071906(#)]`
-/

namespace A118735.P618783542156509055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071906 (f1 j).toNat = 1) n)

end

end A118735.P618783542156509055

namespace A118735

/-- `filter[A118732(n+1), A071906(#)]` -/
def P618783542156509055.Spec : Prop :=
  ∀ n, P618783542156509055.a n = A118735 (n + 1)

end A118735

/-! ## A118735.P7884657231725628760

`eq[A001511(A055256(n)), A071906(n)]`
-/

namespace A118735.P7884657231725628760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A055256 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118735.P7884657231725628760

namespace A118735

/-- `eq[A001511(A055256(n)), A071906(n)]` -/
def P7884657231725628760.Spec : Prop :=
  ∀ n, (P7884657231725628760.a n : ℤ) = A118735 (n + 1)

end A118735

/-! ## A118735.P9760199329707954346

`eq[A040001(A292995(n)), A071906(n)]`
-/

namespace A118735.P9760199329707954346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A292995 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118735.P9760199329707954346

namespace A118735

/-- `eq[A040001(A292995(n)), A071906(n)]` -/
def P9760199329707954346.Spec : Prop :=
  ∀ n, (P9760199329707954346.a n : ℤ) = A118735 (n + 1)

end A118735

/-! ## A118735.P4517259391476435259

`eq[2, A010673(A055256(n)*A071906(n))]`
-/

namespace A118735.P4517259391476435259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A055256 n * A071906 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118735.P4517259391476435259

namespace A118735

/-- `eq[2, A010673(A055256(n)*A071906(n))]` -/
def P4517259391476435259.Spec : Prop :=
  ∀ n, (P4517259391476435259.a n : ℤ) = A118735 (n + 1)

end A118735

/-! ## A118735.P5774131831391194777

`eq[A001511(A004166(n)), A071906(n)]`
-/

namespace A118735.P5774131831391194777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A004166 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118735.P5774131831391194777

namespace A118735

/-- `eq[A001511(A004166(n)), A071906(n)]` -/
def P5774131831391194777.Spec : Prop :=
  ∀ n, (P5774131831391194777.a n : ℤ) = A118735 (n + 1)

end A118735

/-! ## A118735.P12408556726648738177

`eq[2, A010673(A004166(n)*A071906(n))]`
-/

namespace A118735.P12408556726648738177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A004166 n * A071906 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118735.P12408556726648738177

namespace A118735

/-- `eq[2, A010673(A004166(n)*A071906(n))]` -/
def P12408556726648738177.Spec : Prop :=
  ∀ n, (P12408556726648738177.a n : ℤ) = A118735 (n + 1)

end A118735

/-! ## A118735.P5716738983770284364

`eq[A038712(A055256(n)²), A071906(n)]`
-/

namespace A118735.P5716738983770284364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A055256 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071906 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A118735.P5716738983770284364

namespace A118735

/-- `eq[A038712(A055256(n)²), A071906(n)]` -/
def P5716738983770284364.Spec : Prop :=
  ∀ n, (P5716738983770284364.a n : ℤ) = A118735 (n + 1)

end A118735

/-!
# A118736: Number of zeros in binary expansion of 3^n.

The programs for A118736, there is no canonical definition to state claims against.
-/

/-! ## A118736.P1106323207165693804

`A020914(n)-A011754(n)`
-/

namespace A118736.P1106323207165693804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n - A011754 n

end

end A118736.P1106323207165693804

/-! ## A118736.P4125559924515213377

`A056576(n)+1-A011754(n)`
-/

namespace A118736.P4125559924515213377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n + (1 - A011754 n)

end

end A118736.P4125559924515213377

/-! ## A118736.P12967383500791205864

`A122437(n+1)-(A011754(n)+n)`
-/

namespace A118736.P12967383500791205864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122437 (n + 1) - (A011754 n + (n : ℤ))

end

end A118736.P12967383500791205864

/-! ## A118736.P17223569862196326284

`(A204399(n)-A011754(n))%(n+1)`
-/

namespace A118736.P17223569862196326284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204399 n - A011754 n) (n + 1 : ℤ)

end

end A118736.P17223569862196326284

/-! ## A118736.P1004664929068824730

`A056576(n)-A023443(A011754(n))`
-/

namespace A118736.P1004664929068824730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n - A023443 (A011754 n).toNat

end

end A118736.P1004664929068824730

/-! ## A118736.P13471938563793719417

`A204399(n)-A011754(n)%A008778(n)`
-/

namespace A118736.P13471938563793719417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 n - Int.tmod (A011754 n) (A008778 n)

end

end A118736.P13471938563793719417

/-! ## A118736.P17746513520409122378

`A204399(A028310(n))-A011754(A028310(n))`
-/

namespace A118736.P17746513520409122378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 (A028310 n).toNat - A011754 (A028310 n).toNat

end

end A118736.P17746513520409122378

/-! ## A118736.P3084807568160508391

`A028310(A204399(n))-A011754(n)`
-/

namespace A118736.P3084807568160508391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A204399 n).toNat - A011754 n

end

end A118736.P3084807568160508391

/-! ## A118736.P16198583959696652727

`∑{digits}[A004656(n), 1-#]`
-/

namespace A118736.P16198583959696652727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A118736.P16198583959696652727

/-!
# A118737: Number of zeros in binary expansion of 5^n.

The programs for A118737, there is no canonical definition to state claims against.
-/

/-! ## A118737.P6997542594697495225

`A123384(n)-(A118738(n)+n)`
-/

namespace A118737.P6997542594697495225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n - (A118738 n + (n : ℤ))

end

end A118737.P6997542594697495225

/-! ## A118737.P13859042474007022140

`A123384(n)%((A118738(n)+n)%A016897(n))`
-/

namespace A118737.P13859042474007022140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123384 n) (Int.tmod (A118738 n + (n : ℤ)) (A016897 n))

end

end A118737.P13859042474007022140

/-! ## A118737.P13082549786979960292

`A210435(A067497(n))-A118738(n)`
-/

namespace A118737.P13082549786979960292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 (A067497 n).toNat - A118738 n

end

end A118737.P13082549786979960292

/-! ## A118737.P1252254924424487824

`A210435(A123384(n))-A118738(n)`
-/

namespace A118737.P1252254924424487824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 (A123384 n).toNat - A118738 n

end

end A118737.P1252254924424487824

/-! ## A118737.P11523201537578866403

`A123384(A233583(n+1))%(A118738(n)+n)`
-/

namespace A118737.P11523201537578866403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123384 (A233583 (n + 1)).toNat) (A118738 n + (n : ℤ))

end

end A118737.P11523201537578866403

/-! ## A118737.P11912519090704745

`A210435(A067497(n))+A218451(n)-A011557(n)`
-/

namespace A118737.P11912519090704745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 (A067497 n).toNat + (A218451 n - A011557 n)

end

end A118737.P11912519090704745

/-! ## A118737.P13350804031576986379

`A210435(A123384(n))+A218451(n)-A011557(n)`
-/

namespace A118737.P13350804031576986379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 (A123384 n).toNat + (A218451 n - A011557 n)

end

end A118737.P13350804031576986379

/-!
# A118738: Number of ones in binary expansion of 5^n.

The programs for A118738, there is no canonical definition to state claims against.
-/

/-! ## A118738.P3427197298627928430

`A123384(n)-(A118737(n)+n)`
-/

namespace A118738.P3427197298627928430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n - (A118737 n + (n : ℤ))

end

end A118738.P3427197298627928430

/-! ## A118738.P3326939086018339188

`A210435(ceil(n*log2(10)))-A118737(n)`
-/

namespace A118738.P3326939086018339188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 ⌈(n : ℝ) * Real.logb 2 (10 : ℝ)⌉.toNat - A118737 n

end

end A118738.P3326939086018339188

/-! ## A118738.P17879825219575745490

`A011557(n)-A218451(n)`
-/

namespace A118738.P17879825219575745490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n - A218451 n

end

end A118738.P17879825219575745490

/-! ## A118738.P10734605045063938492

`A000351(n)-A218451(n)%A000351(n)`
-/

namespace A118738.P10734605045063938492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - Int.tmod (A218451 n) (A000351 n)

end

end A118738.P10734605045063938492

/-! ## A118738.P9881583564077683735

`Δ[A002275(n)]-A218451(n)`
-/

namespace A118738.P9881583564077683735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A218451 n

end

end A118738.P9881583564077683735

/-!
# A118741: Primes for which the weight as defined in A117078 is 7.

The programs for A118741, there is no canonical definition to state claims against.
-/

/-! ## A118741.P8111098397557025405

`∪[A118359(n+1), A119593(n+1)]`
-/

namespace A118741.P8111098397557025405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118741.P8111098397557025405

/-! ## A118741.P2028712806915882959

`A045319(eq[7, A117078(n+1)])`
-/

namespace A118741.P2028712806915882959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118741.P2028712806915882959

/-! ## A118741.P15874149683197672729

`A045344(eq[7, A117078(n+1)])`
-/

namespace A118741.P15874149683197672729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118741.P15874149683197672729

/-! ## A118741.P3233656067267105569

`A065091(eq[7, A117078(n+1)])`
-/

namespace A118741.P3233656067267105569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A118741.P3233656067267105569

/-! ## A118741.P10115357649364873648

`A000040(eq[7, A117078(n+1)]+1)`
-/

namespace A118741.P10115357649364873648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A118741.P10115357649364873648

/-!
# A118742: Numbers n for which the expression n!/(n+1) is an integer.

The programs for A118742, the canonical program `A118742.P10284877803935730397` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118742 has offset 0).

The definition of A118742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118742.P15058980122333175825

`comp[A068499(n+1)]`
-/

namespace A118742.P15058980122333175825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118742.P15058980122333175825

namespace A118742

/-- `comp[A068499(n+1)]` -/
def P15058980122333175825.Spec : Prop :=
  ∀ n, (P15058980122333175825.a n : ℤ) = A118742 n

end A118742

/-! ## A118742.P10582094403893944846

`A056653(n+1)-1`
-/

namespace A118742.P10582094403893944846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1) - 1

end

end A118742.P10582094403893944846

namespace A118742

/-- `A056653(n+1)-1` -/
def P10582094403893944846.Spec : Prop :=
  ∀ n, P10582094403893944846.a n = A118742 n

theorem P10582094403893944846.correct : P10582094403893944846.Spec := by
  intro n
  simp only [A118742, Nat.add_sub_cancel, A118742.P10582094403893944846.a, A118742.P10284877803935730397.f1, A118742.P10284877803935730397.f2, A118742.P10284877803935730397.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A056653, A056653.P4720559690192011754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A118742

/-! ## A118742.P11369805855896198302

`comp[A175787(n+1)-1]`
-/

namespace A118742.P11369805855896198302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118742.P11369805855896198302

namespace A118742

/-- `comp[A175787(n+1)-1]` -/
def P11369805855896198302.Spec : Prop :=
  ∀ n, (P11369805855896198302.a n : ℤ) = A118742 n

end A118742

/-! ## A118742.P12981612829060252201

`comp[A046022(n+2)-1]`
-/

namespace A118742.P12981612829060252201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118742.P12981612829060252201

namespace A118742

/-- `comp[A046022(n+2)-1]` -/
def P12981612829060252201.Spec : Prop :=
  ∀ n, (P12981612829060252201.a n : ℤ) = A118742 n

end A118742

/-! ## A118742.P5315027338432796546

`comp[xor(1, A182986(n+1))]`
-/

namespace A118742.P5315027338432796546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A182986 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118742.P5315027338432796546

namespace A118742

/-- `comp[xor(1, A182986(n+1))]` -/
def P5315027338432796546.Spec : Prop :=
  ∀ n, (P5315027338432796546.a n : ℤ) = A118742 n

end A118742

/-! ## A118742.P15542818366117989140

`lt[n, A072480(n+1)²]`
-/

namespace A118742.P15542818366117989140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118742.P15542818366117989140

namespace A118742

/-- `lt[n, A072480(n+1)²]` -/
def P15542818366117989140.Spec : Prop :=
  ∀ n, (P15542818366117989140.a n : ℤ) = A118742 n

end A118742

/-! ## A118742.P10284877803935730397

`lt[A001414(n+1), n+1]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A118742

/-- `lt[A001414(n+1), n+1]` -/
def P10284877803935730397.Spec : Prop :=
  ∀ n, (P10284877803935730397.a n : ℤ) = A118742 n

theorem P10284877803935730397.correct : P10284877803935730397.Spec := by
  intro n
  simp only [A118742]

end A118742

/-! ## A118742.P13306764615909494025

`A057427(n)*A072668(n+1)`
-/

namespace A118742.P13306764615909494025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A072668 (n + 1)

end

end A118742.P13306764615909494025

namespace A118742

/-- `A057427(n)*A072668(n+1)` -/
def P13306764615909494025.Spec : Prop :=
  ∀ n, P13306764615909494025.a n = A118742 n

end A118742

/-! ## A118742.P16663302108185634153

`A072668(n+1)%A000132(n)`
-/

namespace A118742.P16663302108185634153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072668 (n + 1)) (A000132 n)

end

end A118742.P16663302108185634153

namespace A118742

/-- `A072668(n+1)%A000132(n)` -/
def P16663302108185634153.Spec : Prop :=
  ∀ n, P16663302108185634153.a n = A118742 n

end A118742

/-! ## A118742.P17432539734937655338

`and(A057428(n), A072668(n+1))`
-/

namespace A118742.P17432539734937655338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A072668 (n + 1))

end

end A118742.P17432539734937655338

namespace A118742

/-- `and(A057428(n), A072668(n+1))` -/
def P17432539734937655338.Spec : Prop :=
  ∀ n, P17432539734937655338.a n = A118742 n

end A118742

/-! ## A118742.P299067648156419949

`∪[A068780(n+1), A062545(n)]`
-/

namespace A118742.P299067648156419949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118742.P299067648156419949

namespace A118742

/-- `∪[A068780(n+1), A062545(n)]` -/
def P299067648156419949.Spec : Prop :=
  ∀ n, (P299067648156419949.a n : ℤ) = A118742 n

end A118742

/-! ## A118742.P6668862467270767355

`∪[A254671(n+1), A062545(n)]`
-/

namespace A118742.P6668862467270767355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118742.P6668862467270767355

namespace A118742

/-- `∪[A254671(n+1), A062545(n)]` -/
def P6668862467270767355.Spec : Prop :=
  ∀ n, (P6668862467270767355.a n : ℤ) = A118742 n

end A118742

/-! ## A118742.P10990995339195469520

`∪[A309355(n+1), A062545(n)]`
-/

namespace A118742.P10990995339195469520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118742.P10990995339195469520

namespace A118742

/-- `∪[A309355(n+1), A062545(n)]` -/
def P10990995339195469520.Spec : Prop :=
  ∀ n, (P10990995339195469520.a n : ℤ) = A118742 n

end A118742

/-! ## A118742.P184041273765982892

`A002808(n+1)-(5-A123932(n))`
-/

namespace A118742.P184041273765982892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - (5 - A123932 n)

end

end A118742.P184041273765982892

namespace A118742

/-- `A002808(n+1)-(5-A123932(n))` -/
def P184041273765982892.Spec : Prop :=
  ∀ n, P184041273765982892.a n = A118742 n

end A118742

/-! ## A118742.P2669324230044034342

`lt[1, A342085(n+1)]*A057427(n)`
-/

namespace A118742.P2669324230044034342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) * A057427 n

end

end A118742.P2669324230044034342

namespace A118742

/-- `lt[1, A342085(n+1)]*A057427(n)` -/
def P2669324230044034342.Spec : Prop :=
  ∀ n, P2669324230044034342.a n = A118742 n

end A118742

/-! ## A118742.P14916394434495367308

`(A018252(n+2)-A057427(n))*A057427(n)`
-/

namespace A118742.P14916394434495367308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 2) - A057427 n) * A057427 n

end

end A118742.P14916394434495367308

namespace A118742

/-- `(A018252(n+2)-A057427(n))*A057427(n)` -/
def P14916394434495367308.Spec : Prop :=
  ∀ n, P14916394434495367308.a n = A118742 n

end A118742

/-! ## A118742.P11542238625976238261

`(A141468(n+2)-A060462(n+1))*A072668(n+1)`
-/

namespace A118742.P11542238625976238261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141468 (n + 2) - A060462 (n + 1)) * A072668 (n + 1)

end

end A118742.P11542238625976238261

namespace A118742

/-- `(A141468(n+2)-A060462(n+1))*A072668(n+1)` -/
def P11542238625976238261.Spec : Prop :=
  ∀ n, P11542238625976238261.a n = A118742 n

end A118742

/-! ## A118742.P5378318936540647279

`A166460(A065475(n+1))`
-/

namespace A118742.P5378318936540647279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166460 (A065475 (n + 1)).toNat

end

end A118742.P5378318936540647279

namespace A118742

/-- `A166460(A065475(n+1))` -/
def P5378318936540647279.Spec : Prop :=
  ∀ n, P5378318936540647279.a n = A118742 n

end A118742

/-! ## A118742.P455439407819727681

`A166460(A181440(n+2))`
-/

namespace A118742.P455439407819727681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166460 (A181440 (n + 2)).toNat

end

end A118742.P455439407819727681

namespace A118742

/-- `A166460(A181440(n+2))` -/
def P455439407819727681.Spec : Prop :=
  ∀ n, P455439407819727681.a n = A118742 n

end A118742

/-! ## A118742.P13681681979010226279

`A166460(A184985(n+2))`
-/

namespace A118742.P13681681979010226279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166460 (A184985 (n + 2)).toNat

end

end A118742.P13681681979010226279

namespace A118742

/-- `A166460(A184985(n+2))` -/
def P13681681979010226279.Spec : Prop :=
  ∀ n, P13681681979010226279.a n = A118742 n

end A118742

/-!
# A118743: Primes of the form k!! + k + 1.

The programs for A118743, there is no canonical definition to state claims against.
-/

/-! ## A118743.P7308565126372577834

`A202264(a(n-1))` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A118743.P7308565126372577834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  A202264 (a (n - 1)).toNat

end

end A118743.P7308565126372577834

/-! ## A118743.P8182414945621658731

`A095415(A119330(n))`
-/

namespace A118743.P8182414945621658731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095415 (A119330 n).toNat

end

end A118743.P8182414945621658731

/-!
# A118744: Primes of the form k!! + k - 1.

The programs for A118744, there is no canonical definition to state claims against.
-/

/-! ## A118744.P4741984253482705514

`p?[A128882(n)+n]`
-/

namespace A118744.P4741984253482705514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128882 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118744.P4741984253482705514

/-!
# A118745: Triangle of coefficients of polynomials giving the n-anacci constants.

The programs for A118745, there is no canonical definition to state claims against.
-/

/-! ## A118745.P8148846810878371291

`A185782(n+1)%A130297(n+1)-1`
-/

namespace A118745.P8148846810878371291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185782 (n + 1)) (A130297 (n + 1)) - 1

end

end A118745.P8148846810878371291

/-! ## A118745.P11389867886358711149

`A099375(n)-A004736(comp[∑[n-2]]+1)`
-/

namespace A118745.P11389867886358711149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n - A004736 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A118745.P11389867886358711149

/-! ## A118745.P11084237352662005753

`A004273(A004736(n+1))-A004736(A181133(n+1))`
-/

namespace A118745.P11084237352662005753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004736 (n + 1)).toNat - A004736 (A181133 (n + 1)).toNat

end

end A118745.P11084237352662005753

/-! ## A118745.P8830568565572782773

`A000005(A262616(n))-A004736(A181133(n+1))`
-/

namespace A118745.P8830568565572782773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A262616 n).toNat - A004736 (A181133 (n + 1)).toNat

end

end A118745.P8830568565572782773

/-! ## A118745.P16768107027650480630

`A280827(gcd(A038288(n), A191347(n)))`
-/

namespace A118745.P16768107027650480630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280827 (Int.gcd (A038288 n) (A191347 n))

end

end A118745.P16768107027650480630

/-!
# A118747: a(n) = product[k=1..n] P(k), where P(k) is the largest prime <= 2*k. a(n) = product[k=1..n] A060308(k).

The programs for A118747, there is no canonical definition to state claims against.
-/

/-! ## A118747.P2288309328939098621

`∏[A060308(n+1)]`
-/

namespace A118747.P2288309328939098621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118747.P2288309328939098621

/-! ## A118747.P1464995754712449425

`∏[A020482(n+2)]`
-/

namespace A118747.P1464995754712449425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118747.P1464995754712449425

/-! ## A118747.P5515121552463934458

`∏[p?[A136548(2*n+1)]]`
-/

namespace A118747.P5515121552463934458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118747.P5515121552463934458

/-! ## A118747.P1727920760566738756

`2*∏[A136548(2*(n+1))]`
-/

namespace A118747.P1727920760566738756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A118747.P1727920760566738756

/-!
# A118748: a(n) = Product_{k=1..n} P(k), where P(k) is the smallest prime >= 2*k.

The programs for A118748, there is no canonical definition to state claims against.
-/

/-! ## A118748.P8976711221933088411

`∏[A151800(comp[2*n])]`
-/

namespace A118748.P8976711221933088411
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118748.P8976711221933088411

/-! ## A118748.P17429557049167818156

`∏[A007918(2*(n+1))]`
-/

namespace A118748.P17429557049167818156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118748.P17429557049167818156

/-! ## A118748.P6416319898443387103

`∏[A159477(2*(n+1))]`
-/

namespace A118748.P6416319898443387103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118748.P6416319898443387103

/-! ## A118748.P17876989708577826319

`a(n-1)*A060264(n+1)` with `a(0)=2`
-/

namespace A118748.P17876989708577826319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A060264 (n + 1)

end

end A118748.P17876989708577826319

/-! ## A118748.P11145427527669801644

`a(n-1)*A151800(2*n+1)` with `a(0)=2`
-/

namespace A118748.P11145427527669801644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A151800 (2 * n + 1)

end

end A118748.P11145427527669801644

/-!
# A118749: Largest prime <= 3*n.

The programs for A118749, the canonical program `A118749.P4807308167964345133` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118749 has offset 1).

The definition of A118749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A118749.P4807308167964345133

`A007917(A008585(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A118749

/-- `A007917(A008585(n+1))` -/
def P4807308167964345133.Spec : Prop :=
  ∀ n, P4807308167964345133.a n = A118749 (n + 1)

theorem P4807308167964345133.correct : P4807308167964345133.Spec := by
  intro n
  simp only [A118749, Nat.add_sub_cancel]

end A118749

/-! ## A118749.P16412792794913377790

`or(1, A081259(n+1))`
-/

namespace A118749.P16412792794913377790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A081259 (n + 1))

end

end A118749.P16412792794913377790

namespace A118749

/-- `or(1, A081259(n+1))` -/
def P16412792794913377790.Spec : Prop :=
  ∀ n, P16412792794913377790.a n = A118749 (n + 1)

end A118749

/-! ## A118749.P4005742103580817481

`A000040(A100637(n))`
-/

namespace A118749.P4005742103580817481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A100637 n).toNat

end

end A118749.P4005742103580817481

namespace A118749

/-- `A000040(A100637(n))` -/
def P4005742103580817481.Spec : Prop :=
  ∀ n, P4005742103580817481.a n = A118749 (n + 1)

end A118749

/-! ## A118749.P7797009703176477204

`A000040(A000720(3*(n+1)))`
-/

namespace A118749.P7797009703176477204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (3 * (n + 1))).toNat

end

end A118749.P7797009703176477204

namespace A118749

/-- `A000040(A000720(3*(n+1)))` -/
def P7797009703176477204.Spec : Prop :=
  ∀ n, P7797009703176477204.a n = A118749 (n + 1)

end A118749

/-! ## A118749.P14974790378362492731

`A006005(A000720(3*n+3))`
-/

namespace A118749.P14974790378362492731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A000720 (3 * n + 3)).toNat

end

end A118749.P14974790378362492731

namespace A118749

/-- `A006005(A000720(3*n+3))` -/
def P14974790378362492731.Spec : Prop :=
  ∀ n, P14974790378362492731.a n = A118749 (n + 1)

end A118749

/-! ## A118749.P8669853829225056657

`A081259(n+1)+A000007(n)`
-/

namespace A118749.P8669853829225056657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081259 (n + 1) + A000007 n

end

end A118749.P8669853829225056657

namespace A118749

/-- `A081259(n+1)+A000007(n)` -/
def P8669853829225056657.Spec : Prop :=
  ∀ n, P8669853829225056657.a n = A118749 (n + 1)

theorem P8669853829225056657.correct : P8669853829225056657.Spec := by
  intro n
  simp only [A118749, Nat.add_sub_cancel, A118749.P8669853829225056657.a, A118749.P4807308167964345133.a, A000007, A000007.P6599383543502402472.a, A007917, A007917.P1836476777957611455.a, A008585, A008585.P13732812384316341435.a, A081259, A081259.P16989465696639261266.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A118749

/-! ## A118749.P16307118108965836836

`A000040(A074990(n+1)+A000720(n+1))`
-/

namespace A118749.P16307118108965836836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A074990 (n + 1) + A000720 (n + 1)).toNat

end

end A118749.P16307118108965836836

namespace A118749

/-- `A000040(A074990(n+1)+A000720(n+1))` -/
def P16307118108965836836.Spec : Prop :=
  ∀ n, P16307118108965836836.a n = A118749 (n + 1)

end A118749

/-! ## A118749.P4761320938675123806

`A060265(A055562(n))`
-/

namespace A118749.P4761320938675123806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (A055562 n).toNat

end

end A118749.P4761320938675123806

namespace A118749

/-- `A060265(A055562(n))` -/
def P4761320938675123806.Spec : Prop :=
  ∀ n, P4761320938675123806.a n = A118749 (n + 1)

end A118749

/-! ## A118749.P4424331166456248081

`A060265(A007494(n+1))`
-/

namespace A118749.P4424331166456248081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (A007494 (n + 1)).toNat

end

end A118749.P4424331166456248081

namespace A118749

/-- `A060265(A007494(n+1))` -/
def P4424331166456248081.Spec : Prop :=
  ∀ n, P4424331166456248081.a n = A118749 (n + 1)

end A118749

/-! ## A118749.P11078957905672756891

`A060265(A189725(n+1))`
-/

namespace A118749.P11078957905672756891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (A189725 (n + 1)).toNat

end

end A118749.P11078957905672756891

namespace A118749

/-- `A060265(A189725(n+1))` -/
def P11078957905672756891.Spec : Prop :=
  ∀ n, P11078957905672756891.a n = A118749 (n + 1)

end A118749

/-! ## A118749.P15272458379529874001

`A060308(∑[gcd(2, n)])`
-/

namespace A118749.P15272458379529874001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A118749.P15272458379529874001

namespace A118749

/-- `A060308(∑[gcd(2, n)])` -/
def P15272458379529874001.Spec : Prop :=
  ∀ n, P15272458379529874001.a n = A118749 (n + 1)

end A118749

/-! ## A118749.P10552451722477933382

`A060308(A032766(n)+2)`
-/

namespace A118749.P10552451722477933382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A032766 n + 2).toNat

end

end A118749.P10552451722477933382

namespace A118749

/-- `A060308(A032766(n)+2)` -/
def P10552451722477933382.Spec : Prop :=
  ∀ n, P10552451722477933382.a n = A118749 (n + 1)

end A118749

/-! ## A118749.P21777668239027853

`A060308(A001651(n+1)+1)`
-/

namespace A118749.P21777668239027853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A001651 (n + 1) + 1).toNat

end

end A118749.P21777668239027853

namespace A118749

/-- `A060308(A001651(n+1)+1)` -/
def P21777668239027853.Spec : Prop :=
  ∀ n, P21777668239027853.a n = A118749 (n + 1)

end A118749

/-! ## A118749.P15210960587142708402

`A060308(A008619(n)+1+n)`
-/

namespace A118749.P15210960587142708402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A008619 n + 1 + (n : ℤ)).toNat

end

end A118749.P15210960587142708402

namespace A118749

/-- `A060308(A008619(n)+1+n)` -/
def P15210960587142708402.Spec : Prop :=
  ∀ n, P15210960587142708402.a n = A118749 (n + 1)

end A118749

/-! ## A118749.P12669736478289436201

`A060308(A080513(n+1)+n)`
-/

namespace A118749.P12669736478289436201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A080513 (n + 1) + (n : ℤ)).toNat

end

end A118749.P12669736478289436201

namespace A118749

/-- `A060308(A080513(n+1)+n)` -/
def P12669736478289436201.Spec : Prop :=
  ∀ n, P12669736478289436201.a n = A118749 (n + 1)

end A118749

/-! ## A118749.P10739350873828262870

`A060308(A004526(n)+2+n)`
-/

namespace A118749.P10739350873828262870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A004526 n + 2 + (n : ℤ)).toNat

end

end A118749.P10739350873828262870

namespace A118749

/-- `A060308(A004526(n)+2+n)` -/
def P10739350873828262870.Spec : Prop :=
  ∀ n, P10739350873828262870.a n = A118749 (n + 1)

end A118749

/-! ## A118749.P9567713442271187439

`A000040(A099802(comp[2*n-3+n]+1))`
-/

namespace A118749.P9567713442271187439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 3 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099802 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)).toNat

end

end A118749.P9567713442271187439

namespace A118749

/-- `A000040(A099802(comp[2*n-3+n]+1))` -/
def P9567713442271187439.Spec : Prop :=
  ∀ n, P9567713442271187439.a n = A118749 (n + 1)

end A118749

/-! ## A118749.P11677507541786141888

`A064614(A081259(n+1))`
-/

namespace A118749.P11677507541786141888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A081259 (n + 1)).toNat

end

end A118749.P11677507541786141888

namespace A118749

/-- `A064614(A081259(n+1))` -/
def P11677507541786141888.Spec : Prop :=
  ∀ n, P11677507541786141888.a n = A118749 (n + 1)

end A118749

/-! ## A118749.P3097576794958098

`A007917(or(1, 3*n+2))`
-/

namespace A118749.P3097576794958098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (Nat.lor 1 (3 * n + 2))

end

end A118749.P3097576794958098

namespace A118749

/-- `A007917(or(1, 3*n+2))` -/
def P3097576794958098.Spec : Prop :=
  ∀ n, P3097576794958098.a n = A118749 (n + 1)

end A118749

/-!
# A118750: a(n) = product[k=1..n] P(k), where P(k) is the largest prime <= 3*k. a(n) = product[k=1..n] A118749(k).

The programs for A118750, there is no canonical definition to state claims against.
-/

/-! ## A118750.P17644460590769582592

`∏[A118749(n+1)]`
-/

namespace A118750.P17644460590769582592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118750.P17644460590769582592

/-! ## A118750.P8995271654434811238

`∏[A055377(6*(n+1))]`
-/

namespace A118750.P8995271654434811238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (6 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118750.P8995271654434811238

/-! ## A118750.P5870784414681017331

`∏[or(1, A081259(n+1))]`
-/

namespace A118750.P5870784414681017331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A081259 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118750.P5870784414681017331

/-! ## A118750.P18323455051889113129

`∏[A000040(A100637(n))]`
-/

namespace A118750.P18323455051889113129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A100637 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118750.P18323455051889113129

/-!
# A118751: Smallest prime >= 3*n.

The programs for A118751, there is no canonical definition to state claims against.
-/

/-! ## A118751.P7456688021476747988

`A151800(3*n)`
-/

namespace A118751.P7456688021476747988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (3 * n)

end

end A118751.P7456688021476747988

/-! ## A118751.P18028764195978064721

`A007918(3*n+1)`
-/

namespace A118751.P18028764195978064721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (3 * n + 1)

end

end A118751.P18028764195978064721

/-! ## A118751.P17052248934065812738

`A308052(6*n+1)`
-/

namespace A118751.P17052248934065812738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (6 * n + 1)

end

end A118751.P17052248934065812738

/-! ## A118751.P510646113257363490

`A060264(ceil(n/2)+n)`
-/

namespace A118751.P510646113257363490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (⌈(n : ℚ) / 2⌉ + (n : ℤ)).toNat

end

end A118751.P510646113257363490

/-! ## A118751.P6925317405792490298

`A013632(3*n)+3*n`
-/

namespace A118751.P6925317405792490298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (3 * n) + (3 * n : ℤ)

end

end A118751.P6925317405792490298

/-! ## A118751.P4846188572362398857

`A013634(3*n)-3*n`
-/

namespace A118751.P4846188572362398857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (3 * n) - (3 * n : ℤ)

end

end A118751.P4846188572362398857

/-! ## A118751.P5453632017080718343

`A138757(A016933(n))`
-/

namespace A118751.P5453632017080718343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138757 (A016933 n).toNat

end

end A118751.P5453632017080718343

/-! ## A118751.P14022674111940762721

`A138757(A008588(n)+2)`
-/

namespace A118751.P14022674111940762721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138757 (A008588 n + 2).toNat

end

end A118751.P14022674111940762721

/-! ## A118751.P5972400026165114860

`A138757(2*A032766(2*n+1))`
-/

namespace A118751.P5972400026165114860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138757 (2 * A032766 (2 * n + 1)).toNat

end

end A118751.P5972400026165114860

/-! ## A118751.P8016972535623196877

`A138757(A138750(2*n+1+n))`
-/

namespace A118751.P8016972535623196877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138757 (A138750 (2 * n + 1 + n)).toNat

end

end A118751.P8016972535623196877

/-!
# A118752: a(n) = product[k=0..n] P(k), where P(k) is the smallest prime > 3*n. a(n) = product[k=0..n] A118751(k).

The programs for A118752, there is no canonical definition to state claims against.
-/

/-! ## A118752.P10576400693327757119

`∏[A118751(n)]`
-/

namespace A118752.P10576400693327757119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118752.P10576400693327757119

/-! ## A118752.P18334174056552187556

`∏[A151800(3*n)]`
-/

namespace A118752.P18334174056552187556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118752.P18334174056552187556

/-! ## A118752.P15054014884998711790

`2*∏[A159477(3*n+1)]`
-/

namespace A118752.P15054014884998711790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A118752.P15054014884998711790

/-! ## A118752.P8163189171195504132

`∏[A007918(A016777(n))]`
-/

namespace A118752.P8163189171195504132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118752.P8163189171195504132

/-! ## A118752.P6023345338255871305

`∏[A060264(A007494(n))]`
-/

namespace A118752.P6023345338255871305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (A007494 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118752.P6023345338255871305

/-! ## A118752.P327516507784994486

`∏[A007918(A180713(n))]`
-/

namespace A118752.P327516507784994486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A180713 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118752.P327516507784994486

/-! ## A118752.P11603677759962494037

`∏[A007918(Δ[A000326(n)])]`
-/

namespace A118752.P11603677759962494037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118752.P11603677759962494037

/-! ## A118752.P4552900057763736590

`∏[A007918(record[A131431(n)])]`
-/

namespace A118752.P4552900057763736590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131431 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118752.P4552900057763736590

/-! ## A118752.P10734366039417318024

`∏[p?[A151800(A008486(n))]]`
-/

namespace A118752.P10734366039417318024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A008486 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118752.P10734366039417318024

/-! ## A118752.P13665290038904034675

`∏[A007918(A016789(n)-1)]`
-/

namespace A118752.P13665290038904034675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A016789 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A118752.P13665290038904034675

/-!
# A118753: First prime after 4n. Smallest prime >= 4*n. Bisection of A060264.

The programs for A118753, the canonical program `A118753.P10937995710031611133` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118753 has offset 0).

The definition of A118753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118753.P10937995710031611133

`A151800(4*n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A118753

/-- `A151800(4*n)` -/
def P10937995710031611133.Spec : Prop :=
  ∀ n, P10937995710031611133.a n = A118753 n

theorem P10937995710031611133.correct : P10937995710031611133.Spec := by
  intro n
  simp only [A118753]

end A118753

/-! ## A118753.P2893604841172610525

`and(-1, A151800(A008586(n)))`
-/

namespace A118753.P2893604841172610525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A151800 (A008586 n).toNat)

end

end A118753.P2893604841172610525

namespace A118753

/-- `and(-1, A151800(A008586(n)))` -/
def P2893604841172610525.Spec : Prop :=
  ∀ n, P2893604841172610525.a n = A118753 n

end A118753

/-! ## A118753.P17590285672469528854

`p?[A151800(A008486(n)+n)]`
-/

namespace A118753.P17590285672469528854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A008486 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118753.P17590285672469528854

namespace A118753

/-- `p?[A151800(A008486(n)+n)]` -/
def P17590285672469528854.Spec : Prop :=
  ∀ n, P17590285672469528854.a n = A118753 n

end A118753

/-! ## A118753.P2912851942461210376

`A000040(A000720(abs(1-n)+3*n)+1)`
-/

namespace A118753.P2912851942461210376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (|1 - (n : ℤ)| + (3 * n : ℤ)).toNat + 1).toNat

end

end A118753.P2912851942461210376

namespace A118753

/-- `A000040(A000720(abs(1-n)+3*n)+1)` -/
def P2912851942461210376.Spec : Prop :=
  ∀ n, P2912851942461210376.a n = A118753 n

end A118753

/-! ## A118753.P14040515761231185215

`A151800(A047470(n+1))%A212668(n+1)`
-/

namespace A118753.P14040515761231185215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 (A047470 (n + 1)).toNat) (A212668 (n + 1))

end

end A118753.P14040515761231185215

namespace A118753

/-- `A151800(A047470(n+1))%A212668(n+1)` -/
def P14040515761231185215.Spec : Prop :=
  ∀ n, P14040515761231185215.a n = A118753 n

end A118753

/-! ## A118753.P4021659844355324394

`A060264(2*n)`
-/

namespace A118753.P4021659844355324394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (2 * n)

end

end A118753.P4021659844355324394

namespace A118753

/-- `A060264(2*n)` -/
def P4021659844355324394.Spec : Prop :=
  ∀ n, P4021659844355324394.a n = A118753 n

theorem P4021659844355324394.correct : P4021659844355324394.Spec := by
  intro n
  simp only [A118753, Nat.add_sub_cancel, A118753.P4021659844355324394.a, A118753.P10937995710031611133.a, A060264, A060264.P4854329161308632623.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A118753

/-! ## A118753.P15044447668622990078

`A060264(A005843(n))/A001222(A060264(n))`
-/

namespace A118753.P15044447668622990078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060264 (A005843 n).toNat : ℚ) / (A001222 (A060264 n).toNat : ℚ)

end

end A118753.P15044447668622990078

namespace A118753

/-- `A060264(A005843(n))/A001222(A060264(n))` -/
def P15044447668622990078.Spec : Prop :=
  ∀ n, P15044447668622990078.a n = (A118753 n : ℚ)

end A118753

/-! ## A118753.P15564044762178380170

`A007918(4*n)`
-/

namespace A118753.P15564044762178380170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (4 * n)

end

end A118753.P15564044762178380170

namespace A118753

/-- `A007918(4*n)` -/
def P15564044762178380170.Spec : Prop :=
  ∀ n, P15564044762178380170.a n = A118753 n

end A118753

/-! ## A118753.P4155635586929946973

`A007920(4*n)+4*n`
-/

namespace A118753.P4155635586929946973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (4 * n) + (4 * n : ℤ)

end

end A118753.P4155635586929946973

namespace A118753

/-- `A007920(4*n)+4*n` -/
def P4155635586929946973.Spec : Prop :=
  ∀ n, P4155635586929946973.a n = A118753 n

end A118753

/-! ## A118753.P14917124205475662303

`A008574(n)+A007920(A008574(n))`
-/

namespace A118753.P14917124205475662303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A007920 (A008574 n).toNat

end

end A118753.P14917124205475662303

namespace A118753

/-- `A008574(n)+A007920(A008574(n))` -/
def P14917124205475662303.Spec : Prop :=
  ∀ n, P14917124205475662303.a n = A118753 n

end A118753

/-! ## A118753.P4357129853155287705

`A013632(4*n)+4*n`
-/

namespace A118753.P4357129853155287705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (4 * n) + (4 * n : ℤ)

end

end A118753.P4357129853155287705

namespace A118753

/-- `A013632(4*n)+4*n` -/
def P4357129853155287705.Spec : Prop :=
  ∀ n, P4357129853155287705.a n = A118753 n

end A118753

/-! ## A118753.P9058069939436525806

`A000040(A230980(4*n)+1)`
-/

namespace A118753.P9058069939436525806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230980 (4 * n) + 1).toNat

end

end A118753.P9058069939436525806

namespace A118753

/-- `A000040(A230980(4*n)+1)` -/
def P9058069939436525806.Spec : Prop :=
  ∀ n, P9058069939436525806.a n = A118753 n

end A118753

/-! ## A118753.P1244198811900765542

`p?[A007918(record[A065262(n+1)])]`
-/

namespace A118753.P1244198811900765542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065262 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118753.P1244198811900765542

namespace A118753

/-- `p?[A007918(record[A065262(n+1)])]` -/
def P1244198811900765542.Spec : Prop :=
  ∀ n, P1244198811900765542.a n = A118753 n

end A118753

/-! ## A118753.P3759445691816410186

`A230504(A230504(A060264(n+n)))`
-/

namespace A118753.P3759445691816410186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230504 (A230504 (A060264 (n + n)).toNat).toNat

end

end A118753.P3759445691816410186

namespace A118753

/-- `A230504(A230504(A060264(n+n)))` -/
def P3759445691816410186.Spec : Prop :=
  ∀ n, P3759445691816410186.a n = A118753 n

end A118753

/-! ## A118753.P4271625330429456252

`A308052(A022144(n))`
-/

namespace A118753.P4271625330429456252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A022144 n).toNat

end

end A118753.P4271625330429456252

namespace A118753

/-- `A308052(A022144(n))` -/
def P4271625330429456252.Spec : Prop :=
  ∀ n, P4271625330429456252.a n = A118753 n

end A118753

/-! ## A118753.P13315156223664173324

`A308052(A133655(n))`
-/

namespace A118753.P13315156223664173324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A133655 n).toNat

end

end A118753.P13315156223664173324

namespace A118753

/-- `A308052(A133655(n))` -/
def P13315156223664173324.Spec : Prop :=
  ∀ n, P13315156223664173324.a n = A118753 n

end A118753

/-! ## A118753.P683314422904014059

`A308052(A017077(n))`
-/

namespace A118753.P683314422904014059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A017077 n).toNat

end

end A118753.P683314422904014059

namespace A118753

/-- `A308052(A017077(n))` -/
def P683314422904014059.Spec : Prop :=
  ∀ n, P683314422904014059.a n = A118753 n

end A118753

/-! ## A118753.P12281112111832584743

`A308052(A017089(n))`
-/

namespace A118753.P12281112111832584743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A017089 n).toNat

end

end A118753.P12281112111832584743

namespace A118753

/-- `A308052(A017089(n))` -/
def P12281112111832584743.Spec : Prop :=
  ∀ n, P12281112111832584743.a n = A118753 n

end A118753

/-!
# A118754: Smallest prime >= 5*n.

The programs for A118754, the canonical program `A118754.P3684221222791973926` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118754 has offset 0).

The definition of A118754 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A118754.P3684221222791973926

`A007918(A008587(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A118754

/-- `A007918(A008587(n))` -/
def P3684221222791973926.Spec : Prop :=
  ∀ n, P3684221222791973926.a n = A118754 n

theorem P3684221222791973926.correct : P3684221222791973926.Spec := by
  intro n
  simp only [A118754]

end A118754

/-! ## A118754.P10685767431691094494

`A151800(and(5*n, -2))`
-/

namespace A118754.P10685767431691094494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.land (5 * n : ℤ) (-2)).toNat

end

end A118754.P10685767431691094494

namespace A118754

/-- `A151800(and(5*n, -2))` -/
def P10685767431691094494.Spec : Prop :=
  ∀ n, P10685767431691094494.a n = A118754 n

end A118754

/-! ## A118754.P7020826637320980684

`A151800(abs(1-5*n))`
-/

namespace A118754.P7020826637320980684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 |1 - (5 * n : ℤ)|.toNat

end

end A118754.P7020826637320980684

namespace A118754

/-- `A151800(abs(1-5*n))` -/
def P7020826637320980684.Spec : Prop :=
  ∀ n, P7020826637320980684.a n = A118754 n

end A118754

/-! ## A118754.P963038324346152929

`A000040(A000720(abs(1-n)+4*n)+1)`
-/

namespace A118754.P963038324346152929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (|1 - (n : ℤ)| + (4 * n : ℤ)).toNat + 1).toNat

end

end A118754.P963038324346152929

namespace A118754

/-- `A000040(A000720(abs(1-n)+4*n)+1)` -/
def P963038324346152929.Spec : Prop :=
  ∀ n, P963038324346152929.a n = A118754 n

end A118754

/-! ## A118754.P6226088491687328109

`A060264(floor(5*n/2))`
-/

namespace A118754.P6226088491687328109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 ⌊5 * ((n : ℚ) / 2)⌋.toNat

end

end A118754.P6226088491687328109

namespace A118754

/-- `A060264(floor(5*n/2))` -/
def P6226088491687328109.Spec : Prop :=
  ∀ n, P6226088491687328109.a n = A118754 n

end A118754

/-! ## A118754.P11781454989442376929

`A007918(5*n)`
-/

namespace A118754.P11781454989442376929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (5 * n)

end

end A118754.P11781454989442376929

namespace A118754

/-- `A007918(5*n)` -/
def P11781454989442376929.Spec : Prop :=
  ∀ n, P11781454989442376929.a n = A118754 n

end A118754

/-! ## A118754.P15131616987385836135

`A007920(5*n)+5*n`
-/

namespace A118754.P15131616987385836135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (5 * n) + (5 * n : ℤ)

end

end A118754.P15131616987385836135

namespace A118754

/-- `A007920(5*n)+5*n` -/
def P15131616987385836135.Spec : Prop :=
  ∀ n, P15131616987385836135.a n = A118754 n

end A118754

/-! ## A118754.P18130074132442013721

`p?[or(-(n%5), A007918(n))]`
-/

namespace A118754.P18130074132442013721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-((n % 5 : ℕ) : ℤ)) (A007918 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118754.P18130074132442013721

namespace A118754

/-- `p?[or(-(n%5), A007918(n))]` -/
def P18130074132442013721.Spec : Prop :=
  ∀ n, P18130074132442013721.a n = A118754 n

end A118754

/-!
# A118755: Smallest prime >= 6*n.

The programs for A118755, the canonical program `A118755.P17339163490274864131` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118755 has offset 0).

The definition of A118755 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A118755.P17339163490274864131

`A007918(A008588(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A118755

/-- `A007918(A008588(n))` -/
def P17339163490274864131.Spec : Prop :=
  ∀ n, P17339163490274864131.a n = A118755 n

theorem P17339163490274864131.correct : P17339163490274864131.Spec := by
  intro n
  simp only [A118755]

end A118755

/-! ## A118755.P174688809945873566

`A151800(6*n)`
-/

namespace A118755.P174688809945873566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (6 * n)

end

end A118755.P174688809945873566

namespace A118755

/-- `A151800(6*n)` -/
def P174688809945873566.Spec : Prop :=
  ∀ n, P174688809945873566.a n = A118755 n

end A118755

/-! ## A118755.P14061229805003726892

`p?[gcd(n%6, A151800(n))]`
-/

namespace A118755.P14061229805003726892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 6 : ℕ) : ℤ) (A151800 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A118755.P14061229805003726892

namespace A118755

/-- `p?[gcd(n%6, A151800(n))]` -/
def P14061229805003726892.Spec : Prop :=
  ∀ n, (P14061229805003726892.a n : ℤ) = A118755 n

end A118755

/-! ## A118755.P7383838077033220628

`A060264(3*n)`
-/

namespace A118755.P7383838077033220628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (3 * n)

end

end A118755.P7383838077033220628

namespace A118755

/-- `A060264(3*n)` -/
def P7383838077033220628.Spec : Prop :=
  ∀ n, P7383838077033220628.a n = A118755 n

end A118755

/-! ## A118755.P14025949188215274940

`A138757(3*n)`
-/

namespace A118755.P14025949188215274940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138757 (3 * n)

end

end A118755.P14025949188215274940

namespace A118755

/-- `A138757(3*n)` -/
def P14025949188215274940.Spec : Prop :=
  ∀ n, P14025949188215274940.a n = A118755 n

end A118755

/-! ## A118755.P7962506567443305002

`p?[A060264(n)+n²%3]`
-/

namespace A118755.P7962506567443305002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n + ((n ^ 2 % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118755.P7962506567443305002

namespace A118755

/-- `p?[A060264(n)+n²%3]` -/
def P7962506567443305002.Spec : Prop :=
  ∀ n, P7962506567443305002.a n = A118755 n

end A118755

/-! ## A118755.P15513648473988364697

`A007918(6*n)`
-/

namespace A118755.P15513648473988364697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (6 * n)

end

end A118755.P15513648473988364697

namespace A118755

/-- `A007918(6*n)` -/
def P15513648473988364697.Spec : Prop :=
  ∀ n, P15513648473988364697.a n = A118755 n

end A118755

/-! ## A118755.P4415383915400758379

`A007920(6*n)+6*n`
-/

namespace A118755.P4415383915400758379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (6 * n) + (6 * n : ℤ)

end

end A118755.P4415383915400758379

namespace A118755

/-- `A007920(6*n)+6*n` -/
def P4415383915400758379.Spec : Prop :=
  ∀ n, P4415383915400758379.a n = A118755 n

end A118755

/-! ## A118755.P8141340885488470821

`A013632(6*n)+6*n`
-/

namespace A118755.P8141340885488470821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (6 * n) + (6 * n : ℤ)

end

end A118755.P8141340885488470821

namespace A118755

/-- `A013632(6*n)+6*n` -/
def P8141340885488470821.Spec : Prop :=
  ∀ n, P8141340885488470821.a n = A118755 n

end A118755

/-! ## A118755.P17289481947187023781

`A013634(6*n)-6*n`
-/

namespace A118755.P17289481947187023781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (6 * n) - (6 * n : ℤ)

end

end A118755.P17289481947187023781

namespace A118755

/-- `A013634(6*n)-6*n` -/
def P17289481947187023781.Spec : Prop :=
  ∀ n, P17289481947187023781.a n = A118755 n

end A118755

/-! ## A118755.P1206869261451313589

`A308052(12*n+1)`
-/

namespace A118755.P1206869261451313589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (12 * n + 1)

end

end A118755.P1206869261451313589

namespace A118755

/-- `A308052(12*n+1)` -/
def P1206869261451313589.Spec : Prop :=
  ∀ n, P1206869261451313589.a n = A118755 n

end A118755

/-!
# A118756: a(n) = smallest prime p such that p is the home prime (cf. A037274) of exactly n natural numbers.

The programs for A118756, there is no canonical definition to state claims against.
-/

/-! ## A118756.P13697847421089154004

`record[A084318(∑[A297637(2*n+1)])]`
-/

namespace A118756.P13697847421089154004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297637 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084318 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118756.P13697847421089154004

/-!
# A118757: Permutation of the natural numbers such that the Levenshtein distance between decimal representations of successive terms is 1, and a(n+1) is the largest such m < a(n) if it exists, or else the smallest such m > a(n); a(0) = 0.

The programs for A118757, there is no canonical definition to state claims against.
-/

/-! ## A118757.P12371905773188138619

`A118758(A118759(n))`
-/

namespace A118757.P12371905773188138619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118758 (A118759 n).toNat

end

end A118757.P12371905773188138619

/-! ## A118757.P7590721620713854045

`A118759(A003100(n))`
-/

namespace A118757.P7590721620713854045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A003100 n).toNat

end

end A118757.P7590721620713854045

/-! ## A118757.P14683476230550061953

`A118759(A174025(n))`
-/

namespace A118757.P14683476230550061953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A174025 n).toNat

end

end A118757.P14683476230550061953

/-!
# A118759: A118757(A118757(n)).

The programs for A118759, the canonical program `A118759.P5411898151704407720` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118759 has offset 0).

The definition of A118759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118759.P3141245445548274888

`A118757(A118757(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A118759.P3141245445548274888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118757 (A118757 n).toNat

end

end A118759.P3141245445548274888

namespace A118759

/-- `A118757(A118757(n))` -/
def P3141245445548274888.Spec : Prop :=
  ∀ n, P3141245445548274888.a n = A118759 n

end A118759

/-! ## A118759.P5411898151704407720

`A056279(A138902(n))+n`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A118759

/-- `A056279(A138902(n))+n` -/
def P5411898151704407720.Spec : Prop :=
  ∀ n, P5411898151704407720.a n = A118759 n

theorem P5411898151704407720.correct : P5411898151704407720.Spec := by
  intro n
  simp only [A118759]

end A118759

/-! ## A118759.P4203807448862097542

`ceil(A293040(A048853(n+1))/sqrt(2))+n`
-/

namespace A118759.P4203807448862097542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293040 (A048853 (n + 1)).toNat : ℝ) / Real.sqrt (2 : ℝ)⌉ + (n : ℤ)

end

end A118759.P4203807448862097542

namespace A118759

/-- `ceil(A293040(A048853(n+1))/sqrt(2))+n` -/
def P4203807448862097542.Spec : Prop :=
  ∀ n, P4203807448862097542.a n = A118759 n

end A118759

/-!
# A118760: A118758(A118758(n)).

The programs for A118760, there is no canonical definition to state claims against.
-/

/-! ## A118760.P1968421526115710849

`A118758(A118758(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A118760.P1968421526115710849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118758 (A118758 n).toNat

end

end A118760.P1968421526115710849

/-! ## A118760.P13394301495643056975

`∪[A118759(n), A191965(A121704(n+1))]`
-/

namespace A118760.P13394301495643056975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191965 (A121704 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A118760.P13394301495643056975

/-!
# A118761: Fixed points of permutations A118757, A118758, A118759 and A118760.

The programs for A118761, there is no canonical definition to state claims against.
-/

/-! ## A118761.P1285210825315455558

`eq[n, A118757(n)]`
-/

namespace A118761.P1285210825315455558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118757 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118761.P1285210825315455558

/-! ## A118761.P5081738816879329220

`eq[n, A118758(n)]`
-/

namespace A118761.P5081738816879329220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118758 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118761.P5081738816879329220

/-! ## A118761.P5053826597583809477

`record[gcd(A005843(n), A118758(n))]`
-/

namespace A118761.P5053826597583809477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 n) (A118758 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118761.P5053826597583809477

/-!
# A118762: First differences of A118757.

The programs for A118762, there is no canonical definition to state claims against.
-/

/-! ## A118762.P16879838131529491563

`Δ[A003100(n)]`
-/

namespace A118762.P16879838131529491563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118762.P16879838131529491563

/-!
# A118763: a(n) = smallest number not occurring earlier having in decimal representation to its predecessor Levenshtein distance = 1; a(0)=0.

The programs for A118763, there is no canonical definition to state claims against.
-/

/-! ## A118763.P13989120258871789832

`A118768(n)+a(n-1)` with `a(0)=0`
-/

namespace A118763.P13989120258871789832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A118768 n + a (n - 1)

end

end A118763.P13989120258871789832

/-! ## A118763.P5388576229997386706

`∑[A118768(n+1)]-A118768(n+1)`
-/

namespace A118763.P5388576229997386706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A118768 (n + 1)

end

end A118763.P5388576229997386706

/-! ## A118763.P12773038065557376897

`A118764(A118765(n))`
-/

namespace A118763.P12773038065557376897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118764 (A118765 n).toNat

end

end A118763.P12773038065557376897

/-! ## A118763.P16891494937763038242

`A118765(A398281(n))`
-/

namespace A118763.P16891494937763038242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118765 (A398281 n).toNat

end

end A118763.P16891494937763038242

/-! ## A118763.P4174133007915690383

`A398280(A118765(A118766(n)))`
-/

namespace A118763.P4174133007915690383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398280 (A118765 (A118766 n).toNat).toNat

end

end A118763.P4174133007915690383

/-!
# A118764: Inverse of A118763.

The programs for A118764, there is no canonical definition to state claims against.
-/

/-! ## A118764.P4118305958484515579

`A118763(A118766(n))`
-/

namespace A118764.P4118305958484515579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118763 (A118766 n).toNat

end

end A118764.P4118305958484515579

/-! ## A118764.P425422575860251369

`A118766(A398280(n))`
-/

namespace A118764.P425422575860251369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118766 (A398280 n).toNat

end

end A118764.P425422575860251369

/-! ## A118764.P1701904976338563671

`A398281(A118766(A118765(n)))`
-/

namespace A118764.P1701904976338563671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398281 (A118766 (A118765 n).toNat).toNat

end

end A118764.P1701904976338563671

/-! ## A118764.P3673455643104842303

`A398281(n)%A003064(n)`
-/

namespace A118764.P3673455643104842303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398281 n) (A003064 n)

end

end A118764.P3673455643104842303

/-! ## A118764.P1494438021091451054

`lcm(A123271(n+2), A398281(n))`
-/

namespace A118764.P1494438021091451054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123271 (n + 2)) (A398281 n)

end

end A118764.P1494438021091451054

/-!
# A118765: A118763(A118763(n)).

The programs for A118765, there is no canonical definition to state claims against.
-/

/-! ## A118765.P175675721244993850

`A118763(A118763(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A118765.P175675721244993850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118763 (A118763 n).toNat

end

end A118765.P175675721244993850

/-! ## A118765.P9609324395844452031

`A398280(A398280(n))`
-/

namespace A118765.P9609324395844452031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398280 (A398280 n).toNat

end

end A118765.P9609324395844452031

/-!
# A118766: A118764(A118764(n)).

The programs for A118766, there is no canonical definition to state claims against.
-/

/-! ## A118766.P14251113846805480001

`A118764(A118764(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A118766.P14251113846805480001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118764 (A118764 n).toNat

end

end A118766.P14251113846805480001

/-! ## A118766.P1333756594618570342

`A398281(A398281(n))`
-/

namespace A118766.P1333756594618570342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398281 (A398281 n).toNat

end

end A118766.P1333756594618570342

/-!
# A118767: Fixed points of permutations A118763, A118764, A118765 and A118766.

The programs for A118767, there is no canonical definition to state claims against.
-/

/-! ## A118767.P8968144294891653815

`eq[n, A118763(n)]`
-/

namespace A118767.P8968144294891653815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118763 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118767.P8968144294891653815

/-! ## A118767.P7190908939446911766

`eq[n, A118764(n)]`
-/

namespace A118767.P7190908939446911766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118764 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118767.P7190908939446911766

/-! ## A118767.P3562046747091514981

`eq[n, A398280(n)]`
-/

namespace A118767.P3562046747091514981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398280 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118767.P3562046747091514981

/-! ## A118767.P7754383748244777437

`eq[n, A398281(n)]`
-/

namespace A118767.P7754383748244777437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A118767.P7754383748244777437

/-! ## A118767.P3606956943783992207

`A087052(A061862(n+1))`
-/

namespace A118767.P3606956943783992207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A061862 (n + 1)).toNat

end

end A118767.P3606956943783992207

/-!
# A118768: First differences of A118763.

The programs for A118768, there is no canonical definition to state claims against.
-/

/-! ## A118768.P17323888459343677644

`A118763(n+1)-A118763(n)`
-/

namespace A118768.P17323888459343677644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118763 (n + 1) - A118763 n

end

end A118768.P17323888459343677644

/-! ## A118768.P14324697085946314282

`Δ[A118763(n)]`
-/

namespace A118768.P14324697085946314282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118768.P14324697085946314282

/-! ## A118768.P9217207488969989771

`A118763(n+1)+A118763(n)*A316441(A007491(n+1))`
-/

namespace A118768.P9217207488969989771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118763 (n + 1) + A118763 n * A316441 (A007491 (n + 1)).toNat

end

end A118768.P9217207488969989771

/-! ## A118768.P1109232374572269685

`Δ[A118764(A118765(n))]`
-/

namespace A118768.P1109232374572269685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118764 (A118765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118768.P1109232374572269685

/-! ## A118768.P11023631936537821729

`A118764(A118765(n+1))-A118765(A118764(n))`
-/

namespace A118768.P11023631936537821729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118764 (A118765 (n + 1)).toNat - A118765 (A118764 n).toNat

end

end A118768.P11023631936537821729

/-!
# A118773: Smaller of two consecutive Chen primes with the same multiplicative digital root.

The programs for A118773, there is no canonical definition to state claims against.
-/

/-! ## A118773.P8236073288613077871

`A078859(A002253(n+1)+8)`
-/

namespace A118773.P8236073288613077871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078859 (A002253 (n + 1) + 8).toNat

end

end A118773.P8236073288613077871

/-!
# A118774: Larger of two consecutive Chen primes with the same multiplicative digital root.

The programs for A118774, there is no canonical definition to state claims against.
-/

/-! ## A118774.P6234759686105984244

`p?[lt[5, A162514(A114525(n))]]`
-/

namespace A118774.P6234759686105984244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 (A114525 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A118774.P6234759686105984244

/-!
# A118775: Sum of two consecutive Chen primes.

The programs for A118775, there is no canonical definition to state claims against.
-/

/-! ## A118775.P3496587063905650242

`A118482(n+2)-A118482(n)`
-/

namespace A118775.P3496587063905650242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118482 (n + 2) - A118482 n

end

end A118775.P3496587063905650242

/-! ## A118775.P18422091206973998726

`Δ[A118482(n+1)+A118482(n)]`
-/

namespace A118775.P18422091206973998726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118482 (n + 1) + A118482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118775.P18422091206973998726

/-! ## A118775.P9635078943352663941

`A109611(n+1)+A109611(n+2)`
-/

namespace A118775.P9635078943352663941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1) + A109611 (n + 2)

end

end A118775.P9635078943352663941

/-! ## A118775.P2700361469711477869

`A139690(n+1)+∑[A118776(n+1)]`
-/

namespace A118775.P2700361469711477869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118775.P2700361469711477869

/-! ## A118775.P645194586317881982

`A139690(n+1)+A139690(n+2)-4`
-/

namespace A118775.P645194586317881982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1) + (A139690 (n + 2) - 4)

end

end A118775.P645194586317881982

/-!
# A118776: Differences between consecutive Chen primes.

The programs for A118776, there is no canonical definition to state claims against.
-/

/-! ## A118776.P39327865895301591

`Δ[A109611(n+1)]`
-/

namespace A118776.P39327865895301591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118776.P39327865895301591

/-! ## A118776.P9271590744070597264

`A109611(n+2)-A109611(n+1)`
-/

namespace A118776.P9271590744070597264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 2) - A109611 (n + 1)

end

end A118776.P9271590744070597264

/-! ## A118776.P15363794978769953099

`A109611(A000027(n+2))%A109611(n+1)`
-/

namespace A118776.P15363794978769953099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109611 (A000027 (n + 2)).toNat) (A109611 (n + 1))

end

end A118776.P15363794978769953099

/-! ## A118776.P9343808492178947841

`Δ[A139690(n+1)]`
-/

namespace A118776.P9343808492178947841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118776.P9343808492178947841

/-! ## A118776.P11258234816307044781

`A139690(n+2)-A139690(n+1)`
-/

namespace A118776.P11258234816307044781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 2) - A139690 (n + 1)

end

end A118776.P11258234816307044781

/-! ## A118776.P1566587261989805988

`Δ[Δ[A118482(n)]]`
-/

namespace A118776.P1566587261989805988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118776.P1566587261989805988

/-! ## A118776.P15410875256743793075

`Δ[p?[lt[A001222(n+2), 3]]]`
-/

namespace A118776.P15410875256743793075
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A118776.P15410875256743793075

/-! ## A118776.P8886774428284231922

`Δ[A004086(A118495(n+1))]`
-/

namespace A118776.P8886774428284231922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A118495 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118776.P8886774428284231922

/-! ## A118776.P16130311730873368627

`Δ[p?[n*A054576(n+2)]]`
-/

namespace A118776.P16130311730873368627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054576 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A118776.P16130311730873368627

/-! ## A118776.P14847072638723217516

`A118775(n+1)%A109611(n+1)`
-/

namespace A118776.P14847072638723217516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118775 (n + 1)) (A109611 (n + 1))

end

end A118776.P14847072638723217516

/-!
# A118777: a(0) = 1; n > 0: a(n) = a(n-1) + d, d = +-1 if n is prime/nonprime.

The programs for A118777, the canonical program `A118777.P17471600368289246204` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118777 has offset 0).

The definition of A118777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A118777.P3947779105073901914

`n+1-2*A230980(n)`
-/

namespace A118777.P3947779105073901914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A230980 n

end

end A118777.P3947779105073901914

namespace A118777

/-- `n+1-2*A230980(n)` -/
def P3947779105073901914.Spec : Prop :=
  ∀ n, P3947779105073901914.a n = A118777 n

end A118777

/-! ## A118777.P17471600368289246204

`2*A086936(n+1)-(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A118777

/-- `2*A086936(n+1)-(n+1)` -/
def P17471600368289246204.Spec : Prop :=
  ∀ n, P17471600368289246204.a n = A118777 n

theorem P17471600368289246204.correct : P17471600368289246204.Spec := by
  intro n
  simp only [A118777]

end A118777

/-! ## A118777.P4707280188827542499

`∑[1-2*char[A000040(n+1)]]`
-/

namespace A118777.P4707280188827542499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118777.P4707280188827542499

namespace A118777

/-- `∑[1-2*char[A000040(n+1)]]` -/
def P4707280188827542499.Spec : Prop :=
  ∀ n, P4707280188827542499.a n = A118777 n

end A118777

/-! ## A118777.P17626866639310925372

`∑[2*char[comp[A006530(n+2)]]-1]`
-/

namespace A118777.P17626866639310925372
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118777.P17626866639310925372

namespace A118777

/-- `∑[2*char[comp[A006530(n+2)]]-1]` -/
def P17626866639310925372.Spec : Prop :=
  ∀ n, P17626866639310925372.a n = A118777 n

end A118777

/-! ## A118777.P7179646213976919324

`2*∑[char[A018252(n+1)]]+1-n`
-/

namespace A118777.P7179646213976919324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℕ) : ℤ) - (n : ℤ)

end

end A118777.P7179646213976919324

namespace A118777

/-- `2*∑[char[A018252(n+1)]]+1-n` -/
def P7179646213976919324.Spec : Prop :=
  ∀ n, P7179646213976919324.a n = A118777 n

end A118777

/-! ## A118777.P11941234395779217401

`1-A005843(A230980(n))+n`
-/

namespace A118777.P11941234395779217401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005843 (A230980 n).toNat + (n : ℤ)

end

end A118777.P11941234395779217401

namespace A118777

/-- `1-A005843(A230980(n))+n` -/
def P11941234395779217401.Spec : Prop :=
  ∀ n, P11941234395779217401.a n = A118777 n

end A118777

/-! ## A118777.P8548983801633509121

`A086936(n+1)-A230980(n)`
-/

namespace A118777.P8548983801633509121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086936 (n + 1) - A230980 n

end

end A118777.P8548983801633509121

namespace A118777

/-- `A086936(n+1)-A230980(n)` -/
def P8548983801633509121.Spec : Prop :=
  ∀ n, P8548983801633509121.a n = A118777 n

end A118777

/-! ## A118777.P7311732542400019594

`A016777(n)-2*A095117(n)`
-/

namespace A118777.P7311732542400019594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - 2 * A095117 n

end

end A118777.P7311732542400019594

namespace A118777

/-- `A016777(n)-2*A095117(n)` -/
def P7311732542400019594.Spec : Prop :=
  ∀ n, P7311732542400019594.a n = A118777 n

end A118777

/-! ## A118777.P16345428113584677108

`∑[∏{d}[n, A008683(#)^A008683(n)]]`
-/

namespace A118777.P16345428113584677108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (A008683 d : ℚ) ^ (A008683 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118777.P16345428113584677108

namespace A118777

/-- `∑[∏{d}[n, A008683(#)^A008683(n)]]` -/
def P16345428113584677108.Spec : Prop :=
  ∀ n, P16345428113584677108.a n = (A118777 n : ℚ)

end A118777

/-! ## A118777.P12927854603246238954

`A076608(n+1)+1-A073610(n+1)`
-/

namespace A118777.P12927854603246238954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076608 (n + 1) + (1 - A073610 (n + 1))

end

end A118777.P12927854603246238954

namespace A118777

/-- `A076608(n+1)+1-A073610(n+1)` -/
def P12927854603246238954.Spec : Prop :=
  ∀ n, P12927854603246238954.a n = A118777 n

end A118777

/-! ## A118777.P3207477420827281495

`A097454(n+1)+2*A010051(n+1)`
-/

namespace A118777.P3207477420827281495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097454 (n + 1) + 2 * A010051 (n + 1)

end

end A118777.P3207477420827281495

namespace A118777

/-- `A097454(n+1)+2*A010051(n+1)` -/
def P3207477420827281495.Spec : Prop :=
  ∀ n, P3207477420827281495.a n = A118777 n

end A118777

/-! ## A118777.P946791135237709904

`A005408(A005408(n)-A064427(n+1))-n`
-/

namespace A118777.P946791135237709904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005408 n - A064427 (n + 1)).toNat - (n : ℤ)

end

end A118777.P946791135237709904

namespace A118777

/-- `A005408(A005408(n)-A064427(n+1))-n` -/
def P946791135237709904.Spec : Prop :=
  ∀ n, P946791135237709904.a n = A118777 n

end A118777

/-! ## A118777.P10535309786467216400

`A000027(1-A230980(n)+n)-A230980(n)`
-/

namespace A118777.P10535309786467216400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (1 - A230980 n + (n : ℤ)).toNat - A230980 n

end

end A118777.P10535309786467216400

namespace A118777

/-- `A000027(1-A230980(n)+n)-A230980(n)` -/
def P10535309786467216400.Spec : Prop :=
  ∀ n, P10535309786467216400.a n = A118777 n

end A118777

/-! ## A118777.P16532755726042505875

`∑[1-A338770(2*(n+1))]`
-/

namespace A118777.P16532755726042505875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A338770 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118777.P16532755726042505875

namespace A118777

/-- `∑[1-A338770(2*(n+1))]` -/
def P16532755726042505875.Spec : Prop :=
  ∀ n, P16532755726042505875.a n = A118777 n

end A118777

/-! ## A118777.P10875185016793561553

`n+1-2*A242096(comp[2*n])`
-/

namespace A118777.P10875185016793561553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A242096 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A118777.P10875185016793561553

namespace A118777

/-- `n+1-2*A242096(comp[2*n])` -/
def P10875185016793561553.Spec : Prop :=
  ∀ n, P10875185016793561553.a n = A118777 n

end A118777

/-! ## A118777.P10363472247412256203

`n+1-2*A056172(2*n+1)`
-/

namespace A118777.P10363472247412256203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A056172 (2 * n + 1)

end

end A118777.P10363472247412256203

namespace A118777

/-- `n+1-2*A056172(2*n+1)` -/
def P10363472247412256203.Spec : Prop :=
  ∀ n, P10363472247412256203.a n = A118777 n

end A118777

/-! ## A118777.P4565373046710414975

`A282029(2*n+1)-A095117(n)`
-/

namespace A118777.P4565373046710414975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282029 (2 * n + 1) - A095117 n

end

end A118777.P4565373046710414975

namespace A118777

/-- `A282029(2*n+1)-A095117(n)` -/
def P4565373046710414975.Spec : Prop :=
  ∀ n, P4565373046710414975.a n = A118777 n

end A118777

/-! ## A118777.P5812279790733797388

`∑[1-A214304(A249802(n+1))]`
-/

namespace A118777.P5812279790733797388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A214304 (A249802 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118777.P5812279790733797388

namespace A118777

/-- `∑[1-A214304(A249802(n+1))]` -/
def P5812279790733797388.Spec : Prop :=
  ∀ n, P5812279790733797388.a n = A118777 n

end A118777

/-! ## A118777.P9906841257664406910

`∑[1-A105700(n²)]`
-/

namespace A118777.P9906841257664406910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A105700 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118777.P9906841257664406910

namespace A118777

/-- `∑[1-A105700(n²)]` -/
def P9906841257664406910.Spec : Prop :=
  ∀ n, P9906841257664406910.a n = A118777 n

end A118777

/-!
# A118778: Total degree of the classical modular curve X_n(0). Also the degree of the classical modular polynomial.

The programs for A118778, there is no canonical definition to state claims against.
-/

/-! ## A118778.P14640274003559247732

`∑{d}[n+1, A117003(#)*A271102((n+1)/#)]`
-/

namespace A118778.P14640274003559247732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117003 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A118778.P14640274003559247732

/-!
# A118780: Semiprime(n)*semiprime(n+3) - semiprime(n+1)*semiprime(n+2), where semiprime(n) is the n-th semiprime.

The programs for A118780, the canonical program `A118780.P3128203146251017179` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A118780 has offset 1).

The definition of A118780 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A118780.P3128203146251017179

`A001358(n+1)*A001358(n+4)-A001358(n+2)*A001358(n+3)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A118780

/-- `A001358(n+1)*A001358(n+4)-A001358(n+2)*A001358(n+3)` -/
def P3128203146251017179.Spec : Prop :=
  ∀ n, P3128203146251017179.a n = A118780 (n + 1)

theorem P3128203146251017179.correct : P3128203146251017179.Spec := by
  intro n
  simp only [A118780, Nat.add_sub_cancel]

end A118780

/-!
# A118782: Numbers k such that closest primes surrounding 10^n have the same last digit.

The programs for A118782, there is no canonical definition to state claims against.
-/

/-! ## A118782.P5176222245017316515

`lt[A038804(n+1)%5, 1]+1`
-/

namespace A118782.P5176222245017316515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038804 (n + 1)) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A118782.P5176222245017316515

/-! ## A118782.P1531398951309664241

`lt[1, A010152(A038804(n+1))]+1`
-/

namespace A118782.P1531398951309664241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010152 (A038804 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A118782.P1531398951309664241

/-! ## A118782.P16353431696866471890

`eq[3, A010152(A038804(C(n+1, n)))-13]+1`
-/

namespace A118782.P16353431696866471890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010152 (A038804 (Nat.choose (n + 1) n)).toNat - 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A118782.P16353431696866471890

/-! ## A118782.P12244436409721968965

`eq[3, A010152(A038804(Δ[n²]-n))-13]+1`
-/

namespace A118782.P12244436409721968965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010152 (A038804 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) - (n : ℤ)).toNat).toNat - 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A118782.P12244436409721968965

/-! ## A118782.P5043360189444748604

`lt[4, A010152(A038804(n-(9*a(n-1))²%3))]` with `a(0)=1, a(1)=2`
-/

namespace A118782.P5043360189444748604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A010152 (A038804 ((n : ℤ) - Int.tmod ((9 * f2 (n - 1)) ^ 2) 3).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A118782.P5043360189444748604

/-!
# A118786: Primes p such that the nearest integer to p * K is prime, where K is Khinchin's constant.

The programs for A118786, there is no canonical definition to state claims against.
-/

/-! ## A118786.P7020223321678085383

`record[A006530((6*n+2)%A139826(n+3)+2)]`
-/

namespace A118786.P7020223321678085383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (6 * n + 2 : ℤ) (A139826 (n + 3)) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118786.P7020223321678085383

/-!
# A118787: Triangle where T(n,k) = n!*[x^k] ( x/(2*x + log(1-x)) )^(n+1), for n>=k>=0, read by rows.

The programs for A118787, there is no canonical definition to state claims against.
-/

/-! ## A118787.P15892839159666234486

`(C(comp[∑[n]]-n, 2)-(n+1))!*A118788(n)`
-/

namespace A118787.P15892839159666234486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A118788 n

end

end A118787.P15892839159666234486

/-! ## A118787.P9457715198658692538

`A118788(n)*A119502(n)`
-/

namespace A118787.P9457715198658692538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118788 n * A119502 n

end

end A118787.P9457715198658692538

/-! ## A118787.P5090410348452106270

`A025581(n)!*A118788(n)`
-/

namespace A118787.P5090410348452106270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A118788 n

end

end A118787.P5090410348452106270

/-! ## A118787.P17016728708058063942

`A025669(n+1)!*A118788(n)`
-/

namespace A118787.P17016728708058063942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025669 (n + 1)).toNat : ℤ) * A118788 n

end

end A118787.P17016728708058063942

/-!
# A118788: Triangle where T(n,k) = n!/(n-k)!*[x^k] ( x/(2*x + log(1-x)) )^(n+1), for n>=k>=0, read by rows.

The programs for A118788, there is no canonical definition to state claims against.
-/

/-! ## A118788.P8055845680168914162

`A118787(n)/(C(comp[∑[n]]-n, 2)-(n+1))!`
-/

namespace A118788.P8055845680168914162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118787 n : ℚ) / (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)

end

end A118788.P8055845680168914162

/-! ## A118788.P8239139371559911830

`A118787(n)/A119502(n)`
-/

namespace A118788.P8239139371559911830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118787 n : ℚ) / (A119502 n : ℚ)

end

end A118788.P8239139371559911830

/-! ## A118788.P10608682617130203289

`A118787(n)/A025581(n)!`
-/

namespace A118788.P10608682617130203289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118787 n : ℚ) / (Nat.factorial (A025581 n).toNat : ℚ)

end

end A118788.P10608682617130203289

/-! ## A118788.P8249242192051295200

`A118787(n)/A025669(n+1)!`
-/

namespace A118788.P8249242192051295200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118787 n : ℚ) / (Nat.factorial (A025669 (n + 1)).toNat : ℚ)

end

end A118788.P8249242192051295200

/-!
# A118789: Row sums of triangle A118788.

The programs for A118789, there is no canonical definition to state claims against.
-/

/-! ## A118789.P11423412317764751558

`A195119(C(∑[n+1], n))`
-/

namespace A118789.P11423412317764751558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A118789.P11423412317764751558

/-!
# A118790: Secondary diagonal of triangle A118788.

The programs for A118790, there is no canonical definition to state claims against.
-/

/-! ## A118790.P7661231677426224328

`(A032188(n+1)+A032188(n+2))/2`
-/

namespace A118790.P7661231677426224328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032188 (n + 1) + A032188 (n + 2) : ℚ) / 2

end

end A118790.P7661231677426224328

/-! ## A118790.P17436313095482005993

`A118788(∑[n+2]-1)`
-/

namespace A118790.P17436313095482005993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118788 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A118790.P17436313095482005993

/-! ## A118790.P4870316018111122010

`record[A118788(A131819(n+1))]`
-/

namespace A118790.P4870316018111122010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118788 (A131819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118790.P4870316018111122010

/-! ## A118790.P17375792294512141683

`record[root(A118788(n), A225750(n))]`
-/

namespace A118790.P17375792294512141683
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A118788 n : ℝ) ^ (1 / (A225750 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A118790.P17375792294512141683

/-!
# A118791: Triangle where T(n,k) = -n!*[x^k] ( x/log(1-x-x^2) )^(n+1), for n>=k>=0, read by rows.

The programs for A118791, there is no canonical definition to state claims against.
-/

/-! ## A118791.P66984940833194720

`(C(comp[∑[n]]-n, 2)-(n+1))!*A118793(n)`
-/

namespace A118791.P66984940833194720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A118793 n

end

end A118791.P66984940833194720

/-! ## A118791.P10585289651485669956

`A118793(n)*A119502(n)`
-/

namespace A118791.P10585289651485669956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118793 n * A119502 n

end

end A118791.P10585289651485669956

/-! ## A118791.P2309672013781784477

`A025581(n)!*A118793(n)`
-/

namespace A118791.P2309672013781784477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A118793 n

end

end A118791.P2309672013781784477

/-! ## A118791.P11534933038325913912

`A025669(n+1)!*A118793(n)`
-/

namespace A118791.P11534933038325913912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025669 (n + 1)).toNat : ℤ) * A118793 n

end

end A118791.P11534933038325913912

/-!
# A118792: E.g.f.: -log(1 - (1 - sqrt(5 - 4*exp(x)) )/2 ).

The programs for A118792, there is no canonical definition to state claims against.
-/

/-! ## A118792.P18098608118785564488

`A045917(A000557(n))*A205498(n)`
-/

namespace A118792.P18098608118785564488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A000557 n).toNat * A205498 n

end

end A118792.P18098608118785564488

/-! ## A118792.P5548161314488343841

`A032191(n+6)*A161336(A007563(n))`
-/

namespace A118792.P5548161314488343841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032191 (n + 6) * A161336 (A007563 n).toNat

end

end A118792.P5548161314488343841

/-!
# A118793: Triangle where T(n,k) = -n!/(n-k)!*[x^k] ( x/log(1-x-x^2) )^(n+1), for n>=k>=0, read by rows.

The programs for A118793, there is no canonical definition to state claims against.
-/

/-! ## A118793.P16905344995694464630

`A118791(n)/(C(comp[∑[n]]-n, 2)-(n+1))!`
-/

namespace A118793.P16905344995694464630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118791 n : ℚ) / (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)

end

end A118793.P16905344995694464630

/-! ## A118793.P899083887048596197

`A118791(n)/A119502(n)`
-/

namespace A118793.P899083887048596197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118791 n : ℚ) / (A119502 n : ℚ)

end

end A118793.P899083887048596197

/-! ## A118793.P15550888459658462321

`A118791(n)/A025581(n)!`
-/

namespace A118793.P15550888459658462321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118791 n : ℚ) / (Nat.factorial (A025581 n).toNat : ℚ)

end

end A118793.P15550888459658462321

/-! ## A118793.P13691689687696004938

`A118791(n)/A025669(n+1)!`
-/

namespace A118793.P13691689687696004938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118791 n : ℚ) / (Nat.factorial (A025669 (n + 1)).toNat : ℚ)

end

end A118793.P13691689687696004938

/-! ## A118793.P17816486338216214551

`A118791(n)/A002262(A061579(n))!`
-/

namespace A118793.P17816486338216214551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118791 n : ℚ) / (Nat.factorial (A002262 (A061579 n).toNat).toNat : ℚ)

end

end A118793.P17816486338216214551

/-!
# A118794: E.g.f.: 1 - exp((-1 + sqrt(5 - 4*exp(x)) )/2).

The programs for A118794, there is no canonical definition to state claims against.
-/

/-! ## A118794.P6847426660543641670

`A333462(∏[record[A241578(n)]])`
-/

namespace A118794.P6847426660543641670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333462 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A118794.P6847426660543641670

/-! ## A118794.P4443094336395974879

`A261093(round(2*n/3)*A006125(n))`
-/

namespace A118794.P4443094336395974879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261093 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) * A006125 n).toNat

end

end A118794.P4443094336395974879

/-!
# A118795: E.g.f.: -1 + exp(( 1 - sqrt(5 - 4*exp(x)) )/2).

The programs for A118795, there is no canonical definition to state claims against.
-/

/-! ## A118795.P11297907540973328776

`∑[A345910(a(n-1))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A118795.P11297907540973328776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  A345910 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A118795.P11297907540973328776

/-!
# A118796: Primes p such that the nearest integer to p * A is prime, where A is the Glaisher-Kinkelin constant.

The programs for A118796, there is no canonical definition to state claims against.
-/

/-! ## A118796.P15714867303827767968

`p?[∑[A156194(A050024(n+1))]]`
-/

namespace A118796.P15714867303827767968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156194 (A050024 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A118796.P15714867303827767968

/-!
# A118797: Number of cells in smallest polyomino with n holes.

The programs for A118797, there is no canonical definition to state claims against.
-/

/-! ## A118797.P6247935992086365502

`A336148(2*n+5)+A336112(A004767(n))`
-/

namespace A118797.P6247935992086365502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336148 (2 * n + 5) + A336112 (A004767 n).toNat

end

end A118797.P6247935992086365502

/-! ## A118797.P16425576451260643942

`A003056(A344275(3*n+5)+A055025(3*n+5))`
-/

namespace A118797.P16425576451260643942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A344275 (3 * n + 5) + A055025 (3 * n + 5)).toNat

end

end A118797.P16425576451260643942

/-! ## A118797.P14763793402820452004

`A212452(n+2)-A055881(A081123(n))`
-/

namespace A118797.P14763793402820452004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212452 (n + 2) - A055881 (A081123 n).toNat

end

end A118797.P14763793402820452004

/-! ## A118797.P16545983417335051135

`A063438(A005248(n))+A002808(2*n+1)`
-/

namespace A118797.P16545983417335051135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063438 (A005248 n).toNat + A002808 (2 * n + 1)

end

end A118797.P16545983417335051135

/-! ## A118797.P12284999906097834473

`A018252(2*(n+1))+A010702(A077632(n+1))`
-/

namespace A118797.P12284999906097834473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (2 * (n + 1)) + A010702 (A077632 (n + 1)).toNat

end

end A118797.P12284999906097834473

/-!
# A118798: Numbers n such that the closest primes surrounding 10^n have the same last two digits.

The programs for A118798, there is no canonical definition to state claims against.
-/

/-! ## A118798.P14819238943946409399

`eq[2, A122840(A038804(n+1))]+1`
-/

namespace A118798.P14819238943946409399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A038804 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A118798.P14819238943946409399

