import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C001
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
import Seq.Opaque.C012
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A382501: Lexicographically earliest infinite sequence of positive integers such that, for any given k, every subsequence {a(j), a(j+k), a(j+2k)} (j, k >= 1) is unique.

The programs for A382501, there is no canonical definition to state claims against.
-/

/-! ## A382501.P8610198849793745119

`gcd(A062117(A033001(2*n+1)), A275754(n))`
-/

namespace A382501.P8610198849793745119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062117 (A033001 (2 * n + 1)).toNat) (A275754 n)

end

end A382501.P8610198849793745119

/-!
# A382503: a(n) = Sum_{d|n} binomial(2*d-1,d).

The programs for A382503, the canonical program `A382503.P4051252001946034417` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382503 has offset 1).

The definition of A382503 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072929, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382503.P4051252001946034417

`A072929(n+1)/2`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A382503

/-- `A072929(n+1)/2` -/
def P4051252001946034417.Spec : Prop :=
  ∀ n, P4051252001946034417.a n = (A382503 (n + 1) : ℚ)

end A382503

/-! ## A382503.P6901939918952026587

`∑{d}[n+1, A088218(#)]`
-/

namespace A382503.P6901939918952026587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088218 d

end

end A382503.P6901939918952026587

namespace A382503

/-- `∑{d}[n+1, A088218(#)]` -/
def P6901939918952026587.Spec : Prop :=
  ∀ n, P6901939918952026587.a n = A382503 (n + 1)

end A382503

/-! ## A382503.P8114432561908871925

`∑{d}[n+1, A001700(#-1)]`
-/

namespace A382503.P8114432561908871925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001700 (d - 1)

end

end A382503.P8114432561908871925

namespace A382503

/-- `∑{d}[n+1, A001700(#-1)]` -/
def P8114432561908871925.Spec : Prop :=
  ∀ n, P8114432561908871925.a n = A382503 (n + 1)

end A382503

/-! ## A382503.P11060050162130545796

`∑{d}[n+1, A081875(#)*A130054((n+1)/#)]`
-/

namespace A382503.P11060050162130545796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A081875 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382503.P11060050162130545796

namespace A382503

/-- `∑{d}[n+1, A081875(#)*A130054((n+1)/#)]` -/
def P11060050162130545796.Spec : Prop :=
  ∀ n, P11060050162130545796.a n = A382503 (n + 1)

end A382503

/-! ## A382503.P931303908985407110

`∑{d}[n+1, A023900(#)*A322203((n+1)/#)]`
-/

namespace A382503.P931303908985407110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A322203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382503.P931303908985407110

namespace A382503

/-- `∑{d}[n+1, A023900(#)*A322203((n+1)/#)]` -/
def P931303908985407110.Spec : Prop :=
  ∀ n, P931303908985407110.a n = A382503 (n + 1)

end A382503

/-! ## A382503.P14142384452237005364

`A066768(n+1)+A066768(n+1)-A034731(n+1)`
-/

namespace A382503.P14142384452237005364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066768 (n + 1) + (A066768 (n + 1) - A034731 (n + 1))

end

end A382503.P14142384452237005364

namespace A382503

/-- `A066768(n+1)+A066768(n+1)-A034731(n+1)` -/
def P14142384452237005364.Spec : Prop :=
  ∀ n, P14142384452237005364.a n = A382503 (n + 1)

end A382503

/-!
# A382505: a(n) is the number of distinct numbers of diagonal transversals in Brown's diagonal Latin squares of order 2n.

The programs for A382505, there is no canonical definition to state claims against.
-/

/-! ## A382505.P4720772077890069181

`∑[floor(7*a(n-1)*ϕ²)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A382505.P4720772077890069181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  ⌊(7 * f1 (n - 1) : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382505.P4720772077890069181

/-!
# A382509: Integers s = (p1+p2)/4 such that p1 and p2 are consecutive primes and s can be written in the form p*2^k with k>=0 and p>2 prime.

The programs for A382509, the canonical program `A382509.P1592332629180381026` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382509 has offset 1).

The definition of A382509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 911 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382509.P1592332629180381026

`filter[A390789(n+1), A353670(#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A382509

/-- `filter[A390789(n+1), A353670(#)]` -/
def P1592332629180381026.Spec : Prop :=
  ∀ n, P1592332629180381026.a n = A382509 (n + 1)

theorem P1592332629180381026.correct : P1592332629180381026.Spec := by
  intro n
  simp only [A382509, Nat.add_sub_cancel]

end A382509

/-! ## A382509.P9632413922900648524

`∩[A038550(n+1), A390789(n+1)]`
-/

namespace A382509.P9632413922900648524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382509.P9632413922900648524

namespace A382509

/-- `∩[A038550(n+1), A390789(n+1)]` -/
def P9632413922900648524.Spec : Prop :=
  ∀ n, (P9632413922900648524.a n : ℤ) = A382509 (n + 1)

end A382509

/-!
# A382511: Expansion of Sum_{p prime} x^p / (1 - x^p)^3.

The programs for A382511, the canonical program `A382511.P17328053456808510659` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382511 has offset 1).

The definition of A382511 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069359, A322078, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382511.P17328053456808510659

`(A069359(n+1)+A322078(n+1))/2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A382511

/-- `(A069359(n+1)+A322078(n+1))/2` -/
def P17328053456808510659.Spec : Prop :=
  ∀ n, P17328053456808510659.a n = (A382511 (n + 1) : ℚ)

end A382511

/-! ## A382511.P16606604939568723073

`∑{d}[n+1, A001221(#)*A007438((n+1)/#)]`
-/

namespace A382511.P16606604939568723073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A007438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382511.P16606604939568723073

namespace A382511

/-- `∑{d}[n+1, A001221(#)*A007438((n+1)/#)]` -/
def P16606604939568723073.Spec : Prop :=
  ∀ n, P16606604939568723073.a n = A382511 (n + 1)

end A382511

/-! ## A382511.P17107556527775472764

`∑{d}[n+1, A023896(#)*A069359((n+1)/#)]`
-/

namespace A382511.P17107556527775472764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A069359 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382511.P17107556527775472764

namespace A382511

/-- `∑{d}[n+1, A023896(#)*A069359((n+1)/#)]` -/
def P17107556527775472764.Spec : Prop :=
  ∀ n, P17107556527775472764.a n = A382511 (n + 1)

end A382511

/-! ## A382511.P16993163086233100384

`∑{d}[n+1, A007437(#)*A143519((n+1)/#)]`
-/

namespace A382511.P16993163086233100384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007437 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382511.P16993163086233100384

namespace A382511

/-- `∑{d}[n+1, A007437(#)*A143519((n+1)/#)]` -/
def P16993163086233100384.Spec : Prop :=
  ∀ n, P16993163086233100384.a n = A382511 (n + 1)

end A382511

/-! ## A382511.P351663593756599255

`∑{d}[n+1, A057661(#)*A117494((n+1)/#)]`
-/

namespace A382511.P351663593756599255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057661 d * A117494 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382511.P351663593756599255

namespace A382511

/-- `∑{d}[n+1, A057661(#)*A117494((n+1)/#)]` -/
def P351663593756599255.Spec : Prop :=
  ∀ n, P351663593756599255.a n = A382511 (n + 1)

end A382511

/-! ## A382511.P4272986091800930697

`∑{d}[n+1, A062799(#)*A326828((n+1)/#)]`
-/

namespace A382511.P4272986091800930697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062799 d * A326828 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382511.P4272986091800930697

namespace A382511

/-- `∑{d}[n+1, A062799(#)*A326828((n+1)/#)]` -/
def P4272986091800930697.Spec : Prop :=
  ∀ n, P4272986091800930697.a n = A382511 (n + 1)

end A382511

/-! ## A382511.P3647571718230161563

`∑{d}[n+1, A125287(#)*A369904((n+1)/#)]`
-/

namespace A382511.P3647571718230161563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A125287 d * A369904 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382511.P3647571718230161563

namespace A382511

/-- `∑{d}[n+1, A125287(#)*A369904((n+1)/#)]` -/
def P3647571718230161563.Spec : Prop :=
  ∀ n, P3647571718230161563.a n = A382511 (n + 1)

end A382511

/-! ## A382511.P17811063545471646470

`∑{d}[n+1, A369865(#)*A390808((n+1)/#)]`
-/

namespace A382511.P17811063545471646470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369865 d * A390808 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382511.P17811063545471646470

namespace A382511

/-- `∑{d}[n+1, A369865(#)*A390808((n+1)/#)]` -/
def P17811063545471646470.Spec : Prop :=
  ∀ n, P17811063545471646470.a n = A382511 (n + 1)

end A382511

/-! ## A382511.P2301972792002678872

`∑{d}[n+1, A195094(#)*A205745((n+1)/#)]`
-/

namespace A382511.P2301972792002678872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A195094 d * A205745 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382511.P2301972792002678872

namespace A382511

/-- `∑{d}[n+1, A195094(#)*A205745((n+1)/#)]` -/
def P2301972792002678872.Spec : Prop :=
  ∀ n, P2301972792002678872.a n = A382511 (n + 1)

end A382511

/-! ## A382511.P10649747144457959335

`∑{d}[n+1, A323599(#)*A331388((n+1)/#)]`
-/

namespace A382511.P10649747144457959335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323599 d * A331388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A382511.P10649747144457959335

namespace A382511

/-- `∑{d}[n+1, A323599(#)*A331388((n+1)/#)]` -/
def P10649747144457959335.Spec : Prop :=
  ∀ n, P10649747144457959335.a n = A382511 (n + 1)

end A382511

/-!
# A382513: Expansion of Sum_{p prime} p * x^p / (1 - p * x^p).

The programs for A382513, there is no canonical definition to state claims against.
-/

/-! ## A382513.P1750860363223556493

`∑{p}[n+1, #^ceil(n/#)]`
-/

namespace A382513.P1750860363223556493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (⌈(n : ℚ) / (p : ℚ)⌉ : ℤ)

end

end A382513.P1750860363223556493

/-! ## A382513.P13870435045759881409

`floor(∑{p}[n+1, #^((n+1)/#)])`
-/

namespace A382513.P13870435045759881409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ ((n + 1 : ℚ) / (p : ℚ) : ℝ)⌋

end

end A382513.P13870435045759881409

/-! ## A382513.P2636542497263769082

`round(∑{p}[n+1, #^((n+1)/#)])`
-/

namespace A382513.P2636542497263769082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ ((n + 1 : ℚ) / (p : ℚ) : ℝ))

end

end A382513.P2636542497263769082

/-! ## A382513.P5231852789610371782

`A008475(A374431(n+1))`
-/

namespace A382513.P5231852789610371782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A374431 (n + 1)).toNat

end

end A382513.P5231852789610371782

/-!
# A382514: Expansion of 1/(1 - x/(1 - 4*x)^(3/2)).

The programs for A382514, there is no canonical definition to state claims against.
-/

/-! ## A382514.P9664839185985245546

`A098022(a(n-1))+2` with `a(0)=1, a(1)=1`
-/

namespace A382514.P9664839185985245546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A098022 (a (n - 1)).toNat + 2

end

end A382514.P9664839185985245546

/-!
# A382515: Expansion of 1/(1 - x/(1 - 4*x)^(5/2)).

The programs for A382515, there is no canonical definition to state claims against.
-/

/-! ## A382515.P16996720206811923141

`abs(A352111(∏[2*n+1]))`
-/

namespace A382515.P16996720206811923141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A352111 (∏ j ∈ Finset.range (n + 1), f1 j)|

end

end A382515.P16996720206811923141

/-!
# A382516: Expansion of 1/(1 - x/(1 - 9*x)^(4/3)).

The programs for A382516, there is no canonical definition to state claims against.
-/

/-! ## A382516.P17685864888311847581

`A373543(2*n)`
-/

namespace A382516.P17685864888311847581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373543 (2 * n)

end

end A382516.P17685864888311847581

/-! ## A382516.P15158158579069307716

`gcd(floor(1/(n+1)), A373543(A005843(n)))`
-/

namespace A382516.P15158158579069307716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A373543 (A005843 n).toNat)

end

end A382516.P15158158579069307716

/-! ## A382516.P8323284793191165156

`A373543(A005843(n))+A140664(A106575(n+1))`
-/

namespace A382516.P8323284793191165156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373543 (A005843 n).toNat + A140664 (A106575 (n + 1)).toNat

end

end A382516.P8323284793191165156

/-! ## A382516.P17668901697462191504

`A373543(A005843(n))%A302994(n+2)`
-/

namespace A382516.P17668901697462191504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373543 (A005843 n).toNat) (A302994 (n + 2))

end

end A382516.P17668901697462191504

/-!
# A382517: Expansion of 1/(1 - x/(1 - 9*x)^(5/3)).

The programs for A382517, there is no canonical definition to state claims against.
-/

/-! ## A382517.P853223070955977698

`A122144(A177396(n+1))-A162213(n+1)`
-/

namespace A382517.P853223070955977698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122144 (A177396 (n + 1)).toNat - A162213 (n + 1)

end

end A382517.P853223070955977698

/-!
# A382518: Let N = A001481(n), the n-th number that is the sum of two nonnegative squares. a(n) is the index of the first lattice-edge sequence that will accept N so that no sequence contains the edges of a triangle, otherwise if no such sequence exists, a(n) = 0.

The programs for A382518, there is no canonical definition to state claims against.
-/

/-! ## A382518.P1210369847524861450

`A001221(C(A003627(n+1), A002654(n+1)))`
-/

namespace A382518.P1210369847524861450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A003627 (n + 1)).toNat (A002654 (n + 1)).toNat)

end

end A382518.P1210369847524861450

/-! ## A382518.P3662741934579313826

`A083025(A204984(n+1))+A002654(n+1)`
-/

namespace A382518.P3662741934579313826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (A204984 (n + 1)).toNat + A002654 (n + 1)

end

end A382518.P3662741934579313826

/-! ## A382518.P13015017278968286884

`and(A029891(n+1), A029899(A002654(n+1)))`
-/

namespace A382518.P13015017278968286884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029891 (n + 1)) (A029899 (A002654 (n + 1)).toNat)

end

end A382518.P13015017278968286884

/-! ## A382518.P1025836900879992615

`or(A002654(n+1), A010052(A319730(2*(n+2))))`
-/

namespace A382518.P1025836900879992615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002654 (n + 1)) (A010052 (A319730 (2 * (n + 2))).toNat)

end

end A382518.P1025836900879992615

/-! ## A382518.P14588591139912079198

`A350289(A306752(n))+A002654(n+1)`
-/

namespace A382518.P14588591139912079198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350289 (A306752 n).toNat + A002654 (n + 1)

end

end A382518.P14588591139912079198

/-!
# A382519: Odd positive integers m such that phi(m) and phi(m+1) are both powers of 2.

The programs for A382519, there is no canonical definition to state claims against.
-/

/-! ## A382519.P2567901376032494334

`A123865(round(sqrt(a(n-1))))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A382519.P2567901376032494334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  A123865 (SequenceMachineLib.roundAway (Real.sqrt (a (n - 1) : ℝ))).toNat

end

end A382519.P2567901376032494334

/-! ## A382519.P13562209810581163287

`A001317(A153010(n))`
-/

namespace A382519.P13562209810581163287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (A153010 n).toNat

end

end A382519.P13562209810581163287

/-! ## A382519.P2037125796786918625

`abs(A077860(A000225(n)))`
-/

namespace A382519.P2037125796786918625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077860 (A000225 n).toNat|

end

end A382519.P2037125796786918625

/-!
# A382520: Primes prime(k) such that k^k == k (mod prime(k)).

The programs for A382520, there is no canonical definition to state claims against.
-/

/-! ## A382520.P3920490626344243739

`A000040(A177005(n+1))`
-/

namespace A382520.P3920490626344243739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A177005 (n + 1)).toNat

end

end A382520.P3920490626344243739

/-!
# A382521: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where n unlabeled objects are distributed into k containers of three kinds. Containers may be left empty.

The programs for A382521, there is no canonical definition to state claims against.
-/

/-! ## A382521.P45191109417978851

`A382343(A061579(n))`
-/

namespace A382521.P45191109417978851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382343 (A061579 n).toNat

end

end A382521.P45191109417978851

/-!
# A382522: Square array A(n,k), n>=0, k>=0, read by antidiagonals downwards, where n unlabeled objects are distributed into k containers of four kinds. Containers may be left empty.

The programs for A382522, there is no canonical definition to state claims against.
-/

/-! ## A382522.P3076879904883986448

`A382344(A061579(n))`
-/

namespace A382522.P3076879904883986448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382344 (A061579 n).toNat

end

end A382522.P3076879904883986448

/-! ## A382522.P10445280300610693159

`A382344(∑[A198954(n)-1])`
-/

namespace A382522.P10445280300610693159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382344 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A382522.P10445280300610693159

/-!
# A382523: Number of non-isomorphic finite multisets of size n that can be partitioned into sets with distinct sums.

The programs for A382523, there is no canonical definition to state claims against.
-/

/-! ## A382523.P2206767562748978906

`∑[ceil(((n-1)/π)²)]`
-/

namespace A382523.P2206767562748978906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℤ) - 1 : ℝ) / Real.pi) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382523.P2206767562748978906

/-! ## A382523.P3654994120562604956

`n-2+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=6, a(6)=9`
-/

namespace A382523.P3654994120562604956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 4, 6, 9] fun n a =>
  (n : ℤ) - 2 + 2 * a (n - 3)

end

end A382523.P3654994120562604956

/-! ## A382523.P14628302754079794956

`ceil(sqrt(A126764(n)))`
-/

namespace A382523.P14628302754079794956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A126764 n : ℝ)⌉

end

end A382523.P14628302754079794956

/-! ## A382523.P10091205721473930291

`A025809(∑[n+1]+4)`
-/

namespace A382523.P10091205721473930291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025809 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A382523.P10091205721473930291

/-! ## A382523.P10348155106029899813

`A240203(n+2)-char[4]`
-/

namespace A382523.P10348155106029899813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240203 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A382523.P10348155106029899813

/-!
# A382524: Number of ways to choose a different constant partition of each part of a constant partition of n.

The programs for A382524, there is no canonical definition to state claims against.
-/

/-! ## A382524.P17977192784198229448

`A005117(A353836(∑[char[1]+n]))`
-/

namespace A382524.P17977192784198229448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A353836 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A382524.P17977192784198229448

/-! ## A382524.P11279409445655567288

`A005117(A304442(n))%A257527(3*n+2)`
-/

namespace A382524.P11279409445655567288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005117 (A304442 n).toNat) (A257527 (3 * n + 2))

end

end A382524.P11279409445655567288

/-! ## A382524.P3469219506398967949

`A005117(gcd(A065218(3*n+4), A304442(n)))`
-/

namespace A382524.P3469219506398967949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Int.gcd (A065218 (3 * n + 4)) (A304442 n))

end

end A382524.P3469219506398967949

/-!
# A382525: Number of times n appears in A048767 (rank of Look-and-Say partition of prime indices). Number of ordered set partitions whose block-sums are the prime signature of n.

The programs for A382525, there is no canonical definition to state claims against.
-/

/-! ## A382525.P13119785215073814742

`A383706(A181819(n+1))`
-/

namespace A382525.P13119785215073814742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (A181819 (n + 1)).toNat

end

end A382525.P13119785215073814742

/-! ## A382525.P2841124237030623631

`A384005(A238745(n+1))`
-/

namespace A382525.P2841124237030623631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384005 (A238745 (n + 1)).toNat

end

end A382525.P2841124237030623631

/-! ## A382525.P8722392017707130557

`A386582(n+1)+A351564(n+1)`
-/

namespace A382525.P8722392017707130557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386582 (n + 1) + A351564 (n + 1)

end

end A382525.P8722392017707130557

/-! ## A382525.P10555822871035513236

`A386582(n+1)+A386575(n+1)`
-/

namespace A382525.P10555822871035513236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386582 (n + 1) + A386575 (n + 1)

end

end A382525.P10555822871035513236

/-! ## A382525.P9738437679324175190

`A050361(n+1)-A121481(A119842(n+1))`
-/

namespace A382525.P9738437679324175190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 1) - A121481 (A119842 (n + 1)).toNat

end

end A382525.P9738437679324175190

/-!
# A382526: Number of integer partitions of n with fewer ones than greatest multiplicity.

The programs for A382526, there is no canonical definition to state claims against.
-/

/-! ## A382526.P5071200001035913287

`A000041(n)-A241131(round(sqrt(n²+1)))`
-/

namespace A382526.P5071200001035913287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241131 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A382526.P5071200001035913287

/-! ## A382526.P8326517533373615132

`A381544(n)-A382303(n)`
-/

namespace A382526.P8326517533373615132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381544 n - A382303 n

end

end A382526.P8326517533373615132

/-! ## A382526.P7440034672277240614

`A381544(n+1)-A002865(n+1)`
-/

namespace A382526.P7440034672277240614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381544 (n + 1) - A002865 (n + 1)

end

end A382526.P7440034672277240614

/-! ## A382526.P16890199578958852272

`A381544(n+1)+A000041(n)-A000041(n+1)`
-/

namespace A382526.P16890199578958852272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381544 (n + 1) + (A000041 n - A000041 (n + 1))

end

end A382526.P16890199578958852272

/-! ## A382526.P5422501282169998768

`A000041(n)-A028310(A241131(n))`
-/

namespace A382526.P5422501282169998768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A028310 (A241131 n).toNat

end

end A382526.P5422501282169998768

/-!
# A382527: a(n) = Sum_{j = 1..n} (-1)^(n+j) * j^(2*n+4) * binomial(2*n, n-j).

The programs for A382527, there is no canonical definition to state claims against.
-/

/-! ## A382527.P13413541109224343680

`A002674(n+1)*A060493(n+1)`
-/

namespace A382527.P13413541109224343680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002674 (n + 1) * A060493 (n + 1)

end

end A382527.P13413541109224343680

/-! ## A382527.P6344186266446849508

`A241172(n+3)*A253566(A000040(n+1))`
-/

namespace A382527.P6344186266446849508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241172 (n + 3) * A253566 (A000040 (n + 1)).toNat

end

end A382527.P6344186266446849508

/-!
# A382528: Triangle T(n,k) read by rows, where row n is a permutation of the numbers 1 through n, such that if a deck of n cards is prepared in this order, and under-down-down dealing is used, then the resulting cards will be dealt in increasing order.

The programs for A382528, there is no canonical definition to state claims against.
-/

/-! ## A382528.P5007332640720423092

`A383847(A066182(n+1))`
-/

namespace A382528.P5007332640720423092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383847 (A066182 (n + 1)).toNat

end

end A382528.P5007332640720423092

/-! ## A382528.P4825424146587713671

`A124768(A139371(n+1)+A026780(3*n))`
-/

namespace A382528.P4825424146587713671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A139371 (n + 1) + A026780 (3 * n)).toNat

end

end A382528.P4825424146587713671

/-! ## A382528.P15244767599054683796

`A109004(n)+A108336(A000129(n))`
-/

namespace A382528.P15244767599054683796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 n + A108336 (A000129 n).toNat

end

end A382528.P15244767599054683796

/-! ## A382528.P2723585419139733242

`A237271(A109281(n)+A018004(n))`
-/

namespace A382528.P2723585419139733242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A109281 n + A018004 n).toNat

end

end A382528.P2723585419139733242

/-! ## A382528.P12336969913201178477

`A374724(A002182(2*n+3)-A051329(n))`
-/

namespace A382528.P12336969913201178477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374724 (A002182 (2 * n + 3) - A051329 n).toNat

end

end A382528.P12336969913201178477

/-!
# A382532: a(n) = Product_{k=1..n} (n*k-k+1).

The programs for A382532, there is no canonical definition to state claims against.
-/

/-! ## A382532.P17960563135909818960

`A256268(A132209(n))`
-/

namespace A382532.P17960563135909818960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256268 (A132209 n).toNat

end

end A382532.P17960563135909818960

/-! ## A382532.P10881570477261740130

`A368119((n+1)²+n²)`
-/

namespace A382532.P10881570477261740130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368119 ((n + 1) ^ 2 + n ^ 2)

end

end A382532.P10881570477261740130

/-!
# A382533: Number of minimum total dominating sets in the n-Lucas cube graph.

The programs for A382533, there is no canonical definition to state claims against.
-/

/-! ## A382533.P1005129882344860427

`record[char[2^n]*A362997(n)]`
-/

namespace A382533.P1005129882344860427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A362997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382533.P1005129882344860427

/-! ## A382533.P5387790575699652643

`A007363(a(n-2)+a(n-1)-3)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A382533.P5387790575699652643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 4] fun n a =>
  A007363 (a (n - 2) + a (n - 1) - 3).toNat

end

end A382533.P5387790575699652643

/-!
# A382534: Number of minimum total dominating sets in the n-flower graph.

The programs for A382534, the canonical program `A382534.P13731056462222352667` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382534 has offset 1).

The definition of A382534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382534.P12027709787604118190

`4*(4/(n+1))^∑[(-1)^∑[n+1]]*root(9, gcd(2, n))`
-/

namespace A382534.P12027709787604118190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 * (4 / (n + 1 : ℚ)) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) * (9 : ℝ) ^ (1 / (Nat.gcd 2 n : ℝ))

end

end A382534.P12027709787604118190

namespace A382534

/-- `4*(4/(n+1))^∑[(-1)^∑[n+1]]*root(9, gcd(2, n))` -/
def P12027709787604118190.Spec : Prop :=
  ∀ n, P12027709787604118190.a n = (A382534 (n + 1) : ℝ)

end A382534

/-! ## A382534.P13731056462222352667

`A010707(n)*A302653(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A382534

/-- `A010707(n)*A302653(n+1)` -/
def P13731056462222352667.Spec : Prop :=
  ∀ n, P13731056462222352667.a n = A382534 (n + 1)

theorem P13731056462222352667.correct : P13731056462222352667.Spec := by
  intro n
  simp only [A382534, Nat.add_sub_cancel]

end A382534

/-!
# A382536: Expansion of 1/(1 - x*(1 + 4*x)^(3/2)).

The programs for A382536, there is no canonical definition to state claims against.
-/

/-! ## A382536.P8877974755220600123

`A088980(A256320(n+1))`
-/

namespace A382536.P8877974755220600123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088980 (A256320 (n + 1)).toNat

end

end A382536.P8877974755220600123

/-! ## A382536.P17341920282434854628

`or(n, A356756(A274174(n)))`
-/

namespace A382536.P17341920282434854628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A356756 (A274174 n).toNat)

end

end A382536.P17341920282434854628

/-!
# A382537: Expansion of 1/(1 - x*(1 + 4*x)^(5/2)).

The programs for A382537, there is no canonical definition to state claims against.
-/

/-! ## A382537.P16610725130125213772

`A222947(a(n-1)+2)` with `a(0)=1, a(1)=1`
-/

namespace A382537.P16610725130125213772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A222947 (a (n - 1) + 2).toNat

end

end A382537.P16610725130125213772

/-!
# A382538: Expansion of 1/(1 - x*(1 + 4*x)^(7/2)).

The programs for A382538, there is no canonical definition to state claims against.
-/

/-! ## A382538.P8639572734160086529

`A127256(A149029(n))`
-/

namespace A382538.P8639572734160086529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127256 (A149029 n).toNat

end

end A382538.P8639572734160086529

/-!
# A382539: Expansion of 1/(1 - x/(1 - 4*x)^(1/2))^2.

The programs for A382539, there is no canonical definition to state claims against.
-/

/-! ## A382539.P11910262077561551538

`A050296(A083324(n))`
-/

namespace A382539.P11910262077561551538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A083324 n).toNat

end

end A382539.P11910262077561551538

/-! ## A382539.P4985101944104993755

`filter[A203837(2*n), A115517(#)]`
-/

namespace A382539.P4985101944104993755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203837 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115517 (f1 j).toNat = 1) n)

end

end A382539.P4985101944104993755

/-!
# A382540: Expansion of 1/(1 - x/(1 - 4*x)^(1/2))^3.

The programs for A382540, there is no canonical definition to state claims against.
-/

/-! ## A382540.P12632527229843224030

`A111709(A341255(n+2))`
-/

namespace A382540.P12632527229843224030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111709 (A341255 (n + 2)).toNat

end

end A382540.P12632527229843224030

/-!
# A382541: Expansion of 1/(1 - x/(1 - 4*x)^(3/2))^2.

The programs for A382541, there is no canonical definition to state claims against.
-/

/-! ## A382541.P1229147399652645919

`A036854(A006032(n+1)+floor(n/2))+n+1`
-/

namespace A382541.P1229147399652645919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036854 (A006032 (n + 1) + ⌊(n : ℚ) / 2⌋).toNat + (n + 1 : ℤ)

end

end A382541.P1229147399652645919

/-!
# A382542: Expansion of 1/(1 - x/(1 - 4*x)^(3/2))^3.

The programs for A382542, there is no canonical definition to state claims against.
-/

/-! ## A382542.P7933422339873072309

`A034494(n)-A324518(A070282(n+1))`
-/

namespace A382542.P7933422339873072309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034494 n - A324518 (A070282 (n + 1)).toNat

end

end A382542.P7933422339873072309

/-!
# A382543: Expansion of 1/(1 - x/(1 - 9*x)^(1/3))^2.

The programs for A382543, there is no canonical definition to state claims against.
-/

/-! ## A382543.P2782160446541278890

`A085343(A336828(n))+n²+1`
-/

namespace A382543.P2782160446541278890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085343 (A336828 n).toNat + (n ^ 2 + 1 : ℤ)

end

end A382543.P2782160446541278890

/-!
# A382544: Expansion of 1/(1 - x/(1 - 9*x)^(1/3))^3.

The programs for A382544, there is no canonical definition to state claims against.
-/

/-! ## A382544.P10785389414323358856

`∑[A087910(A087912(n))]`
-/

namespace A382544.P10785389414323358856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087910 (A087912 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382544.P10785389414323358856

/-!
# A382545: a(n) = A071324(n) - A000010(n).

The programs for A382545, there is no canonical definition to state claims against.
-/

/-! ## A382545.P9990016037792755209

`A071324(n+1)-A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382545.P9990016037792755209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071324 (n + 1) - A000010 (n + 1)

end

end A382545.P9990016037792755209

/-! ## A382545.P5652439642835664299

`A071324(n+1)+1-A039649(n+1)`
-/

namespace A382545.P5652439642835664299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071324 (n + 1) + 1 - A039649 (n + 1)

end

end A382545.P5652439642835664299

/-! ## A382545.P6646917495484580827

`lcm(A014709(n), A071323(n+1))-A000010(n+1)`
-/

namespace A382545.P6646917495484580827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A014709 n) (A071323 (n + 1)) : ℤ) - A000010 (n + 1)

end

end A382545.P6646917495484580827

/-! ## A382545.P15401007668719522445

`A345060(n+1)+A206369(n+1)-A000010(n+1)`
-/

namespace A382545.P15401007668719522445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345060 (n + 1) + A206369 (n + 1) - A000010 (n + 1)

end

end A382545.P15401007668719522445

/-! ## A382545.P3579490837509699983

`A345061(n+1)*A345062(n+1)-A000010(n+1)`
-/

namespace A382545.P3579490837509699983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345061 (n + 1) * A345062 (n + 1) - A000010 (n + 1)

end

end A382545.P3579490837509699983

/-! ## A382545.P3264007366999703327

`A345060(n+1)+1-A344439(n+1)+n-A000010(n+1)`
-/

namespace A382545.P3264007366999703327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345060 (n + 1) + (1 - A344439 (n + 1) + (n : ℤ)) - A000010 (n + 1)

end

end A382545.P3264007366999703327

/-! ## A382545.P15199017126835515879

`A344441(n+1)+A345060(n+1)-A061020(n+1)-A000010(n+1)`
-/

namespace A382545.P15199017126835515879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344441 (n + 1) + (A345060 (n + 1) - A061020 (n + 1)) - A000010 (n + 1)

end

end A382545.P15199017126835515879

/-!
# A382546: Positive integers whose prime factors are all in A219528.

The programs for A382546, there is no canonical definition to state claims against.
-/

/-! ## A382546.P3540445472542466461

`lt[A030213(A324588(n+1)), A077610(n+1)]`
-/

namespace A382546.P3540445472542466461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030213 (A324588 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077610 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382546.P3540445472542466461

/-! ## A382546.P7739841937431036045

`lt[A299045(A074139(n)), A345909(n+1)]`
-/

namespace A382546.P7739841937431036045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299045 (A074139 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345909 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382546.P7739841937431036045

/-! ## A382546.P5403056251708139449

`lt[A051801(A039725(n+2)), A351059(n+1)]`
-/

namespace A382546.P5403056251708139449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A039725 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382546.P5403056251708139449

/-! ## A382546.P16870358475134335542

`lt[A000040(A070081(2*(n+1))), A351059(n+1)]`
-/

namespace A382546.P16870358475134335542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A070081 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382546.P16870358475134335542

/-! ## A382546.P9572711879222292021

`lt[A140119(A319193(2*(n+2))), A130903(n+1)]`
-/

namespace A382546.P9572711879222292021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140119 (A319193 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382546.P9572711879222292021

/-! ## A382546.P14090541500934560039

`lt[A101275(A342001(n+1)), A101233(n+1)]`
-/

namespace A382546.P14090541500934560039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101275 (A342001 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382546.P14090541500934560039

/-! ## A382546.P14182190405091264660

`lt[A101275(A342001(n+1)), A101239(n+1)]`
-/

namespace A382546.P14182190405091264660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101275 (A342001 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101239 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382546.P14182190405091264660

/-! ## A382546.P18205681110028479763

`lt[A005541(A000924(3*n+4)), A160889(n+1)]`
-/

namespace A382546.P18205681110028479763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005541 (A000924 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160889 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382546.P18205681110028479763

/-!
# A382548: Number of minimum total dominating sets in the n-Pell graph.

The programs for A382548, there is no canonical definition to state claims against.
-/

/-! ## A382548.P1900775888785042468

`A323615(A070859(n))`
-/

namespace A382548.P1900775888785042468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323615 (A070859 n).toNat

end

end A382548.P1900775888785042468

/-!
# A382564: Indices of records of the sequence abs((cos n)^n) starting from n = 1.

The programs for A382564, there is no canonical definition to state claims against.
-/

/-! ## A382564.P15364844396091608794

`A002485(A383117(n+1))`
-/

namespace A382564.P15364844396091608794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002485 (A383117 (n + 1)).toNat

end

end A382564.P15364844396091608794

/-! ## A382564.P6987701083745542457

`A046947(A383117(n+1)-1)`
-/

namespace A382564.P6987701083745542457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046947 (A383117 (n + 1) - 1).toNat

end

end A382564.P6987701083745542457

/-!
# A382574: a(n) is the number of shallow permutations of length n that avoid 123.

The programs for A382574, there is no canonical definition to state claims against.
-/

/-! ## A382574.P17141154639618381070

`A147680(A301809(n+2))`
-/

namespace A382574.P17141154639618381070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147680 (A301809 (n + 2)).toNat

end

end A382574.P17141154639618381070

/-! ## A382574.P6438464450422144713

`A262038(A058488(n))+A103379(3*(n+1))`
-/

namespace A382574.P6438464450422144713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A058488 n).toNat + A103379 (3 * (n + 1))

end

end A382574.P6438464450422144713

/-! ## A382574.P1931989518290787893

`xor(A001519(n), A325678(A352662(2*n+1)))`
-/

namespace A382574.P1931989518290787893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001519 n) (A325678 (A352662 (2 * n + 1)).toNat)

end

end A382574.P1931989518290787893

/-! ## A382574.P16143447328776075268

`A243283(A008929(2*(n+1)))-A275891(n+1)`
-/

namespace A382574.P16143447328776075268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A008929 (2 * (n + 1))).toNat - A275891 (n + 1)

end

end A382574.P16143447328776075268

/-!
# A382597: a(n) = Product_{i=1..n} 1 - i + n*(n - i + 1) - (n - 2*i + 1)*((n - i + 1) mod 2).

The programs for A382597, there is no canonical definition to state claims against.
-/

/-! ## A382597.P15180456067556433097

`A006882(A046660(10^n)+n)`
-/

namespace A382597.P15180456067556433097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A046660 (10 ^ n) + (n : ℤ)).toNat

end

end A382597.P15180456067556433097

