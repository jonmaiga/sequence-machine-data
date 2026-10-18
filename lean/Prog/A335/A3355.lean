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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A335500: 2nd Lucas-Wythoff array (w(n,k)), by antidiagonals; see Comments.

The programs for A335500, there is no canonical definition to state claims against.
-/

/-! ## A335500.P3987301137393821017

`floor((A035513(n+1)+1)*(3-ϕ))-1`
-/

namespace A335500.P3987301137393821017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035513 (n + 1) + 1 : ℝ) * (3 - Real.goldenRatio)⌋ - 1

end

end A335500.P3987301137393821017

/-! ## A335500.P6491398061167295363

`A063732(A035513(n+1)+1)`
-/

namespace A335500.P6491398061167295363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063732 (A035513 (n + 1) + 1).toNat

end

end A335500.P6491398061167295363

/-! ## A335500.P17023887137932349593

`A249115(A035513(n+1)+1)-1`
-/

namespace A335500.P17023887137932349593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (A035513 (n + 1) + 1).toNat - 1

end

end A335500.P17023887137932349593

/-! ## A335500.P1421715986543415267

`A195121(A035513(n+1)+1)-2`
-/

namespace A335500.P1421715986543415267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 (A035513 (n + 1) + 1).toNat - 2

end

end A335500.P1421715986543415267

/-! ## A335500.P6629563357071218812

`A287870(n+1)+A035513(n+1)`
-/

namespace A335500.P6629563357071218812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287870 (n + 1) + A035513 (n + 1)

end

end A335500.P6629563357071218812

/-! ## A335500.P9339521555953056171

`A287869(n+1)+2*A287870(n+1)`
-/

namespace A335500.P9339521555953056171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287869 (n + 1) + 2 * A287870 (n + 1)

end

end A335500.P9339521555953056171

/-! ## A335500.P420444200492147401

`2*A035513(n+1)-A287869(n+1)`
-/

namespace A335500.P420444200492147401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035513 (n + 1) - A287869 (n + 1)

end

end A335500.P420444200492147401

/-! ## A335500.P7675912513971574000

`A287870(n+1)+A083412(∑[2*n]%comp[∑[n]])`
-/

namespace A335500.P7675912513971574000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287870 (n + 1) + A083412 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A335500.P7675912513971574000

/-! ## A335500.P11391546151391984209

`A287870(n+1)+A083412(A061579(n))`
-/

namespace A335500.P11391546151391984209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287870 (n + 1) + A083412 (A061579 n).toNat

end

end A335500.P11391546151391984209

/-! ## A335500.P14457402258156350541

`A287870(n+1)+A114579(A083412(n))`
-/

namespace A335500.P14457402258156350541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287870 (n + 1) + A114579 (A083412 n).toNat

end

end A335500.P14457402258156350541

/-!
# A335501: a(0) = 1; a(n) = (2/n) * Sum_{k=0..n-1} binomial(n,k)^2 * (n-k) * a(k).

The programs for A335501, there is no canonical definition to state claims against.
-/

/-! ## A335501.P9842122302766359638

`A075989(∏[∑[n]+2]+1)`
-/

namespace A335501.P9842122302766359638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075989 (∏ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A335501.P9842122302766359638

/-!
# A335506: Start with a(0) = 1; thereafter a(n) is obtained from 5*a(n-1) by removing all 7's.

The programs for A335506, there is no canonical definition to state claims against.
-/

/-! ## A335506.P8319895349114837212

`A000351(n)%A102377(A115099(n))`
-/

namespace A335506.P8319895349114837212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000351 n) (A102377 (A115099 n).toNat)

end

end A335506.P8319895349114837212

/-!
# A335508: Number of patterns of length n matching the pattern (1,1,1).

The programs for A335508, there is no canonical definition to state claims against.
-/

/-! ## A335508.P632607517679661182

`A000670(n)-A080599(n)`
-/

namespace A335508.P632607517679661182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A080599 n

end

end A335508.P632607517679661182

/-! ## A335508.P294546329718638325

`A122101(∑[n])-A080599(n)`
-/

namespace A335508.P294546329718638325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) - A080599 n

end

end A335508.P294546329718638325

/-! ## A335508.P2836235227914063845

`ceil(A007047(n)/4)-A080599(n)`
-/

namespace A335508.P2836235227914063845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007047 n : ℚ) / 4⌉ - A080599 n

end

end A335508.P2836235227914063845

/-! ## A335508.P8005901114526352931

`2*A032109(n)-1-A080599(n)`
-/

namespace A335508.P8005901114526352931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032109 n - 1 - A080599 n

end

end A335508.P8005901114526352931

/-! ## A335508.P13299452296159689345

`A261959(A000217(n)+n)-A080599(n)`
-/

namespace A335508.P13299452296159689345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 (A000217 n + (n : ℤ)).toNat - A080599 n

end

end A335508.P13299452296159689345

/-!
# A335509: Number of patterns of length n matching the pattern (1,1,2).

The programs for A335509, there is no canonical definition to state claims against.
-/

/-! ## A335509.P11985742230755981468

`A000670(n)-A001710(n+1)`
-/

namespace A335509.P11985742230755981468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A001710 (n + 1)

end

end A335509.P11985742230755981468

/-! ## A335509.P18069429981673428347

`(A000629(n)-A000142(n+1))/2`
-/

namespace A335509.P18069429981673428347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000629 n - A000142 (n + 1) : ℚ) / 2

end

end A335509.P18069429981673428347

/-! ## A335509.P5190621832079890414

`A000670(n)-A008279(A027379(n))`
-/

namespace A335509.P5190621832079890414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A008279 (A027379 n).toNat

end

end A335509.P5190621832079890414

/-! ## A335509.P8363705813069472529

`A000670(n)-A008279(A055998(n))`
-/

namespace A335509.P8363705813069472529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A008279 (A055998 n).toNat

end

end A335509.P8363705813069472529

/-! ## A335509.P15241108859870539286

`A000670(n)-A092580(A000124(n))`
-/

namespace A335509.P15241108859870539286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A092580 (A000124 n).toNat

end

end A335509.P15241108859870539286

/-!
# A335510: Number of (1,1,1)-matching permutations of the prime indices of n.

The programs for A335510, the canonical program `A335510.P6829116680428803615` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335510 has offset 1).

The definition of A335510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335510.P6829116680428803615

`A008480(n+1)-A335511(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A335510

/-- `A008480(n+1)-A335511(n+1)` -/
def P6829116680428803615.Spec : Prop :=
  ∀ n, P6829116680428803615.a n = A335510 (n + 1)

theorem P6829116680428803615.correct : P6829116680428803615.Spec := by
  intro n
  simp only [A335510, Nat.add_sub_cancel]

end A335510

/-! ## A335510.P8652535484085396829

`and(A231122(n+1), A335487(n+1))`
-/

namespace A335510.P8652535484085396829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A231122 (n + 1)) (A335487 (n + 1))

end

end A335510.P8652535484085396829

namespace A335510

/-- `and(A231122(n+1), A335487(n+1))` -/
def P8652535484085396829.Spec : Prop :=
  ∀ n, P8652535484085396829.a n = A335510 (n + 1)

end A335510

/-! ## A335510.P16978644681219936921

`(1-A212793(n+1))*A008480(n+1)`
-/

namespace A335510.P16978644681219936921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A212793 (n + 1)) * A008480 (n + 1)

end

end A335510.P16978644681219936921

namespace A335510

/-- `(1-A212793(n+1))*A008480(n+1)` -/
def P16978644681219936921.Spec : Prop :=
  ∀ n, P16978644681219936921.a n = A335510 (n + 1)

end A335510

/-! ## A335510.P10574518534511889140

`A008480(n+1)*A267513(∏{e}[n+1, round(1/#)])`
-/

namespace A335510.P10574518534511889140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A267513 (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f1 n) p : ℚ))).toNat

end

end A335510.P10574518534511889140

namespace A335510

/-- `A008480(n+1)*A267513(∏{e}[n+1, round(1/#)])` -/
def P10574518534511889140.Spec : Prop :=
  ∀ n, P10574518534511889140.a n = A335510 (n + 1)

end A335510

/-! ## A335510.P8432213017487819451

`A008480(n+1)-lcm(A008480(n+1), A053864(n+1))`
-/

namespace A335510.P8432213017487819451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - (Int.lcm (A008480 (n + 1)) (A053864 (n + 1)) : ℤ)

end

end A335510.P8432213017487819451

namespace A335510

/-- `A008480(n+1)-lcm(A008480(n+1), A053864(n+1))` -/
def P8432213017487819451.Spec : Prop :=
  ∀ n, P8432213017487819451.a n = A335510 (n + 1)

end A335510

/-! ## A335510.P17714451123436671519

`A349798((n+1)/∏{p}[n+1, #])*A349798(n+1)`
-/

namespace A335510.P17714451123436671519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349798 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * A349798 (n + 1)

end

end A335510.P17714451123436671519

namespace A335510

/-- `A349798((n+1)/∏{p}[n+1, #])*A349798(n+1)` -/
def P17714451123436671519.Spec : Prop :=
  ∀ n, P17714451123436671519.a n = A335510 (n + 1)

end A335510

/-!
# A335511: Number of (1,1,1)-avoiding permutations of the prime indices of n.

The programs for A335511, the canonical program `A335511.P6857270708733342079` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335511 has offset 1).

The definition of A335511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335511.P4577203768313651341

`∑{e}[n+1, #]!/∏{e}[n+1, #!]*∏{e}[n+1, round(1/#)]`
-/

namespace A335511.P4577203768313651341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f3 n) p : ℚ)) : ℤ) : ℚ)

end

end A335511.P4577203768313651341

namespace A335511

/-- `∑{e}[n+1, #]!/∏{e}[n+1, #!]*∏{e}[n+1, round(1/#)]` -/
def P4577203768313651341.Spec : Prop :=
  ∀ n, P4577203768313651341.a n = (A335511 (n + 1) : ℚ)

end A335511

/-! ## A335511.P12703029161719443374

`∑{e}[n+1, #]!/∏{e}[n+1, #!]*∏{e}[n+1, #!]²%3`
-/

namespace A335511.P12703029161719443374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) * (((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p)) ^ 2 % 3 : ℕ) : ℚ)

end

end A335511.P12703029161719443374

namespace A335511

/-- `∑{e}[n+1, #]!/∏{e}[n+1, #!]*∏{e}[n+1, #!]²%3` -/
def P12703029161719443374.Spec : Prop :=
  ∀ n, P12703029161719443374.a n = (A335511 (n + 1) : ℚ)

end A335511

/-! ## A335511.P6857270708733342079

`(∑{e}[n+1, #]!/∏{e}[n+1, #!])%((n+1)*∏{e}[n+1, (-C(2, #))^#]+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335511

/-- `(∑{e}[n+1, #]!/∏{e}[n+1, #!])%((n+1)*∏{e}[n+1, (-C(2, #))^#]+1)` -/
def P6857270708733342079.Spec : Prop :=
  ∀ n, P6857270708733342079.a n = A335511 (n + 1)

theorem P6857270708733342079.correct : P6857270708733342079.Spec := by
  intro n
  simp only [A335511, Nat.add_sub_cancel]

end A335511

/-! ## A335511.P10320960579083182474

`∏{e}[n+1, round(1/#)]*A008480(n+1)`
-/

namespace A335511.P10320960579083182474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (1 / (Nat.factorization (f1 n) p : ℚ))) * A008480 (n + 1)

end

end A335511.P10320960579083182474

namespace A335511

/-- `∏{e}[n+1, round(1/#)]*A008480(n+1)` -/
def P10320960579083182474.Spec : Prop :=
  ∀ n, P10320960579083182474.a n = A335511 (n + 1)

end A335511

/-! ## A335511.P8439693304754970709

`∑{e}[n+1, #]!/∏{e}[n+1, #!]*A212793(n+1)`
-/

namespace A335511.P8439693304754970709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) * (A212793 (n + 1) : ℚ)

end

end A335511.P8439693304754970709

namespace A335511

/-- `∑{e}[n+1, #]!/∏{e}[n+1, #!]*A212793(n+1)` -/
def P8439693304754970709.Spec : Prop :=
  ∀ n, P8439693304754970709.a n = (A335511 (n + 1) : ℚ)

end A335511

/-! ## A335511.P13895645851489642094

`abs(∑{e}[n+1, #]!/∏{e}[n+1, #!]*A053864(n+1))`
-/

namespace A335511.P13895645851489642094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) * (A053864 (n + 1) : ℚ)|

end

end A335511.P13895645851489642094

namespace A335511

/-- `abs(∑{e}[n+1, #]!/∏{e}[n+1, #!]*A053864(n+1))` -/
def P13895645851489642094.Spec : Prop :=
  ∀ n, P13895645851489642094.a n = (A335511 (n + 1) : ℚ)

end A335511

/-! ## A335511.P8774299335964328012

`abs(∑{e}[n+1, #]!/∏{e}[n+1, #!]*A363551(n+1))`
-/

namespace A335511.P8774299335964328012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) * (A363551 (n + 1) : ℚ)|

end

end A335511.P8774299335964328012

namespace A335511

/-- `abs(∑{e}[n+1, #]!/∏{e}[n+1, #!]*A363551(n+1))` -/
def P8774299335964328012.Spec : Prop :=
  ∀ n, P8774299335964328012.a n = (A335511 (n + 1) : ℚ)

end A335511

/-! ## A335511.P1810047035991463119

`∑{e}[n+1, #]!/∏{e}[n+1, #!]*A025889(∑{e}[n+1, 2%#]/2)`
-/

namespace A335511.P1810047035991463119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) * (A025889 (SequenceMachineLib.roundAway (((∑ p ∈ Nat.primeFactors (f3 n), 2 % Nat.factorization (f3 n) p : ℕ) : ℚ) / 2)).toNat : ℚ)

end

end A335511.P1810047035991463119

namespace A335511

/-- `∑{e}[n+1, #]!/∏{e}[n+1, #!]*A025889(∑{e}[n+1, 2%#]/2)` -/
def P1810047035991463119.Spec : Prop :=
  ∀ n, P1810047035991463119.a n = (A335511 (n + 1) : ℚ)

end A335511

/-! ## A335511.P1579572293046447136

`A008480(n+1)-A335510(n+1)`
-/

namespace A335511.P1579572293046447136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A335510 (n + 1)

end

end A335511.P1579572293046447136

namespace A335511

/-- `A008480(n+1)-A335510(n+1)` -/
def P1579572293046447136.Spec : Prop :=
  ∀ n, P1579572293046447136.a n = A335511 (n + 1)

end A335511

/-! ## A335511.P9498762499464557313

`A008480(n+1)*A212793(n+1)`
-/

namespace A335511.P9498762499464557313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A212793 (n + 1)

end

end A335511.P9498762499464557313

namespace A335511

/-- `A008480(n+1)*A212793(n+1)` -/
def P9498762499464557313.Spec : Prop :=
  ∀ n, P9498762499464557313.a n = A335511 (n + 1)

end A335511

/-! ## A335511.P1708673251087574940

`A355939(n+1)*A363551(n+1)`
-/

namespace A335511.P1708673251087574940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355939 (n + 1) * A363551 (n + 1)

end

end A335511.P1708673251087574940

namespace A335511

/-- `A355939(n+1)*A363551(n+1)` -/
def P1708673251087574940.Spec : Prop :=
  ∀ n, P1708673251087574940.a n = A335511 (n + 1)

end A335511

/-! ## A335511.P10582723355637283718

`lcm(A008480(n+1), A053864(n+1))`
-/

namespace A335511.P10582723355637283718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008480 (n + 1)) (A053864 (n + 1))

end

end A335511.P10582723355637283718

namespace A335511

/-- `lcm(A008480(n+1), A053864(n+1))` -/
def P10582723355637283718.Spec : Prop :=
  ∀ n, (P10582723355637283718.a n : ℤ) = A335511 (n + 1)

end A335511

/-! ## A335511.P5032335542379335624

`A008480(n+1)*A008683(A062378(n+1)²)`
-/

namespace A335511.P5032335542379335624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A008683 (A062378 (n + 1) ^ 2).toNat

end

end A335511.P5032335542379335624

namespace A335511

/-- `A008480(n+1)*A008683(A062378(n+1)²)` -/
def P5032335542379335624.Spec : Prop :=
  ∀ n, P5032335542379335624.a n = A335511 (n + 1)

end A335511

/-!
# A335512: Numbers k such that the k-th composition in standard order (A066099) matches the pattern (1,1,1).

The programs for A335512, there is no canonical definition to state claims against.
-/

/-! ## A335512.P16098389867313090846

`eq[0, A007427(A333219(n+1))]`
-/

namespace A335512.P16098389867313090846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (A333219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335512.P16098389867313090846

/-! ## A335512.P2005937127082352325

`lt[0, A335510(A358506(n+1))]`
-/

namespace A335512.P2005937127082352325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335510 (A358506 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A335512.P2005937127082352325

/-! ## A335512.P1302575542770799310

`lt[A124779(n), A061704(A333219(n+1))]`
-/

namespace A335512.P1302575542770799310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124779 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (A333219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335512.P1302575542770799310

/-! ## A335512.P494220258000264552

`lt[A335511(A333219(n+1)), A050361(n+1)]`
-/

namespace A335512.P494220258000264552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335511 (A333219 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335512.P494220258000264552

/-! ## A335512.P5653136489960172669

`lt[A323157(2*n+3), A051903(A358506(n+1))]`
-/

namespace A335512.P5653136489960172669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323157 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A358506 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A335512.P5653136489960172669

/-!
# A335513: Numbers k such that the k-th composition in standard order (A066099) avoids the pattern (1,1,1).

The programs for A335513, there is no canonical definition to state claims against.
-/

/-! ## A335513.P11415316983374055286

`comp[A335512(n+1)]`
-/

namespace A335513.P11415316983374055286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335513.P11415316983374055286

/-! ## A335513.P9832595399659081089

`comp[record[A335512(A134478(n))]]`
-/

namespace A335513.P9832595399659081089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335512 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335513.P9832595399659081089

/-! ## A335513.P8026061006481273820

`comp[record[A335512(A193739(n))]]`
-/

namespace A335513.P8026061006481273820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335512 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335513.P8026061006481273820

/-! ## A335513.P3708067278586048926

`comp[record[A335512(A274640(n))]]`
-/

namespace A335513.P3708067278586048926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335512 (A274640 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335513.P3708067278586048926

/-! ## A335513.P4837309842087185720

`eq[0, A335510(A358506(n+1))]`
-/

namespace A335513.P4837309842087185720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335510 (A358506 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335513.P4837309842087185720

/-! ## A335513.P8623536153234509709

`eq[1, A008834(A333219(n+1))]`
-/

namespace A335513.P8623536153234509709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (A333219 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335513.P8623536153234509709

/-! ## A335513.P11706692165957740527

`∪[A374638(n+1), A390673(n+1)]`
-/

namespace A335513.P11706692165957740527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A335513.P11706692165957740527

/-! ## A335513.P7370803719510973547

`comp[A335512(A193739(n))]%A022523(n)`
-/

namespace A335513.P7370803719510973547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335512 (A193739 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A022523 n)

end

end A335513.P7370803719510973547

/-!
# A335514: Number of (1,2,3)-matching compositions of n.

The programs for A335514, there is no canonical definition to state claims against.
-/

/-! ## A335514.P14235503932045052427

`A011782(n)-A102726(n)`
-/

namespace A335514.P14235503932045052427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A102726 n

end

end A335514.P14235503932045052427

/-! ## A335514.P61741894329349974

`∑[A034008(n)]-A102726(n)`
-/

namespace A335514.P61741894329349974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A102726 n

end

end A335514.P61741894329349974

/-! ## A335514.P10329970505404747931

`A032020(n)+A261982(n)-A102726(n)`
-/

namespace A335514.P10329970505404747931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n + (A261982 n - A102726 n)

end

end A335514.P10329970505404747931

/-! ## A335514.P4179314700198561158

`Δ[A056469(n)]-A102726(n)`
-/

namespace A335514.P4179314700198561158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A102726 n

end

end A335514.P4179314700198561158

/-! ## A335514.P9686223839746528908

`Δ[A094373(n)]-A102726(n)`
-/

namespace A335514.P9686223839746528908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A102726 n

end

end A335514.P9686223839746528908

/-! ## A335514.P4207771267690379695

`Δ[A131577(n)]-A102726(n)`
-/

namespace A335514.P4207771267690379695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A102726 n

end

end A335514.P4207771267690379695

/-! ## A335514.P10009908538816393595

`A038207(A161680(n))-A102726(n)`
-/

namespace A335514.P10009908538816393595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A161680 n).toNat - A102726 n

end

end A335514.P10009908538816393595

/-! ## A335514.P5539380508391291863

`A000670(n)-(A102726(n)+A002051(n+1))`
-/

namespace A335514.P5539380508391291863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - (A102726 n + A002051 (n + 1))

end

end A335514.P5539380508391291863

/-!
# A335515: Number of patterns of length n matching the pattern (1,2,3).

The programs for A335515, there is no canonical definition to state claims against.
-/

/-! ## A335515.P15333151182985545146

`A000670(n)-A226316(n)`
-/

namespace A335515.P15333151182985545146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A226316 n

end

end A335515.P15333151182985545146

/-! ## A335515.P10907069735789143377

`A122101(∑[n])-A226316(n)`
-/

namespace A335515.P10907069735789143377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) - A226316 n

end

end A335515.P10907069735789143377

/-! ## A335515.P14893040055405018227

`A154921(∑[n])-A226316(n)`
-/

namespace A335515.P14893040055405018227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (∑ j ∈ Finset.range (n + 1), f1 j) - A226316 n

end

end A335515.P14893040055405018227

/-! ## A335515.P5756661164757923542

`A076726(n)/2-A226316(n)`
-/

namespace A335515.P5756661164757923542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076726 n : ℚ) / 2 - (A226316 n : ℚ)

end

end A335515.P5756661164757923542

/-! ## A335515.P215078341277574637

`ceil(A000629(n)/2)-A226316(n)`
-/

namespace A335515.P215078341277574637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000629 n : ℚ) / 2⌉ - A226316 n

end

end A335515.P215078341277574637

/-! ## A335515.P13326699365232519306

`A073146(A000217(n))-A226316(n)`
-/

namespace A335515.P13326699365232519306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073146 (A000217 n).toNat - A226316 n

end

end A335515.P13326699365232519306

/-!
# A335516: Number of normal patterns contiguously matched by the prime indices of n in increasing or decreasing order, counting multiplicity.

The programs for A335516, there is no canonical definition to state claims against.
-/

/-! ## A335516.P6897214749109625463

`A181796(n+1)%11`
-/

namespace A335516.P6897214749109625463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181796 (n + 1)) 11

end

end A335516.P6897214749109625463

/-! ## A335516.P15332998567982614071

`∑{d}[n+1, A386575(#)]`
-/

namespace A335516.P15332998567982614071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A386575 d

end

end A335516.P15332998567982614071

/-! ## A335516.P4677141745138339994

`∑{d}[n+1, A351564(#)]%11`
-/

namespace A335516.P4677141745138339994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A351564 d) 11

end

end A335516.P4677141745138339994

/-! ## A335516.P5044526408878239149

`∑{d}[n+1, ceil(2/#)]-A050320(n+1)`
-/

namespace A335516.P5044526408878239149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈2 / (d : ℚ)⌉ - A050320 (n + 1)

end

end A335516.P5044526408878239149

/-! ## A335516.P5151529860716605266

`A000926(A181796(n+1))`
-/

namespace A335516.P5151529860716605266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (A181796 (n + 1)).toNat

end

end A335516.P5151529860716605266

/-! ## A335516.P7423933772584167373

`A181796(A118759(n)+1)`
-/

namespace A335516.P7423933772584167373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181796 (A118759 n + 1).toNat

end

end A335516.P7423933772584167373

/-! ## A335516.P9275009651224149325

`A181796(A292579(n)+1)`
-/

namespace A335516.P9275009651224149325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181796 (A292579 n + 1).toNat

end

end A335516.P9275009651224149325

/-! ## A335516.P14491219741660264538

`A181796(A296882(n+1))`
-/

namespace A335516.P14491219741660264538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181796 (A296882 (n + 1)).toNat

end

end A335516.P14491219741660264538

/-!
# A335517: Number of matching pairs of patterns, the longest having length n.

The programs for A335517, there is no canonical definition to state claims against.
-/

/-! ## A335517.P3708033485646305830

`A136548((n+1)^n)+n`
-/

namespace A335517.P3708033485646305830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 ((n + 1) ^ n) + (n : ℤ)

end

end A335517.P3708033485646305830

/-!
# A335519: Number of contiguous divisors of n.

The programs for A335519, there is no canonical definition to state claims against.
-/

/-! ## A335519.P9007728088397646864

`A325770(n+1)+1`
-/

namespace A335519.P9007728088397646864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325770 (n + 1) + 1

end

end A335519.P9007728088397646864

/-! ## A335519.P1189028733690270043

`ceil(∏{e}[n+1, 6/7+#])`
-/

namespace A335519.P1189028733690270043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n), ((6 : ℚ) / 7 + (Nat.factorization (f1 n) p : ℚ))⌉

end

end A335519.P1189028733690270043

/-! ## A335519.P8647703784645055768

`floor(∏{e}[n+1, 6/7+#])%(n+1)+1`
-/

namespace A335519.P8647703784645055768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊∏ p ∈ Nat.primeFactors (f1 n), ((6 : ℚ) / 7 + (Nat.factorization (f1 n) p : ℚ))⌋ (n + 1 : ℤ) + 1

end

end A335519.P8647703784645055768

/-! ## A335519.P13408441001878070657

`∑{d}[n+1, 1-C(A001221(#), 3)]`
-/

namespace A335519.P13408441001878070657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - (Nat.choose (A001221 d).toNat 3 : ℤ))

end

end A335519.P13408441001878070657

/-! ## A335519.P4524799503020704792

`A005496(floor(∏{e}[n+1, 6/7+#])%(n+1))`
-/

namespace A335519.P4524799503020704792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (Int.tmod ⌊∏ p ∈ Nat.primeFactors (f1 n), ((6 : ℚ) / 7 + (Nat.factorization (f1 n) p : ℚ))⌋ (n + 1 : ℤ)).toNat

end

end A335519.P4524799503020704792

/-! ## A335519.P11740540332017617096

`∏{e}[n+1, #+1]-A294333(∏{e}[n+1, C(#+2, 2)])+1`
-/

namespace A335519.P11740540332017617096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A294333 (∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (Nat.factorization (f2 n) p + 2) 2) + 1

end

end A335519.P11740540332017617096

/-! ## A335519.P9831847399806927512

`∏{e}[n+1, #+1]-A000045((n^3)%∑{p}[n+1, #%2]!²)`
-/

namespace A335519.P9831847399806927512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A000045 (n ^ 3 % Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), p % 2) ^ 2)

end

end A335519.P9831847399806927512

/-! ## A335519.P16688864936563736616

`A167447(A046523(n+1))`
-/

namespace A335519.P16688864936563736616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167447 (A046523 (n + 1)).toNat

end

end A335519.P16688864936563736616

/-! ## A335519.P4826254488908540831

`A167447(A071364(n+1))`
-/

namespace A335519.P4826254488908540831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167447 (A071364 (n + 1)).toNat

end

end A335519.P4826254488908540831

/-!
# A335520: Number of (1,2,3)-matching permutations of the prime indices of n.

The programs for A335520, there is no canonical definition to state claims against.
-/

/-! ## A335520.P13312063778364124500

`floor(∏{p}[n+1, ceil(n/#)]/(∑[n+1]+5))`
-/

namespace A335520.P13312063778364124500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉ : ℤ) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j + 5 : ℕ) : ℚ)⌋

end

end A335520.P13312063778364124500

/-! ## A335520.P13010569500522777981

`and(n, -(n+2))%C(∑{p}[n+1, gcd(n, #)], 2)!`
-/

namespace A335520.P13010569500522777981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n + 2 : ℤ))) (Nat.factorial (Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) 2) : ℤ)

end

end A335520.P13010569500522777981

/-! ## A335520.P17550922944885369733

`floor(A180026(n+1)/12)`
-/

namespace A335520.P17550922944885369733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A180026 (n + 1) : ℚ) / 12⌋

end

end A335520.P17550922944885369733

/-! ## A335520.P7261464962142735314

`dr(C(A344652(n+1), 5))`
-/

namespace A335520.P7261464962142735314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.choose (A344652 (n + 1)).toNat 5 : ℤ)

end

end A335520.P7261464962142735314

/-! ## A335520.P3577037580794824008

`dr(C(A073180(n+1), 8))`
-/

namespace A335520.P3577037580794824008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.choose (A073180 (n + 1)).toNat 8 : ℤ)

end

end A335520.P3577037580794824008

/-! ## A335520.P1003795016535347907

`floor(A016003(n+1)/55)`
-/

namespace A335520.P1003795016535347907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016003 (n + 1) : ℚ) / 55⌋

end

end A335520.P1003795016535347907

/-! ## A335520.P17166529589255629136

`floor(A016007(n+1)/81)`
-/

namespace A335520.P17166529589255629136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016007 (n + 1) : ℚ) / 81⌋

end

end A335520.P17166529589255629136

/-! ## A335520.P7267725094146241256

`floor(A016008(n+1)/93)`
-/

namespace A335520.P7267725094146241256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016008 (n + 1) : ℚ) / 93⌋

end

end A335520.P7267725094146241256

/-! ## A335520.P16903971427630113529

`(A062513(n+1)-1)%4`
-/

namespace A335520.P16903971427630113529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062513 (n + 1) - 1) 4

end

end A335520.P16903971427630113529

/-!
# A335521: Number of (1,2,3)-avoiding permutations of the prime indices of n.

The programs for A335521, there is no canonical definition to state claims against.
-/

/-! ## A335521.P15464143783844363455

`∑{e}[n+1, #]!/∏{e}[n+1, #!]-A335520(n+1)`
-/

namespace A335521.P15464143783844363455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) - (A335520 (n + 1) : ℚ)

end

end A335521.P15464143783844363455

/-! ## A335521.P1900012683396005689

`A337448(A285572(n+1))%13`
-/

namespace A335521.P1900012683396005689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337448 (A285572 (n + 1)).toNat) 13

end

end A335521.P1900012683396005689

/-! ## A335521.P7934727236340752027

`A008480(n+1)-A335520(n+1)`
-/

namespace A335521.P7934727236340752027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A335520 (n + 1)

end

end A335521.P7934727236340752027

/-! ## A335521.P15609294557848727234

`∑{d}[n+1, A304820(#)*A305150((n+1)/#)]`
-/

namespace A335521.P15609294557848727234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A304820 d * A305150 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A335521.P15609294557848727234

/-! ## A335521.P4663839972729403698

`A001222(n+1)!/∏{e}[n+1, #!]-n%4*C(A001221(n+1), 3)`
-/

namespace A335521.P4663839972729403698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001222 (n + 1)).toNat : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℚ) - ((n % 4 * Nat.choose (A001221 (n + 1)).toNat 3 : ℕ) : ℚ)

end

end A335521.P4663839972729403698

/-! ## A335521.P8804895188539047963

`A281116(n+1)+A168046(A000005(n+1))`
-/

namespace A335521.P8804895188539047963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1) + A168046 (A000005 (n + 1)).toNat

end

end A335521.P8804895188539047963

/-! ## A335521.P1041309023346242312

`A008480(n+1)-A000045(∑{d}[n+1, 2%A001221(#)!])`
-/

namespace A335521.P1041309023346242312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) - A000045 (∑ d ∈ Nat.divisors (f1 n), 2 % Nat.factorial (A001221 d).toNat)

end

end A335521.P1041309023346242312

/-! ## A335521.P13083434973141944596

`A135323(n+1)/(n+1)-(9*n)%A000032(∑{p}[n+1, A001222(#)])`
-/

namespace A335521.P13083434973141944596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135323 (n + 1) : ℚ) / (n + 1 : ℚ) - (Int.tmod (9 * n : ℤ) (A000032 (∑ p ∈ Nat.primeFactors (f1 n), A001222 p).toNat) : ℚ)

end

end A335521.P13083434973141944596

/-!
# A335522: Numbers k such that the k-th composition in standard order (A066099) avoids the pattern (1,1,2).

The programs for A335522, there is no canonical definition to state claims against.
-/

/-! ## A335522.P15332759902811835010

`comp[A335476(n+1)]`
-/

namespace A335522.P15332759902811835010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335476 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335522.P15332759902811835010

/-! ## A335522.P5281833075286044979

`eq[0, A079071(and(n, floor(n/2)))]`
-/

namespace A335522.P5281833075286044979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079071 (Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A335522.P5281833075286044979

/-! ## A335522.P14206393159596256586

`lt[A049501(and(n, floor(n/2))), 2]`
-/

namespace A335522.P14206393159596256586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335522.P14206393159596256586

/-! ## A335522.P16069443053456086942

`lt[A366600(and(n, floor(n/2))), 4]`
-/

namespace A335522.P16069443053456086942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366600 (Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335522.P16069443053456086942

/-! ## A335522.P11957080232799545223

`lt[A014081(floor(n/2^val(n+1, 2))), 2]`
-/

namespace A335522.P11957080232799545223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335522.P11957080232799545223

/-! ## A335522.P2878223957330922782

`lt[A246596(floor(n/2^val(n+1, 2))), 4]`
-/

namespace A335522.P2878223957330922782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246596 ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335522.P2878223957330922782

/-! ## A335522.P8796333732471602340

`lt[A246595(floor(n/(xor(n, n+1)+1))), 6]`
-/

namespace A335522.P8796333732471602340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246595 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335522.P8796333732471602340

/-! ## A335522.P12932076676930274429

`lt[A278159(floor(n/(xor(n, n+1)+1))), 16]`
-/

namespace A335522.P12932076676930274429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278159 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335522.P12932076676930274429

/-! ## A335522.P7109380015703207964

`lt[n/(xor(n, n+1)+1), A124758(n)²]`
-/

namespace A335522.P7109380015703207964
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A335522.P7109380015703207964

/-! ## A335522.P18193334225254370966

`lt[A014081(A025480(n)), 2]`
-/

namespace A335522.P18193334225254370966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A025480 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335522.P18193334225254370966

/-!
# A335523: Numbers k such that the k-th composition in standard order (A066099) avoids the pattern (2,1,1).

The programs for A335523, there is no canonical definition to state claims against.
-/

/-! ## A335523.P5133327930226189468

`comp[A335478(n+1)]`
-/

namespace A335523.P5133327930226189468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335523.P5133327930226189468

/-! ## A335523.P6861481738132677658

`comp[A059893(A335476(n+1))]`
-/

namespace A335523.P6861481738132677658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A335476 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335523.P6861481738132677658

/-! ## A335523.P5413762330497145

`eq[char[A335478(n+1)], A335462(n+1)]`
-/

namespace A335523.P5413762330497145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335478 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A335523.P5413762330497145

/-! ## A335523.P2760657738519547549

`eq[A034441(n+1), A065202(n+1)]`
-/

namespace A335523.P2760657738519547549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065202 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335523.P2760657738519547549

/-! ## A335523.P8070780461320925345

`eq[A034441(n+1), A335446(n+1)]`
-/

namespace A335523.P8070780461320925345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A335523.P8070780461320925345

/-!
# A335524: Numbers k such that the k-th composition in standard order (A066099) avoids the pattern (2,2,1).

The programs for A335524, there is no canonical definition to state claims against.
-/

/-! ## A335524.P6610126258470075996

`comp[A335477(n+1)]`
-/

namespace A335524.P6610126258470075996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335524.P6610126258470075996

/-! ## A335524.P9827845137307596328

`lt[A037861(3*n+1), 4]`
-/

namespace A335524.P9827845137307596328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335524.P9827845137307596328

/-! ## A335524.P11050902699781918987

`lt[A023416(3*n+1), 6]`
-/

namespace A335524.P11050902699781918987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335524.P11050902699781918987

/-! ## A335524.P11147674041718419454

`lt[A080791(3*n+1), 6]`
-/

namespace A335524.P11147674041718419454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335524.P11147674041718419454

/-! ## A335524.P14287844406726972695

`lt[A080100(3*n+1), 52]`
-/

namespace A335524.P14287844406726972695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  52

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A335524.P14287844406726972695

/-! ## A335524.P12166551589162036193

`lt[n, A246037(3*n+1)]`
-/

namespace A335524.P12166551589162036193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246037 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A335524.P12166551589162036193

/-! ## A335524.P17850389138495415046

`lt[n, A253066(3*n+1)]`
-/

namespace A335524.P17850389138495415046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253066 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A335524.P17850389138495415046

/-! ## A335524.P3890401203417248824

`lt[n, A255475(3*n+1)]`
-/

namespace A335524.P3890401203417248824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255475 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A335524.P3890401203417248824

/-! ## A335524.P25467692095535600

`lt[n, A159785(3*n+2)]`
-/

namespace A335524.P25467692095535600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159785 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A335524.P25467692095535600

/-! ## A335524.P10946750064858670231

`lt[n, A151787(3*n+2)²]`
-/

namespace A335524.P10946750064858670231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151787 (3 * n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A335524.P10946750064858670231

/-!
# A335525: Numbers k such that the k-th composition in standard order (A066099) avoids the pattern (1,2,2).

The programs for A335525, there is no canonical definition to state claims against.
-/

/-! ## A335525.P17151124855635578642

`comp[A335475(n+1)]`
-/

namespace A335525.P17151124855635578642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335525.P17151124855635578642

/-! ## A335525.P1648236091266439378

`comp[eq[11, A286531(n)]]`
-/

namespace A335525.P1648236091266439378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286531 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A335525.P1648236091266439378

/-! ## A335525.P15547042224461886916

`comp[Δ[A046125(n+4)]]`
-/

namespace A335525.P15547042224461886916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046125 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335525.P15547042224461886916

/-! ## A335525.P5123795404888348170

`comp[lt[1, A145865(n+1)]]`
-/

namespace A335525.P5123795404888348170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145865 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A335525.P5123795404888348170

/-! ## A335525.P2400817043740194850

`comp[A185258(2*n+3)+n+1]`
-/

namespace A335525.P2400817043740194850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185258 (2 * n + 3) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335525.P2400817043740194850

/-! ## A335525.P7219329398665733190

`comp[record[A335475(A258309(n))]]`
-/

namespace A335525.P7219329398665733190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335475 (A258309 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335525.P7219329398665733190

/-! ## A335525.P2779852301579241505

`comp[A332811(A007304(n+1))]`
-/

namespace A335525.P2779852301579241505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332811 (A007304 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335525.P2779852301579241505

/-! ## A335525.P15784046580115576985

`comp[A079301(A143206(2*n+1))]`
-/

namespace A335525.P15784046580115576985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079301 (A143206 (2 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A335525.P15784046580115576985

/-! ## A335525.P269925449392073389

`comp[A304169(n+1)]%A097232(n+1)`
-/

namespace A335525.P269925449392073389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304169 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A097232 (n + 1))

end

end A335525.P269925449392073389

/-!
# A335526: a(n) is the number of vertices formed by n-secting the angles of a square.

The programs for A335526, there is no canonical definition to state claims against.
-/

/-! ## A335526.P4033164664725395590

`A335527(n+1)+1-A278823(n+1)`
-/

namespace A335526.P4033164664725395590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335527 (n + 1) + (1 - A278823 (n + 1))

end

end A335526.P4033164664725395590

/-! ## A335526.P5480868766555032168

`A335527(n+1)+A024000(A278823(n+1))`
-/

namespace A335526.P5480868766555032168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335527 (n + 1) + A024000 (A278823 (n + 1)).toNat

end

end A335526.P5480868766555032168

/-! ## A335526.P841191929729682188

`A065475(A335527(n+1)-A278823(n+1))`
-/

namespace A335526.P841191929729682188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A335527 (n + 1) - A278823 (n + 1)).toNat

end

end A335526.P841191929729682188

/-!
# A335527: a(n) is the number of edges formed by n-secting the angles of a square.

The programs for A335527, there is no canonical definition to state claims against.
-/

/-! ## A335527.P12763487064664642587

`A278823(n+1)+A335526(n+1)-1`
-/

namespace A335527.P12763487064664642587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278823 (n + 1) + (A335526 (n + 1) - 1)

end

end A335527.P12763487064664642587

/-! ## A335527.P9991311792740191650

`A278823(n+1)+A023443(A335526(n+1))`
-/

namespace A335527.P9991311792740191650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278823 (n + 1) + A023443 (A335526 (n + 1)).toNat

end

end A335527.P9991311792740191650

/-! ## A335527.P10248668558915196042

`A185048(A335526(n+1)+A278823(n+1))`
-/

namespace A335527.P10248668558915196042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A335526 (n + 1) + A278823 (n + 1)).toNat

end

end A335527.P10248668558915196042

/-! ## A335527.P2030307643113821596

`A004442(A335526(n+1)+A278823(n+1))`
-/

namespace A335527.P2030307643113821596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A335526 (n + 1) + A278823 (n + 1)).toNat

end

end A335527.P2030307643113821596

/-! ## A335527.P11098029396003566357

`A060000(A335526(n+1)+A278823(n+1))`
-/

namespace A335527.P11098029396003566357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (A335526 (n + 1) + A278823 (n + 1)).toNat

end

end A335527.P11098029396003566357

/-!
# A335529: a(n) = n! * [x^n] (1 - (n-1)*log(1 + x))/(1 - n*log(1 + x)).

The programs for A335529, there is no canonical definition to state claims against.
-/

/-! ## A335529.P18225512719800156909

`A317172(n)/round(sqrt(n²+1))`
-/

namespace A335529.P18225512719800156909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317172 n : ℚ) / (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) : ℚ)

end

end A335529.P18225512719800156909

/-! ## A335529.P8239527442877679064

`floor(A317172(n)/A028310(n))`
-/

namespace A335529.P8239527442877679064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A317172 n : ℚ) / (A028310 n : ℚ)⌋

end

end A335529.P8239527442877679064

/-! ## A335529.P1586926629622270194

`ceil(A317172(n)/A233583(n+1))`
-/

namespace A335529.P1586926629622270194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A317172 n : ℚ) / (A233583 (n + 1) : ℚ)⌉

end

end A335529.P1586926629622270194

/-! ## A335529.P7483386486995362100

`A317172(n)/A094420(n)*A321189(n)`
-/

namespace A335529.P7483386486995362100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317172 n : ℚ) / (A094420 n : ℚ) * (A321189 n : ℚ)

end

end A335529.P7483386486995362100

/-!
# A335530: Expansion of e.g.f. (1 - 2*log(1 + x))/(1 - 3*log(1 + x)).

The programs for A335530, there is no canonical definition to state claims against.
-/

/-! ## A335530.P4349563827411837083

`ceil(A335531(n)/3)`
-/

namespace A335530.P4349563827411837083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A335531 n : ℚ) / 3⌉

end

end A335530.P4349563827411837083

/-! ## A335530.P9594331077665828971

`A335531(A028310(n))/3`
-/

namespace A335530.P9594331077665828971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335531 (A028310 n).toNat : ℚ) / 3

end

end A335530.P9594331077665828971

/-! ## A335530.P1328201734935272294

`A335531(n)/dr(A002001(n))`
-/

namespace A335530.P1328201734935272294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335531 n : ℚ) / (SequenceMachineLib.digitalRoot (A002001 n) : ℚ)

end

end A335530.P1328201734935272294

/-! ## A335530.P1292432056402947807

`A335531(n)/A131294(A016921(n))`
-/

namespace A335530.P1292432056402947807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335531 n : ℚ) / (A131294 (A016921 n).toNat : ℚ)

end

end A335530.P1292432056402947807

/-! ## A335530.P14494540476991829858

`A335531(n)/A048691(A006005(n+1))`
-/

namespace A335530.P14494540476991829858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335531 n : ℚ) / (A048691 (A006005 (n + 1)).toNat : ℚ)

end

end A335530.P14494540476991829858

/-! ## A335530.P9128361706548903865

`A335531(n)/A335550(A048691(n+1))`
-/

namespace A335530.P9128361706548903865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335531 n : ℚ) / (A335550 (A048691 (n + 1)).toNat : ℚ)

end

end A335530.P9128361706548903865

/-! ## A335530.P13103487081997464907

`A335531(n)/dr(A032033(n))`
-/

namespace A335530.P13103487081997464907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335531 n : ℚ) / (SequenceMachineLib.digitalRoot (A032033 n) : ℚ)

end

end A335530.P13103487081997464907

/-!
# A335531: Expansion of e.g.f. 1/(1-3*log(1+x)).

The programs for A335531, there is no canonical definition to state claims against.
-/

/-! ## A335531.P17359326273106850999

`dr(A002001(n))*A335530(n)`
-/

namespace A335531.P17359326273106850999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A002001 n) : ℤ) * A335530 n

end

end A335531.P17359326273106850999

/-! ## A335531.P4490259373061339086

`A048691(A006005(n+1))*A335530(n)`
-/

namespace A335531.P4490259373061339086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A006005 (n + 1)).toNat * A335530 n

end

end A335531.P4490259373061339086

/-! ## A335531.P14820732166263957741

`A335530(n)*A335550(A053166(n+1))`
-/

namespace A335531.P14820732166263957741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335530 n * A335550 (A053166 (n + 1)).toNat

end

end A335531.P14820732166263957741

/-! ## A335531.P8775781671589242185

`A335530(n)*A335550(A335519(n+1))`
-/

namespace A335531.P8775781671589242185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335530 n * A335550 (A335519 (n + 1)).toNat

end

end A335531.P8775781671589242185

/-! ## A335531.P8190864644744305543

`dr(A032033(n))*A335530(n)`
-/

namespace A335531.P8190864644744305543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A032033 n) : ℤ) * A335530 n

end

end A335531.P8190864644744305543

/-!
# A335534: a(n) = tribonacci(n) modulo Fibonacci(n).

The programs for A335534, the canonical program `A335534.P5058888597107012890` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335534 has offset 1).

The definition of A335534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335534.P5058888597107012890

`∑[A001590(n)]%∑[A212804(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A335534

/-- `∑[A001590(n)]%∑[A212804(n)]` -/
def P5058888597107012890.Spec : Prop :=
  ∀ n, P5058888597107012890.a n = A335534 (n + 1)

theorem P5058888597107012890.correct : P5058888597107012890.Spec := by
  intro n
  simp only [A335534, Nat.add_sub_cancel]

end A335534

/-! ## A335534.P3718891972539009456

`A000073(n+1)%∑[A212804(n)]`
-/

namespace A335534.P3718891972539009456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000073 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335534.P3718891972539009456

namespace A335534

/-- `A000073(n+1)%∑[A212804(n)]` -/
def P3718891972539009456.Spec : Prop :=
  ∀ n, P3718891972539009456.a n = A335534 (n + 1)

end A335534

/-! ## A335534.P11339305013335444591

`abs(-A000073(n+1)%A212804(n+2))`
-/

namespace A335534.P11339305013335444591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (-A000073 (n + 1)) (A212804 (n + 2))|

end

end A335534.P11339305013335444591

namespace A335534

/-- `abs(-A000073(n+1)%A212804(n+2))` -/
def P11339305013335444591.Spec : Prop :=
  ∀ n, P11339305013335444591.a n = A335534 (n + 1)

end A335534

/-! ## A335534.P10168755040363695566

`(A020992(n)-A001590(n))%A000045(n+1)`
-/

namespace A335534.P10168755040363695566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020992 n - A001590 n) (A000045 (n + 1))

end

end A335534.P10168755040363695566

namespace A335534

/-- `(A020992(n)-A001590(n))%A000045(n+1)` -/
def P10168755040363695566.Spec : Prop :=
  ∀ n, P10168755040363695566.a n = A335534 (n + 1)

end A335534

/-! ## A335534.P5457203965380315093

`(A000213(n+1)-A081172(n+1))%A000045(n+1)`
-/

namespace A335534.P5457203965380315093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000213 (n + 1) - A081172 (n + 1)) (A000045 (n + 1))

end

end A335534.P5457203965380315093

namespace A335534

/-- `(A000213(n+1)-A081172(n+1))%A000045(n+1)` -/
def P5457203965380315093.Spec : Prop :=
  ∀ n, P5457203965380315093.a n = A335534 (n + 1)

end A335534

/-! ## A335534.P9563403524467627098

`(A282718(n+1)-A000213(n+1))%A000045(n+1)`
-/

namespace A335534.P9563403524467627098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282718 (n + 1) - A000213 (n + 1)) (A000045 (n + 1))

end

end A335534.P9563403524467627098

namespace A335534

/-- `(A282718(n+1)-A000213(n+1))%A000045(n+1)` -/
def P9563403524467627098.Spec : Prop :=
  ∀ n, P9563403524467627098.a n = A335534 (n + 1)

end A335534

/-!
# A335535: Nim fourth-power of n.

The programs for A335535, there is no canonical definition to state claims against.
-/

/-! ## A335535.P3236674053113346319

`A006042(A006042(n))`
-/

namespace A335535.P3236674053113346319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006042 (A006042 n).toNat

end

end A335535.P3236674053113346319

/-! ## A335535.P11435720278522051930

`A335536(A160679(n))`
-/

namespace A335535.P11435720278522051930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335536 (A160679 n).toNat

end

end A335535.P11435720278522051930

/-! ## A335535.P8573027908682190583

`A335162(∑[n+4]+10)`
-/

namespace A335535.P8573027908682190583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A335535.P8573027908682190583

/-! ## A335535.P6476825473364790815

`A051910(A000096(A051910(A000096(n))))`
-/

namespace A335535.P6476825473364790815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051910 (A000096 (A051910 (A000096 n).toNat).toNat).toNat

end

end A335535.P6476825473364790815

/-!
# A335536: Nim eighth-power of n.

The programs for A335536, there is no canonical definition to state claims against.
-/

/-! ## A335536.P14424237301749521994

`A335535(A006042(n))`
-/

namespace A335536.P14424237301749521994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335535 (A006042 n).toNat

end

end A335536.P14424237301749521994

/-! ## A335536.P14141965248347077691

`A006042(A006042(A004468(A006042(A004468(n)))))`
-/

namespace A335536.P14141965248347077691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006042 (A006042 (A004468 (A006042 (A004468 n).toNat).toNat).toNat).toNat

end

end A335536.P14141965248347077691

/-! ## A335536.P2847850671107485331

`A006042(A004473(A006042(A006042(A004473(n)))))`
-/

namespace A335536.P2847850671107485331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006042 (A004473 (A006042 (A006042 (A004473 n).toNat).toNat).toNat).toNat

end

end A335536.P2847850671107485331

/-! ## A335536.P16637961573656584673

`A006042(A004475(A006042(A006042(A004475(n)))))`
-/

namespace A335536.P16637961573656584673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006042 (A004475 (A006042 (A006042 (A004475 n).toNat).toNat).toNat).toNat

end

end A335536.P16637961573656584673

/-! ## A335536.P15275726981035715059

`A335535(A335535(A160679(n)))`
-/

namespace A335536.P15275726981035715059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335535 (A335535 (A160679 n).toNat).toNat

end

end A335536.P15275726981035715059

/-! ## A335536.P3008946143131211386

`A160679(A064707(A064707(n)))`
-/

namespace A335536.P3008946143131211386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160679 (A064707 (A064707 n).toNat).toNat

end

end A335536.P3008946143131211386

/-! ## A335536.P3155352132339740336

`A160679(A100281(A100281(n)))`
-/

namespace A335536.P3155352132339740336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160679 (A100281 (A100281 n).toNat).toNat

end

end A335536.P3155352132339740336

/-! ## A335536.P12329972420975410584

`A335162(A056126(n)+44)`
-/

namespace A335536.P12329972420975410584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A056126 n + 44).toNat

end

end A335536.P12329972420975410584

/-! ## A335536.P17840362058169185060

`A335162(A000096(n+7)+9)`
-/

namespace A335536.P17840362058169185060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A000096 (n + 7) + 9).toNat

end

end A335536.P17840362058169185060

/-! ## A335536.P457844346196517207

`A335162(A000217(n+8)+8)`
-/

namespace A335536.P457844346196517207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (A000217 (n + 8) + 8).toNat

end

end A335536.P457844346196517207

/-!
# A335537: a(n) = n! [x^n] exp(2*x)*(y*sinh(x*y) + cosh(x*y)) and y = sqrt(x).

The programs for A335537, there is no canonical definition to state claims against.
-/

/-! ## A335537.P7493725475271825373

`Δ[A320327(n²)]-(n-1)`
-/

namespace A335537.P7493725475271825373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320327 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n : ℤ) - 1)

end

end A335537.P7493725475271825373

/-! ## A335537.P863157499472203422

`∑[A008676(n*3^(n+1))]`
-/

namespace A335537.P863157499472203422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (n * 3 ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335537.P863157499472203422

/-!
# A335538: a(n) = numerator(-4*n^2*zeta(1 - n)*zeta(n)*(1 - 2^(1 - n)) / Pi^n) for n >= 2, a(0) = 0, a(1) = 1.

The programs for A335538, there is no canonical definition to state claims against.
-/

/-! ## A335538.P11273348655696364535

`A010054(3^n-2^n)-A157779(n)`
-/

namespace A335538.P11273348655696364535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 ^ n - 2 ^ n) - A157779 n

end

end A335538.P11273348655696364535

/-! ## A335538.P17316956986985582843

`A266591(3^n-2^n)-A157779(n)`
-/

namespace A335538.P17316956986985582843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 (3 ^ n - 2 ^ n) - A157779 n

end

end A335538.P17316956986985582843

/-! ## A335538.P3458908838032124961

`A008683(floor(Δ[4^n/2]))-A157779(n)`
-/

namespace A335538.P3458908838032124961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ⌊f1 (n + 1) - f1 n⌋.toNat - A157779 n

end

end A335538.P3458908838032124961

/-! ## A335538.P1850281892790508214

`A008966(floor(6*4^(n-1)))-A157779(n)`
-/

namespace A335538.P1850281892790508214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 ⌊6 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat - A157779 n

end

end A335538.P1850281892790508214

/-! ## A335538.P9438469610907570434

`A091225(A020450(n+2))-A157779(n)`
-/

namespace A335538.P9438469610907570434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091225 (A020450 (n + 2)).toNat - A157779 n

end

end A335538.P9438469610907570434

/-!
# A335539: a(n) = denominator(-4*n^2*zeta(1 - n)*zeta(n)*(1 - 2^(1 - n)) / Pi^n) for n >= 2, a(0) = 1, a(1) = 1.

The programs for A335539, there is no canonical definition to state claims against.
-/

/-! ## A335539.P14648694665439428428

`A350788(xor(∑[2*n²], ∑[n]))`
-/

namespace A335539.P14648694665439428428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350788 (Nat.xor (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A335539.P14648694665439428428

/-!
# A335540: Numbers with a record number of abundant divisors.

The programs for A335540, there is no canonical definition to state claims against.
-/

/-! ## A335540.P18184942231722358990

`A091193(record[A080224(n+1)])`
-/

namespace A335540.P18184942231722358990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091193 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335540.P18184942231722358990

/-! ## A335540.P1504242937706816248

`A091193(record[A341620(n+1)-A080225(n+1)])`
-/

namespace A335540.P1504242937706816248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1) - A080225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091193 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335540.P1504242937706816248

/-! ## A335540.P3467630051058426286

`∩[A141766(n+1), A340637(n+1)]`
-/

namespace A335540.P3467630051058426286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335540.P3467630051058426286

/-! ## A335540.P2778659336966554078

`A340637(n+4)%A000040(A340627(n))`
-/

namespace A335540.P2778659336966554078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340637 (n + 4)) (A000040 (A340627 n).toNat)

end

end A335540.P2778659336966554078

/-! ## A335540.P8146316769653147723

`∩[A023172(n+1), A340637(n+1)]`
-/

namespace A335540.P8146316769653147723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335540.P8146316769653147723

/-!
# A335541: Numbers with a record value of the ratio of the number of abundant divisors to the total number of divisors.

The programs for A335541, there is no canonical definition to state claims against.
-/

/-! ## A335541.P15440667877847187276

`A093819(3*(p?[A068372(n+1)]+2))`
-/

namespace A335541.P15440667877847187276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (3 * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2)).toNat

end

end A335541.P15440667877847187276

/-! ## A335541.P6472286210731957134

`A093819(3*∑{p}[A068374(n+1)², #+2])`
-/

namespace A335541.P6472286210731957134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068374 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093819 (3 * (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p + 2)))

end

end A335541.P6472286210731957134

/-! ## A335541.P1663817506261467390

`record[A004016(n)*A321479(n+1)]`
-/

namespace A335541.P1663817506261467390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A321479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335541.P1663817506261467390

/-! ## A335541.P4411037381914900076

`∩[A039250(n+1), A291928(n+1)]`
-/

namespace A335541.P4411037381914900076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A335541.P4411037381914900076

/-!
# A335542: Numbers with a record number of deficient divisors.

The programs for A335542, there is no canonical definition to state claims against.
-/

/-! ## A335542.P1404593589818550194

`A317246(lt[A240144(n), A025142(n+1)])`
-/

namespace A335542.P1404593589818550194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240144 (n + 64)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317246 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A335542.P1404593589818550194

/-! ## A335542.P16800831274568401567

`A317246(lt[A240144(n), 3-A049705(n+1)])`
-/

namespace A335542.P16800831274568401567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240144 (n + 64)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317246 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A335542.P16800831274568401567

/-! ## A335542.P7750063014474266634

`∏{e}[∏[A040163(n+3)-(n+1)], #+1]`
-/

namespace A335542.P7750063014474266634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (n + 3) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A335542.P7750063014474266634

/-! ## A335542.P12569142244673814206

`∏{e}[∏[C(A256268(n), 2)-(n+1)], #+1]`
-/

namespace A335542.P12569142244673814206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A256268 n).toNat 2 : ℤ) - (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A335542.P12569142244673814206

/-! ## A335542.P7304151874285644610

`A332276(record[A278148(n+1)])`
-/

namespace A335542.P7304151874285644610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332276 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A335542.P7304151874285644610

/-!
# A335544: Numbers with more abundant divisors than deficient divisors.

The programs for A335544, there is no canonical definition to state claims against.
-/

/-! ## A335544.P12281113143908368878

`A270308(lt[A283364(n+1), A270312(n+1)])`
-/

namespace A335544.P12281113143908368878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270308 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A335544.P12281113143908368878

/-! ## A335544.P416413070584871956

`A245214(lt[A329605(n+5), A220319(3*n+4)])`
-/

namespace A335544.P416413070584871956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329605 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220319 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245214 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A335544.P416413070584871956

/-! ## A335544.P14959861772342298391

`A245214(lt[A307971(n), A324895(n)])`
-/

namespace A335544.P14959861772342298391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245214 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A335544.P14959861772342298391

/-!
# A335545: A(n,k) is the sum of the k-th powers of the (positive) number of permutations of [n] with j descents (j=0..max(0,n-1)); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A335545, there is no canonical definition to state claims against.
-/

/-! ## A335545.P11394632015476876552

`A195805(A060351(n))*A225641(A008554(n+1))`
-/

namespace A335545.P11394632015476876552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195805 (A060351 n).toNat * A225641 (A008554 (n + 1)).toNat

end

end A335545.P11394632015476876552

/-! ## A335545.P4640190731220907204

`A180000(A130461(n))*A225641(A008554(n+1))`
-/

namespace A335545.P4640190731220907204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180000 (A130461 n).toNat * A225641 (A008554 (n + 1)).toNat

end

end A335545.P4640190731220907204

/-! ## A335545.P10681722514343325658

`A322789(A266681(n+1))`
-/

namespace A335545.P10681722514343325658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322789 (A266681 (n + 1)).toNat

end

end A335545.P10681722514343325658

/-! ## A335545.P12183059787015252360

`A225641(n^A225654(n))`
-/

namespace A335545.P12183059787015252360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225641 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A225654 n : ℤ))).toNat

end

end A335545.P12183059787015252360

/-! ## A335545.P1783837850996946077

`A225641(n)+A008683(A004466(2*(n+2)))`
-/

namespace A335545.P1783837850996946077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225641 n + A008683 (A004466 (2 * (n + 2))).toNat

end

end A335545.P1783837850996946077

/-!
# A335546: Sum of the n-th powers of the (positive) number of permutations of [n] with j descents (j=0..max(0,n-1)).

The programs for A335546, there is no canonical definition to state claims against.
-/

/-! ## A335546.P5415507496459617314

`A335545(∑[4*n])`
-/

namespace A335546.P5415507496459617314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335545 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335546.P5415507496459617314

/-! ## A335546.P14201729125409344428

`gcd(A000038(n), A335545(A046092(n)))`
-/

namespace A335546.P14201729125409344428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A335545 (A046092 n).toNat)

end

end A335546.P14201729125409344428

/-! ## A335546.P13978817404105307042

`lcm(A124781(n), A335545(A046092(n)))`
-/

namespace A335546.P13978817404105307042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124781 n) (A335545 (A046092 n).toNat)

end

end A335546.P13978817404105307042

/-! ## A335546.P11595903605418794621

`log2(A020639(2*(n+1)))*A335545(A046092(n))`
-/

namespace A335546.P11595903605418794621
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 1)) : ℝ) * (A335545 (A046092 n).toNat : ℝ)

end

end A335546.P11595903605418794621

/-! ## A335546.P10508920115211159503

`A000045(floor(n^(3/14)))!*A335545(A046092(n))`
-/

namespace A335546.P10508920115211159503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000045 ⌊(n : ℝ) ^ ((3 : ℚ) / 14 : ℝ)⌋.toNat).toNat : ℤ) * A335545 (A046092 n).toNat

end

end A335546.P10508920115211159503

/-!
# A335547: a(n) is the number of ways to tile a size n staircase polyomino with staircase polyominoes in the same direction as the size n staircase polyomino.

The programs for A335547, there is no canonical definition to state claims against.
-/

/-! ## A335547.P16315628507734009123

`A336479(Δ[A011377(n)])`
-/

namespace A335547.P16315628507734009123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336479 (f1 (n + 1) - f1 n).toNat

end

end A335547.P16315628507734009123

/-! ## A335547.P15318297247714578469

`record[A336479(A075158(n))]`
-/

namespace A335547.P15318297247714578469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336479 (A075158 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335547.P15318297247714578469

/-! ## A335547.P6892320054919676326

`A336479(A279751(n+1))`
-/

namespace A335547.P6892320054919676326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336479 (A279751 (n + 1)).toNat

end

end A335547.P6892320054919676326

/-! ## A335547.P8076325229209110027

`A336479(A280148(n+1))`
-/

namespace A335547.P8076325229209110027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336479 (A280148 (n + 1)).toNat

end

end A335547.P8076325229209110027

/-! ## A335547.P10695065645358560203

`A336479(A000975(n+2))`
-/

namespace A335547.P10695065645358560203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336479 (A000975 (n + 2)).toNat

end

end A335547.P10695065645358560203

/-!
# A335548: Number of compositions of n with at least one non-contiguous value.

The programs for A335548, there is no canonical definition to state claims against.
-/

/-! ## A335548.P14024785480606810370

`A011782(n)-A274174(n)`
-/

namespace A335548.P14024785480606810370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A274174 n

end

end A335548.P14024785480606810370

/-! ## A335548.P16571134329616043706

`∑[A034008(n)]-A274174(n)`
-/

namespace A335548.P16571134329616043706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A274174 n

end

end A335548.P16571134329616043706

/-! ## A335548.P17049887089095008348

`Δ[A094373(n)]-A274174(n)`
-/

namespace A335548.P17049887089095008348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A274174 n

end

end A335548.P17049887089095008348

/-! ## A335548.P7675628079469560320

`A166444(n+1)-A274174(n)`
-/

namespace A335548.P7675628079469560320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) - A274174 n

end

end A335548.P7675628079469560320

/-! ## A335548.P16451411860765787325

`A158780(Δ[n²])-A274174(n)`
-/

namespace A335548.P16451411860765787325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A274174 n

end

end A335548.P16451411860765787325

/-!
# A335550: Number of minimal normal patterns avoided by the prime indices of n in increasing or decreasing order, counting multiplicity.

The programs for A335550, there is no canonical definition to state claims against.
-/

/-! ## A335550.P17519435998789761988

`round(exp(sqrt(A071625(n+1))))`
-/

namespace A335550.P17519435998789761988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (Real.sqrt (A071625 (n + 1) : ℝ)))

end

end A335550.P17519435998789761988

/-! ## A335550.P7286897670658270090

`∑{d}[∑{e}[A329601(n+1), #]+1, #]`
-/

namespace A335550.P7286897670658270090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329601 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A335550.P7286897670658270090

/-! ## A335550.P11996365755670720124

`∑{d}[a(A327528(n+1)-1)+1, #]` with `a(0)=1`
-/

namespace A335550.P11996365755670720124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A327528 (n + 1) - 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A335550.P11996365755670720124

/-! ## A335550.P7456351271372197037

`A243129(A048785(n+1))`
-/

namespace A335550.P7456351271372197037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243129 (A048785 (n + 1)).toNat

end

end A335550.P7456351271372197037

/-! ## A335550.P6478024628814111762

`A220128(A328400(n+1))`
-/

namespace A335550.P6478024628814111762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220128 (A328400 (n + 1)).toNat

end

end A335550.P6478024628814111762

/-! ## A335550.P45267480437011628

`A243129(A342530(n+1))`
-/

namespace A335550.P45267480437011628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243129 (A342530 (n + 1)).toNat

end

end A335550.P45267480437011628

/-! ## A335550.P13513675605365041081

`A243129(A360997(n+1))`
-/

namespace A335550.P13513675605365041081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243129 (A360997 (n + 1)).toNat

end

end A335550.P13513675605365041081

/-!
# A335551: Number of words of length n over the alphabet {0,1,2} that contain the substring 12 but not the substring 01.

The programs for A335551, the canonical program `A335551.P6727732207429983157` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335551 has offset 0).

The definition of A335551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335551.P6727732207429983157

`∑[A122367(n)-A052921(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A335551

/-- `∑[A122367(n)-A052921(n)]` -/
def P6727732207429983157.Spec : Prop :=
  ∀ n, P6727732207429983157.a n = A335551 n

theorem P6727732207429983157.correct : P6727732207429983157.Spec := by
  intro n
  simp only [A335551]

end A335551

/-! ## A335551.P6397626803949084775

`∑[Δ[A001906(n)]-A052921(n)]`
-/

namespace A335551.P6397626803949084775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A052921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335551.P6397626803949084775

namespace A335551

/-- `∑[Δ[A001906(n)]-A052921(n)]` -/
def P6397626803949084775.Spec : Prop :=
  ∀ n, P6397626803949084775.a n = A335551 n

end A335551

/-! ## A335551.P1187268359844120179

`A001906(n+1)-∑[A052921(n)]`
-/

namespace A335551.P1187268359844120179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335551.P1187268359844120179

namespace A335551

/-- `A001906(n+1)-∑[A052921(n)]` -/
def P1187268359844120179.Spec : Prop :=
  ∀ n, P1187268359844120179.a n = A335551 n

end A335551

/-! ## A335551.P10587824959631216060

`A001906(n+1)-A095263(n+1)`
-/

namespace A335551.P10587824959631216060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - A095263 (n + 1)

end

end A335551.P10587824959631216060

namespace A335551

/-- `A001906(n+1)-A095263(n+1)` -/
def P10587824959631216060.Spec : Prop :=
  ∀ n, P10587824959631216060.a n = A335551 n

end A335551

/-! ## A335551.P13020248100670132938

`A088305(n+1)-A095263(n+1)`
-/

namespace A335551.P13020248100670132938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 1) - A095263 (n + 1)

end

end A335551.P13020248100670132938

namespace A335551

/-- `A088305(n+1)-A095263(n+1)` -/
def P13020248100670132938.Spec : Prop :=
  ∀ n, P13020248100670132938.a n = A335551 n

end A335551

/-! ## A335551.P12487683187389817065

`∑[A000045(2*n+1)-A052921(n)]`
-/

namespace A335551.P12487683187389817065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) - A052921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A335551.P12487683187389817065

namespace A335551

/-- `∑[A000045(2*n+1)-A052921(n)]` -/
def P12487683187389817065.Spec : Prop :=
  ∀ n, P12487683187389817065.a n = A335551 n

end A335551

/-! ## A335551.P6885616594149012549

`A000045(2*(n+1))-A095263(n+1)`
-/

namespace A335551.P6885616594149012549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1)) - A095263 (n + 1)

end

end A335551.P6885616594149012549

namespace A335551

/-- `A000045(2*(n+1))-A095263(n+1)` -/
def P6885616594149012549.Spec : Prop :=
  ∀ n, P6885616594149012549.a n = A335551 n

end A335551

/-! ## A335551.P1754854508564075798

`A001654(n+1)+A001654(n)-A095263(n+1)`
-/

namespace A335551.P1754854508564075798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1) + (A001654 n - A095263 (n + 1))

end

end A335551.P1754854508564075798

namespace A335551

/-- `A001654(n+1)+A001654(n)-A095263(n+1)` -/
def P1754854508564075798.Spec : Prop :=
  ∀ n, P1754854508564075798.a n = A335551 n

end A335551

/-! ## A335551.P16161103477707102598

`Δ[A027941(n)-A181984(n)]`
-/

namespace A335551.P16161103477707102598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n - A181984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335551.P16161103477707102598

namespace A335551

/-- `Δ[A027941(n)-A181984(n)]` -/
def P16161103477707102598.Spec : Prop :=
  ∀ n, P16161103477707102598.a n = A335551 n

end A335551

/-! ## A335551.P7809139939102622875

`Δ[A122367(n)-A034943(n+2)]`
-/

namespace A335551.P7809139939102622875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - A034943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335551.P7809139939102622875

namespace A335551

/-- `Δ[A122367(n)-A034943(n+2)]` -/
def P7809139939102622875.Spec : Prop :=
  ∀ n, P7809139939102622875.a n = A335551 n

end A335551

/-! ## A335551.P13878592071304929405

`Δ[Δ[A000045(2*n)-A329244(n+1)]]`
-/

namespace A335551.P13878592071304929405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) - A329244 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A335551.P13878592071304929405

namespace A335551

/-- `Δ[Δ[A000045(2*n)-A329244(n+1)]]` -/
def P13878592071304929405.Spec : Prop :=
  ∀ n, P13878592071304929405.a n = A335551 n

end A335551

/-!
# A335552: Triangle T(n,k) read by rows: in the Josephus problem with n initial numbers on a line: eliminate each second and reverse left-right-direction of elimination. T(n,k) is the (n-k+1)st element removed, 1<=k<=n.

The programs for A335552, there is no canonical definition to state claims against.
-/

/-! ## A335552.P15232478786617756893

`A301979(3*(n+1))+A217262(A217258(n+1))`
-/

namespace A335552.P15232478786617756893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301979 (3 * (n + 1)) + A217262 (A217258 (n + 1)).toNat

end

end A335552.P15232478786617756893

/-!
# A335553: a(n) is the number of regions formed by n-secting the angles of a pentagon.

The programs for A335553, there is no canonical definition to state claims against.
-/

/-! ## A335553.P11298501238549714817

`A335555(n+1)+1-A335554(n+1)`
-/

namespace A335553.P11298501238549714817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335555 (n + 1) + (1 - A335554 (n + 1))

end

end A335553.P11298501238549714817

/-! ## A335553.P10271970049653579355

`A335555(n+1)+A024000(A335554(n+1))`
-/

namespace A335553.P10271970049653579355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335555 (n + 1) + A024000 (A335554 (n + 1)).toNat

end

end A335553.P10271970049653579355

/-!
# A335554: a(n) is the number of vertices formed by n-secting the angles of a pentagon.

The programs for A335554, there is no canonical definition to state claims against.
-/

/-! ## A335554.P2948122059491655634

`A335555(n+1)+1-A335553(n+1)`
-/

namespace A335554.P2948122059491655634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335555 (n + 1) + (1 - A335553 (n + 1))

end

end A335554.P2948122059491655634

/-! ## A335554.P14469021627491686050

`A335555(n+1)+A024000(A335553(n+1))`
-/

namespace A335554.P14469021627491686050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335555 (n + 1) + A024000 (A335553 (n + 1)).toNat

end

end A335554.P14469021627491686050

/-! ## A335554.P11086581176597586721

`A020725(A335555(n+1)-A335553(n+1))`
-/

namespace A335554.P11086581176597586721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A335555 (n + 1) - A335553 (n + 1)).toNat

end

end A335554.P11086581176597586721

/-! ## A335554.P7943016682466946528

`A153152(A335555(n+1)-A335553(n+1))`
-/

namespace A335554.P7943016682466946528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A335555 (n + 1) - A335553 (n + 1)).toNat

end

end A335554.P7943016682466946528

/-!
# A335555: a(n) is the number of edges formed by n-secting the angles of a pentagon.

The programs for A335555, there is no canonical definition to state claims against.
-/

/-! ## A335555.P14750452959918079011

`A335553(n+1)+A335554(n+1)-1`
-/

namespace A335555.P14750452959918079011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335553 (n + 1) + (A335554 (n + 1) - 1)

end

end A335555.P14750452959918079011

/-! ## A335555.P16085703220916201523

`A335553(n+1)+A023443(A335554(n+1))`
-/

namespace A335555.P16085703220916201523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335553 (n + 1) + A023443 (A335554 (n + 1)).toNat

end

end A335555.P16085703220916201523

/-!
# A335557: Primitive abundant numbers version 2 (abundant numbers all of whose proper divisors are deficient numbers) and increasing any prime factor in the prime factorization gives a non-abundant number when factored back.

The programs for A335557, there is no canonical definition to state claims against.
-/

/-! ## A335557.P14201317347046626024

`A392496(A372517(n+1))`
-/

namespace A335557.P14201317347046626024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392496 (A372517 (n + 1)).toNat

end

end A335557.P14201317347046626024

/-!
# A335559: a(n) = 3*a(n-1) + 4*a(n-2) - 2*a(n-3) with a(0)=0, a(1)=1, a(2)=2.

The programs for A335559, the canonical program `A335559.P2377813446916090659` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335559 has offset 0).

The definition of A335559 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+4*a(n-2)-2*a(n-3)` (program `A335559.P2377813446916090659`, by `A335559.P2377813446916090659.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A335559.P2377813446916090659

`3*a(n-1)+4*a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335559

/-- `3*a(n-1)+4*a(n-2)-2*a(n-3)` -/
def P2377813446916090659.Spec : Prop :=
  ∀ n, P2377813446916090659.a n = A335559 n

theorem P2377813446916090659.correct : P2377813446916090659.Spec := by
  intro n
  simp only [A335559]

end A335559

/-! ## A335559.P10207677816342966695

`ogf((x-x^2)/(1-3x-4x^2+2x^3))`
-/

namespace A335559.P10207677816342966695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -3, -4, 2] n

end

end A335559.P10207677816342966695

namespace A335559

/-- `ogf((x-x^2)/(1-3x-4x^2+2x^3))` -/
def P10207677816342966695.Spec : Prop :=
  ∀ n, P10207677816342966695.a n = A335559 n

end A335559

/-! ## A335559.P3865924528720740483

`A007866(n+1)-A006407(n+3)`
-/

namespace A335559.P3865924528720740483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007866 (n + 1) - A006407 (n + 3)

end

end A335559.P3865924528720740483

namespace A335559

/-- `A007866(n+1)-A006407(n+3)` -/
def P3865924528720740483.Spec : Prop :=
  ∀ n, P3865924528720740483.a n = A335559 n

end A335559

/-!
# A335560: Number of ways to tile an n X n square with 1 X 1 squares and (n-1) X 1 vertical or horizontal strips.

The programs for A335560, the canonical program `A335560.P15603435037706102763` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335560 has offset 1).

The definition of A335560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A335560.P15603435037706102763

`6*a(n-1)-11*a(n-2)+6*a(n-3)` with `a(0)=1, a(1)=16, a(2)=131, a(3)=335, a(4)=851`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A335560

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)` -/
def P15603435037706102763.Spec : Prop :=
  ∀ n, P15603435037706102763.a n = A335560 (n + 1)

theorem P15603435037706102763.correct : P15603435037706102763.Spec := by
  intro n
  simp only [A335560, Nat.add_sub_cancel]

end A335560

/-!
# A335562: Number of unlabelled unary-binary trees with n nodes such that every node with two children has children of different subtree sizes.

The programs for A335562, there is no canonical definition to state claims against.
-/

/-! ## A335562.P11647127778021498143

`A168315(A069792(n+1))`
-/

namespace A335562.P11647127778021498143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168315 (A069792 (n + 1)).toNat

end

end A335562.P11647127778021498143

/-! ## A335562.P4597809034811630109

`A168314(A250264(n+1))`
-/

namespace A335562.P4597809034811630109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168314 (A250264 (n + 1)).toNat

end

end A335562.P4597809034811630109

/-! ## A335562.P11952550397309875101

`A168315(A050760(n+2))`
-/

namespace A335562.P11952550397309875101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168315 (A050760 (n + 2)).toNat

end

end A335562.P11952550397309875101

/-! ## A335562.P7580998390289861442

`A168315(A075057(n+2))`
-/

namespace A335562.P7580998390289861442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168315 (A075057 (n + 2)).toNat

end

end A335562.P7580998390289861442

/-! ## A335562.P5976141422365780248

`A168315(eq[0, A137312(n)])`
-/

namespace A335562.P5976141422365780248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168315 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A335562.P5976141422365780248

/-!
# A335567: Number of distinct positive integer pairs (s,t) such that s <= t < n where neither s nor t divides n.

The programs for A335567, the canonical program `A335567.P3613381038398877744` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335567 has offset 1).

The definition of A335567 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049820, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A335567.P3613381038398877744

`A000217(A049820(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A335567

/-- `A000217(A049820(n+1))` -/
def P3613381038398877744.Spec : Prop :=
  ∀ n, P3613381038398877744.a n = A335567 (n + 1)

theorem P3613381038398877744.correct : P3613381038398877744.Spec := by
  intro n
  simp only [A335567, Nat.add_sub_cancel]

end A335567

/-! ## A335567.P1917941316463603365

`C(2-∏{e}[n+1, #+1]+n, 2)`
-/

namespace A335567.P1917941316463603365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (n : ℤ)).toNat 2

end

end A335567.P1917941316463603365

namespace A335567

/-- `C(2-∏{e}[n+1, #+1]+n, 2)` -/
def P1917941316463603365.Spec : Prop :=
  ∀ n, (P1917941316463603365.a n : ℤ) = A335567 (n + 1)

end A335567

/-! ## A335567.P10718928635009995251

`C(2-∑{d}[n+1, gcd(n, #)]+n, 2)`
-/

namespace A335567.P10718928635009995251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 - ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ) + (n : ℤ)).toNat 2

end

end A335567.P10718928635009995251

namespace A335567

/-- `C(2-∑{d}[n+1, gcd(n, #)]+n, 2)` -/
def P10718928635009995251.Spec : Prop :=
  ∀ n, (P10718928635009995251.a n : ℤ) = A335567 (n + 1)

end A335567

/-! ## A335567.P5311609010684200083

`C(n+1-∑{d}[n+1, floor(atan(#))], 2)`
-/

namespace A335567.P5311609010684200083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1 : ℤ) - ∑ d ∈ Nat.divisors (f1 n), ⌊Real.arctan (d : ℝ)⌋).toNat 2

end

end A335567.P5311609010684200083

namespace A335567

/-- `C(n+1-∑{d}[n+1, floor(atan(#))], 2)` -/
def P5311609010684200083.Spec : Prop :=
  ∀ n, (P5311609010684200083.a n : ℤ) = A335567 (n + 1)

end A335567

/-! ## A335567.P5133600369891182205

`C(n+2-∑{d}[n+1, ceil(1/#)], 2)`
-/

namespace A335567.P5133600369891182205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 2 : ℤ) - ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉).toNat 2

end

end A335567.P5133600369891182205

namespace A335567

/-- `C(n+2-∑{d}[n+1, ceil(1/#)], 2)` -/
def P5133600369891182205.Spec : Prop :=
  ∀ n, (P5133600369891182205.a n : ℤ) = A335567 (n + 1)

end A335567

/-! ## A335567.P13064566135114776720

`C(n-∑{d}[n+1, n²%#]+1, 2)`
-/

namespace A335567.P13064566135114776720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d : ℕ) : ℤ) + 1).toNat 2

end

end A335567.P13064566135114776720

namespace A335567

/-- `C(n-∑{d}[n+1, n²%#]+1, 2)` -/
def P13064566135114776720.Spec : Prop :=
  ∀ n, (P13064566135114776720.a n : ℤ) = A335567 (n + 1)

end A335567

/-! ## A335567.P16797852152501061454

`(2-∏{e}[n+1, #+1]+n)*(n+1-∏{e}[n+1, #+1])/2`
-/

namespace A335567.P16797852152501061454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (n : ℤ) : ℚ) * (((n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) : ℚ) / 2)

end

end A335567.P16797852152501061454

namespace A335567

/-- `(2-∏{e}[n+1, #+1]+n)*(n+1-∏{e}[n+1, #+1])/2` -/
def P16797852152501061454.Spec : Prop :=
  ∀ n, P16797852152501061454.a n = (A335567 (n + 1) : ℚ)

end A335567

/-! ## A335567.P15431931680368622533

`C(A062968(n+1), 2)`
-/

namespace A335567.P15431931680368622533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062968 (n + 1)).toNat 2

end

end A335567.P15431931680368622533

namespace A335567

/-- `C(A062968(n+1), 2)` -/
def P15431931680368622533.Spec : Prop :=
  ∀ n, (P15431931680368622533.a n : ℤ) = A335567 (n + 1)

end A335567

/-! ## A335567.P4037361979556245864

`C(A059292(n+1)-1, 2)`
-/

namespace A335567.P4037361979556245864
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059292 (n + 1) - 1).toNat 2

end

end A335567.P4037361979556245864

namespace A335567

/-- `C(A059292(n+1)-1, 2)` -/
def P4037361979556245864.Spec : Prop :=
  ∀ n, (P4037361979556245864.a n : ℤ) = A335567 (n + 1)

end A335567

/-! ## A335567.P3424384629310791139

`C(n-A070824(n+1), 2)`
-/

namespace A335567.P3424384629310791139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - A070824 (n + 1)).toNat 2

end

end A335567.P3424384629310791139

namespace A335567

/-- `C(n-A070824(n+1), 2)` -/
def P3424384629310791139.Spec : Prop :=
  ∀ n, (P3424384629310791139.a n : ℤ) = A335567 (n + 1)

end A335567

/-! ## A335567.P2740733243399700502

`C(A286002(n+1)-n, 2)`
-/

namespace A335567.P2740733243399700502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286002 (n + 1) - (n : ℤ)).toNat 2

end

end A335567.P2740733243399700502

namespace A335567

/-- `C(A286002(n+1)-n, 2)` -/
def P2740733243399700502.Spec : Prop :=
  ∀ n, (P2740733243399700502.a n : ℤ) = A335567 (n + 1)

end A335567

/-! ## A335567.P18288628878555768349

`A161680(A062968(n+1))`
-/

namespace A335567.P18288628878555768349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A062968 (n + 1)).toNat

end

end A335567.P18288628878555768349

namespace A335567

/-- `A161680(A062968(n+1))` -/
def P18288628878555768349.Spec : Prop :=
  ∀ n, P18288628878555768349.a n = A335567 (n + 1)

end A335567

/-! ## A335567.P12002996300248327106

`A161680(A049820(n+1)+1)`
-/

namespace A335567.P12002996300248327106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A049820 (n + 1) + 1).toNat

end

end A335567.P12002996300248327106

namespace A335567

/-- `A161680(A049820(n+1)+1)` -/
def P12002996300248327106.Spec : Prop :=
  ∀ n, P12002996300248327106.a n = A335567 (n + 1)

end A335567

/-! ## A335567.P295257649796236960

`A000217(n-A032741(n+1))`
-/

namespace A335567.P295257649796236960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n : ℤ) - A032741 (n + 1)).toNat

end

end A335567.P295257649796236960

namespace A335567

/-- `A000217(n-A032741(n+1))` -/
def P295257649796236960.Spec : Prop :=
  ∀ n, P295257649796236960.a n = A335567 (n + 1)

end A335567

/-! ## A335567.P16462499658823682583

`A337273(n+1)+A049820(n+1)`
-/

namespace A335567.P16462499658823682583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337273 (n + 1) + A049820 (n + 1)

end

end A335567.P16462499658823682583

namespace A335567

/-- `A337273(n+1)+A049820(n+1)` -/
def P16462499658823682583.Spec : Prop :=
  ∀ n, P16462499658823682583.a n = A335567 (n + 1)

end A335567

/-! ## A335567.P7036375069716627668

`A000217(n+1-A000005(n+1))`
-/

namespace A335567.P7036375069716627668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n + 1 : ℤ) - A000005 (n + 1)).toNat

end

end A335567.P7036375069716627668

namespace A335567

/-- `A000217(n+1-A000005(n+1))` -/
def P7036375069716627668.Spec : Prop :=
  ∀ n, P7036375069716627668.a n = A335567 (n + 1)

end A335567

/-! ## A335567.P2516051659362483203

`A349360(n+1)-A184389(n+1)`
-/

namespace A335567.P2516051659362483203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349360 (n + 1) - A184389 (n + 1)

end

end A335567.P2516051659362483203

namespace A335567

/-- `A349360(n+1)-A184389(n+1)` -/
def P2516051659362483203.Spec : Prop :=
  ∀ n, P2516051659362483203.a n = A335567 (n + 1)

end A335567

/-! ## A335567.P16085113379402705085

`A161680(n+2-A000005(n+1))`
-/

namespace A335567.P16085113379402705085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 ((n + 2 : ℤ) - A000005 (n + 1)).toNat

end

end A335567.P16085113379402705085

namespace A335567

/-- `A161680(n+2-A000005(n+1))` -/
def P16085113379402705085.Spec : Prop :=
  ∀ n, P16085113379402705085.a n = A335567 (n + 1)

end A335567

/-! ## A335567.P7311204731234569787

`A000217(n+1-A130209(A000217(n+1)))`
-/

namespace A335567.P7311204731234569787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n + 1 : ℤ) - A130209 (A000217 (n + 1)).toNat).toNat

end

end A335567.P7311204731234569787

namespace A335567

/-- `A000217(n+1-A130209(A000217(n+1)))` -/
def P7311204731234569787.Spec : Prop :=
  ∀ n, P7311204731234569787.a n = A335567 (n + 1)

end A335567

/-!
# A335568: a(n) is the number m such that F(m) is the greatest prime Fibonacci divisor of F(n)^2 + 1 where F(n) is the n-th Fibonacci number, or 0 if no such prime factor exists.

The programs for A335568, there is no canonical definition to state claims against.
-/

/-! ## A335568.P10753052103932045014

`A182986(A339082(n+1)+1)`
-/

namespace A335568.P10753052103932045014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A339082 (n + 1) + 1).toNat

end

end A335568.P10753052103932045014

/-! ## A335568.P11843630620805693902

`∑{d}[A339082(n+1), A007444(#)]`
-/

namespace A335568.P11843630620805693902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A335568.P11843630620805693902

/-! ## A335568.P6327066328284861143

`A000040(A339082(n+1)%A329652(n))`
-/

namespace A335568.P6327066328284861143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A339082 (n + 1)) (A329652 n)).toNat

end

end A335568.P6327066328284861143

/-! ## A335568.P4893220269673755854

`A000040(gcd(A239035(n), A339082(n+1)))`
-/

namespace A335568.P4893220269673755854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.gcd (A239035 n) (A339082 (n + 1)))

end

end A335568.P4893220269673755854

/-! ## A335568.P9981994566804349616

`A010057(A198587(n+1))+A000040(A339082(n+1))`
-/

namespace A335568.P9981994566804349616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A198587 (n + 1)).toNat + A000040 (A339082 (n + 1)).toNat

end

end A335568.P9981994566804349616

/-!
# A335569: a(n) is the maximum height achieved in the Collatz ('3x+1') problem when starting from numbers in the range [2^n, 2^(n+1)).

The programs for A335569, there is no canonical definition to state claims against.
-/

/-! ## A335569.P3248542115230609223

`record[A006577(A053000(2*(n+2)))]`
-/

namespace A335569.P3248542115230609223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A053000 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335569.P3248542115230609223

/-! ## A335569.P12044367983230102180

`record[A006577(A274640(∑[n*5^(n%2)]))]`
-/

namespace A335569.P12044367983230102180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 5 ^ (n % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A274640 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A335569.P12044367983230102180

/-!
# A335570: Number A(n,k) of n-step k-dimensional nonnegative lattice walks starting at the origin and using steps that increment all components or decrement one component by 1; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A335570, there is no canonical definition to state claims against.
-/

/-! ## A335570.P17070579378151269712

`A064515(A090628(n)+A003983(n+1))`
-/

namespace A335570.P17070579378151269712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064515 (A090628 n + A003983 (n + 1)).toNat

end

end A335570.P17070579378151269712

/-! ## A335570.P11291244786649838188

`A264909(n)+A121262(A142963(n+1))`
-/

namespace A335570.P11291244786649838188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264909 n + A121262 (A142963 (n + 1)).toNat

end

end A335570.P11291244786649838188

/-! ## A335570.P1320779237336886743

`A038571(A108131(n))`
-/

namespace A335570.P1320779237336886743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038571 (A108131 n).toNat

end

end A335570.P1320779237336886743

/-! ## A335570.P10602168043471489750

`A117707(floor(sqrt(A219206(n))))`
-/

namespace A335570.P10602168043471489750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (Int.sqrt (A219206 n)).toNat

end

end A335570.P10602168043471489750

/-! ## A335570.P14325313797540623257

`A117707(round(sqrt(A219206(n))))`
-/

namespace A335570.P14325313797540623257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (SequenceMachineLib.roundAway (Real.sqrt (A219206 n : ℝ))).toNat

end

end A335570.P14325313797540623257

/-!
# A335571: Numbers k such that prime(k+1)^prime(k+3) == prime(k) mod prime(k+2).

The programs for A335571, there is no canonical definition to state claims against.
-/

/-! ## A335571.P5131581294278898078

`xor(A217436(n)+n, A326221(n))`
-/

namespace A335571.P5131581294278898078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A217436 n + (n : ℤ)) (A326221 n)

end

end A335571.P5131581294278898078

/-!
# A335572: Irregular triangle whose row n is the set of numbers d+n/d where d is a divisor of n.

The programs for A335572, there is no canonical definition to state claims against.
-/

/-! ## A335572.P4672667519089997375

`2*A161908(n+1)-A368312(n+1)`
-/

namespace A335572.P4672667519089997375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161908 (n + 1) - A368312 (n + 1)

end

end A335572.P4672667519089997375

/-! ## A335572.P17303200090090617301

`A161908(n+1)+floor(A061017(2*n+1)/A161908(n+1))`
-/

namespace A335572.P17303200090090617301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161908 (n + 1) + ⌊(A061017 (2 * n + 1) : ℚ) / (A161908 (n + 1) : ℚ)⌋

end

end A335572.P17303200090090617301

/-! ## A335572.P11554567864718330333

`A319135(n+1)+A161908(n+1)`
-/

namespace A335572.P11554567864718330333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319135 (n + 1) + A161908 (n + 1)

end

end A335572.P11554567864718330333

/-! ## A335572.P9974044817666939031

`A368312(n+1)+2*A319135(n+1)`
-/

namespace A335572.P9974044817666939031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368312 (n + 1) + 2 * A319135 (n + 1)

end

end A335572.P9974044817666939031

/-! ## A335572.P5341953399870433515

`A319135(n+1)+∑[A000010(A161906(n+1)²)%2]/A319135(n+1)`
-/

namespace A335572.P5341953399870433515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A161906 (n + 1) ^ 2).toNat) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319135 (n + 1) : ℚ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A319135 (n + 1) : ℚ)

end

end A335572.P5341953399870433515

/-! ## A335572.P11156562430003369774

`A161908(n+1)+A161906(n+1)/A161908(n+1)*A340791(n+1)`
-/

namespace A335572.P11156562430003369774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161908 (n + 1) : ℚ) + (A161906 (n + 1) : ℚ) / (A161908 (n + 1) : ℚ) * (A340791 (n + 1) : ℚ)

end

end A335572.P11156562430003369774

/-! ## A335572.P12757302713108850387

`A319135(n+1)+A161906(n+1)/A319135(n+1)*A340791(n+1)`
-/

namespace A335572.P12757302713108850387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319135 (n + 1) : ℚ) + (A161906 (n + 1) : ℚ) / (A319135 (n + 1) : ℚ) * (A340791 (n + 1) : ℚ)

end

end A335572.P12757302713108850387

/-! ## A335572.P14025462300162021106

`A161908(n+1)+A340792(n+1)/A161908(n+1)`
-/

namespace A335572.P14025462300162021106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161908 (n + 1) : ℚ) + (A340792 (n + 1) : ℚ) / (A161908 (n + 1) : ℚ)

end

end A335572.P14025462300162021106

/-! ## A335572.P6589435569354588553

`A319135(n+1)+A340792(n+1)/A319135(n+1)`
-/

namespace A335572.P6589435569354588553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319135 (n + 1) : ℚ) + (A340792 (n + 1) : ℚ) / (A319135 (n + 1) : ℚ)

end

end A335572.P6589435569354588553

/-!
# A335573: a(n) is the number of fixed polyominoes corresponding to the free polyomino represented by A246521(n).

The programs for A335573, there is no canonical definition to state claims against.
-/

/-! ## A335573.P9850309631963013372

`A055076(A193455(3*n+2)+A064174(2*n+3))`
-/

namespace A335573.P9850309631963013372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (A193455 (3 * n + 2) + A064174 (2 * n + 3)).toNat

end

end A335573.P9850309631963013372

/-! ## A335573.P13286032228180361485

`A003484(A008279(n)*A162920(n))`
-/

namespace A335573.P13286032228180361485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (A008279 n * A162920 n).toNat

end

end A335573.P13286032228180361485

/-! ## A335573.P1609931965564968049

`gcd(A047304(A001006(n)), A272942(n))`
-/

namespace A335573.P1609931965564968049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047304 (A001006 n).toNat) (A272942 n)

end

end A335573.P1609931965564968049

/-!
# A335574: Numbers of the form 16n^2 + 32n + 15 for which the central region of its symmetric representation of sigma consists of two subparts of sizes 4n+7 and 4n+1, n>=0.

The programs for A335574, there is no canonical definition to state claims against.
-/

/-! ## A335574.P18434791398171171387

`A141759(lt[A333037(3*n+1), A017378(n)])`
-/

namespace A335574.P18434791398171171387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333037 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141759 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A335574.P18434791398171171387

/-! ## A335574.P9809341418235897839

`A141759(lt[A057977(n), A005893(2*(n+1))])`
-/

namespace A335574.P9809341418235897839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141759 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A335574.P9809341418235897839

/-! ## A335574.P937698743201857771

`A141759(lt[A242528(n+1), A031218(n+5)])`
-/

namespace A335574.P937698743201857771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141759 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A335574.P937698743201857771

/-!
# A335578: a(0) = 1; a(n) = -Sum_{k=1..n} binomial(n,k) * k^3 * a(n-k).

The programs for A335578, there is no canonical definition to state claims against.
-/

/-! ## A335578.P2229416631338316638

`A277889(A277936(n)+A085939(n+3))`
-/

namespace A335578.P2229416631338316638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277889 (A277936 n + A085939 (n + 3)).toNat

end

end A335578.P2229416631338316638

/-!
# A335580: Numbers k such that A335579(k) is divisible by at least one of the composites between prime(k) and prime(k+1).

The programs for A335580, there is no canonical definition to state claims against.
-/

/-! ## A335580.P17904253391529703306

`A294175(n+3)+A122197(A001076(n+2))`
-/

namespace A335580.P17904253391529703306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 (n + 3) + A122197 (A001076 (n + 2)).toNat

end

end A335580.P17904253391529703306

/-! ## A335580.P11782817877034312210

`A292874(A000009(3*n+2))+A008292(n+1)`
-/

namespace A335580.P11782817877034312210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292874 (A000009 (3 * n + 2)).toNat + A008292 (n + 1)

end

end A335580.P11782817877034312210

/-!
# A335583: Number of 1's in the partitions of n into 4 parts.

The programs for A335583, there is no canonical definition to state claims against.
-/

/-! ## A335583.P1515546964380438333

`A394873(n+1)-A026810(n)`
-/

namespace A335583.P1515546964380438333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394873 (n + 1) - A026810 n

end

end A335583.P1515546964380438333

/-!
# A335585: The numbers visited on a square spiral, with a(n) = n for 1 <= n <= 3, when stepping to an unvisited number as close as possible to the n = 1 starting position that has at least one common factor with the second last visited number but none with the last visited number. In case of a tie, choose the smallest number.

The programs for A335585, there is no canonical definition to state claims against.
-/

/-! ## A335585.P16601744124923277522

`A240132(A240128(n+1))+A098550(n+1)`
-/

namespace A335585.P16601744124923277522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240132 (A240128 (n + 1)).toNat + A098550 (n + 1)

end

end A335585.P16601744124923277522

/-!
# A335587: a(n) is the sum of the numbers k such that 0 <= k <= n and n AND k = 0 (where AND denotes the bitwise AND operator).

The programs for A335587, the canonical program `A335587.P17858235810342075243` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A335587 has offset 0).

The definition of A335587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A335587.P17858235810342075243

`A335063(A003817(n)-n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A335587

/-- `A335063(A003817(n)-n)` -/
def P17858235810342075243.Spec : Prop :=
  ∀ n, P17858235810342075243.a n = A335587 n

theorem P17858235810342075243.correct : P17858235810342075243.Spec := by
  intro n
  simp only [A335587]

end A335587

/-! ## A335587.P120188544162029503

`A335063(n-A006257(n))`
-/

namespace A335587.P120188544162029503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335063 ((n : ℤ) - A006257 n).toNat

end

end A335587.P120188544162029503

namespace A335587

/-- `A335063(n-A006257(n))` -/
def P120188544162029503.Spec : Prop :=
  ∀ n, P120188544162029503.a n = A335587 n

end A335587

/-! ## A335587.P5291471743444593731

`A335063(xor(n, A003817(n)))`
-/

namespace A335587.P5291471743444593731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335063 (Int.xor (n : ℤ) (A003817 n)).toNat

end

end A335587.P5291471743444593731

namespace A335587

/-- `A335063(xor(n, A003817(n)))` -/
def P5291471743444593731.Spec : Prop :=
  ∀ n, P5291471743444593731.a n = A335587 n

end A335587

/-! ## A335587.P8600373168655878077

`A335063((A206332(n+1)+1)%(n+1))`
-/

namespace A335587.P8600373168655878077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335063 (Int.tmod (A206332 (n + 1) + 1) (n + 1 : ℤ)).toNat

end

end A335587.P8600373168655878077

namespace A335587

/-- `A335063((A206332(n+1)+1)%(n+1))` -/
def P8600373168655878077.Spec : Prop :=
  ∀ n, P8600373168655878077.a n = A335587 n

end A335587

/-! ## A335587.P7577206963811382091

`A004526(A080100(n))*A035327(n)`
-/

namespace A335587.P7577206963811382091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A080100 n).toNat * A035327 n

end

end A335587.P7577206963811382091

namespace A335587

/-- `A004526(A080100(n))*A035327(n)` -/
def P7577206963811382091.Spec : Prop :=
  ∀ n, P7577206963811382091.a n = A335587 n

end A335587

/-! ## A335587.P3370599690853752667

`(A080100(n)-A080100(A000265(n+1)))*A035327(n)`
-/

namespace A335587.P3370599690853752667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A080100 n - A080100 (A000265 (n + 1)).toNat) * A035327 n

end

end A335587.P3370599690853752667

namespace A335587

/-- `(A080100(n)-A080100(A000265(n+1)))*A035327(n)` -/
def P3370599690853752667.Spec : Prop :=
  ∀ n, P3370599690853752667.a n = A335587 n

end A335587

/-! ## A335587.P1611635310445106093

`A335063(A035327(2*n+1)/2)`
-/

namespace A335587.P1611635310445106093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335063 (SequenceMachineLib.roundAway ((A035327 (2 * n + 1) : ℚ) / 2)).toNat

end

end A335587.P1611635310445106093

namespace A335587

/-- `A335063(A035327(2*n+1)/2)` -/
def P1611635310445106093.Spec : Prop :=
  ∀ n, P1611635310445106093.a n = A335587 n

end A335587

/-! ## A335587.P8384421227224494530

`lcm(A035327(2*n+1)/2, A080100(n+1))`
-/

namespace A335587.P8384421227224494530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A035327 (2 * n + 1) : ℚ) / 2)) (A080100 (n + 1))

end

end A335587.P8384421227224494530

namespace A335587

/-- `lcm(A035327(2*n+1)/2, A080100(n+1))` -/
def P8384421227224494530.Spec : Prop :=
  ∀ n, (P8384421227224494530.a n : ℤ) = A335587 n

end A335587

/-! ## A335587.P5983361462473220370

`A335063(A035327(n)%A072154(n))`
-/

namespace A335587.P5983361462473220370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335063 (Int.tmod (A035327 n) (A072154 n)).toNat

end

end A335587.P5983361462473220370

namespace A335587

/-- `A335063(A035327(n)%A072154(n))` -/
def P5983361462473220370.Spec : Prop :=
  ∀ n, P5983361462473220370.a n = A335587 n

end A335587

/-!
# A335588: Number of n-step n-dimensional nonnegative lattice walks starting at the origin and using steps that increment all components or decrement one component by 1.

The programs for A335588, there is no canonical definition to state claims against.
-/

/-! ## A335588.P11126351958256034961

`A335570(∑[4*n])`
-/

namespace A335588.P11126351958256034961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A335588.P11126351958256034961

/-! ## A335588.P1194351146208948808

`gcd(n, n+1)*A335570(A046092(n))`
-/

namespace A335588.P1194351146208948808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A335570 (A046092 n).toNat

end

end A335588.P1194351146208948808

/-! ## A335588.P8800004729477793405

`lcm(A020985(n), A335570(A046092(n)))`
-/

namespace A335588.P8800004729477793405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A335570 (A046092 n).toNat)

end

end A335588.P8800004729477793405

/-! ## A335588.P1395333495564232037

`or(A000007(n), A335570(A046092(n)))`
-/

namespace A335588.P1395333495564232037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A335570 (A046092 n).toNat)

end

end A335588.P1395333495564232037

/-! ## A335588.P11939509401455149757

`or(A023533(n), A335570(A046092(n)))`
-/

namespace A335588.P11939509401455149757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023533 n) (A335570 (A046092 n).toNat)

end

end A335588.P11939509401455149757

/-!
# A335589: Decimal expansion of the sum of the reciprocals of the squares of composite numbers.

The programs for A335589, there is no canonical definition to state claims against.
-/

/-! ## A335589.P8618668096247883357

`A275647(n+1)`
-/

namespace A335589.P8618668096247883357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275647 (n + 1 + 1)

end

end A335589.P8618668096247883357

/-! ## A335589.P9073219879720747475

`-Δ[-∑[A275647(n)]]`
-/

namespace A335589.P9073219879720747475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275647 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A335589.P9073219879720747475

/-!
# A335595: E.g.f.: exp(-x * (2 + x)) / (1 - x)^2.

The programs for A335595, there is no canonical definition to state claims against.
-/

/-! ## A335595.P17417794104329531771

`A020639(ceil((n+1)!/4))*A355284(n)`
-/

namespace A335595.P17417794104329531771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌈(Nat.factorial (n + 1) : ℚ) / 4⌉.toNat * A355284 n

end

end A335595.P17417794104329531771

/-! ## A335595.P12299506328717830198

`A006530(A000302(n))*A355284(n)`
-/

namespace A335595.P12299506328717830198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000302 n).toNat * A355284 n

end

end A335595.P12299506328717830198

/-! ## A335595.P3185595562859632878

`A020639(A000090(n))*A355284(n)`
-/

namespace A335595.P3185595562859632878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000090 n).toNat * A355284 n

end

end A335595.P3185595562859632878

/-! ## A335595.P16681383546844840101

`A020639(A000138(n))*A355284(n)`
-/

namespace A335595.P16681383546844840101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000138 n).toNat * A355284 n

end

end A335595.P16681383546844840101

/-! ## A335595.P8368426838233955428

`A020639(A000142(n))*A355284(n)`
-/

namespace A335595.P8368426838233955428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000142 n).toNat * A355284 n

end

end A335595.P8368426838233955428

/-!
# A335596: The number of hanging vertically stable self-avoiding walks of length n on a 2D square lattice where only the connecting rods have mass.

The programs for A335596, there is no canonical definition to state claims against.
-/

/-! ## A335596.P10062588264629029152

`A162229(A192425(n)+1)`
-/

namespace A335596.P10062588264629029152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162229 (A192425 n + 1).toNat

end

end A335596.P10062588264629029152

/-! ## A335596.P12526213887609860311

`A046074(2*A116637(n))`
-/

namespace A335596.P12526213887609860311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (2 * A116637 n).toNat

end

end A335596.P12526213887609860311

/-! ## A335596.P11353363316550030384

`A046074(4*A047749(n))`
-/

namespace A335596.P11353363316550030384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (4 * A047749 n).toNat

end

end A335596.P11353363316550030384

/-! ## A335596.P13599840673267832214

`A162229(or(6, A192425(n)))`
-/

namespace A335596.P13599840673267832214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162229 (Int.lor 6 (A192425 n)).toNat

end

end A335596.P13599840673267832214

/-! ## A335596.P18185693151995310936

`or(1, A325543(A001590(n+1)))`
-/

namespace A335596.P18185693151995310936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A325543 (A001590 (n + 1)).toNat)

end

end A335596.P18185693151995310936

/-!
# A335598: Squares that remain squares when the repunit with the same number of digits is added.

The programs for A335598, there is no canonical definition to state claims against.
-/

/-! ## A335598.P2470152991445321755

`xor(2, p?[A322325(n)-2])²`
-/

namespace A335598.P2470152991445321755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322325 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ^ 2

end

end A335598.P2470152991445321755

/-!
# A335599: Sequence is limit_{k->oo} s_k, where s_k = s_{k-1}, s_{k-1}[k-1] + 2^(k-1), ..., s_{k-1}[end] + 2^(k-1) starting with s_0 = s_0[0..1] = 0,0.

The programs for A335599, there is no canonical definition to state claims against.
-/

/-! ## A335599.P2075717419569925498

`A228086(n-A334820(n))`
-/

namespace A335599.P2075717419569925498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 ((n : ℤ) - A334820 n).toNat

end

end A335599.P2075717419569925498

/-! ## A335599.P260429048564690154

`A228086(A164364(n)-1+n)`
-/

namespace A335599.P260429048564690154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 (A164364 n - 1 + (n : ℤ)).toNat

end

end A335599.P260429048564690154

/-! ## A335599.P17437367991228872238

`A228086(n-(1-A164364(n)))`
-/

namespace A335599.P17437367991228872238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 ((n : ℤ) - (1 - A164364 n)).toNat

end

end A335599.P17437367991228872238

/-! ## A335599.P12357889592119538222

`A228086(n-char[record[A092391(n)+1]])`
-/

namespace A335599.P12357889592119538222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A335599.P12357889592119538222

/-! ## A335599.P4818497435504366894

`A228086(n-(1-A164363(n+2)%2))`
-/

namespace A335599.P4818497435504366894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 ((n : ℤ) - (1 - Int.tmod (A164363 (n + 2)) 2)).toNat

end

end A335599.P4818497435504366894

/-! ## A335599.P5803169039023093401

`A228086(n-char[record[A000120(n)+1+n]])`
-/

namespace A335599.P5803169039023093401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1 + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A335599.P5803169039023093401

/-! ## A335599.P11176750653515446233

`A228086(n-char[record[A063787(n+1)+n]])`
-/

namespace A335599.P11176750653515446233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A335599.P11176750653515446233

/-! ## A335599.P7395928717338862908

`A228086(n-char[record[A081743(2*n+1)+n]])`
-/

namespace A335599.P7395928717338862908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081743 (2 * n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A335599.P7395928717338862908

/-! ## A335599.P15351913509217741311

`A228086(n-char[record[n-A011371(n)+n+1]])`
-/

namespace A335599.P15351913509217741311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 n + (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A335599.P15351913509217741311

/-! ## A335599.P11171456756820543182

`A228086(n-char[record[2*n-A005187(n)+n+1]])`
-/

namespace A335599.P11171456756820543182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n + (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A335599.P11171456756820543182

