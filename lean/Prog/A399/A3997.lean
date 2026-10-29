import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C016
import Seq.B000.C020
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
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
import Seq.Opaque.C015
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
# A399703: a(0) = 1; a(n) = Sum_{k=0..n-1} (-1)^(n-k-1) * binomial(n,k) * k^(k*(n-k)) * a(k).

The programs for A399703, there is no canonical definition to state claims against.
-/

/-! ## A399703.P9229118979369915613

`A141322(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A399703.P9229118979369915613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A141322 (a (n - 1) ^ 2).toNat

end

end A399703.P9229118979369915613

/-!
# A399705: a(n) is 1 if A008846(n) is congruent to 5 modulo 8, and 0 if A008846(n) is congruent to 1 modulo 8.

The programs for A399705, the canonical program `A399705.P7439880869776146323` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399705 has offset 1).

The definition of A399705 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399705.P7439880869776146323

`((A008846(n+1)-1)/4)%2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A399705

/-- `((A008846(n+1)-1)/4)%2` -/
def P7439880869776146323.Spec : Prop :=
  ∀ n, P7439880869776146323.a n = A399705 (n + 1)

theorem P7439880869776146323.correct : P7439880869776146323.Spec := by
  intro n
  simp only [A399705, Nat.add_sub_cancel]

end A399705

/-! ## A399705.P17676404070654375185

`A094178(n+1)%2`
-/

namespace A399705.P17676404070654375185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094178 (n + 1)) 2

end

end A399705.P17676404070654375185

namespace A399705

/-- `A094178(n+1)%2` -/
def P17676404070654375185.Spec : Prop :=
  ∀ n, P17676404070654375185.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P17105041636906179343

`and(A094178(n+1), A158388(n))`
-/

namespace A399705.P17105041636906179343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094178 (n + 1)) (A158388 n)

end

end A399705.P17105041636906179343

namespace A399705

/-- `and(A094178(n+1), A158388(n))` -/
def P17105041636906179343.Spec : Prop :=
  ∀ n, P17105041636906179343.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P2035068365017484191

`and(A094178(n+1), A267537(n))`
-/

namespace A399705.P2035068365017484191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094178 (n + 1)) (A267537 n)

end

end A399705.P2035068365017484191

namespace A399705

/-- `and(A094178(n+1), A267537(n))` -/
def P2035068365017484191.Spec : Prop :=
  ∀ n, P2035068365017484191.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P9284379352581098519

`and(A094178(n+1), A267869(n))`
-/

namespace A399705.P9284379352581098519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094178 (n + 1)) (A267869 n)

end

end A399705.P9284379352581098519

namespace A399705

/-- `and(A094178(n+1), A267869(n))` -/
def P9284379352581098519.Spec : Prop :=
  ∀ n, P9284379352581098519.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P12213536478974623071

`and(A094178(n+1), A267871(n))`
-/

namespace A399705.P12213536478974623071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094178 (n + 1)) (A267871 n)

end

end A399705.P12213536478974623071

namespace A399705

/-- `and(A094178(n+1), A267871(n))` -/
def P12213536478974623071.Spec : Prop :=
  ∀ n, P12213536478974623071.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P13412637566301048459

`and(A094178(n+1), A329684(n))`
-/

namespace A399705.P13412637566301048459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094178 (n + 1)) (A329684 n)

end

end A399705.P13412637566301048459

namespace A399705

/-- `and(A094178(n+1), A329684(n))` -/
def P13412637566301048459.Spec : Prop :=
  ∀ n, P13412637566301048459.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P18402769784034529158

`A000035(A094178(n+1))`
-/

namespace A399705.P18402769784034529158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A094178 (n + 1)).toNat

end

end A399705.P18402769784034529158

namespace A399705

/-- `A000035(A094178(n+1))` -/
def P18402769784034529158.Spec : Prop :=
  ∀ n, P18402769784034529158.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P7558391681997127554

`and(A094178(n+1), A176410(n))`
-/

namespace A399705.P7558391681997127554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094178 (n + 1)) (A176410 n)

end

end A399705.P7558391681997127554

namespace A399705

/-- `and(A094178(n+1), A176410(n))` -/
def P7558391681997127554.Spec : Prop :=
  ∀ n, P7558391681997127554.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P15442329112694678479

`and(A094178(n+1), A176794(n))`
-/

namespace A399705.P15442329112694678479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094178 (n + 1)) (A176794 n)

end

end A399705.P15442329112694678479

namespace A399705

/-- `and(A094178(n+1), A176794(n))` -/
def P15442329112694678479.Spec : Prop :=
  ∀ n, P15442329112694678479.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P1753272311067167902

`A014707(A008846(n+1))`
-/

namespace A399705.P1753272311067167902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A008846 (n + 1)).toNat

end

end A399705.P1753272311067167902

namespace A399705

/-- `A014707(A008846(n+1))` -/
def P1753272311067167902.Spec : Prop :=
  ∀ n, P1753272311067167902.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P1796491954480376935

`A014707(A004613(n+2))`
-/

namespace A399705.P1796491954480376935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A004613 (n + 2)).toNat

end

end A399705.P1796491954480376935

namespace A399705

/-- `A014707(A004613(n+2))` -/
def P1796491954480376935.Spec : Prop :=
  ∀ n, P1796491954480376935.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P5428483627406304429

`and(A048578(n), A094178(n+1))`
-/

namespace A399705.P5428483627406304429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A094178 (n + 1))

end

end A399705.P5428483627406304429

namespace A399705

/-- `and(A048578(n), A094178(n+1))` -/
def P5428483627406304429.Spec : Prop :=
  ∀ n, P5428483627406304429.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P3329527695766087549

`and(A020737(n), A094178(n+1))`
-/

namespace A399705.P3329527695766087549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A094178 (n + 1))

end

end A399705.P3329527695766087549

namespace A399705

/-- `and(A020737(n), A094178(n+1))` -/
def P3329527695766087549.Spec : Prop :=
  ∀ n, P3329527695766087549.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P11027974665277400393

`and(A094178(n+1), A276918(n))`
-/

namespace A399705.P11027974665277400393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094178 (n + 1)) (A276918 n)

end

end A399705.P11027974665277400393

namespace A399705

/-- `and(A094178(n+1), A276918(n))` -/
def P11027974665277400393.Spec : Prop :=
  ∀ n, P11027974665277400393.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P16566365422894837387

`and(A094178(n+1), A195744(n))`
-/

namespace A399705.P16566365422894837387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094178 (n + 1)) (A195744 n)

end

end A399705.P16566365422894837387

namespace A399705

/-- `and(A094178(n+1), A195744(n))` -/
def P16566365422894837387.Spec : Prop :=
  ∀ n, P16566365422894837387.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P4935043792143598604

`and(A094178(n+1), A122041(n+1))`
-/

namespace A399705.P4935043792143598604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094178 (n + 1)) (A122041 (n + 1))

end

end A399705.P4935043792143598604

namespace A399705

/-- `and(A094178(n+1), A122041(n+1))` -/
def P4935043792143598604.Spec : Prop :=
  ∀ n, P4935043792143598604.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P15918319410362724013

`and(A094178(n+1), A196657(n))`
-/

namespace A399705.P15918319410362724013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094178 (n + 1)) (A196657 n)

end

end A399705.P15918319410362724013

namespace A399705

/-- `and(A094178(n+1), A196657(n))` -/
def P15918319410362724013.Spec : Prop :=
  ∀ n, P15918319410362724013.a n = A399705 (n + 1)

end A399705

/-!
# A399711: Maximum, over all subsets S,T of {1,...,n}, of the number of positive integers m for which m = s*t has exactly one solution (s,t) in S X T.

The programs for A399711, there is no canonical definition to state claims against.
-/

/-! ## A399711.P6519754649095097279

`A261466(A233776(n))`
-/

namespace A399711.P6519754649095097279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261466 (A233776 n).toNat

end

end A399711.P6519754649095097279

/-!
# A399714: a(n) = -1 - A010815(n-1) - Sum_{k=1..n-2} A010815(k)*2^(n-2-k) for n >= 3.

The programs for A399714, the canonical program `A399714.P16102988508626292463` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399714 has offset 3).

The definition of A399714 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178841, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399714.P16102988508626292463

`A000225(n+1)-A178841(n+2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A399714

/-- `A000225(n+1)-A178841(n+2)` -/
def P16102988508626292463.Spec : Prop :=
  ∀ n, P16102988508626292463.a n = A399714 (n + 3)

theorem P16102988508626292463.correct : P16102988508626292463.Spec := by
  intro n
  simp only [A399714, Nat.add_sub_cancel]

end A399714

/-! ## A399714.P5274294483703216947

`2*a(n-1)+1-A010815(n+2)+A010815(n+1)` with `a(0)=1`
-/

namespace A399714.P5274294483703216947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 1 - A010815 (n + 2) + A010815 (n + 1)

end

end A399714.P5274294483703216947

namespace A399714

/-- `2*a(n-1)+1-A010815(n+2)+A010815(n+1)` -/
def P5274294483703216947.Spec : Prop :=
  ∀ n, P5274294483703216947.a n = A399714 (n + 3)

end A399714

/-! ## A399714.P2127066399455526318

`-1-A010815(n+2)-∑{#}[n, A010815(#+1)*2^(n+1-(#+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399714.P2127066399455526318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 - A010815 (n + 2) : ℚ) - ∑ k ∈ Finset.range (f1 n + 1), (A010815 (k + 1) : ℚ) * (2 : ℚ) ^ ((n + 1 : ℤ) - (k + 1 : ℤ) : ℤ)

end

end A399714.P2127066399455526318

namespace A399714

/-- `-1-A010815(n+2)-∑{#}[n, A010815(#+1)*2^(n+1-(#+1))]` -/
def P2127066399455526318.Spec : Prop :=
  ∀ n, P2127066399455526318.a n = (A399714 (n + 3) : ℚ)

end A399714

/-! ## A399714.P15992264458003389679

`Δ[A137711(n+1)]-1`
-/

namespace A399714.P15992264458003389679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A399714.P15992264458003389679

namespace A399714

/-- `Δ[A137711(n+1)]-1` -/
def P15992264458003389679.Spec : Prop :=
  ∀ n, P15992264458003389679.a n = A399714 (n + 3)

end A399714

/-! ## A399714.P2470666549146354365

`A247160(A279751(n))`
-/

namespace A399714.P2470666549146354365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247160 (A279751 n).toNat

end

end A399714.P2470666549146354365

namespace A399714

/-- `A247160(A279751(n))` -/
def P2470666549146354365.Spec : Prop :=
  ∀ n, P2470666549146354365.a n = A399714 (n + 3)

end A399714

/-!
# A399715: T(n,k) is the k-th term obtained by greedily selecting the smallest number in {1..n} whose sorted distances to previously selected terms are lexicographically maximal, triangle read by rows.

The programs for A399715, there is no canonical definition to state claims against.
-/

/-! ## A399715.P15708339492794350224

`A193278(A219209(n))`
-/

namespace A399715.P15708339492794350224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193278 (A219209 n).toNat

end

end A399715.P15708339492794350224

/-! ## A399715.P18090606824754435272

`A375636(A132950(n))`
-/

namespace A399715.P18090606824754435272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375636 (A132950 n).toNat

end

end A399715.P18090606824754435272

/-! ## A399715.P10898143752546378412

`A038374(A194583(n))`
-/

namespace A399715.P10898143752546378412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A194583 n).toNat

end

end A399715.P10898143752546378412

/-! ## A399715.P15526238456967458171

`A137779(A058876(n+1))`
-/

namespace A399715.P15526238456967458171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137779 (A058876 (n + 1)).toNat

end

end A399715.P15526238456967458171

/-! ## A399715.P14984195146059175206

`A306922(A375353(n+1))`
-/

namespace A399715.P14984195146059175206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306922 (A375353 (n + 1)).toNat

end

end A399715.P14984195146059175206

/-!
# A399720: Least N such that {1,...,N} contains an n-element subset whose set of subset sums contains no 3-term arithmetic progression (the Erdős-Sárközy function g_3(n)).

The programs for A399720, there is no canonical definition to state claims against.
-/

/-! ## A399720.P14682039652908470770

`round((atan(1)+2)^n)`
-/

namespace A399720.P14682039652908470770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.arctan (1 : ℝ) + 2) ^ n)

end

end A399720.P14682039652908470770

/-!
# A399722: a(n) = 3^(m-1) + Sum_{i=2..m} 3^(m-i)*2^(d(1)+...d(i-1)) where m=A122458(n) and d(i)=A351122(n,i-1) for 1<=i<m.

The programs for A399722, there is no canonical definition to state claims against.
-/

/-! ## A399722.P13453835905108301782

`A060565(n+1)*2^A260590(n+1)-(2*(n+1)+1)*3^A122458(n+1)`
-/

namespace A399722.P13453835905108301782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060565 (n + 1) : ℚ) * (2 : ℚ) ^ (A260590 (n + 1) : ℤ) - (2 * (n + 1) + 1 : ℚ) * (3 : ℚ) ^ (A122458 (n + 1) : ℤ)

end

end A399722.P13453835905108301782

/-!
# A399725: Numbers k that have no proper divisors d such that k - d is squarefree.

The programs for A399725, there is no canonical definition to state claims against.
-/

/-! ## A399725.P9363895571539841496

`eq[A070665(n), A169975(n)]`
-/

namespace A399725.P9363895571539841496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399725.P9363895571539841496

/-! ## A399725.P2491440147403315462

`eq[A153265(n), A169975(n)]`
-/

namespace A399725.P2491440147403315462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153265 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399725.P2491440147403315462

/-! ## A399725.P3104025979384476761

`eq[A169975(n), A212256(n)]`
-/

namespace A399725.P3104025979384476761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399725.P3104025979384476761

/-! ## A399725.P8847344105905931899

`eq[A169975(n), A195697(n+1)]`
-/

namespace A399725.P8847344105905931899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399725.P8847344105905931899

/-!
# A399729: Number of 2-closed subgroups of the symmetric group S_n, counting conjugates as distinct.

The programs for A399729, there is no canonical definition to state claims against.
-/

/-! ## A399729.P7201145324993154660

`A209874(a(n-1))-n` with `a(0)=1, a(1)=2`
-/

namespace A399729.P7201145324993154660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A209874 (a (n - 1)).toNat - (n : ℤ)

end

end A399729.P7201145324993154660

/-!
# A399732: The sum of the unitary divisors d of n such that n/d is cubefree.

The programs for A399732, the canonical program `A399732.P10852493408418534580` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399732 has offset 1).

The definition of A399732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399732.P3710505821191304211

`(n+1)*A034448(n+1)/A399734(n+1)`
-/

namespace A399732.P3710505821191304211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A034448 (n + 1) : ℚ) / (A399734 (n + 1) : ℚ)

end

end A399732.P3710505821191304211

namespace A399732

/-- `(n+1)*A034448(n+1)/A399734(n+1)` -/
def P3710505821191304211.Spec : Prop :=
  ∀ n, P3710505821191304211.a n = (A399732 (n + 1) : ℚ)

end A399732

/-! ## A399732.P10852493408418534580

`A360540(n+1)*A371242(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A399732

/-- `A360540(n+1)*A371242(n+1)` -/
def P10852493408418534580.Spec : Prop :=
  ∀ n, P10852493408418534580.a n = A399732 (n + 1)

theorem P10852493408418534580.correct : P10852493408418534580.Spec := by
  intro n
  simp only [A399732, Nat.add_sub_cancel]

end A399732

/-! ## A399732.P1913276672192416234

`A064971(n+1)/A399734(n+1)`
-/

namespace A399732.P1913276672192416234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (A399734 (n + 1) : ℚ)

end

end A399732.P1913276672192416234

namespace A399732

/-- `A064971(n+1)/A399734(n+1)` -/
def P1913276672192416234.Spec : Prop :=
  ∀ n, P1913276672192416234.a n = (A399732 (n + 1) : ℚ)

end A399732

/-! ## A399732.P18311283596520845768

`A399735(n+1)*A399736(n+1)/A399734(n+1)`
-/

namespace A399732.P18311283596520845768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399735 (n + 1) * A399736 (n + 1) : ℚ) / (A399734 (n + 1) : ℚ)

end

end A399732.P18311283596520845768

namespace A399732

/-- `A399735(n+1)*A399736(n+1)/A399734(n+1)` -/
def P18311283596520845768.Spec : Prop :=
  ∀ n, P18311283596520845768.a n = (A399732 (n + 1) : ℚ)

end A399732

/-!
# A399733: The sum of the unitary divisors d of n such that n/d is a powerful number (A001694).

The programs for A399733, the canonical program `A399733.P11103501656133543636` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399733 has offset 1).

The definition of A399733 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A363289, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399733.P11103501656133543636

`(n+1)*A034448(n+1)/A363289(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A399733

/-- `(n+1)*A034448(n+1)/A363289(n+1)` -/
def P11103501656133543636.Spec : Prop :=
  ∀ n, P11103501656133543636.a n = (A399733 (n + 1) : ℚ)

end A399733

/-! ## A399733.P16562811128101634232

`A055231(n+1)*A360720(n+1)`
-/

namespace A399733.P16562811128101634232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) * A360720 (n + 1)

end

end A399733.P16562811128101634232

namespace A399733

/-- `A055231(n+1)*A360720(n+1)` -/
def P16562811128101634232.Spec : Prop :=
  ∀ n, P16562811128101634232.a n = A399733 (n + 1)

end A399733

/-! ## A399733.P6458300363522463689

`A064971(n+1)/A363289(n+1)`
-/

namespace A399733.P6458300363522463689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (A363289 (n + 1) : ℚ)

end

end A399733.P6458300363522463689

namespace A399733

/-- `A064971(n+1)/A363289(n+1)` -/
def P6458300363522463689.Spec : Prop :=
  ∀ n, P6458300363522463689.a n = (A399733 (n + 1) : ℚ)

end A399733

/-! ## A399733.P676649806269320168

`A399732(n+1)*A399734(n+1)/A363289(n+1)`
-/

namespace A399733.P676649806269320168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399732 (n + 1) * A399734 (n + 1) : ℚ) / (A363289 (n + 1) : ℚ)

end

end A399733.P676649806269320168

namespace A399733

/-- `A399732(n+1)*A399734(n+1)/A363289(n+1)` -/
def P676649806269320168.Spec : Prop :=
  ∀ n, P676649806269320168.a n = (A399733 (n + 1) : ℚ)

end A399733

/-! ## A399733.P12653904906819298964

`A399735(n+1)*A399736(n+1)/A363289(n+1)`
-/

namespace A399733.P12653904906819298964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399735 (n + 1) * A399736 (n + 1) : ℚ) / (A363289 (n + 1) : ℚ)

end

end A399733.P12653904906819298964

namespace A399733

/-- `A399735(n+1)*A399736(n+1)/A363289(n+1)` -/
def P12653904906819298964.Spec : Prop :=
  ∀ n, P12653904906819298964.a n = (A399733 (n + 1) : ℚ)

end A399733

/-! ## A399733.P2297214900273836729

`A399738(n+1)*A399739(n+1)/A363289(n+1)`
-/

namespace A399733.P2297214900273836729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399738 (n + 1) * A399739 (n + 1) : ℚ) / (A363289 (n + 1) : ℚ)

end

end A399733.P2297214900273836729

namespace A399733

/-- `A399738(n+1)*A399739(n+1)/A363289(n+1)` -/
def P2297214900273836729.Spec : Prop :=
  ∀ n, P2297214900273836729.a n = (A399733 (n + 1) : ℚ)

end A399733

/-!
# A399734: The sum of the unitary divisors d of n such that n/d is a cubefull number (A036966).

The programs for A399734, the canonical program `A399734.P6634302789312156605` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399734 has offset 1).

The definition of A399734 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A399732, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399734.P6634302789312156605

`(n+1)*A034448(n+1)/A399732(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A399734

/-- `(n+1)*A034448(n+1)/A399732(n+1)` -/
def P6634302789312156605.Spec : Prop :=
  ∀ n, P6634302789312156605.a n = (A399734 (n + 1) : ℚ)

end A399734

/-! ## A399734.P81468005045277162

`A360539(n+1)*A385048(n+1)`
-/

namespace A399734.P81468005045277162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (n + 1) * A385048 (n + 1)

end

end A399734.P81468005045277162

namespace A399734

/-- `A360539(n+1)*A385048(n+1)` -/
def P81468005045277162.Spec : Prop :=
  ∀ n, P81468005045277162.a n = A399734 (n + 1)

end A399734

/-! ## A399734.P4718298845347777202

`A064971(n+1)/A399732(n+1)`
-/

namespace A399734.P4718298845347777202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (A399732 (n + 1) : ℚ)

end

end A399734.P4718298845347777202

namespace A399734

/-- `A064971(n+1)/A399732(n+1)` -/
def P4718298845347777202.Spec : Prop :=
  ∀ n, P4718298845347777202.a n = (A399734 (n + 1) : ℚ)

end A399734

/-! ## A399734.P1640271470037472004

`A399735(n+1)*A399736(n+1)/A399732(n+1)`
-/

namespace A399734.P1640271470037472004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399735 (n + 1) * A399736 (n + 1) : ℚ) / (A399732 (n + 1) : ℚ)

end

end A399734.P1640271470037472004

namespace A399734

/-- `A399735(n+1)*A399736(n+1)/A399732(n+1)` -/
def P1640271470037472004.Spec : Prop :=
  ∀ n, P1640271470037472004.a n = (A399734 (n + 1) : ℚ)

end A399734

/-!
# A399735: The sum of the unitary divisors d of n such that n/d is a square.

The programs for A399735, the canonical program `A399735.P12765208180898824886` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399735 has offset 1).

The definition of A399735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399735.P2265895746367355226

`(n+1)*A034448(n+1)/A399736(n+1)`
-/

namespace A399735.P2265895746367355226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A034448 (n + 1) : ℚ) / (A399736 (n + 1) : ℚ)

end

end A399735.P2265895746367355226

namespace A399735

/-- `(n+1)*A034448(n+1)/A399736(n+1)` -/
def P2265895746367355226.Spec : Prop :=
  ∀ n, P2265895746367355226.a n = (A399735 (n + 1) : ℚ)

end A399735

/-! ## A399735.P12765208180898824886

`A350389(n+1)*A358347(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A399735

/-- `A350389(n+1)*A358347(n+1)` -/
def P12765208180898824886.Spec : Prop :=
  ∀ n, P12765208180898824886.a n = A399735 (n + 1)

theorem P12765208180898824886.correct : P12765208180898824886.Spec := by
  intro n
  simp only [A399735, Nat.add_sub_cancel]

end A399735

/-! ## A399735.P10967833093166219318

`A064971(n+1)/A399736(n+1)`
-/

namespace A399735.P10967833093166219318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (A399736 (n + 1) : ℚ)

end

end A399735.P10967833093166219318

namespace A399735

/-- `A064971(n+1)/A399736(n+1)` -/
def P10967833093166219318.Spec : Prop :=
  ∀ n, P10967833093166219318.a n = (A399735 (n + 1) : ℚ)

end A399735

/-! ## A399735.P2522569013339679924

`A399732(n+1)*A399734(n+1)/A399736(n+1)`
-/

namespace A399735.P2522569013339679924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399732 (n + 1) * A399734 (n + 1) : ℚ) / (A399736 (n + 1) : ℚ)

end

end A399735.P2522569013339679924

namespace A399735

/-- `A399732(n+1)*A399734(n+1)/A399736(n+1)` -/
def P2522569013339679924.Spec : Prop :=
  ∀ n, P2522569013339679924.a n = (A399735 (n + 1) : ℚ)

end A399735

/-! ## A399735.P4032841450558246957

`A341000(A341000(A008424(n+1)))+n+1`
-/

namespace A399735.P4032841450558246957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341000 ((A341000 ((A008424 (n + 1)).toNat + 285)).toNat + 285) + (n + 1 : ℤ)

end

end A399735.P4032841450558246957

namespace A399735

/-- `A341000(A341000(A008424(n+1)))+n+1` -/
def P4032841450558246957.Spec : Prop :=
  ∀ n, P4032841450558246957.a n = A399735 (n + 1)

end A399735

/-!
# A399736: The sum of the unitary divisors d of n such that n/d is an exponentially odd number (A268335).

The programs for A399736, the canonical program `A399736.P2270532128408335001` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399736 has offset 1).

The definition of A399736 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A399735, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399736.P2270532128408335001

`(n+1)*A034448(n+1)/A399735(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A399736

/-- `(n+1)*A034448(n+1)/A399735(n+1)` -/
def P2270532128408335001.Spec : Prop :=
  ∀ n, P2270532128408335001.a n = (A399736 (n + 1) : ℚ)

end A399736

/-! ## A399736.P5107954710195618590

`A350388(n+1)*A358346(n+1)`
-/

namespace A399736.P5107954710195618590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (n + 1) * A358346 (n + 1)

end

end A399736.P5107954710195618590

namespace A399736

/-- `A350388(n+1)*A358346(n+1)` -/
def P5107954710195618590.Spec : Prop :=
  ∀ n, P5107954710195618590.a n = A399736 (n + 1)

end A399736

/-! ## A399736.P6539907678497046973

`A064971(n+1)/A399735(n+1)`
-/

namespace A399736.P6539907678497046973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (A399735 (n + 1) : ℚ)

end

end A399736.P6539907678497046973

namespace A399736

/-- `A064971(n+1)/A399735(n+1)` -/
def P6539907678497046973.Spec : Prop :=
  ∀ n, P6539907678497046973.a n = (A399736 (n + 1) : ℚ)

end A399736

/-! ## A399736.P2951626204175578548

`∑{d}[n+1, A008836(#)*A362624((n+1)/#)]`
-/

namespace A399736.P2951626204175578548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A362624 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399736.P2951626204175578548

namespace A399736

/-- `∑{d}[n+1, A008836(#)*A362624((n+1)/#)]` -/
def P2951626204175578548.Spec : Prop :=
  ∀ n, P2951626204175578548.a n = A399736 (n + 1)

end A399736

/-! ## A399736.P7147650394642155805

`A034448(n+1)*A350388(n+1)/A358347(n+1)`
-/

namespace A399736.P7147650394642155805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) * A350388 (n + 1) : ℚ) / (A358347 (n + 1) : ℚ)

end

end A399736.P7147650394642155805

namespace A399736

/-- `A034448(n+1)*A350388(n+1)/A358347(n+1)` -/
def P7147650394642155805.Spec : Prop :=
  ∀ n, P7147650394642155805.a n = (A399736 (n + 1) : ℚ)

end A399736

/-! ## A399736.P871189807157670524

`A399732(n+1)*A399734(n+1)/A399735(n+1)`
-/

namespace A399736.P871189807157670524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399732 (n + 1) * A399734 (n + 1) : ℚ) / (A399735 (n + 1) : ℚ)

end

end A399736.P871189807157670524

namespace A399736

/-- `A399732(n+1)*A399734(n+1)/A399735(n+1)` -/
def P871189807157670524.Spec : Prop :=
  ∀ n, P871189807157670524.a n = (A399736 (n + 1) : ℚ)

end A399736

/-!
# A399738: The sum of the unitary divisors d of n such that n/d is odd.

The programs for A399738, the canonical program `A399738.P16302356862870445950` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399738 has offset 1).

The definition of A399738 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360156, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399738.P16302356862870445950

`A360156(n+1)/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A399738

/-- `A360156(n+1)/2` -/
def P16302356862870445950.Spec : Prop :=
  ∀ n, P16302356862870445950.a n = (A399738 (n + 1) : ℚ)

end A399738

/-! ## A399738.P17729545733901004759

`(n+1)*A034448(n+1)/A399739(n+1)`
-/

namespace A399738.P17729545733901004759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A034448 (n + 1) : ℚ) / (A399739 (n + 1) : ℚ)

end

end A399738.P17729545733901004759

namespace A399738

/-- `(n+1)*A034448(n+1)/A399739(n+1)` -/
def P17729545733901004759.Spec : Prop :=
  ∀ n, P17729545733901004759.a n = (A399738 (n + 1) : ℚ)

end A399738

/-! ## A399738.P7148580135009673508

`A006519(n+1)*A192066(n+1)`
-/

namespace A399738.P7148580135009673508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A192066 (n + 1)

end

end A399738.P7148580135009673508

namespace A399738

/-- `A006519(n+1)*A192066(n+1)` -/
def P7148580135009673508.Spec : Prop :=
  ∀ n, P7148580135009673508.a n = A399738 (n + 1)

end A399738

/-! ## A399738.P16485470556562524118

`A064971(n+1)/A399739(n+1)`
-/

namespace A399738.P16485470556562524118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (A399739 (n + 1) : ℚ)

end

end A399738.P16485470556562524118

namespace A399738

/-- `A064971(n+1)/A399739(n+1)` -/
def P16485470556562524118.Spec : Prop :=
  ∀ n, P16485470556562524118.a n = (A399738 (n + 1) : ℚ)

end A399738

/-! ## A399738.P14373771964125185840

`A064971(n+1)%A360156(n+1)`
-/

namespace A399738.P14373771964125185840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064971 (n + 1)) (A360156 (n + 1))

end

end A399738.P14373771964125185840

namespace A399738

/-- `A064971(n+1)%A360156(n+1)` -/
def P14373771964125185840.Spec : Prop :=
  ∀ n, P14373771964125185840.a n = A399738 (n + 1)

end A399738

/-! ## A399738.P10214521581350137648

`∑{d}[n+1, A309153(#)*A327278((n+1)/#)]`
-/

namespace A399738.P10214521581350137648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309153 d * A327278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399738.P10214521581350137648

namespace A399738

/-- `∑{d}[n+1, A309153(#)*A327278((n+1)/#)]` -/
def P10214521581350137648.Spec : Prop :=
  ∀ n, P10214521581350137648.a n = A399738 (n + 1)

end A399738

/-! ## A399738.P2147199307951179065

`A006519(n+1)*A034448(A000265(n+1))`
-/

namespace A399738.P2147199307951179065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A034448 (A000265 (n + 1)).toNat

end

end A399738.P2147199307951179065

namespace A399738

/-- `A006519(n+1)*A034448(A000265(n+1))` -/
def P2147199307951179065.Spec : Prop :=
  ∀ n, P2147199307951179065.a n = A399738 (n + 1)

end A399738

/-! ## A399738.P7901269110903069344

`A363289(n+1)*A399733(n+1)/A399739(n+1)`
-/

namespace A399738.P7901269110903069344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363289 (n + 1) * A399733 (n + 1) : ℚ) / (A399739 (n + 1) : ℚ)

end

end A399738.P7901269110903069344

namespace A399738

/-- `A363289(n+1)*A399733(n+1)/A399739(n+1)` -/
def P7901269110903069344.Spec : Prop :=
  ∀ n, P7901269110903069344.a n = (A399738 (n + 1) : ℚ)

end A399738

/-! ## A399738.P4313092915356984896

`A399732(n+1)*A399734(n+1)/A399739(n+1)`
-/

namespace A399738.P4313092915356984896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399732 (n + 1) * A399734 (n + 1) : ℚ) / (A399739 (n + 1) : ℚ)

end

end A399738.P4313092915356984896

namespace A399738

/-- `A399732(n+1)*A399734(n+1)/A399739(n+1)` -/
def P4313092915356984896.Spec : Prop :=
  ∀ n, P4313092915356984896.a n = (A399738 (n + 1) : ℚ)

end A399738

/-! ## A399738.P12891448199797955551

`A001281(A360156(n+1))`
-/

namespace A399738.P12891448199797955551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A360156 (n + 1)).toNat

end

end A399738.P12891448199797955551

namespace A399738

/-- `A001281(A360156(n+1))` -/
def P12891448199797955551.Spec : Prop :=
  ∀ n, P12891448199797955551.a n = A399738 (n + 1)

end A399738

/-! ## A399738.P9962776995964593264

`A384056((n+1)²)/A384056(n+1)`
-/

namespace A399738.P9962776995964593264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384056 ((n + 1) ^ 2) : ℚ) / (A384056 (n + 1) : ℚ)

end

end A399738.P9962776995964593264

namespace A399738

/-- `A384056((n+1)²)/A384056(n+1)` -/
def P9962776995964593264.Spec : Prop :=
  ∀ n, P9962776995964593264.a n = (A399738 (n + 1) : ℚ)

end A399738

/-!
# A399739: The sum of the unitary divisors d of n such that n/d is a power of 2.

The programs for A399739, the canonical program `A399739.P5287244572555997203` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399739 has offset 1).

The definition of A399739 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A399738, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399739.P5287244572555997203

`(n+1)*A034448(n+1)/A399738(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A399739

/-- `(n+1)*A034448(n+1)/A399738(n+1)` -/
def P5287244572555997203.Spec : Prop :=
  ∀ n, P5287244572555997203.a n = (A399739 (n + 1) : ℚ)

end A399739

/-! ## A399739.P3624048196316906283

`2*(n+1)-A384055(n+1)`
-/

namespace A399739.P3624048196316906283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A384055 (n + 1)

end

end A399739.P3624048196316906283

namespace A399739

/-- `2*(n+1)-A384055(n+1)` -/
def P3624048196316906283.Spec : Prop :=
  ∀ n, P3624048196316906283.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P10581621605090416272

`A000265(A153733(n)+n+2)`
-/

namespace A399739.P10581621605090416272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A153733 n + (n + 2 : ℤ)).toNat

end

end A399739.P10581621605090416272

namespace A399739

/-- `A000265(A153733(n)+n+2)` -/
def P10581621605090416272.Spec : Prop :=
  ∀ n, P10581621605090416272.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P7052186773841095314

`A000265(A000265(n+1)+n+1)`
-/

namespace A399739.P7052186773841095314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000265 (n + 1) + (n + 1 : ℤ)).toNat

end

end A399739.P7052186773841095314

namespace A399739

/-- `A000265(A000265(n+1)+n+1)` -/
def P7052186773841095314.Spec : Prop :=
  ∀ n, P7052186773841095314.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P3069658923954975045

`A331739(n+1)+A259445(n+1)`
-/

namespace A399739.P3069658923954975045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331739 (n + 1) + A259445 (n + 1)

end

end A399739.P3069658923954975045

namespace A399739

/-- `A331739(n+1)+A259445(n+1)` -/
def P3069658923954975045.Spec : Prop :=
  ∀ n, P3069658923954975045.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P13459258045971521455

`A064971(n+1)/A399738(n+1)`
-/

namespace A399739.P13459258045971521455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (A399738 (n + 1) : ℚ)

end

end A399739.P13459258045971521455

namespace A399739

/-- `A064971(n+1)/A399738(n+1)` -/
def P13459258045971521455.Spec : Prop :=
  ∀ n, P13459258045971521455.a n = (A399739 (n + 1) : ℚ)

end A399739

/-! ## A399739.P201531896180543720

`∑{d}[n+1, A069184(#)*A087003((n+1)/#)]`
-/

namespace A399739.P201531896180543720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069184 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399739.P201531896180543720

namespace A399739

/-- `∑{d}[n+1, A069184(#)*A087003((n+1)/#)]` -/
def P201531896180543720.Spec : Prop :=
  ∀ n, P201531896180543720.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P13056766554565920768

`∑{d}[n+1, A361019(#)*A394790((n+1)/#)]`
-/

namespace A399739.P13056766554565920768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A361019 d * A394790 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399739.P13056766554565920768

namespace A399739

/-- `∑{d}[n+1, A361019(#)*A394790((n+1)/#)]` -/
def P13056766554565920768.Spec : Prop :=
  ∀ n, P13056766554565920768.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P12011116738586094038

`∑{d}[n+1, A036987(#-1)*A186646((n+1)/#)]`
-/

namespace A399739.P12011116738586094038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A186646 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399739.P12011116738586094038

namespace A399739

/-- `∑{d}[n+1, A036987(#-1)*A186646((n+1)/#)]` -/
def P12011116738586094038.Spec : Prop :=
  ∀ n, P12011116738586094038.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P8100369904479643282

`A000265(A285326(A000265(n+1))+n)`
-/

namespace A399739.P8100369904479643282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A285326 (A000265 (n + 1)).toNat + (n : ℤ)).toNat

end

end A399739.P8100369904479643282

namespace A399739

/-- `A000265(A285326(A000265(n+1))+n)` -/
def P8100369904479643282.Spec : Prop :=
  ∀ n, P8100369904479643282.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P14613075093668049116

`A026741(A026741(A065883(n+1))+n+1)`
-/

namespace A399739.P14613075093668049116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (A065883 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A399739.P14613075093668049116

namespace A399739

/-- `A026741(A026741(A065883(n+1))+n+1)` -/
def P14613075093668049116.Spec : Prop :=
  ∀ n, P14613075093668049116.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P440545315856863258

`A000265(A161151(A000265(n+1)+n))`
-/

namespace A399739.P440545315856863258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A161151 (A000265 (n + 1) + (n : ℤ)).toNat).toNat

end

end A399739.P440545315856863258

namespace A399739

/-- `A000265(A161151(A000265(n+1)+n))` -/
def P440545315856863258.Spec : Prop :=
  ∀ n, P440545315856863258.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P1480298493038355050

`A000265(A220466(A000265(n+1)+n))`
-/

namespace A399739.P1480298493038355050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A220466 (A000265 (n + 1) + (n : ℤ)).toNat).toNat

end

end A399739.P1480298493038355050

namespace A399739

/-- `A000265(A220466(A000265(n+1)+n))` -/
def P1480298493038355050.Spec : Prop :=
  ∀ n, P1480298493038355050.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P18063297260075500991

`A350900(A093005(n+1))`
-/

namespace A399739.P18063297260075500991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350900 (A093005 (n + 1)).toNat

end

end A399739.P18063297260075500991

namespace A399739

/-- `A350900(A093005(n+1))` -/
def P18063297260075500991.Spec : Prop :=
  ∀ n, P18063297260075500991.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P7256398421999180446

`A384055((n+1)²)/A384055(n+1)`
-/

namespace A399739.P7256398421999180446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384055 ((n + 1) ^ 2) : ℚ) / (A384055 (n + 1) : ℚ)

end

end A399739.P7256398421999180446

namespace A399739

/-- `A384055((n+1)²)/A384055(n+1)` -/
def P7256398421999180446.Spec : Prop :=
  ∀ n, P7256398421999180446.a n = (A399739 (n + 1) : ℚ)

end A399739

/-!
# A399740: The sum of the unitary divisors d of n such that n/d is a perfect power (A001597).

The programs for A399740, there is no canonical definition to state claims against.
-/

/-! ## A399740.P10185685532151058293

`lcm(A123271(n+2), A399733(n+1))`
-/

namespace A399740.P10185685532151058293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A123271 (n + 2)) (A399733 (n + 1))

end

end A399740.P10185685532151058293

/-! ## A399740.P2490503421964803225

`and(A387410(n+1), A399733(n+1))`
-/

namespace A399740.P2490503421964803225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387410 (n + 1)) (A399733 (n + 1))

end

end A399740.P2490503421964803225

/-! ## A399740.P16465700605987975561

`and(A387415(n+1), A399733(n+1))`
-/

namespace A399740.P16465700605987975561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387415 (n + 1)) (A399733 (n + 1))

end

end A399740.P16465700605987975561

/-! ## A399740.P16251052779038492490

`and(A387418(n+1), A399733(n+1))`
-/

namespace A399740.P16251052779038492490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A387418 (n + 1)) (A399733 (n + 1))

end

end A399740.P16251052779038492490

/-! ## A399740.P5173366827783240028

`A399733(n+1)%A002762(n)`
-/

namespace A399740.P5173366827783240028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A399733 (n + 1)) (A002762 n)

end

end A399740.P5173366827783240028

/-!
# A399742: Table of B(n, m) read by antidiagonals: B(n, m) = Sum_{k=0..m-1} binomial(k+n, n) * 2^k and B(n, 0) = 0, for n >= 0, m >= 0.

The programs for A399742, the canonical program `A399742.P12674386564686535397` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399742 has offset 0).

The definition of A399742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399742.P9472778894708422167

`A038207(n)-A112857(n)`
-/

namespace A399742.P9472778894708422167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n - A112857 n

end

end A399742.P9472778894708422167

namespace A399742

/-- `A038207(n)-A112857(n)` -/
def P9472778894708422167.Spec : Prop :=
  ∀ n, P9472778894708422167.a n = A399742 n

end A399742

/-! ## A399742.P12674386564686535397

`A193845(n)-A038207(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A399742

/-- `A193845(n)-A038207(n)` -/
def P12674386564686535397.Spec : Prop :=
  ∀ n, P12674386564686535397.a n = A399742 n

theorem P12674386564686535397.correct : P12674386564686535397.Spec := by
  intro n
  simp only [A399742]

end A399742

/-! ## A399742.P1167809447618141455

`A115068(n+1)-A105728(n+1)`
-/

namespace A399742.P1167809447618141455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115068 (n + 1) - A105728 (n + 1)

end

end A399742.P1167809447618141455

namespace A399742

/-- `A115068(n+1)-A105728(n+1)` -/
def P1167809447618141455.Spec : Prop :=
  ∀ n, P1167809447618141455.a n = A399742 n

end A399742

/-! ## A399742.P3404828967289222211

`A105728(n+2)-A119468(n)`
-/

namespace A399742.P3404828967289222211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105728 (n + 2) - A119468 n

end

end A399742.P3404828967289222211

namespace A399742

/-- `A105728(n+2)-A119468(n)` -/
def P3404828967289222211.Spec : Prop :=
  ∀ n, P3404828967289222211.a n = A399742 n

end A399742

/-! ## A399742.P9236945139628357958

`A210204(n+1)-A249758(n)`
-/

namespace A399742.P9236945139628357958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210204 (n + 1) - A249758 n

end

end A399742.P9236945139628357958

namespace A399742

/-- `A210204(n+1)-A249758(n)` -/
def P9236945139628357958.Spec : Prop :=
  ∀ n, P9236945139628357958.a n = A399742 n

end A399742

/-!
# A399747: The sum of divisors d of n such that n/d is a perfect power (A001597).

The programs for A399747, the canonical program `A399747.P17310883521128029216` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399747 has offset 1).

The definition of A399747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399747.P4948307444397092481

`∑{d}[n+1, A399748(#)]`
-/

namespace A399747.P4948307444397092481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A399748 d

end

end A399747.P4948307444397092481

namespace A399747

/-- `∑{d}[n+1, A399748(#)]` -/
def P4948307444397092481.Spec : Prop :=
  ∀ n, P4948307444397092481.a n = A399747 (n + 1)

end A399747

/-! ## A399747.P17310883521128029216

`∑{d}[n+1, #*A075802((n+1)/#)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A399747

/-- `∑{d}[n+1, #*A075802((n+1)/#)]` -/
def P17310883521128029216.Spec : Prop :=
  ∀ n, P17310883521128029216.a n = A399747 (n + 1)

theorem P17310883521128029216.correct : P17310883521128029216.Spec := by
  intro n
  simp only [A399747, Nat.add_sub_cancel]

end A399747

/-! ## A399747.P11194986539962870072

`∑{d}[n+1, A000010(#)*A091050((n+1)/#)]`
-/

namespace A399747.P11194986539962870072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A091050 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399747.P11194986539962870072

namespace A399747

/-- `∑{d}[n+1, A000010(#)*A091050((n+1)/#)]` -/
def P11194986539962870072.Spec : Prop :=
  ∀ n, P11194986539962870072.a n = A399747 (n + 1)

end A399747

/-! ## A399747.P9872138653442556715

`∑{d}[n+1, A206369(#)*A304327((n+1)/#)]`
-/

namespace A399747.P9872138653442556715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A304327 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399747.P9872138653442556715

namespace A399747

/-- `∑{d}[n+1, A206369(#)*A304327((n+1)/#)]` -/
def P9872138653442556715.Spec : Prop :=
  ∀ n, P9872138653442556715.a n = A399747 (n + 1)

end A399747

/-!
# A399748: The number of integers k from 1 to n such that gcd(n,k) is a perfect power (A001597).

The programs for A399748, the canonical program `A399748.P7728002996692195864` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399748 has offset 1).

The definition of A399748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399748.P7728002996692195864

`∑{d}[n+1, A000010(#)*A075802((n+1)/#)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A399748

/-- `∑{d}[n+1, A000010(#)*A075802((n+1)/#)]` -/
def P7728002996692195864.Spec : Prop :=
  ∀ n, P7728002996692195864.a n = A399748 (n + 1)

theorem P7728002996692195864.correct : P7728002996692195864.Spec := by
  intro n
  simp only [A399748, Nat.add_sub_cancel]

end A399748

/-! ## A399748.P15107455396437478984

`∑{d}[n+1, A074722(#)*A304327((n+1)/#)]`
-/

namespace A399748.P15107455396437478984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A304327 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399748.P15107455396437478984

namespace A399748

/-- `∑{d}[n+1, A074722(#)*A304327((n+1)/#)]` -/
def P15107455396437478984.Spec : Prop :=
  ∀ n, P15107455396437478984.a n = A399748 (n + 1)

end A399748

/-! ## A399748.P15849923933593801456

`∑{d}[n+1, A008683(#)*A399747((n+1)/#)]`
-/

namespace A399748.P15849923933593801456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A399747 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399748.P15849923933593801456

namespace A399748

/-- `∑{d}[n+1, A008683(#)*A399747((n+1)/#)]` -/
def P15849923933593801456.Spec : Prop :=
  ∀ n, P15849923933593801456.a n = A399748 (n + 1)

end A399748

/-!
# A399754: Near-repdigit Smith numbers.

The programs for A399754, there is no canonical definition to state claims against.
-/

/-! ## A399754.P10115678277982577741

`∩[A006753(n+1), A210666(n+1)]`
-/

namespace A399754.P10115678277982577741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399754.P10115678277982577741

/-!
# A399755: Numbers k such that the generalized Pell equation x^2-(k^2+1)*(y^2+1) = 0 has more than one fundamental solution in (x, y).

The programs for A399755, there is no canonical definition to state claims against.
-/

/-! ## A399755.P14251305587636961065

`filter[A290176(n+1), A193496(#)]`
-/

namespace A399755.P14251305587636961065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A193496 (f1 j).toNat = 1) n)

end

end A399755.P14251305587636961065

/-!
# A399756: Numbers k such that 2^k-2 is a practical number.

The programs for A399756, there is no canonical definition to state claims against.
-/

/-! ## A399756.P5635927122462558055

`A093891(n+1)+A093890(A160994(n+1))`
-/

namespace A399756.P5635927122462558055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093891 (n + 1) + A093890 (A160994 (n + 1)).toNat

end

end A399756.P5635927122462558055

/-!
# A399763: a(n) = index of first appearance of a building of height n in the city-building sequence A400000.

The programs for A399763, there is no canonical definition to state claims against.
-/

/-! ## A399763.P15852332524341614943

`A400121(A399965(n))`
-/

namespace A399763.P15852332524341614943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400121 (A399965 n).toNat

end

end A399763.P15852332524341614943

/-! ## A399763.P12341967490324945716

`∩[A206350(n+1), A400121(n)]`
-/

namespace A399763.P12341967490324945716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400121 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399763.P12341967490324945716

/-!
# A399764: The main diagonal of the infinite Tchoukaillon array.

The programs for A399764, there is no canonical definition to state claims against.
-/

/-! ## A399764.P6104379146871074011

`A344009((n+1)²+n²)`
-/

namespace A399764.P6104379146871074011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344009 ((n + 1) ^ 2 + n ^ 2)

end

end A399764.P6104379146871074011

/-!
# A399766: Number of unlabeled directed strongly regular graphs on n vertices.

The programs for A399766, there is no canonical definition to state claims against.
-/

/-! ## A399766.P14454380952553912000

`A199571(A338805(n+2))`
-/

namespace A399766.P14454380952553912000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199571 (A338805 (n + 2)).toNat

end

end A399766.P14454380952553912000

/-!
# A399767: Number of transitive relations on unlabeled points with no isolated point and no connected component consisting of a single arrow, having defect n, where the defect of a relation with v points and e related pairs is 2*e - v.

The programs for A399767, there is no canonical definition to state claims against.
-/

/-! ## A399767.P17265957918529515026

`A184419(3^n)-n`
-/

namespace A399767.P17265957918529515026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184419 (3 ^ n) - (n : ℤ)

end

end A399767.P17265957918529515026

/-!
# A399769: Maximum length of a strictly increasing sequence of positive divisors d_1, ..., d_k of n such that d_i divides d_{i+1} - 1 for 1 <= i < k.

The programs for A399769, there is no canonical definition to state claims against.
-/

/-! ## A399769.P5719533714597968086

`A067131(A333492(n+1))`
-/

namespace A399769.P5719533714597968086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067131 (A333492 (n + 1)).toNat

end

end A399769.P5719533714597968086

/-! ## A399769.P15115862290351532837

`A323424(A376191(n+1))`
-/

namespace A399769.P15115862290351532837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323424 (A376191 (n + 1)).toNat

end

end A399769.P15115862290351532837

/-! ## A399769.P17943711990544873112

`A378122(A314044(n))`
-/

namespace A399769.P17943711990544873112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378122 (A314044 n).toNat

end

end A399769.P17943711990544873112

/-! ## A399769.P9526833664974485455

`A000005(A000005(A001222(A005179(n+2))))`
-/

namespace A399769.P9526833664974485455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A001222 (A005179 (n + 2)).toNat).toNat).toNat

end

end A399769.P9526833664974485455

/-! ## A399769.P17881288754486604397

`A354907(A315612(n))`
-/

namespace A399769.P17881288754486604397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354907 (A315612 n).toNat

end

end A399769.P17881288754486604397

/-!
# A399771: Number of connected transitive relations on unlabeled points with no isolated point, having defect n, where the defect of a relation with v points and e related pairs is 2*e - v.

The programs for A399771, there is no canonical definition to state claims against.
-/

/-! ## A399771.P3381740974207340606

`A258632(A160823(n+1))`
-/

namespace A399771.P3381740974207340606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258632 (A160823 (n + 1)).toNat

end

end A399771.P3381740974207340606

/-!
# A399772: Number of labeled directed strongly regular graphs on n vertices.

The programs for A399772, there is no canonical definition to state claims against.
-/

/-! ## A399772.P16869023078830154776

`A339628(n*Δ[n²])`
-/

namespace A399772.P16869023078830154776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339628 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A399772.P16869023078830154776

/-! ## A399772.P13459856918459727325

`A055363(A026854(n))`
-/

namespace A399772.P13459856918459727325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A026854 n).toNat

end

end A399772.P13459856918459727325

/-!
# A399773: a(1) = a(2) = 1; for n > 2, a(n) = a(a(n-1)) + a(n-a(n-1)) + (-1)^n.

The programs for A399773, the canonical program `A399773.P204488252996263267` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399773 has offset 1).

The definition of A399773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-1)+a(n-a(n-1))+(-1)^(n+1)` (program `A399773.P204488252996263267`, by `A399773.P204488252996263267.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399773.P204488252996263267

`a(a(n-1)-1)+a(n-a(n-1))+(-1)^(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399773

/-- `a(a(n-1)-1)+a(n-a(n-1))+(-1)^(n+1)` -/
def P204488252996263267.Spec : Prop :=
  ∀ n, P204488252996263267.a n = A399773 (n + 1)

theorem P204488252996263267.correct : P204488252996263267.Spec := by
  intro n
  simp only [A399773, Nat.add_sub_cancel]

end A399773

/-!
# A399774: Number of nonisomorphic primitive strongly regular graphs on n vertices.

The programs for A399774, there is no canonical definition to state claims against.
-/

/-! ## A399774.P9664720391134732208

`A088741(n+1)-A325765(n)`
-/

namespace A399774.P9664720391134732208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088741 (n + 1) - A325765 n

end

end A399774.P9664720391134732208

/-!
# A399776: a(n) = 8*a(n-1) + 10*a(n-2), with a(0)=1 and a(1)=4.

The programs for A399776, the canonical program `A399776.P13636545612024227465` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399776 has offset 0).

The definition of A399776 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+10*a(n-2)` (program `A399776.P13636545612024227465`, by `A399776.P13636545612024227465.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399776.P3537755732332349084

`ogf((1-4x)/(1-8x-10x^2))`
-/

namespace A399776.P3537755732332349084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -8, -10] n

end

end A399776.P3537755732332349084

namespace A399776

/-- `ogf((1-4x)/(1-8x-10x^2))` -/
def P3537755732332349084.Spec : Prop :=
  ∀ n, P3537755732332349084.a n = A399776 n

end A399776

/-! ## A399776.P13636545612024227465

`8*a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A399776

/-- `8*a(n-1)+10*a(n-2)` -/
def P13636545612024227465.Spec : Prop :=
  ∀ n, (P13636545612024227465.a n : ℤ) = A399776 n

theorem P13636545612024227465.correct : P13636545612024227465.Spec := by
  intro n
  simp only [A399776]

end A399776

/-! ## A399776.P14640858474792799065

`((4+sqrt(26))^n+(4-sqrt(26))^n)/2`
-/

namespace A399776.P14640858474792799065
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (26 : ℝ)) ^ n + (4 - Real.sqrt (26 : ℝ)) ^ n) / 2

end

end A399776.P14640858474792799065

namespace A399776

/-- `((4+sqrt(26))^n+(4-sqrt(26))^n)/2` -/
def P14640858474792799065.Spec : Prop :=
  ∀ n, P14640858474792799065.a n = (A399776 n : ℝ)

theorem P14640858474792799065.correct : P14640858474792799065.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A399776, Nat.add_sub_cancel, A399776.P14640858474792799065.a, A399776.P13636545612024227465.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A399776, Nat.add_sub_cancel, A399776.P14640858474792799065.a, A399776.P13636545612024227465.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A399776

/-!
# A399779: Maximum size of a subset S of {1,...,n} such that x does not divide y*z for any x,y,z in S with x != y and x != z.

The programs for A399779, the canonical program `A399779.P14676773210088462195` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399779 has offset 1).

The definition of A399779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399779.P14676773210088462195

`∑[A341994((n+1)²)]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A399779

/-- `∑[A341994((n+1)²)]+1` -/
def P14676773210088462195.Spec : Prop :=
  ∀ n, P14676773210088462195.a n = A399779 (n + 1)

theorem P14676773210088462195.correct : P14676773210088462195.Spec := by
  intro n
  simp only [A399779, Nat.add_sub_cancel]

end A399779

/-! ## A399779.P1378625847362828542

`∑[A354874((n+1)²)]+1`
-/

namespace A399779.P1378625847362828542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A399779.P1378625847362828542

namespace A399779

/-- `∑[A354874((n+1)²)]+1` -/
def P1378625847362828542.Spec : Prop :=
  ∀ n, P1378625847362828542.a n = A399779 (n + 1)

end A399779

/-! ## A399779.P12417670869606594209

`∑[A398543((n+1)²)]`
-/

namespace A399779.P12417670869606594209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398543 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399779.P12417670869606594209

namespace A399779

/-- `∑[A398543((n+1)²)]` -/
def P12417670869606594209.Spec : Prop :=
  ∀ n, P12417670869606594209.a n = A399779 (n + 1)

end A399779

/-! ## A399779.P6285614208998900711

`A230774(A056813((n+1)²)²)`
-/

namespace A399779.P6285614208998900711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230774 (A056813 ((n + 1) ^ 2) ^ 2).toNat

end

end A399779.P6285614208998900711

namespace A399779

/-- `A230774(A056813((n+1)²)²)` -/
def P6285614208998900711.Spec : Prop :=
  ∀ n, P6285614208998900711.a n = A399779 (n + 1)

end A399779

/-! ## A399779.P14661593163672310281

`A056811((n+1)²+3)`
-/

namespace A399779.P14661593163672310281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 ((n + 1) ^ 2 + 3)

end

end A399779.P14661593163672310281

namespace A399779

/-- `A056811((n+1)²+3)` -/
def P14661593163672310281.Spec : Prop :=
  ∀ n, P14661593163672310281.a n = A399779 (n + 1)

end A399779

/-! ## A399779.P11179952045274631799

`A230773(A379405(n))`
-/

namespace A399779.P11179952045274631799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230773 (A379405 n).toNat

end

end A399779.P11179952045274631799

namespace A399779

/-- `A230773(A379405(n))` -/
def P11179952045274631799.Spec : Prop :=
  ∀ n, P11179952045274631799.a n = A399779 (n + 1)

end A399779

/-! ## A399779.P5625059586237100344

`∏{e}[A048656(n+1), #]`
-/

namespace A399779.P5625059586237100344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A399779.P5625059586237100344

namespace A399779

/-- `∏{e}[A048656(n+1), #]` -/
def P5625059586237100344.Spec : Prop :=
  ∀ n, (P5625059586237100344.a n : ℤ) = A399779 (n + 1)

end A399779

/-! ## A399779.P2863179190194414260

`∑[A143519(2*(n+1)²)]`
-/

namespace A399779.P2863179190194414260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143519 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399779.P2863179190194414260

namespace A399779

/-- `∑[A143519(2*(n+1)²)]` -/
def P2863179190194414260.Spec : Prop :=
  ∀ n, P2863179190194414260.a n = A399779 (n + 1)

end A399779

/-! ## A399779.P2349940579165513003

`gcd(A061009(n+1), A119836(n))`
-/

namespace A399779.P2349940579165513003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061009 (n + 1)) (A119836 n)

end

end A399779.P2349940579165513003

namespace A399779

/-- `gcd(A061009(n+1), A119836(n))` -/
def P2349940579165513003.Spec : Prop :=
  ∀ n, (P2349940579165513003.a n : ℤ) = A399779 (n + 1)

end A399779

/-! ## A399779.P3635720563095838944

`A026233(A094802(n+1))`
-/

namespace A399779.P3635720563095838944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A094802 (n + 1)).toNat

end

end A399779.P3635720563095838944

namespace A399779

/-- `A026233(A094802(n+1))` -/
def P3635720563095838944.Spec : Prop :=
  ∀ n, P3635720563095838944.a n = A399779 (n + 1)

end A399779

/-!
# A399781: a(n) is the average of the lower and upper end of the earliest prime gap of length 2*n that does not contain a semiprime A001358.

The programs for A399781, there is no canonical definition to state claims against.
-/

/-! ## A399781.P12253463547136767933

`A136344(n+1)+n+1`
-/

namespace A399781.P12253463547136767933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136344 (n + 1) + (n + 1 : ℤ)

end

end A399781.P12253463547136767933

/-!
# A399784: Power loops: the number of circular permutations (reversals not counted as different) of the numbers 1 to n such that the sum of any two consecutive numbers is a perfect power.

The programs for A399784, there is no canonical definition to state claims against.
-/

/-! ## A399784.P12220194564136657875

`A399785(n+17)-A399783(n+17)`
-/

namespace A399784.P12220194564136657875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399785 (n + 17) - A399783 (n + 17)

end

end A399784.P12220194564136657875

/-! ## A399784.P9261183810100625169

`(A399786(n+17)-A399785(n+17))/(n+16)`
-/

namespace A399784.P9261183810100625169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399786 (n + 17) - A399785 (n + 17) : ℚ) / (n + 16 : ℚ)

end

end A399784.P9261183810100625169

/-! ## A399784.P11005759344682589580

`(A399786(n+17)-A399783(n+17))/(n+17)`
-/

namespace A399784.P11005759344682589580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399786 (n + 17) - A399783 (n + 17) : ℚ) / (n + 17 : ℚ)

end

end A399784.P11005759344682589580

/-!
# A399787: Length of the longest palindromic substring of n written in base 10.

The programs for A399787, there is no canonical definition to state claims against.
-/

/-! ## A399787.P8214215226971628050

`gcd(A010168(n), A187353(n))`
-/

namespace A399787.P8214215226971628050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010168 n) (A187353 (n + 1939))

end

end A399787.P8214215226971628050

/-! ## A399787.P11402693231215964049

`gcd(2, A351653(n))`
-/

namespace A399787.P11402693231215964049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A351653 n)

end

end A399787.P11402693231215964049

/-! ## A399787.P9071286510748628867

`gcd(A027713(n+1), A040217(n))`
-/

namespace A399787.P9071286510748628867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027713 (n + 1)) (A040217 n)

end

end A399787.P9071286510748628867

/-! ## A399787.P17880457523185093789

`gcd(2, A330286(n))`
-/

namespace A399787.P17880457523185093789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A330286 n)

end

end A399787.P17880457523185093789

/-!
# A399793: a(n) is the largest size of a subset S of {1, ..., n} such that there does not exist a function f: S -> {-1,1} satisfying |Sum_{x in S} x*f(x)| <= 1.

The programs for A399793, there is no canonical definition to state claims against.
-/

/-! ## A399793.P6262483271145615128

`A325678(A038614(n+1))`
-/

namespace A399793.P6262483271145615128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A038614 (n + 1)).toNat

end

end A399793.P6262483271145615128

/-! ## A399793.P5975787097500469373

`A235402(A147849(n+1))`
-/

namespace A399793.P5975787097500469373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235402 (A147849 (n + 1)).toNat

end

end A399793.P5975787097500469373

/-! ## A399793.P14447734148532705564

`A325678(A080191(n+1))`
-/

namespace A399793.P14447734148532705564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A080191 (n + 1)).toNat

end

end A399793.P14447734148532705564

/-! ## A399793.P13982073221690212794

`A325678(A386324(n+1))`
-/

namespace A399793.P13982073221690212794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A386324 (n + 1)).toNat

end

end A399793.P13982073221690212794

/-! ## A399793.P1761657096227508500

`A062571(A167857(n+1))`
-/

namespace A399793.P1761657096227508500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062571 (A167857 (n + 1)).toNat

end

end A399793.P1761657096227508500

/-!
# A399796: Number of distinct nonzero coefficients of (1+x+x^(-1)+y+y^(-1))^n.

The programs for A399796, there is no canonical definition to state claims against.
-/

/-! ## A399796.P4302281495180382902

`A367069(A127719(n+1))`
-/

namespace A399796.P4302281495180382902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367069 (A127719 (n + 1)).toNat

end

end A399796.P4302281495180382902

