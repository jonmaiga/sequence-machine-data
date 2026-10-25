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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A066100: Primes p such that p^6 + p^3 + 1 is prime.

The programs for A066100, there is no canonical definition to state claims against.
-/

/-! ## A066100.P7216382279350238125

`sqrt(A063783(n+1))`
-/

namespace A066100.P7216382279350238125
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A063783 (n + 1) : ℝ)

end

end A066100.P7216382279350238125

/-! ## A066100.P17015648857309736869

`root(A063783(n*((-1)^∑{e}[n+1, #])²+1), 2)`
-/

namespace A066100.P17015648857309736869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A063783 ((n : ℤ) * ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) ^ 2 + 1).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A066100.P17015648857309736869

/-! ## A066100.P4129319618668314536

`or(root(A063783(n+1), 2), A066829(n+1))`
-/

namespace A066100.P4129319618668314536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A063783 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A066829 (n + 1))

end

end A066100.P4129319618668314536

/-! ## A066100.P11576798106424652767

`A006530(root(A063783(n+1), 2))`
-/

namespace A066100.P11576798106424652767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A063783 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A066100.P11576798106424652767

/-! ## A066100.P8917465629917796100

`A007947(root(A063783(n+1), 2))`
-/

namespace A066100.P8917465629917796100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A063783 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A066100.P8917465629917796100

/-! ## A066100.P5399824063533881904

`A020639(root(A063783(n+1), 2))`
-/

namespace A066100.P5399824063533881904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A063783 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A066100.P5399824063533881904

/-! ## A066100.P4788564192653333817

`A007318(∑[n])*p?[A153439(n+1)]`
-/

namespace A066100.P4788564192653333817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A066100.P4788564192653333817

/-! ## A066100.P8662022293495178969

`∩[A040067(n+1), A153439(n+1)]`
-/

namespace A066100.P8662022293495178969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066100.P8662022293495178969

/-! ## A066100.P9522528136620958028

`∩[A040069(n+1), A153439(n+1)]`
-/

namespace A066100.P9522528136620958028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066100.P9522528136620958028

/-!
# A066102: Number of distinct prime factors of sigma_4(n), the sum of the 4th powers of divisors of n.

The programs for A066102, the canonical program `A066102.P10438851907753370458` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066102 has offset 1).

The definition of A066102 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001159, A001221, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066102.P10438851907753370458

`A001221(A001159(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066102

/-- `A001221(A001159(n+1))` -/
def P10438851907753370458.Spec : Prop :=
  ∀ n, P10438851907753370458.a n = A066102 (n + 1)

theorem P10438851907753370458.correct : P10438851907753370458.Spec := by
  intro n
  simp only [A066102, Nat.add_sub_cancel]

end A066102

/-! ## A066102.P2880840466679220878

`∑{e}[∑{d}[n+1, #^4], gcd(3, #)]`
-/

namespace A066102.P2880840466679220878
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd 3 (Nat.factorization (f1 n) p)

end

end A066102.P2880840466679220878

namespace A066102

/-- `∑{e}[∑{d}[n+1, #^4], gcd(3, #)]` -/
def P2880840466679220878.Spec : Prop :=
  ∀ n, (P2880840466679220878.a n : ℤ) = A066102 (n + 1)

end A066102

/-! ## A066102.P9027793833238694056

`∑{e}[∑{d}[n+1, #^4], log2(#)!]`
-/

namespace A066102.P9027793833238694056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (Nat.factorization (f1 n) p : ℝ))).toNat

end

end A066102.P9027793833238694056

namespace A066102

/-- `∑{e}[∑{d}[n+1, #^4], log2(#)!]` -/
def P9027793833238694056.Spec : Prop :=
  ∀ n, (P9027793833238694056.a n : ℤ) = A066102 (n + 1)

end A066102

/-! ## A066102.P4644811249172995206

`∑{e}[∑{d}[n+1, #^4], floor(sqrt(#))]`
-/

namespace A066102.P4644811249172995206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.sqrt (Nat.factorization (f1 n) p)

end

end A066102.P4644811249172995206

namespace A066102

/-- `∑{e}[∑{d}[n+1, #^4], floor(sqrt(#))]` -/
def P4644811249172995206.Spec : Prop :=
  ∀ n, (P4644811249172995206.a n : ℤ) = A066102 (n + 1)

end A066102

/-! ## A066102.P17955523758906306726

`∑{e}[A001159(n+1), A000009(#)]`
-/

namespace A066102.P17955523758906306726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000009 (Nat.factorization (f1 n).natAbs p)

end

end A066102.P17955523758906306726

namespace A066102

/-- `∑{e}[A001159(n+1), A000009(#)]` -/
def P17955523758906306726.Spec : Prop :=
  ∀ n, P17955523758906306726.a n = A066102 (n + 1)

end A066102

/-!
# A066104: a(2n) = 2n, a(2n+1) = 4(n+1).

The programs for A066104, the canonical program `A066104.P13868707387582401079` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066104 has offset 0).

The definition of A066104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066104.P4791871446676734164

`(3*n+2-(n+2)*(-1)^n)/2`
-/

namespace A066104.P4791871446676734164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n + 2 : ℤ) - (n + 2 : ℤ) * (-1) ^ n : ℚ) / 2

end

end A066104.P4791871446676734164

namespace A066104

/-- `(3*n+2-(n+2)*(-1)^n)/2` -/
def P4791871446676734164.Spec : Prop :=
  ∀ n, P4791871446676734164.a n = (A066104 n : ℚ)

end A066104

/-! ## A066104.P13868707387582401079

`2*A065423(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A066104

/-- `2*A065423(n+2)` -/
def P13868707387582401079.Spec : Prop :=
  ∀ n, P13868707387582401079.a n = A066104 n

theorem P13868707387582401079.correct : P13868707387582401079.Spec := by
  intro n
  simp only [A066104]

end A066104

/-! ## A066104.P11802812479196389233

`lcm(2, n+2)-2`
-/

namespace A066104.P11802812479196389233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 2) : ℤ) - 2

end

end A066104.P11802812479196389233

namespace A066104

/-- `lcm(2, n+2)-2` -/
def P11802812479196389233.Spec : Prop :=
  ∀ n, P11802812479196389233.a n = A066104 n

end A066104

/-! ## A066104.P10184439917773658942

`(n+2)*n%2+n`
-/

namespace A066104.P10184439917773658942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (n % 2) + n

end

end A066104.P10184439917773658942

namespace A066104

/-- `(n+2)*n%2+n` -/
def P10184439917773658942.Spec : Prop :=
  ∀ n, (P10184439917773658942.a n : ℤ) = A066104 n

end A066104

/-! ## A066104.P2629122100923056465

`(n+2)*and(1, n)+n`
-/

namespace A066104.P2629122100923056465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.land 1 n + n

end

end A066104.P2629122100923056465

namespace A066104

/-- `(n+2)*and(1, n)+n` -/
def P2629122100923056465.Spec : Prop :=
  ∀ n, (P2629122100923056465.a n : ℤ) = A066104 n

end A066104

/-! ## A066104.P16332506793052771902

`and(n+2, (-1)^n)+n`
-/

namespace A066104.P16332506793052771902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) ((-1) ^ n) + (n : ℤ)

end

end A066104.P16332506793052771902

namespace A066104

/-- `and(n+2, (-1)^n)+n` -/
def P16332506793052771902.Spec : Prop :=
  ∀ n, P16332506793052771902.a n = A066104 n

end A066104

/-! ## A066104.P1106537724409982866

`2*floor((n+1)/gcd(2, n))`
-/

namespace A066104.P1106537724409982866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n + 1 : ℚ) / (Nat.gcd 2 n : ℚ)⌋

end

end A066104.P1106537724409982866

namespace A066104

/-- `2*floor((n+1)/gcd(2, n))` -/
def P1106537724409982866.Spec : Prop :=
  ∀ n, P1106537724409982866.a n = A066104 n

end A066104

/-! ## A066104.P3929147211379267865

`∑[∑[ogf((4x+2x^2)/(1+2x+x^2))]]`
-/

namespace A066104.P3929147211379267865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 2] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066104.P3929147211379267865

namespace A066104

/-- `∑[∑[ogf((4x+2x^2)/(1+2x+x^2))]]` -/
def P3929147211379267865.Spec : Prop :=
  ∀ n, P3929147211379267865.a n = A066104 n

end A066104

/-! ## A066104.P52707652322756361

`ogf((4x+2x^2)/(1-2x^2+x^4))`
-/

namespace A066104.P52707652322756361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 2] [1, 0, -2, 0, 1] n

end

end A066104.P52707652322756361

namespace A066104

/-- `ogf((4x+2x^2)/(1-2x^2+x^4))` -/
def P52707652322756361.Spec : Prop :=
  ∀ n, P52707652322756361.a n = A066104 n

end A066104

/-! ## A066104.P12186328139861786997

`(2*n)²%record[or(6, n-1)]`
-/

namespace A066104.P12186328139861786997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n) ^ 2 : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A066104.P12186328139861786997

namespace A066104

/-- `(2*n)²%record[or(6, n-1)]` -/
def P12186328139861786997.Spec : Prop :=
  ∀ n, P12186328139861786997.a n = A066104 n

end A066104

/-! ## A066104.P6755939883560789893

`2*(gcd(n+2, ∑[n+1])-1)`
-/

namespace A066104.P6755939883560789893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1)

end

end A066104.P6755939883560789893

namespace A066104

/-- `2*(gcd(n+2, ∑[n+1])-1)` -/
def P6755939883560789893.Spec : Prop :=
  ∀ n, P6755939883560789893.a n = A066104 n

end A066104

/-! ## A066104.P6184947796058480309

`2*floor(n²/a(n-1))` with `a(0)=0, a(1)=4`
-/

namespace A066104.P6184947796058480309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  2 * ⌊(n ^ 2 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A066104.P6184947796058480309

namespace A066104

/-- `2*floor(n²/a(n-1))` -/
def P6184947796058480309.Spec : Prop :=
  ∀ n, P6184947796058480309.a n = A066104 n

end A066104

/-! ## A066104.P6429814109917060842

`2*floor(n*n/a(n-1))` with `a(0)=0, a(1)=4`
-/

namespace A066104.P6429814109917060842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  2 * ⌊(n : ℚ) * ((n : ℚ) / (a (n - 1) : ℚ))⌋

end

end A066104.P6429814109917060842

namespace A066104

/-- `2*floor(n*n/a(n-1))` -/
def P6429814109917060842.Spec : Prop :=
  ∀ n, P6429814109917060842.a n = A066104 n

end A066104

/-! ## A066104.P7207784371446156336

`∑{d}[4-a(n-1), n-1+#]` with `a(0)=1`
-/

namespace A066104.P7207784371446156336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((n : ℤ) - 1 + (d : ℤ))

end

end A066104.P7207784371446156336

namespace A066104

/-- `∑{d}[4-a(n-1), n-1+#]` -/
def P7207784371446156336.Spec : Prop :=
  ∀ n, P7207784371446156336.a n = A066104 n

end A066104

/-! ## A066104.P5479678466317041303

`a(n-2)+gcd(4, 2*(n+1))` with `a(0)=0, a(1)=4`
-/

namespace A066104.P5479678466317041303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + Nat.gcd 4 (2 * (n + 1))

end

end A066104.P5479678466317041303

namespace A066104

/-- `a(n-2)+gcd(4, 2*(n+1))` -/
def P5479678466317041303.Spec : Prop :=
  ∀ n, (P5479678466317041303.a n : ℤ) = A066104 n

end A066104

/-! ## A066104.P15169966979832268402

`∑[2*and(1, n)-(a(n-1)-2)]` with `a(0)=0`
-/

namespace A066104.P15169966979832268402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (2 * Nat.land 1 n : ℤ) - (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066104.P15169966979832268402

namespace A066104

/-- `∑[2*and(1, n)-(a(n-1)-2)]` -/
def P15169966979832268402.Spec : Prop :=
  ∀ n, P15169966979832268402.a n = A066104 n

end A066104

/-! ## A066104.P792793731699270420

`∑[6-a(n-1)]-a(n-1)` with `a(0)=0, a(1)=4`
-/

namespace A066104.P792793731699270420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A066104.P792793731699270420

namespace A066104

/-- `∑[6-a(n-1)]-a(n-1)` -/
def P792793731699270420.Spec : Prop :=
  ∀ n, P792793731699270420.a n = A066104 n

end A066104

/-! ## A066104.P59634132204655749

`abs(2-(n+2)*gcd(n+1, n-1))`
-/

namespace A066104.P59634132204655749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((n + 2) * Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℤ)|

end

end A066104.P59634132204655749

namespace A066104

/-- `abs(2-(n+2)*gcd(n+1, n-1))` -/
def P59634132204655749.Spec : Prop :=
  ∀ n, P59634132204655749.a n = A066104 n

end A066104

/-! ## A066104.P5889936275851333461

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=2, a(3)=8`
-/

namespace A066104.P5889936275851333461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 2, 8] fun n a =>
  2 * a (n - 2) - a (n - 4)

end

end A066104.P5889936275851333461

namespace A066104

/-- `2*a(n-2)-a(n-4)` -/
def P5889936275851333461.Spec : Prop :=
  ∀ n, P5889936275851333461.a n = A066104 n

end A066104

/-! ## A066104.P13381535780148997057

`2*floor(lcm(n+1, ∑[n+1])/(n+2))`
-/

namespace A066104.P13381535780148997057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(Nat.lcm (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 2 : ℚ)⌋

end

end A066104.P13381535780148997057

namespace A066104

/-- `2*floor(lcm(n+1, ∑[n+1])/(n+2))` -/
def P13381535780148997057.Spec : Prop :=
  ∀ n, P13381535780148997057.a n = A066104 n

end A066104

/-!
# A066105: Indices of the maximum increasing subsequences of A066848 and A066849.

The programs for A066105, there is no canonical definition to state claims against.
-/

/-! ## A066105.P11986121374135417297

`A118872(A119620(n)+A064704(n+1))`
-/

namespace A066105.P11986121374135417297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118872 (A119620 n + A064704 (n + 1)).toNat

end

end A066105.P11986121374135417297

/-! ## A066105.P4995921595061448994

`eq[A341981(A349732(n+1)), A341981(n)]`
-/

namespace A066105.P4995921595061448994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341981 ((A349732 (n + 1)).toNat + 101)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341981 (n + 101)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066105.P4995921595061448994

/-!
# A066106: a(2n) = (2n)(2n+2); a(2n+1) = 4n + 4.

The programs for A066106, the canonical program `A066106.P205978337921741403` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066106 has offset 0).

The definition of A066106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066106.P205978337921741403

`4*A129889(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066106

/-- `4*A129889(n+1)` -/
def P205978337921741403.Spec : Prop :=
  ∀ n, P205978337921741403.a n = A066106 n

theorem P205978337921741403.correct : P205978337921741403.Spec := by
  intro n
  simp only [A066106]

end A066106

/-! ## A066106.P17569744578212794015

`a(n-2)+4*gcd(n, n%2)` with `a(0)=0, a(1)=4`
-/

namespace A066106.P17569744578212794015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + 4 * Nat.gcd n (n % 2)

end

end A066106.P17569744578212794015

namespace A066106

/-- `a(n-2)+4*gcd(n, n%2)` -/
def P17569744578212794015.Spec : Prop :=
  ∀ n, (P17569744578212794015.a n : ℤ) = A066106 n

end A066106

/-! ## A066106.P10823344285091965006

`(n+1)²-C(a(n-1), and(1, n))` with `a(0)=0`
-/

namespace A066106.P10823344285091965006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1) ^ 2 : ℤ) - (Nat.choose (a (n - 1)).toNat (Nat.land 1 n) : ℤ)

end

end A066106.P10823344285091965006

namespace A066106

/-- `(n+1)²-C(a(n-1), and(1, n))` -/
def P10823344285091965006.Spec : Prop :=
  ∀ n, P10823344285091965006.a n = A066106 n

end A066106

/-! ## A066106.P133663821525148240

`a(n-2)+gcd(4*n, 2*a(n-1))` with `a(0)=0, a(1)=4`
-/

namespace A066106.P133663821525148240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + Nat.gcd (4 * n) (2 * a (n - 1))

end

end A066106.P133663821525148240

namespace A066106

/-- `a(n-2)+gcd(4*n, 2*a(n-1))` -/
def P133663821525148240.Spec : Prop :=
  ∀ n, (P133663821525148240.a n : ℤ) = A066106 n

end A066106

/-! ## A066106.P4925079873935088796

`a(n-2)+4*(n-a(n-1)%n)` with `a(0)=0, a(1)=4`
-/

namespace A066106.P4925079873935088796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + 4 * ((n : ℤ) - Int.tmod (a (n - 1)) (n : ℤ))

end

end A066106.P4925079873935088796

namespace A066106

/-- `a(n-2)+4*(n-a(n-1)%n)` -/
def P4925079873935088796.Spec : Prop :=
  ∀ n, P4925079873935088796.a n = A066106 n

end A066106

/-! ## A066106.P17021102543254000857

`floor((n+1)²-a(n-1)^(-1)^(n+1))` with `a(0)=0`
-/

namespace A066106.P17021102543254000857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((n + 1) ^ 2 : ℚ) - (a (n - 1) : ℚ) ^ ((-1) ^ (n + 1) : ℤ)⌋

end

end A066106.P17021102543254000857

namespace A066106

/-- `floor((n+1)²-a(n-1)^(-1)^(n+1))` -/
def P17021102543254000857.Spec : Prop :=
  ∀ n, P17021102543254000857.a n = A066106 n

end A066106

/-! ## A066106.P692028582931896120

`xor(1, A190716(n+1))+n`
-/

namespace A066106.P692028582931896120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A190716 (n + 1)) + (n : ℤ)

end

end A066106.P692028582931896120

namespace A066106

/-- `xor(1, A190716(n+1))+n` -/
def P692028582931896120.Spec : Prop :=
  ∀ n, P692028582931896120.a n = A066106 n

end A066106

/-! ## A066106.P1574729547697739427

`2*A266074(n)-a(n-1)` with `a(0)=0`
-/

namespace A066106.P1574729547697739427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * A266074 n - a (n - 1)

end

end A066106.P1574729547697739427

namespace A066106

/-- `2*A266074(n)-a(n-1)` -/
def P1574729547697739427.Spec : Prop :=
  ∀ n, P1574729547697739427.a n = A066106 n

end A066106

/-! ## A066106.P2031276739935439391

`4*A135276(n)-a(n-1)` with `a(0)=0`
-/

namespace A066106.P2031276739935439391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * A135276 n - a (n - 1)

end

end A066106.P2031276739935439391

namespace A066106

/-- `4*A135276(n)-a(n-1)` -/
def P2031276739935439391.Spec : Prop :=
  ∀ n, P2031276739935439391.a n = A066106 n

end A066106

/-! ## A066106.P980917128853563914

`A040013(n)*A160791(n)`
-/

namespace A066106.P980917128853563914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040013 n * A160791 n

end

end A066106.P980917128853563914

namespace A066106

/-- `A040013(n)*A160791(n)` -/
def P980917128853563914.Spec : Prop :=
  ∀ n, P980917128853563914.a n = A066106 n

end A066106

/-! ## A066106.P8471916697387623546

`A139598(n)/A133265(n)`
-/

namespace A066106.P8471916697387623546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139598 n : ℚ) / (A133265 n : ℚ)

end

end A066106.P8471916697387623546

namespace A066106

/-- `A139598(n)/A133265(n)` -/
def P8471916697387623546.Spec : Prop :=
  ∀ n, P8471916697387623546.a n = (A066106 n : ℚ)

end A066106

/-! ## A066106.P4097345319481928473

`A190716(n+1)-A114285(n)`
-/

namespace A066106.P4097345319481928473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190716 (n + 1) - A114285 n

end

end A066106.P4097345319481928473

namespace A066106

/-- `A190716(n+1)-A114285(n)` -/
def P4097345319481928473.Spec : Prop :=
  ∀ n, P4097345319481928473.a n = A066106 n

end A066106

/-! ## A066106.P9676430299059842948

`(A026741(n)+1)*A266073(n)`
-/

namespace A066106.P9676430299059842948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026741 n + 1) * A266073 n

end

end A066106.P9676430299059842948

namespace A066106

/-- `(A026741(n)+1)*A266073(n)` -/
def P9676430299059842948.Spec : Prop :=
  ∀ n, P9676430299059842948.a n = A066106 n

end A066106

/-! ## A066106.P15193657664570897909

`A158416(n)*A168273(n+1)`
-/

namespace A066106.P15193657664570897909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n * A168273 (n + 1)

end

end A066106.P15193657664570897909

namespace A066106

/-- `A158416(n)*A168273(n+1)` -/
def P15193657664570897909.Spec : Prop :=
  ∀ n, P15193657664570897909.a n = A066106 n

end A066106

/-! ## A066106.P7239721352599235

`gcd(A139598(n), A214946(n+1))`
-/

namespace A066106.P7239721352599235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139598 n) (A214946 (n + 1))

end

end A066106.P7239721352599235

namespace A066106

/-- `gcd(A139598(n), A214946(n+1))` -/
def P7239721352599235.Spec : Prop :=
  ∀ n, (P7239721352599235.a n : ℤ) = A066106 n

end A066106

/-! ## A066106.P7326183397465111308

`A065530(n)+A066104(n)-n`
-/

namespace A066106.P7326183397465111308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065530 n + (A066104 n - (n : ℤ))

end

end A066106.P7326183397465111308

namespace A066106

/-- `A065530(n)+A066104(n)-n` -/
def P7326183397465111308.Spec : Prop :=
  ∀ n, P7326183397465111308.a n = A066106 n

end A066106

/-! ## A066106.P14119574562496951128

`A103831(n)+gcd(n, A103831(n))`
-/

namespace A066106.P14119574562496951128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103831 n + (Int.gcd (n : ℤ) (A103831 n) : ℤ)

end

end A066106.P14119574562496951128

namespace A066106

/-- `A103831(n)+gcd(n, A103831(n))` -/
def P14119574562496951128.Spec : Prop :=
  ∀ n, P14119574562496951128.a n = A066106 n

end A066106

/-! ## A066106.P8779592055935413252

`A014601(n)+and(n², A049071(n))`
-/

namespace A066106.P8779592055935413252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n + Int.land (n ^ 2 : ℤ) (A049071 n)

end

end A066106.P8779592055935413252

namespace A066106

/-- `A014601(n)+and(n², A049071(n))` -/
def P8779592055935413252.Spec : Prop :=
  ∀ n, P8779592055935413252.a n = A066106 n

end A066106

/-! ## A066106.P5210726230024696369

`A004442(n+1)*A093178(n+1)+n`
-/

namespace A066106.P5210726230024696369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (n + 1) * A093178 (n + 1) + (n : ℤ)

end

end A066106.P5210726230024696369

namespace A066106

/-- `A004442(n+1)*A093178(n+1)+n` -/
def P5210726230024696369.Spec : Prop :=
  ∀ n, P5210726230024696369.a n = A066106 n

end A066106

/-! ## A066106.P10035694171224519179

`A109043(n)+A141310(n)²-A141310(n)`
-/

namespace A066106.P10035694171224519179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n + (A141310 n ^ 2 - A141310 n)

end

end A066106.P10035694171224519179

namespace A066106

/-- `A109043(n)+A141310(n)²-A141310(n)` -/
def P10035694171224519179.Spec : Prop :=
  ∀ n, P10035694171224519179.a n = A066106 n

end A066106

/-!
# A066107: a(0) = 0; for n > 0, a(2n+1) = (2n+1)*(2n+3); a(2n) = 2n + 2.

The programs for A066107, the canonical program `A066107.P5376932278260155520` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066107 has offset 0).

The definition of A066107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066107.P5376932278260155520

`(n+1)²-gcd(n%2, a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066107

/-- `(n+1)²-gcd(n%2, a(n-1))` -/
def P5376932278260155520.Spec : Prop :=
  ∀ n, P5376932278260155520.a n = A066107 n

theorem P5376932278260155520.correct : P5376932278260155520.Spec := by
  intro n
  simp only [A066107]

end A066107

/-! ## A066107.P14885293928188453920

`(n+1)²-a(n-1)^∑[(-1)^n]` with `a(0)=0`
-/

namespace A066107.P14885293928188453920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1) ^ 2 : ℚ) - a (n - 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A066107.P14885293928188453920

namespace A066107

/-- `(n+1)²-a(n-1)^∑[(-1)^n]` -/
def P14885293928188453920.Spec : Prop :=
  ∀ n, P14885293928188453920.a n = (A066107 n : ℚ)

end A066107

/-! ## A066107.P10795531788937413700

`(n+1)²-C(a(n-1), and(1, n+1))` with `a(0)=0`
-/

namespace A066107.P10795531788937413700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1) ^ 2 : ℤ) - (Nat.choose (a (n - 1)).toNat (Nat.land 1 (n + 1)) : ℤ)

end

end A066107.P10795531788937413700

namespace A066107

/-- `(n+1)²-C(a(n-1), and(1, n+1))` -/
def P10795531788937413700.Spec : Prop :=
  ∀ n, P10795531788937413700.a n = A066107 n

end A066107

/-! ## A066107.P569796106857758313

`((A109613(n)+1)²-1)%(n+1)²`
-/

namespace A066107.P569796106857758313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A109613 n + 1) ^ 2 - 1) ((n + 1) ^ 2 : ℤ)

end

end A066107.P569796106857758313

namespace A066107

/-- `((A109613(n)+1)²-1)%(n+1)²` -/
def P569796106857758313.Spec : Prop :=
  ∀ n, P569796106857758313.a n = A066107 n

end A066107

/-! ## A066107.P14269844467664968172

`A247727(n+1)%A080335(n)`
-/

namespace A066107.P14269844467664968172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247727 (n + 1)) (A080335 n)

end

end A066107.P14269844467664968172

namespace A066107

/-- `A247727(n+1)%A080335(n)` -/
def P14269844467664968172.Spec : Prop :=
  ∀ n, P14269844467664968172.a n = A066107 n

end A066107

/-! ## A066107.P11895093398345534435

`A063196(n+1)*A141310(n+1)`
-/

namespace A066107.P11895093398345534435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1) * A141310 (n + 1)

end

end A066107.P11895093398345534435

namespace A066107

/-- `A063196(n+1)*A141310(n+1)` -/
def P11895093398345534435.Spec : Prop :=
  ∀ n, P11895093398345534435.a n = A066107 n

end A066107

/-! ## A066107.P10215198218814874914

`(A034856(A042963(n+1)+1)-n)%(n+1)²`
-/

namespace A066107.P10215198218814874914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034856 (A042963 (n + 1) + 1).toNat - (n : ℤ)) ((n + 1) ^ 2 : ℤ)

end

end A066107.P10215198218814874914

namespace A066107

/-- `(A034856(A042963(n+1)+1)-n)%(n+1)²` -/
def P10215198218814874914.Spec : Prop :=
  ∀ n, P10215198218814874914.a n = A066107 n

end A066107

/-!
# A066108: Sum n^d over all divisors of n.

The programs for A066108, there is no canonical definition to state claims against.
-/

/-! ## A066108.P9774578590225607741

`∑{d}[n+1, (n+1)^#]`
-/

namespace A066108.P9774578590225607741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) ^ d

end

end A066108.P9774578590225607741

/-! ## A066108.P15273398915678370316

`(n+1)*A308814(n+1)`
-/

namespace A066108.P15273398915678370316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308814 (n + 1)

end

end A066108.P15273398915678370316

/-! ## A066108.P15976212794647053931

`lcm(A000027(n+1), A308814(n+1))`
-/

namespace A066108.P15976212794647053931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A308814 (n + 1))

end

end A066108.P15976212794647053931

/-! ## A066108.P4118493227857744114

`lcm(A074909(A000096(n)), A308814(n+1))`
-/

namespace A066108.P4118493227857744114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A074909 (A000096 n).toNat) (A308814 (n + 1))

end

end A066108.P4118493227857744114

/-! ## A066108.P3514346866615132449

`lcm(A187829(n+1), A308814(A187829(n+1)))`
-/

namespace A066108.P3514346866615132449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A187829 (n + 1)) (A308814 (A187829 (n + 1)).toNat)

end

end A066108.P3514346866615132449

/-!
# A066109: Numbers k such that sigma_4(k)/sigma_2(k) is prime.

The programs for A066109, there is no canonical definition to state claims against.
-/

/-! ## A066109.P5220103264046668188

`A079143(lt[A045948(n+1), A204455(n+1)])`
-/

namespace A066109.P5220103264046668188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079143 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A066109.P5220103264046668188

/-! ## A066109.P16827748303706278019

`A053024(eq[A265626(n+2), A331049(n+1)])`
-/

namespace A066109.P16827748303706278019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265626 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053024 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A066109.P16827748303706278019

/-!
# A066110: Primes of the form sigma_4(k)/sigma_2(k), arising in A066109.

The programs for A066110, there is no canonical definition to state claims against.
-/

/-! ## A066110.P1022468402242837109

`A078553(A066109(n+1))`
-/

namespace A066110.P1022468402242837109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078553 (A066109 (n + 1)).toNat

end

end A066110.P1022468402242837109

/-!
# A066111: Prime powers m such that sigma_4(m^2)/sigma_2(m^2) is prime.

The programs for A066111, there is no canonical definition to state claims against.
-/

/-! ## A066111.P13017275232569177739

`sqrt(∩[A066109(n+1), n²])`
-/

namespace A066111.P13017275232569177739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066109 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A066111.P13017275232569177739

/-! ## A066111.P2281659377260243599

`record[A056926(A066109(n+1))]`
-/

namespace A066111.P2281659377260243599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A066109 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066111.P2281659377260243599

/-! ## A066111.P6587570290911403359

`A065820(A062399(n+1))`
-/

namespace A066111.P6587570290911403359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065820 (A062399 (n + 1)).toNat

end

end A066111.P6587570290911403359

/-! ## A066111.P1813054113503439844

`A065820(A351870(n+1))`
-/

namespace A066111.P1813054113503439844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065820 (A351870 (n + 1)).toNat

end

end A066111.P1813054113503439844

/-! ## A066111.P1020159100663212138

`filter[A065820(n+1), A103582(#)]`
-/

namespace A066111.P1020159100663212138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103582 (f1 j).toNat = 1) n)

end

end A066111.P1020159100663212138

/-!
# A066113: a(n) is the number of conjugacy classes of maximal subgroups of the alternating group A_n.

The programs for A066113, there is no canonical definition to state claims against.
-/

/-! ## A066113.P17348749219079507553

`A056239(∩[A332076(n+1), A019529(n)])`
-/

namespace A066113.P17348749219079507553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019529 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A066113.P17348749219079507553

/-!
# A066114: a(0) = 1; for n > 0, a(n) = (n!*(3*n+1))/2.

The programs for A066114, there is no canonical definition to state claims against.
-/

/-! ## A066114.P16523506808468117918

`(n+1)*a(n-1)+(n-1)!` with `a(0)=1, a(1)=2`
-/

namespace A066114.P16523506808468117918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n + 1) * a (n - 1) + Nat.factorial ((n : ℤ) - 1).toNat

end

end A066114.P16523506808468117918

/-! ## A066114.P16475450863618577700

`ceil(A082033(n)/2)`
-/

namespace A066114.P16475450863618577700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082033 n : ℚ) / 2⌉

end

end A066114.P16475450863618577700

/-! ## A066114.P10979500797400853560

`Δ[A014288(n)+n!]`
-/

namespace A066114.P10979500797400853560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014288 n + (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066114.P10979500797400853560

/-! ## A066114.P12540499089930815079

`A070960(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A066114.P12540499089930815079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070960 n + (n : ℤ) * a (n - 1)

end

end A066114.P12540499089930815079

/-! ## A066114.P8952694427474227120

`(A004277(n)+1+n)/2*n!`
-/

namespace A066114.P8952694427474227120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 n + 1 + (n : ℤ) : ℚ) / 2 * (Nat.factorial n : ℚ)

end

end A066114.P8952694427474227120

/-! ## A066114.P6713975886260713368

`Δ[A014288(n)+A000142(n)]`
-/

namespace A066114.P6713975886260713368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014288 n + A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066114.P6713975886260713368

/-! ## A066114.P7499432888736623160

`A001710(n+1)+A001563(n)`
-/

namespace A066114.P7499432888736623160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (n + 1) + A001563 n

end

end A066114.P7499432888736623160

/-! ## A066114.P11870174429586950177

`(A267872(n)+n)*A001710(n)`
-/

namespace A066114.P11870174429586950177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267872 n + (n : ℤ)) * A001710 n

end

end A066114.P11870174429586950177

/-! ## A066114.P17478663438480928918

`Δ[A000142(n)+∑[A001710(n)]]`
-/

namespace A066114.P17478663438480928918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066114.P17478663438480928918

/-! ## A066114.P1958949158239618042

`A082033(n)/A020639(A008458(n))`
-/

namespace A066114.P1958949158239618042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082033 n : ℚ) / (A020639 (A008458 n).toNat : ℚ)

end

end A066114.P1958949158239618042

/-!
# A066115: Number of conjugacy classes of maximal subgroups of the symmetric group S_n.

The programs for A066115, there is no canonical definition to state claims against.
-/

/-! ## A066115.P17144723888207063134

`A242018(A329863(n+2))+A088922(n+1)`
-/

namespace A066115.P17144723888207063134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242018 (A329863 (n + 2)).toNat + A088922 (n + 1)

end

end A066115.P17144723888207063134

/-! ## A066115.P13683811947178251445

`A088922(n+1)+A010059(A008619(n)!)`
-/

namespace A066115.P13683811947178251445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088922 (n + 1) + A010059 (Nat.factorial (A008619 n).toNat)

end

end A066115.P13683811947178251445

/-! ## A066115.P17993663528346252863

`A206442(A008619(n)!)+A088922(n+1)`
-/

namespace A066115.P17993663528346252863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206442 (Nat.factorial (A008619 n).toNat) + A088922 (n + 1)

end

end A066115.P17993663528346252863

/-! ## A066115.P17769540287436603

`A355820(A030078(n+1))+A088922(n+1)`
-/

namespace A066115.P17769540287436603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355820 (A030078 (n + 1)).toNat + A088922 (n + 1)

end

end A066115.P17769540287436603

/-!
# A066116: a(n) = prime(n-2)*prime(n-1)^2*prime(n).

The programs for A066116, the canonical program `A066116.P11816805237793030790` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066116 has offset 3).

The definition of A066116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066116.P11816805237793030790

`A000040(n+1)*A000040(n+2)²*A000040(n+3)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066116

/-- `A000040(n+1)*A000040(n+2)²*A000040(n+3)` -/
def P11816805237793030790.Spec : Prop :=
  ∀ n, P11816805237793030790.a n = A066116 (n + 3)

theorem P11816805237793030790.correct : P11816805237793030790.Spec := by
  intro n
  simp only [A066116, Nat.add_sub_cancel]

end A066116

/-! ## A066116.P5764852715753449970

`A046301(n+1)*A065091(n+1)`
-/

namespace A066116.P5764852715753449970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046301 (n + 1) * A065091 (n + 1)

end

end A066116.P5764852715753449970

namespace A066116

/-- `A046301(n+1)*A065091(n+1)` -/
def P5764852715753449970.Spec : Prop :=
  ∀ n, P5764852715753449970.a n = A066116 (n + 3)

theorem P5764852715753449970.correct : P5764852715753449970.Spec := by
  intro n
  simp only [A066116, Nat.add_sub_cancel, A066116.P5764852715753449970.a, A066116.P11816805237793030790.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046301, A046301.P8827187728700103366.a, A065091, A065091.P6971844946592549357.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A034961, A034961.P9480249767911558173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066116

/-! ## A066116.P14382693699433611198

`A258155(n+1)/A090076(n+1)`
-/

namespace A066116.P14382693699433611198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258155 (n + 1) : ℚ) / (A090076 (n + 1) : ℚ)

end

end A066116.P14382693699433611198

namespace A066116

/-- `A258155(n+1)/A090076(n+1)` -/
def P14382693699433611198.Spec : Prop :=
  ∀ n, P14382693699433611198.a n = (A066116 (n + 3) : ℚ)

end A066116

/-! ## A066116.P13075146848502550012

`A065091(n+1)²*A090076(n+1)`
-/

namespace A066116.P13075146848502550012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) ^ 2 * A090076 (n + 1)

end

end A066116.P13075146848502550012

namespace A066116

/-- `A065091(n+1)²*A090076(n+1)` -/
def P13075146848502550012.Spec : Prop :=
  ∀ n, P13075146848502550012.a n = A066116 (n + 3)

theorem P13075146848502550012.correct : P13075146848502550012.Spec := by
  intro n
  simp only [A066116, Nat.add_sub_cancel, A066116.P13075146848502550012.a, A066116.P11816805237793030790.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, A090076, A090076.P14041092475761084439.a, A006094, A006094.P10257567645245129766.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066116

/-! ## A066116.P17814618999632469954

`A046301(n+1)²/A090076(n+1)`
-/

namespace A066116.P17814618999632469954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046301 (n + 1) ^ 2 : ℚ) / (A090076 (n + 1) : ℚ)

end

end A066116.P17814618999632469954

namespace A066116

/-- `A046301(n+1)²/A090076(n+1)` -/
def P17814618999632469954.Spec : Prop :=
  ∀ n, P17814618999632469954.a n = (A066116 (n + 3) : ℚ)

end A066116

/-! ## A066116.P2072120225121089435

`(A109805(n+1)+A006094(n+1))*A006094(n+1)`
-/

namespace A066116.P2072120225121089435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109805 (n + 1) + A006094 (n + 1)) * A006094 (n + 1)

end

end A066116.P2072120225121089435

namespace A066116

/-- `(A109805(n+1)+A006094(n+1))*A006094(n+1)` -/
def P2072120225121089435.Spec : Prop :=
  ∀ n, P2072120225121089435.a n = A066116 (n + 3)

theorem P2072120225121089435.correct : P2072120225121089435.Spec := by
  intro n
  simp only [A066116, Nat.add_sub_cancel, A066116.P2072120225121089435.a, A066116.P11816805237793030790.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A109805, A109805.P13473792619790468409.a, A031131, A031131.P2453725465626413076.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066116

/-! ## A066116.P3097328688833182332

`(A090076(n+1)+A056221(n+1))*A090076(n+1)`
-/

namespace A066116.P3097328688833182332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090076 (n + 1) + A056221 (n + 1)) * A090076 (n + 1)

end

end A066116.P3097328688833182332

namespace A066116

/-- `(A090076(n+1)+A056221(n+1))*A090076(n+1)` -/
def P3097328688833182332.Spec : Prop :=
  ∀ n, P3097328688833182332.a n = A066116 (n + 3)

end A066116

/-! ## A066116.P2342522222136482414

`(A090090(n+1)-A117301(n+1))*A006094(n+1)`
-/

namespace A066116.P2342522222136482414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090090 (n + 1) - A117301 (n + 1)) * A006094 (n + 1)

end

end A066116.P2342522222136482414

namespace A066116

/-- `(A090090(n+1)-A117301(n+1))*A006094(n+1)` -/
def P2342522222136482414.Spec : Prop :=
  ∀ n, P2342522222136482414.a n = A066116 (n + 3)

theorem P2342522222136482414.correct : P2342522222136482414.Spec := by
  intro n
  simp only [A066116, Nat.add_sub_cancel, A066116.P2342522222136482414.a, A066116.P11816805237793030790.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A090090, A090090.P16547710281115840405.f1, A090090.P16547710281115840405.f2, A090090.P16547710281115840405.a, A117301, A117301.P971532255739246842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066116

/-! ## A066116.P1531814350256507180

`A006094(n+1)/A000040(n+1)*A046301(n+1)`
-/

namespace A066116.P1531814350256507180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) * (A046301 (n + 1) : ℚ)

end

end A066116.P1531814350256507180

namespace A066116

/-- `A006094(n+1)/A000040(n+1)*A046301(n+1)` -/
def P1531814350256507180.Spec : Prop :=
  ∀ n, P1531814350256507180.a n = (A066116 (n + 3) : ℚ)

theorem P1531814350256507180.correct : P1531814350256507180.Spec := by
  intro n
  simp only [A066116, Nat.add_sub_cancel, A066116.P1531814350256507180.a, A066116.P11816805237793030790.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A046301, A046301.P8827187728700103366.a, A001043, A001043.P18269783162673735460.a, A034961, A034961.P9480249767911558173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066116

/-! ## A066116.P14135639744716602806

`A006094(n+1)*A006094(n+2)`
-/

namespace A066116.P14135639744716602806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) * A006094 (n + 2)

end

end A066116.P14135639744716602806

namespace A066116

/-- `A006094(n+1)*A006094(n+2)` -/
def P14135639744716602806.Spec : Prop :=
  ∀ n, P14135639744716602806.a n = A066116 (n + 3)

theorem P14135639744716602806.correct : P14135639744716602806.Spec := by
  intro n
  simp only [A066116, Nat.add_sub_cancel, A066116.P14135639744716602806.a, A066116.P11816805237793030790.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066116

/-! ## A066116.P2502419931472761707

`A000040(n+2)*A046301(n+1)`
-/

namespace A066116.P2502419931472761707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A046301 (n + 1)

end

end A066116.P2502419931472761707

namespace A066116

/-- `A000040(n+2)*A046301(n+1)` -/
def P2502419931472761707.Spec : Prop :=
  ∀ n, P2502419931472761707.a n = A066116 (n + 3)

theorem P2502419931472761707.correct : P2502419931472761707.Spec := by
  intro n
  simp only [A066116, Nat.add_sub_cancel, A066116.P2502419931472761707.a, A066116.P11816805237793030790.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046301, A046301.P8827187728700103366.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A034961, A034961.P9480249767911558173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066116

/-! ## A066116.P10341515673885103224

`A001248(n+2)*A090076(n+1)`
-/

namespace A066116.P10341515673885103224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2) * A090076 (n + 1)

end

end A066116.P10341515673885103224

namespace A066116

/-- `A001248(n+2)*A090076(n+1)` -/
def P10341515673885103224.Spec : Prop :=
  ∀ n, P10341515673885103224.a n = A066116 (n + 3)

theorem P10341515673885103224.correct : P10341515673885103224.Spec := by
  intro n
  simp only [A066116, Nat.add_sub_cancel, A066116.P10341515673885103224.a, A066116.P11816805237793030790.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A090076, A090076.P14041092475761084439.a, A006094, A006094.P10257567645245129766.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066116

/-! ## A066116.P3600384952558650250

`A000040(n+1)*A251720(n+2)`
-/

namespace A066116.P3600384952558650250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A251720 (n + 2)

end

end A066116.P3600384952558650250

namespace A066116

/-- `A000040(n+1)*A251720(n+2)` -/
def P3600384952558650250.Spec : Prop :=
  ∀ n, P3600384952558650250.a n = A066116 (n + 3)

theorem P3600384952558650250.correct : P3600384952558650250.Spec := by
  intro n
  simp only [A066116, Nat.add_sub_cancel, A066116.P3600384952558650250.a, A066116.P11816805237793030790.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A251720, A251720.P7553802040136073168.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066116

/-! ## A066116.P4120721863224672775

`lcm(A001248(n+2), A046301(n+1))`
-/

namespace A066116.P4120721863224672775
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001248 (n + 2)) (A046301 (n + 1))

end

end A066116.P4120721863224672775

namespace A066116

/-- `lcm(A001248(n+2), A046301(n+1))` -/
def P4120721863224672775.Spec : Prop :=
  ∀ n, (P4120721863224672775.a n : ℤ) = A066116 (n + 3)

end A066116

/-! ## A066116.P2411615098773972530

`A000040(n+2)²*A090076(n+1)`
-/

namespace A066116.P2411615098773972530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) ^ 2 * A090076 (n + 1)

end

end A066116.P2411615098773972530

namespace A066116

/-- `A000040(n+2)²*A090076(n+1)` -/
def P2411615098773972530.Spec : Prop :=
  ∀ n, P2411615098773972530.a n = A066116 (n + 3)

theorem P2411615098773972530.correct : P2411615098773972530.Spec := by
  intro n
  simp only [A066116, Nat.add_sub_cancel, A066116.P2411615098773972530.a, A066116.P11816805237793030790.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A090076, A090076.P14041092475761084439.a, A006094, A006094.P10257567645245129766.a, A205955, A205955.P11019694915119694483.a, A096379, A096379.P11420595779051591420.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066116

/-! ## A066116.P13671341627138391240

`(A001248(n+2)-A056221(n+1))*A001248(n+2)`
-/

namespace A066116.P13671341627138391240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 2) - A056221 (n + 1)) * A001248 (n + 2)

end

end A066116.P13671341627138391240

namespace A066116

/-- `(A001248(n+2)-A056221(n+1))*A001248(n+2)` -/
def P13671341627138391240.Spec : Prop :=
  ∀ n, P13671341627138391240.a n = A066116 (n + 3)

end A066116

/-! ## A066116.P17712589824062628369

`A000040(n+1)*A001248(n+2)*A065091(n+2)`
-/

namespace A066116.P17712589824062628369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001248 (n + 2) * A065091 (n + 2)

end

end A066116.P17712589824062628369

namespace A066116

/-- `A000040(n+1)*A001248(n+2)*A065091(n+2)` -/
def P17712589824062628369.Spec : Prop :=
  ∀ n, P17712589824062628369.a n = A066116 (n + 3)

theorem P17712589824062628369.correct : P17712589824062628369.Spec := by
  intro n
  simp only [A066116, Nat.add_sub_cancel, A066116.P17712589824062628369.a, A066116.P11816805237793030790.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066116

/-! ## A066116.P12139640494229415063

`A166329(n+1)/A069486(n+1)*A069486(n+2)`
-/

namespace A066116.P12139640494229415063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166329 (n + 1) : ℚ) / (A069486 (n + 1) : ℚ) * (A069486 (n + 2) : ℚ)

end

end A066116.P12139640494229415063

namespace A066116

/-- `A166329(n+1)/A069486(n+1)*A069486(n+2)` -/
def P12139640494229415063.Spec : Prop :=
  ∀ n, P12139640494229415063.a n = (A066116 (n + 3) : ℚ)

end A066116

/-! ## A066116.P5786020596181648472

`A030514(n+1)/A030078(n+1)*A251720(n+2)`
-/

namespace A066116.P5786020596181648472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030514 (n + 1) : ℚ) / (A030078 (n + 1) : ℚ) * (A251720 (n + 2) : ℚ)

end

end A066116.P5786020596181648472

namespace A066116

/-- `A030514(n+1)/A030078(n+1)*A251720(n+2)` -/
def P5786020596181648472.Spec : Prop :=
  ∀ n, P5786020596181648472.a n = (A066116 (n + 3) : ℚ)

end A066116

/-! ## A066116.P13769541844842773269

`A000040(n+2)²*A176098(n+3)`
-/

namespace A066116.P13769541844842773269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) ^ 2 * A176098 (n + 3)

end

end A066116.P13769541844842773269

namespace A066116

/-- `A000040(n+2)²*A176098(n+3)` -/
def P13769541844842773269.Spec : Prop :=
  ∀ n, P13769541844842773269.a n = A066116 (n + 3)

end A066116

/-!
# A066117: Triangle read by rows: T(n,k) = T(n-1,k-1)*T(n,k-1) and T(n,1) = prime(n).

The programs for A066117, there is no canonical definition to state claims against.
-/

/-! ## A066117.P12861962683382136027

`A260443(A036561(n)^A226046(n+1))`
-/

namespace A066117.P12861962683382136027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (SequenceMachineLib.roundAway ((A036561 n : ℚ) ^ (A226046 (n + 1) : ℤ))).toNat

end

end A066117.P12861962683382136027

/-! ## A066117.P13512744116169332001

`A260443(C(A036561(n), A226046(n+1)))`
-/

namespace A066117.P13512744116169332001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (Nat.choose (A036561 n).toNat (A226046 (n + 1)).toNat)

end

end A066117.P13512744116169332001

/-! ## A066117.P4185261234934056638

`A260443(A036561(n))*A317994(A284578(n))`
-/

namespace A066117.P4185261234934056638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 (A036561 n).toNat * A317994 (A284578 n).toNat

end

end A066117.P4185261234934056638

/-! ## A066117.P9316399575181467677

`A008683(A181667(n+1))²*A260443(A036561(n))`
-/

namespace A066117.P9316399575181467677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A181667 (n + 1)).toNat ^ 2 * A260443 (A036561 n).toNat

end

end A066117.P9316399575181467677

/-! ## A066117.P9522155180084314821

`lcm(A008683(A181667(n+1))^A101475(n), A260443(A036561(n)))`
-/

namespace A066117.P9522155180084314821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A008683 (A181667 (n + 1)).toNat : ℚ) ^ (A101475 n : ℤ))) (A260443 (A036561 n).toNat)

end

end A066117.P9522155180084314821

/-!
# A066118: a(n) = n!*(3*n-1)/2.

The programs for A066118, the canonical program `A066118.P10208422893267154933` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066118 has offset 1).

The definition of A066118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066118.P10208422893267154933

`(n+1)!*(3*(n+1)-1)/2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066118

/-- `(n+1)!*(3*(n+1)-1)/2` -/
def P10208422893267154933.Spec : Prop :=
  ∀ n, P10208422893267154933.a n = (A066118 (n + 1) : ℚ)

end A066118

/-! ## A066118.P16883646702614943993

`n!*Δ[n*∑[n]]`
-/

namespace A066118.P16883646702614943993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A066118.P16883646702614943993

namespace A066118

/-- `n!*Δ[n*∑[n]]` -/
def P16883646702614943993.Spec : Prop :=
  ∀ n, P16883646702614943993.a n = A066118 (n + 1)

end A066118

/-! ## A066118.P16408791075295005452

`∑[3*n+1]*n!`
-/

namespace A066118.P16408791075295005452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * Nat.factorial n

end

end A066118.P16408791075295005452

namespace A066118

/-- `∑[3*n+1]*n!` -/
def P16408791075295005452.Spec : Prop :=
  ∀ n, (P16408791075295005452.a n : ℤ) = A066118 (n + 1)

end A066118

/-! ## A066118.P1450978447681416936

`(3*n+2)*(n+1)!/2`
-/

namespace A066118.P1450978447681416936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n + 2) * Nat.factorial (n + 1) : ℚ) / 2

end

end A066118.P1450978447681416936

namespace A066118

/-- `(3*n+2)*(n+1)!/2` -/
def P1450978447681416936.Spec : Prop :=
  ∀ n, P1450978447681416936.a n = (A066118 (n + 1) : ℚ)

end A066118

/-! ## A066118.P14391537608584163954

`(3*n+2)/2*∏[n+1]`
-/

namespace A066118.P14391537608584163954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℚ) / 2 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A066118.P14391537608584163954

namespace A066118

/-- `(3*n+2)/2*∏[n+1]` -/
def P14391537608584163954.Spec : Prop :=
  ∀ n, P14391537608584163954.a n = (A066118 (n + 1) : ℚ)

end A066118

/-! ## A066118.P1449695175498362451

`A082033(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A066118.P1449695175498362451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082033 n + (n : ℤ) * a (n - 1)

end

end A066118.P1449695175498362451

namespace A066118

/-- `A082033(n)+n*a(n-1)` -/
def P1449695175498362451.Spec : Prop :=
  ∀ n, P1449695175498362451.a n = A066118 (n + 1)

end A066118

/-! ## A066118.P17146450638493411080

`A180119(n)+A001563(n+1)`
-/

namespace A066118.P17146450638493411080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180119 n + A001563 (n + 1)

end

end A066118.P17146450638493411080

namespace A066118

/-- `A180119(n)+A001563(n+1)` -/
def P17146450638493411080.Spec : Prop :=
  ∀ n, P17146450638493411080.a n = A066118 (n + 1)

end A066118

/-! ## A066118.P1981684244432321475

`A062119(n+1)+A001710(n+2)`
-/

namespace A066118.P1981684244432321475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062119 (n + 1) + A001710 (n + 2)

end

end A066118.P1981684244432321475

namespace A066118

/-- `A062119(n+1)+A001710(n+2)` -/
def P1981684244432321475.Spec : Prop :=
  ∀ n, P1981684244432321475.a n = A066118 (n + 1)

end A066118

/-! ## A066118.P6808758997133997994

`A066114(n+1)-A000142(n+1)`
-/

namespace A066118.P6808758997133997994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066114 (n + 1) - A000142 (n + 1)

end

end A066118.P6808758997133997994

namespace A066118

/-- `A066114(n+1)-A000142(n+1)` -/
def P6808758997133997994.Spec : Prop :=
  ∀ n, P6808758997133997994.a n = A066118 (n + 1)

end A066118

/-! ## A066118.P11838985640239694832

`(A052673(n+1)-A000142(n+1))/2`
-/

namespace A066118.P11838985640239694832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052673 (n + 1) - A000142 (n + 1) : ℚ) / 2

end

end A066118.P11838985640239694832

namespace A066118

/-- `(A052673(n+1)-A000142(n+1))/2` -/
def P11838985640239694832.Spec : Prop :=
  ∀ n, P11838985640239694832.a n = (A066118 (n + 1) : ℚ)

end A066118

/-!
# A066120: Superduperprimorials: product of first n terms in Chernoff sequence.

The programs for A066120, there is no canonical definition to state claims against.
-/

/-! ## A066120.P4079057128777187249

`a(n-1)*A006939(n)` with `a(0)=1`
-/

namespace A066120.P4079057128777187249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A006939 n

end

end A066120.P4079057128777187249

/-! ## A066120.P14349981941605797692

`∏[A006939(n)]`
-/

namespace A066120.P14349981941605797692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066120.P14349981941605797692

/-! ## A066120.P2182652754761012172

`∏[A332644(∑[n])]`
-/

namespace A066120.P2182652754761012172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332644 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066120.P2182652754761012172

/-! ## A066120.P1202333065614580083

`∏[∏[A002110(n)]]`
-/

namespace A066120.P1202333065614580083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066120.P1202333065614580083

/-! ## A066120.P5167955009662331771

`∏[∏[∏[A008578(n+1)]]]`
-/

namespace A066120.P5167955009662331771
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A066120.P5167955009662331771

/-!
# A066121: Multi-level factorials: triangle with a(n,k)=a(n-1,k-1)*a(n-1,k) but with a(n,1)=n and a(n,n)=1.

The programs for A066121, there is no canonical definition to state claims against.
-/

/-! ## A066121.P4868591708024820504

`∏{digits}[A213057(A061579(n)), #]`
-/

namespace A066121.P4868591708024820504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213057 (A061579 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A066121.P4868591708024820504

/-! ## A066121.P3095551731956395098

`A003963(gcd(A066119(n+1), A317644(n)))`
-/

namespace A066121.P3095551731956395098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.gcd (A066119 (n + 1)) (A317644 n))

end

end A066121.P3095551731956395098

/-! ## A066121.P4609011626878106266

`A080046(A076084(n+1))/A249026(n)`
-/

namespace A066121.P4609011626878106266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080046 (A076084 (n + 1)).toNat : ℚ) / (A249026 n : ℚ)

end

end A066121.P4609011626878106266

/-! ## A066121.P15035238304804130524

`A080046(n+1)/A089870(A249026(n))`
-/

namespace A066121.P15035238304804130524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080046 (n + 1) : ℚ) / (A089870 (A249026 n).toNat : ℚ)

end

end A066121.P15035238304804130524

/-! ## A066121.P13755053768299698468

`A080046(n+1)/A137735(A249026(n)²)`
-/

namespace A066121.P13755053768299698468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080046 (n + 1) : ℚ) / (A137735 (A249026 n ^ 2).toNat : ℚ)

end

end A066121.P13755053768299698468

/-!
# A066122: Numbers that in base 2 need one 'Reverse and Add' step to reach a palindrome.

The programs for A066122, the canonical program `A066122.P13442476758303456141` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066122 has offset 1).

The definition of A066122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066122.P16329728148334852199

`eq[1, A066057(n)]`
-/

namespace A066122.P16329728148334852199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066122.P16329728148334852199

namespace A066122

/-- `eq[1, A066057(n)]` -/
def P16329728148334852199.Spec : Prop :=
  ∀ n, (P16329728148334852199.a n : ℤ) = A066122 (n + 1)

end A066122

/-! ## A066122.P13442476758303456141

`eq[A178226(A055944(n))+1, A178226(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A066122

/-- `eq[A178226(A055944(n))+1, A178226(n)]` -/
def P13442476758303456141.Spec : Prop :=
  ∀ n, (P13442476758303456141.a n : ℤ) = A066122 (n + 1)

theorem P13442476758303456141.correct : P13442476758303456141.Spec := by
  intro n
  simp only [A066122, Nat.add_sub_cancel]

end A066122

/-! ## A066122.P6911874294663229594

`lt[A175919(A055944(n))², n]`
-/

namespace A066122.P6911874294663229594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A055944 n).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A066122.P6911874294663229594

namespace A066122

/-- `lt[A175919(A055944(n))², n]` -/
def P6911874294663229594.Spec : Prop :=
  ∀ n, (P6911874294663229594.a n : ℤ) = A066122 (n + 1)

end A066122

/-! ## A066122.P3293908139557613303

`eq[A000007(n), A055945(A055944(n))]`
-/

namespace A066122.P3293908139557613303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A055944 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066122.P3293908139557613303

namespace A066122

/-- `eq[A000007(n), A055945(A055944(n))]` -/
def P3293908139557613303.Spec : Prop :=
  ∀ n, (P3293908139557613303.a n : ℤ) = A066122 (n + 1)

end A066122

/-! ## A066122.P15243946430145857518

`eq[A000038(n), A055945(A055944(n))]`
-/

namespace A066122.P15243946430145857518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A055944 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066122.P15243946430145857518

namespace A066122

/-- `eq[A000038(n), A055945(A055944(n))]` -/
def P15243946430145857518.Spec : Prop :=
  ∀ n, (P15243946430145857518.a n : ℤ) = A066122 (n + 1)

end A066122

/-! ## A066122.P854946255190802175

`eq[A055945(A055944(n)), A073097(n)]`
-/

namespace A066122.P854946255190802175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A055944 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066122.P854946255190802175

namespace A066122

/-- `eq[A055945(A055944(n)), A073097(n)]` -/
def P854946255190802175.Spec : Prop :=
  ∀ n, (P854946255190802175.a n : ℤ) = A066122 (n + 1)

end A066122

/-! ## A066122.P10758684426655637525

`eq[A036987(n), A175919(A055944(n))]`
-/

namespace A066122.P10758684426655637525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A055944 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066122.P10758684426655637525

namespace A066122

/-- `eq[A036987(n), A175919(A055944(n))]` -/
def P10758684426655637525.Spec : Prop :=
  ∀ n, (P10758684426655637525.a n : ℤ) = A066122 (n + 1)

end A066122

/-! ## A066122.P16123628864263157313

`eq[A175919(A055944(n)), A178225(n)]`
-/

namespace A066122.P16123628864263157313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A055944 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066122.P16123628864263157313

namespace A066122

/-- `eq[A175919(A055944(n)), A178225(n)]` -/
def P16123628864263157313.Spec : Prop :=
  ∀ n, (P16123628864263157313.a n : ℤ) = A066122 (n + 1)

end A066122

/-! ## A066122.P2206110335840101768

`lt[A175919(A055944(n)), A000120(n)]`
-/

namespace A066122.P2206110335840101768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 (A055944 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066122.P2206110335840101768

namespace A066122

/-- `lt[A175919(A055944(n)), A000120(n)]` -/
def P2206110335840101768.Spec : Prop :=
  ∀ n, (P2206110335840101768.a n : ℤ) = A066122 (n + 1)

end A066122

/-! ## A066122.P4456201268669115023

`eq[A055945(A055944(n)), A135534(n+1)]`
-/

namespace A066122.P4456201268669115023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A055944 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135534 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066122.P4456201268669115023

namespace A066122

/-- `eq[A055945(A055944(n)), A135534(n+1)]` -/
def P4456201268669115023.Spec : Prop :=
  ∀ n, (P4456201268669115023.a n : ℤ) = A066122 (n + 1)

end A066122

/-! ## A066122.P14388253118123165399

`eq[A055945(A055944(n)), A154269(n+1)]`
-/

namespace A066122.P14388253118123165399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 (A055944 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066122.P14388253118123165399

namespace A066122

/-- `eq[A055945(A055944(n)), A154269(n+1)]` -/
def P14388253118123165399.Spec : Prop :=
  ∀ n, (P14388253118123165399.a n : ℤ) = A066122 (n + 1)

end A066122

/-! ## A066122.P4698325253839195068

`eq[1, A193306(A055944(n))]`
-/

namespace A066122.P4698325253839195068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193306 (A055944 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066122.P4698325253839195068

namespace A066122

/-- `eq[1, A193306(A055944(n))]` -/
def P4698325253839195068.Spec : Prop :=
  ∀ n, (P4698325253839195068.a n : ℤ) = A066122 (n + 1)

end A066122

/-! ## A066122.P2837672683467263185

`eq[A019426(n), A178225(A055944(n))]`
-/

namespace A066122.P2837672683467263185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178225 (A055944 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066122.P2837672683467263185

namespace A066122

/-- `eq[A019426(n), A178225(A055944(n))]` -/
def P2837672683467263185.Spec : Prop :=
  ∀ n, (P2837672683467263185.a n : ℤ) = A066122 (n + 1)

end A066122

/-! ## A066122.P9510412888532043106

`lt[A326302(A055944(n)), A022998(n)]`
-/

namespace A066122.P9510412888532043106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326302 (A055944 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066122.P9510412888532043106

namespace A066122

/-- `lt[A326302(A055944(n)), A022998(n)]` -/
def P9510412888532043106.Spec : Prop :=
  ∀ n, (P9510412888532043106.a n : ℤ) = A066122 (n + 1)

end A066122

/-! ## A066122.P48585734500574181

`eq[A030101(A055944(n+1)), A055944(n+1)]+1`
-/

namespace A066122.P48585734500574181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A055944 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A066122.P48585734500574181

namespace A066122

/-- `eq[A030101(A055944(n+1)), A055944(n+1)]+1` -/
def P48585734500574181.Spec : Prop :=
  ∀ n, (P48585734500574181.a n : ℤ) = A066122 (n + 1)

end A066122

/-! ## A066122.P17404647481998098102

`lt[A109043(n), A330717(A055944(n))]`
-/

namespace A066122.P17404647481998098102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 (A055944 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066122.P17404647481998098102

namespace A066122

/-- `lt[A109043(n), A330717(A055944(n))]` -/
def P17404647481998098102.Spec : Prop :=
  ∀ n, (P17404647481998098102.a n : ℤ) = A066122 (n + 1)

end A066122

/-! ## A066122.P13556867905940172463

`lt[A206913(n), A330717(A055944(n))]`
-/

namespace A066122.P13556867905940172463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206913 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 (A055944 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066122.P13556867905940172463

namespace A066122

/-- `lt[A206913(n), A330717(A055944(n))]` -/
def P13556867905940172463.Spec : Prop :=
  ∀ n, (P13556867905940172463.a n : ℤ) = A066122 (n + 1)

end A066122

/-! ## A066122.P13305041267706083541

`lt[A325402(n), A330717(A055944(n))]`
-/

namespace A066122.P13305041267706083541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325402 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 (A055944 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066122.P13305041267706083541

namespace A066122

/-- `lt[A325402(n), A330717(A055944(n))]` -/
def P13305041267706083541.Spec : Prop :=
  ∀ n, (P13305041267706083541.a n : ℤ) = A066122 (n + 1)

end A066122

/-! ## A066122.P12872641528338948790

`lt[n, A330717(2*A055944(n))]`
-/

namespace A066122.P12872641528338948790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330717 (2 * A055944 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A066122.P12872641528338948790

namespace A066122

/-- `lt[n, A330717(2*A055944(n))]` -/
def P12872641528338948790.Spec : Prop :=
  ∀ n, (P12872641528338948790.a n : ℤ) = A066122 (n + 1)

end A066122

/-! ## A066122.P8284981319741837939

`record[A233583(n+1)-A175919(A055944(n))]`
-/

namespace A066122.P8284981319741837939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - A175919 (A055944 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066122.P8284981319741837939

namespace A066122

/-- `record[A233583(n+1)-A175919(A055944(n))]` -/
def P8284981319741837939.Spec : Prop :=
  ∀ n, P8284981319741837939.a n = A066122 (n + 1)

end A066122

/-!
# A066123: Numbers that in base 2 need two 'Reverse and Add' steps to reach a palindrome.

The programs for A066123, there is no canonical definition to state claims against.
-/

/-! ## A066123.P3976170468889257703

`eq[2, A066057(n)]`
-/

namespace A066123.P3976170468889257703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066123.P3976170468889257703

/-! ## A066123.P17694720450277734170

`eq[2, A096370(round(sqrt(n²+1)))-1]`
-/

namespace A066123.P17694720450277734170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096370 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066123.P17694720450277734170

/-!
# A066124: Numbers that in base 2 need three 'Reverse and Add' steps to reach a palindrome.

The programs for A066124, there is no canonical definition to state claims against.
-/

/-! ## A066124.P958604346330526514

`eq[3, A066057(n)]`
-/

namespace A066124.P958604346330526514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066124.P958604346330526514

/-!
# A066125: Numbers that in base 2 need four 'Reverse and Add' steps to reach a palindrome.

The programs for A066125, there is no canonical definition to state claims against.
-/

/-! ## A066125.P7149965309133165551

`eq[4, A066057(n)]`
-/

namespace A066125.P7149965309133165551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066125.P7149965309133165551

/-!
# A066126: Numbers that in base 2 need five 'Reverse and Add' steps to reach a palindrome.

The programs for A066126, there is no canonical definition to state claims against.
-/

/-! ## A066126.P4714070269955990163

`eq[5, A066057(n)]`
-/

namespace A066126.P4714070269955990163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066126.P4714070269955990163

/-!
# A066130: Numbers that in base 2 need nine 'Reverse and Add' steps to reach a palindrome.

The programs for A066130, there is no canonical definition to state claims against.
-/

/-! ## A066130.P15246300490823211530

`A080529(A068702(n+1))-4`
-/

namespace A066130.P15246300490823211530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080529 (A068702 (n + 1)).toNat - 4

end

end A066130.P15246300490823211530

/-!
# A066131: Numbers that in base 2 need ten 'Reverse and Add' steps to reach a palindrome.

The programs for A066131, there is no canonical definition to state claims against.
-/

/-! ## A066131.P1836544719821878525

`eq[10, A066057(n)]`
-/

namespace A066131.P1836544719821878525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066131.P1836544719821878525

/-! ## A066131.P7933186838345054957

`lt[A338095(A066057(n)+5), 2]`
-/

namespace A066131.P7933186838345054957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338095 (A066057 n + 5).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A066131.P7933186838345054957

/-!
# A066135: a(n) = least number m > 1 such that sigma_n(m) = k*m for some k.

The programs for A066135, there is no canonical definition to state claims against.
-/

/-! ## A066135.P5074788842011544713

`A001172(gcd(A118802(n), A322940(n)))`
-/

namespace A066135.P5074788842011544713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (Int.gcd (A118802 n) (A322940 n))

end

end A066135.P5074788842011544713

/-! ## A066135.P16181620942326808911

`A001172(gcd(A000005(2^n), A001212(n+1)))`
-/

namespace A066135.P16181620942326808911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (Int.gcd (A000005 (2 ^ n)) (A001212 (n + 1)))

end

end A066135.P16181620942326808911

/-! ## A066135.P18058600763454024405

`A349943(Δ[5*(2*a(floor(n/2))-(-1)^n+1)-n%2])` with `a(0)=0`
-/

namespace A066135.P18058600763454024405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  5 * (2 * f1 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349943 (f1 (n + 1) - f1 n).toNat

end

end A066135.P18058600763454024405

/-! ## A066135.P13827376022199740967

`A349943(Δ[A097256(n)])`
-/

namespace A066135.P13827376022199740967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349943 (f1 (n + 1) - f1 n).toNat

end

end A066135.P13827376022199740967

/-! ## A066135.P6994762645299015184

`A349943(Δ[9*A007088(n)])`
-/

namespace A066135.P6994762645299015184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349943 (f1 (n + 1) - f1 n).toNat

end

end A066135.P6994762645299015184

/-!
# A066136: Primes are replaced by their local sequence number in A000040, while composites are replaced by their sequence number in A002808; (a kind of eigen- or home-indexing).

The programs for A066136, the canonical program `A066136.P8726344444493965524` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066136 has offset 1).

The definition of A066136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066136.P8726344444493965524

`floor(A073897(n+1)/2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A066136

/-- `floor(A073897(n+1)/2)` -/
def P8726344444493965524.Spec : Prop :=
  ∀ n, P8726344444493965524.a n = A066136 (n + 1)

theorem P8726344444493965524.correct : P8726344444493965524.Spec := by
  intro n
  simp only [A066136, Nat.add_sub_cancel]

end A066136

/-! ## A066136.P2485250636266205864

`A049084(n+1)+A066246(n+1)`
-/

namespace A066136.P2485250636266205864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1) + A066246 (n + 1)

end

end A066136.P2485250636266205864

namespace A066136

/-- `A049084(n+1)+A066246(n+1)` -/
def P2485250636266205864.Spec : Prop :=
  ∀ n, P2485250636266205864.a n = A066136 (n + 1)

end A066136

/-! ## A066136.P14510851611745836349

`A026233(n+1)-A005171(n+1)`
-/

namespace A066136.P14510851611745836349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (n + 1) - A005171 (n + 1)

end

end A066136.P14510851611745836349

namespace A066136

/-- `A026233(n+1)-A005171(n+1)` -/
def P14510851611745836349.Spec : Prop :=
  ∀ n, P14510851611745836349.a n = A066136 (n + 1)

end A066136

/-! ## A066136.P5821849229143527164

`A073898(n+1)-A026233(n+1)`
-/

namespace A066136.P5821849229143527164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073898 (n + 1) - A026233 (n + 1)

end

end A066136.P5821849229143527164

namespace A066136

/-- `A073898(n+1)-A026233(n+1)` -/
def P5821849229143527164.Spec : Prop :=
  ∀ n, P5821849229143527164.a n = A066136 (n + 1)

end A066136

/-! ## A066136.P783499167569960242

`A010051(n+1)+A026233(n+1)-1`
-/

namespace A066136.P783499167569960242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A026233 (n + 1) - 1)

end

end A066136.P783499167569960242

namespace A066136

/-- `A010051(n+1)+A026233(n+1)-1` -/
def P783499167569960242.Spec : Prop :=
  ∀ n, P783499167569960242.a n = A066136 (n + 1)

end A066136

/-! ## A066136.P1740430089502916807

`abs(A089026(n+1)-(∑[(n+2)%A033676(n+1)]+1))`
-/

namespace A066136.P1740430089502916807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A033676 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A089026 (n + 1) - (∑ j ∈ Finset.range (n + 1), f1 j + 1)|

end

end A066136.P1740430089502916807

namespace A066136

/-- `abs(A089026(n+1)-(∑[(n+2)%A033676(n+1)]+1))` -/
def P1740430089502916807.Spec : Prop :=
  ∀ n, P1740430089502916807.a n = A066136 (n + 1)

end A066136

/-! ## A066136.P1241061996316177972

`A066246(n+1)+A000720(A089026(n+1))`
-/

namespace A066136.P1241061996316177972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1) + A000720 (A089026 (n + 1)).toNat

end

end A066136.P1241061996316177972

namespace A066136

/-- `A066246(n+1)+A000720(A089026(n+1))` -/
def P1241061996316177972.Spec : Prop :=
  ∀ n, P1241061996316177972.a n = A066136 (n + 1)

end A066136

/-! ## A066136.P13362637482383299369

`A026233(n+1)-A000007(A049084(n+1))`
-/

namespace A066136.P13362637482383299369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (n + 1) - A000007 (A049084 (n + 1)).toNat

end

end A066136.P13362637482383299369

namespace A066136

/-- `A026233(n+1)-A000007(A049084(n+1))` -/
def P13362637482383299369.Spec : Prop :=
  ∀ n, P13362637482383299369.a n = A066136 (n + 1)

end A066136

/-! ## A066136.P7088507036017831912

`A062298(n+1)-A097454(A089026(n+1))`
-/

namespace A066136.P7088507036017831912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A097454 (A089026 (n + 1)).toNat

end

end A066136.P7088507036017831912

namespace A066136

/-- `A062298(n+1)-A097454(A089026(n+1))` -/
def P7088507036017831912.Spec : Prop :=
  ∀ n, P7088507036017831912.a n = A066136 (n + 1)

end A066136

/-! ## A066136.P12837361223777991941

`A026233(n+1)-A057427(A239968(n+1))`
-/

namespace A066136.P12837361223777991941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (n + 1) - A057427 (A239968 (n + 1)).toNat

end

end A066136.P12837361223777991941

namespace A066136

/-- `A026233(n+1)-A057427(A239968(n+1))` -/
def P12837361223777991941.Spec : Prop :=
  ∀ n, P12837361223777991941.a n = A066136 (n + 1)

end A066136

/-! ## A066136.P12133646376557444499

`A026233(n+1)-∑{d}[A063918(n+1), A063918(#)]`
-/

namespace A066136.P12133646376557444499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (n + 1) - ∑ d ∈ Nat.divisors (f1 n).natAbs, A063918 d

end

end A066136.P12133646376557444499

namespace A066136

/-- `A026233(n+1)-∑{d}[A063918(n+1), A063918(#)]` -/
def P12133646376557444499.Spec : Prop :=
  ∀ n, P12133646376557444499.a n = A066136 (n + 1)

end A066136

/-! ## A066136.P4895868080885492060

`A049084(n+1)+A239968(n+1)-A005171(n+1)`
-/

namespace A066136.P4895868080885492060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1) + (A239968 (n + 1) - A005171 (n + 1))

end

end A066136.P4895868080885492060

namespace A066136

/-- `A049084(n+1)+A239968(n+1)-A005171(n+1)` -/
def P4895868080885492060.Spec : Prop :=
  ∀ n, P4895868080885492060.a n = A066136 (n + 1)

end A066136

/-! ## A066136.P10438731518642783876

`A026233(n+1)+A066246(n+1)-A239968(n+1)`
-/

namespace A066136.P10438731518642783876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (n + 1) + (A066246 (n + 1) - A239968 (n + 1))

end

end A066136.P10438731518642783876

namespace A066136

/-- `A026233(n+1)+A066246(n+1)-A239968(n+1)` -/
def P10438731518642783876.Spec : Prop :=
  ∀ n, P10438731518642783876.a n = A066136 (n + 1)

end A066136

/-! ## A066136.P6625436697189636728

`A066246(n+1)+A000720(n+1)*A010051(n+1)`
-/

namespace A066136.P6625436697189636728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1) + A000720 (n + 1) * A010051 (n + 1)

end

end A066136.P6625436697189636728

namespace A066136

/-- `A066246(n+1)+A000720(n+1)*A010051(n+1)` -/
def P6625436697189636728.Spec : Prop :=
  ∀ n, P6625436697189636728.a n = A066136 (n + 1)

end A066136

/-! ## A066136.P253114941330019120

`A066246(n+1)+A010051(n+1)*A026233(n+1)`
-/

namespace A066136.P253114941330019120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (n + 1) + A010051 (n + 1) * A026233 (n + 1)

end

end A066136.P253114941330019120

namespace A066136

/-- `A066246(n+1)+A010051(n+1)*A026233(n+1)` -/
def P253114941330019120.Spec : Prop :=
  ∀ n, P253114941330019120.a n = A066136 (n + 1)

end A066136

/-! ## A066136.P5420458220432340154

`A000720(n+1)+A066247(n+1)*A072731(n+1)`
-/

namespace A066136.P5420458220432340154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + A066247 (n + 1) * A072731 (n + 1)

end

end A066136.P5420458220432340154

namespace A066136

/-- `A000720(n+1)+A066247(n+1)*A072731(n+1)` -/
def P5420458220432340154.Spec : Prop :=
  ∀ n, P5420458220432340154.a n = A066136 (n + 1)

end A066136

/-! ## A066136.P1941416037841540165

`A065855(n+1)-A010051(n+1)*A072731(n+1)`
-/

namespace A066136.P1941416037841540165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) - A010051 (n + 1) * A072731 (n + 1)

end

end A066136.P1941416037841540165

namespace A066136

/-- `A065855(n+1)-A010051(n+1)*A072731(n+1)` -/
def P1941416037841540165.Spec : Prop :=
  ∀ n, P1941416037841540165.a n = A066136 (n + 1)

end A066136

/-! ## A066136.P7481323138119934284

`A026233(n+1)-A239968(n+1)/A062298(n+1)`
-/

namespace A066136.P7481323138119934284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026233 (n + 1) : ℚ) - (A239968 (n + 1) : ℚ) / (A062298 (n + 1) : ℚ)

end

end A066136.P7481323138119934284

namespace A066136

/-- `A026233(n+1)-A239968(n+1)/A062298(n+1)` -/
def P7481323138119934284.Spec : Prop :=
  ∀ n, P7481323138119934284.a n = (A066136 (n + 1) : ℚ)

end A066136

/-! ## A066136.P7274974179348686293

`A004526(A073897(n+1))`
-/

namespace A066136.P7274974179348686293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A073897 (n + 1)).toNat

end

end A066136.P7274974179348686293

namespace A066136

/-- `A004526(A073897(n+1))` -/
def P7274974179348686293.Spec : Prop :=
  ∀ n, P7274974179348686293.a n = A066136 (n + 1)

end A066136

/-! ## A066136.P982128770723288803

`A004526(A073898(n+1))`
-/

namespace A066136.P982128770723288803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A073898 (n + 1)).toNat

end

end A066136.P982128770723288803

namespace A066136

/-- `A004526(A073898(n+1))` -/
def P982128770723288803.Spec : Prop :=
  ∀ n, P982128770723288803.a n = A066136 (n + 1)

end A066136

/-!
# A066137: Covering numbers C(n,9,8).

The programs for A066137, there is no canonical definition to state claims against.
-/

/-! ## A066137.P9167538676384741715

`A327826(n)+or(1, ∑[or(1, n)])²`
-/

namespace A066137.P9167538676384741715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327826 n + (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ)

end

end A066137.P9167538676384741715

/-!
# A066138: a(n) = 10^(2*n) + 10^n + 1.

The programs for A066138, the canonical program `A066138.P15800142740498849672` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066138 has offset 0).

The definition of A066138 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^(2*n)+10^n+1` (program `A066138.P15800142740498849672`, by `A066138.P15800142740498849672.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066138.P15800142740498849672

`10^(2*n)+10^n+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066138

/-- `10^(2*n)+10^n+1` -/
def P15800142740498849672.Spec : Prop :=
  ∀ n, (P15800142740498849672.a n : ℤ) = A066138 n

theorem P15800142740498849672.correct : P15800142740498849672.Spec := by
  intro n
  simp only [A066138]

end A066138

/-! ## A066138.P14172724065555754482

`3*A074992(n)`
-/

namespace A066138.P14172724065555754482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A074992 n

end

end A066138.P14172724065555754482

namespace A066138

/-- `3*A074992(n)` -/
def P14172724065555754482.Spec : Prop :=
  ∀ n, P14172724065555754482.a n = A066138 n

end A066138

/-! ## A066138.P5181592832452540262

`lcm(3, or(1, 10^n)+and(-2, 10^n)²)`
-/

namespace A066138.P5181592832452540262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ((Nat.lor 1 (10 ^ n) : ℤ) + Int.land (-2) (10 ^ n : ℤ) ^ 2)

end

end A066138.P5181592832452540262

namespace A066138

/-- `lcm(3, or(1, 10^n)+and(-2, 10^n)²)` -/
def P5181592832452540262.Spec : Prop :=
  ∀ n, (P5181592832452540262.a n : ℤ) = A066138 n

end A066138

/-! ## A066138.P18427362028960563142

`(A177019(n)+2)/3`
-/

namespace A066138.P18427362028960563142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177019 n + 2 : ℚ) / 3

end

end A066138.P18427362028960563142

namespace A066138

/-- `(A177019(n)+2)/3` -/
def P18427362028960563142.Spec : Prop :=
  ∀ n, P18427362028960563142.a n = (A066138 n : ℚ)

theorem P18427362028960563142.correct : P18427362028960563142.Spec := by
  intro n
  simp only [A066138, Nat.add_sub_cancel, A066138.P18427362028960563142.a, A066138.P15800142740498849672.a, A177019, A177019.P12856081201860894678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066138

/-! ## A066138.P9776643409933780473

`lcm(3, A135577(n+1))`
-/

namespace A066138.P9776643409933780473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A135577 (n + 1))

end

end A066138.P9776643409933780473

namespace A066138

/-- `lcm(3, A135577(n+1))` -/
def P9776643409933780473.Spec : Prop :=
  ∀ n, (P9776643409933780473.a n : ℤ) = A066138 n

end A066138

/-! ## A066138.P3099531981404048038

`abs(10^n-A033934(n))`
-/

namespace A066138.P3099531981404048038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) - A033934 n|

end

end A066138.P3099531981404048038

namespace A066138

/-- `abs(10^n-A033934(n))` -/
def P3099531981404048038.Spec : Prop :=
  ∀ n, P3099531981404048038.a n = A066138 n

end A066138

/-!
# A066139: Squares in every base >=3 (involving no carries and no digit apart from 0, 1 and 2).

The programs for A066139, there is no canonical definition to state claims against.
-/

/-! ## A066139.P6437745263439998896

`A136808(n+1)²`
-/

namespace A066139.P6437745263439998896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136808 (n + 1) ^ 2

end

end A066139.P6437745263439998896

/-! ## A066139.P7723595222191587532

`(A136908(n+1)/2)²`
-/

namespace A066139.P7723595222191587532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A136908 (n + 1) : ℚ) / 2) ^ 2

end

end A066139.P7723595222191587532

/-! ## A066139.P3353016778017295532

`A063009(A337582(n+1))`
-/

namespace A066139.P3353016778017295532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063009 (A337582 (n + 1)).toNat

end

end A066139.P3353016778017295532

/-! ## A066139.P17847094991230860030

`∩[A001738(n), A063009(n)]`
-/

namespace A066139.P17847094991230860030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001738 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063009 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066139.P17847094991230860030

/-! ## A066139.P6195657868297554813

`∩[A061457(n+1), A001738(n)]`
-/

namespace A066139.P6195657868297554813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001738 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066139.P6195657868297554813

/-! ## A066139.P3128993152108292405

`∩[A129967(n+1), A001738(n)]`
-/

namespace A066139.P3128993152108292405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001738 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066139.P3128993152108292405

/-! ## A066139.P17344722352487726298

`∩[A158082(n+1), A001738(n)]`
-/

namespace A066139.P17344722352487726298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001738 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066139.P17344722352487726298

/-!
# A066141: a(n) = n^(n-1) + n + 1.

The programs for A066141, the canonical program `A066141.P2047095135149275920` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066141 has offset 1).

The definition of A066141 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^n+n+1+1` (program `A066141.P2047095135149275920`, by `A066141.P2047095135149275920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066141.P2047095135149275920

`(n+1)^n+n+1+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066141

/-- `(n+1)^n+n+1+1` -/
def P2047095135149275920.Spec : Prop :=
  ∀ n, (P2047095135149275920.a n : ℤ) = A066141 (n + 1)

theorem P2047095135149275920.correct : P2047095135149275920.Spec := by
  intro n
  simp only [A066141, Nat.add_sub_cancel]

end A066141

/-! ## A066141.P15398474677691049011

`or(1, A172165(n+1))`
-/

namespace A066141.P15398474677691049011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A172165 (n + 1))

end

end A066141.P15398474677691049011

namespace A066141

/-- `or(1, A172165(n+1))` -/
def P15398474677691049011.Spec : Prop :=
  ∀ n, P15398474677691049011.a n = A066141 (n + 1)

end A066141

/-! ## A066141.P15809894317594941835

`or(1, A173235(n+1)+1)`
-/

namespace A066141.P15809894317594941835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A173235 (n + 1) + 1)

end

end A066141.P15809894317594941835

namespace A066141

/-- `or(1, A173235(n+1)+1)` -/
def P15809894317594941835.Spec : Prop :=
  ∀ n, P15809894317594941835.a n = A066141 (n + 1)

end A066141

/-! ## A066141.P8494081344353289630

`xor(1, A000169(n+1)+n+1)`
-/

namespace A066141.P8494081344353289630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000169 (n + 1) + (n + 1 : ℤ))

end

end A066141.P8494081344353289630

namespace A066141

/-- `xor(1, A000169(n+1)+n+1)` -/
def P8494081344353289630.Spec : Prop :=
  ∀ n, P8494081344353289630.a n = A066141 (n + 1)

end A066141

/-! ## A066141.P8765423993198035108

`xor(1, A172165(A000027(n+1)))`
-/

namespace A066141.P8765423993198035108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A172165 (A000027 (n + 1)).toNat)

end

end A066141.P8765423993198035108

namespace A066141

/-- `xor(1, A172165(A000027(n+1)))` -/
def P8765423993198035108.Spec : Prop :=
  ∀ n, P8765423993198035108.a n = A066141 (n + 1)

end A066141

/-! ## A066141.P12025070125877345655

`xor(A106400(n)², A172165(n+1))`
-/

namespace A066141.P12025070125877345655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106400 n ^ 2) (A172165 (n + 1))

end

end A066141.P12025070125877345655

namespace A066141

/-- `xor(A106400(n)², A172165(n+1))` -/
def P12025070125877345655.Spec : Prop :=
  ∀ n, P12025070125877345655.a n = A066141 (n + 1)

end A066141

/-! ## A066141.P6149034279345319128

`xor(A007318(∑[n]), A172165(n+1))`
-/

namespace A066141.P6149034279345319128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A172165 (n + 1))

end

end A066141.P6149034279345319128

namespace A066141

/-- `xor(A007318(∑[n]), A172165(n+1))` -/
def P6149034279345319128.Spec : Prop :=
  ∀ n, P6149034279345319128.a n = A066141 (n + 1)

end A066141

/-! ## A066141.P10007720889839535628

`abs(A001478(n+1)-A124923(n+1))`
-/

namespace A066141.P10007720889839535628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001478 (n + 1) - A124923 (n + 1)|

end

end A066141.P10007720889839535628

namespace A066141

/-- `abs(A001478(n+1)-A124923(n+1))` -/
def P10007720889839535628.Spec : Prop :=
  ∀ n, P10007720889839535628.a n = A066141 (n + 1)

end A066141

/-! ## A066141.P3069080744730418686

`record[A201685(n+1)+A108872(n+1)]`
-/

namespace A066141.P3069080744730418686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201685 (n + 1) + A108872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066141.P3069080744730418686

namespace A066141

/-- `record[A201685(n+1)+A108872(n+1)]` -/
def P3069080744730418686.Spec : Prop :=
  ∀ n, P3069080744730418686.a n = A066141 (n + 1)

end A066141

/-! ## A066141.P9400484499291034809

`A302989(n+1)/(n+1)`
-/

namespace A066141.P9400484499291034809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302989 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A066141.P9400484499291034809

namespace A066141

/-- `A302989(n+1)/(n+1)` -/
def P9400484499291034809.Spec : Prop :=
  ∀ n, P9400484499291034809.a n = (A066141 (n + 1) : ℚ)

theorem P9400484499291034809.correct : P9400484499291034809.Spec := by
  intro n
  simp only [A066141, Nat.add_sub_cancel, A066141.P9400484499291034809.a, A066141.P2047095135149275920.a, A302989, A302989.P3463615677680757259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066141

/-!
# A066142: a(n) = (n!)^2 + n! + 1.

The programs for A066142, the canonical program `A066142.P17327499882956603005` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066142 has offset 0).

The definition of A066142 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!²+n!+1` (program `A066142.P17327499882956603005`, by `A066142.P17327499882956603005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066142.P17327499882956603005

`n!²+n!+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066142

/-- `n!²+n!+1` -/
def P17327499882956603005.Spec : Prop :=
  ∀ n, (P17327499882956603005.a n : ℤ) = A066142 n

theorem P17327499882956603005.correct : P17327499882956603005.Spec := by
  intro n
  simp only [A066142]

end A066142

/-! ## A066142.P13258611570940248022

`(n!+1)*n!+1`
-/

namespace A066142.P13258611570940248022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n + 1) * Nat.factorial n + 1

end

end A066142.P13258611570940248022

namespace A066142

/-- `(n!+1)*n!+1` -/
def P13258611570940248022.Spec : Prop :=
  ∀ n, (P13258611570940248022.a n : ℤ) = A066142 n

theorem P13258611570940248022.correct : P13258611570940248022.Spec := by
  intro n
  simp only [A066142, Nat.add_sub_cancel, A066142.P13258611570940248022.a, A066142.P17327499882956603005.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A066142

/-! ## A066142.P10665215630059798097

`lcm(n!+1, n!)+1`
-/

namespace A066142.P10665215630059798097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.factorial n + 1) (Nat.factorial n) + 1

end

end A066142.P10665215630059798097

namespace A066142

/-- `lcm(n!+1, n!)+1` -/
def P10665215630059798097.Spec : Prop :=
  ∀ n, (P10665215630059798097.a n : ℤ) = A066142 n

end A066142

/-! ## A066142.P8677387078437445890

`floor((∏[abs(1-n)+1]+1)²/4)+1`
-/

namespace A066142.P8677387078437445890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∏ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 : ℤ) : ℚ) / 4⌋ + 1

end

end A066142.P8677387078437445890

namespace A066142

/-- `floor((∏[abs(1-n)+1]+1)²/4)+1` -/
def P8677387078437445890.Spec : Prop :=
  ∀ n, P8677387078437445890.a n = A066142 n

end A066142

/-! ## A066142.P15743843715773394114

`or(1, A000142(n)+A000142(n)²)`
-/

namespace A066142.P15743843715773394114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000142 n + A000142 n ^ 2)

end

end A066142.P15743843715773394114

namespace A066142

/-- `or(1, A000142(n)+A000142(n)²)` -/
def P15743843715773394114.Spec : Prop :=
  ∀ n, P15743843715773394114.a n = A066142 n

end A066142

/-!
# A066143: a(n) = n! + n^2 + n.

The programs for A066143, the canonical program `A066143.P17504484635712324695` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066143 has offset 0).

The definition of A066143 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!+n²+n` (program `A066143.P17504484635712324695`, by `A066143.P17504484635712324695.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A066143.P17504484635712324695

`n!+n²+n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066143

/-- `n!+n²+n` -/
def P17504484635712324695.Spec : Prop :=
  ∀ n, (P17504484635712324695.a n : ℤ) = A066143 n

theorem P17504484635712324695.correct : P17504484635712324695.Spec := by
  intro n
  simp only [A066143]

end A066143

/-! ## A066143.P9337162613873803725

`A000142(n)+A002378(n)`
-/

namespace A066143.P9337162613873803725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + A002378 n

end

end A066143.P9337162613873803725

namespace A066143

/-- `A000142(n)+A002378(n)` -/
def P9337162613873803725.Spec : Prop :=
  ∀ n, P9337162613873803725.a n = A066143 n

theorem P9337162613873803725.correct : P9337162613873803725.Spec := by
  intro n
  simp only [A066143, Nat.add_sub_cancel, A066143.P9337162613873803725.a, A066143.P17504484635712324695.a, A000142, A000142.P3272619076580183195.a, A002378, A002378.P6342434596694243671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A066143

/-! ## A066143.P7648095635186352104

`∑[2*n]+n!`
-/

namespace A066143.P7648095635186352104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.factorial n

end

end A066143.P7648095635186352104

namespace A066143

/-- `∑[2*n]+n!` -/
def P7648095635186352104.Spec : Prop :=
  ∀ n, (P7648095635186352104.a n : ℤ) = A066143 n

end A066143

/-! ## A066143.P3771268899398708873

`n!+n*(n+1)`
-/

namespace A066143.P3771268899398708873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + n * (n + 1)

end

end A066143.P3771268899398708873

namespace A066143

/-- `n!+n*(n+1)` -/
def P3771268899398708873.Spec : Prop :=
  ∀ n, (P3771268899398708873.a n : ℤ) = A066143 n

theorem P3771268899398708873.correct : P3771268899398708873.Spec := by
  intro n
  simp only [A066143, Nat.add_sub_cancel, A066143.P3771268899398708873.a, A066143.P17504484635712324695.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A066143

/-! ## A066143.P11817725189911989957

`n^2+n!+n`
-/

namespace A066143.P11817725189911989957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (Nat.factorial n + n)

end

end A066143.P11817725189911989957

namespace A066143

/-- `n^2+n!+n` -/
def P11817725189911989957.Spec : Prop :=
  ∀ n, (P11817725189911989957.a n : ℤ) = A066143 n

theorem P11817725189911989957.correct : P11817725189911989957.Spec := by
  intro n
  simp only [A066143, Nat.add_sub_cancel, A066143.P11817725189911989957.a, A066143.P17504484635712324695.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A066143

/-! ## A066143.P12386883246930276602

`∑[n]+∑[n]+n!`
-/

namespace A066143.P12386883246930276602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j + Nat.factorial n)

end

end A066143.P12386883246930276602

namespace A066143

/-- `∑[n]+∑[n]+n!` -/
def P12386883246930276602.Spec : Prop :=
  ∀ n, (P12386883246930276602.a n : ℤ) = A066143 n

end A066143

/-! ## A066143.P8273842234316533846

`n*(a(n-1)+2-(1-n)²)` with `a(0)=1`
-/

namespace A066143.P8273842234316533846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (a (n - 1) + (2 - (1 - (n : ℤ)) ^ 2))

end

end A066143.P8273842234316533846

namespace A066143

/-- `n*(a(n-1)+2-(1-n)²)` -/
def P8273842234316533846.Spec : Prop :=
  ∀ n, P8273842234316533846.a n = A066143 n

end A066143

/-! ## A066143.P12697569262931231456

`n*(2-((1-n)²-a(n-1)))` with `a(0)=1`
-/

namespace A066143.P12697569262931231456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (2 - ((1 - (n : ℤ)) ^ 2 - a (n - 1)))

end

end A066143.P12697569262931231456

namespace A066143

/-- `n*(2-((1-n)²-a(n-1)))` -/
def P12697569262931231456.Spec : Prop :=
  ∀ n, P12697569262931231456.a n = A066143 n

end A066143

/-! ## A066143.P15926011408521728486

`n*(a(n-1)+n*(2-n)+1)` with `a(0)=1`
-/

namespace A066143.P15926011408521728486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (a (n - 1) + (n : ℤ) * (2 - (n : ℤ)) + 1)

end

end A066143.P15926011408521728486

namespace A066143

/-- `n*(a(n-1)+n*(2-n)+1)` -/
def P15926011408521728486.Spec : Prop :=
  ∀ n, P15926011408521728486.a n = A066143 n

end A066143

/-! ## A066143.P9855406732990860385

`n-n*(n*(n-2)-a(n-1))` with `a(0)=1`
-/

namespace A066143.P9855406732990860385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (n : ℤ) * ((n : ℤ) * ((n : ℤ) - 2) - a (n - 1))

end

end A066143.P9855406732990860385

namespace A066143

/-- `n-n*(n*(n-2)-a(n-1))` -/
def P9855406732990860385.Spec : Prop :=
  ∀ n, P9855406732990860385.a n = A066143 n

end A066143

/-!
# A066144: In base 2: n sets a new record for the number of 'Reverse and Add' steps needed to reach a palindrome starting with n.

The programs for A066144, there is no canonical definition to state claims against.
-/

/-! ## A066144.P5983638222400815405

`A066058(A066145(n+1))`
-/

namespace A066144.P5983638222400815405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066058 (A066145 (n + 1)).toNat

end

end A066144.P5983638222400815405

/-! ## A066144.P4499857733165674328

`A066058(record[A066057(n)])`
-/

namespace A066144.P4499857733165674328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066058 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066144.P4499857733165674328

/-! ## A066144.P14002294209395383408

`A066058(record[A324572(3*n)-A097051(3*n+1)])`
-/

namespace A066144.P14002294209395383408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324572 (3 * n) - A097051 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066058 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066144.P14002294209395383408

/-!
# A066145: In base 2, records for the number of 'Reverse and Add' steps needed to reach a palindrome.

The programs for A066145, there is no canonical definition to state claims against.
-/

/-! ## A066145.P13340759197498476631

`A066057(A066144(n+1))`
-/

namespace A066145.P13340759197498476631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 (A066144 (n + 1)).toNat

end

end A066145.P13340759197498476631

/-! ## A066145.P13038451262210249506

`record[A066057(A332572(n+1)-(n+1))]`
-/

namespace A066145.P13038451262210249506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 (A332572 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066145.P13038451262210249506

/-! ## A066145.P11124888615150490114

`eq[A262868(A262872(n)), A262881(n+3)]`
-/

namespace A066145.P11124888615150490114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (A262872 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262881 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066145.P11124888615150490114

/-! ## A066145.P2789954785354293764

`record[gcd(A123924(n+1), A353712(n))]`
-/

namespace A066145.P2789954785354293764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123924 (n + 1)) (A353712 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066145.P2789954785354293764

/-! ## A066145.P397719454344142227

`record[A324572(3*n)-A097051(3*n+1)]`
-/

namespace A066145.P397719454344142227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324572 (3 * n) - A097051 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066145.P397719454344142227

/-!
# A066146: Primes associated with A066042.

The programs for A066146, there is no canonical definition to state claims against.
-/

/-! ## A066146.P4963174636448181218

`p?[A049106(n+1)%A043043(n+1)]`
-/

namespace A066146.P4963174636448181218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049106 (n + 1)) (A043043 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066146.P4963174636448181218

/-! ## A066146.P1167555188348905790

`p?[A049106(n+1)]`
-/

namespace A066146.P1167555188348905790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066146.P1167555188348905790

/-! ## A066146.P1370254678330866666

`filter[A049106(n+1), A010051(#)]`
-/

namespace A066146.P1370254678330866666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A066146.P1370254678330866666

/-! ## A066146.P16895495952417103202

`filter[A049106(n+1), A323153(#)]`
-/

namespace A066146.P16895495952417103202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049106 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A066146.P16895495952417103202

/-!
# A066148: Primes with an even number of 0's in binary expansion.

The programs for A066148, the canonical program `A066148.P15850086910344057196` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066148 has offset 1).

The definition of A066148 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066148.P15850086910344057196

`p?[A059010(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066148

/-- `p?[A059010(n)]` -/
def P15850086910344057196.Spec : Prop :=
  ∀ n, P15850086910344057196.a n = A066148 (n + 1)

theorem P15850086910344057196.correct : P15850086910344057196.Spec := by
  intro n
  simp only [A066148, Nat.add_sub_cancel]

end A066148

/-! ## A066148.P3305339440924789164

`p?[A059009(n)+1]`
-/

namespace A066148.P3305339440924789164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066148.P3305339440924789164

namespace A066148

/-- `p?[A059009(n)+1]` -/
def P3305339440924789164.Spec : Prop :=
  ∀ n, P3305339440924789164.a n = A066148 (n + 1)

end A066148

/-! ## A066148.P13535956569218574430

`record[A006530(A059010(n+1))]`
-/

namespace A066148.P13535956569218574430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A059010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066148.P13535956569218574430

namespace A066148

/-- `record[A006530(A059010(n+1))]` -/
def P13535956569218574430.Spec : Prop :=
  ∀ n, P13535956569218574430.a n = A066148 (n + 1)

end A066148

/-! ## A066148.P18202753971641011065

`∩[A000040(n+1), A059010(n)]`
-/

namespace A066148.P18202753971641011065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066148.P18202753971641011065

namespace A066148

/-- `∩[A000040(n+1), A059010(n)]` -/
def P18202753971641011065.Spec : Prop :=
  ∀ n, (P18202753971641011065.a n : ℤ) = A066148 (n + 1)

end A066148

/-! ## A066148.P14753686279985890731

`∩[A004139(n+1), A059010(n)]`
-/

namespace A066148.P14753686279985890731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066148.P14753686279985890731

namespace A066148

/-- `∩[A004139(n+1), A059010(n)]` -/
def P14753686279985890731.Spec : Prop :=
  ∀ n, (P14753686279985890731.a n : ℤ) = A066148 (n + 1)

end A066148

/-! ## A066148.P1032495024528775623

`∩[A045319(n+1), A059010(n)]`
-/

namespace A066148.P1032495024528775623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066148.P1032495024528775623

namespace A066148

/-- `∩[A045319(n+1), A059010(n)]` -/
def P1032495024528775623.Spec : Prop :=
  ∀ n, (P1032495024528775623.a n : ℤ) = A066148 (n + 1)

end A066148

/-! ## A066148.P9120367287065538441

`∩[A059010(n), A065091(n+1)]`
-/

namespace A066148.P9120367287065538441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066148.P9120367287065538441

namespace A066148

/-- `∩[A059010(n), A065091(n+1)]` -/
def P9120367287065538441.Spec : Prop :=
  ∀ n, (P9120367287065538441.a n : ℤ) = A066148 (n + 1)

end A066148

/-! ## A066148.P15544939442501998532

`∩[A059010(n), A106118(n+1)]`
-/

namespace A066148.P15544939442501998532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066148.P15544939442501998532

namespace A066148

/-- `∩[A059010(n), A106118(n+1)]` -/
def P15544939442501998532.Spec : Prop :=
  ∀ n, (P15544939442501998532.a n : ℤ) = A066148 (n + 1)

end A066148

/-! ## A066148.P16808523623929497783

`∩[A059010(n), A116974(n+1)]`
-/

namespace A066148.P16808523623929497783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066148.P16808523623929497783

namespace A066148

/-- `∩[A059010(n), A116974(n+1)]` -/
def P16808523623929497783.Spec : Prop :=
  ∀ n, (P16808523623929497783.a n : ℤ) = A066148 (n + 1)

end A066148

/-! ## A066148.P2839947964731669310

`∩[A059010(n), A182986(n+1)]`
-/

namespace A066148.P2839947964731669310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066148.P2839947964731669310

namespace A066148

/-- `∩[A059010(n), A182986(n+1)]` -/
def P2839947964731669310.Spec : Prop :=
  ∀ n, (P2839947964731669310.a n : ℤ) = A066148 (n + 1)

end A066148

/-! ## A066148.P24654836467626107

`∩[A059010(n), A197636(n+1)]`
-/

namespace A066148.P24654836467626107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066148.P24654836467626107

namespace A066148

/-- `∩[A059010(n), A197636(n+1)]` -/
def P24654836467626107.Spec : Prop :=
  ∀ n, (P24654836467626107.a n : ℤ) = A066148 (n + 1)

end A066148

/-! ## A066148.P5192219650990812567

`∩[A059010(n), A351398(n+1)]`
-/

namespace A066148.P5192219650990812567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066148.P5192219650990812567

namespace A066148

/-- `∩[A059010(n), A351398(n+1)]` -/
def P5192219650990812567.Spec : Prop :=
  ∀ n, (P5192219650990812567.a n : ℤ) = A066148 (n + 1)

end A066148

/-! ## A066148.P17322226790461621715

`record[A006530(A059009(n+1)+1)]`
-/

namespace A066148.P17322226790461621715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A059009 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066148.P17322226790461621715

namespace A066148

/-- `record[A006530(A059009(n+1)+1)]` -/
def P17322226790461621715.Spec : Prop :=
  ∀ n, P17322226790461621715.a n = A066148 (n + 1)

end A066148

/-! ## A066148.P9438548729135753766

`p?[A328012(n+1)]`
-/

namespace A066148.P9438548729135753766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066148.P9438548729135753766

namespace A066148

/-- `p?[A328012(n+1)]` -/
def P9438548729135753766.Spec : Prop :=
  ∀ n, P9438548729135753766.a n = A066148 (n + 1)

end A066148

/-! ## A066148.P4070978713132740725

`record[A006530(A328012(n+2))]`
-/

namespace A066148.P4070978713132740725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A328012 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066148.P4070978713132740725

namespace A066148

/-- `record[A006530(A328012(n+2))]` -/
def P4070978713132740725.Spec : Prop :=
  ∀ n, P4070978713132740725.a n = A066148 (n + 1)

end A066148

/-! ## A066148.P11270163677254754797

`filter[A328012(n+1), A010051(#)]`
-/

namespace A066148.P11270163677254754797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A066148.P11270163677254754797

namespace A066148

/-- `filter[A328012(n+1), A010051(#)]` -/
def P11270163677254754797.Spec : Prop :=
  ∀ n, P11270163677254754797.a n = A066148 (n + 1)

end A066148

/-! ## A066148.P14525655612750087365

`filter[A328012(n+1), A323153(#)]`
-/

namespace A066148.P14525655612750087365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A066148.P14525655612750087365

namespace A066148

/-- `filter[A328012(n+1), A323153(#)]` -/
def P14525655612750087365.Spec : Prop :=
  ∀ n, P14525655612750087365.a n = A066148 (n + 1)

end A066148

/-! ## A066148.P5992909964639866596

`filter[A328012(n+1), A353670(#)]`
-/

namespace A066148.P5992909964639866596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A066148.P5992909964639866596

namespace A066148

/-- `filter[A328012(n+1), A353670(#)]` -/
def P5992909964639866596.Spec : Prop :=
  ∀ n, P5992909964639866596.a n = A066148 (n + 1)

end A066148

/-! ## A066148.P11409265287225564888

`filter[A328012(n+1), A379969(#)]`
-/

namespace A066148.P11409265287225564888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A066148.P11409265287225564888

namespace A066148

/-- `filter[A328012(n+1), A379969(#)]` -/
def P11409265287225564888.Spec : Prop :=
  ∀ n, P11409265287225564888.a n = A066148 (n + 1)

end A066148

/-! ## A066148.P7479066232526437051

`filter[A328012(n+2), A323152(#)]`
-/

namespace A066148.P7479066232526437051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328012 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A066148.P7479066232526437051

namespace A066148

/-- `filter[A328012(n+2), A323152(#)]` -/
def P7479066232526437051.Spec : Prop :=
  ∀ n, P7479066232526437051.a n = A066148 (n + 1)

end A066148

/-!
# A066149: Primes with an odd number of 0's in binary expansion.

The programs for A066149, the canonical program `A066149.P805672905176407907` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066149 has offset 1).

The definition of A066149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2769 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066149.P805672905176407907

`p?[A059009(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A066149

/-- `p?[A059009(n)]` -/
def P805672905176407907.Spec : Prop :=
  ∀ n, P805672905176407907.a n = A066149 (n + 1)

theorem P805672905176407907.correct : P805672905176407907.Spec := by
  intro n
  simp only [A066149, Nat.add_sub_cancel]

end A066149

/-! ## A066149.P14658465802242378367

`p?[A059010(n)+1]`
-/

namespace A066149.P14658465802242378367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066149.P14658465802242378367

namespace A066149

/-- `p?[A059010(n)+1]` -/
def P14658465802242378367.Spec : Prop :=
  ∀ n, P14658465802242378367.a n = A066149 (n + 1)

end A066149

/-! ## A066149.P15365659995685349844

`record[A006530(A059009(n+1))]`
-/

namespace A066149.P15365659995685349844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A059009 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066149.P15365659995685349844

namespace A066149

/-- `record[A006530(A059009(n+1))]` -/
def P15365659995685349844.Spec : Prop :=
  ∀ n, P15365659995685349844.a n = A066149 (n + 1)

end A066149

/-! ## A066149.P18082996927304026471

`record[A006530(A059010(n)+1)]`
-/

namespace A066149.P18082996927304026471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A059010 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066149.P18082996927304026471

namespace A066149

/-- `record[A006530(A059010(n)+1)]` -/
def P18082996927304026471.Spec : Prop :=
  ∀ n, P18082996927304026471.a n = A066149 (n + 1)

end A066149

/-! ## A066149.P14112461574778877606

`∩[A000040(n+1), A059009(n)]`
-/

namespace A066149.P14112461574778877606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066149.P14112461574778877606

namespace A066149

/-- `∩[A000040(n+1), A059009(n)]` -/
def P14112461574778877606.Spec : Prop :=
  ∀ n, (P14112461574778877606.a n : ℤ) = A066149 (n + 1)

end A066149

/-! ## A066149.P12756413505591561013

`∩[A008578(n+1), A059009(n)]`
-/

namespace A066149.P12756413505591561013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066149.P12756413505591561013

namespace A066149

/-- `∩[A008578(n+1), A059009(n)]` -/
def P12756413505591561013.Spec : Prop :=
  ∀ n, (P12756413505591561013.a n : ℤ) = A066149 (n + 1)

end A066149

/-! ## A066149.P3916962436600349270

`∩[A033946(n+1), A059009(n)]`
-/

namespace A066149.P3916962436600349270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066149.P3916962436600349270

namespace A066149

/-- `∩[A033946(n+1), A059009(n)]` -/
def P3916962436600349270.Spec : Prop :=
  ∀ n, (P3916962436600349270.a n : ℤ) = A066149 (n + 1)

end A066149

/-! ## A066149.P1364461497450944120

`∩[A045344(n+1), A059009(n)]`
-/

namespace A066149.P1364461497450944120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066149.P1364461497450944120

namespace A066149

/-- `∩[A045344(n+1), A059009(n)]` -/
def P1364461497450944120.Spec : Prop :=
  ∀ n, (P1364461497450944120.a n : ℤ) = A066149 (n + 1)

end A066149

/-! ## A066149.P7134205768538846356

`∩[A046022(n+1), A059009(n)]`
-/

namespace A066149.P7134205768538846356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066149.P7134205768538846356

namespace A066149

/-- `∩[A046022(n+1), A059009(n)]` -/
def P7134205768538846356.Spec : Prop :=
  ∀ n, (P7134205768538846356.a n : ℤ) = A066149 (n + 1)

end A066149

/-! ## A066149.P9415813328600806189

`∩[A062972(n+1), A059009(n)]`
-/

namespace A066149.P9415813328600806189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066149.P9415813328600806189

namespace A066149

/-- `∩[A062972(n+1), A059009(n)]` -/
def P9415813328600806189.Spec : Prop :=
  ∀ n, (P9415813328600806189.a n : ℤ) = A066149 (n + 1)

end A066149

/-! ## A066149.P16270956785696345287

`∩[A066050(n+1), A059009(n)]`
-/

namespace A066149.P16270956785696345287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066149.P16270956785696345287

namespace A066149

/-- `∩[A066050(n+1), A059009(n)]` -/
def P16270956785696345287.Spec : Prop :=
  ∀ n, (P16270956785696345287.a n : ℤ) = A066149 (n + 1)

end A066149

/-! ## A066149.P2499997844628069015

`∩[A067126(n+1), A059009(n)]`
-/

namespace A066149.P2499997844628069015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066149.P2499997844628069015

namespace A066149

/-- `∩[A067126(n+1), A059009(n)]` -/
def P2499997844628069015.Spec : Prop :=
  ∀ n, (P2499997844628069015.a n : ℤ) = A066149 (n + 1)

end A066149

/-! ## A066149.P10356699624997634182

`∩[A138837(n+1), A059009(n)]`
-/

namespace A066149.P10356699624997634182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066149.P10356699624997634182

namespace A066149

/-- `∩[A138837(n+1), A059009(n)]` -/
def P10356699624997634182.Spec : Prop :=
  ∀ n, (P10356699624997634182.a n : ℤ) = A066149 (n + 1)

end A066149

/-! ## A066149.P8524217506200150766

`∩[A175787(n+1), A059009(n)]`
-/

namespace A066149.P8524217506200150766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066149.P8524217506200150766

namespace A066149

/-- `∩[A175787(n+1), A059009(n)]` -/
def P8524217506200150766.Spec : Prop :=
  ∀ n, (P8524217506200150766.a n : ℤ) = A066149 (n + 1)

end A066149

/-! ## A066149.P5170238432166699165

`∩[A059009(n), A372059(n+1)]`
-/

namespace A066149.P5170238432166699165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066149.P5170238432166699165

namespace A066149

/-- `∩[A059009(n), A372059(n+1)]` -/
def P5170238432166699165.Spec : Prop :=
  ∀ n, (P5170238432166699165.a n : ℤ) = A066149 (n + 1)

end A066149

/-! ## A066149.P2402942469271390657

`∩[A000040(n+1), A059010(n)+1]`
-/

namespace A066149.P2402942469271390657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066149.P2402942469271390657

namespace A066149

/-- `∩[A000040(n+1), A059010(n)+1]` -/
def P2402942469271390657.Spec : Prop :=
  ∀ n, (P2402942469271390657.a n : ℤ) = A066149 (n + 1)

end A066149

/-! ## A066149.P14419439001827238125

`p?[comp[A059010(n)]]`
-/

namespace A066149.P14419439001827238125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A066149.P14419439001827238125

namespace A066149

/-- `p?[comp[A059010(n)]]` -/
def P14419439001827238125.Spec : Prop :=
  ∀ n, (P14419439001827238125.a n : ℤ) = A066149 (n + 1)

end A066149

/-! ## A066149.P6732877297777986575

`filter[A059009(n+1), A010051(#)]`
-/

namespace A066149.P6732877297777986575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A066149.P6732877297777986575

namespace A066149

/-- `filter[A059009(n+1), A010051(#)]` -/
def P6732877297777986575.Spec : Prop :=
  ∀ n, P6732877297777986575.a n = A066149 (n + 1)

end A066149

/-! ## A066149.P16439630212347936322

`record[A006530(A328012(n+1)+1)]`
-/

namespace A066149.P16439630212347936322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A328012 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066149.P16439630212347936322

namespace A066149

/-- `record[A006530(A328012(n+1)+1)]` -/
def P16439630212347936322.Spec : Prop :=
  ∀ n, P16439630212347936322.a n = A066149 (n + 1)

end A066149

/-! ## A066149.P14776140109635768275

`p?[A000035(A080791(n))+2*n]`
-/

namespace A066149.P14776140109635768275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A080791 n).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066149.P14776140109635768275

namespace A066149

/-- `p?[A000035(A080791(n))+2*n]` -/
def P14776140109635768275.Spec : Prop :=
  ∀ n, P14776140109635768275.a n = A066149 (n + 1)

end A066149

/-!
# A066150: Maximal number of divisors of any n-digit number.

The programs for A066150, there is no canonical definition to state claims against.
-/

/-! ## A066150.P1676185098455958572

`A000005(A066151(n+1))`
-/

namespace A066150.P1676185098455958572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A066151 (n + 1)).toNat

end

end A066150.P1676185098455958572

/-! ## A066150.P13459199550145008612

`A002183(A112781(n+1))`
-/

namespace A066150.P13459199550145008612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (A112781 (n + 1)).toNat

end

end A066150.P13459199550145008612

/-! ## A066150.P8070118222902785205

`A002183(∑[A112780(n+1)])`
-/

namespace A066150.P8070118222902785205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066150.P8070118222902785205

/-!
# A066151: Smallest n-digit number with A066150(n) divisors.

The programs for A066151, there is no canonical definition to state claims against.
-/

/-! ## A066151.P3303921923345070293

`A002182(A112781(n+1))`
-/

namespace A066151.P3303921923345070293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (A112781 (n + 1)).toNat

end

end A066151.P3303921923345070293

/-! ## A066151.P7780744617665599736

`A002182(∑[A112780(n+1)])`
-/

namespace A066151.P7780744617665599736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066151.P7780744617665599736

/-! ## A066151.P7386179454924940999

`A135372(A112781(n+1))-A178334(n)!`
-/

namespace A066151.P7386179454924940999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (A112781 (n + 1)).toNat - (Nat.factorial (A178334 n).toNat : ℤ)

end

end A066151.P7386179454924940999

/-! ## A066151.P12672202070191901515

`A135372(A112781(n+1))+A057428(A005378(n))`
-/

namespace A066151.P12672202070191901515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (A112781 (n + 1)).toNat + A057428 (A005378 n).toNat

end

end A066151.P12672202070191901515

/-! ## A066151.P12297226919446076089

`A135372(A112781(n+1))+A057428(A008621(n))`
-/

namespace A066151.P12297226919446076089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (A112781 (n + 1)).toNat + A057428 (A008621 n).toNat

end

end A066151.P12297226919446076089

/-! ## A066151.P3735581541458175214

`A135372(A112781(n+1))+A057428(A039960(n))`
-/

namespace A066151.P3735581541458175214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (A112781 (n + 1)).toNat + A057428 (A039960 n).toNat

end

end A066151.P3735581541458175214

/-! ## A066151.P14959039954529130248

`A135372(A112781(n+1))-A007318(A000096(n))`
-/

namespace A066151.P14959039954529130248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (A112781 (n + 1)).toNat - A007318 (A000096 n).toNat

end

end A066151.P14959039954529130248

/-! ## A066151.P6342974174809573073

`A135372(A112781(n+1))+A057428(A067004(n+1))`
-/

namespace A066151.P6342974174809573073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (A112781 (n + 1)).toNat + A057428 (A067004 (n + 1)).toNat

end

end A066151.P6342974174809573073

/-!
# A066153: (product of digits of n) * (sum of digits of n) = 4n.

The programs for A066153, there is no canonical definition to state claims against.
-/

/-! ## A066153.P14016236129690612573

`(Δ[(n-2)/gcd(2, n)]+n)²*A370066(n)`
-/

namespace A066153.P14016236129690612573
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n : ℚ)) ^ 2 * (A370066 n : ℚ)

end

end A066153.P14016236129690612573

/-!
# A066158: Number of fixed polyominoes with n cells and tree-like structure.

The programs for A066158, there is no canonical definition to state claims against.
-/

/-! ## A066158.P15624263673284891906

`A292563(n)+A192074(n+1)`
-/

namespace A066158.P15624263673284891906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292563 n + A192074 (n + 1)

end

end A066158.P15624263673284891906

/-! ## A066158.P17063837979827668572

`A192074(n+1)+A036452(n+1)`
-/

namespace A066158.P17063837979827668572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192074 (n + 1) + A036452 (n + 1)

end

end A066158.P17063837979827668572

/-! ## A066158.P14180033647244754926

`A192074(n+1)+A036453(n+1)`
-/

namespace A066158.P14180033647244754926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192074 (n + 1) + A036453 (n + 1)

end

end A066158.P14180033647244754926

/-! ## A066158.P3395342714943264244

`A242253(n+1)+A192074(n+1)`
-/

namespace A066158.P3395342714943264244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242253 (n + 1) + A192074 (n + 1)

end

end A066158.P3395342714943264244

/-!
# A066159: Numbers k such that 4k-1 divides (2k-1)! + 1.

The programs for A066159, there is no canonical definition to state claims against.
-/

/-! ## A066159.P4948990252596806536

`ceil(A053662(n+1)/2)`
-/

namespace A066159.P4948990252596806536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053662 (n + 1) : ℚ) / 2⌉

end

end A066159.P4948990252596806536

/-! ## A066159.P12348565108283014324

`(A055939(n+1)+1)/4`
-/

namespace A066159.P12348565108283014324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055939 (n + 1) + 1 : ℚ) / 4

end

end A066159.P12348565108283014324

/-! ## A066159.P4028256894926569967

`A000203(A055939(n+1))/4`
-/

namespace A066159.P4028256894926569967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A055939 (n + 1)).toNat : ℚ) / 4

end

end A066159.P4028256894926569967

/-! ## A066159.P13332997918948270708

`A000463(A053662(n+1))`
-/

namespace A066159.P13332997918948270708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A053662 (n + 1)).toNat

end

end A066159.P13332997918948270708

/-! ## A066159.P1036145974997963008

`A004525(A053662(n+1)+1)`
-/

namespace A066159.P1036145974997963008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A053662 (n + 1) + 1).toNat

end

end A066159.P1036145974997963008

/-! ## A066159.P12564527083924723787

`A004526(A053662(n+1)+1)`
-/

namespace A066159.P12564527083924723787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A053662 (n + 1) + 1).toNat

end

end A066159.P12564527083924723787

/-! ## A066159.P11027365634480038660

`A110654(A053662(n+1)+1)`
-/

namespace A066159.P11027365634480038660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A053662 (n + 1) + 1).toNat

end

end A066159.P11027365634480038660

/-! ## A066159.P10150946306845788820

`A008621(A055939(n+1))`
-/

namespace A066159.P10150946306845788820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A055939 (n + 1)).toNat

end

end A066159.P10150946306845788820

/-!
# A066160: Numbers k such that 4k-1 divides (2k-1)! - 1.

The programs for A066160, there is no canonical definition to state claims against.
-/

/-! ## A066160.P9338000307970210224

`ceil(A058302(n+1)/4)`
-/

namespace A066160.P9338000307970210224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A058302 (n + 1) : ℚ) / 4⌉

end

end A066160.P9338000307970210224

/-! ## A066160.P7314753193758787839

`A003602((A058302(n+1)-1)/2)`
-/

namespace A066160.P7314753193758787839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.roundAway ((A058302 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A066160.P7314753193758787839

/-! ## A066160.P16942262432837929095

`A008621(A058302(n+1))`
-/

namespace A066160.P16942262432837929095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A058302 (n + 1)).toNat

end

end A066160.P16942262432837929095

/-! ## A066160.P18302349039431290564

`A008624(p?[A058302(n+1)])`
-/

namespace A066160.P18302349039431290564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A066160.P18302349039431290564

/-! ## A066160.P15474451016228994177

`A110657(A058302(n+1)+1)`
-/

namespace A066160.P15474451016228994177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A058302 (n + 1) + 1).toNat

end

end A066160.P15474451016228994177

/-! ## A066160.P7049813860165763655

`A003602(A058302(n+1)-1)`
-/

namespace A066160.P7049813860165763655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A058302 (n + 1) - 1).toNat

end

end A066160.P7049813860165763655

/-! ## A066160.P5499746224693452658

`A008624(or(1, A058302(n+1)))`
-/

namespace A066160.P5499746224693452658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.lor 1 (A058302 (n + 1))).toNat

end

end A066160.P5499746224693452658

/-! ## A066160.P2450634592002951946

`A003602(xor(1, A058302(n+1)))`
-/

namespace A066160.P2450634592002951946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.xor 1 (A058302 (n + 1))).toNat

end

end A066160.P2450634592002951946

/-! ## A066160.P12019533448483244840

`A003602(2*A058302(n+1))/2`
-/

namespace A066160.P12019533448483244840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003602 (2 * A058302 (n + 1)).toNat : ℚ) / 2

end

end A066160.P12019533448483244840

/-! ## A066160.P15397550033730550581

`A081753(3*A058302(n+1))`
-/

namespace A066160.P15397550033730550581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (3 * A058302 (n + 1)).toNat

end

end A066160.P15397550033730550581

/-! ## A066160.P10160109318038525807

`A081753(lcm(3, A058302(n+1)))`
-/

namespace A066160.P10160109318038525807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (Int.lcm 3 (A058302 (n + 1)))

end

end A066160.P10160109318038525807

/-!
# A066161: Let p = n-th prime; sequence gives ((p-2)!-1)/p.

The programs for A066161, there is no canonical definition to state claims against.
-/

/-! ## A066161.P3344687280964306190

`floor(A137149(n+1)/A030475(n+1))`
-/

namespace A066161.P3344687280964306190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A137149 (n + 1) : ℚ) / (A030475 (n + 1) : ℚ)⌋

end

end A066161.P3344687280964306190

/-! ## A066161.P10062953491047714642

`A091330(n+1)/(A030475(n+1)-1)`
-/

namespace A066161.P10062953491047714642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091330 (n + 1) : ℚ) / (A030475 (n + 1) - 1 : ℚ)

end

end A066161.P10062953491047714642

/-! ## A066161.P6796636754424193130

`A091330(n+1)/A000010(A030475(n+1))`
-/

namespace A066161.P6796636754424193130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091330 (n + 1) : ℚ) / (A000010 (A030475 (n + 1)).toNat : ℚ)

end

end A066161.P6796636754424193130

/-! ## A066161.P17329710672963539731

`A064852(A000040(n+1))/(A000040(n+1)-1)`
-/

namespace A066161.P17329710672963539731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064852 (A000040 (n + 1)).toNat : ℚ) / (A000040 (n + 1) - 1 : ℚ)

end

end A066161.P17329710672963539731

/-! ## A066161.P3369425894441848699

`A033312(A000040(n+1)-2)/A000040(n+1)`
-/

namespace A066161.P3369425894441848699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033312 (A000040 (n + 1) - 2).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A066161.P3369425894441848699

/-!
# A066164: Sum of interior angles in an n-sided polygon in degrees.

The programs for A066164, the canonical program `A066164.P10542613699364172950` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066164 has offset 3).

The definition of A066164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066164.P10542613699364172950

`(n+1)*180`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066164

/-- `(n+1)*180` -/
def P10542613699364172950.Spec : Prop :=
  ∀ n, (P10542613699364172950.a n : ℤ) = A066164 (n + 3)

theorem P10542613699364172950.correct : P10542613699364172950.Spec := by
  intro n
  simp only [A066164, Nat.add_sub_cancel]

end A066164

/-!
# A066165: Variant of Stanley's children's game. Class of n (named) children forms into rings of at least two with exactly one child inside each ring. a(n) gives number of possibilities, including clockwise order (or which hand is held), in each ring.

The programs for A066165, there is no canonical definition to state claims against.
-/

/-! ## A066165.P9365187513725961986

`∑{d}[A195119(Δ[A000522(n+1)]), #]`
-/

namespace A066165.P9365187513725961986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A066165.P9365187513725961986

/-!
# A066166: Stanley's children's game. Class of n (named) children forms into rings with exactly one child inside each ring. We allow the case when outer ring has only one child. a(n) gives number of possibilities, including clockwise order (or which hand is held), in each ring.

The programs for A066166, there is no canonical definition to state claims against.
-/

/-! ## A066166.P16712652261875654215

`abs(A007113(n+2))`
-/

namespace A066166.P16712652261875654215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007113 (n + 2)|

end

end A066166.P16712652261875654215

/-! ## A066166.P9036064291283751754

`A355609(A155212(n)+6)`
-/

namespace A066166.P9036064291283751754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (A155212 n + 6).toNat

end

end A066166.P9036064291283751754

/-! ## A066166.P1397860698859233501

`A355609(A000096(n+3)-1)`
-/

namespace A066166.P1397860698859233501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355609 (A000096 (n + 3) - 1).toNat

end

end A066166.P1397860698859233501

/-! ## A066166.P17843976782593613103

`A007113(n+2)*A033999(n)`
-/

namespace A066166.P17843976782593613103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007113 (n + 2) * A033999 n

end

end A066166.P17843976782593613103

/-! ## A066166.P1928005470344687375

`lcm(A007113(n+2), A008619(n))`
-/

namespace A066166.P1928005470344687375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007113 (n + 2)) (A008619 n)

end

end A066166.P1928005470344687375

/-! ## A066166.P15598033175107672938

`gcd(A008683(A016838(n)), A007113(n+2))`
-/

namespace A066166.P15598033175107672938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A016838 n).toNat) (A007113 (n + 2))

end

end A066166.P15598033175107672938

/-!
# A066168: a(n) = least k such that phi(k) > sigma(n).

The programs for A066168, the canonical program `A066168.P525393161361809631` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066168 has offset 1).

The definition of A066168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066168.P525393161361809631

`A151800(∑{d}[n+1, #]+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066168

/-- `A151800(∑{d}[n+1, #]+1)` -/
def P525393161361809631.Spec : Prop :=
  ∀ n, P525393161361809631.a n = A066168 (n + 1)

theorem P525393161361809631.correct : P525393161361809631.Spec := by
  intro n
  simp only [A066168, Nat.add_sub_cancel]

end A066168

/-! ## A066168.P5074596814776199649

`A151800(A088580(n+1))`
-/

namespace A066168.P5074596814776199649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A088580 (n + 1)).toNat

end

end A066168.P5074596814776199649

namespace A066168

/-- `A151800(A088580(n+1))` -/
def P5074596814776199649.Spec : Prop :=
  ∀ n, P5074596814776199649.a n = A066168 (n + 1)

end A066168

/-! ## A066168.P13215147441042211156

`A151800(Δ[A160664(n)]+1)`
-/

namespace A066168.P13215147441042211156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (n + 1) - f1 n + 1).toNat

end

end A066168.P13215147441042211156

namespace A066168

/-- `A151800(Δ[A160664(n)]+1)` -/
def P13215147441042211156.Spec : Prop :=
  ∀ n, P13215147441042211156.a n = A066168 (n + 1)

end A066168

/-! ## A066168.P4390362086732284507

`A151800(A000203(n+1)+1)`
-/

namespace A066168.P4390362086732284507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000203 (n + 1) + 1).toNat

end

end A066168.P4390362086732284507

namespace A066168

/-- `A151800(A000203(n+1)+1)` -/
def P4390362086732284507.Spec : Prop :=
  ∀ n, P4390362086732284507.a n = A066168 (n + 1)

end A066168

/-! ## A066168.P12562616619413261622

`A151800(A039653(n+1)+2)`
-/

namespace A066168.P12562616619413261622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A039653 (n + 1) + 2).toNat

end

end A066168.P12562616619413261622

namespace A066168

/-- `A151800(A039653(n+1)+2)` -/
def P12562616619413261622.Spec : Prop :=
  ∀ n, P12562616619413261622.a n = A066168 (n + 1)

end A066168

/-! ## A066168.P3306276450108322353

`A151800(A155085(n+1)-n)`
-/

namespace A066168.P3306276450108322353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A155085 (n + 1) - (n : ℤ)).toNat

end

end A066168.P3306276450108322353

namespace A066168

/-- `A151800(A155085(n+1)-n)` -/
def P3306276450108322353.Spec : Prop :=
  ∀ n, P3306276450108322353.a n = A066168 (n + 1)

end A066168

/-! ## A066168.P1032982915065536555

`A151800(sqrt(A072861(n+1))+1)`
-/

namespace A066168.P1032982915065536555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ) + 1)).toNat

end

end A066168.P1032982915065536555

namespace A066168

/-- `A151800(sqrt(A072861(n+1))+1)` -/
def P1032982915065536555.Spec : Prop :=
  ∀ n, P1032982915065536555.a n = A066168 (n + 1)

end A066168

/-! ## A066168.P16299217497379394309

`A151800(A245092(2*n+1)+1)`
-/

namespace A066168.P16299217497379394309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A245092 (2 * n + 1) + 1).toNat

end

end A066168.P16299217497379394309

namespace A066168

/-- `A151800(A245092(2*n+1)+1)` -/
def P16299217497379394309.Spec : Prop :=
  ∀ n, P16299217497379394309.a n = A066168 (n + 1)

end A066168

/-! ## A066168.P1689610933128180658

`A151800(A001065(n+1)+2+n)`
-/

namespace A066168.P1689610933128180658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001065 (n + 1) + 2 + (n : ℤ)).toNat

end

end A066168.P1689610933128180658

namespace A066168

/-- `A151800(A001065(n+1)+2+n)` -/
def P1689610933128180658.Spec : Prop :=
  ∀ n, P1689610933128180658.a n = A066168 (n + 1)

end A066168

/-! ## A066168.P18306668379403560141

`A151800(A064987(n+1)/(n+1)+1)`
-/

namespace A066168.P18306668379403560141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) + 1)).toNat

end

end A066168.P18306668379403560141

namespace A066168

/-- `A151800(A064987(n+1)/(n+1)+1)` -/
def P18306668379403560141.Spec : Prop :=
  ∀ n, P18306668379403560141.a n = A066168 (n + 1)

end A066168

/-! ## A066168.P11097496437396301712

`A151800(A092261(n+1)*A295294(n+1)+1)`
-/

namespace A066168.P11097496437396301712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A092261 (n + 1) * A295294 (n + 1) + 1).toNat

end

end A066168.P11097496437396301712

namespace A066168

/-- `A151800(A092261(n+1)*A295294(n+1)+1)` -/
def P11097496437396301712.Spec : Prop :=
  ∀ n, P11097496437396301712.a n = A066168 (n + 1)

end A066168

/-! ## A066168.P1069201659822110911

`A151800(A341529(n+1)/A003961(n+1)+1)`
-/

namespace A066168.P1069201659822110911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A341529 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ) + 1)).toNat

end

end A066168.P1069201659822110911

namespace A066168

/-- `A151800(A341529(n+1)/A003961(n+1)+1)` -/
def P1069201659822110911.Spec : Prop :=
  ∀ n, P1069201659822110911.a n = A066168 (n + 1)

end A066168

/-! ## A066168.P596029389268959120

`A066169(A000203(n+1)+1)`
-/

namespace A066168.P596029389268959120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (A000203 (n + 1) + 1).toNat

end

end A066168.P596029389268959120

namespace A066168

/-- `A066169(A000203(n+1)+1)` -/
def P596029389268959120.Spec : Prop :=
  ∀ n, P596029389268959120.a n = A066168 (n + 1)

end A066168

/-! ## A066168.P13714681923725265050

`A007918(A088580(n+1)+1)`
-/

namespace A066168.P13714681923725265050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A088580 (n + 1) + 1).toNat

end

end A066168.P13714681923725265050

namespace A066168

/-- `A007918(A088580(n+1)+1)` -/
def P13714681923725265050.Spec : Prop :=
  ∀ n, P13714681923725265050.a n = A066168 (n + 1)

end A066168

/-! ## A066168.P13204212076265388449

`A266620(A000203(n+1)+1)`
-/

namespace A066168.P13204212076265388449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266620 (A000203 (n + 1) + 1).toNat

end

end A066168.P13204212076265388449

namespace A066168

/-- `A266620(A000203(n+1)+1)` -/
def P13204212076265388449.Spec : Prop :=
  ∀ n, P13204212076265388449.a n = A066168 (n + 1)

end A066168

/-! ## A066168.P1197512472119895269

`A007918(A000203(n+1)+2)`
-/

namespace A066168.P1197512472119895269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000203 (n + 1) + 2).toNat

end

end A066168.P1197512472119895269

namespace A066168

/-- `A007918(A000203(n+1)+2)` -/
def P1197512472119895269.Spec : Prop :=
  ∀ n, P1197512472119895269.a n = A066168 (n + 1)

end A066168

/-! ## A066168.P1691087522817009950

`A064778(A000203(n+1)+1)+1`
-/

namespace A066168.P1691087522817009950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064778 (A000203 (n + 1) + 1).toNat + 1

end

end A066168.P1691087522817009950

namespace A066168

/-- `A064778(A000203(n+1)+1)+1` -/
def P1691087522817009950.Spec : Prop :=
  ∀ n, P1691087522817009950.a n = A066168 (n + 1)

end A066168

/-! ## A066168.P16493642962653208132

`A007918(A074495(n+1)+2-A072918(n+1))`
-/

namespace A066168.P16493642962653208132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A074495 (n + 1) + (2 - A072918 (n + 1))).toNat

end

end A066168.P16493642962653208132

namespace A066168

/-- `A007918(A074495(n+1)+2-A072918(n+1))` -/
def P16493642962653208132.Spec : Prop :=
  ∀ n, P16493642962653208132.a n = A066168 (n + 1)

end A066168

/-! ## A066168.P4239304184679195383

`A066169(2*A088580(n+1)-A088580(n+1))`
-/

namespace A066168.P4239304184679195383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (2 * A088580 (n + 1) - A088580 (n + 1)).toNat

end

end A066168.P4239304184679195383

namespace A066168

/-- `A066169(2*A088580(n+1)-A088580(n+1))` -/
def P4239304184679195383.Spec : Prop :=
  ∀ n, P4239304184679195383.a n = A066168 (n + 1)

end A066168

/-! ## A066168.P3468935831818186797

`A159477(A000203(n+1)+2)`
-/

namespace A066168.P3468935831818186797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A000203 (n + 1) + 2).toNat

end

end A066168.P3468935831818186797

namespace A066168

/-- `A159477(A000203(n+1)+2)` -/
def P3468935831818186797.Spec : Prop :=
  ∀ n, P3468935831818186797.a n = A066168 (n + 1)

end A066168

/-!
# A066169: Least k such that phi(k) >= n.

The programs for A066169, the canonical program `A066169.P16801772389171406171` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066169 has offset 1).

The definition of A066169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066169.P14772760825551386255

`lcm(2, A151800(n+1))/2`
-/

namespace A066169.P14772760825551386255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A151800 (n + 1)) : ℚ) / 2

end

end A066169.P14772760825551386255

namespace A066169

/-- `lcm(2, A151800(n+1))/2` -/
def P14772760825551386255.Spec : Prop :=
  ∀ n, P14772760825551386255.a n = (A066169 (n + 1) : ℚ)

end A066169

/-! ## A066169.P6357994396553357973

`A096500(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A066169.P6357994396553357973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A096500 n + a (n - 1)

end

end A066169.P6357994396553357973

namespace A066169

/-- `A096500(n)+a(n-1)` -/
def P6357994396553357973.Spec : Prop :=
  ∀ n, P6357994396553357973.a n = A066169 (n + 1)

end A066169

/-! ## A066169.P6466671478478536475

`A151800(n%(a(n-1)+1)+1)` with `a(0)=1`
-/

namespace A066169.P6466671478478536475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (Int.tmod (n : ℤ) (a (n - 1) + 1) + 1).toNat

end

end A066169.P6466671478478536475

namespace A066169

/-- `A151800(n%(a(n-1)+1)+1)` -/
def P6466671478478536475.Spec : Prop :=
  ∀ n, P6466671478478536475.a n = A066169 (n + 1)

end A066169

/-! ## A066169.P5932754075098440210

`A006005(A036234(n+1))`
-/

namespace A066169.P5932754075098440210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A036234 (n + 1)).toNat

end

end A066169.P5932754075098440210

namespace A066169

/-- `A006005(A036234(n+1))` -/
def P5932754075098440210.Spec : Prop :=
  ∀ n, P5932754075098440210.a n = A066169 (n + 1)

end A066169

/-! ## A066169.P9463434496850800793

`A000265(A151800(n+1))`
-/

namespace A066169.P9463434496850800793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A151800 (n + 1)).toNat

end

end A066169.P9463434496850800793

namespace A066169

/-- `A000265(A151800(n+1))` -/
def P9463434496850800793.Spec : Prop :=
  ∀ n, P9463434496850800793.a n = A066169 (n + 1)

end A066169

/-! ## A066169.P3223948048973781212

`A318319(A101300(n+1))`
-/

namespace A066169.P3223948048973781212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318319 (A101300 (n + 1)).toNat

end

end A066169.P3223948048973781212

namespace A066169

/-- `A318319(A101300(n+1))` -/
def P3223948048973781212.Spec : Prop :=
  ∀ n, P3223948048973781212.a n = A066169 (n + 1)

end A066169

/-! ## A066169.P16923242785871788485

`A006005(A000720(n+1)+1)`
-/

namespace A066169.P16923242785871788485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A000720 (n + 1) + 1).toNat

end

end A066169.P16923242785871788485

namespace A066169

/-- `A006005(A000720(n+1)+1)` -/
def P16923242785871788485.Spec : Prop :=
  ∀ n, P16923242785871788485.a n = A066169 (n + 1)

end A066169

/-! ## A066169.P16967655408608227361

`A318828(A151800(n+1)+1)`
-/

namespace A066169.P16967655408608227361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (A151800 (n + 1) + 1).toNat

end

end A066169.P16967655408608227361

namespace A066169

/-- `A318828(A151800(n+1)+1)` -/
def P16967655408608227361.Spec : Prop :=
  ∀ n, P16967655408608227361.a n = A066169 (n + 1)

end A066169

/-! ## A066169.P1735690320225923395

`A294619(n)+A064778(n+1)`
-/

namespace A066169.P1735690320225923395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n + A064778 (n + 1)

end

end A066169.P1735690320225923395

namespace A066169

/-- `A294619(n)+A064778(n+1)` -/
def P1735690320225923395.Spec : Prop :=
  ∀ n, P1735690320225923395.a n = A066169 (n + 1)

theorem P1735690320225923395.correct : P1735690320225923395.Spec := by
  intro n
  simp only [A066169, Nat.add_sub_cancel, A066169.P1735690320225923395.a, A066169.P16801772389171406171.a, A033558, A033558.P5355527907000063137.f1, A033558.P5355527907000063137.a, A064778, A064778.P14139164401297173886.a, A103517, A103517.P5904106709824261984.a, A294619, A294619.P2418867688364046509.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A010051, A010051.P15078252821583414300.a, A266620, A266620.P16243253378753888357.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A066169

/-! ## A066169.P16801772389171406171

`A103517(n)-A033558(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A066169

/-- `A103517(n)-A033558(n+1)` -/
def P16801772389171406171.Spec : Prop :=
  ∀ n, P16801772389171406171.a n = A066169 (n + 1)

theorem P16801772389171406171.correct : P16801772389171406171.Spec := by
  intro n
  simp only [A066169, Nat.add_sub_cancel]

end A066169

/-! ## A066169.P2834833312092032564

`A151800(n+1)-A000007(n)`
-/

namespace A066169.P2834833312092032564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) - A000007 n

end

end A066169.P2834833312092032564

namespace A066169

/-- `A151800(n+1)-A000007(n)` -/
def P2834833312092032564.Spec : Prop :=
  ∀ n, P2834833312092032564.a n = A066169 (n + 1)

end A066169

/-! ## A066169.P6187696932049661075

`A151800(n+1)/A054977(n)`
-/

namespace A066169.P6187696932049661075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151800 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A066169.P6187696932049661075

namespace A066169

/-- `A151800(n+1)/A054977(n)` -/
def P6187696932049661075.Spec : Prop :=
  ∀ n, P6187696932049661075.a n = (A066169 (n + 1) : ℚ)

end A066169

/-! ## A066169.P15399544207188007372

`A003961(n+2-A175851(n+1))`
-/

namespace A066169.P15399544207188007372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 ((n + 2 : ℤ) - A175851 (n + 1)).toNat

end

end A066169.P15399544207188007372

namespace A066169

/-- `A003961(n+2-A175851(n+1))` -/
def P15399544207188007372.Spec : Prop :=
  ∀ n, P15399544207188007372.a n = A066169 (n + 1)

end A066169

/-! ## A066169.P6611182452397331934

`A151800(n+1)+A129950(2*(n+1))`
-/

namespace A066169.P6611182452397331934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) + A129950 (2 * (n + 1))

end

end A066169.P6611182452397331934

namespace A066169

/-- `A151800(n+1)+A129950(2*(n+1))` -/
def P6611182452397331934.Spec : Prop :=
  ∀ n, P6611182452397331934.a n = A066169 (n + 1)

end A066169

/-! ## A066169.P12895246209927923657

`A151800(n+1)-A010051(2*(n+1))`
-/

namespace A066169.P12895246209927923657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) - A010051 (2 * (n + 1))

end

end A066169.P12895246209927923657

namespace A066169

/-- `A151800(n+1)-A010051(2*(n+1))` -/
def P12895246209927923657.Spec : Prop :=
  ∀ n, P12895246209927923657.a n = A066169 (n + 1)

end A066169

/-! ## A066169.P376722379546996999

`A151800(n+1)-A096500(2*n+1)`
-/

namespace A066169.P376722379546996999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) - A096500 (2 * n + 1)

end

end A066169.P376722379546996999

namespace A066169

/-- `A151800(n+1)-A096500(2*n+1)` -/
def P376722379546996999.Spec : Prop :=
  ∀ n, P376722379546996999.a n = A066169 (n + 1)

end A066169

/-! ## A066169.P8631531885387710073

`A151800(n+1)-A109578(2*n+1)`
-/

namespace A066169.P8631531885387710073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) - A109578 (2 * n + 1)

end

end A066169.P8631531885387710073

namespace A066169

/-- `A151800(n+1)-A109578(2*n+1)` -/
def P8631531885387710073.Spec : Prop :=
  ∀ n, P8631531885387710073.a n = A066169 (n + 1)

end A066169

/-! ## A066169.P17822599508012119230

`A151800(n+1)-A322585(2*n+1)`
-/

namespace A066169.P17822599508012119230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) - A322585 (2 * n + 1)

end

end A066169.P17822599508012119230

namespace A066169

/-- `A151800(n+1)-A322585(2*n+1)` -/
def P17822599508012119230.Spec : Prop :=
  ∀ n, P17822599508012119230.a n = A066169 (n + 1)

end A066169

/-! ## A066169.P17690318829290967294

`A151800(n+1)-A353766(2*n+1)`
-/

namespace A066169.P17690318829290967294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) - A353766 (2 * n + 1)

end

end A066169.P17690318829290967294

namespace A066169

/-- `A151800(n+1)-A353766(2*n+1)` -/
def P17690318829290967294.Spec : Prop :=
  ∀ n, P17690318829290967294.a n = A066169 (n + 1)

end A066169

/-! ## A066169.P18415893018535001434

`A151800(n+1)-A380477(2*n+1)`
-/

namespace A066169.P18415893018535001434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 1) - A380477 (2 * n + 1)

end

end A066169.P18415893018535001434

namespace A066169

/-- `A151800(n+1)-A380477(2*n+1)` -/
def P18415893018535001434.Spec : Prop :=
  ∀ n, P18415893018535001434.a n = A066169 (n + 1)

end A066169

/-!
# A066170: Triangle read by rows: T(n,k) = (-1)^n*(-1)^(floor(3*k/2))*binomial(floor((n+k)/2),k), 0 <= k <= n, n >= 0.

The programs for A066170, the canonical program `A066170.P15125807639018398542` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066170 has offset 0).

The definition of A066170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066170.P18182336593619168211

`A057077(A003987(n))*A130777(n)`
-/

namespace A066170.P18182336593619168211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A003987 n).toNat * A130777 n

end

end A066170.P18182336593619168211

namespace A066170

/-- `A057077(A003987(n))*A130777(n)` -/
def P18182336593619168211.Spec : Prop :=
  ∀ n, P18182336593619168211.a n = A066170 n

end A066170

/-! ## A066170.P2193184945787841800

`A057077(A141387(n))*A130777(n)`
-/

namespace A066170.P2193184945787841800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A141387 n).toNat * A130777 n

end

end A066170.P2193184945787841800

namespace A066170

/-- `A057077(A141387(n))*A130777(n)` -/
def P2193184945787841800.Spec : Prop :=
  ∀ n, P2193184945787841800.a n = A066170 n

end A066170

/-! ## A066170.P15125807639018398542

`A046854(n)*A062157(A209293(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A066170

/-- `A046854(n)*A062157(A209293(n+1))` -/
def P15125807639018398542.Spec : Prop :=
  ∀ n, P15125807639018398542.a n = A066170 n

theorem P15125807639018398542.correct : P15125807639018398542.Spec := by
  intro n
  simp only [A066170]

end A066170

/-! ## A066170.P14283218468673146522

`abs(A130777(n))*A062157(A209293(n+1))`
-/

namespace A066170.P14283218468673146522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130777 n| * A062157 (A209293 (n + 1)).toNat

end

end A066170.P14283218468673146522

namespace A066170

/-- `abs(A130777(n))*A062157(A209293(n+1))` -/
def P14283218468673146522.Spec : Prop :=
  ∀ n, P14283218468673146522.a n = A066170 n

end A066170

/-! ## A066170.P13065077697494555338

`A062157(∑[A002024(n+1)])*A130777(n)`
-/

namespace A066170.P13065077697494555338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A130777 n

end

end A066170.P13065077697494555338

namespace A066170

/-- `A062157(∑[A002024(n+1)])*A130777(n)` -/
def P13065077697494555338.Spec : Prop :=
  ∀ n, P13065077697494555338.a n = A066170 n

end A066170

/-! ## A066170.P7105497382685670502

`A014451(A003056(n))*A187660(n)`
-/

namespace A066170.P7105497382685670502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (A003056 n).toNat * A187660 n

end

end A066170.P7105497382685670502

namespace A066170

/-- `A014451(A003056(n))*A187660(n)` -/
def P7105497382685670502.Spec : Prop :=
  ∀ n, P7105497382685670502.a n = A066170 n

end A066170

/-! ## A066170.P2546518373825306641

`A014451(A003987(n))*A187660(n)`
-/

namespace A066170.P2546518373825306641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (A003987 n).toNat * A187660 n

end

end A066170.P2546518373825306641

namespace A066170

/-- `A014451(A003987(n))*A187660(n)` -/
def P2546518373825306641.Spec : Prop :=
  ∀ n, P2546518373825306641.a n = A066170 n

end A066170

/-! ## A066170.P5785198147808613016

`A014451(A049581(n))*A187660(n)`
-/

namespace A066170.P5785198147808613016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (A049581 n).toNat * A187660 n

end

end A066170.P5785198147808613016

namespace A066170

/-- `A014451(A049581(n))*A187660(n)` -/
def P5785198147808613016.Spec : Prop :=
  ∀ n, P5785198147808613016.a n = A066170 n

end A066170

/-! ## A066170.P1230370501416118638

`A021010(A057944(n))*A187660(n)`
-/

namespace A066170.P1230370501416118638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021010 (A057944 n).toNat * A187660 n

end

end A066170.P1230370501416118638

namespace A066170

/-- `A021010(A057944(n))*A187660(n)` -/
def P1230370501416118638.Spec : Prop :=
  ∀ n, P1230370501416118638.a n = A066170 n

end A066170

/-! ## A066170.P6578917297524661605

`A014451(abs(A114327(n)))*A187660(n)`
-/

namespace A066170.P6578917297524661605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 |A114327 n|.toNat * A187660 n

end

end A066170.P6578917297524661605

namespace A066170

/-- `A014451(abs(A114327(n)))*A187660(n)` -/
def P6578917297524661605.Spec : Prop :=
  ∀ n, P6578917297524661605.a n = A066170 n

end A066170

/-!
# A066172: Numbers k such that phi(k+1) - phi(k) = -d(k).

The programs for A066172, there is no canonical definition to state claims against.
-/

/-! ## A066172.P17485840535395808654

`eq[A000010(n+1), A063070(A028310(n))]`
-/

namespace A066172.P17485840535395808654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063070 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066172.P17485840535395808654

/-! ## A066172.P2126452735408010994

`eq[A016035(n+1), A351561(A028310(n))]`
-/

namespace A066172.P2126452735408010994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351561 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066172.P2126452735408010994

/-! ## A066172.P12513443149713467555

`eq[A219428(n+1), A351561(A028310(n))]`
-/

namespace A066172.P12513443149713467555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351561 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066172.P12513443149713467555

/-! ## A066172.P3395867105396830968

`eq[A109606(n+1)+1, A063070(A028310(n))]`
-/

namespace A066172.P3395867105396830968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063070 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066172.P3395867105396830968

/-! ## A066172.P6523697096383735948

`eq[A000010(n+1), A063070(A233583(n+1))]`
-/

namespace A066172.P6523697096383735948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063070 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066172.P6523697096383735948

/-!
# A066173: Self-reciprocating sequence: the integer part of powers of the reciprocal sum.

The programs for A066173, there is no canonical definition to state claims against.
-/

/-! ## A066173.P12442184654592825760

`A001462(A013984(2*(n+2))-A109543(n+3))`
-/

namespace A066173.P12442184654592825760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A013984 (2 * (n + 2)) - A109543 (n + 3)).toNat

end

end A066173.P12442184654592825760

/-! ## A066173.P14192391143705685840

`A293137(A083587(n))`
-/

namespace A066173.P14192391143705685840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A083587 n).toNat

end

end A066173.P14192391143705685840

/-! ## A066173.P11907688473178127940

`∑[A288529(A003000(n))]`
-/

namespace A066173.P11907688473178127940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288529 (A003000 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066173.P11907688473178127940

/-! ## A066173.P7424945030709719717

`A265370(6*A005207(n+1))`
-/

namespace A066173.P7424945030709719717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (6 * A005207 (n + 1)).toNat

end

end A066173.P7424945030709719717

/-! ## A066173.P776048104828936442

`A114322(n+1)-A055641(A000110(n))`
-/

namespace A066173.P776048104828936442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114322 (n + 1) - A055641 (A000110 n).toNat

end

end A066173.P776048104828936442

/-!
# A066174: First member of a prime sextet: p, (p-1)/2, (p-3)/4, (p-7)/8, (p-15)/16, (p-31)/32.

The programs for A066174, there is no canonical definition to state claims against.
-/

/-! ## A066174.P15537156946583618140

`64*A125113(n+1)-1`
-/

namespace A066174.P15537156946583618140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A125113 (n + 1) - 1

end

end A066174.P15537156946583618140

/-! ## A066174.P11020125889076464711

`A033999(Δ[n²])+64*A125113(n+1)`
-/

namespace A066174.P11020125889076464711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 64 * A125113 (n + 1)

end

end A066174.P11020125889076464711

/-!
# A066175: Numbers k such that sigma(phi(sigma(k))) = k.

The programs for A066175, there is no canonical definition to state claims against.
-/

/-! ## A066175.P3757182207876763805

`record[gcd(∑[2^n], A307320(n+1))]`
-/

namespace A066175.P3757182207876763805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A307320 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066175.P3757182207876763805

/-! ## A066175.P13786617783336532152

`A336701(∑[A293012(n)])`
-/

namespace A066175.P13786617783336532152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336701 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A066175.P13786617783336532152

/-! ## A066175.P1471264738439205740

`A336701(A007094(n)+1)`
-/

namespace A066175.P1471264738439205740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336701 (A007094 n + 1).toNat

end

end A066175.P1471264738439205740

/-! ## A066175.P4042840056144436356

`A336701(lt[4, A299987(n)])`
-/

namespace A066175.P4042840056144436356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336701 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A066175.P4042840056144436356

/-! ## A066175.P16730531430626471438

`A336701(record[∑[A336709(n)]])`
-/

namespace A066175.P16730531430626471438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336709 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336701 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066175.P16730531430626471438

/-!
# A066178: Nonzero heptanacci numbers, A122189.

The programs for A066178, the canonical program `A066178.P9650228280100825632` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066178 has offset 0).

The definition of A066178 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066178.P9650228280100825632

`2*a(n-1)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=16, a(6)=32, a(7)=64`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066178

/-- `2*a(n-1)-a(n-8)` -/
def P9650228280100825632.Spec : Prop :=
  ∀ n, P9650228280100825632.a n = A066178 n

theorem P9650228280100825632.correct : P9650228280100825632.Spec := by
  intro n
  simp only [A066178]

end A066178

/-! ## A066178.P15009417232088595302

`A122189(n+6)`
-/

namespace A066178.P15009417232088595302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122189 (n + 6)

end

end A066178.P15009417232088595302

namespace A066178

/-- `A122189(n+6)` -/
def P15009417232088595302.Spec : Prop :=
  ∀ n, P15009417232088595302.a n = A066178 n

end A066178

/-! ## A066178.P4887194612644247609

`∑[A251710(n+5)]`
-/

namespace A066178.P4887194612644247609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251710 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066178.P4887194612644247609

namespace A066178

/-- `∑[A251710(n+5)]` -/
def P4887194612644247609.Spec : Prop :=
  ∀ n, P4887194612644247609.a n = A066178 n

end A066178

/-! ## A066178.P16063648897156021749

`A251714(n+1)+record[A251711(n)]`
-/

namespace A066178.P16063648897156021749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251714 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066178.P16063648897156021749

namespace A066178

/-- `A251714(n+1)+record[A251711(n)]` -/
def P16063648897156021749.Spec : Prop :=
  ∀ n, P16063648897156021749.a n = A066178 n

end A066178

/-! ## A066178.P11194662258201525151

`or(A000007(n), A122189(A020715(n)))`
-/

namespace A066178.P11194662258201525151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A122189 (A020715 n).toNat)

end

end A066178.P11194662258201525151

namespace A066178

/-- `or(A000007(n), A122189(A020715(n)))` -/
def P11194662258201525151.Spec : Prop :=
  ∀ n, P11194662258201525151.a n = A066178 n

end A066178

/-! ## A066178.P5452283828529507001

`char[A026741(n)]*A122189(A020715(n))`
-/

namespace A066178.P5452283828529507001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A122189 (A020715 n).toNat

end

end A066178.P5452283828529507001

namespace A066178

/-- `char[A026741(n)]*A122189(A020715(n))` -/
def P5452283828529507001.Spec : Prop :=
  ∀ n, P5452283828529507001.a n = A066178 n

end A066178

/-! ## A066178.P12669177087327882575

`A122189(A020715(n))^A000034(A062383(n))`
-/

namespace A066178.P12669177087327882575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122189 (A020715 n).toNat : ℚ) ^ (A000034 (A062383 n).toNat : ℤ)

end

end A066178.P12669177087327882575

namespace A066178

/-- `A122189(A020715(n))^A000034(A062383(n))` -/
def P12669177087327882575.Spec : Prop :=
  ∀ n, P12669177087327882575.a n = (A066178 n : ℚ)

end A066178

/-! ## A066178.P15952285504567624751

`A048887((n+4)²-∑[n+1])`
-/

namespace A066178.P15952285504567624751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066178.P15952285504567624751

namespace A066178

/-- `A048887((n+4)²-∑[n+1])` -/
def P15952285504567624751.Spec : Prop :=
  ∀ n, P15952285504567624751.a n = A066178 n

end A066178

/-! ## A066178.P4563438327069329359

`A092921(A133263(n+7)+4)`
-/

namespace A066178.P4563438327069329359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A133263 (n + 7) + 4).toNat

end

end A066178.P4563438327069329359

namespace A066178

/-- `A092921(A133263(n+7)+4)` -/
def P4563438327069329359.Spec : Prop :=
  ∀ n, P4563438327069329359.a n = A066178 n

end A066178

/-! ## A066178.P7563114683852518199

`A092921(A000124(n+7)+5)`
-/

namespace A066178.P7563114683852518199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A000124 (n + 7) + 5).toNat

end

end A066178.P7563114683852518199

namespace A066178

/-- `A092921(A000124(n+7)+5)` -/
def P7563114683852518199.Spec : Prop :=
  ∀ n, P7563114683852518199.a n = A066178 n

end A066178

/-! ## A066178.P14444449515776212314

`A092921(A173036(n+7)-7)`
-/

namespace A066178.P14444449515776212314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A173036 (n + 7) - 7).toNat

end

end A066178.P14444449515776212314

namespace A066178

/-- `A092921(A173036(n+7)-7)` -/
def P14444449515776212314.Spec : Prop :=
  ∀ n, P14444449515776212314.a n = A066178 n

end A066178

/-!
# A066179: Primes p such that (p-1)/2 and (p-3)/4 are also prime.

The programs for A066179, there is no canonical definition to state claims against.
-/

/-! ## A066179.P16482248198813321204

`2*A059455(n+1)+1`
-/

namespace A066179.P16482248198813321204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059455 (n + 1) + 1

end

end A066179.P16482248198813321204

/-! ## A066179.P10320422731092258787

`4*A007700(n+1)+3`
-/

namespace A066179.P10320422731092258787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007700 (n + 1) + 3

end

end A066179.P10320422731092258787

/-! ## A066179.P9436973562838738461

`A059455(A000027(n+1))+A059455(n+1)+1`
-/

namespace A066179.P9436973562838738461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059455 (A000027 (n + 1)).toNat + (A059455 (n + 1) + 1)

end

end A066179.P9436973562838738461

/-! ## A066179.P1640204489148912410

`2*ceil(sqrt(A100930(n+1)))+1`
-/

namespace A066179.P1640204489148912410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sqrt (A100930 (n + 1) : ℝ)⌉ + 1

end

end A066179.P1640204489148912410

/-! ## A066179.P15866620425293548559

`A100930(n+1)/A007700(n+1)`
-/

namespace A066179.P15866620425293548559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100930 (n + 1) : ℚ) / (A007700 (n + 1) : ℚ)

end

end A066179.P15866620425293548559

/-! ## A066179.P14404527324751318346

`∩[A005385(n+1), A126330(n+1)]`
-/

namespace A066179.P14404527324751318346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066179.P14404527324751318346

/-! ## A066179.P14132457596376947624

`∩[A048184(n+1), A126330(n+1)]`
-/

namespace A066179.P14132457596376947624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066179.P14132457596376947624

/-! ## A066179.P17388983915602612647

`∩[A079148(n+1), A126330(n+1)]`
-/

namespace A066179.P17388983915602612647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066179.P17388983915602612647

/-! ## A066179.P14564012536090443024

`∩[A103203(n+1), A126330(n+1)]`
-/

namespace A066179.P14564012536090443024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066179.P14564012536090443024

/-! ## A066179.P16026242614362521431

`∩[A126330(n+1), A161897(n+1)]`
-/

namespace A066179.P16026242614362521431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066179.P16026242614362521431

/-! ## A066179.P11419151038233535167

`∩[A126330(n+1), A175942(n+1)]`
-/

namespace A066179.P11419151038233535167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066179.P11419151038233535167

/-! ## A066179.P3517019754662424702

`∩[A126330(n+1), A396480(n+1)]`
-/

namespace A066179.P3517019754662424702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066179.P3517019754662424702

/-! ## A066179.P7026361527761686167

`∩[A126330(n+1), A294074(n+1)]`
-/

namespace A066179.P7026361527761686167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066179.P7026361527761686167

/-! ## A066179.P1873421001093849737

`∩[A090865(n+1), A126330(n+1)]`
-/

namespace A066179.P1873421001093849737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066179.P1873421001093849737

/-! ## A066179.P6450429495758738910

`∩[A065966(n+1), A126330(n+1)]`
-/

namespace A066179.P6450429495758738910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066179.P6450429495758738910

/-! ## A066179.P5486802920849622336

`∩[A065966(n+1), A077065(n+1)]+1`
-/

namespace A066179.P5486802920849622336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A066179.P5486802920849622336

/-! ## A066179.P18269768173879652360

`∩[A065966(n+1)+1, A303705(n+1)]`
-/

namespace A066179.P18269768173879652360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303705 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066179.P18269768173879652360

/-! ## A066179.P9945652013735306944

`∩[A126330(n+1), A179401(n+1)]`
-/

namespace A066179.P9945652013735306944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066179.P9945652013735306944

/-! ## A066179.P9416900629272451970

`∩[A005385(n+1), A075519(n+1)]`
-/

namespace A066179.P9416900629272451970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066179.P9416900629272451970

/-! ## A066179.P10232818391420217091

`∩[A048184(n+1), A075519(n+1)]`
-/

namespace A066179.P10232818391420217091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066179.P10232818391420217091

/-!
# A066180: a(n) = smallest base b so that repunit (b^prime(n) - 1) / (b - 1) is prime, where prime(n) = n-th prime; or 0 if no such base exists.

The programs for A066180, there is no canonical definition to state claims against.
-/

/-! ## A066180.P16865735007469014043

`A085398(p?[xor(1, n)])`
-/

namespace A066180.P16865735007469014043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A066180.P16865735007469014043

/-! ## A066180.P13039913561942885706

`A085398(p?[comp[n²]])`
-/

namespace A066180.P13039913561942885706
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A066180.P13039913561942885706

/-! ## A066180.P14183428402001632570

`A085398(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])`
-/

namespace A066180.P14183428402001632570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A066180.P14183428402001632570

/-! ## A066180.P10231055536634296708

`A085398(Δ[A007504(n)])`
-/

namespace A066180.P10231055536634296708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (f1 (n + 1) - f1 n).toNat

end

end A066180.P10231055536634296708

/-! ## A066180.P6308219590430589194

`A085398(A000040(n+1))`
-/

namespace A066180.P6308219590430589194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A000040 (n + 1)).toNat

end

end A066180.P6308219590430589194

/-! ## A066180.P647264768850083449

`A085398(A008578(n+2))`
-/

namespace A066180.P647264768850083449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A008578 (n + 2)).toNat

end

end A066180.P647264768850083449

/-! ## A066180.P12423320401455432872

`A085398(A116974(n+2))`
-/

namespace A066180.P12423320401455432872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A116974 (n + 2)).toNat

end

end A066180.P12423320401455432872

/-! ## A066180.P16568533257514034031

`A085398(A161428(n+2))`
-/

namespace A066180.P16568533257514034031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A161428 (n + 2)).toNat

end

end A066180.P16568533257514034031

/-! ## A066180.P12026840889648132009

`A085398(A162786(n+2))`
-/

namespace A066180.P12026840889648132009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A162786 (n + 2)).toNat

end

end A066180.P12026840889648132009

/-! ## A066180.P1613874224203148875

`A085398(A175787(n+2))`
-/

namespace A066180.P1613874224203148875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A175787 (n + 2)).toNat

end

end A066180.P1613874224203148875

/-! ## A066180.P4978968040227957175

`A085398(A182986(n+2))`
-/

namespace A066180.P4978968040227957175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A182986 (n + 2)).toNat

end

end A066180.P4978968040227957175

/-! ## A066180.P14094303070307501431

`A085398(eq[1, A105700(n)])`
-/

namespace A066180.P14094303070307501431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066180.P14094303070307501431

/-! ## A066180.P14877511031860178762

`A085398(record[A006530(n+2)])`
-/

namespace A066180.P14877511031860178762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066180.P14877511031860178762

/-! ## A066180.P13735934094635780340

`A085398(record[A014963(n+2)])`
-/

namespace A066180.P13735934094635780340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066180.P13735934094635780340

/-! ## A066180.P11694560076838360817

`A085398(record[A020639(n+2)])`
-/

namespace A066180.P11694560076838360817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A066180.P11694560076838360817

/-! ## A066180.P10534080655420482733

`A085398(A006093(n+1)+1)`
-/

namespace A066180.P10534080655420482733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A006093 (n + 1) + 1).toNat

end

end A066180.P10534080655420482733

/-! ## A066180.P2291259335640345722

`A085398(A156037(n+1)+1)`
-/

namespace A066180.P2291259335640345722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A156037 (n + 1) + 1).toNat

end

end A066180.P2291259335640345722

/-! ## A066180.P14574509995325340133

`A085398(A008864(n+1)-1)`
-/

namespace A066180.P14574509995325340133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (A008864 (n + 1) - 1).toNat

end

end A066180.P14574509995325340133

/-! ## A066180.P4900183844174007461

`A085398(A073582(n+1)/2)`
-/

namespace A066180.P4900183844174007461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (SequenceMachineLib.roundAway ((A073582 (n + 1) : ℚ) / 2)).toNat

end

end A066180.P4900183844174007461

/-! ## A066180.P17148845041195117827

`A085398(A100484(n+1)/2)`
-/

namespace A066180.P17148845041195117827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A066180.P17148845041195117827

/-!
# A066181: Permutation of the integers with cycle form {1}, {2, 3}, {4, 5, 6}, {7, 8, 9, 10}, ...

The programs for A066181, the canonical program `A066181.P17997786452622084157` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066181 has offset 1).

The definition of A066181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A066181.P17997786452622084157

`1+n+1+C(round(sqrt(2*(n+1))), 2)-C(round(sqrt(2*(n+1)+2)), 2)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066181

/-- `1+n+1+C(round(sqrt(2*(n+1))), 2)-C(round(sqrt(2*(n+1)+2)), 2)` -/
def P17997786452622084157.Spec : Prop :=
  ∀ n, P17997786452622084157.a n = A066181 (n + 1)

theorem P17997786452622084157.correct : P17997786452622084157.Spec := by
  intro n
  simp only [A066181, Nat.add_sub_cancel]

end A066181

/-! ## A066181.P10753224166222872979

`2-Δ[C(round(sqrt(2*(n+1))), 2)]+n`
-/

namespace A066181.P10753224166222872979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n : ℤ)

end

end A066181.P10753224166222872979

namespace A066181

/-- `2-Δ[C(round(sqrt(2*(n+1))), 2)]+n` -/
def P10753224166222872979.Spec : Prop :=
  ∀ n, P10753224166222872979.a n = A066181 (n + 1)

theorem P10753224166222872979.correct : P10753224166222872979.Spec := by
  intro n
  simp only [A066181, Nat.add_sub_cancel, A066181.P10753224166222872979.f1, A066181.P10753224166222872979.a, A066181.P17997786452622084157.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A066181

/-! ## A066181.P683420833136752468

`n+2-round(sqrt(2*(n+1)))*char[∑[n-1]]`
-/

namespace A066181.P683420833136752468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A066181.P683420833136752468

namespace A066181

/-- `n+2-round(sqrt(2*(n+1)))*char[∑[n-1]]` -/
def P683420833136752468.Spec : Prop :=
  ∀ n, P683420833136752468.a n = A066181 (n + 1)

end A066181

/-! ## A066181.P9440809208506204080

`abs(2-A127648(n)+n)`
-/

namespace A066181.P9440809208506204080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A127648 n + (n : ℤ)|

end

end A066181.P9440809208506204080

namespace A066181

/-- `abs(2-A127648(n)+n)` -/
def P9440809208506204080.Spec : Prop :=
  ∀ n, P9440809208506204080.a n = A066181 (n + 1)

end A066181

/-! ## A066181.P6556723299225376015

`Δ[A002260(n+1)+A000217(n)]`
-/

namespace A066181.P6556723299225376015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066181.P6556723299225376015

namespace A066181

/-- `Δ[A002260(n+1)+A000217(n)]` -/
def P6556723299225376015.Spec : Prop :=
  ∀ n, P6556723299225376015.a n = A066181 (n + 1)

end A066181

/-! ## A066181.P7107229293662036937

`Δ[A002262(n)+∑[n]]`
-/

namespace A066181.P7107229293662036937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066181.P7107229293662036937

namespace A066181

/-- `Δ[A002262(n)+∑[n]]` -/
def P7107229293662036937.Spec : Prop :=
  ∀ n, P7107229293662036937.a n = A066181 (n + 1)

end A066181

/-! ## A066181.P565934624632763627

`abs(Δ[A132118(n+1)]+n)`
-/

namespace A066181.P565934624632763627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (n : ℤ)|

end

end A066181.P565934624632763627

namespace A066181

/-- `abs(Δ[A132118(n+1)]+n)` -/
def P565934624632763627.Spec : Prop :=
  ∀ n, P565934624632763627.a n = A066181 (n + 1)

end A066181

/-! ## A066181.P14431068532004135109

`abs(n+2-Δ[A057944(n)])`
-/

namespace A066181.P14431068532004135109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) - (f1 (n + 1) - f1 n)|

end

end A066181.P14431068532004135109

namespace A066181

/-- `abs(n+2-Δ[A057944(n)])` -/
def P14431068532004135109.Spec : Prop :=
  ∀ n, P14431068532004135109.a n = A066181 (n + 1)

end A066181

/-! ## A066181.P3716417227406428015

`abs(A130296(n+2)-(n+3))`
-/

namespace A066181.P3716417227406428015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130296 (n + 2) - (n + 3 : ℤ)|

end

end A066181.P3716417227406428015

namespace A066181

/-- `abs(A130296(n+2)-(n+3))` -/
def P3716417227406428015.Spec : Prop :=
  ∀ n, P3716417227406428015.a n = A066181 (n + 1)

end A066181

/-! ## A066181.P14719321278987166330

`Δ[∑[n]+abs(A140756(n+1))]`
-/

namespace A066181.P14719321278987166330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + |A140756 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066181.P14719321278987166330

namespace A066181

/-- `Δ[∑[n]+abs(A140756(n+1))]` -/
def P14719321278987166330.Spec : Prop :=
  ∀ n, P14719321278987166330.a n = A066181 (n + 1)

end A066181

/-! ## A066181.P11525807087749040025

`Δ[Δ[A000292(n)]-A057944(n)]`
-/

namespace A066181.P11525807087749040025
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A057944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066181.P11525807087749040025

namespace A066181

/-- `Δ[Δ[A000292(n)]-A057944(n)]` -/
def P11525807087749040025.Spec : Prop :=
  ∀ n, P11525807087749040025.a n = A066181 (n + 1)

end A066181

/-! ## A066181.P10972518699222505969

`Δ[A002260(n+1)+A000124(n)]`
-/

namespace A066181.P10972518699222505969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A066181.P10972518699222505969

namespace A066181

/-- `Δ[A002260(n+1)+A000124(n)]` -/
def P10972518699222505969.Spec : Prop :=
  ∀ n, P10972518699222505969.a n = A066181 (n + 1)

end A066181

/-! ## A066181.P8178015112245865820

`A008619(A203553(A004201(n+1)))`
-/

namespace A066181.P8178015112245865820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A203553 (A004201 (n + 1)).toNat).toNat

end

end A066181.P8178015112245865820

namespace A066181

/-- `A008619(A203553(A004201(n+1)))` -/
def P8178015112245865820.Spec : Prop :=
  ∀ n, P8178015112245865820.a n = A066181 (n + 1)

end A066181

/-! ## A066181.P14559005449185931555

`A361172(A332027(n+1)-(n+1))`
-/

namespace A066181.P14559005449185931555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361172 (A332027 (n + 1) - (n + 1 : ℤ)).toNat

end

end A066181.P14559005449185931555

namespace A066181

/-- `A361172(A332027(n+1)-(n+1))` -/
def P14559005449185931555.Spec : Prop :=
  ∀ n, P14559005449185931555.a n = A066181 (n + 1)

end A066181

/-! ## A066181.P8638043589257329229

`A361172(A060432(n+1)+A002024(n+1))`
-/

namespace A066181.P8638043589257329229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361172 (A060432 (n + 1) + A002024 (n + 1)).toNat

end

end A066181.P8638043589257329229

namespace A066181

/-- `A361172(A060432(n+1)+A002024(n+1))` -/
def P8638043589257329229.Spec : Prop :=
  ∀ n, P8638043589257329229.a n = A066181 (n + 1)

end A066181

/-! ## A066181.P4149686291958408773

`A004736(A130296(n+2)+A000217(n+1))`
-/

namespace A066181.P4149686291958408773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A130296 (n + 2) + A000217 (n + 1)).toNat

end

end A066181.P4149686291958408773

namespace A066181

/-- `A004736(A130296(n+2)+A000217(n+1))` -/
def P4149686291958408773.Spec : Prop :=
  ∀ n, P4149686291958408773.a n = A066181 (n + 1)

end A066181

/-!
# A066182: Permutation of the integers with cycle form {1}, {3, 2}, {6, 5, 4}, {10, 9, 8, 7}, ...

The programs for A066182, the canonical program `A066182.P18414975574033607487` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066182 has offset 1).

The definition of A066182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066182.P2558333842487888269

`round(sqrt((2*n+1)*char[∑[n]]))+n`
-/

namespace A066182.P2558333842487888269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((2 * n + 1) * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℝ)) + (n : ℤ)

end

end A066182.P2558333842487888269

namespace A066182

/-- `round(sqrt((2*n+1)*char[∑[n]]))+n` -/
def P2558333842487888269.Spec : Prop :=
  ∀ n, P2558333842487888269.a n = A066182 (n + 1)

end A066182

/-! ## A066182.P11648604635961947210

`abs(1-A167407(n)+n)`
-/

namespace A066182.P11648604635961947210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A167407 n + (n : ℤ)|

end

end A066182.P11648604635961947210

namespace A066182

/-- `abs(1-A167407(n)+n)` -/
def P11648604635961947210.Spec : Prop :=
  ∀ n, P11648604635961947210.a n = A066182 (n + 1)

end A066182

/-! ## A066182.P18414975574033607487

`ceil(A198954(n)/2+n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066182

/-- `ceil(A198954(n)/2+n)` -/
def P18414975574033607487.Spec : Prop :=
  ∀ n, P18414975574033607487.a n = A066182 (n + 1)

theorem P18414975574033607487.correct : P18414975574033607487.Spec := by
  intro n
  simp only [A066182, Nat.add_sub_cancel]

end A066182

/-! ## A066182.P13773652929300792461

`abs((comp[∑[n]]+n-1)*A010054(n)-n)`
-/

namespace A066182.P13773652929300792461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ((n : ℤ) - 1)) * A010054 n - (n : ℤ)|

end

end A066182.P13773652929300792461

namespace A066182

/-- `abs((comp[∑[n]]+n-1)*A010054(n)-n)` -/
def P13773652929300792461.Spec : Prop :=
  ∀ n, P13773652929300792461.a n = A066182 (n + 1)

end A066182

/-! ## A066182.P14981807887914079306

`gcd(1-A167407(n)+n, A000038(n))`
-/

namespace A066182.P14981807887914079306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A167407 n + (n : ℤ)) (A000038 n)

end

end A066182.P14981807887914079306

namespace A066182

/-- `gcd(1-A167407(n)+n, A000038(n))` -/
def P14981807887914079306.Spec : Prop :=
  ∀ n, (P14981807887914079306.a n : ℤ) = A066182 (n + 1)

end A066182

/-! ## A066182.P5261021599649648257

`floor((A038722(A038722(n+1)+1)+n)/2)`
-/

namespace A066182.P5261021599649648257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038722 (A038722 (n + 1) + 1).toNat + (n : ℤ) : ℚ) / 2⌋

end

end A066182.P5261021599649648257

namespace A066182

/-- `floor((A038722(A038722(n+1)+1)+n)/2)` -/
def P5261021599649648257.Spec : Prop :=
  ∀ n, P5261021599649648257.a n = A066182 (n + 1)

end A066182

/-! ## A066182.P4876150076920176228

`abs(Δ[A057554(A004277(n))]+2*n+1-n)`
-/

namespace A066182.P4876150076920176228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (2 * n + 1 : ℤ) - (n : ℤ)|

end

end A066182.P4876150076920176228

namespace A066182

/-- `abs(Δ[A057554(A004277(n))]+2*n+1-n)` -/
def P4876150076920176228.Spec : Prop :=
  ∀ n, P4876150076920176228.a n = A066182 (n + 1)

end A066182

/-! ## A066182.P12697694342061922745

`(Δ[A057554(A004277(n))]+n+1)%A081294(n+1)`
-/

namespace A066182.P12697694342061922745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + (n : ℤ) + 1) (A081294 (n + 1))

end

end A066182.P12697694342061922745

namespace A066182

/-- `(Δ[A057554(A004277(n))]+n+1)%A081294(n+1)` -/
def P12697694342061922745.Spec : Prop :=
  ∀ n, P12697694342061922745.a n = A066182 (n + 1)

end A066182

/-! ## A066182.P11748982080116555926

`A075301(A191448(n+1))`
-/

namespace A066182.P11748982080116555926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075301 (A191448 (n + 1)).toNat

end

end A066182.P11748982080116555926

namespace A066182

/-- `A075301(A191448(n+1))` -/
def P11748982080116555926.Spec : Prop :=
  ∀ n, P11748982080116555926.a n = A066182 (n + 1)

end A066182

/-! ## A066182.P7910828364458736869

`A091018(A194061(n+1))`
-/

namespace A066182.P7910828364458736869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091018 (A194061 (n + 1)).toNat

end

end A066182.P7910828364458736869

namespace A066182

/-- `A091018(A194061(n+1))` -/
def P7910828364458736869.Spec : Prop :=
  ∀ n, P7910828364458736869.a n = A066182 (n + 1)

end A066182

/-!
# A066183: Total sum of squares of parts in all partitions of n.

The programs for A066183, there is no canonical definition to state claims against.
-/

/-! ## A066183.P13584794352040464475

`∑[A206440(n+1)]`
-/

namespace A066183.P13584794352040464475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066183.P13584794352040464475

/-! ## A066183.P15142975730778472644

`∑[abs(Δ[A066185(n)+A066184(n)])]`
-/

namespace A066183.P15142975730778472644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066185 n + A066184 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066183.P15142975730778472644

/-! ## A066183.P12404143547340754046

`A066185(n+1)+A066184(n+1)`
-/

namespace A066183.P12404143547340754046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066185 (n + 1) + A066184 (n + 1)

end

end A066183.P12404143547340754046

/-! ## A066183.P1423263155037375657

`A066186(n+1)+2*A066185(n+1)`
-/

namespace A066183.P1423263155037375657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) + 2 * A066185 (n + 1)

end

end A066183.P1423263155037375657

/-! ## A066183.P605542397132261225

`2*A066184(n+1)-A066186(n+1)`
-/

namespace A066183.P605542397132261225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066184 (n + 1) - A066186 (n + 1)

end

end A066183.P605542397132261225

/-! ## A066183.P4787684147665461422

`A066187(n+1)-A066188(n+1)`
-/

namespace A066183.P4787684147665461422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066187 (n + 1) - A066188 (n + 1)

end

end A066183.P4787684147665461422

/-! ## A066183.P15171489442718997084

`A213191(A055998(n+2))`
-/

namespace A066183.P15171489442718997084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A055998 (n + 2)).toNat

end

end A066183.P15171489442718997084

/-! ## A066183.P7490014527175011056

`A213191(A155212(n)+5)`
-/

namespace A066183.P7490014527175011056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A155212 n + 5).toNat

end

end A066183.P7490014527175011056

/-! ## A066183.P11106394365933278560

`A213191(A056000(n)+7)`
-/

namespace A066183.P11106394365933278560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A056000 n + 7).toNat

end

end A066183.P11106394365933278560

/-! ## A066183.P7865593618516818628

`A213191(A052905(n+1)+2)`
-/

namespace A066183.P7865593618516818628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A052905 (n + 1) + 2).toNat

end

end A066183.P7865593618516818628

/-!
# A066184: Sum of the first moments of all partitions of n with weight starting at 1.

The programs for A066184, there is no canonical definition to state claims against.
-/

/-! ## A066184.P15211367790092590478

`A066186(n)+A066185(n)`
-/

namespace A066184.P15211367790092590478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 n + A066185 n

end

end A066184.P15211367790092590478

/-! ## A066184.P8585695646280046854

`A066185(n)+A220909(n)/2`
-/

namespace A066184.P8585695646280046854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066185 n : ℚ) + (A220909 n : ℚ) / 2

end

end A066184.P8585695646280046854

/-! ## A066184.P3427896583842346576

`A066185(n)+n*A000041(n)`
-/

namespace A066184.P3427896583842346576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066185 n + (n : ℤ) * A000041 n

end

end A066184.P3427896583842346576

/-! ## A066184.P997810097963736299

`A066185(n)+A194544(n)+A103628(n)`
-/

namespace A066184.P997810097963736299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066185 n + (A194544 n + A103628 n)

end

end A066184.P997810097963736299

/-! ## A066184.P3787589132221569860

`A066185(n)-(A066186(n)-A220909(n))`
-/

namespace A066184.P3787589132221569860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066185 n - (A066186 n - A220909 n)

end

end A066184.P3787589132221569860

/-! ## A066184.P4384274287354046498

`A066183(n+1)-(A206440(n+1)+A066185(n))`
-/

namespace A066184.P4384274287354046498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066183 (n + 1) - (A206440 (n + 1) + A066185 n)

end

end A066184.P4384274287354046498

/-! ## A066184.P6545610364398290242

`A066185(n)+record[A182700(n)]`
-/

namespace A066184.P6545610364398290242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066185 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066184.P6545610364398290242

/-! ## A066184.P2452235811295016047

`A182700(A000217(n))+A066185(n)`
-/

namespace A066184.P2452235811295016047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182700 (A000217 n).toNat + A066185 n

end

end A066184.P2452235811295016047

/-! ## A066184.P4891405634679886824

`A213191(A034856(n+1))+A066185(n)`
-/

namespace A066184.P4891405634679886824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213191 (A034856 (n + 1)).toNat + A066185 n

end

end A066184.P4891405634679886824

/-!
# A066185: Sum of the first moments of all partitions of n with weights starting at 0.

The programs for A066185, there is no canonical definition to state claims against.
-/

/-! ## A066185.P18113538171997656980

`A066184(n)-A066186(n)`
-/

namespace A066185.P18113538171997656980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066184 n - A066186 n

end

end A066185.P18113538171997656980

/-! ## A066185.P141682731041804247

`A066184(n)-A220909(n)/2`
-/

namespace A066185.P141682731041804247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066184 n : ℚ) - (A220909 n : ℚ) / 2

end

end A066185.P141682731041804247

/-! ## A066185.P3425812090761660073

`A066184(n)-n*A000041(n)`
-/

namespace A066185.P3425812090761660073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066184 n - (n : ℤ) * A000041 n

end

end A066185.P3425812090761660073

/-! ## A066185.P15926755776076579980

`A066184(n)-(A194544(n)+A103628(n))`
-/

namespace A066185.P15926755776076579980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066184 n - (A194544 n + A103628 n)

end

end A066185.P15926755776076579980

/-! ## A066185.P6457496898195832991

`A182709(n+1)+A066184(n)-A182707(n+1)`
-/

namespace A066185.P6457496898195832991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182709 (n + 1) + (A066184 n - A182707 (n + 1))

end

end A066185.P6457496898195832991

/-! ## A066185.P11414501997749436221

`A066183(n+1)-(A206440(n+1)+A066184(n))`
-/

namespace A066185.P11414501997749436221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066183 (n + 1) - (A206440 (n + 1) + A066184 n)

end

end A066185.P11414501997749436221

/-! ## A066185.P16202146731990789234

`A066184(n)-n*A035363(A005843(n))`
-/

namespace A066185.P16202146731990789234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066184 n - (n : ℤ) * A035363 (A005843 n).toNat

end

end A066185.P16202146731990789234

/-! ## A066185.P3361683915703510153

`A066184(n)-A182700(A000217(n))`
-/

namespace A066185.P3361683915703510153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066184 n - A182700 (A000217 n).toNat

end

end A066185.P3361683915703510153

/-! ## A066185.P16964588364165824882

`A066184(n)-A213191(A034856(n+1))`
-/

namespace A066185.P16964588364165824882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066184 n - A213191 (A034856 (n + 1)).toNat

end

end A066185.P16964588364165824882

/-!
# A066186: Sum of all parts of all partitions of n.

The programs for A066186, there is no canonical definition to state claims against.
-/

/-! ## A066186.P8349523064124144360

`n*A000041(n)`
-/

namespace A066186.P8349523064124144360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000041 n

end

end A066186.P8349523064124144360

/-! ## A066186.P3537747044259817032

`A220909(n)/2`
-/

namespace A066186.P3537747044259817032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220909 n : ℚ) / 2

end

end A066186.P3537747044259817032

/-! ## A066186.P5017735191806283874

`n*∑[A002865(n)]`
-/

namespace A066186.P5017735191806283874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066186.P5017735191806283874

/-! ## A066186.P11658217830850559761

`n*(A000065(n)+1)`
-/

namespace A066186.P11658217830850559761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000065 n + 1)

end

end A066186.P11658217830850559761

/-! ## A066186.P11883785704587111771

`n*(A052810(n)-1)`
-/

namespace A066186.P11883785704587111771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A052810 n - 1)

end

end A066186.P11883785704587111771

/-! ## A066186.P3918181232416544042

`n/2*A139582(n)`
-/

namespace A066186.P3918181232416544042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A139582 n : ℚ)

end

end A066186.P3918181232416544042

/-! ## A066186.P16217846580045353377

`n/3*A299473(n)`
-/

namespace A066186.P16217846580045353377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A299473 n : ℚ)

end

end A066186.P16217846580045353377

/-! ## A066186.P11409433739742273822

`n/4*A299474(n)`
-/

namespace A066186.P11409433739742273822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4 * (A299474 n : ℚ)

end

end A066186.P11409433739742273822

/-! ## A066186.P1286929441100934116

`n*(A133041(n)-n)`
-/

namespace A066186.P1286929441100934116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A133041 n - (n : ℤ))

end

end A066186.P1286929441100934116

/-! ## A066186.P16454150329347416232

`∑{d}[n, n*A000837(#)]`
-/

namespace A066186.P16454150329347416232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A000837 d

end

end A066186.P16454150329347416232

/-! ## A066186.P5960378433351320182

`n*∑[A085811(n+3)]`
-/

namespace A066186.P5960378433351320182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066186.P5960378433351320182

/-! ## A066186.P2498831810660608338

`n*(∑[A232697(n)]-n)`
-/

namespace A066186.P2498831810660608338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A066186.P2498831810660608338

/-! ## A066186.P9444786797148073366

`n*(A000094(n+1)+n)`
-/

namespace A066186.P9444786797148073366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000094 (n + 1) + (n : ℤ))

end

end A066186.P9444786797148073366

/-! ## A066186.P18348476995991999431

`n/(n+1)*A228816(n+1)`
-/

namespace A066186.P18348476995991999431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A228816 (n + 1) : ℚ)

end

end A066186.P18348476995991999431

/-! ## A066186.P9869982103143907670

`A194544(n)+A103628(n)`
-/

namespace A066186.P9869982103143907670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194544 n + A103628 n

end

end A066186.P9869982103143907670

/-! ## A066186.P5505217682241976904

`A163986(n)+A163985(n)`
-/

namespace A066186.P5505217682241976904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163986 n + A163985 n

end

end A066186.P5505217682241976904

/-! ## A066186.P18384116374651141722

`A228816(n+1)-A000041(n)`
-/

namespace A066186.P18384116374651141722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228816 (n + 1) - A000041 n

end

end A066186.P18384116374651141722

/-! ## A066186.P12563083707931248332

`n*(A047967(n)+A000009(n))`
-/

namespace A066186.P12563083707931248332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A047967 n + A000009 n)

end

end A066186.P12563083707931248332

/-! ## A066186.P7621872676927120030

`n*(A027193(n)+A027187(n))`
-/

namespace A066186.P7621872676927120030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A027193 n + A027187 n)

end

end A066186.P7621872676927120030

/-! ## A066186.P17621398584875045008

`n*(A295341(n)+A000726(n))`
-/

namespace A066186.P17621398584875045008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A295341 n + A000726 n)

end

end A066186.P17621398584875045008

/-!
# A066187: Sum of the second moments of all partitions of n with weights starting from 1.

The programs for A066187, there is no canonical definition to state claims against.
-/

/-! ## A066187.P17419454475501037588

`A066184(n)+A066188(n)+A066185(n)`
-/

namespace A066187.P17419454475501037588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066184 n + (A066188 n + A066185 n)

end

end A066187.P17419454475501037588

/-! ## A066187.P8801736612034495177

`A066183(n+1)+A066188(n)-A206440(n+1)`
-/

namespace A066187.P8801736612034495177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066183 (n + 1) + (A066188 n - A206440 (n + 1))

end

end A066187.P8801736612034495177

/-!
# A066188: Sum of the second moments of all partitions of n with weights starting from 0.

The programs for A066188, there is no canonical definition to state claims against.
-/

/-! ## A066188.P18165446484231563692

`A066187(n)-(A066185(n)+A066184(n))`
-/

namespace A066188.P18165446484231563692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066187 n - (A066185 n + A066184 n)

end

end A066188.P18165446484231563692

/-! ## A066188.P1815157850630315337

`A206440(n+1)+A066187(n)-A066183(n+1)`
-/

namespace A066188.P1815157850630315337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206440 (n + 1) + (A066187 n - A066183 (n + 1))

end

end A066188.P1815157850630315337

/-! ## A066188.P9174269953385100502

`A087805(A007678(n+1))`
-/

namespace A066188.P9174269953385100502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087805 (A007678 (n + 1)).toNat

end

end A066188.P9174269953385100502

/-!
# A066189: Sum of all partitions of n into distinct parts.

The programs for A066189, there is no canonical definition to state claims against.
-/

/-! ## A066189.P9957247032619078233

`n*A000009(n)`
-/

namespace A066189.P9957247032619078233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000009 n

end

end A066189.P9957247032619078233

/-! ## A066189.P16606935020538549696

`abs(n*A081360(n))`
-/

namespace A066189.P16606935020538549696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A081360 n|

end

end A066189.P16606935020538549696

/-! ## A066189.P10254084327941225728

`n*∑[A087897(n)]`
-/

namespace A066189.P10254084327941225728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066189.P10254084327941225728

/-! ## A066189.P748551590497007945

`n*(A111133(n)+1)`
-/

namespace A066189.P748551590497007945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A111133 n + 1)

end

end A066189.P748551590497007945

/-! ## A066189.P5058447630670352412

`n*(A052839(n)-1)`
-/

namespace A066189.P5058447630670352412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A052839 n - 1)

end

end A066189.P5058447630670352412

/-! ## A066189.P5386807250934524442

`n/2*A087135(n)`
-/

namespace A066189.P5386807250934524442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A087135 n : ℚ)

end

end A066189.P5386807250934524442

/-! ## A066189.P691862279291277354

`∑{d}[n, n*A078374(#)]`
-/

namespace A066189.P691862279291277354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A078374 d

end

end A066189.P691862279291277354

/-! ## A066189.P15231077005976186110

`n*ceil(A333147(n)/2)`
-/

namespace A066189.P15231077005976186110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(A333147 n : ℚ) / 2⌉

end

end A066189.P15231077005976186110

/-! ## A066189.P931339512499594383

`A116684(n)+A116682(n)`
-/

namespace A066189.P931339512499594383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116684 n + A116682 n

end

end A066189.P931339512499594383

/-! ## A066189.P9434551567493910995

`A038608(n)*A081360(n)`
-/

namespace A066189.P9434551567493910995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n * A081360 n

end

end A066189.P9434551567493910995

/-! ## A066189.P8188991612628891827

`n*(A026833(n)+A026832(n))`
-/

namespace A066189.P8188991612628891827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A026833 n + A026832 n)

end

end A066189.P8188991612628891827

/-! ## A066189.P740945628284989123

`A001489(n)+n*A052839(n)`
-/

namespace A066189.P740945628284989123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (n : ℤ) * A052839 n

end

end A066189.P740945628284989123

/-! ## A066189.P12080136581127054580

`n*(A057428(n)+A052839(n))`
-/

namespace A066189.P12080136581127054580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A057428 n + A052839 n)

end

end A066189.P12080136581127054580

/-! ## A066189.P3877369001999240093

`n*(A238708(n)+A003114(n))`
-/

namespace A066189.P3877369001999240093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A238708 n + A003114 n)

end

end A066189.P3877369001999240093

/-! ## A066189.P13020535750274211299

`n*gcd(A000038(n), A081360(n))`
-/

namespace A066189.P13020535750274211299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (A000038 n) (A081360 n)

end

end A066189.P13020535750274211299

/-! ## A066189.P12291851813941256627

`n*A117409(n+2)`
-/

namespace A066189.P12291851813941256627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A117409 (n + 2)

end

end A066189.P12291851813941256627

/-! ## A066189.P467861223973868672

`n*(A096765(n+1)+A096765(n))`
-/

namespace A066189.P467861223973868672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A096765 (n + 1) + A096765 n)

end

end A066189.P467861223973868672

/-! ## A066189.P1641215740373536604

`n*(A000041(n)-A047967(n))`
-/

namespace A066189.P1641215740373536604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000041 n - A047967 n)

end

end A066189.P1641215740373536604

/-! ## A066189.P9181430629751677342

`n*(∑[A002865(n)]-A047967(n))`
-/

namespace A066189.P9181430629751677342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - A047967 n)

end

end A066189.P9181430629751677342

/-! ## A066189.P17110225172623991817

`n*(A295341(n)+A000726(n)-A047967(n))`
-/

namespace A066189.P17110225172623991817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A295341 n + A000726 n - A047967 n)

end

end A066189.P17110225172623991817

/-!
# A066190: Numbers k such that the sum of the even aliquot parts of k divides k.

The programs for A066190, the canonical program `A066190.P14350641075084876655` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066190 has offset 1).

The definition of A066190 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053813, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066190.P14350641075084876655

`2*A053813(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A066190

/-- `2*A053813(n+1)` -/
def P14350641075084876655.Spec : Prop :=
  ∀ n, P14350641075084876655.a n = A066190 (n + 1)

theorem P14350641075084876655.correct : P14350641075084876655.Spec := by
  intro n
  simp only [A066190, Nat.add_sub_cancel]

end A066190

/-! ## A066190.P3776773687382786031

`A053813(A000027(n+1))+A053813(n+1)`
-/

namespace A066190.P3776773687382786031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (A000027 (n + 1)).toNat + A053813 (n + 1)

end

end A066190.P3776773687382786031

namespace A066190

/-- `A053813(A000027(n+1))+A053813(n+1)` -/
def P3776773687382786031.Spec : Prop :=
  ∀ n, P3776773687382786031.a n = A066190 (n + 1)

end A066190

/-! ## A066190.P10452998542568356555

`2*(eq[1, A323153(n+1)]+1)`
-/

namespace A066190.P10452998542568356555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A066190.P10452998542568356555

namespace A066190

/-- `2*(eq[1, A323153(n+1)]+1)` -/
def P10452998542568356555.Spec : Prop :=
  ∀ n, (P10452998542568356555.a n : ℤ) = A066190 (n + 1)

end A066190

/-! ## A066190.P3480261904457885501

`filter[A309239(n+2), A351956(#)]`
-/

namespace A066190.P3480261904457885501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309239 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351956 (f1 j).toNat = 1) n)

end

end A066190.P3480261904457885501

namespace A066190

/-- `filter[A309239(n+2), A351956(#)]` -/
def P3480261904457885501.Spec : Prop :=
  ∀ n, P3480261904457885501.a n = A066190 (n + 1)

end A066190

/-! ## A066190.P16498003529707278147

`2*record[gcd(n, A033879(n+1))]+2`
-/

namespace A066190.P16498003529707278147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A033879 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2

end

end A066190.P16498003529707278147

namespace A066190

/-- `2*record[gcd(n, A033879(n+1))]+2` -/
def P16498003529707278147.Spec : Prop :=
  ∀ n, (P16498003529707278147.a n : ℤ) = A066190 (n + 1)

end A066190

/-! ## A066190.P2344811597054641453

`filter[A339424(n+1), A340371(#)]`
-/

namespace A066190.P2344811597054641453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A066190.P2344811597054641453

namespace A066190

/-- `filter[A339424(n+1), A340371(#)]` -/
def P2344811597054641453.Spec : Prop :=
  ∀ n, P2344811597054641453.a n = A066190 (n + 1)

end A066190

/-! ## A066190.P2834581122371149140

`∩[A093641(n+1), A339424(n+1)]`
-/

namespace A066190.P2834581122371149140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066190.P2834581122371149140

namespace A066190

/-- `∩[A093641(n+1), A339424(n+1)]` -/
def P2834581122371149140.Spec : Prop :=
  ∀ n, (P2834581122371149140.a n : ℤ) = A066190 (n + 1)

end A066190

/-! ## A066190.P5969009540637698540

`2*(eq[1, A325826(n+1)]+1)`
-/

namespace A066190.P5969009540637698540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A066190.P5969009540637698540

namespace A066190

/-- `2*(eq[1, A325826(n+1)]+1)` -/
def P5969009540637698540.Spec : Prop :=
  ∀ n, (P5969009540637698540.a n : ℤ) = A066190 (n + 1)

end A066190

/-! ## A066190.P397581336345503070

`2*(eq[1, A325969(n+1)]+1)`
-/

namespace A066190.P397581336345503070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325969 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A066190.P397581336345503070

namespace A066190

/-- `2*(eq[1, A325969(n+1)]+1)` -/
def P397581336345503070.Spec : Prop :=
  ∀ n, (P397581336345503070.a n : ℤ) = A066190 (n + 1)

end A066190

/-! ## A066190.P14284213358829037626

`2*(eq[1, A243473(n+1)]+1)`
-/

namespace A066190.P14284213358829037626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243473 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A066190.P14284213358829037626

namespace A066190

/-- `2*(eq[1, A243473(n+1)]+1)` -/
def P14284213358829037626.Spec : Prop :=
  ∀ n, (P14284213358829037626.a n : ℤ) = A066190 (n + 1)

end A066190

/-! ## A066190.P7427484166843971744

`A004277(A053813(n+1))`
-/

namespace A066190.P7427484166843971744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A053813 (n + 1)).toNat

end

end A066190.P7427484166843971744

namespace A066190

/-- `A004277(A053813(n+1))` -/
def P7427484166843971744.Spec : Prop :=
  ∀ n, P7427484166843971744.a n = A066190 (n + 1)

end A066190

/-! ## A066190.P6731161658855875989

`A103517(eq[1, A325826(n+1)])`
-/

namespace A066190.P6731161658855875989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A066190.P6731161658855875989

namespace A066190

/-- `A103517(eq[1, A325826(n+1)])` -/
def P6731161658855875989.Spec : Prop :=
  ∀ n, P6731161658855875989.a n = A066190 (n + 1)

end A066190

/-! ## A066190.P9278911754586829026

`record[2*A014681(A325965(n+1))]`
-/

namespace A066190.P9278911754586829026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014681 (A325965 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066190.P9278911754586829026

namespace A066190

/-- `record[2*A014681(A325965(n+1))]` -/
def P9278911754586829026.Spec : Prop :=
  ∀ n, P9278911754586829026.a n = A066190 (n + 1)

end A066190

/-! ## A066190.P7129399293062719274

`record[2*(A033879(n+1)+A009194(n+1))]`
-/

namespace A066190.P7129399293062719274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033879 (n + 1) + A009194 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A066190.P7129399293062719274

namespace A066190

/-- `record[2*(A033879(n+1)+A009194(n+1))]` -/
def P7129399293062719274.Spec : Prop :=
  ∀ n, P7129399293062719274.a n = A066190 (n + 1)

end A066190

/-! ## A066190.P15788572209580146420

`A103517(eq[A001065(n+1), A048671(n+1)])`
-/

namespace A066190.P15788572209580146420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A066190.P15788572209580146420

namespace A066190

/-- `A103517(eq[A001065(n+1), A048671(n+1)])` -/
def P15788572209580146420.Spec : Prop :=
  ∀ n, P15788572209580146420.a n = A066190 (n + 1)

end A066190

/-! ## A066190.P8616003938996440396

`A053813(n+1)+A053813(n+1)+A048050(A000040(n+1))`
-/

namespace A066190.P8616003938996440396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1) + (A053813 (n + 1) + A048050 (A000040 (n + 1)).toNat)

end

end A066190.P8616003938996440396

namespace A066190

/-- `A053813(n+1)+A053813(n+1)+A048050(A000040(n+1))` -/
def P8616003938996440396.Spec : Prop :=
  ∀ n, P8616003938996440396.a n = A066190 (n + 1)

end A066190

/-! ## A066190.P10950315392695345859

`2*∩[A053577(n+1), A166070(n+1)]`
-/

namespace A066190.P10950315392695345859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066190.P10950315392695345859

namespace A066190

/-- `2*∩[A053577(n+1), A166070(n+1)]` -/
def P10950315392695345859.Spec : Prop :=
  ∀ n, (P10950315392695345859.a n : ℤ) = A066190 (n + 1)

end A066190

/-! ## A066190.P4337385698163935332

`2*∩[A114518(n+1), A166070(n+1)]`
-/

namespace A066190.P4337385698163935332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066190.P4337385698163935332

namespace A066190

/-- `2*∩[A114518(n+1), A166070(n+1)]` -/
def P4337385698163935332.Spec : Prop :=
  ∀ n, (P4337385698163935332.a n : ℤ) = A066190 (n + 1)

end A066190

/-! ## A066190.P4743573420696569326

`2*∩[A166070(n+1), A316228(n+1)]`
-/

namespace A066190.P4743573420696569326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066190.P4743573420696569326

namespace A066190

/-- `2*∩[A166070(n+1), A316228(n+1)]` -/
def P4743573420696569326.Spec : Prop :=
  ∀ n, (P4743573420696569326.a n : ℤ) = A066190 (n + 1)

end A066190

/-!
# A066191: Numbers k such that the sum of the odd aliquot parts of k divides k.

The programs for A066191, there is no canonical definition to state claims against.
-/

/-! ## A066191.P7087319688513219405

`∪[A000040(n+1), A066192(n+1)]`
-/

namespace A066191.P7087319688513219405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066191.P7087319688513219405

/-! ## A066191.P6716767108869178288

`∪[A066192(n+1), A175787(n+1)]`
-/

namespace A066191.P6716767108869178288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066191.P6716767108869178288

/-! ## A066191.P12926400648622688271

`lt[A003192(A109814(n+1)), A001222(n+1)]+1`
-/

namespace A066191.P12926400648622688271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003192 (A109814 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A066191.P12926400648622688271

/-! ## A066191.P9902354953890564478

`lt[A259795(A357618(n)), A214674(n+1)]`
-/

namespace A066191.P9902354953890564478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259795 (A357618 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214674 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066191.P9902354953890564478

/-! ## A066191.P6649166552190912706

`lt[A014210(A359895(n)), A082103(n+1)]`
-/

namespace A066191.P6649166552190912706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014210 (A359895 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066191.P6649166552190912706

/-!
# A066192: Composite numbers k such that the sum of the odd aliquot parts of k divides k.

The programs for A066192, there is no canonical definition to state claims against.
-/

/-! ## A066192.P16422591706111342094

`A069519(n+3)`
-/

namespace A066192.P16422591706111342094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069519 (n + 3)

end

end A066192.P16422591706111342094

/-! ## A066192.P10842822333205585435

`∩[2*n, A066191(n+2)]`
-/

namespace A066192.P10842822333205585435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066192.P10842822333205585435

/-! ## A066192.P17883273966985548486

`filter[A122145(n+1), A353687(#)]`
-/

namespace A066192.P17883273966985548486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353687 (f1 j).toNat = 1) n)

end

end A066192.P17883273966985548486

/-! ## A066192.P4227350746921215014

`filter[A387096(n+1), A353687(#)]`
-/

namespace A066192.P4227350746921215014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353687 (f1 j).toNat = 1) n)

end

end A066192.P4227350746921215014

/-! ## A066192.P1100496801571049492

`filter[A359420(n+3), A353687(#)]`
-/

namespace A066192.P1100496801571049492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359420 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353687 (f1 j).toNat = 1) n)

end

end A066192.P1100496801571049492

/-! ## A066192.P17934756750957194735

`∩[A066191(n+1), A122145(n+1)]`
-/

namespace A066192.P17934756750957194735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066192.P17934756750957194735

/-! ## A066192.P14357288145661875899

`∩[A066191(n+1), A387096(n+1)]`
-/

namespace A066192.P14357288145661875899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066192.P14357288145661875899

/-! ## A066192.P15104922421116188476

`filter[A370348(n+1), A353687(#)]`
-/

namespace A066192.P15104922421116188476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353687 (f1 j).toNat = 1) n)

end

end A066192.P15104922421116188476

/-! ## A066192.P4925987365860142666

`filter[A005153(n+3), A353687(#)]`
-/

namespace A066192.P4925987365860142666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353687 (f1 j).toNat = 1) n)

end

end A066192.P4925987365860142666

/-! ## A066192.P1061858417872112368

`filter[A093891(n+3), A353687(#)]`
-/

namespace A066192.P1061858417872112368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093891 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353687 (f1 j).toNat = 1) n)

end

end A066192.P1061858417872112368

/-! ## A066192.P3416029185553267033

`∩[A066191(n+1), A370348(n+1)]`
-/

namespace A066192.P3416029185553267033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066192.P3416029185553267033

/-! ## A066192.P17538084840454337410

`∩[A066191(n+1), A327929(n+1)]`
-/

namespace A066192.P17538084840454337410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066192.P17538084840454337410

/-! ## A066192.P2127428888333809485

`filter[A048166(n+3), A353687(#)]`
-/

namespace A066192.P2127428888333809485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048166 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353687 (f1 j).toNat = 1) n)

end

end A066192.P2127428888333809485

/-! ## A066192.P11000282365192256979

`filter[A066191(n+1), A005171(#)]`
-/

namespace A066192.P11000282365192256979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A066192.P11000282365192256979

/-! ## A066192.P13672243865105304055

`filter[A066191(n+1), A066247(#)]`
-/

namespace A066192.P13672243865105304055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A066192.P13672243865105304055

/-! ## A066192.P16501432014204326058

`filter[A066191(n+1), A087049(#)]`
-/

namespace A066192.P16501432014204326058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A066192.P16501432014204326058

/-! ## A066192.P14345613502870457940

`filter[A066191(n+1), A121262(#)]`
-/

namespace A066192.P14345613502870457940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A066192.P14345613502870457940

/-! ## A066192.P9601528851681732361

`filter[A066191(n+1), A319710(#)]`
-/

namespace A066192.P9601528851681732361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A066192.P9601528851681732361

/-! ## A066192.P1925049442815427426

`filter[A066191(n+1), A341996(#)]`
-/

namespace A066192.P1925049442815427426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341996 (f1 j).toNat = 1) n)

end

end A066192.P1925049442815427426

/-! ## A066192.P17877493623536739825

`filter[A066191(n+1), A341999(#)]`
-/

namespace A066192.P17877493623536739825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341999 (f1 j).toNat = 1) n)

end

end A066192.P17877493623536739825

/-!
# A066193: Composite numbers k such that the difference between the odd and even aliquot parts of k divides k.

The programs for A066193, there is no canonical definition to state claims against.
-/

/-! ## A066193.P13624871407095274244

`A244529(A054540(n+1))+1`
-/

namespace A066193.P13624871407095274244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244529 (A054540 (n + 1)).toNat + 1

end

end A066193.P13624871407095274244

/-! ## A066193.P16621204360735009668

`A063655(A093834(n+1)+2)-2`
-/

namespace A066193.P16621204360735009668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A093834 (n + 1) + 2).toNat - 2

end

end A066193.P16621204360735009668

/-!
# A066194: A permutation of the integers (a fractal sequence): a(n) = A006068(n-1) + 1.

The programs for A066194, the canonical program `A066194.P17197319264784136366` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066194 has offset 1).

The definition of A066194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A066194.P15313669370463354763

`A006068(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066194.P15313669370463354763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n + 1

end

end A066194.P15313669370463354763

namespace A066194

/-- `A006068(n)+1` -/
def P15313669370463354763.Spec : Prop :=
  ∀ n, P15313669370463354763.a n = A066194 (n + 1)

end A066194

/-! ## A066194.P2311740970878647177

`2*a(floor(n/2))-char[xor(n, 2*n)]` with `a(0)=1`
-/

namespace A066194.P2311740970878647177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A066194.P2311740970878647177

namespace A066194

/-- `2*a(floor(n/2))-char[xor(n, 2*n)]` -/
def P2311740970878647177.Spec : Prop :=
  ∀ n, P2311740970878647177.a n = A066194 (n + 1)

end A066194

/-! ## A066194.P17197319264784136366

`2*a(floor(n/2))-(a(floor(n/2))+n)%2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A066194

/-- `2*a(floor(n/2))-(a(floor(n/2))+n)%2` -/
def P17197319264784136366.Spec : Prop :=
  ∀ n, P17197319264784136366.a n = A066194 (n + 1)

theorem P17197319264784136366.correct : P17197319264784136366.Spec := by
  intro n
  simp only [A066194, Nat.add_sub_cancel]

end A066194

/-! ## A066194.P17279218231262745028

`2*a(floor(n/2))-(n-a(floor(n/2)))%2` with `a(0)=1`
-/

namespace A066194.P17279218231262745028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat - Int.tmod ((n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat) 2

end

end A066194.P17279218231262745028

namespace A066194

/-- `2*a(floor(n/2))-(n-a(floor(n/2)))%2` -/
def P17279218231262745028.Spec : Prop :=
  ∀ n, P17279218231262745028.a n = A066194 (n + 1)

end A066194

/-! ## A066194.P581971519153559800

`A268716(n)/2+1`
-/

namespace A066194.P581971519153559800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268716 n : ℚ) / 2 + 1

end

end A066194.P581971519153559800

namespace A066194

/-- `A268716(n)/2+1` -/
def P581971519153559800.Spec : Prop :=
  ∀ n, P581971519153559800.a n = (A066194 (n + 1) : ℚ)

end A066194

/-! ## A066194.P14701340771967021974

`A286546(n)+1+n`
-/

namespace A066194.P14701340771967021974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286546 n + 1 + (n : ℤ)

end

end A066194.P14701340771967021974

namespace A066194

/-- `A286546(n)+1+n` -/
def P14701340771967021974.Spec : Prop :=
  ∀ n, P14701340771967021974.a n = A066194 (n + 1)

end A066194

/-! ## A066194.P11905906484698311145

`xor(n, A292600(n))+1`
-/

namespace A066194.P11905906484698311145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A292600 n) + 1

end

end A066194.P11905906484698311145

namespace A066194

/-- `xor(n, A292600(n))+1` -/
def P11905906484698311145.Spec : Prop :=
  ∀ n, P11905906484698311145.a n = A066194 (n + 1)

end A066194

/-! ## A066194.P2120209552345237062

`A320667(n)+a(n-1)` with `a(0)=1`
-/

namespace A066194.P2120209552345237062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320667 n + a (n - 1)

end

end A066194.P2120209552345237062

namespace A066194

/-- `A320667(n)+a(n-1)` -/
def P2120209552345237062.Spec : Prop :=
  ∀ n, P2120209552345237062.a n = A066194 (n + 1)

end A066194

/-! ## A066194.P14008355122573573395

`A065620(A000069(n+1))`
-/

namespace A066194.P14008355122573573395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A000069 (n + 1)).toNat

end

end A066194.P14008355122573573395

namespace A066194

/-- `A065620(A000069(n+1))` -/
def P14008355122573573395.Spec : Prop :=
  ∀ n, P14008355122573573395.a n = A066194 (n + 1)

end A066194

/-! ## A066194.P4545686211017878943

`A003188(A064707(n))+1`
-/

namespace A066194.P4545686211017878943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A064707 n).toNat + 1

end

end A066194.P4545686211017878943

namespace A066194

/-- `A003188(A064707(n))+1` -/
def P4545686211017878943.Spec : Prop :=
  ∀ n, P4545686211017878943.a n = A066194 (n + 1)

end A066194

/-! ## A066194.P7391964307026498542

`A300839(A057300(n))+1`
-/

namespace A066194.P7391964307026498542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300839 (A057300 n).toNat + 1

end

end A066194.P7391964307026498542

namespace A066194

/-- `A300839(A057300(n))+1` -/
def P7391964307026498542.Spec : Prop :=
  ∀ n, P7391964307026498542.a n = A066194 (n + 1)

end A066194

/-! ## A066194.P10099356298694380285

`A163356(A302843(n))+1`
-/

namespace A066194.P10099356298694380285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A302843 n).toNat + 1

end

end A066194.P10099356298694380285

namespace A066194

/-- `A163356(A302843(n))+1` -/
def P10099356298694380285.Spec : Prop :=
  ∀ n, P10099356298694380285.a n = A066194 (n + 1)

end A066194

/-! ## A066194.P8113304619407687221

`A302844(A302845(n))+1`
-/

namespace A066194.P8113304619407687221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302844 (A302845 n).toNat + 1

end

end A066194.P8113304619407687221

namespace A066194

/-- `A302844(A302845(n))+1` -/
def P8113304619407687221.Spec : Prop :=
  ∀ n, P8113304619407687221.a n = A066194 (n + 1)

end A066194

/-! ## A066194.P1957179881446128204

`1-A065620(A001969(n+1))`
-/

namespace A066194.P1957179881446128204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065620 (A001969 (n + 1)).toNat

end

end A066194.P1957179881446128204

namespace A066194

/-- `1-A065620(A001969(n+1))` -/
def P1957179881446128204.Spec : Prop :=
  ∀ n, P1957179881446128204.a n = A066194 (n + 1)

end A066194

/-! ## A066194.P261634132311048365

`1-(A006068(n)-A268716(n))`
-/

namespace A066194.P261634132311048365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A006068 n - A268716 n)

end

end A066194.P261634132311048365

namespace A066194

/-- `1-(A006068(n)-A268716(n))` -/
def P261634132311048365.Spec : Prop :=
  ∀ n, P261634132311048365.a n = A066194 (n + 1)

end A066194

/-! ## A066194.P16046454790620902776

`1-A006068(n)*A057428(n)`
-/

namespace A066194.P16046454790620902776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006068 n * A057428 n

end

end A066194.P16046454790620902776

namespace A066194

/-- `1-A006068(n)*A057428(n)` -/
def P16046454790620902776.Spec : Prop :=
  ∀ n, P16046454790620902776.a n = A066194 (n + 1)

end A066194

/-! ## A066194.P18238917641447802222

`A292600(2*n)+1`
-/

namespace A066194.P18238917641447802222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (2 * n) + 1

end

end A066194.P18238917641447802222

namespace A066194

/-- `A292600(2*n)+1` -/
def P18238917641447802222.Spec : Prop :=
  ∀ n, P18238917641447802222.a n = A066194 (n + 1)

end A066194

/-! ## A066194.P9113741580812310220

`Δ[n²]-A292601(2*n)`
-/

namespace A066194.P9113741580812310220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A292601 (2 * n)

end

end A066194.P9113741580812310220

namespace A066194

/-- `Δ[n²]-A292601(2*n)` -/
def P9113741580812310220.Spec : Prop :=
  ∀ n, P9113741580812310220.a n = A066194 (n + 1)

end A066194

/-! ## A066194.P17891334646751088797

`A105081(A064707(n)+1)`
-/

namespace A066194.P17891334646751088797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105081 (A064707 n + 1).toNat

end

end A066194.P17891334646751088797

namespace A066194

/-- `A105081(A064707(n)+1)` -/
def P17891334646751088797.Spec : Prop :=
  ∀ n, P17891334646751088797.a n = A066194 (n + 1)

end A066194

/-! ## A066194.P1604529802464937196

`A233279(A063946(n))+1`
-/

namespace A066194.P1604529802464937196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A063946 n).toNat + 1

end

end A066194.P1604529802464937196

namespace A066194

/-- `A233279(A063946(n))+1` -/
def P1604529802464937196.Spec : Prop :=
  ∀ n, P1604529802464937196.a n = A066194 (n + 1)

end A066194

/-!
# A066195: Smallest prime containing n zeros in its binary expansion.

The programs for A066195, there is no canonical definition to state claims against.
-/

/-! ## A066195.P15429699204108023397

`A000040(A372474(n))`
-/

namespace A066195.P15429699204108023397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A372474 n).toNat

end

end A066195.P15429699204108023397

/-! ## A066195.P9276414395544783595

`A008578(A372474(n)+1)`
-/

namespace A066195.P9276414395544783595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A372474 n + 1).toNat

end

end A066195.P9276414395544783595

/-! ## A066195.P2186802799168932719

`A158611(A372474(n)+2)`
-/

namespace A066195.P2186802799168932719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A372474 n + 2).toNat

end

end A066195.P2186802799168932719

/-! ## A066195.P18282791063135459663

`∑{d}[A372474(n), A007444(#)]`
-/

namespace A066195.P18282791063135459663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A066195.P18282791063135459663

/-! ## A066195.P2632676144600012133

`A001747(A372474(n)+1)/2`
-/

namespace A066195.P2632676144600012133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001747 (A372474 n + 1).toNat : ℚ) / 2

end

end A066195.P2632676144600012133

/-!
# A066196: Primes which have an equal number of zeros and ones in their binary expansion.

The programs for A066196, there is no canonical definition to state claims against.
-/

/-! ## A066196.P5367704260206068966

`∩[A095074(n+1), A095075(n+1)]`
-/

namespace A066196.P5367704260206068966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066196.P5367704260206068966

/-! ## A066196.P15369161055400297861

`p?[A031443(n+1)]`
-/

namespace A066196.P15369161055400297861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066196.P15369161055400297861

/-! ## A066196.P7551844168794725054

`p?[∑[A145057(n+1)]]`
-/

namespace A066196.P7551844168794725054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145057 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066196.P7551844168794725054

/-! ## A066196.P17729274220100245181

`p?[∑[∑[A145058(n+1)]]]`
-/

namespace A066196.P17729274220100245181
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066196.P17729274220100245181

/-! ## A066196.P18213401488958464032

`p?[floor(A337238(n+1)/4)]`
-/

namespace A066196.P18213401488958464032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A337238 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066196.P18213401488958464032

/-! ## A066196.P12145963110965523571

`∩[A031443(n+1), A095074(n+1)]`
-/

namespace A066196.P12145963110965523571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066196.P12145963110965523571

/-! ## A066196.P16396356745176491202

`∩[A031443(n+1), A095075(n+1)]`
-/

namespace A066196.P16396356745176491202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066196.P16396356745176491202

/-! ## A066196.P1772577730924997157

`∩[A031443(n+1), A095287(n+1)]`
-/

namespace A066196.P1772577730924997157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066196.P1772577730924997157

/-! ## A066196.P15534070752044062482

`∩[A031443(n+1), A095315(n+1)]`
-/

namespace A066196.P15534070752044062482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066196.P15534070752044062482

/-! ## A066196.P1663756365237248586

`∩[A031443(n+1), A095319(n+1)]`
-/

namespace A066196.P1663756365237248586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066196.P1663756365237248586

/-! ## A066196.P246823878179716835

`A000040(A177796(n+1))`
-/

namespace A066196.P246823878179716835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A177796 (n + 1)).toNat

end

end A066196.P246823878179716835

/-! ## A066196.P17749967154062889986

`A008578(A177796(n+1)+1)`
-/

namespace A066196.P17749967154062889986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A177796 (n + 1) + 1).toNat

end

end A066196.P17749967154062889986

/-! ## A066196.P11826175988397892

`filter[A031443(n+1), A010051(#)]`
-/

namespace A066196.P11826175988397892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A066196.P11826175988397892

/-! ## A066196.P15604483147550486663

`filter[A031443(n+1), A323152(#)]`
-/

namespace A066196.P15604483147550486663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A066196.P15604483147550486663

/-! ## A066196.P17423561479788582410

`filter[A031443(n+1), A323153(#)]`
-/

namespace A066196.P17423561479788582410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A066196.P17423561479788582410

/-! ## A066196.P5675284853792228146

`∩[A000040(n+1), A031443(n+1)]`
-/

namespace A066196.P5675284853792228146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066196.P5675284853792228146

/-! ## A066196.P9273554542597327946

`∩[A008578(n+1), A031443(n+1)]`
-/

namespace A066196.P9273554542597327946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066196.P9273554542597327946

/-! ## A066196.P878439013500444636

`∩[A031443(n+1), A045319(n+1)]`
-/

namespace A066196.P878439013500444636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066196.P878439013500444636

/-! ## A066196.P4671160677155737094

`∩[A031443(n+1), A045344(n+1)]`
-/

namespace A066196.P4671160677155737094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066196.P4671160677155737094

/-! ## A066196.P1853790927241306826

`∩[A031443(n+1), A046022(n+1)]`
-/

namespace A066196.P1853790927241306826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A066196.P1853790927241306826

/-!
# A066197: Squarefree kernel of (n*prime(n))*(n+prime(n)).

The programs for A066197, the canonical program `A066197.P11231834716890673726` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A066197 has offset 1).

The definition of A066197 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014688, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A066197.P11231834716890673726

`A007947(A033286(n+1)*A014688(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A066197

/-- `A007947(A033286(n+1)*A014688(n+1))` -/
def P11231834716890673726.Spec : Prop :=
  ∀ n, P11231834716890673726.a n = A066197 (n + 1)

theorem P11231834716890673726.correct : P11231834716890673726.Spec := by
  intro n
  simp only [A066197, Nat.add_sub_cancel]

end A066197

/-! ## A066197.P16024731333770080080

`A000040(n+1)*A007947(n+1)*A007947(A014688(n+1))`
-/

namespace A066197.P16024731333770080080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A007947 (n + 1) * A007947 (A014688 (n + 1)).toNat

end

end A066197.P16024731333770080080

namespace A066197

/-- `A000040(n+1)*A007947(n+1)*A007947(A014688(n+1))` -/
def P16024731333770080080.Spec : Prop :=
  ∀ n, P16024731333770080080.a n = A066197 (n + 1)

end A066197

/-! ## A066197.P15349317153184900458

`A000040(n+1)*A007947((n+1)*A014688(n+1))`
-/

namespace A066197.P15349317153184900458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A007947 ((n + 1 : ℤ) * A014688 (n + 1)).toNat

end

end A066197.P15349317153184900458

namespace A066197

/-- `A000040(n+1)*A007947((n+1)*A014688(n+1))` -/
def P15349317153184900458.Spec : Prop :=
  ∀ n, P15349317153184900458.a n = A066197 (n + 1)

end A066197

/-! ## A066197.P13141907900576356025

`A007947(lcm(A014688(n+1), A033286(n+1)))`
-/

namespace A066197.P13141907900576356025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Int.lcm (A014688 (n + 1)) (A033286 (n + 1)))

end

end A066197.P13141907900576356025

namespace A066197

/-- `A007947(lcm(A014688(n+1), A033286(n+1)))` -/
def P13141907900576356025.Spec : Prop :=
  ∀ n, P13141907900576356025.a n = A066197 (n + 1)

end A066197

/-!
# A066198: Numbers n where phi changes as fast as sigma, i.e., abs(phi(n+1) - phi(n)) = abs(sigma(n+1) - sigma(n)).

The programs for A066198, there is no canonical definition to state claims against.
-/

/-! ## A066198.P8483521638811211184

`A000027(∪[A145748(n+1), A145749(n+1)])`
-/

namespace A066198.P8483521638811211184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145749 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A066198.P8483521638811211184

/-! ## A066198.P6560299306004620652

`A145749(A028310(n))%A267933(3*n+1)`
-/

namespace A066198.P6560299306004620652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145749 (A028310 n).toNat) (A267933 (3 * n + 1))

end

end A066198.P6560299306004620652

/-! ## A066198.P13479030609131758882

`lt[A281625(n+1), A005063(A000010(n+1))]`
-/

namespace A066198.P13479030609131758882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A066198.P13479030609131758882

/-! ## A066198.P17669275133173165858

`eq[A266089(A000005(3*(n+1))), A326843(n)]`
-/

namespace A066198.P17669275133173165858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266089 (A000005 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326843 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066198.P17669275133173165858

/-! ## A066198.P11131267086242879637

`eq[A000203(A326842(n)), A326842(3*(n+1))]`
-/

namespace A066198.P11131267086242879637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A326842 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326842 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A066198.P11131267086242879637

/-!
# A066199: a(1) = 1; for n > 1, a(n) = a(n-1)-(n+1) if this is positive and has not already appeared in the sequence, otherwise a(n) = a(n-1)+(n+1).

The programs for A066199, there is no canonical definition to state claims against.
-/

/-! ## A066199.P4000997167030006335

`A261573(n)+1`
-/

namespace A066199.P4000997167030006335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261573 n + 1

end

end A066199.P4000997167030006335

/-! ## A066199.P10033517354746521597

`abs(xor(A087960(n), A261573(n)))`
-/

namespace A066199.P10033517354746521597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A087960 n) (A261573 n)|

end

end A066199.P10033517354746521597

/-! ## A066199.P2256460163483052137

`Δ[A000290(n)]-n-(n-A261573(n))`
-/

namespace A066199.P2256460163483052137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ) - ((n : ℤ) - A261573 n)

end

end A066199.P2256460163483052137

/-! ## A066199.P15516298493355278376

`∑[A160357(n)]-(A064289(n)-A261573(n))`
-/

namespace A066199.P15516298493355278376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A064289 n - A261573 n)

end

end A066199.P15516298493355278376

/-! ## A066199.P1994988383406130581

`A066203(n+3)-2`
-/

namespace A066199.P1994988383406130581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066203 (n + 3) - 2

end

end A066199.P1994988383406130581

/-! ## A066199.P4268084132591967280

`A008619(2*A261573(n))`
-/

namespace A066199.P4268084132591967280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A261573 n).toNat

end

end A066199.P4268084132591967280

/-! ## A066199.P5283044797140298988

`A052938(2*A261573(n))`
-/

namespace A066199.P5283044797140298988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A261573 n).toNat

end

end A066199.P5283044797140298988

/-! ## A066199.P5890039833561515258

`ceil(A004442(2*A261573(n))/2)`
-/

namespace A066199.P5890039833561515258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004442 (2 * A261573 n).toNat : ℚ) / 2⌉

end

end A066199.P5890039833561515258

/-! ## A066199.P16946181738284453889

`A065033(or(1, 2*A261573(n)))`
-/

namespace A066199.P16946181738284453889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.lor 1 (2 * A261573 n)).toNat

end

end A066199.P16946181738284453889

/-! ## A066199.P8737781860104147977

`A008611(3*A261573(n))`
-/

namespace A066199.P8737781860104147977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A261573 n).toNat

end

end A066199.P8737781860104147977

/-! ## A066199.P17755615546787291075

`A008620(3*A261573(n))`
-/

namespace A066199.P17755615546787291075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A261573 n).toNat

end

end A066199.P17755615546787291075

/-! ## A066199.P8110735474153094985

`A008621(4*A261573(n))`
-/

namespace A066199.P8110735474153094985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A261573 n).toNat

end

end A066199.P8110735474153094985

/-! ## A066199.P14099329663731484805

`A008616(10*A261573(n))`
-/

namespace A066199.P14099329663731484805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (10 * A261573 n).toNat

end

end A066199.P14099329663731484805

/-! ## A066199.P15421138975709987315

`2-(A131061(∑[n])-A261573(n))`
-/

namespace A066199.P15421138975709987315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A131061 (∑ j ∈ Finset.range (n + 1), f1 j) - A261573 n)

end

end A066199.P15421138975709987315

/-! ## A066199.P1054854391033502814

`A066201(∑[n+4]+2)`
-/

namespace A066199.P1054854391033502814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066201 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A066199.P1054854391033502814

