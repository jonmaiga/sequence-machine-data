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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
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
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A113401: Algebraic degree of cos(2*Pi/n) for constructible n-gons (A003401).

The programs for A113401, there is no canonical definition to state claims against.
-/

/-! ## A113401.P15475958119314832264

`ceil(A094269(n+1)/2)`
-/

namespace A113401.P15475958119314832264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094269 (n + 1) : ℚ) / 2⌉

end

end A113401.P15475958119314832264

/-! ## A113401.P14299633345500691484

`A010554(A003401(n+1))`
-/

namespace A113401.P14299633345500691484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A003401 (n + 1)).toNat

end

end A113401.P14299633345500691484

/-! ## A113401.P9469261735374565860

`A000010(A094269(n+1))`
-/

namespace A113401.P9469261735374565860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A094269 (n + 1)).toNat

end

end A113401.P9469261735374565860

/-! ## A113401.P14007088058997227958

`A011782(A319821(n+1))`
-/

namespace A113401.P14007088058997227958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A319821 (n + 1)).toNat

end

end A113401.P14007088058997227958

/-! ## A113401.P16412951694336802

`A011782(log2(A094269(n+1)))`
-/

namespace A113401.P16412951694336802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (SequenceMachineLib.roundAway (Real.logb 2 (A094269 (n + 1) : ℝ))).toNat

end

end A113401.P16412951694336802

/-! ## A113401.P12177892263492577802

`A166444(A319821(n+1)+1)`
-/

namespace A113401.P12177892263492577802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A319821 (n + 1) + 1).toNat

end

end A113401.P12177892263492577802

/-! ## A113401.P3028324748319959445

`A000010(2^A319821(n+1))`
-/

namespace A113401.P3028324748319959445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319821 (n + 1) : ℤ))).toNat

end

end A113401.P3028324748319959445

/-! ## A113401.P3575233454072645821

`A003557(2^A319821(n+1))`
-/

namespace A113401.P3575233454072645821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319821 (n + 1) : ℤ))).toNat

end

end A113401.P3575233454072645821

/-! ## A113401.P6432671943140990689

`A004001(2^A319821(n+1))`
-/

namespace A113401.P6432671943140990689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319821 (n + 1) : ℤ))).toNat

end

end A113401.P6432671943140990689

/-! ## A113401.P13997177349013221223

`A004525(2^A319821(n+1))`
-/

namespace A113401.P13997177349013221223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A319821 (n + 1) : ℤ))).toNat

end

end A113401.P13997177349013221223

/-!
# A113402: Algebraic degree of cos(Pi/n) for constructible n-gons (A003401).

The programs for A113402, there is no canonical definition to state claims against.
-/

/-! ## A113402.P5668658497342893119

`A011782(floor(log2(A058213(n))))`
-/

namespace A113402.P5668658497342893119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (Nat.log 2 (A058213 n).toNat)

end

end A113402.P5668658497342893119

/-! ## A113402.P7687352163757692785

`A011782(floor(log2(A003401(n+1))))`
-/

namespace A113402.P7687352163757692785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (Nat.log 2 (A003401 (n + 1)).toNat)

end

end A113402.P7687352163757692785

/-! ## A113402.P15095964745296107291

`A011782(A003056(n))%A159065(2*(n+2))`
-/

namespace A113402.P15095964745296107291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (A003056 n).toNat) (A159065 (2 * (n + 2)))

end

end A113402.P15095964745296107291

/-! ## A113402.P13029696292267690922

`A011782(A187795(2*n+5)+A003056(n))`
-/

namespace A113402.P13029696292267690922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A187795 (2 * n + 5) + A003056 n).toNat

end

end A113402.P13029696292267690922

/-! ## A113402.P12972928838513138609

`A274895(1-A002262(n)+n)`
-/

namespace A113402.P12972928838513138609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274895 (1 - A002262 n + (n : ℤ)).toNat

end

end A113402.P12972928838513138609

/-! ## A113402.P16941360827604036051

`A318075(A123108(2*n)-A002262(n))`
-/

namespace A113402.P16941360827604036051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (A123108 (2 * n) - A002262 n).toNat

end

end A113402.P16941360827604036051

/-! ## A113402.P10530864656891475073

`A318075(A123108(2*n)-log2(A059268(n)))`
-/

namespace A113402.P10530864656891475073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318075 (SequenceMachineLib.roundAway ((A123108 (2 * n) : ℝ) - Real.logb 2 (A059268 n : ℝ))).toNat

end

end A113402.P10530864656891475073

/-! ## A113402.P5281317733865396949

`A349802(2*A140978(n+1))`
-/

namespace A113402.P5281317733865396949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349802 (2 * A140978 (n + 1)).toNat

end

end A113402.P5281317733865396949

/-! ## A113402.P1309910646672479728

`A349802(A005843(A140978(n+1)))`
-/

namespace A113402.P1309910646672479728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349802 (A005843 (A140978 (n + 1)).toNat).toNat

end

end A113402.P1309910646672479728

/-! ## A113402.P5611997146820030455

`2^A127321(∑[A002264(n)])`
-/

namespace A113402.P5611997146820030455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A127321 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ)

end

end A113402.P5611997146820030455

/-! ## A113402.P17489656639224278608

`A306060(n+2-A094727(n+1))`
-/

namespace A113402.P17489656639224278608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306060 ((n + 2 : ℤ) - A094727 (n + 1)).toNat

end

end A113402.P17489656639224278608

/-! ## A113402.P8546498469087089520

`A003714(A131410(n+1))`
-/

namespace A113402.P8546498469087089520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A131410 (n + 1)).toNat

end

end A113402.P8546498469087089520

/-! ## A113402.P506432988316291780

`A003714(A000045(round(sqrt(2*n+1))))`
-/

namespace A113402.P506432988316291780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A000045 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat).toNat

end

end A113402.P506432988316291780

/-! ## A113402.P8537821617848211752

`∏{e}[A011782(A014132(n+1)-(n+1)), A011782(#)]`
-/

namespace A113402.P8537821617848211752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A014132 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A011782 (Nat.factorization (f1 n).natAbs p)

end

end A113402.P8537821617848211752

/-! ## A113402.P3777412445721551234

`A000010(A137688(n))`
-/

namespace A113402.P3777412445721551234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A137688 n).toNat

end

end A113402.P3777412445721551234

/-!
# A113403: Primes p in prime quadruplets (p,p+2,p+6,p+8) at the end of maximal gaps in A113404.

The programs for A113403, there is no canonical definition to state claims against.
-/

/-! ## A113403.P7184215878659464673

`A229907(n+1)+A113404(n+1)`
-/

namespace A113403.P7184215878659464673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229907 (n + 1) + A113404 (n + 1)

end

end A113403.P7184215878659464673

/-! ## A113403.P5108864886768563174

`A229907(n+1)+record[Δ[A007530(n+1)]]`
-/

namespace A113403.P5108864886768563174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229907 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113403.P5108864886768563174

/-! ## A113403.P8002991728270778207

`A229907(n+1)+record[Δ[A090258(n+1)]]`
-/

namespace A113403.P8002991728270778207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090258 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229907 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113403.P8002991728270778207

/-! ## A113403.P1352001498048029746

`A229907(n+1)+record[Δ[A136720(n+1)]]`
-/

namespace A113403.P1352001498048029746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136720 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229907 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113403.P1352001498048029746

/-! ## A113403.P9576789969757374617

`A229907(n+1)+record[Δ[A136721(n+1)]]`
-/

namespace A113403.P9576789969757374617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136721 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229907 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113403.P9576789969757374617

/-!
# A113404: Record gaps between prime quadruplets.

The programs for A113404, there is no canonical definition to state claims against.
-/

/-! ## A113404.P4912374920342041033

`A113403(n+1)-A229907(n+1)`
-/

namespace A113404.P4912374920342041033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113403 (n + 1) - A229907 (n + 1)

end

end A113404.P4912374920342041033

/-! ## A113404.P16634586726375737694

`record[Δ[A007530(n+1)]]`
-/

namespace A113404.P16634586726375737694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113404.P16634586726375737694

/-! ## A113404.P9064541465952570382

`record[Δ[A064974(n+1)]]`
-/

namespace A113404.P9064541465952570382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064974 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113404.P9064541465952570382

/-! ## A113404.P15033064393178060784

`record[Δ[A090258(n+1)]]`
-/

namespace A113404.P15033064393178060784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090258 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113404.P15033064393178060784

/-! ## A113404.P16664335522369716071

`record[Δ[A125855(n+1)]]`
-/

namespace A113404.P16664335522369716071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125855 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113404.P16664335522369716071

/-!
# A113405: Expansion of x^3/(1 - 2*x + x^3 - 2*x^4) = x^3/( (1-2*x)*(1+x)*(1-x+x^2) ).

The programs for A113405, the canonical program `A113405.P8021731065096771962` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113405 has offset 0).

The definition of A113405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113405.P8021731065096771962

`2*a(n-1)-a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113405

/-- `2*a(n-1)-a(n-3)+2*a(n-4)` -/
def P8021731065096771962.Spec : Prop :=
  ∀ n, P8021731065096771962.a n = A113405 n

theorem P8021731065096771962.correct : P8021731065096771962.Spec := by
  intro n
  simp only [A113405]

end A113405

/-! ## A113405.P3487271562247017622

`round(2^n/9)`
-/

namespace A113405.P3487271562247017622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 9)

end

end A113405.P3487271562247017622

namespace A113405

/-- `round(2^n/9)` -/
def P3487271562247017622.Spec : Prop :=
  ∀ n, P3487271562247017622.a n = A113405 n

end A113405

/-! ## A113405.P8989644777548538147

`ogf(x^3/(1-2x+x^3-2x^4))`
-/

namespace A113405.P8989644777548538147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1] [1, -2, 0, 1, -2] n

end

end A113405.P8989644777548538147

namespace A113405

/-- `ogf(x^3/(1-2x+x^3-2x^4))` -/
def P8989644777548538147.Spec : Prop :=
  ∀ n, P8989644777548538147.a n = A113405 n

end A113405

/-! ## A113405.P17519192922347642704

`2^(n-3)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A113405.P17519192922347642704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - a (n - 3)

end

end A113405.P17519192922347642704

namespace A113405

/-- `2^(n-3)-a(n-3)` -/
def P17519192922347642704.Spec : Prop :=
  ∀ n, P17519192922347642704.a n = (A113405 n : ℚ)

end A113405

/-! ## A113405.P7308358315045356934

`∑[A131666(abs(1-n))]`
-/

namespace A113405.P7308358315045356934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113405.P7308358315045356934

namespace A113405

/-- `∑[A131666(abs(1-n))]` -/
def P7308358315045356934.Spec : Prop :=
  ∀ n, P7308358315045356934.a n = A113405 n

end A113405

/-! ## A113405.P16659212482908016346

`a(n-1)+A131531(n)+a(n-1)` with `a(0)=0`
-/

namespace A113405.P16659212482908016346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A131531 n + a (n - 1))

end

end A113405.P16659212482908016346

namespace A113405

/-- `a(n-1)+A131531(n)+a(n-1)` -/
def P16659212482908016346.Spec : Prop :=
  ∀ n, P16659212482908016346.a n = A113405 n

end A113405

/-! ## A113405.P14554162001219885549

`A000045(n)-A140096(n)`
-/

namespace A113405.P14554162001219885549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A140096 n

end

end A113405.P14554162001219885549

namespace A113405

/-- `A000045(n)-A140096(n)` -/
def P14554162001219885549.Spec : Prop :=
  ∀ n, P14554162001219885549.a n = A113405 n

end A113405

/-! ## A113405.P17306532825020575977

`A140428(n)-A000045(n)`
-/

namespace A113405.P17306532825020575977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140428 n - A000045 n

end

end A113405.P17306532825020575977

namespace A113405

/-- `A140428(n)-A000045(n)` -/
def P17306532825020575977.Spec : Prop :=
  ∀ n, P17306532825020575977.a n = A113405 n

end A113405

/-! ## A113405.P18254358116963323434

`A133511(n)+A131531(n+1)`
-/

namespace A113405.P18254358116963323434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 n + A131531 (n + 1)

end

end A113405.P18254358116963323434

namespace A113405

/-- `A133511(n)+A131531(n+1)` -/
def P18254358116963323434.Spec : Prop :=
  ∀ n, P18254358116963323434.a n = A113405 n

end A113405

/-! ## A113405.P8153970481708134767

`A139797(n+1)+A139797(n)`
-/

namespace A113405.P8153970481708134767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139797 (n + 1) + A139797 n

end

end A113405.P8153970481708134767

namespace A113405

/-- `A139797(n+1)+A139797(n)` -/
def P8153970481708134767.Spec : Prop :=
  ∀ n, P8153970481708134767.a n = A113405 n

end A113405

/-! ## A113405.P1255297631987233482

`A348405(n+1)+A348405(n)`
-/

namespace A113405.P1255297631987233482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348405 (n + 1) + A348405 n

end

end A113405.P1255297631987233482

namespace A113405

/-- `A348405(n+1)+A348405(n)` -/
def P1255297631987233482.Spec : Prop :=
  ∀ n, P1255297631987233482.a n = A113405 n

end A113405

/-! ## A113405.P16986922686510835536

`A153234(n)+1-A088911(n)`
-/

namespace A113405.P16986922686510835536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 n + (1 - A088911 n)

end

end A113405.P16986922686510835536

namespace A113405

/-- `A153234(n)+1-A088911(n)` -/
def P16986922686510835536.Spec : Prop :=
  ∀ n, P16986922686510835536.a n = A113405 n

end A113405

/-! ## A113405.P14442276597447255590

`A131666(n)-A131531(n+1)`
-/

namespace A113405.P14442276597447255590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n - A131531 (n + 1)

end

end A113405.P14442276597447255590

namespace A113405

/-- `A131666(n)-A131531(n+1)` -/
def P14442276597447255590.Spec : Prop :=
  ∀ n, P14442276597447255590.a n = A113405 n

end A113405

/-! ## A113405.P9089287008698505485

`A328881(n)+A092220(n+2)`
-/

namespace A113405.P9089287008698505485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 n + A092220 (n + 2)

end

end A113405.P9089287008698505485

namespace A113405

/-- `A328881(n)+A092220(n+2)` -/
def P9089287008698505485.Spec : Prop :=
  ∀ n, P9089287008698505485.a n = A113405 n

end A113405

/-! ## A113405.P458983043746177070

`A153234(n)+A088911(n+3)`
-/

namespace A113405.P458983043746177070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 n + A088911 (n + 3)

end

end A113405.P458983043746177070

namespace A113405

/-- `A153234(n)+A088911(n+3)` -/
def P458983043746177070.Spec : Prop :=
  ∀ n, P458983043746177070.a n = A113405 n

end A113405

/-! ## A113405.P11753448141480770421

`A131090(n)-A131531(n+2)`
-/

namespace A113405.P11753448141480770421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 n - A131531 (n + 2)

end

end A113405.P11753448141480770421

namespace A113405

/-- `A131090(n)-A131531(n+2)` -/
def P11753448141480770421.Spec : Prop :=
  ∀ n, P11753448141480770421.a n = A113405 n

end A113405

/-! ## A113405.P16823643959758884271

`A092220(n)-(A010892(n)-A328881(n))`
-/

namespace A113405.P16823643959758884271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 n - (A010892 n - A328881 n)

end

end A113405.P16823643959758884271

namespace A113405

/-- `A092220(n)-(A010892(n)-A328881(n))` -/
def P16823643959758884271.Spec : Prop :=
  ∀ n, P16823643959758884271.a n = A113405 n

end A113405

/-! ## A113405.P7642563830663743729

`A104581(n+1)+A131666(n)+A104581(n)`
-/

namespace A113405.P7642563830663743729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104581 (n + 1) + (A131666 n + A104581 n)

end

end A113405.P7642563830663743729

namespace A113405

/-- `A104581(n+1)+A131666(n)+A104581(n)` -/
def P7642563830663743729.Spec : Prop :=
  ∀ n, P7642563830663743729.a n = A113405 n

end A113405

/-! ## A113405.P9933481393226702891

`A092220(n)+A135259(n)-A131531(n+1)`
-/

namespace A113405.P9933481393226702891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 n + (A135259 n - A131531 (n + 1))

end

end A113405.P9933481393226702891

namespace A113405

/-- `A092220(n)+A135259(n)-A131531(n+1)` -/
def P9933481393226702891.Spec : Prop :=
  ∀ n, P9933481393226702891.a n = A113405 n

end A113405

/-! ## A113405.P7195241821270612690

`A131556(n)+A135261(n)-A131531(n+2)`
-/

namespace A113405.P7195241821270612690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131556 n + (A135261 n - A131531 (n + 2))

end

end A113405.P7195241821270612690

namespace A113405

/-- `A131556(n)+A135261(n)-A131531(n+2)` -/
def P7195241821270612690.Spec : Prop :=
  ∀ n, P7195241821270612690.a n = A113405 n

end A113405

/-!
# A113406: Half the number of integer solutions to x^2 + 4 * y^2 = n.

The programs for A113406, the canonical program `A113406.P10368065744675413005` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113406 has offset 1).

The definition of A113406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1008 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113406.P13774726167367242274

`abs(A134015(n+1))`
-/

namespace A113406.P13774726167367242274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134015 (n + 1)|

end

end A113406.P13774726167367242274

namespace A113406

/-- `abs(A134015(n+1))` -/
def P13774726167367242274.Spec : Prop :=
  ∀ n, P13774726167367242274.a n = A113406 (n + 1)

end A113406

/-! ## A113406.P2960257078727702581

`A004531(n+1)/2`
-/

namespace A113406.P2960257078727702581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004531 (n + 1) : ℚ) / 2

end

end A113406.P2960257078727702581

namespace A113406

/-- `A004531(n+1)/2` -/
def P2960257078727702581.Spec : Prop :=
  ∀ n, P2960257078727702581.a n = (A113406 (n + 1) : ℚ)

end A113406

/-! ## A113406.P3696406851048473130

`abs(A134014(n+1)/2)`
-/

namespace A113406.P3696406851048473130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A134014 (n + 1) : ℚ) / 2|

end

end A113406.P3696406851048473130

namespace A113406

/-- `abs(A134014(n+1)/2)` -/
def P3696406851048473130.Spec : Prop :=
  ∀ n, P3696406851048473130.a n = (A113406 (n + 1) : ℚ)

end A113406

/-! ## A113406.P10368065744675413005

`C(2, and(3, n+2))*A002654(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A113406

/-- `C(2, and(3, n+2))*A002654(n+1)` -/
def P10368065744675413005.Spec : Prop :=
  ∀ n, P10368065744675413005.a n = A113406 (n + 1)

theorem P10368065744675413005.correct : P10368065744675413005.Spec := by
  intro n
  simp only [A113406, Nat.add_sub_cancel]

end A113406

/-! ## A113406.P947745301066085893

`A001281(A004531(n+1))`
-/

namespace A113406.P947745301066085893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A004531 (n + 1)).toNat

end

end A113406.P947745301066085893

namespace A113406

/-- `A001281(A004531(n+1))` -/
def P947745301066085893.Spec : Prop :=
  ∀ n, P947745301066085893.a n = A113406 (n + 1)

end A113406

/-! ## A113406.P8230039860139772653

`A004526(A004531(n+1)+1)`
-/

namespace A113406.P8230039860139772653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004531 (n + 1) + 1).toNat

end

end A113406.P8230039860139772653

namespace A113406

/-- `A004526(A004531(n+1)+1)` -/
def P8230039860139772653.Spec : Prop :=
  ∀ n, P8230039860139772653.a n = A113406 (n + 1)

end A113406

/-! ## A113406.P16709643974852588788

`A123108(A004531(n+1)+1)`
-/

namespace A113406.P16709643974852588788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A004531 (n + 1) + 1).toNat

end

end A113406.P16709643974852588788

namespace A113406

/-- `A123108(A004531(n+1)+1)` -/
def P16709643974852588788.Spec : Prop :=
  ∀ n, P16709643974852588788.a n = A113406 (n + 1)

end A113406

/-! ## A113406.P10184079866445110789

`A002265(2*A004531(n+1))`
-/

namespace A113406.P10184079866445110789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A004531 (n + 1)).toNat

end

end A113406.P10184079866445110789

namespace A113406

/-- `A002265(2*A004531(n+1))` -/
def P10184079866445110789.Spec : Prop :=
  ∀ n, P10184079866445110789.a n = A113406 (n + 1)

end A113406

/-! ## A113406.P5567898160082113391

`A033999(n)*A134015(n+1)`
-/

namespace A113406.P5567898160082113391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A134015 (n + 1)

end

end A113406.P5567898160082113391

namespace A113406

/-- `A033999(n)*A134015(n+1)` -/
def P5567898160082113391.Spec : Prop :=
  ∀ n, P5567898160082113391.a n = A113406 (n + 1)

end A113406

/-! ## A113406.P14928780995501504552

`A057077(n)*A134015(n+1)`
-/

namespace A113406.P14928780995501504552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A134015 (n + 1)

end

end A113406.P14928780995501504552

namespace A113406

/-- `A057077(n)*A134015(n+1)` -/
def P14928780995501504552.Spec : Prop :=
  ∀ n, P14928780995501504552.a n = A113406 (n + 1)

end A113406

/-! ## A113406.P16761947875124577149

`A102560(n)*A134015(n+1)`
-/

namespace A113406.P16761947875124577149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n * A134015 (n + 1)

end

end A113406.P16761947875124577149

namespace A113406

/-- `A102560(n)*A134015(n+1)` -/
def P16761947875124577149.Spec : Prop :=
  ∀ n, P16761947875124577149.a n = A113406 (n + 1)

end A113406

/-! ## A113406.P17289931598721161017

`gcd(A000038(n), A134015(n+1))`
-/

namespace A113406.P17289931598721161017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A134015 (n + 1))

end

end A113406.P17289931598721161017

namespace A113406

/-- `gcd(A000038(n), A134015(n+1))` -/
def P17289931598721161017.Spec : Prop :=
  ∀ n, (P17289931598721161017.a n : ℤ) = A113406 (n + 1)

end A113406

/-! ## A113406.P15476901076242771150

`lcm(A000034(n), A134015(n+1))`
-/

namespace A113406.P15476901076242771150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A134015 (n + 1))

end

end A113406.P15476901076242771150

namespace A113406

/-- `lcm(A000034(n), A134015(n+1))` -/
def P15476901076242771150.Spec : Prop :=
  ∀ n, (P15476901076242771150.a n : ℤ) = A113406 (n + 1)

end A113406

/-! ## A113406.P2827446767423599138

`∑{d}[A134015(n+1), A000010(#)]`
-/

namespace A113406.P2827446767423599138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A113406.P2827446767423599138

namespace A113406

/-- `∑{d}[A134015(n+1), A000010(#)]` -/
def P2827446767423599138.Spec : Prop :=
  ∀ n, P2827446767423599138.a n = A113406 (n + 1)

end A113406

/-! ## A113406.P7669871154286219284

`A105673(n+1)-A134013(n+1)`
-/

namespace A113406.P7669871154286219284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (n + 1) - A134013 (n + 1)

end

end A113406.P7669871154286219284

namespace A113406

/-- `A105673(n+1)-A134013(n+1)` -/
def P7669871154286219284.Spec : Prop :=
  ∀ n, P7669871154286219284.a n = A113406 (n + 1)

end A113406

/-! ## A113406.P12772475212489043367

`(1-A101455(n))*A002654(n+1)`
-/

namespace A113406.P12772475212489043367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A101455 n) * A002654 (n + 1)

end

end A113406.P12772475212489043367

namespace A113406

/-- `(1-A101455(n))*A002654(n+1)` -/
def P12772475212489043367.Spec : Prop :=
  ∀ n, P12772475212489043367.a n = A113406 (n + 1)

end A113406

/-! ## A113406.P14366568350791018319

`(2-A130731(n))*A002654(n+1)`
-/

namespace A113406.P14366568350791018319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A130731 n) * A002654 (n + 1)

end

end A113406.P14366568350791018319

namespace A113406

/-- `(2-A130731(n))*A002654(n+1)` -/
def P14366568350791018319.Spec : Prop :=
  ∀ n, P14366568350791018319.a n = A113406 (n + 1)

end A113406

/-! ## A113406.P14856377745366050901

`(A056594(n+1)+1)*A002654(n+1)`
-/

namespace A113406.P14856377745366050901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 (n + 1) + 1) * A002654 (n + 1)

end

end A113406.P14856377745366050901

namespace A113406

/-- `(A056594(n+1)+1)*A002654(n+1)` -/
def P14856377745366050901.Spec : Prop :=
  ∀ n, P14856377745366050901.a n = A113406 (n + 1)

end A113406

/-! ## A113406.P13303332790594031190

`(2-A010873(n+1))*A002654(n+1)`
-/

namespace A113406.P13303332790594031190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010873 (n + 1)) * A002654 (n + 1)

end

end A113406.P13303332790594031190

namespace A113406

/-- `(2-A010873(n+1))*A002654(n+1)` -/
def P13303332790594031190.Spec : Prop :=
  ∀ n, P13303332790594031190.a n = A113406 (n + 1)

end A113406

/-! ## A113406.P4638651101610974226

`2*A008442(n+1)-A134015(n+1)`
-/

namespace A113406.P4638651101610974226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008442 (n + 1) - A134015 (n + 1)

end

end A113406.P4638651101610974226

namespace A113406

/-- `2*A008442(n+1)-A134015(n+1)` -/
def P4638651101610974226.Spec : Prop :=
  ∀ n, P4638651101610974226.a n = A113406 (n + 1)

end A113406

/-!
# A113407: Expansion of psi(x) * phi(x^2) in powers of x where psi(), phi() are Ramanujan theta functions.

The programs for A113407, the canonical program `A113407.P13871132972543493262` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113407 has offset 0).

The definition of A113407 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113407.P13871132972543493262

`A008441(2*n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A113407

/-- `A008441(2*n)` -/
def P13871132972543493262.Spec : Prop :=
  ∀ n, P13871132972543493262.a n = A113407 n

theorem P13871132972543493262.correct : P13871132972543493262.Spec := by
  intro n
  simp only [A113407]

end A113407

/-! ## A113407.P8847797480007002535

`abs(A226192(n))`
-/

namespace A113407.P8847797480007002535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A226192 n|

end

end A113407.P8847797480007002535

namespace A113407

/-- `abs(A226192(n))` -/
def P8847797480007002535.Spec : Prop :=
  ∀ n, P8847797480007002535.a n = A113407 n

end A113407

/-! ## A113407.P11881824154380633921

`A033999(n)*A226192(n)`
-/

namespace A113407.P11881824154380633921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A226192 n

end

end A113407.P11881824154380633921

namespace A113407

/-- `A033999(n)*A226192(n)` -/
def P11881824154380633921.Spec : Prop :=
  ∀ n, P11881824154380633921.a n = A113407 n

end A113407

/-! ## A113407.P4730170081122511502

`gcd(A000038(n), A226192(n))`
-/

namespace A113407.P4730170081122511502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A226192 n)

end

end A113407.P4730170081122511502

namespace A113407

/-- `gcd(A000038(n), A226192(n))` -/
def P4730170081122511502.Spec : Prop :=
  ∀ n, (P4730170081122511502.a n : ℤ) = A113407 n

end A113407

/-! ## A113407.P10507717097321143583

`lcm(A006466(n), A226192(n))`
-/

namespace A113407.P10507717097321143583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A226192 n)

end

end A113407.P10507717097321143583

namespace A113407

/-- `lcm(A006466(n), A226192(n))` -/
def P10507717097321143583.Spec : Prop :=
  ∀ n, (P10507717097321143583.a n : ℤ) = A113407 n

end A113407

/-! ## A113407.P128118811434859476

`∑[A144874(2*n)]`
-/

namespace A113407.P128118811434859476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144874 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113407.P128118811434859476

namespace A113407

/-- `∑[A144874(2*n)]` -/
def P128118811434859476.Spec : Prop :=
  ∀ n, P128118811434859476.a n = A113407 n

end A113407

/-! ## A113407.P17399536026095019163

`2*A052343(2*n)-A005369(2*n)`
-/

namespace A113407.P17399536026095019163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052343 (2 * n) - A005369 (2 * n)

end

end A113407.P17399536026095019163

namespace A113407

/-- `2*A052343(2*n)-A005369(2*n)` -/
def P17399536026095019163.Spec : Prop :=
  ∀ n, P17399536026095019163.a n = A113407 n

end A113407

/-! ## A113407.P4512740819676026702

`A134343(2*n)`
-/

namespace A113407.P4512740819676026702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134343 (2 * n)

end

end A113407.P4512740819676026702

namespace A113407

/-- `A134343(2*n)` -/
def P4512740819676026702.Spec : Prop :=
  ∀ n, P4512740819676026702.a n = A113407 n

end A113407

/-! ## A113407.P6705821126800236408

`A004020(2*n)/2`
-/

namespace A113407.P6705821126800236408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004020 (2 * n) : ℚ) / 2

end

end A113407.P6705821126800236408

namespace A113407

/-- `A004020(2*n)/2` -/
def P6705821126800236408.Spec : Prop :=
  ∀ n, P6705821126800236408.a n = (A113407 n : ℚ)

end A113407

/-! ## A113407.P593814593812363624

`A005883(2*n)/4`
-/

namespace A113407.P593814593812363624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005883 (2 * n) : ℚ) / 4

end

end A113407.P593814593812363624

namespace A113407

/-- `A005883(2*n)/4` -/
def P593814593812363624.Spec : Prop :=
  ∀ n, P593814593812363624.a n = (A113407 n : ℚ)

end A113407

/-! ## A113407.P6638844083431531536

`abs(A134343(Δ[(n-1)²]+1))`
-/

namespace A113407.P6638844083431531536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134343 (f1 (n + 1) - f1 n + 1).toNat|

end

end A113407.P6638844083431531536

namespace A113407

/-- `abs(A134343(Δ[(n-1)²]+1))` -/
def P6638844083431531536.Spec : Prop :=
  ∀ n, P6638844083431531536.a n = A113407 n

end A113407

/-! ## A113407.P15157702620801480409

`A359227(2*n+1)-A359240(2*n+1)`
-/

namespace A113407.P15157702620801480409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359227 (2 * n + 1) - A359240 (2 * n + 1)

end

end A113407.P15157702620801480409

namespace A113407

/-- `A359227(2*n+1)-A359240(2*n+1)` -/
def P15157702620801480409.Spec : Prop :=
  ∀ n, P15157702620801480409.a n = A113407 n

end A113407

/-! ## A113407.P12288138241979240162

`A125079(4*n)`
-/

namespace A113407.P12288138241979240162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125079 (4 * n)

end

end A113407.P12288138241979240162

namespace A113407

/-- `A125079(4*n)` -/
def P12288138241979240162.Spec : Prop :=
  ∀ n, P12288138241979240162.a n = A113407 n

end A113407

/-! ## A113407.P6016146934635368876

`A116604(4*n)`
-/

namespace A113407.P6016146934635368876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (4 * n)

end

end A113407.P6016146934635368876

namespace A113407

/-- `A116604(4*n)` -/
def P6016146934635368876.Spec : Prop :=
  ∀ n, P6016146934635368876.a n = A113407 n

end A113407

/-! ## A113407.P3853710474290742562

`A129447(4*n)`
-/

namespace A113407.P3853710474290742562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129447 (4 * n)

end

end A113407.P3853710474290742562

namespace A113407

/-- `A129447(4*n)` -/
def P3853710474290742562.Spec : Prop :=
  ∀ n, P3853710474290742562.a n = A113407 n

end A113407

/-! ## A113407.P6085553802981498016

`A138741(4*n)`
-/

namespace A113407.P6085553802981498016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138741 (4 * n)

end

end A113407.P6085553802981498016

namespace A113407

/-- `A138741(4*n)` -/
def P6085553802981498016.Spec : Prop :=
  ∀ n, P6085553802981498016.a n = A113407 n

end A113407

/-! ## A113407.P12245981212211511304

`A002654(8*n+1)`
-/

namespace A113407.P12245981212211511304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (8 * n + 1)

end

end A113407.P12245981212211511304

namespace A113407

/-- `A002654(8*n+1)` -/
def P12245981212211511304.Spec : Prop :=
  ∀ n, P12245981212211511304.a n = A113407 n

end A113407

/-! ## A113407.P1874346240734026776

`A035181(8*n+1)`
-/

namespace A113407.P1874346240734026776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035181 (8 * n + 1)

end

end A113407.P1874346240734026776

namespace A113407

/-- `A035181(8*n+1)` -/
def P1874346240734026776.Spec : Prop :=
  ∀ n, P1874346240734026776.a n = A113407 n

end A113407

/-! ## A113407.P15070602931213425665

`A035184(8*n+1)`
-/

namespace A113407.P15070602931213425665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (8 * n + 1)

end

end A113407.P15070602931213425665

namespace A113407

/-- `A035184(8*n+1)` -/
def P15070602931213425665.Spec : Prop :=
  ∀ n, P15070602931213425665.a n = A113407 n

end A113407

/-! ## A113407.P1708194040901063420

`A113446(8*n+1)`
-/

namespace A113407.P1708194040901063420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (8 * n + 1)

end

end A113407.P1708194040901063420

namespace A113407

/-- `A113446(8*n+1)` -/
def P1708194040901063420.Spec : Prop :=
  ∀ n, P1708194040901063420.a n = A113407 n

end A113407

/-!
# A113408: Riordan array (1/(1-x^2-x^4*c(x^4)),x*c(x^2)), c(x) the g.f. of A000108.

The programs for A113408, the canonical program `A113408.P246085839438288403` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113408 has offset 0).

The definition of A113408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113408.P246085839438288403

`A168561(n)*A210736(A135840(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A113408

/-- `A168561(n)*A210736(A135840(n+1))` -/
def P246085839438288403.Spec : Prop :=
  ∀ n, P246085839438288403.a n = A113408 n

theorem P246085839438288403.correct : P246085839438288403.Spec := by
  intro n
  simp only [A113408]

end A113408

/-! ## A113408.P4108820592691726984

`A168561(n)*A210736(A209278(n+1))`
-/

namespace A113408.P4108820592691726984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 n * A210736 (A209278 (n + 1)).toNat

end

end A113408.P4108820592691726984

namespace A113408

/-- `A168561(n)*A210736(A209278(n+1))` -/
def P4108820592691726984.Spec : Prop :=
  ∀ n, P4108820592691726984.a n = A113408 n

end A113408

/-! ## A113408.P11038680387142809589

`A242653(n)/A336138(A144157(n))`
-/

namespace A113408.P11038680387142809589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242653 n : ℚ) / (A336138 (A144157 n).toNat : ℚ)

end

end A113408.P11038680387142809589

namespace A113408

/-- `A242653(n)/A336138(A144157(n))` -/
def P11038680387142809589.Spec : Prop :=
  ∀ n, P11038680387142809589.a n = (A113408 n : ℚ)

end A113408

/-! ## A113408.P4516212464319883145

`A002033(A119502(n))*A168561(n)`
-/

namespace A113408.P4516212464319883145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A119502 n).toNat * A168561 n

end

end A113408.P4516212464319883145

namespace A113408

/-- `A002033(A119502(n))*A168561(n)` -/
def P4516212464319883145.Spec : Prop :=
  ∀ n, P4516212464319883145.a n = A113408 n

end A113408

/-! ## A113408.P3094157665716393708

`A039953(A257493(n+2))*A168561(n)`
-/

namespace A113408.P3094157665716393708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039953 (A257493 (n + 2)).toNat * A168561 n

end

end A113408.P3094157665716393708

namespace A113408

/-- `A039953(A257493(n+2))*A168561(n)` -/
def P3094157665716393708.Spec : Prop :=
  ∀ n, P3094157665716393708.a n = A113408 n

end A113408

/-!
# A113409: A transform of the central binomial coefficients A001405.

The programs for A113409, there is no canonical definition to state claims against.
-/

/-! ## A113409.P933820871002696261

`A098482(n)+Δ[A098482(n+1)/2]`
-/

namespace A113409.P933820871002696261
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098482 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098482 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A113409.P933820871002696261

/-! ## A113409.P4162397108929916745

`A054404(A164250(n)+1)`
-/

namespace A113409.P4162397108929916745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A164250 n + 1).toNat

end

end A113409.P4162397108929916745

/-! ## A113409.P17929927727963093210

`A054846(A261492(n)+1)-1`
-/

namespace A113409.P17929927727963093210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A261492 n + 1).toNat - 1

end

end A113409.P17929927727963093210

/-! ## A113409.P7361407595847452131

`round(sqrt(A092636(n+1)/A001333(n+1)))`
-/

namespace A113409.P7361407595847452131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A092636 (n + 1) : ℚ) / (A001333 (n + 1) : ℚ) : ℝ))

end

end A113409.P7361407595847452131

/-! ## A113409.P16050513185728219715

`A100196(A000635(n)+A000598(n))`
-/

namespace A113409.P16050513185728219715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A000635 n + A000598 n).toNat

end

end A113409.P16050513185728219715

/-!
# A113410: Numbers n such that n^2 is of the form k-th prime - k for some k.

The programs for A113410, there is no canonical definition to state claims against.
-/

/-! ## A113410.P17174679062710406644

`record[A056926(A014689(n+1))]`
-/

namespace A113410.P17174679062710406644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A014689 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113410.P17174679062710406644

/-! ## A113410.P1044869177435092987

`record[A056926(A107608(n+1))]`
-/

namespace A113410.P1044869177435092987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A107608 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113410.P1044869177435092987

/-! ## A113410.P14598531784931246365

`record[A056926(A104193(n+1)-A277127(n+1))]`
-/

namespace A113410.P14598531784931246365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A104193 (n + 1) - A277127 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113410.P14598531784931246365

/-! ## A113410.P14768781409530543625

`eq[1, A010051(A018252((n+1)²)+1)]+1`
-/

namespace A113410.P14768781409530543625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A018252 ((n + 1) ^ 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A113410.P14768781409530543625

/-! ## A113410.P13364237589975001958

`record[(n+1)*A010051(A018252((n+1)*(n+1))+1)]`
-/

namespace A113410.P13364237589975001958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (A018252 ((n + 1) * (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113410.P13364237589975001958

/-!
# A113411: Excess of number of divisors of 2n+1 of form 8k+1, 8k+3 over those of form 8k+5, 8k+7.

The programs for A113411, the canonical program `A113411.P7322574785937454871` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113411 has offset 0).

The definition of A113411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113411.P7322574785937454871

`∑{d}[2*n+1, (-1)^C(#, 4)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113411

/-- `∑{d}[2*n+1, (-1)^C(#, 4)]` -/
def P7322574785937454871.Spec : Prop :=
  ∀ n, P7322574785937454871.a n = A113411 n

theorem P7322574785937454871.correct : P7322574785937454871.Spec := by
  intro n
  simp only [A113411]

end A113411

/-! ## A113411.P4586851724338857450

`abs(A125095(n))`
-/

namespace A113411.P4586851724338857450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A125095 n|

end

end A113411.P4586851724338857450

namespace A113411

/-- `abs(A125095(n))` -/
def P4586851724338857450.Spec : Prop :=
  ∀ n, P4586851724338857450.a n = A113411 n

end A113411

/-! ## A113411.P9974018527136860343

`A033999(n)*A125095(n)`
-/

namespace A113411.P9974018527136860343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A125095 n

end

end A113411.P9974018527136860343

namespace A113411

/-- `A033999(n)*A125095(n)` -/
def P9974018527136860343.Spec : Prop :=
  ∀ n, P9974018527136860343.a n = A113411 n

end A113411

/-! ## A113411.P9407149019262508596

`A087960(n)*A125095(n)`
-/

namespace A113411.P9407149019262508596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A125095 n

end

end A113411.P9407149019262508596

namespace A113411

/-- `A087960(n)*A125095(n)` -/
def P9407149019262508596.Spec : Prop :=
  ∀ n, P9407149019262508596.a n = A113411 n

end A113411

/-! ## A113411.P17114177313014947675

`A094267(n)*A125095(n)`
-/

namespace A113411.P17114177313014947675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n * A125095 n

end

end A113411.P17114177313014947675

namespace A113411

/-- `A094267(n)*A125095(n)` -/
def P17114177313014947675.Spec : Prop :=
  ∀ n, P17114177313014947675.a n = A113411 n

end A113411

/-! ## A113411.P517447114409177619

`A125095(n)*A219977(n)`
-/

namespace A113411.P517447114409177619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125095 n * A219977 n

end

end A113411.P517447114409177619

namespace A113411

/-- `A125095(n)*A219977(n)` -/
def P517447114409177619.Spec : Prop :=
  ∀ n, P517447114409177619.a n = A113411 n

end A113411

/-! ## A113411.P3080995449283836119

`gcd(A000038(n), A125095(n))`
-/

namespace A113411.P3080995449283836119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A125095 n)

end

end A113411.P3080995449283836119

namespace A113411

/-- `gcd(A000038(n), A125095(n))` -/
def P3080995449283836119.Spec : Prop :=
  ∀ n, (P3080995449283836119.a n : ℤ) = A113411 n

end A113411

/-! ## A113411.P729316126398397766

`lcm(A000034(n), A125095(n))`
-/

namespace A113411.P729316126398397766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A125095 n)

end

end A113411.P729316126398397766

namespace A113411

/-- `lcm(A000034(n), A125095(n))` -/
def P729316126398397766.Spec : Prop :=
  ∀ n, (P729316126398397766.a n : ℤ) = A113411 n

end A113411

/-! ## A113411.P986664894071817140

`A071935(n+1)*A125095(n)`
-/

namespace A113411.P986664894071817140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1) * A125095 n

end

end A113411.P986664894071817140

namespace A113411

/-- `A071935(n+1)*A125095(n)` -/
def P986664894071817140.Spec : Prop :=
  ∀ n, P986664894071817140.a n = A113411 n

end A113411

/-! ## A113411.P13035538121281393887

`A122071(n)*A254046(n+1)`
-/

namespace A113411.P13035538121281393887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122071 n * A254046 (n + 1)

end

end A113411.P13035538121281393887

namespace A113411

/-- `A122071(n)*A254046(n+1)` -/
def P13035538121281393887.Spec : Prop :=
  ∀ n, P13035538121281393887.a n = A113411 n

end A113411

/-! ## A113411.P13297476246615865805

`A125095(n)*A309873(n+1)`
-/

namespace A113411.P13297476246615865805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125095 n * A309873 (n + 1)

end

end A113411.P13297476246615865805

namespace A113411

/-- `A125095(n)*A309873(n+1)` -/
def P13297476246615865805.Spec : Prop :=
  ∀ n, P13297476246615865805.a n = A113411 n

end A113411

/-! ## A113411.P12480826562008845988

`A002325(Δ[n²])`
-/

namespace A113411.P12480826562008845988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A113411.P12480826562008845988

namespace A113411

/-- `A002325(Δ[n²])` -/
def P12480826562008845988.Spec : Prop :=
  ∀ n, P12480826562008845988.a n = A113411 n

end A113411

/-! ## A113411.P14980546942840136950

`A125096(Δ[n²])`
-/

namespace A113411.P14980546942840136950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125096 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A113411.P14980546942840136950

namespace A113411

/-- `A125096(Δ[n²])` -/
def P14980546942840136950.Spec : Prop :=
  ∀ n, P14980546942840136950.a n = A113411 n

end A113411

/-! ## A113411.P9017356156952063959

`A129438(Δ[n²])`
-/

namespace A113411.P9017356156952063959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129438 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A113411.P9017356156952063959

namespace A113411

/-- `A129438(Δ[n²])` -/
def P9017356156952063959.Spec : Prop :=
  ∀ n, P9017356156952063959.a n = A113411 n

end A113411

/-! ## A113411.P14236917069490672468

`A133693(Δ[n²])`
-/

namespace A113411.P14236917069490672468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133693 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A113411.P14236917069490672468

namespace A113411

/-- `A133693(Δ[n²])` -/
def P14236917069490672468.Spec : Prop :=
  ∀ n, P14236917069490672468.a n = A113411 n

end A113411

/-! ## A113411.P12645412291033324643

`A244543(Δ[n²])`
-/

namespace A113411.P12645412291033324643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244543 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A113411.P12645412291033324643

namespace A113411

/-- `A244543(Δ[n²])` -/
def P12645412291033324643.Spec : Prop :=
  ∀ n, P12645412291033324643.a n = A113411 n

end A113411

/-! ## A113411.P10028404426241346516

`A244553(Δ[n²])`
-/

namespace A113411.P10028404426241346516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244553 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A113411.P10028404426241346516

namespace A113411

/-- `A244553(Δ[n²])` -/
def P10028404426241346516.Spec : Prop :=
  ∀ n, P10028404426241346516.a n = A113411 n

end A113411

/-! ## A113411.P15610337059626692993

`A033715(Δ[n²])/2`
-/

namespace A113411.P15610337059626692993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033715 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A113411.P15610337059626692993

namespace A113411

/-- `A033715(Δ[n²])/2` -/
def P15610337059626692993.Spec : Prop :=
  ∀ n, P15610337059626692993.a n = (A113411 n : ℚ)

end A113411

/-! ## A113411.P16865128868179021822

`A245572(Δ[n²])/2`
-/

namespace A113411.P16865128868179021822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245572 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A113411.P16865128868179021822

namespace A113411

/-- `A245572(Δ[n²])/2` -/
def P16865128868179021822.Spec : Prop :=
  ∀ n, P16865128868179021822.a n = (A113411 n : ℚ)

end A113411

/-! ## A113411.P1943650271846581827

`abs(A133693(2*n+1))`
-/

namespace A113411.P1943650271846581827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133693 (2 * n + 1)|

end

end A113411.P1943650271846581827

namespace A113411

/-- `abs(A133693(2*n+1))` -/
def P1943650271846581827.Spec : Prop :=
  ∀ n, P1943650271846581827.a n = A113411 n

end A113411

/-!
# A113412: Number of Pierpont primes less than 10^(2^n).

The programs for A113412, there is no canonical definition to state claims against.
-/

/-! ## A113412.P16249093707910607586

`A113420(2^n)`
-/

namespace A113412.P16249093707910607586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113420 (2 ^ n)

end

end A113412.P16249093707910607586

/-! ## A113412.P3077014540809554661

`record[A113420(A001316(n))]`
-/

namespace A113412.P3077014540809554661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113420 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113412.P3077014540809554661

/-! ## A113412.P14809163362153109614

`record[A113420(A029930(n))]`
-/

namespace A113412.P14809163362153109614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113420 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113412.P14809163362153109614

/-! ## A113412.P6659888045282894873

`record[A113420(A059268(n))]`
-/

namespace A113412.P6659888045282894873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113420 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113412.P6659888045282894873

/-! ## A113412.P12083047695913132457

`record[A113420(A068009(n))]`
-/

namespace A113412.P12083047695913132457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113420 (A068009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113412.P12083047695913132457

/-!
# A113413: A Riordan array of coordination sequences.

The programs for A113413, there is no canonical definition to state claims against.
-/

/-! ## A113413.P5435446770609421586

`abs(A080246(n))`
-/

namespace A113413.P5435446770609421586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080246 n|

end

end A113413.P5435446770609421586

/-! ## A113413.P2436229620000420474

`A080246(n)*A097807(n)`
-/

namespace A113413.P2436229620000420474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080246 n * A097807 n

end

end A113413.P2436229620000420474

/-! ## A113413.P8339392449759287922

`gcd(A000038(n), A080246(n))`
-/

namespace A113413.P8339392449759287922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A080246 n)

end

end A113413.P8339392449759287922

/-! ## A113413.P9414095245225423882

`lcm(A020985(n), A080246(n))`
-/

namespace A113413.P9414095245225423882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A080246 n)

end

end A113413.P9414095245225423882

/-! ## A113413.P4694729058809484484

`2*A008288(n)-A122542(n)`
-/

namespace A113413.P4694729058809484484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008288 n - A122542 n

end

end A113413.P4694729058809484484

/-! ## A113413.P2031816956919563662

`A035607(n)+A266213(n)-A122542(n)`
-/

namespace A113413.P2031816956919563662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 n + (A266213 n - A122542 n)

end

end A113413.P2031816956919563662

/-! ## A113413.P16828877503497536754

`A080246(n)/A110441(n)*A111806(n)`
-/

namespace A113413.P16828877503497536754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080246 n : ℚ) / (A110441 n : ℚ) * (A111806 n : ℚ)

end

end A113413.P16828877503497536754

/-! ## A113413.P12893231913055221916

`A035607(n+1)+A008288(n)-A008288(n+1)`
-/

namespace A113413.P12893231913055221916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (n + 1) + (A008288 n - A008288 (n + 1))

end

end A113413.P12893231913055221916

/-! ## A113413.P3208887857223852062

`A008288(n+1)+A008288(n)-A266213(n+1)`
-/

namespace A113413.P3208887857223852062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (n + 1) + (A008288 n - A266213 (n + 1))

end

end A113413.P3208887857223852062

/-! ## A113413.P6059950740633980375

`A035607(A061579(n))`
-/

namespace A113413.P6059950740633980375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A061579 n).toNat

end

end A113413.P6059950740633980375

/-! ## A113413.P1938758029576780259

`A035607(A038722(n+1)-1)`
-/

namespace A113413.P1938758029576780259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A038722 (n + 1) - 1).toNat

end

end A113413.P1938758029576780259

/-! ## A113413.P14207227908248343626

`A035607(A038722(n+2))`
-/

namespace A113413.P14207227908248343626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035607 (A038722 (n + 2)).toNat

end

end A113413.P14207227908248343626

/-! ## A113413.P16089453246369009358

`A266213(A007401(n+1))+A266213(n)-A122542(n)`
-/

namespace A113413.P16089453246369009358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A007401 (n + 1)).toNat + (A266213 n - A122542 n)

end

end A113413.P16089453246369009358

/-! ## A113413.P16144006392611030686

`A122542(comp[∑[n]])`
-/

namespace A113413.P16144006392611030686
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A113413.P16144006392611030686

/-! ## A113413.P4067199884209522372

`A266213(A099375(n)+n)`
-/

namespace A113413.P4067199884209522372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A099375 n + (n : ℤ)).toNat

end

end A113413.P4067199884209522372

/-! ## A113413.P9062382866848583750

`A266213(A007401(n+1)+A061579(n)-n)`
-/

namespace A113413.P9062382866848583750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A007401 (n + 1) + (A061579 n - (n : ℤ))).toNat

end

end A113413.P9062382866848583750

/-! ## A113413.P6887591512001719856

`A080245(n)/A080247(n)*A080246(n)`
-/

namespace A113413.P6887591512001719856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080245 n : ℚ) / (A080247 n : ℚ) * (A080246 n : ℚ)

end

end A113413.P6887591512001719856

/-! ## A113413.P11119838335940416438

`A266213(n)+A128966(n)`
-/

namespace A113413.P11119838335940416438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 n + A128966 n

end

end A113413.P11119838335940416438

/-! ## A113413.P6284289091215115105

`2*A140750(A001614(n+1))-A122542(n)`
-/

namespace A113413.P6284289091215115105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140750 (A001614 (n + 1)).toNat - A122542 n

end

end A113413.P6284289091215115105

/-! ## A113413.P3279095845547457724

`∑{d}[A080246(n), A000010(#)]`
-/

namespace A113413.P3279095845547457724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A113413.P3279095845547457724

/-!
# A113414: Expansion of Sum_{k>0} x^k/(1-(-x^2)^k).

The programs for A113414, the canonical program `A113414.P14663272806087347822` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113414 has offset 1).

The definition of A113414 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, A001842, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113414.P14663272806087347822

`A001826(n+1)+(-1)^(n+1)*A001842(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A113414

/-- `A001826(n+1)+(-1)^(n+1)*A001842(n+1)` -/
def P14663272806087347822.Spec : Prop :=
  ∀ n, P14663272806087347822.a n = A113414 (n + 1)

theorem P14663272806087347822.correct : P14663272806087347822.Spec := by
  intro n
  simp only [A113414, Nat.add_sub_cancel]

end A113414

/-! ## A113414.P8404864618405883066

`∑{d}[n+1, A056594(#-1)^(n+1)]`
-/

namespace A113414.P8404864618405883066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056594 (d - 1) ^ (n + 1)

end

end A113414.P8404864618405883066

namespace A113414

/-- `∑{d}[n+1, A056594(#-1)^(n+1)]` -/
def P8404864618405883066.Spec : Prop :=
  ∀ n, P8404864618405883066.a n = A113414 (n + 1)

end A113414

/-! ## A113414.P7036241201416885092

`A008442(n+1)+A000035(n)*A001227(n+1)`
-/

namespace A113414.P7036241201416885092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008442 (n + 1) + A000035 n * A001227 (n + 1)

end

end A113414.P7036241201416885092

namespace A113414

/-- `A008442(n+1)+A000035(n)*A001227(n+1)` -/
def P7036241201416885092.Spec : Prop :=
  ∀ n, P7036241201416885092.a n = A113414 (n + 1)

end A113414

/-! ## A113414.P9651546578926962511

`abs(∑{d}[n+1, A163805(#)^(n+1)])`
-/

namespace A113414.P9651546578926962511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), A163805 d ^ (n + 1)|

end

end A113414.P9651546578926962511

namespace A113414

/-- `abs(∑{d}[n+1, A163805(#)^(n+1)])` -/
def P9651546578926962511.Spec : Prop :=
  ∀ n, P9651546578926962511.a n = A113414 (n + 1)

end A113414

/-! ## A113414.P7082896557815790480

`∑{d}[n+1, A163805(#+2)^(n+1)]`
-/

namespace A113414.P7082896557815790480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A163805 (d + 2) ^ (n + 1)

end

end A113414.P7082896557815790480

namespace A113414

/-- `∑{d}[n+1, A163805(#+2)^(n+1)]` -/
def P7082896557815790480.Spec : Prop :=
  ∀ n, P7082896557815790480.a n = A113414 (n + 1)

end A113414

/-! ## A113414.P7829013380660122263

`and(A073706(n+1), A320107(n+1))`
-/

namespace A113414.P7829013380660122263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073706 (n + 1)) (A320107 (n + 1))

end

end A113414.P7829013380660122263

namespace A113414

/-- `and(A073706(n+1), A320107(n+1))` -/
def P7829013380660122263.Spec : Prop :=
  ∀ n, P7829013380660122263.a n = A113414 (n + 1)

end A113414

/-!
# A113415: Expansion of Sum_{k>0} x^k/(1-x^(2k))^2.

The programs for A113415, the canonical program `A113415.P5418094861117166692` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113415 has offset 1).

The definition of A113415 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349371, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113415.P12291338237533544474

`A069734(A000265(n+1))`
-/

namespace A113415.P12291338237533544474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069734 (A000265 (n + 1)).toNat

end

end A113415.P12291338237533544474

namespace A113415

/-- `A069734(A000265(n+1))` -/
def P12291338237533544474.Spec : Prop :=
  ∀ n, P12291338237533544474.a n = A113415 (n + 1)

end A113415

/-! ## A113415.P7637571734070321634

`A336840(A064989(n+1))`
-/

namespace A113415.P7637571734070321634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336840 (A064989 (n + 1)).toNat

end

end A113415.P7637571734070321634

namespace A113415

/-- `A336840(A064989(n+1))` -/
def P7637571734070321634.Spec : Prop :=
  ∀ n, P7637571734070321634.a n = A113415 (n + 1)

end A113415

/-! ## A113415.P5418094861117166692

`A349371(n+1)/A001511(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A113415

/-- `A349371(n+1)/A001511(n+1)` -/
def P5418094861117166692.Spec : Prop :=
  ∀ n, P5418094861117166692.a n = (A113415 (n + 1) : ℚ)

end A113415

/-! ## A113415.P6987358825460486569

`1/2*(A000593(n+1)+A001227(n+1))`
-/

namespace A113415.P6987358825460486569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000593 (n + 1) + A001227 (n + 1) : ℚ)

end

end A113415.P6987358825460486569

namespace A113415

/-- `1/2*(A000593(n+1)+A001227(n+1))` -/
def P6987358825460486569.Spec : Prop :=
  ∀ n, P6987358825460486569.a n = (A113415 (n + 1) : ℚ)

end A113415

/-! ## A113415.P3397735636615072704

`A349916(4*(n+1))`
-/

namespace A113415.P3397735636615072704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349916 (4 * (n + 1))

end

end A113415.P3397735636615072704

namespace A113415

/-- `A349916(4*(n+1))` -/
def P3397735636615072704.Spec : Prop :=
  ∀ n, P3397735636615072704.a n = A113415 (n + 1)

end A113415

/-! ## A113415.P8801910409305049871

`∑{d}[n+1, A027656(#-1)]`
-/

namespace A113415.P8801910409305049871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A027656 (d - 1)

end

end A113415.P8801910409305049871

namespace A113415

/-- `∑{d}[n+1, A027656(#-1)]` -/
def P8801910409305049871.Spec : Prop :=
  ∀ n, P8801910409305049871.a n = A113415 (n + 1)

end A113415

/-! ## A113415.P206931445180976714

`∑{d}[(n+1)/and(n+1, -(n+1)), A065033(#)]`
-/

namespace A113415.P206931445180976714
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A065033 d

end

end A113415.P206931445180976714

namespace A113415

/-- `∑{d}[(n+1)/and(n+1, -(n+1)), A065033(#)]` -/
def P206931445180976714.Spec : Prop :=
  ∀ n, P206931445180976714.a n = A113415 (n + 1)

end A113415

/-! ## A113415.P4054306437164251064

`A364063(A003602(n+1))`
-/

namespace A113415.P4054306437164251064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364063 (A003602 (n + 1)).toNat

end

end A113415.P4054306437164251064

namespace A113415

/-- `A364063(A003602(n+1))` -/
def P4054306437164251064.Spec : Prop :=
  ∀ n, P4054306437164251064.a n = A113415 (n + 1)

end A113415

/-! ## A113415.P14309354822503304383

`A079247(A000265(2*(n+1)))`
-/

namespace A113415.P14309354822503304383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079247 (A000265 (2 * (n + 1))).toNat

end

end A113415.P14309354822503304383

namespace A113415

/-- `A079247(A000265(2*(n+1)))` -/
def P14309354822503304383.Spec : Prop :=
  ∀ n, P14309354822503304383.a n = A113415 (n + 1)

end A113415

/-! ## A113415.P16380090075924453875

`A349371(A000265(2*n+2))`
-/

namespace A113415.P16380090075924453875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349371 (A000265 (2 * n + 2)).toNat

end

end A113415.P16380090075924453875

namespace A113415

/-- `A349371(A000265(2*n+2))` -/
def P16380090075924453875.Spec : Prop :=
  ∀ n, P16380090075924453875.a n = A113415 (n + 1)

end A113415

/-! ## A113415.P13800895945671469881

`∑{d}[A064989(n+1), A048673(#)]`
-/

namespace A113415.P13800895945671469881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A048673 d

end

end A113415.P13800895945671469881

namespace A113415

/-- `∑{d}[A064989(n+1), A048673(#)]` -/
def P13800895945671469881.Spec : Prop :=
  ∀ n, P13800895945671469881.a n = A113415 (n + 1)

end A113415

/-! ## A113415.P14459915532944370030

`A002131(n+1)-A086670(n+1)`
-/

namespace A113415.P14459915532944370030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) - A086670 (n + 1)

end

end A113415.P14459915532944370030

namespace A113415

/-- `A002131(n+1)-A086670(n+1)` -/
def P14459915532944370030.Spec : Prop :=
  ∀ n, P14459915532944370030.a n = A113415 (n + 1)

end A113415

/-! ## A113415.P12142851152741335633

`A349916(n+1)-A349915(n+1)`
-/

namespace A113415.P12142851152741335633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349916 (n + 1) - A349915 (n + 1)

end

end A113415.P12142851152741335633

namespace A113415

/-- `A349916(n+1)-A349915(n+1)` -/
def P12142851152741335633.Spec : Prop :=
  ∀ n, P12142851152741335633.a n = A113415 (n + 1)

end A113415

/-! ## A113415.P8348140894001178764

`A349371((n+1)/A006519(n+1))`
-/

namespace A113415.P8348140894001178764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349371 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A113415.P8348140894001178764

namespace A113415

/-- `A349371((n+1)/A006519(n+1))` -/
def P8348140894001178764.Spec : Prop :=
  ∀ n, P8348140894001178764.a n = A113415 (n + 1)

end A113415

/-! ## A113415.P18009928009411981819

`A014682(∑{d}[A000265(n+1), #+1])`
-/

namespace A113415.P18009928009411981819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ d ∈ Nat.divisors (f1 n).natAbs, (d + 1))

end

end A113415.P18009928009411981819

namespace A113415

/-- `A014682(∑{d}[A000265(n+1), #+1])` -/
def P18009928009411981819.Spec : Prop :=
  ∀ n, P18009928009411981819.a n = A113415 (n + 1)

end A113415

/-! ## A113415.P6225521126985781714

`(A001227(n+1)+A000593(n+1))/2`
-/

namespace A113415.P6225521126985781714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) + A000593 (n + 1) : ℚ) / 2

end

end A113415.P6225521126985781714

namespace A113415

/-- `(A001227(n+1)+A000593(n+1))/2` -/
def P6225521126985781714.Spec : Prop :=
  ∀ n, P6225521126985781714.a n = (A113415 (n + 1) : ℚ)

end A113415

/-! ## A113415.P8129412123347289339

`A349371(2*(n+1))-A349371(n+1)`
-/

namespace A113415.P8129412123347289339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349371 (2 * (n + 1)) - A349371 (n + 1)

end

end A113415.P8129412123347289339

namespace A113415

/-- `A349371(2*(n+1))-A349371(n+1)` -/
def P8129412123347289339.Spec : Prop :=
  ∀ n, P8129412123347289339.a n = A113415 (n + 1)

end A113415

/-! ## A113415.P16211925776010195165

`∑{d}[n+1, A000005(#)*A349444((n+1)/#)]`
-/

namespace A113415.P16211925776010195165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A349444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113415.P16211925776010195165

namespace A113415

/-- `∑{d}[n+1, A000005(#)*A349444((n+1)/#)]` -/
def P16211925776010195165.Spec : Prop :=
  ∀ n, P16211925776010195165.a n = A113415 (n + 1)

end A113415

/-! ## A113415.P6536227057118523312

`∑{d}[n+1, A000593(#)*A349447((n+1)/#)]`
-/

namespace A113415.P6536227057118523312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A349447 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113415.P6536227057118523312

namespace A113415

/-- `∑{d}[n+1, A000593(#)*A349447((n+1)/#)]` -/
def P6536227057118523312.Spec : Prop :=
  ∀ n, P6536227057118523312.a n = A113415 (n + 1)

end A113415

/-! ## A113415.P8685132094069583524

`∑{d}[n+1, A001227(#)*A349136((n+1)/#)]`
-/

namespace A113415.P8685132094069583524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A349136 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113415.P8685132094069583524

namespace A113415

/-- `∑{d}[n+1, A001227(#)*A349136((n+1)/#)]` -/
def P8685132094069583524.Spec : Prop :=
  ∀ n, P8685132094069583524.a n = A113415 (n + 1)

end A113415

/-!
# A113416: Expansion of eta(q^2)^7*eta(q^4)/(eta(q)*eta(q^8)^2) in powers of q.

The programs for A113416, there is no canonical definition to state claims against.
-/

/-! ## A113416.P5824316864018487090

`(-1)^n*A131999(n)`
-/

namespace A113416.P5824316864018487090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A131999 n

end

end A113416.P5824316864018487090

/-! ## A113416.P16050037747325172167

`A131999(n)*A209940(n)/A258096(n)`
-/

namespace A113416.P16050037747325172167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131999 n * A209940 n : ℚ) / (A258096 n : ℚ)

end

end A113416.P16050037747325172167

/-! ## A113416.P9827299486741546948

`A131999(A005843(n))/A033999(n)`
-/

namespace A113416.P9827299486741546948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131999 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A113416.P9827299486741546948

/-! ## A113416.P10951573963122208954

`2*A320193(n)-A320193(A005843(n))`
-/

namespace A113416.P10951573963122208954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320193 n - A320193 (A005843 n).toNat

end

end A113416.P10951573963122208954

/-! ## A113416.P12770351265604940527

`A005843(A320193(n))-A320193(A005843(n))`
-/

namespace A113416.P12770351265604940527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A320193 n).toNat - A320193 (A005843 n).toNat

end

end A113416.P12770351265604940527

/-! ## A113416.P16619181189387957914

`A131999(A008586(n))/A033999(n)`
-/

namespace A113416.P16619181189387957914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131999 (A008586 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A113416.P16619181189387957914

/-!
# A113417: Expansion of phi(x) * phi(-x)^2 * psi(x^4) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A113417, the canonical program `A113417.P14092830831869927536` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113417 has offset 0).

The definition of A113417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113417.P10522041531449072591

`(-1)^n*A113419(n)`
-/

namespace A113417.P10522041531449072591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113419 n

end

end A113417.P10522041531449072591

namespace A113417

/-- `(-1)^n*A113419(n)` -/
def P10522041531449072591.Spec : Prop :=
  ∀ n, P10522041531449072591.a n = A113417 n

end A113417

/-! ## A113417.P12066795315561004999

`(-1)^floor(n/2)*A209940(n)`
-/

namespace A113417.P12066795315561004999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A209940 n : ℚ)

end

end A113417.P12066795315561004999

namespace A113417

/-- `(-1)^floor(n/2)*A209940(n)` -/
def P12066795315561004999.Spec : Prop :=
  ∀ n, P12066795315561004999.a n = (A113417 n : ℚ)

end A113417

/-! ## A113417.P7101118895169189310

`(-1)^(n+floor(n/2))*A258096(n)`
-/

namespace A113417.P7101118895169189310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ ((n : ℤ) + ⌊(n : ℚ) / 2⌋ : ℤ) * (A258096 n : ℚ)

end

end A113417.P7101118895169189310

namespace A113417

/-- `(-1)^(n+floor(n/2))*A258096(n)` -/
def P7101118895169189310.Spec : Prop :=
  ∀ n, P7101118895169189310.a n = (A113417 n : ℚ)

end A113417

/-! ## A113417.P9230012521712746347

`A117000(2*n+1)`
-/

namespace A113417.P9230012521712746347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117000 (2 * n + 1)

end

end A113417.P9230012521712746347

namespace A113417

/-- `A117000(2*n+1)` -/
def P9230012521712746347.Spec : Prop :=
  ∀ n, P9230012521712746347.a n = A113417 n

end A113417

/-! ## A113417.P12450632436840089507

`A113419(n)/A033999(n)`
-/

namespace A113417.P12450632436840089507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113419 n : ℚ) / (A033999 n : ℚ)

end

end A113417.P12450632436840089507

namespace A113417

/-- `A113419(n)/A033999(n)` -/
def P12450632436840089507.Spec : Prop :=
  ∀ n, P12450632436840089507.a n = (A113417 n : ℚ)

end A113417

/-! ## A113417.P5588355990137854227

`A113419(n)/A057077(A057077(n)+n)`
-/

namespace A113417.P5588355990137854227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113419 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A113417.P5588355990137854227

namespace A113417

/-- `A113419(n)/A057077(A057077(n)+n)` -/
def P5588355990137854227.Spec : Prop :=
  ∀ n, P5588355990137854227.a n = (A113417 n : ℚ)

end A113417

/-! ## A113417.P9793650295145483400

`A109039(n)*A113419(n)/A257656(n)`
-/

namespace A113417.P9793650295145483400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109039 n * A113419 n : ℚ) / (A257656 n : ℚ)

end

end A113417.P9793650295145483400

namespace A113417

/-- `A109039(n)*A113419(n)/A257656(n)` -/
def P9793650295145483400.Spec : Prop :=
  ∀ n, P9793650295145483400.a n = (A113417 n : ℚ)

end A113417

/-! ## A113417.P13895822994544934740

`A113419(n)*A209940(n)/A258096(n)`
-/

namespace A113417.P13895822994544934740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113419 n * A209940 n : ℚ) / (A258096 n : ℚ)

end

end A113417.P13895822994544934740

namespace A113417

/-- `A113419(n)*A209940(n)/A258096(n)` -/
def P13895822994544934740.Spec : Prop :=
  ∀ n, P13895822994544934740.a n = (A113417 n : ℚ)

end A113417

/-! ## A113417.P7829958604788701910

`lcm(A087960(n), A113419(n))*A087960(n)`
-/

namespace A113417.P7829958604788701910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A087960 n) (A113419 n) : ℤ) * A087960 n

end

end A113417.P7829958604788701910

namespace A113417

/-- `lcm(A087960(n), A113419(n))*A087960(n)` -/
def P7829958604788701910.Spec : Prop :=
  ∀ n, P7829958604788701910.a n = A113417 n

end A113417

/-! ## A113417.P12377049017705751223

`A113418(Δ[n²])`
-/

namespace A113417.P12377049017705751223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113418 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A113417.P12377049017705751223

namespace A113417

/-- `A113418(Δ[n²])` -/
def P12377049017705751223.Spec : Prop :=
  ∀ n, P12377049017705751223.a n = A113417 n

end A113417

/-! ## A113417.P16713379374855616037

`A256357(Δ[n²])`
-/

namespace A113417.P16713379374855616037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256357 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A113417.P16713379374855616037

namespace A113417

/-- `A256357(Δ[n²])` -/
def P16713379374855616037.Spec : Prop :=
  ∀ n, P16713379374855616037.a n = A113417 n

end A113417

/-! ## A113417.P11852980984470297035

`A113416(Δ[n²])/2`
-/

namespace A113417.P11852980984470297035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113416 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A113417.P11852980984470297035

namespace A113417

/-- `A113416(Δ[n²])/2` -/
def P11852980984470297035.Spec : Prop :=
  ∀ n, P11852980984470297035.a n = (A113417 n : ℚ)

end A113417

/-! ## A113417.P12491140599557395415

`A113419(n)/A057077(2*n)`
-/

namespace A113417.P12491140599557395415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113419 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A113417.P12491140599557395415

namespace A113417

/-- `A113419(n)/A057077(2*n)` -/
def P12491140599557395415.Spec : Prop :=
  ∀ n, P12491140599557395415.a n = (A113417 n : ℚ)

end A113417

/-! ## A113417.P6635742853377290592

`A113419(n)/A087960(2*n)`
-/

namespace A113417.P6635742853377290592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113419 n : ℚ) / (A087960 (2 * n) : ℚ)

end

end A113417.P6635742853377290592

namespace A113417

/-- `A113419(n)/A087960(2*n)` -/
def P6635742853377290592.Spec : Prop :=
  ∀ n, P6635742853377290592.a n = (A113417 n : ℚ)

end A113417

/-! ## A113417.P14092830831869927536

`A087960(n)*A124340(2*n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A113417

/-- `A087960(n)*A124340(2*n+1)` -/
def P14092830831869927536.Spec : Prop :=
  ∀ n, P14092830831869927536.a n = A113417 n

theorem P14092830831869927536.correct : P14092830831869927536.Spec := by
  intro n
  simp only [A113417]

end A113417

/-! ## A113417.P8451473100023040175

`A057077(n+1)*A124340(2*n+1)`
-/

namespace A113417.P8451473100023040175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A124340 (2 * n + 1)

end

end A113417.P8451473100023040175

namespace A113417

/-- `A057077(n+1)*A124340(2*n+1)` -/
def P8451473100023040175.Spec : Prop :=
  ∀ n, P8451473100023040175.a n = A113417 n

end A113417

/-! ## A113417.P1309544213282237170

`A113418(2*n+1)+A091337(2*n)`
-/

namespace A113417.P1309544213282237170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113418 (2 * n + 1) + A091337 (2 * n)

end

end A113417.P1309544213282237170

namespace A113417

/-- `A113418(2*n+1)+A091337(2*n)` -/
def P1309544213282237170.Spec : Prop :=
  ∀ n, P1309544213282237170.a n = A113417 n

end A113417

/-! ## A113417.P17416951952201045483

`A117005(2*n+1)+A117001(2*n+1)`
-/

namespace A113417.P17416951952201045483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117005 (2 * n + 1) + A117001 (2 * n + 1)

end

end A113417.P17416951952201045483

namespace A113417

/-- `A117005(2*n+1)+A117001(2*n+1)` -/
def P17416951952201045483.Spec : Prop :=
  ∀ n, P17416951952201045483.a n = A113417 n

end A113417

/-! ## A113417.P17875597518656356183

`A113416(2*n+1)-A113418(2*n+1)`
-/

namespace A113417.P17875597518656356183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113416 (2 * n + 1) - A113418 (2 * n + 1)

end

end A113417.P17875597518656356183

namespace A113417

/-- `A113416(2*n+1)-A113418(2*n+1)` -/
def P17875597518656356183.Spec : Prop :=
  ∀ n, P17875597518656356183.a n = A113417 n

end A113417

/-! ## A113417.P2646749285289247724

`A091337(2*n+1)*A124340(2*n+1)`
-/

namespace A113417.P2646749285289247724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (2 * n + 1) * A124340 (2 * n + 1)

end

end A113417.P2646749285289247724

namespace A113417

/-- `A091337(2*n+1)*A124340(2*n+1)` -/
def P2646749285289247724.Spec : Prop :=
  ∀ n, P2646749285289247724.a n = A113417 n

end A113417

/-!
# A113418: Expansion of (eta(q^2)^7*eta(q^4)/(eta(q)*eta(q^8))^2-1)/2 in powers of q.

The programs for A113418, the canonical program `A113418.P2893057281980741838` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113418 has offset 1).

The definition of A113418 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117000, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113418.P2893057281980741838

`(-1)^(n+2)*A117000(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A113418

/-- `(-1)^(n+2)*A117000(n+1)` -/
def P2893057281980741838.Spec : Prop :=
  ∀ n, P2893057281980741838.a n = A113418 (n + 1)

theorem P2893057281980741838.correct : P2893057281980741838.Spec := by
  intro n
  simp only [A113418, Nat.add_sub_cancel]

end A113418

/-! ## A113418.P3514912186071982802

`A113416(n+1)/2`
-/

namespace A113418.P3514912186071982802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113416 (n + 1) : ℚ) / 2

end

end A113418.P3514912186071982802

namespace A113418

/-- `A113416(n+1)/2` -/
def P3514912186071982802.Spec : Prop :=
  ∀ n, P3514912186071982802.a n = (A113418 (n + 1) : ℚ)

end A113418

/-! ## A113418.P8560217017914354128

`A117000(lcm(4, n+1)/4)/(-1)^n`
-/

namespace A113418.P8560217017914354128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117000 (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A113418.P8560217017914354128

namespace A113418

/-- `A117000(lcm(4, n+1)/4)/(-1)^n` -/
def P8560217017914354128.Spec : Prop :=
  ∀ n, P8560217017914354128.a n = (A113418 (n + 1) : ℚ)

end A113418

/-! ## A113418.P14682352295976938335

`A117000((n+1)/2^val(n+1, 2))/(-1)^n`
-/

namespace A113418.P14682352295976938335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117000 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A113418.P14682352295976938335

namespace A113418

/-- `A117000((n+1)/2^val(n+1, 2))/(-1)^n` -/
def P14682352295976938335.Spec : Prop :=
  ∀ n, P14682352295976938335.a n = (A113418 (n + 1) : ℚ)

end A113418

/-! ## A113418.P11309678286301315646

`A117000((n+1)/ceil(xor(n, n+1)/4))/(-1)^n`
-/

namespace A113418.P11309678286301315646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117000 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 4⌉ : ℚ))).toNat : ℚ) / ((-1) ^ n : ℚ)

end

end A113418.P11309678286301315646

namespace A113418

/-- `A117000((n+1)/ceil(xor(n, n+1)/4))/(-1)^n` -/
def P11309678286301315646.Spec : Prop :=
  ∀ n, P11309678286301315646.a n = (A113418 (n + 1) : ℚ)

end A113418

/-! ## A113418.P6769481049374196717

`A117000(n+1)/A033999(n)`
-/

namespace A113418.P6769481049374196717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117000 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A113418.P6769481049374196717

namespace A113418

/-- `A117000(n+1)/A033999(n)` -/
def P6769481049374196717.Spec : Prop :=
  ∀ n, P6769481049374196717.a n = (A113418 (n + 1) : ℚ)

end A113418

/-! ## A113418.P16357294633070245570

`A117000(n+1)/A113417(n)*A113419(n)`
-/

namespace A113418.P16357294633070245570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117000 (n + 1) : ℚ) / (A113417 n : ℚ) * (A113419 n : ℚ)

end

end A113418.P16357294633070245570

namespace A113418

/-- `A117000(n+1)/A113417(n)*A113419(n)` -/
def P16357294633070245570.Spec : Prop :=
  ∀ n, P16357294633070245570.a n = (A113418 (n + 1) : ℚ)

end A113418

/-! ## A113418.P7950335024494470983

`Δ[∑[A113416(n)]/2]`
-/

namespace A113418.P7950335024494470983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113416 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113418.P7950335024494470983

namespace A113418

/-- `Δ[∑[A113416(n)]/2]` -/
def P7950335024494470983.Spec : Prop :=
  ∀ n, P7950335024494470983.a n = (A113418 (n + 1) : ℚ)

end A113418

/-! ## A113418.P13456804315279147487

`A117000(2*n+2)/A087960(2*n)`
-/

namespace A113418.P13456804315279147487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117000 (2 * n + 2) : ℚ) / (A087960 (2 * n) : ℚ)

end

end A113418.P13456804315279147487

namespace A113418

/-- `A117000(2*n+2)/A087960(2*n)` -/
def P13456804315279147487.Spec : Prop :=
  ∀ n, P13456804315279147487.a n = (A113418 (n + 1) : ℚ)

end A113418

/-! ## A113418.P6061212440354333118

`A131999(∑[n])/A113416(n)`
-/

namespace A113418.P6061212440354333118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131999 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A113416 n : ℚ)

end

end A113418.P6061212440354333118

namespace A113418

/-- `A131999(∑[n])/A113416(n)` -/
def P6061212440354333118.Spec : Prop :=
  ∀ n, P6061212440354333118.a n = (A113418 (n + 1) : ℚ)

end A113418

/-!
# A113419: Expansion of phi(x)^2 * phi(-x) * psi(x^4) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A113419, the canonical program `A113419.P6284857429219078368` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113419 has offset 0).

The definition of A113419 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113417, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113419.P6284857429219078368

`(-1)^n*A113417(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A113419

/-- `(-1)^n*A113417(n)` -/
def P6284857429219078368.Spec : Prop :=
  ∀ n, P6284857429219078368.a n = A113419 n

theorem P6284857429219078368.correct : P6284857429219078368.Spec := by
  intro n
  simp only [A113419]

end A113419

/-! ## A113419.P18282394234272500211

`(-1)^floor(n/2)*A258096(n)`
-/

namespace A113419.P18282394234272500211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A258096 n : ℚ)

end

end A113419.P18282394234272500211

namespace A113419

/-- `(-1)^floor(n/2)*A258096(n)` -/
def P18282394234272500211.Spec : Prop :=
  ∀ n, P18282394234272500211.a n = (A113419 n : ℚ)

end A113419

/-! ## A113419.P15784330743292362028

`(-1)^(n+floor(n/2))*A209940(n)`
-/

namespace A113419.P15784330743292362028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ ((n : ℤ) + ⌊(n : ℚ) / 2⌋ : ℤ) * (A209940 n : ℚ)

end

end A113419.P15784330743292362028

namespace A113419

/-- `(-1)^(n+floor(n/2))*A209940(n)` -/
def P15784330743292362028.Spec : Prop :=
  ∀ n, P15784330743292362028.a n = (A113419 n : ℚ)

end A113419

/-! ## A113419.P11980908934682101524

`A113417(n)/A033999(n)`
-/

namespace A113419.P11980908934682101524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113417 n : ℚ) / (A033999 n : ℚ)

end

end A113419.P11980908934682101524

namespace A113419

/-- `A113417(n)/A033999(n)` -/
def P11980908934682101524.Spec : Prop :=
  ∀ n, P11980908934682101524.a n = (A113419 n : ℚ)

end A113419

/-! ## A113419.P14625287643203895936

`A113417(n)/A057077(A057077(n)+n)`
-/

namespace A113419.P14625287643203895936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113417 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A113419.P14625287643203895936

namespace A113419

/-- `A113417(n)/A057077(A057077(n)+n)` -/
def P14625287643203895936.Spec : Prop :=
  ∀ n, P14625287643203895936.a n = (A113419 n : ℚ)

end A113419

/-! ## A113419.P7812907516429584443

`A113416(n)*A113417(n)/A131999(n)`
-/

namespace A113419.P7812907516429584443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113416 n * A113417 n : ℚ) / (A131999 n : ℚ)

end

end A113419.P7812907516429584443

namespace A113419

/-- `A113416(n)*A113417(n)/A131999(n)` -/
def P7812907516429584443.Spec : Prop :=
  ∀ n, P7812907516429584443.a n = (A113419 n : ℚ)

end A113419

/-! ## A113419.P13783409409821357118

`A109039(n)*A113417(n)/A257656(n)`
-/

namespace A113419.P13783409409821357118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109039 n * A113417 n : ℚ) / (A257656 n : ℚ)

end

end A113419.P13783409409821357118

namespace A113419

/-- `A109039(n)*A113417(n)/A257656(n)` -/
def P13783409409821357118.Spec : Prop :=
  ∀ n, P13783409409821357118.a n = (A113419 n : ℚ)

end A113419

/-! ## A113419.P12176534544630188270

`A113417(n)*A209940(n)/A258096(n)`
-/

namespace A113419.P12176534544630188270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113417 n * A209940 n : ℚ) / (A258096 n : ℚ)

end

end A113419.P12176534544630188270

namespace A113419

/-- `A113417(n)*A209940(n)/A258096(n)` -/
def P12176534544630188270.Spec : Prop :=
  ∀ n, P12176534544630188270.a n = (A113419 n : ℚ)

end A113419

/-! ## A113419.P11196297595895445226

`A113417(n)/A057077(2*n)`
-/

namespace A113419.P11196297595895445226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113417 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A113419.P11196297595895445226

namespace A113419

/-- `A113417(n)/A057077(2*n)` -/
def P11196297595895445226.Spec : Prop :=
  ∀ n, P11196297595895445226.a n = (A113419 n : ℚ)

end A113419

/-! ## A113419.P18261006066492590968

`A113417(n)/A087960(2*n)`
-/

namespace A113419.P18261006066492590968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113417 n : ℚ) / (A087960 (2 * n) : ℚ)

end

end A113419.P18261006066492590968

namespace A113419

/-- `A113417(n)/A087960(2*n)` -/
def P18261006066492590968.Spec : Prop :=
  ∀ n, P18261006066492590968.a n = (A113419 n : ℚ)

end A113419

/-! ## A113419.P12177489276737430660

`A033999(n)*A113418(2*n+1)`
-/

namespace A113419.P12177489276737430660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A113418 (2 * n + 1)

end

end A113419.P12177489276737430660

namespace A113419

/-- `A033999(n)*A113418(2*n+1)` -/
def P12177489276737430660.Spec : Prop :=
  ∀ n, P12177489276737430660.a n = A113419 n

end A113419

/-! ## A113419.P14495977389399160805

`A033999(n)*A117000(2*n+1)`
-/

namespace A113419.P14495977389399160805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A117000 (2 * n + 1)

end

end A113419.P14495977389399160805

namespace A113419

/-- `A033999(n)*A117000(2*n+1)` -/
def P14495977389399160805.Spec : Prop :=
  ∀ n, P14495977389399160805.a n = A113419 n

end A113419

/-! ## A113419.P14558650690359450288

`A057077(n)*A124340(2*n+1)`
-/

namespace A113419.P14558650690359450288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A124340 (2 * n + 1)

end

end A113419.P14558650690359450288

namespace A113419

/-- `A057077(n)*A124340(2*n+1)` -/
def P14558650690359450288.Spec : Prop :=
  ∀ n, P14558650690359450288.a n = A113419 n

end A113419

/-! ## A113419.P6868479461040700577

`(1-A010673(n))*A117000(2*n+1)`
-/

namespace A113419.P6868479461040700577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * A117000 (2 * n + 1)

end

end A113419.P6868479461040700577

namespace A113419

/-- `(1-A010673(n))*A117000(2*n+1)` -/
def P6868479461040700577.Spec : Prop :=
  ∀ n, P6868479461040700577.a n = A113419 n

end A113419

/-! ## A113419.P4457100247596339583

`A056594(2*n)*A117000(2*n+1)`
-/

namespace A113419.P4457100247596339583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A117000 (2 * n + 1)

end

end A113419.P4457100247596339583

namespace A113419

/-- `A056594(2*n)*A117000(2*n+1)` -/
def P4457100247596339583.Spec : Prop :=
  ∀ n, P4457100247596339583.a n = A113419 n

end A113419

/-! ## A113419.P17121670856137144499

`A087960(2*n)*A117000(2*n+1)`
-/

namespace A113419.P17121670856137144499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A117000 (2 * n + 1)

end

end A113419.P17121670856137144499

namespace A113419

/-- `A087960(2*n)*A117000(2*n+1)` -/
def P17121670856137144499.Spec : Prop :=
  ∀ n, P17121670856137144499.a n = A113419 n

end A113419

/-! ## A113419.P7840960616098859453

`A124340(2*n+1)*A188510(2*n+1)`
-/

namespace A113419.P7840960616098859453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124340 (2 * n + 1) * A188510 (2 * n + 1)

end

end A113419.P7840960616098859453

namespace A113419

/-- `A124340(2*n+1)*A188510(2*n+1)` -/
def P7840960616098859453.Spec : Prop :=
  ∀ n, P7840960616098859453.a n = A113419 n

end A113419

/-! ## A113419.P16812753146874395499

`A131999(2*n+1)/(2*A033999(n+1))`
-/

namespace A113419.P16812753146874395499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131999 (2 * n + 1) : ℚ) / (2 * A033999 (n + 1) : ℚ)

end

end A113419.P16812753146874395499

namespace A113419

/-- `A131999(2*n+1)/(2*A033999(n+1))` -/
def P16812753146874395499.Spec : Prop :=
  ∀ n, P16812753146874395499.a n = (A113419 n : ℚ)

end A113419

/-! ## A113419.P12428464284426634291

`A113418(A123168(n+2))`
-/

namespace A113419.P12428464284426634291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113418 (A123168 (n + 2)).toNat

end

end A113419.P12428464284426634291

namespace A113419

/-- `A113418(A123168(n+2))` -/
def P12428464284426634291.Spec : Prop :=
  ∀ n, P12428464284426634291.a n = A113419 n

end A113419

/-! ## A113419.P4261271777199610724

`A113418(A110185(n+1))`
-/

namespace A113419.P4261271777199610724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113418 (A110185 (n + 1)).toNat

end

end A113419.P4261271777199610724

namespace A113419

/-- `A113418(A110185(n+1))` -/
def P4261271777199610724.Spec : Prop :=
  ∀ n, P4261271777199610724.a n = A113419 n

end A113419

/-!
# A113421: Expansion of eta(q)^2 * eta(q^4) * eta(q^6)^2 * eta(q^12) / eta(q^3)^2 in powers of q.

The programs for A113421, the canonical program `A113421.P13774597701108961501` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113421 has offset 1).

The definition of A113421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113421.P13774597701108961501

`∑{d}[n+1, A275966(#)*A326503((n+1)/#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A113421

/-- `∑{d}[n+1, A275966(#)*A326503((n+1)/#)]` -/
def P13774597701108961501.Spec : Prop :=
  ∀ n, P13774597701108961501.a n = A113421 (n + 1)

theorem P13774597701108961501.correct : P13774597701108961501.Spec := by
  intro n
  simp only [A113421, Nat.add_sub_cancel]

end A113421

/-! ## A113421.P9369661313009002381

`∑{d}[n+1, A056594(#-1)*A162397((n+1)/#)]`
-/

namespace A113421.P9369661313009002381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056594 (d - 1) * A162397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113421.P9369661313009002381

namespace A113421

/-- `∑{d}[n+1, A056594(#-1)*A162397((n+1)/#)]` -/
def P9369661313009002381.Spec : Prop :=
  ∀ n, P9369661313009002381.a n = A113421 (n + 1)

end A113421

/-!
# A113422: a(n) = floor((5*n^2+1)/3).

The programs for A113422, the canonical program `A113422.P13803496224310734255` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113422 has offset 0).

The definition of A113422 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((5*n²+1)/3)` (program `A113422.P13803496224310734255`, by `A113422.P13803496224310734255.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113422.P13803496224310734255

`floor((5*n²+1)/3)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113422

/-- `floor((5*n²+1)/3)` -/
def P13803496224310734255.Spec : Prop :=
  ∀ n, P13803496224310734255.a n = A113422 n

theorem P13803496224310734255.correct : P13803496224310734255.Spec := by
  intro n
  simp only [A113422]

end A113422

/-! ## A113422.P13932940303532354437

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=15, a(4)=27`
-/

namespace A113422.P13932940303532354437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 7, 15, 27] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A113422.P13932940303532354437

namespace A113422

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P13932940303532354437.Spec : Prop :=
  ∀ n, P13932940303532354437.a n = A113422 n

end A113422

/-! ## A113422.P7109289135999465757

`∑[a(n-3)+10]` with `a(0)=0, a(1)=2, a(2)=5, a(3)=8`
-/

namespace A113422.P7109289135999465757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5, 8] fun n f1 =>
  f1 (n - 3) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113422.P7109289135999465757

namespace A113422

/-- `∑[a(n-3)+10]` -/
def P7109289135999465757.Spec : Prop :=
  ∀ n, (P7109289135999465757.a n : ℤ) = A113422 n

end A113422

/-! ## A113422.P17261529370856187469

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A113422.P17261529370856187469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 3, 4] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113422.P17261529370856187469

namespace A113422

/-- `∑[∑[floor(a(n-3))]]` -/
def P17261529370856187469.Spec : Prop :=
  ∀ n, (P17261529370856187469.a n : ℤ) = A113422 n

end A113422

/-! ## A113422.P12066712787940742668

`∑[∑[a(n-3)%5]]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=3, a(4)=4`
-/

namespace A113422.P12066712787940742668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 3, 4] fun n f2 =>
  f2 (n - 3) % 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113422.P12066712787940742668

namespace A113422

/-- `∑[∑[a(n-3)%5]]` -/
def P12066712787940742668.Spec : Prop :=
  ∀ n, (P12066712787940742668.a n : ℤ) = A113422 n

end A113422

/-! ## A113422.P15150896216591383867

`∑[ogf((2x+3x^2+3x^3+2x^4)/(1-x-x^3+x^4))]`
-/

namespace A113422.P15150896216591383867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 3, 2] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113422.P15150896216591383867

namespace A113422

/-- `∑[ogf((2x+3x^2+3x^3+2x^4)/(1-x-x^3+x^4))]` -/
def P15150896216591383867.Spec : Prop :=
  ∀ n, P15150896216591383867.a n = A113422 n

end A113422

/-! ## A113422.P1386195392819679849

`∑[∑[char[3*n+1]]]+C(n, 2)+n²`
-/

namespace A113422.P1386195392819679849
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 2 + n ^ 2)

end

end A113422.P1386195392819679849

namespace A113422

/-- `∑[∑[char[3*n+1]]]+C(n, 2)+n²` -/
def P1386195392819679849.Spec : Prop :=
  ∀ n, (P1386195392819679849.a n : ℤ) = A113422 n

end A113422

/-! ## A113422.P13594068055339777954

`round(A158187(n)/6)`
-/

namespace A113422.P13594068055339777954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A158187 n : ℚ) / 6)

end

end A113422.P13594068055339777954

namespace A113422

/-- `round(A158187(n)/6)` -/
def P13594068055339777954.Spec : Prop :=
  ∀ n, P13594068055339777954.a n = A113422 n

end A113422

/-! ## A113422.P6618949776956440726

`round(A010005(n)/9)`
-/

namespace A113422.P6618949776956440726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A010005 n : ℚ) / 9)

end

end A113422.P6618949776956440726

namespace A113422

/-- `round(A010005(n)/9)` -/
def P6618949776956440726.Spec : Prop :=
  ∀ n, P6618949776956440726.a n = A113422 n

end A113422

/-! ## A113422.P13583751613011188123

`A071619(n)+n²`
-/

namespace A113422.P13583751613011188123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 n + (n ^ 2 : ℤ)

end

end A113422.P13583751613011188123

namespace A113422

/-- `A071619(n)+n²` -/
def P13583751613011188123.Spec : Prop :=
  ∀ n, P13583751613011188123.a n = A113422 n

end A113422

/-! ## A113422.P4245132844883440561

`n²+A084672(n)-1`
-/

namespace A113422.P4245132844883440561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A084672 n - 1)

end

end A113422.P4245132844883440561

namespace A113422

/-- `n²+A084672(n)-1` -/
def P4245132844883440561.Spec : Prop :=
  ∀ n, P4245132844883440561.a n = A113422 n

end A113422

/-! ## A113422.P6451941364316929811

`2*n²-A000212(n)`
-/

namespace A113422.P6451941364316929811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - A000212 n

end

end A113422.P6451941364316929811

namespace A113422

/-- `2*n²-A000212(n)` -/
def P6451941364316929811.Spec : Prop :=
  ∀ n, P6451941364316929811.a n = A113422 n

end A113422

/-! ## A113422.P2375849285083351054

`n²+A147623(n)/2`
-/

namespace A113422.P2375849285083351054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A147623 n : ℚ) / 2

end

end A113422.P2375849285083351054

namespace A113422

/-- `n²+A147623(n)/2` -/
def P2375849285083351054.Spec : Prop :=
  ∀ n, P2375849285083351054.a n = (A113422 n : ℚ)

end A113422

/-! ## A113422.P16359118190377334143

`n²+A320259(n)-n`
-/

namespace A113422.P16359118190377334143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A320259 n - (n : ℤ))

end

end A113422.P16359118190377334143

namespace A113422

/-- `n²+A320259(n)-n` -/
def P16359118190377334143.Spec : Prop :=
  ∀ n, P16359118190377334143.a n = A113422 n

end A113422

/-! ## A113422.P18423367280949001622

`A320281(n)-n*(n-2)`
-/

namespace A113422.P18423367280949001622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320281 n - (n : ℤ) * ((n : ℤ) - 2)

end

end A113422.P18423367280949001622

namespace A113422

/-- `A320281(n)-n*(n-2)` -/
def P18423367280949001622.Spec : Prop :=
  ∀ n, P18423367280949001622.a n = A113422 n

end A113422

/-! ## A113422.P9161298121059461065

`A000326(n)+round(∑[n+1]/3)`
-/

namespace A113422.P9161298121059461065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n + SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3)

end

end A113422.P9161298121059461065

namespace A113422

/-- `A000326(n)+round(∑[n+1]/3)` -/
def P9161298121059461065.Spec : Prop :=
  ∀ n, P9161298121059461065.a n = A113422 n

end A113422

/-! ## A113422.P8851832178820382301

`A001840(n)+A000326(n)`
-/

namespace A113422.P8851832178820382301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n + A000326 n

end

end A113422.P8851832178820382301

namespace A113422

/-- `A001840(n)+A000326(n)` -/
def P8851832178820382301.Spec : Prop :=
  ∀ n, P8851832178820382301.a n = A113422 n

end A113422

/-! ## A113422.P716158657847925374

`A222170(n)+A011655(n)`
-/

namespace A113422.P716158657847925374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222170 n + A011655 n

end

end A113422.P716158657847925374

namespace A113422

/-- `A222170(n)+A011655(n)` -/
def P716158657847925374.Spec : Prop :=
  ∀ n, P716158657847925374.a n = A113422 n

end A113422

/-! ## A113422.P5612887422438742623

`A256320(n)+A008810(n)`
-/

namespace A113422.P5612887422438742623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n + A008810 n

end

end A113422.P5612887422438742623

namespace A113422

/-- `A256320(n)+A008810(n)` -/
def P5612887422438742623.Spec : Prop :=
  ∀ n, P5612887422438742623.a n = A113422 n

end A113422

/-!
# A113423: Expansion of q^(-1)eta(q^2)*eta(q^8)^2*eta(q^10)/eta(q^4) in powers of q^2.

The programs for A113423, there is no canonical definition to state claims against.
-/

/-! ## A113423.P8807734126788872418

`A067742(A339555(2*n))-A067742(n+5)`
-/

namespace A113423.P8807734126788872418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (A339555 (2 * n)).toNat - A067742 (n + 5)

end

end A113423.P8807734126788872418

/-!
# A113424: a(n) = (6*n)!/((3*n)!*(2*n)!*n!).

The programs for A113424, the canonical program `A113424.P4188774916858982787` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113424 has offset 0).

The definition of A113424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113424.P10119766856388869942

`C(6*n, 2*n)*C(4*n, n)`
-/

namespace A113424.P10119766856388869942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (6 * n) (2 * n) * Nat.choose (4 * n) n

end

end A113424.P10119766856388869942

namespace A113424

/-- `C(6*n, 2*n)*C(4*n, n)` -/
def P10119766856388869942.Spec : Prop :=
  ∀ n, (P10119766856388869942.a n : ℤ) = A113424 n

end A113424

/-! ## A113424.P4188774916858982787

`A005809(n)*A066802(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A113424

/-- `A005809(n)*A066802(n)` -/
def P4188774916858982787.Spec : Prop :=
  ∀ n, P4188774916858982787.a n = A113424 n

theorem P4188774916858982787.correct : P4188774916858982787.Spec := by
  intro n
  simp only [A113424]

end A113424

/-! ## A113424.P15706460658564174054

`12*(6*n-1)*(6*n-5)*a(n-1)/n²` with `a(0)=1`
-/

namespace A113424.P15706460658564174054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (12 * ((6 * n : ℤ) - 1) * ((6 * n : ℤ) - 5) : ℚ) * a (n - 1) / (n ^ 2 : ℚ)

end

end A113424.P15706460658564174054

namespace A113424

/-- `12*(6*n-1)*(6*n-5)*a(n-1)/n²` -/
def P15706460658564174054.Spec : Prop :=
  ∀ n, P15706460658564174054.a n = (A113424 n : ℚ)

end A113424

/-! ## A113424.P17480861495306118594

`A356546(A062725(n))`
-/

namespace A113424.P17480861495306118594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356546 (A062725 n).toNat

end

end A113424.P17480861495306118594

namespace A113424

/-- `A356546(A062725(n))` -/
def P17480861495306118594.Spec : Prop :=
  ∀ n, P17480861495306118594.a n = A113424 n

end A113424

/-! ## A113424.P17576570563161630684

`A356546(A062728(n)-n)`
-/

namespace A113424.P17576570563161630684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356546 (A062728 n - (n : ℤ)).toNat

end

end A113424.P17576570563161630684

namespace A113424

/-- `A356546(A062728(n)-n)` -/
def P17576570563161630684.Spec : Prop :=
  ∀ n, P17576570563161630684.a n = A113424 n

end A113424

/-!
# A113425: Smallest prime closest to n^2.

The programs for A113425, the canonical program `A113425.P1006635442297593075` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113425 has offset 1).

The definition of A113425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113425.P1006635442297593075

`A077018(n*(n+2))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A113425

/-- `A077018(n*(n+2))` -/
def P1006635442297593075.Spec : Prop :=
  ∀ n, P1006635442297593075.a n = A113425 (n + 1)

theorem P1006635442297593075.correct : P1006635442297593075.Spec := by
  intro n
  simp only [A113425, Nat.add_sub_cancel]

end A113425

/-! ## A113425.P6570524672974765904

`A051697((n+1)²)`
-/

namespace A113425.P6570524672974765904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 ((n + 1) ^ 2)

end

end A113425.P6570524672974765904

namespace A113425

/-- `A051697((n+1)²)` -/
def P6570524672974765904.Spec : Prop :=
  ∀ n, P6570524672974765904.a n = A113425 (n + 1)

end A113425

/-! ## A113425.P14606418176868575189

`A051698((n+1)²)`
-/

namespace A113425.P14606418176868575189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 ((n + 1) ^ 2)

end

end A113425.P14606418176868575189

namespace A113425

/-- `A051698((n+1)²)` -/
def P14606418176868575189.Spec : Prop :=
  ∀ n, P14606418176868575189.a n = A113425 (n + 1)

end A113425

/-! ## A113425.P17304249066305656717

`p?[A051697(∑[2*n+1])]`
-/

namespace A113425.P17304249066305656717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113425.P17304249066305656717

namespace A113425

/-- `p?[A051697(∑[2*n+1])]` -/
def P17304249066305656717.Spec : Prop :=
  ∀ n, P17304249066305656717.a n = A113425 (n + 1)

end A113425

/-! ## A113425.P12701446839025725665

`p?[A051698(∑[2*n+1])]`
-/

namespace A113425.P12701446839025725665
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113425.P12701446839025725665

namespace A113425

/-- `p?[A051698(∑[2*n+1])]` -/
def P12701446839025725665.Spec : Prop :=
  ∀ n, P12701446839025725665.a n = A113425 (n + 1)

end A113425

/-! ## A113425.P16082075488859430505

`record[A051698(ceil(xor(1, n)/2)²)]`
-/

namespace A113425.P16082075488859430505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (⌈(Nat.xor 1 n : ℚ) / 2⌉ ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113425.P16082075488859430505

namespace A113425

/-- `record[A051698(ceil(xor(1, n)/2)²)]` -/
def P16082075488859430505.Spec : Prop :=
  ∀ n, P16082075488859430505.a n = A113425 (n + 1)

end A113425

/-! ## A113425.P17151272806528941383

`record[A051697((n-2*floor(n/10))²)]`
-/

namespace A113425.P17151272806528941383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (((n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113425.P17151272806528941383

namespace A113425

/-- `record[A051697((n-2*floor(n/10))²)]` -/
def P17151272806528941383.Spec : Prop :=
  ∀ n, P17151272806528941383.a n = A113425 (n + 1)

end A113425

/-! ## A113425.P17270779341142374628

`record[A051698(A008611(n)²)]`
-/

namespace A113425.P17270779341142374628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A008611 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113425.P17270779341142374628

namespace A113425

/-- `record[A051698(A008611(n)²)]` -/
def P17270779341142374628.Spec : Prop :=
  ∀ n, P17270779341142374628.a n = A113425 (n + 1)

end A113425

/-! ## A113425.P9352214117761515383

`record[A051698(A008615(n)²)]`
-/

namespace A113425.P9352214117761515383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A008615 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113425.P9352214117761515383

namespace A113425

/-- `record[A051698(A008615(n)²)]` -/
def P9352214117761515383.Spec : Prop :=
  ∀ n, P9352214117761515383.a n = A113425 (n + 1)

end A113425

/-! ## A113425.P16443767792540560215

`record[A051698(A055400(n)²)]`
-/

namespace A113425.P16443767792540560215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A055400 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113425.P16443767792540560215

namespace A113425

/-- `record[A051698(A055400(n)²)]` -/
def P16443767792540560215.Spec : Prop :=
  ∀ n, P16443767792540560215.a n = A113425 (n + 1)

end A113425

/-!
# A113426: Greatest prime closest to n^2.

The programs for A113426, there is no canonical definition to state claims against.
-/

/-! ## A113426.P4796512411695144692

`A077018((n+1)²)`
-/

namespace A113426.P4796512411695144692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077018 ((n + 1) ^ 2)

end

end A113426.P4796512411695144692

/-! ## A113426.P4344395481773298878

`A051697((n+1)²+1)`
-/

namespace A113426.P4344395481773298878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 ((n + 1) ^ 2 + 1)

end

end A113426.P4344395481773298878

/-! ## A113426.P12224298565147727210

`p?[A077018(∑[2*n+1])]`
-/

namespace A113426.P12224298565147727210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077018 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113426.P12224298565147727210

/-! ## A113426.P17665303702939537787

`p?[A051697(∑[A223134(n)])]`
-/

namespace A113426.P17665303702939537787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113426.P17665303702939537787

/-! ## A113426.P12980388561300142937

`p?[A051697(A002522(n+1))]`
-/

namespace A113426.P12980388561300142937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A002522 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113426.P12980388561300142937

/-! ## A113426.P18029933920259172122

`p?[A051697(∑[A004280(n+2)])]`
-/

namespace A113426.P18029933920259172122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113426.P18029933920259172122

/-! ## A113426.P3084622843081268605

`p?[A051697(Δ[A081489(n+1)])]`
-/

namespace A113426.P3084622843081268605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081489 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113426.P3084622843081268605

/-! ## A113426.P5457632117470471220

`p?[A051697(A033638(2*(n+1)))]`
-/

namespace A113426.P5457632117470471220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (A033638 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113426.P5457632117470471220

/-! ## A113426.P6052284088703456983

`A051698(A080335(n)+A054977(n))`
-/

namespace A113426.P6052284088703456983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A080335 n + A054977 n).toNat

end

end A113426.P6052284088703456983

/-! ## A113426.P5102288043630280587

`A051698(A080335(n)-A057428(n))`
-/

namespace A113426.P5102288043630280587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A080335 n - A057428 n).toNat

end

end A113426.P5102288043630280587

/-!
# A113427: If d(n) is the sequence of prime differences, d(n) = prime(n+1) - prime(n), then a(n) is the subsequence of d(n) such that d(n) is nonprime and squarefree. Except for the initial term of 1, the terms are k-semiprime for some k >= 2.

The programs for A113427, the canonical program `A113427.P16554332714523727255` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113427 has offset 1).

The definition of A113427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113427.P16554332714523727255

`A001223(A113339(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A113427

/-- `A001223(A113339(n+1))` -/
def P16554332714523727255.Spec : Prop :=
  ∀ n, P16554332714523727255.a n = A113427 (n + 1)

theorem P16554332714523727255.correct : P16554332714523727255.Spec := by
  intro n
  simp only [A113427, Nat.add_sub_cancel]

end A113427

/-! ## A113427.P1946577720065174437

`A054541(A113339(n+1)+1)`
-/

namespace A113427.P1946577720065174437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A113339 (n + 1) + 1).toNat

end

end A113427.P1946577720065174437

namespace A113427

/-- `A054541(A113339(n+1)+1)` -/
def P1946577720065174437.Spec : Prop :=
  ∀ n, P1946577720065174437.a n = A113427 (n + 1)

end A113427

/-! ## A113427.P9843696678687625336

`A134735(2*A113339(n+1))`
-/

namespace A113427.P9843696678687625336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (2 * A113339 (n + 1)).toNat

end

end A113427.P9843696678687625336

namespace A113427

/-- `A134735(2*A113339(n+1))` -/
def P9843696678687625336.Spec : Prop :=
  ∀ n, P9843696678687625336.a n = A113427 (n + 1)

end A113427

/-! ## A113427.P11119125326749040491

`A134735(A113339(n+1)+A113339(n+1))`
-/

namespace A113427.P11119125326749040491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (A113339 (n + 1) + A113339 (n + 1)).toNat

end

end A113427.P11119125326749040491

namespace A113427

/-- `A134735(A113339(n+1)+A113339(n+1))` -/
def P11119125326749040491.Spec : Prop :=
  ∀ n, P11119125326749040491.a n = A113427 (n + 1)

end A113427

/-! ## A113427.P9854017916010556926

`∑{d}[A000040(A113339(n+1)), A346239(#)]`
-/

namespace A113427.P9854017916010556926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A113339 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A346239 d

end

end A113427.P9854017916010556926

namespace A113427

/-- `∑{d}[A000040(A113339(n+1)), A346239(#)]` -/
def P9854017916010556926.Spec : Prop :=
  ∀ n, P9854017916010556926.a n = A113427 (n + 1)

end A113427

/-!
# A113428: Expansion of f(-x^2, -x^3) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A113428, the canonical program `A113428.P12735616040462337458` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113428 has offset 0).

The definition of A113428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113428.P12735616040462337458

`A113429(9*n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A113428

/-- `A113429(9*n)` -/
def P12735616040462337458.Spec : Prop :=
  ∀ n, P12735616040462337458.a n = A113428 n

theorem P12735616040462337458.correct : P12735616040462337458.Spec := by
  intro n
  simp only [A113428]

end A113428

/-! ## A113428.P399701249317188947

`A113429(A017281(n)-(n+1))%2`
-/

namespace A113428.P399701249317188947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113429 (A017281 n - (n + 1 : ℤ)).toNat) 2

end

end A113428.P399701249317188947

namespace A113428

/-- `A113429(A017281(n)-(n+1))%2` -/
def P399701249317188947.Spec : Prop :=
  ∀ n, P399701249317188947.a n = A113428 n

end A113428

/-! ## A113428.P12884064330654957076

`A113429(A008585(A008585(n)))%2`
-/

namespace A113428.P12884064330654957076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113429 (A008585 (A008585 n).toNat).toNat) 2

end

end A113428.P12884064330654957076

namespace A113428

/-- `A113429(A008585(A008585(n)))%2` -/
def P12884064330654957076.Spec : Prop :=
  ∀ n, P12884064330654957076.a n = A113428 n

end A113428

/-! ## A113428.P8621364816277401254

`A113429(A017281(n)-(n+1))^A001844(n)`
-/

namespace A113428.P8621364816277401254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113429 (A017281 n - (n + 1 : ℤ)).toNat : ℚ) ^ (A001844 n : ℤ)

end

end A113428.P8621364816277401254

namespace A113428

/-- `A113429(A017281(n)-(n+1))^A001844(n)` -/
def P8621364816277401254.Spec : Prop :=
  ∀ n, P8621364816277401254.a n = (A113428 n : ℚ)

end A113428

/-! ## A113428.P8104223411623218471

`A113429(A017281(n)-(n+1))^A005408(n)`
-/

namespace A113428.P8104223411623218471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113429 (A017281 n - (n + 1 : ℤ)).toNat : ℚ) ^ (A005408 n : ℤ)

end

end A113428.P8104223411623218471

namespace A113428

/-- `A113429(A017281(n)-(n+1))^A005408(n)` -/
def P8104223411623218471.Spec : Prop :=
  ∀ n, P8104223411623218471.a n = (A113428 n : ℚ)

end A113428

/-! ## A113428.P380709871907831029

`A113429(A017281(n)-(n+1))^A027688(n)`
-/

namespace A113428.P380709871907831029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113429 (A017281 n - (n + 1 : ℤ)).toNat : ℚ) ^ (A027688 n : ℤ)

end

end A113428.P380709871907831029

namespace A113428

/-- `A113429(A017281(n)-(n+1))^A027688(n)` -/
def P380709871907831029.Spec : Prop :=
  ∀ n, P380709871907831029.a n = (A113428 n : ℚ)

end A113428

/-! ## A113428.P16509400719756898274

`or(A000007(n), A113429(A017281(n)-(n+1)))`
-/

namespace A113428.P16509400719756898274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A113429 (A017281 n - (n + 1 : ℤ)).toNat)

end

end A113428.P16509400719756898274

namespace A113428

/-- `or(A000007(n), A113429(A017281(n)-(n+1)))` -/
def P16509400719756898274.Spec : Prop :=
  ∀ n, P16509400719756898274.a n = A113428 n

end A113428

/-! ## A113428.P13191311761996115335

`Δ[A330025(A000194(A008592(n)))]`
-/

namespace A113428.P13191311761996115335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A000194 (A008592 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113428.P13191311761996115335

namespace A113428

/-- `Δ[A330025(A000194(A008592(n)))]` -/
def P13191311761996115335.Spec : Prop :=
  ∀ n, P13191311761996115335.a n = A113428 n

end A113428

/-! ## A113428.P11854951666908226962

`A113429(A152948(n+1))+A113429(A017281(n)-(n+1))`
-/

namespace A113428.P11854951666908226962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113429 (A152948 (n + 1)).toNat + A113429 (A017281 n - (n + 1 : ℤ)).toNat

end

end A113428.P11854951666908226962

namespace A113428

/-- `A113429(A152948(n+1))+A113429(A017281(n)-(n+1))` -/
def P11854951666908226962.Spec : Prop :=
  ∀ n, P11854951666908226962.a n = A113428 n

end A113428

/-!
# A113429: Expansion of f(-x, -x^4) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A113429, the canonical program `A113429.P822979854111564575` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113429 has offset 0).

The definition of A113429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5589 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113429.P822979854111564575

`A197870(eq[1, A117898(n)])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A113429

/-- `A197870(eq[1, A117898(n)])` -/
def P822979854111564575.Spec : Prop :=
  ∀ n, P822979854111564575.a n = A113429 n

theorem P822979854111564575.correct : P822979854111564575.Spec := by
  intro n
  simp only [A113429]

end A113429

/-! ## A113429.P694527133800437713

`-A113428(A017185(n))`
-/

namespace A113429.P694527133800437713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A113428 (A017185 n).toNat

end

end A113429.P694527133800437713

namespace A113429

/-- `-A113428(A017185(n))` -/
def P694527133800437713.Spec : Prop :=
  ∀ n, P694527133800437713.a n = A113429 n

end A113429

/-! ## A113429.P2703565825048635198

`-A113428(A008591(n)+2)`
-/

namespace A113429.P2703565825048635198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A113428 (A008591 n + 2).toNat

end

end A113429.P2703565825048635198

namespace A113429

/-- `-A113428(A008591(n)+2)` -/
def P2703565825048635198.Spec : Prop :=
  ∀ n, P2703565825048635198.a n = A113429 n

end A113429

/-! ## A113429.P10020131450274946005

`-A113428(A016789(A008585(n)))`
-/

namespace A113429.P10020131450274946005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A113428 (A016789 (A008585 n).toNat).toNat

end

end A113429.P10020131450274946005

namespace A113429

/-- `-A113428(A016789(A008585(n)))` -/
def P10020131450274946005.Spec : Prop :=
  ∀ n, P10020131450274946005.a n = A113429 n

end A113429

/-! ## A113429.P6261036485055875396

`Δ[A063942(n)]*A113428(A017185(n))`
-/

namespace A113429.P6261036485055875396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A113428 (A017185 n).toNat

end

end A113429.P6261036485055875396

namespace A113429

/-- `Δ[A063942(n)]*A113428(A017185(n))` -/
def P6261036485055875396.Spec : Prop :=
  ∀ n, P6261036485055875396.a n = A113429 n

end A113429

/-! ## A113429.P18257888514099443834

`and(1, A008586(n))-A113428(A017185(n))`
-/

namespace A113429.P18257888514099443834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A008586 n) - A113428 (A017185 n).toNat

end

end A113429.P18257888514099443834

namespace A113429

/-- `and(1, A008586(n))-A113428(A017185(n))` -/
def P18257888514099443834.Spec : Prop :=
  ∀ n, P18257888514099443834.a n = A113429 n

end A113429

/-! ## A113429.P2710153189200852208

`and(2, A000290(n))-A113428(A017185(n))`
-/

namespace A113429.P2710153189200852208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000290 n) - A113428 (A017185 n).toNat

end

end A113429.P2710153189200852208

namespace A113429

/-- `and(2, A000290(n))-A113428(A017185(n))` -/
def P2710153189200852208.Spec : Prop :=
  ∀ n, P2710153189200852208.a n = A113429 n

end A113429

/-! ## A113429.P5069703206860341322

`and(2, A008574(n))-A113428(A017185(n))`
-/

namespace A113429.P5069703206860341322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A008574 n) - A113428 (A017185 n).toNat

end

end A113429.P5069703206860341322

namespace A113429

/-- `and(2, A008574(n))-A113428(A017185(n))` -/
def P5069703206860341322.Spec : Prop :=
  ∀ n, P5069703206860341322.a n = A113429 n

end A113429

/-! ## A113429.P3211062091417907310

`A008683(A124388(n))-A113428(A017185(n))`
-/

namespace A113429.P3211062091417907310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A124388 n).toNat - A113428 (A017185 n).toNat

end

end A113429.P3211062091417907310

namespace A113429

/-- `A008683(A124388(n))-A113428(A017185(n))` -/
def P3211062091417907310.Spec : Prop :=
  ∀ n, P3211062091417907310.a n = A113429 n

end A113429

/-! ## A113429.P7343783427736650296

`A113428(A304205(n+1)-1)`
-/

namespace A113429.P7343783427736650296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113428 (A304205 (n + 1) - 1).toNat

end

end A113429.P7343783427736650296

namespace A113429

/-- `A113428(A304205(n+1)-1)` -/
def P7343783427736650296.Spec : Prop :=
  ∀ n, P7343783427736650296.a n = A113429 n

end A113429

/-!
# A113430: Expansion of f(-x, -x^2) * f(-x^10, -x^20) / f(-x^2, -x^8) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A113430, there is no canonical definition to state claims against.
-/

/-! ## A113430.P87465258194113620

`(1-and(2, n+1))*A208546(n)`
-/

namespace A113430.P87465258194113620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 (n + 1) : ℤ)) * A208546 n

end

end A113430.P87465258194113620

/-! ## A113430.P17201248810812399821

`A033999(n)*A207710(n)`
-/

namespace A113430.P17201248810812399821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A207710 n

end

end A113430.P17201248810812399821

/-! ## A113430.P14134151289342580138

`A057077(n)*A214529(n)`
-/

namespace A113430.P14134151289342580138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A214529 n

end

end A113430.P14134151289342580138

/-! ## A113430.P15567783718786382162

`A087960(n)*A208546(n)`
-/

namespace A113430.P15567783718786382162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A208546 n

end

end A113430.P15567783718786382162

/-! ## A113430.P12095433621348415071

`(A004442(n)-n)*A207710(n)`
-/

namespace A113430.P12095433621348415071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A207710 n

end

end A113430.P12095433621348415071

/-! ## A113430.P9465231470609755899

`A057077(A057077(n)+n)*A207710(n)`
-/

namespace A113430.P9465231470609755899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A057077 n + (n : ℤ)).toNat * A207710 n

end

end A113430.P9465231470609755899

/-! ## A113430.P14140716035694459367

`A113681(n)*A207710(n)*A207735(n)`
-/

namespace A113430.P14140716035694459367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113681 n * A207710 n * A207735 n

end

end A113430.P14140716035694459367

/-! ## A113430.P6834364467462881955

`A057077(n+1)*A208546(n)`
-/

namespace A113430.P6834364467462881955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A208546 n

end

end A113430.P6834364467462881955

/-! ## A113430.P5086899515151265576

`A057077(2*n)*A207710(n)`
-/

namespace A113430.P5086899515151265576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A207710 n

end

end A113430.P5086899515151265576

/-! ## A113430.P2574957008940428625

`A087960(2*n)*A207710(n)`
-/

namespace A113430.P2574957008940428625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A207710 n

end

end A113430.P2574957008940428625

/-! ## A113430.P3746796103061048919

`A204220(8*n)`
-/

namespace A113430.P3746796103061048919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204220 (8 * n)

end

end A113430.P3746796103061048919

/-! ## A113430.P8931085569955120045

`A207710(n)/A087960(n²)`
-/

namespace A113430.P8931085569955120045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207710 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A113430.P8931085569955120045

/-!
# A113431: Expansion of f(-x) * f(-x^10) / f(-x^4, -x^6) in powers of x where f() is Ramanujan's two-variable theta function.

The programs for A113431, there is no canonical definition to state claims against.
-/

/-! ## A113431.P17191203432451043702

`A121373(A259225(n)+A005408(n))`
-/

namespace A113431.P17191203432451043702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A259225 n + A005408 n).toNat

end

end A113431.P17191203432451043702

/-! ## A113431.P1387371277974547309

`A014564(xor(A228498(n+1), A238590(n+1)))`
-/

namespace A113431.P1387371277974547309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014564 (Int.xor (A228498 (n + 1)) (A238590 (n + 1))).toNat

end

end A113431.P1387371277974547309

/-! ## A113431.P3964163859071947770

`A108784(A108864(n+1))*A116915(n)`
-/

namespace A113431.P3964163859071947770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108784 (A108864 (n + 1)).toNat * A116915 n

end

end A113431.P3964163859071947770

/-! ## A113431.P16253854294715664709

`A116915(n)*A242179(A000065(n))`
-/

namespace A113431.P16253854294715664709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116915 n * A242179 (A000065 n).toNat

end

end A113431.P16253854294715664709

/-!
# A113432: Pierpont semiprimes: semiprimes of the form (2^K)*(3^L)+1.

The programs for A113432, there is no canonical definition to state claims against.
-/

/-! ## A113432.P18302945232222325420

`∩[A001358(n+1), A055600(n+1)]`
-/

namespace A113432.P18302945232222325420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113432.P18302945232222325420

/-! ## A113432.P3584584390464487566

`filter[A055600(n+1), A064911(#)]`
-/

namespace A113432.P3584584390464487566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A113432.P3584584390464487566

/-! ## A113432.P5362806955420430375

`∩[A055600(n+1), A077135(n+1)]`
-/

namespace A113432.P5362806955420430375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113432.P5362806955420430375

/-! ## A113432.P841227016853477335

`∩[A055600(n+1), A085155(n+1)]`
-/

namespace A113432.P841227016853477335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113432.P841227016853477335

/-! ## A113432.P15900444104964015028

`∩[A055600(n+1), A176540(n+1)]`
-/

namespace A113432.P15900444104964015028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113432.P15900444104964015028

/-!
# A113433: Semi-Pierpont semiprimes: products of exactly two Pierpont primes A005109.

The programs for A113433, the canonical program `A113433.P11763928153382516365` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113433 has offset 1).

The definition of A113433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113433.P8747826695282149895

`∩[A001358(n+1), A122260(n+1)]`
-/

namespace A113433.P8747826695282149895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113433.P8747826695282149895

namespace A113433

/-- `∩[A001358(n+1), A122260(n+1)]` -/
def P8747826695282149895.Spec : Prop :=
  ∀ n, (P8747826695282149895.a n : ℤ) = A113433 (n + 1)

end A113433

/-! ## A113433.P13136569111755802985

`filter[A122260(n+1), A064911(#)]`
-/

namespace A113433.P13136569111755802985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A113433.P13136569111755802985

namespace A113433

/-- `filter[A122260(n+1), A064911(#)]` -/
def P13136569111755802985.Spec : Prop :=
  ∀ n, P13136569111755802985.a n = A113433 (n + 1)

end A113433

/-! ## A113433.P15167909293193965622

`∩[A122260(n+1), A186621(n+1)+1]`
-/

namespace A113433.P15167909293193965622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113433.P15167909293193965622

namespace A113433

/-- `∩[A122260(n+1), A186621(n+1)+1]` -/
def P15167909293193965622.Spec : Prop :=
  ∀ n, (P15167909293193965622.a n : ℤ) = A113433 (n + 1)

end A113433

/-! ## A113433.P5122814987667425843

`∩[A122260(n+1), A175708(n+1)+1+n]`
-/

namespace A113433.P5122814987667425843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113433.P5122814987667425843

namespace A113433

/-- `∩[A122260(n+1), A175708(n+1)+1+n]` -/
def P5122814987667425843.Spec : Prop :=
  ∀ n, (P5122814987667425843.a n : ℤ) = A113433 (n + 1)

end A113433

/-! ## A113433.P14928395450347576845

`∩[A000040(n+1)-A065870(n+1), A122260(n+1)]`
-/

namespace A113433.P14928395450347576845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A065870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113433.P14928395450347576845

namespace A113433

/-- `∩[A000040(n+1)-A065870(n+1), A122260(n+1)]` -/
def P14928395450347576845.Spec : Prop :=
  ∀ n, (P14928395450347576845.a n : ℤ) = A113433 (n + 1)

end A113433

/-! ## A113433.P11763928153382516365

`filter[A001358(n+1), A122261(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A113433

/-- `filter[A001358(n+1), A122261(#)]` -/
def P11763928153382516365.Spec : Prop :=
  ∀ n, P11763928153382516365.a n = A113433 (n + 1)

theorem P11763928153382516365.correct : P11763928153382516365.Spec := by
  intro n
  simp only [A113433, Nat.add_sub_cancel]

end A113433

/-! ## A113433.P4208253414330612544

`filter[A176540(n+2), A122261(#)]`
-/

namespace A113433.P4208253414330612544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122261 (f1 j).toNat = 1) n)

end

end A113433.P4208253414330612544

namespace A113433

/-- `filter[A176540(n+2), A122261(#)]` -/
def P4208253414330612544.Spec : Prop :=
  ∀ n, P4208253414330612544.a n = A113433 (n + 1)

end A113433

/-! ## A113433.P8319553655942816144

`filter[A129767(2*(n+1)), A122261(#)]`
-/

namespace A113433.P8319553655942816144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122261 (f1 j).toNat = 1) n)

end

end A113433.P8319553655942816144

namespace A113433

/-- `filter[A129767(2*(n+1)), A122261(#)]` -/
def P8319553655942816144.Spec : Prop :=
  ∀ n, P8319553655942816144.a n = A113433 (n + 1)

end A113433

/-! ## A113433.P17098690154179198143

`A179312(∩[A075818(n+1), A122260(n+1)])`
-/

namespace A113433.P17098690154179198143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A113433.P17098690154179198143

namespace A113433

/-- `A179312(∩[A075818(n+1), A122260(n+1)])` -/
def P17098690154179198143.Spec : Prop :=
  ∀ n, P17098690154179198143.a n = A113433 (n + 1)

end A113433

/-!
# A113434: Semi-Pierpont semiprimes which are also Pierpont semiprimes.

The programs for A113434, there is no canonical definition to state claims against.
-/

/-! ## A113434.P2672581678444181487

`A113432(gcd(C(2, n+2), ceil(8^(n/5))))`
-/

namespace A113434.P2672581678444181487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113432 (Int.gcd (Nat.choose 2 (n + 2) : ℤ) ⌈(8 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌉)

end

end A113434.P2672581678444181487

/-! ## A113434.P11447447993448787103

`A113432(or(C(2, n+2), ceil(8^(n/5))))`
-/

namespace A113434.P11447447993448787103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113432 (Int.lor (Nat.choose 2 (n + 2) : ℤ) ⌈(8 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌉).toNat

end

end A113434.P11447447993448787103

/-! ## A113434.P3232789620401623879

`A113432(A000029(n))`
-/

namespace A113434.P3232789620401623879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113432 (A000029 n).toNat

end

end A113434.P3232789620401623879

/-!
# A113435: a(n) = a(n-1) + Sum_{k=0..n/3} a(n-3k) with a(0)=1.

The programs for A113435, the canonical program `A113435.P11780095909430242374` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113435 has offset 0).

The definition of A113435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113435.P11780095909430242374

`a(n-1)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113435

/-- `a(n-1)+2*a(n-3)-a(n-4)` -/
def P11780095909430242374.Spec : Prop :=
  ∀ n, P11780095909430242374.a n = A113435 n

theorem P11780095909430242374.correct : P11780095909430242374.Spec := by
  intro n
  simp only [A113435]

end A113435

/-! ## A113435.P18349654037781974011

`ogf((1-x^3)/(1-x-2x^3+x^4))`
-/

namespace A113435.P18349654037781974011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -1] [1, -1, 0, -2, 1] n

end

end A113435.P18349654037781974011

namespace A113435

/-- `ogf((1-x^3)/(1-x-2x^3+x^4))` -/
def P18349654037781974011.Spec : Prop :=
  ∀ n, P18349654037781974011.a n = A113435 n

end A113435

/-! ## A113435.P5406002881281281691

`2*a(n-3)-(a(n-4)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A113435.P5406002881281281691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  2 * a (n - 3) - (a (n - 4) - a (n - 1))

end

end A113435.P5406002881281281691

namespace A113435

/-- `2*a(n-3)-(a(n-4)-a(n-1))` -/
def P5406002881281281691.Spec : Prop :=
  ∀ n, P5406002881281281691.a n = A113435 n

end A113435

/-! ## A113435.P13426631789639983743

`a(n-1)+a(n-3)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A113435.P13426631789639983743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  a (n - 1) + (a (n - 3) + (a (n - 3) - a (n - 4)))

end

end A113435.P13426631789639983743

namespace A113435

/-- `a(n-1)+a(n-3)+a(n-3)-a(n-4)` -/
def P13426631789639983743.Spec : Prop :=
  ∀ n, P13426631789639983743.a n = A113435 n

theorem P13426631789639983743.correct : P13426631789639983743.Spec := by
  intro n
  simp only [A113435, Nat.add_sub_cancel, A113435.P13426631789639983743.a, A113435.P11780095909430242374.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A113435

/-! ## A113435.P8750906281525192760

`a(n-1)-(a(n-4)-a(n-3)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A113435.P8750906281525192760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 3) - a (n - 3))

end

end A113435.P8750906281525192760

namespace A113435

/-- `a(n-1)-(a(n-4)-a(n-3)-a(n-3))` -/
def P8750906281525192760.Spec : Prop :=
  ∀ n, P8750906281525192760.a n = A113435 n

end A113435

/-! ## A113435.P1152377066394626053

`∑[A176848(n)]`
-/

namespace A113435.P1152377066394626053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113435.P1152377066394626053

namespace A113435

/-- `∑[A176848(n)]` -/
def P1152377066394626053.Spec : Prop :=
  ∀ n, P1152377066394626053.a n = A113435 n

end A113435

/-! ## A113435.P7002478816199143705

`(∑[A052916(n)]+a(n-1))/2` with `a(0)=1`
-/

namespace A113435.P7002478816199143705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052916 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + a (n - 1)) / 2

end

end A113435.P7002478816199143705

namespace A113435

/-- `(∑[A052916(n)]+a(n-1))/2` -/
def P7002478816199143705.Spec : Prop :=
  ∀ n, P7002478816199143705.a n = (A113435 n : ℚ)

end A113435

/-!
# A113436: First row of A113435.

The programs for A113436, the canonical program `A113436.P12046965809021464307` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113436 has offset 0).

The definition of A113436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113436.P12046965809021464307

`A113435(3*n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A113436

/-- `A113435(3*n)` -/
def P12046965809021464307.Spec : Prop :=
  ∀ n, P12046965809021464307.a n = A113436 n

theorem P12046965809021464307.correct : P12046965809021464307.Spec := by
  intro n
  simp only [A113436]

end A113436

/-! ## A113436.P4795212794187576268

`7*a(n-1)-15*a(n-2)+11*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=26`
-/

namespace A113436.P4795212794187576268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7, 26] fun n a =>
  7 * a (n - 1) - 15 * a (n - 2) + 11 * a (n - 3) - a (n - 4)

end

end A113436.P4795212794187576268

namespace A113436

/-- `7*a(n-1)-15*a(n-2)+11*a(n-3)-a(n-4)` -/
def P4795212794187576268.Spec : Prop :=
  ∀ n, P4795212794187576268.a n = A113436 n

end A113436

/-! ## A113436.P4792867110423678168

`record[A113435(Δ[A085787(n)])]`
-/

namespace A113436.P4792867110423678168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113435 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113436.P4792867110423678168

namespace A113436

/-- `record[A113435(Δ[A085787(n)])]` -/
def P4792867110423678168.Spec : Prop :=
  ∀ n, P4792867110423678168.a n = A113436 n

end A113436

/-! ## A113436.P1657432112856149788

`record[A113435(A025480(n)+n)]`
-/

namespace A113436.P1657432112856149788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113435 (A025480 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113436.P1657432112856149788

namespace A113436

/-- `record[A113435(A025480(n)+n)]` -/
def P1657432112856149788.Spec : Prop :=
  ∀ n, P1657432112856149788.a n = A113436 n

end A113436

/-! ## A113436.P14342102311338895532

`record[A113435(n)/A169609(n)]`
-/

namespace A113436.P14342102311338895532
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113435 n : ℚ) / (A169609 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113436.P14342102311338895532

namespace A113436

/-- `record[A113435(n)/A169609(n)]` -/
def P14342102311338895532.Spec : Prop :=
  ∀ n, P14342102311338895532.a n = (A113436 n : ℚ)

end A113436

/-! ## A113436.P1981347736630657803

`lcm(log2(1/2), A113435(A008486(n)))`
-/

namespace A113436.P1981347736630657803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A113435 (A008486 n).toNat)

end

end A113436.P1981347736630657803

namespace A113436

/-- `lcm(log2(1/2), A113435(A008486(n)))` -/
def P1981347736630657803.Spec : Prop :=
  ∀ n, (P1981347736630657803.a n : ℤ) = A113436 n

end A113436

/-! ## A113436.P14515529755906707528

`or(A000007(n), A113435(A008486(n)))`
-/

namespace A113436.P14515529755906707528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A113435 (A008486 n).toNat)

end

end A113436.P14515529755906707528

namespace A113436

/-- `or(A000007(n), A113435(A008486(n)))` -/
def P14515529755906707528.Spec : Prop :=
  ∀ n, P14515529755906707528.a n = A113436 n

end A113436

/-! ## A113436.P7312811067469229490

`A113435(A008486(n))+A000007(n+1)`
-/

namespace A113436.P7312811067469229490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113435 (A008486 n).toNat + A000007 (n + 1)

end

end A113436.P7312811067469229490

namespace A113436

/-- `A113435(A008486(n))+A000007(n+1)` -/
def P7312811067469229490.Spec : Prop :=
  ∀ n, P7312811067469229490.a n = A113436 n

end A113436

/-! ## A113436.P14297280977915424018

`or(A000007(n), A113435(A016777(n)-1))`
-/

namespace A113436.P14297280977915424018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A113435 (A016777 n - 1).toNat)

end

end A113436.P14297280977915424018

namespace A113436

/-- `or(A000007(n), A113435(A016777(n)-1))` -/
def P14297280977915424018.Spec : Prop :=
  ∀ n, P14297280977915424018.a n = A113436 n

end A113436

/-! ## A113436.P10634485271045107688

`A285125(A000010(n+1))+A113435(n+n+n)`
-/

namespace A113436.P10634485271045107688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (A000010 (n + 1)).toNat + A113435 (n + n + n)

end

end A113436.P10634485271045107688

namespace A113436

/-- `A285125(A000010(n+1))+A113435(n+n+n)` -/
def P10634485271045107688.Spec : Prop :=
  ∀ n, P10634485271045107688.a n = A113436 n

end A113436

/-!
# A113437: Second row of A113435.

The programs for A113437, the canonical program `A113437.P16448476863721399276` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113437 has offset 0).

The definition of A113437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113437.P16448476863721399276

`A113435(3*n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A113437

/-- `A113435(3*n+1)` -/
def P16448476863721399276.Spec : Prop :=
  ∀ n, P16448476863721399276.a n = A113437 n

theorem P16448476863721399276.correct : P16448476863721399276.Spec := by
  intro n
  simp only [A113437]

end A113437

/-! ## A113437.P9577130044150456548

`7*a(n-1)-15*a(n-2)+11*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=11, a(3)=41`
-/

namespace A113437.P9577130044150456548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 11, 41] fun n a =>
  7 * a (n - 1) - 15 * a (n - 2) + 11 * a (n - 3) - a (n - 4)

end

end A113437.P9577130044150456548

namespace A113437

/-- `7*a(n-1)-15*a(n-2)+11*a(n-3)-a(n-4)` -/
def P9577130044150456548.Spec : Prop :=
  ∀ n, P9577130044150456548.a n = A113437 n

end A113437

/-! ## A113437.P1135413971028088226

`record[A113435(A152271(n+1)+n)]`
-/

namespace A113437.P1135413971028088226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113435 (A152271 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113437.P1135413971028088226

namespace A113437

/-- `record[A113435(A152271(n+1)+n)]` -/
def P1135413971028088226.Spec : Prop :=
  ∀ n, P1135413971028088226.a n = A113437 n

end A113437

/-! ## A113437.P1244372327432796388

`record[A113435(n+1)/A169609(n)]`
-/

namespace A113437.P1244372327432796388
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113435 (n + 1) : ℚ) / (A169609 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113437.P1244372327432796388

namespace A113437

/-- `record[A113435(n+1)/A169609(n)]` -/
def P1244372327432796388.Spec : Prop :=
  ∀ n, P1244372327432796388.a n = (A113437 n : ℚ)

end A113437

/-! ## A113437.P5474852747498669770

`or(A000007(n), A113435(A016777(n)))`
-/

namespace A113437.P5474852747498669770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A113435 (A016777 n).toNat)

end

end A113437.P5474852747498669770

namespace A113437

/-- `or(A000007(n), A113435(A016777(n)))` -/
def P5474852747498669770.Spec : Prop :=
  ∀ n, P5474852747498669770.a n = A113437 n

end A113437

/-! ## A113437.P2827158561392851348

`A113435(A016777(n))+A000007(n+1)`
-/

namespace A113437.P2827158561392851348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113435 (A016777 n).toNat + A000007 (n + 1)

end

end A113437.P2827158561392851348

namespace A113437

/-- `A113435(A016777(n))+A000007(n+1)` -/
def P2827158561392851348.Spec : Prop :=
  ∀ n, P2827158561392851348.a n = A113437 n

end A113437

/-! ## A113437.P15849939406899613153

`or(A000007(n), A113435(A008486(n)+1))`
-/

namespace A113437.P15849939406899613153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A113435 (A008486 n + 1).toNat)

end

end A113437.P15849939406899613153

namespace A113437

/-- `or(A000007(n), A113435(A008486(n)+1))` -/
def P15849939406899613153.Spec : Prop :=
  ∀ n, P15849939406899613153.a n = A113437 n

end A113437

/-! ## A113437.P15605260562299892870

`A285125(A000010(n+1))+A113435(n+1+n+n)`
-/

namespace A113437.P15605260562299892870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (A000010 (n + 1)).toNat + A113435 (n + 1 + (n + n))

end

end A113437.P15605260562299892870

namespace A113437

/-- `A285125(A000010(n+1))+A113435(n+1+n+n)` -/
def P15605260562299892870.Spec : Prop :=
  ∀ n, P15605260562299892870.a n = A113437 n

end A113437

/-!
# A113438: Third row of A113435.

The programs for A113438, the canonical program `A113438.P6175426204880661903` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113438 has offset 0).

The definition of A113438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113438.P6175426204880661903

`7*a(n-1)-15*a(n-2)+11*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=16, a(3)=62`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113438

/-- `7*a(n-1)-15*a(n-2)+11*a(n-3)-a(n-4)` -/
def P6175426204880661903.Spec : Prop :=
  ∀ n, P6175426204880661903.a n = A113438 n

theorem P6175426204880661903.correct : P6175426204880661903.Spec := by
  intro n
  simp only [A113438]

end A113438

/-! ## A113438.P7589267229813123611

`A113435(3*n+2)`
-/

namespace A113438.P7589267229813123611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113435 (3 * n + 2)

end

end A113438.P7589267229813123611

namespace A113438

/-- `A113435(3*n+2)` -/
def P7589267229813123611.Spec : Prop :=
  ∀ n, P7589267229813123611.a n = A113438 n

end A113438

/-! ## A113438.P7585663565929847429

`record[A113435(Δ[A085787(n)]-1)]`
-/

namespace A113438.P7585663565929847429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113435 (f2 (n + 1) - f2 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113438.P7585663565929847429

namespace A113438

/-- `record[A113435(Δ[A085787(n)]-1)]` -/
def P7585663565929847429.Spec : Prop :=
  ∀ n, P7585663565929847429.a n = A113438 n

end A113438

/-! ## A113438.P2127509279306875428

`A113436(n+1)-∑[A113436(n)]`
-/

namespace A113438.P2127509279306875428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113436 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113436 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113438.P2127509279306875428

namespace A113438

/-- `A113436(n+1)-∑[A113436(n)]` -/
def P2127509279306875428.Spec : Prop :=
  ∀ n, P2127509279306875428.a n = A113438 n

end A113438

/-! ## A113438.P14266687516127932079

`record[A113435(A025480(n+1)+n)]`
-/

namespace A113438.P14266687516127932079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113435 (A025480 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113438.P14266687516127932079

namespace A113438

/-- `record[A113435(A025480(n+1)+n)]` -/
def P14266687516127932079.Spec : Prop :=
  ∀ n, P14266687516127932079.a n = A113438 n

end A113438

/-! ## A113438.P812970640480501500

`record[A113435(A331952(n)%(n+1))]`
-/

namespace A113438.P812970640480501500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113435 (Int.tmod (A331952 n) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113438.P812970640480501500

namespace A113438

/-- `record[A113435(A331952(n)%(n+1))]` -/
def P812970640480501500.Spec : Prop :=
  ∀ n, P812970640480501500.a n = A113438 n

end A113438

/-! ## A113438.P9719895420821060044

`record[A113435(A152271(3*A093178(n)))]`
-/

namespace A113438.P9719895420821060044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113435 (A152271 (3 * A093178 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113438.P9719895420821060044

namespace A113438

/-- `record[A113435(A152271(3*A093178(n)))]` -/
def P9719895420821060044.Spec : Prop :=
  ∀ n, P9719895420821060044.a n = A113438 n

end A113438

/-! ## A113438.P4988405561537680828

`record[A113435(A152271(n)+A093178(n))]`
-/

namespace A113438.P4988405561537680828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113435 (A152271 n + A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113438.P4988405561537680828

namespace A113438

/-- `record[A113435(A152271(n)+A093178(n))]` -/
def P4988405561537680828.Spec : Prop :=
  ∀ n, P4988405561537680828.a n = A113438 n

end A113438

/-!
# A113439: a(n) = a(n-1) + Sum_{k=1..floor(n/4)} a(n-4k), with a(0)=1.

The programs for A113439, the canonical program `A113439.P17437294148334547545` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113439 has offset 0).

The definition of A113439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113439.P17437294148334547545

`a(n-1)+2*a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113439

/-- `a(n-1)+2*a(n-4)-a(n-5)` -/
def P17437294148334547545.Spec : Prop :=
  ∀ n, P17437294148334547545.a n = A113439 n

theorem P17437294148334547545.correct : P17437294148334547545.Spec := by
  intro n
  simp only [A113439]

end A113439

/-! ## A113439.P13934396133528459850

`A003005(A143951(n))`
-/

namespace A113439.P13934396133528459850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003005 (A143951 n).toNat

end

end A113439.P13934396133528459850

namespace A113439

/-- `A003005(A143951(n))` -/
def P13934396133528459850.Spec : Prop :=
  ∀ n, P13934396133528459850.a n = A113439 n

end A113439

/-! ## A113439.P3810856333212774081

`A111651(A236582(n))`
-/

namespace A113439.P3810856333212774081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (A236582 n).toNat

end

end A113439.P3810856333212774081

namespace A113439

/-- `A111651(A236582(n))` -/
def P3810856333212774081.Spec : Prop :=
  ∀ n, P3810856333212774081.a n = A113439 n

end A113439

/-! ## A113439.P8252751800202085093

`A135660(A011782(n))+A037810(n+4)`
-/

namespace A113439.P8252751800202085093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A011782 n).toNat + A037810 (n + 4)

end

end A113439.P8252751800202085093

namespace A113439

/-- `A135660(A011782(n))+A037810(n+4)` -/
def P8252751800202085093.Spec : Prop :=
  ∀ n, P8252751800202085093.a n = A113439 n

end A113439

/-! ## A113439.P17218554168948678587

`A337769(A346073(n))`
-/

namespace A113439.P17218554168948678587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (A346073 n).toNat

end

end A113439.P17218554168948678587

namespace A113439

/-- `A337769(A346073(n))` -/
def P17218554168948678587.Spec : Prop :=
  ∀ n, P17218554168948678587.a n = A113439 n

end A113439

/-!
# A113440: First row of A113439.

The programs for A113440, the canonical program `A113440.P1491322506382521832` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113440 has offset 0).

The definition of A113440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113440.P1491322506382521832

`9*a(n-1)-28*a(n-2)+38*a(n-3)-20*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=34, a(4)=146`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113440

/-- `9*a(n-1)-28*a(n-2)+38*a(n-3)-20*a(n-4)+a(n-5)` -/
def P1491322506382521832.Spec : Prop :=
  ∀ n, P1491322506382521832.a n = A113440 n

theorem P1491322506382521832.correct : P1491322506382521832.Spec := by
  intro n
  simp only [A113440]

end A113440

/-! ## A113440.P17294389096861298796

`A113439(4*n)`
-/

namespace A113440.P17294389096861298796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (4 * n)

end

end A113440.P17294389096861298796

namespace A113440

/-- `A113439(4*n)` -/
def P17294389096861298796.Spec : Prop :=
  ∀ n, P17294389096861298796.a n = A113440 n

end A113440

/-! ## A113440.P2086783799314432350

`record[A113439(lcm(2, n)+2)]`
-/

namespace A113440.P2086783799314432350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (Nat.lcm 2 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113440.P2086783799314432350

namespace A113440

/-- `record[A113439(lcm(2, n)+2)]` -/
def P2086783799314432350.Spec : Prop :=
  ∀ n, P2086783799314432350.a n = A113440 n

end A113440

/-! ## A113440.P16641058230848144623

`record[A113439(A022998(n))]`
-/

namespace A113440.P16641058230848144623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (A022998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113440.P16641058230848144623

namespace A113440

/-- `record[A113439(A022998(n))]` -/
def P16641058230848144623.Spec : Prop :=
  ∀ n, P16641058230848144623.a n = A113440 n

end A113440

/-! ## A113440.P5750526254358836632

`record[A113439(A257088(n))]`
-/

namespace A113440.P5750526254358836632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (A257088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113440.P5750526254358836632

namespace A113440

/-- `record[A113439(A257088(n))]` -/
def P5750526254358836632.Spec : Prop :=
  ∀ n, P5750526254358836632.a n = A113440 n

end A113440

/-! ## A113440.P5797016713293406724

`record[A113439(A058281(n)-1)]`
-/

namespace A113440.P5797016713293406724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (A058281 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113440.P5797016713293406724

namespace A113440

/-- `record[A113439(A058281(n)-1)]` -/
def P5797016713293406724.Spec : Prop :=
  ∀ n, P5797016713293406724.a n = A113440 n

end A113440

/-! ## A113440.P4213237086151432802

`record[A113439(n)/A009001(n)]`
-/

namespace A113440.P4213237086151432802
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113439 n : ℚ) / (A009001 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113440.P4213237086151432802

namespace A113440

/-- `record[A113439(n)/A009001(n)]` -/
def P4213237086151432802.Spec : Prop :=
  ∀ n, P4213237086151432802.a n = (A113440 n : ℚ)

end A113440

/-! ## A113440.P10650995674268649112

`record[A113439(n)^A056594(n)]`
-/

namespace A113440.P10650995674268649112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113439 n : ℚ) ^ (A056594 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113440.P10650995674268649112

namespace A113440

/-- `record[A113439(n)^A056594(n)]` -/
def P10650995674268649112.Spec : Prop :=
  ∀ n, P10650995674268649112.a n = (A113440 n : ℚ)

end A113440

/-!
# A113441: Second row of A113439.

The programs for A113441, the canonical program `A113441.P17924278519954903786` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113441 has offset 0).

The definition of A113441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113441.P17924278519954903786

`9*a(n-1)-28*a(n-2)+38*a(n-3)-20*a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=12, a(3)=50, a(4)=212`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113441

/-- `9*a(n-1)-28*a(n-2)+38*a(n-3)-20*a(n-4)+a(n-5)` -/
def P17924278519954903786.Spec : Prop :=
  ∀ n, P17924278519954903786.a n = A113441 n

theorem P17924278519954903786.correct : P17924278519954903786.Spec := by
  intro n
  simp only [A113441]

end A113441

/-! ## A113441.P9050563718509304594

`A113439(4*n+1)`
-/

namespace A113441.P9050563718509304594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (4 * n + 1)

end

end A113441.P9050563718509304594

namespace A113441

/-- `A113439(4*n+1)` -/
def P9050563718509304594.Spec : Prop :=
  ∀ n, P9050563718509304594.a n = A113441 n

end A113441

/-! ## A113441.P17807355293993319623

`record[A113439(A058281(n))]`
-/

namespace A113441.P17807355293993319623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (A058281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113441.P17807355293993319623

namespace A113441

/-- `record[A113439(A058281(n))]` -/
def P17807355293993319623.Spec : Prop :=
  ∀ n, P17807355293993319623.a n = A113441 n

end A113441

/-! ## A113441.P16787065950520649023

`record[A113439(A022998(n)+1)]`
-/

namespace A113441.P16787065950520649023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (A022998 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113441.P16787065950520649023

namespace A113441

/-- `record[A113439(A022998(n)+1)]` -/
def P16787065950520649023.Spec : Prop :=
  ∀ n, P16787065950520649023.a n = A113441 n

end A113441

/-! ## A113441.P14556382596488955280

`record[A113439(A257088(n)+1)]`
-/

namespace A113441.P14556382596488955280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (A257088 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113441.P14556382596488955280

namespace A113441

/-- `record[A113439(A257088(n)+1)]` -/
def P14556382596488955280.Spec : Prop :=
  ∀ n, P14556382596488955280.a n = A113441 n

end A113441

/-! ## A113441.P14095642121253256237

`record[A113439(A006257(2*n))]`
-/

namespace A113441.P14095642121253256237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (A006257 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113441.P14095642121253256237

namespace A113441

/-- `record[A113439(A006257(2*n))]` -/
def P14095642121253256237.Spec : Prop :=
  ∀ n, P14095642121253256237.a n = A113441 n

end A113441

/-! ## A113441.P18414786774027548193

`record[A113439(and(n, A056594(n+1)))]`
-/

namespace A113441.P18414786774027548193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (Int.land (n : ℤ) (A056594 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113441.P18414786774027548193

namespace A113441

/-- `record[A113439(and(n, A056594(n+1)))]` -/
def P18414786774027548193.Spec : Prop :=
  ∀ n, P18414786774027548193.a n = A113441 n

end A113441

/-! ## A113441.P529449484527026738

`A113439(A016813(n))+A113429(A001748(n+1))`
-/

namespace A113441.P529449484527026738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (A016813 n).toNat + A113429 (A001748 (n + 1)).toNat

end

end A113441.P529449484527026738

namespace A113441

/-- `A113439(A016813(n))+A113429(A001748(n+1))` -/
def P529449484527026738.Spec : Prop :=
  ∀ n, P529449484527026738.a n = A113441 n

end A113441

/-! ## A113441.P18279640879983179573

`A113439(A016813(n))+A113428(A113427(n+1))`
-/

namespace A113441.P18279640879983179573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (A016813 n).toNat + A113428 (A113427 (n + 1)).toNat

end

end A113441.P18279640879983179573

namespace A113441

/-- `A113439(A016813(n))+A113428(A113427(n+1))` -/
def P18279640879983179573.Spec : Prop :=
  ∀ n, P18279640879983179573.a n = A113441 n

end A113441

/-! ## A113441.P13560751641569457481

`A113439(A016813(n))+A113428(A142180(n+1))`
-/

namespace A113441.P13560751641569457481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (A016813 n).toNat + A113428 (A142180 (n + 1)).toNat

end

end A113441.P13560751641569457481

namespace A113441

/-- `A113439(A016813(n))+A113428(A142180(n+1))` -/
def P13560751641569457481.Spec : Prop :=
  ∀ n, P13560751641569457481.a n = A113441 n

end A113441

/-!
# A113442: Third row of A113439.

The programs for A113442, the canonical program `A113442.P6536560468175472114` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113442 has offset 0).

The definition of A113442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113442.P6536560468175472114

`A113439(4*n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A113442

/-- `A113439(4*n+2)` -/
def P6536560468175472114.Spec : Prop :=
  ∀ n, P6536560468175472114.a n = A113442 n

theorem P6536560468175472114.correct : P6536560468175472114.Spec := by
  intro n
  simp only [A113442]

end A113442

/-! ## A113442.P12572152972370515712

`9*a(n-1)-28*a(n-2)+38*a(n-3)-20*a(n-4)+a(n-5)` with `a(0)=1, a(1)=4, a(2)=17, a(3)=72, a(4)=306`
-/

namespace A113442.P12572152972370515712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 17, 72, 306] fun n a =>
  9 * a (n - 1) - 28 * a (n - 2) + 38 * a (n - 3) - 20 * a (n - 4) + a (n - 5)

end

end A113442.P12572152972370515712

namespace A113442

/-- `9*a(n-1)-28*a(n-2)+38*a(n-3)-20*a(n-4)+a(n-5)` -/
def P12572152972370515712.Spec : Prop :=
  ∀ n, P12572152972370515712.a n = A113442 n

end A113442

/-! ## A113442.P9540052435519689987

`record[A113439(lcm(2, n))]`
-/

namespace A113442.P9540052435519689987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (Nat.lcm 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113442.P9540052435519689987

namespace A113442

/-- `record[A113439(lcm(2, n))]` -/
def P9540052435519689987.Spec : Prop :=
  ∀ n, P9540052435519689987.a n = A113442 n

end A113442

/-! ## A113442.P9873486611049002121

`record[A113439(2*n*n%2)]`
-/

namespace A113442.P9873486611049002121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (2 * n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113442.P9873486611049002121

namespace A113442

/-- `record[A113439(2*n*n%2)]` -/
def P9873486611049002121.Spec : Prop :=
  ∀ n, P9873486611049002121.a n = A113442 n

end A113442

/-! ## A113442.P4897804832991575196

`record[A113439(A058281(n)+1)]`
-/

namespace A113442.P4897804832991575196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (A058281 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113442.P4897804832991575196

namespace A113442

/-- `record[A113439(A058281(n)+1)]` -/
def P4897804832991575196.Spec : Prop :=
  ∀ n, P4897804832991575196.a n = A113442 n

end A113442

/-! ## A113442.P8619832770429238726

`record[A113439(A022998(n)+2)]`
-/

namespace A113442.P8619832770429238726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (A022998 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113442.P8619832770429238726

namespace A113442

/-- `record[A113439(A022998(n)+2)]` -/
def P8619832770429238726.Spec : Prop :=
  ∀ n, P8619832770429238726.a n = A113442 n

end A113442

/-! ## A113442.P15044249896054165807

`record[A113439(A257088(n)+2)]`
-/

namespace A113442.P15044249896054165807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (A257088 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113442.P15044249896054165807

namespace A113442

/-- `record[A113439(A257088(n)+2)]` -/
def P15044249896054165807.Spec : Prop :=
  ∀ n, P15044249896054165807.a n = A113442 n

end A113442

/-! ## A113442.P16498744954645419607

`record[A113439(2*A006257(n))]`
-/

namespace A113442.P16498744954645419607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (2 * A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113442.P16498744954645419607

namespace A113442

/-- `record[A113439(2*A006257(n))]` -/
def P16498744954645419607.Spec : Prop :=
  ∀ n, P16498744954645419607.a n = A113442 n

end A113442

/-! ## A113442.P254290153820148870

`record[A113439(and(n, A056594(n)))]`
-/

namespace A113442.P254290153820148870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (Int.land (n : ℤ) (A056594 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113442.P254290153820148870

namespace A113442

/-- `record[A113439(and(n, A056594(n)))]` -/
def P254290153820148870.Spec : Prop :=
  ∀ n, P254290153820148870.a n = A113442 n

end A113442

/-!
# A113443: Fourth row of A113439.

The programs for A113443, the canonical program `A113443.P4465763249933383066` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113443 has offset 0).

The definition of A113443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113443.P4465763249933383066

`A113439(4*n+3)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A113443

/-- `A113439(4*n+3)` -/
def P4465763249933383066.Spec : Prop :=
  ∀ n, P4465763249933383066.a n = A113443 n

theorem P4465763249933383066.correct : P4465763249933383066.Spec := by
  intro n
  simp only [A113443]

end A113443

/-! ## A113443.P8860701332588924451

`9*a(n-1)-28*a(n-2)+38*a(n-3)-20*a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=23, a(3)=101, a(4)=436`
-/

namespace A113443.P8860701332588924451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 23, 101, 436] fun n a =>
  9 * a (n - 1) - 28 * a (n - 2) + 38 * a (n - 3) - 20 * a (n - 4) + a (n - 5)

end

end A113443.P8860701332588924451

namespace A113443

/-- `9*a(n-1)-28*a(n-2)+38*a(n-3)-20*a(n-4)+a(n-5)` -/
def P8860701332588924451.Spec : Prop :=
  ∀ n, P8860701332588924451.a n = A113443 n

end A113443

/-! ## A113443.P2872977099660790625

`record[A113439(lcm(2, n)+1)]`
-/

namespace A113443.P2872977099660790625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (Nat.lcm 2 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113443.P2872977099660790625

namespace A113443

/-- `record[A113439(lcm(2, n)+1)]` -/
def P2872977099660790625.Spec : Prop :=
  ∀ n, P2872977099660790625.a n = A113443 n

end A113443

/-! ## A113443.P15679123968093450772

`record[A113439(A058281(n)+2)]`
-/

namespace A113443.P15679123968093450772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (A058281 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113443.P15679123968093450772

namespace A113443

/-- `record[A113439(A058281(n)+2)]` -/
def P15679123968093450772.Spec : Prop :=
  ∀ n, P15679123968093450772.a n = A113443 n

end A113443

/-! ## A113443.P9878520063378198171

`record[A113439(A257088(n)-1)]`
-/

namespace A113443.P9878520063378198171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (A257088 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113443.P9878520063378198171

namespace A113443

/-- `record[A113439(A257088(n)-1)]` -/
def P9878520063378198171.Spec : Prop :=
  ∀ n, P9878520063378198171.a n = A113443 n

end A113443

/-! ## A113443.P13842238124536296859

`record[A113439(A022998(n+1)-1)]`
-/

namespace A113443.P13842238124536296859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (A022998 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113443.P13842238124536296859

namespace A113443

/-- `record[A113439(A022998(n+1)-1)]` -/
def P13842238124536296859.Spec : Prop :=
  ∀ n, P13842238124536296859.a n = A113443 n

end A113443

/-! ## A113443.P8361158736848487931

`record[and(A056594(n), A113439(n+1))]`
-/

namespace A113443.P8361158736848487931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056594 n) (A113439 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113443.P8361158736848487931

namespace A113443

/-- `record[and(A056594(n), A113439(n+1))]` -/
def P8361158736848487931.Spec : Prop :=
  ∀ n, P8361158736848487931.a n = A113443 n

end A113443

/-! ## A113443.P17716105366551048678

`A113440(n+1)-∑[A113440(n)]`
-/

namespace A113443.P17716105366551048678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113440 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113443.P17716105366551048678

namespace A113443

/-- `A113440(n+1)-∑[A113440(n)]` -/
def P17716105366551048678.Spec : Prop :=
  ∀ n, P17716105366551048678.a n = A113443 n

end A113443

/-!
# A113444: a(n) = a(n-1) + Sum_{0

The programs for A113444, the canonical program `A113444.P14028931119982460285` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113444 has offset 0).

The definition of A113444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113444.P14028931119982460285

`a(n-1)+2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113444

/-- `a(n-1)+2*a(n-5)-a(n-6)` -/
def P14028931119982460285.Spec : Prop :=
  ∀ n, P14028931119982460285.a n = A113444 n

theorem P14028931119982460285.correct : P14028931119982460285.Spec := by
  intro n
  simp only [A113444]

end A113444

/-! ## A113444.P8085003624731516910

`A114044(n)+A011743(A030706(n))`
-/

namespace A113444.P8085003624731516910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114044 n + A011743 (A030706 (n + 1)).toNat

end

end A113444.P8085003624731516910

namespace A113444

/-- `A114044(n)+A011743(A030706(n))` -/
def P8085003624731516910.Spec : Prop :=
  ∀ n, P8085003624731516910.a n = A113444 n

end A113444

/-! ## A113444.P9664315473502642046

`A129251(A000602(n))+A114044(n)`
-/

namespace A113444.P9664315473502642046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A000602 n).toNat + A114044 n

end

end A113444.P9664315473502642046

namespace A113444

/-- `A129251(A000602(n))+A114044(n)` -/
def P9664315473502642046.Spec : Prop :=
  ∀ n, P9664315473502642046.a n = A113444 n

end A113444

/-! ## A113444.P12798540460456426203

`A351724(n)+A011743(A030706(n))`
-/

namespace A113444.P12798540460456426203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351724 n + A011743 (A030706 (n + 1)).toNat

end

end A113444.P12798540460456426203

namespace A113444

/-- `A351724(n)+A011743(A030706(n))` -/
def P12798540460456426203.Spec : Prop :=
  ∀ n, P12798540460456426203.a n = A113444 n

end A113444

/-! ## A113444.P16473149990285523757

`A048266(A114044(n))`
-/

namespace A113444.P16473149990285523757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A114044 n).toNat

end

end A113444.P16473149990285523757

namespace A113444

/-- `A048266(A114044(n))` -/
def P16473149990285523757.Spec : Prop :=
  ∀ n, P16473149990285523757.a n = A113444 n

end A113444

/-!
# A113446: Expansion of (phi(q)^2 - phi(q^3)^2) / 4 in powers of q where phi() is a Ramanujan theta function.

The programs for A113446, the canonical program `A113446.P13280159862498089368` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113446 has offset 1).

The definition of A113446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113446.P13067783843329459106

`Δ[xor(n, 2*n)]%2*A035154(n+1)`
-/

namespace A113446.P13067783843329459106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 * A035154 (n + 1)

end

end A113446.P13067783843329459106

namespace A113446

/-- `Δ[xor(n, 2*n)]%2*A035154(n+1)` -/
def P13067783843329459106.Spec : Prop :=
  ∀ n, P13067783843329459106.a n = A113446 (n + 1)

end A113446

/-! ## A113446.P5253849096764753498

`A129447(A025480(n))`
-/

namespace A113446.P5253849096764753498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129447 (A025480 n).toNat

end

end A113446.P5253849096764753498

namespace A113446

/-- `A129447(A025480(n))` -/
def P5253849096764753498.Spec : Prop :=
  ∀ n, P5253849096764753498.a n = A113446 (n + 1)

end A113446

/-! ## A113446.P9922666081103855831

`A121450(A000265(n+1))`
-/

namespace A113446.P9922666081103855831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121450 (A000265 (n + 1)).toNat

end

end A113446.P9922666081103855831

namespace A113446

/-- `A121450(A000265(n+1))` -/
def P9922666081103855831.Spec : Prop :=
  ∀ n, P9922666081103855831.a n = A113446 (n + 1)

end A113446

/-! ## A113446.P17495044290895820313

`A121450(A153733(n)+1)`
-/

namespace A113446.P17495044290895820313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121450 (A153733 n + 1).toNat

end

end A113446.P17495044290895820313

namespace A113446

/-- `A121450(A153733(n)+1)` -/
def P17495044290895820313.Spec : Prop :=
  ∀ n, P17495044290895820313.a n = A113446 (n + 1)

end A113446

/-! ## A113446.P14674155410722187630

`A033999(n)*A121450(n+1)`
-/

namespace A113446.P14674155410722187630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A121450 (n + 1)

end

end A113446.P14674155410722187630

namespace A113446

/-- `A033999(n)*A121450(n+1)` -/
def P14674155410722187630.Spec : Prop :=
  ∀ n, P14674155410722187630.a n = A113446 (n + 1)

end A113446

/-! ## A113446.P4613871311408012940

`A105673(n+1)-A035154(n+1)`
-/

namespace A113446.P4613871311408012940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (n + 1) - A035154 (n + 1)

end

end A113446.P4613871311408012940

namespace A113446

/-- `A105673(n+1)-A035154(n+1)` -/
def P4613871311408012940.Spec : Prop :=
  ∀ n, P4613871311408012940.a n = A113446 (n + 1)

end A113446

/-! ## A113446.P14466711509100152779

`A034947(n+1)*A035154(n+1)`
-/

namespace A113446.P14466711509100152779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A035154 (n + 1)

end

end A113446.P14466711509100152779

namespace A113446

/-- `A034947(n+1)*A035154(n+1)` -/
def P14466711509100152779.Spec : Prop :=
  ∀ n, P14466711509100152779.a n = A113446 (n + 1)

end A113446

/-! ## A113446.P16628748638423494742

`A121450((n+1)/A006519(n+1))`
-/

namespace A113446.P16628748638423494742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121450 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A113446.P16628748638423494742

namespace A113446

/-- `A121450((n+1)/A006519(n+1))` -/
def P16628748638423494742.Spec : Prop :=
  ∀ n, P16628748638423494742.a n = A113446 (n + 1)

end A113446

/-! ## A113446.P17259290434184252699

`A122864(n+1)/A061347(n+1)`
-/

namespace A113446.P17259290434184252699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122864 (n + 1) : ℚ) / (A061347 (n + 1) : ℚ)

end

end A113446.P17259290434184252699

namespace A113446

/-- `A122864(n+1)/A061347(n+1)` -/
def P17259290434184252699.Spec : Prop :=
  ∀ n, P17259290434184252699.a n = (A113446 (n + 1) : ℚ)

end A113446

/-! ## A113446.P4604550941421232039

`A035181(n+1)/A164677(n+1)`
-/

namespace A113446.P4604550941421232039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035181 (n + 1) : ℚ) / (A164677 (n + 1) : ℚ)

end

end A113446.P4604550941421232039

namespace A113446

/-- `A035181(n+1)/A164677(n+1)` -/
def P4604550941421232039.Spec : Prop :=
  ∀ n, P4604550941421232039.a n = (A113446 (n + 1) : ℚ)

end A113446

/-! ## A113446.P9841419495010118278

`A138950(n+1)/A099545(n+1)`
-/

namespace A113446.P9841419495010118278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138950 (n + 1) : ℚ) / (A099545 (n + 1) : ℚ)

end

end A113446.P9841419495010118278

namespace A113446

/-- `A138950(n+1)/A099545(n+1)` -/
def P9841419495010118278.Spec : Prop :=
  ∀ n, P9841419495010118278.a n = (A113446 (n + 1) : ℚ)

end A113446

/-! ## A113446.P18436146330232567362

`A138950(n+1)/A363340(n+1)`
-/

namespace A113446.P18436146330232567362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138950 (n + 1) : ℚ) / (A363340 (n + 1) : ℚ)

end

end A113446.P18436146330232567362

namespace A113446

/-- `A138950(n+1)/A363340(n+1)` -/
def P18436146330232567362.Spec : Prop :=
  ∀ n, P18436146330232567362.a n = (A113446 (n + 1) : ℚ)

end A113446

/-! ## A113446.P13843248966223604375

`2*A002654(n+1)-A035154(n+1)`
-/

namespace A113446.P13843248966223604375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002654 (n + 1) - A035154 (n + 1)

end

end A113446.P13843248966223604375

namespace A113446

/-- `2*A002654(n+1)-A035154(n+1)` -/
def P13843248966223604375.Spec : Prop :=
  ∀ n, P13843248966223604375.a n = A113446 (n + 1)

end A113446

/-! ## A113446.P2617871068435174944

`(2-A099545(n+1))*A035154(n+1)`
-/

namespace A113446.P2617871068435174944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A099545 (n + 1)) * A035154 (n + 1)

end

end A113446.P2617871068435174944

namespace A113446

/-- `(2-A099545(n+1))*A035154(n+1)` -/
def P2617871068435174944.Spec : Prop :=
  ∀ n, P2617871068435174944.a n = A113446 (n + 1)

end A113446

/-! ## A113446.P14316613688579614137

`(2-A363340(n+1))*A035154(n+1)`
-/

namespace A113446.P14316613688579614137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A363340 (n + 1)) * A035154 (n + 1)

end

end A113446.P14316613688579614137

namespace A113446

/-- `(2-A363340(n+1))*A035154(n+1)` -/
def P14316613688579614137.Spec : Prop :=
  ∀ n, P14316613688579614137.a n = A113446 (n + 1)

end A113446

/-! ## A113446.P5768107859027665383

`A138950(n+1)/(2-A034947(n+1))`
-/

namespace A113446.P5768107859027665383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138950 (n + 1) : ℚ) / (2 - A034947 (n + 1) : ℚ)

end

end A113446.P5768107859027665383

namespace A113446

/-- `A138950(n+1)/(2-A034947(n+1))` -/
def P5768107859027665383.Spec : Prop :=
  ∀ n, P5768107859027665383.a n = (A113446 (n + 1) : ℚ)

end A113446

/-! ## A113446.P5527638267259650733

`∑{d}[n+1, A048298(#)*A121450((n+1)/#)]`
-/

namespace A113446.P5527638267259650733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048298 d * A121450 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113446.P5527638267259650733

namespace A113446

/-- `∑{d}[n+1, A048298(#)*A121450((n+1)/#)]` -/
def P5527638267259650733.Spec : Prop :=
  ∀ n, P5527638267259650733.a n = A113446 (n + 1)

end A113446

/-! ## A113446.P15732994346922597683

`∑{d}[n+1, A000089(#)*A214295((n+1)/#)]`
-/

namespace A113446.P15732994346922597683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000089 d * A214295 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113446.P15732994346922597683

namespace A113446

/-- `∑{d}[n+1, A000089(#)*A214295((n+1)/#)]` -/
def P15732994346922597683.Spec : Prop :=
  ∀ n, P15732994346922597683.a n = A113446 (n + 1)

end A113446

/-! ## A113446.P2096778118507053891

`∑{d}[n+1, A035191(#)*A275966((n+1)/#)]`
-/

namespace A113446.P2096778118507053891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035191 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113446.P2096778118507053891

namespace A113446

/-- `∑{d}[n+1, A035191(#)*A275966((n+1)/#)]` -/
def P2096778118507053891.Spec : Prop :=
  ∀ n, P2096778118507053891.a n = A113446 (n + 1)

end A113446

/-! ## A113446.P13280159862498089368

`∑{d}[n+1, A244611(#)*A350872((n+1)/#)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A113446

/-- `∑{d}[n+1, A244611(#)*A350872((n+1)/#)]` -/
def P13280159862498089368.Spec : Prop :=
  ∀ n, P13280159862498089368.a n = A113446 (n + 1)

theorem P13280159862498089368.correct : P13280159862498089368.Spec := by
  intro n
  simp only [A113446, Nat.add_sub_cancel]

end A113446

/-!
# A113447: Expansion of i * theta_2(i * q^3)^3 / (4 * theta_2(i * q)) in powers of q^2.

The programs for A113447, the canonical program `A113447.P16347397577668592874` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113447 has offset 1).

The definition of A113447 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093829, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113447.P16347397577668592874

`(-1)^n*A093829(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A113447

/-- `(-1)^n*A093829(n+1)` -/
def P16347397577668592874.Spec : Prop :=
  ∀ n, P16347397577668592874.a n = A113447 (n + 1)

theorem P16347397577668592874.correct : P16347397577668592874.Spec := by
  intro n
  simp only [A113447, Nat.add_sub_cancel]

end A113447

/-! ## A113447.P5789008620592453605

`A093829(A026741(n+1))`
-/

namespace A113447.P5789008620592453605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (A026741 (n + 1)).toNat

end

end A113447.P5789008620592453605

namespace A113447

/-- `A093829(A026741(n+1))` -/
def P5789008620592453605.Spec : Prop :=
  ∀ n, P5789008620592453605.a n = A113447 (n + 1)

end A113447

/-! ## A113447.P14025781132002594668

`A093829(A060789(n+1))`
-/

namespace A113447.P14025781132002594668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (A060789 (n + 1)).toNat

end

end A113447.P14025781132002594668

namespace A113447

/-- `A093829(A060789(n+1))` -/
def P14025781132002594668.Spec : Prop :=
  ∀ n, P14025781132002594668.a n = A113447 (n + 1)

end A113447

/-! ## A113447.P2719091884331471732

`A093829(A106619(n+1))`
-/

namespace A113447.P2719091884331471732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (A106619 (n + 1)).toNat

end

end A113447.P2719091884331471732

namespace A113447

/-- `A093829(A106619(n+1))` -/
def P2719091884331471732.Spec : Prop :=
  ∀ n, P2719091884331471732.a n = A113447 (n + 1)

end A113447

/-! ## A113447.P4306969940474640693

`A244375(n+1)/A010684(n)`
-/

namespace A113447.P4306969940474640693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244375 (n + 1) : ℚ) / (A010684 n : ℚ)

end

end A113447.P4306969940474640693

namespace A113447

/-- `A244375(n+1)/A010684(n)` -/
def P4306969940474640693.Spec : Prop :=
  ∀ n, P4306969940474640693.a n = (A113447 (n + 1) : ℚ)

end A113447

/-! ## A113447.P7506004977267975940

`A137608(n+1)*A309873(n+1)`
-/

namespace A113447.P7506004977267975940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137608 (n + 1) * A309873 (n + 1)

end

end A113447.P7506004977267975940

namespace A113447

/-- `A137608(n+1)*A309873(n+1)` -/
def P7506004977267975940.Spec : Prop :=
  ∀ n, P7506004977267975940.a n = A113447 (n + 1)

end A113447

/-! ## A113447.P7971659646724809950

`A137608(n+1)*A343785(n+1)`
-/

namespace A113447.P7971659646724809950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137608 (n + 1) * A343785 (n + 1)

end

end A113447.P7971659646724809950

namespace A113447

/-- `A137608(n+1)*A343785(n+1)` -/
def P7971659646724809950.Spec : Prop :=
  ∀ n, P7971659646724809950.a n = A113447 (n + 1)

end A113447

/-! ## A113447.P9438887730242618817

`A113661(n+1)/A056832(n+1)`
-/

namespace A113447.P9438887730242618817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113661 (n + 1) : ℚ) / (A056832 (n + 1) : ℚ)

end

end A113447.P9438887730242618817

namespace A113447

/-- `A113661(n+1)/A056832(n+1)` -/
def P9438887730242618817.Spec : Prop :=
  ∀ n, P9438887730242618817.a n = (A113447 (n + 1) : ℚ)

end A113447

/-! ## A113447.P5631209835669604167

`A113661(n+1)/A060236(n+1)`
-/

namespace A113447.P5631209835669604167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113661 (n + 1) : ℚ) / (A060236 (n + 1) : ℚ)

end

end A113447.P5631209835669604167

namespace A113447

/-- `A113661(n+1)/A060236(n+1)` -/
def P5631209835669604167.Spec : Prop :=
  ∀ n, P5631209835669604167.a n = (A113447 (n + 1) : ℚ)

end A113447

/-! ## A113447.P16281900098862027564

`A123331(n+1)/A105931(n+1)`
-/

namespace A113447.P16281900098862027564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123331 (n + 1) : ℚ) / (A105931 (n + 1) : ℚ)

end

end A113447.P16281900098862027564

namespace A113447

/-- `A123331(n+1)/A105931(n+1)` -/
def P16281900098862027564.Spec : Prop :=
  ∀ n, P16281900098862027564.a n = (A113447 (n + 1) : ℚ)

end A113447

/-! ## A113447.P6166254013230148044

`A113661(n+1)/A390692(n+1)`
-/

namespace A113447.P6166254013230148044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113661 (n + 1) : ℚ) / (A390692 (n + 1) : ℚ)

end

end A113447.P6166254013230148044

namespace A113447

/-- `A113661(n+1)/A390692(n+1)` -/
def P6166254013230148044.Spec : Prop :=
  ∀ n, P6166254013230148044.a n = (A113447 (n + 1) : ℚ)

end A113447

/-! ## A113447.P6662841911582148737

`A244375(n+1)/(2-A033999(n))`
-/

namespace A113447.P6662841911582148737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244375 (n + 1) : ℚ) / (2 - A033999 n : ℚ)

end

end A113447.P6662841911582148737

namespace A113447

/-- `A244375(n+1)/(2-A033999(n))` -/
def P6662841911582148737.Spec : Prop :=
  ∀ n, P6662841911582148737.a n = (A113447 (n + 1) : ℚ)

end A113447

/-! ## A113447.P16212429831800920849

`2*A093829(n+1)-A112298(n+1)`
-/

namespace A113447.P16212429831800920849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093829 (n + 1) - A112298 (n + 1)

end

end A113447.P16212429831800920849

namespace A113447

/-- `2*A093829(n+1)-A112298(n+1)` -/
def P16212429831800920849.Spec : Prop :=
  ∀ n, P16212429831800920849.a n = A113447 (n + 1)

end A113447

/-! ## A113447.P3870298649170984577

`(A123331(n+1)+A115979(n+1))/2`
-/

namespace A113447.P3870298649170984577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123331 (n + 1) + A115979 (n + 1) : ℚ) / 2

end

end A113447.P3870298649170984577

namespace A113447

/-- `(A123331(n+1)+A115979(n+1))/2` -/
def P3870298649170984577.Spec : Prop :=
  ∀ n, P3870298649170984577.a n = (A113447 (n + 1) : ℚ)

end A113447

/-! ## A113447.P9973972466725167919

`∑{d}[n+1, A048298(#)*A136748((n+1)/#)]`
-/

namespace A113447.P9973972466725167919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048298 d * A136748 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113447.P9973972466725167919

namespace A113447

/-- `∑{d}[n+1, A048298(#)*A136748((n+1)/#)]` -/
def P9973972466725167919.Spec : Prop :=
  ∀ n, P9973972466725167919.a n = A113447 (n + 1)

end A113447

/-! ## A113447.P5908200536544756705

`∑{d}[n+1, A010684(#-1)*A112300((n+1)/#)]`
-/

namespace A113447.P5908200536544756705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010684 (d - 1) * A112300 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113447.P5908200536544756705

namespace A113447

/-- `∑{d}[n+1, A010684(#-1)*A112300((n+1)/#)]` -/
def P5908200536544756705.Spec : Prop :=
  ∀ n, P5908200536544756705.a n = A113447 (n + 1)

end A113447

/-! ## A113447.P3110929022019445311

`∑{d}[n+1, A093829(#)*A130706((n+1)/#-1)]`
-/

namespace A113447.P3110929022019445311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A093829 d * A130706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A113447.P3110929022019445311

namespace A113447

/-- `∑{d}[n+1, A093829(#)*A130706((n+1)/#-1)]` -/
def P3110929022019445311.Spec : Prop :=
  ∀ n, P3110929022019445311.a n = A113447 (n + 1)

end A113447

/-! ## A113447.P3032257655268953528

`∑{d}[n+1, A099894(#-1)*A136748((n+1)/#)]`
-/

namespace A113447.P3032257655268953528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A136748 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113447.P3032257655268953528

namespace A113447

/-- `∑{d}[n+1, A099894(#-1)*A136748((n+1)/#)]` -/
def P3032257655268953528.Spec : Prop :=
  ∀ n, P3032257655268953528.a n = A113447 (n + 1)

end A113447

/-! ## A113447.P10597444949327851116

`∑{d}[n+1, A010892(#-1)*A059841((n+1)/#-1)]`
-/

namespace A113447.P10597444949327851116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010892 (d - 1) * A059841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A113447.P10597444949327851116

namespace A113447

/-- `∑{d}[n+1, A010892(#-1)*A059841((n+1)/#-1)]` -/
def P10597444949327851116.Spec : Prop :=
  ∀ n, P10597444949327851116.a n = A113447 (n + 1)

end A113447

/-! ## A113447.P11949870829631108829

`A260945(A038502(n+1))`
-/

namespace A113447.P11949870829631108829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260945 (A038502 (n + 1)).toNat

end

end A113447.P11949870829631108829

namespace A113447

/-- `A260945(A038502(n+1))` -/
def P11949870829631108829.Spec : Prop :=
  ∀ n, P11949870829631108829.a n = A113447 (n + 1)

end A113447

/-!
# A113448: Expansion of (eta(q^2)^2 * eta(q^9) * eta(q^18)) / (eta(q) * eta(q^6)) in powers of q.

The programs for A113448, the canonical program `A113448.P12961173705019071715` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113448 has offset 1).

The definition of A113448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113448.P17442062501438030178

`abs(A123863(n+1))`
-/

namespace A113448.P17442062501438030178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123863 (n + 1)|

end

end A113448.P17442062501438030178

namespace A113448

/-- `abs(A123863(n+1))` -/
def P17442062501438030178.Spec : Prop :=
  ∀ n, P17442062501438030178.a n = A113448 (n + 1)

end A113448

/-! ## A113448.P6725935640494936310

`A123863((n+1)/2^val(n+1, 2))`
-/

namespace A113448.P6725935640494936310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123863 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A113448.P6725935640494936310

namespace A113448

/-- `A123863((n+1)/2^val(n+1, 2))` -/
def P6725935640494936310.Spec : Prop :=
  ∀ n, P6725935640494936310.a n = A113448 (n + 1)

end A113448

/-! ## A113448.P17857457477474252532

`A045833(A000265(n+1))`
-/

namespace A113448.P17857457477474252532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 (A000265 (n + 1)).toNat

end

end A113448.P17857457477474252532

namespace A113448

/-- `A045833(A000265(n+1))` -/
def P17857457477474252532.Spec : Prop :=
  ∀ n, P17857457477474252532.a n = A113448 (n + 1)

end A113448

/-! ## A113448.P11807372600702794133

`A045833(A214682(n+1))`
-/

namespace A113448.P11807372600702794133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 (A214682 (n + 1)).toNat

end

end A113448.P11807372600702794133

namespace A113448

/-- `A045833(A214682(n+1))` -/
def P11807372600702794133.Spec : Prop :=
  ∀ n, P11807372600702794133.a n = A113448 (n + 1)

end A113448

/-! ## A113448.P9529551260358698823

`A045833(A354092(n+1))`
-/

namespace A113448.P9529551260358698823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045833 (A354092 (n + 1)).toNat

end

end A113448.P9529551260358698823

namespace A113448

/-- `A045833(A354092(n+1))` -/
def P9529551260358698823.Spec : Prop :=
  ∀ n, P9529551260358698823.a n = A113448 (n + 1)

end A113448

/-! ## A113448.P8819510626934099985

`A123863(A000265(2*(n+1)))`
-/

namespace A113448.P8819510626934099985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123863 (A000265 (2 * (n + 1))).toNat

end

end A113448.P8819510626934099985

namespace A113448

/-- `A123863(A000265(2*(n+1)))` -/
def P8819510626934099985.Spec : Prop :=
  ∀ n, P8819510626934099985.a n = A113448 (n + 1)

end A113448

/-! ## A113448.P7993281190714626275

`A010892(n)*A113447(n+1)`
-/

namespace A113448.P7993281190714626275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A113447 (n + 1)

end

end A113448.P7993281190714626275

namespace A113448

/-- `A010892(n)*A113447(n+1)` -/
def P7993281190714626275.Spec : Prop :=
  ∀ n, P7993281190714626275.a n = A113448 (n + 1)

end A113448

/-! ## A113448.P6865678214732245491

`A049347(n)*A093829(n+1)`
-/

namespace A113448.P6865678214732245491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A093829 (n + 1)

end

end A113448.P6865678214732245491

namespace A113448

/-- `A049347(n)*A093829(n+1)` -/
def P6865678214732245491.Spec : Prop :=
  ∀ n, P6865678214732245491.a n = A113448 (n + 1)

end A113448

/-! ## A113448.P13224633105884591561

`A033999(n)*A123863(n+1)`
-/

namespace A113448.P13224633105884591561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A123863 (n + 1)

end

end A113448.P13224633105884591561

namespace A113448

/-- `A033999(n)*A123863(n+1)` -/
def P13224633105884591561.Spec : Prop :=
  ∀ n, P13224633105884591561.a n = A113448 (n + 1)

end A113448

/-! ## A113448.P12961173705019071715

`A049347(n)*A112848(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A113448

/-- `A049347(n)*A112848(n+1)` -/
def P12961173705019071715.Spec : Prop :=
  ∀ n, P12961173705019071715.a n = A113448 (n + 1)

theorem P12961173705019071715.correct : P12961173705019071715.Spec := by
  intro n
  simp only [A113448, Nat.add_sub_cancel]

end A113448

/-! ## A113448.P17755696916930875149

`A123863(n+1)*A135694(n)`
-/

namespace A113448.P17755696916930875149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123863 (n + 1) * A135694 n

end

end A113448.P17755696916930875149

namespace A113448

/-- `A123863(n+1)*A135694(n)` -/
def P17755696916930875149.Spec : Prop :=
  ∀ n, P17755696916930875149.a n = A113448 (n + 1)

end A113448

/-! ## A113448.P18012663641539545908

`A049347(n)*A261884(n+1)`
-/

namespace A113448.P18012663641539545908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A261884 (n + 1)

end

end A113448.P18012663641539545908

namespace A113448

/-- `A049347(n)*A261884(n+1)` -/
def P18012663641539545908.Spec : Prop :=
  ∀ n, P18012663641539545908.a n = A113448 (n + 1)

end A113448

/-! ## A113448.P10978251267491337019

`A115235(n+1)/A131713(n)`
-/

namespace A113448.P10978251267491337019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115235 (n + 1) : ℚ) / (A131713 n : ℚ)

end

end A113448.P10978251267491337019

namespace A113448

/-- `A115235(n+1)/A131713(n)` -/
def P10978251267491337019.Spec : Prop :=
  ∀ n, P10978251267491337019.a n = (A113448 (n + 1) : ℚ)

end A113448

/-! ## A113448.P9345900856212595478

`gcd(A000038(n), A123863(n+1))`
-/

namespace A113448.P9345900856212595478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A123863 (n + 1))

end

end A113448.P9345900856212595478

namespace A113448

/-- `gcd(A000038(n), A123863(n+1))` -/
def P9345900856212595478.Spec : Prop :=
  ∀ n, (P9345900856212595478.a n : ℤ) = A113448 (n + 1)

end A113448

/-! ## A113448.P9124900414715694451

`lcm(A010892(n), A035178(n+1))`
-/

namespace A113448.P9124900414715694451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010892 n) (A035178 (n + 1))

end

end A113448.P9124900414715694451

namespace A113448

/-- `lcm(A010892(n), A035178(n+1))` -/
def P9124900414715694451.Spec : Prop :=
  ∀ n, (P9124900414715694451.a n : ℤ) = A113448 (n + 1)

end A113448

/-! ## A113448.P13522391716247446540

`lcm(A014709(n), A123863(n+1))`
-/

namespace A113448.P13522391716247446540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014709 n) (A123863 (n + 1))

end

end A113448.P13522391716247446540

namespace A113448

/-- `lcm(A014709(n), A123863(n+1))` -/
def P13522391716247446540.Spec : Prop :=
  ∀ n, (P13522391716247446540.a n : ℤ) = A113448 (n + 1)

end A113448

/-! ## A113448.P9672368805313116325

`lcm(A093829(n+1), A117441(n))`
-/

namespace A113448.P9672368805313116325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A093829 (n + 1)) (A117441 n)

end

end A113448.P9672368805313116325

namespace A113448

/-- `lcm(A093829(n+1), A117441(n))` -/
def P9672368805313116325.Spec : Prop :=
  ∀ n, (P9672368805313116325.a n : ℤ) = A113448 (n + 1)

end A113448

/-! ## A113448.P694373348538210366

`abs(A049347(n)*A113447(n+1))`
-/

namespace A113448.P694373348538210366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049347 n * A113447 (n + 1)|

end

end A113448.P694373348538210366

namespace A113448

/-- `abs(A049347(n)*A113447(n+1))` -/
def P694373348538210366.Spec : Prop :=
  ∀ n, P694373348538210366.a n = A113448 (n + 1)

end A113448

/-! ## A113448.P10961201927525341805

`A035178(n+1)*A099544(n+1)`
-/

namespace A113448.P10961201927525341805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 (n + 1) * A099544 (n + 1)

end

end A113448.P10961201927525341805

namespace A113448

/-- `A035178(n+1)*A099544(n+1)` -/
def P10961201927525341805.Spec : Prop :=
  ∀ n, P10961201927525341805.a n = A113448 (n + 1)

end A113448

/-! ## A113448.P10893858608590349019

`A099544(n+1)*A255648(n+1)`
-/

namespace A113448.P10893858608590349019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099544 (n + 1) * A255648 (n + 1)

end

end A113448.P10893858608590349019

namespace A113448

/-- `A099544(n+1)*A255648(n+1)` -/
def P10893858608590349019.Spec : Prop :=
  ∀ n, P10893858608590349019.a n = A113448 (n + 1)

end A113448

/-!
# A113449: Sum of the square root of n-th square triangular number and n-th Pell (or lambda) number (A000129).

The programs for A113449, the canonical program `A113449.P17721574802550283464` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113449 has offset 1).

The definition of A113449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113449.P17721574802550283464

`8*a(n-1)-12*a(n-2)-4*a(n-3)+a(n-4)` with `a(0)=2, a(1)=8, a(2)=40, a(3)=216`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113449

/-- `8*a(n-1)-12*a(n-2)-4*a(n-3)+a(n-4)` -/
def P17721574802550283464.Spec : Prop :=
  ∀ n, P17721574802550283464.a n = A113449 (n + 1)

theorem P17721574802550283464.correct : P17721574802550283464.Spec := by
  intro n
  simp only [A113449, Nat.add_sub_cancel]

end A113449

/-! ## A113449.P14936854070597862790

`abs(A077985(n)*A182780(n))`
-/

namespace A113449.P14936854070597862790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077985 n * A182780 n|

end

end A113449.P14936854070597862790

namespace A113449

/-- `abs(A077985(n)*A182780(n))` -/
def P14936854070597862790.Spec : Prop :=
  ∀ n, P14936854070597862790.a n = A113449 (n + 1)

end A113449

/-! ## A113449.P14820299349704624784

`∑[A002203(n)]*A024537(n)`
-/

namespace A113449.P14820299349704624784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A024537 n

end

end A113449.P14820299349704624784

namespace A113449

/-- `∑[A002203(n)]*A024537(n)` -/
def P14820299349704624784.Spec : Prop :=
  ∀ n, P14820299349704624784.a n = A113449 (n + 1)

end A113449

/-! ## A113449.P11928217484704868843

`∑[A001333(n)]*A182780(n)`
-/

namespace A113449.P11928217484704868843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A182780 n

end

end A113449.P11928217484704868843

namespace A113449

/-- `∑[A001333(n)]*A182780(n)` -/
def P11928217484704868843.Spec : Prop :=
  ∀ n, P11928217484704868843.a n = A113449 (n + 1)

end A113449

/-! ## A113449.P11376505221832217639

`Δ[A078057(n)]*A024537(n)`
-/

namespace A113449.P11376505221832217639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A024537 n

end

end A113449.P11376505221832217639

namespace A113449

/-- `Δ[A078057(n)]*A024537(n)` -/
def P11376505221832217639.Spec : Prop :=
  ∀ n, P11376505221832217639.a n = A113449 (n + 1)

end A113449

/-! ## A113449.P17319226525116974791

`Δ[A024537(n)]*A182780(n)`
-/

namespace A113449.P17319226525116974791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A182780 n

end

end A113449.P17319226525116974791

namespace A113449

/-- `Δ[A024537(n)]*A182780(n)` -/
def P17319226525116974791.Spec : Prop :=
  ∀ n, P17319226525116974791.a n = A113449 (n + 1)

end A113449

/-! ## A113449.P2969796489692671503

`A024537(n)*A052542(n+1)`
-/

namespace A113449.P2969796489692671503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n * A052542 (n + 1)

end

end A113449.P2969796489692671503

namespace A113449

/-- `A024537(n)*A052542(n+1)` -/
def P2969796489692671503.Spec : Prop :=
  ∀ n, P2969796489692671503.a n = A113449 (n + 1)

end A113449

/-! ## A113449.P8788057242062575167

`A000129(n+1)*A182780(n)`
-/

namespace A113449.P8788057242062575167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A182780 n

end

end A113449.P8788057242062575167

namespace A113449

/-- `A000129(n+1)*A182780(n)` -/
def P8788057242062575167.Spec : Prop :=
  ∀ n, P8788057242062575167.a n = A113449 (n + 1)

end A113449

/-! ## A113449.P12106331320051335903

`A182780(n)*A215928(n+1)`
-/

namespace A113449.P12106331320051335903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182780 n * A215928 (n + 1)

end

end A113449.P12106331320051335903

namespace A113449

/-- `A182780(n)*A215928(n+1)` -/
def P12106331320051335903.Spec : Prop :=
  ∀ n, P12106331320051335903.a n = A113449 (n + 1)

end A113449

/-! ## A113449.P11062171340585652762

`∑[A001333(n)+Δ[A001109(n)]]`
-/

namespace A113449.P11062171340585652762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113449.P11062171340585652762

namespace A113449

/-- `∑[A001333(n)+Δ[A001109(n)]]` -/
def P11062171340585652762.Spec : Prop :=
  ∀ n, P11062171340585652762.a n = A113449 (n + 1)

end A113449

/-! ## A113449.P16874798369829253158

`∑[A002203(n)]*∑[A215928(n)]`
-/

namespace A113449.P16874798369829253158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A113449.P16874798369829253158

namespace A113449

/-- `∑[A002203(n)]*∑[A215928(n)]` -/
def P16874798369829253158.Spec : Prop :=
  ∀ n, P16874798369829253158.a n = A113449 (n + 1)

end A113449

/-! ## A113449.P6068005572848826670

`∑[A001333(n)+record[A077985(n)]]`
-/

namespace A113449.P6068005572848826670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113449.P6068005572848826670

namespace A113449

/-- `∑[A001333(n)+record[A077985(n)]]` -/
def P6068005572848826670.Spec : Prop :=
  ∀ n, P6068005572848826670.a n = A113449 (n + 1)

end A113449

/-! ## A113449.P2747169618812412328

`A001109(n+1)+∑[A001333(n)]`
-/

namespace A113449.P2747169618812412328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113449.P2747169618812412328

namespace A113449

/-- `A001109(n+1)+∑[A001333(n)]` -/
def P2747169618812412328.Spec : Prop :=
  ∀ n, P2747169618812412328.a n = A113449 (n + 1)

end A113449

/-! ## A113449.P16008997046252931339

`∑[A001653(n+1)+A001333(n)]`
-/

namespace A113449.P16008997046252931339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 1) + A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113449.P16008997046252931339

namespace A113449

/-- `∑[A001653(n+1)+A001333(n)]` -/
def P16008997046252931339.Spec : Prop :=
  ∀ n, P16008997046252931339.a n = A113449 (n + 1)

end A113449

/-! ## A113449.P16293172641111622829

`∑[A001333(n)+A182190(n)+1]`
-/

namespace A113449.P16293172641111622829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + (A182190 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113449.P16293172641111622829

namespace A113449

/-- `∑[A001333(n)+A182190(n)+1]` -/
def P16293172641111622829.Spec : Prop :=
  ∀ n, P16293172641111622829.a n = A113449 (n + 1)

end A113449

/-! ## A113449.P9093699962347379941

`∑[A002203(n)]*A171842(n+1)`
-/

namespace A113449.P9093699962347379941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A171842 (n + 1)

end

end A113449.P9093699962347379941

namespace A113449

/-- `∑[A002203(n)]*A171842(n+1)` -/
def P9093699962347379941.Spec : Prop :=
  ∀ n, P9093699962347379941.a n = A113449 (n + 1)

end A113449

/-! ## A113449.P2960903258970906034

`Δ[A001333(n+1)]*A024537(n)`
-/

namespace A113449.P2960903258970906034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A024537 n

end

end A113449.P2960903258970906034

namespace A113449

/-- `Δ[A001333(n+1)]*A024537(n)` -/
def P2960903258970906034.Spec : Prop :=
  ∀ n, P2960903258970906034.a n = A113449 (n + 1)

end A113449

/-! ## A113449.P15329443843810695467

`∑[A077985(2*n)+A001333(n)]`
-/

namespace A113449.P15329443843810695467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 (2 * n) + A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113449.P15329443843810695467

namespace A113449

/-- `∑[A077985(2*n)+A001333(n)]` -/
def P15329443843810695467.Spec : Prop :=
  ∀ n, P15329443843810695467.a n = A113449 (n + 1)

end A113449

/-! ## A113449.P5843225837755426253

`∑[A001333(n)+A000129(Δ[n²])]`
-/

namespace A113449.P5843225837755426253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n + A000129 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113449.P5843225837755426253

namespace A113449

/-- `∑[A001333(n)+A000129(Δ[n²])]` -/
def P5843225837755426253.Spec : Prop :=
  ∀ n, P5843225837755426253.a n = A113449 (n + 1)

end A113449

/-! ## A113449.P14132535292375214955

`∑[A079496(Δ[n²])+A001333(n)]`
-/

namespace A113449.P14132535292375214955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113449.P14132535292375214955

namespace A113449

/-- `∑[A079496(Δ[n²])+A001333(n)]` -/
def P14132535292375214955.Spec : Prop :=
  ∀ n, P14132535292375214955.a n = A113449 (n + 1)

end A113449

/-!
# A113450: Difference between the square root of n-th square triangular number and n-th lambda number given by the recurrence f(n) = 2f(n-1) + f(n-2), f(1) = 1, f(2)= 2.

The programs for A113450, the canonical program `A113450.P17752640983301225432` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113450 has offset 1).

The definition of A113450 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113450.P17752640983301225432

`8*a(n-1)-12*a(n-2)-4*a(n-3)+a(n-4)` with `a(0)=0, a(1)=4, a(2)=30, a(3)=192`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113450

/-- `8*a(n-1)-12*a(n-2)-4*a(n-3)+a(n-4)` -/
def P17752640983301225432.Spec : Prop :=
  ∀ n, P17752640983301225432.a n = A113450 (n + 1)

theorem P17752640983301225432.correct : P17752640983301225432.Spec := by
  intro n
  simp only [A113450, Nat.add_sub_cancel]

end A113450

/-! ## A113450.P1719475550829760580

`A001109(n+1)-A000129(n+1)`
-/

namespace A113450.P1719475550829760580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1) - A000129 (n + 1)

end

end A113450.P1719475550829760580

namespace A113450

/-- `A001109(n+1)-A000129(n+1)` -/
def P1719475550829760580.Spec : Prop :=
  ∀ n, P1719475550829760580.a n = A113450 (n + 1)

end A113450

/-! ## A113450.P10177918786026185197

`Δ[2*A213785(n)]`
-/

namespace A113450.P10177918786026185197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113450.P10177918786026185197

namespace A113450

/-- `Δ[2*A213785(n)]` -/
def P10177918786026185197.Spec : Prop :=
  ∀ n, P10177918786026185197.a n = A113450 (n + 1)

end A113450

/-! ## A113450.P8849934035295225448

`∑[A000129(n)]*∑[A002203(n)]`
-/

namespace A113450.P8849934035295225448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A113450.P8849934035295225448

namespace A113450

/-- `∑[A000129(n)]*∑[A002203(n)]` -/
def P8849934035295225448.Spec : Prop :=
  ∀ n, P8849934035295225448.a n = A113450 (n + 1)

end A113450

/-! ## A113450.P11203398003878772364

`∑[Δ[A001109(n)]-A001333(n)]`
-/

namespace A113450.P11203398003878772364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113450.P11203398003878772364

namespace A113450

/-- `∑[Δ[A001109(n)]-A001333(n)]` -/
def P11203398003878772364.Spec : Prop :=
  ∀ n, P11203398003878772364.a n = A113450 (n + 1)

end A113450

/-! ## A113450.P1889334445504090116

`∑[record[A077985(n)]-A001333(n)]`
-/

namespace A113450.P1889334445504090116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113450.P1889334445504090116

namespace A113450

/-- `∑[record[A077985(n)]-A001333(n)]` -/
def P1889334445504090116.Spec : Prop :=
  ∀ n, P1889334445504090116.a n = A113450 (n + 1)

end A113450

/-! ## A113450.P13137610808754983945

`abs((2-A182780(n))*A077985(n))`
-/

namespace A113450.P13137610808754983945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - A182780 n) * A077985 n|

end

end A113450.P13137610808754983945

namespace A113450

/-- `abs((2-A182780(n))*A077985(n))` -/
def P13137610808754983945.Spec : Prop :=
  ∀ n, P13137610808754983945.a n = A113450 (n + 1)

end A113450

/-! ## A113450.P4807207389697871648

`A001109(n+1)-∑[A001333(n)]`
-/

namespace A113450.P4807207389697871648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113450.P4807207389697871648

namespace A113450

/-- `A001109(n+1)-∑[A001333(n)]` -/
def P4807207389697871648.Spec : Prop :=
  ∀ n, P4807207389697871648.a n = A113450 (n + 1)

end A113450

/-! ## A113450.P2685312811490594557

`∑[A001653(n+1)-A001333(n)]`
-/

namespace A113450.P2685312811490594557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 1) - A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113450.P2685312811490594557

namespace A113450

/-- `∑[A001653(n+1)-A001333(n)]` -/
def P2685312811490594557.Spec : Prop :=
  ∀ n, P2685312811490594557.a n = A113450 (n + 1)

end A113450

/-! ## A113450.P18136903004444926079

`∑[A182190(n)+1-A001333(n)]`
-/

namespace A113450.P18136903004444926079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182190 n + (1 - A001333 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113450.P18136903004444926079

namespace A113450

/-- `∑[A182190(n)+1-A001333(n)]` -/
def P18136903004444926079.Spec : Prop :=
  ∀ n, P18136903004444926079.a n = A113450 (n + 1)

end A113450

/-! ## A113450.P2374314451049573449

`∑[A000129(n)]*A052542(n+1)`
-/

namespace A113450.P2374314451049573449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A052542 (n + 1)

end

end A113450.P2374314451049573449

namespace A113450

/-- `∑[A000129(n)]*A052542(n+1)` -/
def P2374314451049573449.Spec : Prop :=
  ∀ n, P2374314451049573449.a n = A113450 (n + 1)

end A113450

/-! ## A113450.P2277865081380891029

`(A024537(n)-1)*∑[A002203(n)]`
-/

namespace A113450.P2277865081380891029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024537 n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113450.P2277865081380891029

namespace A113450

/-- `(A024537(n)-1)*∑[A002203(n)]` -/
def P2277865081380891029.Spec : Prop :=
  ∀ n, P2277865081380891029.a n = A113450 (n + 1)

end A113450

/-! ## A113450.P10202245524308955447

`∑[A077985(2*n)-A001333(n)]`
-/

namespace A113450.P10202245524308955447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 (2 * n) - A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113450.P10202245524308955447

namespace A113450

/-- `∑[A077985(2*n)-A001333(n)]` -/
def P10202245524308955447.Spec : Prop :=
  ∀ n, P10202245524308955447.a n = A113450 (n + 1)

end A113450

/-! ## A113450.P18176078506125943130

`(A024537(n)-1)*Δ[A078057(n)]`
-/

namespace A113450.P18176078506125943130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024537 n - 1) * (f1 (n + 1) - f1 n)

end

end A113450.P18176078506125943130

namespace A113450

/-- `(A024537(n)-1)*Δ[A078057(n)]` -/
def P18176078506125943130.Spec : Prop :=
  ∀ n, P18176078506125943130.a n = A113450 (n + 1)

end A113450

/-! ## A113450.P12273900433475227763

`(A182780(n)-2)*∑[A001333(n)]`
-/

namespace A113450.P12273900433475227763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A182780 n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113450.P12273900433475227763

namespace A113450

/-- `(A182780(n)-2)*∑[A001333(n)]` -/
def P12273900433475227763.Spec : Prop :=
  ∀ n, P12273900433475227763.a n = A113450 (n + 1)

end A113450

/-! ## A113450.P9452206860438217403

`(A024537(n)-1)*Δ[A182780(n)]`
-/

namespace A113450.P9452206860438217403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024537 n - 1) * (f1 (n + 1) - f1 n)

end

end A113450.P9452206860438217403

namespace A113450

/-- `(A024537(n)-1)*Δ[A182780(n)]` -/
def P9452206860438217403.Spec : Prop :=
  ∀ n, P9452206860438217403.a n = A113450 (n + 1)

end A113450

/-! ## A113450.P16491443418418593911

`∑[A079496(Δ[n²])-A001333(n)]`
-/

namespace A113450.P16491443418418593911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113450.P16491443418418593911

namespace A113450

/-- `∑[A079496(Δ[n²])-A001333(n)]` -/
def P16491443418418593911.Spec : Prop :=
  ∀ n, P16491443418418593911.a n = A113450 (n + 1)

end A113450

/-! ## A113450.P1512946940767506465

`A176981(n+2)+A001109(n+1)`
-/

namespace A113450.P1512946940767506465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 (n + 2) + A001109 (n + 1)

end

end A113450.P1512946940767506465

namespace A113450

/-- `A176981(n+2)+A001109(n+1)` -/
def P1512946940767506465.Spec : Prop :=
  ∀ n, P1512946940767506465.a n = A113450 (n + 1)

end A113450

/-! ## A113450.P13738850829520612328

`A001109(n+1)-A215928(n+1)`
-/

namespace A113450.P13738850829520612328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1) - A215928 (n + 1)

end

end A113450.P13738850829520612328

namespace A113450

/-- `A001109(n+1)-A215928(n+1)` -/
def P13738850829520612328.Spec : Prop :=
  ∀ n, P13738850829520612328.a n = A113450 (n + 1)

end A113450

/-! ## A113450.P14265098887781935610

`A000129(n+1)*A293004(n+1)`
-/

namespace A113450.P14265098887781935610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A293004 (n + 1)

end

end A113450.P14265098887781935610

namespace A113450

/-- `A000129(n+1)*A293004(n+1)` -/
def P14265098887781935610.Spec : Prop :=
  ∀ n, P14265098887781935610.a n = A113450 (n + 1)

end A113450

/-!
# A113451: Integers n such that prime(n+1) - prime(n) is a power.

The programs for A113451, the canonical program `A113451.P1662184457389318108` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113451 has offset 1).

The definition of A113451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113451.P1662184457389318108

`record[gcd(n+1, A069584(A001223(n+1)))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A113451

/-- `record[gcd(n+1, A069584(A001223(n+1)))]` -/
def P1662184457389318108.Spec : Prop :=
  ∀ n, (P1662184457389318108.a n : ℤ) = A113451 (n + 1)

theorem P1662184457389318108.correct : P1662184457389318108.Spec := by
  intro n
  simp only [A113451, Nat.add_sub_cancel]

end A113451

/-! ## A113451.P15380612883887633935

`eq[0, A124764(A230847(n+1))]`
-/

namespace A113451.P15380612883887633935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A230847 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113451.P15380612883887633935

namespace A113451

/-- `eq[0, A124764(A230847(n+1))]` -/
def P15380612883887633935.Spec : Prop :=
  ∀ n, (P15380612883887633935.a n : ℤ) = A113451 (n + 1)

end A113451

/-! ## A113451.P13190139372941731434

`eq[1, A304328(A054541(n+1))]`
-/

namespace A113451.P13190139372941731434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304328 (A054541 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113451.P13190139372941731434

namespace A113451

/-- `eq[1, A304328(A054541(n+1))]` -/
def P13190139372941731434.Spec : Prop :=
  ∀ n, (P13190139372941731434.a n : ℤ) = A113451 (n + 1)

end A113451

/-! ## A113451.P9336280136466528878

`A000720(A394735(n+1))`
-/

namespace A113451.P9336280136466528878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A394735 (n + 1)).toNat

end

end A113451.P9336280136466528878

namespace A113451

/-- `A000720(A394735(n+1))` -/
def P9336280136466528878.Spec : Prop :=
  ∀ n, P9336280136466528878.a n = A113451 (n + 1)

end A113451

/-! ## A113451.P15124700126629634563

`eq[1, A075802(A230850(2*n+1))]`
-/

namespace A113451.P15124700126629634563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (A230850 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113451.P15124700126629634563

namespace A113451

/-- `eq[1, A075802(A230850(2*n+1))]` -/
def P15124700126629634563.Spec : Prop :=
  ∀ n, (P15124700126629634563.a n : ℤ) = A113451 (n + 1)

end A113451

/-! ## A113451.P10729299299909066365

`eq[1, A113090(A076368(n+1))]`
-/

namespace A113451.P10729299299909066365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113090 (A076368 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113451.P10729299299909066365

namespace A113451

/-- `eq[1, A113090(A076368(n+1))]` -/
def P10729299299909066365.Spec : Prop :=
  ∀ n, (P10729299299909066365.a n : ℤ) = A113451 (n + 1)

end A113451

/-!
# A113452: a(n) is the n-th smallest permanental minor of any H_m (m >= n), where H_m is the square matrix of order m with 1's on or below the superdiagonal and 0's elsewhere.

The programs for A113452, there is no canonical definition to state claims against.
-/

/-! ## A113452.P8799045573639619550

`2^(comp[∑[n+4]]-n)`
-/

namespace A113452.P8799045573639619550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ)

end

end A113452.P8799045573639619550

/-! ## A113452.P1625380158560896204

`ceil(2^floor(n^acot(ϕ))/2)`
-/

namespace A113452.P1625380158560896204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (⌊(n : ℝ) ^ (SequenceMachineLib.acot Real.goldenRatio)⌋ : ℤ) / 2⌉

end

end A113452.P1625380158560896204

/-! ## A113452.P8799484686924085597

`∏{digits}[∑[char[∑[n+3]+1]], 2^#]`
-/

namespace A113452.P8799484686924085597
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod

end

end A113452.P8799484686924085597

/-! ## A113452.P3349553286218653917

`2*a(n-∑[char[∑[n]]])` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A113452.P3349553286218653917
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  2 * a (n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113452.P3349553286218653917

/-! ## A113452.P5536921473784203690

`∏[char[∑[a(n-1)+1]]+1]` with `a(0)=4, a(1)=4`
-/

namespace A113452.P5536921473784203690
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [4, 4] fun n f3 =>
  f3 (n - 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A113452.P5536921473784203690

/-!
# A113453: Triangle giving maximal permanent P(n,k) of an n X n lower Hessenberg (0,1)-matrix with exactly k 1's for 2 <= n <= k <= 2n, read by rows.

The programs for A113453, the canonical program `A113453.P12251909154025568105` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113453 has offset 0).

The definition of A113453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113453.P12251909154025568105

`abs(A117575(A002260(n+4)))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A113453

/-- `abs(A117575(A002260(n+4)))` -/
def P12251909154025568105.Spec : Prop :=
  ∀ n, P12251909154025568105.a n = A113453 n

theorem P12251909154025568105.correct : P12251909154025568105.Spec := by
  intro n
  simp only [A113453]

end A113453

/-! ## A113453.P9110507506761080898

`A016116(log2(A059268(n+3)))`
-/

namespace A113453.P9110507506761080898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 (n + 3) : ℝ))).toNat

end

end A113453.P9110507506761080898

namespace A113453

/-- `A016116(log2(A059268(n+3)))` -/
def P9110507506761080898.Spec : Prop :=
  ∀ n, P9110507506761080898.a n = A113453 n

end A113453

/-! ## A113453.P13373892057231004200

`A016116(A002260(n+4)-1)`
-/

namespace A113453.P13373892057231004200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002260 (n + 4) - 1).toNat

end

end A113453.P13373892057231004200

namespace A113453

/-- `A016116(A002260(n+4)-1)` -/
def P13373892057231004200.Spec : Prop :=
  ∀ n, P13373892057231004200.a n = A113453 n

end A113453

/-! ## A113453.P9073187297544261856

`A016116(val(A059268(n+3), 2))`
-/

namespace A113453.P9073187297544261856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (SequenceMachineLib.valuation (A059268 (n + 3)).toNat 2)

end

end A113453.P9073187297544261856

namespace A113453

/-- `A016116(val(A059268(n+3), 2))` -/
def P9073187297544261856.Spec : Prop :=
  ∀ n, P9073187297544261856.a n = A113453 n

end A113453

/-! ## A113453.P14650506060297427633

`A000079(val(A059268(n+3), 4))`
-/

namespace A113453.P14650506060297427633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A059268 (n + 3)).toNat 4)

end

end A113453.P14650506060297427633

namespace A113453

/-- `A000079(val(A059268(n+3), 4))` -/
def P14650506060297427633.Spec : Prop :=
  ∀ n, P14650506060297427633.a n = A113453 n

end A113453

/-! ## A113453.P10011384785300032441

`abs(A117575(A057554(2*(n+3)+1)+1))`
-/

namespace A113453.P10011384785300032441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117575 (A057554 (2 * (n + 3) + 1) + 1).toNat|

end

end A113453.P10011384785300032441

namespace A113453

/-- `abs(A117575(A057554(2*(n+3)+1)+1))` -/
def P10011384785300032441.Spec : Prop :=
  ∀ n, P10011384785300032441.a n = A113453 n

end A113453

/-! ## A113453.P18335962473428088632

`A016116(A048151(n+3))`
-/

namespace A113453.P18335962473428088632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A048151 (n + 3)).toNat

end

end A113453.P18335962473428088632

namespace A113453

/-- `A016116(A048151(n+3))` -/
def P18335962473428088632.Spec : Prop :=
  ∀ n, P18335962473428088632.a n = A113453 n

end A113453

/-! ## A113453.P10386158852037153219

`2^floor(A002262(n+3)/2)`
-/

namespace A113453.P10386158852037153219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(A002262 (n + 3) : ℚ) / 2⌋ : ℤ)

end

end A113453.P10386158852037153219

namespace A113453

/-- `2^floor(A002262(n+3)/2)` -/
def P10386158852037153219.Spec : Prop :=
  ∀ n, P10386158852037153219.a n = (A113453 n : ℚ)

end A113453

/-! ## A113453.P15663260067525585902

`A016116(A002262(n+3))`
-/

namespace A113453.P15663260067525585902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002262 (n + 3)).toNat

end

end A113453.P15663260067525585902

namespace A113453

/-- `A016116(A002262(n+3))` -/
def P15663260067525585902.Spec : Prop :=
  ∀ n, P15663260067525585902.a n = A113453 n

end A113453

/-! ## A113453.P10576273327279644703

`A016116(A144328(n+4))`
-/

namespace A113453.P10576273327279644703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A144328 (n + 4)).toNat

end

end A113453.P10576273327279644703

namespace A113453

/-- `A016116(A144328(n+4))` -/
def P10576273327279644703.Spec : Prop :=
  ∀ n, P10576273327279644703.a n = A113453 n

end A113453

/-! ## A113453.P17676078335208784596

`A262689(A059268(n+3))`
-/

namespace A113453.P17676078335208784596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A059268 (n + 3)).toNat

end

end A113453.P17676078335208784596

namespace A113453

/-- `A262689(A059268(n+3))` -/
def P17676078335208784596.Spec : Prop :=
  ∀ n, P17676078335208784596.a n = A113453 n

end A113453

/-! ## A113453.P10829261872007766286

`A019554(Δ[A099627(n+2)])`
-/

namespace A113453.P10829261872007766286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (f1 (n + 1) - f1 n).toNat

end

end A113453.P10829261872007766286

namespace A113453

/-- `A019554(Δ[A099627(n+2)])` -/
def P10829261872007766286.Spec : Prop :=
  ∀ n, P10829261872007766286.a n = A113453 n

end A113453

/-! ## A113453.P10120977464127698493

`A033677(Δ[A173786(n+2)])`
-/

namespace A113453.P10120977464127698493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (f1 (n + 1) - f1 n).toNat

end

end A113453.P10120977464127698493

namespace A113453

/-- `A033677(Δ[A173786(n+2)])` -/
def P10120977464127698493.Spec : Prop :=
  ∀ n, P10120977464127698493.a n = A113453 n

end A113453

/-! ## A113453.P8007877312521546946

`A000188(2^A002262(n+3))`
-/

namespace A113453.P8007877312521546946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002262 (n + 3) : ℤ))).toNat

end

end A113453.P8007877312521546946

namespace A113453

/-- `A000188(2^A002262(n+3))` -/
def P8007877312521546946.Spec : Prop :=
  ∀ n, P8007877312521546946.a n = A113453 n

end A113453

/-! ## A113453.P888203698073034942

`A295658(4*A059268(n+3))`
-/

namespace A113453.P888203698073034942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295658 (4 * A059268 (n + 3)).toNat

end

end A113453.P888203698073034942

namespace A113453

/-- `A295658(4*A059268(n+3))` -/
def P888203698073034942.Spec : Prop :=
  ∀ n, P888203698073034942.a n = A113453 n

end A113453

/-!
# A113456: Square array read by antidiagonals: a(n, d) is the smallest number that begins an arithmetic progression with common difference d of n numbers with the same prime signature.

The programs for A113456, there is no canonical definition to state claims against.
-/

/-! ## A113456.P3966144038724621257

`A083785(gcd(A026031(n+5), A027295(n+1)))`
-/

namespace A113456.P3966144038724621257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083785 (Int.gcd (A026031 (n + 5)) (A027295 (n + 1)))

end

end A113456.P3966144038724621257

/-!
# A113457: Least number that begins an n-term arithmetic progression with common difference 2 in which all terms have the same prime signature.

The programs for A113457, there is no canonical definition to state claims against.
-/

/-! ## A113457.P12483419643792907733

`A113466(∑{digits}[n+1, #])`
-/

namespace A113457.P12483419643792907733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113466 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A113457.P12483419643792907733

/-! ## A113457.P14269478147099740840

`A113466(n+1)+char[8]`
-/

namespace A113457.P14269478147099740840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113466 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A113457.P14269478147099740840

/-! ## A113457.P4420974456070498133

`A113466(comp[comp[xor(n, 2*n+1)]²])`
-/

namespace A113457.P4420974456070498133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113466 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A113457.P4420974456070498133

/-! ## A113457.P12031089563726362861

`A113466(A179052(n))`
-/

namespace A113457.P12031089563726362861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113466 (A179052 n).toNat

end

end A113457.P12031089563726362861

/-!
# A113460: Triangle read by rows: n-th row is the lexicographically earliest arithmetic progression of n numbers all having the same prime signature.

The programs for A113460, there is no canonical definition to state claims against.
-/

/-! ## A113460.P7671752228712369960

`A130791(n+1)-floor(acot(n))`
-/

namespace A113460.P7671752228712369960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130791 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A113460.P7671752228712369960

/-! ## A113460.P10752541863016550245

`A130791((n+1)*a(floor(acot(n)²)))` with `a(0)=1`
-/

namespace A113460.P10752541863016550245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130791 ((n + 1 : ℤ) * a ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋.toNat).toNat

end

end A113460.P10752541863016550245

/-! ## A113460.P7731590050444757963

`A130791(n+1)-A000007(n)`
-/

namespace A113460.P7731590050444757963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130791 (n + 1) - A000007 n

end

end A113460.P7731590050444757963

/-! ## A113460.P1545427906424167068

`A130791(n+1)-A088157(n)`
-/

namespace A113460.P1545427906424167068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130791 (n + 1) - A088157 n

end

end A113460.P1545427906424167068

/-! ## A113460.P14362146486627915589

`A130791(n+1)-A112316(n)`
-/

namespace A113460.P14362146486627915589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130791 (n + 1) - A112316 n

end

end A113460.P14362146486627915589

/-!
# A113461: Common differences of arithmetic progressions in A113460.

The programs for A113461, there is no canonical definition to state claims against.
-/

/-! ## A113461.P14312876862152755241

`A061558(char[12]+1+n)`
-/

namespace A113461.P14312876862152755241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061558 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A113461.P14312876862152755241

/-! ## A113461.P5922554185118444773

`A061558(n+1)+round(n/24)`
-/

namespace A113461.P5922554185118444773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061558 (n + 1) + SequenceMachineLib.roundAway ((n : ℚ) / 24)

end

end A113461.P5922554185118444773

/-! ## A113461.P14202562193839479651

`A086078(n)+A061558(n+1)`
-/

namespace A113461.P14202562193839479651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086078 n + A061558 (n + 1)

end

end A113461.P14202562193839479651

/-! ## A113461.P6776843265681664780

`A108782(n)+A061558(n+1)`
-/

namespace A113461.P6776843265681664780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n + A061558 (n + 1)

end

end A113461.P6776843265681664780

/-! ## A113461.P8405598063180001646

`A061558(n+1)*A271835(n)`
-/

namespace A113461.P8405598063180001646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061558 (n + 1) * A271835 n

end

end A113461.P8405598063180001646

/-!
# A113462: Least number that ends an arithmetic progression of n numbers with distinct prime signatures.

The programs for A113462, there is no canonical definition to state claims against.
-/

/-! ## A113462.P4140624347417032224

`A113463(∑[n+1])`
-/

namespace A113462.P4140624347417032224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113463 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113462.P4140624347417032224

/-! ## A113462.P7482782605287053632

`record[A113463(abs(A122432(n)))]`
-/

namespace A113462.P7482782605287053632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113463 |A122432 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113462.P7482782605287053632

/-! ## A113462.P2315358567007121760

`record[A113463(A038722(n+1))]`
-/

namespace A113462.P2315358567007121760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113463 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113462.P2315358567007121760

/-! ## A113462.P15023756858288305550

`record[A113463(A049777(n+1))]`
-/

namespace A113462.P15023756858288305550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113463 (A049777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113462.P15023756858288305550

/-! ## A113462.P1841490039367371214

`record[A113463(A059399(n+1))]`
-/

namespace A113462.P1841490039367371214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113463 (A059399 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113462.P1841490039367371214

/-!
# A113464: First column of triangle A113463.

The programs for A113464, there is no canonical definition to state claims against.
-/

/-! ## A113464.P102350661540013294

`A113463(∑[A114800(n)])`
-/

namespace A113464.P102350661540013294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113463 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113464.P102350661540013294

/-! ## A113464.P9510661251751363944

`A113463(record[ratio[A086629(n)]])`
-/

namespace A113464.P9510661251751363944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086629 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113463 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A113464.P9510661251751363944

/-! ## A113464.P7288572931361263628

`A113463(A050760(n+1)+1)`
-/

namespace A113464.P7288572931361263628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113463 (A050760 (n + 1) + 1).toNat

end

end A113464.P7288572931361263628

/-! ## A113464.P11388995228121502065

`A113463(∑[A131571(n+1)]+1)`
-/

namespace A113464.P11388995228121502065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113463 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A113464.P11388995228121502065

/-! ## A113464.P15972956784742506365

`A113463(A213217(n)+A000217(n))`
-/

namespace A113464.P15972956784742506365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113463 (A213217 n + A000217 n).toNat

end

end A113464.P15972956784742506365

/-!
# A113465: Rectangular array read by antidiagonals: a(n, d) is the smallest number that starts an arithmetic progression with common difference d of n numbers with the same number of divisors.

The programs for A113465, there is no canonical definition to state claims against.
-/

/-! ## A113465.P11378206599730299447

`A006558(A141412(n))*A008277(n+1)`
-/

namespace A113465.P11378206599730299447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006558 (A141412 n).toNat * A008277 (n + 1)

end

end A113465.P11378206599730299447

/-! ## A113465.P10853627930249687233

`A113456(n+1)%Δ[A109407(A000041(n+3))]`
-/

namespace A113465.P10853627930249687233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109407 (A000041 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113456 (n + 1)) (f1 (n + 1) - f1 n)

end

end A113465.P10853627930249687233

/-!
# A113468: Least number k such that k, k+n, k+2*n and k+3*n have the same number of divisors.

The programs for A113468, there is no canonical definition to state claims against.
-/

/-! ## A113468.P4035565156240543074

`A113465(A141214(n+1))`
-/

namespace A113468.P4035565156240543074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113465 (A141214 (n + 1)).toNat

end

end A113468.P4035565156240543074

/-!
# A113472: If d(n) is the sequence of prime differences prime(n+1) - prime(n), then a(n) is the subsequence of d(n) such that d(n) is a power.

The programs for A113472, the canonical program `A113472.P14166250258819644113` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113472 has offset 1).

The definition of A113472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113472.P14166250258819644113

`A001223(A113451(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A113472

/-- `A001223(A113451(n+1))` -/
def P14166250258819644113.Spec : Prop :=
  ∀ n, P14166250258819644113.a n = A113472 (n + 1)

theorem P14166250258819644113.correct : P14166250258819644113.Spec := by
  intro n
  simp only [A113472, Nat.add_sub_cancel]

end A113472

/-! ## A113472.P18154737093002901318

`A054541(A113451(n+1)+1)`
-/

namespace A113472.P18154737093002901318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A113451 (n + 1) + 1).toNat

end

end A113472.P18154737093002901318

namespace A113472

/-- `A054541(A113451(n+1)+1)` -/
def P18154737093002901318.Spec : Prop :=
  ∀ n, P18154737093002901318.a n = A113472 (n + 1)

end A113472

/-! ## A113472.P1738496529307930139

`A000040(A113451(n+1)+1)-A000040(A113451(n+1))`
-/

namespace A113472.P1738496529307930139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A113451 (n + 1) + 1).toNat - A000040 (A113451 (n + 1)).toNat

end

end A113472.P1738496529307930139

namespace A113472

/-- `A000040(A113451(n+1)+1)-A000040(A113451(n+1))` -/
def P1738496529307930139.Spec : Prop :=
  ∀ n, P1738496529307930139.a n = A113472 (n + 1)

end A113472

/-! ## A113472.P3837270255928818152

`A013632(A394735(n+1))`
-/

namespace A113472.P3837270255928818152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A394735 (n + 1)).toNat

end

end A113472.P3837270255928818152

namespace A113472

/-- `A013632(A394735(n+1))` -/
def P3837270255928818152.Spec : Prop :=
  ∀ n, P3837270255928818152.a n = A113472 (n + 1)

end A113472

/-! ## A113472.P3077558427637250538

`A109496(p?[A052905(A001223(n+1))])`
-/

namespace A113472.P3077558427637250538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109496 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A113472.P3077558427637250538

namespace A113472

/-- `A109496(p?[A052905(A001223(n+1))])` -/
def P3077558427637250538.Spec : Prop :=
  ∀ n, P3077558427637250538.a n = A113472 (n + 1)

end A113472

/-! ## A113472.P520270645171197762

`A000523(p?[A262864(A001223(n+1))])`
-/

namespace A113472.P520270645171197762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262864 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A113472.P520270645171197762

namespace A113472

/-- `A000523(p?[A262864(A001223(n+1))])` -/
def P520270645171197762.Spec : Prop :=
  ∀ n, P520270645171197762.a n = A113472 (n + 1)

end A113472

/-!
# A113473: n repeated 2^(n-1) times.

The programs for A113473, the canonical program `A113473.P7804708315665494230` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113473 has offset 1).

The definition of A113473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113473.P4925136523215452758

`1+floor(log2(n+1))`
-/

namespace A113473.P4925136523215452758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Nat.log 2 (n + 1)

end

end A113473.P4925136523215452758

namespace A113473

/-- `1+floor(log2(n+1))` -/
def P4925136523215452758.Spec : Prop :=
  ∀ n, (P4925136523215452758.a n : ℤ) = A113473 (n + 1)

end A113473

/-! ## A113473.P8372292251661084990

`A070939(n+1)`
-/

namespace A113473.P8372292251661084990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1)

end

end A113473.P8372292251661084990

namespace A113473

/-- `A070939(n+1)` -/
def P8372292251661084990.Spec : Prop :=
  ∀ n, P8372292251661084990.a n = A113473 (n + 1)

end A113473

/-! ## A113473.P7804708315665494230

`A029837(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A113473

/-- `A029837(n+2)` -/
def P7804708315665494230.Spec : Prop :=
  ∀ n, P7804708315665494230.a n = A113473 (n + 1)

theorem P7804708315665494230.correct : P7804708315665494230.Spec := by
  intro n
  simp only [A113473, Nat.add_sub_cancel]

end A113473

/-! ## A113473.P11797973454918721899

`floor(log2(2*n-tan(2)))`
-/

namespace A113473.P11797973454918721899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((2 * n : ℝ) - Real.tan (2 : ℝ))⌋

end

end A113473.P11797973454918721899

namespace A113473

/-- `floor(log2(2*n-tan(2)))` -/
def P11797973454918721899.Spec : Prop :=
  ∀ n, P11797973454918721899.a n = A113473 (n + 1)

end A113473

/-! ## A113473.P15399613187954690334

`∑[∏{p}[n+1, val(#, 2)]]`
-/

namespace A113473.P15399613187954690334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113473.P15399613187954690334

namespace A113473

/-- `∑[∏{p}[n+1, val(#, 2)]]` -/
def P15399613187954690334.Spec : Prop :=
  ∀ n, (P15399613187954690334.a n : ℤ) = A113473 (n + 1)

end A113473

/-! ## A113473.P5040947700776677438

`∑[C(2, ∑{p}[n+1, #])]`
-/

namespace A113473.P5040947700776677438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113473.P5040947700776677438

namespace A113473

/-- `∑[C(2, ∑{p}[n+1, #])]` -/
def P5040947700776677438.Spec : Prop :=
  ∀ n, (P5040947700776677438.a n : ℤ) = A113473 (n + 1)

end A113473

/-! ## A113473.P4814481422103488792

`∑[∏{p}[n+1, C(2, #)]]`
-/

namespace A113473.P4814481422103488792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113473.P4814481422103488792

namespace A113473

/-- `∑[∏{p}[n+1, C(2, #)]]` -/
def P4814481422103488792.Spec : Prop :=
  ∀ n, (P4814481422103488792.a n : ℤ) = A113473 (n + 1)

end A113473

/-! ## A113473.P5078079933605703793

`floor(log2(2*n-cot(6)))`
-/

namespace A113473.P5078079933605703793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((2 * n : ℝ) - Real.cot (6 : ℝ))⌋

end

end A113473.P5078079933605703793

namespace A113473

/-- `floor(log2(2*n-cot(6)))` -/
def P5078079933605703793.Spec : Prop :=
  ∀ n, P5078079933605703793.a n = A113473 (n + 1)

end A113473

/-! ## A113473.P1763430712555565201

`∑[C(2, and(n, n+1)²)]`
-/

namespace A113473.P1763430712555565201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land n (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113473.P1763430712555565201

namespace A113473

/-- `∑[C(2, and(n, n+1)²)]` -/
def P1763430712555565201.Spec : Prop :=
  ∀ n, (P1763430712555565201.a n : ℤ) = A113473 (n + 1)

end A113473

/-! ## A113473.P16654595903975748063

`∑[C(∑[val(n+1, 2)], n)]`
-/

namespace A113473.P16654595903975748063
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113473.P16654595903975748063

namespace A113473

/-- `∑[C(∑[val(n+1, 2)], n)]` -/
def P16654595903975748063.Spec : Prop :=
  ∀ n, (P16654595903975748063.a n : ℤ) = A113473 (n + 1)

end A113473

/-! ## A113473.P2302921500922015123

`∑[∏{p}[n+1, floor(2/#)]]`
-/

namespace A113473.P2302921500922015123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌊2 / (p : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113473.P2302921500922015123

namespace A113473

/-- `∑[∏{p}[n+1, floor(2/#)]]` -/
def P2302921500922015123.Spec : Prop :=
  ∀ n, P2302921500922015123.a n = A113473 (n + 1)

end A113473

/-! ## A113473.P14806203946676322767

`∑[round(1/∏{p}[n+1, #])]`
-/

namespace A113473.P14806203946676322767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113473.P14806203946676322767

namespace A113473

/-- `∑[round(1/∏{p}[n+1, #])]` -/
def P14806203946676322767.Spec : Prop :=
  ∀ n, P14806203946676322767.a n = A113473 (n + 1)

end A113473

/-! ## A113473.P3827343423565873842

`∑[char[n-and(n, n+1)]]`
-/

namespace A113473.P3827343423565873842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (n + 1) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113473.P3827343423565873842

namespace A113473

/-- `∑[char[n-and(n, n+1)]]` -/
def P3827343423565873842.Spec : Prop :=
  ∀ n, (P3827343423565873842.a n : ℤ) = A113473 (n + 1)

end A113473

/-! ## A113473.P4299396921328077988

`∑[C(2, and(n, n+1)+2)]`
-/

namespace A113473.P4299396921328077988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land n (n + 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113473.P4299396921328077988

namespace A113473

/-- `∑[C(2, and(n, n+1)+2)]` -/
def P4299396921328077988.Spec : Prop :=
  ∀ n, (P4299396921328077988.a n : ℤ) = A113473 (n + 1)

end A113473

/-! ## A113473.P9174575242525113807

`∑[and(1, ∏{p}[n+1, #+1])]`
-/

namespace A113473.P9174575242525113807
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f2 n), (p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113473.P9174575242525113807

namespace A113473

/-- `∑[and(1, ∏{p}[n+1, #+1])]` -/
def P9174575242525113807.Spec : Prop :=
  ∀ n, (P9174575242525113807.a n : ℤ) = A113473 (n + 1)

end A113473

/-! ## A113473.P10565121143662677719

`∑[∏{d}[and(n, n+1), 1-#]]`
-/

namespace A113473.P10565121143662677719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), (1 - (d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113473.P10565121143662677719

namespace A113473

/-- `∑[∏{d}[and(n, n+1), 1-#]]` -/
def P10565121143662677719.Spec : Prop :=
  ∀ n, P10565121143662677719.a n = A113473 (n + 1)

end A113473

/-! ## A113473.P5754590083170152040

`∑[char[∑[2*a(n-2)]]]` with `a(0)=0, a(1)=1`
-/

namespace A113473.P5754590083170152040
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f3 =>
  2 * f3 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113473.P5754590083170152040

namespace A113473

/-- `∑[char[∑[2*a(n-2)]]]` -/
def P5754590083170152040.Spec : Prop :=
  ∀ n, (P5754590083170152040.a n : ℤ) = A113473 (n + 1)

end A113473

/-! ## A113473.P16398898963911650841

`∑[char[or(n, n+1)-(n+1)]]`
-/

namespace A113473.P16398898963911650841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113473.P16398898963911650841

namespace A113473

/-- `∑[char[or(n, n+1)-(n+1)]]` -/
def P16398898963911650841.Spec : Prop :=
  ∀ n, (P16398898963911650841.a n : ℤ) = A113473 (n + 1)

end A113473

/-! ## A113473.P15180089779979684795

`∑[A036987(n)]`
-/

namespace A113473.P15180089779979684795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113473.P15180089779979684795

namespace A113473

/-- `∑[A036987(n)]` -/
def P15180089779979684795.Spec : Prop :=
  ∀ n, P15180089779979684795.a n = A113473 (n + 1)

end A113473

/-! ## A113473.P2682943363092254318

`Δ[A083652(n)]`
-/

namespace A113473.P2682943363092254318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113473.P2682943363092254318

namespace A113473

/-- `Δ[A083652(n)]` -/
def P2682943363092254318.Spec : Prop :=
  ∀ n, P2682943363092254318.a n = A113473 (n + 1)

end A113473

/-!
# A113474: a(n) = a(floor(n/2)) + floor(n/2) with a(1) = 1.

The programs for A113474, the canonical program `A113474.P18182029428267382090` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113474 has offset 1).

The definition of A113474 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor((n+1)/2)-1)+floor((n+1)/2)` (program `A113474.P18182029428267382090`, by `A113474.P18182029428267382090.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113474.P18182029428267382090

`a(floor((n+1)/2)-1)+floor((n+1)/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113474

/-- `a(floor((n+1)/2)-1)+floor((n+1)/2)` -/
def P18182029428267382090.Spec : Prop :=
  ∀ n, P18182029428267382090.a n = A113474 (n + 1)

theorem P18182029428267382090.correct : P18182029428267382090.Spec := by
  intro n
  simp only [A113474, Nat.add_sub_cancel]

end A113474

/-! ## A113474.P4747912828759337256

`A011371(n+1)+1`
-/

namespace A113474.P4747912828759337256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) + 1

end

end A113474.P4747912828759337256

namespace A113474

/-- `A011371(n+1)+1` -/
def P4747912828759337256.Spec : Prop :=
  ∀ n, P4747912828759337256.a n = A113474 (n + 1)

end A113474

/-! ## A113474.P8819650463479583841

`A005187(n+1)-(n+1)+1`
-/

namespace A113474.P8819650463479583841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - (n + 1 : ℤ) + 1

end

end A113474.P8819650463479583841

namespace A113474

/-- `A005187(n+1)-(n+1)+1` -/
def P8819650463479583841.Spec : Prop :=
  ∀ n, P8819650463479583841.a n = A113474 (n + 1)

end A113474

/-! ## A113474.P2696759694359828387

`∑[val(n+1, 2)]+1`
-/

namespace A113474.P2696759694359828387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A113474.P2696759694359828387

namespace A113474

/-- `∑[val(n+1, 2)]+1` -/
def P2696759694359828387.Spec : Prop :=
  ∀ n, (P2696759694359828387.a n : ℤ) = A113474 (n + 1)

end A113474

/-! ## A113474.P7237927856183411074

`∑[floor(log2(xor(n, n+1)))]+1`
-/

namespace A113474.P7237927856183411074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.xor n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A113474.P7237927856183411074

namespace A113474

/-- `∑[floor(log2(xor(n, n+1)))]+1` -/
def P7237927856183411074.Spec : Prop :=
  ∀ n, (P7237927856183411074.a n : ℤ) = A113474 (n + 1)

end A113474

/-! ## A113474.P994048991227351418

`∑[log2(or(n, n+1)-n)]+1`
-/

namespace A113474.P994048991227351418
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A113474.P994048991227351418

namespace A113474

/-- `∑[log2(or(n, n+1)-n)]+1` -/
def P994048991227351418.Spec : Prop :=
  ∀ n, P994048991227351418.a n = (A113474 (n + 1) : ℝ)

end A113474

/-! ## A113474.P1407361041819135869

`∑[log2(xor(n, or(n, n+1)))]+1`
-/

namespace A113474.P1407361041819135869
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor n (Nat.lor n (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A113474.P1407361041819135869

namespace A113474

/-- `∑[log2(xor(n, or(n, n+1)))]+1` -/
def P1407361041819135869.Spec : Prop :=
  ∀ n, P1407361041819135869.a n = (A113474 (n + 1) : ℝ)

end A113474

/-! ## A113474.P17342655004045236848

`∑[log2((xor(n, n+1)+1)/2)]+1`
-/

namespace A113474.P17342655004045236848
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((Nat.xor n (n + 1) + 1 : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A113474.P17342655004045236848

namespace A113474

/-- `∑[log2((xor(n, n+1)+1)/2)]+1` -/
def P17342655004045236848.Spec : Prop :=
  ∀ n, P17342655004045236848.a n = (A113474 (n + 1) : ℝ)

end A113474

/-! ## A113474.P18109575135542056875

`∑[log2(-or(n+1, -(n+1)))]+1`
-/

namespace A113474.P18109575135542056875
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (-Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A113474.P18109575135542056875

namespace A113474

/-- `∑[log2(-or(n+1, -(n+1)))]+1` -/
def P18109575135542056875.Spec : Prop :=
  ∀ n, P18109575135542056875.a n = (A113474 (n + 1) : ℝ)

end A113474

/-! ## A113474.P12529440599033354941

`∑[(a(floor(n/2))+1)*n%2]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A113474.P12529440599033354941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  (f1 ⌊(n : ℚ) / 2⌋.toNat + 1) * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113474.P12529440599033354941

namespace A113474

/-- `∑[(a(floor(n/2))+1)*n%2]` -/
def P12529440599033354941.Spec : Prop :=
  ∀ n, (P12529440599033354941.a n : ℤ) = A113474 (n + 1)

end A113474

/-! ## A113474.P10902252184201467041

`Δ[A174605(n)]+1`
-/

namespace A113474.P10902252184201467041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A113474.P10902252184201467041

namespace A113474

/-- `Δ[A174605(n)]+1` -/
def P10902252184201467041.Spec : Prop :=
  ∀ n, P10902252184201467041.a n = A113474 (n + 1)

end A113474

/-! ## A113474.P3978096265969237892

`A101925(∑[and(1, n)])`
-/

namespace A113474.P3978096265969237892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113474.P3978096265969237892

namespace A113474

/-- `A101925(∑[and(1, n)])` -/
def P3978096265969237892.Spec : Prop :=
  ∀ n, P3978096265969237892.a n = A113474 (n + 1)

end A113474

/-! ## A113474.P12625804416099452941

`Δ[A122247(n)]-n`
-/

namespace A113474.P12625804416099452941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A113474.P12625804416099452941

namespace A113474

/-- `Δ[A122247(n)]-n` -/
def P12625804416099452941.Spec : Prop :=
  ∀ n, P12625804416099452941.a n = A113474 (n + 1)

end A113474

/-! ## A113474.P2761195814417117537

`A005187(n+1)-n`
-/

namespace A113474.P2761195814417117537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - (n : ℤ)

end

end A113474.P2761195814417117537

namespace A113474

/-- `A005187(n+1)-n` -/
def P2761195814417117537.Spec : Prop :=
  ∀ n, P2761195814417117537.a n = A113474 (n + 1)

end A113474

/-! ## A113474.P2685071814963745850

`1-A048881(n)+n`
-/

namespace A113474.P2685071814963745850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A048881 n + (n : ℤ)

end

end A113474.P2685071814963745850

namespace A113474

/-- `1-A048881(n)+n` -/
def P2685071814963745850.Spec : Prop :=
  ∀ n, P2685071814963745850.a n = A113474 (n + 1)

end A113474

/-! ## A113474.P2158323497328056302

`A283208(n)+1-n`
-/

namespace A113474.P2158323497328056302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283208 n + (1 - (n : ℤ))

end

end A113474.P2158323497328056302

namespace A113474

/-- `A283208(n)+1-n` -/
def P2158323497328056302.Spec : Prop :=
  ∀ n, P2158323497328056302.a n = A113474 (n + 1)

end A113474

/-! ## A113474.P11546273840604222340

`∑[A007814(n+1)]+1`
-/

namespace A113474.P11546273840604222340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A113474.P11546273840604222340

namespace A113474

/-- `∑[A007814(n+1)]+1` -/
def P11546273840604222340.Spec : Prop :=
  ∀ n, P11546273840604222340.a n = A113474 (n + 1)

end A113474

/-! ## A113474.P8539956864579683241

`∑[A085058(n)-2]+1`
-/

namespace A113474.P8539956864579683241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A113474.P8539956864579683241

namespace A113474

/-- `∑[A085058(n)-2]+1` -/
def P8539956864579683241.Spec : Prop :=
  ∀ n, P8539956864579683241.a n = A113474 (n + 1)

end A113474

/-! ## A113474.P3695428881928037846

`∑[val(A028310(n)+1, 2)]`
-/

namespace A113474.P3695428881928037846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028310 n + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113474.P3695428881928037846

namespace A113474

/-- `∑[val(A028310(n)+1, 2)]` -/
def P3695428881928037846.Spec : Prop :=
  ∀ n, (P3695428881928037846.a n : ℤ) = A113474 (n + 1)

end A113474

/-! ## A113474.P9384689652811864486

`∑[val(A033286(n+1), 2)]`
-/

namespace A113474.P9384689652811864486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033286 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113474.P9384689652811864486

namespace A113474

/-- `∑[val(A033286(n+1), 2)]` -/
def P9384689652811864486.Spec : Prop :=
  ∀ n, (P9384689652811864486.a n : ℤ) = A113474 (n + 1)

end A113474

/-!
# A113478: Number of cuban primes less than 10^n.

The programs for A113478, there is no canonical definition to state claims against.
-/

/-! ## A113478.P16973821546012691424

`∑[A221792(A028310(n))]-1`
-/

namespace A113478.P16973821546012691424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221792 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A113478.P16973821546012691424

/-! ## A113478.P3916366652703060720

`∑[A057427(n)*A221792(A028310(n))]`
-/

namespace A113478.P3916366652703060720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A221792 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113478.P3916366652703060720

/-! ## A113478.P5493563631186835923

`∑[A221792(A028310(n))%A000244(n)]`
-/

namespace A113478.P5493563631186835923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221792 (A028310 n).toNat) (A000244 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113478.P5493563631186835923

/-! ## A113478.P7123855520222929560

`∑[A328959(n+1)+A221792(A028310(n))]`
-/

namespace A113478.P7123855520222929560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328959 (n + 1) + A221792 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113478.P7123855520222929560

/-! ## A113478.P14539962976069365133

`∑[A000040(n+1)%2*A221792(A028310(n))]`
-/

namespace A113478.P14539962976069365133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A221792 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113478.P14539962976069365133

/-!
# A113479: Starting with the fraction 4/1 as the first term, a(n) is the numerator of the reduced fraction of the n-th term according to the rule: if n is even, multiply the previous term by n/(n+1); otherwise multiply the previous term by (n+1)/n.

The programs for A113479, the canonical program `A113479.P8317997903802995256` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113479 has offset 1).

The definition of A113479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113479.P8317997903802995256

`2*∏[or(n, n+2)-n]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113479

/-- `2*∏[or(n, n+2)-n]` -/
def P8317997903802995256.Spec : Prop :=
  ∀ n, P8317997903802995256.a n = A113479 (n + 1)

theorem P8317997903802995256.correct : P8317997903802995256.Spec := by
  intro n
  simp only [A113479, Nat.add_sub_cancel]

end A113479

/-! ## A113479.P13256844317310692377

`2*∏[and(n+2, -(n+1))]`
-/

namespace A113479.P13256844317310692377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A113479.P13256844317310692377

namespace A113479

/-- `2*∏[and(n+2, -(n+1))]` -/
def P13256844317310692377.Spec : Prop :=
  ∀ n, P13256844317310692377.a n = A113479 (n + 1)

end A113479

/-! ## A113479.P606012726406099121

`2^(∑[val(or(1, n)+1, 2)]+1)`
-/

namespace A113479.P606012726406099121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 1 n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113479.P606012726406099121

namespace A113479

/-- `2^(∑[val(or(1, n)+1, 2)]+1)` -/
def P606012726406099121.Spec : Prop :=
  ∀ n, (P606012726406099121.a n : ℤ) = A113479 (n + 1)

end A113479

/-! ## A113479.P167732831110825090

`2*∏[n+2-and(n, n+2)]`
-/

namespace A113479.P167732831110825090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Nat.land n (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A113479.P167732831110825090

namespace A113479

/-- `2*∏[n+2-and(n, n+2)]` -/
def P167732831110825090.Spec : Prop :=
  ∀ n, P167732831110825090.a n = A113479 (n + 1)

end A113479

/-! ## A113479.P13304240479195384877

`(or(n, n+2)-n)*a(n-1)` with `a(0)=4`
-/

namespace A113479.P13304240479195384877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ((Nat.lor n (n + 2) : ℤ) - (n : ℤ)) * a (n - 1)

end

end A113479.P13304240479195384877

namespace A113479

/-- `(or(n, n+2)-n)*a(n-1)` -/
def P13304240479195384877.Spec : Prop :=
  ∀ n, P13304240479195384877.a n = A113479 (n + 1)

end A113479

/-! ## A113479.P6628529976559599765

`and(n+2, -(n+1))*a(n-1)` with `a(0)=4`
-/

namespace A113479.P6628529976559599765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  Int.land (n + 2 : ℤ) (-(n + 1 : ℤ)) * a (n - 1)

end

end A113479.P6628529976559599765

namespace A113479

/-- `and(n+2, -(n+1))*a(n-1)` -/
def P6628529976559599765.Spec : Prop :=
  ∀ n, P6628529976559599765.a n = A113479 (n + 1)

end A113479

/-! ## A113479.P4022200256721719721

`(n+2-and(n, n+2))*a(n-1)` with `a(0)=4`
-/

namespace A113479.P4022200256721719721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ((n + 2 : ℤ) - (Nat.land n (n + 2) : ℤ)) * a (n - 1)

end

end A113479.P4022200256721719721

namespace A113479

/-- `(n+2-and(n, n+2))*a(n-1)` -/
def P4022200256721719721.Spec : Prop :=
  ∀ n, P4022200256721719721.a n = A113479 (n + 1)

end A113479

/-! ## A113479.P2722223937990226194

`gcd(gcd(2, n)+n, a(n-1))*a(n-1)` with `a(0)=4`
-/

namespace A113479.P2722223937990226194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.gcd (Nat.gcd 2 n + n) (a (n - 1)) * a (n - 1)

end

end A113479.P2722223937990226194

namespace A113479

/-- `gcd(gcd(2, n)+n, a(n-1))*a(n-1)` -/
def P2722223937990226194.Spec : Prop :=
  ∀ n, (P2722223937990226194.a n : ℤ) = A113479 (n + 1)

end A113479

/-! ## A113479.P9975973328186936128

`2*A001901(n+1)`
-/

namespace A113479.P9975973328186936128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001901 (n + 1)

end

end A113479.P9975973328186936128

namespace A113479

/-- `2*A001901(n+1)` -/
def P9975973328186936128.Spec : Prop :=
  ∀ n, P9975973328186936128.a n = A113479 (n + 1)

end A113479

/-! ## A113479.P4505335684705356919

`2^(A092054(n+1)+1)`
-/

namespace A113479.P4505335684705356919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A092054 (n + 1) + 1 : ℤ)

end

end A113479.P4505335684705356919

namespace A113479

/-- `2^(A092054(n+1)+1)` -/
def P4505335684705356919.Spec : Prop :=
  ∀ n, P4505335684705356919.a n = (A113479 (n + 1) : ℚ)

end A113479

/-! ## A113479.P1985721659266757823

`A198633(A092054(n+1))`
-/

namespace A113479.P1985721659266757823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 (A092054 (n + 1)).toNat

end

end A113479.P1985721659266757823

namespace A113479

/-- `A198633(A092054(n+1))` -/
def P1985721659266757823.Spec : Prop :=
  ∀ n, P1985721659266757823.a n = A113479 (n + 1)

end A113479

/-! ## A113479.P4992845896849274919

`A000079(A092054(n+1)+1)`
-/

namespace A113479.P4992845896849274919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A092054 (n + 1) + 1).toNat

end

end A113479.P4992845896849274919

namespace A113479

/-- `A000079(A092054(n+1)+1)` -/
def P4992845896849274919.Spec : Prop :=
  ∀ n, P4992845896849274919.a n = A113479 (n + 1)

end A113479

/-! ## A113479.P10704267013724921446

`A011782(∑[A136480(n+1)]+2)`
-/

namespace A113479.P10704267013724921446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A113479.P10704267013724921446

namespace A113479

/-- `A011782(∑[A136480(n+1)]+2)` -/
def P10704267013724921446.Spec : Prop :=
  ∀ n, P10704267013724921446.a n = A113479 (n + 1)

end A113479

/-! ## A113479.P2211505053530979514

`A131577(∑[A136480(n+1)]+2)`
-/

namespace A113479.P2211505053530979514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A113479.P2211505053530979514

namespace A113479

/-- `A131577(∑[A136480(n+1)]+2)` -/
def P2211505053530979514.Spec : Prop :=
  ∀ n, P2211505053530979514.a n = A113479 (n + 1)

end A113479

/-! ## A113479.P15405880711542222709

`A135530(∑[2*A136480(n+1)])`
-/

namespace A113479.P15405880711542222709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113479.P15405880711542222709

namespace A113479

/-- `A135530(∑[2*A136480(n+1)])` -/
def P15405880711542222709.Spec : Prop :=
  ∀ n, P15405880711542222709.a n = A113479 (n + 1)

end A113479

/-! ## A113479.P8985542051368169236

`A240988(n+1)*A240988(n+2)`
-/

namespace A113479.P8985542051368169236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240988 (n + 1) * A240988 (n + 2)

end

end A113479.P8985542051368169236

namespace A113479

/-- `A240988(n+1)*A240988(n+2)` -/
def P8985542051368169236.Spec : Prop :=
  ∀ n, P8985542051368169236.a n = A113479 (n + 1)

end A113479

/-! ## A113479.P3712228276325094248

`A000079(A101925(n+1)-A048881(n+1))`
-/

namespace A113479.P3712228276325094248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A101925 (n + 1) - A048881 (n + 1)).toNat

end

end A113479.P3712228276325094248

namespace A113479

/-- `A000079(A101925(n+1)-A048881(n+1))` -/
def P3712228276325094248.Spec : Prop :=
  ∀ n, P3712228276325094248.a n = A113479 (n + 1)

end A113479

/-! ## A113479.P1699965609516699977

`A001901(n+1)+A092053(n+1)+A001902(n+1)`
-/

namespace A113479.P1699965609516699977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001901 (n + 1) + (A092053 (n + 1) + A001902 (n + 1))

end

end A113479.P1699965609516699977

namespace A113479

/-- `A001901(n+1)+A092053(n+1)+A001902(n+1)` -/
def P1699965609516699977.Spec : Prop :=
  ∀ n, P1699965609516699977.a n = A113479 (n + 1)

end A113479

/-! ## A113479.P16926809802527068836

`A101926(n+1)/A048896(n+1)`
-/

namespace A113479.P16926809802527068836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101926 (n + 1) : ℚ) / (A048896 (n + 1) : ℚ)

end

end A113479.P16926809802527068836

namespace A113479

/-- `A101926(n+1)/A048896(n+1)` -/
def P16926809802527068836.Spec : Prop :=
  ∀ n, P16926809802527068836.a n = (A113479 (n + 1) : ℚ)

end A113479

/-! ## A113479.P17022790282831129552

`2*A046161(n+1)/A048896(n+1)`
-/

namespace A113479.P17022790282831129552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A046161 (n + 1) : ℚ) / (A048896 (n + 1) : ℚ))

end

end A113479.P17022790282831129552

namespace A113479

/-- `2*A046161(n+1)/A048896(n+1)` -/
def P17022790282831129552.Spec : Prop :=
  ∀ n, P17022790282831129552.a n = (A113479 (n + 1) : ℚ)

end A113479

/-!
# A113482: Largest side (or hypotenuse) of primitive Pythagorean triangles sorted on middle side (or long leg) A020883.

The programs for A113482, there is no canonical definition to state claims against.
-/

/-! ## A113482.P16582990675985450503

`A343894(n+1)-2*A020883(n+1)`
-/

namespace A113482.P16582990675985450503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343894 (n + 1) - 2 * A020883 (n + 1)

end

end A113482.P16582990675985450503

/-! ## A113482.P9235874424875655638

`A343894(n+1)-2*A024354(n+1)`
-/

namespace A113482.P9235874424875655638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343894 (n + 1) - 2 * A024354 (n + 1)

end

end A113482.P9235874424875655638

/-! ## A113482.P8574057496264305642

`A343894(n+1)-A004277(A020883(n+1))`
-/

namespace A113482.P8574057496264305642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343894 (n + 1) - A004277 (A020883 (n + 1)).toNat

end

end A113482.P8574057496264305642

/-! ## A113482.P10047396050853517623

`A343894(n+1)-A004277(A024354(n+1))`
-/

namespace A113482.P10047396050853517623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343894 (n + 1) - A004277 (A024354 (n + 1)).toNat

end

end A113482.P10047396050853517623

/-! ## A113482.P15926732932764706066

`A343894(n+1)-A005843(A343891(3*n+1))`
-/

namespace A113482.P15926732932764706066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343894 (n + 1) - A005843 (A343891 (3 * n + 1)).toNat

end

end A113482.P15926732932764706066

/-! ## A113482.P17077550676965759537

`A343894(A032742(2*(n+1)))%(2*A020883(n+1))`
-/

namespace A113482.P17077550676965759537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343894 (A032742 (2 * (n + 1))).toNat) (2 * A020883 (n + 1))

end

end A113482.P17077550676965759537

/-! ## A113482.P12676484941616124066

`A343894(n+1)-(A024354(n+1)+A020883(n+1))`
-/

namespace A113482.P12676484941616124066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343894 (n + 1) - (A024354 (n + 1) + A020883 (n + 1))

end

end A113482.P12676484941616124066

/-! ## A113482.P10637536595818497073

`A343892(n+1)+A343893(n+1)-A020883(n+1)`
-/

namespace A113482.P10637536595818497073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343892 (n + 1) + (A343893 (n + 1) - A020883 (n + 1))

end

end A113482.P10637536595818497073

/-! ## A113482.P6930923868053159469

`A343892(n+1)+A343893(n+1)-A024354(n+1)`
-/

namespace A113482.P6930923868053159469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343892 (n + 1) + (A343893 (n + 1) - A024354 (n + 1))

end

end A113482.P6930923868053159469

/-!
# A113483: a(n)=Prime(a(n-2)+Pi(a(n-1))), where Prime(n) means n-th prime and Pi(n) means number of primes<=n.

The programs for A113483, there is no canonical definition to state claims against.
-/

/-! ## A113483.P2272179275259954480

`Δ[A000040(a(n-2))+a(n-1)]` with `a(0)=2, a(1)=4`
-/

namespace A113483.P2272179275259954480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f1 =>
  A000040 (f1 (n - 2)).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113483.P2272179275259954480

/-! ## A113483.P3138380496399974199

`A051697(∑[A163771(n)+A114495(n+1)])`
-/

namespace A113483.P3138380496399974199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163771 n + A114495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113483.P3138380496399974199

/-! ## A113483.P1621067931539073529

`A167175(A085158(n+1)+A000108(n))`
-/

namespace A113483.P1621067931539073529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167175 (A085158 (n + 1) + A000108 n).toNat

end

end A113483.P1621067931539073529

/-!
# A113484: a(n) = smallest composite integer > n and coprime to n.

The programs for A113484, there is no canonical definition to state claims against.
-/

/-! ## A113484.P5383549230561381532

`A262401(A061767(n+1)*A117358(A001317(n)))`
-/

namespace A113484.P5383549230561381532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262401 (A061767 (n + 1) * A117358 (A001317 n).toNat).toNat

end

end A113484.P5383549230561381532

/-! ## A113484.P4690888821344014383

`A061767(A187829(n+1)%A009440(n+1))`
-/

namespace A113484.P4690888821344014383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (Int.tmod (A187829 (n + 1)) (A009440 (n + 1))).toNat

end

end A113484.P4690888821344014383

/-!
# A113485: Number of partitions of [n] avoiding the pattern 12/34.

The programs for A113485, there is no canonical definition to state claims against.
-/

/-! ## A113485.P8256491777039898282

`A134249(A322262(n))+A003462(n)`
-/

namespace A113485.P8256491777039898282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134249 (A322262 n).toNat + A003462 n

end

end A113485.P8256491777039898282

/-! ## A113485.P5555298765245129434

`A339172(A178381(n))+A007051(n)`
-/

namespace A113485.P5555298765245129434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339172 (A178381 n).toNat + A007051 n

end

end A113485.P5555298765245129434

/-! ## A113485.P16979759939116691574

`A126257(A112960(n+1))+A007051(n)`
-/

namespace A113485.P16979759939116691574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A112960 (n + 1)).toNat + A007051 n

end

end A113485.P16979759939116691574

/-!
# A113486: a(n) = A113166(n) - Fibonacci(n-1), where Fibonacci(n) = A000045(n).

The programs for A113486, the canonical program `A113486.P8546128254641026094` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113486 has offset 1).

The definition of A113486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113486.P8546128254641026094

`A113166(n+1)-A000045(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A113486

/-- `A113166(n+1)-A000045(n)` -/
def P8546128254641026094.Spec : Prop :=
  ∀ n, P8546128254641026094.a n = A113486 (n + 1)

theorem P8546128254641026094.correct : P8546128254641026094.Spec := by
  intro n
  simp only [A113486, Nat.add_sub_cancel]

end A113486

/-! ## A113486.P17610847387597239228

`A113166(n+1)-abs(A236191(n))`
-/

namespace A113486.P17610847387597239228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113166 (n + 1) - |A236191 n|

end

end A113486.P17610847387597239228

namespace A113486

/-- `A113166(n+1)-abs(A236191(n))` -/
def P17610847387597239228.Spec : Prop :=
  ∀ n, P17610847387597239228.a n = A113486 (n + 1)

end A113486

/-! ## A113486.P4684118241563659923

`A113166(n+1)-A103609(2*n)`
-/

namespace A113486.P4684118241563659923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113166 (n + 1) - A103609 (2 * n)

end

end A113486.P4684118241563659923

namespace A113486

/-- `A113166(n+1)-A103609(2*n)` -/
def P4684118241563659923.Spec : Prop :=
  ∀ n, P4684118241563659923.a n = A113486 (n + 1)

end A113486

/-! ## A113486.P5677503636501749988

`A113166(n+1)%A324969(n+1)`
-/

namespace A113486.P5677503636501749988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113166 (n + 1)) (A324969 (n + 1))

end

end A113486.P5677503636501749988

namespace A113486

/-- `A113166(n+1)%A324969(n+1)` -/
def P5677503636501749988.Spec : Prop :=
  ∀ n, P5677503636501749988.a n = A113486 (n + 1)

end A113486

/-! ## A113486.P15262454651987794384

`A113166(n+1)%A000045(A028310(n))`
-/

namespace A113486.P15262454651987794384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113166 (n + 1)) (A000045 (A028310 n).toNat)

end

end A113486.P15262454651987794384

namespace A113486

/-- `A113166(n+1)%A000045(A028310(n))` -/
def P15262454651987794384.Spec : Prop :=
  ∀ n, P15262454651987794384.a n = A113486 (n + 1)

end A113486

/-! ## A113486.P11852694237187487362

`∑{d}[n+1, A000045(#-1)*A000010((n+1)/#)]-A000045(n)`
-/

namespace A113486.P11852694237187487362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 (d - 1) * A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - A000045 n

end

end A113486.P11852694237187487362

namespace A113486

/-- `∑{d}[n+1, A000045(#-1)*A000010((n+1)/#)]-A000045(n)` -/
def P11852694237187487362.Spec : Prop :=
  ∀ n, P11852694237187487362.a n = A113486 (n + 1)

end A113486

/-! ## A113486.P17850520419352415938

`A113166(n+1)-A022086(n)/3`
-/

namespace A113486.P17850520419352415938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113166 (n + 1) : ℚ) - (A022086 n : ℚ) / 3

end

end A113486.P17850520419352415938

namespace A113486

/-- `A113166(n+1)-A022086(n)/3` -/
def P17850520419352415938.Spec : Prop :=
  ∀ n, P17850520419352415938.a n = (A113486 (n + 1) : ℚ)

end A113486

/-! ## A113486.P17641715468591239724

`A113166(n+1)-A039913(∑[n])`
-/

namespace A113486.P17641715468591239724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113166 (n + 1) - A039913 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113486.P17641715468591239724

namespace A113486

/-- `A113166(n+1)-A039913(∑[n])` -/
def P17641715468591239724.Spec : Prop :=
  ∀ n, P17641715468591239724.a n = A113486 (n + 1)

end A113486

/-!
# A113487: Numbers k such that 17*k + 2 is prime.

The programs for A113487, the canonical program `A113487.P13751071872001298491` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113487 has offset 1).

The definition of A113487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4903 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113487.P10938748550773517066

`A108976(A123108(2*n))+A001221(A001316(n))`
-/

namespace A113487.P10938748550773517066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108976 (A123108 (2 * n)).toNat + A001221 (A001316 n).toNat

end

end A113487.P10938748550773517066

namespace A113487

/-- `A108976(A123108(2*n))+A001221(A001316(n))` -/
def P10938748550773517066.Spec : Prop :=
  ∀ n, P10938748550773517066.a n = A113487 (n + 1)

end A113487

/-! ## A113487.P13751071872001298491

`floor(p?[17*n+2]/17)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113487

/-- `floor(p?[17*n+2]/17)` -/
def P13751071872001298491.Spec : Prop :=
  ∀ n, P13751071872001298491.a n = A113487 (n + 1)

theorem P13751071872001298491.correct : P13751071872001298491.Spec := by
  intro n
  simp only [A113487, Nat.add_sub_cancel]

end A113487

/-! ## A113487.P16053593801777175934

`round(p?[a(n-1)+17]/17)` with `a(0)=2`
-/

namespace A113487.P16053593801777175934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 17)

end

end A113487.P16053593801777175934

namespace A113487

/-- `round(p?[a(n-1)+17]/17)` -/
def P16053593801777175934.Spec : Prop :=
  ∀ n, P16053593801777175934.a n = A113487 (n + 1)

end A113487

/-! ## A113487.P17037519243055367993

`lt[∑{e}[17*n+2, #]+1, 3]`
-/

namespace A113487.P17037519243055367993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A113487.P17037519243055367993

namespace A113487

/-- `lt[∑{e}[17*n+2, #]+1, 3]` -/
def P17037519243055367993.Spec : Prop :=
  ∀ n, (P17037519243055367993.a n : ℤ) = A113487 (n + 1)

end A113487

/-! ## A113487.P3654424408552004205

`eq[1, A001222(17*n+2)]`
-/

namespace A113487.P3654424408552004205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (17 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113487.P3654424408552004205

namespace A113487

/-- `eq[1, A001222(17*n+2)]` -/
def P3654424408552004205.Spec : Prop :=
  ∀ n, (P3654424408552004205.a n : ℤ) = A113487 (n + 1)

end A113487

/-! ## A113487.P13733409789574716458

`eq[2, A000005(17*n+2)]`
-/

namespace A113487.P13733409789574716458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (17 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113487.P13733409789574716458

namespace A113487

/-- `eq[2, A000005(17*n+2)]` -/
def P13733409789574716458.Spec : Prop :=
  ∀ n, (P13733409789574716458.a n : ℤ) = A113487 (n + 1)

end A113487

/-! ## A113487.P14631444675649690541

`lt[A000005(34*n/2+2), 3]`
-/

namespace A113487.P14631444675649690541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (34 * ((n : ℚ) / 2) + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A113487.P14631444675649690541

namespace A113487

/-- `lt[A000005(34*n/2+2), 3]` -/
def P14631444675649690541.Spec : Prop :=
  ∀ n, (P14631444675649690541.a n : ℤ) = A113487 (n + 1)

end A113487

/-! ## A113487.P5262965598091018682

`lt[2*n, A020639(17*n+2)]`
-/

namespace A113487.P5262965598091018682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (17 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A113487.P5262965598091018682

namespace A113487

/-- `lt[2*n, A020639(17*n+2)]` -/
def P5262965598091018682.Spec : Prop :=
  ∀ n, (P5262965598091018682.a n : ℤ) = A113487 (n + 1)

end A113487

/-! ## A113487.P2373623747259506267

`eq[1, A078898(17*n+2)]`
-/

namespace A113487.P2373623747259506267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (17 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113487.P2373623747259506267

namespace A113487

/-- `eq[1, A078898(17*n+2)]` -/
def P2373623747259506267.Spec : Prop :=
  ∀ n, (P2373623747259506267.a n : ℤ) = A113487 (n + 1)

end A113487

/-! ## A113487.P18224362250420353656

`eq[1, A085099(A215137(n))]`
-/

namespace A113487.P18224362250420353656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085099 (A215137 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113487.P18224362250420353656

namespace A113487

/-- `eq[1, A085099(A215137(n))]` -/
def P18224362250420353656.Spec : Prop :=
  ∀ n, (P18224362250420353656.a n : ℤ) = A113487 (n + 1)

end A113487

/-!
# A113488: Numbers k such that 19*k + 2 is prime.

The programs for A113488, the canonical program `A113488.P10702424963496331419` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113488 has offset 1).

The definition of A113488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113488.P10702424963496331419

`floor(p?[a(n-1)+19]/19)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113488

/-- `floor(p?[a(n-1)+19]/19)` -/
def P10702424963496331419.Spec : Prop :=
  ∀ n, P10702424963496331419.a n = A113488 (n + 1)

theorem P10702424963496331419.correct : P10702424963496331419.Spec := by
  intro n
  simp only [A113488, Nat.add_sub_cancel]

end A113488

/-! ## A113488.P17059579598403249637

`eq[1, A001222(19*n+2)]`
-/

namespace A113488.P17059579598403249637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (19 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113488.P17059579598403249637

namespace A113488

/-- `eq[1, A001222(19*n+2)]` -/
def P17059579598403249637.Spec : Prop :=
  ∀ n, (P17059579598403249637.a n : ℤ) = A113488 (n + 1)

end A113488

/-! ## A113488.P15544019252690814837

`eq[1, A010051(19*n+2)]`
-/

namespace A113488.P15544019252690814837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (19 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113488.P15544019252690814837

namespace A113488

/-- `eq[1, A010051(19*n+2)]` -/
def P15544019252690814837.Spec : Prop :=
  ∀ n, (P15544019252690814837.a n : ℤ) = A113488 (n + 1)

end A113488

/-! ## A113488.P3941442209924821635

`eq[2, A000005(19*n+2)]`
-/

namespace A113488.P3941442209924821635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (19 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113488.P3941442209924821635

namespace A113488

/-- `eq[2, A000005(19*n+2)]` -/
def P3941442209924821635.Spec : Prop :=
  ∀ n, (P3941442209924821635.a n : ℤ) = A113488 (n + 1)

end A113488

/-! ## A113488.P13123726611163623781

`lt[6*n, A020639(19*n+2)]`
-/

namespace A113488.P13123726611163623781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (19 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A113488.P13123726611163623781

namespace A113488

/-- `lt[6*n, A020639(19*n+2)]` -/
def P13123726611163623781.Spec : Prop :=
  ∀ n, (P13123726611163623781.a n : ℤ) = A113488 (n + 1)

end A113488

/-! ## A113488.P12411620392354871154

`lt[A001222(21*n+2-2*n), 2]`
-/

namespace A113488.P12411620392354871154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (21 * n + 2 - 2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A113488.P12411620392354871154

namespace A113488

/-- `lt[A001222(21*n+2-2*n), 2]` -/
def P12411620392354871154.Spec : Prop :=
  ∀ n, (P12411620392354871154.a n : ℤ) = A113488 (n + 1)

end A113488

/-! ## A113488.P11835418501269741368

`lt[2*7*n, A006530(21*n-A004277(n)+2)]`
-/

namespace A113488.P11835418501269741368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (7 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((21 * n : ℤ) - A004277 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A113488.P11835418501269741368

namespace A113488

/-- `lt[2*7*n, A006530(21*n-A004277(n)+2)]` -/
def P11835418501269741368.Spec : Prop :=
  ∀ n, (P11835418501269741368.a n : ℤ) = A113488 (n + 1)

end A113488

/-! ## A113488.P18323009451239657529

`lt[n, A014963(19*n+2)]`
-/

namespace A113488.P18323009451239657529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (19 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A113488.P18323009451239657529

namespace A113488

/-- `lt[n, A014963(19*n+2)]` -/
def P18323009451239657529.Spec : Prop :=
  ∀ n, (P18323009451239657529.a n : ℤ) = A113488 (n + 1)

end A113488

/-!
# A113489: Composite numbers of the form "Sum of the first 10^k primes".

The programs for A113489, there is no canonical definition to state claims against.
-/

/-! ## A113489.P16186709444384234697

`A099824(A086130(n+1)+1)`
-/

namespace A113489.P16186709444384234697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099824 (A086130 (n + 1) + 1).toNat

end

end A113489.P16186709444384234697

/-!
# A113494: a(0) = 2, a(1) = 3; for n>1, a(n) = a(n-2)^2 + a(n-1)^2.

The programs for A113494, the canonical program `A113494.P6064395600130049378` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113494 has offset 0).

The definition of A113494 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)²+a(n-1)²` (program `A113494.P6064395600130049378`, by `A113494.P6064395600130049378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113494.P6064395600130049378

`a(n-2)²+a(n-1)²` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113494

/-- `a(n-2)²+a(n-1)²` -/
def P6064395600130049378.Spec : Prop :=
  ∀ n, (P6064395600130049378.a n : ℤ) = A113494 n

theorem P6064395600130049378.correct : P6064395600130049378.Spec := by
  intro n
  simp only [A113494]

end A113494

/-! ## A113494.P8516731421716642026

`a(n-1)*a(n-1)+a(n-2)*a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A113494.P8516731421716642026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) * a (n - 1) + a (n - 2) * a (n - 2)

end

end A113494.P8516731421716642026

namespace A113494

/-- `a(n-1)*a(n-1)+a(n-2)*a(n-2)` -/
def P8516731421716642026.Spec : Prop :=
  ∀ n, (P8516731421716642026.a n : ℤ) = A113494 n

end A113494

/-!
# A113495: Lexicographically earliest subsequence of the perfect powers in A025475 such that first differences are an increasing sequence of primes.

The programs for A113495, there is no canonical definition to state claims against.
-/

/-! ## A113495.P8100913104968121393

`∑[A113759(∑[n+1])]`
-/

namespace A113495.P8100913104968121393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113759 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113495.P8100913104968121393

/-! ## A113495.P233721340655406810

`∑[record[A113759(A008619(n))]]`
-/

namespace A113495.P233721340655406810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113759 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113495.P233721340655406810

/-! ## A113495.P9909204550823841276

`∑[record[A113759(A028310(n))]]`
-/

namespace A113495.P9909204550823841276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113759 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113495.P9909204550823841276

/-! ## A113495.P5190153783942167112

`∑[record[A113759(A065033(n))]]`
-/

namespace A113495.P5190153783942167112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113759 (A065033 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113495.P5190153783942167112

/-! ## A113495.P17064329019124672642

`∑[record[A113759(A133310(n))]]`
-/

namespace A113495.P17064329019124672642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113759 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113495.P17064329019124672642

/-!
# A113496: a(n) = smallest composite integer > c(n) and coprime to c(n), where c(n) is the n-th composite integer.

The programs for A113496, there is no canonical definition to state claims against.
-/

/-! ## A113496.P3274159397206251383

`A113484(A002808(n+1))`
-/

namespace A113496.P3274159397206251383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A002808 (n + 1)).toNat

end

end A113496.P3274159397206251383

/-! ## A113496.P3678695418553649197

`A113484(Δ[A053767(n)])`
-/

namespace A113496.P3678695418553649197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (f1 (n + 1) - f1 n).toNat

end

end A113496.P3678695418553649197

/-! ## A113496.P14106384305978978980

`A113484(comp[A351078(n)])`
-/

namespace A113496.P14106384305978978980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A113496.P14106384305978978980

/-! ## A113496.P6280274857374326711

`A113484(A018252(n+2))`
-/

namespace A113496.P6280274857374326711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A018252 (n + 2)).toNat

end

end A113496.P6280274857374326711

/-! ## A113496.P12909643753608969349

`A113484(A141468(n+3))`
-/

namespace A113496.P12909643753608969349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (A141468 (n + 3)).toNat

end

end A113496.P12909643753608969349

/-! ## A113496.P13802563432363188040

`A113484(lt[0, A107393(n)])`
-/

namespace A113496.P13802563432363188040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A113496.P13802563432363188040

/-! ## A113496.P9723031225829844267

`A113484(lt[1, A003415(n)])`
-/

namespace A113496.P9723031225829844267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A113496.P9723031225829844267

/-! ## A113496.P3505638270561888583

`A113484(lt[1, A107286(n)])`
-/

namespace A113496.P3505638270561888583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A113496.P3505638270561888583

/-! ## A113496.P14362631371209271478

`A113484(lt[1, A175126(n)])`
-/

namespace A113496.P14362631371209271478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A113496.P14362631371209271478

/-! ## A113496.P10169465619727372446

`filter[A113484(n+3), A323162(#)]`
-/

namespace A113496.P10169465619727372446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A113496.P10169465619727372446

/-!
# A113497: Ascending descending base exponent transform of sequence A000034(n) = 1 + n mod 2.

The programs for A113497, the canonical program `A113497.P9609766160687303449` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113497 has offset 1).

The definition of A113497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113497.P9609766160687303449

`2*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113497

/-- `2*a(n-2)-a(n-4)` -/
def P9609766160687303449.Spec : Prop :=
  ∀ n, P9609766160687303449.a n = A113497 (n + 1)

theorem P9609766160687303449.correct : P9609766160687303449.Spec := by
  intro n
  simp only [A113497, Nat.add_sub_cancel]

end A113497

/-! ## A113497.P7052569662093927707

`∑[xor(1, 4-a(n-1))]` with `a(0)=1`
-/

namespace A113497.P7052569662093927707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor 1 (4 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113497.P7052569662093927707

namespace A113497

/-- `∑[xor(1, 4-a(n-1))]` -/
def P7052569662093927707.Spec : Prop :=
  ∀ n, P7052569662093927707.a n = A113497 (n + 1)

end A113497

/-! ## A113497.P2951510322834974281

`∑[∑[ogf((1+3x+4x^2)/(1+2x+x^2))]]`
-/

namespace A113497.P2951510322834974281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113497.P2951510322834974281

namespace A113497

/-- `∑[∑[ogf((1+3x+4x^2)/(1+2x+x^2))]]` -/
def P2951510322834974281.Spec : Prop :=
  ∀ n, P2951510322834974281.a n = A113497 (n + 1)

end A113497

/-! ## A113497.P17579475137760832366

`∑[(n-1)*(-1)^n+2]`
-/

namespace A113497.P17579475137760832366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (-1) ^ n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113497.P17579475137760832366

namespace A113497

/-- `∑[(n-1)*(-1)^n+2]` -/
def P17579475137760832366.Spec : Prop :=
  ∀ n, P17579475137760832366.a n = A113497 (n + 1)

end A113497

/-! ## A113497.P18393933186564530707

`ogf((1+3x+4x^2)/(1-2x^2+x^4))`
-/

namespace A113497.P18393933186564530707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4] [1, 0, -2, 0, 1] n

end

end A113497.P18393933186564530707

namespace A113497

/-- `ogf((1+3x+4x^2)/(1-2x^2+x^4))` -/
def P18393933186564530707.Spec : Prop :=
  ∀ n, P18393933186564530707.a n = A113497 (n + 1)

end A113497

/-! ## A113497.P9415965666486754860

`ceil(n/2)+1+n*gcd(2, n)`
-/

namespace A113497.P9415965666486754860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + 1 + (n * Nat.gcd 2 n : ℤ)

end

end A113497.P9415965666486754860

namespace A113497

/-- `ceil(n/2)+1+n*gcd(2, n)` -/
def P9415965666486754860.Spec : Prop :=
  ∀ n, P9415965666486754860.a n = A113497 (n + 1)

end A113497

/-! ## A113497.P8826457364789338587

`Δ[floor((lcm(2, n)+n²)/2)]+n`
-/

namespace A113497.P8826457364789338587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 n + n ^ 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A113497.P8826457364789338587

namespace A113497

/-- `Δ[floor((lcm(2, n)+n²)/2)]+n` -/
def P8826457364789338587.Spec : Prop :=
  ∀ n, P8826457364789338587.a n = A113497 (n + 1)

end A113497

/-! ## A113497.P7904371845326524937

`a(n-2)+(-1)^n+4` with `a(0)=1, a(1)=3`
-/

namespace A113497.P7904371845326524937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + ((-1) ^ n + 4)

end

end A113497.P7904371845326524937

namespace A113497

/-- `a(n-2)+(-1)^n+4` -/
def P7904371845326524937.Spec : Prop :=
  ∀ n, P7904371845326524937.a n = A113497 (n + 1)

end A113497

/-! ## A113497.P8489916752709543286

`floor(gcd(2*n, n²)+(n+3)/2)`
-/

namespace A113497.P8489916752709543286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd (2 * n) (n ^ 2) : ℚ) + (n + 3 : ℚ) / 2⌋

end

end A113497.P8489916752709543286

namespace A113497

/-- `floor(gcd(2*n, n²)+(n+3)/2)` -/
def P8489916752709543286.Spec : Prop :=
  ∀ n, P8489916752709543286.a n = A113497 (n + 1)

end A113497

/-! ## A113497.P17920746836198301464

`Δ[floor(n*or(1, n+1)/2)]+n`
-/

namespace A113497.P17920746836198301464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * ((Nat.lor 1 (n + 1) : ℚ) / 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A113497.P17920746836198301464

namespace A113497

/-- `Δ[floor(n*or(1, n+1)/2)]+n` -/
def P17920746836198301464.Spec : Prop :=
  ∀ n, P17920746836198301464.a n = A113497 (n + 1)

end A113497

/-! ## A113497.P7159402963001575359

`gcd(3, n%2)+a(n-2)+2` with `a(0)=1, a(1)=3`
-/

namespace A113497.P7159402963001575359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.gcd 3 (n % 2) + (a (n - 2) + 2)

end

end A113497.P7159402963001575359

namespace A113497

/-- `gcd(3, n%2)+a(n-2)+2` -/
def P7159402963001575359.Spec : Prop :=
  ∀ n, (P7159402963001575359.a n : ℤ) = A113497 (n + 1)

end A113497

/-! ## A113497.P5837647742196592933

`∑[8-a(n-1)]-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A113497.P5837647742196592933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A113497.P5837647742196592933

namespace A113497

/-- `∑[8-a(n-1)]-a(n-1)` -/
def P5837647742196592933.Spec : Prop :=
  ∀ n, P5837647742196592933.a n = A113497 (n + 1)

end A113497

/-! ## A113497.P15355201330474450046

`Δ[∪[(2*n+1)²+n, (2*n)²]]`
-/

namespace A113497.P15355201330474450046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A113497.P15355201330474450046

namespace A113497

/-- `Δ[∪[(2*n+1)²+n, (2*n)²]]` -/
def P15355201330474450046.Spec : Prop :=
  ∀ n, P15355201330474450046.a n = A113497 (n + 1)

end A113497

/-! ## A113497.P4755890211132382377

`A266074(n)+∑[1-n]`
-/

namespace A113497.P4755890211132382377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266074 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113497.P4755890211132382377

namespace A113497

/-- `A266074(n)+∑[1-n]` -/
def P4755890211132382377.Spec : Prop :=
  ∀ n, P4755890211132382377.a n = A113497 (n + 1)

end A113497

/-! ## A113497.P11008843161375104029

`A057174(n)+a(n-1)` with `a(0)=1`
-/

namespace A113497.P11008843161375104029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057174 n + a (n - 1)

end

end A113497.P11008843161375104029

namespace A113497

/-- `A057174(n)+a(n-1)` -/
def P11008843161375104029.Spec : Prop :=
  ∀ n, P11008843161375104029.a n = A113497 (n + 1)

end A113497

/-! ## A113497.P11691926777037218253

`ceil(A114752(n+1)+n/2)`
-/

namespace A113497.P11691926777037218253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A114752 (n + 1) : ℚ) + (n : ℚ) / 2⌉

end

end A113497.P11691926777037218253

namespace A113497

/-- `ceil(A114752(n+1)+n/2)` -/
def P11691926777037218253.Spec : Prop :=
  ∀ n, P11691926777037218253.a n = A113497 (n + 1)

end A113497

/-! ## A113497.P13421522892871192572

`∑[n+2]-A247375(n+1)`
-/

namespace A113497.P13421522892871192572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A247375 (n + 1)

end

end A113497.P13421522892871192572

namespace A113497

/-- `∑[n+2]-A247375(n+1)` -/
def P13421522892871192572.Spec : Prop :=
  ∀ n, P13421522892871192572.a n = A113497 (n + 1)

end A113497

/-! ## A113497.P1714157602568960320

`A047461(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A113497.P1714157602568960320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047461 (n + 1) - a (n - 1)

end

end A113497.P1714157602568960320

namespace A113497

/-- `A047461(n+1)-a(n-1)` -/
def P1714157602568960320.Spec : Prop :=
  ∀ n, P1714157602568960320.a n = A113497 (n + 1)

end A113497

/-! ## A113497.P7937150611169490954

`A047470(n+1)+1-a(n-1)` with `a(0)=1`
-/

namespace A113497.P7937150611169490954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A047470 (n + 1) + 1 - a (n - 1)

end

end A113497.P7937150611169490954

namespace A113497

/-- `A047470(n+1)+1-a(n-1)` -/
def P7937150611169490954.Spec : Prop :=
  ∀ n, P7937150611169490954.a n = A113497 (n + 1)

end A113497

/-! ## A113497.P963031043168397401

`A080513(n)+A022998(n)`
-/

namespace A113497.P963031043168397401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n + A022998 n

end

end A113497.P963031043168397401

namespace A113497

/-- `A080513(n)+A022998(n)` -/
def P963031043168397401.Spec : Prop :=
  ∀ n, P963031043168397401.a n = A113497 (n + 1)

end A113497

/-!
# A113499: Numbers n such that P(11*n) is prime where P(n) is the partition number.

The programs for A113499, there is no canonical definition to state claims against.
-/

/-! ## A113499.P6415510839439275454

`eq[1, A085561(11*n)]`
-/

namespace A113499.P6415510839439275454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 (11 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113499.P6415510839439275454

/-! ## A113499.P6421094423783808750

`eq[2, A085543(11*n)]`
-/

namespace A113499.P6421094423783808750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 (11 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113499.P6421094423783808750

/-! ## A113499.P4196430675455827714

`eq[2, A278241(A008593(n))]`
-/

namespace A113499.P4196430675455827714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278241 (A008593 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113499.P4196430675455827714

/-! ## A113499.P12294595555651099675

`eq[A085561(A008593(n)), A158388(n)]`
-/

namespace A113499.P12294595555651099675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 (A008593 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113499.P12294595555651099675

/-! ## A113499.P5801491064931808837

`lt[A085543(A008593(n)), A158411(n)]`
-/

namespace A113499.P5801491064931808837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085543 (A008593 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158411 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A113499.P5801491064931808837

