import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A376502: Primes that contain at least two different even digits and at least two different odd digits where any permutation of the odd digits and any permutation of the even digits produces a prime. See comments for the treatment of 0's.

The programs for A376502, there is no canonical definition to state claims against.
-/

/-! ## A376502.P16927296095322347581

`A377564(A361396(n+1))`
-/

namespace A376502.P16927296095322347581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377564 (A361396 (n + 1)).toNat

end

end A376502.P16927296095322347581

/-!
# A376504: Number of divisors of n that are both composite and squarefree.

The programs for A376504, the canonical program `A376504.P12289890857249372903` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376504 has offset 1).

The definition of A376504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376504.P12289890857249372903

`A034444(n+1)-A001221(n+1)-1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A376504

/-- `A034444(n+1)-A001221(n+1)-1` -/
def P12289890857249372903.Spec : Prop :=
  ∀ n, P12289890857249372903.a n = A376504 (n + 1)

theorem P12289890857249372903.correct : P12289890857249372903.Spec := by
  intro n
  simp only [A376504, Nat.add_sub_cancel]

end A376504

/-! ## A376504.P8349582798783334755

`A354870(n+1)-1`
-/

namespace A376504.P8349582798783334755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354870 (n + 1) - 1

end

end A376504.P8349582798783334755

namespace A376504

/-- `A354870(n+1)-1` -/
def P8349582798783334755.Spec : Prop :=
  ∀ n, P8349582798783334755.a n = A376504 (n + 1)

end A376504

/-! ## A376504.P14837890715902964277

`A055212(∏{p}[n+1, #])`
-/

namespace A376504.P14837890715902964277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A376504.P14837890715902964277

namespace A376504

/-- `A055212(∏{p}[n+1, #])` -/
def P14837890715902964277.Spec : Prop :=
  ∀ n, P14837890715902964277.a n = A376504 (n + 1)

end A376504

/-! ## A376504.P7484781332408600801

`A081400(∏{p}[n+1, #])`
-/

namespace A376504.P7484781332408600801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081400 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A376504.P7484781332408600801

namespace A376504

/-- `A081400(∏{p}[n+1, #])` -/
def P7484781332408600801.Spec : Prop :=
  ∀ n, P7484781332408600801.a n = A376504 (n + 1)

end A376504

/-! ## A376504.P1020333485369128490

`A000325(∑{p}[n+1, gcd(n, #)])-1`
-/

namespace A376504.P1020333485369128490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) - 1

end

end A376504.P1020333485369128490

namespace A376504

/-- `A000325(∑{p}[n+1, gcd(n, #)])-1` -/
def P1020333485369128490.Spec : Prop :=
  ∀ n, P1020333485369128490.a n = A376504 (n + 1)

end A376504

/-! ## A376504.P13746574026085297154

`A055212(A007947(n+1))`
-/

namespace A376504.P13746574026085297154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (A007947 (n + 1)).toNat

end

end A376504.P13746574026085297154

namespace A376504

/-- `A055212(A007947(n+1))` -/
def P13746574026085297154.Spec : Prop :=
  ∀ n, P13746574026085297154.a n = A376504 (n + 1)

end A376504

/-! ## A376504.P8850250625012722289

`A055212(A292586(n+1))`
-/

namespace A376504.P8850250625012722289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (A292586 (n + 1)).toNat

end

end A376504.P8850250625012722289

namespace A376504

/-- `A055212(A292586(n+1))` -/
def P8850250625012722289.Spec : Prop :=
  ∀ n, P8850250625012722289.a n = A376504 (n + 1)

end A376504

/-! ## A376504.P6363613889321984577

`A081400(A007947((n+1)²))`
-/

namespace A376504.P6363613889321984577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081400 (A007947 ((n + 1) ^ 2)).toNat

end

end A376504.P6363613889321984577

namespace A376504

/-- `A081400(A007947((n+1)²))` -/
def P6363613889321984577.Spec : Prop :=
  ∀ n, P6363613889321984577.a n = A376504 (n + 1)

end A376504

/-! ## A376504.P8356687906872830476

`A336107(A333175(n+1)²)`
-/

namespace A376504.P8356687906872830476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336107 (A333175 (n + 1) ^ 2).toNat

end

end A376504.P8356687906872830476

namespace A376504

/-- `A336107(A333175(n+1)²)` -/
def P8356687906872830476.Spec : Prop :=
  ∀ n, P8356687906872830476.a n = A376504 (n + 1)

end A376504

/-! ## A376504.P4205996227299617630

`and(A002450(n), A083399(n+1))`
-/

namespace A376504.P4205996227299617630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002450 n) (A083399 (n + 1))

end

end A376504.P4205996227299617630

namespace A376504

/-- `and(A002450(n), A083399(n+1))` -/
def P4205996227299617630.Spec : Prop :=
  ∀ n, P4205996227299617630.a n = A376504 (n + 1)

end A376504

/-! ## A376504.P1520371841531387129

`A259936(A129202(n))-1`
-/

namespace A376504.P1520371841531387129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259936 (A129202 n).toNat - 1

end

end A376504.P1520371841531387129

namespace A376504

/-- `A259936(A129202(n))-1` -/
def P1520371841531387129.Spec : Prop :=
  ∀ n, P1520371841531387129.a n = A376504 (n + 1)

end A376504

/-! ## A376504.P6943439306450116193

`A090867(A259936((n+1)²))`
-/

namespace A376504.P6943439306450116193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090867 (A259936 ((n + 1) ^ 2)).toNat

end

end A376504.P6943439306450116193

namespace A376504

/-- `A090867(A259936((n+1)²))` -/
def P6943439306450116193.Spec : Prop :=
  ∀ n, P6943439306450116193.a n = A376504 (n + 1)

end A376504

/-! ## A376504.P17916951230258363490

`A374123(A024361((n+1)²))`
-/

namespace A376504.P17916951230258363490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374123 (A024361 ((n + 1) ^ 2)).toNat

end

end A376504.P17916951230258363490

namespace A376504

/-- `A374123(A024361((n+1)²))` -/
def P17916951230258363490.Spec : Prop :=
  ∀ n, P17916951230258363490.a n = A376504 (n + 1)

end A376504

/-! ## A376504.P12331230610439755474

`and(A083399(n+1), A178854(n))`
-/

namespace A376504.P12331230610439755474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083399 (n + 1)) (A178854 n)

end

end A376504.P12331230610439755474

namespace A376504

/-- `and(A083399(n+1), A178854(n))` -/
def P12331230610439755474.Spec : Prop :=
  ∀ n, P12331230610439755474.a n = A376504 (n + 1)

end A376504

/-! ## A376504.P1093387858454318220

`A304183(A034444((n+1)²))`
-/

namespace A376504.P1093387858454318220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304183 (A034444 ((n + 1) ^ 2)).toNat

end

end A376504.P1093387858454318220

namespace A376504

/-- `A304183(A034444((n+1)²))` -/
def P1093387858454318220.Spec : Prop :=
  ∀ n, P1093387858454318220.a n = A376504 (n + 1)

end A376504

/-! ## A376504.P7090942338145662587

`A001221(A377071((n+1)²))²`
-/

namespace A376504.P7090942338145662587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A377071 ((n + 1) ^ 2)).toNat ^ 2

end

end A376504.P7090942338145662587

namespace A376504

/-- `A001221(A377071((n+1)²))²` -/
def P7090942338145662587.Spec : Prop :=
  ∀ n, P7090942338145662587.a n = A376504 (n + 1)

end A376504

/-!
# A376505: Number of m <= n such that rad(m) | n that are neither squarefree nor prime powers, where rad = A007947.

The programs for A376505, there is no canonical definition to state claims against.
-/

/-! ## A376505.P12281307792048086809

`A102669(A110981(n+1))`
-/

namespace A376505.P12281307792048086809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A110981 (n + 1)).toNat

end

end A376505.P12281307792048086809

/-! ## A376505.P15974743480632020371

`Δ[ceil(n²/12)]%A006227(A065205(n+1))`
-/

namespace A376505.P15974743480632020371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 12⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A006227 (A065205 (n + 1)).toNat)

end

end A376505.P15974743480632020371

/-! ## A376505.P17630512880452360374

`A054396(A255009(n))%A008480(n+1)`
-/

namespace A376505.P17630512880452360374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054396 (A255009 n).toNat) (A008480 (n + 1))

end

end A376505.P17630512880452360374

/-! ## A376505.P3497877064311584182

`A160552(A299972(2*n+3))%A014649(n+1)`
-/

namespace A376505.P3497877064311584182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160552 (A299972 (2 * n + 3)).toNat) (A014649 (n + 1))

end

end A376505.P3497877064311584182

/-! ## A376505.P3704654655788034212

`A048675(gcd(A014649(n+1), A368437(2*n+5)))`
-/

namespace A376505.P3704654655788034212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (Int.gcd (A014649 (n + 1)) (A368437 (2 * n + 5)))

end

end A376505.P3704654655788034212

/-!
# A376506: Natural numbers whose iterated squaring modulo 100 eventually settles at the attractor 1.

The programs for A376506, the canonical program `A376506.P1223367199400673748` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376506 has offset 1).

The definition of A376506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376506.P1223367199400673748

`ogf((1+6x+36x^2+6x^3+x^4)/(1-x-x^4+x^5))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376506

/-- `ogf((1+6x+36x^2+6x^3+x^4)/(1-x-x^4+x^5))` -/
def P1223367199400673748.Spec : Prop :=
  ∀ n, P1223367199400673748.a n = A376506 (n + 1)

theorem P1223367199400673748.correct : P1223367199400673748.Spec := by
  intro n
  simp only [A376506, Nat.add_sub_cancel]

end A376506

/-! ## A376506.P6422595350280780415

`∪[A045800(n+1), A045805(n+1)]`
-/

namespace A376506.P6422595350280780415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376506.P6422595350280780415

namespace A376506

/-- `∪[A045800(n+1), A045805(n+1)]` -/
def P6422595350280780415.Spec : Prop :=
  ∀ n, (P6422595350280780415.a n : ℤ) = A376506 (n + 1)

end A376506

/-! ## A376506.P11789950775349988614

`∪[A376538(n+1), A376541(n+1)]`
-/

namespace A376506.P11789950775349988614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376506.P11789950775349988614

namespace A376506

/-- `∪[A376538(n+1), A376541(n+1)]` -/
def P11789950775349988614.Spec : Prop :=
  ∀ n, (P11789950775349988614.a n : ℤ) = A376506 (n + 1)

end A376506

/-! ## A376506.P11907465019913163874

`∩[2*n+1, A056021(n+1)]`
-/

namespace A376506.P11907465019913163874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376506.P11907465019913163874

namespace A376506

/-- `∩[2*n+1, A056021(n+1)]` -/
def P11907465019913163874.Spec : Prop :=
  ∀ n, (P11907465019913163874.a n : ℤ) = A376506 (n + 1)

end A376506

/-! ## A376506.P10159684458742721821

`A056021(A047527(n+2))`
-/

namespace A376506.P10159684458742721821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (A047527 (n + 2)).toNat

end

end A376506.P10159684458742721821

namespace A376506

/-- `A056021(A047527(n+2))` -/
def P10159684458742721821.Spec : Prop :=
  ∀ n, P10159684458742721821.a n = A376506 (n + 1)

end A376506

/-! ## A376506.P8212127335231161663

`∩[A056021(n+1), A241662(n+1)]`
-/

namespace A376506.P8212127335231161663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376506.P8212127335231161663

namespace A376506

/-- `∩[A056021(n+1), A241662(n+1)]` -/
def P8212127335231161663.Spec : Prop :=
  ∀ n, (P8212127335231161663.a n : ℤ) = A376506 (n + 1)

end A376506

/-! ## A376506.P1138182638284311805

`∩[A056021(n+1), A089684(n+1)]`
-/

namespace A376506.P1138182638284311805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376506.P1138182638284311805

namespace A376506

/-- `∩[A056021(n+1), A089684(n+1)]` -/
def P1138182638284311805.Spec : Prop :=
  ∀ n, (P1138182638284311805.a n : ℤ) = A376506 (n + 1)

end A376506

/-! ## A376506.P8719809177617020359

`∩[A056021(n+1), A247328(n+1)]`
-/

namespace A376506.P8719809177617020359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376506.P8719809177617020359

namespace A376506

/-- `∩[A056021(n+1), A247328(n+1)]` -/
def P8719809177617020359.Spec : Prop :=
  ∀ n, (P8719809177617020359.a n : ℤ) = A376506 (n + 1)

end A376506

/-! ## A376506.P17267212951408087102

`∩[A056021(n+1), A005843(n)+1]`
-/

namespace A376506.P17267212951408087102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376506.P17267212951408087102

namespace A376506

/-- `∩[A056021(n+1), A005843(n)+1]` -/
def P17267212951408087102.Spec : Prop :=
  ∀ n, (P17267212951408087102.a n : ℤ) = A376506 (n + 1)

end A376506

/-! ## A376506.P15588933931031560977

`∩[A056021(n+1), A163300(n+1)+1]`
-/

namespace A376506.P15588933931031560977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376506.P15588933931031560977

namespace A376506

/-- `∩[A056021(n+1), A163300(n+1)+1]` -/
def P15588933931031560977.Spec : Prop :=
  ∀ n, (P15588933931031560977.a n : ℤ) = A376506 (n + 1)

end A376506

/-! ## A376506.P11333392035726460814

`filter[A056021(n+1), A010146(#)]`
-/

namespace A376506.P11333392035726460814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010146 (f1 j).toNat = 1) n)

end

end A376506.P11333392035726460814

namespace A376506

/-- `filter[A056021(n+1), A010146(#)]` -/
def P11333392035726460814.Spec : Prop :=
  ∀ n, P11333392035726460814.a n = A376506 (n + 1)

end A376506

/-! ## A376506.P3358526103933919079

`filter[A056021(n+1), A010157(#)]`
-/

namespace A376506.P3358526103933919079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010157 (f1 j).toNat = 1) n)

end

end A376506.P3358526103933919079

namespace A376506

/-- `filter[A056021(n+1), A010157(#)]` -/
def P3358526103933919079.Spec : Prop :=
  ∀ n, P3358526103933919079.a n = A376506 (n + 1)

end A376506

/-! ## A376506.P18006296917403721993

`∩[A056021(n+1), A004273(n)]`
-/

namespace A376506.P18006296917403721993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376506.P18006296917403721993

namespace A376506

/-- `∩[A056021(n+1), A004273(n)]` -/
def P18006296917403721993.Spec : Prop :=
  ∀ n, (P18006296917403721993.a n : ℤ) = A376506 (n + 1)

end A376506

/-! ## A376506.P14605887069026887368

`∩[A056021(n+1), A223134(n)]`
-/

namespace A376506.P14605887069026887368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376506.P14605887069026887368

namespace A376506

/-- `∩[A056021(n+1), A223134(n)]` -/
def P14605887069026887368.Spec : Prop :=
  ∀ n, (P14605887069026887368.a n : ℤ) = A376506 (n + 1)

end A376506

/-! ## A376506.P17785130630942943273

`∩[A056021(n+1), A140139(n+1)]`
-/

namespace A376506.P17785130630942943273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376506.P17785130630942943273

namespace A376506

/-- `∩[A056021(n+1), A140139(n+1)]` -/
def P17785130630942943273.Spec : Prop :=
  ∀ n, (P17785130630942943273.a n : ℤ) = A376506 (n + 1)

end A376506

/-! ## A376506.P2359567213860511516

`∩[A056021(n+1), A060747(n)+2]`
-/

namespace A376506.P2359567213860511516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376506.P2359567213860511516

namespace A376506

/-- `∩[A056021(n+1), A060747(n)+2]` -/
def P2359567213860511516.Spec : Prop :=
  ∀ n, (P2359567213860511516.a n : ℤ) = A376506 (n + 1)

end A376506

/-! ## A376506.P6331890491792151942

`∩[A056021(n+1), A004274(n)]`
-/

namespace A376506.P6331890491792151942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376506.P6331890491792151942

namespace A376506

/-- `∩[A056021(n+1), A004274(n)]` -/
def P6331890491792151942.Spec : Prop :=
  ∀ n, (P6331890491792151942.a n : ℤ) = A376506 (n + 1)

end A376506

/-! ## A376506.P14941878481531169993

`∩[A056021(n+1), A004276(n)]`
-/

namespace A376506.P14941878481531169993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376506.P14941878481531169993

namespace A376506

/-- `∩[A056021(n+1), A004276(n)]` -/
def P14941878481531169993.Spec : Prop :=
  ∀ n, (P14941878481531169993.a n : ℤ) = A376506 (n + 1)

end A376506

/-! ## A376506.P16352602228341433848

`∩[A056021(n+1), A004281(n)]`
-/

namespace A376506.P16352602228341433848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376506.P16352602228341433848

namespace A376506

/-- `∩[A056021(n+1), A004281(n)]` -/
def P16352602228341433848.Spec : Prop :=
  ∀ n, (P16352602228341433848.a n : ℤ) = A376506 (n + 1)

end A376506

/-! ## A376506.P198833409990516732

`∩[A056021(n+1), A060747(n)]`
-/

namespace A376506.P198833409990516732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376506.P198833409990516732

namespace A376506

/-- `∩[A056021(n+1), A060747(n)]` -/
def P198833409990516732.Spec : Prop :=
  ∀ n, (P198833409990516732.a n : ℤ) = A376506 (n + 1)

end A376506

/-!
# A376507: Natural numbers whose iterated squaring modulo 100 eventually settles at the attractor 76.

The programs for A376507, the canonical program `A376507.P6221782421833258072` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376507 has offset 1).

The definition of A376507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376507.P6221782421833258072

`ogf((18+6x+2x^2+6x^3+18x^4)/(1-x-x^4+x^5))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376507

/-- `ogf((18+6x+2x^2+6x^3+18x^4)/(1-x-x^4+x^5))` -/
def P6221782421833258072.Spec : Prop :=
  ∀ n, P6221782421833258072.a n = A376507 (n + 1)

theorem P6221782421833258072.correct : P6221782421833258072.Spec := by
  intro n
  simp only [A376507, Nat.add_sub_cancel]

end A376507

/-! ## A376507.P13619723797422315883

`∪[A376539(n+1), A376540(n+1)]`
-/

namespace A376507.P13619723797422315883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376507.P13619723797422315883

namespace A376507

/-- `∪[A376539(n+1), A376540(n+1)]` -/
def P13619723797422315883.Spec : Prop :=
  ∀ n, (P13619723797422315883.a n : ℤ) = A376507 (n + 1)

end A376507

/-! ## A376507.P5368021114076709452

`∩[2*n, A056021(n+1)]`
-/

namespace A376507.P5368021114076709452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376507.P5368021114076709452

namespace A376507

/-- `∩[2*n, A056021(n+1)]` -/
def P5368021114076709452.Spec : Prop :=
  ∀ n, (P5368021114076709452.a n : ℤ) = A376507 (n + 1)

end A376507

/-! ## A376507.P3628631858648821774

`A056021(A047425(n+1))`
-/

namespace A376507.P3628631858648821774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (A047425 (n + 1)).toNat

end

end A376507.P3628631858648821774

namespace A376507

/-- `A056021(A047425(n+1))` -/
def P3628631858648821774.Spec : Prop :=
  ∀ n, P3628631858648821774.a n = A376507 (n + 1)

end A376507

/-! ## A376507.P18075869203568495894

`∩[2*n, A390601(n+1)]`
-/

namespace A376507.P18075869203568495894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376507.P18075869203568495894

namespace A376507

/-- `∩[2*n, A390601(n+1)]` -/
def P18075869203568495894.Spec : Prop :=
  ∀ n, (P18075869203568495894.a n : ℤ) = A376507 (n + 1)

end A376507

/-! ## A376507.P6563103686274950182

`∩[A056021(n+1), A217562(n+1)]`
-/

namespace A376507.P6563103686274950182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376507.P6563103686274950182

namespace A376507

/-- `∩[A056021(n+1), A217562(n+1)]` -/
def P6563103686274950182.Spec : Prop :=
  ∀ n, (P6563103686274950182.a n : ℤ) = A376507 (n + 1)

end A376507

/-! ## A376507.P17235581956715476738

`∩[A056021(n+1), A005843(n)]`
-/

namespace A376507.P17235581956715476738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376507.P17235581956715476738

namespace A376507

/-- `∩[A056021(n+1), A005843(n)]` -/
def P17235581956715476738.Spec : Prop :=
  ∀ n, (P17235581956715476738.a n : ℤ) = A376507 (n + 1)

end A376507

/-! ## A376507.P4322631883634216260

`∩[A056021(n+1), A020739(n)]`
-/

namespace A376507.P4322631883634216260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376507.P4322631883634216260

namespace A376507

/-- `∩[A056021(n+1), A020739(n)]` -/
def P4322631883634216260.Spec : Prop :=
  ∀ n, (P4322631883634216260.a n : ℤ) = A376507 (n + 1)

end A376507

/-! ## A376507.P747504844674483692

`∩[A056021(n+1), A020744(n)]`
-/

namespace A376507.P747504844674483692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376507.P747504844674483692

namespace A376507

/-- `∩[A056021(n+1), A020744(n)]` -/
def P747504844674483692.Spec : Prop :=
  ∀ n, (P747504844674483692.a n : ℤ) = A376507 (n + 1)

end A376507

/-! ## A376507.P616893004721035546

`∩[A390601(n+1), A004271(n)]`
-/

namespace A376507.P616893004721035546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376507.P616893004721035546

namespace A376507

/-- `∩[A390601(n+1), A004271(n)]` -/
def P616893004721035546.Spec : Prop :=
  ∀ n, (P616893004721035546.a n : ℤ) = A376507 (n + 1)

end A376507

/-! ## A376507.P16440611359985787161

`∩[A390601(n+1), A004272(n)]`
-/

namespace A376507.P16440611359985787161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376507.P16440611359985787161

namespace A376507

/-- `∩[A390601(n+1), A004272(n)]` -/
def P16440611359985787161.Spec : Prop :=
  ∀ n, (P16440611359985787161.a n : ℤ) = A376507 (n + 1)

end A376507

/-! ## A376507.P18093342232589856513

`∩[A390601(n+1), A004275(n)]`
-/

namespace A376507.P18093342232589856513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376507.P18093342232589856513

namespace A376507

/-- `∩[A390601(n+1), A004275(n)]` -/
def P18093342232589856513.Spec : Prop :=
  ∀ n, (P18093342232589856513.a n : ℤ) = A376507 (n + 1)

end A376507

/-! ## A376507.P13289641612401303422

`∩[A390601(n+1), A004277(n)]`
-/

namespace A376507.P13289641612401303422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376507.P13289641612401303422

namespace A376507

/-- `∩[A390601(n+1), A004277(n)]` -/
def P13289641612401303422.Spec : Prop :=
  ∀ n, (P13289641612401303422.a n : ℤ) = A376507 (n + 1)

end A376507

/-! ## A376507.P8463725727227487097

`∩[A390601(n+1), A004279(n)]`
-/

namespace A376507.P8463725727227487097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376507.P8463725727227487097

namespace A376507

/-- `∩[A390601(n+1), A004279(n)]` -/
def P8463725727227487097.Spec : Prop :=
  ∀ n, (P8463725727227487097.a n : ℤ) = A376507 (n + 1)

end A376507

/-! ## A376507.P1078882402339994779

`∩[A390601(n+1), A005843(n)]`
-/

namespace A376507.P1078882402339994779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376507.P1078882402339994779

namespace A376507

/-- `∩[A390601(n+1), A005843(n)]` -/
def P1078882402339994779.Spec : Prop :=
  ∀ n, (P1078882402339994779.a n : ℤ) = A376507 (n + 1)

end A376507

/-! ## A376507.P14085881680438602198

`∩[A390601(n+1), A020739(n)]`
-/

namespace A376507.P14085881680438602198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376507.P14085881680438602198

namespace A376507

/-- `∩[A390601(n+1), A020739(n)]` -/
def P14085881680438602198.Spec : Prop :=
  ∀ n, (P14085881680438602198.a n : ℤ) = A376507 (n + 1)

end A376507

/-! ## A376507.P2566853893801827561

`∩[A390601(n+1), A020744(n)]`
-/

namespace A376507.P2566853893801827561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376507.P2566853893801827561

namespace A376507

/-- `∩[A390601(n+1), A020744(n)]` -/
def P2566853893801827561.Spec : Prop :=
  ∀ n, (P2566853893801827561.a n : ℤ) = A376507 (n + 1)

end A376507

/-! ## A376507.P13169828535232307881

`∩[A390601(n+1), A103517(n)]`
-/

namespace A376507.P13169828535232307881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376507.P13169828535232307881

namespace A376507

/-- `∩[A390601(n+1), A103517(n)]` -/
def P13169828535232307881.Spec : Prop :=
  ∀ n, (P13169828535232307881.a n : ℤ) = A376507 (n + 1)

end A376507

/-! ## A376507.P5304149996057826973

`∩[A056021(n+1), A163300(n+1)]`
-/

namespace A376507.P5304149996057826973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376507.P5304149996057826973

namespace A376507

/-- `∩[A056021(n+1), A163300(n+1)]` -/
def P5304149996057826973.Spec : Prop :=
  ∀ n, (P5304149996057826973.a n : ℤ) = A376507 (n + 1)

end A376507

/-! ## A376507.P10258987496234558419

`∩[A056021(n+1), A119432(n+1)]`
-/

namespace A376507.P10258987496234558419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376507.P10258987496234558419

namespace A376507

/-- `∩[A056021(n+1), A119432(n+1)]` -/
def P10258987496234558419.Spec : Prop :=
  ∀ n, (P10258987496234558419.a n : ℤ) = A376507 (n + 1)

end A376507

/-!
# A376508: Natural numbers whose iterated squaring modulo 100 eventually enters the 4-cycle 16, 56, 36, 96.

The programs for A376508, the canonical program `A376508.P5081995547034681271` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376508 has offset 1).

The definition of A376508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376508.P5081995547034681271

`lt[(((n+7)/2)^(n%2))², (n^4)%25]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376508

/-- `lt[(((n+7)/2)^(n%2))², (n^4)%25]` -/
def P5081995547034681271.Spec : Prop :=
  ∀ n, (P5081995547034681271.a n : ℤ) = A376508 (n + 1)

theorem P5081995547034681271.correct : P5081995547034681271.Spec := by
  intro n
  simp only [A376508, Nat.add_sub_cancel]

end A376508

/-! ## A376508.P18105967435204917303

`filter[2*n, A373387(#)]`
-/

namespace A376508.P18105967435204917303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373387 (f1 j) = 1) n)

end

end A376508.P18105967435204917303

namespace A376508

/-- `filter[2*n, A373387(#)]` -/
def P18105967435204917303.Spec : Prop :=
  ∀ n, (P18105967435204917303.a n : ℤ) = A376508 (n + 1)

end A376508

/-! ## A376508.P16035059823519290501

`eq[(-1)^n, A373387(n)]`
-/

namespace A376508.P16035059823519290501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376508.P16035059823519290501

namespace A376508

/-- `eq[(-1)^n, A373387(n)]` -/
def P16035059823519290501.Spec : Prop :=
  ∀ n, (P16035059823519290501.a n : ℤ) = A376508 (n + 1)

end A376508

/-! ## A376508.P2511704734423327889

`A028310(eq[A033999(n), A373387(n)])`
-/

namespace A376508.P2511704734423327889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A376508.P2511704734423327889

namespace A376508

/-- `A028310(eq[A033999(n), A373387(n)])` -/
def P2511704734423327889.Spec : Prop :=
  ∀ n, P2511704734423327889.a n = A376508 (n + 1)

end A376508

/-! ## A376508.P1479548204487973377

`eq[A373387(n), A379716(A132741(n+5))]`
-/

namespace A376508.P1479548204487973377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379716 (A132741 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376508.P1479548204487973377

namespace A376508

/-- `eq[A373387(n), A379716(A132741(n+5))]` -/
def P1479548204487973377.Spec : Prop :=
  ∀ n, (P1479548204487973377.a n : ℤ) = A376508 (n + 1)

end A376508

/-! ## A376508.P8113207484307326348

`eq[A373387(n), A386301(n)]`
-/

namespace A376508.P8113207484307326348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386301 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376508.P8113207484307326348

namespace A376508

/-- `eq[A373387(n), A386301(n)]` -/
def P8113207484307326348.Spec : Prop :=
  ∀ n, (P8113207484307326348.a n : ℤ) = A376508 (n + 1)

end A376508

/-!
# A376509: Natural numbers whose iterated squaring modulo 100 eventually enters the 4-cycle 21, 41, 81, 61.

The programs for A376509, there is no canonical definition to state claims against.
-/

/-! ## A376509.P765189398277220291

`filter[2*n+1, A373387(#)]`
-/

namespace A376509.P765189398277220291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373387 (f1 j) = 1) n)

end

end A376509.P765189398277220291

/-! ## A376509.P6313613302500054320

`eq[1, A373387(C(n, 2*floor(n/2)))]`
-/

namespace A376509.P6313613302500054320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 (Nat.choose n (2 * ⌊(n : ℚ) / 2⌋).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376509.P6313613302500054320

/-! ## A376509.P2436672731852200669

`eq[38-a(n-1), A373387(n)]` with `a(0)=-2, a(1)=1`
-/

namespace A376509.P2436672731852200669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 1] fun n f1 =>
  38 - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376509.P2436672731852200669

/-! ## A376509.P2239912000990024427

`eq[1, A373387(A093178(n))]`
-/

namespace A376509.P2239912000990024427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376509.P2239912000990024427

/-! ## A376509.P1760164405487368645

`eq[A010146(n), A373387(n)]`
-/

namespace A376509.P1760164405487368645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376509.P1760164405487368645

/-! ## A376509.P14976482978226500358

`eq[A010157(n), A373387(n)]`
-/

namespace A376509.P14976482978226500358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376509.P14976482978226500358

/-! ## A376509.P14233250228873773052

`eq[A010169(n), A373387(n)]`
-/

namespace A376509.P14233250228873773052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010169 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376509.P14233250228873773052

/-! ## A376509.P5496834294205911745

`eq[A010170(n), A373387(n)]`
-/

namespace A376509.P5496834294205911745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010170 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376509.P5496834294205911745

/-! ## A376509.P7825684381937252135

`eq[A010184(n), A373387(n)]`
-/

namespace A376509.P7825684381937252135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010184 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376509.P7825684381937252135

/-! ## A376509.P2333941649464166363

`eq[A010200(n), A373387(n)]`
-/

namespace A376509.P2333941649464166363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010200 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376509.P2333941649464166363

/-! ## A376509.P4847272812914158043

`eq[A010201(n), A373387(n)]`
-/

namespace A376509.P4847272812914158043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010201 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376509.P4847272812914158043

/-! ## A376509.P6600575526474277965

`eq[A010215(n), A373387(n)]`
-/

namespace A376509.P6600575526474277965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376509.P6600575526474277965

/-! ## A376509.P17847862844865940443

`eq[A010236(n), A373387(n)]`
-/

namespace A376509.P17847862844865940443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010236 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376509.P17847862844865940443

/-! ## A376509.P8736547558167754403

`eq[A027642(n), A373387(n)]`
-/

namespace A376509.P8736547558167754403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376509.P8736547558167754403

/-! ## A376509.P8460302004208087548

`eq[A040019(n), A373387(n)]`
-/

namespace A376509.P8460302004208087548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376509.P8460302004208087548

/-! ## A376509.P4170536737255083684

`eq[A040029(n), A373387(n)]`
-/

namespace A376509.P4170536737255083684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376509.P4170536737255083684

/-! ## A376509.P17243904699355646979

`eq[A040041(n), A373387(n)]`
-/

namespace A376509.P17243904699355646979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376509.P17243904699355646979

/-! ## A376509.P9112047660130929576

`eq[A172282(n), A373387(n)]`
-/

namespace A376509.P9112047660130929576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172282 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376509.P9112047660130929576

/-! ## A376509.P379042867444253676

`eq[A288196(n), A373387(n)]`
-/

namespace A376509.P379042867444253676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376509.P379042867444253676

/-! ## A376509.P10782185808040672720

`eq[A052552(n), A373387(n)]`
-/

namespace A376509.P10782185808040672720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376509.P10782185808040672720

/-!
# A376510: a(n) is the number of pairs of primes p+q=2*(n+4) with 5 <= p <= n such that either p+6 or q+6 is also prime.

The programs for A376510, there is no canonical definition to state claims against.
-/

/-! ## A376510.P11360473120814091684

`A001221(A240513(n+1)+A040748(n))`
-/

namespace A376510.P11360473120814091684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A240513 (n + 1) + A040748 n).toNat

end

end A376510.P11360473120814091684

/-! ## A376510.P9182193288683917776

`A124765(C(A156243(n+1), A293227(2*n+1)))`
-/

namespace A376510.P9182193288683917776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (Nat.choose (A156243 (n + 1)).toNat (A293227 (2 * n + 1)).toNat)

end

end A376510.P9182193288683917776

/-! ## A376510.P15830494384016416517

`A001221(A297749(3*n+2)+A035468(2*n+1))`
-/

namespace A376510.P15830494384016416517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A297749 (3 * n + 2) + A035468 (2 * n + 1)).toNat

end

end A376510.P15830494384016416517

/-! ## A376510.P2434647681417890563

`A001222(or(A000293(n), A139643(n+1)))`
-/

namespace A376510.P2434647681417890563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A000293 n) (A139643 (n + 1))).toNat

end

end A376510.P2434647681417890563

/-!
# A376512: Expansion of e.g.f. exp(x^2 * (1 + x)).

The programs for A376512, the canonical program `A376512.P17175753699246755790` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376512 has offset 0).

The definition of A376512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376512.P17175753699246755790

`(n-1)*(2*a(n-2)+3*(n-2)*a(n-3))` with `a(0)=1, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376512

/-- `(n-1)*(2*a(n-2)+3*(n-2)*a(n-3))` -/
def P17175753699246755790.Spec : Prop :=
  ∀ n, P17175753699246755790.a n = A376512 n

theorem P17175753699246755790.correct : P17175753699246755790.Spec := by
  intro n
  simp only [A376512]

end A376512

/-! ## A376512.P4818462154672813125

`n!*∑{#}[floor(n/2), C(#, n-2*#)/#!]`
-/

namespace A376512.P4818462154672813125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose k ((n : ℤ) - (2 * k : ℤ)).toNat : ℚ) / (Nat.factorial k : ℚ))

end

end A376512.P4818462154672813125

namespace A376512

/-- `n!*∑{#}[floor(n/2), C(#, n-2*#)/#!]` -/
def P4818462154672813125.Spec : Prop :=
  ∀ n, P4818462154672813125.a n = (A376512 n : ℚ)

end A376512

/-! ## A376512.P17057279535390232469

`∑{#}[n, (-1)^(n-#)*C(n, #)*A118589(#)]`
-/

namespace A376512.P17057279535390232469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A118589 k : ℚ)

end

end A376512.P17057279535390232469

namespace A376512

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A118589(#)]` -/
def P17057279535390232469.Spec : Prop :=
  ∀ n, P17057279535390232469.a n = (A376512 n : ℚ)

end A376512

/-! ## A376512.P17679932738389256877

`A376492(n)%A004277(A000142(n))`
-/

namespace A376512.P17679932738389256877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376492 n) (A004277 (A000142 n).toNat)

end

end A376512.P17679932738389256877

namespace A376512

/-- `A376492(n)%A004277(A000142(n))` -/
def P17679932738389256877.Spec : Prop :=
  ∀ n, P17679932738389256877.a n = A376512 n

end A376512

/-!
# A376513: Expansion of e.g.f. exp(x^3 * (1 + x)).

The programs for A376513, the canonical program `A376513.P8051340564079464591` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376513 has offset 0).

The definition of A376513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376513.P8051340564079464591

`(n-1)*(n-2)*(3*a(n-3)+4*(n-3)*a(n-4))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=6`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376513

/-- `(n-1)*(n-2)*(3*a(n-3)+4*(n-3)*a(n-4))` -/
def P8051340564079464591.Spec : Prop :=
  ∀ n, P8051340564079464591.a n = A376513 n

theorem P8051340564079464591.correct : P8051340564079464591.Spec := by
  intro n
  simp only [A376513]

end A376513

/-! ## A376513.P2108502551587891326

`n!*∑{#}[floor(n/3), C(#, n-3*#)/#!]`
-/

namespace A376513.P2108502551587891326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose k ((n : ℤ) - (3 * k : ℤ)).toNat : ℚ) / (Nat.factorial k : ℚ))

end

end A376513.P2108502551587891326

namespace A376513

/-- `n!*∑{#}[floor(n/3), C(#, n-3*#)/#!]` -/
def P2108502551587891326.Spec : Prop :=
  ∀ n, P2108502551587891326.a n = (A376513 n : ℚ)

end A376513

/-! ## A376513.P18401046826741820651

`gcd(A293568(A029969(n+1)), A293590(n))`
-/

namespace A376513.P18401046826741820651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A293568 (A029969 (n + 1)).toNat) (A293590 n)

end

end A376513.P18401046826741820651

namespace A376513

/-- `gcd(A293568(A029969(n+1)), A293590(n))` -/
def P18401046826741820651.Spec : Prop :=
  ∀ n, (P18401046826741820651.a n : ℤ) = A376513 n

end A376513

/-! ## A376513.P610542077241539603

`A353224(n)+A105570(A353227(n))`
-/

namespace A376513.P610542077241539603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353224 n + A105570 (A353227 n).toNat

end

end A376513.P610542077241539603

namespace A376513

/-- `A353224(n)+A105570(A353227(n))` -/
def P610542077241539603.Spec : Prop :=
  ∀ n, P610542077241539603.a n = A376513 n

end A376513

/-! ## A376513.P7294057338322023696

`A005843(A353224(n))-A293590(n)`
-/

namespace A376513.P7294057338322023696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A353224 n).toNat - A293590 n

end

end A376513.P7294057338322023696

namespace A376513

/-- `A005843(A353224(n))-A293590(n)` -/
def P7294057338322023696.Spec : Prop :=
  ∀ n, P7294057338322023696.a n = A376513 n

end A376513

/-!
# A376514: Number of divisors of n that are neither squarefree nor prime powers.

The programs for A376514, the canonical program `A376514.P15209874510348841502` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376514 has offset 1).

The definition of A376514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376514.P15209874510348841502

`A000005(n+1)-2^A001221(n+1)-A046660(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A376514

/-- `A000005(n+1)-2^A001221(n+1)-A046660(n+1)` -/
def P15209874510348841502.Spec : Prop :=
  ∀ n, P15209874510348841502.a n = (A376514 (n + 1) : ℚ)

end A376514

/-! ## A376514.P18258734249520915977

`A000005(n+1)-2^A001221(n+1)-A001222(n+1)+A001221(n+1)`
-/

namespace A376514.P18258734249520915977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) - (2 : ℚ) ^ (A001221 (n + 1) : ℤ) - (A001222 (n + 1) : ℚ) + (A001221 (n + 1) : ℚ)

end

end A376514.P18258734249520915977

namespace A376514

/-- `A000005(n+1)-2^A001221(n+1)-A001222(n+1)+A001221(n+1)` -/
def P18258734249520915977.Spec : Prop :=
  ∀ n, P18258734249520915977.a n = (A376514 (n + 1) : ℚ)

end A376514

/-! ## A376514.P16425169055473143844

`∑{d}[1+n, A355447(#)]`
-/

namespace A376514.P16425169055473143844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A355447 d

end

end A376514.P16425169055473143844

namespace A376514

/-- `∑{d}[1+n, A355447(#)]` -/
def P16425169055473143844.Spec : Prop :=
  ∀ n, P16425169055473143844.a n = A376514 (n + 1)

end A376514

/-! ## A376514.P11767149230125912196

`A351414(n+1)-∑{p}[n+1, gcd(n, #)]`
-/

namespace A376514.P11767149230125912196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351414 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)

end

end A376514.P11767149230125912196

namespace A376514

/-- `A351414(n+1)-∑{p}[n+1, gcd(n, #)]` -/
def P11767149230125912196.Spec : Prop :=
  ∀ n, P11767149230125912196.a n = A376514 (n + 1)

end A376514

/-! ## A376514.P5326562282115145856

`A048105(n+1)-A046660(n+1)`
-/

namespace A376514.P5326562282115145856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) - A046660 (n + 1)

end

end A376514.P5326562282115145856

namespace A376514

/-- `A048105(n+1)-A046660(n+1)` -/
def P5326562282115145856.Spec : Prop :=
  ∀ n, P5326562282115145856.a n = A376514 (n + 1)

end A376514

/-! ## A376514.P17271486781622108003

`A000005(n+1)-A351394(n+1)`
-/

namespace A376514.P17271486781622108003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A351394 (n + 1)

end

end A376514.P17271486781622108003

namespace A376514

/-- `A000005(n+1)-A351394(n+1)` -/
def P17271486781622108003.Spec : Prop :=
  ∀ n, P17271486781622108003.a n = A376514 (n + 1)

end A376514

/-! ## A376514.P5518743691977820518

`A351414(n+1)-A001221(n+1)`
-/

namespace A376514.P5518743691977820518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351414 (n + 1) - A001221 (n + 1)

end

end A376514.P5518743691977820518

namespace A376514

/-- `A351414(n+1)-A001221(n+1)` -/
def P5518743691977820518.Spec : Prop :=
  ∀ n, P5518743691977820518.a n = A376514 (n + 1)

end A376514

/-! ## A376514.P3897088422431047802

`A351417(n+1)-A001222(n+1)`
-/

namespace A376514.P3897088422431047802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351417 (n + 1) - A001222 (n + 1)

end

end A376514.P3897088422431047802

namespace A376514

/-- `A351417(n+1)-A001222(n+1)` -/
def P3897088422431047802.Spec : Prop :=
  ∀ n, P3897088422431047802.a n = A376514 (n + 1)

end A376514

/-! ## A376514.P16838817050911501110

`A033273(n+1)-A351418(n+1)`
-/

namespace A376514.P16838817050911501110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) - A351418 (n + 1)

end

end A376514.P16838817050911501110

namespace A376514

/-- `A033273(n+1)-A351418(n+1)` -/
def P16838817050911501110.Spec : Prop :=
  ∀ n, P16838817050911501110.a n = A376514 (n + 1)

end A376514

/-! ## A376514.P14274711541306698939

`A001221(n+1)+A048105(n+1)-A001222(n+1)`
-/

namespace A376514.P14274711541306698939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A048105 (n + 1) - A001222 (n + 1))

end

end A376514.P14274711541306698939

namespace A376514

/-- `A001221(n+1)+A048105(n+1)-A001222(n+1)` -/
def P14274711541306698939.Spec : Prop :=
  ∀ n, P14274711541306698939.a n = A376514 (n + 1)

end A376514

/-! ## A376514.P1399979964762705141

`A034444(n+1)-(A048106(n+1)+A046660(n+1))`
-/

namespace A376514.P1399979964762705141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - (A048106 (n + 1) + A046660 (n + 1))

end

end A376514.P1399979964762705141

namespace A376514

/-- `A034444(n+1)-(A048106(n+1)+A046660(n+1))` -/
def P1399979964762705141.Spec : Prop :=
  ∀ n, P1399979964762705141.a n = A376514 (n + 1)

end A376514

/-!
# A376515: E.g.f. satisfies A(x) = exp(x^2 * A(x) / (1 - x)).

The programs for A376515, there is no canonical definition to state claims against.
-/

/-! ## A376515.P17761432233458263153

`A052580(n)/∏{e}[A004343(n+1), #]`
-/

namespace A376515.P17761432233458263153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004343 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052580 n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ)

end

end A376515.P17761432233458263153

/-! ## A376515.P18189377676581034390

`A083207(A332959(a(n-2)+1))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A376515.P18189377676581034390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  A083207 (A332959 (a (n - 2) + 1).toNat).toNat

end

end A376515.P18189377676581034390

/-!
# A376516: E.g.f. satisfies A(x) = exp(x^3 * A(x) / (1 - x)).

The programs for A376516, there is no canonical definition to state claims against.
-/

/-! ## A376516.P2705035263472169967

`A266642(A293049(n))`
-/

namespace A376516.P2705035263472169967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266642 (A293049 n).toNat

end

end A376516.P2705035263472169967

/-! ## A376516.P14097498059035584201

`A296150(A000302(n))*A371118(n)`
-/

namespace A376516.P14097498059035584201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296150 (A000302 n).toNat * A371118 n

end

end A376516.P14097498059035584201

/-! ## A376516.P6647322610306110907

`A334440(A000272(n))*A371118(n)`
-/

namespace A376516.P6647322610306110907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334440 (A000272 n).toNat * A371118 n

end

end A376516.P6647322610306110907

/-!
# A376517: E.g.f. satisfies A(x) = exp(x^2 * (1 + x) * A(x)).

The programs for A376517, the canonical program `A376517.P5301932339225910950` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376517 has offset 0).

The definition of A376517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376517.P5301932339225910950

`n!*∑{#}[floor(n/2), (#+1)^(#-1)*C(#, n-2*#)/#!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376517

/-- `n!*∑{#}[floor(n/2), (#+1)^(#-1)*C(#, n-2*#)/#!]` -/
def P5301932339225910950.Spec : Prop :=
  ∀ n, P5301932339225910950.a n = (A376517 n : ℚ)

end A376517

/-! ## A376517.P11648818065976267989

`C(n, 2)%A099337(2*n+1)*a(n-1)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A376517.P11648818065976267989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  Int.tmod (Nat.choose n 2 : ℤ) (A099337 (2 * n + 1)) * a (n - 1)

end

end A376517.P11648818065976267989

namespace A376517

/-- `C(n, 2)%A099337(2*n+1)*a(n-1)` -/
def P11648818065976267989.Spec : Prop :=
  ∀ n, P11648818065976267989.a n = A376517 n

end A376517

/-!
# A376518: E.g.f. satisfies A(x) = exp(x^3 * (1 + x) * A(x)).

The programs for A376518, the canonical program `A376518.P833999874860795621` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376518 has offset 0).

The definition of A376518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376518.P833999874860795621

`n!*∑{#}[floor(n/3), (#+1)^(#-1)*C(#, n-3*#)/#!]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376518

/-- `n!*∑{#}[floor(n/3), (#+1)^(#-1)*C(#, n-3*#)/#!]` -/
def P833999874860795621.Spec : Prop :=
  ∀ n, P833999874860795621.a n = (A376518 n : ℚ)

end A376518

/-! ## A376518.P14062618769437782302

`A055642(A001349(n))*A376513(n)`
-/

namespace A376518.P14062618769437782302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A001349 n).toNat * A376513 n

end

end A376518.P14062618769437782302

namespace A376518

/-- `A055642(A001349(n))*A376513(n)` -/
def P14062618769437782302.Spec : Prop :=
  ∀ n, P14062618769437782302.a n = A376518 n

end A376518

/-! ## A376518.P3184748697366931367

`C(A293049(n), A000108(∑{d}[n+1, #]-(1+n)))`
-/

namespace A376518.P3184748697366931367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A293049 n).toNat (A000108 (∑ d ∈ Nat.divisors (f1 n), d - (1 + n))).toNat

end

end A376518.P3184748697366931367

namespace A376518

/-- `C(A293049(n), A000108(∑{d}[n+1, #]-(1+n)))` -/
def P3184748697366931367.Spec : Prop :=
  ∀ n, (P3184748697366931367.a n : ℤ) = A376518 n

end A376518

/-!
# A376522: Numbers k such that (prime(j)-1)^2 + 1 is prime for k <= j <= k + 2.

The programs for A376522, there is no canonical definition to state claims against.
-/

/-! ## A376522.P11723189534972983717

`∩[A173446(n+1)-1, A173446(n+1)]`
-/

namespace A376522.P11723189534972983717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173446 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376522.P11723189534972983717

/-! ## A376522.P974487380132309386

`A000720(A376605(n+1))`
-/

namespace A376522.P974487380132309386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A376605 (n + 1)).toNat

end

end A376522.P974487380132309386

/-! ## A376522.P12686500003398968231

`A061395(A083531(n+1)*A376605(n+1))`
-/

namespace A376522.P12686500003398968231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A083531 (n + 1) * A376605 (n + 1)).toNat

end

end A376522.P12686500003398968231

/-! ## A376522.P11764381636755083251

`A061395(A376605(n+1)*A376611(n+2))`
-/

namespace A376522.P11764381636755083251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A376605 (n + 1) * A376611 (n + 2)).toNat

end

end A376522.P11764381636755083251

/-!
# A376523: a(n) = Product_{k=0..n} (k^3 + n - k).

The programs for A376523, there is no canonical definition to state claims against.
-/

/-! ## A376523.P13702833360349936280

`A374886(n)/A083893(A000142(n+3))`
-/

namespace A376523.P13702833360349936280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374886 n : ℚ) / (A083893 (A000142 (n + 3)).toNat : ℚ)

end

end A376523.P13702833360349936280

/-!
# A376525: G.f. A(x) satisfies (6*A(x^9)/A(x) - 1)^3 = 126*A(x^3)^4/A(x)^4 - 1 + 54*x.

The programs for A376525, there is no canonical definition to state claims against.
-/

/-! ## A376525.P14873261630397611833

`A078295(A149594(n))`
-/

namespace A376525.P14873261630397611833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078295 (A149594 n).toNat

end

end A376525.P14873261630397611833

/-!
# A376526: G.f. A(x) satisfies (4*A(x^9)/A(x) - 1)^3 = 28*A(x^3)^4/A(x)^4 - 1 + 4*x.

The programs for A376526, there is no canonical definition to state claims against.
-/

/-! ## A376526.P3286442854018639254

`A131673(A248122(n))`
-/

namespace A376526.P3286442854018639254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131673 (A248122 n).toNat

end

end A376526.P3286442854018639254

/-!
# A376528: G.f. A(x) satisfies (3*A(x^9)/A(x) - 1)^3 = 9*A(x^3)^3/A(x)^3 - 1 - 9*x.

The programs for A376528, there is no canonical definition to state claims against.
-/

/-! ## A376528.P11623251750565413861

`A080352(A300443(2*n))+A001006(n)`
-/

namespace A376528.P11623251750565413861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080352 (A300443 (2 * n)).toNat + A001006 n

end

end A376528.P11623251750565413861

/-!
# A376529: G.f. A(x) satisfies (1 + 9*x*A(x)^3/A(x^9)^3)^3 = 1 + 27*x*A(x)^6/A(x^3)^6.

The programs for A376529, there is no canonical definition to state claims against.
-/

/-! ## A376529.P10017118929349439942

`A008810(A225305(n+1)^A006721(n))`
-/

namespace A376529.P10017118929349439942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (SequenceMachineLib.roundAway ((A225305 (n + 1) : ℚ) ^ (A006721 n : ℤ))).toNat

end

end A376529.P10017118929349439942

/-!
# A376536: a(n) = (1/3^n) * Sum_{k=0..n^3} ( (binomial(n^3, k) * 2^k) (mod 3^n) ).

The programs for A376536, there is no canonical definition to state claims against.
-/

/-! ## A376536.P7678853924185154009

`A179000(A000040(3*n+1)-∏{e}[n+1, #+1])`
-/

namespace A376536.P7678853924185154009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179000 (A000040 (3 * n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A376536.P7678853924185154009

/-! ## A376536.P14654561551981769742

`A179000(A000040(3*n+1)-A080256(n+1))`
-/

namespace A376536.P14654561551981769742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179000 (A000040 (3 * n + 1) - A080256 (n + 1)).toNat

end

end A376536.P14654561551981769742

/-!
# A376538: Natural numbers whose iterated squaring modulo 1000 eventually settles at the attractor 1.

The programs for A376538, the canonical program `A376538.P147642025610415414` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376538 has offset 1).

The definition of A376538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376538.P147642025610415414

`A056082(A047527(n+2))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A376538

/-- `A056082(A047527(n+2))` -/
def P147642025610415414.Spec : Prop :=
  ∀ n, P147642025610415414.a n = A376538 (n + 1)

theorem P147642025610415414.correct : P147642025610415414.Spec := by
  intro n
  simp only [A376538, Nat.add_sub_cancel]

end A376538

/-! ## A376538.P18081853470958180384

`∩[A056082(n+1), A376506(n+1)]`
-/

namespace A376538.P18081853470958180384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376538.P18081853470958180384

namespace A376538

/-- `∩[A056082(n+1), A376506(n+1)]` -/
def P18081853470958180384.Spec : Prop :=
  ∀ n, (P18081853470958180384.a n : ℤ) = A376538 (n + 1)

end A376538

/-! ## A376538.P9178306888771387167

`∩[2*n+1, A056082(n+1)]`
-/

namespace A376538.P9178306888771387167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376538.P9178306888771387167

namespace A376538

/-- `∩[2*n+1, A056082(n+1)]` -/
def P9178306888771387167.Spec : Prop :=
  ∀ n, (P9178306888771387167.a n : ℤ) = A376538 (n + 1)

end A376538

/-! ## A376538.P533816498860182427

`∩[A056082(n+1), A241662(n+1)]`
-/

namespace A376538.P533816498860182427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376538.P533816498860182427

namespace A376538

/-- `∩[A056082(n+1), A241662(n+1)]` -/
def P533816498860182427.Spec : Prop :=
  ∀ n, (P533816498860182427.a n : ℤ) = A376538 (n + 1)

end A376538

/-! ## A376538.P2246411285740269649

`∩[A056082(n+1), A089684(n+1)]`
-/

namespace A376538.P2246411285740269649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376538.P2246411285740269649

namespace A376538

/-- `∩[A056082(n+1), A089684(n+1)]` -/
def P2246411285740269649.Spec : Prop :=
  ∀ n, (P2246411285740269649.a n : ℤ) = A376538 (n + 1)

end A376538

/-! ## A376538.P8669111288807486378

`∩[A056082(n+1), A247328(n+1)]`
-/

namespace A376538.P8669111288807486378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376538.P8669111288807486378

namespace A376538

/-- `∩[A056082(n+1), A247328(n+1)]` -/
def P8669111288807486378.Spec : Prop :=
  ∀ n, (P8669111288807486378.a n : ℤ) = A376538 (n + 1)

end A376538

/-! ## A376538.P8711141802776887733

`∩[A056082(n+1), A138829(n+1)]`
-/

namespace A376538.P8711141802776887733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376538.P8711141802776887733

namespace A376538

/-- `∩[A056082(n+1), A138829(n+1)]` -/
def P8711141802776887733.Spec : Prop :=
  ∀ n, (P8711141802776887733.a n : ℤ) = A376538 (n + 1)

end A376538

/-! ## A376538.P12803385854619623852

`record[A093178(A056082(n+1))]`
-/

namespace A376538.P12803385854619623852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A056082 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376538.P12803385854619623852

namespace A376538

/-- `record[A093178(A056082(n+1))]` -/
def P12803385854619623852.Spec : Prop :=
  ∀ n, P12803385854619623852.a n = A376538 (n + 1)

end A376538

/-! ## A376538.P626181482932197595

`∩[A056082(n+1), A004273(n)]`
-/

namespace A376538.P626181482932197595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376538.P626181482932197595

namespace A376538

/-- `∩[A056082(n+1), A004273(n)]` -/
def P626181482932197595.Spec : Prop :=
  ∀ n, (P626181482932197595.a n : ℤ) = A376538 (n + 1)

end A376538

/-! ## A376538.P7364377748738129358

`∩[A056082(n+1), A223134(n)]`
-/

namespace A376538.P7364377748738129358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376538.P7364377748738129358

namespace A376538

/-- `∩[A056082(n+1), A223134(n)]` -/
def P7364377748738129358.Spec : Prop :=
  ∀ n, (P7364377748738129358.a n : ℤ) = A376538 (n + 1)

end A376538

/-! ## A376538.P13937081288431245949

`∩[A056082(n+1), A326494(n)]`
-/

namespace A376538.P13937081288431245949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376538.P13937081288431245949

namespace A376538

/-- `∩[A056082(n+1), A326494(n)]` -/
def P13937081288431245949.Spec : Prop :=
  ∀ n, (P13937081288431245949.a n : ℤ) = A376538 (n + 1)

end A376538

/-! ## A376538.P5375901245187804571

`∩[A056082(n+1), A140139(n+1)]`
-/

namespace A376538.P5375901245187804571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376538.P5375901245187804571

namespace A376538

/-- `∩[A056082(n+1), A140139(n+1)]` -/
def P5375901245187804571.Spec : Prop :=
  ∀ n, (P5375901245187804571.a n : ℤ) = A376538 (n + 1)

end A376538

/-! ## A376538.P7787589361553430378

`∩[A056082(n+1), A299231(n+1)]`
-/

namespace A376538.P7787589361553430378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376538.P7787589361553430378

namespace A376538

/-- `∩[A056082(n+1), A299231(n+1)]` -/
def P7787589361553430378.Spec : Prop :=
  ∀ n, (P7787589361553430378.a n : ℤ) = A376538 (n + 1)

end A376538

/-! ## A376538.P9234783473605931941

`∩[A056082(n+1), A004274(n)]`
-/

namespace A376538.P9234783473605931941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376538.P9234783473605931941

namespace A376538

/-- `∩[A056082(n+1), A004274(n)]` -/
def P9234783473605931941.Spec : Prop :=
  ∀ n, (P9234783473605931941.a n : ℤ) = A376538 (n + 1)

end A376538

/-! ## A376538.P13005553118187712364

`∩[A056082(n+1), A004276(n)]`
-/

namespace A376538.P13005553118187712364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376538.P13005553118187712364

namespace A376538

/-- `∩[A056082(n+1), A004276(n)]` -/
def P13005553118187712364.Spec : Prop :=
  ∀ n, (P13005553118187712364.a n : ℤ) = A376538 (n + 1)

end A376538

/-! ## A376538.P17772954560699499872

`∩[A056082(n+1), A004281(n)]`
-/

namespace A376538.P17772954560699499872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376538.P17772954560699499872

namespace A376538

/-- `∩[A056082(n+1), A004281(n)]` -/
def P17772954560699499872.Spec : Prop :=
  ∀ n, (P17772954560699499872.a n : ℤ) = A376538 (n + 1)

end A376538

/-! ## A376538.P8926582624139869073

`∩[A056082(n+1), A060747(n)]`
-/

namespace A376538.P8926582624139869073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376538.P8926582624139869073

namespace A376538

/-- `∩[A056082(n+1), A060747(n)]` -/
def P8926582624139869073.Spec : Prop :=
  ∀ n, (P8926582624139869073.a n : ℤ) = A376538 (n + 1)

end A376538

/-! ## A376538.P11471585512304394979

`∩[A056082(n+1), A163985(n)]`
-/

namespace A376538.P11471585512304394979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376538.P11471585512304394979

namespace A376538

/-- `∩[A056082(n+1), A163985(n)]` -/
def P11471585512304394979.Spec : Prop :=
  ∀ n, (P11471585512304394979.a n : ℤ) = A376538 (n + 1)

end A376538

/-! ## A376538.P1898142816092234443

`filter[A056082(n+1), A000035(#)]`
-/

namespace A376538.P1898142816092234443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A376538.P1898142816092234443

namespace A376538

/-- `filter[A056082(n+1), A000035(#)]` -/
def P1898142816092234443.Spec : Prop :=
  ∀ n, P1898142816092234443.a n = A376538 (n + 1)

end A376538

/-! ## A376538.P3912673195174836855

`filter[A056082(n+1), A266789(#)]`
-/

namespace A376538.P3912673195174836855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266789 (f1 j).toNat = 1) n)

end

end A376538.P3912673195174836855

namespace A376538

/-- `filter[A056082(n+1), A266789(#)]` -/
def P3912673195174836855.Spec : Prop :=
  ∀ n, P3912673195174836855.a n = A376538 (n + 1)

end A376538

/-!
# A376539: Natural numbers whose iterated squaring modulo 1000 eventually settles at the attractor 376.

The programs for A376539, the canonical program `A376539.P10670533322709829725` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376539 has offset 1).

The definition of A376539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376539.P10670533322709829725

`A056082(A047425(n+1))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A376539

/-- `A056082(A047425(n+1))` -/
def P10670533322709829725.Spec : Prop :=
  ∀ n, P10670533322709829725.a n = A376539 (n + 1)

theorem P10670533322709829725.correct : P10670533322709829725.Spec := by
  intro n
  simp only [A376539, Nat.add_sub_cancel]

end A376539

/-! ## A376539.P11995546272523296360

`∩[A056082(n+1), A376507(n+1)]`
-/

namespace A376539.P11995546272523296360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P11995546272523296360

namespace A376539

/-- `∩[A056082(n+1), A376507(n+1)]` -/
def P11995546272523296360.Spec : Prop :=
  ∀ n, (P11995546272523296360.a n : ℤ) = A376539 (n + 1)

end A376539

/-! ## A376539.P5072056080672011759

`∩[A354959(n+1), A376507(n+1)]`
-/

namespace A376539.P5072056080672011759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376507 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P5072056080672011759

namespace A376539

/-- `∩[A354959(n+1), A376507(n+1)]` -/
def P5072056080672011759.Spec : Prop :=
  ∀ n, (P5072056080672011759.a n : ℤ) = A376539 (n + 1)

end A376539

/-! ## A376539.P9065993280916522727

`∩[2*n, A056082(n+1)]`
-/

namespace A376539.P9065993280916522727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P9065993280916522727

namespace A376539

/-- `∩[2*n, A056082(n+1)]` -/
def P9065993280916522727.Spec : Prop :=
  ∀ n, (P9065993280916522727.a n : ℤ) = A376539 (n + 1)

end A376539

/-! ## A376539.P7890273976492139802

`∩[2*n, A354959(n+1)]`
-/

namespace A376539.P7890273976492139802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P7890273976492139802

namespace A376539

/-- `∩[2*n, A354959(n+1)]` -/
def P7890273976492139802.Spec : Prop :=
  ∀ n, (P7890273976492139802.a n : ℤ) = A376539 (n + 1)

end A376539

/-! ## A376539.P11955018377817529983

`∩[A056082(n+1), A217562(n+1)]`
-/

namespace A376539.P11955018377817529983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P11955018377817529983

namespace A376539

/-- `∩[A056082(n+1), A217562(n+1)]` -/
def P11955018377817529983.Spec : Prop :=
  ∀ n, (P11955018377817529983.a n : ℤ) = A376539 (n + 1)

end A376539

/-! ## A376539.P8874938924169754161

`∩[A354959(n+1), A386551(n+1)]`
-/

namespace A376539.P8874938924169754161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P8874938924169754161

namespace A376539

/-- `∩[A354959(n+1), A386551(n+1)]` -/
def P8874938924169754161.Spec : Prop :=
  ∀ n, (P8874938924169754161.a n : ℤ) = A376539 (n + 1)

end A376539

/-! ## A376539.P9515567722258268678

`∩[A056082(n+1), A005843(n)]`
-/

namespace A376539.P9515567722258268678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P9515567722258268678

namespace A376539

/-- `∩[A056082(n+1), A005843(n)]` -/
def P9515567722258268678.Spec : Prop :=
  ∀ n, (P9515567722258268678.a n : ℤ) = A376539 (n + 1)

end A376539

/-! ## A376539.P3772481759786729621

`∩[A056082(n+1), A020739(n)]`
-/

namespace A376539.P3772481759786729621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P3772481759786729621

namespace A376539

/-- `∩[A056082(n+1), A020739(n)]` -/
def P3772481759786729621.Spec : Prop :=
  ∀ n, (P3772481759786729621.a n : ℤ) = A376539 (n + 1)

end A376539

/-! ## A376539.P17055243423507144550

`∩[A056082(n+1), A020744(n)]`
-/

namespace A376539.P17055243423507144550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P17055243423507144550

namespace A376539

/-- `∩[A056082(n+1), A020744(n)]` -/
def P17055243423507144550.Spec : Prop :=
  ∀ n, (P17055243423507144550.a n : ℤ) = A376539 (n + 1)

end A376539

/-! ## A376539.P2042318381555263783

`∩[A354959(n+1), A004271(n)]`
-/

namespace A376539.P2042318381555263783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P2042318381555263783

namespace A376539

/-- `∩[A354959(n+1), A004271(n)]` -/
def P2042318381555263783.Spec : Prop :=
  ∀ n, (P2042318381555263783.a n : ℤ) = A376539 (n + 1)

end A376539

/-! ## A376539.P1938371637242468350

`∩[A354959(n+1), A004272(n)]`
-/

namespace A376539.P1938371637242468350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P1938371637242468350

namespace A376539

/-- `∩[A354959(n+1), A004272(n)]` -/
def P1938371637242468350.Spec : Prop :=
  ∀ n, (P1938371637242468350.a n : ℤ) = A376539 (n + 1)

end A376539

/-! ## A376539.P12576233697191324166

`∩[A354959(n+1), A004275(n)]`
-/

namespace A376539.P12576233697191324166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P12576233697191324166

namespace A376539

/-- `∩[A354959(n+1), A004275(n)]` -/
def P12576233697191324166.Spec : Prop :=
  ∀ n, (P12576233697191324166.a n : ℤ) = A376539 (n + 1)

end A376539

/-! ## A376539.P8608126091130680034

`∩[A354959(n+1), A004277(n)]`
-/

namespace A376539.P8608126091130680034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P8608126091130680034

namespace A376539

/-- `∩[A354959(n+1), A004277(n)]` -/
def P8608126091130680034.Spec : Prop :=
  ∀ n, (P8608126091130680034.a n : ℤ) = A376539 (n + 1)

end A376539

/-! ## A376539.P16611107463447876335

`∩[A354959(n+1), A004279(n)]`
-/

namespace A376539.P16611107463447876335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P16611107463447876335

namespace A376539

/-- `∩[A354959(n+1), A004279(n)]` -/
def P16611107463447876335.Spec : Prop :=
  ∀ n, (P16611107463447876335.a n : ℤ) = A376539 (n + 1)

end A376539

/-! ## A376539.P13724092041316279523

`∩[A354959(n+1), A005843(n)]`
-/

namespace A376539.P13724092041316279523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P13724092041316279523

namespace A376539

/-- `∩[A354959(n+1), A005843(n)]` -/
def P13724092041316279523.Spec : Prop :=
  ∀ n, (P13724092041316279523.a n : ℤ) = A376539 (n + 1)

end A376539

/-! ## A376539.P14476734957451932403

`∩[A354959(n+1), A020739(n)]`
-/

namespace A376539.P14476734957451932403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P14476734957451932403

namespace A376539

/-- `∩[A354959(n+1), A020739(n)]` -/
def P14476734957451932403.Spec : Prop :=
  ∀ n, (P14476734957451932403.a n : ℤ) = A376539 (n + 1)

end A376539

/-! ## A376539.P12870191468975693413

`∩[A354959(n+1), A020744(n)]`
-/

namespace A376539.P12870191468975693413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P12870191468975693413

namespace A376539

/-- `∩[A354959(n+1), A020744(n)]` -/
def P12870191468975693413.Spec : Prop :=
  ∀ n, (P12870191468975693413.a n : ℤ) = A376539 (n + 1)

end A376539

/-! ## A376539.P17636239816541791490

`∩[A354959(n+1), A103517(n)]`
-/

namespace A376539.P17636239816541791490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P17636239816541791490

namespace A376539

/-- `∩[A354959(n+1), A103517(n)]` -/
def P17636239816541791490.Spec : Prop :=
  ∀ n, (P17636239816541791490.a n : ℤ) = A376539 (n + 1)

end A376539

/-! ## A376539.P6530925913223210710

`∩[A056082(n+1), A065502(n+1)]`
-/

namespace A376539.P6530925913223210710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376539.P6530925913223210710

namespace A376539

/-- `∩[A056082(n+1), A065502(n+1)]` -/
def P6530925913223210710.Spec : Prop :=
  ∀ n, (P6530925913223210710.a n : ℤ) = A376539 (n + 1)

end A376539

/-!
# A376540: Natural numbers whose iterated squaring modulo 1000 eventually enters the 4-cycle 176, 976, 576, 776.

The programs for A376540, there is no canonical definition to state claims against.
-/

/-! ## A376540.P10253691757692507070

`eq[A088667(n), A373387(n)]`
-/

namespace A376540.P10253691757692507070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376540.P10253691757692507070

/-! ## A376540.P16718373764385388815

`eq[A133265(n), A373387(n)]`
-/

namespace A376540.P16718373764385388815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376540.P16718373764385388815

/-! ## A376540.P16301613401775630109

`eq[A266256(n), A373387(n)]`
-/

namespace A376540.P16301613401775630109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376540.P16301613401775630109

/-! ## A376540.P3514233069582786938

`eq[A266662(n), A373387(n)]`
-/

namespace A376540.P3514233069582786938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266662 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376540.P3514233069582786938

/-! ## A376540.P1499533026018487781

`eq[A266722(n), A373387(n)]`
-/

namespace A376540.P1499533026018487781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376540.P1499533026018487781

/-! ## A376540.P15965582780490653754

`eq[A280193(n), A373387(n)]`
-/

namespace A376540.P15965582780490653754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376540.P15965582780490653754

/-! ## A376540.P7170401898476679543

`eq[A280560(n), A373387(n)]`
-/

namespace A376540.P7170401898476679543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376540.P7170401898476679543

/-! ## A376540.P6413462686617998911

`eq[A079612(n+1), A373387(n)]`
-/

namespace A376540.P6413462686617998911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376540.P6413462686617998911

/-! ## A376540.P897384716658865755

`eq[A089120(n+1), A373387(n)]`
-/

namespace A376540.P897384716658865755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376540.P897384716658865755

/-! ## A376540.P2784958419956244408

`eq[A102128(n+1), A373387(n)]`
-/

namespace A376540.P2784958419956244408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376540.P2784958419956244408

/-!
# A376541: Natural numbers whose iterated squaring modulo 1000 eventually enters the 4-cycle 201, 401, 801, 601.

The programs for A376541, there is no canonical definition to state claims against.
-/

/-! ## A376541.P6305827023837770038

`filter[A376506(n+2), A102609(#)]`
-/

namespace A376541.P6305827023837770038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A376541.P6305827023837770038

/-! ## A376541.P8351394841324282480

`A376506(A000961(n+2)%A376502(3*n+5))`
-/

namespace A376541.P8351394841324282480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376506 (Int.tmod (A000961 (n + 2)) (A376502 (3 * n + 5))).toNat

end

end A376541.P8351394841324282480

/-!
# A376542: G.f.: Sum_{k>=0} x^(k^2) * Product_{j=1..k} (1 + x^(2*j))^2.

The programs for A376542, there is no canonical definition to state claims against.
-/

/-! ## A376542.P14229765750391187380

`A062756(A298612(n+4))`
-/

namespace A376542.P14229765750391187380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A298612 (n + 4)).toNat

end

end A376542.P14229765750391187380

/-! ## A376542.P5273724289117936986

`and(A030717(n+1), A064989(A080877(n)))`
-/

namespace A376542.P5273724289117936986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030717 (n + 1)) (A064989 (A080877 n).toNat)

end

end A376542.P5273724289117936986

/-! ## A376542.P3415629174388339440

`xor(A267708(A322761(n+5)), A364911(n+1))`
-/

namespace A376542.P3415629174388339440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A267708 (A322761 (n + 5)).toNat) (A364911 (n + 1))

end

end A376542.P3415629174388339440

/-! ## A376542.P8673079855489652718

`A135910(record[col(A288386(3*n+1))])`
-/

namespace A376542.P8673079855489652718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A288386 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135910 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A376542.P8673079855489652718

/-! ## A376542.P18208591646600579114

`and(∑[A127821(3*n+2)], A034968(n+1))`
-/

namespace A376542.P18208591646600579114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127821 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A034968 (n + 1))

end

end A376542.P18208591646600579114

/-!
# A376543: Numbers of the form p^e * q^f with p, q distinct primes = 3 mod 4 and e and f both odd.

The programs for A376543, the canonical program `A376543.P10798629039849468435` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376543 has offset 1).

The definition of A376543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3936 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376543.P10798629039849468435

`filter[A084109(n+1), A353676(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A376543

/-- `filter[A084109(n+1), A353676(#)]` -/
def P10798629039849468435.Spec : Prop :=
  ∀ n, P10798629039849468435.a n = A376543 (n + 1)

theorem P10798629039849468435.correct : P10798629039849468435.Spec := by
  intro n
  simp only [A376543, Nat.add_sub_cancel]

end A376543

/-! ## A376543.P7192787257767708438

`filter[A119973(n+1), A353676(#)]`
-/

namespace A376543.P7192787257767708438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A376543.P7192787257767708438

namespace A376543

/-- `filter[A119973(n+1), A353676(#)]` -/
def P7192787257767708438.Spec : Prop :=
  ∀ n, P7192787257767708438.a n = A376543 (n + 1)

end A376543

/-! ## A376543.P15192685137709017595

`filter[A046712(1+n), A353676(#)]`
-/

namespace A376543.P15192685137709017595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046712 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A376543.P15192685137709017595

namespace A376543

/-- `filter[A046712(1+n), A353676(#)]` -/
def P15192685137709017595.Spec : Prop :=
  ∀ n, P15192685137709017595.a n = A376543 (n + 1)

end A376543

/-! ## A376543.P78905003759360556

`filter[A007774(n+1), A353809(#)]`
-/

namespace A376543.P78905003759360556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353809 (f1 j).toNat = 1) n)

end

end A376543.P78905003759360556

namespace A376543

/-- `filter[A007774(n+1), A353809(#)]` -/
def P78905003759360556.Spec : Prop :=
  ∀ n, P78905003759360556.a n = A376543 (n + 1)

end A376543

/-! ## A376543.P14203660195675557141

`∩[A007774(n+1), A084109(n+1)]`
-/

namespace A376543.P14203660195675557141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376543.P14203660195675557141

namespace A376543

/-- `∩[A007774(n+1), A084109(n+1)]` -/
def P14203660195675557141.Spec : Prop :=
  ∀ n, (P14203660195675557141.a n : ℤ) = A376543 (n + 1)

end A376543

/-! ## A376543.P17762043590785494708

`∩[A007774(n+1), A119973(n+1)]`
-/

namespace A376543.P17762043590785494708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376543.P17762043590785494708

namespace A376543

/-- `∩[A007774(n+1), A119973(n+1)]` -/
def P17762043590785494708.Spec : Prop :=
  ∀ n, (P17762043590785494708.a n : ℤ) = A376543 (n + 1)

end A376543

/-! ## A376543.P16069009499814340821

`filter[A267114(n+1), A353809(#)]`
-/

namespace A376543.P16069009499814340821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353809 (f1 j).toNat = 1) n)

end

end A376543.P16069009499814340821

namespace A376543

/-- `filter[A267114(n+1), A353809(#)]` -/
def P16069009499814340821.Spec : Prop :=
  ∀ n, P16069009499814340821.a n = A376543 (n + 1)

end A376543

/-! ## A376543.P5260357402401975119

`∩[A084109(n+1), A267114(n+1)]`
-/

namespace A376543.P5260357402401975119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376543.P5260357402401975119

namespace A376543

/-- `∩[A084109(n+1), A267114(n+1)]` -/
def P5260357402401975119.Spec : Prop :=
  ∀ n, (P5260357402401975119.a n : ℤ) = A376543 (n + 1)

end A376543

/-! ## A376543.P17303403392612630154

`∩[A119973(n+1), A267114(n+1)]`
-/

namespace A376543.P17303403392612630154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376543.P17303403392612630154

namespace A376543

/-- `∩[A119973(n+1), A267114(n+1)]` -/
def P17303403392612630154.Spec : Prop :=
  ∀ n, (P17303403392612630154.a n : ℤ) = A376543 (n + 1)

end A376543

/-! ## A376543.P414535486455710916

`filter[A070915(n+1), A353809(#)]`
-/

namespace A376543.P414535486455710916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353809 (f1 j).toNat = 1) n)

end

end A376543.P414535486455710916

namespace A376543

/-- `filter[A070915(n+1), A353809(#)]` -/
def P414535486455710916.Spec : Prop :=
  ∀ n, P414535486455710916.a n = A376543 (n + 1)

end A376543

/-! ## A376543.P17219607746969011996

`∩[A070915(n+1), A084109(n+1)]`
-/

namespace A376543.P17219607746969011996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376543.P17219607746969011996

namespace A376543

/-- `∩[A070915(n+1), A084109(n+1)]` -/
def P17219607746969011996.Spec : Prop :=
  ∀ n, (P17219607746969011996.a n : ℤ) = A376543 (n + 1)

end A376543

/-! ## A376543.P7786334464641780787

`∩[A070915(n+1), A119973(n+1)]`
-/

namespace A376543.P7786334464641780787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376543.P7786334464641780787

namespace A376543

/-- `∩[A070915(n+1), A119973(n+1)]` -/
def P7786334464641780787.Spec : Prop :=
  ∀ n, (P7786334464641780787.a n : ℤ) = A376543 (n + 1)

end A376543

/-! ## A376543.P9401974537738135540

`filter[A084109(n+1), A215480(#)]`
-/

namespace A376543.P9401974537738135540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A376543.P9401974537738135540

namespace A376543

/-- `filter[A084109(n+1), A215480(#)]` -/
def P9401974537738135540.Spec : Prop :=
  ∀ n, P9401974537738135540.a n = A376543 (n + 1)

end A376543

/-! ## A376543.P15410946976692154308

`filter[A119973(n+1), A215480(#)]`
-/

namespace A376543.P15410946976692154308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A376543.P15410946976692154308

namespace A376543

/-- `filter[A119973(n+1), A215480(#)]` -/
def P15410946976692154308.Spec : Prop :=
  ∀ n, P15410946976692154308.a n = A376543 (n + 1)

end A376543

/-!
# A376544: a(n) is the number of singleton commuting ordered set partitions.

The programs for A376544, there is no canonical definition to state claims against.
-/

/-! ## A376544.P6459097556682728644

`A347662(∑[∑[2*n-1]]+4)`
-/

namespace A376544.P6459097556682728644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347662 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A376544.P6459097556682728644

/-! ## A376544.P2455888694545312838

`ceil(A003963(A006873(n))/2)`
-/

namespace A376544.P2455888694545312838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003963 (A006873 n).toNat : ℚ) / 2⌉

end

end A376544.P2455888694545312838

/-!
# A376546: G.f. A(x) satisfies A(x) = 1 + x^4*(1+x)*A(x)^4.

The programs for A376546, the canonical program `A376546.P2131838718625642526` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376546 has offset 0).

The definition of A376546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376546.P2131838718625642526

`∑{#}[floor(n/4), C(#, n-4*#)*C(4*#, #)/(3*#+1)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376546

/-- `∑{#}[floor(n/4), C(#, n-4*#)*C(4*#, #)/(3*#+1)]` -/
def P2131838718625642526.Spec : Prop :=
  ∀ n, P2131838718625642526.a n = (A376546 n : ℚ)

end A376546

/-!
# A376547: G.f. A(x) satisfies A(x) = 1 + x^3*(1+x)*A(x)^3.

The programs for A376547, the canonical program `A376547.P13692839038527962305` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376547 has offset 0).

The definition of A376547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376547.P13692839038527962305

`∑{#}[floor(n/3), C(#, n-3*#)*C(3*#, #)/(2*#+1)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376547

/-- `∑{#}[floor(n/3), C(#, n-3*#)*C(3*#, #)/(2*#+1)]` -/
def P13692839038527962305.Spec : Prop :=
  ∀ n, P13692839038527962305.a n = (A376547 n : ℚ)

end A376547

/-!
# A376550: Smallest primes that generate a record number of deranged primes (see Comments).

The programs for A376550, there is no canonical definition to state claims against.
-/

/-! ## A376550.P841496075559219218

`A000040(A027746(n+1)*A345908(3*n+1))`
-/

namespace A376550.P841496075559219218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A027746 (n + 1) * A345908 (3 * n + 1)).toNat

end

end A376550.P841496075559219218

/-!
# A376551: This sequence satisfies: n = Sum_{k=0..n} ((-n)^(n - k)*binomial(n, k)*a(k)).

The programs for A376551, the canonical program `A376551.P12052750384843871882` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376551 has offset 0).

The definition of A376551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376551.P12052750384843871882

`n*∑{#}[n, C(n, #)*(n-#)^#]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376551

/-- `n*∑{#}[n, C(n, #)*(n-#)^#]` -/
def P12052750384843871882.Spec : Prop :=
  ∀ n, P12052750384843871882.a n = A376551 n

theorem P12052750384843871882.correct : P12052750384843871882.Spec := by
  intro n
  simp only [A376551]

end A376551

/-! ## A376551.P12085080255911199288

`A000248(n)*n`
-/

namespace A376551.P12085080255911199288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000248 n * (n : ℤ)

end

end A376551.P12085080255911199288

namespace A376551

/-- `A000248(n)*n` -/
def P12085080255911199288.Spec : Prop :=
  ∀ n, P12085080255911199288.a n = A376551 n

theorem P12085080255911199288.correct : P12085080255911199288.Spec := by
  intro n
  simp only [A376551, Nat.add_sub_cancel, A376551.P12085080255911199288.a, A376551.P12052750384843871882.f1, A376551.P12052750384843871882.a, A000248, A000248.P14279885909350861401.f1, A000248.P14279885909350861401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A376551

/-! ## A376551.P15718832706853811415

`n*A000248(n)`
-/

namespace A376551.P15718832706853811415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000248 n

end

end A376551.P15718832706853811415

namespace A376551

/-- `n*A000248(n)` -/
def P15718832706853811415.Spec : Prop :=
  ∀ n, P15718832706853811415.a n = A376551 n

end A376551

/-! ## A376551.P4790845251763351208

`n*A116071(∑[n])`
-/

namespace A376551.P4790845251763351208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A116071 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376551.P4790845251763351208

namespace A376551

/-- `n*A116071(∑[n])` -/
def P4790845251763351208.Spec : Prop :=
  ∀ n, P4790845251763351208.a n = A376551 n

end A376551

/-! ## A376551.P8213350554824322892

`(A235596(n+1)+1)*n`
-/

namespace A376551.P8213350554824322892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A235596 (n + 1) + 1) * (n : ℤ)

end

end A376551.P8213350554824322892

namespace A376551

/-- `(A235596(n+1)+1)*n` -/
def P8213350554824322892.Spec : Prop :=
  ∀ n, P8213350554824322892.a n = A376551 n

theorem P8213350554824322892.correct : P8213350554824322892.Spec := by
  intro n
  simp only [A376551, Nat.add_sub_cancel, A376551.P8213350554824322892.a, A376551.P12052750384843871882.f1, A376551.P12052750384843871882.a, A235596, A235596.P11875951441619194782.a, A000248, A000248.P14279885909350861401.f1, A000248.P14279885909350861401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A376551

/-! ## A376551.P9642465219046102500

`n*A143397(A000096(n))`
-/

namespace A376551.P9642465219046102500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A143397 (A000096 n).toNat

end

end A376551.P9642465219046102500

namespace A376551

/-- `n*A143397(A000096(n))` -/
def P9642465219046102500.Spec : Prop :=
  ∀ n, P9642465219046102500.a n = A376551 n

end A376551

/-! ## A376551.P3932243110454795047

`A052512(n+1)-A000248(n)`
-/

namespace A376551.P3932243110454795047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052512 (n + 1) - A000248 n

end

end A376551.P3932243110454795047

namespace A376551

/-- `A052512(n+1)-A000248(n)` -/
def P3932243110454795047.Spec : Prop :=
  ∀ n, P3932243110454795047.a n = A376551 n

end A376551

/-! ## A376551.P10461625633513033633

`n*A145460(A034856(n+1))`
-/

namespace A376551.P10461625633513033633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A145460 (A034856 (n + 1)).toNat

end

end A376551.P10461625633513033633

namespace A376551

/-- `n*A145460(A034856(n+1))` -/
def P10461625633513033633.Spec : Prop :=
  ∀ n, P10461625633513033633.a n = A376551 n

end A376551

/-! ## A376551.P8320374573920724333

`n*(A009565(n)+A009121(n))`
-/

namespace A376551.P8320374573920724333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A009565 n + A009121 n)

end

end A376551.P8320374573920724333

namespace A376551

/-- `n*(A009565(n)+A009121(n))` -/
def P8320374573920724333.Spec : Prop :=
  ∀ n, P8320374573920724333.a n = A376551 n

end A376551

/-! ## A376551.P449763217824451199

`n*A210725(A238531(n))`
-/

namespace A376551.P449763217824451199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A210725 (A238531 n).toNat

end

end A376551.P449763217824451199

namespace A376551

/-- `n*A210725(A238531(n))` -/
def P449763217824451199.Spec : Prop :=
  ∀ n, P449763217824451199.a n = A376551 n

end A376551

/-!
# A376553: Largest unitary square divisor of binomial(n, floor(n/2)).

The programs for A376553, there is no canonical definition to state claims against.
-/

/-! ## A376553.P10113775825156628681

`A376554(n)²`
-/

namespace A376553.P10113775825156628681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376554 n ^ 2

end

end A376553.P10113775825156628681

/-! ## A376553.P16942607567321727774

`A376554(n)^A099837(3*n)`
-/

namespace A376553.P16942607567321727774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376554 n : ℚ) ^ (A099837 (3 * n) : ℤ)

end

end A376553.P16942607567321727774

/-! ## A376553.P13648578015432146708

`A376554(n-char[1])*A376554(n)`
-/

namespace A376553.P13648578015432146708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376554 (n - (if ∃ j, f1 j = n then 1 else 0)) * A376554 n

end

end A376553.P13648578015432146708

/-! ## A376553.P7481387274688199422

`A376554(n)^A001316(A001316(n))`
-/

namespace A376553.P7481387274688199422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376554 n : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A376553.P7481387274688199422

/-! ## A376553.P12848672968784063692

`A376554(n)^A000005(A000040(n+1))`
-/

namespace A376553.P12848672968784063692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376554 n : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A376553.P12848672968784063692

/-! ## A376553.P13154039323772582954

`A376554(n)^A000005(A083249(n+1))`
-/

namespace A376553.P13154039323772582954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376554 n : ℚ) ^ (A000005 (A083249 (n + 1)).toNat : ℤ)

end

end A376553.P13154039323772582954

/-! ## A376553.P15349859936617042639

`A376554(n)^A320011(A105184(n+1))`
-/

namespace A376553.P15349859936617042639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376554 n : ℚ) ^ (A320011 (A105184 (n + 1)).toNat : ℤ)

end

end A376553.P15349859936617042639

/-! ## A376553.P11925678425111298131

`A376554(n)^A320011(A175277(n+1))`
-/

namespace A376553.P11925678425111298131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376554 n : ℚ) ^ (A320011 (A175277 (n + 1)).toNat : ℤ)

end

end A376553.P11925678425111298131

/-! ## A376553.P16183069527008039419

`A376554(n)^A053214(A191036(n+1))`
-/

namespace A376553.P16183069527008039419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376554 n : ℚ) ^ (A053214 (A191036 (n + 1)).toNat : ℤ)

end

end A376553.P16183069527008039419

/-! ## A376553.P13600608079014184138

`A000290(A057427(3*n+1)*A376554(n))`
-/

namespace A376553.P13600608079014184138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A057427 (3 * n + 1) * A376554 n).toNat

end

end A376553.P13600608079014184138

/-!
# A376554: Square root of largest unitary square divisor of binomial(n, floor(n/2)).

The programs for A376554, there is no canonical definition to state claims against.
-/

/-! ## A376554.P2560824729127993813

`sqrt(A376553(n))`
-/

namespace A376554.P2560824729127993813
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A376553 n : ℝ)

end

end A376554.P2560824729127993813

/-! ## A376554.P14911188962689835554

`root(A376553(n), A000032(floor(1/(n+1))))`
-/

namespace A376554.P14911188962689835554
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A376553 n : ℝ) ^ (1 / (A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℝ))

end

end A376554.P14911188962689835554

/-! ## A376554.P610982027896978970

`root(A376553(n), A052539(floor(1/(n+1))))`
-/

namespace A376554.P610982027896978970
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A376553 n : ℝ) ^ (1 / (A052539 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℝ))

end

end A376554.P610982027896978970

/-! ## A376554.P5609499404231674966

`root(A376553(n), A213302(floor(1/(n+1))))`
-/

namespace A376554.P5609499404231674966
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A376553 n : ℝ) ^ (1 / (A213302 ⌊1 / (n + 1 : ℚ)⌋.toNat : ℝ))

end

end A376554.P5609499404231674966

/-! ## A376554.P16846713672168248142

`A133388(A376553(n)+1)`
-/

namespace A376554.P16846713672168248142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (A376553 n + 1).toNat

end

end A376554.P16846713672168248142

/-! ## A376554.P128430224311204887

`A000194(A376553(n)+1)`
-/

namespace A376554.P128430224311204887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A376553 n + 1).toNat

end

end A376554.P128430224311204887

/-! ## A376554.P5404945602783342825

`A000196(A376553(n)+1)`
-/

namespace A376554.P5404945602783342825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A376553 n + 1).toNat

end

end A376554.P5404945602783342825

/-! ## A376554.P4499615380760343283

`A084610(A376553(n)+1)`
-/

namespace A376554.P4499615380760343283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084610 (A376553 n + 1).toNat

end

end A376554.P4499615380760343283

/-! ## A376554.P5857617800451453206

`A000188(2*A376553(n))`
-/

namespace A376554.P5857617800451453206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (2 * A376553 n).toNat

end

end A376554.P5857617800451453206

/-! ## A376554.P11471761169395700238

`A002260(2*A376553(n))`
-/

namespace A376554.P11471761169395700238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (2 * A376553 n).toNat

end

end A376554.P11471761169395700238

/-!
# A376555: The number of unitary square divisors of binomial(n, floor(n/2)).

The programs for A376555, there is no canonical definition to state claims against.
-/

/-! ## A376555.P8097962325588511743

`∏{p}[A376554(n), A010846(#)]`
-/

namespace A376555.P8097962325588511743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A010846 p

end

end A376555.P8097962325588511743

/-! ## A376555.P4883746242145113827

`∏{p}[A376554(n), A376567(#)]`
-/

namespace A376555.P4883746242145113827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A376567 p

end

end A376555.P4883746242145113827

/-! ## A376555.P3135065202080223840

`A000005(∏{p}[A376554(n), #])`
-/

namespace A376555.P3135065202080223840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376554 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A376555.P3135065202080223840

/-! ## A376555.P6283163334652978692

`A034444(A376554(n))`
-/

namespace A376555.P6283163334652978692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A376554 n).toNat

end

end A376555.P6283163334652978692

/-! ## A376555.P100111797048905926

`A000005(∏{p}[A376553(n), #])`
-/

namespace A376555.P100111797048905926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A376555.P100111797048905926

/-! ## A376555.P388257862537730189

`∏{p}[A376553(n), A036453(#)]`
-/

namespace A376555.P388257862537730189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A036453 p

end

end A376555.P388257862537730189

/-! ## A376555.P6521767635758278160

`A055076(∏{p}[A376553(n), #])`
-/

namespace A376555.P6521767635758278160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A376555.P6521767635758278160

/-! ## A376555.P8010341331458629996

`A366763(A376554(n)%A108660(n+1))`
-/

namespace A376555.P8010341331458629996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366763 (Int.tmod (A376554 n) (A108660 (n + 1))).toNat

end

end A376555.P8010341331458629996

/-! ## A376555.P17054187574272866854

`A034444(A376553(n))`
-/

namespace A376555.P17054187574272866854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A376553 n).toNat

end

end A376555.P17054187574272866854

/-! ## A376555.P5797082093475144414

`A056624(A376554(n)²)`
-/

namespace A376555.P5797082093475144414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056624 (A376554 n ^ 2).toNat

end

end A376555.P5797082093475144414

/-!
# A376556: The number of non-unitary square divisors of binomial(n, floor(n/2)).

The programs for A376556, there is no canonical definition to state claims against.
-/

/-! ## A376556.P13167418315873457169

`A056649(A160755(n+1))`
-/

namespace A376556.P13167418315873457169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056649 (A160755 (n + 1)).toNat

end

end A376556.P13167418315873457169

/-! ## A376556.P15301836119155846852

`A056649(abs(A208478(∑[n+1])-n)+1)`
-/

namespace A376556.P15301836119155846852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056649 (|A208478 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)| + 1).toNat

end

end A376556.P15301836119155846852

/-!
# A376559: Second differences of consecutive perfect powers (A001597). First differences of A053289.

The programs for A376559, there is no canonical definition to state claims against.
-/

/-! ## A376559.P9654463270689218744

`Δ[A076412(1+n)]`
-/

namespace A376559.P9654463270689218744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376559.P9654463270689218744

/-! ## A376559.P16244284521115040120

`A076412(n+2)-A076412(n+1)`
-/

namespace A376559.P16244284521115040120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 (n + 2) - A076412 (n + 1)

end

end A376559.P16244284521115040120

/-! ## A376559.P12827491083905872263

`Δ[A053289(n+1)]`
-/

namespace A376559.P12827491083905872263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376559.P12827491083905872263

/-! ## A376559.P11781328103719534610

`A053289(n+2)-A053289(n+1)`
-/

namespace A376559.P11781328103719534610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (n + 2) - A053289 (n + 1)

end

end A376559.P11781328103719534610

/-! ## A376559.P12365870256385055081

`Δ[Δ[A001597(n+1)]]`
-/

namespace A376559.P12365870256385055081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376559.P12365870256385055081

/-! ## A376559.P4067724279133226978

`Δ[Δ[abs(A157985(n+1))]]`
-/

namespace A376559.P4067724279133226978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376559.P4067724279133226978

/-! ## A376559.P2185776511738760897

`Δ[runs[A069623(n+1)]]`
-/

namespace A376559.P2185776511738760897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376559.P2185776511738760897

/-! ## A376559.P9807621006980920598

`Δ[runs[A072292(n+1)]]`
-/

namespace A376559.P9807621006980920598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072292 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376559.P9807621006980920598

/-! ## A376559.P12073648882488899262

`Δ[runs[A076407(n+1)]]`
-/

namespace A376559.P12073648882488899262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076407 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376559.P12073648882488899262

/-! ## A376559.P291239398319544664

`Δ[runs[A081676(n+1)]]`
-/

namespace A376559.P291239398319544664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376559.P291239398319544664

/-! ## A376559.P8182101870722077892

`Δ[runs[A089361(n+1)]]`
-/

namespace A376559.P8182101870722077892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376559.P8182101870722077892

/-! ## A376559.P6960512477393911266

`Δ[runs[A381042(n+1)]]`
-/

namespace A376559.P6960512477393911266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381042 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376559.P6960512477393911266

/-! ## A376559.P13693955260093516954

`Δ[runs[A076411(n+2)]]`
-/

namespace A376559.P13693955260093516954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376559.P13693955260093516954

/-!
# A376560: Points of upward concavity in the sequence of perfect-powers (A001597). Positives of A376559.

The programs for A376560, there is no canonical definition to state claims against.
-/

/-! ## A376560.P3052439466979947191

`comp[A376561(n+1)-1]+1`
-/

namespace A376560.P3052439466979947191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376561 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A376560.P3052439466979947191

/-! ## A376560.P15797138919933034618

`comp[lt[A076412(n+1), A076412(n)]-1]+1`
-/

namespace A376560.P15797138919933034618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < f3 j) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A376560.P15797138919933034618

/-! ## A376560.P2691926591607912780

`lt[0, A376559(n+1)+1]+1`
-/

namespace A376560.P2691926591607912780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376559 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A376560.P2691926591607912780

/-! ## A376560.P373656659761379187

`eq[A075772(n+1), A076412(n)]`
-/

namespace A376560.P373656659761379187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376560.P373656659761379187

/-! ## A376560.P17510841898090399510

`lt[A053289(n+1), A053289(n+2)]+1`
-/

namespace A376560.P17510841898090399510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A376560.P17510841898090399510

/-! ## A376560.P11211362225081825123

`lt[A053289(A028310(n)), A053289(n+1)]`
-/

namespace A376560.P11211362225081825123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376560.P11211362225081825123

/-! ## A376560.P10285592866222254786

`lt[A053289(A000038(n)+n), A053289(n+1)]`
-/

namespace A376560.P10285592866222254786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376560.P10285592866222254786

/-!
# A376561: Points of downward concavity in the sequence of perfect-powers (A001597).

The programs for A376561, there is no canonical definition to state claims against.
-/

/-! ## A376561.P8138297891324109491

`comp[A376560(n+1)-1]+1`
-/

namespace A376561.P8138297891324109491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376560 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A376561.P8138297891324109491

/-! ## A376561.P12921417325514958399

`lt[A076412(n+1), A076412(n)]`
-/

namespace A376561.P12921417325514958399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376561.P12921417325514958399

/-! ## A376561.P14402932531351171690

`lt[Δ[A076412(n)], 0]`
-/

namespace A376561.P14402932531351171690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A376561.P14402932531351171690

/-! ## A376561.P14158867177147191877

`eq[A075773(n+1), A076412(n)]`
-/

namespace A376561.P14158867177147191877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376561.P14158867177147191877

/-! ## A376561.P16731209053510351352

`lt[A053289(n+2), A053289(n+1)]+1`
-/

namespace A376561.P16731209053510351352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A376561.P16731209053510351352

/-! ## A376561.P5975786528861020279

`lt[A053289(n+1), A053289(A028310(n))]`
-/

namespace A376561.P5975786528861020279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376561.P5975786528861020279

/-!
# A376562: Second differences of consecutive non-perfect-powers (A007916). First differences of A375706.

The programs for A376562, the canonical program `A376562.P6945854027167087770` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376562 has offset 1).

The definition of A376562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376562.P6945854027167087770

`Δ[A375706(1+n)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A376562

/-- `Δ[A375706(1+n)]` -/
def P6945854027167087770.Spec : Prop :=
  ∀ n, P6945854027167087770.a n = A376562 (n + 1)

theorem P6945854027167087770.correct : P6945854027167087770.Spec := by
  intro n
  simp only [A376562, Nat.add_sub_cancel]

end A376562

/-! ## A376562.P9032808132600231193

`A375706(n+2)-A375706(n+1)`
-/

namespace A376562.P9032808132600231193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375706 (n + 2) - A375706 (n + 1)

end

end A376562.P9032808132600231193

namespace A376562

/-- `A375706(n+2)-A375706(n+1)` -/
def P9032808132600231193.Spec : Prop :=
  ∀ n, P9032808132600231193.a n = A376562 (n + 1)

theorem P9032808132600231193.correct : P9032808132600231193.Spec := by
  intro n
  simp only [A376562, Nat.add_sub_cancel, A376562.P9032808132600231193.a, A376562.P6945854027167087770.f1, A376562.P6945854027167087770.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A376562

/-! ## A376562.P12204765661105349290

`Δ[Δ[A007916(n+1)]]`
-/

namespace A376562.P12204765661105349290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376562.P12204765661105349290

namespace A376562

/-- `Δ[Δ[A007916(n+1)]]` -/
def P12204765661105349290.Spec : Prop :=
  ∀ n, P12204765661105349290.a n = A376562 (n + 1)

end A376562

/-! ## A376562.P13350923801830479166

`Δ[Δ[sqrt(A153158(n+1))]]`
-/

namespace A376562.P13350923801830479166
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A153158 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376562.P13350923801830479166

namespace A376562

/-- `Δ[Δ[sqrt(A153158(n+1))]]` -/
def P13350923801830479166.Spec : Prop :=
  ∀ n, P13350923801830479166.a n = (A376562 (n + 1) : ℝ)

end A376562

/-! ## A376562.P887907092770433633

`Δ[Δ[A175082(n+2)]]`
-/

namespace A376562.P887907092770433633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376562.P887907092770433633

namespace A376562

/-- `Δ[Δ[A175082(n+2)]]` -/
def P887907092770433633.Spec : Prop :=
  ∀ n, P887907092770433633.a n = A376562 (n + 1)

end A376562

/-! ## A376562.P11999739028265530085

`Δ[runs[A132351(n+2)]]`
-/

namespace A376562.P11999739028265530085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132351 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376562.P11999739028265530085

namespace A376562

/-- `Δ[runs[A132351(n+2)]]` -/
def P11999739028265530085.Spec : Prop :=
  ∀ n, P11999739028265530085.a n = A376562 (n + 1)

end A376562

/-! ## A376562.P7071827469653574963

`Δ[runs[A378363(n+2)]]`
-/

namespace A376562.P7071827469653574963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378363 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376562.P7071827469653574963

namespace A376562

/-- `Δ[runs[A378363(n+2)]]` -/
def P7071827469653574963.Spec : Prop :=
  ∀ n, P7071827469653574963.a n = A376562 (n + 1)

end A376562

/-! ## A376562.P7937481522397239259

`Δ[runs[A378358(n+3)]]`
-/

namespace A376562.P7937481522397239259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378358 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376562.P7937481522397239259

namespace A376562

/-- `Δ[runs[A378358(n+3)]]` -/
def P7937481522397239259.Spec : Prop :=
  ∀ n, P7937481522397239259.a n = A376562 (n + 1)

end A376562

/-!
# A376563: E.g.f. satisfies A(x) = exp( x*A(x) / (1 - x^3*A(x)^3) ).

The programs for A376563, there is no canonical definition to state claims against.
-/

/-! ## A376563.P14112646967127286367

`A000027(A376565(n))`
-/

namespace A376563.P14112646967127286367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A376565 n).toNat

end

end A376563.P14112646967127286367

/-! ## A376563.P4192430372894437524

`A376565(A051903(6^n))`
-/

namespace A376563.P4192430372894437524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376565 (A051903 (6 ^ n)).toNat

end

end A376563.P4192430372894437524

/-! ## A376563.P305398077819435455

`A376565(n*A280443(n))`
-/

namespace A376563.P305398077819435455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376565 ((n : ℤ) * A280443 n).toNat

end

end A376563.P305398077819435455

/-!
# A376564: E.g.f. satisfies A(x) = exp( x*A(x) * (1 + x^2*A(x)^2) ).

The programs for A376564, there is no canonical definition to state claims against.
-/

/-! ## A376564.P335455345213425419

`A054385(A054382(n))+A048146(n+1)`
-/

namespace A376564.P335455345213425419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (A054382 n).toNat + A048146 (n + 1)

end

end A376564.P335455345213425419

/-! ## A376564.P11093886728536383376

`A080378(2*(n+2))+A054385(A054382(n))`
-/

namespace A376564.P11093886728536383376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080378 (2 * (n + 2)) + A054385 (A054382 n).toNat

end

end A376564.P11093886728536383376

/-!
# A376566: Lexicographically earliest sequence of positive integers such that for any n > 0, there is an even number of k's such that 1 <= k < n and a(n) divides a(k).

The programs for A376566, there is no canonical definition to state claims against.
-/

/-! ## A376566.P10092301074121025694

`A028920(lt[A137338(2*n+3), A117047(n+1)])`
-/

namespace A376566.P10092301074121025694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137338 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376566.P10092301074121025694

/-! ## A376566.P4222368359286446099

`A028920(lt[A137338(2*n+3), A256634(n+1)])`
-/

namespace A376566.P4222368359286446099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137338 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376566.P4222368359286446099

/-! ## A376566.P18214777106923700733

`A028920(lt[A137338(2*n+3), A132231(2*(n+1))])`
-/

namespace A376566.P18214777106923700733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137338 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132231 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376566.P18214777106923700733

/-! ## A376566.P12673045670606312269

`A028920(lt[A137338(2*n+3), A261678(3*n+2)])`
-/

namespace A376566.P12673045670606312269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137338 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261678 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376566.P12673045670606312269

/-! ## A376566.P16104877836796167419

`A364448(n+1)^A280509(A252305(n+1))`
-/

namespace A376566.P16104877836796167419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364448 (n + 1) : ℚ) ^ (A280509 (A252305 (n + 1)).toNat : ℤ)

end

end A376566.P16104877836796167419

/-!
# A376567: a(n) = binomial(bigomega(n) + omega(n), omega(n)), where bigomega = A001222 and omega = A001221.

The programs for A376567, the canonical program `A376567.P9640430291992892874` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376567 has offset 1).

The definition of A376567 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A001222(n+1)+A001221(n+1), A001221(n+1))` (program `A376567.P9640430291992892874`, by `A376567.P9640430291992892874.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376567.P2544462788085833108

`A010846(n+1)-A376846(n+1)+A376847(n+1)`
-/

namespace A376567.P2544462788085833108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - A376846 (n + 1) + A376847 (n + 1)

end

end A376567.P2544462788085833108

namespace A376567

/-- `A010846(n+1)-A376846(n+1)+A376847(n+1)` -/
def P2544462788085833108.Spec : Prop :=
  ∀ n, P2544462788085833108.a n = A376567 (n + 1)

end A376567

/-! ## A376567.P9640430291992892874

`C(A001222(n+1)+A001221(n+1), A001221(n+1))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A376567

/-- `C(A001222(n+1)+A001221(n+1), A001221(n+1))` -/
def P9640430291992892874.Spec : Prop :=
  ∀ n, (P9640430291992892874.a n : ℤ) = A376567 (n + 1)

theorem P9640430291992892874.correct : P9640430291992892874.Spec := by
  intro n
  simp only [A376567, Nat.add_sub_cancel]

end A376567

/-! ## A376567.P9995775098344183264

`A378181(n+1)+A377071(n+1)`
-/

namespace A376567.P9995775098344183264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378181 (n + 1) + A377071 (n + 1)

end

end A376567.P9995775098344183264

namespace A376567

/-- `A378181(n+1)+A377071(n+1)` -/
def P9995775098344183264.Spec : Prop :=
  ∀ n, P9995775098344183264.a n = A376567 (n + 1)

theorem P9995775098344183264.correct : P9995775098344183264.Spec := by
  intro n
  simp only [A376567, Nat.add_sub_cancel, A376567.P9995775098344183264.a, A376567.P9640430291992892874.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A377071, A377071.P12918428740894715970.a, A378181, A378181.P11540481461231249369.a, A297155, A297155.P1611206963555320167.a, A252464, A252464.P11274602121942962009.a, A297113, A297113.P441289280190658386.a, A046660, A046660.P3614759855976580945.a, A061395, A061395.P8431317036300486107.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A376567

/-! ## A376567.P17731910980327853695

`C(A080256(n+1), A001221(n+1))`
-/

namespace A376567.P17731910980327853695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080256 (n + 1)).toNat (A001221 (n + 1)).toNat

end

end A376567.P17731910980327853695

namespace A376567

/-- `C(A080256(n+1), A001221(n+1))` -/
def P17731910980327853695.Spec : Prop :=
  ∀ n, (P17731910980327853695.a n : ℤ) = A376567 (n + 1)

theorem P17731910980327853695.correct : P17731910980327853695.Spec := by
  intro n
  simp only [A376567, Nat.add_sub_cancel, A376567.P17731910980327853695.a, A376567.P9640430291992892874.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A080256, A080256.P7120327596299936655.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A376567

/-! ## A376567.P18098592674507759920

`A378181(2*A071364(n+1))`
-/

namespace A376567.P18098592674507759920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378181 (2 * A071364 (n + 1)).toNat

end

end A376567.P18098592674507759920

namespace A376567

/-- `A378181(2*A071364(n+1))` -/
def P18098592674507759920.Spec : Prop :=
  ∀ n, P18098592674507759920.a n = A376567 (n + 1)

end A376567

/-! ## A376567.P5648041184334184883

`A008480(A124508(n+1))`
-/

namespace A376567.P5648041184334184883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A124508 (n + 1)).toNat

end

end A376567.P5648041184334184883

namespace A376567

/-- `A008480(A124508(n+1))` -/
def P5648041184334184883.Spec : Prop :=
  ∀ n, P5648041184334184883.a n = A376567 (n + 1)

end A376567

/-! ## A376567.P6806526051893282108

`A168324(lcm(2, A124508(n+1)))`
-/

namespace A376567.P6806526051893282108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (Int.lcm 2 (A124508 (n + 1)))

end

end A376567.P6806526051893282108

namespace A376567

/-- `A168324(lcm(2, A124508(n+1)))` -/
def P6806526051893282108.Spec : Prop :=
  ∀ n, P6806526051893282108.a n = A376567 (n + 1)

end A376567

/-! ## A376567.P12430255930838288348

`C(A001222((1+n)*∏{p}[n+1, #]), ∑{e}[n+1, #])`
-/

namespace A376567.P12430255930838288348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 ((1 + n) * (∏ p ∈ Nat.primeFactors (f1 n), p))).toNat (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A376567.P12430255930838288348

namespace A376567

/-- `C(A001222((1+n)*∏{p}[n+1, #]), ∑{e}[n+1, #])` -/
def P12430255930838288348.Spec : Prop :=
  ∀ n, (P12430255930838288348.a n : ℤ) = A376567 (n + 1)

end A376567

/-! ## A376567.P5846381041624473884

`A181591(A064549(n+1))`
-/

namespace A376567.P5846381041624473884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181591 (A064549 (n + 1)).toNat

end

end A376567.P5846381041624473884

namespace A376567

/-- `A181591(A064549(n+1))` -/
def P5846381041624473884.Spec : Prop :=
  ∀ n, P5846381041624473884.a n = A376567 (n + 1)

end A376567

/-! ## A376567.P16510856830312781916

`A378181(A129598(n+1))`
-/

namespace A376567.P16510856830312781916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378181 (A129598 (n + 1)).toNat

end

end A376567.P16510856830312781916

namespace A376567

/-- `A378181(A129598(n+1))` -/
def P16510856830312781916.Spec : Prop :=
  ∀ n, P16510856830312781916.a n = A376567 (n + 1)

end A376567

/-!
# A376568: Expansion of 1/(1 - 9*x*(1 + x))^(2/3).

The programs for A376568, the canonical program `A376568.P8540080205909475356` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376568 has offset 0).

The definition of A376568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376568.P8540080205909475356

`3*((3*n-1)*a(n-1)+(3*n-2)*a(n-2))/n` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376568

/-- `3*((3*n-1)*a(n-1)+(3*n-2)*a(n-2))/n` -/
def P8540080205909475356.Spec : Prop :=
  ∀ n, P8540080205909475356.a n = (A376568 n : ℚ)

end A376568

/-!
# A376570: Table T(n, k), n > 1, k = 1..n-1, read by rows; T(n, k) is the least m such that the points (m, prime(m)), (k, prime(k)) and (n, prime(n)) are aligned (where prime(k) denotes the k-th prime number).

The programs for A376570, there is no canonical definition to state claims against.
-/

/-! ## A376570.P11254851563300938947

`A273673(∑[A151622(2*n+3)+1])`
-/

namespace A376570.P11254851563300938947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 (2 * n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273673 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A376570.P11254851563300938947

/-! ## A376570.P12313750107506536224

`A273673(A151622(2*n+3)+1+n)`
-/

namespace A376570.P12313750107506536224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273673 (A151622 (2 * n + 3) + 1 + (n : ℤ)).toNat

end

end A376570.P12313750107506536224

/-! ## A376570.P9531743477161347606

`A273673(n+1)%A269303(2*(n+2))`
-/

namespace A376570.P9531743477161347606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273673 (n + 1)) (A269303 (2 * (n + 2)))

end

end A376570.P9531743477161347606

/-! ## A376570.P11302620486515314747

`A084558(A052126(A171840(n+1)²))`
-/

namespace A376570.P11302620486515314747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A052126 (A171840 (n + 1) ^ 2).toNat).toNat

end

end A376570.P11302620486515314747

/-! ## A376570.P14867259583994590737

`A273673(n+1)+A209229(A022137(n))`
-/

namespace A376570.P14867259583994590737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273673 (n + 1) + A209229 (A022137 n).toNat

end

end A376570.P14867259583994590737

/-!
# A376573: Numbers that are not squares of triangular numbers. Complement of A000537.

The programs for A376573, the canonical program `A376573.P13280626353334882873` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376573 has offset 1).

The definition of A376573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376573.P13280626353334882873

`comp[∑[n]²]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376573

/-- `comp[∑[n]²]` -/
def P13280626353334882873.Spec : Prop :=
  ∀ n, (P13280626353334882873.a n : ℤ) = A376573 (n + 1)

theorem P13280626353334882873.correct : P13280626353334882873.Spec := by
  intro n
  simp only [A376573, Nat.add_sub_cancel]

end A376573

/-! ## A376573.P1044676386757810100

`comp[C(n, 2)²-1]+1`
-/

namespace A376573.P1044676386757810100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A376573.P1044676386757810100

namespace A376573

/-- `comp[C(n, 2)²-1]+1` -/
def P1044676386757810100.Spec : Prop :=
  ∀ n, (P1044676386757810100.a n : ℤ) = A376573 (n + 1)

end A376573

/-! ## A376573.P9864700888092092584

`and(comp[C(n+1, 2)²], -1)`
-/

namespace A376573.P9864700888092092584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (-1)

end

end A376573.P9864700888092092584

namespace A376573

/-- `and(comp[C(n+1, 2)²], -1)` -/
def P9864700888092092584.Spec : Prop :=
  ∀ n, P9864700888092092584.a n = A376573 (n + 1)

end A376573

/-! ## A376573.P3645709864546862714

`and(comp[A000537(n)], -1)`
-/

namespace A376573.P3645709864546862714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-1)

end

end A376573.P3645709864546862714

namespace A376573

/-- `and(comp[A000537(n)], -1)` -/
def P3645709864546862714.Spec : Prop :=
  ∀ n, P3645709864546862714.a n = A376573 (n + 1)

end A376573

/-! ## A376573.P16210679481441476888

`eq[0, char[∑[n]²]]`
-/

namespace A376573.P16210679481441476888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j) ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376573.P16210679481441476888

namespace A376573

/-- `eq[0, char[∑[n]²]]` -/
def P16210679481441476888.Spec : Prop :=
  ∀ n, (P16210679481441476888.a n : ℤ) = A376573 (n + 1)

end A376573

/-! ## A376573.P3522295093615718814

`lt[char[∑[n]²], 1]`
-/

namespace A376573.P3522295093615718814
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A376573.P3522295093615718814

namespace A376573

/-- `lt[char[∑[n]²], 1]` -/
def P3522295093615718814.Spec : Prop :=
  ∀ n, (P3522295093615718814.a n : ℤ) = A376573 (n + 1)

end A376573

/-! ## A376573.P6400692654991223178

`∑[runs[n-char[∑[n+1]²]]]`
-/

namespace A376573.P6400692654991223178
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f4 j) ^ 2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376573.P6400692654991223178

namespace A376573

/-- `∑[runs[n-char[∑[n+1]²]]]` -/
def P6400692654991223178.Spec : Prop :=
  ∀ n, (P6400692654991223178.a n : ℤ) = A376573 (n + 1)

end A376573

/-! ## A376573.P5664941086276093130

`A002024(A109470(n+1))`
-/

namespace A376573.P5664941086276093130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A109470 (n + 1)).toNat

end

end A376573.P5664941086276093130

namespace A376573

/-- `A002024(A109470(n+1))` -/
def P5664941086276093130.Spec : Prop :=
  ∀ n, P5664941086276093130.a n = A376573 (n + 1)

end A376573

/-! ## A376573.P14308326005218791769

`∪[A028777(n+1), A037259(n)]`
-/

namespace A376573.P14308326005218791769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037259 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376573.P14308326005218791769

namespace A376573

/-- `∪[A028777(n+1), A037259(n)]` -/
def P14308326005218791769.Spec : Prop :=
  ∀ n, (P14308326005218791769.a n : ℤ) = A376573 (n + 1)

end A376573

/-! ## A376573.P15353005328857869421

`∪[A028773(n+1), A037259(n)]`
-/

namespace A376573.P15353005328857869421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037259 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376573.P15353005328857869421

namespace A376573

/-- `∪[A028773(n+1), A037259(n)]` -/
def P15353005328857869421.Spec : Prop :=
  ∀ n, (P15353005328857869421.a n : ℤ) = A376573 (n + 1)

end A376573

/-!
# A376574: G.f. A(x) satisfies A(x) = 1/(1 - x*A(x)/(1 - x^3)).

The programs for A376574, there is no canonical definition to state claims against.
-/

/-! ## A376574.P4792137546305425478

`A360272(n)+A073490(A051249(n))`
-/

namespace A376574.P4792137546305425478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360272 n + A073490 (A051249 n).toNat

end

end A376574.P4792137546305425478

/-! ## A376574.P5675155048133988859

`A360272(n)+A055641(A137955(n))`
-/

namespace A376574.P5675155048133988859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360272 n + A055641 (A137955 n).toNat

end

end A376574.P5675155048133988859

/-! ## A376574.P8210470456203171871

`A379475(A057005(n+1))+A360272(n)`
-/

namespace A376574.P8210470456203171871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379475 (A057005 (n + 1)).toNat + A360272 n

end

end A376574.P8210470456203171871

/-! ## A376574.P1747218364537904701

`A360272(n)+A267423(A006921(3*n+2))`
-/

namespace A376574.P1747218364537904701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360272 n + A267423 (A006921 (3 * n + 2)).toNat

end

end A376574.P1747218364537904701

/-!
# A376575: E.g.f. A(x) satisfies A(x) = exp(x*A(x)/(1 - x^2)).

The programs for A376575, there is no canonical definition to state claims against.
-/

/-! ## A376575.P14635162246392114609

`A156229(A052880(n)-A156251(n+1))`
-/

namespace A376575.P14635162246392114609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156229 (A052880 n - A156251 (n + 1)).toNat

end

end A376575.P14635162246392114609

/-!
# A376576: E.g.f. A(x) satisfies A(x) = exp(x*A(x)/(1 - x^3)).

The programs for A376576, there is no canonical definition to state claims against.
-/

/-! ## A376576.P13940890128035371410

`A159083(n)+A000027(A376578(n))`
-/

namespace A376576.P13940890128035371410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159083 n + A000027 (A376578 n).toNat

end

end A376576.P13940890128035371410

/-! ## A376576.P12216985824686599982

`A014682(2*A362655(n))`
-/

namespace A376576.P12216985824686599982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A362655 n).toNat

end

end A376576.P12216985824686599982

/-! ## A376576.P10690157909664307927

`A302042(2*A376578(n))`
-/

namespace A376576.P10690157909664307927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (2 * A376578 n).toNat

end

end A376576.P10690157909664307927

/-!
# A376577: E.g.f. A(x) satisfies A(x) = exp(x*(1 + x^2)*A(x)).

The programs for A376577, there is no canonical definition to state claims against.
-/

/-! ## A376577.P5132311561790663209

`A268234(A212917(n))-1`
-/

namespace A376577.P5132311561790663209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268234 (A212917 n).toNat - 1

end

end A376577.P5132311561790663209

/-! ## A376577.P2483512099220622755

`A362392(n)+A023443(A376565(n))`
-/

namespace A376577.P2483512099220622755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362392 n + A023443 (A376565 n).toNat

end

end A376577.P2483512099220622755

/-!
# A376578: E.g.f. A(x) satisfies A(x) = exp(x*(1 + x^3)*A(x)).

The programs for A376578, there is no canonical definition to state claims against.
-/

/-! ## A376578.P5737247375965459015

`A000027(A376576(n)-A159083(n))`
-/

namespace A376578.P5737247375965459015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A376576 n - A159083 n).toNat

end

end A376578.P5737247375965459015

/-!
# A376579: Least prime p such that p*n+1 is prime, or -1 if no such prime exists.

The programs for A376579, there is no canonical definition to state claims against.
-/

/-! ## A376579.P16323563096334506710

`A089367(n+1)-A010052(A089367(n+1))`
-/

namespace A376579.P16323563096334506710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089367 (n + 1) - A010052 (A089367 (n + 1)).toNat

end

end A376579.P16323563096334506710

/-!
# A376581: G.f.: Sum_{k>=0} x^(k^2) / Product_{j=1..k} (1 - x^(2*j-1))^2.

The programs for A376581, there is no canonical definition to state claims against.
-/

/-! ## A376581.P8139302538930238489

`A096911(2*(n+1))-A101637(A000108(n))`
-/

namespace A376581.P8139302538930238489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096911 (2 * (n + 1)) - A101637 (A000108 n).toNat

end

end A376581.P8139302538930238489

/-! ## A376581.P15318381132562508299

`A373811(A353864(2*n)-A243822(n+1))`
-/

namespace A376581.P15318381132562508299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A353864 (2 * n) - A243822 (n + 1)).toNat

end

end A376581.P15318381132562508299

/-!
# A376582: Triangle of generalized Stirling numbers.

The programs for A376582, the canonical program `A376582.P10318355620101401562` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376582 has offset 0).

The definition of A376582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376582.P10318355620101401562

`A067176(lt[1, A008288(n)])`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A376582

/-- `A067176(lt[1, A008288(n)])` -/
def P10318355620101401562.Spec : Prop :=
  ∀ n, P10318355620101401562.a n = A376582 n

theorem P10318355620101401562.correct : P10318355620101401562.Spec := by
  intro n
  simp only [A376582]

end A376582

/-! ## A376582.P2822056976805559355

`A067176(lt[1, A081582(n)])`
-/

namespace A376582.P2822056976805559355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A376582.P2822056976805559355

namespace A376582

/-- `A067176(lt[1, A081582(n)])` -/
def P2822056976805559355.Spec : Prop :=
  ∀ n, P2822056976805559355.a n = A376582 n

end A376582

/-! ## A376582.P6914330582767919952

`A067176(lt[1, A091491(n)])`
-/

namespace A376582.P6914330582767919952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A376582.P6914330582767919952

namespace A376582

/-- `A067176(lt[1, A091491(n)])` -/
def P6914330582767919952.Spec : Prop :=
  ∀ n, P6914330582767919952.a n = A376582 n

end A376582

/-! ## A376582.P17846368117719510205

`A067176(lt[1, A060187(n+1)])`
-/

namespace A376582.P17846368117719510205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A376582.P17846368117719510205

namespace A376582

/-- `A067176(lt[1, A060187(n+1)])` -/
def P17846368117719510205.Spec : Prop :=
  ∀ n, P17846368117719510205.a n = A376582 n

end A376582

/-! ## A376582.P13002128646567455262

`A067176(lt[gcd(5, n), A268079(n+1)])`
-/

namespace A376582.P13002128646567455262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A376582.P13002128646567455262

namespace A376582

/-- `A067176(lt[gcd(5, n), A268079(n+1)])` -/
def P13002128646567455262.Spec : Prop :=
  ∀ n, P13002128646567455262.a n = A376582 n

end A376582

/-! ## A376582.P2068744410951382617

`A067176(lt[A164848(n+3), A268079(n+1)])`
-/

namespace A376582.P2068744410951382617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164848 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376582.P2068744410951382617

namespace A376582

/-- `A067176(lt[A164848(n+3), A268079(n+1)])` -/
def P2068744410951382617.Spec : Prop :=
  ∀ n, P2068744410951382617.a n = A376582 n

end A376582

/-! ## A376582.P1309378244861112848

`A067176(lt[1, A299561(n+1)])`
-/

namespace A376582.P1309378244861112848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A376582.P1309378244861112848

namespace A376582

/-- `A067176(lt[1, A299561(n+1)])` -/
def P1309378244861112848.Spec : Prop :=
  ∀ n, P1309378244861112848.a n = A376582 n

end A376582

/-! ## A376582.P5562518719960982179

`A067176(lt[1, A231049(n+1)])`
-/

namespace A376582.P5562518719960982179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A376582.P5562518719960982179

namespace A376582

/-- `A067176(lt[1, A231049(n+1)])` -/
def P5562518719960982179.Spec : Prop :=
  ∀ n, P5562518719960982179.a n = A376582 n

end A376582

/-! ## A376582.P3895871463690388986

`A067176(lt[0, A303979(n+1)])`
-/

namespace A376582.P3895871463690388986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A376582.P3895871463690388986

namespace A376582

/-- `A067176(lt[0, A303979(n+1)])` -/
def P3895871463690388986.Spec : Prop :=
  ∀ n, P3895871463690388986.a n = A376582 n

end A376582

/-!
# A376583: Parity of A002260.

The programs for A376583, the canonical program `A376583.P3078053738808332107` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376583 has offset 1).

The definition of A376583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376583.P16602136720010352763

`(n+1-C(floor(sqrt(2*(n+1))+1/2), 2))%2`
-/

namespace A376583.P16602136720010352763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - (Nat.choose ⌊Real.sqrt (2 * (n + 1) : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋.toNat 2 : ℤ)) 2

end

end A376583.P16602136720010352763

namespace A376583

/-- `(n+1-C(floor(sqrt(2*(n+1))+1/2), 2))%2` -/
def P16602136720010352763.Spec : Prop :=
  ∀ n, P16602136720010352763.a n = A376583 (n + 1)

end A376583

/-! ## A376583.P10820491429705831814

`1-A060510(n)`
-/

namespace A376583.P10820491429705831814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A060510 n

end

end A376583.P10820491429705831814

namespace A376583

/-- `1-A060510(n)` -/
def P10820491429705831814.Spec : Prop :=
  ∀ n, P10820491429705831814.a n = A376583 (n + 1)

end A376583

/-! ## A376583.P3078053738808332107

`A000035(A002260(n+1))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A376583

/-- `A000035(A002260(n+1))` -/
def P3078053738808332107.Spec : Prop :=
  ∀ n, P3078053738808332107.a n = A376583 (n + 1)

theorem P3078053738808332107.correct : P3078053738808332107.Spec := by
  intro n
  simp only [A376583, Nat.add_sub_cancel]

end A376583

/-! ## A376583.P17216017919801829162

`1-T(n-1,k-1)` with `a(0)=1`
-/

namespace A376583.P17216017919801829162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - SequenceMachineLib.triUpLeft a n

end

end A376583.P17216017919801829162

namespace A376583

/-- `1-T(n-1,k-1)` -/
def P17216017919801829162.Spec : Prop :=
  ∀ n, P17216017919801829162.a n = A376583 (n + 1)

end A376583

/-! ## A376583.P7790391233538444756

`1-T(n,k-1)` with `a(0)=1`
-/

namespace A376583.P7790391233538444756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - SequenceMachineLib.triLeft a n

end

end A376583.P7790391233538444756

namespace A376583

/-- `1-T(n,k-1)` -/
def P7790391233538444756.Spec : Prop :=
  ∀ n, P7790391233538444756.a n = A376583 (n + 1)

end A376583

/-! ## A376583.P1126905092045197250

`T(T(n-1,k+1), T(n-1,k-1))` with `a(0)=1`
-/

namespace A376583.P1126905092045197250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpRight a n : ℕ) : ℤ) ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ)

end

end A376583.P1126905092045197250

namespace A376583

/-- `T(T(n-1,k+1), T(n-1,k-1))` -/
def P1126905092045197250.Spec : Prop :=
  ∀ n, (P1126905092045197250.a n : ℤ) = A376583 (n + 1)

end A376583

/-! ## A376583.P5450943945356819386

`T(T(n-1,k), T(n-1,k-1))` with `a(0)=1, a(1)=1`
-/

namespace A376583.P5450943945356819386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUp a n : ℕ) : ℤ) ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ)

end

end A376583.P5450943945356819386

namespace A376583

/-- `T(T(n-1,k), T(n-1,k-1))` -/
def P5450943945356819386.Spec : Prop :=
  ∀ n, (P5450943945356819386.a n : ℤ) = A376583 (n + 1)

end A376583

/-! ## A376583.P14814363924742499701

`(col(n)+1)%2`
-/

namespace A376583.P14814363924742499701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1) % 2

end

end A376583.P14814363924742499701

namespace A376583

/-- `(col(n)+1)%2` -/
def P14814363924742499701.Spec : Prop :=
  ∀ n, (P14814363924742499701.a n : ℤ) = A376583 (n + 1)

end A376583

/-! ## A376583.P1182805944779384983

`1-col(n)%2`
-/

namespace A376583.P1182805944779384983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((SequenceMachineLib.triCol n % 2 : ℕ) : ℤ)

end

end A376583.P1182805944779384983

namespace A376583

/-- `1-col(n)%2` -/
def P1182805944779384983.Spec : Prop :=
  ∀ n, P1182805944779384983.a n = A376583 (n + 1)

end A376583

/-! ## A376583.P11505909953151679389

`gcd(2, col(n))-1`
-/

namespace A376583.P11505909953151679389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (SequenceMachineLib.triCol n) : ℤ) - 1

end

end A376583.P11505909953151679389

namespace A376583

/-- `gcd(2, col(n))-1` -/
def P11505909953151679389.Spec : Prop :=
  ∀ n, P11505909953151679389.a n = A376583 (n + 1)

end A376583

/-! ## A376583.P10831022529041974811

`and(1, col(n)+1)`
-/

namespace A376583.P10831022529041974811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.triCol n + 1)

end

end A376583.P10831022529041974811

namespace A376583

/-- `and(1, col(n)+1)` -/
def P10831022529041974811.Spec : Prop :=
  ∀ n, (P10831022529041974811.a n : ℤ) = A376583 (n + 1)

end A376583

/-! ## A376583.P15487897769414150764

`and(1, 1-col(n))`
-/

namespace A376583.P15487897769414150764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (1 - (SequenceMachineLib.triCol n : ℤ))

end

end A376583.P15487897769414150764

namespace A376583

/-- `and(1, 1-col(n))` -/
def P15487897769414150764.Spec : Prop :=
  ∀ n, P15487897769414150764.a n = A376583 (n + 1)

end A376583

/-! ## A376583.P7611211856548394207

`T(T(n-1,k-1), 2*T(n-1,k-1))` with `a(0)=1`
-/

namespace A376583.P7611211856548394207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) (2 * SequenceMachineLib.triUpLeft a n : ℤ)

end

end A376583.P7611211856548394207

namespace A376583

/-- `T(T(n-1,k-1), 2*T(n-1,k-1))` -/
def P7611211856548394207.Spec : Prop :=
  ∀ n, (P7611211856548394207.a n : ℤ) = A376583 (n + 1)

end A376583

/-! ## A376583.P13526472726245429265

`T(T(T(n-1,k-1), 2), T(n-1,k-1))` with `a(0)=1`
-/

namespace A376583.P13526472726245429265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triAt a ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) 2 : ℕ) : ℤ) ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ)

end

end A376583.P13526472726245429265

namespace A376583

/-- `T(T(T(n-1,k-1), 2), T(n-1,k-1))` -/
def P13526472726245429265.Spec : Prop :=
  ∀ n, (P13526472726245429265.a n : ℤ) = A376583 (n + 1)

end A376583

/-! ## A376583.P13662867187432297908

`comp[2*n²]%2`
-/

namespace A376583.P13662867187432297908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A376583.P13662867187432297908

namespace A376583

/-- `comp[2*n²]%2` -/
def P13662867187432297908.Spec : Prop :=
  ∀ n, (P13662867187432297908.a n : ℤ) = A376583 (n + 1)

end A376583

/-! ## A376583.P4961034915589635528

`and(1, comp[2*n²])`
-/

namespace A376583.P4961034915589635528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A376583.P4961034915589635528

namespace A376583

/-- `and(1, comp[2*n²])` -/
def P4961034915589635528.Spec : Prop :=
  ∀ n, (P4961034915589635528.a n : ℤ) = A376583 (n + 1)

end A376583

/-! ## A376583.P9397215472138019876

`char[comp[comp[n²]+n]]`
-/

namespace A376583.P9397215472138019876
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A376583.P9397215472138019876

namespace A376583

/-- `char[comp[comp[n²]+n]]` -/
def P9397215472138019876.Spec : Prop :=
  ∀ n, (P9397215472138019876.a n : ℤ) = A376583 (n + 1)

end A376583

/-! ## A376583.P11108048959847530468

`val(col(n)²+2, 2)`
-/

namespace A376583.P11108048959847530468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.triCol n ^ 2 + 2) 2

end

end A376583.P11108048959847530468

namespace A376583

/-- `val(col(n)²+2, 2)` -/
def P11108048959847530468.Spec : Prop :=
  ∀ n, (P11108048959847530468.a n : ℤ) = A376583 (n + 1)

end A376583

/-! ## A376583.P588771361480333852

`or(1, col(n))-col(n)`
-/

namespace A376583.P588771361480333852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (SequenceMachineLib.triCol n) : ℤ) - (SequenceMachineLib.triCol n : ℤ)

end

end A376583.P588771361480333852

namespace A376583

/-- `or(1, col(n))-col(n)` -/
def P588771361480333852.Spec : Prop :=
  ∀ n, P588771361480333852.a n = A376583 (n + 1)

end A376583

/-! ## A376583.P13344386508629458753

`val(col(n)^3+2, 2)`
-/

namespace A376583.P13344386508629458753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.triCol n ^ 3 + 2) 2

end

end A376583.P13344386508629458753

namespace A376583

/-- `val(col(n)^3+2, 2)` -/
def P13344386508629458753.Spec : Prop :=
  ∀ n, (P13344386508629458753.a n : ℤ) = A376583 (n + 1)

end A376583

/-!
# A376584: Fixed points in A375564.

The programs for A376584, there is no canonical definition to state claims against.
-/

/-! ## A376584.P6539457448082272486

`record[gcd(n+1, A375564(n+1))]`
-/

namespace A376584.P6539457448082272486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A375564 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376584.P6539457448082272486

/-!
# A376585: a(n) = 2^(2*n - 1) - 2^(n - 1)*(n - 1).

The programs for A376585, the canonical program `A376585.P738297981977452566` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376585 has offset 0).

The definition of A376585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376585.P8290294948027349346

`2^(2*n-1)-2^(n-1)*(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376585.P8290294948027349346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((n : ℤ) - 1 : ℚ)

end

end A376585.P8290294948027349346

namespace A376585

/-- `2^(2*n-1)-2^(n-1)*(n-1)` -/
def P8290294948027349346.Spec : Prop :=
  ∀ n, P8290294948027349346.a n = (A376585 n : ℚ)

end A376585

/-! ## A376585.P738297981977452566

`((24-8*n)*a(n-2)+(6*n-22)*a(n-1))/(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=24, a(4)=104`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A376585

/-- `((24-8*n)*a(n-2)+(6*n-22)*a(n-1))/(n-4)` -/
def P738297981977452566.Spec : Prop :=
  ∀ n, P738297981977452566.a n = (A376585 n : ℚ)

end A376585

/-! ## A376585.P8553306985773161643

`2*(A006516(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A376585.P8553306985773161643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A006516 (n - 1) + a (n - 1))

end

end A376585.P8553306985773161643

namespace A376585

/-- `2*(A006516(n-1)+a(n-1))` -/
def P8553306985773161643.Spec : Prop :=
  ∀ n, P8553306985773161643.a n = A376585 n

end A376585

/-! ## A376585.P1212343659686811031

`(A052548(n)-(n+1))/2*2^n`
-/

namespace A376585.P1212343659686811031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052548 n - (n + 1 : ℤ) : ℚ) / 2 * (2 ^ n : ℚ)

end

end A376585.P1212343659686811031

namespace A376585

/-- `(A052548(n)-(n+1))/2*2^n` -/
def P1212343659686811031.Spec : Prop :=
  ∀ n, P1212343659686811031.a n = (A376585 n : ℚ)

end A376585

/-! ## A376585.P12238696266745055913

`A011782(n)*A132045(n)`
-/

namespace A376585.P12238696266745055913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A132045 n

end

end A376585.P12238696266745055913

namespace A376585

/-- `A011782(n)*A132045(n)` -/
def P12238696266745055913.Spec : Prop :=
  ∀ n, P12238696266745055913.a n = A376585 n

end A376585

/-! ## A376585.P4438476764799599023

`(A186947(n)+A000079(n))/2`
-/

namespace A376585.P4438476764799599023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186947 n + A000079 n : ℚ) / 2

end

end A376585.P4438476764799599023

namespace A376585

/-- `(A186947(n)+A000079(n))/2` -/
def P4438476764799599023.Spec : Prop :=
  ∀ n, P4438476764799599023.a n = (A376585 n : ℚ)

end A376585

/-! ## A376585.P5918462063237078840

`(A083318(n)-n)*A011782(n)`
-/

namespace A376585.P5918462063237078840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A083318 n - (n : ℤ)) * A011782 n

end

end A376585.P5918462063237078840

namespace A376585

/-- `(A083318(n)-n)*A011782(n)` -/
def P5918462063237078840.Spec : Prop :=
  ∀ n, P5918462063237078840.a n = A376585 n

end A376585

/-!
# A376587: Minimum number of diagonal transversals in the diagonal Latin squares of order 2n+1 defined in A372922.

The programs for A376587, there is no canonical definition to state claims against.
-/

/-! ## A376587.P10661352206734853526

`A223893(A003450(n+6))`
-/

namespace A376587.P10661352206734853526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223893 (A003450 (n + 6)).toNat

end

end A376587.P10661352206734853526

/-!
# A376588: Inflection and undulation points in the sequence of non-perfect-powers (A007916).

The programs for A376588, there is no canonical definition to state claims against.
-/

/-! ## A376588.P10337438738517001362

`eq[0, A376562(n+1)]+1`
-/

namespace A376588.P10337438738517001362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376562 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376588.P10337438738517001362

/-! ## A376588.P3963946828798583074

`comp[A376589(n+1)-1]+1`
-/

namespace A376588.P3963946828798583074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376589 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A376588.P3963946828798583074

/-! ## A376588.P13764598085369327403

`eq[A375706(n+1), A375706(n+2)]+1`
-/

namespace A376588.P13764598085369327403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375706 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A376588.P13764598085369327403

/-!
# A376589: Points of nonzero curvature in the sequence of non-perfect-powers (A007916).

The programs for A376589, there is no canonical definition to state claims against.
-/

/-! ## A376589.P9414879247695775266

`∑[runs[A375706(n+1)]]`
-/

namespace A376589.P9414879247695775266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375706 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376589.P9414879247695775266

/-! ## A376589.P1085167307480322399

`∑[runs[Δ[A007916(n+1)]]]`
-/

namespace A376589.P1085167307480322399
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376589.P1085167307480322399

/-! ## A376589.P11758036230433469123

`comp[∪[A110526(2*n), A376588(n+1)]]`
-/

namespace A376589.P11758036230433469123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110526 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376588 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A376589.P11758036230433469123

/-! ## A376589.P12846240353498407439

`comp[∪[A073976(3*n+1), A376588(n+1)]]`
-/

namespace A376589.P12846240353498407439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073976 (3 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376588 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A376589.P12846240353498407439

/-!
# A376590: Second differences of consecutive squarefree numbers (A005117). First differences of A076259.

The programs for A376590, the canonical program `A376590.P15911683092171224194` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376590 has offset 1).

The definition of A376590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376590.P13845842369637146717

`Δ[Δ[A005117(n+1)]]`
-/

namespace A376590.P13845842369637146717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376590.P13845842369637146717

namespace A376590

/-- `Δ[Δ[A005117(n+1)]]` -/
def P13845842369637146717.Spec : Prop :=
  ∀ n, P13845842369637146717.a n = A376590 (n + 1)

theorem P13845842369637146717.correct : P13845842369637146717.Spec := by
  intro n
  simp only [A376590, Nat.add_sub_cancel, A376590.P13845842369637146717.f2, A376590.P13845842369637146717.f1, A376590.P13845842369637146717.a, A376590.P15911683092171224194.f1, A376590.P15911683092171224194.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A076259, A076259.P17974691457858298678.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A376590

/-! ## A376590.P15911683092171224194

`Δ[A076259(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A376590

/-- `Δ[A076259(n+1)]` -/
def P15911683092171224194.Spec : Prop :=
  ∀ n, P15911683092171224194.a n = A376590 (n + 1)

theorem P15911683092171224194.correct : P15911683092171224194.Spec := by
  intro n
  simp only [A376590, Nat.add_sub_cancel]

end A376590

/-! ## A376590.P6773065560961212745

`Δ[Δ[A243348(n+1)]]`
-/

namespace A376590.P6773065560961212745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243348 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376590.P6773065560961212745

namespace A376590

/-- `Δ[Δ[A243348(n+1)]]` -/
def P6773065560961212745.Spec : Prop :=
  ∀ n, P6773065560961212745.a n = A376590 (n + 1)

theorem P6773065560961212745.correct : P6773065560961212745.Spec := by
  intro n
  simp only [A376590, Nat.add_sub_cancel, A376590.P6773065560961212745.f2, A376590.P6773065560961212745.f1, A376590.P6773065560961212745.a, A376590.P15911683092171224194.f1, A376590.P15911683092171224194.a, A076259, A076259.P17974691457858298678.a, A243348, A243348.P5579662287376898014.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A376590

/-! ## A376590.P12415895540855923775

`A076259(n+2)-A076259(n+1)`
-/

namespace A376590.P12415895540855923775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (n + 2) - A076259 (n + 1)

end

end A376590.P12415895540855923775

namespace A376590

/-- `A076259(n+2)-A076259(n+1)` -/
def P12415895540855923775.Spec : Prop :=
  ∀ n, P12415895540855923775.a n = A376590 (n + 1)

theorem P12415895540855923775.correct : P12415895540855923775.Spec := by
  intro n
  simp only [A376590, Nat.add_sub_cancel, A376590.P12415895540855923775.a, A376590.P15911683092171224194.f1, A376590.P15911683092171224194.a, SequenceMachineLib.memo_apply]

end A376590

/-! ## A376590.P794285921405860424

`Δ[Δ[record[∏{p}[n, #]]]]`
-/

namespace A376590.P794285921405860424
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376590.P794285921405860424

namespace A376590

/-- `Δ[Δ[record[∏{p}[n, #]]]]` -/
def P794285921405860424.Spec : Prop :=
  ∀ n, P794285921405860424.a n = A376590 (n + 1)

end A376590

/-! ## A376590.P438656807746223609

`Δ[runs[A002321(n+1)]]`
-/

namespace A376590.P438656807746223609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376590.P438656807746223609

namespace A376590

/-- `Δ[runs[A002321(n+1)]]` -/
def P438656807746223609.Spec : Prop :=
  ∀ n, P438656807746223609.a n = A376590 (n + 1)

end A376590

/-! ## A376590.P15733663498466226691

`Δ[runs[A054585(n+1)]]`
-/

namespace A376590.P15733663498466226691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054585 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376590.P15733663498466226691

namespace A376590

/-- `Δ[runs[A054585(n+1)]]` -/
def P15733663498466226691.Spec : Prop :=
  ∀ n, P15733663498466226691.a n = A376590 (n + 1)

end A376590

/-! ## A376590.P11352825192132598456

`Δ[runs[A062562(n+1)]]`
-/

namespace A376590.P11352825192132598456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062562 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376590.P11352825192132598456

namespace A376590

/-- `Δ[runs[A062562(n+1)]]` -/
def P11352825192132598456.Spec : Prop :=
  ∀ n, P11352825192132598456.a n = A376590 (n + 1)

end A376590

/-! ## A376590.P10311373068180352827

`Δ[runs[A062563(n+1)]]`
-/

namespace A376590.P10311373068180352827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062563 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376590.P10311373068180352827

namespace A376590

/-- `Δ[runs[A062563(n+1)]]` -/
def P10311373068180352827.Spec : Prop :=
  ∀ n, P10311373068180352827.a n = A376590 (n + 1)

end A376590

/-! ## A376590.P7274873450828229280

`Δ[runs[A062820(n+1)]]`
-/

namespace A376590.P7274873450828229280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062820 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376590.P7274873450828229280

namespace A376590

/-- `Δ[runs[A062820(n+1)]]` -/
def P7274873450828229280.Spec : Prop :=
  ∀ n, P7274873450828229280.a n = A376590 (n + 1)

end A376590

/-! ## A376590.P18117073346143945770

`Δ[runs[A066779(n+1)]]`
-/

namespace A376590.P18117073346143945770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066779 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376590.P18117073346143945770

namespace A376590

/-- `Δ[runs[A066779(n+1)]]` -/
def P18117073346143945770.Spec : Prop :=
  ∀ n, P18117073346143945770.a n = A376590 (n + 1)

end A376590

/-! ## A376590.P13297622772081279471

`Δ[runs[A068340(n+1)]]`
-/

namespace A376590.P13297622772081279471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068340 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376590.P13297622772081279471

namespace A376590

/-- `Δ[runs[A068340(n+1)]]` -/
def P13297622772081279471.Spec : Prop :=
  ∀ n, P13297622772081279471.a n = A376590 (n + 1)

end A376590

/-! ## A376590.P10089626623784138883

`Δ[runs[A069201(n+1)]]`
-/

namespace A376590.P10089626623784138883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069201 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376590.P10089626623784138883

namespace A376590

/-- `Δ[runs[A069201(n+1)]]` -/
def P10089626623784138883.Spec : Prop :=
  ∀ n, P10089626623784138883.a n = A376590 (n + 1)

end A376590

/-! ## A376590.P3252613011924461391

`Δ[runs[A070321(n+1)]]`
-/

namespace A376590.P3252613011924461391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376590.P3252613011924461391

namespace A376590

/-- `Δ[runs[A070321(n+1)]]` -/
def P3252613011924461391.Spec : Prop :=
  ∀ n, P3252613011924461391.a n = A376590 (n + 1)

end A376590

/-! ## A376590.P11455549187563149140

`Δ[runs[A081238(n+1)]]`
-/

namespace A376590.P11455549187563149140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081238 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376590.P11455549187563149140

namespace A376590

/-- `Δ[runs[A081238(n+1)]]` -/
def P11455549187563149140.Spec : Prop :=
  ∀ n, P11455549187563149140.a n = A376590 (n + 1)

end A376590

/-! ## A376590.P3832134549709529163

`Δ[runs[A081240(n+1)]]`
-/

namespace A376590.P3832134549709529163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081240 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376590.P3832134549709529163

namespace A376590

/-- `Δ[runs[A081240(n+1)]]` -/
def P3832134549709529163.Spec : Prop :=
  ∀ n, P3832134549709529163.a n = A376590 (n + 1)

end A376590

/-! ## A376590.P14633643568749925397

`Δ[runs[A174943(n+1)]]`
-/

namespace A376590.P14633643568749925397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174943 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376590.P14633643568749925397

namespace A376590

/-- `Δ[runs[A174943(n+1)]]` -/
def P14633643568749925397.Spec : Prop :=
  ∀ n, P14633643568749925397.a n = A376590 (n + 1)

end A376590

/-! ## A376590.P11683736872192124696

`Δ[runs[A247418(n+1)]]`
-/

namespace A376590.P11683736872192124696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247418 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376590.P11683736872192124696

namespace A376590

/-- `Δ[runs[A247418(n+1)]]` -/
def P11683736872192124696.Spec : Prop :=
  ∀ n, P11683736872192124696.a n = A376590 (n + 1)

end A376590

/-! ## A376590.P14076597288425388854

`Δ[Δ[A088610(2*n+1)]]`
-/

namespace A376590.P14076597288425388854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376590.P14076597288425388854

namespace A376590

/-- `Δ[Δ[A088610(2*n+1)]]` -/
def P14076597288425388854.Spec : Prop :=
  ∀ n, P14076597288425388854.a n = A376590 (n + 1)

end A376590

/-! ## A376590.P13575189519136095495

`Δ[runs[A070072(n+1)]]`
-/

namespace A376590.P13575189519136095495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070072 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376590.P13575189519136095495

namespace A376590

/-- `Δ[runs[A070072(n+1)]]` -/
def P13575189519136095495.Spec : Prop :=
  ∀ n, P13575189519136095495.a n = A376590 (n + 1)

end A376590

/-!
# A376591: Inflection and undulation points in the sequence of squarefree numbers (A005117).

The programs for A376591, there is no canonical definition to state claims against.
-/

/-! ## A376591.P15154469949869494572

`eq[0, A376590(n+1)]+1`
-/

namespace A376591.P15154469949869494572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376591.P15154469949869494572

/-! ## A376591.P8765582475336142219

`record[gcd(n+2, A376590(n+2))]`
-/

namespace A376591.P8765582475336142219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A376590 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376591.P8765582475336142219

/-! ## A376591.P12335132144035913924

`lt[Δ[A076259(n+1)]², 1]+1`
-/

namespace A376591.P12335132144035913924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A376591.P12335132144035913924

/-! ## A376591.P18096300412696122719

`A013928(A245289(n+1))`
-/

namespace A376591.P18096300412696122719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A245289 (n + 1)).toNat

end

end A376591.P18096300412696122719

/-! ## A376591.P9835529529584778490

`eq[A076259(n+1), A076259(n+2)]+1`
-/

namespace A376591.P9835529529584778490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A376591.P9835529529584778490

/-!
# A376592: Points of nonzero curvature in the sequence of squarefree numbers (A005117).

The programs for A376592, there is no canonical definition to state claims against.
-/

/-! ## A376592.P11684058310195381025

`∑[A376306(1+n)]`
-/

namespace A376592.P11684058310195381025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376306 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376592.P11684058310195381025

/-! ## A376592.P12548814635466583060

`∑[runs[A076259(n+1)]]`
-/

namespace A376592.P12548814635466583060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376592.P12548814635466583060

/-! ## A376592.P6831156002704130108

`∑[runs[Δ[A005117(n+1)]]]`
-/

namespace A376592.P6831156002704130108
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376592.P6831156002704130108

/-! ## A376592.P13585527042163046731

`∑[runs[runs[A002321(n+1)]]]`
-/

namespace A376592.P13585527042163046731
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376592.P13585527042163046731

/-! ## A376592.P13550916277204632173

`∑[runs[runs[A054585(n+1)]]]`
-/

namespace A376592.P13550916277204632173
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054585 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376592.P13550916277204632173

/-! ## A376592.P10562906697435622633

`∑[runs[runs[A062563(n+1)]]]`
-/

namespace A376592.P10562906697435622633
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062563 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376592.P10562906697435622633

/-! ## A376592.P15460426891141994844

`∑[runs[runs[A070321(n+1)]]]`
-/

namespace A376592.P15460426891141994844
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376592.P15460426891141994844

/-! ## A376592.P10933243419209032709

`∑[runs[runs[A118259(n+1)]]]`
-/

namespace A376592.P10933243419209032709
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118259 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376592.P10933243419209032709

/-! ## A376592.P11281622025262807052

`comp[A376591(n+1)-1]+1`
-/

namespace A376592.P11281622025262807052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376591 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A376592.P11281622025262807052

/-!
# A376593: Second differences of consecutive nonsquarefree numbers (A013929). First differences of A078147.

The programs for A376593, the canonical program `A376593.P4080182718853017685` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376593 has offset 1).

The definition of A376593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376593.P4080182718853017685

`Δ[Δ[A013929(n+1)]]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A376593

/-- `Δ[Δ[A013929(n+1)]]` -/
def P4080182718853017685.Spec : Prop :=
  ∀ n, P4080182718853017685.a n = A376593 (n + 1)

theorem P4080182718853017685.correct : P4080182718853017685.Spec := by
  intro n
  simp only [A376593, Nat.add_sub_cancel]

end A376593

/-! ## A376593.P858056366291521256

`Δ[A078147(1+n)]`
-/

namespace A376593.P858056366291521256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376593.P858056366291521256

namespace A376593

/-- `Δ[A078147(1+n)]` -/
def P858056366291521256.Spec : Prop :=
  ∀ n, P858056366291521256.a n = A376593 (n + 1)

end A376593

/-! ## A376593.P18296905088638971571

`Δ[A375707(n+1)]`
-/

namespace A376593.P18296905088638971571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376593.P18296905088638971571

namespace A376593

/-- `Δ[A375707(n+1)]` -/
def P18296905088638971571.Spec : Prop :=
  ∀ n, P18296905088638971571.a n = A376593 (n + 1)

theorem P18296905088638971571.correct : P18296905088638971571.Spec := by
  intro n
  simp only [A376593, Nat.add_sub_cancel, A376593.P18296905088638971571.f1, A376593.P18296905088638971571.a, A376593.P4080182718853017685.f2, A376593.P4080182718853017685.f1, A376593.P4080182718853017685.a, A013929, A013929.P16481699796765016237.f1, A013929.P16481699796765016237.f2, A013929.P16481699796765016237.a, A375707, A375707.P16340562935949203801.a, A005361, A005361.P7238185687981551187.a, A078147, A078147.P6737435720449306481.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A376593

/-! ## A376593.P2391012780519224650

`A078147(n+2)-A078147(n+1)`
-/

namespace A376593.P2391012780519224650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (n + 2) - A078147 (n + 1)

end

end A376593.P2391012780519224650

namespace A376593

/-- `A078147(n+2)-A078147(n+1)` -/
def P2391012780519224650.Spec : Prop :=
  ∀ n, P2391012780519224650.a n = A376593 (n + 1)

theorem P2391012780519224650.correct : P2391012780519224650.Spec := by
  intro n
  simp only [A376593, Nat.add_sub_cancel, A376593.P2391012780519224650.a, A376593.P4080182718853017685.f2, A376593.P4080182718853017685.f1, A376593.P4080182718853017685.a, A013929, A013929.P16481699796765016237.f1, A013929.P16481699796765016237.f2, A013929.P16481699796765016237.a, A078147, A078147.P6737435720449306481.a, A005361, A005361.P7238185687981551187.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A376593

/-! ## A376593.P10357289135467494442

`A375707(n+2)-A375707(n+1)`
-/

namespace A376593.P10357289135467494442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375707 (n + 2) - A375707 (n + 1)

end

end A376593.P10357289135467494442

namespace A376593

/-- `A375707(n+2)-A375707(n+1)` -/
def P10357289135467494442.Spec : Prop :=
  ∀ n, P10357289135467494442.a n = A376593 (n + 1)

theorem P10357289135467494442.correct : P10357289135467494442.Spec := by
  intro n
  simp only [A376593, Nat.add_sub_cancel, A376593.P10357289135467494442.a, A376593.P4080182718853017685.f2, A376593.P4080182718853017685.f1, A376593.P4080182718853017685.a, A013929, A013929.P16481699796765016237.f1, A013929.P16481699796765016237.f2, A013929.P16481699796765016237.a, A375707, A375707.P16340562935949203801.a, A005361, A005361.P7238185687981551187.a, A078147, A078147.P6737435720449306481.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A376593

/-! ## A376593.P3887815107463158890

`Δ[Δ[sqrt(A062320(n+1))]]`
-/

namespace A376593.P3887815107463158890
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062320 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376593.P3887815107463158890

namespace A376593

/-- `Δ[Δ[sqrt(A062320(n+1))]]` -/
def P3887815107463158890.Spec : Prop :=
  ∀ n, P3887815107463158890.a n = (A376593 (n + 1) : ℝ)

end A376593

/-! ## A376593.P17727193947579761244

`Δ[Δ[A162966(n+2)]]`
-/

namespace A376593.P17727193947579761244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376593.P17727193947579761244

namespace A376593

/-- `Δ[Δ[A162966(n+2)]]` -/
def P17727193947579761244.Spec : Prop :=
  ∀ n, P17727193947579761244.a n = A376593 (n + 1)

end A376593

/-! ## A376593.P17733447847486001855

`Δ[Δ[A088610(2*(n+1))]]`
-/

namespace A376593.P17733447847486001855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376593.P17733447847486001855

namespace A376593

/-- `Δ[Δ[A088610(2*(n+1))]]` -/
def P17733447847486001855.Spec : Prop :=
  ∀ n, P17733447847486001855.a n = A376593 (n + 1)

end A376593

/-! ## A376593.P15682428058186297981

`Δ[runs[A120327(n+5)]]`
-/

namespace A376593.P15682428058186297981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376593.P15682428058186297981

namespace A376593

/-- `Δ[runs[A120327(n+5)]]` -/
def P15682428058186297981.Spec : Prop :=
  ∀ n, P15682428058186297981.a n = A376593 (n + 1)

end A376593

/-!
# A376594: Inflection and undulation points in the sequence of nonsquarefree numbers (A013929).

The programs for A376594, there is no canonical definition to state claims against.
-/

/-! ## A376594.P17902910898710154610

`eq[0, A376593(n+1)]+1`
-/

namespace A376594.P17902910898710154610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376593 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376594.P17902910898710154610

/-! ## A376594.P17116101637969591977

`eq[0, Δ[A078147(n+1)]]+1`
-/

namespace A376594.P17116101637969591977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376594.P17116101637969591977

/-! ## A376594.P617450978718020001

`eq[0, A376593(A028310(n))]`
-/

namespace A376594.P617450978718020001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376593 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376594.P617450978718020001

/-! ## A376594.P4484071342697128247

`eq[0, A376593(A233583(n+1))]`
-/

namespace A376594.P4484071342697128247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376593 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376594.P4484071342697128247

/-! ## A376594.P2070757031723020639

`eq[A078147(n+1), A078147(n+2)]+1`
-/

namespace A376594.P2070757031723020639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A376594.P2070757031723020639

/-!
# A376595: Points of nonzero curvature in the sequence of nonsquarefree numbers (A013929).

The programs for A376595, there is no canonical definition to state claims against.
-/

/-! ## A376595.P9642460786807492922

`∑[A376267(n+1)]`
-/

namespace A376595.P9642460786807492922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376595.P9642460786807492922

/-! ## A376595.P1499537227867033108

`∑[runs[A078147(n+1)]]`
-/

namespace A376595.P1499537227867033108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376595.P1499537227867033108

/-! ## A376595.P11378241215418558364

`∑[runs[A375707(n+1)]]`
-/

namespace A376595.P11378241215418558364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375707 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376595.P11378241215418558364

/-! ## A376595.P7987467000178003812

`∑[runs[Δ[A013929(n+1)]]]`
-/

namespace A376595.P7987467000178003812
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376595.P7987467000178003812

/-! ## A376595.P7133182461288746072

`∑[runs[runs[A120327(n+5)]]]`
-/

namespace A376595.P7133182461288746072
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376595.P7133182461288746072

/-! ## A376595.P1847178890935483230

`comp[A376594(n+1)-1]+1`
-/

namespace A376595.P1847178890935483230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376594 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A376595.P1847178890935483230

/-!
# A376596: Second differences of consecutive prime-powers inclusive (A000961). First differences of A057820.

The programs for A376596, the canonical program `A376596.P9391843395844042781` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376596 has offset 1).

The definition of A376596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9699 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376596.P15152153043448802752

`Δ[A057820(1+n)]`
-/

namespace A376596.P15152153043448802752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376596.P15152153043448802752

namespace A376596

/-- `Δ[A057820(1+n)]` -/
def P15152153043448802752.Spec : Prop :=
  ∀ n, P15152153043448802752.a n = A376596 (n + 1)

end A376596

/-! ## A376596.P14500070427019124400

`A057820(n+2)-A057820(n+1)`
-/

namespace A376596.P14500070427019124400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 2) - A057820 (n + 1)

end

end A376596.P14500070427019124400

namespace A376596

/-- `A057820(n+2)-A057820(n+1)` -/
def P14500070427019124400.Spec : Prop :=
  ∀ n, P14500070427019124400.a n = A376596 (n + 1)

end A376596

/-! ## A376596.P6859489874636808063

`Δ[Δ[A000961(n+1)]]`
-/

namespace A376596.P6859489874636808063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376596.P6859489874636808063

namespace A376596

/-- `Δ[Δ[A000961(n+1)]]` -/
def P6859489874636808063.Spec : Prop :=
  ∀ n, P6859489874636808063.a n = A376596 (n + 1)

end A376596

/-! ## A376596.P14930762583259981590

`Δ[Δ[A181062(n+1)]]`
-/

namespace A376596.P14930762583259981590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376596.P14930762583259981590

namespace A376596

/-- `Δ[Δ[A181062(n+1)]]` -/
def P14930762583259981590.Spec : Prop :=
  ∀ n, P14930762583259981590.a n = A376596 (n + 1)

end A376596

/-! ## A376596.P9391843395844042781

`Δ[runs[A025528(n+1)]]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A376596

/-- `Δ[runs[A025528(n+1)]]` -/
def P9391843395844042781.Spec : Prop :=
  ∀ n, P9391843395844042781.a n = A376596 (n + 1)

theorem P9391843395844042781.correct : P9391843395844042781.Spec := by
  intro n
  simp only [A376596, Nat.add_sub_cancel]

end A376596

/-! ## A376596.P5876233611984461551

`Δ[runs[A380117(n+1)]]`
-/

namespace A376596.P5876233611984461551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380117 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376596.P5876233611984461551

namespace A376596

/-- `Δ[runs[A380117(n+1)]]` -/
def P5876233611984461551.Spec : Prop :=
  ∀ n, P5876233611984461551.a n = A376596 (n + 1)

end A376596

/-! ## A376596.P15335575892739693077

`Δ[runs[A031218(n+1)]]`
-/

namespace A376596.P15335575892739693077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376596.P15335575892739693077

namespace A376596

/-- `Δ[runs[A031218(n+1)]]` -/
def P15335575892739693077.Spec : Prop :=
  ∀ n, P15335575892739693077.a n = A376596 (n + 1)

end A376596

/-! ## A376596.P18279685252131112949

`Δ[runs[A065515(n+1)]]`
-/

namespace A376596.P18279685252131112949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376596.P18279685252131112949

namespace A376596

/-- `Δ[runs[A065515(n+1)]]` -/
def P18279685252131112949.Spec : Prop :=
  ∀ n, P18279685252131112949.a n = A376596 (n + 1)

end A376596

/-! ## A376596.P17607699602006628887

`Δ[runs[A074793(n+1)]]`
-/

namespace A376596.P17607699602006628887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074793 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376596.P17607699602006628887

namespace A376596

/-- `Δ[runs[A074793(n+1)]]` -/
def P17607699602006628887.Spec : Prop :=
  ∀ n, P17607699602006628887.a n = A376596 (n + 1)

end A376596

/-! ## A376596.P15618237585432462892

`Δ[runs[A307743(n+1)]]`
-/

namespace A376596.P15618237585432462892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307743 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376596.P15618237585432462892

namespace A376596

/-- `Δ[runs[A307743(n+1)]]` -/
def P15618237585432462892.Spec : Prop :=
  ∀ n, P15618237585432462892.a n = A376596 (n + 1)

end A376596

/-! ## A376596.P476390426116564897

`Δ[runs[A342766(n+1)]]`
-/

namespace A376596.P476390426116564897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342766 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376596.P476390426116564897

namespace A376596

/-- `Δ[runs[A342766(n+1)]]` -/
def P476390426116564897.Spec : Prop :=
  ∀ n, P476390426116564897.a n = A376596 (n + 1)

end A376596

/-! ## A376596.P8389639042771477666

`Δ[runs[A000015(n+2)]]`
-/

namespace A376596.P8389639042771477666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376596.P8389639042771477666

namespace A376596

/-- `Δ[runs[A000015(n+2)]]` -/
def P8389639042771477666.Spec : Prop :=
  ∀ n, P8389639042771477666.a n = A376596 (n + 1)

end A376596

/-! ## A376596.P13774008683197439410

`Δ[runs[A238898(n+2)]]`
-/

namespace A376596.P13774008683197439410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238898 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376596.P13774008683197439410

namespace A376596

/-- `Δ[runs[A238898(n+2)]]` -/
def P13774008683197439410.Spec : Prop :=
  ∀ n, P13774008683197439410.a n = A376596 (n + 1)

end A376596

/-! ## A376596.P6089463271924077887

`Δ[runs[A056793(n+1)]]`
-/

namespace A376596.P6089463271924077887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056793 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376596.P6089463271924077887

namespace A376596

/-- `Δ[runs[A056793(n+1)]]` -/
def P6089463271924077887.Spec : Prop :=
  ∀ n, P6089463271924077887.a n = A376596 (n + 1)

end A376596

/-! ## A376596.P691378079579331028

`Δ[runs[lcm(n+1, a(n-1))]]` with `a(0)=1`
-/

namespace A376596.P691378079579331028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.lcm (n + 1) (f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376596.P691378079579331028

namespace A376596

/-- `Δ[runs[lcm(n+1, a(n-1))]]` -/
def P691378079579331028.Spec : Prop :=
  ∀ n, P691378079579331028.a n = A376596 (n + 1)

end A376596

/-!
# A376597: Inflection and undulation points in the sequence of prime-powers inclusive (A000961).

The programs for A376597, there is no canonical definition to state claims against.
-/

/-! ## A376597.P15241735360927121892

`eq[0, A376596(n+1)]+1`
-/

namespace A376597.P15241735360927121892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376596 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376597.P15241735360927121892

/-! ## A376597.P9255751922184727447

`eq[A237709(n+1), A237709(n+2)]`
-/

namespace A376597.P9255751922184727447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237709 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376597.P9255751922184727447

/-! ## A376597.P4080181897689012102

`record[gcd(A000027(n+1), A376596(n+1))]`
-/

namespace A376597.P4080181897689012102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A376596 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376597.P4080181897689012102

/-! ## A376597.P18138284910175707020

`eq[A057820(n+1), A057820(n+2)]+1`
-/

namespace A376597.P18138284910175707020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A376597.P18138284910175707020

/-! ## A376597.P16949791067994247085

`A065515(A250267(n+1))`
-/

namespace A376597.P16949791067994247085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (A250267 (n + 1)).toNat

end

end A376597.P16949791067994247085

/-!
# A376598: Points of nonzero curvature in the sequence of prime-powers inclusive (A000961).

The programs for A376598, there is no canonical definition to state claims against.
-/

/-! ## A376598.P5202134495358458008

`∑[runs[A057820(n+1)]]`
-/

namespace A376598.P5202134495358458008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376598.P5202134495358458008

/-! ## A376598.P10360289242137829716

`∑[runs[A093555(n+1)]]`
-/

namespace A376598.P10360289242137829716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093555 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376598.P10360289242137829716

/-! ## A376598.P8454367835010391173

`∑[runs[A237709(n+2)]]`
-/

namespace A376598.P8454367835010391173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237709 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376598.P8454367835010391173

/-! ## A376598.P16410598645997563444

`∑[A376309(1+n)]+1`
-/

namespace A376598.P16410598645997563444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376309 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A376598.P16410598645997563444

/-! ## A376598.P6467041517020188900

`∑[runs[runs[A025528(n+1)]]]`
-/

namespace A376598.P6467041517020188900
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376598.P6467041517020188900

/-! ## A376598.P5734620841628598318

`∑[runs[runs[A031218(n+1)]]]`
-/

namespace A376598.P5734620841628598318
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376598.P5734620841628598318

/-! ## A376598.P10619489644253878971

`comp[A376597(n+1)-1]+1`
-/

namespace A376598.P10619489644253878971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376597 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A376598.P10619489644253878971

/-! ## A376598.P6821654755706594840

`∑[runs[A275120(C(2, n+2)+n+1)]]`
-/

namespace A376598.P6821654755706594840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (Nat.choose 2 (n + 2) + n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376598.P6821654755706594840

/-!
# A376599: Second differences of consecutive non-prime-powers inclusive (A024619). First differences of A375735.

The programs for A376599, the canonical program `A376599.P86518609693394274` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376599 has offset 1).

The definition of A376599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376599.P86518609693394274

`Δ[A375735(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A376599

/-- `Δ[A375735(n+1)]` -/
def P86518609693394274.Spec : Prop :=
  ∀ n, P86518609693394274.a n = A376599 (n + 1)

theorem P86518609693394274.correct : P86518609693394274.Spec := by
  intro n
  simp only [A376599, Nat.add_sub_cancel]

end A376599

/-! ## A376599.P5733180213523495863

`A375735(n+2)-A375735(n+1)`
-/

namespace A376599.P5733180213523495863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375735 (n + 2) - A375735 (n + 1)

end

end A376599.P5733180213523495863

namespace A376599

/-- `A375735(n+2)-A375735(n+1)` -/
def P5733180213523495863.Spec : Prop :=
  ∀ n, P5733180213523495863.a n = A376599 (n + 1)

theorem P5733180213523495863.correct : P5733180213523495863.Spec := by
  intro n
  simp only [A376599, Nat.add_sub_cancel, A376599.P5733180213523495863.a, A376599.P86518609693394274.f1, A376599.P86518609693394274.a, SequenceMachineLib.memo_apply]

end A376599

/-! ## A376599.P17158398255801032217

`Δ[A375708(2+n)]`
-/

namespace A376599.P17158398255801032217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375708 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376599.P17158398255801032217

namespace A376599

/-- `Δ[A375708(2+n)]` -/
def P17158398255801032217.Spec : Prop :=
  ∀ n, P17158398255801032217.a n = A376599 (n + 1)

end A376599

/-! ## A376599.P13403847091139376827

`Δ[Δ[A024619(n+1)]]`
-/

namespace A376599.P13403847091139376827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376599.P13403847091139376827

namespace A376599

/-- `Δ[Δ[A024619(n+1)]]` -/
def P13403847091139376827.Spec : Prop :=
  ∀ n, P13403847091139376827.a n = A376599 (n + 1)

theorem P13403847091139376827.correct : P13403847091139376827.Spec := by
  intro n
  simp only [A376599, Nat.add_sub_cancel, A376599.P13403847091139376827.f2, A376599.P13403847091139376827.f1, A376599.P13403847091139376827.a, A376599.P86518609693394274.f1, A376599.P86518609693394274.a, A024619, A024619.P9899417178094494776.f1, A024619.P9899417178094494776.f2, A024619.P9899417178094494776.a, A375735, A375735.P10748845840763269792.f2, A375735.P10748845840763269792.f3, A375735.P10748845840763269792.f1, A375735.P10748845840763269792.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A376599

/-! ## A376599.P15499092169817783437

`Δ[Δ[A080765(n+1)]]`
-/

namespace A376599.P15499092169817783437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376599.P15499092169817783437

namespace A376599

/-- `Δ[Δ[A080765(n+1)]]` -/
def P15499092169817783437.Spec : Prop :=
  ∀ n, P15499092169817783437.a n = A376599 (n + 1)

end A376599

/-! ## A376599.P6044006173275528306

`A375708(n+3)-A375708(n+2)`
-/

namespace A376599.P6044006173275528306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375708 (n + 3) - A375708 (n + 2)

end

end A376599.P6044006173275528306

namespace A376599

/-- `A375708(n+3)-A375708(n+2)` -/
def P6044006173275528306.Spec : Prop :=
  ∀ n, P6044006173275528306.a n = A376599 (n + 1)

end A376599

/-! ## A376599.P11732795586804838980

`Δ[Δ[A361102(n+2)]]`
-/

namespace A376599.P11732795586804838980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376599.P11732795586804838980

namespace A376599

/-- `Δ[Δ[A361102(n+2)]]` -/
def P11732795586804838980.Spec : Prop :=
  ∀ n, P11732795586804838980.a n = A376599 (n + 1)

end A376599

