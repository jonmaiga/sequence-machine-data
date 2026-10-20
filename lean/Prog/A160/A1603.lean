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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
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
# A160318: Number of 8 X 8 stochastic matrices of integers.

The programs for A160318, there is no canonical definition to state claims against.
-/

/-! ## A160318.P17219922551217393032

`A257493(eq[8, A002262(n)])`
-/

namespace A160318.P17219922551217393032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160318.P17219922551217393032

/-! ## A160318.P6453087463309525513

`A257493(A167499(n+7)+3)`
-/

namespace A160318.P6453087463309525513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (A167499 (n + 7) + 3).toNat

end

end A160318.P6453087463309525513

/-!
# A160319: 

The programs for A160319, there is no canonical definition to state claims against.
-/

/-! ## A160319.P15717409583145559322

`A257493(eq[9, A002262(n)])`
-/

namespace A160319.P15717409583145559322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257493 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A160319.P15717409583145559322

/-!
# A160321: Numbers m for which sigma(m)/m = k + 2/3 with integer k.

The programs for A160321, there is no canonical definition to state claims against.
-/

/-! ## A160321.P8326785133294490931

`A211679(A057947(n+1))`
-/

namespace A160321.P8326785133294490931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211679 (A057947 (n + 1)).toNat

end

end A160321.P8326785133294490931

/-!
# A160322: a(n) = min(A160198(n), A160267(n)).

The programs for A160322, there is no canonical definition to state claims against.
-/

/-! ## A160322.P3579121456983368857

`gcd(n, A104601(n+1)+1)%3`
-/

namespace A160322.P3579121456983368857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A104601 (n + 1) + 1) % 3

end

end A160322.P3579121456983368857

/-! ## A160322.P12530995168650518758

`A010872(gcd(n, A104601(n+1)+1))`
-/

namespace A160322.P12530995168650518758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (Int.gcd (n : ℤ) (A104601 (n + 1) + 1))

end

end A160322.P12530995168650518758

/-! ## A160322.P6602713584639597274

`(A104601(n+1)*A247808(3*n+2))%2+1`
-/

namespace A160322.P6602713584639597274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104601 (n + 1) * A247808 (3 * n + 2)) 2 + 1

end

end A160322.P6602713584639597274

/-! ## A160322.P8001310866038302816

`A034836(A160198(n+1)^A160267(n+1))`
-/

namespace A160322.P8001310866038302816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (SequenceMachineLib.roundAway ((A160198 (n + 1) : ℚ) ^ (A160267 (n + 1) : ℤ))).toNat

end

end A160322.P8001310866038302816

/-! ## A160322.P1249412520486718716

`A089610(A160198(n+1)^A160267(n+1))`
-/

namespace A160322.P1249412520486718716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089610 (SequenceMachineLib.roundAway ((A160198 (n + 1) : ℚ) ^ (A160267 (n + 1) : ℤ))).toNat

end

end A160322.P1249412520486718716

/-! ## A160322.P4015984919587776080

`A178886(A160198(n+1)^A160267(n+1))`
-/

namespace A160322.P4015984919587776080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178886 (SequenceMachineLib.roundAway ((A160198 (n + 1) : ℚ) ^ (A160267 (n + 1) : ℤ))).toNat

end

end A160322.P4015984919587776080

/-! ## A160322.P8153765186725934021

`A303758(A160198(n+1)^A160267(n+1))`
-/

namespace A160322.P8153765186725934021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303758 (SequenceMachineLib.roundAway ((A160198 (n + 1) : ℚ) ^ (A160267 (n + 1) : ℤ))).toNat

end

end A160322.P8153765186725934021

/-! ## A160322.P2104954983381824386

`A318434(A160198(n+1)^A160267(n+1))`
-/

namespace A160322.P2104954983381824386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318434 (SequenceMachineLib.roundAway ((A160198 (n + 1) : ℚ) ^ (A160267 (n + 1) : ℤ))).toNat

end

end A160322.P2104954983381824386

/-! ## A160322.P10945435034609109336

`A105220(A104601(n+1)%A160266(n+1))`
-/

namespace A160322.P10945435034609109336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 (Int.tmod (A104601 (n + 1)) (A160266 (n + 1))).toNat

end

end A160322.P10945435034609109336

/-! ## A160322.P18093954686146216562

`(A160267(n+1)^A001222(A159885(n+1)))!`
-/

namespace A160322.P18093954686146216562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((A160267 (n + 1) : ℚ) ^ (A001222 (A159885 (n + 1)).toNat : ℤ))).toNat

end

end A160322.P18093954686146216562

/-!
# A160324: Number of ways to express n as the sum of a square, a pentagonal number and a hexagonal number.

The programs for A160324, there is no canonical definition to state claims against.
-/

/-! ## A160324.P4754572176414548045

`A061258(A280173(n))%5`
-/

namespace A160324.P4754572176414548045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061258 (A280173 n).toNat) 5

end

end A160324.P4754572176414548045

/-! ## A160324.P3276778545836273922

`A333627(A002349(n+1)+4)`
-/

namespace A160324.P3276778545836273922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A002349 (n + 1) + 4).toNat

end

end A160324.P3276778545836273922

/-! ## A160324.P8571829989135043481

`A143484(A293239(n)^A090283(n+1))`
-/

namespace A160324.P8571829989135043481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143484 (SequenceMachineLib.roundAway ((A293239 n : ℚ) ^ (A090283 (n + 1) : ℤ))).toNat

end

end A160324.P8571829989135043481

/-! ## A160324.P14274538080217633595

`gcd(A215007(A002349(n+1)), A304830(n+1))`
-/

namespace A160324.P14274538080217633595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215007 (A002349 (n + 1)).toNat) (A304830 (n + 1))

end

end A160324.P14274538080217633595

/-!
# A160325: Number of ways to express n=0,1,2,... as the sum of a triangular number, an even square and a pentagonal number.

The programs for A160325, there is no canonical definition to state claims against.
-/

/-! ## A160325.P17944515991073290933

`A269971(eq[n%3/2, A010894(n)])`
-/

namespace A160325.P17944515991073290933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 3 : ℕ) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (n + 21)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269971 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A160325.P17944515991073290933

/-! ## A160325.P10103990535947667194

`A078929(A034953(2*n+5)+gcd(2, ∏{p}[n, #]))`
-/

namespace A160325.P10103990535947667194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078929 (A034953 (2 * n + 5) + (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ)).toNat

end

end A160325.P10103990535947667194

/-! ## A160325.P2595984988950558398

`A108103(A023105(n+2)-A017991(n))`
-/

namespace A160325.P2595984988950558398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108103 (A023105 (n + 2) - A017991 n).toNat

end

end A160325.P2595984988950558398

/-! ## A160325.P1038800940149661615

`A078734(A001158(n+1)*A143182(n))`
-/

namespace A160325.P1038800940149661615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (A001158 (n + 1) * A143182 n).toNat

end

end A160325.P1038800940149661615

/-! ## A160325.P16546884822607262654

`gcd(A018994(n+2), A248025(A117120(n+1)))`
-/

namespace A160325.P16546884822607262654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018994 (n + 2)) (A248025 (A117120 (n + 1)).toNat)

end

end A160325.P16546884822607262654

/-!
# A160333: Number of pairs of rabbits in month n in the dying rabbits problem, if they become mature after 4 months and give birth to exactly 7 pairs, one per month.

The programs for A160333, the canonical program `A160333.P1225535264563820500` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160333 has offset 0).

The definition of A160333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160333.P1225535264563820500

`a(n-1)-a(n-2)+a(n-3)+a(n-5)+a(n-7)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3, a(6)=4, a(7)=5, a(8)=7`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160333

/-- `a(n-1)-a(n-2)+a(n-3)+a(n-5)+a(n-7)+a(n-9)` -/
def P1225535264563820500.Spec : Prop :=
  ∀ n, P1225535264563820500.a n = A160333 n

theorem P1225535264563820500.correct : P1225535264563820500.Spec := by
  intro n
  simp only [A160333]

end A160333

/-! ## A160333.P14951934999607447556

`A072613(n+1)+A000196(A036378(n))`
-/

namespace A160333.P14951934999607447556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (n + 1) + A000196 (A036378 n).toNat

end

end A160333.P14951934999607447556

namespace A160333

/-- `A072613(n+1)+A000196(A036378(n))` -/
def P14951934999607447556.Spec : Prop :=
  ∀ n, P14951934999607447556.a n = A160333 n

end A160333

/-! ## A160333.P3181915350163318950

`A060967(A072000(n+1))+A000196(A036378(n))`
-/

namespace A160333.P3181915350163318950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (A072000 (n + 1)).toNat + A000196 (A036378 n).toNat

end

end A160333.P3181915350163318950

namespace A160333

/-- `A060967(A072000(n+1))+A000196(A036378(n))` -/
def P3181915350163318950.Spec : Prop :=
  ∀ n, P3181915350163318950.a n = A160333 n

end A160333

/-! ## A160333.P253080368011023334

`A120178(2*n+1)+A056978(A147418(n+1))`
-/

namespace A160333.P253080368011023334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120178 (2 * n + 1) + A056978 (A147418 (n + 1)).toNat

end

end A160333.P253080368011023334

namespace A160333

/-- `A120178(2*n+1)+A056978(A147418(n+1))` -/
def P253080368011023334.Spec : Prop :=
  ∀ n, P253080368011023334.a n = A160333 n

end A160333

/-! ## A160333.P15936538207335550800

`A373810(A050194(n+1))`
-/

namespace A160333.P15936538207335550800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373810 (A050194 (n + 1)).toNat

end

end A160333.P15936538207335550800

namespace A160333

/-- `A373810(A050194(n+1))` -/
def P15936538207335550800.Spec : Prop :=
  ∀ n, P15936538207335550800.a n = A160333 n

end A160333

/-!
# A160337: 1 plus primes using only digits {0, 1, 2, 3, 5, 7}.

The programs for A160337, the canonical program `A160337.P9545662688461462744` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160337 has offset 1).

The definition of A160337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1088 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160337.P9545662688461462744

`∩[A008578(n+1), A202267(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160337

/-- `∩[A008578(n+1), A202267(n+1)]` -/
def P9545662688461462744.Spec : Prop :=
  ∀ n, (P9545662688461462744.a n : ℤ) = A160337 (n + 1)

theorem P9545662688461462744.correct : P9545662688461462744.Spec := by
  intro n
  simp only [A160337, Nat.add_sub_cancel]

end A160337

/-! ## A160337.P5147008584866454861

`∩[A046022(n+1), A202267(n+1)]`
-/

namespace A160337.P5147008584866454861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160337.P5147008584866454861

namespace A160337

/-- `∩[A046022(n+1), A202267(n+1)]` -/
def P5147008584866454861.Spec : Prop :=
  ∀ n, (P5147008584866454861.a n : ℤ) = A160337 (n + 1)

end A160337

/-! ## A160337.P1148203561443942661

`∩[A067126(n+1), A202267(n+1)]`
-/

namespace A160337.P1148203561443942661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160337.P1148203561443942661

namespace A160337

/-- `∩[A067126(n+1), A202267(n+1)]` -/
def P1148203561443942661.Spec : Prop :=
  ∀ n, (P1148203561443942661.a n : ℤ) = A160337 (n + 1)

end A160337

/-! ## A160337.P17271986542783824008

`∩[A202267(n+1), A028815(n)-1]`
-/

namespace A160337.P17271986542783824008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160337.P17271986542783824008

namespace A160337

/-- `∩[A202267(n+1), A028815(n)-1]` -/
def P17271986542783824008.Spec : Prop :=
  ∀ n, (P17271986542783824008.a n : ℤ) = A160337 (n + 1)

end A160337

/-! ## A160337.P4044026905613667731

`record[A006530(A202267(n+2))]`
-/

namespace A160337.P4044026905613667731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A202267 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160337.P4044026905613667731

namespace A160337

/-- `record[A006530(A202267(n+2))]` -/
def P4044026905613667731.Spec : Prop :=
  ∀ n, P4044026905613667731.a n = A160337 (n + 1)

end A160337

/-! ## A160337.P13895895017246997839

`record[A020639(A202267(n+1)+A000007(n))]`
-/

namespace A160337.P13895895017246997839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A202267 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160337.P13895895017246997839

namespace A160337

/-- `record[A020639(A202267(n+1)+A000007(n))]` -/
def P13895895017246997839.Spec : Prop :=
  ∀ n, P13895895017246997839.a n = A160337 (n + 1)

end A160337

/-! ## A160337.P857776069293449322

`filter[A202267(n+2), A080339(#)]`
-/

namespace A160337.P857776069293449322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A160337.P857776069293449322

namespace A160337

/-- `filter[A202267(n+2), A080339(#)]` -/
def P857776069293449322.Spec : Prop :=
  ∀ n, P857776069293449322.a n = A160337 (n + 1)

end A160337

/-!
# A160338: 

The programs for A160338, there is no canonical definition to state claims against.
-/

/-! ## A160338.P3937183139556133264

`A137979(n+1)`
-/

namespace A160338.P3937183139556133264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137979 (n + 1)

end

end A160338.P3937183139556133264

/-! ## A160338.P5657191810000125831

`A309978(A318879(n+1)+A007500(n+1))`
-/

namespace A160338.P5657191810000125831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309978 (A318879 (n + 1) + A007500 (n + 1)).toNat

end

end A160338.P5657191810000125831

/-! ## A160338.P8105947238482699610

`gcd(2, A036542(A062513(n+1)))`
-/

namespace A160338.P8105947238482699610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A036542 (A062513 (n + 1)).toNat)

end

end A160338.P8105947238482699610

/-! ## A160338.P15169236102484129006

`gcd(n, A040082(A259936(n+1)))`
-/

namespace A160338.P15169236102484129006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A040082 (A259936 (n + 1)).toNat)

end

end A160338.P15169236102484129006

/-! ## A160338.P13174363427219847570

`A353846(A304442(∏{p}[n+1, #]))!`
-/

namespace A160338.P13174363427219847570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A353846 (A304442 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat).toNat

end

end A160338.P13174363427219847570

/-! ## A160338.P12430493931027410817

`gcd(A257687(n), A329601(A062513(n+1)))`
-/

namespace A160338.P12430493931027410817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257687 n) (A329601 (A062513 (n + 1)).toNat)

end

end A160338.P12430493931027410817

/-! ## A160338.P14825456953896918960

`A351969(C(A050326(n+1), A101432(n)))`
-/

namespace A160338.P14825456953896918960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351969 (Nat.choose (A050326 (n + 1)).toNat (A101432 n).toNat)

end

end A160338.P14825456953896918960

/-! ## A160338.P14125993998453041207

`A002110(C(A339846(2*(n+1)), A318312(n+1)))`
-/

namespace A160338.P14125993998453041207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (Nat.choose (A339846 (2 * (n + 1))).toNat (A318312 (n + 1)).toNat)

end

end A160338.P14125993998453041207

/-! ## A160338.P182140369080270176

`ceil((A056239(2^A320655((n+1)²))+A349907(n+1)+3)/12)`
-/

namespace A160338.P182140369080270176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056239 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A320655 ((n + 1) ^ 2) : ℤ))).toNat + (A349907 (n + 1) + 3) : ℚ) / 12⌉

end

end A160338.P182140369080270176

/-! ## A160338.P12647719186178002920

`gcd(A027471(n+1), A287214(A181819(n+1)))`
-/

namespace A160338.P12647719186178002920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027471 (n + 1)) (A287214 (A181819 (n + 1)).toNat)

end

end A160338.P12647719186178002920

/-! ## A160338.P15607525310151670669

`A328614(5^A316556(n+1))`
-/

namespace A160338.P15607525310151670669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328614 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A316556 (n + 1) : ℤ))).toNat

end

end A160338.P15607525310151670669

/-! ## A160338.P3418945443366455126

`A026492(∑{e}[A298596(2*n+3), #])`
-/

namespace A160338.P3418945443366455126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298596 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026492 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A160338.P3418945443366455126

/-! ## A160338.P17219369763099127299

`val(A223283(n+1), 11)!`
-/

namespace A160338.P17219369763099127299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.valuation (A223283 (n + 1)).toNat 11)

end

end A160338.P17219369763099127299

/-! ## A160338.P1623663325229015607

`∏{e}[A000045(A056753(n+3)), #]`
-/

namespace A160338.P1623663325229015607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A056753 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A160338.P1623663325229015607

/-! ## A160338.P9836910528567668655

`A261675(A129363(n+1))^A355610(n+1)`
-/

namespace A160338.P9836910528567668655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261675 (A129363 (n + 1)).toNat : ℚ) ^ (A355610 (n + 1) : ℤ)

end

end A160338.P9836910528567668655

/-! ## A160338.P1886144762918303372

`A211100(A290902(n)%A007862(n+1))`
-/

namespace A160338.P1886144762918303372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (Int.tmod (A290902 n) (A007862 (n + 1))).toNat

end

end A160338.P1886144762918303372

/-! ## A160338.P24173582860047046

`A261675(A129363(n+1))^A026998(n)`
-/

namespace A160338.P24173582860047046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261675 (A129363 (n + 1)).toNat : ℚ) ^ (A026998 n : ℤ)

end

end A160338.P24173582860047046

/-! ## A160338.P365376375792461019

`gcd(A053632(A053632(n)), A264424(n+1))`
-/

namespace A160338.P365376375792461019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053632 (A053632 n).toNat) (A264424 (n + 1))

end

end A160338.P365376375792461019

/-! ## A160338.P1380351093620363584

`∏{e}[A181815(A306802(n+1)), A008302(#)]`
-/

namespace A160338.P1380351093620363584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181815 (A306802 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008302 (Nat.factorization (f1 n).natAbs p)

end

end A160338.P1380351093620363584

/-! ## A160338.P5461500604571933007

`A227655(gcd(A002260(n+1), A125372(n)))`
-/

namespace A160338.P5461500604571933007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227655 (Int.gcd (A002260 (n + 1)) (A125372 n))

end

end A160338.P5461500604571933007

/-!
# A160340: Indices of records in heights of cyclotomic polynomials (A160338).

The programs for A160340, there is no canonical definition to state claims against.
-/

/-! ## A160340.P6052576186586764604

`or(1, A013594(A160339(n+1)))`
-/

namespace A160340.P6052576186586764604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A013594 (A160339 (n + 1)).toNat)

end

end A160340.P6052576186586764604

/-! ## A160340.P12734859495493267361

`A013594(A160339(n+1))+A000007(n)`
-/

namespace A160340.P12734859495493267361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013594 (A160339 (n + 1)).toNat + A000007 n

end

end A160340.P12734859495493267361

/-! ## A160340.P8622285979832239059

`A013594(A160339(n+1))^A178489(n)`
-/

namespace A160340.P8622285979832239059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013594 (A160339 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A160340.P8622285979832239059

/-! ## A160340.P11023540216809666410

`∏{p}[A013594(A160339(n+1)), A006530(#)]`
-/

namespace A160340.P11023540216809666410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013594 (A160339 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A160340.P11023540216809666410

/-! ## A160340.P16261902393777324879

`∏{p}[A013594(A160339(n+1)), A020639(#)]`
-/

namespace A160340.P16261902393777324879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013594 (A160339 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 p

end

end A160340.P16261902393777324879

/-!
# A160341: Height of the 3*5*7*11*...*prime(n)-th cyclotomic polynomial.

The programs for A160341, there is no canonical definition to state claims against.
-/

/-! ## A160341.P14403775505672996519

`A160339(A363430(n))`
-/

namespace A160341.P14403775505672996519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160339 (A363430 n).toNat

end

end A160341.P14403775505672996519

/-! ## A160341.P2791197458718396173

`A301513(A236571(n))`
-/

namespace A160341.P2791197458718396173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301513 (A236571 n).toNat

end

end A160341.P2791197458718396173

/-!
# A160350: Indices n=pqr of flat cyclotomic polynomials, where p

The programs for A160350, there is no canonical definition to state claims against.
-/

/-! ## A160350.P13930318949293394361

`∪[A160352(n+1), A160354(n+1)]`
-/

namespace A160350.P13930318949293394361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A160350.P13930318949293394361

/-! ## A160350.P12931658714588835670

`A007304(eq[1, A278567(n+1)]+1)`
-/

namespace A160350.P12931658714588835670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A160350.P12931658714588835670

/-! ## A160350.P7258285014572256935

`A007304(record[(n+1)/A278567(n+1)])`
-/

namespace A160350.P7258285014572256935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A278567 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A160350.P7258285014572256935

/-! ## A160350.P11513914597203681725

`record[root(A007304(n+1), A278567(n+1))]`
-/

namespace A160350.P11513914597203681725
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007304 (n + 1) : ℝ) ^ (1 / (A278567 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160350.P11513914597203681725

/-! ## A160350.P16609960841669487540

`record[sqrt(A162143(n+1)/A278567(n+1))]`
-/

namespace A160350.P16609960841669487540
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A162143 (n + 1) : ℚ) / (A278567 (n + 1) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160350.P16609960841669487540

/-!
# A160351: Characteristic function of A057166.

The programs for A160351, there is no canonical definition to state claims against.
-/

/-! ## A160351.P11549844874495269863

`1-A076213(n)`
-/

namespace A160351.P11549844874495269863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A076213 n

end

end A160351.P11549844874495269863

/-! ## A160351.P15711175772406286240

`(1-A160357(n+1))/2`
-/

namespace A160351.P15711175772406286240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A160357 (n + 1) : ℚ) / 2

end

end A160351.P15711175772406286240

/-! ## A160351.P9414627182250387872

`ceil(Δ[acot(A005132(n))])`
-/

namespace A160351.P9414627182250387872
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A005132 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A160351.P9414627182250387872

/-! ## A160351.P11389393687962178980

`ceil(Δ[acot(A064289(n))])`
-/

namespace A160351.P11389393687962178980
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A064289 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A160351.P11389393687962178980

/-! ## A160351.P7828361343197130200

`char[A057166(n+1)-1]`
-/

namespace A160351.P7828361343197130200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057166 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A160351.P7828361343197130200

/-! ## A160351.P6167441801444746487

`∑[Δ[A160357(n)]/2]²`
-/

namespace A160351.P6167441801444746487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A160351.P6167441801444746487

/-! ## A160351.P11335787034395417264

`1-char[A057165(n+1)-1]`
-/

namespace A160351.P11335787034395417264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057165 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A160351.P11335787034395417264

/-! ## A160351.P3985249407693915521

`A000045(1-Δ[A064289(n)])`
-/

namespace A160351.P3985249407693915521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (1 - (f1 (n + 1) - f1 n)).toNat

end

end A160351.P3985249407693915521

/-! ## A160351.P18204727887298720432

`A001065(2-Δ[A064289(n)])`
-/

namespace A160351.P18204727887298720432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A160351.P18204727887298720432

/-! ## A160351.P9370585606840283810

`A001221(2-Δ[A064289(n)])`
-/

namespace A160351.P9370585606840283810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A160351.P9370585606840283810

/-! ## A160351.P13287882166464480107

`A001222(2-Δ[A064289(n)])`
-/

namespace A160351.P13287882166464480107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A160351.P13287882166464480107

/-! ## A160351.P9353535214411000064

`2-A000041(Δ[A064289(n)]+1)`
-/

namespace A160351.P9353535214411000064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000041 (f1 (n + 1) - f1 n + 1).toNat

end

end A160351.P9353535214411000064

/-! ## A160351.P9426920318506406110

`ceil(Δ[acot(A169631(n))])`
-/

namespace A160351.P9426920318506406110
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A169631 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A160351.P9426920318506406110

/-! ## A160351.P2114917212198289904

`char[lt[A160356(n+1), 0]]`
-/

namespace A160351.P2114917212198289904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160356 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A160351.P2114917212198289904

/-!
# A160353: Numbers of the form p*q*r, where p < q < r are odd primes such that r = +/ -1 (mod p*q).

The programs for A160353, there is no canonical definition to state claims against.
-/

/-! ## A160353.P5717003956718327444

`∩[A117223(n+1), A160352(n+1)]`
-/

namespace A160353.P5717003956718327444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160353.P5717003956718327444

/-! ## A160353.P9694344241593337929

`∩[A046389(n+1), A160352(n+1)]`
-/

namespace A160353.P9694344241593337929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160353.P9694344241593337929

/-! ## A160353.P5951540473408164363

`∩[A160352(n+1), A392008(n+1)]`
-/

namespace A160353.P5951540473408164363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160353.P5951540473408164363

/-! ## A160353.P6105004856880798498

`∩[A046316(n+1), A160352(n+1)]`
-/

namespace A160353.P6105004856880798498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160353.P6105004856880798498

/-! ## A160353.P610867824173191662

`∩[A160352(n+1), A278569(n+1)]`
-/

namespace A160353.P610867824173191662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160353.P610867824173191662

/-! ## A160353.P2130389140082885428

`∩[A046340(n+1), A160352(n+1)]`
-/

namespace A160353.P2130389140082885428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160353.P2130389140082885428

/-! ## A160353.P5116853608494233544

`∩[A160352(n+1), A257411(n+1)]`
-/

namespace A160353.P5116853608494233544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160353.P5116853608494233544

/-! ## A160353.P7884406051679451765

`∩[A160352(n+1), A216918(n+1)]`
-/

namespace A160353.P7884406051679451765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160353.P7884406051679451765

/-! ## A160353.P18086592779464720734

`∩[A160352(n+1), A267891(n+1)]`
-/

namespace A160353.P18086592779464720734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160353.P18086592779464720734

/-! ## A160353.P16480861156863946466

`∩[A160352(n+1), A333326(n+1)]`
-/

namespace A160353.P16480861156863946466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160353.P16480861156863946466

/-! ## A160353.P1335911568640119863

`∩[A160352(n+1), A386606(n+1)]`
-/

namespace A160353.P1335911568640119863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160353.P1335911568640119863

/-! ## A160353.P2352892790628256985

`∩[A160352(n+1), A306104(n+1)]`
-/

namespace A160353.P2352892790628256985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160353.P2352892790628256985

/-! ## A160353.P12217434221281062673

`∩[A138604(n+1), A160352(n+1)]`
-/

namespace A160353.P12217434221281062673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160353.P12217434221281062673

/-!
# A160354: Indices pqr of flat cyclotomic polynomials of order 3 which are not of the form r = +/ -1 (mod pq).

The programs for A160354, there is no canonical definition to state claims against.
-/

/-! ## A160354.P12632547826088499404

`A020639(5*4^(n+3))*A350344(n+1)`
-/

namespace A160354.P12632547826088499404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * 4 ^ (n + 3)) * A350344 (n + 1)

end

end A160354.P12632547826088499404

/-!
# A160355: Odd indices pqr of flat cyclotomic polynomials of order 3 which are not of the form r = +/ -1 (mod pq).

The programs for A160355, there is no canonical definition to state claims against.
-/

/-! ## A160355.P18351005904909375785

`∩[A117223(n+1), A160354(n+1)]`
-/

namespace A160355.P18351005904909375785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160355.P18351005904909375785

/-! ## A160355.P8649079868610276736

`∩[A046389(n+1), A160354(n+1)]`
-/

namespace A160355.P8649079868610276736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160355.P8649079868610276736

/-! ## A160355.P17223901793280954320

`∩[A160354(n+1), A392008(n+1)]`
-/

namespace A160355.P17223901793280954320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160355.P17223901793280954320

/-! ## A160355.P1460014194502596641

`∩[A046316(n+1), A160354(n+1)]`
-/

namespace A160355.P1460014194502596641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160355.P1460014194502596641

/-! ## A160355.P9534137470758296315

`∩[A160354(n+1), A278569(n+1)]`
-/

namespace A160355.P9534137470758296315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160355.P9534137470758296315

/-! ## A160355.P7453551116168933135

`∩[A046340(n+1), A160354(n+1)]`
-/

namespace A160355.P7453551116168933135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160355.P7453551116168933135

/-! ## A160355.P6258976171153092216

`∩[A160354(n+1), A257411(n+1)]`
-/

namespace A160355.P6258976171153092216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160355.P6258976171153092216

/-! ## A160355.P8387351272930823417

`∩[A160354(n+1), A216918(n+1)]`
-/

namespace A160355.P8387351272930823417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160355.P8387351272930823417

/-! ## A160355.P16358748700742256286

`∩[A160354(n+1), A267891(n+1)]`
-/

namespace A160355.P16358748700742256286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160355.P16358748700742256286

/-! ## A160355.P15080302456908174451

`∩[A056912(n+1), A160354(n+1)]`
-/

namespace A160355.P15080302456908174451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160355.P15080302456908174451

/-! ## A160355.P3093682659735462057

`∩[A160354(n+1), A333326(n+1)]`
-/

namespace A160355.P3093682659735462057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160355.P3093682659735462057

/-! ## A160355.P12464387454936937901

`∩[A160354(n+1), A381218(n+1)]`
-/

namespace A160355.P12464387454936937901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160355.P12464387454936937901

/-! ## A160355.P8655899132771914232

`∩[A160354(n+1), A386606(n+1)]`
-/

namespace A160355.P8655899132771914232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160355.P8655899132771914232

/-! ## A160355.P12686470939393902615

`∩[A160354(n+1), A306104(n+1)]`
-/

namespace A160355.P12686470939393902615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160355.P12686470939393902615

/-! ## A160355.P12539517164539909233

`∩[A138604(n+1), A160354(n+1)]`
-/

namespace A160355.P12539517164539909233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160355.P12539517164539909233

/-! ## A160355.P1402513748137591146

`filter[A160354(n+1), A000035(#)]`
-/

namespace A160355.P1402513748137591146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A160355.P1402513748137591146

/-!
# A160356: First differences of Recamán's sequence A005132.

The programs for A160356, there is no canonical definition to state claims against.
-/

/-! ## A160356.P4033150835302290510

`(n+1)*A160357(n+1)`
-/

namespace A160356.P4033150835302290510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A160357 (n + 1)

end

end A160356.P4033150835302290510

/-! ## A160356.P2355264113197006362

`A005132(n+1)-A005132(n)`
-/

namespace A160356.P2355264113197006362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (n + 1) - A005132 n

end

end A160356.P2355264113197006362

/-! ## A160356.P9665456015324567541

`Δ[A005132(n)]`
-/

namespace A160356.P9665456015324567541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160356.P9665456015324567541

/-! ## A160356.P14220299372364816069

`(n+1)*Δ[A064289(n)]`
-/

namespace A160356.P14220299372364816069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A160356.P14220299372364816069

/-! ## A160356.P5906166058002662984

`∑[Δ[2*n*A160357(n)]/2]`
-/

namespace A160356.P5906166058002662984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A160357 n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160356.P5906166058002662984

/-! ## A160356.P8017522801501603990

`Δ[A063733(n+1)]`
-/

namespace A160356.P8017522801501603990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160356.P8017522801501603990

/-! ## A160356.P1204691263855944366

`Δ[A209386(n)/2]`
-/

namespace A160356.P1204691263855944366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209386 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160356.P1204691263855944366

/-! ## A160356.P8964271249437341664

`Δ[A209387(n)/2]`
-/

namespace A160356.P8964271249437341664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209387 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160356.P8964271249437341664

/-! ## A160356.P13595007830701372214

`Δ[A334951(n+1)]+1`
-/

namespace A160356.P13595007830701372214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A160356.P13595007830701372214

/-! ## A160356.P10673196588399616344

`Δ[Δ[A065056(A028310(n)-1)]]`
-/

namespace A160356.P10673196588399616344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065056 (A028310 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160356.P10673196588399616344

/-! ## A160356.P14513148196402242597

`Δ[Δ[A065056(A004273(n)-n)]]`
-/

namespace A160356.P14513148196402242597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065056 (A004273 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160356.P14513148196402242597

/-! ## A160356.P10744484629326310976

`A063733(n+2)-A063733(n+1)`
-/

namespace A160356.P10744484629326310976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (n + 2) - A063733 (n + 1)

end

end A160356.P10744484629326310976

/-! ## A160356.P8776742885526367881

`Δ[A382128(2*n+1)]`
-/

namespace A160356.P8776742885526367881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382128 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160356.P8776742885526367881

/-! ## A160356.P255792907286252063

`A001057(A160351(n+1)+2*n+1)`
-/

namespace A160356.P255792907286252063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A160351 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A160356.P255792907286252063

/-! ## A160356.P1095770619879844000

`A005132(n+1)+A001057(A209386(n))`
-/

namespace A160356.P1095770619879844000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (n + 1) + A001057 (A209386 n).toNat

end

end A160356.P1095770619879844000

/-! ## A160356.P5636118205281986161

`Δ[A066202(∑[n+1])]`
-/

namespace A160356.P5636118205281986161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066202 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160356.P5636118205281986161

/-! ## A160356.P11899027014862768554

`Δ[A066201(∑[n+2])]`
-/

namespace A160356.P11899027014862768554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066201 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A160356.P11899027014862768554

/-!
# A160357: Sign of first differences of Recamán's sequence A005132.

The programs for A160357, there is no canonical definition to state claims against.
-/

/-! ## A160357.P274887609550778006

`or(1, Δ[A063733(n)])%2`
-/

namespace A160357.P274887609550778006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 1 (f1 (n + 1) - f1 n)) 2

end

end A160357.P274887609550778006

/-! ## A160357.P13108187560477860958

`1-2*char[A057166(n+1)]`
-/

namespace A160357.P13108187560477860958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057166 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ)

end

end A160357.P13108187560477860958

/-! ## A160357.P721467331920814247

`2*char[A057165(n+1)]-1`
-/

namespace A160357.P721467331920814247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057165 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 1

end

end A160357.P721467331920814247

/-! ## A160357.P3307940938977027211

`(A078759(n+1)+Δ[A063733(n)])%2`
-/

namespace A160357.P3307940938977027211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078759 (n + 1) + (f1 (n + 1) - f1 n)) 2

end

end A160357.P3307940938977027211

/-! ## A160357.P16342357652630432089

`A028310(n)/A160356(A028310(n))`
-/

namespace A160357.P16342357652630432089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A160356 (A028310 n).toNat : ℚ)

end

end A160357.P16342357652630432089

/-! ## A160357.P15139374662244049728

`A316665(1-Δ[A063733(n)]+n)-2`
-/

namespace A160357.P15139374662244049728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (1 - (f1 (n + 1) - f1 n) + (n : ℤ)).toNat - 2

end

end A160357.P15139374662244049728

/-! ## A160357.P18121000898173523981

`(A156274(n+1)+Δ[A202018(A063733(n))])%2`
-/

namespace A160357.P18121000898173523981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (A063733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156274 (n + 1) + (f1 (n + 1) - f1 n)) 2

end

end A160357.P18121000898173523981

/-!
# A160358: Indices of primes in A133547, i.e., numbers n such that the sum of the squares of the first n odd primes is prime.

The programs for A160358, there is no canonical definition to state claims against.
-/

/-! ## A160358.P1063692375977945838

`2*A370633(n+1)+1`
-/

namespace A160358.P1063692375977945838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A370633 (n + 1) + 1

end

end A160358.P1063692375977945838

/-! ## A160358.P9069232528375580539

`A103991(A370633(n+1))`
-/

namespace A160358.P9069232528375580539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103991 (A370633 (n + 1)).toNat

end

end A160358.P9069232528375580539

/-! ## A160358.P12831694386053081070

`A004442(2*A370633(n+1))`
-/

namespace A160358.P12831694386053081070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A370633 (n + 1)).toNat

end

end A160358.P12831694386053081070

/-! ## A160358.P14358794826102122156

`A371092(4*A370633(n+1))`
-/

namespace A160358.P14358794826102122156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371092 (4 * A370633 (n + 1)).toNat

end

end A160358.P14358794826102122156

/-!
# A160359: Primes that are partial sums of squares of the odd primes.

The programs for A160359, there is no canonical definition to state claims against.
-/

/-! ## A160359.P18105167109960801988

`A380319(A370633(n+1))`
-/

namespace A160359.P18105167109960801988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380319 (A370633 (n + 1)).toNat

end

end A160359.P18105167109960801988

/-! ## A160359.P7413623772957018288

`p?[∑[p?[Δ[n²]]²]]`
-/

namespace A160359.P7413623772957018288
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A160359.P7413623772957018288

/-!
# A160360: Numbers n such that 3*n^n+2 is prime.

The programs for A160360, there is no canonical definition to state claims against.
-/

/-! ## A160360.P6008844293024584686

`(A235884(2*n+5)+n+2)%A000142(n)+n`
-/

namespace A160360.P6008844293024584686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235884 (2 * n + 5) + (n + 2 : ℤ)) (A000142 n) + (n : ℤ)

end

end A160360.P6008844293024584686

/-! ## A160360.P3992666174959123553

`A348615(A054705(2*n+1))+A206914(n)`
-/

namespace A160360.P3992666174959123553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348615 (A054705 (2 * n + 1)).toNat + A206914 n

end

end A160360.P3992666174959123553

/-! ## A160360.P15097105747697407550

`A348615(A342098(2*n+1))+A206914(n)`
-/

namespace A160360.P15097105747697407550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348615 (A342098 (2 * n + 1)).toNat + A206914 n

end

end A160360.P15097105747697407550

/-!
# A160364: Let f be defined as in A159885 and f^k be the k-th iteration of f. Then a(n) is the least k for which either {A000120(f^k(2n+1)) < A000120(2n+1)}&{A006694((f^k(2n+1)-1)/2)<=A006694(n)} or {A000120(f^k(2n+1))<=A000120(2n+1)}&{A006694((f^k(2n+1)-1)/2) < A006694(n)}.

The programs for A160364, there is no canonical definition to state claims against.
-/

/-! ## A160364.P5516114755746580186

`A036037(A166654(n+1)+A166644(n+1))`
-/

namespace A160364.P5516114755746580186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036037 (A166654 (n + 1) + A166644 (n + 1)).toNat

end

end A160364.P5516114755746580186

/-! ## A160364.P9614567798418158067

`A372471(A046523(n+1)*A372471(3*n+2))`
-/

namespace A160364.P9614567798418158067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372471 (A046523 (n + 1) * A372471 (3 * n + 2)).toNat

end

end A160364.P9614567798418158067

/-! ## A160364.P7761983155553869957

`gcd(A000404(A083318(n)), A243681(n))`
-/

namespace A160364.P7761983155553869957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000404 (A083318 n).toNat) (A243681 n)

end

end A160364.P7761983155553869957

/-! ## A160364.P12617588352791131477

`gcd(A046063(A061350(n+2)), A246370(n+1))`
-/

namespace A160364.P12617588352791131477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046063 (A061350 (n + 2)).toNat) (A246370 (n + 1))

end

end A160364.P12617588352791131477

/-! ## A160364.P16631760225007521534

`gcd(record[A224360(n+1)], A224361(n+3))`
-/

namespace A160364.P16631760225007521534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224360 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A224361 (n + 3))

end

end A160364.P16631760225007521534

/-!
# A160367: Number of idempotent self-orthogonal Latin squares of order n.

The programs for A160367, there is no canonical definition to state claims against.
-/

/-! ## A160367.P3479054761465741396

`A160368(n+1)/∏[n+1]`
-/

namespace A160367.P3479054761465741396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160368 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A160367.P3479054761465741396

/-! ## A160367.P2332242968938799465

`floor(A160368(n+1)/A000142(n+1))`
-/

namespace A160367.P2332242968938799465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160368 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)⌋

end

end A160367.P2332242968938799465

/-! ## A160367.P10174491629152193931

`A325146(A000032(n+2)-char[∏{p}[n, #]-1])`
-/

namespace A160367.P10174491629152193931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325146 (A000032 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A160367.P10174491629152193931

/-!
# A160368: Number of self-orthogonal Latin squares of order n.

The programs for A160368, there is no canonical definition to state claims against.
-/

/-! ## A160368.P16095556092573528365

`(n+1)!*A160367(n+1)`
-/

namespace A160368.P16095556092573528365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A160367 (n + 1)

end

end A160368.P16095556092573528365

/-! ## A160368.P2445862253284883740

`record[A047920(n)]*A160367(n+1)`
-/

namespace A160368.P2445862253284883740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A160367 (n + 1)

end

end A160368.P2445862253284883740

/-! ## A160368.P13139439939013674377

`record[A233543(n)]*A160367(n+1)`
-/

namespace A160368.P13139439939013674377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A160367 (n + 1)

end

end A160368.P13139439939013674377

/-! ## A160368.P9078029222586408637

`∏[A000027(n+1)]*A160367(n+1)`
-/

namespace A160368.P9078029222586408637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A160367 (n + 1)

end

end A160368.P9078029222586408637

/-! ## A160368.P10012549977754467525

`∏[A299702(n+1)]*A160367(n+1)`
-/

namespace A160368.P10012549977754467525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A160367 (n + 1)

end

end A160368.P10012549977754467525

/-!
# A160370: Smaller member p of a pair (p,p+6) of consecutive primes in different centuries.

The programs for A160370, the canonical program `A160370.P9712212650284585240` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160370 has offset 1).

The definition of A160370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1006 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160370.P9712212650284585240

`∩[A244778(n+1), A288022(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A160370

/-- `∩[A244778(n+1), A288022(n+1)]` -/
def P9712212650284585240.Spec : Prop :=
  ∀ n, (P9712212650284585240.a n : ℤ) = A160370 (n + 1)

theorem P9712212650284585240.correct : P9712212650284585240.Spec := by
  intro n
  simp only [A160370, Nat.add_sub_cancel]

end A160370

/-! ## A160370.P7516883780559420037

`∩[A031924(n+1), A244778(n+1)]`
-/

namespace A160370.P7516883780559420037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160370.P7516883780559420037

namespace A160370

/-- `∩[A031924(n+1), A244778(n+1)]` -/
def P7516883780559420037.Spec : Prop :=
  ∀ n, (P7516883780559420037.a n : ℤ) = A160370 (n + 1)

end A160370

/-! ## A160370.P3012939299473715286

`∩[A288022(n+1), A017377(A017377(n))-2]`
-/

namespace A160370.P3012939299473715286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 (A017377 n).toNat - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160370.P3012939299473715286

namespace A160370

/-- `∩[A288022(n+1), A017377(A017377(n))-2]` -/
def P3012939299473715286.Spec : Prop :=
  ∀ n, (P3012939299473715286.a n : ℤ) = A160370 (n + 1)

end A160370

/-! ## A160370.P9664082065587583718

`∩[A016873(A017377(2*n+1)), A288022(n+2)]`
-/

namespace A160370.P9664082065587583718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (A017377 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288022 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160370.P9664082065587583718

namespace A160370

/-- `∩[A016873(A017377(2*n+1)), A288022(n+2)]` -/
def P9664082065587583718.Spec : Prop :=
  ∀ n, (P9664082065587583718.a n : ℤ) = A160370 (n + 1)

end A160370

/-!
# A160371: The minimum size of a poset having n linear extensions.

The programs for A160371, there is no canonical definition to state claims against.
-/

/-! ## A160371.P17116135048678015608

`A235224(∑{d}[n+1, #]*A302029(n+1))`
-/

namespace A160371.P17116135048678015608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A302029 (n + 1)).toNat

end

end A160371.P17116135048678015608

/-! ## A160371.P17771110804872303385

`A235224(A000201(n+1)*A302029(n+1))`
-/

namespace A160371.P17771110804872303385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A000201 (n + 1) * A302029 (n + 1)).toNat

end

end A160371.P17771110804872303385

/-! ## A160371.P164564087389031436

`A235224(A005187(n)*A028326(4*n+1))`
-/

namespace A160371.P164564087389031436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (A005187 n * A028326 (4 * n + 1)).toNat

end

end A160371.P164564087389031436

/-! ## A160371.P16255875871479859433

`A060130(abs(A101095(n+1)-A187829(n+1)))`
-/

namespace A160371.P16255875871479859433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 |A101095 (n + 1) - A187829 (n + 1)|.toNat

end

end A160371.P16255875871479859433

/-! ## A160371.P651535861769806189

`A060130(record[A101095(n+1)-A187829(n+1)])`
-/

namespace A160371.P651535861769806189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (n + 1) - A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A160371.P651535861769806189

/-!
# A160372: The 4-tuple (2, ((2*n+1)^2-1)/2, ((2*n+3)^2-1)/2, a(n)), where a(n) = 4*(3 + 20n + 42n^2 + 32n^3 + 8n^4), has Diophantus's property that the product of any two distinct terms plus one is a square.

The programs for A160372, the canonical program `A160372.P17898984639980457766` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160372 has offset 1).

The definition of A160372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(3+20*(n+1)+42*(n+1)²+32*(n+1)^3+8*(n+1)^4)` (program `A160372.P17898984639980457766`, by `A160372.P17898984639980457766.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A160372.P4114379427054570148

`4*(2*(n+1)+1)*(2*(n+1)+3)*(2*(n+1)²+4*(n+1)+1)`
-/

namespace A160372.P4114379427054570148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (2 * (n + 1) + 1) * (2 * (n + 1) + 3) * (2 * (n + 1) ^ 2 + 4 * (n + 1) + 1)

end

end A160372.P4114379427054570148

namespace A160372

/-- `4*(2*(n+1)+1)*(2*(n+1)+3)*(2*(n+1)²+4*(n+1)+1)` -/
def P4114379427054570148.Spec : Prop :=
  ∀ n, (P4114379427054570148.a n : ℤ) = A160372 (n + 1)

theorem P4114379427054570148.correct : P4114379427054570148.Spec := by
  intro n
  simp only [A160372, Nat.add_sub_cancel, A160372.P4114379427054570148.a, A160372.P17898984639980457766.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A160372

/-! ## A160372.P17898984639980457766

`4*(3+20*(n+1)+42*(n+1)²+32*(n+1)^3+8*(n+1)^4)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160372

/-- `4*(3+20*(n+1)+42*(n+1)²+32*(n+1)^3+8*(n+1)^4)` -/
def P17898984639980457766.Spec : Prop :=
  ∀ n, (P17898984639980457766.a n : ℤ) = A160372 (n + 1)

theorem P17898984639980457766.correct : P17898984639980457766.Spec := by
  intro n
  simp only [A160372, Nat.add_sub_cancel]

end A160372

/-! ## A160372.P4139408143579390197

`floor(A268581(2*(n+1))²/2)`
-/

namespace A160372.P4139408143579390197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A268581 (2 * (n + 1)) ^ 2 : ℚ) / 2⌋

end

end A160372.P4139408143579390197

namespace A160372

/-- `floor(A268581(2*(n+1))²/2)` -/
def P4139408143579390197.Spec : Prop :=
  ∀ n, P4139408143579390197.a n = A160372 (n + 1)

end A160372

/-! ## A160372.P3701335522874800936

`A033586(record[xor(7, n)]+2*n²)`
-/

namespace A160372.P3701335522874800936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * n ^ 2)

end

end A160372.P3701335522874800936

namespace A160372

/-- `A033586(record[xor(7, n)]+2*n²)` -/
def P3701335522874800936.Spec : Prop :=
  ∀ n, P3701335522874800936.a n = A160372 (n + 1)

end A160372

/-!
# A160377: Phi-torial of n (A001783) modulo n.

The programs for A160377, the canonical program `A160377.P1754488293739471565` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160377 has offset 1).

The definition of A160377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160377.P17531386794447134831

`n^(A034380(n+1)%2)`
-/

namespace A160377.P17531386794447134831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.tmod (A034380 (n + 1)) 2 : ℤ)

end

end A160377.P17531386794447134831

namespace A160377

/-- `n^(A034380(n+1)%2)` -/
def P17531386794447134831.Spec : Prop :=
  ∀ n, P17531386794447134831.a n = (A160377 (n + 1) : ℚ)

end A160377

/-! ## A160377.P6687950398580142775

`n^and(1, A290084(n+1))`
-/

namespace A160377.P6687950398580142775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.land 1 (A290084 (n + 1)) : ℤ)

end

end A160377.P6687950398580142775

namespace A160377

/-- `n^and(1, A290084(n+1))` -/
def P6687950398580142775.Spec : Prop :=
  ∀ n, P6687950398580142775.a n = (A160377 (n + 1) : ℚ)

end A160377

/-! ## A160377.P8411183196204814942

`C(n, C(A070667(n+1), n))`
-/

namespace A160377.P8411183196204814942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A070667 (n + 1)).toNat n)

end

end A160377.P8411183196204814942

namespace A160377

/-- `C(n, C(A070667(n+1), n))` -/
def P8411183196204814942.Spec : Prop :=
  ∀ n, (P8411183196204814942.a n : ℤ) = A160377 (n + 1)

end A160377

/-! ## A160377.P12627841422594104398

`n^A060582(A060594(n+1))`
-/

namespace A160377.P12627841422594104398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A060582 (A060594 (n + 1)).toNat : ℤ)

end

end A160377.P12627841422594104398

namespace A160377

/-- `n^A060582(A060594(n+1))` -/
def P12627841422594104398.Spec : Prop :=
  ∀ n, P12627841422594104398.a n = (A160377 (n + 1) : ℚ)

end A160377

/-! ## A160377.P3123087101662558235

`n^A277929(A157230(n+1))`
-/

namespace A160377.P3123087101662558235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A277929 (A157230 (n + 1)).toNat : ℤ)

end

end A160377.P3123087101662558235

namespace A160377

/-- `n^A277929(A157230(n+1))` -/
def P3123087101662558235.Spec : Prop :=
  ∀ n, P3123087101662558235.a n = (A160377 (n + 1) : ℚ)

end A160377

/-! ## A160377.P15205057802591005074

`gcd(n, A290101(A290084(n+1)))`
-/

namespace A160377.P15205057802591005074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A290101 (A290084 (n + 1)).toNat)

end

end A160377.P15205057802591005074

namespace A160377

/-- `gcd(n, A290101(A290084(n+1)))` -/
def P15205057802591005074.Spec : Prop :=
  ∀ n, (P15205057802591005074.a n : ℤ) = A160377 (n + 1)

end A160377

/-! ## A160377.P4639559939833659633

`n^A114643(A060594(n+1)²)`
-/

namespace A160377.P4639559939833659633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A114643 (A060594 (n + 1) ^ 2).toNat : ℤ)

end

end A160377.P4639559939833659633

namespace A160377

/-- `n^A114643(A060594(n+1)²)` -/
def P4639559939833659633.Spec : Prop :=
  ∀ n, P4639559939833659633.a n = (A160377 (n + 1) : ℚ)

end A160377

/-! ## A160377.P6860987199149534749

`n^A008683(A319100(n+1))²`
-/

namespace A160377.P6860987199149534749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A008683 (A319100 (n + 1)).toNat ^ 2 : ℤ)

end

end A160377.P6860987199149534749

namespace A160377

/-- `n^A008683(A319100(n+1))²` -/
def P6860987199149534749.Spec : Prop :=
  ∀ n, P6860987199149534749.a n = (A160377 (n + 1) : ℚ)

end A160377

/-! ## A160377.P13244995593682722984

`n^A114643(A060594(n+1)+2)`
-/

namespace A160377.P13244995593682722984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A114643 (A060594 (n + 1) + 2).toNat : ℤ)

end

end A160377.P13244995593682722984

namespace A160377

/-- `n^A114643(A060594(n+1)+2)` -/
def P13244995593682722984.Spec : Prop :=
  ∀ n, P13244995593682722984.a n = (A160377 (n + 1) : ℚ)

end A160377

/-! ## A160377.P15387715114347376173

`C(n, C(A002322(n+1), A000010(n+1)))`
-/

namespace A160377.P15387715114347376173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A002322 (n + 1)).toNat (A000010 (n + 1)).toNat)

end

end A160377.P15387715114347376173

namespace A160377

/-- `C(n, C(A002322(n+1), A000010(n+1)))` -/
def P15387715114347376173.Spec : Prop :=
  ∀ n, (P15387715114347376173.a n : ℤ) = A160377 (n + 1)

end A160377

/-! ## A160377.P13282733636076424090

`C(n, C(A289624(n+1), A000010(n+1)))`
-/

namespace A160377.P13282733636076424090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A289624 (n + 1)).toNat (A000010 (n + 1)).toNat)

end

end A160377.P13282733636076424090

namespace A160377

/-- `C(n, C(A289624(n+1), A000010(n+1)))` -/
def P13282733636076424090.Spec : Prop :=
  ∀ n, (P13282733636076424090.a n : ℤ) = A160377 (n + 1)

end A160377

/-! ## A160377.P18417463888116519082

`C(n, C(A046072(n+1), A046072(n+1)²))`
-/

namespace A160377.P18417463888116519082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A046072 (n + 1)).toNat (A046072 (n + 1) ^ 2).toNat)

end

end A160377.P18417463888116519082

namespace A160377

/-- `C(n, C(A046072(n+1), A046072(n+1)²))` -/
def P18417463888116519082.Spec : Prop :=
  ∀ n, (P18417463888116519082.a n : ℤ) = A160377 (n + 1)

end A160377

/-! ## A160377.P1754488293739471565

`C(n, C(A072273(n+1), A072273(n+1)²))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A160377

/-- `C(n, C(A072273(n+1), A072273(n+1)²))` -/
def P1754488293739471565.Spec : Prop :=
  ∀ n, (P1754488293739471565.a n : ℤ) = A160377 (n + 1)

theorem P1754488293739471565.correct : P1754488293739471565.Spec := by
  intro n
  simp only [A160377, Nat.add_sub_cancel]

end A160377

/-! ## A160377.P6412381840891825277

`n^A008683(A319100(n+1))^A016957(n)`
-/

namespace A160377.P6412381840891825277
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((A008683 (A319100 (n + 1)).toNat : ℚ) ^ (A016957 n : ℤ) : ℝ)

end

end A160377.P6412381840891825277

namespace A160377

/-- `n^A008683(A319100(n+1))^A016957(n)` -/
def P6412381840891825277.Spec : Prop :=
  ∀ n, P6412381840891825277.a n = (A160377 (n + 1) : ℝ)

end A160377

/-! ## A160377.P1440739356729493593

`n^A008683(A319100(n+1))^(A109606(n+1)+1)`
-/

namespace A160377.P1440739356729493593
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((A008683 (A319100 (n + 1)).toNat : ℚ) ^ (A109606 (n + 1) + 1 : ℤ) : ℝ)

end

end A160377.P1440739356729493593

namespace A160377

/-- `n^A008683(A319100(n+1))^(A109606(n+1)+1)` -/
def P1440739356729493593.Spec : Prop :=
  ∀ n, P1440739356729493593.a n = (A160377 (n + 1) : ℝ)

end A160377

/-! ## A160377.P13670570928817188338

`A318909(n+1)%(n+1)`
-/

namespace A160377.P13670570928817188338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318909 (n + 1)) (n + 1 : ℤ)

end

end A160377.P13670570928817188338

namespace A160377

/-- `A318909(n+1)%(n+1)` -/
def P13670570928817188338.Spec : Prop :=
  ∀ n, P13670570928817188338.a n = A160377 (n + 1)

end A160377

/-!
# A160378: a(n) = n^3 - n*(n+1)/2.

The programs for A160378, the canonical program `A160378.P10733098556939573286` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160378 has offset 0).

The definition of A160378 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160378.P10733098556939573286

`n^3-C(n+1, 2)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160378

/-- `n^3-C(n+1, 2)` -/
def P10733098556939573286.Spec : Prop :=
  ∀ n, P10733098556939573286.a n = A160378 n

theorem P10733098556939573286.correct : P10733098556939573286.Spec := by
  intro n
  simp only [A160378]

end A160378

/-! ## A160378.P8164773854769382895

`n^3-n*(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160378.P8164773854769382895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℚ) - (n * (n + 1) : ℚ) / 2

end

end A160378.P8164773854769382895

namespace A160378

/-- `n^3-n*(n+1)/2` -/
def P8164773854769382895.Spec : Prop :=
  ∀ n, P8164773854769382895.a n = (A160378 n : ℚ)

end A160378

/-! ## A160378.P5792427710406766207

`C(n, 2)*Δ[n²]`
-/

namespace A160378.P5792427710406766207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A160378.P5792427710406766207

namespace A160378

/-- `C(n, 2)*Δ[n²]` -/
def P5792427710406766207.Spec : Prop :=
  ∀ n, P5792427710406766207.a n = A160378 n

end A160378

/-! ## A160378.P15363515234826344185

`(2*n+1)*C(n, 2)`
-/

namespace A160378.P15363515234826344185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.choose n 2

end

end A160378.P15363515234826344185

namespace A160378

/-- `(2*n+1)*C(n, 2)` -/
def P15363515234826344185.Spec : Prop :=
  ∀ n, (P15363515234826344185.a n : ℤ) = A160378 n

end A160378

/-! ## A160378.P8373835179621028124

`(∑[n]-n)*or(1, 2*n)`
-/

namespace A160378.P8373835179621028124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * (Nat.lor 1 (2 * n) : ℤ)

end

end A160378.P8373835179621028124

namespace A160378

/-- `(∑[n]-n)*or(1, 2*n)` -/
def P8373835179621028124.Spec : Prop :=
  ∀ n, P8373835179621028124.a n = A160378 n

end A160378

/-! ## A160378.P10648022412580544432

`(∑[n]-n)*xor(1, 2*n)`
-/

namespace A160378.P10648022412580544432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * (Nat.xor 1 (2 * n) : ℤ)

end

end A160378.P10648022412580544432

namespace A160378

/-- `(∑[n]-n)*xor(1, 2*n)` -/
def P10648022412580544432.Spec : Prop :=
  ∀ n, P10648022412580544432.a n = A160378 n

end A160378

/-! ## A160378.P4414819247378361108

`∑[∑[a(n-1)+6]]` with `a(0)=0, a(1)=0, a(2)=5`
-/

namespace A160378.P4414819247378361108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 5] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160378.P4414819247378361108

namespace A160378

/-- `∑[∑[a(n-1)+6]]` -/
def P4414819247378361108.Spec : Prop :=
  ∀ n, (P4414819247378361108.a n : ℤ) = A160378 n

end A160378

/-! ## A160378.P4384810672019449176

`(C(2*n, 2)-1)*n/2`
-/

namespace A160378.P4384810672019449176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) 2 : ℤ) - 1 : ℚ) * ((n : ℚ) / 2)

end

end A160378.P4384810672019449176

namespace A160378

/-- `(C(2*n, 2)-1)*n/2` -/
def P4384810672019449176.Spec : Prop :=
  ∀ n, P4384810672019449176.a n = (A160378 n : ℚ)

end A160378

/-! ## A160378.P3849382979213822886

`(n-1)/2*lcm(n, Δ[n²])`
-/

namespace A160378.P3849382979213822886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / 2 * (Int.lcm (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ)

end

end A160378.P3849382979213822886

namespace A160378

/-- `(n-1)/2*lcm(n, Δ[n²])` -/
def P3849382979213822886.Spec : Prop :=
  ∀ n, P3849382979213822886.a n = (A160378 n : ℚ)

end A160378

/-! ## A160378.P8238636209732918483

`lcm(2*n+1, n*n²-∑[n])`
-/

namespace A160378.P8238636209732918483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) ((n * n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A160378.P8238636209732918483

namespace A160378

/-- `lcm(2*n+1, n*n²-∑[n])` -/
def P8238636209732918483.Spec : Prop :=
  ∀ n, (P8238636209732918483.a n : ℤ) = A160378 n

end A160378

/-! ## A160378.P1687364475090149609

`lcm(2, (2*n+1)*(n²-n))/2`
-/

namespace A160378.P1687364475090149609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((2 * n + 1 : ℤ) * ((n ^ 2 : ℤ) - (n : ℤ))) : ℚ) / 2

end

end A160378.P1687364475090149609

namespace A160378

/-- `lcm(2, (2*n+1)*(n²-n))/2` -/
def P1687364475090149609.Spec : Prop :=
  ∀ n, P1687364475090149609.a n = (A160378 n : ℚ)

end A160378

/-! ## A160378.P11660229177076217994

`(2*n+1)*∑[(n-1)%(n+1)]`
-/

namespace A160378.P11660229177076217994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160378.P11660229177076217994

namespace A160378

/-- `(2*n+1)*∑[(n-1)%(n+1)]` -/
def P11660229177076217994.Spec : Prop :=
  ∀ n, P11660229177076217994.a n = A160378 n

end A160378

/-! ## A160378.P14249558570414342621

`(2*n+1)*(∑[gcd(n, 2*n)]-n)`
-/

namespace A160378.P14249558570414342621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))

end

end A160378.P14249558570414342621

namespace A160378

/-- `(2*n+1)*(∑[gcd(n, 2*n)]-n)` -/
def P14249558570414342621.Spec : Prop :=
  ∀ n, P14249558570414342621.a n = A160378 n

end A160378

/-! ## A160378.P7833484999891741289

`(2*n+1)*((n-1)^3-a(n-1))` with `a(0)=0`
-/

namespace A160378.P7833484999891741289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n + 1 : ℤ) * (((n : ℤ) - 1) ^ 3 - a (n - 1))

end

end A160378.P7833484999891741289

namespace A160378

/-- `(2*n+1)*((n-1)^3-a(n-1))` -/
def P7833484999891741289.Spec : Prop :=
  ∀ n, P7833484999891741289.a n = A160378 n

end A160378

/-! ## A160378.P3055986909847286230

`(2*n+1)*(∑[n-1]+and(1, 2*n+1))`
-/

namespace A160378.P3055986909847286230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j + (Nat.land 1 (2 * n + 1) : ℤ))

end

end A160378.P3055986909847286230

namespace A160378

/-- `(2*n+1)*(∑[n-1]+and(1, 2*n+1))` -/
def P3055986909847286230.Spec : Prop :=
  ∀ n, P3055986909847286230.a n = A160378 n

end A160378

/-! ## A160378.P7453562112110245793

`floor(a(n-1)+(2*n+n-1)*(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A160378.P7453562112110245793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((2 * n : ℤ) + ((n : ℤ) - 1)) * ((n : ℤ) - 1)

end

end A160378.P7453562112110245793

namespace A160378

/-- `floor(a(n-1)+(2*n+n-1)*(n-1))` -/
def P7453562112110245793.Spec : Prop :=
  ∀ n, P7453562112110245793.a n = A160378 n

end A160378

/-! ## A160378.P7480193133053356587

`(A015237(n)-n)/2`
-/

namespace A160378.P7480193133053356587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015237 n - (n : ℤ) : ℚ) / 2

end

end A160378.P7480193133053356587

namespace A160378

/-- `(A015237(n)-n)/2` -/
def P7480193133053356587.Spec : Prop :=
  ∀ n, P7480193133053356587.a n = (A160378 n : ℚ)

end A160378

/-! ## A160378.P12960234218935005626

`Δ[n²]*A161680(n)`
-/

namespace A160378.P12960234218935005626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A161680 n

end

end A160378.P12960234218935005626

namespace A160378

/-- `Δ[n²]*A161680(n)` -/
def P12960234218935005626.Spec : Prop :=
  ∀ n, P12960234218935005626.a n = A160378 n

end A160378

/-! ## A160378.P14594822889512468736

`∑[A187156(n+1)/4]`
-/

namespace A160378.P14594822889512468736
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187156 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160378.P14594822889512468736

namespace A160378

/-- `∑[A187156(n+1)/4]` -/
def P14594822889512468736.Spec : Prop :=
  ∀ n, P14594822889512468736.a n = (A160378 n : ℚ)

end A160378

/-!
# A160379: Number of ON cells at n-th stage of three-dimensional version of the cellular automaton A160117 using cubes.

The programs for A160379, there is no canonical definition to state claims against.
-/

/-! ## A160379.P9278709852601850151

`∑[A163989(floor(acot(n)+n))]-1`
-/

namespace A160379.P9278709852601850151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163989 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160379.P9278709852601850151

/-! ## A160379.P10619397536868243685

`A163989(floor(acot(n+1)+n))+a(n-1)` with `a(0)=0`
-/

namespace A160379.P10619397536868243685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A163989 ⌊SequenceMachineLib.acot (n + 1 : ℝ) + (n : ℝ)⌋.toNat + a (n - 1)

end

end A160379.P10619397536868243685

/-! ## A160379.P17155388836665550977

`∑[A163989(A028310(n))]-1`
-/

namespace A160379.P17155388836665550977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163989 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160379.P17155388836665550977

/-! ## A160379.P17851358711910483810

`∑[A163989(n+1)]-A163989(n+1)`
-/

namespace A160379.P17851358711910483810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A163989 (n + 1)

end

end A160379.P17851358711910483810

/-! ## A160379.P8037399887759955453

`∑[A163989(A065033(2*n))]-1`
-/

namespace A160379.P8037399887759955453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163989 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A160379.P8037399887759955453

/-!
# A160380: a(0) = 0; for n >= 1, a(n) = number of 0's in base-4 representation of n.

The programs for A160380, the canonical program `A160380.P9836000862584830959` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160380 has offset 0).

The definition of A160380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160380.P13271775195524789376

`A160383(2^ceil(log2(n+1))-(n+1))`
-/

namespace A160380.P13271775195524789376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) - (n + 1 : ℚ))).toNat

end

end A160380.P13271775195524789376

namespace A160380

/-- `A160383(2^ceil(log2(n+1))-(n+1))` -/
def P13271775195524789376.Spec : Prop :=
  ∀ n, P13271775195524789376.a n = A160380 n

end A160380

/-! ## A160380.P17402329653197791992

`A000120(A292370(n))`
-/

namespace A160380.P17402329653197791992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292370 n).toNat

end

end A160380.P17402329653197791992

namespace A160380

/-- `A000120(A292370(n))` -/
def P17402329653197791992.Spec : Prop :=
  ∀ n, P17402329653197791992.a n = A160380 n

end A160380

/-! ## A160380.P9836000862584830959

`A139352(A334076(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160380

/-- `A139352(A334076(n))` -/
def P9836000862584830959.Spec : Prop :=
  ∀ n, P9836000862584830959.a n = A160380 n

theorem P9836000862584830959.correct : P9836000862584830959.Spec := by
  intro n
  simp only [A160380]

end A160380

/-! ## A160380.P3300164805181411910

`A001222(A005940(2*A292370(n)+1))`
-/

namespace A160380.P3300164805181411910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005940 (2 * A292370 n + 1).toNat).toNat

end

end A160380.P3300164805181411910

namespace A160380

/-- `A001222(A005940(2*A292370(n)+1))` -/
def P3300164805181411910.Spec : Prop :=
  ∀ n, P3300164805181411910.a n = A160380 n

end A160380

/-! ## A160380.P9058836376355582931

`A023416(2*(A309952(n)+A292373(n))+1)`
-/

namespace A160380.P9058836376355582931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (2 * (A309952 n + A292373 n) + 1).toNat

end

end A160380.P9058836376355582931

namespace A160380

/-- `A023416(2*(A309952(n)+A292373(n))+1)` -/
def P9058836376355582931.Spec : Prop :=
  ∀ n, P9058836376355582931.a n = A160380 n

end A160380

/-! ## A160380.P8890914709032750944

`A139351(2*A334076(n))`
-/

namespace A160380.P8890914709032750944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (2 * A334076 n).toNat

end

end A160380.P8890914709032750944

namespace A160380

/-- `A139351(2*A334076(n))` -/
def P8890914709032750944.Spec : Prop :=
  ∀ n, P8890914709032750944.a n = A160380 n

end A160380

/-! ## A160380.P1498789501424640905

`A139351(A334076(n+1+n))`
-/

namespace A160380.P1498789501424640905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A334076 (n + 1 + n)).toNat

end

end A160380.P1498789501424640905

namespace A160380

/-- `A139351(A334076(n+1+n))` -/
def P1498789501424640905.Spec : Prop :=
  ∀ n, P1498789501424640905.a n = A160380 n

end A160380

/-! ## A160380.P9582647046529316745

`A160385(A003817(n))-A160385(n)`
-/

namespace A160380.P9582647046529316745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A003817 n).toNat - A160385 n

end

end A160380.P9582647046529316745

namespace A160380

/-- `A160385(A003817(n))-A160385(n)` -/
def P9582647046529316745.Spec : Prop :=
  ∀ n, P9582647046529316745.a n = A160380 n

end A160380

/-! ## A160380.P7015039044089975873

`A139351(A265716(2*n+1)-4*n)`
-/

namespace A160380.P7015039044089975873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A265716 (2 * n + 1) - (4 * n : ℤ)).toNat

end

end A160380.P7015039044089975873

namespace A160380

/-- `A139351(A265716(2*n+1)-4*n)` -/
def P7015039044089975873.Spec : Prop :=
  ∀ n, P7015039044089975873.a n = A160380 n

end A160380

/-! ## A160380.P17093880418349059319

`A055641(A007090(n))*A057427(n)`
-/

namespace A160380.P17093880418349059319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007090 n).toNat * A057427 n

end

end A160380.P17093880418349059319

namespace A160380

/-- `A055641(A007090(n))*A057427(n)` -/
def P17093880418349059319.Spec : Prop :=
  ∀ n, P17093880418349059319.a n = A160380 n

end A160380

/-! ## A160380.P12498584114379176668

`A055641(A007090(n))-A055641(A001222(n+1))`
-/

namespace A160380.P12498584114379176668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007090 n).toNat - A055641 (A001222 (n + 1)).toNat

end

end A160380.P12498584114379176668

namespace A160380

/-- `A055641(A007090(n))-A055641(A001222(n+1))` -/
def P12498584114379176668.Spec : Prop :=
  ∀ n, P12498584114379176668.a n = A160380 n

end A160380

/-!
# A160381: Number of 1's in base-4 representation of n.

The programs for A160381, the canonical program `A160381.P2350057078359442476` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160381 has offset 0).

The definition of A160381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160381.P2350057078359442476

`a(floor(n/4))+(C(n+2, 3)^2)%2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160381

/-- `a(floor(n/4))+(C(n+2, 3)^2)%2` -/
def P2350057078359442476.Spec : Prop :=
  ∀ n, (P2350057078359442476.a n : ℤ) = A160381 n

theorem P2350057078359442476.correct : P2350057078359442476.Spec := by
  intro n
  simp only [A160381]

end A160381

/-! ## A160381.P9440930993543292315

`a(floor(n/4))+and(1, C(n+2, 3)^2)` with `a(0)=0`
-/

namespace A160381.P9440930993543292315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat + Nat.land 1 (Nat.choose (n + 2) 3 ^ 2)

end

end A160381.P9440930993543292315

namespace A160381

/-- `a(floor(n/4))+and(1, C(n+2, 3)^2)` -/
def P9440930993543292315.Spec : Prop :=
  ∀ n, (P9440930993543292315.a n : ℤ) = A160381 n

theorem P9440930993543292315.correct : P9440930993543292315.Spec := by
  intro n
  simp only [A160381, Nat.add_sub_cancel, A160381.P9440930993543292315.a, A160381.P2350057078359442476.a, SequenceMachineLib.memo_apply]
  try simp

end A160381

/-! ## A160381.P7500030496518913248

`A000120(A292371(n))`
-/

namespace A160381.P7500030496518913248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292371 n).toNat

end

end A160381.P7500030496518913248

namespace A160381

/-- `A000120(A292371(n))` -/
def P7500030496518913248.Spec : Prop :=
  ∀ n, P7500030496518913248.a n = A160381 n

end A160381

/-! ## A160381.P9956443642291679945

`A139351(A292272(n))`
-/

namespace A160381.P9956443642291679945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A292272 n).toNat

end

end A160381.P9956443642291679945

namespace A160381

/-- `A139351(A292272(n))` -/
def P9956443642291679945.Spec : Prop :=
  ∀ n, P9956443642291679945.a n = A160381 n

end A160381

/-! ## A160381.P5030513183913705878

`A139351(A213064(n)/2)`
-/

namespace A160381.P5030513183913705878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.roundAway ((A213064 n : ℚ) / 2)).toNat

end

end A160381.P5030513183913705878

namespace A160381

/-- `A139351(A213064(n)/2)` -/
def P5030513183913705878.Spec : Prop :=
  ∀ n, P5030513183913705878.a n = A160381 n

end A160381

/-! ## A160381.P5770947049300296574

`A160382(n)+A065359(n)`
-/

namespace A160381.P5770947049300296574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n + A065359 n

end

end A160381.P5770947049300296574

namespace A160381

/-- `A160382(n)+A065359(n)` -/
def P5770947049300296574.Spec : Prop :=
  ∀ n, P5770947049300296574.a n = A160381 n

end A160381

/-! ## A160381.P16872428943897858303

`A139351(n-A048735(n))`
-/

namespace A160381.P16872428943897858303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 ((n : ℤ) - A048735 n).toNat

end

end A160381.P16872428943897858303

namespace A160381

/-- `A139351(n-A048735(n))` -/
def P16872428943897858303.Spec : Prop :=
  ∀ n, P16872428943897858303.a n = A160381 n

end A160381

/-! ## A160381.P17688924636727754398

`A139351(n)-A160383(n)`
-/

namespace A160381.P17688924636727754398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n - A160383 n

end

end A160381.P17688924636727754398

namespace A160381

/-- `A139351(n)-A160383(n)` -/
def P17688924636727754398.Spec : Prop :=
  ∀ n, P17688924636727754398.a n = A160381 n

end A160381

/-! ## A160381.P717866798111300313

`A160385(n)-A139352(n)`
-/

namespace A160381.P717866798111300313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n - A139352 n

end

end A160381.P717866798111300313

namespace A160381

/-- `A160385(n)-A139352(n)` -/
def P717866798111300313.Spec : Prop :=
  ∀ n, P717866798111300313.a n = A160381 n

end A160381

/-! ## A160381.P4486967887084492720

`A139351(and(n, A003188(n)))`
-/

namespace A160381.P4486967887084492720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (Int.land (n : ℤ) (A003188 n)).toNat

end

end A160381.P4486967887084492720

namespace A160381

/-- `A139351(and(n, A003188(n)))` -/
def P4486967887084492720.Spec : Prop :=
  ∀ n, P4486967887084492720.a n = A160381 n

end A160381

/-! ## A160381.P1803122962525818538

`∑{digits}[A007284(n), A025435(#)]`
-/

namespace A160381.P1803122962525818538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025435 x).sum

end

end A160381.P1803122962525818538

namespace A160381

/-- `∑{digits}[A007284(n), A025435(#)]` -/
def P1803122962525818538.Spec : Prop :=
  ∀ n, P1803122962525818538.a n = A160381 n

end A160381

/-! ## A160381.P3240056878631933050

`A274009(2*A292371(n)+1)`
-/

namespace A160381.P3240056878631933050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (2 * A292371 n + 1).toNat

end

end A160381.P3240056878631933050

namespace A160381

/-- `A274009(2*A292371(n)+1)` -/
def P3240056878631933050.Spec : Prop :=
  ∀ n, P3240056878631933050.a n = A160381 n

end A160381

/-! ## A160381.P4993364629297589597

`A274009(2*A292371(n))-1`
-/

namespace A160381.P4993364629297589597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (2 * A292371 n).toNat - 1

end

end A160381.P4993364629297589597

namespace A160381

/-- `A274009(2*A292371(n))-1` -/
def P4993364629297589597.Spec : Prop :=
  ∀ n, P4993364629297589597.a n = A160381 n

end A160381

/-! ## A160381.P3557689086314133853

`A000120(A059905(n-A048735(n)))`
-/

namespace A160381.P3557689086314133853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A059905 ((n : ℤ) - A048735 n).toNat).toNat

end

end A160381.P3557689086314133853

namespace A160381

/-- `A000120(A059905(n-A048735(n)))` -/
def P3557689086314133853.Spec : Prop :=
  ∀ n, P3557689086314133853.a n = A160381 n

end A160381

/-! ## A160381.P3264933963960620487

`A160385(n)-A000120(A059906(n))`
-/

namespace A160381.P3264933963960620487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n - A000120 (A059906 n).toNat

end

end A160381.P3264933963960620487

namespace A160381

/-- `A160385(n)-A000120(A059906(n))` -/
def P3264933963960620487.Spec : Prop :=
  ∀ n, P3264933963960620487.a n = A160381 n

end A160381

/-! ## A160381.P3148914065754869673

`A000120(A059905(n)-A292373(n))`
-/

namespace A160381.P3148914065754869673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A059905 n - A292373 n).toNat

end

end A160381.P3148914065754869673

namespace A160381

/-- `A000120(A059905(n)-A292373(n))` -/
def P3148914065754869673.Spec : Prop :=
  ∀ n, P3148914065754869673.a n = A160381 n

end A160381

/-! ## A160381.P13983297928640874132

`A000120(A309952(n))-A160382(n)`
-/

namespace A160381.P13983297928640874132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A309952 n).toNat - A160382 n

end

end A160381.P13983297928640874132

namespace A160381

/-- `A000120(A309952(n))-A160382(n)` -/
def P13983297928640874132.Spec : Prop :=
  ∀ n, P13983297928640874132.a n = A160381 n

end A160381

/-! ## A160381.P2804487370079586363

`A000120(A309952(n)-A292372(n))`
-/

namespace A160381.P2804487370079586363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A309952 n - A292372 n).toNat

end

end A160381.P2804487370079586363

namespace A160381

/-- `A000120(A309952(n)-A292372(n))` -/
def P2804487370079586363.Spec : Prop :=
  ∀ n, P2804487370079586363.a n = A160381 n

end A160381

/-! ## A160381.P17045358801016475639

`A000120(xor(A292372(n), A309952(n)))`
-/

namespace A160381.P17045358801016475639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A292372 n) (A309952 n)).toNat

end

end A160381.P17045358801016475639

namespace A160381

/-- `A000120(xor(A292372(n), A309952(n)))` -/
def P17045358801016475639.Spec : Prop :=
  ∀ n, P17045358801016475639.a n = A160381 n

end A160381

/-! ## A160381.P1479248630319794643

`A000120(A292372(A292272(2*n)))`
-/

namespace A160381.P1479248630319794643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292372 (A292272 (2 * n)).toNat).toNat

end

end A160381.P1479248630319794643

namespace A160381

/-- `A000120(A292372(A292272(2*n)))` -/
def P1479248630319794643.Spec : Prop :=
  ∀ n, P1479248630319794643.a n = A160381 n

end A160381

/-!
# A160382: Number of 2's in base-4 representation of n.

The programs for A160382, the canonical program `A160382.P9589961601338406698` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160382 has offset 0).

The definition of A160382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160382.P6493162076729160647

`a(floor(n/4))+and(4, n²)/4` with `a(0)=0`
-/

namespace A160382.P6493162076729160647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 4⌋.toNat + (Nat.land 4 (n ^ 2) : ℚ) / 4

end

end A160382.P6493162076729160647

namespace A160382

/-- `a(floor(n/4))+and(4, n²)/4` -/
def P6493162076729160647.Spec : Prop :=
  ∀ n, P6493162076729160647.a n = (A160382 n : ℚ)

end A160382

/-! ## A160382.P14602634577591037167

`val(A338854(n), 2)`
-/

namespace A160382.P14602634577591037167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A338854 n).toNat 2

end

end A160382.P14602634577591037167

namespace A160382

/-- `val(A338854(n), 2)` -/
def P14602634577591037167.Spec : Prop :=
  ∀ n, (P14602634577591037167.a n : ℤ) = A160382 n

end A160382

/-! ## A160382.P10225256388486052099

`val(A268444(n), 3)`
-/

namespace A160382.P10225256388486052099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A268444 n).toNat 3

end

end A160382.P10225256388486052099

namespace A160382

/-- `val(A268444(n), 3)` -/
def P10225256388486052099.Spec : Prop :=
  ∀ n, (P10225256388486052099.a n : ℤ) = A160382 n

end A160382

/-! ## A160382.P15193068172324389875

`A007949(A268444(n))`
-/

namespace A160382.P15193068172324389875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A268444 n).toNat

end

end A160382.P15193068172324389875

namespace A160382

/-- `A007949(A268444(n))` -/
def P15193068172324389875.Spec : Prop :=
  ∀ n, P15193068172324389875.a n = A160382 n

end A160382

/-! ## A160382.P8583717718768017320

`A000120(A292372(n))`
-/

namespace A160382.P8583717718768017320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292372 n).toNat

end

end A160382.P8583717718768017320

namespace A160382

/-- `A000120(A292372(n))` -/
def P8583717718768017320.Spec : Prop :=
  ∀ n, P8583717718768017320.a n = A160382 n

end A160382

/-! ## A160382.P6580718620765128030

`A007814(A338854(n))`
-/

namespace A160382.P6580718620765128030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A338854 n).toNat

end

end A160382.P6580718620765128030

namespace A160382

/-- `A007814(A338854(n))` -/
def P6580718620765128030.Spec : Prop :=
  ∀ n, P6580718620765128030.a n = A160382 n

end A160382

/-! ## A160382.P17235845095776161346

`A139351(A229762(n))`
-/

namespace A160382.P17235845095776161346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A229762 n).toNat

end

end A160382.P17235845095776161346

namespace A160382

/-- `A139351(A229762(n))` -/
def P17235845095776161346.Spec : Prop :=
  ∀ n, P17235845095776161346.a n = A160382 n

end A160382

/-! ## A160382.P9068890258576792353

`A139352(A229763(n))`
-/

namespace A160382.P9068890258576792353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A229763 n).toNat

end

end A160382.P9068890258576792353

namespace A160382

/-- `A139352(A229763(n))` -/
def P9068890258576792353.Spec : Prop :=
  ∀ n, P9068890258576792353.a n = A160382 n

end A160382

/-! ## A160382.P9589961601338406698

`A160381(A003817(n)-n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A160382

/-- `A160381(A003817(n)-n)` -/
def P9589961601338406698.Spec : Prop :=
  ∀ n, P9589961601338406698.a n = A160382 n

theorem P9589961601338406698.correct : P9589961601338406698.Spec := by
  intro n
  simp only [A160382]

end A160382

/-! ## A160382.P10408841575450276383

`A160381(n-A006257(n))`
-/

namespace A160382.P10408841575450276383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 ((n : ℤ) - A006257 n).toNat

end

end A160382.P10408841575450276383

namespace A160382

/-- `A160381(n-A006257(n))` -/
def P10408841575450276383.Spec : Prop :=
  ∀ n, P10408841575450276383.a n = A160382 n

end A160382

/-! ## A160382.P5389217081519264922

`A160381(n)-A065359(n)`
-/

namespace A160382.P5389217081519264922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n - A065359 n

end

end A160382.P5389217081519264922

namespace A160382

/-- `A160381(n)-A065359(n)` -/
def P5389217081519264922.Spec : Prop :=
  ∀ n, P5389217081519264922.a n = A160382 n

end A160382

/-! ## A160382.P12208725893794928089

`A139352(n)-A160383(n)`
-/

namespace A160382.P12208725893794928089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n - A160383 n

end

end A160382.P12208725893794928089

namespace A160382

/-- `A139352(n)-A160383(n)` -/
def P12208725893794928089.Spec : Prop :=
  ∀ n, P12208725893794928089.a n = A160382 n

end A160382

/-! ## A160382.P13473899819468157644

`A160385(n)-A139351(n)`
-/

namespace A160382.P13473899819468157644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n - A139351 n

end

end A160382.P13473899819468157644

namespace A160382

/-- `A160385(n)-A139351(n)` -/
def P13473899819468157644.Spec : Prop :=
  ∀ n, P13473899819468157644.a n = A160382 n

end A160382

/-! ## A160382.P11649101261470851385

`A139352(A213064(n)-n)`
-/

namespace A160382.P11649101261470851385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A213064 n - (n : ℤ)).toNat

end

end A160382.P11649101261470851385

namespace A160382

/-- `A139352(A213064(n)-n)` -/
def P11649101261470851385.Spec : Prop :=
  ∀ n, P11649101261470851385.a n = A160382 n

end A160382

/-! ## A160382.P16450330369417037068

`A139352(n-A213370(n))`
-/

namespace A160382.P16450330369417037068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 ((n : ℤ) - A213370 n).toNat

end

end A160382.P16450330369417037068

namespace A160382

/-- `A139352(n-A213370(n))` -/
def P16450330369417037068.Spec : Prop :=
  ∀ n, P16450330369417037068.a n = A160382 n

end A160382

/-! ## A160382.P12941307738604605408

`A139351(A269170(n)-n)`
-/

namespace A160382.P12941307738604605408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A269170 n - (n : ℤ)).toNat

end

end A160382.P12941307738604605408

namespace A160382

/-- `A139351(A269170(n)-n)` -/
def P12941307738604605408.Spec : Prop :=
  ∀ n, P12941307738604605408.a n = A160382 n

end A160382

/-! ## A160382.P828007986770082538

`∑{digits}[A007090(n), A002262(#)]`
-/

namespace A160382.P828007986770082538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A002262 x).sum

end

end A160382.P828007986770082538

namespace A160382

/-- `∑{digits}[A007090(n), A002262(#)]` -/
def P828007986770082538.Spec : Prop :=
  ∀ n, P828007986770082538.a n = A160382 n

end A160382

/-! ## A160382.P17458085647254320252

`∑{digits}[A007284(n), A025427(#)]`
-/

namespace A160382.P17458085647254320252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025427 x).sum

end

end A160382.P17458085647254320252

namespace A160382

/-- `∑{digits}[A007284(n), A025427(#)]` -/
def P17458085647254320252.Spec : Prop :=
  ∀ n, P17458085647254320252.a n = A160382 n

end A160382

/-! ## A160382.P4986221517643433013

`A139352(A163617(n)-2*n)`
-/

namespace A160382.P4986221517643433013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A163617 n - (2 * n : ℤ)).toNat

end

end A160382.P4986221517643433013

namespace A160382

/-- `A139352(A163617(n)-2*n)` -/
def P4986221517643433013.Spec : Prop :=
  ∀ n, P4986221517643433013.a n = A160382 n

end A160382

/-! ## A160382.P11926488601486181309

`A139352(A163617(n)-n-n)`
-/

namespace A160382.P11926488601486181309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A163617 n - (n : ℤ) - (n : ℤ)).toNat

end

end A160382.P11926488601486181309

namespace A160382

/-- `A139352(A163617(n)-n-n)` -/
def P11926488601486181309.Spec : Prop :=
  ∀ n, P11926488601486181309.a n = A160382 n

end A160382

/-!
# A160383: Number of 3's in base-4 representation of n.

The programs for A160383, the canonical program `A160383.P16037544533340552410` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160383 has offset 0).

The definition of A160383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160383.P8412338166379003191

`val(A338854(n), 3)`
-/

namespace A160383.P8412338166379003191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A338854 n).toNat 3

end

end A160383.P8412338166379003191

namespace A160383

/-- `val(A338854(n), 3)` -/
def P8412338166379003191.Spec : Prop :=
  ∀ n, (P8412338166379003191.a n : ℤ) = A160383 n

end A160383

/-! ## A160383.P16037544533340552410

`A139352(and(n, 2*n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160383

/-- `A139352(and(n, 2*n))` -/
def P16037544533340552410.Spec : Prop :=
  ∀ n, P16037544533340552410.a n = A160383 n

theorem P16037544533340552410.correct : P16037544533340552410.Spec := by
  intro n
  simp only [A160383]

end A160383

/-! ## A160383.P484394649970925313

`A139351(A048735(n))`
-/

namespace A160383.P484394649970925313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A048735 n).toNat

end

end A160383.P484394649970925313

namespace A160383

/-- `A139351(A048735(n))` -/
def P484394649970925313.Spec : Prop :=
  ∀ n, P484394649970925313.a n = A160383 n

end A160383

/-! ## A160383.P12371997456579936327

`A000120(A292373(n))`
-/

namespace A160383.P12371997456579936327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292373 n).toNat

end

end A160383.P12371997456579936327

namespace A160383

/-- `A000120(A292373(n))` -/
def P12371997456579936327.Spec : Prop :=
  ∀ n, P12371997456579936327.a n = A160383 n

end A160383

/-! ## A160383.P17911574179198889949

`A007949(A338854(n))`
-/

namespace A160383.P17911574179198889949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A338854 n).toNat

end

end A160383.P17911574179198889949

namespace A160383

/-- `A007949(A338854(n))` -/
def P17911574179198889949.Spec : Prop :=
  ∀ n, P17911574179198889949.a n = A160383 n

end A160383

/-! ## A160383.P14187101170736340940

`A139352(A213370(n))`
-/

namespace A160383.P14187101170736340940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A213370 n).toNat

end

end A160383.P14187101170736340940

namespace A160383

/-- `A139352(A213370(n))` -/
def P14187101170736340940.Spec : Prop :=
  ∀ n, P14187101170736340940.a n = A160383 n

end A160383

/-! ## A160383.P4257108719184428988

`A139352(A380110(n))`
-/

namespace A160383.P4257108719184428988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A380110 n).toNat

end

end A160383.P4257108719184428988

namespace A160383

/-- `A139352(A380110(n))` -/
def P4257108719184428988.Spec : Prop :=
  ∀ n, P4257108719184428988.a n = A160383 n

end A160383

/-! ## A160383.P7471452453797071588

`A000120(n)-A160385(n)`
-/

namespace A160383.P7471452453797071588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A160385 n

end

end A160383.P7471452453797071588

namespace A160383

/-- `A000120(n)-A160385(n)` -/
def P7471452453797071588.Spec : Prop :=
  ∀ n, P7471452453797071588.a n = A160383 n

end A160383

/-! ## A160383.P11631069219496828717

`A139351(n)-A160381(n)`
-/

namespace A160383.P11631069219496828717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 n - A160381 n

end

end A160383.P11631069219496828717

namespace A160383

/-- `A139351(n)-A160381(n)` -/
def P11631069219496828717.Spec : Prop :=
  ∀ n, P11631069219496828717.a n = A160383 n

end A160383

/-! ## A160383.P7336507266837553389

`A139352(n)-A160382(n)`
-/

namespace A160383.P7336507266837553389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 n - A160382 n

end

end A160383.P7336507266837553389

namespace A160383

/-- `A139352(n)-A160382(n)` -/
def P7336507266837553389.Spec : Prop :=
  ∀ n, P7336507266837553389.a n = A160383 n

end A160383

/-! ## A160383.P3673897294050853817

`A139352(n-A229763(n))`
-/

namespace A160383.P3673897294050853817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 ((n : ℤ) - A229763 n).toNat

end

end A160383.P3673897294050853817

namespace A160383

/-- `A139352(n-A229763(n))` -/
def P3673897294050853817.Spec : Prop :=
  ∀ n, P3673897294050853817.a n = A160383 n

end A160383

/-! ## A160383.P7312020867445360343

`A139351(n-A292272(n))`
-/

namespace A160383.P7312020867445360343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 ((n : ℤ) - A292272 n).toNat

end

end A160383.P7312020867445360343

namespace A160383

/-- `A139351(n-A292272(n))` -/
def P7312020867445360343.Spec : Prop :=
  ∀ n, P7312020867445360343.a n = A160383 n

end A160383

/-! ## A160383.P10709896688177505102

`∑{e}[A071044(n), #]-A160385(n)`
-/

namespace A160383.P10709896688177505102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - A160385 n

end

end A160383.P10709896688177505102

namespace A160383

/-- `∑{e}[A071044(n), #]-A160385(n)` -/
def P10709896688177505102.Spec : Prop :=
  ∀ n, P10709896688177505102.a n = A160383 n

end A160383

/-! ## A160383.P597275239678306146

`A160382(n-A000695(A059906(n)))`
-/

namespace A160383.P597275239678306146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 ((n : ℤ) - A000695 (A059906 n).toNat).toNat

end

end A160383.P597275239678306146

namespace A160383

/-- `A160382(n-A000695(A059906(n)))` -/
def P597275239678306146.Spec : Prop :=
  ∀ n, P597275239678306146.a n = A160383 n

end A160383

/-! ## A160383.P8346963529760714631

`A000120(n)-A000120(A380110(n))`
-/

namespace A160383.P8346963529760714631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A000120 (A380110 n).toNat

end

end A160383.P8346963529760714631

namespace A160383

/-- `A000120(n)-A000120(A380110(n))` -/
def P8346963529760714631.Spec : Prop :=
  ∀ n, P8346963529760714631.a n = A160383 n

end A160383

/-! ## A160383.P5919190371111108500

`∑{digits}[A007284(n), A025427(A007284(#))]`
-/

namespace A160383.P5919190371111108500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025427 (A007284 x).toNat).sum

end

end A160383.P5919190371111108500

namespace A160383

/-- `∑{digits}[A007284(n), A025427(A007284(#))]` -/
def P5919190371111108500.Spec : Prop :=
  ∀ n, P5919190371111108500.a n = A160383 n

end A160383

/-! ## A160383.P8482482534405602550

`A160382(A163241(n))`
-/

namespace A160383.P8482482534405602550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A163241 n).toNat

end

end A160383.P8482482534405602550

namespace A160383

/-- `A160382(A163241(n))` -/
def P8482482534405602550.Spec : Prop :=
  ∀ n, P8482482534405602550.a n = A160383 n

end A160383

/-! ## A160383.P10576614813888863282

`A139351(A048728(n))`
-/

namespace A160383.P10576614813888863282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A048728 n).toNat

end

end A160383.P10576614813888863282

namespace A160383

/-- `A139351(A048728(n))` -/
def P10576614813888863282.Spec : Prop :=
  ∀ n, P10576614813888863282.a n = A160383 n

end A160383

/-! ## A160383.P1512471258055921306

`A000120(A059905(A213370(2*n)))`
-/

namespace A160383.P1512471258055921306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A059905 (A213370 (2 * n)).toNat).toNat

end

end A160383.P1512471258055921306

namespace A160383

/-- `A000120(A059905(A213370(2*n)))` -/
def P1512471258055921306.Spec : Prop :=
  ∀ n, P1512471258055921306.a n = A160383 n

end A160383

/-! ## A160383.P7338128303076967611

`A160381(A006015(n))`
-/

namespace A160383.P7338128303076967611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A006015 n).toNat

end

end A160383.P7338128303076967611

namespace A160383

/-- `A160381(A006015(n))` -/
def P7338128303076967611.Spec : Prop :=
  ∀ n, P7338128303076967611.a n = A160383 n

end A160383

/-!
# A160384: Number of nonzero digits in the base-3 representation of n.

The programs for A160384, the canonical program `A160384.P15664302299430304392` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160384 has offset 0).

The definition of A160384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160384.P15664302299430304392

`a(floor(n/3))+n²%3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160384

/-- `a(floor(n/3))+n²%3` -/
def P15664302299430304392.Spec : Prop :=
  ∀ n, (P15664302299430304392.a n : ℤ) = A160384 n

theorem P15664302299430304392.correct : P15664302299430304392.Spec := by
  intro n
  simp only [A160384]

end A160384

/-! ## A160384.P7205054041445013084

`dr(a(floor(n/3))+n^6)` with `a(0)=0`
-/

namespace A160384.P7205054041445013084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.digitalRoot (a ⌊(n : ℚ) / 3⌋.toNat + n ^ 6 : ℤ)

end

end A160384.P7205054041445013084

namespace A160384

/-- `dr(a(floor(n/3))+n^6)` -/
def P7205054041445013084.Spec : Prop :=
  ∀ n, (P7205054041445013084.a n : ℤ) = A160384 n

end A160384

/-! ## A160384.P1469666014573206817

`a(floor(n/3))+1-char[3*n]` with `a(0)=0`
-/

namespace A160384.P1469666014573206817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat + 1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A160384.P1469666014573206817

namespace A160384

/-- `a(floor(n/3))+1-char[3*n]` -/
def P1469666014573206817.Spec : Prop :=
  ∀ n, P1469666014573206817.a n = A160384 n

end A160384

/-! ## A160384.P14350306673485135509

`floor(a(floor(n/3))--n²%3)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A160384.P14350306673485135509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 3⌋.toNat - Int.tmod (-(n ^ 2 : ℤ)) 3

end

end A160384.P14350306673485135509

namespace A160384

/-- `floor(a(floor(n/3))--n²%3)` -/
def P14350306673485135509.Spec : Prop :=
  ∀ n, P14350306673485135509.a n = A160384 n

end A160384

/-! ## A160384.P17867192084049116589

`∑{e}[(n%3+1)*a(floor(n/3)), #]` with `a(0)=1`
-/

namespace A160384.P17867192084049116589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (n % 3 + 1) * f1 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A160384.P17867192084049116589

namespace A160384

/-- `∑{e}[(n%3+1)*a(floor(n/3)), #]` -/
def P17867192084049116589.Spec : Prop :=
  ∀ n, (P17867192084049116589.a n : ℤ) = A160384 n

end A160384

/-! ## A160384.P13848546907872723635

`ceil((2*a(floor(n/3))+n-3*floor(n/3))/2)` with `a(0)=0`
-/

namespace A160384.P13848546907872723635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(2 * a ⌊(n : ℚ) / 3⌋.toNat + ((n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋) : ℚ) / 2⌉

end

end A160384.P13848546907872723635

namespace A160384

/-- `ceil((2*a(floor(n/3))+n-3*floor(n/3))/2)` -/
def P13848546907872723635.Spec : Prop :=
  ∀ n, P13848546907872723635.a n = A160384 n

end A160384

/-! ## A160384.P14499195593597528285

`∑{e}[A006047(n), #]`
-/

namespace A160384.P14499195593597528285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A160384.P14499195593597528285

namespace A160384

/-- `∑{e}[A006047(n), #]` -/
def P14499195593597528285.Spec : Prop :=
  ∀ n, (P14499195593597528285.a n : ℤ) = A160384 n

end A160384

/-! ## A160384.P18100081037561445732

`∑{e}[A120879(n), #]`
-/

namespace A160384.P18100081037561445732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A160384.P18100081037561445732

namespace A160384

/-- `∑{e}[A120879(n), #]` -/
def P18100081037561445732.Spec : Prop :=
  ∀ n, (P18100081037561445732.a n : ℤ) = A160384 n

end A160384

/-! ## A160384.P5207156805672877046

`A189674(n+1)-∑[val(abs(1-n)+1, 3)]`
-/

namespace A160384.P5207156805672877046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189674 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A160384.P5207156805672877046

namespace A160384

/-- `A189674(n+1)-∑[val(abs(1-n)+1, 3)]` -/
def P5207156805672877046.Spec : Prop :=
  ∀ n, P5207156805672877046.a n = A160384 n

end A160384

/-! ## A160384.P9846571483004743845

`A001222(A006047(n))`
-/

namespace A160384.P9846571483004743845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006047 n).toNat

end

end A160384.P9846571483004743845

namespace A160384

/-- `A001222(A006047(n))` -/
def P9846571483004743845.Spec : Prop :=
  ∀ n, P9846571483004743845.a n = A160384 n

end A160384

/-! ## A160384.P6640523089257842231

`A001222(A120879(n))`
-/

namespace A160384.P6640523089257842231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A120879 n).toNat

end

end A160384.P6640523089257842231

namespace A160384

/-- `A001222(A120879(n))` -/
def P6640523089257842231.Spec : Prop :=
  ∀ n, P6640523089257842231.a n = A160384 n

end A160384

/-! ## A160384.P2310208529280331545

`A000120(A289831(n))`
-/

namespace A160384.P2310208529280331545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289831 n).toNat

end

end A160384.P2310208529280331545

namespace A160384

/-- `A000120(A289831(n))` -/
def P2310208529280331545.Spec : Prop :=
  ∀ n, P2310208529280331545.a n = A160384 n

end A160384

/-! ## A160384.P11524567095243625847

`A062756(n)+A081603(n)`
-/

namespace A160384.P11524567095243625847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n + A081603 n

end

end A160384.P11524567095243625847

namespace A160384

/-- `A062756(n)+A081603(n)` -/
def P11524567095243625847.Spec : Prop :=
  ∀ n, P11524567095243625847.a n = A160384 n

end A160384

/-! ## A160384.P3840448281023730475

`A053735(n)-A081603(n)`
-/

namespace A160384.P3840448281023730475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - A081603 n

end

end A160384.P3840448281023730475

namespace A160384

/-- `A053735(n)-A081603(n)` -/
def P3840448281023730475.Spec : Prop :=
  ∀ n, P3840448281023730475.a n = A160384 n

end A160384

/-! ## A160384.P12930389155112369172

`A081604(n)-A077267(n)`
-/

namespace A160384.P12930389155112369172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n - A077267 n

end

end A160384.P12930389155112369172

namespace A160384

/-- `A081604(n)-A077267(n)` -/
def P12930389155112369172.Spec : Prop :=
  ∀ n, P12930389155112369172.a n = A160384 n

end A160384

/-! ## A160384.P10840267849111283754

`A120855(n)-A062756(n)`
-/

namespace A160384.P10840267849111283754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120855 n - A062756 n

end

end A160384.P10840267849111283754

namespace A160384

/-- `A120855(n)-A062756(n)` -/
def P10840267849111283754.Spec : Prop :=
  ∀ n, P10840267849111283754.a n = A160384 n

end A160384

/-! ## A160384.P10300838731833296678

`∑{digits}[A007089(n), A000045(#)]`
-/

namespace A160384.P10300838731833296678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 x).sum

end

end A160384.P10300838731833296678

namespace A160384

/-- `∑{digits}[A007089(n), A000045(#)]` -/
def P10300838731833296678.Spec : Prop :=
  ∀ n, P10300838731833296678.a n = A160384 n

end A160384

/-! ## A160384.P9849679792233961167

`∑{digits}[A007089(n), A000120(#)]`
-/

namespace A160384.P9849679792233961167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000120 x).sum

end

end A160384.P9849679792233961167

namespace A160384

/-- `∑{digits}[A007089(n), A000120(#)]` -/
def P9849679792233961167.Spec : Prop :=
  ∀ n, P9849679792233961167.a n = A160384 n

end A160384

/-! ## A160384.P2108474355777864748

`∑{digits}[A007089(n), A001045(#)]`
-/

namespace A160384.P2108474355777864748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001045 x).sum

end

end A160384.P2108474355777864748

namespace A160384

/-- `∑{digits}[A007089(n), A001045(#)]` -/
def P2108474355777864748.Spec : Prop :=
  ∀ n, P2108474355777864748.a n = A160384 n

end A160384

/-! ## A160384.P7443049035399172323

`∑{digits}[A007089(n), A110654(#)]`
-/

namespace A160384.P7443049035399172323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A110654 x).sum

end

end A160384.P7443049035399172323

namespace A160384

/-- `∑{digits}[A007089(n), A110654(#)]` -/
def P7443049035399172323.Spec : Prop :=
  ∀ n, P7443049035399172323.a n = A160384 n

end A160384

/-!
# A160385: Number of nonzero digits in base-4 representation of n.

The programs for A160385, the canonical program `A160385.P9288660522988789958` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160385 has offset 0).

The definition of A160385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A160385.P2962149895304273148

`n%2+a(floor(n/4))+and(4, n²)/4` with `a(0)=0`
-/

namespace A160385.P2962149895304273148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((n % 2 : ℕ) : ℚ) + (a ⌊(n : ℚ) / 4⌋.toNat + (Nat.land 4 (n ^ 2) : ℚ) / 4)

end

end A160385.P2962149895304273148

namespace A160385

/-- `n%2+a(floor(n/4))+and(4, n²)/4` -/
def P2962149895304273148.Spec : Prop :=
  ∀ n, P2962149895304273148.a n = (A160385 n : ℚ)

end A160385

/-! ## A160385.P13235118792157034363

`A000120(A380110(n))`
-/

namespace A160385.P13235118792157034363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A380110 n).toNat

end

end A160385.P13235118792157034363

namespace A160385

/-- `A000120(A380110(n))` -/
def P13235118792157034363.Spec : Prop :=
  ∀ n, P13235118792157034363.a n = A160385 n

end A160385

/-! ## A160385.P11403625482432910889

`A215883(A319652(n))`
-/

namespace A160385.P11403625482432910889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215883 (A319652 n).toNat

end

end A160385.P11403625482432910889

namespace A160385

/-- `A215883(A319652(n))` -/
def P11403625482432910889.Spec : Prop :=
  ∀ n, P11403625482432910889.a n = A160385 n

end A160385

/-! ## A160385.P9288660522988789958

`A160381(n)+A139352(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A160385

/-- `A160381(n)+A139352(n)` -/
def P9288660522988789958.Spec : Prop :=
  ∀ n, P9288660522988789958.a n = A160385 n

theorem P9288660522988789958.correct : P9288660522988789958.Spec := by
  intro n
  simp only [A160385]

end A160385

/-! ## A160385.P13970620243067969385

`A160382(n)+A139351(n)`
-/

namespace A160385.P13970620243067969385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n + A139351 n

end

end A160385.P13970620243067969385

namespace A160385

/-- `A160382(n)+A139351(n)` -/
def P13970620243067969385.Spec : Prop :=
  ∀ n, P13970620243067969385.a n = A160385 n

end A160385

/-! ## A160385.P8308902482981290831

`A000120(n)-A160383(n)`
-/

namespace A160385.P8308902482981290831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A160383 n

end

end A160385.P8308902482981290831

namespace A160385

/-- `A000120(n)-A160383(n)` -/
def P8308902482981290831.Spec : Prop :=
  ∀ n, P8308902482981290831.a n = A160385 n

end A160385

/-! ## A160385.P11432649762823945373

`A000120(and(n, A048647(n)))`
-/

namespace A160385.P11432649762823945373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (n : ℤ) (A048647 n)).toNat

end

end A160385.P11432649762823945373

namespace A160385

/-- `A000120(and(n, A048647(n)))` -/
def P11432649762823945373.Spec : Prop :=
  ∀ n, P11432649762823945373.a n = A160385 n

end A160385

/-! ## A160385.P16777912124115333653

`∑{digits}[A007090(n), A104862(#)]`
-/

namespace A160385.P16777912124115333653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A104862 x).sum

end

end A160385.P16777912124115333653

namespace A160385

/-- `∑{digits}[A007090(n), A104862(#)]` -/
def P16777912124115333653.Spec : Prop :=
  ∀ n, P16777912124115333653.a n = A160385 n

end A160385

/-! ## A160385.P8566818348124749475

`∑{digits}[A007284(n), A025435(#²)]`
-/

namespace A160385.P8566818348124749475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A025435 (x ^ 2)).sum

end

end A160385.P8566818348124749475

namespace A160385

/-- `∑{digits}[A007284(n), A025435(#²)]` -/
def P8566818348124749475.Spec : Prop :=
  ∀ n, P8566818348124749475.a n = A160385 n

end A160385

/-! ## A160385.P6066987236983210417

`A000120((A063694(n)+n)/2)`
-/

namespace A160385.P6066987236983210417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A063694 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A160385.P6066987236983210417

namespace A160385

/-- `A000120((A063694(n)+n)/2)` -/
def P6066987236983210417.Spec : Prop :=
  ∀ n, P6066987236983210417.a n = A160385 n

end A160385

/-! ## A160385.P9416438624659187918

`A000120(n-A063695(n)/2)`
-/

namespace A160385.P9416438624659187918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((n : ℚ) - (A063695 n : ℚ) / 2)).toNat

end

end A160385.P9416438624659187918

namespace A160385

/-- `A000120(n-A063695(n)/2)` -/
def P9416438624659187918.Spec : Prop :=
  ∀ n, P9416438624659187918.a n = A160385 n

end A160385

/-! ## A160385.P11614765250883592203

`∑{e}[A071044(n), #]-A160383(n)`
-/

namespace A160385.P11614765250883592203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - A160383 n

end

end A160385.P11614765250883592203

namespace A160385

/-- `∑{e}[A071044(n), #]-A160383(n)` -/
def P11614765250883592203.Spec : Prop :=
  ∀ n, P11614765250883592203.a n = A160385 n

end A160385

/-! ## A160385.P14379243030258480072

`A000120(A292371(n)+A059906(n))`
-/

namespace A160385.P14379243030258480072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292371 n + A059906 n).toNat

end

end A160385.P14379243030258480072

namespace A160385

/-- `A000120(A292371(n)+A059906(n))` -/
def P14379243030258480072.Spec : Prop :=
  ∀ n, P14379243030258480072.a n = A160385 n

end A160385

/-! ## A160385.P17462270562907023267

`A000120(A309952(n)+A292373(n))`
-/

namespace A160385.P17462270562907023267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A309952 n + A292373 n).toNat

end

end A160385.P17462270562907023267

namespace A160385

/-- `A000120(A309952(n)+A292373(n))` -/
def P17462270562907023267.Spec : Prop :=
  ∀ n, P17462270562907023267.a n = A160385 n

end A160385

/-! ## A160385.P5140503780572902496

`A000120(n-A000695(A059906(n)))`
-/

namespace A160385.P5140503780572902496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - A000695 (A059906 n).toNat).toNat

end

end A160385.P5140503780572902496

namespace A160385

/-- `A000120(n-A000695(A059906(n)))` -/
def P5140503780572902496.Spec : Prop :=
  ∀ n, P5140503780572902496.a n = A160385 n

end A160385

/-! ## A160385.P10515478219211153154

`A000120(n)-A000120(A292373(n))`
-/

namespace A160385.P10515478219211153154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A000120 (A292373 n).toNat

end

end A160385.P10515478219211153154

namespace A160385

/-- `A000120(n)-A000120(A292373(n))` -/
def P10515478219211153154.Spec : Prop :=
  ∀ n, P10515478219211153154.a n = A160385 n

end A160385

/-! ## A160385.P5080108634849808622

`A000120(or(A059906(n), A292371(n)))`
-/

namespace A160385.P5080108634849808622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lor (A059906 n) (A292371 n)).toNat

end

end A160385.P5080108634849808622

namespace A160385

/-- `A000120(or(A059906(n), A292371(n)))` -/
def P5080108634849808622.Spec : Prop :=
  ∀ n, P5080108634849808622.a n = A160385 n

end A160385

/-! ## A160385.P12120806684190979793

`A000120(or(A059906(n), A309952(n)))`
-/

namespace A160385.P12120806684190979793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lor (A059906 n) (A309952 n)).toNat

end

end A160385.P12120806684190979793

namespace A160385

/-- `A000120(or(A059906(n), A309952(n)))` -/
def P12120806684190979793.Spec : Prop :=
  ∀ n, P12120806684190979793.a n = A160385 n

end A160385

/-! ## A160385.P269456352404607979

`A000120(xor(A059906(n), A292371(n)))`
-/

namespace A160385.P269456352404607979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (A059906 n) (A292371 n)).toNat

end

end A160385.P269456352404607979

namespace A160385

/-- `A000120(xor(A059906(n), A292371(n)))` -/
def P269456352404607979.Spec : Prop :=
  ∀ n, P269456352404607979.a n = A160385 n

end A160385

/-! ## A160385.P6185078753914650423

`∑{digits}[A007090(n), A000120(A000120(#))]`
-/

namespace A160385.P6185078753914650423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000120 (A000120 x).toNat).sum

end

end A160385.P6185078753914650423

namespace A160385

/-- `∑{digits}[A007090(n), A000120(A000120(#))]` -/
def P6185078753914650423.Spec : Prop :=
  ∀ n, P6185078753914650423.a n = A160385 n

end A160385

/-!
# A160390: Decimal expansion of sqrt(3) - 1.

The programs for A160390, there is no canonical definition to state claims against.
-/

/-! ## A160390.P6171153463340695218

`A002194(n+1)`
-/

namespace A160390.P6171153463340695218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002194 (n + 1 + 1)

end

end A160390.P6171153463340695218

/-! ## A160390.P2965392014148647306

`9-A019913(n)`
-/

namespace A160390.P2965392014148647306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A019913 n

end

end A160390.P2965392014148647306

/-! ## A160390.P15517126731936070847

`A019973(n+1)`
-/

namespace A160390.P15517126731936070847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (n + 1 + 1)

end

end A160390.P15517126731936070847

/-! ## A160390.P15742113389729512710

`A090388(n+1)`
-/

namespace A160390.P15742113389729512710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090388 (n + 1 + 1)

end

end A160390.P15742113389729512710

/-! ## A160390.P15800496369092205247

`A165663(n+1)`
-/

namespace A160390.P15800496369092205247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165663 (n + 1 + 1)

end

end A160390.P15800496369092205247

/-! ## A160390.P8158410227343447708

`A344111(n+1)`
-/

namespace A160390.P8158410227343447708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344111 (n + 1 + 1)

end

end A160390.P8158410227343447708

/-! ## A160390.P18034048675268460634

`A176102(n+1)+A152623(n+1)`
-/

namespace A160390.P18034048675268460634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176102 (n + 1 + 1) + A152623 (n + 1 + 1)

end

end A160390.P18034048675268460634

/-! ## A160390.P10803702464654116625

`A097903(∑[n+1])`
-/

namespace A160390.P10803702464654116625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097903 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A160390.P10803702464654116625

/-! ## A160390.P8406217426035057995

`A073027(A167614(n+2))`
-/

namespace A160390.P8406217426035057995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073027 (A167614 (n + 2)).toNat

end

end A160390.P8406217426035057995

/-!
# A160393: Square root of A003462, rounded up.

The programs for A160393, the canonical program `A160393.P10650134536741932856` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A160393 has offset 1).

The definition of A160393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A160393.P10650134536741932856

`ceil(sqrt((3^(n+1)-1)/2))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A160393

/-- `ceil(sqrt((3^(n+1)-1)/2))` -/
def P10650134536741932856.Spec : Prop :=
  ∀ n, P10650134536741932856.a n = A160393 (n + 1)

theorem P10650134536741932856.correct : P10650134536741932856.Spec := by
  intro n
  simp only [A160393, Nat.add_sub_cancel]

end A160393

/-! ## A160393.P7341071385628424103

`floor(sqrt(xor(-1, ∑[-3^n])))+1`
-/

namespace A160393.P7341071385628424103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (Int.xor (-1) (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A160393.P7341071385628424103

namespace A160393

/-- `floor(sqrt(xor(-1, ∑[-3^n])))+1` -/
def P7341071385628424103.Spec : Prop :=
  ∀ n, P7341071385628424103.a n = A160393 (n + 1)

end A160393

/-! ## A160393.P4657939263344125394

`floor(sqrt(∑[and(2, n)+3^n-1]))+1`
-/

namespace A160393.P4657939263344125394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℤ) + ((3 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A160393.P4657939263344125394

namespace A160393

/-- `floor(sqrt(∑[and(2, n)+3^n-1]))+1` -/
def P4657939263344125394.Spec : Prop :=
  ∀ n, P4657939263344125394.a n = A160393 (n + 1)

end A160393

/-! ## A160393.P204546437033024727

`record[ceil(sqrt(A140313(n)))]`
-/

namespace A160393.P204546437033024727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A140313 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160393.P204546437033024727

namespace A160393

/-- `record[ceil(sqrt(A140313(n)))]` -/
def P204546437033024727.Spec : Prop :=
  ∀ n, P204546437033024727.a n = A160393 (n + 1)

end A160393

/-! ## A160393.P15667376870660387727

`floor(sqrt(A029858(n+1)))+1`
-/

namespace A160393.P15667376870660387727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A029858 (n + 1)) + 1

end

end A160393.P15667376870660387727

namespace A160393

/-- `floor(sqrt(A029858(n+1)))+1` -/
def P15667376870660387727.Spec : Prop :=
  ∀ n, P15667376870660387727.a n = A160393 (n + 1)

end A160393

/-! ## A160393.P4135859140773003925

`floor(sqrt(A007051(n+1)-2))+1`
-/

namespace A160393.P4135859140773003925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A007051 (n + 1) - 2) + 1

end

end A160393.P4135859140773003925

namespace A160393

/-- `floor(sqrt(A007051(n+1)-2))+1` -/
def P4135859140773003925.Spec : Prop :=
  ∀ n, P4135859140773003925.a n = A160393 (n + 1)

end A160393

/-! ## A160393.P9964557430733466152

`floor(sqrt(∑[3^n]-A080426(n+1)))+1`
-/

namespace A160393.P9964557430733466152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A080426 (n + 1)) + 1

end

end A160393.P9964557430733466152

namespace A160393

/-- `floor(sqrt(∑[3^n]-A080426(n+1)))+1` -/
def P9964557430733466152.Spec : Prop :=
  ∀ n, P9964557430733466152.a n = A160393 (n + 1)

end A160393

/-! ## A160393.P9291241249141844411

`A000007(n+1)+ceil(sqrt(A003462(n+1)))`
-/

namespace A160393.P9291241249141844411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ⌈Real.sqrt (A003462 (n + 1) : ℝ)⌉

end

end A160393.P9291241249141844411

namespace A160393

/-- `A000007(n+1)+ceil(sqrt(A003462(n+1)))` -/
def P9291241249141844411.Spec : Prop :=
  ∀ n, P9291241249141844411.a n = A160393 (n + 1)

end A160393

/-! ## A160393.P6888508088809268343

`ceil(sqrt(A003462(n+1)))%A000032(2*n)`
-/

namespace A160393.P6888508088809268343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A003462 (n + 1) : ℝ)⌉ (A000032 (2 * n))

end

end A160393.P6888508088809268343

namespace A160393

/-- `ceil(sqrt(A003462(n+1)))%A000032(2*n)` -/
def P6888508088809268343.Spec : Prop :=
  ∀ n, P6888508088809268343.a n = A160393 (n + 1)

end A160393

/-! ## A160393.P8578960495944475924

`record[ceil(sqrt(A173800(n+1)))]`
-/

namespace A160393.P8578960495944475924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A173800 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A160393.P8578960495944475924

namespace A160393

/-- `record[ceil(sqrt(A173800(n+1)))]` -/
def P8578960495944475924.Spec : Prop :=
  ∀ n, P8578960495944475924.a n = A160393 (n + 1)

end A160393

/-!
# A160394: Numbers k = p*q*r (p, q, r prime) congruent to 0 mod p+q+r.

The programs for A160394, there is no canonical definition to state claims against.
-/

/-! ## A160394.P13478339418074640067

`filter[A199013(n+1), A358773(#)]`
-/

namespace A160394.P13478339418074640067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358773 (f1 j).toNat = 1) n)

end

end A160394.P13478339418074640067

/-! ## A160394.P13155634131053055985

`∩[A036844(n+1), A110188(n+1)]`
-/

namespace A160394.P13155634131053055985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160394.P13155634131053055985

/-! ## A160394.P9879946080738208112

`∩[A046346(n+1), A110188(n+1)]`
-/

namespace A160394.P9879946080738208112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A160394.P9879946080738208112

/-! ## A160394.P47281586321803979

`filter[A110188(n+1), A342460(#)]`
-/

namespace A160394.P47281586321803979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A160394.P47281586321803979

/-! ## A160394.P17068963253065320819

`filter[A199013(n+1), A340369(#)]`
-/

namespace A160394.P17068963253065320819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A160394.P17068963253065320819

/-!
# A160399: a(n) = Sum_{k=1..n} binomial(n,k) * d(k), where d(k) = the number of positive divisors of k.

The programs for A160399, there is no canonical definition to state claims against.
-/

/-! ## A160399.P6472433859595661492

`∑[A101509(n)]`
-/

namespace A160399.P6472433859595661492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A160399.P6472433859595661492

/-! ## A160399.P10883685919352892189

`A101509(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A160399.P10883685919352892189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101509 n + a (A023443 n).toNat

end

end A160399.P10883685919352892189

/-! ## A160399.P10433680293732962239

`A101509(n%A000040(n))+a(n-1)` with `a(0)=1`
-/

namespace A160399.P10433680293732962239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101509 (Int.tmod (n : ℤ) (A000040 n)).toNat + a (n - 1)

end

end A160399.P10433680293732962239

/-! ## A160399.P12222388971659150300

`a(n-1)+lcm(A033999(n), A101509(n))` with `a(0)=1`
-/

namespace A160399.P12222388971659150300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lcm (A033999 n) (A101509 n)

end

end A160399.P12222388971659150300

/-! ## A160399.P9123115110810879739

`A101509(n)+a(n-1)%A101509(n+1)` with `a(0)=1`
-/

namespace A160399.P9123115110810879739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101509 n + Int.tmod (a (n - 1)) (A101509 (n + 1))

end

end A160399.P9123115110810879739

/-! ## A160399.P2818785262471407021

`a(n-1)+A101509(n)%A126431(n)` with `a(0)=1`
-/

namespace A160399.P2818785262471407021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A101509 n) (A126431 n)

end

end A160399.P2818785262471407021

