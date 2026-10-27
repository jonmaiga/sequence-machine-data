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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
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
# A359800: a(n) is the least m such that the concatenation of n^2 and m is a square.

The programs for A359800, there is no canonical definition to state claims against.
-/

/-! ## A359800.P2198014132807732385

`A071176((n+1)²)`
-/

namespace A359800.P2198014132807732385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071176 ((n + 1) ^ 2)

end

end A359800.P2198014132807732385

/-! ## A359800.P8575982313614959717

`A071176(A000290(n+1))+n%(-1)`
-/

namespace A359800.P8575982313614959717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071176 (A000290 (n + 1)).toNat + Int.tmod (n : ℤ) (-1)

end

end A359800.P8575982313614959717

/-! ## A359800.P12381063082938796867

`A071176(A000290(n+1))%A346827(n)`
-/

namespace A359800.P12381063082938796867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071176 (A000290 (n + 1)).toNat) (A346827 n)

end

end A359800.P12381063082938796867

/-! ## A359800.P17931626302331039374

`A071176(A000290(n+1))+floor(A196564(n)/9)`
-/

namespace A359800.P17931626302331039374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071176 (A000290 (n + 1)).toNat + ⌊(A196564 n : ℚ) / 9⌋

end

end A359800.P17931626302331039374

/-! ## A359800.P412579713539730972

`A071176(A000290(n+1))+val(A014486(n)+1, 2)`
-/

namespace A359800.P412579713539730972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071176 (A000290 (n + 1)).toNat + (SequenceMachineLib.valuation (A014486 n + 1).toNat 2 : ℤ)

end

end A359800.P412579713539730972

/-! ## A359800.P14189105304780497708

`A071176(A000290(n+1))+val(A101814(n+1)+1, 2)`
-/

namespace A359800.P14189105304780497708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071176 (A000290 (n + 1)).toNat + (SequenceMachineLib.valuation (A101814 (n + 1) + 1).toNat 2 : ℤ)

end

end A359800.P14189105304780497708

/-! ## A359800.P12574772056557290292

`A071176(A000290(n+1))-A271102(A007918(n))`
-/

namespace A359800.P12574772056557290292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071176 (A000290 (n + 1)).toNat - A271102 (A007918 n).toNat

end

end A359800.P12574772056557290292

/-! ## A359800.P4290218351062247068

`A162211(A179667(n+1))+A071176(A000290(n+1))`
-/

namespace A359800.P4290218351062247068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162211 (A179667 (n + 1)).toNat + A071176 (A000290 (n + 1)).toNat

end

end A359800.P4290218351062247068

/-!
# A359801: Number of 4-dimensional cubic lattice walks that start and end at origin after 2n steps, not touching origin at intermediate stages.

The programs for A359801, there is no canonical definition to state claims against.
-/

/-! ## A359801.P1829404076415675235

`record[A361397(∑[n+3]-2)]`
-/

namespace A359801.P1829404076415675235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361397 (∑ j ∈ Finset.range (n + 1), f2 j - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359801.P1829404076415675235

/-! ## A359801.P1723919720841364037

`A361397(eq[4, A025581(n)])`
-/

namespace A359801.P1723919720841364037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361397 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A359801.P1723919720841364037

/-! ## A359801.P10378304825820852032

`A361397(A046691(n+3)-1)`
-/

namespace A359801.P10378304825820852032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361397 (A046691 (n + 3) - 1).toNat

end

end A359801.P10378304825820852032

/-! ## A359801.P8940089802394198772

`A361397(A000217(n+5)-5)`
-/

namespace A359801.P8940089802394198772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361397 (A000217 (n + 5) - 5).toNat

end

end A359801.P8940089802394198772

/-! ## A359801.P1528047759344233455

`A361397(A133263(n+5)-7)`
-/

namespace A359801.P1528047759344233455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361397 (A133263 (n + 5) - 7).toNat

end

end A359801.P1528047759344233455

/-!
# A359802: a(n) = product prime(d + 1), where d ranges over all the decimal digits of n.

The programs for A359802, the canonical program `A359802.P11949633173020920184` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359802 has offset 0).

The definition of A359802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359802.P6075714831443097548

`∏{digits}[n, A100110(#)]`
-/

namespace A359802.P6075714831443097548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A100110 x).prod

end

end A359802.P6075714831443097548

namespace A359802

/-- `∏{digits}[n, A100110(#)]` -/
def P6075714831443097548.Spec : Prop :=
  ∀ n, P6075714831443097548.a n = A359802 n

end A359802

/-! ## A359802.P13485754892713007221

`∏{digits}[n, A181325(#)]`
-/

namespace A359802.P13485754892713007221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A181325 x).prod

end

end A359802.P13485754892713007221

namespace A359802

/-- `∏{digits}[n, A181325(#)]` -/
def P13485754892713007221.Spec : Prop :=
  ∀ n, P13485754892713007221.a n = A359802 n

end A359802

/-! ## A359802.P11192013350411315047

`∏{digits}[n, A390240(#)]`
-/

namespace A359802.P11192013350411315047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A390240 x).prod

end

end A359802.P11192013350411315047

namespace A359802

/-- `∏{digits}[n, A390240(#)]` -/
def P11192013350411315047.Spec : Prop :=
  ∀ n, P11192013350411315047.a n = A359802 n

end A359802

/-! ## A359802.P11949633173020920184

`∏{digits}[n, A000040(#+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A359802

/-- `∏{digits}[n, A000040(#+1)]` -/
def P11949633173020920184.Spec : Prop :=
  ∀ n, P11949633173020920184.a n = A359802 n

theorem P11949633173020920184.correct : P11949633173020920184.Spec := by
  intro n
  simp only [A359802]

end A359802

/-! ## A359802.P12708202754770781019

`∏{digits}[n, A233265(#+1)]`
-/

namespace A359802.P12708202754770781019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A233265 (x + 1)).prod

end

end A359802.P12708202754770781019

namespace A359802

/-- `∏{digits}[n, A233265(#+1)]` -/
def P12708202754770781019.Spec : Prop :=
  ∀ n, P12708202754770781019.a n = A359802 n

end A359802

/-! ## A359802.P17682026051117543714

`∏{digits}[n, A008578(#+2)]`
-/

namespace A359802.P17682026051117543714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A008578 (x + 2)).prod

end

end A359802.P17682026051117543714

namespace A359802

/-- `∏{digits}[n, A008578(#+2)]` -/
def P17682026051117543714.Spec : Prop :=
  ∀ n, P17682026051117543714.a n = A359802 n

end A359802

/-!
# A359807: a(1) = 0; thereafter a(n) is the largest a(i) + i which is < n among i = 1..n-1.

The programs for A359807, there is no canonical definition to state claims against.
-/

/-! ## A359807.P7120058444007914811

`A037988(n)-(n+1)`
-/

namespace A359807.P7120058444007914811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037988 n - (n + 1 : ℤ)

end

end A359807.P7120058444007914811

/-! ## A359807.P14415494086804771329

`∑[Δ[A094591(n)]-1]`
-/

namespace A359807.P14415494086804771329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094591 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359807.P14415494086804771329

/-! ## A359807.P1069744574590907311

`∑[A272729(n+1)-1]`
-/

namespace A359807.P1069744574590907311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272729 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359807.P1069744574590907311

/-! ## A359807.P6966446913146029279

`A094591(n+1)-(n+2)`
-/

namespace A359807.P6966446913146029279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094591 (n + 1) - (n + 2 : ℤ)

end

end A359807.P6966446913146029279

/-! ## A359807.P10966977007954609034

`A037988(n)%A000027(n+1)`
-/

namespace A359807.P10966977007954609034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037988 n) (A000027 (n + 1))

end

end A359807.P10966977007954609034

/-! ## A359807.P1239172310244317976

`n-A272728(A037988(n))`
-/

namespace A359807.P1239172310244317976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A272728 (A037988 n).toNat

end

end A359807.P1239172310244317976

/-!
# A359808: a(n) is the least prime factor of the alternating factorial n! - (n-1)! + (n-2)! - ... 1! for n > 2; a(1) = a(2) = 1.

The programs for A359808, there is no canonical definition to state claims against.
-/

/-! ## A359808.P8086655296913016531

`A006530(abs(∑[∏[-(n+1)]]))`
-/

namespace A359808.P8086655296913016531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A359808.P8086655296913016531

/-! ## A359808.P18445614054861225438

`A020639(abs(∑[∏[-(n+1)]]))`
-/

namespace A359808.P18445614054861225438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A359808.P18445614054861225438

/-! ## A359808.P9200298859664012502

`A153880(n!)-a(n-1)` with `a(0)=1`
-/

namespace A359808.P9200298859664012502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A153880 (Nat.factorial n) - a (n - 1)

end

end A359808.P9200298859664012502

/-!
# A359810: Partial sums of A001035.

The programs for A359810, there is no canonical definition to state claims against.
-/

/-! ## A359810.P1663778700030625413

`∑[A001035(n)]`
-/

namespace A359810.P1663778700030625413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359810.P1663778700030625413

/-! ## A359810.P969047175940863386

`∑[A245767(∑[n])]`
-/

namespace A359810.P969047175940863386
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245767 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359810.P969047175940863386

/-! ## A359810.P12922363633467903109

`∑[A003425(n)/n!]`
-/

namespace A359810.P12922363633467903109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003425 n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359810.P12922363633467903109

/-! ## A359810.P8311385135152642739

`∑[A280192(∑[n]+n)]`
-/

namespace A359810.P8311385135152642739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280192 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359810.P8311385135152642739

/-! ## A359810.P12626714134465731258

`∑[A006059(n+1)/(n+1)]`
-/

namespace A359810.P12626714134465731258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006059 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359810.P12626714134465731258

/-!
# A359812: a(n) = Sum_{d|n} (-1)^(d-1) * d^(n/d-1).

The programs for A359812, the canonical program `A359812.P818817271713926338` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359812 has offset 1).

The definition of A359812 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359812.P818817271713926338

`∑{d}[n+1, (-1)^(#-1)*#^((n+1)/#-1)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A359812

/-- `∑{d}[n+1, (-1)^(#-1)*#^((n+1)/#-1)]` -/
def P818817271713926338.Spec : Prop :=
  ∀ n, P818817271713926338.a n = (A359812 (n + 1) : ℝ)

end A359812

/-!
# A359813: Number of primes < 10^n with exactly one odd decimal digit.

The programs for A359813, there is no canonical definition to state claims against.
-/

/-! ## A359813.P12609643282710660601

`A014321(A061577(2^(n+1)))`
-/

namespace A359813.P12609643282710660601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014321 (A061577 (2 ^ (n + 1))).toNat

end

end A359813.P12609643282710660601

/-!
# A359814: Dirichlet inverse of A359769, where A359769(n) = A353557(n) - A353556(n).

The programs for A359814, there is no canonical definition to state claims against.
-/

/-! ## A359814.P14051172592483902990

`A008836(n+1)*A359815(n+1)`
-/

namespace A359814.P14051172592483902990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A359815 (n + 1)

end

end A359814.P14051172592483902990

/-! ## A359814.P9022273421441156646

`A033999(∑{e}[n+1, #])*A359815(n+1)`
-/

namespace A359814.P9022273421441156646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A359815 (n + 1)

end

end A359814.P9022273421441156646

/-! ## A359814.P11266804553764206324

`A033999(∑{p}[n+1, val(n+1, #)])*A359815(n+1)`
-/

namespace A359814.P11266804553764206324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p) * A359815 (n + 1)

end

end A359814.P11266804553764206324

/-! ## A359814.P526382569870377523

`A033999(A001222(n+1))*A359815(n+1)`
-/

namespace A359814.P526382569870377523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A001222 (n + 1)).toNat * A359815 (n + 1)

end

end A359814.P526382569870377523

/-! ## A359814.P12959903997640009954

`A359815(n+1)/A033999(A000005(∏{e}[n+1, 2^#])-1)`
-/

namespace A359814.P12959903997640009954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359815 (n + 1) : ℚ) / (A033999 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) - 1).toNat : ℚ)

end

end A359814.P12959903997640009954

/-! ## A359814.P17620047318946456919

`A359815(n+1)/A008836(A332818(n+1))`
-/

namespace A359814.P17620047318946456919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359815 (n + 1) : ℚ) / (A008836 (A332818 (n + 1)).toNat : ℚ)

end

end A359814.P17620047318946456919

/-!
# A359815: Dirichlet inverse of A359770, where A359770(n) = 1 if n and bigomega(n) are of different parity, otherwise 0.

The programs for A359815, there is no canonical definition to state claims against.
-/

/-! ## A359815.P11797831613057264094

`A008836(n+1)*A359814(n+1)`
-/

namespace A359815.P11797831613057264094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A359814 (n + 1)

end

end A359815.P11797831613057264094

/-! ## A359815.P2603313991910989812

`A359814(A000027(n+1))/A008836(n+1)`
-/

namespace A359815.P2603313991910989812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359814 (A000027 (n + 1)).toNat : ℚ) / (A008836 (n + 1) : ℚ)

end

end A359815.P2603313991910989812

/-! ## A359815.P14509167662765326126

`A359814(n+1)/A008836(A046523(n+1))`
-/

namespace A359815.P14509167662765326126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359814 (n + 1) : ℚ) / (A008836 (A046523 (n + 1)).toNat : ℚ)

end

end A359815.P14509167662765326126

/-! ## A359815.P11091364452707387188

`A359814(n+1)/A008836(A061142(n+1))`
-/

namespace A359815.P11091364452707387188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359814 (n + 1) : ℚ) / (A008836 (A061142 (n + 1)).toNat : ℚ)

end

end A359815.P11091364452707387188

/-! ## A359815.P11522101199134132715

`(A065043(n+1)-A353556(n+1))*A359814(n+1)`
-/

namespace A359815.P11522101199134132715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065043 (n + 1) - A353556 (n + 1)) * A359814 (n + 1)

end

end A359815.P11522101199134132715

/-!
# A359816: Parity of A359815, where A359815 is the Dirichlet inverse of A359770, which is the characteristic function for numbers k such that k and bigomega(k) are of different parity.

The programs for A359816, there is no canonical definition to state claims against.
-/

/-! ## A359816.P10742867418204084285

`and(1, A359814(n+1))`
-/

namespace A359816.P10742867418204084285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359814 (n + 1))

end

end A359816.P10742867418204084285

/-! ## A359816.P12369422800692319611

`and(1, A359815(n+1))`
-/

namespace A359816.P12369422800692319611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359815 (n + 1))

end

end A359816.P12369422800692319611

/-! ## A359816.P16580801183965556022

`A359820(A359814(n+1)²)`
-/

namespace A359816.P16580801183965556022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A359814 (n + 1) ^ 2).toNat

end

end A359816.P16580801183965556022

/-! ## A359816.P7642334536805920486

`A359820(A359815(n+1)²)`
-/

namespace A359816.P7642334536805920486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A359815 (n + 1) ^ 2).toNat

end

end A359816.P7642334536805920486

/-! ## A359816.P15819373719995116835

`A166486(A359815(n+1)²)`
-/

namespace A359816.P15819373719995116835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A359815 (n + 1) ^ 2).toNat

end

end A359816.P15819373719995116835

/-! ## A359816.P7848991925044948719

`A000035(A359814(n+1)²)`
-/

namespace A359816.P7848991925044948719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A359814 (n + 1) ^ 2).toNat

end

end A359816.P7848991925044948719

/-! ## A359816.P5328376468192173588

`A000035(A359815(n+1)²)`
-/

namespace A359816.P5328376468192173588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A359815 (n + 1) ^ 2).toNat

end

end A359816.P5328376468192173588

/-! ## A359816.P12359751483126867872

`A059841((A359815(n+1)+1)²)`
-/

namespace A359816.P12359751483126867872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 ((A359815 (n + 1) + 1) ^ 2).toNat

end

end A359816.P12359751483126867872

/-! ## A359816.P17585305990421519651

`A102560((A359815(n+1)+1)²)`
-/

namespace A359816.P17585305990421519651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 ((A359815 (n + 1) + 1) ^ 2).toNat

end

end A359816.P17585305990421519651

/-! ## A359816.P10762108449790795244

`A360109(A359815(n+1)²²)`
-/

namespace A359816.P10762108449790795244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360109 ((A359815 (n + 1) ^ 2) ^ 2).toNat

end

end A359816.P10762108449790795244

/-!
# A359817: Positions of odd terms in A359815, where A359815 is the Dirichlet inverse of A359770, which is the characteristic function for numbers k such that k and bigomega(k) are of different parity.

The programs for A359817, there is no canonical definition to state claims against.
-/

/-! ## A359817.P5770668520702321517

`lt[0, A359816(n+1)]+1`
-/

namespace A359817.P5770668520702321517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359817.P5770668520702321517

/-! ## A359817.P7100700279855792389

`eq[1, and(1, A359815(n+1))]+1`
-/

namespace A359817.P7100700279855792389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359815 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359817.P7100700279855792389

/-! ## A359817.P2489480379789797525

`filter[A305810(n+1), A359816(#)]`
-/

namespace A359817.P2489480379789797525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A359817.P2489480379789797525

/-! ## A359817.P10479936538269747617

`filter[A305904(n+1), A359816(#)]`
-/

namespace A359817.P10479936538269747617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A359817.P10479936538269747617

/-! ## A359817.P14926112546402185145

`filter[A376198(n+1), A359816(#)]`
-/

namespace A359817.P14926112546402185145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A359817.P14926112546402185145

/-! ## A359817.P14635220877625659150

`record[A000027(n+1)*A359816(n+1)]`
-/

namespace A359817.P14635220877625659150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A359816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359817.P14635220877625659150

/-! ## A359817.P16286609396221454393

`filter[A101513(n+1), A359816(#)]`
-/

namespace A359817.P16286609396221454393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A359817.P16286609396221454393

/-! ## A359817.P5880621208677812885

`filter[A065090(n+1), A359816(#)]`
-/

namespace A359817.P5880621208677812885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A359817.P5880621208677812885

/-! ## A359817.P660943580275299617

`filter[A171581(n+1), A359816(#)]`
-/

namespace A359817.P660943580275299617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A359817.P660943580275299617

/-! ## A359817.P2122545037566718054

`filter[A338924(n+1), A359816(#)]`
-/

namespace A359817.P2122545037566718054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A359817.P2122545037566718054

/-! ## A359817.P9917006910235596825

`filter[A173905(n+2), A359816(#)]`
-/

namespace A359817.P9917006910235596825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A359817.P9917006910235596825

/-! ## A359817.P11229707959161395660

`filter[A073900(n+1), A359816(#)]`
-/

namespace A359817.P11229707959161395660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A359817.P11229707959161395660

/-! ## A359817.P17905716972606004404

`filter[A073899(n+1), A359816(#)]`
-/

namespace A359817.P17905716972606004404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A359817.P17905716972606004404

/-! ## A359817.P11879540321991152063

`filter[A089088(n), A359816(#)]`
-/

namespace A359817.P11879540321991152063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A359817.P11879540321991152063

/-! ## A359817.P6085394914550331674

`filter[A137621(n+1), A359816(#)]`
-/

namespace A359817.P6085394914550331674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A359817.P6085394914550331674

/-! ## A359817.P10453614180443310899

`filter[A156657(n+2), A359816(#)]`
-/

namespace A359817.P10453614180443310899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A359817.P10453614180443310899

/-! ## A359817.P15394627226843481989

`filter[A133398(n+1), A359816(#)]`
-/

namespace A359817.P15394627226843481989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A359817.P15394627226843481989

/-! ## A359817.P5902987197559552922

`eq[1, A359816(A028310(n)+1)]+1`
-/

namespace A359817.P5902987197559552922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359816 (A028310 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359817.P5902987197559552922

/-! ## A359817.P3507116315314934923

`lt[A000007(n), A359816(A028310(n))]`
-/

namespace A359817.P3507116315314934923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359816 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359817.P3507116315314934923

/-!
# A359818: Dirichlet inverse of A359549, where A359549 is the characteristic function for numbers that are either an odd squarefree number squared or twice such a number.

The programs for A359818, the canonical program `A359818.P149401970276973754` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359818 has offset 1).

The definition of A359818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359818.P16886535223365892815

`A101455(A069735(n+1))`
-/

namespace A359818.P16886535223365892815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A069735 (n + 1)).toNat

end

end A359818.P16886535223365892815

namespace A359818

/-- `A101455(A069735(n+1))` -/
def P16886535223365892815.Spec : Prop :=
  ∀ n, P16886535223365892815.a n = A359818 (n + 1)

end A359818

/-! ## A359818.P18009086606749125503

`A101455(A143152(n+1))`
-/

namespace A359818.P18009086606749125503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A143152 (n + 1)).toNat

end

end A359818.P18009086606749125503

namespace A359818

/-- `A101455(A143152(n+1))` -/
def P18009086606749125503.Spec : Prop :=
  ∀ n, P18009086606749125503.a n = A359818 (n + 1)

end A359818

/-! ## A359818.P14967810107040238628

`A056594(A143152(n+1)-1)`
-/

namespace A359818.P14967810107040238628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A143152 (n + 1) - 1).toNat

end

end A359818.P14967810107040238628

namespace A359818

/-- `A056594(A143152(n+1)-1)` -/
def P14967810107040238628.Spec : Prop :=
  ∀ n, P14967810107040238628.a n = A359818 (n + 1)

end A359818

/-! ## A359818.P12652294582517875699

`-A056594(A143152(n+1)+1)`
-/

namespace A359818.P12652294582517875699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A056594 (A143152 (n + 1) + 1).toNat

end

end A359818.P12652294582517875699

namespace A359818

/-- `-A056594(A143152(n+1)+1)` -/
def P12652294582517875699.Spec : Prop :=
  ∀ n, P12652294582517875699.a n = A359818 (n + 1)

end A359818

/-! ## A359818.P149401970276973754

`∑{d}[n+1, A219009(#)*A359592((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A359818

/-- `∑{d}[n+1, A219009(#)*A359592((n+1)/#)]` -/
def P149401970276973754.Spec : Prop :=
  ∀ n, P149401970276973754.a n = A359818 (n + 1)

theorem P149401970276973754.correct : P149401970276973754.Spec := by
  intro n
  simp only [A359818, Nat.add_sub_cancel]

end A359818

/-! ## A359818.P18049345721686646731

`A056594(A048691(n+1)-A001227(n+1))`
-/

namespace A359818.P18049345721686646731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A048691 (n + 1) - A001227 (n + 1)).toNat

end

end A359818.P18049345721686646731

namespace A359818

/-- `A056594(A048691(n+1)-A001227(n+1))` -/
def P18049345721686646731.Spec : Prop :=
  ∀ n, P18049345721686646731.a n = A359818 (n + 1)

end A359818

/-! ## A359818.P16408597432220846814

`A117569(A069735(2*(n+1))+2)`
-/

namespace A359818.P16408597432220846814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (A069735 (2 * (n + 1)) + 2).toNat

end

end A359818.P16408597432220846814

namespace A359818

/-- `A117569(A069735(2*(n+1))+2)` -/
def P16408597432220846814.Spec : Prop :=
  ∀ n, P16408597432220846814.a n = A359818 (n + 1)

end A359818

/-! ## A359818.P5528739233812864489

`A101455(A191750(n+1))`
-/

namespace A359818.P5528739233812864489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A191750 (n + 1)).toNat

end

end A359818.P5528739233812864489

namespace A359818

/-- `A101455(A191750(n+1))` -/
def P5528739233812864489.Spec : Prop :=
  ∀ n, P5528739233812864489.a n = A359818 (n + 1)

end A359818

/-! ## A359818.P6968652046143873132

`A101455(A262209((n+1)²))`
-/

namespace A359818.P6968652046143873132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A262209 ((n + 1) ^ 2)).toNat

end

end A359818.P6968652046143873132

namespace A359818

/-- `A101455(A262209((n+1)²))` -/
def P6968652046143873132.Spec : Prop :=
  ∀ n, P6968652046143873132.a n = A359818 (n + 1)

end A359818

/-! ## A359818.P13723033046470532707

`A101455(A288417((n+1)²))`
-/

namespace A359818.P13723033046470532707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A288417 ((n + 1) ^ 2)).toNat

end

end A359818.P13723033046470532707

namespace A359818

/-- `A101455(A288417((n+1)²))` -/
def P13723033046470532707.Spec : Prop :=
  ∀ n, P13723033046470532707.a n = A359818 (n + 1)

end A359818

/-!
# A359819: Dirichlet inverse of A359590.

The programs for A359819, there is no canonical definition to state claims against.
-/

/-! ## A359819.P8702193304545324048

`or(A355690(n+1), A379666(A042948(2*(n+1))))`
-/

namespace A359819.P8702193304545324048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A355690 (n + 1)) (A379666 (A042948 (2 * (n + 1))).toNat)

end

end A359819.P8702193304545324048

/-! ## A359819.P18124207185239793364

`A010815(and(A008746(n+1), A176563(n)))`
-/

namespace A359819.P18124207185239793364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (Int.land (A008746 (n + 1)) (A176563 n)).toNat

end

end A359819.P18124207185239793364

/-! ## A359819.P9259035384247386104

`A010815(A006519(3*n+1))^A008746(n+1)`
-/

namespace A359819.P9259035384247386104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 (A006519 (3 * n + 1)).toNat : ℚ) ^ (A008746 (n + 1) : ℤ)

end

end A359819.P9259035384247386104

/-! ## A359819.P345628051909721561

`A008836(n+1)*A056594(A177890(n))`
-/

namespace A359819.P345628051909721561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A056594 (A177890 n).toNat

end

end A359819.P345628051909721561

/-! ## A359819.P6477142695792262037

`A056594(lcm(A010048(n), A276085(n+1)))`
-/

namespace A359819.P6477142695792262037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (Int.lcm (A010048 n) (A276085 (n + 1)))

end

end A359819.P6477142695792262037

/-!
# A359820: a(n) = 1 if n and n' are of different parity, otherwise 0. Here n' stands for the arithmetic derivative of n, A003415(n).

The programs for A359820, the canonical program `A359820.P4426895942293485706` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359820 has offset 0).

The definition of A359820 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359820.P4426895942293485706

`(n+A003415(n))%2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A359820

/-- `(n+A003415(n))%2` -/
def P4426895942293485706.Spec : Prop :=
  ∀ n, P4426895942293485706.a n = A359820 n

theorem P4426895942293485706.correct : P4426895942293485706.Spec := by
  intro n
  simp only [A359820]

end A359820

/-! ## A359820.P1707161466894311789

`A000035(A129283(n))`
-/

namespace A359820.P1707161466894311789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A129283 n).toNat

end

end A359820.P1707161466894311789

namespace A359820

/-- `A000035(A129283(n))` -/
def P1707161466894311789.Spec : Prop :=
  ∀ n, P1707161466894311789.a n = A359820 n

end A359820

/-! ## A359820.P8508766092532877289

`and(1, A168036(n))`
-/

namespace A359820.P8508766092532877289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A168036 n)

end

end A359820.P8508766092532877289

namespace A359820

/-- `and(1, A168036(n))` -/
def P8508766092532877289.Spec : Prop :=
  ∀ n, P8508766092532877289.a n = A359820 n

end A359820

/-! ## A359820.P6148560458516834887

`char[A359821(n+1)]`
-/

namespace A359820.P6148560458516834887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A359820.P6148560458516834887

namespace A359820

/-- `char[A359821(n+1)]` -/
def P6148560458516834887.Spec : Prop :=
  ∀ n, (P6148560458516834887.a n : ℤ) = A359820 n

end A359820

/-! ## A359820.P10084145337386064650

`A358680(abs(xor(n, -2)))`
-/

namespace A359820.P10084145337386064650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 |Int.xor (n : ℤ) (-2)|.toNat

end

end A359820.P10084145337386064650

namespace A359820

/-- `A358680(abs(xor(n, -2)))` -/
def P10084145337386064650.Spec : Prop :=
  ∀ n, P10084145337386064650.a n = A359820 n

end A359820

/-! ## A359820.P9571656221237898511

`1-A358680(3*n)`
-/

namespace A359820.P9571656221237898511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A358680 (3 * n)

end

end A359820.P9571656221237898511

namespace A359820

/-- `1-A358680(3*n)` -/
def P9571656221237898511.Spec : Prop :=
  ∀ n, P9571656221237898511.a n = A359820 n

end A359820

/-! ## A359820.P3182169475101725094

`gcd(2, A373849(n))-1`
-/

namespace A359820.P3182169475101725094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A373849 n) : ℤ) - 1

end

end A359820.P3182169475101725094

namespace A359820

/-- `gcd(2, A373849(n))-1` -/
def P3182169475101725094.Spec : Prop :=
  ∀ n, P3182169475101725094.a n = A359820 n

end A359820

/-! ## A359820.P3866513998848470980

`A358680(xor(1, n)+1)`
-/

namespace A359820.P3866513998848470980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (Nat.xor 1 n + 1)

end

end A359820.P3866513998848470980

namespace A359820

/-- `A358680(xor(1, n)+1)` -/
def P3866513998848470980.Spec : Prop :=
  ∀ n, P3866513998848470980.a n = A359820 n

end A359820

/-! ## A359820.P14674928573505643132

`and(1, A353493(3*n))`
-/

namespace A359820.P14674928573505643132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A353493 (3 * n))

end

end A359820.P14674928573505643132

namespace A359820

/-- `and(1, A353493(3*n))` -/
def P14674928573505643132.Spec : Prop :=
  ∀ n, P14674928573505643132.a n = A359820 n

end A359820

/-! ## A359820.P1910419655825729981

`and(1, A165560(n)+n)`
-/

namespace A359820.P1910419655825729981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A165560 n + (n : ℤ))

end

end A359820.P1910419655825729981

namespace A359820

/-- `and(1, A165560(n)+n)` -/
def P1910419655825729981.Spec : Prop :=
  ∀ n, P1910419655825729981.a n = A359820 n

end A359820

/-! ## A359820.P16135069700461627951

`and(1, A353493(n)+n)`
-/

namespace A359820.P16135069700461627951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A353493 n + (n : ℤ))

end

end A359820.P16135069700461627951

namespace A359820

/-- `and(1, A353493(n)+n)` -/
def P16135069700461627951.Spec : Prop :=
  ∀ n, P16135069700461627951.a n = A359820 n

end A359820

/-! ## A359820.P4933578680108885799

`and(1, A368922(n)+n)`
-/

namespace A359820.P4933578680108885799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A368922 n + (n : ℤ))

end

end A359820.P4933578680108885799

namespace A359820

/-- `and(1, A368922(n)+n)` -/
def P4933578680108885799.Spec : Prop :=
  ∀ n, P4933578680108885799.a n = A359820 n

end A359820

/-! ## A359820.P6846588992006582646

`A000035(A328772(3*n))`
-/

namespace A359820.P6846588992006582646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A328772 (3 * n)).toNat

end

end A359820.P6846588992006582646

namespace A359820

/-- `A000035(A328772(3*n))` -/
def P6846588992006582646.Spec : Prop :=
  ∀ n, P6846588992006582646.a n = A359820 n

end A359820

/-! ## A359820.P9726444104733228202

`A000035(A165560(n)+n)`
-/

namespace A359820.P9726444104733228202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A165560 n + (n : ℤ)).toNat

end

end A359820.P9726444104733228202

namespace A359820

/-- `A000035(A165560(n)+n)` -/
def P9726444104733228202.Spec : Prop :=
  ∀ n, P9726444104733228202.a n = A359820 n

end A359820

/-! ## A359820.P10385516576499235317

`A000035(n-A165560(n))`
-/

namespace A359820.P10385516576499235317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) - A165560 n).toNat

end

end A359820.P10385516576499235317

namespace A359820

/-- `A000035(n-A165560(n))` -/
def P10385516576499235317.Spec : Prop :=
  ∀ n, P10385516576499235317.a n = A359820 n

end A359820

/-! ## A359820.P12696571041919920410

`A007877(n)-A165560(n)`
-/

namespace A359820.P12696571041919920410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n - A165560 n

end

end A359820.P12696571041919920410

namespace A359820

/-- `A007877(n)-A165560(n)` -/
def P12696571041919920410.Spec : Prop :=
  ∀ n, P12696571041919920410.a n = A359820 n

end A359820

/-! ## A359820.P1953245418049313824

`A000035(n-A328772(n))`
-/

namespace A359820.P1953245418049313824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) - A328772 n).toNat

end

end A359820.P1953245418049313824

namespace A359820

/-- `A000035(n-A328772(n))` -/
def P1953245418049313824.Spec : Prop :=
  ∀ n, P1953245418049313824.a n = A359820 n

end A359820

/-! ## A359820.P10455584034110332626

`A000035(n-A353493(n))`
-/

namespace A359820.P10455584034110332626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) - A353493 n).toNat

end

end A359820.P10455584034110332626

namespace A359820

/-- `A000035(n-A353493(n))` -/
def P10455584034110332626.Spec : Prop :=
  ∀ n, P10455584034110332626.a n = A359820 n

end A359820

/-! ## A359820.P16251216029635419474

`A358680(n)-A056594(n)`
-/

namespace A359820.P16251216029635419474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 n - A056594 n

end

end A359820.P16251216029635419474

namespace A359820

/-- `A358680(n)-A056594(n)` -/
def P16251216029635419474.Spec : Prop :=
  ∀ n, P16251216029635419474.a n = A359820 n

end A359820

/-!
# A359821: Numbers k whose arithmetic derivative, A003415(k), has the opposite parity to k.

The programs for A359821, the canonical program `A359821.P15316925035218251936` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359821 has offset 1).

The definition of A359821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359821.P15526453411071951671

`lt[0, A359820(n)]`
-/

namespace A359821.P15526453411071951671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359821.P15526453411071951671

namespace A359821

/-- `lt[0, A359820(n)]` -/
def P15526453411071951671.Spec : Prop :=
  ∀ n, (P15526453411071951671.a n : ℤ) = A359821 (n + 1)

end A359821

/-! ## A359821.P4794043127567291503

`eq[0, A358680(3*n)]`
-/

namespace A359821.P4794043127567291503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359821.P4794043127567291503

namespace A359821

/-- `eq[0, A358680(3*n)]` -/
def P4794043127567291503.Spec : Prop :=
  ∀ n, (P4794043127567291503.a n : ℤ) = A359821 (n + 1)

end A359821

/-! ## A359821.P15316925035218251936

`∪[A046337(n+1), A016825(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A359821

/-- `∪[A046337(n+1), A016825(n)]` -/
def P15316925035218251936.Spec : Prop :=
  ∀ n, (P15316925035218251936.a n : ℤ) = A359821 (n + 1)

theorem P15316925035218251936.correct : P15316925035218251936.Spec := by
  intro n
  simp only [A359821, Nat.add_sub_cancel]

end A359821

/-! ## A359821.P9003226129333375820

`∪[A359371(n+1), A016825(n)]`
-/

namespace A359821.P9003226129333375820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359821.P9003226129333375820

namespace A359821

/-- `∪[A359371(n+1), A016825(n)]` -/
def P9003226129333375820.Spec : Prop :=
  ∀ n, (P9003226129333375820.a n : ℤ) = A359821 (n + 1)

end A359821

/-! ## A359821.P16481413400203585038

`∪[A370125(n+1), A016825(n)]`
-/

namespace A359821.P16481413400203585038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359821.P16481413400203585038

namespace A359821

/-- `∪[A370125(n+1), A016825(n)]` -/
def P16481413400203585038.Spec : Prop :=
  ∀ n, (P16481413400203585038.a n : ℤ) = A359821 (n + 1)

end A359821

/-! ## A359821.P13166266315378792809

`∪[A046337(n+1), A111284(n+1)]`
-/

namespace A359821.P13166266315378792809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359821.P13166266315378792809

namespace A359821

/-- `∪[A046337(n+1), A111284(n+1)]` -/
def P13166266315378792809.Spec : Prop :=
  ∀ n, (P13166266315378792809.a n : ℤ) = A359821 (n + 1)

end A359821

/-! ## A359821.P12538988822209523087

`∪[A046337(n+1), A391845(n+1)]`
-/

namespace A359821.P12538988822209523087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359821.P12538988822209523087

namespace A359821

/-- `∪[A046337(n+1), A391845(n+1)]` -/
def P12538988822209523087.Spec : Prop :=
  ∀ n, (P12538988822209523087.a n : ℤ) = A359821 (n + 1)

end A359821

/-! ## A359821.P17176878299568893843

`∪[A111284(n+1), A359371(n+1)]`
-/

namespace A359821.P17176878299568893843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359821.P17176878299568893843

namespace A359821

/-- `∪[A111284(n+1), A359371(n+1)]` -/
def P17176878299568893843.Spec : Prop :=
  ∀ n, (P17176878299568893843.a n : ℤ) = A359821 (n + 1)

end A359821

/-! ## A359821.P8794153965401871593

`∪[A111284(n+1), A370125(n+1)]`
-/

namespace A359821.P8794153965401871593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359821.P8794153965401871593

namespace A359821

/-- `∪[A111284(n+1), A370125(n+1)]` -/
def P8794153965401871593.Spec : Prop :=
  ∀ n, (P8794153965401871593.a n : ℤ) = A359821 (n + 1)

end A359821

/-! ## A359821.P10970934823735378540

`∪[A359371(n+1), A391845(n+1)]`
-/

namespace A359821.P10970934823735378540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359821.P10970934823735378540

namespace A359821

/-- `∪[A359371(n+1), A391845(n+1)]` -/
def P10970934823735378540.Spec : Prop :=
  ∀ n, (P10970934823735378540.a n : ℤ) = A359821 (n + 1)

end A359821

/-! ## A359821.P327876534106529846

`∪[A370125(n+1), A391845(n+1)]`
-/

namespace A359821.P327876534106529846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359821.P327876534106529846

namespace A359821

/-- `∪[A370125(n+1), A391845(n+1)]` -/
def P327876534106529846.Spec : Prop :=
  ∀ n, (P327876534106529846.a n : ℤ) = A359821 (n + 1)

end A359821

/-! ## A359821.P8036801729711015877

`∪[A046337(n+1), A008586(n)+2]`
-/

namespace A359821.P8036801729711015877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359821.P8036801729711015877

namespace A359821

/-- `∪[A046337(n+1), A008586(n)+2]` -/
def P8036801729711015877.Spec : Prop :=
  ∀ n, (P8036801729711015877.a n : ℤ) = A359821 (n + 1)

end A359821

/-! ## A359821.P3555330134310467600

`lt[A358680(5*n), 1]`
-/

namespace A359821.P3555330134310467600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (5 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359821.P3555330134310467600

namespace A359821

/-- `lt[A358680(5*n), 1]` -/
def P3555330134310467600.Spec : Prop :=
  ∀ n, (P3555330134310467600.a n : ℤ) = A359821 (n + 1)

end A359821

/-! ## A359821.P1333848662636560873

`eq[A010121(n), A359820(n)]`
-/

namespace A359821.P1333848662636560873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359821.P1333848662636560873

namespace A359821

/-- `eq[A010121(n), A359820(n)]` -/
def P1333848662636560873.Spec : Prop :=
  ∀ n, (P1333848662636560873.a n : ℤ) = A359821 (n + 1)

end A359821

/-! ## A359821.P2529933906766257531

`eq[A010130(n), A359820(n)]`
-/

namespace A359821.P2529933906766257531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359821.P2529933906766257531

namespace A359821

/-- `eq[A010130(n), A359820(n)]` -/
def P2529933906766257531.Spec : Prop :=
  ∀ n, (P2529933906766257531.a n : ℤ) = A359821 (n + 1)

end A359821

/-! ## A359821.P16865314728275910993

`eq[A010153(n), A359820(n)]`
-/

namespace A359821.P16865314728275910993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359821.P16865314728275910993

namespace A359821

/-- `eq[A010153(n), A359820(n)]` -/
def P16865314728275910993.Spec : Prop :=
  ∀ n, (P16865314728275910993.a n : ℤ) = A359821 (n + 1)

end A359821

/-! ## A359821.P6998787974937350030

`eq[A040037(n), A359820(n)]`
-/

namespace A359821.P6998787974937350030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359821.P6998787974937350030

namespace A359821

/-- `eq[A040037(n), A359820(n)]` -/
def P6998787974937350030.Spec : Prop :=
  ∀ n, (P6998787974937350030.a n : ℤ) = A359821 (n + 1)

end A359821

/-! ## A359821.P14769643257912794122

`eq[2, A358680(n)+A010123(n)]`
-/

namespace A359821.P14769643257912794122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 n + A010123 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359821.P14769643257912794122

namespace A359821

/-- `eq[2, A358680(n)+A010123(n)]` -/
def P14769643257912794122.Spec : Prop :=
  ∀ n, (P14769643257912794122.a n : ℤ) = A359821 (n + 1)

end A359821

/-! ## A359821.P68588799139547689

`eq[2, A358680(n)+A010131(n)]`
-/

namespace A359821.P68588799139547689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 n + A010131 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359821.P68588799139547689

namespace A359821

/-- `eq[2, A358680(n)+A010131(n)]` -/
def P68588799139547689.Spec : Prop :=
  ∀ n, (P68588799139547689.a n : ℤ) = A359821 (n + 1)

end A359821

/-! ## A359821.P12523128894984210419

`comp[A359822(n+1)]`
-/

namespace A359821.P12523128894984210419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A359821.P12523128894984210419

namespace A359821

/-- `comp[A359822(n+1)]` -/
def P12523128894984210419.Spec : Prop :=
  ∀ n, (P12523128894984210419.a n : ℤ) = A359821 (n + 1)

end A359821

/-!
# A359822: Numbers k whose arithmetic derivative, A003415(k), has the same parity as k.

The programs for A359822, the canonical program `A359822.P1092898922336058354` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359822 has offset 1).

The definition of A359822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359822.P9894692182486549135

`eq[0, A359820(n)]`
-/

namespace A359822.P9894692182486549135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359822.P9894692182486549135

namespace A359822

/-- `eq[0, A359820(n)]` -/
def P9894692182486549135.Spec : Prop :=
  ∀ n, (P9894692182486549135.a n : ℤ) = A359822 (n + 1)

end A359822

/-! ## A359822.P6030988385906254308

`comp[A359821(n+1)]`
-/

namespace A359822.P6030988385906254308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A359822.P6030988385906254308

namespace A359822

/-- `comp[A359821(n+1)]` -/
def P6030988385906254308.Spec : Prop :=
  ∀ n, (P6030988385906254308.a n : ℤ) = A359822 (n + 1)

end A359822

/-! ## A359822.P14119901489998133829

`eq[1, A358680(3*n)]`
-/

namespace A359822.P14119901489998133829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359822.P14119901489998133829

namespace A359822

/-- `eq[1, A358680(3*n)]` -/
def P14119901489998133829.Spec : Prop :=
  ∀ n, (P14119901489998133829.a n : ℤ) = A359822 (n + 1)

end A359822

/-! ## A359822.P17408433888167119973

`lt[A358680(xor(1, n)+1), 1]`
-/

namespace A359822.P17408433888167119973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (Nat.xor 1 n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A359822.P17408433888167119973

namespace A359822

/-- `lt[A358680(xor(1, n)+1), 1]` -/
def P17408433888167119973.Spec : Prop :=
  ∀ n, (P17408433888167119973.a n : ℤ) = A359822 (n + 1)

end A359822

/-! ## A359822.P1092898922336058354

`lt[A359792(xor(1, n)+1), 1]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A359822

/-- `lt[A359792(xor(1, n)+1), 1]` -/
def P1092898922336058354.Spec : Prop :=
  ∀ n, (P1092898922336058354.a n : ℤ) = A359822 (n + 1)

theorem P1092898922336058354.correct : P1092898922336058354.Spec := by
  intro n
  simp only [A359822, Nat.add_sub_cancel]

end A359822

/-! ## A359822.P4728723322096377094

`∪[A067019(n+1), 4*n]`
-/

namespace A359822.P4728723322096377094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A359822.P4728723322096377094

namespace A359822

/-- `∪[A067019(n+1), 4*n]` -/
def P4728723322096377094.Spec : Prop :=
  ∀ n, (P4728723322096377094.a n : ℤ) = A359822 (n + 1)

end A359822

/-! ## A359822.P1485279980556865791

`∪[A008586(n), A067019(n+1)]`
-/

namespace A359822.P1485279980556865791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359822.P1485279980556865791

namespace A359822

/-- `∪[A008586(n), A067019(n+1)]` -/
def P1485279980556865791.Spec : Prop :=
  ∀ n, (P1485279980556865791.a n : ℤ) = A359822 (n + 1)

end A359822

/-! ## A359822.P1432202690865731672

`∪[A373142(n+1), A008586(n)]`
-/

namespace A359822.P1432202690865731672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359822.P1432202690865731672

namespace A359822

/-- `∪[A373142(n+1), A008586(n)]` -/
def P1432202690865731672.Spec : Prop :=
  ∀ n, (P1432202690865731672.a n : ℤ) = A359822 (n + 1)

end A359822

/-! ## A359822.P2232667659239752754

`eq[0, A129283(n)%2]`
-/

namespace A359822.P2232667659239752754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129283 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359822.P2232667659239752754

namespace A359822

/-- `eq[0, A129283(n)%2]` -/
def P2232667659239752754.Spec : Prop :=
  ∀ n, (P2232667659239752754.a n : ℤ) = A359822 (n + 1)

end A359822

/-! ## A359822.P15736344764674966194

`lt[1, gcd(2, A168036(n))]`
-/

namespace A359822.P15736344764674966194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A168036 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359822.P15736344764674966194

namespace A359822

/-- `lt[1, gcd(2, A168036(n))]` -/
def P15736344764674966194.Spec : Prop :=
  ∀ n, (P15736344764674966194.a n : ℤ) = A359822 (n + 1)

end A359822

/-! ## A359822.P16331821197829543334

`eq[and(1, n), A165560(n)]`
-/

namespace A359822.P16331821197829543334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359822.P16331821197829543334

namespace A359822

/-- `eq[and(1, n), A165560(n)]` -/
def P16331821197829543334.Spec : Prop :=
  ∀ n, (P16331821197829543334.a n : ℤ) = A359822 (n + 1)

end A359822

/-! ## A359822.P13171077017188232687

`comp[xor(n, A359792(n+1))]`
-/

namespace A359822.P13171077017188232687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A359792 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A359822.P13171077017188232687

namespace A359822

/-- `comp[xor(n, A359792(n+1))]` -/
def P13171077017188232687.Spec : Prop :=
  ∀ n, (P13171077017188232687.a n : ℤ) = A359822 (n + 1)

end A359822

/-! ## A359822.P17490301834112844694

`eq[A000035(n), A165560(n)]`
-/

namespace A359822.P17490301834112844694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359822.P17490301834112844694

namespace A359822

/-- `eq[A000035(n), A165560(n)]` -/
def P17490301834112844694.Spec : Prop :=
  ∀ n, (P17490301834112844694.a n : ℤ) = A359822 (n + 1)

end A359822

/-! ## A359822.P17196842555498238247

`eq[A007877(n), A165560(n)]`
-/

namespace A359822.P17196842555498238247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359822.P17196842555498238247

namespace A359822

/-- `eq[A007877(n), A165560(n)]` -/
def P17196842555498238247.Spec : Prop :=
  ∀ n, (P17196842555498238247.a n : ℤ) = A359822 (n + 1)

end A359822

/-! ## A359822.P9352712599332728676

`eq[A070432(n), A165560(n)]`
-/

namespace A359822.P9352712599332728676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070432 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359822.P9352712599332728676

namespace A359822

/-- `eq[A070432(n), A165560(n)]` -/
def P9352712599332728676.Spec : Prop :=
  ∀ n, (P9352712599332728676.a n : ℤ) = A359822 (n + 1)

end A359822

/-! ## A359822.P16974597577167915919

`eq[A131729(n), A165560(n)]`
-/

namespace A359822.P16974597577167915919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359822.P16974597577167915919

namespace A359822

/-- `eq[A131729(n), A165560(n)]` -/
def P16974597577167915919.Spec : Prop :=
  ∀ n, (P16974597577167915919.a n : ℤ) = A359822 (n + 1)

end A359822

/-! ## A359822.P10158868444545290033

`eq[1, A165560(n)+A059841(n)]`
-/

namespace A359822.P10158868444545290033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 n + A059841 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359822.P10158868444545290033

namespace A359822

/-- `eq[1, A165560(n)+A059841(n)]` -/
def P10158868444545290033.Spec : Prop :=
  ∀ n, (P10158868444545290033.a n : ℤ) = A359822 (n + 1)

end A359822

/-! ## A359822.P16304411511804456015

`eq[A059841(n), A059841(A328772(n))]`
-/

namespace A359822.P16304411511804456015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A328772 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359822.P16304411511804456015

namespace A359822

/-- `eq[A059841(n), A059841(A328772(n))]` -/
def P16304411511804456015.Spec : Prop :=
  ∀ n, (P16304411511804456015.a n : ℤ) = A359822 (n + 1)

end A359822

/-! ## A359822.P13416970599139687332

`eq[A165560(2*n), A165560(n)]`
-/

namespace A359822.P13416970599139687332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359822.P13416970599139687332

namespace A359822

/-- `eq[A165560(2*n), A165560(n)]` -/
def P13416970599139687332.Spec : Prop :=
  ∀ n, (P13416970599139687332.a n : ℤ) = A359822 (n + 1)

end A359822

/-! ## A359822.P11640709772415107039

`eq[A010169(A003415(n)), A010169(n)]`
-/

namespace A359822.P11640709772415107039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010169 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010169 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359822.P11640709772415107039

namespace A359822

/-- `eq[A010169(A003415(n)), A010169(n)]` -/
def P11640709772415107039.Spec : Prop :=
  ∀ n, (P11640709772415107039.a n : ℤ) = A359822 (n + 1)

end A359822

/-!
# A359823: Dirichlet inverse of A359820, where A359820 is the characteristic function of numbers whose parity differs from the parity of their arithmetic derivative (A003415).

The programs for A359823, there is no canonical definition to state claims against.
-/

/-! ## A359823.P5784963493503654425

`A038498(A242170(n+1)-A034706(n+1))`
-/

namespace A359823.P5784963493503654425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A242170 (n + 1) - A034706 (n + 1)).toNat

end

end A359823.P5784963493503654425

/-! ## A359823.P4426879312888144198

`A166589(A074206(2*(n+1))%A157428(3*n+4))`
-/

namespace A359823.P4426879312888144198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166589 (Int.tmod (A074206 (2 * (n + 1))) (A157428 (3 * n + 4))).toNat

end

end A359823.P4426879312888144198

/-!
# A359824: Parity of A359823, where A359823 is the Dirichlet inverse of A359820.

The programs for A359824, there is no canonical definition to state claims against.
-/

/-! ## A359824.P2173300187414168553

`and(1, A347082(n+1))`
-/

namespace A359824.P2173300187414168553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A347082 (n + 1))

end

end A359824.P2173300187414168553

/-! ## A359824.P8277594680776253020

`and(1, A347084(n+1))`
-/

namespace A359824.P8277594680776253020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A347084 (n + 1))

end

end A359824.P8277594680776253020

/-! ## A359824.P3644972190970285546

`and(1, A359823(n+1))`
-/

namespace A359824.P3644972190970285546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359823 (n + 1))

end

end A359824.P3644972190970285546

/-! ## A359824.P18224443340428473985

`and(1, A347087(n+1)-(n+1))`
-/

namespace A359824.P18224443340428473985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A347087 (n + 1) - (n + 1 : ℤ))

end

end A359824.P18224443340428473985

/-! ## A359824.P10705138920157491892

`A000035(A359823(n+1)²)`
-/

namespace A359824.P10705138920157491892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A359823 (n + 1) ^ 2).toNat

end

end A359824.P10705138920157491892

/-! ## A359824.P7571972831914874190

`A359820(A359823(n+1)²)`
-/

namespace A359824.P7571972831914874190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A359823 (n + 1) ^ 2).toNat

end

end A359824.P7571972831914874190

/-! ## A359824.P6750350619635517638

`A059841((A359823(n+1)+1)²)`
-/

namespace A359824.P6750350619635517638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 ((A359823 (n + 1) + 1) ^ 2).toNat

end

end A359824.P6750350619635517638

/-! ## A359824.P1382433880374369827

`A359820(A359823(n+1)*A359823(n+1))`
-/

namespace A359824.P1382433880374369827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A359823 (n + 1) * A359823 (n + 1)).toNat

end

end A359824.P1382433880374369827

/-! ## A359824.P7206264912696826066

`A000035(A359823(n+1)+2*n)`
-/

namespace A359824.P7206264912696826066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A359823 (n + 1) + (2 * n : ℤ)).toNat

end

end A359824.P7206264912696826066

/-! ## A359824.P9875796470013206411

`A359820(A347082(n+1)²)`
-/

namespace A359824.P9875796470013206411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A347082 (n + 1) ^ 2).toNat

end

end A359824.P9875796470013206411

/-! ## A359824.P14426396743393229781

`A359820(A347082(n+1)*A347082(n+1))`
-/

namespace A359824.P14426396743393229781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A347082 (n + 1) * A347082 (n + 1)).toNat

end

end A359824.P14426396743393229781

/-! ## A359824.P9251755018115502367

`A359820(A347084(n+1)²)`
-/

namespace A359824.P9251755018115502367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A347084 (n + 1) ^ 2).toNat

end

end A359824.P9251755018115502367

/-! ## A359824.P6607188584945504895

`A359820(A347084(n+1)*A347084(n+1))`
-/

namespace A359824.P6607188584945504895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (A347084 (n + 1) * A347084 (n + 1)).toNat

end

end A359824.P6607188584945504895

/-!
# A359825: Positions of odd terms in A359823, where A359823 is the Dirichlet inverse of A359820.

The programs for A359825, there is no canonical definition to state claims against.
-/

/-! ## A359825.P4885154219071416665

`eq[1, A359824(n+1)]+1`
-/

namespace A359825.P4885154219071416665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359825.P4885154219071416665

/-! ## A359825.P15325627506102272981

`eq[1, A347082(n+1)²%2]+1`
-/

namespace A359825.P15325627506102272981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347082 (n + 1) ^ 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359825.P15325627506102272981

/-! ## A359825.P2302265526232467420

`filter[A305810(n+1), A359824(#)]`
-/

namespace A359825.P2302265526232467420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A359825.P2302265526232467420

/-! ## A359825.P14094015484745020080

`filter[A305900(n+1), A359824(#)]`
-/

namespace A359825.P14094015484745020080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A359825.P14094015484745020080

/-! ## A359825.P7015550732982042742

`filter[A305903(n+1), A359824(#)]`
-/

namespace A359825.P7015550732982042742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A359825.P7015550732982042742

/-! ## A359825.P2110599814378899302

`filter[A305904(n+1), A359824(#)]`
-/

namespace A359825.P2110599814378899302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A359825.P2110599814378899302

/-! ## A359825.P13151117493091494855

`filter[A376198(n+1), A359824(#)]`
-/

namespace A359825.P13151117493091494855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A359825.P13151117493091494855

/-! ## A359825.P390768109123727019

`record[A000027(n+1)*A359824(n+1)]`
-/

namespace A359825.P390768109123727019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A359824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359825.P390768109123727019

/-! ## A359825.P8189120725381355837

`filter[A101513(n+1), A359824(#)]`
-/

namespace A359825.P8189120725381355837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A359825.P8189120725381355837

/-! ## A359825.P12511695620395772681

`filter[A065090(n+1), A359824(#)]`
-/

namespace A359825.P12511695620395772681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A359825.P12511695620395772681

/-! ## A359825.P2492119905008961234

`filter[A171581(n+1), A359824(#)]`
-/

namespace A359825.P2492119905008961234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A359825.P2492119905008961234

/-! ## A359825.P16871827191478175537

`filter[A173905(n+2), A359824(#)]`
-/

namespace A359825.P16871827191478175537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A359825.P16871827191478175537

/-! ## A359825.P7287960510854426222

`filter[A338924(n+1), A359824(#)]`
-/

namespace A359825.P7287960510854426222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A359825.P7287960510854426222

/-! ## A359825.P8861322753981076683

`filter[A073900(n+1), A359824(#)]`
-/

namespace A359825.P8861322753981076683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A359825.P8861322753981076683

/-! ## A359825.P16370198337232187435

`filter[A073899(n+1), A359824(#)]`
-/

namespace A359825.P16370198337232187435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A359825.P16370198337232187435

/-! ## A359825.P3091635999942235381

`filter[A089088(n), A359824(#)]`
-/

namespace A359825.P3091635999942235381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A359825.P3091635999942235381

/-! ## A359825.P16805087820297515692

`filter[A137621(n+1), A359824(#)]`
-/

namespace A359825.P16805087820297515692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A359825.P16805087820297515692

/-! ## A359825.P2809432581182382394

`filter[A156657(n+2), A359824(#)]`
-/

namespace A359825.P2809432581182382394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A359825.P2809432581182382394

/-! ## A359825.P4656607804952613629

`filter[A133398(n+1), A359824(#)]`
-/

namespace A359825.P4656607804952613629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A359825.P4656607804952613629

/-! ## A359825.P3366594343910678881

`filter[A084408(n+1), A359824(#)]`
-/

namespace A359825.P3366594343910678881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A359825.P3366594343910678881

/-!
# A359826: Parity of A353348, where A353348 is Dirichlet inverse of the characteristic function for numbers k such that A048675(k) is a multiple of 3.

The programs for A359826, there is no canonical definition to state claims against.
-/

/-! ## A359826.P888879989450643227

`and(1, A353348(n+1))`
-/

namespace A359826.P888879989450643227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A353348 (n + 1))

end

end A359826.P888879989450643227

/-! ## A359826.P1717349497670254739

`A096268(A353348(n+1)²)`
-/

namespace A359826.P1717349497670254739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A353348 (n + 1) ^ 2).toNat

end

end A359826.P1717349497670254739

/-! ## A359826.P17111828173077325261

`(A353348(A348717(n+1))%2)²`
-/

namespace A359826.P17111828173077325261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353348 (A348717 (n + 1)).toNat) 2 ^ 2

end

end A359826.P17111828173077325261

/-! ## A359826.P3405847875532448918

`(A353348(n+1)%2)^A348717(n+1)`
-/

namespace A359826.P3405847875532448918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A353348 (n + 1)) 2 : ℚ) ^ (A348717 (n + 1) : ℤ)

end

end A359826.P3405847875532448918

/-! ## A359826.P8906479756779448132

`A010873(A353348(n+1)^4)`
-/

namespace A359826.P8906479756779448132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A353348 (n + 1) ^ 4).toNat

end

end A359826.P8906479756779448132

/-! ## A359826.P1962065421671461408

`lcm(A003961(2*n+5), A353348(n+1))%2`
-/

namespace A359826.P1962065421671461408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003961 (2 * n + 5)) (A353348 (n + 1)) % 2

end

end A359826.P1962065421671461408

/-! ## A359826.P2410299759233238309

`A000035(6*n+2-A353348(n+1))`
-/

namespace A359826.P2410299759233238309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((6 * n + 2 : ℤ) - A353348 (n + 1)).toNat

end

end A359826.P2410299759233238309

/-! ## A359826.P3330819131050849736

`(A353348(A003961(n+1))%2)²`
-/

namespace A359826.P3330819131050849736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353348 (A003961 (n + 1)).toNat) 2 ^ 2

end

end A359826.P3330819131050849736

/-! ## A359826.P7869715836939462383

`A001222(5^A353348(n+1)²)`
-/

namespace A359826.P7869715836939462383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A353348 (n + 1) ^ 2 : ℤ))).toNat

end

end A359826.P7869715836939462383

/-! ## A359826.P9005557335677435325

`(A353348(n+1)^A000040(n+1))²`
-/

namespace A359826.P9005557335677435325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A353348 (n + 1) : ℚ) ^ (A000040 (n + 1) : ℤ)) ^ 2

end

end A359826.P9005557335677435325

/-! ## A359826.P17718293236875245468

`(A353348(n+1)^A000203(n+1))²`
-/

namespace A359826.P17718293236875245468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A353348 (n + 1) : ℚ) ^ (A000203 (n + 1) : ℤ)) ^ 2

end

end A359826.P17718293236875245468

/-!
# A359827: Positions of odd terms in A353348, where A353348 is Dirichlet inverse of the characteristic function for numbers k where A048675(k) is a multiple of 3.

The programs for A359827, there is no canonical definition to state claims against.
-/

/-! ## A359827.P3641260204563669573

`lt[0, A359826(n+1)]+1`
-/

namespace A359827.P3641260204563669573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359827.P3641260204563669573

/-! ## A359827.P15120165246730979728

`filter[A305811(n+1), A359826(#)]`
-/

namespace A359827.P15120165246730979728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359826 (f1 j).toNat = 1) n)

end

end A359827.P15120165246730979728

/-! ## A359827.P12172478859035013769

`A000027(eq[1, A359826(n+1)]+1)`
-/

namespace A359827.P12172478859035013769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A359827.P12172478859035013769

/-! ## A359827.P5884233827916792376

`record[A000027(n+1)*A359826(n+1)]`
-/

namespace A359827.P5884233827916792376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A359826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359827.P5884233827916792376

/-! ## A359827.P7110539328435801422

`filter[A018252(n+1), A359826(#)]`
-/

namespace A359827.P7110539328435801422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359826 (f1 j).toNat = 1) n)

end

end A359827.P7110539328435801422

/-! ## A359827.P5029207803443673616

`filter[A141468(n+2), A359826(#)]`
-/

namespace A359827.P5029207803443673616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359826 (f1 j).toNat = 1) n)

end

end A359827.P5029207803443673616

/-! ## A359827.P13380978093108924133

`filter[A222307(2*n+1), A359826(#)]`
-/

namespace A359827.P13380978093108924133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359826 (f1 j).toNat = 1) n)

end

end A359827.P13380978093108924133

/-! ## A359827.P4207842006254331800

`filter[A101513(n+1), A359826(#)]`
-/

namespace A359827.P4207842006254331800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359826 (f1 j).toNat = 1) n)

end

end A359827.P4207842006254331800

/-! ## A359827.P2550737456238164429

`filter[A139118(n+1), A359826(#)]`
-/

namespace A359827.P2550737456238164429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359826 (f1 j).toNat = 1) n)

end

end A359827.P2550737456238164429

/-! ## A359827.P16257058201915710838

`filter[A056653(n+1), A359826(#)]`
-/

namespace A359827.P16257058201915710838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359826 (f1 j).toNat = 1) n)

end

end A359827.P16257058201915710838

/-! ## A359827.P14115138888890018823

`filter[A065090(n+1), A359826(#)]`
-/

namespace A359827.P14115138888890018823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359826 (f1 j).toNat = 1) n)

end

end A359827.P14115138888890018823

/-! ## A359827.P2405254204528769364

`filter[A171581(n+1), A359826(#)]`
-/

namespace A359827.P2405254204528769364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359826 (f1 j).toNat = 1) n)

end

end A359827.P2405254204528769364

/-! ## A359827.P5538822325292376028

`filter[A338924(n+1), A359826(#)]`
-/

namespace A359827.P5538822325292376028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359826 (f1 j).toNat = 1) n)

end

end A359827.P5538822325292376028

/-! ## A359827.P7603834363018244815

`filter[A173905(n+2), A359826(#)]`
-/

namespace A359827.P7603834363018244815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359826 (f1 j).toNat = 1) n)

end

end A359827.P7603834363018244815

/-! ## A359827.P7144322496337384649

`filter[A073900(n+1), A359826(#)]`
-/

namespace A359827.P7144322496337384649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359826 (f1 j).toNat = 1) n)

end

end A359827.P7144322496337384649

/-! ## A359827.P5453100315490621354

`filter[A073899(n+1), A359826(#)]`
-/

namespace A359827.P5453100315490621354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359826 (f1 j).toNat = 1) n)

end

end A359827.P5453100315490621354

/-! ## A359827.P999382426098783497

`filter[A121543(n+1), A359826(#)]`
-/

namespace A359827.P999382426098783497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359826 (f1 j).toNat = 1) n)

end

end A359827.P999382426098783497

/-! ## A359827.P9262876091048543799

`filter[A089088(n), A359826(#)]`
-/

namespace A359827.P9262876091048543799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359826 (f1 j).toNat = 1) n)

end

end A359827.P9262876091048543799

/-! ## A359827.P12310428319912215248

`filter[A337843(n), A359826(#)]`
-/

namespace A359827.P12310428319912215248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359826 (f1 j).toNat = 1) n)

end

end A359827.P12310428319912215248

/-! ## A359827.P6146016665026275970

`filter[A143051(n+1), A359826(#)]`
-/

namespace A359827.P6146016665026275970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359826 (f1 j).toNat = 1) n)

end

end A359827.P6146016665026275970

/-!
# A359828: Characteristic function for primitive elements of A235992.

The programs for A359828, there is no canonical definition to state claims against.
-/

/-! ## A359828.P16625054225550201855

`A115359(A359780(n+1)+A000217(n+1))`
-/

namespace A359828.P16625054225550201855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 (A359780 (n + 1) + A000217 (n + 1)).toNat

end

end A359828.P16625054225550201855

/-! ## A359828.P12964339424393018751

`A129186(A359780(n+1)+A000096(n))`
-/

namespace A359828.P12964339424393018751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 (A359780 (n + 1) + A000096 n).toNat

end

end A359828.P12964339424393018751

/-! ## A359828.P5273655168431495450

`A114114(A359780(n+1)+A000217(n+1))`
-/

namespace A359828.P5273655168431495450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114114 (A359780 (n + 1) + A000217 (n + 1)).toNat

end

end A359828.P5273655168431495450

/-! ## A359828.P7785032233347981156

`A010051(A053607(n+1)+A359780(n+1)+1)`
-/

namespace A359828.P7785032233347981156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A053607 (n + 1) + (A359780 (n + 1) + 1)).toNat

end

end A359828.P7785032233347981156

/-! ## A359828.P17713239820809946352

`A124767(and(A282934(2*n+5), A359780(n+1)))`
-/

namespace A359828.P17713239820809946352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (Int.land (A282934 (2 * n + 5)) (A359780 (n + 1))).toNat

end

end A359828.P17713239820809946352

/-!
# A359829: Primitive elements of A235992: numbers k with an even arithmetic derivative that cannot be represented as a product of two smaller such numbers.

The programs for A359829, there is no canonical definition to state claims against.
-/

/-! ## A359829.P8520154763921744876

`eq[1, A359828(n+1)]+1`
-/

namespace A359829.P8520154763921744876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359829.P8520154763921744876

/-! ## A359829.P8443422573670933421

`record[and(n+1, A359780(n+1))]`
-/

namespace A359829.P8443422573670933421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A359780 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359829.P8443422573670933421

/-! ## A359829.P9406430148782895889

`lt[A359780(n+1), A000038(n)]+1`
-/

namespace A359829.P9406430148782895889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A359829.P9406430148782895889

/-! ## A359829.P9016467627682542868

`record[A000027(n+1)*A359828(n+1)]`
-/

namespace A359829.P9016467627682542868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A359828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359829.P9016467627682542868

/-! ## A359829.P6869203446156578605

`lt[A359780(n+1), A049084(3*(n+1))]+1`
-/

namespace A359829.P6869203446156578605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A359829.P6869203446156578605

/-! ## A359829.P13905603033811525957

`eq[A054977(n), A359828(A028310(n))]`
-/

namespace A359829.P13905603033811525957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359828 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359829.P13905603033811525957

/-!
# A359830: Numbers k such that A048675(k) is not a multiple of 3.

The programs for A359830, the canonical program `A359830.P7538047403356094708` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359830 has offset 1).

The definition of A359830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359830.P3201174838403847281

`lt[sqrt(a(A332813(n))), 2]` with `a(0)=4`
-/

namespace A359830.P3201174838403847281
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f1 =>
  Real.sqrt (f1 (A332813 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A359830.P3201174838403847281

namespace A359830

/-- `lt[sqrt(a(A332813(n))), 2]` -/
def P3201174838403847281.Spec : Prop :=
  ∀ n, (P3201174838403847281.a n : ℤ) = A359830 (n + 1)

end A359830

/-! ## A359830.P7538047403356094708

`eq[0, A353350(n+1)]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A359830

/-- `eq[0, A353350(n+1)]+1` -/
def P7538047403356094708.Spec : Prop :=
  ∀ n, (P7538047403356094708.a n : ℤ) = A359830 (n + 1)

theorem P7538047403356094708.correct : P7538047403356094708.Spec := by
  intro n
  simp only [A359830, Nat.add_sub_cancel]

end A359830

/-! ## A359830.P10234930250537687406

`eq[0, A353353(n+1)]+1`
-/

namespace A359830.P10234930250537687406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353353 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359830.P10234930250537687406

namespace A359830

/-- `eq[0, A353353(n+1)]+1` -/
def P10234930250537687406.Spec : Prop :=
  ∀ n, (P10234930250537687406.a n : ℤ) = A359830 (n + 1)

end A359830

/-! ## A359830.P16433340530562339489

`lt[0, A332813(n+1)]+1`
-/

namespace A359830.P16433340530562339489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359830.P16433340530562339489

namespace A359830

/-- `lt[0, A332813(n+1)]+1` -/
def P16433340530562339489.Spec : Prop :=
  ∀ n, (P16433340530562339489.a n : ℤ) = A359830 (n + 1)

end A359830

/-! ## A359830.P15755862934260044044

`eq[1, abs(A332823(n+1))]+1`
-/

namespace A359830.P15755862934260044044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A332823 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A359830.P15755862934260044044

namespace A359830

/-- `eq[1, abs(A332823(n+1))]+1` -/
def P15755862934260044044.Spec : Prop :=
  ∀ n, (P15755862934260044044.a n : ℤ) = A359830 (n + 1)

end A359830

/-! ## A359830.P9688345586635740440

`lt[A332823(2*(n+2)), 1]+2`
-/

namespace A359830.P9688345586635740440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332823 (2 * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A359830.P9688345586635740440

namespace A359830

/-- `lt[A332823(2*(n+2)), 1]+2` -/
def P9688345586635740440.Spec : Prop :=
  ∀ n, (P9688345586635740440.a n : ℤ) = A359830 (n + 1)

end A359830

/-! ## A359830.P11280671393142436325

`eq[1, A000045(a(A332813(n)))]` with `a(0)=3`
-/

namespace A359830.P11280671393142436325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A332813 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359830.P11280671393142436325

namespace A359830

/-- `eq[1, A000045(a(A332813(n)))]` -/
def P11280671393142436325.Spec : Prop :=
  ∀ n, (P11280671393142436325.a n : ℤ) = A359830 (n + 1)

end A359830

/-! ## A359830.P14124749346028334015

`eq[2, A000005(a(A332813(n)))]` with `a(0)=4`
-/

namespace A359830.P14124749346028334015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000005 (f2 (A332813 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A359830.P14124749346028334015

namespace A359830

/-- `eq[2, A000005(a(A332813(n)))]` -/
def P14124749346028334015.Spec : Prop :=
  ∀ n, (P14124749346028334015.a n : ℤ) = A359830 (n + 1)

end A359830

/-! ## A359830.P14352873160037728241

`lt[0, A332813(A028310(n))]`
-/

namespace A359830.P14352873160037728241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332813 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359830.P14352873160037728241

namespace A359830

/-- `lt[0, A332813(A028310(n))]` -/
def P14352873160037728241.Spec : Prop :=
  ∀ n, (P14352873160037728241.a n : ℤ) = A359830 (n + 1)

end A359830

/-! ## A359830.P15433587462751191084

`∪[A332821(n+1), A332822(n+1)]`
-/

namespace A359830.P15433587462751191084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359830.P15433587462751191084

namespace A359830

/-- `∪[A332821(n+1), A332822(n+1)]` -/
def P15433587462751191084.Spec : Prop :=
  ∀ n, (P15433587462751191084.a n : ℤ) = A359830 (n + 1)

end A359830

/-!
# A359831: Nonprimitive elements of A235992: numbers k such that their arithmetic derivative (A003415) is even, and also for some divisor d|k, 1<d<k, both d and k/d have even derivative.

The programs for A359831, there is no canonical definition to state claims against.
-/

/-! ## A359831.P9399549676723222214

`lt[3, A347456(n+1)]+1`
-/

namespace A359831.P9399549676723222214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347456 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359831.P9399549676723222214

/-! ## A359831.P8816405477619675416

`lt[3, A347456(A028310(n))]`
-/

namespace A359831.P8816405477619675416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347456 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A359831.P8816405477619675416

/-! ## A359831.P17032915730444294062

`A020725(lt[3, A347456(n+1)])`
-/

namespace A359831.P17032915730444294062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A359831.P17032915730444294062

/-! ## A359831.P7788585275762417848

`lt[A318307(n+1), A296131(n+1)]+1`
-/

namespace A359831.P7788585275762417848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296131 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A359831.P7788585275762417848

/-! ## A359831.P1224400799017368226

`lt[A206437(n+2), A000607(A323436(n))]`
-/

namespace A359831.P1224400799017368226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206437 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A323436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359831.P1224400799017368226

/-!
# A359832: a(n) = 1 if the 2-adic valuation of n is either 0 or odd, otherwise 0.

The programs for A359832, the canonical program `A359832.P2867967108972259624` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359832 has offset 1).

The definition of A359832 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A359832.P15543321795730724365

`1-A328981(n+1)`
-/

namespace A359832.P15543321795730724365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A328981 (n + 1)

end

end A359832.P15543321795730724365

namespace A359832

/-- `1-A328981(n+1)` -/
def P15543321795730724365.Spec : Prop :=
  ∀ n, P15543321795730724365.a n = A359832 (n + 1)

theorem P15543321795730724365.correct : P15543321795730724365.Spec := by
  intro n
  simp only [A359832, Nat.add_sub_cancel, A359832.P15543321795730724365.a, A359832.P2867967108972259624.a, A000035, A000035.P2023072528413494694.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A328981, A328981.P4173490097379195379.a, A297108, A297108.P15990807296291497671.a, A131577, A131577.P3998309598604981540.a, A297109, A297109.P3226708849595875613.a, A020500, A020500.P12751166166803317150.f1, A020500.P12751166166803317150.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A359832

/-! ## A359832.P2867967108972259624

`A000035(n+1+A048675(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A359832

/-- `A000035(n+1+A048675(n+1))` -/
def P2867967108972259624.Spec : Prop :=
  ∀ n, P2867967108972259624.a n = A359832 (n + 1)

theorem P2867967108972259624.correct : P2867967108972259624.Spec := by
  intro n
  simp only [A359832, Nat.add_sub_cancel]

end A359832

/-! ## A359832.P16265128700624544516

`val(lcm(2, n+1), 2)%2`
-/

namespace A359832.P16265128700624544516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lcm 2 (n + 1)) 2 % 2

end

end A359832.P16265128700624544516

namespace A359832

/-- `val(lcm(2, n+1), 2)%2` -/
def P16265128700624544516.Spec : Prop :=
  ∀ n, (P16265128700624544516.a n : ℤ) = A359832 (n + 1)

end A359832

/-! ## A359832.P3960559048074033067

`∏{d}[val(n+1, 2), #%2]`
-/

namespace A359832.P3960559048074033067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d % 2

end

end A359832.P3960559048074033067

namespace A359832

/-- `∏{d}[val(n+1, 2), #%2]` -/
def P3960559048074033067.Spec : Prop :=
  ∀ n, (P3960559048074033067.a n : ℤ) = A359832 (n + 1)

end A359832

/-! ## A359832.P12742834168660762166

`∏{p}[val(n+1, 2), #]%2`
-/

namespace A359832.P12742834168660762166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), p) % 2

end

end A359832.P12742834168660762166

namespace A359832

/-- `∏{p}[val(n+1, 2), #]%2` -/
def P12742834168660762166.Spec : Prop :=
  ∀ n, (P12742834168660762166.a n : ℤ) = A359832 (n + 1)

end A359832

/-! ## A359832.P14237463567055532894

`Δ[and(n, n+2)]²%3`
-/

namespace A359832.P14237463567055532894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) 3

end

end A359832.P14237463567055532894

namespace A359832

/-- `Δ[and(n, n+2)]²%3` -/
def P14237463567055532894.Spec : Prop :=
  ∀ n, P14237463567055532894.a n = A359832 (n + 1)

end A359832

/-! ## A359832.P5523856410880422328

`or(1, and(n, -(n+2)))%3`
-/

namespace A359832.P5523856410880422328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 1 (Int.land (n : ℤ) (-(n + 2 : ℤ)))) 3

end

end A359832.P5523856410880422328

namespace A359832

/-- `or(1, and(n, -(n+2)))%3` -/
def P5523856410880422328.Spec : Prop :=
  ∀ n, P5523856410880422328.a n = A359832 (n + 1)

end A359832

/-! ## A359832.P7304067299394836079

`(val(n+1, 2)+n+1)%2`
-/

namespace A359832.P7304067299394836079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 + (n + 1)) % 2

end

end A359832.P7304067299394836079

namespace A359832

/-- `(val(n+1, 2)+n+1)%2` -/
def P7304067299394836079.Spec : Prop :=
  ∀ n, (P7304067299394836079.a n : ℤ) = A359832 (n + 1)

end A359832

/-! ## A359832.P9774331092631731715

`and(1, val(n+1, 2)+n+1)`
-/

namespace A359832.P9774331092631731715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (n + 1) 2 + (n + 1))

end

end A359832.P9774331092631731715

namespace A359832

/-- `and(1, val(n+1, 2)+n+1)` -/
def P9774331092631731715.Spec : Prop :=
  ∀ n, (P9774331092631731715.a n : ℤ) = A359832 (n + 1)

end A359832

/-! ## A359832.P3771211160681850975

`A151857(n)%2`
-/

namespace A359832.P3771211160681850975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151857 n) 2

end

end A359832.P3771211160681850975

namespace A359832

/-- `A151857(n)%2` -/
def P3771211160681850975.Spec : Prop :=
  ∀ n, P3771211160681850975.a n = A359832 (n + 1)

end A359832

/-! ## A359832.P12440551001269945456

`A151858(n)%2`
-/

namespace A359832.P12440551001269945456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151858 n) 2

end

end A359832.P12440551001269945456

namespace A359832

/-- `A151858(n)%2` -/
def P12440551001269945456.Spec : Prop :=
  ∀ n, P12440551001269945456.a n = A359832 (n + 1)

end A359832

/-! ## A359832.P13298574226675644169

`A364900(n)%2`
-/

namespace A359832.P13298574226675644169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364900 n) 2

end

end A359832.P13298574226675644169

namespace A359832

/-- `A364900(n)%2` -/
def P13298574226675644169.Spec : Prop :=
  ∀ n, P13298574226675644169.a n = A359832 (n + 1)

end A359832

/-! ## A359832.P13387151175472741437

`A071974(n+1)%2`
-/

namespace A359832.P13387151175472741437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071974 (n + 1)) 2

end

end A359832.P13387151175472741437

namespace A359832

/-- `A071974(n+1)%2` -/
def P13387151175472741437.Spec : Prop :=
  ∀ n, P13387151175472741437.a n = A359832 (n + 1)

end A359832

/-! ## A359832.P330919610415231110

`A075326(n+1)%2`
-/

namespace A359832.P330919610415231110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075326 (n + 1)) 2

end

end A359832.P330919610415231110

namespace A359832

/-- `A075326(n+1)%2` -/
def P330919610415231110.Spec : Prop :=
  ∀ n, P330919610415231110.a n = A359832 (n + 1)

end A359832

/-! ## A359832.P17336649768060076124

`A090740(n+1)%2`
-/

namespace A359832.P17336649768060076124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090740 (n + 1)) 2

end

end A359832.P17336649768060076124

namespace A359832

/-- `A090740(n+1)%2` -/
def P17336649768060076124.Spec : Prop :=
  ∀ n, P17336649768060076124.a n = A359832 (n + 1)

end A359832

/-! ## A359832.P17196793967828579017

`A297469(n+1)%2`
-/

namespace A359832.P17196793967828579017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297469 (n + 1)) 2

end

end A359832.P17196793967828579017

namespace A359832

/-- `A297469(n+1)%2` -/
def P17196793967828579017.Spec : Prop :=
  ∀ n, P17196793967828579017.a n = A359832 (n + 1)

end A359832

/-! ## A359832.P9816903027239475580

`A309231(n+1)%2`
-/

namespace A359832.P9816903027239475580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309231 (n + 1)) 2

end

end A359832.P9816903027239475580

namespace A359832

/-- `A309231(n+1)%2` -/
def P9816903027239475580.Spec : Prop :=
  ∀ n, P9816903027239475580.a n = A359832 (n + 1)

end A359832

/-! ## A359832.P14725823065494775688

`A331738(n+1)%2`
-/

namespace A359832.P14725823065494775688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331738 (n + 1)) 2

end

end A359832.P14725823065494775688

namespace A359832

/-- `A331738(n+1)%2` -/
def P14725823065494775688.Spec : Prop :=
  ∀ n, P14725823065494775688.a n = A359832 (n + 1)

end A359832

/-! ## A359832.P8041242850401733918

`A336643(n+1)%2`
-/

namespace A359832.P8041242850401733918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336643 (n + 1)) 2

end

end A359832.P8041242850401733918

namespace A359832

/-- `A336643(n+1)%2` -/
def P8041242850401733918.Spec : Prop :=
  ∀ n, P8041242850401733918.a n = A359832 (n + 1)

end A359832

/-! ## A359832.P4037461615497722600

`A341865(n+1)%2`
-/

namespace A359832.P4037461615497722600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341865 (n + 1)) 2

end

end A359832.P4037461615497722600

namespace A359832

/-- `A341865(n+1)%2` -/
def P4037461615497722600.Spec : Prop :=
  ∀ n, P4037461615497722600.a n = A359832 (n + 1)

end A359832

/-!
# A359833: Dirichlet inverse of A359832, where A359832(n) = 1 if the 2-adic valuation of n is either 0 or odd, otherwise 0.

The programs for A359833, the canonical program `A359833.P15086300142529714947` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359833 has offset 1).

The definition of A359833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359833.P1212650518941551390

`A353627(n+1)*A355936(n+1)`
-/

namespace A359833.P1212650518941551390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (n + 1) * A355936 (n + 1)

end

end A359833.P1212650518941551390

namespace A359833

/-- `A353627(n+1)*A355936(n+1)` -/
def P1212650518941551390.Spec : Prop :=
  ∀ n, P1212650518941551390.a n = A359833 (n + 1)

end A359833

/-! ## A359833.P16762638377161180418

`abs(A209635(n+1))*A355936(n+1)`
-/

namespace A359833.P16762638377161180418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A209635 (n + 1)| * A355936 (n + 1)

end

end A359833.P16762638377161180418

namespace A359833

/-- `abs(A209635(n+1))*A355936(n+1)` -/
def P16762638377161180418.Spec : Prop :=
  ∀ n, P16762638377161180418.a n = A359833 (n + 1)

end A359833

/-! ## A359833.P15086300142529714947

`A000045(∏{e}[n+1, #])*A355689(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A359833

/-- `A000045(∏{e}[n+1, #])*A355689(n+1)` -/
def P15086300142529714947.Spec : Prop :=
  ∀ n, P15086300142529714947.a n = A359833 (n + 1)

theorem P15086300142529714947.correct : P15086300142529714947.Spec := by
  intro n
  simp only [A359833, Nat.add_sub_cancel]

end A359833

/-! ## A359833.P5573150116331829671

`A000045(A005361(n+1))*A355689(n+1)`
-/

namespace A359833.P5573150116331829671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A005361 (n + 1)).toNat * A355689 (n + 1)

end

end A359833.P5573150116331829671

namespace A359833

/-- `A000045(A005361(n+1))*A355689(n+1)` -/
def P5573150116331829671.Spec : Prop :=
  ∀ n, P5573150116331829671.a n = A359833 (n + 1)

end A359833

/-! ## A359833.P442714814912409392

`A000045(A290107(n+1))*A355689(n+1)`
-/

namespace A359833.P442714814912409392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A290107 (n + 1)).toNat * A355689 (n + 1)

end

end A359833.P442714814912409392

namespace A359833

/-- `A000045(A290107(n+1))*A355689(n+1)` -/
def P442714814912409392.Spec : Prop :=
  ∀ n, P442714814912409392.a n = A359833 (n + 1)

end A359833

/-!
# A359834: Parity of Dirichlet inverse of A359832, where A359832(n) = 1 if the 2-adic valuation of n is either 0 or odd, otherwise 0.

The programs for A359834, the canonical program `A359834.P8118747049772739298` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359834 has offset 1).

The definition of A359834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359834.P5417006149123564172

`and(1, A359833(n+1))`
-/

namespace A359834.P5417006149123564172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359833 (n + 1))

end

end A359834.P5417006149123564172

namespace A359834

/-- `and(1, A359833(n+1))` -/
def P5417006149123564172.Spec : Prop :=
  ∀ n, P5417006149123564172.a n = A359834 (n + 1)

end A359834

/-! ## A359834.P1833765749772593456

`A359590(A022998(n+1))`
-/

namespace A359834.P1833765749772593456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359590 (A022998 (n + 1)).toNat

end

end A359834.P1833765749772593456

namespace A359834

/-- `A359590(A022998(n+1))` -/
def P1833765749772593456.Spec : Prop :=
  ∀ n, P1833765749772593456.a n = A359834 (n + 1)

end A359834

/-! ## A359834.P8528464746660520142

`A359590(A060819(n+1))`
-/

namespace A359834.P8528464746660520142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359590 (A060819 (n + 1)).toNat

end

end A359834.P8528464746660520142

namespace A359834

/-- `A359590(A060819(n+1))` -/
def P8528464746660520142.Spec : Prop :=
  ∀ n, P8528464746660520142.a n = A359834 (n + 1)

end A359834

/-! ## A359834.P6865285799704126937

`A059841(abs(A359833(n+1)+1))`
-/

namespace A359834.P6865285799704126937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 |A359833 (n + 1) + 1|.toNat

end

end A359834.P6865285799704126937

namespace A359834

/-- `A059841(abs(A359833(n+1)+1))` -/
def P6865285799704126937.Spec : Prop :=
  ∀ n, P6865285799704126937.a n = A359834 (n + 1)

end A359834

/-! ## A359834.P8118747049772739298

`lcm(A209635(n+1), A332732(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A359834

/-- `lcm(A209635(n+1), A332732(n+1))` -/
def P8118747049772739298.Spec : Prop :=
  ∀ n, (P8118747049772739298.a n : ℤ) = A359834 (n + 1)

theorem P8118747049772739298.correct : P8118747049772739298.Spec := by
  intro n
  simp only [A359834, Nat.add_sub_cancel]

end A359834

/-! ## A359834.P5075868464915994707

`lcm(A355689(n+1), A387298(n+1))`
-/

namespace A359834.P5075868464915994707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A355689 (n + 1)) (A387298 (n + 1))

end

end A359834.P5075868464915994707

namespace A359834

/-- `lcm(A355689(n+1), A387298(n+1))` -/
def P5075868464915994707.Spec : Prop :=
  ∀ n, (P5075868464915994707.a n : ℤ) = A359834 (n + 1)

end A359834

/-! ## A359834.P6686352874854965746

`(A355690(2*(n+1))+A008683(2*(n+1)))²`
-/

namespace A359834.P6686352874854965746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A355690 (2 * (n + 1)) + A008683 (2 * (n + 1))) ^ 2

end

end A359834.P6686352874854965746

namespace A359834

/-- `(A355690(2*(n+1))+A008683(2*(n+1)))²` -/
def P6686352874854965746.Spec : Prop :=
  ∀ n, P6686352874854965746.a n = A359834 (n + 1)

end A359834

/-! ## A359834.P13567166243781703896

`A355690(Δ[A001082(n+1)])²`
-/

namespace A359834.P13567166243781703896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355690 (f1 (n + 1) - f1 n).toNat ^ 2

end

end A359834.P13567166243781703896

namespace A359834

/-- `A355690(Δ[A001082(n+1)])²` -/
def P13567166243781703896.Spec : Prop :=
  ∀ n, P13567166243781703896.a n = A359834 (n + 1)

end A359834

/-! ## A359834.P4899055239508478820

`A000035(A359833(n+1)+2*n)`
-/

namespace A359834.P4899055239508478820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A359833 (n + 1) + (2 * n : ℤ)).toNat

end

end A359834.P4899055239508478820

namespace A359834

/-- `A000035(A359833(n+1)+2*n)` -/
def P4899055239508478820.Spec : Prop :=
  ∀ n, P4899055239508478820.a n = A359834 (n + 1)

end A359834

/-! ## A359834.P15833076507008647700

`A000035(A359833(n+1)²)`
-/

namespace A359834.P15833076507008647700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A359833 (n + 1) ^ 2).toNat

end

end A359834.P15833076507008647700

namespace A359834

/-- `A000035(A359833(n+1)²)` -/
def P15833076507008647700.Spec : Prop :=
  ∀ n, P15833076507008647700.a n = A359834 (n + 1)

end A359834

/-! ## A359834.P18202366092575190262

`A096268(A359833(n+1)²)`
-/

namespace A359834.P18202366092575190262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A359833 (n + 1) ^ 2).toNat

end

end A359834.P18202366092575190262

namespace A359834

/-- `A096268(A359833(n+1)²)` -/
def P18202366092575190262.Spec : Prop :=
  ∀ n, P18202366092575190262.a n = A359834 (n + 1)

end A359834

/-! ## A359834.P6226332696038081914

`A059841((A359833(n+1)+1)²)`
-/

namespace A359834.P6226332696038081914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 ((A359833 (n + 1) + 1) ^ 2).toNat

end

end A359834.P6226332696038081914

namespace A359834

/-- `A059841((A359833(n+1)+1)²)` -/
def P6226332696038081914.Spec : Prop :=
  ∀ n, P6226332696038081914.a n = A359834 (n + 1)

end A359834

/-! ## A359834.P5305304726905877327

`A096268(A359833(n+1)*A359833(n+1))`
-/

namespace A359834.P5305304726905877327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A359833 (n + 1) * A359833 (n + 1)).toNat

end

end A359834.P5305304726905877327

namespace A359834

/-- `A096268(A359833(n+1)*A359833(n+1))` -/
def P5305304726905877327.Spec : Prop :=
  ∀ n, P5305304726905877327.a n = A359834 (n + 1)

end A359834

/-! ## A359834.P1036801861493353421

`A000035(A108269(n+1)-A359833(n+1))`
-/

namespace A359834.P1036801861493353421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A108269 (n + 1) - A359833 (n + 1)).toNat

end

end A359834.P1036801861493353421

namespace A359834

/-- `A000035(A108269(n+1)-A359833(n+1))` -/
def P1036801861493353421.Spec : Prop :=
  ∀ n, P1036801861493353421.a n = A359834 (n + 1)

end A359834

/-! ## A359834.P6507506153499144064

`abs(A355691((n+1)²))`
-/

namespace A359834.P6507506153499144064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355691 ((n + 1) ^ 2)|

end

end A359834.P6507506153499144064

namespace A359834

/-- `abs(A355691((n+1)²))` -/
def P6507506153499144064.Spec : Prop :=
  ∀ n, P6507506153499144064.a n = A359834 (n + 1)

end A359834

/-! ## A359834.P2093401224705265362

`A355691(∑[2*n+1])²`
-/

namespace A359834.P2093401224705265362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355691 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A359834.P2093401224705265362

namespace A359834

/-- `A355691(∑[2*n+1])²` -/
def P2093401224705265362.Spec : Prop :=
  ∀ n, P2093401224705265362.a n = A359834 (n + 1)

end A359834

/-!
# A359835: a(n) = 0 if A353418(n) = 0, otherwise 1. Here A353418 is Dirichlet inverse of the characteristic function for numbers k at which points A156552(k) is a multiple of 3.

The programs for A359835, there is no canonical definition to state claims against.
-/

/-! ## A359835.P12807858745027297338

`char[lt[0, A353418(n+1)²]]`
-/

namespace A359835.P12807858745027297338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353418 (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A359835.P12807858745027297338

/-! ## A359835.P9678509763609819626

`A011623(A353418(n+1)²)`
-/

namespace A359835.P9678509763609819626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011623 (A353418 (n + 1) ^ 2).toNat

end

end A359835.P9678509763609819626

/-! ## A359835.P579989535847032765

`A249442(lcm(8, A353418(n+1)))`
-/

namespace A359835.P579989535847032765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 (Int.lcm 8 (A353418 (n + 1)))

end

end A359835.P579989535847032765

/-! ## A359835.P5601131742494498531

`ceil((A353418(n+1)/A003961(n+1))²)`
-/

namespace A359835.P5601131742494498531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A353418 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ)) ^ 2⌉

end

end A359835.P5601131742494498531

/-! ## A359835.P2472330226799331790

`ceil((A353418(n+1)/A348717(n+1))²)`
-/

namespace A359835.P2472330226799331790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A353418 (n + 1) : ℚ) / (A348717 (n + 1) : ℚ)) ^ 2⌉

end

end A359835.P2472330226799331790

/-! ## A359835.P2631866055917653517

`ceil((A353418(n+1)/A353362(n+1))²)`
-/

namespace A359835.P2631866055917653517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A353418 (n + 1) : ℚ) / (A353362 (n + 1) : ℚ)) ^ 2⌉

end

end A359835.P2631866055917653517

/-! ## A359835.P17887500885162874523

`gcd(A003961(2*n+5), A353418(n+1))%A003961(2*n+5)`
-/

namespace A359835.P17887500885162874523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.gcd (A003961 (2 * n + 5)) (A353418 (n + 1)) : ℤ) (A003961 (2 * n + 5))

end

end A359835.P17887500885162874523

/-! ## A359835.P9149128390035114689

`ceil((A353418(n+1)/A156552(n+4))²)`
-/

namespace A359835.P9149128390035114689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A353418 (n + 1) : ℚ) / (A156552 (n + 4) : ℚ)) ^ 2⌉

end

end A359835.P9149128390035114689

/-! ## A359835.P12958935942694854801

`A353380(gcd(A353408(n+1), A353418(n+1)))`
-/

namespace A359835.P12958935942694854801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353380 (Int.gcd (A353408 (n + 1)) (A353418 (n + 1)))

end

end A359835.P12958935942694854801

/-!
# A359836: Parity of A353418, where A353418 is Dirichlet inverse of the characteristic function for numbers k where A156552(k) is a multiple of 3.

The programs for A359836, there is no canonical definition to state claims against.
-/

/-! ## A359836.P8173944002678416140

`and(1, A353418(n+1))`
-/

namespace A359836.P8173944002678416140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A353418 (n + 1))

end

end A359836.P8173944002678416140

/-! ## A359836.P5290862678348998819

`A000035(abs(A353418(n+1)))`
-/

namespace A359836.P5290862678348998819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 |A353418 (n + 1)|.toNat

end

end A359836.P5290862678348998819

/-! ## A359836.P2742788761144764667

`A166486(A353418(n+1)²)`
-/

namespace A359836.P2742788761144764667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A353418 (n + 1) ^ 2).toNat

end

end A359836.P2742788761144764667

/-! ## A359836.P10377837746540365528

`A059841(A353419(n+1)+A323902(n+1))`
-/

namespace A359836.P10377837746540365528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A353419 (n + 1) + A323902 (n + 1)).toNat

end

end A359836.P10377837746540365528

/-! ## A359836.P6107667510044544670

`A353370(A123098(A353418(n+1)²))`
-/

namespace A359836.P6107667510044544670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353370 (A123098 (A353418 (n + 1) ^ 2).toNat).toNat

end

end A359836.P6107667510044544670

/-! ## A359836.P17660541974127638951

`(A353418(n+1)^A000040(n+1))²`
-/

namespace A359836.P17660541974127638951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A353418 (n + 1) : ℚ) ^ (A000040 (n + 1) : ℤ)) ^ 2

end

end A359836.P17660541974127638951

/-! ## A359836.P4415840441030431576

`and(A006569(n), A359835(n+1))`
-/

namespace A359836.P4415840441030431576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006569 n) (A359835 (n + 1))

end

end A359836.P4415840441030431576

/-! ## A359836.P2718847801583603495

`and(A009211(n), A359835(n+1))`
-/

namespace A359836.P2718847801583603495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009211 n) (A359835 (n + 1))

end

end A359836.P2718847801583603495

/-! ## A359836.P3691775795562022110

`and(A051439(n), A359835(n+1))`
-/

namespace A359836.P3691775795562022110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051439 n) (A359835 (n + 1))

end

end A359836.P3691775795562022110

/-! ## A359836.P7429636482627582337

`and(A002189(n), A359835(n+1))`
-/

namespace A359836.P7429636482627582337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002189 n) (A359835 (n + 1))

end

end A359836.P7429636482627582337

/-!
# A359840: Numbers k that are the representation of primes in base 4 and in base 5.

The programs for A359840, the canonical program `A359840.P15365432037314695994` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359840 has offset 1).

The definition of A359840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359840.P10918725820084485961

`A007090(A235474(n+1))`
-/

namespace A359840.P10918725820084485961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A235474 (n + 1)).toNat

end

end A359840.P10918725820084485961

namespace A359840

/-- `A007090(A235474(n+1))` -/
def P10918725820084485961.Spec : Prop :=
  ∀ n, P10918725820084485961.a n = A359840 (n + 1)

end A359840

/-! ## A359840.P5572459004122807786

`A007091(A235615(n+1))`
-/

namespace A359840.P5572459004122807786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A235615 (n + 1)).toNat

end

end A359840.P5572459004122807786

namespace A359840

/-- `A007091(A235615(n+1))` -/
def P5572459004122807786.Spec : Prop :=
  ∀ n, P5572459004122807786.a n = A359840 (n + 1)

end A359840

/-! ## A359840.P15365432037314695994

`∩[A004678(n+1), A004679(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A359840

/-- `∩[A004678(n+1), A004679(n+1)]` -/
def P15365432037314695994.Spec : Prop :=
  ∀ n, (P15365432037314695994.a n : ℤ) = A359840 (n + 1)

theorem P15365432037314695994.correct : P15365432037314695994.Spec := by
  intro n
  simp only [A359840, Nat.add_sub_cancel]

end A359840

/-! ## A359840.P17178176157367036708

`∩[A004679(n+1), A007090(A182986(n+1))]`
-/

namespace A359840.P17178176157367036708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A182986 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359840.P17178176157367036708

namespace A359840

/-- `∩[A004679(n+1), A007090(A182986(n+1))]` -/
def P17178176157367036708.Spec : Prop :=
  ∀ n, (P17178176157367036708.a n : ℤ) = A359840 (n + 1)

end A359840

/-!
# A359841: Integers Xd which are divisible by X, where d is the last decimal digit.

The programs for A359841, the canonical program `A359841.P7722481679361690629` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359841 has offset 1).

The definition of A359841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1022 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359841.P7722481679361690629

`eq[lcm(n, A059995(n)), A028310(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A359841

/-- `eq[lcm(n, A059995(n)), A028310(n)]` -/
def P7722481679361690629.Spec : Prop :=
  ∀ n, (P7722481679361690629.a n : ℤ) = A359841 (n + 1)

theorem P7722481679361690629.correct : P7722481679361690629.Spec := by
  intro n
  simp only [A359841, Nat.add_sub_cancel]

end A359841

/-!
# A359843: Array listed by antidiagonals: row m is the numbers k such that prime(i)+k is prime for i from m to j where prime(j+1) = A360228(m).

The programs for A359843, there is no canonical definition to state claims against.
-/

/-! ## A359843.P662563347848589682

`A071867(A325849(2*n+3))%A249115(n+1)`
-/

namespace A359843.P662563347848589682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071867 (A325849 (2 * n + 3)).toNat) (A249115 (n + 1))

end

end A359843.P662563347848589682

/-!
# A359844: a(n) = ((2*n+1)^8 + 1)/2.

The programs for A359844, the canonical program `A359844.P3476761026987481568` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359844 has offset 0).

The definition of A359844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359844.P14307242303740029935

`((2*n+1)^8+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359844.P14307242303740029935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 8 + 1 : ℚ) / 2

end

end A359844.P14307242303740029935

namespace A359844

/-- `((2*n+1)^8+1)/2` -/
def P14307242303740029935.Spec : Prop :=
  ∀ n, P14307242303740029935.a n = (A359844 n : ℚ)

end A359844

/-! ## A359844.P3476761026987481568

`16*A359498(n)+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A359844

/-- `16*A359498(n)+1` -/
def P3476761026987481568.Spec : Prop :=
  ∀ n, P3476761026987481568.a n = A359844 n

theorem P3476761026987481568.correct : P3476761026987481568.Spec := by
  intro n
  simp only [A359844]

end A359844

/-! ## A359844.P4789418343144563493

`ceil(cosh(8*log(2*n+1)))`
-/

namespace A359844.P4789418343144563493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (8 * Real.log (2 * n + 1 : ℝ))⌉

end

end A359844.P4789418343144563493

namespace A359844

/-- `ceil(cosh(8*log(2*n+1)))` -/
def P4789418343144563493.Spec : Prop :=
  ∀ n, P4789418343144563493.a n = A359844 n

end A359844

/-! ## A359844.P8098909718500490760

`A191495(2*n)`
-/

namespace A359844.P8098909718500490760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191495 (2 * n)

end

end A359844.P8098909718500490760

namespace A359844

/-- `A191495(2*n)` -/
def P8098909718500490760.Spec : Prop :=
  ∀ n, P8098909718500490760.a n = A359844 n

end A359844

/-! ## A359844.P2798549596457766312

`A191899(2*n)+1`
-/

namespace A359844.P2798549596457766312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191899 (2 * n) + 1

end

end A359844.P2798549596457766312

namespace A359844

/-- `A191899(2*n)+1` -/
def P2798549596457766312.Spec : Prop :=
  ∀ n, P2798549596457766312.a n = A359844 n

end A359844

/-! ## A359844.P17744360335620757028

`A168067(Δ[n²])-n`
-/

namespace A359844.P17744360335620757028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168067 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A359844.P17744360335620757028

namespace A359844

/-- `A168067(Δ[n²])-n` -/
def P17744360335620757028.Spec : Prop :=
  ∀ n, P17744360335620757028.a n = A359844 n

end A359844

/-! ## A359844.P11998040430657428251

`floor(sqrt(A283028(2*n+1)))`
-/

namespace A359844.P11998040430657428251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A283028 (2 * n + 1))

end

end A359844.P11998040430657428251

namespace A359844

/-- `floor(sqrt(A283028(2*n+1)))` -/
def P11998040430657428251.Spec : Prop :=
  ∀ n, P11998040430657428251.a n = A359844 n

end A359844

/-! ## A359844.P4683466666233606631

`round(sqrt(A283027(2*n+1)))`
-/

namespace A359844.P4683466666233606631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A283027 (2 * n + 1) : ℝ))

end

end A359844.P4683466666233606631

namespace A359844

/-- `round(sqrt(A283027(2*n+1)))` -/
def P4683466666233606631.Spec : Prop :=
  ∀ n, P4683466666233606631.a n = A359844 n

end A359844

/-! ## A359844.P9529036871651535695

`round(A001016(2*n+1)/2)`
-/

namespace A359844.P9529036871651535695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001016 (2 * n + 1) : ℚ) / 2)

end

end A359844.P9529036871651535695

namespace A359844

/-- `round(A001016(2*n+1)/2)` -/
def P9529036871651535695.Spec : Prop :=
  ∀ n, P9529036871651535695.a n = A359844 n

end A359844

/-! ## A359844.P4386515917068160546

`A175110(∑[4*n])`
-/

namespace A359844.P4386515917068160546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175110 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A359844.P4386515917068160546

namespace A359844

/-- `A175110(∑[4*n])` -/
def P4386515917068160546.Spec : Prop :=
  ∀ n, P4386515917068160546.a n = A359844 n

end A359844

/-!
# A359847: Oblong numbers k for which phi(k) is also an oblong number.

The programs for A359847, there is no canonical definition to state claims against.
-/

/-! ## A359847.P17691540895207679261

`∩[A236386(n+1), A002378(n)]`
-/

namespace A359847.P17691540895207679261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359847.P17691540895207679261

/-!
# A359848: a(n) is the smallest tribonacci number (A000073) with exactly n distinct prime factors.

The programs for A359848, there is no canonical definition to state claims against.
-/

/-! ## A359848.P5329409524811269162

`A000073(A359850(n))`
-/

namespace A359848.P5329409524811269162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A359850 n).toNat

end

end A359848.P5329409524811269162

/-!
# A359849: a(n) is the smallest tetranacci number (A000078) with exactly n distinct prime factors.

The programs for A359849, there is no canonical definition to state claims against.
-/

/-! ## A359849.P17830784757558350604

`A000078(A359851(n))`
-/

namespace A359849.P17830784757558350604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (A359851 n).toNat

end

end A359849.P17830784757558350604

/-!
# A359855: Array read by antidiagonals: T(n,k) is the number of Hamiltonian cycles in the stacked prism graph P_n X C_k, n >= 1, k >= 2.

The programs for A359855, there is no canonical definition to state claims against.
-/

/-! ## A359855.P14443109389504552128

`or(A013943(2*n+1), A125250(A375635(n)))`
-/

namespace A359855.P14443109389504552128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A013943 (2 * n + 1)) (A125250 (A375635 n).toNat)

end

end A359855.P14443109389504552128

/-! ## A359855.P4889222258345966379

`A013943(2*n+1)+A010054(A037019(n+5))`
-/

namespace A359855.P4889222258345966379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013943 (2 * n + 1) + A010054 (A037019 (n + 5)).toNat

end

end A359855.P4889222258345966379

/-!
# A359856: Number of permutations of [1..n] which are indecomposable by direct and skew sums.

The programs for A359856, there is no canonical definition to state claims against.
-/

/-! ## A359856.P11781008977241026787

`A003319(n)-A356291(n)`
-/

namespace A359856.P11781008977241026787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003319 n - A356291 n

end

end A359856.P11781008977241026787

/-! ## A359856.P13206448110976107377

`2*A003319(n)-A000142(n)`
-/

namespace A359856.P13206448110976107377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003319 n - A000142 n

end

end A359856.P13206448110976107377

/-! ## A359856.P14236989832002914538

`A000142(n)-2*A356291(n)`
-/

namespace A359856.P14236989832002914538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - 2 * A356291 n

end

end A359856.P14236989832002914538

/-! ## A359856.P11515670315729488239

`A263484(A179865(n+1))-A356291(n)`
-/

namespace A359856.P11515670315729488239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263484 (A179865 (n + 1)).toNat - A356291 n

end

end A359856.P11515670315729488239

/-! ## A359856.P17697987448634801214

`A003319(n)+A057428(n)*A356291(n)`
-/

namespace A359856.P17697987448634801214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003319 n + A057428 n * A356291 n

end

end A359856.P17697987448634801214

/-!
# A359859: Number of vertices among all distinct circles that can be constructed from a 2 x n square grid of points using only a compass.

The programs for A359859, there is no canonical definition to state claims against.
-/

/-! ## A359859.P10697998041218720887

`A359861(n+1)-A359860(n+1)+1`
-/

namespace A359859.P10697998041218720887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359861 (n + 1) - A359860 (n + 1) + 1

end

end A359859.P10697998041218720887

/-! ## A359859.P15041304745872044958

`A359861(n+1)-A023443(A359860(n+1))`
-/

namespace A359859.P15041304745872044958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359861 (n + 1) - A023443 (A359860 (n + 1)).toNat

end

end A359859.P15041304745872044958

/-!
# A359860: Number of regions among all distinct circles that can be constructed from a 2 X n square grid of points using only a compass.

The programs for A359860, there is no canonical definition to state claims against.
-/

/-! ## A359860.P17572371255515803780

`A359861(n+1)-A359859(n+1)+1`
-/

namespace A359860.P17572371255515803780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359861 (n + 1) - A359859 (n + 1) + 1

end

end A359860.P17572371255515803780

/-! ## A359860.P2361936123296654903

`A004442(A359861(n+1)-A359859(n+1))`
-/

namespace A359860.P2361936123296654903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A359861 (n + 1) - A359859 (n + 1)).toNat

end

end A359860.P2361936123296654903

/-!
# A359861: Number of edges among all distinct circles that can be constructed from a 2 X n square grid of points using only a compass.

The programs for A359861, there is no canonical definition to state claims against.
-/

/-! ## A359861.P10169483787694698707

`A359859(n+1)+A359860(n+1)-1`
-/

namespace A359861.P10169483787694698707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359859 (n + 1) + (A359860 (n + 1) - 1)

end

end A359861.P10169483787694698707

/-! ## A359861.P15239326776350937503

`A359859(n+1)+A023443(A359860(n+1))`
-/

namespace A359861.P15239326776350937503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359859 (n + 1) + A023443 (A359860 (n + 1)).toNat

end

end A359861.P15239326776350937503

/-!
# A359863: a(n) = Sum_{d|n} d^(n/d) * (n/d)^d.

The programs for A359863, the canonical program `A359863.P2753320676028087520` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359863 has offset 1).

The definition of A359863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359863.P2753320676028087520

`∑{d}[n+1, #^((n+1)/#)*((n+1)/#)^#]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A359863

/-- `∑{d}[n+1, #^((n+1)/#)*((n+1)/#)^#]` -/
def P2753320676028087520.Spec : Prop :=
  ∀ n, P2753320676028087520.a n = (A359863 (n + 1) : ℝ)

end A359863

/-! ## A359863.P14381520812909637995

`(n+1)*A359004(n+1)`
-/

namespace A359863.P14381520812909637995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A359004 (n + 1)

end

end A359863.P14381520812909637995

namespace A359863

/-- `(n+1)*A359004(n+1)` -/
def P14381520812909637995.Spec : Prop :=
  ∀ n, P14381520812909637995.a n = A359863 (n + 1)

end A359863

/-!
# A359866: a(n) is the number of k > 0 such that n-1-2*k >= 0 and a(n-1-2*k) >= a(n-1-k) >= a(n-1).

The programs for A359866, there is no canonical definition to state claims against.
-/

/-! ## A359866.P13334185834883371435

`A065040(A267957(n+1)+14)`
-/

namespace A359866.P13334185834883371435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065040 (A267957 (n + 1) + 14).toNat

end

end A359866.P13334185834883371435

/-! ## A359866.P5459961092334407733

`A292378(∑{p}[A223762(n+1), #])`
-/

namespace A359866.P5459961092334407733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292378 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A359866.P5459961092334407733

/-! ## A359866.P9631135740138054988

`A122066(A217547(n+1))-A099774(A217547(n+1))`
-/

namespace A359866.P9631135740138054988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122066 (A217547 (n + 1)).toNat - A099774 (A217547 (n + 1)).toNat

end

end A359866.P9631135740138054988

/-! ## A359866.P12678781376283269802

`val(A038813(A198914(n+1)), 2)`
-/

namespace A359866.P12678781376283269802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A038813 (A198914 (n + 1)).toNat).toNat 2

end

end A359866.P12678781376283269802

/-! ## A359866.P3947289885015921668

`∑{e}[A298382(A223227(n+1)), #]`
-/

namespace A359866.P3947289885015921668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298382 (A223227 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A359866.P3947289885015921668

/-!
# A359867: a(n) is the number of k > 0 such that n-1-2*k >= 0 and a(n-1-2*k) >= a(n-1-k) + a(n-1).

The programs for A359867, there is no canonical definition to state claims against.
-/

/-! ## A359867.P13752444012621635535

`A181786(lt[0, A065984(3*(n+1))])`
-/

namespace A359867.P13752444012621635535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065984 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181786 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A359867.P13752444012621635535

/-! ## A359867.P17975220193310554616

`A181786(comp[8*n-3])%A139056(n+1)`
-/

namespace A359867.P17975220193310554616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181786 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A139056 (n + 1))

end

end A359867.P17975220193310554616

/-! ## A359867.P4319226729850909074

`A350560(n+1)-A236862(A005803(n))`
-/

namespace A359867.P4319226729850909074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350560 (n + 1) - A236862 (A005803 n).toNat

end

end A359867.P4319226729850909074

/-! ## A359867.P501258329241815676

`A257511(A296302(n+1)%A001250(n))`
-/

namespace A359867.P501258329241815676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 (Int.tmod (A296302 (n + 1)) (A001250 n)).toNat

end

end A359867.P501258329241815676

/-! ## A359867.P9130885428305372715

`A328171(A095794(n+1))%A328171(n+2)`
-/

namespace A359867.P9130885428305372715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328171 (A095794 (n + 1)).toNat) (A328171 (n + 2))

end

end A359867.P9130885428305372715

/-!
# A359868: a(n) is the smallest prime q such that A305411(n) + q is a square.

The programs for A359868, there is no canonical definition to state claims against.
-/

/-! ## A359868.P16659890653623978727

`A075555(A305411(n+1))`
-/

namespace A359868.P16659890653623978727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075555 (A305411 (n + 1)).toNat

end

end A359868.P16659890653623978727

/-! ## A359868.P1211162144630682065

`A157480(A259226(n+1))`
-/

namespace A359868.P1211162144630682065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157480 (A259226 (n + 1)).toNat

end

end A359868.P1211162144630682065

/-! ## A359868.P16024165424826107838

`A259232(or(char[1], A259226(n+1)))`
-/

namespace A359868.P16024165424826107838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259232 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A259226 (n + 1))).toNat

end

end A359868.P16024165424826107838

/-! ## A359868.P12605206266301477470

`A259232(eq[1, char[A259226(n+1)]])`
-/

namespace A359868.P12605206266301477470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259226 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259232 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A359868.P12605206266301477470

/-! ## A359868.P6458177048793546525

`A259232(A259226(2*n+1-n))`
-/

namespace A359868.P6458177048793546525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259232 (A259226 (2 * n + 1 - n)).toNat

end

end A359868.P6458177048793546525

/-!
# A359869: Numbers whose product of distinct prime factors is less than the sum of its prime factors (with repetition).

The programs for A359869, the canonical program `A359869.P15930042732878126221` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359869 has offset 1).

The definition of A359869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359869.P14492720064954277465

`lt[A007947(n+1), A001414(n+1)]+1`
-/

namespace A359869.P14492720064954277465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A359869.P14492720064954277465

namespace A359869

/-- `lt[A007947(n+1), A001414(n+1)]+1` -/
def P14492720064954277465.Spec : Prop :=
  ∀ n, (P14492720064954277465.a n : ℤ) = A359869 (n + 1)

end A359869

/-! ## A359869.P15930042732878126221

`lt[∏{p}[n+1, #], A352167(n+1)]+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A359869

/-- `lt[∏{p}[n+1, #], A352167(n+1)]+1` -/
def P15930042732878126221.Spec : Prop :=
  ∀ n, (P15930042732878126221.a n : ℤ) = A359869 (n + 1)

theorem P15930042732878126221.correct : P15930042732878126221.Spec := by
  intro n
  simp only [A359869, Nat.add_sub_cancel]

end A359869

/-! ## A359869.P15351205929182385783

`lt[A007947(n+1), A352167(n+1)]+1`
-/

namespace A359869.P15351205929182385783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352167 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A359869.P15351205929182385783

namespace A359869

/-- `lt[A007947(n+1), A352167(n+1)]+1` -/
def P15351205929182385783.Spec : Prop :=
  ∀ n, (P15351205929182385783.a n : ℤ) = A359869 (n + 1)

end A359869

/-! ## A359869.P11095241351970981285

`lt[A007947(n+1), A036288(n+1)-1]+1`
-/

namespace A359869.P11095241351970981285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A359869.P11095241351970981285

namespace A359869

/-- `lt[A007947(n+1), A036288(n+1)-1]+1` -/
def P11095241351970981285.Spec : Prop :=
  ∀ n, (P11095241351970981285.a n : ℤ) = A359869 (n + 1)

end A359869

/-! ## A359869.P16680320388825843861

`A020725(lt[A007947(n+1), A001414(n+1)])`
-/

namespace A359869.P16680320388825843861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359869.P16680320388825843861

namespace A359869

/-- `A020725(lt[A007947(n+1), A001414(n+1)])` -/
def P16680320388825843861.Spec : Prop :=
  ∀ n, P16680320388825843861.a n = A359869 (n + 1)

end A359869

/-! ## A359869.P1465515319806774954

`A065475(lt[A007947(n+1), A001414(n+1)])`
-/

namespace A359869.P1465515319806774954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A359869.P1465515319806774954

namespace A359869

/-- `A065475(lt[A007947(n+1), A001414(n+1)])` -/
def P1465515319806774954.Spec : Prop :=
  ∀ n, P1465515319806774954.a n = A359869 (n + 1)

end A359869

/-!
# A359870: Numbers whose product of distinct prime factors is greater than the sum of its prime factors (with repetition).

The programs for A359870, the canonical program `A359870.P1653634179700732458` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359870 has offset 1).

The definition of A359870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8550 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A359870.P10071193394243074641

`lt[A001414(n+1), A007947(n+1)]+1`
-/

namespace A359870.P10071193394243074641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A359870.P10071193394243074641

namespace A359870

/-- `lt[A001414(n+1), A007947(n+1)]+1` -/
def P10071193394243074641.Spec : Prop :=
  ∀ n, (P10071193394243074641.a n : ℤ) = A359870 (n + 1)

end A359870

/-! ## A359870.P14080590961507782782

`filter[A360477(n+1), A005171(#)]`
-/

namespace A359870.P14080590961507782782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A359870.P14080590961507782782

namespace A359870

/-- `filter[A360477(n+1), A005171(#)]` -/
def P14080590961507782782.Spec : Prop :=
  ∀ n, P14080590961507782782.a n = A359870 (n + 1)

end A359870

/-! ## A359870.P13171180197382094001

`∩[A018252(n+1), A360477(n+1)]`
-/

namespace A359870.P13171180197382094001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359870.P13171180197382094001

namespace A359870

/-- `∩[A018252(n+1), A360477(n+1)]` -/
def P13171180197382094001.Spec : Prop :=
  ∀ n, (P13171180197382094001.a n : ℤ) = A359870 (n + 1)

end A359870

/-! ## A359870.P8749513811587345868

`∩[A056653(n+1), A360477(n+1)]`
-/

namespace A359870.P8749513811587345868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359870.P8749513811587345868

namespace A359870

/-- `∩[A056653(n+1), A360477(n+1)]` -/
def P8749513811587345868.Spec : Prop :=
  ∀ n, (P8749513811587345868.a n : ℤ) = A359870 (n + 1)

end A359870

/-! ## A359870.P14083714316591870642

`∩[A139118(n+1), A360477(n+1)]`
-/

namespace A359870.P14083714316591870642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359870.P14083714316591870642

namespace A359870

/-- `∩[A139118(n+1), A360477(n+1)]` -/
def P14083714316591870642.Spec : Prop :=
  ∀ n, (P14083714316591870642.a n : ℤ) = A359870 (n + 1)

end A359870

/-! ## A359870.P12964979301223025312

`∩[A141468(n+1), A360477(n+1)]`
-/

namespace A359870.P12964979301223025312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359870.P12964979301223025312

namespace A359870

/-- `∩[A141468(n+1), A360477(n+1)]` -/
def P12964979301223025312.Spec : Prop :=
  ∀ n, (P12964979301223025312.a n : ℤ) = A359870 (n + 1)

end A359870

/-! ## A359870.P2964981930233239517

`∩[A360477(n+1), A361102(n+1)]`
-/

namespace A359870.P2964981930233239517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359870.P2964981930233239517

namespace A359870

/-- `∩[A360477(n+1), A361102(n+1)]` -/
def P2964981930233239517.Spec : Prop :=
  ∀ n, (P2964981930233239517.a n : ℤ) = A359870 (n + 1)

end A359870

/-! ## A359870.P225158121244267110

`lt[A036288(n+1)-1, A007947(n+1)]+1`
-/

namespace A359870.P225158121244267110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A359870.P225158121244267110

namespace A359870

/-- `lt[A036288(n+1)-1, A007947(n+1)]+1` -/
def P225158121244267110.Spec : Prop :=
  ∀ n, (P225158121244267110.a n : ℤ) = A359870 (n + 1)

end A359870

/-! ## A359870.P1653634179700732458

`lt[A001414(n+1), A007913(A350390(n+1))]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A359870

/-- `lt[A001414(n+1), A007913(A350390(n+1))]+1` -/
def P1653634179700732458.Spec : Prop :=
  ∀ n, (P1653634179700732458.a n : ℤ) = A359870 (n + 1)

theorem P1653634179700732458.correct : P1653634179700732458.Spec := by
  intro n
  simp only [A359870, Nat.add_sub_cancel]

end A359870

/-! ## A359870.P11239333882081162020

`lt[A023443(A075254(n+1)-n), A007947(n+1)]+1`
-/

namespace A359870.P11239333882081162020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A075254 (n + 1) - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A359870.P11239333882081162020

namespace A359870

/-- `lt[A023443(A075254(n+1)-n), A007947(n+1)]+1` -/
def P11239333882081162020.Spec : Prop :=
  ∀ n, (P11239333882081162020.a n : ℤ) = A359870 (n + 1)

end A359870

/-! ## A359870.P17038135099235833295

`lt[A109958(n+1)%A103517(n), A007947(n+1)]+1`
-/

namespace A359870.P17038135099235833295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109958 (n + 1)) (A103517 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A359870.P17038135099235833295

namespace A359870

/-- `lt[A109958(n+1)%A103517(n), A007947(n+1)]+1` -/
def P17038135099235833295.Spec : Prop :=
  ∀ n, (P17038135099235833295.a n : ℤ) = A359870 (n + 1)

end A359870

/-! ## A359870.P4113712887603000564

`lt[A352167(n+1)+A061397(n+1), A007947(n+1)]+1`
-/

namespace A359870.P4113712887603000564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352167 (n + 1) + A061397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A359870.P4113712887603000564

namespace A359870

/-- `lt[A352167(n+1)+A061397(n+1), A007947(n+1)]+1` -/
def P4113712887603000564.Spec : Prop :=
  ∀ n, (P4113712887603000564.a n : ℤ) = A359870 (n + 1)

end A359870

/-!
# A359873: Minimum number of consecutive positive integers to guarantee n abundant or perfect numbers.

The programs for A359873, there is no canonical definition to state claims against.
-/

/-! ## A359873.P539585871359292604

`∑[A125115(A000055(n)²)]`
-/

namespace A359873.P539585871359292604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125115 (A000055 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359873.P539585871359292604

/-! ## A359873.P9065589171855900557

`∑[A001223(A032086(n+3))]`
-/

namespace A359873.P9065589171855900557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A032086 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A359873.P9065589171855900557

/-! ## A359873.P10661377754431313997

`A171608(A171642(n+1))+2`
-/

namespace A359873.P10661377754431313997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171608 (A171642 (n + 1)).toNat + 2

end

end A359873.P10661377754431313997

/-! ## A359873.P5564542889857109707

`lt[A152178(2*n), A084113(A316317(n))]`
-/

namespace A359873.P5564542889857109707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152178 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084113 (A316317 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359873.P5564542889857109707

/-! ## A359873.P7568136936072233686

`lt[A132450(A305800(n+1)), A140213(n+1)]`
-/

namespace A359873.P7568136936072233686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132450 (A305800 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140213 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A359873.P7568136936072233686

/-!
# A359875: Numbers k such that A002322(k) = A023900(k).

The programs for A359875, there is no canonical definition to state claims against.
-/

/-! ## A359875.P11189287941568683408

`eq[A002322(n+1), A023900(n+1)]+1`
-/

namespace A359875.P11189287941568683408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A359875.P11189287941568683408

/-! ## A359875.P9645787418938929231

`eq[A069283(n), A121262(A244635(n))]`
-/

namespace A359875.P9645787418938929231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A244635 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A359875.P9645787418938929231

/-! ## A359875.P4553613961322261250

`A000034(A001045(n))*A352826(n+1)`
-/

namespace A359875.P4553613961322261250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A001045 n).toNat * A352826 (n + 1)

end

end A359875.P4553613961322261250

/-! ## A359875.P12199351402822691491

`A040001(A000079(n))*A352826(n+1)`
-/

namespace A359875.P12199351402822691491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A000079 n).toNat * A352826 (n + 1)

end

end A359875.P12199351402822691491

/-! ## A359875.P261014853017648641

`A020639(A087957(n))*A352826(n+1)`
-/

namespace A359875.P261014853017648641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A087957 n).toNat * A352826 (n + 1)

end

end A359875.P261014853017648641

/-!
# A359876: a(n) is the smallest tribonacci number (A000073) with exactly n prime factors (counted with multiplicity).

The programs for A359876, there is no canonical definition to state claims against.
-/

/-! ## A359876.P15341340751516662193

`A000073(A359878(n))`
-/

namespace A359876.P15341340751516662193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A359878 n).toNat

end

end A359876.P15341340751516662193

/-!
# A359877: a(n) is the smallest tetranacci number (A000078) with exactly n prime factors (counted with multiplicity).

The programs for A359877, there is no canonical definition to state claims against.
-/

/-! ## A359877.P5186119714579873063

`A000078(A359879(n))`
-/

namespace A359877.P5186119714579873063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (A359879 n).toNat

end

end A359877.P5186119714579873063

/-! ## A359877.P6131674475439948069

`A324383(A002893(n))`
-/

namespace A359877.P6131674475439948069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324383 (A002893 n).toNat

end

end A359877.P6131674475439948069

/-!
# A359882: a(n) = Sum_{d|n} d^n * (n/d)^d.

The programs for A359882, the canonical program `A359882.P5673256735034223653` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359882 has offset 1).

The definition of A359882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359882.P5673256735034223653

`∑{d}[n+1, #^(n+1)*((n+1)/#)^#]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A359882

/-- `∑{d}[n+1, #^(n+1)*((n+1)/#)^#]` -/
def P5673256735034223653.Spec : Prop :=
  ∀ n, P5673256735034223653.a n = (A359882 (n + 1) : ℚ)

end A359882

/-!
# A359883: a(n) = Sum_{d|n} d^(n-d) * (n/d)^d.

The programs for A359883, the canonical program `A359883.P7655562576923242447` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359883 has offset 1).

The definition of A359883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359883.P7655562576923242447

`∑{d}[n+1, #^(n+1-#)*((n+1)/#)^#]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A359883

/-- `∑{d}[n+1, #^(n+1-#)*((n+1)/#)^#]` -/
def P7655562576923242447.Spec : Prop :=
  ∀ n, P7655562576923242447.a n = (A359883 (n + 1) : ℚ)

end A359883

/-! ## A359883.P11783483974393603671

`A339482(n+1)+A303140(A360813(n))`
-/

namespace A359883.P11783483974393603671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339482 (n + 1) + A303140 (A360813 n).toNat

end

end A359883.P11783483974393603671

namespace A359883

/-- `A339482(n+1)+A303140(A360813(n))` -/
def P11783483974393603671.Spec : Prop :=
  ∀ n, P11783483974393603671.a n = A359883 (n + 1)

end A359883

/-!
# A359884: Number of 3-dimensional tilings of a 2 X 2 X n box using 2 X 2 X 1 plates and 1 X 2 X 1 dominos.

The programs for A359884, the canonical program `A359884.P2402806763753822225` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359884 has offset 0).

The definition of A359884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359884.P2402806763753822225

`5*a(n-1)+9*a(n-2)-14*a(n-3)` with `a(0)=1, a(1)=3, a(2)=24`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A359884

/-- `5*a(n-1)+9*a(n-2)-14*a(n-3)` -/
def P2402806763753822225.Spec : Prop :=
  ∀ n, P2402806763753822225.a n = A359884 n

theorem P2402806763753822225.correct : P2402806763753822225.Spec := by
  intro n
  simp only [A359884]

end A359884

/-! ## A359884.P18226167494234648237

`ogf((1-2x)/(1-5x-9x^2+14x^3))`
-/

namespace A359884.P18226167494234648237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -5, -9, 14] n

end

end A359884.P18226167494234648237

namespace A359884

/-- `ogf((1-2x)/(1-5x-9x^2+14x^3))` -/
def P18226167494234648237.Spec : Prop :=
  ∀ n, P18226167494234648237.a n = A359884 n

end A359884

/-!
# A359885: Number of 3-dimensional tilings of a 2 X 2 X 3n box using trominos (three 1 X 1 X 1 cubes).

The programs for A359885, the canonical program `A359885.P5152354702260445602` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A359885 has offset 0).

The definition of A359885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A359885.P5152354702260445602

`60*a(n-1)-128*a(n-2)` with `a(0)=1, a(1)=44`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A359885

/-- `60*a(n-1)-128*a(n-2)` -/
def P5152354702260445602.Spec : Prop :=
  ∀ n, P5152354702260445602.a n = A359885 n

theorem P5152354702260445602.correct : P5152354702260445602.Spec := by
  intro n
  simp only [A359885]

end A359885

/-!
# A359886: Number of 3-dimensional tilings of a 2 X 2 X n box using 2 X 2 X 1 plates and trominos (three 1 X 1 X 1 cubes).

The programs for A359886, there is no canonical definition to state claims against.
-/

/-! ## A359886.P3135916358072306750

`A033873(A127131(n)+A033873(n))`
-/

namespace A359886.P3135916358072306750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033873 (A127131 n + A033873 n).toNat

end

end A359886.P3135916358072306750

/-! ## A359886.P13592957305769305780

`A000265(A219538(n)/A002033(n))`
-/

namespace A359886.P13592957305769305780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A219538 n : ℚ) / (A002033 n : ℚ))).toNat

end

end A359886.P13592957305769305780

/-!
# A359887: Square array A(n, k), n, k > 0, read by antidiagonals; A(n, k) is the numerator of the unique rational q such that for any m, floor(2^m/n) AND floor(2^m/k) = floor(q*2^m) (where AND denotes the bitwise AND operator); see A359888 for the denominators.

The programs for A359887, there is no canonical definition to state claims against.
-/

/-! ## A359887.P1109013326244747424

`A359910(A359888(n+1))^A333218(n+1)`
-/

namespace A359887.P1109013326244747424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A359910 (A359888 (n + 1)).toNat : ℚ) ^ (A333218 (n + 1) : ℤ)

end

end A359887.P1109013326244747424

/-! ## A359887.P4574828416563134522

`A094076(gcd(A204016(n+1), A223747(n+1)))`
-/

namespace A359887.P4574828416563134522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094076 (Int.gcd (A204016 (n + 1)) (A223747 (n + 1)))

end

end A359887.P4574828416563134522

/-! ## A359887.P14263854548076593169

`A102669(A359888(n+1))^A000217(n)`
-/

namespace A359887.P14263854548076593169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102669 (A359888 (n + 1)).toNat : ℚ) ^ (A000217 n : ℤ)

end

end A359887.P14263854548076593169

/-! ## A359887.P10091028203286530924

`A102669(A359888(n+1))^A000567(n)`
-/

namespace A359887.P10091028203286530924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102669 (A359888 (n + 1)).toNat : ℚ) ^ (A000567 n : ℤ)

end

end A359887.P10091028203286530924

/-! ## A359887.P2727241342906725978

`A102669(A359888(n+1))^A001105(n)`
-/

namespace A359887.P2727241342906725978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102669 (A359888 (n + 1)).toNat : ℚ) ^ (A001105 n : ℤ)

end

end A359887.P2727241342906725978

/-!
# A359889: Numbers that are 1 or whose prime indices have the same mean as median.

The programs for A359889, there is no canonical definition to state claims against.
-/

/-! ## A359889.P9460543272436439748

`A236510(n+1)%95`
-/

namespace A359889.P9460543272436439748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236510 (n + 1)) 95

end

end A359889.P9460543272436439748

/-! ## A359889.P2644607854323356688

`A343959(n+1)!*A236510(n+1)`
-/

namespace A359889.P2644607854323356688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A343959 (n + 1)).toNat : ℤ) * A236510 (n + 1)

end

end A359889.P2644607854323356688

/-! ## A359889.P11283159642255914699

`A236510(n+2)-Δ[A236510(n+1)]`
-/

namespace A359889.P11283159642255914699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236510 (n + 2) - (f1 (n + 1) - f1 n)

end

end A359889.P11283159642255914699

/-! ## A359889.P8140613593501931611

`A236510(n+1)+char[A224319(3*n+4)]`
-/

namespace A359889.P8140613593501931611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224319 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236510 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A359889.P8140613593501931611

/-! ## A359889.P5102457881104628646

`A219347(A219347(n))*A236510(n+1)`
-/

namespace A359889.P5102457881104628646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (A219347 n).toNat * A236510 (n + 1)

end

end A359889.P5102457881104628646

/-! ## A359889.P7284769470221568291

`A236510(n+1)+A179527(A377468(n+1))`
-/

namespace A359889.P7284769470221568291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236510 (n + 1) + A179527 (A377468 (n + 1)).toNat

end

end A359889.P7284769470221568291

/-! ## A359889.P12336192505238792381

`A240467(A345518(n+1))+A236510(n+1)`
-/

namespace A359889.P12336192505238792381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A345518 (n + 1)).toNat + A236510 (n + 1)

end

end A359889.P12336192505238792381

/-! ## A359889.P9771003572033579476

`A236510(n+1)*A359997(A359997(n+1))`
-/

namespace A359889.P9771003572033579476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236510 (n + 1) * A359997 (A359997 (n + 1)).toNat

end

end A359889.P9771003572033579476

/-! ## A359889.P5983917693728986773

`A236510(n+1)*A351905(A354058(n+5))`
-/

namespace A359889.P5983917693728986773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236510 (n + 1) * A351905 (A354058 (n + 5)).toNat

end

end A359889.P5983917693728986773

/-! ## A359889.P7033045969181825427

`A072774(n+1)+A236510(n+1)-A085924(n)`
-/

namespace A359889.P7033045969181825427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1) + (A236510 (n + 1) - A085924 n)

end

end A359889.P7033045969181825427

/-!
# A359890: Numbers whose prime indices do not have the same mean as median.

The programs for A359890, there is no canonical definition to state claims against.
-/

/-! ## A359890.P5343469837424240709

`∪[A359892(n+1), A360246(n+1)]`
-/

namespace A359890.P5343469837424240709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359890.P5343469837424240709

/-! ## A359890.P14515303497780716116

`∪[A360246(n+1), A363730(n+1)]`
-/

namespace A359890.P14515303497780716116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A359890.P14515303497780716116

/-! ## A359890.P1462242797958294791

`∩[A296365(n+1), A389812(n+1)]`
-/

namespace A359890.P1462242797958294791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359890.P1462242797958294791

/-! ## A359890.P7370809031775777708

`∩[A158037(n+1), A389812(n+1)]`
-/

namespace A359890.P7370809031775777708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359890.P7370809031775777708

/-! ## A359890.P14483725660070439920

`∩[A175084(n+1), A389812(n+1)]`
-/

namespace A359890.P14483725660070439920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359890.P14483725660070439920

/-!
# A359891: Members of A026424 (numbers with an odd number of prime factors) whose prime indices have the same mean as median.

The programs for A359891, there is no canonical definition to state claims against.
-/

/-! ## A359891.P9964599610985892232

`record[A331737(A327473(n+1))]`
-/

namespace A359891.P9964599610985892232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (A327473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A359891.P9964599610985892232

/-! ## A359891.P16745043930028155886

`filter[A327473(n+1), A066829(#)]`
-/

namespace A359891.P16745043930028155886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A359891.P16745043930028155886

/-! ## A359891.P869650176147413477

`filter[A327473(n+1), A295316(#)]`
-/

namespace A359891.P869650176147413477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A359891.P869650176147413477

/-! ## A359891.P837576032015442206

`filter[A327473(n+1), A381955(#)]`
-/

namespace A359891.P837576032015442206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381955 (f1 j).toNat = 1) n)

end

end A359891.P837576032015442206

/-! ## A359891.P8658316522804806719

`∩[A002035(n+1), A327473(n+1)]`
-/

namespace A359891.P8658316522804806719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359891.P8658316522804806719

/-! ## A359891.P8932641854718236369

`∩[A026422(n+1), A327473(n+1)]`
-/

namespace A359891.P8932641854718236369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359891.P8932641854718236369

/-! ## A359891.P8348645936492732845

`∩[A026424(n+1), A327473(n+1)]`
-/

namespace A359891.P8348645936492732845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359891.P8348645936492732845

/-! ## A359891.P13378044721484051019

`∩[A162644(n+1), A327473(n+1)]`
-/

namespace A359891.P13378044721484051019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359891.P13378044721484051019

/-! ## A359891.P1258558140645766180

`∩[A268335(n+1), A327473(n+1)]`
-/

namespace A359891.P1258558140645766180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359891.P1258558140645766180

/-! ## A359891.P9826929085789718548

`∩[A279457(n+1), A327473(n+1)]`
-/

namespace A359891.P9826929085789718548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359891.P9826929085789718548

/-!
# A359892: Members of A026424 (numbers with an odd number of prime factors) whose prime indices do not have the same mean as median.

The programs for A359892, there is no canonical definition to state claims against.
-/

/-! ## A359892.P10235979018407159189

`filter[A359890(n+1), A066829(#)]`
-/

namespace A359892.P10235979018407159189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A359892.P10235979018407159189

/-! ## A359892.P5283970781963612807

`∩[A026422(n+1), A359890(n+1)]`
-/

namespace A359892.P5283970781963612807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359892.P5283970781963612807

/-! ## A359892.P17934353382077511130

`∩[A026424(n+1), A359890(n+1)]`
-/

namespace A359892.P17934353382077511130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359892.P17934353382077511130

/-! ## A359892.P6532877515558262488

`∩[A046339(n+1), A359890(n+1)]`
-/

namespace A359892.P6532877515558262488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359892.P6532877515558262488

/-! ## A359892.P11641126032806233977

`∩[A063989(n+1), A359890(n+1)]`
-/

namespace A359892.P11641126032806233977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A359892.P11641126032806233977

/-!
# A359893: Triangle read by rows where T(n,k) is the number of integer partitions of n with median k, where k ranges from 1 to n in steps of 1/2.

The programs for A359893, there is no canonical definition to state claims against.
-/

/-! ## A359893.P10169904466770069720

`A071032(A174065(3*n))*A157229(n+1)`
-/

namespace A359893.P10169904466770069720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071032 (A174065 (3 * n)).toNat * A157229 (n + 1)

end

end A359893.P10169904466770069720

/-! ## A359893.P17580753830524761324

`A114643(A366109(n+3))`
-/

namespace A359893.P17580753830524761324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114643 (A366109 (n + 3)).toNat

end

end A359893.P17580753830524761324

/-! ## A359893.P14742449780489254336

`A262045(record[A224665(n+1)-1])`
-/

namespace A359893.P14742449780489254336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224665 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A359893.P14742449780489254336

/-! ## A359893.P2959896854732801936

`A255318(A304797(n+1)+A303664(n))`
-/

namespace A359893.P2959896854732801936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255318 (A304797 (n + 1) + A303664 n).toNat

end

end A359893.P2959896854732801936

/-! ## A359893.P13409624205837126011

`A053692(A000219(n)-A319136(n+1))`
-/

namespace A359893.P13409624205837126011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053692 (A000219 n - A319136 (n + 1)).toNat

end

end A359893.P13409624205837126011

/-!
# A359894: Number of integer partitions of n whose parts do not have the same mean as median.

The programs for A359894, there is no canonical definition to state claims against.
-/

/-! ## A359894.P6713884720698827046

`A000041(n)-A240219(ceil(abs(γ-n)))`
-/

namespace A359894.P6713884720698827046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240219 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

end

end A359894.P6713884720698827046

/-! ## A359894.P15688591617818338304

`A213598(n)-A240219(A028310(n))`
-/

namespace A359894.P15688591617818338304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A240219 (A028310 n).toNat

end

end A359894.P15688591617818338304

/-! ## A359894.P7193732899672609803

`∑[A002865(n)]-A240219(A028310(n))`
-/

namespace A359894.P7193732899672609803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240219 (A028310 n).toNat

end

end A359894.P7193732899672609803

/-! ## A359894.P14226564546123035813

`A133041(n)-n-A240219(A028310(n))`
-/

namespace A359894.P14226564546123035813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ) - A240219 (A028310 n).toNat

end

end A359894.P14226564546123035813

/-! ## A359894.P12761563307913855697

`∑[A085811(n+3)]-A240219(A028310(n))`
-/

namespace A359894.P12761563307913855697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240219 (A028310 n).toNat

end

end A359894.P12761563307913855697

/-!
# A359895: Number of odd-length integer partitions of n whose parts have the same mean as median.

The programs for A359895, there is no canonical definition to state claims against.
-/

/-! ## A359895.P564705878899847251

`A027193(n)-A359896(n)`
-/

namespace A359895.P564705878899847251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 n - A359896 n

end

end A359895.P564705878899847251

/-! ## A359895.P11769878348403258334

`∑[A002865(n)]-A027187(n)-A359896(n)`
-/

namespace A359895.P11769878348403258334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027187 n - A359896 n

end

end A359895.P11769878348403258334

/-! ## A359895.P11438671054491749804

`∑[A085811(n+3)]-A027187(n)-A359896(n)`
-/

namespace A359895.P11438671054491749804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027187 n - A359896 n

end

end A359895.P11438671054491749804

/-! ## A359895.P14226313851107543826

`A000837(n)+A018783(n)-A027187(n)-A359896(n)`
-/

namespace A359895.P14226313851107543826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n + (A018783 n - A027187 n) - A359896 n

end

end A359895.P14226313851107543826

/-! ## A359895.P6184620201098671732

`A000701(n)+A046682(n)-A027187(n)-A359896(n)`
-/

namespace A359895.P6184620201098671732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 n + (A046682 n - A027187 n) - A359896 n

end

end A359895.P6184620201098671732

/-! ## A359895.P5415162850590039001

`A000009(n)+A047967(n)-A027187(n)-A359896(n)`
-/

namespace A359895.P5415162850590039001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A027187 n) - A359896 n

end

end A359895.P5415162850590039001

/-!
# A359896: Number of odd-length integer partitions of n whose parts do not have the same mean as median.

The programs for A359896, there is no canonical definition to state claims against.
-/

/-! ## A359896.P4028805732164937581

`A027193(n)-A359895(n)`
-/

namespace A359896.P4028805732164937581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 n - A359895 n

end

end A359896.P4028805732164937581

/-!
# A359897: Number of strict integer partitions of n whose parts have the same mean as median.

The programs for A359897, there is no canonical definition to state claims against.
-/

/-! ## A359897.P2074351660016987705

`A240850(n)+A240851(n)-A359898(n)`
-/

namespace A359897.P2074351660016987705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240850 n + (A240851 n - A359898 n)

end

end A359897.P2074351660016987705

/-!
# A359898: Number of strict integer partitions of n whose parts do not have the same mean as median.

The programs for A359898, there is no canonical definition to state claims against.
-/

/-! ## A359898.P15153754109619202754

`A052839(n)-(A359897(n)+1)`
-/

namespace A359898.P15153754109619202754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - (A359897 n + 1)

end

end A359898.P15153754109619202754

/-! ## A359898.P355966408452187540

`A000009(n)-round(1/acot(A359897(n)))`
-/

namespace A359898.P355966408452187540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A359897 n : ℝ))

end

end A359898.P355966408452187540

/-! ## A359898.P14165324447611929816

`A000009(n)-A359897(round(acot(n)+n))`
-/

namespace A359898.P14165324447611929816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A359897 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A359898.P14165324447611929816

/-! ## A359898.P11197213888810238855

`A000009(n)-A359897(A028310(n))`
-/

namespace A359898.P11197213888810238855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A359897 (A028310 n).toNat

end

end A359898.P11197213888810238855

/-! ## A359898.P14867671870304291194

`A061199(A000124(n))-A359897(n)`
-/

namespace A359898.P14867671870304291194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (A000124 n).toNat - A359897 n

end

end A359898.P14867671870304291194

/-! ## A359898.P161165926727358807

`∑[A087897(n)]-A359897(A028310(n))`
-/

namespace A359898.P161165926727358807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A359897 (A028310 n).toNat

end

end A359898.P161165926727358807

/-! ## A359898.P9365980352152983813

`A240850(n)+A240851(n)-A359897(n)`
-/

namespace A359898.P9365980352152983813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240850 n + (A240851 n - A359897 n)

end

end A359898.P9365980352152983813

/-!
# A359899: Number of strict odd-length integer partitions of n whose parts have the same mean as median.

The programs for A359899, there is no canonical definition to state claims against.
-/

/-! ## A359899.P11342800031726662734

`A067659(n)-A359900(n)`
-/

namespace A359899.P11342800031726662734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 n - A359900 n

end

end A359899.P11342800031726662734

/-! ## A359899.P12676124122122224714

`C(A303363(n+1), A007814(A000032(n)))`
-/

namespace A359899.P12676124122122224714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A303363 (n + 1)).toNat (A007814 (A000032 n).toNat).toNat

end

end A359899.P12676124122122224714

/-! ## A359899.P1003000515295939626

`A052409(A017991(n)*A108371(n+1))`
-/

namespace A359899.P1003000515295939626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A017991 n * A108371 (n + 1)).toNat

end

end A359899.P1003000515295939626

/-! ## A359899.P4433700463702605153

`gcd(n²%3, A294448(A342094(2*(n+2))))`
-/

namespace A359899.P4433700463702605153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 2 % 3 : ℕ) : ℤ) (A294448 (A342094 (2 * (n + 2))).toNat)

end

end A359899.P4433700463702605153

/-! ## A359899.P2024087408712992719

`gcd(floor(2*n/5), A188510(A000045(n+3)))`
-/

namespace A359899.P2024087408712992719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊2 * ((n : ℚ) / 5)⌋ (A188510 (A000045 (n + 3)).toNat)

end

end A359899.P2024087408712992719

