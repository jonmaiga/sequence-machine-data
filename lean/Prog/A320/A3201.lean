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
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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
# A320100: Automata sum similar to A102376 but using mod 5.

The programs for A320100, there is no canonical definition to state claims against.
-/

/-! ## A320100.P9584836839719436387

`A385825(A020333(n+1))`
-/

namespace A320100.P9584836839719436387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385825 (A020333 (n + 1)).toNat

end

end A320100.P9584836839719436387

/-!
# A320102: Primes where changing any single bit in the binary representation never results in a smaller prime.

The programs for A320102, there is no canonical definition to state claims against.
-/

/-! ## A320102.P9074384671424760170

`∩[A032605(n+1), A356713(n+1)]`
-/

namespace A320102.P9074384671424760170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A320102.P9074384671424760170

/-! ## A320102.P14770643572982646292

`p?[∪[A351062(3*n+2), A351016(n)]]`
-/

namespace A320102.P14770643572982646292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351062 (3 * n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351016 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A320102.P14770643572982646292

/-! ## A320102.P12586808432067846642

`p?[∪[A351018(2*n), A351062(3*n+2)]]`
-/

namespace A320102.P12586808432067846642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351018 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351062 (3 * n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A320102.P12586808432067846642

/-!
# A320103: Let f(1) = 1 + i (where i denotes the imaginary unit) and for n > 0, f(n+1) is the Gaussian prime in the first quadrant (with positive real part and nonnegative imaginary part) with least modulus that divides 1 + Product_{k=1..n} f(k) (in case of a tie minimize the imaginary part); a(n) is the real part of f(n).

The programs for A320103, there is no canonical definition to state claims against.
-/

/-! ## A320103.P5094932434504398325

`sqrt(A319920(n+1)-A320104(n+1)²)`
-/

namespace A320103.P5094932434504398325
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A319920 (n + 1) - A320104 (n + 1) ^ 2 : ℝ)

end

end A320103.P5094932434504398325

/-!
# A320104: Let f(1) = 1 + i (where i denotes the imaginary unit) and for n > 0, f(n+1) is the Gaussian prime in the first quadrant (with positive real part and nonnegative imaginary part) with least modulus that divides 1 + Product_{k=1..n} f(k) (in case of a tie minimize the imaginary part); a(n) is the imaginary part of f(n).

The programs for A320104, there is no canonical definition to state claims against.
-/

/-! ## A320104.P3948150260897624293

`sqrt(A319920(n+1)-A320103(n+1)²)`
-/

namespace A320104.P3948150260897624293
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A319920 (n + 1) - A320103 (n + 1) ^ 2 : ℝ)

end

end A320104.P3948150260897624293

/-!
# A320105: If A001222(n) <= 2, a(n) = 1, otherwise, a(n) = Sum_{p|n} Sum_{q|n, q>=(p+[p^2 does not divide n])} a(prime(primepi(p)*primepi(q)) * (n/(p*q))), where p and q range over distinct primes dividing n. (See formula section for exact details.)

The programs for A320105, there is no canonical definition to state claims against.
-/

/-! ## A320105.P8214317025723245077

`A335750(A285572(n+1))%13`
-/

namespace A320105.P8214317025723245077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335750 (A285572 (n + 1)).toNat) 13

end

end A320105.P8214317025723245077

/-! ## A320105.P6729905060832030572

`A262813(A033273(n+1)^(∏{e}[n+1, #+1]-∑{e}[n+1, #+1]))`
-/

namespace A320105.P6729905060832030572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262813 (SequenceMachineLib.roundAway ((A033273 (n + 1) : ℚ) ^ (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) : ℤ))).toNat

end

end A320105.P6729905060832030572

/-! ## A320105.P4486189550148744517

`A045778(A076820(n+1)^A034836(n+1))`
-/

namespace A320105.P4486189550148744517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (SequenceMachineLib.roundAway ((A076820 (n + 1) : ℚ) ^ (A034836 (n + 1) : ℤ))).toNat

end

end A320105.P4486189550148744517

/-! ## A320105.P10805888845668069558

`A262611(A111588(n+1))`
-/

namespace A320105.P10805888845668069558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262611 (A111588 (n + 1)).toNat

end

end A320105.P10805888845668069558

/-! ## A320105.P18234842846718463408

`A002260(A114717(n+1)%A127818(n+1))`
-/

namespace A320105.P18234842846718463408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Int.tmod (A114717 (n + 1)) (A127818 (n + 1))).toNat

end

end A320105.P18234842846718463408

/-!
# A320106: Möbius transform of A320107.

The programs for A320106, the canonical program `A320106.P11161419718811023889` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320106 has offset 1).

The definition of A320106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320106.P11161419718811023889

`ceil(cos(gcd(12, n+1)%9))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A320106

/-- `ceil(cos(gcd(12, n+1)%9))` -/
def P11161419718811023889.Spec : Prop :=
  ∀ n, P11161419718811023889.a n = A320106 (n + 1)

theorem P11161419718811023889.correct : P11161419718811023889.Spec := by
  intro n
  simp only [A320106, Nat.add_sub_cancel]

end A320106

/-!
# A320107: a(n) = A001227(A252463(n)).

The programs for A320107, the canonical program `A320107.P11684398178645461094` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320107 has offset 1).

The definition of A320107 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252463, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A320107.P11684398178645461094

`A001227(A252463(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A320107

/-- `A001227(A252463(n+1))` -/
def P11684398178645461094.Spec : Prop :=
  ∀ n, P11684398178645461094.a n = A320107 (n + 1)

theorem P11684398178645461094.correct : P11684398178645461094.Spec := by
  intro n
  simp only [A320107, Nat.add_sub_cancel]

end A320107

/-! ## A320107.P14431239194402996355

`∑{d}[n+1, A320106(#)]`
-/

namespace A320107.P14431239194402996355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A320106 d

end

end A320107.P14431239194402996355

namespace A320107

/-- `∑{d}[n+1, A320106(#)]` -/
def P14431239194402996355.Spec : Prop :=
  ∀ n, P14431239194402996355.a n = A320107 (n + 1)

end A320107

/-! ## A320107.P9383101083659562767

`A000005(A353412(n+1))`
-/

namespace A320107.P9383101083659562767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A353412 (n + 1)).toNat

end

end A320107.P9383101083659562767

namespace A320107

/-- `A000005(A353412(n+1))` -/
def P9383101083659562767.Spec : Prop :=
  ∀ n, P9383101083659562767.a n = A320107 (n + 1)

end A320107

/-! ## A320107.P13693200927589370080

`∑{d}[A353412(n+1), A006519(#)]`
-/

namespace A320107.P13693200927589370080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006519 d

end

end A320107.P13693200927589370080

namespace A320107

/-- `∑{d}[A353412(n+1), A006519(#)]` -/
def P13693200927589370080.Spec : Prop :=
  ∀ n, P13693200927589370080.a n = A320107 (n + 1)

end A320107

/-! ## A320107.P2739489258455836311

`lcm(A035218(n+1), A333145(n+1))`
-/

namespace A320107.P2739489258455836311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035218 (n + 1)) (A333145 (n + 1))

end

end A320107.P2739489258455836311

namespace A320107

/-- `lcm(A035218(n+1), A333145(n+1))` -/
def P2739489258455836311.Spec : Prop :=
  ∀ n, (P2739489258455836311.a n : ℤ) = A320107 (n + 1)

end A320107

/-! ## A320107.P15221736542288213354

`∑{d}[A353412(n+1), A093178(#+1)]`
-/

namespace A320107.P15221736542288213354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A093178 (d + 1)

end

end A320107.P15221736542288213354

namespace A320107

/-- `∑{d}[A353412(n+1), A093178(#+1)]` -/
def P15221736542288213354.Spec : Prop :=
  ∀ n, P15221736542288213354.a n = A320107 (n + 1)

end A320107

/-! ## A320107.P6096468749113680853

`∑{d}[A353412(n+1), A152271(#+1)]`
-/

namespace A320107.P6096468749113680853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A152271 (d + 1)

end

end A320107.P6096468749113680853

namespace A320107

/-- `∑{d}[A353412(n+1), A152271(#+1)]` -/
def P6096468749113680853.Spec : Prop :=
  ∀ n, P6096468749113680853.a n = A320107 (n + 1)

end A320107

/-! ## A320107.P1704738660907125362

`∑{d}[A353412(n+1), #/A028310(#)]`
-/

namespace A320107.P1704738660907125362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353412 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A028310 d : ℚ)

end

end A320107.P1704738660907125362

namespace A320107

/-- `∑{d}[A353412(n+1), #/A028310(#)]` -/
def P1704738660907125362.Spec : Prop :=
  ∀ n, P1704738660907125362.a n = (A320107 (n + 1) : ℚ)

end A320107

/-! ## A320107.P14773838743836232878

`∑{d}[A252463(n+1), A193356(#)/#]`
-/

namespace A320107.P14773838743836232878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A193356 d : ℚ) / (d : ℚ)

end

end A320107.P14773838743836232878

namespace A320107

/-- `∑{d}[A252463(n+1), A193356(#)/#]` -/
def P14773838743836232878.Spec : Prop :=
  ∀ n, P14773838743836232878.a n = (A320107 (n + 1) : ℚ)

end A320107

/-! ## A320107.P4142883537215558017

`2*A353417(n+1)-A353416(n+1)`
-/

namespace A320107.P4142883537215558017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A353417 (n + 1) - A353416 (n + 1)

end

end A320107.P4142883537215558017

namespace A320107

/-- `2*A353417(n+1)-A353416(n+1)` -/
def P4142883537215558017.Spec : Prop :=
  ∀ n, P4142883537215558017.a n = A320107 (n + 1)

end A320107

/-! ## A320107.P7973420101709165294

`A000005(lcm(2, n+1)+n+1)-A000005(n+1)`
-/

namespace A320107.P7973420101709165294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lcm 2 (n + 1) + (n + 1)) - A000005 (n + 1)

end

end A320107.P7973420101709165294

namespace A320107

/-- `A000005(lcm(2, n+1)+n+1)-A000005(n+1)` -/
def P7973420101709165294.Spec : Prop :=
  ∀ n, P7973420101709165294.a n = A320107 (n + 1)

end A320107

/-! ## A320107.P15176900399368854289

`A000005(A000265(A332893(n+1)))`
-/

namespace A320107.P15176900399368854289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (A332893 (n + 1)).toNat).toNat

end

end A320107.P15176900399368854289

namespace A320107

/-- `A000005(A000265(A332893(n+1)))` -/
def P15176900399368854289.Spec : Prop :=
  ∀ n, P15176900399368854289.a n = A320107 (n + 1)

end A320107

/-! ## A320107.P5951051958146559778

`A320111(n+1)/A001511(A252463(n+1))`
-/

namespace A320107.P5951051958146559778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320111 (n + 1) : ℚ) / (A001511 (A252463 (n + 1)).toNat : ℚ)

end

end A320107.P5951051958146559778

namespace A320107

/-- `A320111(n+1)/A001511(A252463(n+1))` -/
def P5951051958146559778.Spec : Prop :=
  ∀ n, P5951051958146559778.a n = (A320107 (n + 1) : ℚ)

end A320107

/-! ## A320107.P15315175799832961938

`A000005(A109043(n+1)+n+1)-A000005(n+1)`
-/

namespace A320107.P15315175799832961938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A109043 (n + 1) + (n + 1 : ℤ)).toNat - A000005 (n + 1)

end

end A320107.P15315175799832961938

namespace A320107

/-- `A000005(A109043(n+1)+n+1)-A000005(n+1)` -/
def P15315175799832961938.Spec : Prop :=
  ∀ n, P15315175799832961938.a n = A320107 (n + 1)

end A320107

/-! ## A320107.P4345057301632200430

`A000005(Δ[A036666(n+1)])-A000005(n+1)`
-/

namespace A320107.P4345057301632200430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat - A000005 (n + 1)

end

end A320107.P4345057301632200430

namespace A320107

/-- `A000005(Δ[A036666(n+1)])-A000005(n+1)` -/
def P4345057301632200430.Spec : Prop :=
  ∀ n, P4345057301632200430.a n = A320107 (n + 1)

end A320107

/-! ## A320107.P4429016694137101191

`A001227(A332893(n+1))`
-/

namespace A320107.P4429016694137101191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A332893 (n + 1)).toNat

end

end A320107.P4429016694137101191

namespace A320107

/-- `A001227(A332893(n+1))` -/
def P4429016694137101191.Spec : Prop :=
  ∀ n, P4429016694137101191.a n = A320107 (n + 1)

end A320107

/-! ## A320107.P16879964093317712953

`A333145(A106833(n+1))`
-/

namespace A320107.P16879964093317712953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333145 (A106833 (n + 1)).toNat

end

end A320107.P16879964093317712953

namespace A320107

/-- `A333145(A106833(n+1))` -/
def P16879964093317712953.Spec : Prop :=
  ∀ n, P16879964093317712953.a n = A320107 (n + 1)

end A320107

/-! ## A320107.P2764901662435676738

`A333145(A347365(n+1))`
-/

namespace A320107.P2764901662435676738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333145 (A347365 (n + 1)).toNat

end

end A320107.P2764901662435676738

namespace A320107

/-- `A333145(A347365(n+1))` -/
def P2764901662435676738.Spec : Prop :=
  ∀ n, P2764901662435676738.a n = A320107 (n + 1)

end A320107

/-!
# A320108: a(n) = Product_{d|n, d>1} prime(1+(d mod 8)).

The programs for A320108, there is no canonical definition to state claims against.
-/

/-! ## A320108.P7885150196458028081

`A320112(A292125(n+1))`
-/

namespace A320108.P7885150196458028081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320112 (A292125 (n + 1)).toNat

end

end A320108.P7885150196458028081

/-! ## A320108.P2953688737887704176

`A328573(A062797(n)-1)`
-/

namespace A320108.P2953688737887704176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328573 (A062797 n - 1).toNat

end

end A320108.P2953688737887704176

/-!
# A320110: Restricted growth sequence transform of function f: f(1) = 0, f(n) = A046523(A252463(n)) for n > 1.

The programs for A320110, the canonical program `A320110.P16820175732711326683` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320110 has offset 1).

The definition of A320110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320110.P16820175732711326683

`A101296(A252463(n+1))+A057427(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A320110

/-- `A101296(A252463(n+1))+A057427(n)` -/
def P16820175732711326683.Spec : Prop :=
  ∀ n, P16820175732711326683.a n = A320110 (n + 1)

theorem P16820175732711326683.correct : P16820175732711326683.Spec := by
  intro n
  simp only [A320110, Nat.add_sub_cancel]

end A320110

/-! ## A320110.P16377215810817947644

`A101296(A332893(n+1))+A057427(n)`
-/

namespace A320110.P16377215810817947644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A332893 (n + 1)).toNat + A057427 n

end

end A320110.P16377215810817947644

namespace A320110

/-- `A101296(A332893(n+1))+A057427(n)` -/
def P16377215810817947644.Spec : Prop :=
  ∀ n, P16377215810817947644.a n = A320110 (n + 1)

end A320110

/-! ## A320110.P14156116712964487599

`A101296(A252463(n+1))-A057428(n)`
-/

namespace A320110.P14156116712964487599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A252463 (n + 1)).toNat - A057428 n

end

end A320110.P14156116712964487599

namespace A320110

/-- `A101296(A252463(n+1))-A057428(n)` -/
def P14156116712964487599.Spec : Prop :=
  ∀ n, P14156116712964487599.a n = A320110 (n + 1)

end A320110

/-! ## A320110.P10699130157915966751

`A101296(A252463(n+1))%A220084(n)+1`
-/

namespace A320110.P10699130157915966751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101296 (A252463 (n + 1)).toNat) (A220084 n) + 1

end

end A320110.P10699130157915966751

namespace A320110

/-- `A101296(A252463(n+1))%A220084(n)+1` -/
def P10699130157915966751.Spec : Prop :=
  ∀ n, P10699130157915966751.a n = A320110 (n + 1)

end A320110

/-! ## A320110.P856277502896711548

`A101296(A252463(n+1))+n/A028310(n)`
-/

namespace A320110.P856277502896711548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101296 (A252463 (n + 1)).toNat : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A320110.P856277502896711548

namespace A320110

/-- `A101296(A252463(n+1))+n/A028310(n)` -/
def P856277502896711548.Spec : Prop :=
  ∀ n, P856277502896711548.a n = (A320110 (n + 1) : ℚ)

end A320110

/-! ## A320110.P7234774674749346823

`A101296(A252463(n+1))+and(1, A000040(n+1))`
-/

namespace A320110.P7234774674749346823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A252463 (n + 1)).toNat + Int.land 1 (A000040 (n + 1))

end

end A320110.P7234774674749346823

namespace A320110

/-- `A101296(A252463(n+1))+and(1, A000040(n+1))` -/
def P7234774674749346823.Spec : Prop :=
  ∀ n, P7234774674749346823.a n = A320110 (n + 1)

end A320110

/-! ## A320110.P3829536851738937719

`A101296(A252463(n+1))+A037916(A027746(n+1))`
-/

namespace A320110.P3829536851738937719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A252463 (n + 1)).toNat + A037916 (A027746 (n + 1)).toNat

end

end A320110.P3829536851738937719

namespace A320110

/-- `A101296(A252463(n+1))+A037916(A027746(n+1))` -/
def P3829536851738937719.Spec : Prop :=
  ∀ n, P3829536851738937719.a n = A320110 (n + 1)

end A320110

/-! ## A320110.P8390557496869912892

`A101296(A332893(n+1))+A001221(A028233(n+1))`
-/

namespace A320110.P8390557496869912892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A332893 (n + 1)).toNat + A001221 (A028233 (n + 1)).toNat

end

end A320110.P8390557496869912892

namespace A320110

/-- `A101296(A332893(n+1))+A001221(A028233(n+1))` -/
def P8390557496869912892.Spec : Prop :=
  ∀ n, P8390557496869912892.a n = A320110 (n + 1)

end A320110

/-! ## A320110.P15821087565823727775

`A157928(n+1)+A101296(A252463(n+1))`
-/

namespace A320110.P15821087565823727775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (n + 1) + A101296 (A252463 (n + 1)).toNat

end

end A320110.P15821087565823727775

namespace A320110

/-- `A157928(n+1)+A101296(A252463(n+1))` -/
def P15821087565823727775.Spec : Prop :=
  ∀ n, P15821087565823727775.a n = A320110 (n + 1)

end A320110

/-! ## A320110.P1117331235881778249

`A101296(A252463(n+1))+A051903(A019565(n))`
-/

namespace A320110.P1117331235881778249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A252463 (n + 1)).toNat + A051903 (A019565 n).toNat

end

end A320110.P1117331235881778249

namespace A320110

/-- `A101296(A252463(n+1))+A051903(A019565(n))` -/
def P1117331235881778249.Spec : Prop :=
  ∀ n, P1117331235881778249.a n = A320110 (n + 1)

end A320110

/-!
# A320111: Number of divisors d of n that are not of the form 4k+2.

The programs for A320111, the canonical program `A320111.P9381397234523338092` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320111 has offset 1).

The definition of A320111 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A252463, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A320111.P9381397234523338092

`A000005(A252463(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A320111

/-- `A000005(A252463(n+1))` -/
def P9381397234523338092.Spec : Prop :=
  ∀ n, P9381397234523338092.a n = A320111 (n + 1)

theorem P9381397234523338092.correct : P9381397234523338092.Spec := by
  intro n
  simp only [A320111, Nat.add_sub_cancel]

end A320111

/-! ## A320111.P17053721480143871088

`∑{d}[n+1, (#+n)%2]`
-/

namespace A320111.P17053721480143871088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d + n) % 2

end

end A320111.P17053721480143871088

namespace A320111

/-- `∑{d}[n+1, (#+n)%2]` -/
def P17053721480143871088.Spec : Prop :=
  ∀ n, (P17053721480143871088.a n : ℤ) = A320111 (n + 1)

end A320111

/-! ## A320111.P10133503074981431464

`∑{d}[n+1, and(1, #+n)]`
-/

namespace A320111.P10133503074981431464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.land 1 (d + n)

end

end A320111.P10133503074981431464

namespace A320111

/-- `∑{d}[n+1, and(1, #+n)]` -/
def P10133503074981431464.Spec : Prop :=
  ∀ n, (P10133503074981431464.a n : ℤ) = A320111 (n + 1)

end A320111

/-! ## A320111.P7420383284771479237

`∏{e}[gcd(n+1, ∑[n]), #+1]`
-/

namespace A320111.P7420383284771479237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A320111.P7420383284771479237

namespace A320111

/-- `∏{e}[gcd(n+1, ∑[n]), #+1]` -/
def P7420383284771479237.Spec : Prop :=
  ∀ n, (P7420383284771479237.a n : ℤ) = A320111 (n + 1)

end A320111

/-! ## A320111.P5647618671492954205

`∏{e}[(∑[n]+n)%(n+1)+1, #+1]`
-/

namespace A320111.P5647618671492954205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + n) % (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A320111.P5647618671492954205

namespace A320111

/-- `∏{e}[(∑[n]+n)%(n+1)+1, #+1]` -/
def P5647618671492954205.Spec : Prop :=
  ∀ n, (P5647618671492954205.a n : ℤ) = A320111 (n + 1)

end A320111

/-! ## A320111.P15343075446880653161

`A338117(n+1)+1`
-/

namespace A320111.P15343075446880653161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (n + 1) + 1

end

end A320111.P15343075446880653161

namespace A320111

/-- `A338117(n+1)+1` -/
def P15343075446880653161.Spec : Prop :=
  ∀ n, P15343075446880653161.a n = A320111 (n + 1)

end A320111

/-! ## A320111.P17024885611805496644

`∑{d}[n+1, A152822(#)]`
-/

namespace A320111.P17024885611805496644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A152822 d

end

end A320111.P17024885611805496644

namespace A320111

/-- `∑{d}[n+1, A152822(#)]` -/
def P17024885611805496644.Spec : Prop :=
  ∀ n, P17024885611805496644.a n = A320111 (n + 1)

end A320111

/-! ## A320111.P14221585502780869058

`A000005(gcd(n+1, ∑[n]))`
-/

namespace A320111.P14221585502780869058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A320111.P14221585502780869058

namespace A320111

/-- `A000005(gcd(n+1, ∑[n]))` -/
def P14221585502780869058.Spec : Prop :=
  ∀ n, P14221585502780869058.a n = A320111 (n + 1)

end A320111

/-! ## A320111.P11086740776837970070

`A000005(lcm(2, n+1)/2)`
-/

namespace A320111.P11086740776837970070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat

end

end A320111.P11086740776837970070

namespace A320111

/-- `A000005(lcm(2, n+1)/2)` -/
def P11086740776837970070.Spec : Prop :=
  ∀ n, P11086740776837970070.a n = A320111 (n + 1)

end A320111

/-! ## A320111.P5449054869551657674

`A063440(n)/a(n-1)` with `a(0)=1`
-/

namespace A320111.P5449054869551657674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A063440 n : ℚ) / a (n - 1)

end

end A320111.P5449054869551657674

namespace A320111

/-- `A063440(n)/a(n-1)` -/
def P5449054869551657674.Spec : Prop :=
  ∀ n, P5449054869551657674.a n = (A320111 (n + 1) : ℚ)

end A320111

/-! ## A320111.P8620969433526062112

`A000005((n+1)/(n%2+1))`
-/

namespace A320111.P8620969433526062112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n % 2 + 1 : ℕ) : ℚ))).toNat

end

end A320111.P8620969433526062112

namespace A320111

/-- `A000005((n+1)/(n%2+1))` -/
def P8620969433526062112.Spec : Prop :=
  ∀ n, P8620969433526062112.a n = A320111 (n + 1)

end A320111

/-! ## A320111.P1771703063006518381

`A000005((n+1)/gcd(2, 1-n))`
-/

namespace A320111.P1771703063006518381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd 2 (1 - (n : ℤ)) : ℚ))).toNat

end

end A320111.P1771703063006518381

namespace A320111

/-- `A000005((n+1)/gcd(2, 1-n))` -/
def P1771703063006518381.Spec : Prop :=
  ∀ n, P1771703063006518381.a n = A320111 (n + 1)

end A320111

/-! ## A320111.P698246498948594874

`A000005((n+1)/(and(1, n)+1))`
-/

namespace A320111.P698246498948594874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.land 1 n + 1 : ℚ))).toNat

end

end A320111.P698246498948594874

namespace A320111

/-- `A000005((n+1)/(and(1, n)+1))` -/
def P698246498948594874.Spec : Prop :=
  ∀ n, P698246498948594874.a n = A320111 (n + 1)

end A320111

/-! ## A320111.P8320792043179137655

`A000005((∑[n]-1)%(n+1)+1)`
-/

namespace A320111.P8320792043179137655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

end

end A320111.P8320792043179137655

namespace A320111

/-- `A000005((∑[n]-1)%(n+1)+1)` -/
def P8320792043179137655.Spec : Prop :=
  ∀ n, P8320792043179137655.a n = A320111 (n + 1)

end A320111

/-! ## A320111.P17059970214719926129

`A000005((n+1)*gcd(4, 2*n)/4)`
-/

namespace A320111.P17059970214719926129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((Nat.gcd 4 (2 * n) : ℚ) / 4))).toNat

end

end A320111.P17059970214719926129

namespace A320111

/-- `A000005((n+1)*gcd(4, 2*n)/4)` -/
def P17059970214719926129.Spec : Prop :=
  ∀ n, P17059970214719926129.a n = A320111 (n + 1)

end A320111

/-! ## A320111.P16852839907140518663

`A000005((n+1)/(or(1, 1-n)+n))`
-/

namespace A320111.P16852839907140518663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.lor 1 (1 - (n : ℤ)) + (n : ℤ) : ℚ))).toNat

end

end A320111.P16852839907140518663

namespace A320111

/-- `A000005((n+1)/(or(1, 1-n)+n))` -/
def P16852839907140518663.Spec : Prop :=
  ∀ n, P16852839907140518663.a n = A320111 (n + 1)

end A320111

/-! ## A320111.P1632974293069469586

`A000005(-(n+1)/or(n+1, -2))`
-/

namespace A320111.P1632974293069469586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (-((n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-2) : ℚ)))).toNat

end

end A320111.P1632974293069469586

namespace A320111

/-- `A000005(-(n+1)/or(n+1, -2))` -/
def P1632974293069469586.Spec : Prop :=
  ∀ n, P1632974293069469586.a n = A320111 (n + 1)

end A320111

/-! ## A320111.P12222441064391871440

`A000005((n+1)/C(2, gcd(n, n+2)))`
-/

namespace A320111.P12222441064391871440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.choose 2 (Nat.gcd n (n + 2)) : ℚ))).toNat

end

end A320111.P12222441064391871440

namespace A320111

/-- `A000005((n+1)/C(2, gcd(n, n+2)))` -/
def P12222441064391871440.Spec : Prop :=
  ∀ n, P12222441064391871440.a n = A320111 (n + 1)

end A320111

/-! ## A320111.P15497098652319536014

`A000005(abs(A030640(n)))`
-/

namespace A320111.P15497098652319536014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 |A030640 n|.toNat

end

end A320111.P15497098652319536014

namespace A320111

/-- `A000005(abs(A030640(n)))` -/
def P15497098652319536014.Spec : Prop :=
  ∀ n, P15497098652319536014.a n = A320111 (n + 1)

end A320111

/-! ## A320111.P14380343373100569127

`A000005(A026741(n+1))`
-/

namespace A320111.P14380343373100569127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A026741 (n + 1)).toNat

end

end A320111.P14380343373100569127

namespace A320111

/-- `A000005(A026741(n+1))` -/
def P14380343373100569127.Spec : Prop :=
  ∀ n, P14380343373100569127.a n = A320111 (n + 1)

end A320111

/-!
# A320112: a(n) = Product_{d|n, d>1} prime(1+(d mod 12)).

The programs for A320112, there is no canonical definition to state claims against.
-/

/-! ## A320112.P10168322163939308516

`A389909(A275700(n+1))`
-/

namespace A320112.P10168322163939308516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389909 (A275700 (n + 1)).toNat

end

end A320112.P10168322163939308516

/-! ## A320112.P14363012419616750108

`A003961(A275700(n+1)/2)`
-/

namespace A320112.P14363012419616750108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway ((A275700 (n + 1) : ℚ) / 2)).toNat

end

end A320112.P14363012419616750108

/-! ## A320112.P9380423173358161358

`A283980(A275700(n+1)/2)`
-/

namespace A320112.P9380423173358161358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283980 (SequenceMachineLib.roundAway ((A275700 (n + 1) : ℚ) / 2)).toNat

end

end A320112.P9380423173358161358

/-! ## A320112.P2947511184292786203

`A004526(∏{d}[n+1, A045344(#)])`
-/

namespace A320112.P2947511184292786203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∏ d ∈ Nat.divisors (f1 n), A045344 d).toNat

end

end A320112.P2947511184292786203

/-! ## A320112.P10497300970110632086

`A289441(∏{d}[n+1, A000040(#+1)])`
-/

namespace A320112.P10497300970110632086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (∏ d ∈ Nat.divisors (f1 n), A000040 (d + 1)).toNat

end

end A320112.P10497300970110632086

/-!
# A320114: a(n) = Product_{d|n, d>1} prime(1+(d mod 4)).

The programs for A320114, there is no canonical definition to state claims against.
-/

/-! ## A320114.P1551173927926802004

`Δ[record[A374700(A234275(n))]]`
-/

namespace A320114.P1551173927926802004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374700 (A234275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A320114.P1551173927926802004

/-! ## A320114.P17125473944354807238

`dr(A127106(n+1))*A208203(n)`
-/

namespace A320114.P17125473944354807238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A127106 (n + 1)) : ℤ) * A208203 n

end

end A320114.P17125473944354807238

/-!
# A320115: Filter sequence for counting the residue classes mod 4 of divisors of n.

The programs for A320115, there is no canonical definition to state claims against.
-/

/-! ## A320115.P16527735854893260919

`A342001(2^A319994(n+1))`
-/

namespace A320115.P16527735854893260919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319994 (n + 1) : ℤ))).toNat

end

end A320115.P16527735854893260919

/-! ## A320115.P17920535175381527211

`A319994(n+1)%record[A339859(n+1)]`
-/

namespace A320115.P17920535175381527211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319994 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A320115.P17920535175381527211

/-! ## A320115.P15877958825794955211

`A319994(n+1)+A000007(A014217(n))`
-/

namespace A320115.P15877958825794955211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319994 (n + 1) + A000007 (A014217 n).toNat

end

end A320115.P15877958825794955211

/-! ## A320115.P1977344598527214976

`A319994(n+1)+A025443(A161421(n))`
-/

namespace A320115.P1977344598527214976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319994 (n + 1) + A025443 (A161421 n).toNat

end

end A320115.P1977344598527214976

/-! ## A320115.P16568127657945125525

`A353472(A000322(n))+A319994(n+1)`
-/

namespace A320115.P16568127657945125525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353472 (A000322 n).toNat + A319994 (n + 1)

end

end A320115.P16568127657945125525

/-!
# A320117: Filter sequence for counting the residue classes mod 6 of divisors of n.

The programs for A320117, there is no canonical definition to state claims against.
-/

/-! ## A320117.P17709628872441580805

`A319996(n+1)%A127820(n+1)`
-/

namespace A320117.P17709628872441580805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319996 (n + 1)) (A127820 (n + 1))

end

end A320117.P17709628872441580805

/-! ## A320117.P16262372997030017321

`A319996(n+1)%A317593(A008619(n))`
-/

namespace A320117.P16262372997030017321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319996 (n + 1)) (A317593 (A008619 n).toNat)

end

end A320117.P16262372997030017321

/-! ## A320117.P3322191853573893316

`A319996(n+1)+A002324(A261536(n+1))`
-/

namespace A320117.P3322191853573893316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319996 (n + 1) + A002324 (A261536 (n + 1)).toNat

end

end A320117.P3322191853573893316

/-! ## A320117.P10019197575952254044

`A319996(n+1)+A000007(A291275(n+1))`
-/

namespace A320117.P10019197575952254044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319996 (n + 1) + A000007 (A291275 (n + 1)).toNat

end

end A320117.P10019197575952254044

/-! ## A320117.P16285654730552758395

`A353348(A001248(n+1))+A319996(n+1)`
-/

namespace A320117.P16285654730552758395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353348 (A001248 (n + 1)).toNat + A319996 (n + 1)

end

end A320117.P16285654730552758395

/-! ## A320117.P12198553606934419071

`A319996(n+1)+A193243(A338910(n+1))`
-/

namespace A320117.P12198553606934419071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319996 (n + 1) + A193243 (A338910 (n + 1)).toNat

end

end A320117.P12198553606934419071

/-! ## A320117.P7403284655619775950

`A320003(A320030(n+5))+A319996(n+1)`
-/

namespace A320117.P7403284655619775950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320003 (A320030 (n + 5)).toNat + A319996 (n + 1)

end

end A320117.P7403284655619775950

/-! ## A320117.P6784970410395884215

`A319996(n+1)+A010051(A003388(2*(n+2)))`
-/

namespace A320117.P6784970410395884215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319996 (n + 1) + A010051 (A003388 (2 * (n + 2))).toNat

end

end A320117.P6784970410395884215

/-! ## A320117.P10390302430043970734

`A319996(n+1)+A319988(A179896(3*(n+1)))`
-/

namespace A320117.P10390302430043970734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319996 (n + 1) + A319988 (A179896 (3 * (n + 1))).toNat

end

end A320117.P10390302430043970734

/-! ## A320117.P14629357708356794508

`A319996(n+1)+A319988(A319983(3*n+1))`
-/

namespace A320117.P14629357708356794508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319996 (n + 1) + A319988 (A319983 (3 * n + 1)).toNat

end

end A320117.P14629357708356794508

/-!
# A320118: a(1) = a(2) = 1; for n > 2, a(n) = A181819(n) * a(A181819(n)).

The programs for A320118, the canonical program `A320118.P286827314347607427` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320118 has offset 1).

The definition of A320118 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A181819, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A320118.P286827314347607427

`A181819(n+1)*a(A181819(n+1)-1)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A320118

/-- `A181819(n+1)*a(A181819(n+1)-1)` -/
def P286827314347607427.Spec : Prop :=
  ∀ n, P286827314347607427.a n = A320118 (n + 1)

theorem P286827314347607427.correct : P286827314347607427.Spec := by
  intro n
  simp only [A320118, Nat.add_sub_cancel]

end A320118

/-! ## A320118.P10129926400227826302

`a(A181819(n+1)-1)*A181819(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A320118.P10129926400227826302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A181819 (n + 1) - 1).toNat * A181819 (n + 1)

end

end A320118.P10129926400227826302

namespace A320118

/-- `a(A181819(n+1)-1)*A181819(n+1)` -/
def P10129926400227826302.Spec : Prop :=
  ∀ n, P10129926400227826302.a n = A320118 (n + 1)

end A320118

/-! ## A320118.P2610202255377468704

`A320016(A046660(n+1)!*A187829(n+1))`
-/

namespace A320118.P2610202255377468704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320016 ((Nat.factorial (A046660 (n + 1)).toNat : ℤ) * A187829 (n + 1)).toNat

end

end A320118.P2610202255377468704

namespace A320118

/-- `A320016(A046660(n+1)!*A187829(n+1))` -/
def P2610202255377468704.Spec : Prop :=
  ∀ n, P2610202255377468704.a n = A320118 (n + 1)

end A320118

/-! ## A320118.P14607055476334533116

`A320016(n+1)%A027575(A266632(2*n+3))`
-/

namespace A320118.P14607055476334533116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320016 (n + 1)) (A027575 (A266632 (2 * n + 3)).toNat)

end

end A320118.P14607055476334533116

namespace A320118

/-- `A320016(n+1)%A027575(A266632(2*n+3))` -/
def P14607055476334533116.Spec : Prop :=
  ∀ n, P14607055476334533116.a n = A320118 (n + 1)

end A320118

/-! ## A320118.P4142442002436610760

`A320016(n+1)%A332350(A065073(n+1))`
-/

namespace A320118.P4142442002436610760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320016 (n + 1)) (A332350 (A065073 (n + 1)).toNat)

end

end A320118.P4142442002436610760

namespace A320118

/-- `A320016(n+1)%A332350(A065073(n+1))` -/
def P4142442002436610760.Spec : Prop :=
  ∀ n, P4142442002436610760.a n = A320118 (n + 1)

end A320118

/-!
# A320120: Expansion of Product_{k>0} 1/(Sum_{m>=0} x^(k*m^3)).

The programs for A320120, there is no canonical definition to state claims against.
-/

/-! ## A320120.P16771886120249619933

`A049347(Δ[A251691(n)])`
-/

namespace A320120.P16771886120249619933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (f1 (n + 1) - f1 n).toNat

end

end A320120.P16771886120249619933

/-! ## A320120.P7563355707053199853

`A331990(A091079(n+1))`
-/

namespace A320120.P7563355707053199853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331990 (A091079 (n + 1)).toNat

end

end A320120.P7563355707053199853

/-! ## A320120.P3952032484519472899

`A209635(record[A202699(n+1)])`
-/

namespace A320120.P3952032484519472899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A320120.P3952032484519472899

/-! ## A320120.P16839628590196243997

`A008683(7*A093788(n+5))`
-/

namespace A320120.P16839628590196243997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (7 * A093788 (n + 5)).toNat

end

end A320120.P16839628590196243997

/-! ## A320120.P14692962617027528926

`A054354(A165675(2*n+3)+5)`
-/

namespace A320120.P14692962617027528926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A165675 (2 * n + 3) + 5).toNat

end

end A320120.P14692962617027528926

/-!
# A320121: Numbers k such that the product (m+n)*p, where m,n are the first and the last digits of k, and p is the number which is the part of k between m and n, is a divisor of k.

The programs for A320121, there is no canonical definition to state claims against.
-/

/-! ## A320121.P5630007357223910095

`A335127(A333489(2*(n+2))+40)`
-/

namespace A320121.P5630007357223910095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335127 (A333489 (2 * (n + 2)) + 40).toNat

end

end A320121.P5630007357223910095

/-! ## A320121.P4428080718403987663

`A084042(n+1)-A300717(A084059(n+2))`
-/

namespace A320121.P4428080718403987663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084042 (n + 1) - A300717 (A084059 (n + 2)).toNat

end

end A320121.P4428080718403987663

/-!
# A320124: Number of integer solutions to a^2 + b^2 + 2*c^2 + 3*d^2 = n.

The programs for A320124, there is no canonical definition to state claims against.
-/

/-! ## A320124.P6268222198924617513

`A320152(2*n)`
-/

namespace A320124.P6268222198924617513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320152 (2 * n)

end

end A320124.P6268222198924617513

/-! ## A320124.P9120029829324361310

`A320152(n+n)/gcd(n, n+1)`
-/

namespace A320124.P9120029829324361310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320152 (n + n) : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A320124.P9120029829324361310

/-! ## A320124.P3562654310158616612

`A320200(4*n)`
-/

namespace A320124.P3562654310158616612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320200 (4 * n)

end

end A320124.P3562654310158616612

/-! ## A320124.P11760699507738311238

`A060000(or(1, A320152(n+n)))`
-/

namespace A320124.P11760699507738311238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (Int.lor 1 (A320152 (n + n))).toNat

end

end A320124.P11760699507738311238

/-! ## A320124.P8832918954197653490

`A320152(n+n)+A010815(A004011(n+1))`
-/

namespace A320124.P8832918954197653490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320152 (n + n) + A010815 (A004011 (n + 1)).toNat

end

end A320124.P8832918954197653490

/-!
# A320125: Number of integer solutions to a^2 + b^2 + 2*c^2 + 4*d^2 = n.

The programs for A320125, there is no canonical definition to state claims against.
-/

/-! ## A320125.P15531674378130413998

`(A236928(n)+A113416(n))/2`
-/

namespace A320125.P15531674378130413998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236928 n + A113416 n : ℚ) / 2

end

end A320125.P15531674378130413998

/-! ## A320125.P7643781720810678119

`A320149(n)+A000035(n)*A113416(n)`
-/

namespace A320125.P7643781720810678119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320149 n + A000035 n * A113416 n

end

end A320125.P7643781720810678119

/-! ## A320125.P5328702071166747482

`A320149(n)-A000035(n)*A131999(n)`
-/

namespace A320125.P5328702071166747482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320149 n - A000035 n * A131999 n

end

end A320125.P5328702071166747482

/-! ## A320125.P5098228741496184845

`A000034(n)*A320193(A022998(n))`
-/

namespace A320125.P5098228741496184845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A320193 (A022998 n).toNat

end

end A320125.P5098228741496184845

/-! ## A320125.P6553640138709405112

`A040001(n+1)*A320193(A022998(n))`
-/

namespace A320125.P6553640138709405112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A320193 (A022998 n).toNat

end

end A320125.P6553640138709405112

/-! ## A320125.P7252226519621840584

`A040001(n+1)*A320193(n*A040001(n))`
-/

namespace A320125.P7252226519621840584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A320193 ((n : ℤ) * A040001 n).toNat

end

end A320125.P7252226519621840584

/-! ## A320125.P3313307240140044267

`A014682(A320149(2*n)+A113416(n))`
-/

namespace A320125.P3313307240140044267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A320149 (2 * n) + A113416 n).toNat

end

end A320125.P3313307240140044267

/-! ## A320125.P6236284160385199370

`A185048(A236928(n)+A113416(n))`
-/

namespace A320125.P6236284160385199370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A236928 n + A113416 n).toNat

end

end A320125.P6236284160385199370

/-! ## A320125.P12763475503500641820

`A026741(A236928(n)+A113416(n))`
-/

namespace A320125.P12763475503500641820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A236928 n + A113416 n).toNat

end

end A320125.P12763475503500641820

/-! ## A320125.P11950110767432797421

`A001281(A320149(2*n)+A113416(n))`
-/

namespace A320125.P11950110767432797421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A320149 (2 * n) + A113416 n).toNat

end

end A320125.P11950110767432797421

/-! ## A320125.P5177622832494631957

`A004525(A320149(2*n)+A113416(n))`
-/

namespace A320125.P5177622832494631957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A320149 (2 * n) + A113416 n).toNat

end

end A320125.P5177622832494631957

/-! ## A320125.P8916347707010464636

`A004526(A320149(2*n)+A113416(n))`
-/

namespace A320125.P8916347707010464636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A320149 (2 * n) + A113416 n).toNat

end

end A320125.P8916347707010464636

/-! ## A320125.P14027080832912360842

`A006370(A320149(2*n)+A113416(n))`
-/

namespace A320125.P14027080832912360842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A320149 (2 * n) + A113416 n).toNat

end

end A320125.P14027080832912360842

/-! ## A320125.P5202505012632605794

`A025480(A320149(2*n)+A113416(n))`
-/

namespace A320125.P5202505012632605794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A320149 (2 * n) + A113416 n).toNat

end

end A320125.P5202505012632605794

/-! ## A320125.P14747429109323245494

`A026741(A320149(2*n)+A113416(n))`
-/

namespace A320125.P14747429109323245494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A320149 (2 * n) + A113416 n).toNat

end

end A320125.P14747429109323245494

/-! ## A320125.P1340256582939252011

`A032742(A320149(2*n)+A113416(n))`
-/

namespace A320125.P1340256582939252011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A320149 (2 * n) + A113416 n).toNat

end

end A320125.P1340256582939252011

/-!
# A320127: Number of integer solutions to a^2 + b^2 + 2*c^2 + 6*d^2 = n.

The programs for A320127, there is no canonical definition to state claims against.
-/

/-! ## A320127.P13046252557828385367

`A236933(2*n)/A010684(n)`
-/

namespace A320127.P13046252557828385367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236933 (2 * n) : ℚ) / (A010684 n : ℚ)

end

end A320127.P13046252557828385367

/-! ## A320127.P5045979921113035549

`A236933(2*n)/Δ[A042948(n)]`
-/

namespace A320127.P5045979921113035549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236933 (2 * n) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A320127.P5045979921113035549

/-! ## A320127.P9004527748330771480

`A236933(2*n)/A006368(Δ[A001651(n+1)])`
-/

namespace A320127.P9004527748330771480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236933 (2 * n) : ℚ) / (A006368 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A320127.P9004527748330771480

/-! ## A320127.P9320873207031338719

`A236933(2*n)/A298847(Δ[A001651(n+1)])`
-/

namespace A320127.P9320873207031338719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236933 (2 * n) : ℚ) / (A298847 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A320127.P9320873207031338719

/-! ## A320127.P15265431048690148096

`A236933(2*n)/A084101(2*n)`
-/

namespace A320127.P15265431048690148096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236933 (2 * n) : ℚ) / (A084101 (2 * n) : ℚ)

end

end A320127.P15265431048690148096

/-! ## A320127.P11219581972758679123

`A236933(2*n)/A006368(Δ[A006368(2*n+1)])`
-/

namespace A320127.P11219581972758679123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236933 (2 * n) : ℚ) / (A006368 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A320127.P11219581972758679123

/-!
# A320128: Number of integer solutions to a^2 + b^2 + 2*c^2 + 7*d^2 = n.

The programs for A320128, there is no canonical definition to state claims against.
-/

/-! ## A320128.P14375547792931053269

`A000005(A080512(n+1)*A136992(n+1))`
-/

namespace A320128.P14375547792931053269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A080512 (n + 1) * A136992 (n + 1)).toNat

end

end A320128.P14375547792931053269

/-!
# A320129: Number of ways to group the first 2*n natural numbers into n pairs (xi, yi) such that the n numbers xi + yi are all different.

The programs for A320129, there is no canonical definition to state claims against.
-/

/-! ## A320129.P16943414700603010077

`∑[A023837((n-1)^n)]`
-/

namespace A320129.P16943414700603010077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023837 (((n : ℤ) - 1) ^ n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320129.P16943414700603010077

/-! ## A320129.P1604465059283178781

`A171481(A002720(n))`
-/

namespace A320129.P1604465059283178781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171481 (A002720 n).toNat

end

end A320129.P1604465059283178781

/-!
# A320131: Number of integer solutions to a^2 + b^2 + 2*c^2 + 9*d^2 = n.

The programs for A320131, there is no canonical definition to state claims against.
-/

/-! ## A320131.P7897675925116849859

`A320130(n)-A111775(A146449(n+5))`
-/

namespace A320131.P7897675925116849859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320130 n - A111775 (A146449 (n + 5)).toNat

end

end A320131.P7897675925116849859

/-!
# A320133: Number of integer solutions to a^2 + b^2 + 2*c^2 + 11*d^2 = n.

The programs for A320133, there is no canonical definition to state claims against.
-/

/-! ## A320133.P9151840482187048836

`A320134(n)+A111775(A146449(n+2))`
-/

namespace A320133.P9151840482187048836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320134 n + A111775 (A146449 (n + 2)).toNat

end

end A320133.P9151840482187048836

/-! ## A320133.P10260871763880994710

`A107846(A328318(n))+A014455(n)`
-/

namespace A320133.P10260871763880994710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A328318 n).toNat + A014455 n

end

end A320133.P10260871763880994710

/-! ## A320133.P11055173089858811137

`A374700(A264859(2*n+3))+A014455(n)`
-/

namespace A320133.P11055173089858811137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374700 (A264859 (2 * n + 3)).toNat + A014455 n

end

end A320133.P11055173089858811137

/-!
# A320134: Number of integer solutions to a^2 + b^2 + 2*c^2 + 12*d^2 = n.

The programs for A320134, there is no canonical definition to state claims against.
-/

/-! ## A320134.P14691178890973365475

`A320135(n)+A111775(A146449(n+1))`
-/

namespace A320134.P14691178890973365475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320135 n + A111775 (A146449 (n + 1)).toNat

end

end A320134.P14691178890973365475

/-! ## A320134.P6115092051894491421

`A320135(A036601(n)²²+n)`
-/

namespace A320134.P6115092051894491421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320135 ((A036601 n ^ 2) ^ 2 + (n : ℤ)).toNat

end

end A320134.P6115092051894491421

/-! ## A320134.P10742531659454370885

`A320135(A036601(n)^(n+1)+n)`
-/

namespace A320134.P10742531659454370885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320135 (A036601 n ^ (n + 1) + (n : ℤ)).toNat

end

end A320134.P10742531659454370885

/-! ## A320134.P4292171201626733595

`A320135(C(A183759(n+1), n+3)+n)`
-/

namespace A320134.P4292171201626733595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320135 (Nat.choose (A183759 (n + 1)).toNat (n + 3) + n)

end

end A320134.P4292171201626733595

/-! ## A320134.P7380322798292948690

`A018843(A013609(n))+A014455(n)`
-/

namespace A320134.P7380322798292948690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018843 (A013609 n).toNat + A014455 n

end

end A320134.P7380322798292948690

/-!
# A320135: Number of integer solutions to a^2 + b^2 + 2*c^2 + 13*d^2 = n.

The programs for A320135, there is no canonical definition to state claims against.
-/

/-! ## A320135.P13715617729678176300

`A320134(n)-A111775(A146449(n+1))`
-/

namespace A320135.P13715617729678176300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320134 n - A111775 (A146449 (n + 1)).toNat

end

end A320135.P13715617729678176300

/-! ## A320135.P3498954559111320983

`A044940(A154251(n+1))+A014455(n)`
-/

namespace A320135.P3498954559111320983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A154251 (n + 1)).toNat + A014455 n

end

end A320135.P3498954559111320983

/-! ## A320135.P11869697915218514448

`A067742(A334769(n+3))+A014455(n)`
-/

namespace A320135.P11869697915218514448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (A334769 (n + 3)).toNat + A014455 n

end

end A320135.P11869697915218514448

/-! ## A320135.P10513878358776585040

`A033865(A185245(3*n))+A014455(n)`
-/

namespace A320135.P10513878358776585040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (A185245 (3 * n)).toNat + A014455 n

end

end A320135.P10513878358776585040

/-!
# A320136: Number of integer solutions to a^2 + b^2 + 2*c^2 + 14*d^2 = n.

The programs for A320136, there is no canonical definition to state claims against.
-/

/-! ## A320136.P2136623493321156384

`A044940(A154251(n))+A014455(n)`
-/

namespace A320136.P2136623493321156384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044940 (A154251 n).toNat + A014455 n

end

end A320136.P2136623493321156384

/-!
# A320137: Numbers that have only one middle divisor.

The programs for A320137, there is no canonical definition to state claims against.
-/

/-! ## A320137.P11297257479591433832

`eq[1, A067742(n+1)]+1`
-/

namespace A320137.P11297257479591433832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320137.P11297257479591433832

/-! ## A320137.P3217849356559134108

`eq[2, A348406(n+1)]+1`
-/

namespace A320137.P3217849356559134108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320137.P3217849356559134108

/-! ## A320137.P9582794103994066889

`eq[n, A028310(n)*A067742(A028310(n))]`
-/

namespace A320137.P9582794103994066889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A067742 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320137.P9582794103994066889

/-! ## A320137.P2161643347304703427

`record[A001478(n+1)*A063942(A348406(n+1))]`
-/

namespace A320137.P2161643347304703427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) * A063942 (A348406 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320137.P2161643347304703427

/-! ## A320137.P4969214175871685445

`record[A028982(n+1)/A067742(A028982(n+1))]`
-/

namespace A320137.P4969214175871685445
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028982 (n + 1) : ℚ) / (A067742 (A028982 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320137.P4969214175871685445

/-! ## A320137.P1164895928992239363

`record[A071562(n+1)/A067742(A071562(n+1))]`
-/

namespace A320137.P1164895928992239363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071562 (n + 1) : ℚ) / (A067742 (A071562 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320137.P1164895928992239363

/-!
# A320138: Number of integer solutions to a^2 + 2*b^2 + 3*c^2 + 3*d^2 = n.

The programs for A320138, there is no canonical definition to state claims against.
-/

/-! ## A320138.P17938579413407151768

`A320148(3*n)`
-/

namespace A320138.P17938579413407151768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320148 (3 * n)

end

end A320138.P17938579413407151768

/-! ## A320138.P9535987030944469917

`lcm((-1)^n, A320148(A008585(n)))`
-/

namespace A320138.P9535987030944469917
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A320148 (A008585 n).toNat)

end

end A320138.P9535987030944469917

/-! ## A320138.P5801940195781806336

`A320148(A008486(n))%A027688(n)`
-/

namespace A320138.P5801940195781806336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320148 (A008486 n).toNat) (A027688 n)

end

end A320138.P5801940195781806336

/-! ## A320138.P2255999498094884491

`gcd(A130706(n), A320148(A008486(n)))`
-/

namespace A320138.P2255999498094884491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A320148 (A008486 n).toNat)

end

end A320138.P2255999498094884491

/-! ## A320138.P447234763227355318

`A320148(A008486(n))^A178334(A178334(n))`
-/

namespace A320138.P447234763227355318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320148 (A008486 n).toNat : ℚ) ^ (A178334 (A178334 n).toNat : ℤ)

end

end A320138.P447234763227355318

/-! ## A320138.P13458443651146165459

`A320148(A008486(n))^(A004958(n)-A004976(n))`
-/

namespace A320138.P13458443651146165459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320148 (A008486 n).toNat : ℚ) ^ (A004958 n - A004976 n : ℤ)

end

end A320138.P13458443651146165459

/-! ## A320138.P18007466474816488235

`A020527(n)%(A320148(A008486(n))-A020527(n))`
-/

namespace A320138.P18007466474816488235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020527 n) (A320148 (A008486 n).toNat - A020527 n)

end

end A320138.P18007466474816488235

/-!
# A320141: a(n) is the sum of the nearest integer to the imaginary part of the n-th zero of the Riemann zeta function and the n-th prime.

The programs for A320141, there is no canonical definition to state claims against.
-/

/-! ## A320141.P16057705387257078722

`A002410(n+1)+A000040(n+1)`
-/

namespace A320141.P16057705387257078722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) + A000040 (n + 1)

end

end A320141.P16057705387257078722

/-! ## A320141.P7690859176780865366

`A002410(n+1)+Δ[A007504(n)]`
-/

namespace A320141.P7690859176780865366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) + (f1 (n + 1) - f1 n)

end

end A320141.P7690859176780865366

/-! ## A320141.P1621265894020432990

`A319229(n+1)+A100484(n+1)`
-/

namespace A320141.P1621265894020432990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319229 (n + 1) + A100484 (n + 1)

end

end A320141.P1621265894020432990

/-! ## A320141.P18299843074486794942

`A002410(n+1)+sqrt(A001248(n+1))`
-/

namespace A320141.P18299843074486794942
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002410 (n + 1) : ℝ) + Real.sqrt (A001248 (n + 1) : ℝ)

end

end A320141.P18299843074486794942

/-! ## A320141.P13220144824739941848

`A002410(n+1)+∑[A054541(n+1)]`
-/

namespace A320141.P13220144824739941848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320141.P13220144824739941848

/-! ## A320141.P367800740676575903

`A002410(n+1)+A052147(n+1)-2`
-/

namespace A320141.P367800740676575903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) + (A052147 (n + 1) - 2)

end

end A320141.P367800740676575903

/-! ## A320141.P13585941877540582729

`A002410(n+1)+A113935(n+1)-3`
-/

namespace A320141.P13585941877540582729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) + (A113935 (n + 1) - 3)

end

end A320141.P13585941877540582729

/-! ## A320141.P5274577304612908644

`A319229(n+1)+2*A000040(n+1)`
-/

namespace A320141.P5274577304612908644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319229 (n + 1) + 2 * A000040 (n + 1)

end

end A320141.P5274577304612908644

/-! ## A320141.P5959071726840705324

`2*A002410(n+1)-A319229(n+1)`
-/

namespace A320141.P5959071726840705324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002410 (n + 1) - A319229 (n + 1)

end

end A320141.P5959071726840705324

/-! ## A320141.P5825824174684919997

`round(A000040(n+1)+A342756(n+1)/A000040(n+1))`
-/

namespace A320141.P5825824174684919997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) + (A342756 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ))

end

end A320141.P5825824174684919997

/-! ## A320141.P7740543126235902460

`A002410(n+1)+record[A006530(n+2)]`
-/

namespace A320141.P7740543126235902460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320141.P7740543126235902460

/-! ## A320141.P18176008212957386487

`A002410(n+1)+record[A020639(n+2)]`
-/

namespace A320141.P18176008212957386487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320141.P18176008212957386487

/-! ## A320141.P17482707801904116439

`record[A000010(n+1)]+A002410(n+1)+1`
-/

namespace A320141.P17482707801904116439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A002410 (n + 1) + 1)

end

end A320141.P17482707801904116439

/-! ## A320141.P15773142621187973762

`A002410(n+1)+p?[A344180(n)]`
-/

namespace A320141.P15773142621187973762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320141.P15773142621187973762

/-! ## A320141.P3022573570480357869

`A067747(2*n+1)+A002410(n+1)`
-/

namespace A320141.P3022573570480357869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1) + A002410 (n + 1)

end

end A320141.P3022573570480357869

/-! ## A320141.P11896161717210019551

`A002410(n+1)+p?[A004280(n+1)]`
-/

namespace A320141.P11896161717210019551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320141.P11896161717210019551

/-! ## A320141.P3092170913846053466

`A002410(n+1)+p?[A001057(n)]`
-/

namespace A320141.P3092170913846053466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320141.P3092170913846053466

/-! ## A320141.P9035947452066132576

`A002410(n+1)+p?[A006370(n)]`
-/

namespace A320141.P9035947452066132576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A320141.P9035947452066132576

/-!
# A320142: Numbers that have exactly two middle divisors.

The programs for A320142, there is no canonical definition to state claims against.
-/

/-! ## A320142.P10467078216212890876

`eq[2, A067742(n+1)]+1`
-/

namespace A320142.P10467078216212890876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320142.P10467078216212890876

/-! ## A320142.P366920146586696579

`eq[3, A348406(n+1)]+1`
-/

namespace A320142.P366920146586696579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320142.P366920146586696579

/-! ## A320142.P17811161070758871955

`lt[1, A067742(n+2)%3]+2`
-/

namespace A320142.P17811161070758871955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067742 (n + 2)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A320142.P17811161070758871955

/-! ## A320142.P10277430689241280264

`eq[2, A067742(A028310(n))]`
-/

namespace A320142.P10277430689241280264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320142.P10277430689241280264

/-! ## A320142.P11715160678443464552

`A020725(eq[2, A067742(n+1)])`
-/

namespace A320142.P11715160678443464552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320142.P11715160678443464552

/-! ## A320142.P16729814939363015352

`A061767(eq[2, A067742(n+1)])`
-/

namespace A320142.P16729814939363015352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320142.P16729814939363015352

/-! ## A320142.P10887786599706742246

`eq[2, A067742(A000007(n)+n)]`
-/

namespace A320142.P10887786599706742246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320142.P10887786599706742246

/-! ## A320142.P16828252551401877586

`eq[2, A067742(A000038(n)+n)]`
-/

namespace A320142.P16828252551401877586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320142.P16828252551401877586

/-! ## A320142.P17540407127339971444

`eq[2, A067742(A004277(n)-n)]`
-/

namespace A320142.P17540407127339971444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A320142.P17540407127339971444

/-! ## A320142.P8074683295611354232

`eq[2, A000005(n+1)-A067743(n+1)]+1`
-/

namespace A320142.P8074683295611354232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A067743 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320142.P8074683295611354232

/-!
# A320143: A variation on Pascal's triangle: every term inside the triangle is the sum of the two integers immediately above it, with no duplicate term. See the Comments section to understand the sequence and the building process.

The programs for A320143, there is no canonical definition to state claims against.
-/

/-! ## A320143.P3323526064794530943

`A320144(A134519(n+1))`
-/

namespace A320143.P3323526064794530943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320144 (A134519 (n + 1)).toNat

end

end A320143.P3323526064794530943

/-! ## A320143.P16354615678591009203

`A320144(eq[1, A007318(n)]+1)`
-/

namespace A320143.P16354615678591009203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A320143.P16354615678591009203

/-! ## A320143.P16786017317598146212

`A320144(eq[2, A134868(n+1)])`
-/

namespace A320143.P16786017317598146212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320143.P16786017317598146212

/-! ## A320143.P2017551675634526164

`A320144(record[(n+1)/A137855(n+1)])`
-/

namespace A320143.P2017551675634526164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A137855 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320144 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A320143.P2017551675634526164

/-! ## A320143.P2523580556386852360

`A320144(∑[A152271(A014681(n))])`
-/

namespace A320143.P2523580556386852360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320144 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A320143.P2523580556386852360

/-! ## A320143.P4297199635186067777

`A320144(∑[A028310(A142150(n))])`
-/

namespace A320143.P4297199635186067777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320144 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A320143.P4297199635186067777

/-! ## A320143.P17294612282459924403

`A320144(record[(n+1)/A056941(n)])`
-/

namespace A320143.P17294612282459924403
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A056941 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320144 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A320143.P17294612282459924403

/-!
# A320146: a(n) = 2*prime(n) modulo (prime(n-1) + prime(n+1)).

The programs for A320146, the canonical program `A320146.P14289630506031566680` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A320146 has offset 2).

The definition of A320146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A320146.P14289630506031566680

`A096277(n+1)%A048448(n+2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A320146

/-- `A096277(n+1)%A048448(n+2)` -/
def P14289630506031566680.Spec : Prop :=
  ∀ n, P14289630506031566680.a n = A320146 (n + 2)

theorem P14289630506031566680.correct : P14289630506031566680.Spec := by
  intro n
  simp only [A320146, Nat.add_sub_cancel]

end A320146

/-! ## A320146.P8004821440981412936

`A100484(n+2)%A048448(n+2)`
-/

namespace A320146.P8004821440981412936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100484 (n + 2)) (A048448 (n + 2))

end

end A320146.P8004821440981412936

namespace A320146

/-- `A100484(n+2)%A048448(n+2)` -/
def P8004821440981412936.Spec : Prop :=
  ∀ n, P8004821440981412936.a n = A320146 (n + 2)

end A320146

/-! ## A320146.P16229972181644047710

`A001747(n+3)%(A008578(n+2)+A008578(n+4))`
-/

namespace A320146.P16229972181644047710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001747 (n + 3)) (A008578 (n + 2) + A008578 (n + 4))

end

end A320146.P16229972181644047710

namespace A320146

/-- `A001747(n+3)%(A008578(n+2)+A008578(n+4))` -/
def P16229972181644047710.Spec : Prop :=
  ∀ n, P16229972181644047710.a n = A320146 (n + 2)

end A320146

/-! ## A320146.P4513202090876839256

`(A008578(n+3)+A008578(n+3))%(A008578(n+2)+A008578(n+4))`
-/

namespace A320146.P4513202090876839256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 3) + A008578 (n + 3)) (A008578 (n + 2) + A008578 (n + 4))

end

end A320146.P4513202090876839256

namespace A320146

/-- `(A008578(n+3)+A008578(n+3))%(A008578(n+2)+A008578(n+4))` -/
def P4513202090876839256.Spec : Prop :=
  ∀ n, P4513202090876839256.a n = A320146 (n + 2)

end A320146

/-! ## A320146.P8959682140401069233

`A005843(A034961(n+1))%A048448(n+2)`
-/

namespace A320146.P8959682140401069233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A034961 (n + 1)).toNat) (A048448 (n + 2))

end

end A320146.P8959682140401069233

namespace A320146

/-- `A005843(A034961(n+1))%A048448(n+2)` -/
def P8959682140401069233.Spec : Prop :=
  ∀ n, P8959682140401069233.a n = A320146 (n + 2)

end A320146

/-!
# A320149: Number of integer solutions to a^2 + 2*b^2 + 2*c^2 + 2*d^2 = n.

The programs for A320149, there is no canonical definition to state claims against.
-/

/-! ## A320149.P9295026148346088414

`A320193(2*n)`
-/

namespace A320149.P9295026148346088414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320193 (2 * n)

end

end A320149.P9295026148346088414

/-! ## A320149.P12891274739531231492

`xor(1, xor(1, A320193(n+n)))`
-/

namespace A320149.P12891274739531231492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A320193 (n + n)))

end

end A320149.P12891274739531231492

/-! ## A320149.P5402220567201665990

`A320193(A005843(n))%A155212(n)`
-/

namespace A320149.P5402220567201665990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320193 (A005843 n).toNat) (A155212 n)

end

end A320149.P5402220567201665990

/-! ## A320149.P15111787416568078459

`A320193(n+n)+A000007(A320193(n))`
-/

namespace A320149.P15111787416568078459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320193 (n + n) + A000007 (A320193 n).toNat

end

end A320149.P15111787416568078459

/-! ## A320149.P2108939475373705511

`A320193(n+n)+A000035(A320193(n+1))`
-/

namespace A320149.P2108939475373705511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320193 (n + n) + A000035 (A320193 (n + 1)).toNat

end

end A320149.P2108939475373705511

/-! ## A320149.P4201961872640651465

`A185048(A236928(n)+A113416(2*n))`
-/

namespace A320149.P4201961872640651465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A236928 n + A113416 (2 * n)).toNat

end

end A320149.P4201961872640651465

/-! ## A320149.P6011162410536084792

`A026741(A236928(n)+A113416(2*n))`
-/

namespace A320149.P6011162410536084792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A236928 n + A113416 (2 * n)).toNat

end

end A320149.P6011162410536084792

/-!
# A320150: Number of integer solutions to a^2 + 2*b^2 + 2*c^2 + 3*d^2 = n.

The programs for A320150, there is no canonical definition to state claims against.
-/

/-! ## A320150.P4101230546134945573

`A320195(2*n)`
-/

namespace A320150.P4101230546134945573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320195 (2 * n)

end

end A320150.P4101230546134945573

/-! ## A320150.P8817946159491736291

`A000027(A320195(n+n))`
-/

namespace A320150.P8817946159491736291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A320195 (n + n)).toNat

end

end A320150.P8817946159491736291

/-! ## A320150.P10534453283783707006

`A320195(A005843(n))%A016947(n)`
-/

namespace A320150.P10534453283783707006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320195 (A005843 n).toNat) (A016947 n)

end

end A320150.P10534453283783707006

/-! ## A320150.P3525537219961913124

`A320195(n+n)%A008104(A320195(n))`
-/

namespace A320150.P3525537219961913124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320195 (n + n)) (A008104 (A320195 n).toNat)

end

end A320150.P3525537219961913124

/-! ## A320150.P1656455168440358776

`A320195(n+n)/A061782(∑[n+1])`
-/

namespace A320150.P1656455168440358776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320195 (n + n) : ℚ) / (A061782 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A320150.P1656455168440358776

/-! ## A320150.P12917132047011027954

`A320195(n+n)/A059268(∑[n])`
-/

namespace A320150.P12917132047011027954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320195 (n + n) : ℚ) / (A059268 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A320150.P12917132047011027954

/-!
# A320151: Number of integer solutions to a^2 + 2*b^2 + 2*c^2 + 5*d^2 = n.

The programs for A320151, there is no canonical definition to state claims against.
-/

/-! ## A320151.P9152834954194710469

`A320198(2*n)`
-/

namespace A320151.P9152834954194710469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320198 (2 * n)

end

end A320151.P9152834954194710469

/-! ## A320151.P1181878003615945731

`A000027(A320198(n+n))`
-/

namespace A320151.P1181878003615945731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A320198 (n + n)).toNat

end

end A320151.P1181878003615945731

/-! ## A320151.P4762204261811343359

`A320198(A004277(n))-A000007(n)`
-/

namespace A320151.P4762204261811343359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320198 (A004277 n).toNat - A000007 n

end

end A320151.P4762204261811343359

/-! ## A320151.P12185457866882116500

`A320198(record[A014681(n)])%A016969(n)`
-/

namespace A320151.P12185457866882116500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320198 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A016969 n)

end

end A320151.P12185457866882116500

/-! ## A320151.P9414653161016604126

`A320198(record[A185048(n+1)])-A000007(n)`
-/

namespace A320151.P9414653161016604126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320198 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A000007 n

end

end A320151.P9414653161016604126

/-! ## A320151.P15420046409360344825

`A320198(record[A153733(n)])%A016969(n)`
-/

namespace A320151.P15420046409360344825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320198 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A016969 n)

end

end A320151.P15420046409360344825

/-! ## A320151.P158878409644706858

`A320198(n+n)+A081371(∑[n]+1)`
-/

namespace A320151.P158878409644706858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320198 (n + n) + A081371 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A320151.P158878409644706858

/-!
# A320152: Number of integer solutions to a^2 + 2*b^2 + 2*c^2 + 6*d^2 = n.

The programs for A320152, there is no canonical definition to state claims against.
-/

/-! ## A320152.P7469355626856953209

`A320200(2*n)`
-/

namespace A320152.P7469355626856953209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320200 (2 * n)

end

end A320152.P7469355626856953209

/-! ## A320152.P3847264999009737590

`A320200(n+n)%A240106(n+1)`
-/

namespace A320152.P3847264999009737590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320200 (n + n)) (A240106 (n + 1))

end

end A320152.P3847264999009737590

/-! ## A320152.P6271938988921588566

`A320200(A004277(n))^ceil(n/(n+1))`
-/

namespace A320152.P6271938988921588566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320200 (A004277 n).toNat : ℚ) ^ (⌈(n : ℚ) / (n + 1 : ℚ)⌉ : ℤ)

end

end A320152.P6271938988921588566

/-! ## A320152.P17749137042279372855

`A320200(A004277(n))-A000007(n)`
-/

namespace A320152.P17749137042279372855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320200 (A004277 n).toNat - A000007 n

end

end A320152.P17749137042279372855

/-! ## A320152.P3739913365705545405

`A320200(A005843(n))%A167499(n)`
-/

namespace A320152.P3739913365705545405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320200 (A005843 n).toNat) (A167499 n)

end

end A320152.P3739913365705545405

/-! ## A320152.P4461500173138888756

`lcm(A020985(n), A320200(A005843(n)))`
-/

namespace A320152.P4461500173138888756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A320200 (A005843 n).toNat)

end

end A320152.P4461500173138888756

/-! ## A320152.P15480229907200273809

`A000027(A320200(record[A153733(n)]))`
-/

namespace A320152.P15480229907200273809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A320200 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A320152.P15480229907200273809

/-! ## A320152.P16154859960112040408

`A348717(A320200(Δ[A002061(n)]))`
-/

namespace A320152.P16154859960112040408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A320200 (f1 (n + 1) - f1 n).toNat).toNat

end

end A320152.P16154859960112040408

/-!
# A320153: Number of integer solutions to a^2 + 2*b^2 + 2*c^2 + 7*d^2 = n.

The programs for A320153, there is no canonical definition to state claims against.
-/

/-! ## A320153.P10364581051835797140

`A320202(2*n)`
-/

namespace A320153.P10364581051835797140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320202 (2 * n)

end

end A320153.P10364581051835797140

/-! ## A320153.P10430550814114463078

`A320202(A005843(n))%((n+1)²+1)`
-/

namespace A320153.P10430550814114463078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320202 (A005843 n).toNat) ((n + 1) ^ 2 + 1 : ℤ)

end

end A320153.P10430550814114463078

/-! ## A320153.P16674259226208551596

`A000027(A320202(Δ[A002061(n)]))`
-/

namespace A320153.P16674259226208551596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A320202 (f1 (n + 1) - f1 n).toNat).toNat

end

end A320153.P16674259226208551596

/-! ## A320153.P189588654697263953

`A000027(A320202(record[A014681(n)]))`
-/

namespace A320153.P189588654697263953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A320202 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A320153.P189588654697263953

/-! ## A320153.P3854080492377085049

`or(A000007(n), A320202(A005843(n)))`
-/

namespace A320153.P3854080492377085049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A320202 (A005843 n).toNat)

end

end A320153.P3854080492377085049

/-! ## A320153.P6089465123059663422

`A320202(n+n)%A098949(A320202(n))`
-/

namespace A320153.P6089465123059663422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320202 (n + n)) (A098949 (A320202 n).toNat)

end

end A320153.P6089465123059663422

/-! ## A320153.P11800194089756562018

`A320202(n+n)+A210628(A320202(n+1))`
-/

namespace A320153.P11800194089756562018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320202 (n + n) + A210628 (A320202 (n + 1)).toNat

end

end A320153.P11800194089756562018

/-!
# A320154: Number of series-reduced balanced rooted trees whose leaves form a set partition of {1,...,n}.

The programs for A320154, there is no canonical definition to state claims against.
-/

/-! ## A320154.P4919321769495158594

`A004719(A347340(n+1)+1)`
-/

namespace A320154.P4919321769495158594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A347340 (n + 1) + 1).toNat

end

end A320154.P4919321769495158594

/-! ## A320154.P8702548186491284249

`A028310(A347340(n+1)+1)`
-/

namespace A320154.P8702548186491284249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A347340 (n + 1) + 1).toNat

end

end A320154.P8702548186491284249

/-! ## A320154.P1885154600856116489

`A130747(2*A347340(n+1)+1)`
-/

namespace A320154.P1885154600856116489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (2 * A347340 (n + 1) + 1).toNat

end

end A320154.P1885154600856116489

/-!
# A320155: Number of series-reduced balanced rooted trees with n labeled leaves.

The programs for A320155, there is no canonical definition to state claims against.
-/

/-! ## A320155.P10829242934956682056

`∏{e}[8^n-2^n, A214188(#)]`
-/

namespace A320155.P10829242934956682056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A214188 (Nat.factorization (f1 n).natAbs p)

end

end A320155.P10829242934956682056

/-! ## A320155.P11093785271381664798

`A000296(3^C(a(n-1), 68)+n)` with `a(0)=1`
-/

namespace A320155.P11093785271381664798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000296 (3 ^ Nat.choose (a (n - 1)).toNat 68 + n)

end

end A320155.P11093785271381664798

/-! ## A320155.P15283833115376983839

`A000296(comp[A093565(n)])`
-/

namespace A320155.P15283833115376983839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093565 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000296 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A320155.P15283833115376983839

/-!
# A320160: Number of series-reduced balanced rooted trees whose leaves form an integer partition of n.

The programs for A320160, there is no canonical definition to state claims against.
-/

/-! ## A320160.P15909710258974182299

`A320266(2^(n+1))`
-/

namespace A320160.P15909710258974182299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320266 (2 ^ (n + 1))

end

end A320160.P15909710258974182299

/-! ## A320160.P12387660273902008980

`record[A320266(A059268(n))]`
-/

namespace A320160.P12387660273902008980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320266 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320160.P12387660273902008980

/-! ## A320160.P2572886765963642656

`record[A320266(A072345(n))]`
-/

namespace A320160.P2572886765963642656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320266 (A072345 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320160.P2572886765963642656

/-! ## A320160.P6609955114150920958

`record[A320266(A097110(n))]`
-/

namespace A320160.P6609955114150920958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320266 (A097110 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320160.P6609955114150920958

/-! ## A320160.P12846079633689466729

`record[A320266(A099627(n))]`
-/

namespace A320160.P12846079633689466729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320266 (A099627 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320160.P12846079633689466729

/-!
# A320167: Regular triangle where T(n,k) = Sum (-1)^i, where the sum is over all factorizations of n into i factors that are all > 1 and <= k.

The programs for A320167, there is no canonical definition to state claims against.
-/

/-! ## A320167.P17995766591120778055

`A087049(A347034(n+1))-Δ[A010054(n)]²`
-/

namespace A320167.P17995766591120778055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A347034 (n + 1)).toNat - (f1 (n + 1) - f1 n) ^ 2

end

end A320167.P17995766591120778055

/-! ## A320167.P5396522575601002811

`A087049(A347034(n+1))-Δ[A035214(n)]²`
-/

namespace A320167.P5396522575601002811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A347034 (n + 1)).toNat - (f1 (n + 1) - f1 n) ^ 2

end

end A320167.P5396522575601002811

/-! ## A320167.P4315860821996785530

`A128407(n+1)+A011701(A208355(n))`
-/

namespace A320167.P4315860821996785530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128407 (n + 1) + A011701 (A208355 n).toNat

end

end A320167.P4315860821996785530

/-! ## A320167.P11168232459775279592

`A087003(∑[A269990(n+2)+6*n²-∑[n]])`
-/

namespace A320167.P11168232459775279592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269990 (n + 2) + ((6 * n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A320167.P11168232459775279592

/-! ## A320167.P1404293169741627963

`A131533(A312777(n)+A224310(n+1))`
-/

namespace A320167.P1404293169741627963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131533 (A312777 n + A224310 (n + 1)).toNat

end

end A320167.P1404293169741627963

/-!
# A320169: Number of balanced enriched p-trees of weight n.

The programs for A320169, there is no canonical definition to state claims against.
-/

/-! ## A320169.P4888835415127510819

`A002024(A341072(n)+A058621(n))`
-/

namespace A320169.P4888835415127510819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A341072 n + A058621 n).toNat

end

end A320169.P4888835415127510819

/-!
# A320170: Every pair of consecutive numbers sums to a palindrome, starting with a(0)=1; a(1)=10, and taking a(n) = smallest number > a(n-2).

The programs for A320170, there is no canonical definition to state claims against.
-/

/-! ## A320170.P9922010937300374030

`A002113(n+10)-a(n-1)` with `a(0)=1`
-/

namespace A320170.P9922010937300374030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002113 (n + 10) - a (n - 1)

end

end A320170.P9922010937300374030

/-! ## A320170.P1041789941103950743

`A000030(n)+10*n-a(n-1)` with `a(0)=1`
-/

namespace A320170.P1041789941103950743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000030 n + ((10 * n : ℤ) - a (n - 1))

end

end A320170.P1041789941103950743

/-! ## A320170.P12292847292340357673

`A262038(A008592(n))-a(n-1)` with `a(0)=1`
-/

namespace A320170.P12292847292340357673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262038 (A008592 n).toNat - a (n - 1)

end

end A320170.P12292847292340357673

/-!
# A320171: Number of series-reduced rooted identity trees whose leaves are integer partitions whose multiset union is an integer partition of n.

The programs for A320171, there is no canonical definition to state claims against.
-/

/-! ## A320171.P12983267136285909747

`A103221(A006192(n+1)+A000123(2*n+1))`
-/

namespace A320171.P12983267136285909747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A006192 (n + 1) + A000123 (2 * n + 1)).toNat

end

end A320171.P12983267136285909747

/-! ## A320171.P4729328424903089276

`∑[A256544(A007840(n))]`
-/

namespace A320171.P4729328424903089276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256544 (A007840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320171.P4729328424903089276

/-! ## A320171.P3549653478189539326

`A193990(A360168(n+1))`
-/

namespace A320171.P3549653478189539326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193990 (A360168 (n + 1)).toNat

end

end A320171.P3549653478189539326

/-!
# A320172: Number of series-reduced balanced rooted identity trees whose leaves are integer partitions whose multiset union is an integer partition of n.

The programs for A320172, there is no canonical definition to state claims against.
-/

/-! ## A320172.P18096376455321023469

`A140358(A026876(n))`
-/

namespace A320172.P18096376455321023469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140358 (A026876 n).toNat

end

end A320172.P18096376455321023469

/-! ## A320172.P16213985244533107992

`A185195(A281345(n))`
-/

namespace A320172.P16213985244533107992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185195 (A281345 n).toNat

end

end A320172.P16213985244533107992

/-! ## A320172.P1643329537390655826

`A375815(A150717(n))`
-/

namespace A320172.P1643329537390655826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375815 (A150717 n).toNat

end

end A320172.P1643329537390655826

/-! ## A320172.P1250358071443255024

`A375815(A150718(n))`
-/

namespace A320172.P1250358071443255024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375815 (A150718 n).toNat

end

end A320172.P1250358071443255024

/-!
# A320173: Number of inequivalent colorings of series-reduced balanced rooted trees with n leaves.

The programs for A320173, there is no canonical definition to state claims against.
-/

/-! ## A320173.P10701600025099768428

`record[A302545(A024649(n))]`
-/

namespace A320173.P10701600025099768428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302545 (A024649 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320173.P10701600025099768428

/-! ## A320173.P15136939355882177082

`record[A302545(A099146(n+1))]`
-/

namespace A320173.P15136939355882177082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302545 (A099146 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A320173.P15136939355882177082

/-! ## A320173.P18342322777426933928

`record[A302545(n)]%A002007(n)`
-/

namespace A320173.P18342322777426933928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A002007 n)

end

end A320173.P18342322777426933928

/-!
# A320174: Number of series-reduced rooted trees whose leaves are constant integer partitions whose multiset union is an integer partition of n.

The programs for A320174, there is no canonical definition to state claims against.
-/

/-! ## A320174.P16684368051885683735

`A277192(A148434(n+1))`
-/

namespace A320174.P16684368051885683735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (A148434 (n + 1)).toNat

end

end A320174.P16684368051885683735

/-! ## A320174.P13964705750078127944

`A105149(A221907(n)-n)`
-/

namespace A320174.P13964705750078127944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105149 (A221907 n - (n : ℤ)).toNat

end

end A320174.P13964705750078127944

/-!
# A320175: Number of series-reduced rooted trees whose leaves are strict integer partitions whose multiset union is an integer partition of n.

The programs for A320175, there is no canonical definition to state claims against.
-/

/-! ## A320175.P11506263892484050237

`A141268(n+1)+A003056(floor(n^abs(1-n)/2))`
-/

namespace A320175.P11506263892484050237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141268 (n + 1) + A003056 ⌊(n : ℚ) ^ (|1 - (n : ℤ)| : ℤ) / 2⌋.toNat

end

end A320175.P11506263892484050237

/-! ## A320175.P4295453135826176608

`A001462(A088368(n))+Δ[A076864(n)]`
-/

namespace A320175.P4295453135826176608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A088368 n).toNat + (f1 (n + 1) - f1 n)

end

end A320175.P4295453135826176608

/-! ## A320175.P4584314877206683770

`A106432(A061981(n))+Δ[A076864(n)]`
-/

namespace A320175.P4584314877206683770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A061981 n).toNat + (f1 (n + 1) - f1 n)

end

end A320175.P4584314877206683770

/-!
# A320176: Number of series-reduced rooted trees whose leaves are strict integer partitions whose multiset union is a strict integer partition of n.

The programs for A320176, there is no canonical definition to state claims against.
-/

/-! ## A320176.P12636824261389577218

`A321662(∑[A287377(n)])`
-/

namespace A320176.P12636824261389577218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321662 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A320176.P12636824261389577218

/-! ## A320176.P4634603582592708269

`A321662(∑[A287378(n)])`
-/

namespace A320176.P4634603582592708269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321662 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A320176.P4634603582592708269

/-! ## A320176.P2597178963265395339

`A036445(A032139(n+1))`
-/

namespace A320176.P2597178963265395339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (A032139 (n + 1)).toNat

end

end A320176.P2597178963265395339

/-! ## A320176.P10002450619207837745

`A321662(A032555(n+1))`
-/

namespace A320176.P10002450619207837745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321662 (A032555 (n + 1)).toNat

end

end A320176.P10002450619207837745

/-! ## A320176.P10971193712242832217

`A321662(A032557(n+1))`
-/

namespace A320176.P10971193712242832217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321662 (A032557 (n + 1)).toNat

end

end A320176.P10971193712242832217

/-!
# A320177: Number of series-reduced rooted identity trees whose leaves are strict integer partitions whose multiset union is an integer partition of n.

The programs for A320177, there is no canonical definition to state claims against.
-/

/-! ## A320177.P13442385379044231271

`A318919(A291559(n)+1)`
-/

namespace A320177.P13442385379044231271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318919 (A291559 n + 1).toNat

end

end A320177.P13442385379044231271

/-! ## A320177.P783761112819962334

`A288168(A027434(n!))-1`
-/

namespace A320177.P783761112819962334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288168 (A027434 (Nat.factorial n)).toNat - 1

end

end A320177.P783761112819962334

/-! ## A320177.P17149402890861813312

`A000267(round(sqrt(A138215(n)-1)))`
-/

namespace A320177.P17149402890861813312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (SequenceMachineLib.roundAway (Real.sqrt (A138215 n - 1 : ℝ))).toNat

end

end A320177.P17149402890861813312

/-! ## A320177.P16224101596067092851

`A210592(n)+A061399(A026627(n))`
-/

namespace A320177.P16224101596067092851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210592 n + A061399 (A026627 n).toNat

end

end A320177.P16224101596067092851

/-!
# A320178: Number of series-reduced rooted identity trees whose leaves are constant integer partitions whose multiset union is an integer partition of n.

The programs for A320178, there is no canonical definition to state claims against.
-/

/-! ## A320178.P674696467407240969

`A034973(A005246(2*n+1)+A000043(n+1))`
-/

namespace A320178.P674696467407240969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A005246 (2 * n + 1) + A000043 (n + 1)).toNat

end

end A320178.P674696467407240969

/-! ## A320178.P7396634940519197704

`A175088(a(n-1))-1` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A320178.P7396634940519197704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  A175088 (a (n - 1)).toNat - 1

end

end A320178.P7396634940519197704

/-! ## A320178.P13029617077049256883

`round(sqrt(∑[A000010((n+2)!+1)/2]))`
-/

namespace A320178.P13029617077049256883
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (Nat.factorial (n + 2) + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))

end

end A320178.P13029617077049256883

/-!
# A320179: Regular triangle where T(n,k) is the number of unlabeled series-reduced rooted trees with n leaves in which every leaf is at height k.

The programs for A320179, there is no canonical definition to state claims against.
-/

/-! ## A320179.P17565863351204443841

`A127096(n+1)%A262228(A353836(n))`
-/

namespace A320179.P17565863351204443841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127096 (n + 1)) (A262228 (A353836 n).toNat)

end

end A320179.P17565863351204443841

/-! ## A320179.P6905714143047358959

`C(A123578(A332670(n)), A127568(n))`
-/

namespace A320179.P6905714143047358959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A123578 (A332670 n).toNat).toNat (A127568 n).toNat

end

end A320179.P6905714143047358959

/-! ## A320179.P13226551554137206940

`A245552(A200893(n+1))`
-/

namespace A320179.P13226551554137206940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245552 (A200893 (n + 1)).toNat

end

end A320179.P13226551554137206940

/-! ## A320179.P8785510666982602131

`∑{d}[A200893(n+1), A085906(#)]`
-/

namespace A320179.P8785510666982602131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A085906 d

end

end A320179.P8785510666982602131

/-! ## A320179.P16217902514821724793

`A010054(A266158(n+1))*A200893(n+1)`
-/

namespace A320179.P16217902514821724793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A266158 (n + 1)).toNat * A200893 (n + 1)

end

end A320179.P16217902514821724793

/-!
# A320180: Number of solid standard Young tableaux of n cells and height <= 3.

The programs for A320180, there is no canonical definition to state claims against.
-/

/-! ## A320180.P16748325754102536376

`A215086(∑[n+3]+n+3)`
-/

namespace A320180.P16748325754102536376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A320180.P16748325754102536376

/-! ## A320180.P4153150298158062588

`A127757(A183155(n)+A137961(n))`
-/

namespace A320180.P4153150298158062588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A183155 n + A137961 n).toNat

end

end A320180.P4153150298158062588

/-! ## A320180.P3957487166019310521

`A279573(n)+A024327(A206227(n))`
-/

namespace A320180.P3957487166019310521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279573 n + A024327 (A206227 n).toNat

end

end A320180.P3957487166019310521

/-!
# A320181: Number of solid standard Young tableaux of n cells and height <= 4.

The programs for A320181, there is no canonical definition to state claims against.
-/

/-! ## A320181.P12051990404033822395

`A215086(A052905(n+2))`
-/

namespace A320181.P12051990404033822395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A052905 (n + 2)).toNat

end

end A320181.P12051990404033822395

/-! ## A320181.P11863055021062742982

`A215086(eq[4, A025581(n)])`
-/

namespace A320181.P11863055021062742982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320181.P11863055021062742982

/-! ## A320181.P7786849794720585175

`A215086(Δ[A055831(n+4)])`
-/

namespace A320181.P7786849794720585175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (f1 (n + 1) - f1 n).toNat

end

end A320181.P7786849794720585175

/-! ## A320181.P7042809852941198023

`A215086(A000217(n+5)-5)`
-/

namespace A320181.P7042809852941198023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A000217 (n + 5) - 5).toNat

end

end A320181.P7042809852941198023

/-! ## A320181.P15451173370127623413

`A215086(eq[5, A004736(n+1)])`
-/

namespace A320181.P15451173370127623413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320181.P15451173370127623413

/-!
# A320182: Number of solid standard Young tableaux of n cells and height <= 5.

The programs for A320182, there is no canonical definition to state claims against.
-/

/-! ## A320182.P11183624983555683784

`A215086(A055999(n+3))`
-/

namespace A320182.P11183624983555683784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A055999 (n + 3)).toNat

end

end A320182.P11183624983555683784

/-! ## A320182.P10461279803128659993

`A215086(Δ[A026054(n+3)])`
-/

namespace A320182.P10461279803128659993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (f1 (n + 1) - f1 n).toNat

end

end A320182.P10461279803128659993

/-! ## A320182.P9323774175814714375

`A215086(A046691(n+4)-2)`
-/

namespace A320182.P9323774175814714375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A046691 (n + 4) - 2).toNat

end

end A320182.P9323774175814714375

/-! ## A320182.P7957986931014780681

`A215086(A000217(n+6)-6)`
-/

namespace A320182.P7957986931014780681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A000217 (n + 6) - 6).toNat

end

end A320182.P7957986931014780681

/-! ## A320182.P5525784004188083100

`A215086(A000124(n+6)-7)`
-/

namespace A320182.P5525784004188083100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A000124 (n + 6) - 7).toNat

end

end A320182.P5525784004188083100

/-!
# A320183: Number of solid standard Young tableaux of n cells and height <= 6.

The programs for A320183, there is no canonical definition to state claims against.
-/

/-! ## A320183.P1297202436211680570

`A215086(A052905(n+4)-2)`
-/

namespace A320183.P1297202436211680570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A052905 (n + 4) - 2).toNat

end

end A320183.P1297202436211680570

/-! ## A320183.P17629230157316112933

`A215086(A000096(n+6)-6)`
-/

namespace A320183.P17629230157316112933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A000096 (n + 6) - 6).toNat

end

end A320183.P17629230157316112933

/-! ## A320183.P12626440686131537066

`A215086(A000217(n+7)-7)`
-/

namespace A320183.P12626440686131537066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A000217 (n + 7) - 7).toNat

end

end A320183.P12626440686131537066

/-! ## A320183.P15006690707270272101

`A215086(A000124(n+7)-8)`
-/

namespace A320183.P15006690707270272101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A000124 (n + 7) - 8).toNat

end

end A320183.P15006690707270272101

/-! ## A320183.P14664602497726120549

`A215086(eq[7, A004736(n+1)])`
-/

namespace A320183.P14664602497726120549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320183.P14664602497726120549

/-!
# A320184: Number of solid standard Young tableaux of n cells and height <= 7.

The programs for A320184, there is no canonical definition to state claims against.
-/

/-! ## A320184.P2923023741020008062

`A215086(eq[7, A025581(n)])`
-/

namespace A320184.P2923023741020008062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320184.P2923023741020008062

/-! ## A320184.P17957905301242253516

`A215086(A000217(n+8)-8)`
-/

namespace A320184.P17957905301242253516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A000217 (n + 8) - 8).toNat

end

end A320184.P17957905301242253516

/-! ## A320184.P6196901498844153988

`A215086(eq[8, A004736(n+1)])`
-/

namespace A320184.P6196901498844153988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320184.P6196901498844153988

/-! ## A320184.P7201712423219063061

`A215086(A052905(n+4)+n+5)`
-/

namespace A320184.P7201712423219063061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A052905 (n + 4) + (n + 5 : ℤ)).toNat

end

end A320184.P7201712423219063061

/-! ## A320184.P7075920847561917557

`A215086(2*n+A046691(n+4)+11)`
-/

namespace A320184.P7075920847561917557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 ((2 * n : ℤ) + (A046691 (n + 4) + 11)).toNat

end

end A320184.P7075920847561917557

/-!
# A320185: Number of solid standard Young tableaux of n cells and height <= 8.

The programs for A320185, there is no canonical definition to state claims against.
-/

/-! ## A320185.P13731250090512735555

`A215086(Δ[A111144(n)]+1)`
-/

namespace A320185.P13731250090512735555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (f1 (n + 1) - f1 n + 1).toNat

end

end A320185.P13731250090512735555

/-! ## A320185.P1244051997899202570

`A215086(A000217(n+9)-9)`
-/

namespace A320185.P1244051997899202570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A000217 (n + 9) - 9).toNat

end

end A320185.P1244051997899202570

/-! ## A320185.P15689339354961469367

`A215086(A161680(n+10)-9)`
-/

namespace A320185.P15689339354961469367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A161680 (n + 10) - 9).toNat

end

end A320185.P15689339354961469367

/-! ## A320185.P17265547515708549661

`A215086(A000124(n+8)+n-1)`
-/

namespace A320185.P17265547515708549661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A000124 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A320185.P17265547515708549661

/-! ## A320185.P3938017765579528668

`A215086(A052905(n+5)+n+5)`
-/

namespace A320185.P3938017765579528668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A052905 (n + 5) + (n + 5 : ℤ)).toNat

end

end A320185.P3938017765579528668

/-!
# A320186: Number of solid standard Young tableaux of n cells and height <= 9.

The programs for A320186, there is no canonical definition to state claims against.
-/

/-! ## A320186.P12235043779161605776

`A215086(A056000(n+6))`
-/

namespace A320186.P12235043779161605776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A056000 (n + 6)).toNat

end

end A320186.P12235043779161605776

/-! ## A320186.P14129743858028093479

`A215086(Δ[A111144(n+1)])`
-/

namespace A320186.P14129743858028093479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (f1 (n + 1) - f1 n).toNat

end

end A320186.P14129743858028093479

/-! ## A320186.P7617269985981621264

`A215086(A027379(n+8)-7)`
-/

namespace A320186.P7617269985981621264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A027379 (n + 8) - 7).toNat

end

end A320186.P7617269985981621264

/-! ## A320186.P1566203328591570454

`A215086(A000217(n+10)-10)`
-/

namespace A320186.P1566203328591570454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A000217 (n + 10) - 10).toNat

end

end A320186.P1566203328591570454

/-! ## A320186.P13159102267617964343

`A215086(A052905(n+6)+n+5)`
-/

namespace A320186.P13159102267617964343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A052905 (n + 6) + (n + 5 : ℤ)).toNat

end

end A320186.P13159102267617964343

/-!
# A320187: Number of solid standard Young tableaux of n cells and height <= 10.

The programs for A320187, there is no canonical definition to state claims against.
-/

/-! ## A320187.P14704550192702314553

`A215086(A000217(n+11)-11)`
-/

namespace A320187.P14704550192702314553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A000217 (n + 11) - 11).toNat

end

end A320187.P14704550192702314553

/-! ## A320187.P13064287588101808982

`A215086(A161680(n+12)-11)`
-/

namespace A320187.P13064287588101808982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A161680 (n + 12) - 11).toNat

end

end A320187.P13064287588101808982

/-! ## A320187.P6643887691563840071

`A215086(eq[11, A004736(n+1)])`
-/

namespace A320187.P6643887691563840071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A320187.P6643887691563840071

/-! ## A320187.P9740701030768212913

`A215086(A027379(n+8)+n+3)`
-/

namespace A320187.P9740701030768212913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A027379 (n + 8) + (n + 3 : ℤ)).toNat

end

end A320187.P9740701030768212913

/-! ## A320187.P17707775484072697823

`A215086(A052905(n+7)+n+5)`
-/

namespace A320187.P17707775484072697823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215086 (A052905 (n + 7) + (n + 5 : ℤ)).toNat

end

end A320187.P17707775484072697823

/-!
# A320190: Number of integer solutions to a^2 + 2*b^2 + 3*c^2 + 9*d^2 = n.

The programs for A320190, there is no canonical definition to state claims against.
-/

/-! ## A320190.P4803025535347560363

`A258850(A014374(n))+A029594(n)`
-/

namespace A320190.P4803025535347560363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258850 (A014374 n).toNat + A029594 n

end

end A320190.P4803025535347560363

/-! ## A320190.P1149011846654114523

`A320191(n)+A010673(A008887(n))`
-/

namespace A320190.P1149011846654114523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320191 n + A010673 (A008887 n).toNat

end

end A320190.P1149011846654114523

/-! ## A320190.P10202534686424140202

`A320191(n)+A004216(A220398(n+1))`
-/

namespace A320190.P10202534686424140202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320191 n + A004216 (A220398 (n + 1)).toNat

end

end A320190.P10202534686424140202

/-!
# A320191: Number of integer solutions to a^2 + 2*b^2 + 3*c^2 + 10*d^2 = n.

The programs for A320191, there is no canonical definition to state claims against.
-/

/-! ## A320191.P13320424605536428326

`A320190(n)-A004216(A220398(n+1))`
-/

namespace A320191.P13320424605536428326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320190 n - A004216 (A220398 (n + 1)).toNat

end

end A320191.P13320424605536428326

/-! ## A320191.P15125670499524198744

`A340988(A268448(n+2))+A029594(n)`
-/

namespace A320191.P15125670499524198744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A268448 (n + 2)).toNat + 91) + A029594 n

end

end A320191.P15125670499524198744

/-!
# A320192: Number of summation terms of the reciprocal integer squares series that gives the best approximation to n terms of the Euler product for zeta(2).

The programs for A320192, there is no canonical definition to state claims against.
-/

/-! ## A320192.P14422877347454975296

`A328655(n+1)-A091225(A071731(n))`
-/

namespace A320192.P14422877347454975296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328655 (n + 1) - A091225 (A071731 n).toNat

end

end A320192.P14422877347454975296

/-! ## A320192.P7103172713224026487

`A328655(n+1)-A091225(A071739(n))`
-/

namespace A320192.P7103172713224026487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328655 (n + 1) - A091225 (A071739 n).toNat

end

end A320192.P7103172713224026487

/-! ## A320192.P3112866328384915641

`A328655(n+1)-A016389(A323728(n+1))`
-/

namespace A320192.P3112866328384915641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328655 (n + 1) - A016389 (A323728 (n + 1)).toNat

end

end A320192.P3112866328384915641

/-!
# A320193: Number of integer solutions to a^2 + 2*b^2 + 4*c^2 + 4*d^2 = n.

The programs for A320193, there is no canonical definition to state claims against.
-/

/-! ## A320193.P3975675056958258435

`(A320149(n)+A113416(n))/2`
-/

namespace A320193.P3975675056958258435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320149 n + A113416 n : ℚ) / 2

end

end A320193.P3975675056958258435

/-! ## A320193.P2246384563012338826

`A014682(A320149(n)+A113416(n))`
-/

namespace A320193.P2246384563012338826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A320149 n + A113416 n).toNat

end

end A320193.P2246384563012338826

/-! ## A320193.P3161538205937645523

`A001281(A320149(n)+A113416(n))`
-/

namespace A320193.P3161538205937645523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A320149 n + A113416 n).toNat

end

end A320193.P3161538205937645523

/-! ## A320193.P14064054101784156812

`A004525(A320149(n)+A113416(n))`
-/

namespace A320193.P14064054101784156812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A320149 n + A113416 n).toNat

end

end A320193.P14064054101784156812

/-! ## A320193.P3795373114463050204

`A004526(A320149(n)+A113416(n))`
-/

namespace A320193.P3795373114463050204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A320149 n + A113416 n).toNat

end

end A320193.P3795373114463050204

/-! ## A320193.P1055514176041598372

`A006370(A320149(n)+A113416(n))`
-/

namespace A320193.P1055514176041598372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A320149 n + A113416 n).toNat

end

end A320193.P1055514176041598372

/-! ## A320193.P7433887754486303447

`A025480(A320149(n)+A113416(n))`
-/

namespace A320193.P7433887754486303447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A320149 n + A113416 n).toNat

end

end A320193.P7433887754486303447

/-! ## A320193.P2752194086056058023

`A026741(A320149(n)+A113416(n))`
-/

namespace A320193.P2752194086056058023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A320149 n + A113416 n).toNat

end

end A320193.P2752194086056058023

/-! ## A320193.P15232287353903837714

`A032742(A320149(n)+A113416(n))`
-/

namespace A320193.P15232287353903837714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A320149 n + A113416 n).toNat

end

end A320193.P15232287353903837714

/-! ## A320193.P16506471258471217161

`A008619(A113416(n)+A320149(n)-1)`
-/

namespace A320193.P16506471258471217161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A113416 n + (A320149 n - 1)).toNat

end

end A320193.P16506471258471217161

/-! ## A320193.P8799899946938593535

`A008619(A113416(n)-(1-A320149(n)))`
-/

namespace A320193.P8799899946938593535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A113416 n - (1 - A320149 n)).toNat

end

end A320193.P8799899946938593535

/-! ## A320193.P7662867366205536251

`A320149(n)-A004526(A320149(n)-A113416(n))`
-/

namespace A320193.P7662867366205536251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320149 n - A004526 (A320149 n - A113416 n).toNat

end

end A320193.P7662867366205536251

/-!
# A320194: Number of integer solutions to a^2 + 2*b^2 + 4*c^2 + 5*d^2 = n.

The programs for A320194, there is no canonical definition to state claims against.
-/

/-! ## A320194.P8516652651873388909

`A320195(A187829(n+1))-Δ[A033717(n)]`
-/

namespace A320194.P8516652651873388909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320195 (A187829 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A320194.P8516652651873388909

/-!
# A320195: Number of integer solutions to a^2 + 2*b^2 + 4*c^2 + 6*d^2 = n.

The programs for A320195, there is no canonical definition to state claims against.
-/

/-! ## A320195.P14533780128168390921

`A320196(A187829(n+1))-Δ[A033717(n)]`
-/

namespace A320195.P14533780128168390921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320196 (A187829 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A320195.P14533780128168390921

/-!
# A320196: Number of integer solutions to a^2 + 2*b^2 + 4*c^2 + 7*d^2 = n.

The programs for A320196, there is no canonical definition to state claims against.
-/

/-! ## A320196.P12569468879009081295

`A033740(n)-A167688(A339724(n+1))`
-/

namespace A320196.P12569468879009081295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033740 n - A167688 (A339724 (n + 1)).toNat

end

end A320196.P12569468879009081295

/-! ## A320196.P464781636607634666

`and(A033740(n), A131762(A187829(n+1)))`
-/

namespace A320196.P464781636607634666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033740 n) (A131762 (A187829 (n + 1)).toNat)

end

end A320196.P464781636607634666

/-! ## A320196.P6294685612325019123

`A033720(A187829(n+1))-Δ[A033717(n)]`
-/

namespace A320196.P6294685612325019123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033720 (A187829 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A320196.P6294685612325019123

/-!
# A320197: Number of integer solutions to a^2 + 2*b^2 + 4*c^2 + 9*d^2 = n.

The programs for A320197, there is no canonical definition to state claims against.
-/

/-! ## A320197.P13588126380501907731

`A320198(A187829(n+1))-Δ[A033717(n)]`
-/

namespace A320197.P13588126380501907731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320198 (A187829 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A320197.P13588126380501907731

/-!
# A320198: Number of integer solutions to a^2 + 2*b^2 + 4*c^2 + 10*d^2 = n.

The programs for A320198, there is no canonical definition to state claims against.
-/

/-! ## A320198.P3460263686926908252

`A320199(A187829(n+1))-Δ[A033717(n)]`
-/

namespace A320198.P3460263686926908252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320199 (A187829 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A320198.P3460263686926908252

/-!
# A320199: Number of integer solutions to a^2 + 2*b^2 + 4*c^2 + 11*d^2 = n.

The programs for A320199, there is no canonical definition to state claims against.
-/

/-! ## A320199.P14938381270800889056

`A090106(A033756(n))`
-/

namespace A320199.P14938381270800889056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (A033756 n).toNat

end

end A320199.P14938381270800889056

/-! ## A320199.P5787323699625811243

`A033756(n)%A084482(n+1)`
-/

namespace A320199.P5787323699625811243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033756 n) (A084482 (n + 1))

end

end A320199.P5787323699625811243

/-! ## A320199.P6590312106961427484

`A033756(n)%A112058(A094441(n))`
-/

namespace A320199.P6590312106961427484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033756 n) (A112058 (A094441 n).toNat)

end

end A320199.P6590312106961427484

/-! ## A320199.P1867448914671805887

`A033756(n)+A010815(A075110(n+4))`
-/

namespace A320199.P1867448914671805887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033756 n + A010815 (A075110 (n + 4)).toNat

end

end A320199.P1867448914671805887

/-! ## A320199.P15122709509523354926

`A033756(n)+A000007(A392712(n+4))`
-/

namespace A320199.P15122709509523354926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033756 n + A000007 (A392712 (n + 4)).toNat

end

end A320199.P15122709509523354926

