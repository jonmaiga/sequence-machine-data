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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C026
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B011.C001
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
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
# A367500: The number of digraphs on n unlabeled nodes with each indegree >=1 and each outdegree >=1.

The programs for A367500, there is no canonical definition to state claims against.
-/

/-! ## A367500.P9545003308753815216

`A000203(A072445(n))-A172441(n)`
-/

namespace A367500.P9545003308753815216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A072445 n).toNat - A172441 n

end

end A367500.P9545003308753815216

/-!
# A367502: Sum of the final digits of the prime power divisors (p^k, k>=0) of n.

The programs for A367502, there is no canonical definition to state claims against.
-/

/-! ## A367502.P14938282710226538307

`A023888(n+1)%A030623(A129954(n))`
-/

namespace A367502.P14938282710226538307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023888 (n + 1)) (A030623 (A129954 n).toNat)

end

end A367502.P14938282710226538307

/-! ## A367502.P4510413387684825874

`A284326(n+1)%A014120(A001263(n+1))`
-/

namespace A367502.P4510413387684825874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284326 (n + 1)) (A014120 (A001263 (n + 1)).toNat)

end

end A367502.P4510413387684825874

/-! ## A367502.P18433129424494347492

`A187793(n+1)%A016825(A153654(n+1))`
-/

namespace A367502.P18433129424494347492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187793 (n + 1)) (A016825 (A153654 (n + 1)).toNat)

end

end A367502.P18433129424494347492

/-!
# A367503: Sum of the final digits of the squarefree divisors of n.

The programs for A367503, the canonical program `A367503.P16510109716886163119` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367503 has offset 1).

The definition of A367503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367503.P16510109716886163119

`A367466(∏{p}[n+1, #])`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A367503

/-- `A367466(∏{p}[n+1, #])` -/
def P16510109716886163119.Spec : Prop :=
  ∀ n, P16510109716886163119.a n = A367503 (n + 1)

theorem P16510109716886163119.correct : P16510109716886163119.Spec := by
  intro n
  simp only [A367503, Nat.add_sub_cancel]

end A367503

/-! ## A367503.P2493857615938390278

`∑{d}[A007947(n+1), #%10]`
-/

namespace A367503.P2493857615938390278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % 10

end

end A367503.P2493857615938390278

namespace A367503

/-- `∑{d}[A007947(n+1), #%10]` -/
def P2493857615938390278.Spec : Prop :=
  ∀ n, (P2493857615938390278.a n : ℤ) = A367503 (n + 1)

end A367503

/-! ## A367503.P12209504256547775193

`∑{d}[∏{p}[n+1, #], A010879(#)]`
-/

namespace A367503.P12209504256547775193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010879 d

end

end A367503.P12209504256547775193

namespace A367503

/-- `∑{d}[∏{p}[n+1, #], A010879(#)]` -/
def P12209504256547775193.Spec : Prop :=
  ∀ n, P12209504256547775193.a n = A367503 (n + 1)

end A367503

/-! ## A367503.P6468617084309082586

`A367466(A007947(n+1))`
-/

namespace A367503.P6468617084309082586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367466 (A007947 (n + 1)).toNat

end

end A367503.P6468617084309082586

namespace A367503

/-- `A367466(A007947(n+1))` -/
def P6468617084309082586.Spec : Prop :=
  ∀ n, P6468617084309082586.a n = A367503 (n + 1)

end A367503

/-! ## A367503.P972396963442512839

`∑{d}[A007947(n+1), A010879(#)]`
-/

namespace A367503.P972396963442512839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010879 d

end

end A367503.P972396963442512839

namespace A367503

/-- `∑{d}[A007947(n+1), A010879(#)]` -/
def P972396963442512839.Spec : Prop :=
  ∀ n, P972396963442512839.a n = A367503 (n + 1)

end A367503

/-!
# A367504: a(1) = 2; for n > 1, a(n) = a(n-1) + 2*gpf(a(n-1)), where gpf(k) = A006530(k) = greatest prime dividing k.

The programs for A367504, the canonical program `A367504.P12142408322531673924` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367504 has offset 1).

The definition of A367504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367504.P12142408322531673924

`2*∑[A076272(n+1)+char[2]]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A367504

/-- `2*∑[A076272(n+1)+char[2]]` -/
def P12142408322531673924.Spec : Prop :=
  ∀ n, P12142408322531673924.a n = A367504 (n + 1)

theorem P12142408322531673924.correct : P12142408322531673924.Spec := by
  intro n
  simp only [A367504, Nat.add_sub_cancel]

end A367504

/-! ## A367504.P14172339152740054760

`∑[2*A155047(n+1)]`
-/

namespace A367504.P14172339152740054760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367504.P14172339152740054760

namespace A367504

/-- `∑[2*A155047(n+1)]` -/
def P14172339152740054760.Spec : Prop :=
  ∀ n, P14172339152740054760.a n = A367504 (n + 1)

end A367504

/-! ## A367504.P4306141053827464531

`A155047(n+1)+A006530(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A367504.P4306141053827464531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A155047 (n + 1) + (A006530 (a (n - 1)).toNat + a (n - 1))

end

end A367504.P4306141053827464531

namespace A367504

/-- `A155047(n+1)+A006530(a(n-1))+a(n-1)` -/
def P4306141053827464531.Spec : Prop :=
  ∀ n, P4306141053827464531.a n = A367504 (n + 1)

end A367504

/-! ## A367504.P3494627036093780172

`A155047(n+1)+A111089(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A367504.P3494627036093780172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A155047 (n + 1) + (A111089 (a (n - 1)).toNat + a (n - 1))

end

end A367504.P3494627036093780172

namespace A367504

/-- `A155047(n+1)+A111089(a(n-1))+a(n-1)` -/
def P3494627036093780172.Spec : Prop :=
  ∀ n, P3494627036093780172.a n = A367504 (n + 1)

end A367504

/-! ## A367504.P15321573254244348387

`∑[∑[A105673(A108463(n+1))]]`
-/

namespace A367504.P15321573254244348387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (A108463 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367504.P15321573254244348387

namespace A367504

/-- `∑[∑[A105673(A108463(n+1))]]` -/
def P15321573254244348387.Spec : Prop :=
  ∀ n, P15321573254244348387.a n = A367504 (n + 1)

end A367504

/-!
# A367505: Triangle read by rows: row n gives the h-vector of the n-th halohedron.

The programs for A367505, there is no canonical definition to state claims against.
-/

/-! ## A367505.P18243277917669140508

`A143999(A108477(n))`
-/

namespace A367505.P18243277917669140508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143999 (A108477 n).toNat

end

end A367505.P18243277917669140508

/-! ## A367505.P17682236779147018056

`A120242(A174043(n+1))`
-/

namespace A367505.P17682236779147018056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120242 (A174043 (n + 1)).toNat

end

end A367505.P17682236779147018056

/-! ## A367505.P999638972726624885

`A346693(A174124(n))+A332671(n+2)`
-/

namespace A367505.P999638972726624885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346693 (A174124 n).toNat + A332671 (n + 2)

end

end A367505.P999638972726624885

/-! ## A367505.P8020019184751730354

`A299478(A007318(n)%A209864(n+4))`
-/

namespace A367505.P8020019184751730354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299478 (Int.tmod (A007318 n) (A209864 (n + 4))).toNat

end

end A367505.P8020019184751730354

/-!
# A367506: a(n) = Sum_{d|n} (d+n)^n.

The programs for A367506, there is no canonical definition to state claims against.
-/

/-! ## A367506.P12667468170327780884

`∑{d}[n+1, (n+1+#)^(n+1)]`
-/

namespace A367506.P12667468170327780884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 + d) ^ (n + 1)

end

end A367506.P12667468170327780884

/-!
# A367507: a(n) = Sum_{d|n} (d+2)^n.

The programs for A367507, there is no canonical definition to state claims against.
-/

/-! ## A367507.P2922405665636138341

`∑{d}[n+1, (#+2)^(n+1)]`
-/

namespace A367507.P2922405665636138341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d + 2) ^ (n + 1)

end

end A367507.P2922405665636138341

/-!
# A367508: Iterates of the Christmas tree pattern map, read by rows, with leading zeros removed and interpreted as decimal numbers (see description in Comments).

The programs for A367508, there is no canonical definition to state claims against.
-/

/-! ## A367508.P6339173152489468569

`A007088(A367562(n+1))`
-/

namespace A367508.P6339173152489468569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A367562 (n + 1)).toNat

end

end A367508.P6339173152489468569

/-! ## A367508.P2021487843908620132

`A007088(A368427(n+2)-A053644(n+2))`
-/

namespace A367508.P2021487843908620132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A368427 (n + 2) - A053644 (n + 2)).toNat

end

end A367508.P2021487843908620132

/-!
# A367509: a(n) = Sum_{d|n} (2*d+1)^n.

The programs for A367509, there is no canonical definition to state claims against.
-/

/-! ## A367509.P6083933644451314314

`∑{d}[n+1, A005408(#)^(n+1)]`
-/

namespace A367509.P6083933644451314314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005408 d ^ (n + 1)

end

end A367509.P6083933644451314314

/-!
# A367511: Highly composite numbers h(k) = A002182(k) such that h >= rad(h)^2, where rad() = A007947().

The programs for A367511, there is no canonical definition to state claims against.
-/

/-! ## A367511.P8282576526092913056

`A326677(A173242(n))`
-/

namespace A367511.P8282576526092913056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326677 (A173242 n).toNat

end

end A367511.P8282576526092913056

/-!
# A367512: Number of evil exponents in the prime factorization of n.

The programs for A367512, the canonical program `A367512.P6814161711481593875` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367512 has offset 1).

The definition of A367512 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A293439, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367512.P184728696478727150

`log2(A367516(n+1))`
-/

namespace A367512.P184728696478727150
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A367516 (n + 1) : ℝ)

end

end A367512.P184728696478727150

namespace A367512

/-- `log2(A367516(n+1))` -/
def P184728696478727150.Spec : Prop :=
  ∀ n, P184728696478727150.a n = (A367512 (n + 1) : ℝ)

end A367512

/-! ## A367512.P2612446217696087937

`A001221(A367513(n+1))`
-/

namespace A367512.P2612446217696087937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A367513 (n + 1)).toNat

end

end A367512.P2612446217696087937

namespace A367512

/-- `A001221(A367513(n+1))` -/
def P2612446217696087937.Spec : Prop :=
  ∀ n, P2612446217696087937.a n = A367512 (n + 1)

end A367512

/-! ## A367512.P6814161711481593875

`A001221(n+1)-A293439(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A367512

/-- `A001221(n+1)-A293439(n+1)` -/
def P6814161711481593875.Spec : Prop :=
  ∀ n, P6814161711481593875.a n = A367512 (n + 1)

theorem P6814161711481593875.correct : P6814161711481593875.Spec := by
  intro n
  simp only [A367512, Nat.add_sub_cancel]

end A367512

/-! ## A367512.P11554568637539621740

`val(A363329(n+1), 3)`
-/

namespace A367512.P11554568637539621740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A363329 (n + 1)).toNat 3

end

end A367512.P11554568637539621740

namespace A367512

/-- `val(A363329(n+1), 3)` -/
def P11554568637539621740.Spec : Prop :=
  ∀ n, (P11554568637539621740.a n : ℤ) = A367512 (n + 1)

end A367512

/-! ## A367512.P2544655717923458879

`∑{e}[xor(n, -1), A010059(#)]`
-/

namespace A367512.P2544655717923458879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010059 (Nat.factorization (f1 n).natAbs p)

end

end A367512.P2544655717923458879

namespace A367512

/-- `∑{e}[xor(n, -1), A010059(#)]` -/
def P2544655717923458879.Spec : Prop :=
  ∀ n, P2544655717923458879.a n = A367512 (n + 1)

end A367512

/-! ## A367512.P16199018168134412958

`∑{d}[A270419(n+1), A010051(#)]`
-/

namespace A367512.P16199018168134412958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A367512.P16199018168134412958

namespace A367512

/-- `∑{d}[A270419(n+1), A010051(#)]` -/
def P16199018168134412958.Spec : Prop :=
  ∀ n, P16199018168134412958.a n = A367512 (n + 1)

end A367512

/-! ## A367512.P1000129362034248263

`A162641(A268385(n+1))`
-/

namespace A367512.P1000129362034248263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (A268385 (n + 1)).toNat

end

end A367512.P1000129362034248263

namespace A367512

/-- `A162641(A268385(n+1))` -/
def P1000129362034248263.Spec : Prop :=
  ∀ n, P1000129362034248263.a n = A367512 (n + 1)

end A367512

/-! ## A367512.P16218001643012105469

`and(A367516(n+1)-1, A059498(n+1))`
-/

namespace A367512.P16218001643012105469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A367516 (n + 1) - 1) (A059498 (n + 1))

end

end A367512.P16218001643012105469

namespace A367512

/-- `and(A367516(n+1)-1, A059498(n+1))` -/
def P16218001643012105469.Spec : Prop :=
  ∀ n, P16218001643012105469.a n = A367512 (n + 1)

end A367512

/-! ## A367512.P283942862823995628

`A382290(n+1)^3^n`
-/

namespace A367512.P283942862823995628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382290 (n + 1) ^ 3 ^ n

end

end A367512.P283942862823995628

namespace A367512

/-- `A382290(n+1)^3^n` -/
def P283942862823995628.Spec : Prop :=
  ∀ n, P283942862823995628.a n = A367512 (n + 1)

end A367512

/-! ## A367512.P16787300701343659056

`and(1, A355823(n+1)+A051716(n))`
-/

namespace A367512.P16787300701343659056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A355823 (n + 1) + A051716 n)

end

end A367512.P16787300701343659056

namespace A367512

/-- `and(1, A355823(n+1)+A051716(n))` -/
def P16787300701343659056.Spec : Prop :=
  ∀ n, P16787300701343659056.a n = A367512 (n + 1)

end A367512

/-! ## A367512.P3657078912852723734

`and(1, A355823(n+1)+A100615(n))`
-/

namespace A367512.P3657078912852723734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A355823 (n + 1) + A100615 n)

end

end A367512.P3657078912852723734

namespace A367512

/-- `and(1, A355823(n+1)+A100615(n))` -/
def P3657078912852723734.Spec : Prop :=
  ∀ n, P3657078912852723734.a n = A367512 (n + 1)

end A367512

/-! ## A367512.P9844647833340914455

`and(1, A355823(n+1)+A088357(n))`
-/

namespace A367512.P9844647833340914455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A355823 (n + 1) + A088357 n)

end

end A367512.P9844647833340914455

namespace A367512

/-- `and(1, A355823(n+1)+A088357(n))` -/
def P9844647833340914455.Spec : Prop :=
  ∀ n, P9844647833340914455.a n = A367512 (n + 1)

end A367512

/-!
# A367513: The exponentially evil part of n: the largest unitary divisor of n that is an exponentially evil number (A262675).

The programs for A367513, there is no canonical definition to state claims against.
-/

/-! ## A367513.P12676645550060478141

`(n+1)/A367514(n+1)`
-/

namespace A367513.P12676645550060478141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A367514 (n + 1) : ℚ)

end

end A367513.P12676645550060478141

/-! ## A367513.P16189823412861644091

`A270437(A270419(n+1))`
-/

namespace A367513.P16189823412861644091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270437 (A270419 (n + 1)).toNat

end

end A367513.P16189823412861644091

/-! ## A367513.P8964088183630497214

`gcd(A000578(A270419(n+1)), A002378(n))`
-/

namespace A367513.P8964088183630497214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000578 (A270419 (n + 1)).toNat) (A002378 n)

end

end A367513.P8964088183630497214

/-! ## A367513.P7341225930990210364

`gcd(A007778(A270419(n+1)), A108548(n+1))`
-/

namespace A367513.P7341225930990210364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007778 (A270419 (n + 1)).toNat) (A108548 (n + 1))

end

end A367513.P7341225930990210364

/-! ## A367513.P2855160855466272143

`A365297(A270419(n+1)*A356194(n+1))`
-/

namespace A367513.P2855160855466272143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365297 (A270419 (n + 1) * A356194 (n + 1)).toNat

end

end A367513.P2855160855466272143

/-! ## A367513.P15322840375401706455

`A368540(n+1)%A250320(n+1)`
-/

namespace A367513.P15322840375401706455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368540 (n + 1)) (A250320 (n + 1))

end

end A367513.P15322840375401706455

/-! ## A367513.P3751543459919776362

`A368540(n+1)+A000122(A095284(n+1))`
-/

namespace A367513.P3751543459919776362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368540 (n + 1) + A000122 (A095284 (n + 1)).toNat

end

end A367513.P3751543459919776362

/-! ## A367513.P13475782401904477154

`and(A368540(n+1), A381707(n+1))`
-/

namespace A367513.P13475782401904477154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A368540 (n + 1)) (A381707 (n + 1))

end

end A367513.P13475782401904477154

/-! ## A367513.P13733238758398236696

`gcd(A186715(A360540(n+1)), A360540(n+1))`
-/

namespace A367513.P13733238758398236696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186715 (A360540 (n + 1)).toNat) (A360540 (n + 1))

end

end A367513.P13733238758398236696

/-! ## A367513.P17813701436220292811

`A368540(lcm(A270418(3*n+1), A368540(n+1)))`
-/

namespace A367513.P17813701436220292811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368540 (Int.lcm (A270418 (3 * n + 1)) (A368540 (n + 1)))

end

end A367513.P17813701436220292811

/-! ## A367513.P16358194073226976706

`A368540((n*∏{p}[n+1, C(#%n, #)]+1)*A270418(n+1))`
-/

namespace A367513.P16358194073226976706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368540 (((n * (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p) + 1 : ℕ) : ℤ) * A270418 (n + 1)).toNat

end

end A367513.P16358194073226976706

/-! ## A367513.P2834806283603521003

`A365297((n+1)*A365297((n+1)²))`
-/

namespace A367513.P2834806283603521003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365297 ((n + 1 : ℤ) * A365297 ((n + 1) ^ 2)).toNat

end

end A367513.P2834806283603521003

/-!
# A367514: The exponentially odious part of n: the largest unitary divisor of n that is an exponentially odious number (A270428).

The programs for A367514, there is no canonical definition to state claims against.
-/

/-! ## A367514.P3148817656232614593

`(n+1)/A367513(n+1)`
-/

namespace A367514.P3148817656232614593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A367513 (n + 1) : ℚ)

end

end A367514.P3148817656232614593

/-! ## A367514.P512347744533137397

`A270436(A270418(n+1))`
-/

namespace A367514.P512347744533137397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270436 (A270418 (n + 1)).toNat

end

end A367514.P512347744533137397

/-! ## A367514.P147209145082672275

`(n+1)/A270437(A270419(n+1))`
-/

namespace A367514.P147209145082672275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A270437 (A270419 (n + 1)).toNat : ℚ)

end

end A367514.P147209145082672275

/-! ## A367514.P4153916004835160306

`gcd(A000578(A270418(n+1)), A033286(n+1))`
-/

namespace A367514.P4153916004835160306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000578 (A270418 (n + 1)).toNat) (A033286 (n + 1))

end

end A367514.P4153916004835160306

/-!
# A367515: The number of unitary divisors of n that are exponentially odious numbers (A270428).

The programs for A367515, the canonical program `A367515.P13637258747578568205` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367515 has offset 1).

The definition of A367515 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293439, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367515.P13637258747578568205

`2^A293439(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A367515

/-- `2^A293439(n+1)` -/
def P13637258747578568205.Spec : Prop :=
  ∀ n, P13637258747578568205.a n = (A367515 (n + 1) : ℚ)

end A367515

/-! ## A367515.P6314607723843143539

`A034444(n+1)/A367516(n+1)`
-/

namespace A367515.P6314607723843143539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) / (A367516 (n + 1) : ℚ)

end

end A367515.P6314607723843143539

namespace A367515

/-- `A034444(n+1)/A367516(n+1)` -/
def P6314607723843143539.Spec : Prop :=
  ∀ n, P6314607723843143539.a n = (A367515 (n + 1) : ℚ)

end A367515

/-! ## A367515.P4220119491499541051

`∏{e}[n+1, A001285(#)]`
-/

namespace A367515.P4220119491499541051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001285 (Nat.factorization (f1 n) p)

end

end A367515.P4220119491499541051

namespace A367515

/-- `∏{e}[n+1, A001285(#)]` -/
def P4220119491499541051.Spec : Prop :=
  ∀ n, P4220119491499541051.a n = A367515 (n + 1)

end A367515

/-! ## A367515.P8636027943922119726

`A034444(A270418(n+1))`
-/

namespace A367515.P8636027943922119726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A270418 (n + 1)).toNat

end

end A367515.P8636027943922119726

namespace A367515

/-- `A034444(A270418(n+1))` -/
def P8636027943922119726.Spec : Prop :=
  ∀ n, P8636027943922119726.a n = A367515 (n + 1)

end A367515

/-! ## A367515.P7807689565605334170

`A034444(A367514(n+1))`
-/

namespace A367515.P7807689565605334170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A367514 (n + 1)).toNat

end

end A367515.P7807689565605334170

namespace A367515

/-- `A034444(A367514(n+1))` -/
def P7807689565605334170.Spec : Prop :=
  ∀ n, P7807689565605334170.a n = A367515 (n + 1)

end A367515

/-! ## A367515.P9028912251865115644

`A034444(A367699(n+1))`
-/

namespace A367515.P9028912251865115644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A367699 (n + 1)).toNat

end

end A367515.P9028912251865115644

namespace A367515

/-- `A034444(A367699(n+1))` -/
def P9028912251865115644.Spec : Prop :=
  ∀ n, P9028912251865115644.a n = A367515 (n + 1)

end A367515

/-! ## A367515.P17757064832592702025

`A034444((n+1)/A367513(n+1))`
-/

namespace A367515.P17757064832592702025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A367513 (n + 1) : ℚ))).toNat

end

end A367515.P17757064832592702025

namespace A367515

/-- `A034444((n+1)/A367513(n+1))` -/
def P17757064832592702025.Spec : Prop :=
  ∀ n, P17757064832592702025.a n = A367515 (n + 1)

end A367515

/-! ## A367515.P5139698479252328052

`A034444(n+1)/A034444(A367698(n+1))`
-/

namespace A367515.P5139698479252328052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) / (A034444 (A367698 (n + 1)).toNat : ℚ)

end

end A367515.P5139698479252328052

namespace A367515

/-- `A034444(n+1)/A034444(A367698(n+1))` -/
def P5139698479252328052.Spec : Prop :=
  ∀ n, P5139698479252328052.a n = (A367515 (n + 1) : ℚ)

end A367515

/-! ## A367515.P15866749233795590708

`A353898(A007947((n+1)/A366906(n+1)))`
-/

namespace A367515.P15866749233795590708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353898 (A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A366906 (n + 1) : ℚ))).toNat).toNat

end

end A367515.P15866749233795590708

namespace A367515

/-- `A353898(A007947((n+1)/A366906(n+1)))` -/
def P15866749233795590708.Spec : Prop :=
  ∀ n, P15866749233795590708.a n = A367515 (n + 1)

end A367515

/-! ## A367515.P5609607437639816514

`A055076(n+1)*A056624(n+1)/A367516(n+1)`
-/

namespace A367515.P5609607437639816514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055076 (n + 1) * A056624 (n + 1) : ℚ) / (A367516 (n + 1) : ℚ)

end

end A367515.P5609607437639816514

namespace A367515

/-- `A055076(n+1)*A056624(n+1)/A367516(n+1)` -/
def P5609607437639816514.Spec : Prop :=
  ∀ n, P5609607437639816514.a n = (A367515 (n + 1) : ℚ)

end A367515

/-! ## A367515.P8956312381742213256

`gcd(A000079(n), A293443(n+1))`
-/

namespace A367515.P8956312381742213256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A293443 (n + 1))

end

end A367515.P8956312381742213256

namespace A367515

/-- `gcd(A000079(n), A293443(n+1))` -/
def P8956312381742213256.Spec : Prop :=
  ∀ n, (P8956312381742213256.a n : ℤ) = A367515 (n + 1)

end A367515

/-! ## A367515.P16032318038171093641

`∏{p}[A270418(n+1), A001222(#²)]`
-/

namespace A367515.P16032318038171093641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (p ^ 2)

end

end A367515.P16032318038171093641

namespace A367515

/-- `∏{p}[A270418(n+1), A001222(#²)]` -/
def P16032318038171093641.Spec : Prop :=
  ∀ n, P16032318038171093641.a n = A367515 (n + 1)

end A367515

/-! ## A367515.P7237120885186338773

`A055076(A268385(n+1))`
-/

namespace A367515.P7237120885186338773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (A268385 (n + 1)).toNat

end

end A367515.P7237120885186338773

namespace A367515

/-- `A055076(A268385(n+1))` -/
def P7237120885186338773.Spec : Prop :=
  ∀ n, P7237120885186338773.a n = A367515 (n + 1)

end A367515

/-! ## A367515.P12936190697398815028

`A318472(A367932(n+1))`
-/

namespace A367515.P12936190697398815028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318472 (A367932 (n + 1)).toNat

end

end A367515.P12936190697398815028

namespace A367515

/-- `A318472(A367932(n+1))` -/
def P12936190697398815028.Spec : Prop :=
  ∀ n, P12936190697398815028.a n = A367515 (n + 1)

end A367515

/-! ## A367515.P5341341690741478986

`and(A381707(n+1), A385042(n+1))`
-/

namespace A367515.P5341341690741478986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A381707 (n + 1)) (A385042 (n + 1))

end

end A367515.P5341341690741478986

namespace A367515

/-- `and(A381707(n+1), A385042(n+1))` -/
def P5341341690741478986.Spec : Prop :=
  ∀ n, P5341341690741478986.a n = A367515 (n + 1)

end A367515

/-! ## A367515.P14140555323717689774

`A385042((n+1)*A367513(n+1))`
-/

namespace A367515.P14140555323717689774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385042 ((n + 1 : ℤ) * A367513 (n + 1)).toNat

end

end A367515.P14140555323717689774

namespace A367515

/-- `A385042((n+1)*A367513(n+1))` -/
def P14140555323717689774.Spec : Prop :=
  ∀ n, P14140555323717689774.a n = A367515 (n + 1)

end A367515

/-! ## A367515.P10242837764627392888

`A385042((n+1)*A368167(n+1))`
-/

namespace A367515.P10242837764627392888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385042 ((n + 1 : ℤ) * A368167 (n + 1)).toNat

end

end A367515.P10242837764627392888

namespace A367515

/-- `A385042((n+1)*A368167(n+1))` -/
def P10242837764627392888.Spec : Prop :=
  ∀ n, P10242837764627392888.a n = A367515 (n + 1)

end A367515

/-! ## A367515.P12784912701809193950

`A385042((n+1)*A368540(n+1))`
-/

namespace A367515.P12784912701809193950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385042 ((n + 1 : ℤ) * A368540 (n + 1)).toNat

end

end A367515.P12784912701809193950

namespace A367515

/-- `A385042((n+1)*A368540(n+1))` -/
def P12784912701809193950.Spec : Prop :=
  ∀ n, P12784912701809193950.a n = A367515 (n + 1)

end A367515

/-! ## A367515.P13147918681747975721

`and(A080567(n+1), A385042(n+1))`
-/

namespace A367515.P13147918681747975721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080567 (n + 1)) (A385042 (n + 1))

end

end A367515.P13147918681747975721

namespace A367515

/-- `and(A080567(n+1), A385042(n+1))` -/
def P13147918681747975721.Spec : Prop :=
  ∀ n, P13147918681747975721.a n = A367515 (n + 1)

end A367515

/-! ## A367515.P10859224714631851451

`A385042((n+1)*A057521(n+1))`
-/

namespace A367515.P10859224714631851451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385042 ((n + 1 : ℤ) * A057521 (n + 1)).toNat

end

end A367515.P10859224714631851451

namespace A367515

/-- `A385042((n+1)*A057521(n+1))` -/
def P10859224714631851451.Spec : Prop :=
  ∀ n, P10859224714631851451.a n = A367515 (n + 1)

end A367515

/-!
# A367516: The number of unitary divisors of n that are exponentially evil numbers (A262675).

The programs for A367516, the canonical program `A367516.P12997703582462291800` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367516 has offset 1).

The definition of A367516 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A367512, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A367516.P12997703582462291800

`2^A367512(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A367516

/-- `2^A367512(n+1)` -/
def P12997703582462291800.Spec : Prop :=
  ∀ n, P12997703582462291800.a n = (A367516 (n + 1) : ℚ)

end A367516

/-! ## A367516.P4983102839393918914

`A034444(n+1)/A367515(n+1)`
-/

namespace A367516.P4983102839393918914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) / (A367515 (n + 1) : ℚ)

end

end A367516.P4983102839393918914

namespace A367516

/-- `A034444(n+1)/A367515(n+1)` -/
def P4983102839393918914.Spec : Prop :=
  ∀ n, P4983102839393918914.a n = (A367516 (n + 1) : ℚ)

end A367516

/-! ## A367516.P5239153537617971608

`A034444(A270419(n+1))`
-/

namespace A367516.P5239153537617971608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A270419 (n + 1)).toNat

end

end A367516.P5239153537617971608

namespace A367516

/-- `A034444(A270419(n+1))` -/
def P5239153537617971608.Spec : Prop :=
  ∀ n, P5239153537617971608.a n = A367516 (n + 1)

end A367516

/-! ## A367516.P961260571889145111

`A034444(A367513(n+1))`
-/

namespace A367516.P961260571889145111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A367513 (n + 1)).toNat

end

end A367516.P961260571889145111

namespace A367516

/-- `A034444(A367513(n+1))` -/
def P961260571889145111.Spec : Prop :=
  ∀ n, P961260571889145111.a n = A367516 (n + 1)

end A367516

/-! ## A367516.P17697544214195124612

`A034444(A367698(n+1))`
-/

namespace A367516.P17697544214195124612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A367698 (n + 1)).toNat

end

end A367516.P17697544214195124612

namespace A367516

/-- `A034444(A367698(n+1))` -/
def P17697544214195124612.Spec : Prop :=
  ∀ n, P17697544214195124612.a n = A367516 (n + 1)

end A367516

/-! ## A367516.P3947232834097842134

`A000005(∏{p}[A270419(n+1), #])`
-/

namespace A367516.P3947232834097842134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A367516.P3947232834097842134

namespace A367516

/-- `A000005(∏{p}[A270419(n+1), #])` -/
def P3947232834097842134.Spec : Prop :=
  ∀ n, P3947232834097842134.a n = A367516 (n + 1)

end A367516

/-! ## A367516.P3682514142732309629

`A359411(A367513(n+1)%A151800(n))`
-/

namespace A367516.P3682514142732309629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359411 (Int.tmod (A367513 (n + 1)) (A151800 n)).toNat

end

end A367516.P3682514142732309629

namespace A367516

/-- `A359411(A367513(n+1)%A151800(n))` -/
def P3682514142732309629.Spec : Prop :=
  ∀ n, P3682514142732309629.a n = A367516 (n + 1)

end A367516

/-! ## A367516.P3112329858988917256

`gcd(A045655(n), A392452(n+1))`
-/

namespace A367516.P3112329858988917256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045655 n) (A392452 (n + 1))

end

end A367516.P3112329858988917256

namespace A367516

/-- `gcd(A045655(n), A392452(n+1))` -/
def P3112329858988917256.Spec : Prop :=
  ∀ n, (P3112329858988917256.a n : ℤ) = A367516 (n + 1)

end A367516

/-!
# A367518: Numerators of even-numbered Maclaurin coefficients of sqrt(tan(x)/x).

The programs for A367518, there is no canonical definition to state claims against.
-/

/-! ## A367518.P4719107106295699331

`∏{p}[A241885(A114513(n)), #]`
-/

namespace A367518.P4719107106295699331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241885 (A114513 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A367518.P4719107106295699331

/-!
# A367519: Denominators of even-numbered Maclaurin coefficients of sqrt(tan(x)/x).

The programs for A367519, there is no canonical definition to state claims against.
-/

/-! ## A367519.P5658596895904070890

`A008992(n)/record[A363345(n+1)]`
-/

namespace A367519.P5658596895904070890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363345 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008992 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A367519.P5658596895904070890

/-!
# A367520: a(n) = binomial(A007310(n+1),n)/A007310(n+1).

The programs for A367520, the canonical program `A367520.P3051559262551883952` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367520 has offset 0).

The definition of A367520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367520.P3051559262551883952

`C(A007310(n+1), n)/A007310(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A367520

/-- `C(A007310(n+1), n)/A007310(n+1)` -/
def P3051559262551883952.Spec : Prop :=
  ∀ n, P3051559262551883952.a n = (A367520 n : ℚ)

end A367520

/-! ## A367520.P12223274902910259514

`A051168(C(or(1, 3*(n+1)), 2)-n-1)`
-/

namespace A367520.P12223274902910259514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 ((Nat.choose (Nat.lor 1 (3 * (n + 1))) 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A367520.P12223274902910259514

namespace A367520

/-- `A051168(C(or(1, 3*(n+1)), 2)-n-1)` -/
def P12223274902910259514.Spec : Prop :=
  ∀ n, P12223274902910259514.a n = A367520 n

end A367520

/-! ## A367520.P8978355220286891700

`A073147(A128223(n))`
-/

namespace A367520.P8978355220286891700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073147 (A128223 n).toNat

end

end A367520.P8978355220286891700

namespace A367520

/-- `A073147(A128223(n))` -/
def P8978355220286891700.Spec : Prop :=
  ∀ n, P8978355220286891700.a n = A367520 n

end A367520

/-! ## A367520.P11663745792670781547

`C(A063196(3*n+2), n)/A063196(3*n+2)`
-/

namespace A367520.P11663745792670781547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A063196 (3 * n + 2)).toNat n : ℚ) / (A063196 (3 * n + 2) : ℚ)

end

end A367520.P11663745792670781547

namespace A367520

/-- `C(A063196(3*n+2), n)/A063196(3*n+2)` -/
def P11663745792670781547.Spec : Prop :=
  ∀ n, P11663745792670781547.a n = (A367520 n : ℚ)

end A367520

/-! ## A367520.P10133968586185339456

`A051033(A007310(n+1))/A007310(n+1)`
-/

namespace A367520.P10133968586185339456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051033 (A007310 (n + 1)).toNat : ℚ) / (A007310 (n + 1) : ℚ)

end

end A367520.P10133968586185339456

namespace A367520

/-- `A051033(A007310(n+1))/A007310(n+1)` -/
def P10133968586185339456.Spec : Prop :=
  ∀ n, P10133968586185339456.a n = (A367520 n : ℚ)

end A367520

/-!
# A367521: a(n) = binomial(A007310(n+1),n+1)/A007310(n+1).

The programs for A367521, the canonical program `A367521.P15029318979479651844` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367521 has offset 0).

The definition of A367521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367521.P15029318979479651844

`C(A007310(n+1), n+1)/A007310(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A367521

/-- `C(A007310(n+1), n+1)/A007310(n+1)` -/
def P15029318979479651844.Spec : Prop :=
  ∀ n, P15029318979479651844.a n = (A367521 n : ℚ)

end A367521

/-! ## A367521.P5466437603693269069

`A328901(A354595(n+1))`
-/

namespace A367521.P5466437603693269069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328901 (A354595 (n + 1)).toNat

end

end A367521.P5466437603693269069

namespace A367521

/-- `A328901(A354595(n+1))` -/
def P5466437603693269069.Spec : Prop :=
  ∀ n, P5466437603693269069.a n = A367521 n

end A367521

/-! ## A367521.P9239509150169521976

`A099510(A050187(2*(n+1)))/(n+1)`
-/

namespace A367521.P9239509150169521976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099510 (A050187 (2 * (n + 1))).toNat : ℚ) / (n + 1 : ℚ)

end

end A367521.P9239509150169521976

namespace A367521

/-- `A099510(A050187(2*(n+1)))/(n+1)` -/
def P9239509150169521976.Spec : Prop :=
  ∀ n, P9239509150169521976.a n = (A367521 n : ℚ)

end A367521

/-! ## A367521.P6597100039748230992

`C(A005843(A004526(3*n+1)), n)/(n+1)`
-/

namespace A367521.P6597100039748230992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A005843 (A004526 (3 * n + 1)).toNat).toNat n : ℚ) / (n + 1 : ℚ)

end

end A367521.P6597100039748230992

namespace A367521

/-- `C(A005843(A004526(3*n+1)), n)/(n+1)` -/
def P6597100039748230992.Spec : Prop :=
  ∀ n, P6597100039748230992.a n = (A367521 n : ℚ)

end A367521

/-! ## A367521.P15331632503024988622

`C(A007494(n)+A004526(3*n+1), n)/(n+1)`
-/

namespace A367521.P15331632503024988622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A007494 n + A004526 (3 * n + 1)).toNat n : ℚ) / (n + 1 : ℚ)

end

end A367521.P15331632503024988622

namespace A367521

/-- `C(A007494(n)+A004526(3*n+1), n)/(n+1)` -/
def P15331632503024988622.Spec : Prop :=
  ∀ n, P15331632503024988622.a n = (A367521 n : ℚ)

end A367521

/-!
# A367528: The number of ways of tiling the n X n grid up to diagonal and antidiagonal reflections by a tile that is fixed under 180-degree rotations but is not fixed under either reflection.

The programs for A367528, there is no canonical definition to state claims against.
-/

/-! ## A367528.P14430960077263953565

`A005418((n+1)*(n+1)+1)/2`
-/

namespace A367528.P14430960077263953565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005418 ((n + 1) * (n + 1) + 1) : ℚ) / 2

end

end A367528.P14430960077263953565

/-!
# A367529: The number of ways of tiling the n X n grid up to diagonal and antidiagonal reflections by a tile that is not fixed under any of these symmetries.

The programs for A367529, there is no canonical definition to state claims against.
-/

/-! ## A367529.P12097439353942481055

`and(A320900(A000079(n)²), A367532(n+1))`
-/

namespace A367529.P12097439353942481055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A320900 (A000079 n ^ 2).toNat) (A367532 (n + 1))

end

end A367529.P12097439353942481055

/-! ## A367529.P12042336766509221333

`and(A320900(A000079(2*n)), A367532(n+1))`
-/

namespace A367529.P12042336766509221333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A320900 (A000079 (2 * n)).toNat) (A367532 (n + 1))

end

end A367529.P12042336766509221333

/-!
# A367538: a(n) is the number of ways to make a Secret Santa assignment among n couples such that (i) no one gets their partner's name, (ii) if A gets B's name, B does not get A's name, and (iii) if A gets B's name, then A's partner does not get B's partner's name.

The programs for A367538, there is no canonical definition to state claims against.
-/

/-! ## A367538.P11425666190404147078

`(n-floor(sqrt(2*n+1)-1/2))*A000010(A279573(2*n+1))`
-/

namespace A367538.P11425666190404147078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ⌊Real.sqrt (2 * n + 1 : ℝ) - ((1 : ℚ) / 2 : ℝ)⌋) * A000010 (A279573 (2 * n + 1)).toNat

end

end A367538.P11425666190404147078

/-!
# A367539: Sequence of magic constants related to distance magic graphs.

The programs for A367539, there is no canonical definition to state claims against.
-/

/-! ## A367539.P2584686052055621592

`A061208(3*n+2)-2*n`
-/

namespace A367539.P2584686052055621592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061208 (3 * n + 2) - (2 * n : ℤ)

end

end A367539.P2584686052055621592

/-!
# A367545: a(n) = Sum_{k=0..n} (-2)^k * |(n - k | k)|, where (a | b) denotes the Kronecker symbol.

The programs for A367545, there is no canonical definition to state claims against.
-/

/-! ## A367545.P3787679446312163307

`A053985(A367544(n))`
-/

namespace A367545.P3787679446312163307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (A367544 n).toNat

end

end A367545.P3787679446312163307

/-!
# A367547: Euclid's triangle A217831 represented as binary numbers.

The programs for A367547, there is no canonical definition to state claims against.
-/

/-! ## A367547.P14812400210754772919

`A007088(A367544(n))`
-/

namespace A367547.P14812400210754772919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A367544 n).toNat

end

end A367547.P14812400210754772919

/-!
# A367551: a(n) = Sum_{d|n} (d^2+1)^n.

The programs for A367551, there is no canonical definition to state claims against.
-/

/-! ## A367551.P2570780986253825589

`∑{d}[n+1, (#²+1)^(n+1)]`
-/

namespace A367551.P2570780986253825589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 2 + 1) ^ (n + 1)

end

end A367551.P2570780986253825589

/-!
# A367552: a(n) = Sum_{d|n} (d^2-1)^n.

The programs for A367552, there is no canonical definition to state claims against.
-/

/-! ## A367552.P8331390767164683533

`∑{d}[n+1, (#²-1)^(n+1)]`
-/

namespace A367552.P8331390767164683533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d ^ 2 : ℤ) - 1) ^ (n + 1)

end

end A367552.P8331390767164683533

/-!
# A367554: a(n) is the number of 2n-regular circulant graphs of order 53.

The programs for A367554, there is no canonical definition to state claims against.
-/

/-! ## A367554.P210377647625932508

`A121932(n-A063524(n))`
-/

namespace A367554.P210377647625932508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121932 ((n : ℤ) - A063524 n).toNat

end

end A367554.P210377647625932508

/-! ## A367554.P16831320606204065835

`A121932(n)%A121892(A121946(n))`
-/

namespace A367554.P16831320606204065835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121932 n) (A121892 (A121946 n).toNat)

end

end A367554.P16831320606204065835

/-! ## A367554.P5469185298937744645

`A121932(n)^A307016(A121900(3*n))`
-/

namespace A367554.P5469185298937744645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121932 n : ℚ) ^ (A307016 (A121900 (3 * n)).toNat : ℤ)

end

end A367554.P5469185298937744645

/-! ## A367554.P6474986113358612425

`A121932(n*A238352(n))`
-/

namespace A367554.P6474986113358612425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121932 ((n : ℤ) * A238352 n).toNat

end

end A367554.P6474986113358612425

/-! ## A367554.P16460356634917988645

`A121932(lcm(n, A238352(n)))`
-/

namespace A367554.P16460356634917988645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121932 (Int.lcm (n : ℤ) (A238352 n))

end

end A367554.P16460356634917988645

/-!
# A367556: Comma transform of the Fibonacci numbers.

The programs for A367556, there is no canonical definition to state claims against.
-/

/-! ## A367556.P8034528816821162778

`10*A003893(n)+A008963(n+1)`
-/

namespace A367556.P8034528816821162778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A003893 n + A008963 (n + 1)

end

end A367556.P8034528816821162778

/-!
# A367559: Square array T(n, k) = 2^k - n, read by ascending antidiagonals.

The programs for A367559, the canonical program `A367559.P9738199333979596161` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367559 has offset 0).

The definition of A367559 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367559.P9738199333979596161

`2^A002262(n)-A025581(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A367559

/-- `2^A002262(n)-A025581(n)` -/
def P9738199333979596161.Spec : Prop :=
  ∀ n, P9738199333979596161.a n = (A367559 n : ℚ)

end A367559

/-! ## A367559.P10315778812337303979

`A059268(n)-A025581(n)`
-/

namespace A367559.P10315778812337303979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A025581 n

end

end A367559.P10315778812337303979

namespace A367559

/-- `A059268(n)-A025581(n)` -/
def P10315778812337303979.Spec : Prop :=
  ∀ n, P10315778812337303979.a n = A367559 n

end A367559

/-! ## A367559.P16131832181434271682

`A059268(n)-log2(A130321(n))`
-/

namespace A367559.P16131832181434271682
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℝ) - Real.logb 2 (A130321 n : ℝ)

end

end A367559.P16131832181434271682

namespace A367559

/-- `A059268(n)-log2(A130321(n))` -/
def P16131832181434271682.Spec : Prop :=
  ∀ n, P16131832181434271682.a n = (A367559 n : ℝ)

end A367559

/-! ## A367559.P17730226416793963108

`A059268(n)+1-A004736(n+1)`
-/

namespace A367559.P17730226416793963108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + (1 - A004736 (n + 1))

end

end A367559.P17730226416793963108

namespace A367559

/-- `A059268(n)+1-A004736(n+1)` -/
def P17730226416793963108.Spec : Prop :=
  ∀ n, P17730226416793963108.a n = A367559 n

end A367559

/-! ## A367559.P15332581802849380953

`A000079(A002262(n))-A025581(n)`
-/

namespace A367559.P15332581802849380953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat - A025581 n

end

end A367559.P15332581802849380953

namespace A367559

/-- `A000079(A002262(n))-A025581(n)` -/
def P15332581802849380953.Spec : Prop :=
  ∀ n, P15332581802849380953.a n = A367559 n

end A367559

/-! ## A367559.P14658570990160188498

`A059268(n)-A004524(A099375(n))`
-/

namespace A367559.P14658570990160188498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A004524 (A099375 n).toNat

end

end A367559.P14658570990160188498

namespace A367559

/-- `A059268(n)-A004524(A099375(n))` -/
def P14658570990160188498.Spec : Prop :=
  ∀ n, P14658570990160188498.a n = A367559 n

end A367559

/-! ## A367559.P869343673456365573

`A059268(n)-A059252(A163359(n))`
-/

namespace A367559.P869343673456365573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A059252 (A163359 n).toNat

end

end A367559.P869343673456365573

namespace A367559

/-- `A059268(n)-A059252(A163359(n))` -/
def P869343673456365573.Spec : Prop :=
  ∀ n, P869343673456365573.a n = A367559 n

end A367559

/-! ## A367559.P18248208728317215634

`A011782(A002260(n+1))-A025581(n)`
-/

namespace A367559.P18248208728317215634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat - A025581 n

end

end A367559.P18248208728317215634

namespace A367559

/-- `A011782(A002260(n+1))-A025581(n)` -/
def P18248208728317215634.Spec : Prop :=
  ∀ n, P18248208728317215634.a n = A367559 n

end A367559

/-! ## A367559.P990205151426886994

`A013609(n)/A007318(n)-A025581(n)`
-/

namespace A367559.P990205151426886994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A007318 n : ℚ) - (A025581 n : ℚ)

end

end A367559.P990205151426886994

namespace A367559

/-- `A013609(n)/A007318(n)-A025581(n)` -/
def P990205151426886994.Spec : Prop :=
  ∀ n, P990205151426886994.a n = (A367559 n : ℚ)

end A367559

/-! ## A367559.P5088244868533026316

`A123519(n)/A085478(n)-A025581(n)`
-/

namespace A367559.P5088244868533026316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123519 n : ℚ) / (A085478 n : ℚ) - (A025581 n : ℚ)

end

end A367559.P5088244868533026316

namespace A367559

/-- `A123519(n)/A085478(n)-A025581(n)` -/
def P5088244868533026316.Spec : Prop :=
  ∀ n, P5088244868533026316.a n = (A367559 n : ℚ)

end A367559

/-! ## A367559.P10780764232434724622

`A059268(n)-A002262(A061579(n))`
-/

namespace A367559.P10780764232434724622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A002262 (A061579 n).toNat

end

end A367559.P10780764232434724622

namespace A367559

/-- `A059268(n)-A002262(A061579(n))` -/
def P10780764232434724622.Spec : Prop :=
  ∀ n, P10780764232434724622.a n = A367559 n

end A367559

/-! ## A367559.P14800520725020936755

`A130321(A061579(n))-A025581(n)`
-/

namespace A367559.P14800520725020936755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (A061579 n).toNat - A025581 n

end

end A367559.P14800520725020936755

namespace A367559

/-- `A130321(A061579(n))-A025581(n)` -/
def P14800520725020936755.Spec : Prop :=
  ∀ n, P14800520725020936755.a n = A367559 n

end A367559

/-! ## A367559.P553760127194396058

`A130321(A061579(n))-log2(A130321(n))`
-/

namespace A367559.P553760127194396058
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A130321 (A061579 n).toNat : ℝ) - Real.logb 2 (A130321 n : ℝ)

end

end A367559.P553760127194396058

namespace A367559

/-- `A130321(A061579(n))-log2(A130321(n))` -/
def P553760127194396058.Spec : Prop :=
  ∀ n, P553760127194396058.a n = (A367559 n : ℝ)

end A367559

/-! ## A367559.P14542892643209293677

`A000079(A002262(n))-A002262(A061579(n))`
-/

namespace A367559.P14542892643209293677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat - A002262 (A061579 n).toNat

end

end A367559.P14542892643209293677

namespace A367559

/-- `A000079(A002262(n))-A002262(A061579(n))` -/
def P14542892643209293677.Spec : Prop :=
  ∀ n, P14542892643209293677.a n = A367559 n

end A367559

/-! ## A367559.P12450587203111109567

`A059268(n)-A000120(A173787(n))`
-/

namespace A367559.P12450587203111109567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A000120 (A173787 n).toNat

end

end A367559.P12450587203111109567

namespace A367559

/-- `A059268(n)-A000120(A173787(n))` -/
def P12450587203111109567.Spec : Prop :=
  ∀ n, P12450587203111109567.a n = A367559 n

end A367559

/-!
# A367560: Numbers k such that k^7*2^k + 1 is a prime.

The programs for A367560, there is no canonical definition to state claims against.
-/

/-! ## A367560.P16737689600674213574

`A192051(A117763(n+1))`
-/

namespace A367560.P16737689600674213574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192051 (A117763 (n + 1)).toNat

end

end A367560.P16737689600674213574

/-! ## A367560.P14998670095269967596

`A029494(A022322(n))%A109641(3*n+4)`
-/

namespace A367560.P14998670095269967596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029494 (A022322 n).toNat) (A109641 (3 * n + 4))

end

end A367560.P14998670095269967596

/-!
# A367562: Iterates of the Christmas tree pattern map (A367508), read by rows and converted to decimal.

The programs for A367562, there is no canonical definition to state claims against.
-/

/-! ## A367562.P9258890544799265240

`A053645(A368427(n+2))`
-/

namespace A367562.P9258890544799265240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A368427 (n + 2)).toNat

end

end A367562.P9258890544799265240

/-! ## A367562.P15972667945144901766

`A368427(n+2)-A053644(n+2)`
-/

namespace A367562.P15972667945144901766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368427 (n + 2) - A053644 (n + 2)

end

end A367562.P15972667945144901766

/-! ## A367562.P1879276687581218642

`A053830(A367508(n+1))%A323649(n+1)`
-/

namespace A367562.P1879276687581218642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053830 (A367508 (n + 1)).toNat) (A323649 (n + 1))

end

end A367562.P1879276687581218642

/-! ## A367562.P11767350691321588298

`A028897(A367508(n+1))`
-/

namespace A367562.P11767350691321588298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (A367508 (n + 1)).toNat

end

end A367562.P11767350691321588298

/-! ## A367562.P283478851006172817

`A053830(9*A367508(n+1))`
-/

namespace A367562.P283478851006172817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (9 * A367508 (n + 1)).toNat

end

end A367562.P283478851006172817

/-!
# A367564: Triangular array read by rows: T(n, k) = binomial(n, k) * A001333(n - k).

The programs for A367564, the canonical program `A367564.P6431556321484000451` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367564 has offset 0).

The definition of A367564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367564.P13351611272465533332

`A001333(A025581(n))*A007318(n)`
-/

namespace A367564.P13351611272465533332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A025581 n).toNat * A007318 n

end

end A367564.P13351611272465533332

namespace A367564

/-- `A001333(A025581(n))*A007318(n)` -/
def P13351611272465533332.Spec : Prop :=
  ∀ n, P13351611272465533332.a n = A367564 n

end A367564

/-! ## A367564.P6087101336909677100

`sqrt(A008459(n))*A002965(A099375(n))`
-/

namespace A367564.P6087101336909677100
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A002965 (A099375 n).toNat : ℝ)

end

end A367564.P6087101336909677100

namespace A367564

/-- `sqrt(A008459(n))*A002965(A099375(n))` -/
def P6087101336909677100.Spec : Prop :=
  ∀ n, P6087101336909677100.a n = (A367564 n : ℝ)

end A367564

/-! ## A367564.P656510650415035105

`ceil(A131108(n)/2)*A002965(A099375(n))`
-/

namespace A367564.P656510650415035105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131108 n : ℚ) / 2⌉ * A002965 (A099375 n).toNat

end

end A367564.P656510650415035105

namespace A367564

/-- `ceil(A131108(n)/2)*A002965(A099375(n))` -/
def P656510650415035105.Spec : Prop :=
  ∀ n, P656510650415035105.a n = A367564 n

end A367564

/-! ## A367564.P8474664404211722218

`(A131063(n)+4)/5*A002965(A099375(n))`
-/

namespace A367564.P8474664404211722218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131063 n + 4 : ℚ) / 5 * (A002965 (A099375 n).toNat : ℚ)

end

end A367564.P8474664404211722218

namespace A367564

/-- `(A131063(n)+4)/5*A002965(A099375(n))` -/
def P8474664404211722218.Spec : Prop :=
  ∀ n, P8474664404211722218.a n = (A367564 n : ℚ)

end A367564

/-! ## A367564.P6431556321484000451

`A002965(A099375(n))*A074909(A056943(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A367564

/-- `A002965(A099375(n))*A074909(A056943(n))` -/
def P6431556321484000451.Spec : Prop :=
  ∀ n, P6431556321484000451.a n = A367564 n

theorem P6431556321484000451.correct : P6431556321484000451.Spec := by
  intro n
  simp only [A367564]

end A367564

/-!
# A367566: a(n) is the product of the primes p <= n+1 such that n * k^n == +-1 (mod p) for every k that is not a multiple of p.

The programs for A367566, the canonical program `A367566.P1160178644607421999` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367566 has offset 1).

The definition of A367566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367566.P1160178644607421999

`gcd(A061037(2*(n+1)), A166120(2*n+3))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A367566

/-- `gcd(A061037(2*(n+1)), A166120(2*n+3))` -/
def P1160178644607421999.Spec : Prop :=
  ∀ n, (P1160178644607421999.a n : ℤ) = A367566 (n + 1)

theorem P1160178644607421999.correct : P1160178644607421999.Spec := by
  intro n
  simp only [A367566, Nat.add_sub_cancel]

end A367566

/-!
# A367567: a(n) = Product_{k=0..n} (3*k)! / k!^3.

The programs for A367567, there is no canonical definition to state claims against.
-/

/-! ## A367567.P2315083380283792960

`A007685(n)*A268196(n)`
-/

namespace A367567.P2315083380283792960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007685 n * A268196 n

end

end A367567.P2315083380283792960

/-! ## A367567.P13634332382865212237

`∏[A006480(n)]`
-/

namespace A367567.P13634332382865212237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A367567.P13634332382865212237

/-! ## A367567.P7157168154878691270

`∏[A318107(∑[n])]`
-/

namespace A367567.P7157168154878691270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318107 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A367567.P7157168154878691270

/-! ## A367567.P6717821186858225688

`a(A023443(n))*A006480(n)` with `a(0)=1`
-/

namespace A367567.P6717821186858225688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A023443 n).toNat * A006480 n

end

end A367567.P6717821186858225688

/-! ## A367567.P12224872896001673888

`A073617(2*n+1)*A268196(n)`
-/

namespace A367567.P12224872896001673888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073617 (2 * n + 1) * A268196 n

end

end A367567.P12224872896001673888

/-!
# A367572: Numbers k such that k^8*2^k - 1 is a prime.

The programs for A367572, there is no canonical definition to state claims against.
-/

/-! ## A367572.P6450265519176454769

`A370775(xor(A028557(n), A302337(n+2)))`
-/

namespace A367572.P6450265519176454769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370775 (Int.xor (A028557 n) (A302337 (n + 2))).toNat

end

end A367572.P6450265519176454769

/-!
# A367573: Long legs of the only primitive Pythagorean triple whose inradius is the n-th prime and whose short leg is an odd number.

The programs for A367573, the canonical program `A367573.P17333785257537184699` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367573 has offset 1).

The definition of A367573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367573.P17333785257537184699

`∑[4*A138383(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A367573

/-- `∑[4*A138383(n)]` -/
def P17333785257537184699.Spec : Prop :=
  ∀ n, P17333785257537184699.a n = A367573 (n + 1)

theorem P17333785257537184699.correct : P17333785257537184699.Spec := by
  intro n
  simp only [A367573, Nat.add_sub_cancel]

end A367573

/-! ## A367573.P13168418755993184691

`2*A036690(n+1)`
-/

namespace A367573.P13168418755993184691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036690 (n + 1)

end

end A367573.P13168418755993184691

namespace A367573

/-- `2*A036690(n+1)` -/
def P13168418755993184691.Spec : Prop :=
  ∀ n, P13168418755993184691.a n = A367573 (n + 1)

end A367573

/-! ## A367573.P12790013289032674751

`4*A034953(n+1)`
-/

namespace A367573.P12790013289032674751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A034953 (n + 1)

end

end A367573.P12790013289032674751

namespace A367573

/-- `4*A034953(n+1)` -/
def P12790013289032674751.Spec : Prop :=
  ∀ n, P12790013289032674751.a n = A367573 (n + 1)

end A367573

/-! ## A367573.P17518936661489895982

`2*(A319597(n+1)+1)`
-/

namespace A367573.P17518936661489895982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A319597 (n + 1) + 1)

end

end A367573.P17518936661489895982

namespace A367573

/-- `2*(A319597(n+1)+1)` -/
def P17518936661489895982.Spec : Prop :=
  ∀ n, P17518936661489895982.a n = A367573 (n + 1)

end A367573

/-! ## A367573.P1344769820588945304

`2*(A060800(n+1)-1)`
-/

namespace A367573.P1344769820588945304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A060800 (n + 1) - 1)

end

end A367573.P1344769820588945304

namespace A367573

/-- `2*(A060800(n+1)-1)` -/
def P1344769820588945304.Spec : Prop :=
  ∀ n, P1344769820588945304.a n = A367573 (n + 1)

end A367573

/-! ## A367573.P8763354282540796874

`A117961(n+1)+A001748(n+1)`
-/

namespace A367573.P8763354282540796874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117961 (n + 1) + A001748 (n + 1)

end

end A367573.P8763354282540796874

namespace A367573

/-- `A117961(n+1)+A001748(n+1)` -/
def P8763354282540796874.Spec : Prop :=
  ∀ n, P8763354282540796874.a n = A367573 (n + 1)

end A367573

/-! ## A367573.P17361613438340959291

`A100484(n+1)+A079704(n+1)`
-/

namespace A367573.P17361613438340959291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A079704 (n + 1)

end

end A367573.P17361613438340959291

namespace A367573

/-- `A100484(n+1)+A079704(n+1)` -/
def P17361613438340959291.Spec : Prop :=
  ∀ n, P17361613438340959291.a n = A367573 (n + 1)

end A367573

/-! ## A367573.P17499611386045180462

`A110833(n+1)+A084920(n+1)`
-/

namespace A367573.P17499611386045180462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110833 (n + 1) + A084920 (n + 1)

end

end A367573.P17499611386045180462

namespace A367573

/-- `A110833(n+1)+A084920(n+1)` -/
def P17499611386045180462.Spec : Prop :=
  ∀ n, P17499611386045180462.a n = A367573 (n + 1)

end A367573

/-! ## A367573.P2580764891985184107

`A179262(n+1)+A072055(n+1)`
-/

namespace A367573.P2580764891985184107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179262 (n + 1) + A072055 (n + 1)

end

end A367573.P2580764891985184107

namespace A367573

/-- `A179262(n+1)+A072055(n+1)` -/
def P2580764891985184107.Spec : Prop :=
  ∀ n, P2580764891985184107.a n = A367573 (n + 1)

end A367573

/-! ## A367573.P4455848217153493309

`A319597(n+1)+A060800(n+1)`
-/

namespace A367573.P4455848217153493309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319597 (n + 1) + A060800 (n + 1)

end

end A367573.P4455848217153493309

namespace A367573

/-- `A319597(n+1)+A060800(n+1)` -/
def P4455848217153493309.Spec : Prop :=
  ∀ n, P4455848217153493309.a n = A367573 (n + 1)

end A367573

/-! ## A367573.P17067261219370240368

`A178398(n+1)-A127917(n+1)`
-/

namespace A367573.P17067261219370240368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178398 (n + 1) - A127917 (n + 1)

end

end A367573.P17067261219370240368

namespace A367573

/-- `A178398(n+1)-A127917(n+1)` -/
def P17067261219370240368.Spec : Prop :=
  ∀ n, P17067261219370240368.a n = A367573 (n + 1)

end A367573

/-! ## A367573.P7804542908558636027

`A382070(n+1)-A008864(n+1)`
-/

namespace A367573.P7804542908558636027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382070 (n + 1) - A008864 (n + 1)

end

end A367573.P7804542908558636027

namespace A367573

/-- `A382070(n+1)-A008864(n+1)` -/
def P7804542908558636027.Spec : Prop :=
  ∀ n, P7804542908558636027.a n = A367573 (n + 1)

end A367573

/-! ## A367573.P9436080862440957217

`A382097(n+1)-A072055(n+1)`
-/

namespace A367573.P9436080862440957217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382097 (n + 1) - A072055 (n + 1)

end

end A367573.P9436080862440957217

namespace A367573

/-- `A382097(n+1)-A072055(n+1)` -/
def P9436080862440957217.Spec : Prop :=
  ∀ n, P9436080862440957217.a n = A367573 (n + 1)

end A367573

/-! ## A367573.P13028890190562671120

`A000040(n+1)*A089241(n+1)`
-/

namespace A367573.P13028890190562671120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A089241 (n + 1)

end

end A367573.P13028890190562671120

namespace A367573

/-- `A000040(n+1)*A089241(n+1)` -/
def P13028890190562671120.Spec : Prop :=
  ∀ n, P13028890190562671120.a n = A367573 (n + 1)

end A367573

/-! ## A367573.P15201853529832693639

`A008864(n+1)*A100484(n+1)`
-/

namespace A367573.P15201853529832693639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) * A100484 (n + 1)

end

end A367573.P15201853529832693639

namespace A367573

/-- `A008864(n+1)*A100484(n+1)` -/
def P15201853529832693639.Spec : Prop :=
  ∀ n, P15201853529832693639.a n = A367573 (n + 1)

end A367573

/-! ## A367573.P7397234838230605052

`A028815(n+1)*A100484(n+1)`
-/

namespace A367573.P7397234838230605052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) * A100484 (n + 1)

end

end A367573.P7397234838230605052

namespace A367573

/-- `A028815(n+1)*A100484(n+1)` -/
def P7397234838230605052.Spec : Prop :=
  ∀ n, P7397234838230605052.a n = A367573 (n + 1)

end A367573

/-! ## A367573.P1072532389276936919

`A138402(n+1)/A008837(n+1)`
-/

namespace A367573.P1072532389276936919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138402 (n + 1) : ℚ) / (A008837 (n + 1) : ℚ)

end

end A367573.P1072532389276936919

namespace A367573

/-- `A138402(n+1)/A008837(n+1)` -/
def P1072532389276936919.Spec : Prop :=
  ∀ n, P1072532389276936919.a n = (A367573 (n + 1) : ℚ)

end A367573

/-! ## A367573.P2850272466205430685

`A138406(n+1)/A138416(n+1)`
-/

namespace A367573.P2850272466205430685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138406 (n + 1) : ℚ) / (A138416 (n + 1) : ℚ)

end

end A367573.P2850272466205430685

namespace A367573

/-- `A138406(n+1)/A138416(n+1)` -/
def P2850272466205430685.Spec : Prop :=
  ∀ n, P2850272466205430685.a n = (A367573 (n + 1) : ℚ)

end A367573

/-! ## A367573.P12781810104583317182

`A138402(n+1)%A178398(n+1)`
-/

namespace A367573.P12781810104583317182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138402 (n + 1)) (A178398 (n + 1))

end

end A367573.P12781810104583317182

namespace A367573

/-- `A138402(n+1)%A178398(n+1)` -/
def P12781810104583317182.Spec : Prop :=
  ∀ n, P12781810104583317182.a n = A367573 (n + 1)

end A367573

/-! ## A367573.P10557892066474635393

`A138411(n+1)%A178398(n+1)`
-/

namespace A367573.P10557892066474635393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138411 (n + 1)) (A178398 (n + 1))

end

end A367573.P10557892066474635393

namespace A367573

/-- `A138411(n+1)%A178398(n+1)` -/
def P10557892066474635393.Spec : Prop :=
  ∀ n, P10557892066474635393.a n = A367573 (n + 1)

end A367573

/-!
# A367576: Semiprimes p*q such that 2*p divides q-1.

The programs for A367576, the canonical program `A367576.P13170412679761465563` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367576 has offset 1).

The definition of A367576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367576.P13170412679761465563

`filter[A064899(n+1), A347871(#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A367576

/-- `filter[A064899(n+1), A347871(#)]` -/
def P13170412679761465563.Spec : Prop :=
  ∀ n, P13170412679761465563.a n = A367576 (n + 1)

theorem P13170412679761465563.correct : P13170412679761465563.Spec := by
  intro n
  simp only [A367576, Nat.add_sub_cancel]

end A367576

/-! ## A367576.P13079578339412036760

`filter[A089995(n+1), A344884(#)]`
-/

namespace A367576.P13079578339412036760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344884 (f1 j).toNat = 1) n)

end

end A367576.P13079578339412036760

namespace A367576

/-- `filter[A089995(n+1), A344884(#)]` -/
def P13079578339412036760.Spec : Prop :=
  ∀ n, P13079578339412036760.a n = A367576 (n + 1)

end A367576

/-! ## A367576.P9919325906022506710

`filter[A006881(n+2), A344884(#)]`
-/

namespace A367576.P9919325906022506710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344884 (f1 j).toNat = 1) n)

end

end A367576.P9919325906022506710

namespace A367576

/-- `filter[A006881(n+2), A344884(#)]` -/
def P9919325906022506710.Spec : Prop :=
  ∀ n, P9919325906022506710.a n = A367576 (n + 1)

end A367576

/-! ## A367576.P9193755648179650539

`filter[A064899(n+2), A344884(#)]`
-/

namespace A367576.P9193755648179650539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344884 (f1 j).toNat = 1) n)

end

end A367576.P9193755648179650539

namespace A367576

/-- `filter[A064899(n+2), A344884(#)]` -/
def P9193755648179650539.Spec : Prop :=
  ∀ n, P9193755648179650539.a n = A367576 (n + 1)

end A367576

/-! ## A367576.P9179588877660870566

`filter[A350586(n+2), A344884(#)]`
-/

namespace A367576.P9179588877660870566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350586 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344884 (f1 j).toNat = 1) n)

end

end A367576.P9179588877660870566

namespace A367576

/-- `filter[A350586(n+2), A344884(#)]` -/
def P9179588877660870566.Spec : Prop :=
  ∀ n, P9179588877660870566.a n = A367576 (n + 1)

end A367576

/-! ## A367576.P10464495975785081925

`filter[A161918(n+3), A344884(#)]`
-/

namespace A367576.P10464495975785081925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344884 (f1 j).toNat = 1) n)

end

end A367576.P10464495975785081925

namespace A367576

/-- `filter[A161918(n+3), A344884(#)]` -/
def P10464495975785081925.Spec : Prop :=
  ∀ n, P10464495975785081925.a n = A367576 (n + 1)

end A367576

/-! ## A367576.P2140651321150714350

`∩[A047489(n+1), A064899(n+1)]`
-/

namespace A367576.P2140651321150714350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367576.P2140651321150714350

namespace A367576

/-- `∩[A047489(n+1), A064899(n+1)]` -/
def P2140651321150714350.Spec : Prop :=
  ∀ n, (P2140651321150714350.a n : ℤ) = A367576 (n + 1)

end A367576

/-! ## A367576.P169914605884625809

`∩[A064899(n+1), A068992(n+1)]`
-/

namespace A367576.P169914605884625809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367576.P169914605884625809

namespace A367576

/-- `∩[A064899(n+1), A068992(n+1)]` -/
def P169914605884625809.Spec : Prop :=
  ∀ n, (P169914605884625809.a n : ℤ) = A367576 (n + 1)

end A367576

/-! ## A367576.P16186851958005712178

`∩[A064899(n+1), A196499(n+1)]`
-/

namespace A367576.P16186851958005712178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367576.P16186851958005712178

namespace A367576

/-- `∩[A064899(n+1), A196499(n+1)]` -/
def P16186851958005712178.Spec : Prop :=
  ∀ n, (P16186851958005712178.a n : ℤ) = A367576 (n + 1)

end A367576

/-! ## A367576.P11077728432740981783

`∩[A064899(n+1), A344000(n+1)]`
-/

namespace A367576.P11077728432740981783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367576.P11077728432740981783

namespace A367576

/-- `∩[A064899(n+1), A344000(n+1)]` -/
def P11077728432740981783.Spec : Prop :=
  ∀ n, (P11077728432740981783.a n : ℤ) = A367576 (n + 1)

end A367576

/-! ## A367576.P9856519827918866597

`∩[A064899(n+1), A347873(n+1)]`
-/

namespace A367576.P9856519827918866597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367576.P9856519827918866597

namespace A367576

/-- `∩[A064899(n+1), A347873(n+1)]` -/
def P9856519827918866597.Spec : Prop :=
  ∀ n, (P9856519827918866597.a n : ℤ) = A367576 (n + 1)

end A367576

/-! ## A367576.P14115693471970206798

`∩[A089995(n+1), A344974(n+1)]`
-/

namespace A367576.P14115693471970206798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367576.P14115693471970206798

namespace A367576

/-- `∩[A089995(n+1), A344974(n+1)]` -/
def P14115693471970206798.Spec : Prop :=
  ∀ n, (P14115693471970206798.a n : ℤ) = A367576 (n + 1)

end A367576

/-! ## A367576.P337642147061360012

`∩[A064899(n+1), A069237(n+1)]`
-/

namespace A367576.P337642147061360012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367576.P337642147061360012

namespace A367576

/-- `∩[A064899(n+1), A069237(n+1)]` -/
def P337642147061360012.Spec : Prop :=
  ∀ n, (P337642147061360012.a n : ℤ) = A367576 (n + 1)

end A367576

/-! ## A367576.P9535952229088982646

`∩[A047490(n+1), A064899(n+1)]`
-/

namespace A367576.P9535952229088982646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367576.P9535952229088982646

namespace A367576

/-- `∩[A047490(n+1), A064899(n+1)]` -/
def P9535952229088982646.Spec : Prop :=
  ∀ n, (P9535952229088982646.a n : ℤ) = A367576 (n + 1)

end A367576

/-! ## A367576.P14175205688553900676

`∩[A047504(n+1), A064899(n+1)]`
-/

namespace A367576.P14175205688553900676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367576.P14175205688553900676

namespace A367576

/-- `∩[A047504(n+1), A064899(n+1)]` -/
def P14175205688553900676.Spec : Prop :=
  ∀ n, (P14175205688553900676.a n : ℤ) = A367576 (n + 1)

end A367576

/-! ## A367576.P10068040419505432787

`∩[A020491(n+1), A064899(n+1)]`
-/

namespace A367576.P10068040419505432787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367576.P10068040419505432787

namespace A367576

/-- `∩[A020491(n+1), A064899(n+1)]` -/
def P10068040419505432787.Spec : Prop :=
  ∀ n, (P10068040419505432787.a n : ℤ) = A367576 (n + 1)

end A367576

/-! ## A367576.P10187922801305575293

`∩[A064899(n+1), A263715(n+1)]`
-/

namespace A367576.P10187922801305575293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367576.P10187922801305575293

namespace A367576

/-- `∩[A064899(n+1), A263715(n+1)]` -/
def P10187922801305575293.Spec : Prop :=
  ∀ n, (P10187922801305575293.a n : ℤ) = A367576 (n + 1)

end A367576

/-! ## A367576.P5903178292012075809

`∩[A064899(n+1), A079298(n+1)]`
-/

namespace A367576.P5903178292012075809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367576.P5903178292012075809

namespace A367576

/-- `∩[A064899(n+1), A079298(n+1)]` -/
def P5903178292012075809.Spec : Prop :=
  ∀ n, (P5903178292012075809.a n : ℤ) = A367576 (n + 1)

end A367576

/-! ## A367576.P9526767014408709860

`∩[A047595(n+1), A064899(n+1)]`
-/

namespace A367576.P9526767014408709860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367576.P9526767014408709860

namespace A367576

/-- `∩[A047595(n+1), A064899(n+1)]` -/
def P9526767014408709860.Spec : Prop :=
  ∀ n, (P9526767014408709860.a n : ℤ) = A367576 (n + 1)

end A367576

/-! ## A367576.P3774364481680462378

`∩[A064899(n+1), A172019(n+1)]`
-/

namespace A367576.P3774364481680462378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367576.P3774364481680462378

namespace A367576

/-- `∩[A064899(n+1), A172019(n+1)]` -/
def P3774364481680462378.Spec : Prop :=
  ∀ n, (P3774364481680462378.a n : ℤ) = A367576 (n + 1)

end A367576

/-!
# A367578: a(0) = 0, a(1) = 1; for n > 1, a(n) = a(n-1) - CT(a(n-2),a(n-1)) if nonnegative and not already in the sequence, else a(n) = a(n-1) + CT(a(n-2),a(n-1)), where CT(a,b) is the Comma transform (cf. A367360) of a and b.

The programs for A367578, there is no canonical definition to state claims against.
-/

/-! ## A367578.P4166799612316566955

`A367646(A187829(n+3)-3)`
-/

namespace A367578.P4166799612316566955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367646 (A187829 (n + 3) - 3).toNat

end

end A367578.P4166799612316566955

/-! ## A367578.P3860466172082125035

`A367646(n)+A000038(A056040(n))`
-/

namespace A367578.P3860466172082125035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367646 n + A000038 (A056040 n).toNat

end

end A367578.P3860466172082125035

/-! ## A367578.P12435470752544841401

`A367646(n)+A129186(A056993(n))`
-/

namespace A367578.P12435470752544841401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367646 n + A129186 (A056993 n).toNat

end

end A367578.P12435470752544841401

/-! ## A367578.P3922439300415747164

`A367646(n)+A281116(A051439(n))`
-/

namespace A367578.P3922439300415747164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367646 n + A281116 (A051439 n).toNat

end

end A367578.P3922439300415747164

/-! ## A367578.P15665482658060575243

`A057427(A289268(n))*A367646(n)`
-/

namespace A367578.P15665482658060575243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A289268 n).toNat * A367646 n

end

end A367578.P15665482658060575243

/-!
# A367579: Irregular triangle read by rows where row n is the multiset multiplicity kernel (MMK) of the multiset of prime indices of n.

The programs for A367579, there is no canonical definition to state claims against.
-/

/-! ## A367579.P5508379550952763540

`A335124(A077168(n))`
-/

namespace A367579.P5508379550952763540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335124 (A077168 n).toNat

end

end A367579.P5508379550952763540

/-! ## A367579.P12192507214139514234

`A335124(A100981(n+1))`
-/

namespace A367579.P12192507214139514234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335124 (A100981 (n + 1)).toNat

end

end A367579.P12192507214139514234

/-! ## A367579.P2642150240616191432

`A211028(A238863(n+1))`
-/

namespace A367579.P2642150240616191432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211028 (A238863 (n + 1)).toNat

end

end A367579.P2642150240616191432

/-! ## A367579.P11441002554278318694

`A091090(A391740(n+1)+A000079(n))`
-/

namespace A367579.P11441002554278318694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A391740 (n + 1) + A000079 n).toNat

end

end A367579.P11441002554278318694

/-! ## A367579.P5536679157145087165

`A001511(A003215(n)*A333764(n+1))`
-/

namespace A367579.P5536679157145087165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A003215 n * A333764 (n + 1)).toNat

end

end A367579.P5536679157145087165

/-!
# A367580: Multiset multiplicity kernel (MMK) of n. Product of (least prime factor with exponent k)^(number of prime factors with exponent k) over all distinct exponents k appearing in the prime factorization of n.

The programs for A367580, there is no canonical definition to state claims against.
-/

/-! ## A367580.P10046468202716942966

`A020639(A000583(n+1))*A330692(n+1)`
-/

namespace A367580.P10046468202716942966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000583 (n + 1)).toNat * A330692 (n + 1)

end

end A367580.P10046468202716942966

/-! ## A367580.P6467746163758232096

`A360677(A101479(n))+A182816(n+1)`
-/

namespace A367580.P6467746163758232096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360677 (A101479 n).toNat + A182816 (n + 1)

end

end A367580.P6467746163758232096

/-! ## A367580.P4021229589194560619

`A020639(n+1)*A069010(A000740(n+1))`
-/

namespace A367580.P4021229589194560619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A069010 (A000740 (n + 1)).toNat

end

end A367580.P4021229589194560619

/-! ## A367580.P5721351997272724626

`A008480(n+1)*A020639(A077168(n))`
-/

namespace A367580.P5721351997272724626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A020639 (A077168 n).toNat

end

end A367580.P5721351997272724626

/-! ## A367580.P7005391991113953796

`A020639(n+1)*A326516(A077168(n))`
-/

namespace A367580.P7005391991113953796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A326516 (A077168 n).toNat

end

end A367580.P7005391991113953796

/-!
# A367581: Sum of the multiset multiplicity kernel (in which each multiplicity becomes the least element of that multiplicity) of the prime indices of n.

The programs for A367581, there is no canonical definition to state claims against.
-/

/-! ## A367581.P5360296680300873923

`A056239(A367580(n+1))`
-/

namespace A367581.P5360296680300873923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A367580 (n + 1)).toNat

end

end A367581.P5360296680300873923

/-! ## A367581.P4039649031583893807

`A346698(A367580(n+1)²)`
-/

namespace A367581.P4039649031583893807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A367580 (n + 1) ^ 2).toNat

end

end A367581.P4039649031583893807

/-! ## A367581.P697498320182928846

`A346698(A367580(n+1)^2)`
-/

namespace A367581.P697498320182928846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A367580 (n + 1) ^ 2).toNat

end

end A367581.P697498320182928846

/-! ## A367581.P1069821833703400257

`A000720(A367580(n+1)%A075929(n))`
-/

namespace A367581.P1069821833703400257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.tmod (A367580 (n + 1)) (A075929 n)).toNat

end

end A367581.P1069821833703400257

/-! ## A367581.P7196358272878750542

`A319058(n+1)+A055396(A100980(n+1))`
-/

namespace A367581.P7196358272878750542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319058 (n + 1) + A055396 (A100980 (n + 1)).toNat

end

end A367581.P7196358272878750542

/-!
# A367582: Triangle read by rows where T(n,k) is the number of integer partitions of n whose multiset multiplicity kernel (in which each multiplicity becomes the least element of that multiplicity), sums to k.

The programs for A367582, there is no canonical definition to state claims against.
-/

/-! ## A367582.P16631326295459795312

`A082116(A250486(n))`
-/

namespace A367582.P16631326295459795312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 (A250486 n).toNat

end

end A367582.P16631326295459795312

/-! ## A367582.P4060918563542265069

`A344339(A398274(n+1))`
-/

namespace A367582.P4060918563542265069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344339 (A398274 (n + 1)).toNat

end

end A367582.P4060918563542265069

/-! ## A367582.P5931114722713710007

`A272604(A266886(n+2))`
-/

namespace A367582.P5931114722713710007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A266886 (n + 2)).toNat

end

end A367582.P5931114722713710007

/-! ## A367582.P13796409054738626032

`A245563(A269948(n))`
-/

namespace A367582.P13796409054738626032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245563 (A269948 n).toNat

end

end A367582.P13796409054738626032

/-! ## A367582.P9496969718162619419

`A354579(A269952(n))`
-/

namespace A367582.P9496969718162619419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (A269952 n).toNat

end

end A367582.P9496969718162619419

/-!
# A367583: Greatest element in row n of A367579 (multiset multiplicity kernel).

The programs for A367583, there is no canonical definition to state claims against.
-/

/-! ## A367583.P7390327235857869244

`A061395(A367580(n+1))`
-/

namespace A367583.P7390327235857869244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A367580 (n + 1)).toNat

end

end A367583.P7390327235857869244

/-! ## A367583.P7796913480630413513

`A364191(A089247(n+1))`
-/

namespace A367583.P7796913480630413513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364191 (A089247 (n + 1)).toNat

end

end A367583.P7796913480630413513

/-! ## A367583.P8420765518870937600

`A252464(A367580(n+1))-A297155(n+1)`
-/

namespace A367583.P8420765518870937600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A367580 (n + 1)).toNat - A297155 (n + 1)

end

end A367583.P8420765518870937600

/-! ## A367583.P18181941973424010792

`A367587(gcd(A007947(n+1), A367580(n+1)))`
-/

namespace A367583.P18181941973424010792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367587 (Int.gcd (A007947 (n + 1)) (A367580 (n + 1)))

end

end A367583.P18181941973424010792

/-! ## A367583.P1423956250879244418

`A367587(A367580(n+1)%A340931(n+1))`
-/

namespace A367583.P1423956250879244418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367587 (Int.tmod (A367580 (n + 1)) (A340931 (n + 1))).toNat

end

end A367583.P1423956250879244418

/-! ## A367583.P8023810000852250122

`A367587(A367580(n+1))%A367586(n+1)`
-/

namespace A367583.P8023810000852250122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367587 (A367580 (n + 1)).toNat) (A367586 (n + 1))

end

end A367583.P8023810000852250122

/-!
# A367585: Numbers k whose multiset multiplicity kernel (in which each prime exponent becomes the least prime factor with that exponent) is different from that of all positive integers less than k.

The programs for A367585, there is no canonical definition to state claims against.
-/

/-! ## A367585.P8182301631283899257

`record[A367584(A367580(n+1))]`
-/

namespace A367585.P8182301631283899257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367584 (A367580 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367585.P8182301631283899257

/-!
# A367586: Numbers whose prime indices have a multiset multiplicity kernel (in which each prime exponent becomes the least prime factor with that exponent) that is all ones {1,1,...}. Positions of powers of 2 in A367580.

The programs for A367586, there is no canonical definition to state claims against.
-/

/-! ## A367586.P4039959288645790303

`record[A327526((n%2)^n+n)]`
-/

namespace A367586.P4039959288645790303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327526 ((n % 2) ^ n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367586.P4039959288645790303

/-! ## A367586.P14131672075510023482

`eq[and(1, n), A071625(n+1)]+1`
-/

namespace A367586.P14131672075510023482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A367586.P14131672075510023482

/-! ## A367586.P13968756649336862601

`record[A062759(A004277(n))]`
-/

namespace A367586.P13968756649336862601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367586.P13968756649336862601

/-! ## A367586.P12300584828577253649

`filter[A004277(n), A384667(#)]`
-/

namespace A367586.P12300584828577253649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A367586.P12300584828577253649

/-! ## A367586.P3297458774726044896

`filter[A085924(n), A373252(#)]`
-/

namespace A367586.P3297458774726044896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A367586.P3297458774726044896

/-! ## A367586.P14196050435386103941

`record[A186421(A072774(n+1))]`
-/

namespace A367586.P14196050435386103941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 (A072774 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367586.P14196050435386103941

/-! ## A367586.P11599106985465255071

`record[A327526(A004273(n)+1)]`
-/

namespace A367586.P11599106985465255071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327526 (A004273 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367586.P11599106985465255071

/-! ## A367586.P9763447293074463951

`record[A348717(A327526(n+1))]`
-/

namespace A367586.P9763447293074463951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (A327526 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367586.P9763447293074463951

/-! ## A367586.P12882502670232730456

`filter[A072774(n+1), A135528(#)]`
-/

namespace A367586.P12882502670232730456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A367586.P12882502670232730456

/-! ## A367586.P10710811578741970489

`filter[A072774(n+1), A266591(#)]`
-/

namespace A367586.P10710811578741970489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A367586.P10710811578741970489

/-!
# A367587: Least element in row n of A367858 (multiset multiplicity cokernel).

The programs for A367587, there is no canonical definition to state claims against.
-/

/-! ## A367587.P3491898165080918809

`A055396(A367859(n+1))`
-/

namespace A367587.P3491898165080918809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A367859 (n + 1)).toNat

end

end A367587.P3491898165080918809

/-! ## A367587.P12327387151184229211

`A363487(A089247(n+1))`
-/

namespace A367587.P12327387151184229211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363487 (A089247 (n + 1)).toNat

end

end A367587.P12327387151184229211

/-! ## A367587.P5191919311186390536

`A367860(n+1)-A367860(A028234(n+1))`
-/

namespace A367587.P5191919311186390536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367860 (n + 1) - A367860 (A028234 (n + 1)).toNat

end

end A367587.P5191919311186390536

/-! ## A367587.P6560443756356503494

`A367583(gcd(A007947(n+1), A367859(n+1)))`
-/

namespace A367587.P6560443756356503494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367583 (Int.gcd (A007947 (n + 1)) (A367859 (n + 1)))

end

end A367587.P6560443756356503494

/-! ## A367587.P13950962683079807015

`A367860(A367580(A007947(A367859(A175781(n+1)))))`
-/

namespace A367587.P13950962683079807015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367860 (A367580 (A007947 (A367859 (A175781 (n + 1)).toNat).toNat).toNat).toNat

end

end A367587.P13950962683079807015

/-!
# A367588: Number of integer partitions of n with exactly two distinct parts, both appearing with the same multiplicity.

The programs for A367588, the canonical program `A367588.P3371264285973679459` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367588 has offset 0).

The definition of A367588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367588.P10476486852790605166

`∑{d}[n, floor(sinh(log(#)))]`
-/

namespace A367588.P10476486852790605166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊Real.sinh (Real.log (d : ℝ))⌋

end

end A367588.P10476486852790605166

namespace A367588

/-- `∑{d}[n, floor(sinh(log(#)))]` -/
def P10476486852790605166.Spec : Prop :=
  ∀ n, P10476486852790605166.a n = A367588 n

end A367588

/-! ## A367588.P3371264285973679459

`∑{d}[n, floor((#-1)/2)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367588

/-- `∑{d}[n, floor((#-1)/2)]` -/
def P3371264285973679459.Spec : Prop :=
  ∀ n, P3371264285973679459.a n = A367588 n

theorem P3371264285973679459.correct : P3371264285973679459.Spec := by
  intro n
  simp only [A367588]

end A367588

/-! ## A367588.P3696779169788235290

`A333941(A133263(n))/2`
-/

namespace A367588.P3696779169788235290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333941 (A133263 n).toNat : ℚ) / 2

end

end A367588.P3696779169788235290

namespace A367588

/-- `A333941(A133263(n))/2` -/
def P3696779169788235290.Spec : Prop :=
  ∀ n, P3696779169788235290.a n = (A367588 n : ℚ)

end A367588

/-! ## A367588.P6713742116570690300

`A259198(n)-A112357(A058276(n+1))`
-/

namespace A367588.P6713742116570690300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259198 (n + 16) - A112357 (A058276 (n + 1)).toNat

end

end A367588.P6713742116570690300

namespace A367588

/-- `A259198(n)-A112357(A058276(n+1))` -/
def P6713742116570690300.Spec : Prop :=
  ∀ n, P6713742116570690300.a n = A367588 n

end A367588

/-!
# A367589: Numbers with exactly two distinct prime factors, both appearing with different exponents.

The programs for A367589, there is no canonical definition to state claims against.
-/

/-! ## A367589.P5324812995851540582

`lt[1, A136567(n+1)]+1`
-/

namespace A367589.P5324812995851540582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136567 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A367589.P5324812995851540582

/-! ## A367589.P18181212758659433706

`eq[2, A309004(n+1)]+1`
-/

namespace A367589.P18181212758659433706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A367589.P18181212758659433706

/-! ## A367589.P10220826759122016594

`eq[4, A328830(n+1)]+1`
-/

namespace A367589.P10220826759122016594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328830 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A367589.P10220826759122016594

/-! ## A367589.P9906030146388450382

`A177425(n+1)+char[11^(n+2)]`
-/

namespace A367589.P9906030146388450382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A367589.P9906030146388450382

/-! ## A367589.P11235690250510951195

`A177425(A118759(n)+1)`
-/

namespace A367589.P11235690250510951195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (A118759 n + 1).toNat

end

end A367589.P11235690250510951195

/-! ## A367589.P8865273097132416873

`eq[2, A309004(A028310(n))]`
-/

namespace A367589.P8865273097132416873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309004 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367589.P8865273097132416873

/-! ## A367589.P13484598395935869353

`filter[A177425(n+1), A093521(#)]`
-/

namespace A367589.P13484598395935869353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093521 (f1 j).toNat = 1) n)

end

end A367589.P13484598395935869353

/-! ## A367589.P9136001282132955181

`filter[A059404(n+1), A215480(#)]`
-/

namespace A367589.P9136001282132955181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A367589.P9136001282132955181

/-!
# A367590: Numbers with exactly two distinct prime factors, both appearing with the same exponent.

The programs for A367590, the canonical program `A367590.P9698586962873086711` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367590 has offset 1).

The definition of A367590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6916 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A367590.P8411102571650461029

`filter[A085155(n+1), A354353(#)]`
-/

namespace A367590.P8411102571650461029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A367590.P8411102571650461029

namespace A367590

/-- `filter[A085155(n+1), A354353(#)]` -/
def P8411102571650461029.Spec : Prop :=
  ∀ n, P8411102571650461029.a n = A367590 (n + 1)

end A367590

/-! ## A367590.P9698586962873086711

`filter[A085156(n+1), A354353(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A367590

/-- `filter[A085156(n+1), A354353(#)]` -/
def P9698586962873086711.Spec : Prop :=
  ∀ n, P9698586962873086711.a n = A367590 (n + 1)

theorem P9698586962873086711.correct : P9698586962873086711.Spec := by
  intro n
  simp only [A367590, Nat.add_sub_cancel]

end A367590

/-! ## A367590.P14442288360291415999

`filter[A007774(n+1), A354353(#)]`
-/

namespace A367590.P14442288360291415999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A367590.P14442288360291415999

namespace A367590

/-- `filter[A007774(n+1), A354353(#)]` -/
def P14442288360291415999.Spec : Prop :=
  ∀ n, P14442288360291415999.a n = A367590 (n + 1)

end A367590

/-! ## A367590.P17363375042624558101

`∩[A007774(n+1), A085155(n+1)]`
-/

namespace A367590.P17363375042624558101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367590.P17363375042624558101

namespace A367590

/-- `∩[A007774(n+1), A085155(n+1)]` -/
def P17363375042624558101.Spec : Prop :=
  ∀ n, (P17363375042624558101.a n : ℤ) = A367590 (n + 1)

end A367590

/-! ## A367590.P16874237688613404285

`∩[A007774(n+1), A085156(n+1)]`
-/

namespace A367590.P16874237688613404285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367590.P16874237688613404285

namespace A367590

/-- `∩[A007774(n+1), A085156(n+1)]` -/
def P16874237688613404285.Spec : Prop :=
  ∀ n, (P16874237688613404285.a n : ℤ) = A367590 (n + 1)

end A367590

/-! ## A367590.P223514429225333512

`filter[A267114(n+1), A354353(#)]`
-/

namespace A367590.P223514429225333512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A367590.P223514429225333512

namespace A367590

/-- `filter[A267114(n+1), A354353(#)]` -/
def P223514429225333512.Spec : Prop :=
  ∀ n, P223514429225333512.a n = A367590 (n + 1)

end A367590

/-! ## A367590.P930261185774223277

`∩[A320911(n+1), A007774(n+1)]`
-/

namespace A367590.P930261185774223277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367590.P930261185774223277

namespace A367590

/-- `∩[A320911(n+1), A007774(n+1)]` -/
def P930261185774223277.Spec : Prop :=
  ∀ n, (P930261185774223277.a n : ℤ) = A367590 (n + 1)

end A367590

/-! ## A367590.P2877760151673884559

`filter[A070915(n+1), A354353(#)]`
-/

namespace A367590.P2877760151673884559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A367590.P2877760151673884559

namespace A367590

/-- `filter[A070915(n+1), A354353(#)]` -/
def P2877760151673884559.Spec : Prop :=
  ∀ n, P2877760151673884559.a n = A367590 (n + 1)

end A367590

/-! ## A367590.P8091660834826770726

`∩[A007774(n+1), A062770(n+1)]`
-/

namespace A367590.P8091660834826770726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367590.P8091660834826770726

namespace A367590

/-- `∩[A007774(n+1), A062770(n+1)]` -/
def P8091660834826770726.Spec : Prop :=
  ∀ n, (P8091660834826770726.a n : ℤ) = A367590 (n + 1)

end A367590

/-! ## A367590.P11842766473796086131

`∩[A007774(n+1), A072774(n+1)]`
-/

namespace A367590.P11842766473796086131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367590.P11842766473796086131

namespace A367590

/-- `∩[A007774(n+1), A072774(n+1)]` -/
def P11842766473796086131.Spec : Prop :=
  ∀ n, (P11842766473796086131.a n : ℤ) = A367590 (n + 1)

end A367590

/-! ## A367590.P4737319946263860646

`∩[A024619(n+1), A085155(n+1)]`
-/

namespace A367590.P4737319946263860646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367590.P4737319946263860646

namespace A367590

/-- `∩[A024619(n+1), A085155(n+1)]` -/
def P4737319946263860646.Spec : Prop :=
  ∀ n, (P4737319946263860646.a n : ℤ) = A367590 (n + 1)

end A367590

/-! ## A367590.P5663344663484588608

`∩[A024619(n+1), A085156(n+1)]`
-/

namespace A367590.P5663344663484588608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A367590.P5663344663484588608

namespace A367590

/-- `∩[A024619(n+1), A085156(n+1)]` -/
def P5663344663484588608.Spec : Prop :=
  ∀ n, (P5663344663484588608.a n : ℤ) = A367590 (n + 1)

end A367590

/-! ## A367590.P2691069849845747344

`filter[A085155(n+1), A143731(#)]`
-/

namespace A367590.P2691069849845747344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A367590.P2691069849845747344

namespace A367590

/-- `filter[A085155(n+1), A143731(#)]` -/
def P2691069849845747344.Spec : Prop :=
  ∀ n, P2691069849845747344.a n = A367590 (n + 1)

end A367590

/-! ## A367590.P7037485154164522678

`filter[A085156(n+1), A143731(#)]`
-/

namespace A367590.P7037485154164522678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A367590.P7037485154164522678

namespace A367590

/-- `filter[A085156(n+1), A143731(#)]` -/
def P7037485154164522678.Spec : Prop :=
  ∀ n, P7037485154164522678.a n = A367590 (n + 1)

end A367590

/-! ## A367590.P13791192055096991164

`filter[A062770(n+1), A215480(#)]`
-/

namespace A367590.P13791192055096991164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A367590.P13791192055096991164

namespace A367590

/-- `filter[A062770(n+1), A215480(#)]` -/
def P13791192055096991164.Spec : Prop :=
  ∀ n, P13791192055096991164.a n = A367590 (n + 1)

end A367590

/-! ## A367590.P836597459867174485

`filter[A063774(n+1), A215480(#)]`
-/

namespace A367590.P836597459867174485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A367590.P836597459867174485

namespace A367590

/-- `filter[A063774(n+1), A215480(#)]` -/
def P836597459867174485.Spec : Prop :=
  ∀ n, P836597459867174485.a n = A367590 (n + 1)

end A367590

/-! ## A367590.P2769688216647228519

`filter[A072774(n+1), A215480(#)]`
-/

namespace A367590.P2769688216647228519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A367590.P2769688216647228519

namespace A367590

/-- `filter[A072774(n+1), A215480(#)]` -/
def P2769688216647228519.Spec : Prop :=
  ∀ n, P2769688216647228519.a n = A367590 (n + 1)

end A367590

/-! ## A367590.P3466204517079218052

`filter[A085155(n+1), A215480(#)]`
-/

namespace A367590.P3466204517079218052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A367590.P3466204517079218052

namespace A367590

/-- `filter[A085155(n+1), A215480(#)]` -/
def P3466204517079218052.Spec : Prop :=
  ∀ n, P3466204517079218052.a n = A367590 (n + 1)

end A367590

/-! ## A367590.P16014453364349982259

`filter[A085156(n+1), A215480(#)]`
-/

namespace A367590.P16014453364349982259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A367590.P16014453364349982259

namespace A367590

/-- `filter[A085156(n+1), A215480(#)]` -/
def P16014453364349982259.Spec : Prop :=
  ∀ n, P16014453364349982259.a n = A367590 (n + 1)

end A367590

/-! ## A367590.P16472541061805479982

`filter[A130092(n+1), A215480(#)]`
-/

namespace A367590.P16472541061805479982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A367590.P16472541061805479982

namespace A367590

/-- `filter[A130092(n+1), A215480(#)]` -/
def P16472541061805479982.Spec : Prop :=
  ∀ n, P16472541061805479982.a n = A367590 (n + 1)

end A367590

/-!
# A367591: Expansion of 1/((1-x) * (1-3*x)^3).

The programs for A367591, the canonical program `A367591.P12099512939827816484` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367591 has offset 0).

The definition of A367591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-10x+36x^2-54x^3+27x^4))` (program `A367591.P12099512939827816484`, by `A367591.P12099512939827816484.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A367591.P12099512939827816484

`ogf(1/(1-10x+36x^2-54x^3+27x^4))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367591

/-- `ogf(1/(1-10x+36x^2-54x^3+27x^4))` -/
def P12099512939827816484.Spec : Prop :=
  ∀ n, P12099512939827816484.a n = A367591 n

theorem P12099512939827816484.correct : P12099512939827816484.Spec := by
  intro n
  simp only [A367591]

end A367591

/-! ## A367591.P13287830174979635199

`((2*n²+4*n+3)*3^(n+1)-1)/8`
-/

namespace A367591.P13287830174979635199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n ^ 2 + 4 * n + 3) * 3 ^ (n + 1) : ℤ) - 1 : ℚ) / 8

end

end A367591.P13287830174979635199

namespace A367591

/-- `((2*n²+4*n+3)*3^(n+1)-1)/8` -/
def P13287830174979635199.Spec : Prop :=
  ∀ n, P13287830174979635199.a n = (A367591 n : ℚ)

end A367591

/-! ## A367591.P17393623172263857127

`10*a(n-1)-36*a(n-2)+54*a(n-3)-27*a(n-4)` with `a(0)=1, a(1)=10, a(2)=64, a(3)=334`
-/

namespace A367591.P17393623172263857127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 64, 334] fun n a =>
  10 * a (n - 1) - 36 * a (n - 2) + 54 * a (n - 3) - 27 * a (n - 4)

end

end A367591.P17393623172263857127

namespace A367591

/-- `10*a(n-1)-36*a(n-2)+54*a(n-3)-27*a(n-4)` -/
def P17393623172263857127.Spec : Prop :=
  ∀ n, P17393623172263857127.a n = A367591 n

end A367591

/-! ## A367591.P12396489996128222592

`∑[3*(n+2)*a(n-1)/n]` with `a(0)=1`
-/

namespace A367591.P12396489996128222592
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * ((n + 2 : ℚ) * (f1 (n - 1) / (n : ℚ)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367591.P12396489996128222592

namespace A367591

/-- `∑[3*(n+2)*a(n-1)/n]` -/
def P12396489996128222592.Spec : Prop :=
  ∀ n, P12396489996128222592.a n = (A367591 n : ℚ)

end A367591

/-! ## A367591.P17609279927908215010

`∑[A027472(n+3)]`
-/

namespace A367591.P17609279927908215010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027472 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367591.P17609279927908215010

namespace A367591

/-- `∑[A027472(n+3)]` -/
def P17609279927908215010.Spec : Prop :=
  ∀ n, P17609279927908215010.a n = A367591 n

end A367591

/-! ## A367591.P12935632220963922130

`∑[∑[A383136(n+1)]]`
-/

namespace A367591.P12935632220963922130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383136 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367591.P12935632220963922130

namespace A367591

/-- `∑[∑[A383136(n+1)]]` -/
def P12935632220963922130.Spec : Prop :=
  ∀ n, P12935632220963922130.a n = A367591 n

end A367591

/-! ## A367591.P16020319425927036329

`∑[A006043(n)/2]`
-/

namespace A367591.P16020319425927036329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006043 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367591.P16020319425927036329

namespace A367591

/-- `∑[A006043(n)/2]` -/
def P16020319425927036329.Spec : Prop :=
  ∀ n, P16020319425927036329.a n = (A367591 n : ℚ)

end A367591

/-! ## A367591.P12946939973180467813

`A193843(A000217(n+2)+2)`
-/

namespace A367591.P12946939973180467813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193843 (A000217 (n + 2) + 2).toNat

end

end A367591.P12946939973180467813

namespace A367591

/-- `A193843(A000217(n+2)+2)` -/
def P12946939973180467813.Spec : Prop :=
  ∀ n, P12946939973180467813.a n = A367591 n

end A367591

/-! ## A367591.P10195320523955898258

`A193842(∑[n+3])`
-/

namespace A367591.P10195320523955898258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193842 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A367591.P10195320523955898258

namespace A367591

/-- `A193842(∑[n+3])` -/
def P10195320523955898258.Spec : Prop :=
  ∀ n, P10195320523955898258.a n = A367591 n

end A367591

/-! ## A367591.P4610716185340857958

`∑[A013610(∑[n+3])]`
-/

namespace A367591.P4610716185340857958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367591.P4610716185340857958

namespace A367591

/-- `∑[A013610(∑[n+3])]` -/
def P4610716185340857958.Spec : Prop :=
  ∀ n, P4610716185340857958.a n = A367591 n

end A367591

/-!
# A367592: Expansion of 1/((1-x) * (1-4*x)^3).

The programs for A367592, the canonical program `A367592.P16187207391390288878` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A367592 has offset 0).

The definition of A367592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A367592.P16187207391390288878

`13*a(n-1)-60*a(n-2)+112*a(n-3)-64*a(n-4)` with `a(0)=1, a(1)=13, a(2)=109, a(3)=749`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A367592

/-- `13*a(n-1)-60*a(n-2)+112*a(n-3)-64*a(n-4)` -/
def P16187207391390288878.Spec : Prop :=
  ∀ n, P16187207391390288878.a n = A367592 n

theorem P16187207391390288878.correct : P16187207391390288878.Spec := by
  intro n
  simp only [A367592]

end A367592

/-! ## A367592.P17728310964687023724

`((9*n²+21*n+14)*4^(n+1)-2)/54`
-/

namespace A367592.P17728310964687023724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((9 * n ^ 2 + 21 * n + 14) * 4 ^ (n + 1) : ℤ) - 2 : ℚ) / 54

end

end A367592.P17728310964687023724

namespace A367592

/-- `((9*n²+21*n+14)*4^(n+1)-2)/54` -/
def P17728310964687023724.Spec : Prop :=
  ∀ n, P17728310964687023724.a n = (A367592 n : ℚ)

theorem P17728310964687023724.correct : P17728310964687023724.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A367592, Nat.add_sub_cancel, A367592.P17728310964687023724.a, A367592.P16187207391390288878.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A367592, Nat.add_sub_cancel, A367592.P17728310964687023724.a, A367592.P16187207391390288878.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A367592

/-! ## A367592.P8969701925359104059

`and(∑[(n+2)*(n+1)*2^(2*n-1)], -3)`
-/

namespace A367592.P8969701925359104059
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((n + 1 : ℚ) * (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (-3)

end

end A367592.P8969701925359104059

namespace A367592

/-- `and(∑[(n+2)*(n+1)*2^(2*n-1)], -3)` -/
def P8969701925359104059.Spec : Prop :=
  ∀ n, P8969701925359104059.a n = A367592 n

end A367592

/-! ## A367592.P3275093651145213994

`a(n-1)+(n+2)*(n+1)*2^(2*n-1)` with `a(0)=1`
-/

namespace A367592.P3275093651145213994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 2 : ℚ) * ((n + 1 : ℚ) * (2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ))

end

end A367592.P3275093651145213994

namespace A367592

/-- `a(n-1)+(n+2)*(n+1)*2^(2*n-1)` -/
def P3275093651145213994.Spec : Prop :=
  ∀ n, P3275093651145213994.a n = (A367592 n : ℚ)

end A367592

/-! ## A367592.P14664448539081391142

`∑[A038845(n)]`
-/

namespace A367592.P14664448539081391142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367592.P14664448539081391142

namespace A367592

/-- `∑[A038845(n)]` -/
def P14664448539081391142.Spec : Prop :=
  ∀ n, P14664448539081391142.a n = A367592 n

end A367592

/-! ## A367592.P13690459421821391711

`∑[∑[n+1]*A000302(n)]`
-/

namespace A367592.P13690459421821391711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367592.P13690459421821391711

namespace A367592

/-- `∑[∑[n+1]*A000302(n)]` -/
def P13690459421821391711.Spec : Prop :=
  ∀ n, P13690459421821391711.a n = A367592 n

end A367592

/-! ## A367592.P7463616639021443746

`∑[(A000217(n)+n+1)*4^n]`
-/

namespace A367592.P7463616639021443746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n + (n + 1 : ℤ)) * (4 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367592.P7463616639021443746

namespace A367592

/-- `∑[(A000217(n)+n+1)*4^n]` -/
def P7463616639021443746.Spec : Prop :=
  ∀ n, P7463616639021443746.a n = A367592 n

end A367592

/-! ## A367592.P4578423924303911216

`∑[∑[n+1]*A011782(2*n+1)]`
-/

namespace A367592.P4578423924303911216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A011782 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367592.P4578423924303911216

namespace A367592

/-- `∑[∑[n+1]*A011782(2*n+1)]` -/
def P4578423924303911216.Spec : Prop :=
  ∀ n, P4578423924303911216.a n = A367592 n

end A367592

/-! ## A367592.P4934764112423837430

`∑[A013611(∑[n+3])]`
-/

namespace A367592.P4934764112423837430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013611 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A367592.P4934764112423837430

namespace A367592

/-- `∑[A013611(∑[n+3])]` -/
def P4934764112423837430.Spec : Prop :=
  ∀ n, P4934764112423837430.a n = A367592 n

end A367592

/-!
# A367593: Nonnegative integers k such that (R(k) - 1)/(k + 1) is an integer, where R(k) is the digit reversal of k.

The programs for A367593, there is no canonical definition to state claims against.
-/

/-! ## A367593.P9196713080768347299

`eq[1, A367728(n)]`
-/

namespace A367593.P9196713080768347299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367593.P9196713080768347299

/-! ## A367593.P6153830595888085790

`lt[A052061(A367728(n)+1), 2]`
-/

namespace A367593.P6153830595888085790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052061 (A367728 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A367593.P6153830595888085790

/-! ## A367593.P5711719486582284061

`lt[A367728(n), A088570(A367728(n)+1)]`
-/

namespace A367593.P5711719486582284061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (A367728 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A367593.P5711719486582284061

/-!
# A367594: Number of permutations of [n] whose cycle maxima sum to k, where k is chosen so as to maximize this number.

The programs for A367594, there is no canonical definition to state claims against.
-/

/-! ## A367594.P5634185201580712342

`A226900(A246861(n))`
-/

namespace A367594.P5634185201580712342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226900 (A246861 n).toNat

end

end A367594.P5634185201580712342

/-! ## A367594.P4468802209091099765

`A354928(A289592(n))`
-/

namespace A367594.P4468802209091099765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354928 (A289592 n).toNat

end

end A367594.P4468802209091099765

/-! ## A367594.P16760105424380690629

`A241085(A376709(n+1))`
-/

namespace A367594.P16760105424380690629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241085 (A376709 (n + 1)).toNat

end

end A367594.P16760105424380690629

/-!
# A367596: The denominators of a series that converges to log(2) obtained using Whittaker's root series formula.

The programs for A367596, there is no canonical definition to state claims against.
-/

/-! ## A367596.P14709235463710468861

`record[A163270(2*n+1)*A163270(2*(n+1))]`
-/

namespace A367596.P14709235463710468861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163270 (2 * n + 1) * A163270 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367596.P14709235463710468861

/-!
# A367598: Record high-points in A367356.

The programs for A367598, there is no canonical definition to state claims against.
-/

/-! ## A367598.P9693206655722919399

`record[A367356(n+1)]`
-/

namespace A367598.P9693206655722919399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367598.P9693206655722919399

/-! ## A367598.P14139044676521004161

`A367356(A367599(n+1))`
-/

namespace A367598.P14139044676521004161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367356 (A367599 (n + 1)).toNat

end

end A367598.P14139044676521004161

/-!
# A367599: Indices of record high-points in A367356.

The programs for A367599, there is no canonical definition to state claims against.
-/

/-! ## A367599.P4587465516965151704

`9*a(n-1)` with `a(0)=1, a(1)=6, a(2)=7, a(3)=18`
-/

namespace A367599.P4587465516965151704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 7, 18] fun n a =>
  9 * a (n - 1)

end

end A367599.P4587465516965151704

/-! ## A367599.P4824549469295013469

`record[gcd(A007782(n), A284861(n+2))]`
-/

namespace A367599.P4824549469295013469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007782 n) (A284861 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A367599.P4824549469295013469

