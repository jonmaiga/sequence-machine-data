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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C002
import Seq.B005.C000
import Seq.B008.C000
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A083402: Let A_n be the upper triangular matrix in the group GL(n,2) that has zero entries below the main diagonal and 1 elsewhere; a(n) is the size of the conjugacy class of this matrix in GL(n,2).

The programs for A083402, the canonical program `A083402.P6360401774885795274` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083402 has offset 1).

The definition of A083402 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083402.P6360401774885795274

`A002884(n+1)/2^n`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A083402

/-- `A002884(n+1)/2^n` -/
def P6360401774885795274.Spec : Prop :=
  ∀ n, P6360401774885795274.a n = (A083402 (n + 1) : ℚ)

end A083402

/-! ## A083402.P12559077423152817515

`∏[4^n-floor(2^(n-1))]`
-/

namespace A083402.P12559077423152817515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083402.P12559077423152817515

namespace A083402

/-- `∏[4^n-floor(2^(n-1))]` -/
def P12559077423152817515.Spec : Prop :=
  ∀ n, P12559077423152817515.a n = A083402 (n + 1)

end A083402

/-! ## A083402.P17771201732900200877

`2^(n-1)*∑[2^n]*a(n-1)` with `a(0)=1`
-/

namespace A083402.P17771201732900200877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * a (n - 1)

end

end A083402.P17771201732900200877

namespace A083402

/-- `2^(n-1)*∑[2^n]*a(n-1)` -/
def P17771201732900200877.Spec : Prop :=
  ∀ n, P17771201732900200877.a n = (A083402 (n + 1) : ℚ)

end A083402

/-! ## A083402.P5229319333653593319

`2*∏[A171476(n)/2]`
-/

namespace A083402.P5229319333653593319
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171476 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A083402.P5229319333653593319

namespace A083402

/-- `2*∏[A171476(n)/2]` -/
def P5229319333653593319.Spec : Prop :=
  ∀ n, P5229319333653593319.a n = (A083402 (n + 1) : ℚ)

end A083402

/-! ## A083402.P4822629441651716929

`∑[2^n]*A002884(n)`
-/

namespace A083402.P4822629441651716929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002884 n

end

end A083402.P4822629441651716929

namespace A083402

/-- `∑[2^n]*A002884(n)` -/
def P4822629441651716929.Spec : Prop :=
  ∀ n, P4822629441651716929.a n = A083402 (n + 1)

end A083402

/-!
# A083403: Write the numbers 1, 2, ... in a triangle with n terms in the n-th row; a(n) = number of squarefree integers in n-th row.

The programs for A083403, the canonical program `A083403.P990697774491175710` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083403 has offset 1).

The definition of A083403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083403.P990697774491175710

`Δ[A013928(∑[n]+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A083403

/-- `Δ[A013928(∑[n]+1)]` -/
def P990697774491175710.Spec : Prop :=
  ∀ n, P990697774491175710.a n = A083403 (n + 1)

theorem P990697774491175710.correct : P990697774491175710.Spec := by
  intro n
  simp only [A083403, Nat.add_sub_cancel]

end A083403

/-! ## A083403.P7623223620288138091

`Δ[A107079(∑[n]+1)]`
-/

namespace A083403.P7623223620288138091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083403.P7623223620288138091

namespace A083403

/-- `Δ[A107079(∑[n]+1)]` -/
def P7623223620288138091.Spec : Prop :=
  ∀ n, P7623223620288138091.a n = A083403 (n + 1)

theorem P7623223620288138091.correct : P7623223620288138091.Spec := by
  intro n
  simp only [A083403, Nat.add_sub_cancel, A083403.P7623223620288138091.f2, A083403.P7623223620288138091.f1, A083403.P7623223620288138091.a, A083403.P990697774491175710.f2, A083403.P990697774491175710.f1, A083403.P990697774491175710.a, A013928, A013928.P12891540521727461604.f2, A013928.P12891540521727461604.f1, A013928.P12891540521727461604.a, A107079, A107079.P8145768499534566836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A083403

/-! ## A083403.P2037540273008359583

`abs(Δ[A013928(A000124(n))])`
-/

namespace A083403.P2037540273008359583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A083403.P2037540273008359583

namespace A083403

/-- `abs(Δ[A013928(A000124(n))])` -/
def P2037540273008359583.Spec : Prop :=
  ∀ n, P2037540273008359583.a n = A083403 (n + 1)

end A083403

/-! ## A083403.P14755831141001653246

`abs(Δ[A013928(A000217(n)+1)])`
-/

namespace A083403.P14755831141001653246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A000217 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A083403.P14755831141001653246

namespace A083403

/-- `abs(Δ[A013928(A000217(n)+1)])` -/
def P14755831141001653246.Spec : Prop :=
  ∀ n, P14755831141001653246.a n = A083403 (n + 1)

end A083403

/-! ## A083403.P905167502748953014

`Δ[A262869(n²+1+n)]`
-/

namespace A083403.P905167502748953014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (n ^ 2 + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083403.P905167502748953014

namespace A083403

/-- `Δ[A262869(n²+1+n)]` -/
def P905167502748953014.Spec : Prop :=
  ∀ n, P905167502748953014.a n = A083403 (n + 1)

end A083403

/-! ## A083403.P15787281562642096111

`A262869((n+1)²+1+n)-A262869(n²+1+n)`
-/

namespace A083403.P15787281562642096111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 ((n + 1) ^ 2 + 1 + n) - A262869 (n ^ 2 + 1 + n)

end

end A083403.P15787281562642096111

namespace A083403

/-- `A262869((n+1)²+1+n)-A262869(n²+1+n)` -/
def P15787281562642096111.Spec : Prop :=
  ∀ n, P15787281562642096111.a n = A083403 (n + 1)

end A083403

/-!
# A083404: Illustration of Viswanath's constant A078416.

The programs for A083404, there is no canonical definition to state claims against.
-/

/-! ## A083404.P7382598453202909740

`lcm(2, round((sqrt(2)+1)^n))-A221170(2^n)`
-/

namespace A083404.P7382598453202909740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n)) : ℤ) - A221170 (2 ^ n)

end

end A083404.P7382598453202909740

/-! ## A083404.P1012954270602336554

`A124696(n)-∑{e}[A060816(2*n), #²]`
-/

namespace A083404.P1012954270602336554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060816 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124696 n - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2 : ℕ) : ℤ)

end

end A083404.P1012954270602336554

/-!
# A083407: Odd squares which can be expressed as the product of a number and its reversal in at least two different ways.

The programs for A083407, there is no canonical definition to state claims against.
-/

/-! ## A083407.P11015205239739218775

`A325150(eq[1, A325150(n+1)%2]+1)`
-/

namespace A083407.P11015205239739218775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325150 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A083407.P11015205239739218775

/-!
# A083408: 

The programs for A083408, there is no canonical definition to state claims against.
-/

/-! ## A083408.P15544418923604387714

`∪[A307019(n+1), A325150(n+1)]`
-/

namespace A083408.P15544418923604387714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083408.P15544418923604387714

/-! ## A083408.P10850770043416580377

`∪[A083406(n+1), A325150(n+1)]%A325150(n+4)`
-/

namespace A083408.P10850770043416580377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325150 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A325150 (n + 4))

end

end A083408.P10850770043416580377

/-! ## A083408.P15881529369215337033

`A255308(A345910(n+1))+A083406(n+1)`
-/

namespace A083408.P15881529369215337033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255308 (A345910 (n + 1)).toNat + A083406 (n + 1)

end

end A083408.P15881529369215337033

/-! ## A083408.P4672664899263093974

`A083406(n+1)+A000122(A162280(n+1))`
-/

namespace A083408.P4672664899263093974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083406 (n + 1) + A000122 (A162280 (n + 1)).toNat

end

end A083408.P4672664899263093974

/-! ## A083408.P9069156185884082528

`A083406(n+1)+A010054(A217047(n+1))`
-/

namespace A083408.P9069156185884082528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083406 (n + 1) + A010054 (A217047 (n + 1)).toNat

end

end A083408.P9069156185884082528

/-! ## A083408.P7485874396888654559

`lcm(A083406(n+1), A099501(A279092(n+1)))`
-/

namespace A083408.P7485874396888654559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083406 (n + 1)) (A099501 (A279092 (n + 1)).toNat)

end

end A083408.P7485874396888654559

/-! ## A083408.P5030716181186730387

`C(A083406(n+1), A278538(A335218(2*n+1)))`
-/

namespace A083408.P5030716181186730387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083406 (n + 1)).toNat (A278538 (A335218 (2 * n + 1)).toNat).toNat

end

end A083408.P5030716181186730387

/-!
# A083409: Number of prime k-tuplet constellations; i.e., patterns with minimal diameter A008407.

The programs for A083409, there is no canonical definition to state claims against.
-/

/-! ## A083409.P7592659082158530352

`A053735(A270659(n)%A270633(n))`
-/

namespace A083409.P7592659082158530352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (Int.tmod (A270659 n) (A270633 n)).toNat

end

end A083409.P7592659082158530352

/-! ## A083409.P2746814382994504517

`A023135(A094373(n))%A196369(n+2)`
-/

namespace A083409.P2746814382994504517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023135 (A094373 n).toNat) (A196369 (n + 2))

end

end A083409.P2746814382994504517

/-! ## A083409.P5944790337845748431

`A001817(A052548(n)+A000122(2*(n+2)))`
-/

namespace A083409.P5944790337845748431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (A052548 n + A000122 (2 * (n + 2))).toNat

end

end A083409.P5944790337845748431

/-!
# A083410: a(n) = A083385(n)/n.

The programs for A083410, there is no canonical definition to state claims against.
-/

/-! ## A083410.P9294865594638068729

`A083385(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083410.P9294865594638068729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083385 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A083410.P9294865594638068729

/-! ## A083410.P1721206037836860206

`A005649(n+1)/2`
-/

namespace A083410.P1721206037836860206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005649 (n + 1) : ℚ) / 2

end

end A083410.P1721206037836860206

/-! ## A083410.P10368329045303350148

`A172109(n+2)/2`
-/

namespace A083410.P10368329045303350148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172109 (n + 2) : ℚ) / 2

end

end A083410.P10368329045303350148

/-! ## A083410.P2452524549210493385

`Δ[∑[A005649(n)]/2]`
-/

namespace A083410.P2452524549210493385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005649 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083410.P2452524549210493385

/-! ## A083410.P14361095670912388540

`A327868(2*(n+1))/2`
-/

namespace A083410.P14361095670912388540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327868 (2 * (n + 1)) : ℚ) / 2

end

end A083410.P14361095670912388540

/-! ## A083410.P6618308156811708821

`A052841(n)+Δ[A258369(n)]`
-/

namespace A083410.P6618308156811708821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052841 n + (f1 (n + 1) - f1 n)

end

end A083410.P6618308156811708821

/-! ## A083410.P9301570334077150794

`A226513(A034856(n+2))/2`
-/

namespace A083410.P9301570334077150794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226513 (A034856 (n + 2)).toNat : ℚ) / 2

end

end A083410.P9301570334077150794

/-! ## A083410.P1626244572610269883

`A091346(n+1)+A091346(n)`
-/

namespace A083410.P1626244572610269883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091346 (n + 1) + A091346 n

end

end A083410.P1626244572610269883

/-! ## A083410.P10156605002301362617

`2*A226515(n)-A005649(n)`
-/

namespace A083410.P10156605002301362617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226515 n - A005649 n

end

end A083410.P10156605002301362617

/-! ## A083410.P12482432352948618435

`A083411(n+1)+A000670(n+1)`
-/

namespace A083410.P12482432352948618435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083411 (n + 1) + A000670 (n + 1)

end

end A083410.P12482432352948618435

/-!
# A083411: a(n) = Sum(((k-1)/2)*k!*Stirling_2(n,k),k=1..n).

The programs for A083411, there is no canonical definition to state claims against.
-/

/-! ## A083411.P9064505082462013289

`∑[abs(Δ[A091106(n)])]`
-/

namespace A083411.P9064505082462013289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091106 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083411.P9064505082462013289

/-! ## A083411.P3435145598511957696

`A091106(n+1)+1`
-/

namespace A083411.P3435145598511957696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091106 (n + 1) + 1

end

end A083411.P3435145598511957696

/-! ## A083411.P9544368913612661854

`A052876(n+1)/2`
-/

namespace A083411.P9544368913612661854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052876 (n + 1) : ℚ) / 2

end

end A083411.P9544368913612661854

/-! ## A083411.P12075806973982934572

`A256893(∑[n+1]+2)`
-/

namespace A083411.P12075806973982934572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256893 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A083411.P12075806973982934572

/-! ## A083411.P14447939831916955295

`record[A052876(A103221(n))/2]`
-/

namespace A083411.P14447939831916955295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052876 (A103221 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083411.P14447939831916955295

/-! ## A083411.P9517709069500990257

`record[A052876(A285869(n))/2]`
-/

namespace A083411.P9517709069500990257
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052876 (A285869 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083411.P9517709069500990257

/-! ## A083411.P3505625354459698765

`A083410(n+1)-record[A122101(n)]`
-/

namespace A083411.P3505625354459698765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083410 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083411.P3505625354459698765

/-! ## A083411.P10980012981593799285

`A083410(n+1)-record[A154921(n)]`
-/

namespace A083411.P10980012981593799285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083410 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083411.P10980012981593799285

/-! ## A083411.P5140718008192934758

`A083410(n+1)-A000670(n+1)`
-/

namespace A083411.P5140718008192934758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083410 (n + 1) - A000670 (n + 1)

end

end A083411.P5140718008192934758

/-! ## A083411.P3543688806302122775

`A069321(n+1)-A083410(n+1)`
-/

namespace A083411.P3543688806302122775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069321 (n + 1) - A083410 (n + 1)

end

end A083411.P3543688806302122775

/-!
# A083412: Wythoff array read by rising antidiagonals.

The programs for A083412, the canonical program `A083412.P9837037486634414750` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083412 has offset 0).

The definition of A083412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083412.P9837037486634414750

`A000045(col(n)+2)*floor((row(n)-col(n)+1)*ϕ)+(row(n)-col(n))*A000045(col(n)+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A083412

/-- `A000045(col(n)+2)*floor((row(n)-col(n)+1)*ϕ)+(row(n)-col(n))*A000045(col(n)+1)` -/
def P9837037486634414750.Spec : Prop :=
  ∀ n, P9837037486634414750.a n = A083412 n

theorem P9837037486634414750.correct : P9837037486634414750.Spec := by
  intro n
  simp only [A083412]

end A083412

/-! ## A083412.P407011615712348457

`A035513(∑[char[∑[n]]]²-n)`
-/

namespace A083412.P407011615712348457
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A083412.P407011615712348457

namespace A083412

/-- `A035513(∑[char[∑[n]]]²-n)` -/
def P407011615712348457.Spec : Prop :=
  ∀ n, P407011615712348457.a n = A083412 n

end A083412

/-! ## A083412.P12356279759923941110

`and(-1, A035513(A038722(n+1)))`
-/

namespace A083412.P12356279759923941110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A035513 (A038722 (n + 1)).toNat)

end

end A083412.P12356279759923941110

namespace A083412

/-- `and(-1, A035513(A038722(n+1)))` -/
def P12356279759923941110.Spec : Prop :=
  ∀ n, P12356279759923941110.a n = A083412 n

end A083412

/-! ## A083412.P7993174073607798383

`A035513(A038722(n+1))%A000041(n+3)`
-/

namespace A083412.P7993174073607798383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035513 (A038722 (n + 1)).toNat) (A000041 (n + 3))

end

end A083412.P7993174073607798383

namespace A083412

/-- `A035513(A038722(n+1))%A000041(n+3)` -/
def P7993174073607798383.Spec : Prop :=
  ∀ n, P7993174073607798383.a n = A083412 n

end A083412

/-! ## A083412.P10657569861038065234

`A035513(A038722(n+1))+A000007(2*n+1)`
-/

namespace A083412.P10657569861038065234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035513 (A038722 (n + 1)).toNat + A000007 (2 * n + 1)

end

end A083412.P10657569861038065234

namespace A083412

/-- `A035513(A038722(n+1))+A000007(2*n+1)` -/
def P10657569861038065234.Spec : Prop :=
  ∀ n, P10657569861038065234.a n = A083412 n

end A083412

/-! ## A083412.P12746403213062812669

`A114579(A035513(n+1))`
-/

namespace A083412.P12746403213062812669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114579 (A035513 (n + 1)).toNat

end

end A083412.P12746403213062812669

namespace A083412

/-- `A114579(A035513(n+1))` -/
def P12746403213062812669.Spec : Prop :=
  ∀ n, P12746403213062812669.a n = A083412 n

end A083412

/-!
# A083413: a(n) = Sum_{d|n} d*2^(d-1) for n > 0.

The programs for A083413, the canonical program `A083413.P1377370701522611795` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083413 has offset 0).

The definition of A083413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083413.P10144969296842199097

`∑{d}[n, 2^(#-1)*#]`
-/

namespace A083413.P10144969296842199097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ) * (d : ℚ)

end

end A083413.P10144969296842199097

namespace A083413

/-- `∑{d}[n, 2^(#-1)*#]` -/
def P10144969296842199097.Spec : Prop :=
  ∀ n, P10144969296842199097.a n = (A083413 n : ℚ)

end A083413

/-! ## A083413.P1377370701522611795

`and(-3, ∑{d}[n, #*A011782(#)])`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A083413

/-- `and(-3, ∑{d}[n, #*A011782(#)])` -/
def P1377370701522611795.Spec : Prop :=
  ∀ n, P1377370701522611795.a n = A083413 n

theorem P1377370701522611795.correct : P1377370701522611795.Spec := by
  intro n
  simp only [A083413]

end A083413

/-! ## A083413.P602936455847966121

`∑{d}[n, #*2^#]/2`
-/

namespace A083413.P602936455847966121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d * 2 ^ d : ℕ) : ℚ) / 2

end

end A083413.P602936455847966121

namespace A083413

/-- `∑{d}[n, #*2^#]/2` -/
def P602936455847966121.Spec : Prop :=
  ∀ n, P602936455847966121.a n = (A083413 n : ℚ)

end A083413

/-! ## A083413.P16026248608846564677

`ceil(∑{d}[n, A134401(#)/2])`
-/

namespace A083413.P16026248608846564677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), (A134401 d : ℚ) / 2⌉

end

end A083413.P16026248608846564677

namespace A083413

/-- `ceil(∑{d}[n, A134401(#)/2])` -/
def P16026248608846564677.Spec : Prop :=
  ∀ n, P16026248608846564677.a n = A083413 n

end A083413

/-! ## A083413.P1724217446000220604

`A136013(A055895(n))`
-/

namespace A083413.P1724217446000220604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136013 (A055895 n).toNat

end

end A083413.P1724217446000220604

namespace A083413

/-- `A136013(A055895(n))` -/
def P1724217446000220604.Spec : Prop :=
  ∀ n, P1724217446000220604.a n = A083413 n

end A083413

/-!
# A083414: Write the numbers from 1 to n^2 consecutively in n rows of length n; let c(k) = number of primes in k-th column; a(n) = minimal c(k) for gcd(k,n) = 1.

The programs for A083414, there is no canonical definition to state claims against.
-/

/-! ## A083414.P9586899106097721272

`A001222(A329625(n+1)*A329632(n+1))`
-/

namespace A083414.P9586899106097721272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A329625 (n + 1) * A329632 (n + 1)).toNat

end

end A083414.P9586899106097721272

/-! ## A083414.P8942805978128893947

`A373671(n+1)%A119322(A086185(n+1))`
-/

namespace A083414.P8942805978128893947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373671 (n + 1)) (A119322 (A086185 (n + 1)).toNat)

end

end A083414.P8942805978128893947

/-! ## A083414.P15297885731517955041

`A001222(or(∏{p}[n+1, #], A066988(n+2)))`
-/

namespace A083414.P15297885731517955041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A066988 (n + 2))).toNat

end

end A083414.P15297885731517955041

/-! ## A083414.P14917520232350567054

`A001222(A262012(n)+A004086(n))`
-/

namespace A083414.P14917520232350567054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A262012 n + A004086 n).toNat

end

end A083414.P14917520232350567054

/-! ## A083414.P8027821866739595661

`A001222(or(A071716(n), A296368(n)))`
-/

namespace A083414.P8027821866739595661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A071716 n) (A296368 n)).toNat

end

end A083414.P8027821866739595661

/-!
# A083415: Triangle read by rows: T(n,k) is defined as follows. Write the numbers from 1 to n^2 consecutively in n rows of length n; T(n,k) = number of primes in k-th row.

The programs for A083415, there is no canonical definition to state claims against.
-/

/-! ## A083415.P11944823676437684563

`A304096(Δ[A257658(n+1)²])`
-/

namespace A083415.P11944823676437684563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257658 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304096 (f1 (n + 1) - f1 n).toNat

end

end A083415.P11944823676437684563

/-! ## A083415.P15009950564317474526

`A001221(or(A064934(n), A076078(n+1)))`
-/

namespace A083415.P15009950564317474526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A064934 n) (A076078 (n + 1))).toNat

end

end A083415.P15009950564317474526

/-! ## A083415.P15883105644613224072

`A317751(A291284(3*n+1)-A096419(n+1))`
-/

namespace A083415.P15883105644613224072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317751 (A291284 (3 * n + 1) - A096419 (n + 1)).toNat

end

end A083415.P15883105644613224072

/-! ## A083415.P16581441012933503492

`A001221(or(A000212(n), A098583(n)))`
-/

namespace A083415.P16581441012933503492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A000212 n) (A098583 n)).toNat

end

end A083415.P16581441012933503492

/-! ## A083415.P10462576848550269100

`A001222(or(A003607(n), A114347(n)))`
-/

namespace A083415.P10462576848550269100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A003607 n) (A114347 n)).toNat

end

end A083415.P10462576848550269100

/-!
# A083416: Add 1, double, add 1, double, etc.

The programs for A083416, the canonical program `A083416.P3265576134472068203` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083416 has offset 1).

The definition of A083416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083416.P10719720716856263017

`(1+(n+1)%2)*a(n-1)+1-(n+1)%2` with `a(0)=1`
-/

namespace A083416.P10719720716856263017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((1 + (n + 1) % 2 : ℕ) : ℤ) * a (n - 1) + 1 - (((n + 1) % 2 : ℕ) : ℤ)

end

end A083416.P10719720716856263017

namespace A083416

/-- `(1+(n+1)%2)*a(n-1)+1-(n+1)%2` -/
def P10719720716856263017.Spec : Prop :=
  ∀ n, P10719720716856263017.a n = A083416 (n + 1)

end A083416

/-! ## A083416.P3265576134472068203

`3*2^((2*(n+1)-(-1)^(n+1)-3)/4)+((-1)^(n+1)-3)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083416

/-- `3*2^((2*(n+1)-(-1)^(n+1)-3)/4)+((-1)^(n+1)-3)/2` -/
def P3265576134472068203.Spec : Prop :=
  ∀ n, P3265576134472068203.a n = (A083416 (n + 1) : ℝ)

end A083416

/-! ## A083416.P8739733013744294164

`ogf((1+2x+x^2-x^3)/(1-3x^2+2x^4))`
-/

namespace A083416.P8739733013744294164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, -1] [1, 0, -3, 0, 2] n

end

end A083416.P8739733013744294164

namespace A083416

/-- `ogf((1+2x+x^2-x^3)/(1-3x^2+2x^4))` -/
def P8739733013744294164.Spec : Prop :=
  ∀ n, P8739733013744294164.a n = A083416 (n + 1)

end A083416

/-! ## A083416.P7916400862495061440

`A309523(A047508(n+1))`
-/

namespace A083416.P7916400862495061440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309523 (A047508 (n + 1)).toNat

end

end A083416.P7916400862495061440

namespace A083416

/-- `A309523(A047508(n+1))` -/
def P7916400862495061440.Spec : Prop :=
  ∀ n, P7916400862495061440.a n = A083416 (n + 1)

end A083416

/-! ## A083416.P6688006903094187959

`∪[A033484(n), A083329(n)]`
-/

namespace A083416.P6688006903094187959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083416.P6688006903094187959

namespace A083416

/-- `∪[A033484(n), A083329(n)]` -/
def P6688006903094187959.Spec : Prop :=
  ∀ n, (P6688006903094187959.a n : ℤ) = A083416 (n + 1)

end A083416

/-! ## A083416.P15513488428366853956

`∪[A033484(n), A153893(n)]`
-/

namespace A083416.P15513488428366853956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083416.P15513488428366853956

namespace A083416

/-- `∪[A033484(n), A153893(n)]` -/
def P15513488428366853956.Spec : Prop :=
  ∀ n, (P15513488428366853956.a n : ℤ) = A083416 (n + 1)

end A083416

/-! ## A083416.P4715144637846012147

`∪[A052940(n), A369491(n)]`
-/

namespace A083416.P4715144637846012147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052940 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369491 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083416.P4715144637846012147

namespace A083416

/-- `∪[A052940(n), A369491(n)]` -/
def P4715144637846012147.Spec : Prop :=
  ∀ n, (P4715144637846012147.a n : ℤ) = A083416 (n + 1)

end A083416

/-! ## A083416.P3144641753735435641

`∪[A083329(n), A369491(n)]`
-/

namespace A083416.P3144641753735435641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369491 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083416.P3144641753735435641

namespace A083416

/-- `∪[A083329(n), A369491(n)]` -/
def P3144641753735435641.Spec : Prop :=
  ∀ n, (P3144641753735435641.a n : ℤ) = A083416 (n + 1)

end A083416

/-! ## A083416.P9712978899718630009

`∪[A153893(n), A369491(n)]`
-/

namespace A083416.P9712978899718630009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369491 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A083416.P9712978899718630009

namespace A083416

/-- `∪[A153893(n), A369491(n)]` -/
def P9712978899718630009.Spec : Prop :=
  ∀ n, (P9712978899718630009.a n : ℤ) = A083416 (n + 1)

end A083416

/-! ## A083416.P9882504849862733899

`A099942(n+1)/2`
-/

namespace A083416.P9882504849862733899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099942 (n + 1) : ℚ) / 2

end

end A083416.P9882504849862733899

namespace A083416

/-- `A099942(n+1)/2` -/
def P9882504849862733899.Spec : Prop :=
  ∀ n, P9882504849862733899.a n = (A083416 (n + 1) : ℚ)

end A083416

/-! ## A083416.P3011549308242413155

`(A007283(n)-A060546(n+1))/A060546(n)`
-/

namespace A083416.P3011549308242413155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007283 n - A060546 (n + 1) : ℚ) / (A060546 n : ℚ)

end

end A083416.P3011549308242413155

namespace A083416

/-- `(A007283(n)-A060546(n+1))/A060546(n)` -/
def P3011549308242413155.Spec : Prop :=
  ∀ n, P3011549308242413155.a n = (A083416 (n + 1) : ℚ)

end A083416

/-! ## A083416.P4107876778755926318

`(A201630(n)-A086341(n))/A016116(n+1)`
-/

namespace A083416.P4107876778755926318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201630 n - A086341 n : ℚ) / (A016116 (n + 1) : ℚ)

end

end A083416.P4107876778755926318

namespace A083416

/-- `(A201630(n)-A086341(n))/A016116(n+1)` -/
def P4107876778755926318.Spec : Prop :=
  ∀ n, P4107876778755926318.a n = (A083416 (n + 1) : ℚ)

end A083416

/-!
# A083418: Smallest positive integer m such that m+i^2=0 mod p_i (i-th prime) for 1<=i<=n.

The programs for A083418, there is no canonical definition to state claims against.
-/

/-! ## A083418.P2264345345503642667

`A002110(n+1)-A053665(n+1)`
-/

namespace A083418.P2264345345503642667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A053665 (n + 1)

end

end A083418.P2264345345503642667

/-! ## A083418.P7446838251973103079

`∏[Δ[A007504(n)]]-A053665(n+1)`
-/

namespace A083418.P7446838251973103079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A053665 (n + 1)

end

end A083418.P7446838251973103079

/-! ## A083418.P455920540281400808

`A073605(n+1)-A053665(n+1)+A187930(n+1)+1`
-/

namespace A083418.P455920540281400808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073605 (n + 1) - A053665 (n + 1) + (A187930 (n + 1) + 1)

end

end A083418.P455920540281400808

/-! ## A083418.P9803190548593059259

`A002110(n+1)-A053664(n+1)²%A002110(n+1)`
-/

namespace A083418.P9803190548593059259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - Int.tmod (A053664 (n + 1) ^ 2) (A002110 (n + 1))

end

end A083418.P9803190548593059259

/-! ## A083418.P3949673227315505286

`A002110(n+1)-A075307(n+1)²%A002110(n+1)`
-/

namespace A083418.P3949673227315505286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - Int.tmod (A075307 (n + 1) ^ 2) (A002110 (n + 1))

end

end A083418.P3949673227315505286

/-!
# A083419: Positions of records in A066888.

The programs for A083419, there is no canonical definition to state claims against.
-/

/-! ## A083419.P14867658993658227603

`A088634(record[A066888(n)])-1`
-/

namespace A083419.P14867658993658227603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A083419.P14867658993658227603

/-! ## A083419.P5775391513869147206

`A134824(n+2)+A088634(record[A066888(n)])`
-/

namespace A083419.P5775391513869147206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A088634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A083419.P5775391513869147206

/-! ## A083419.P3516116811289465938

`A164117(2*n+1)+A088634(record[A066888(n)])`
-/

namespace A083419.P3516116811289465938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 (2 * n + 1) + A088634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A083419.P3516116811289465938

/-! ## A083419.P5875795494437836022

`A001478(n+1)+A088634(record[A066888(n)])+n`
-/

namespace A083419.P5875795494437836022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A088634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (n : ℤ))

end

end A083419.P5875795494437836022

/-!
# A083420: a(n) = 2*4^n - 1.

The programs for A083420, the canonical program `A083420.P7041071117902394658` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083420 has offset 0).

The definition of A083420 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*4^n-1` (program `A083420.P7041071117902394658`, by `A083420.P7041071117902394658.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083420.P7041071117902394658

`2*4^n-1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083420

/-- `2*4^n-1` -/
def P7041071117902394658.Spec : Prop :=
  ∀ n, P7041071117902394658.a n = A083420 n

theorem P7041071117902394658.correct : P7041071117902394658.Spec := by
  intro n
  simp only [A083420]

end A083420

/-! ## A083420.P16230136880988853804

`A147590(n+1)/A000079(n)`
-/

namespace A083420.P16230136880988853804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147590 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A083420.P16230136880988853804

namespace A083420

/-- `A147590(n+1)/A000079(n)` -/
def P16230136880988853804.Spec : Prop :=
  ∀ n, P16230136880988853804.a n = (A083420 n : ℚ)

end A083420

/-! ## A083420.P13624294203945157829

`A000203(A000302(n))`
-/

namespace A083420.P13624294203945157829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000302 n).toNat

end

end A083420.P13624294203945157829

namespace A083420

/-- `A000203(A000302(n))` -/
def P13624294203945157829.Spec : Prop :=
  ∀ n, P13624294203945157829.a n = A083420 n

end A083420

/-! ## A083420.P13159310055415265846

`ogf((1+2x)/(1-5x+4x^2))`
-/

namespace A083420.P13159310055415265846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -5, 4] n

end

end A083420.P13159310055415265846

namespace A083420

/-- `ogf((1+2x)/(1-5x+4x^2))` -/
def P13159310055415265846.Spec : Prop :=
  ∀ n, P13159310055415265846.a n = A083420 n

end A083420

/-! ## A083420.P3181424031840114885

`record[2^xor(1, n)-1]`
-/

namespace A083420.P3181424031840114885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.xor 1 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083420.P3181424031840114885

namespace A083420

/-- `record[2^xor(1, n)-1]` -/
def P3181424031840114885.Spec : Prop :=
  ∀ n, P3181424031840114885.a n = A083420 n

end A083420

/-! ## A083420.P15332590567067336338

`xor(-(2*4^n), -1)`
-/

namespace A083420.P15332590567067336338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(2 * 4 ^ n : ℤ)) (-1)

end

end A083420.P15332590567067336338

namespace A083420

/-- `xor(-(2*4^n), -1)` -/
def P15332590567067336338.Spec : Prop :=
  ∀ n, P15332590567067336338.a n = A083420 n

end A083420

/-! ## A083420.P3866641041365789623

`or(3, 4*a(n-1))` with `a(0)=1`
-/

namespace A083420.P3866641041365789623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 3 (4 * a (n - 1))

end

end A083420.P3866641041365789623

namespace A083420

/-- `or(3, 4*a(n-1))` -/
def P3866641041365789623.Spec : Prop :=
  ∀ n, (P3866641041365789623.a n : ℤ) = A083420 n

end A083420

/-! ## A083420.P420929024053184470

`or(3, lcm(4, a(n-1)))` with `a(0)=1`
-/

namespace A083420.P420929024053184470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 3 (Nat.lcm 4 (a (n - 1)))

end

end A083420.P420929024053184470

namespace A083420

/-- `or(3, lcm(4, a(n-1)))` -/
def P420929024053184470.Spec : Prop :=
  ∀ n, (P420929024053184470.a n : ℤ) = A083420 n

end A083420

/-! ## A083420.P11563611498564273860

`∑[4*a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A083420.P11563611498564273860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083420.P11563611498564273860

namespace A083420

/-- `∑[4*a(n-1)]` -/
def P11563611498564273860.Spec : Prop :=
  ∀ n, (P11563611498564273860.a n : ℤ) = A083420 n

end A083420

/-! ## A083420.P16415196420443616758

`-or(1, -(2*4^n))`
-/

namespace A083420.P16415196420443616758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(2 * 4 ^ n : ℤ))

end

end A083420.P16415196420443616758

namespace A083420

/-- `-or(1, -(2*4^n))` -/
def P16415196420443616758.Spec : Prop :=
  ∀ n, P16415196420443616758.a n = A083420 n

end A083420

/-! ## A083420.P14245351376391916748

`abs(4*a(n-1)+3)` with `a(0)=1`
-/

namespace A083420.P14245351376391916748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + 3

end

end A083420.P14245351376391916748

namespace A083420

/-- `abs(4*a(n-1)+3)` -/
def P14245351376391916748.Spec : Prop :=
  ∀ n, (P14245351376391916748.a n : ℤ) = A083420 n

theorem P14245351376391916748.correct : P14245351376391916748.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083420, Nat.add_sub_cancel, A083420.P14245351376391916748.a, A083420.P7041071117902394658.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083420, Nat.add_sub_cancel, A083420.P14245351376391916748.a, A083420.P7041071117902394658.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083420

/-! ## A083420.P2246086924715347268

`record[-((-2)^(n+1)+1)]`
-/

namespace A083420.P2246086924715347268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-2) ^ (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083420.P2246086924715347268

namespace A083420

/-- `record[-((-2)^(n+1)+1)]` -/
def P2246086924715347268.Spec : Prop :=
  ∀ n, P2246086924715347268.a n = A083420 n

end A083420

/-! ## A083420.P10461038468658608526

`4*(a(n-1)+3/4)` with `a(0)=1`
-/

namespace A083420.P10461038468658608526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (a (n - 1) + (3 : ℚ) / 4)

end

end A083420.P10461038468658608526

namespace A083420

/-- `4*(a(n-1)+3/4)` -/
def P10461038468658608526.Spec : Prop :=
  ∀ n, P10461038468658608526.a n = (A083420 n : ℚ)

theorem P10461038468658608526.correct : P10461038468658608526.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083420, Nat.add_sub_cancel, A083420.P10461038468658608526.a, A083420.P7041071117902394658.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083420, Nat.add_sub_cancel, A083420.P10461038468658608526.a, A083420.P7041071117902394658.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083420

/-! ## A083420.P16808460491550671552

`∑[a(n-1)/(1/2)²]` with `a(0)=1, a(1)=6`
-/

namespace A083420.P16808460491550671552
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083420.P16808460491550671552

namespace A083420

/-- `∑[a(n-1)/(1/2)²]` -/
def P16808460491550671552.Spec : Prop :=
  ∀ n, P16808460491550671552.a n = (A083420 n : ℚ)

end A083420

/-! ## A083420.P1769045747177178617

`4*(1-(1/4-a(n-1)))` with `a(0)=1`
-/

namespace A083420.P1769045747177178617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (1 - ((1 : ℚ) / 4 - a (n - 1)))

end

end A083420.P1769045747177178617

namespace A083420

/-- `4*(1-(1/4-a(n-1)))` -/
def P1769045747177178617.Spec : Prop :=
  ∀ n, P1769045747177178617.a n = (A083420 n : ℚ)

theorem P1769045747177178617.correct : P1769045747177178617.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083420, Nat.add_sub_cancel, A083420.P1769045747177178617.a, A083420.P7041071117902394658.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083420, Nat.add_sub_cancel, A083420.P1769045747177178617.a, A083420.P7041071117902394658.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083420

/-! ## A083420.P13835337728817979090

`floor(3%(n+3)+4*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A083420.P13835337728817979090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 % (n + 3) + 4 * a (n - 1)

end

end A083420.P13835337728817979090

namespace A083420

/-- `floor(3%(n+3)+4*a(n-1))` -/
def P13835337728817979090.Spec : Prop :=
  ∀ n, (P13835337728817979090.a n : ℤ) = A083420 n

end A083420

/-! ## A083420.P460610918778326535

`floor(gcd(3, 3*n)+4*a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A083420.P460610918778326535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd 3 (3 * n) + 4 * a (n - 1)

end

end A083420.P460610918778326535

namespace A083420

/-- `floor(gcd(3, 3*n)+4*a(n-1))` -/
def P460610918778326535.Spec : Prop :=
  ∀ n, (P460610918778326535.a n : ℤ) = A083420 n

end A083420

/-! ## A083420.P12103236129900241143

`floor(a(n-1)+3*(a(n-1)+1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A083420.P12103236129900241143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 3 * (a (n - 1) + 1)

end

end A083420.P12103236129900241143

namespace A083420

/-- `floor(a(n-1)+3*(a(n-1)+1))` -/
def P12103236129900241143.Spec : Prop :=
  ∀ n, (P12103236129900241143.a n : ℤ) = A083420 n

theorem P12103236129900241143.correct : P12103236129900241143.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A083420, Nat.add_sub_cancel, A083420.P12103236129900241143.a, A083420.P7041071117902394658.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A083420, Nat.add_sub_cancel, A083420.P12103236129900241143.a, A083420.P7041071117902394658.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083420

/-! ## A083420.P2499395267749441262

`(4*a(n-1)+3)*a(n-1)%2` with `a(0)=1`
-/

namespace A083420.P2499395267749441262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (4 * a (n - 1) + 3) * (a (n - 1) % 2)

end

end A083420.P2499395267749441262

namespace A083420

/-- `(4*a(n-1)+3)*a(n-1)%2` -/
def P2499395267749441262.Spec : Prop :=
  ∀ n, (P2499395267749441262.a n : ℤ) = A083420 n

end A083420

/-! ## A083420.P4164207066050410261

`(4*a(n-1)+3)*gcd(2, a(n-1))` with `a(0)=1`
-/

namespace A083420.P4164207066050410261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (4 * a (n - 1) + 3) * Nat.gcd 2 (a (n - 1))

end

end A083420.P4164207066050410261

namespace A083420

/-- `(4*a(n-1)+3)*gcd(2, a(n-1))` -/
def P4164207066050410261.Spec : Prop :=
  ∀ n, (P4164207066050410261.a n : ℤ) = A083420 n

end A083420

/-!
# A083421: a(n)=2*5^n-2^n.

The programs for A083421, the canonical program `A083421.P1399992890581231993` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083421 has offset 0).

The definition of A083421 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*5^n-2^n` (program `A083421.P1399992890581231993`, by `A083421.P1399992890581231993.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083421.P1399992890581231993

`2*5^n-2^n`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083421

/-- `2*5^n-2^n` -/
def P1399992890581231993.Spec : Prop :=
  ∀ n, P1399992890581231993.a n = A083421 n

theorem P1399992890581231993.correct : P1399992890581231993.Spec := by
  intro n
  simp only [A083421]

end A083421

/-! ## A083421.P16627962958721701822

`ogf((1+x)/(1-7x+10x^2))`
-/

namespace A083421.P16627962958721701822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -7, 10] n

end

end A083421.P16627962958721701822

namespace A083421

/-- `ogf((1+x)/(1-7x+10x^2))` -/
def P16627962958721701822.Spec : Prop :=
  ∀ n, P16627962958721701822.a n = A083421 n

end A083421

/-! ## A083421.P13099951934231866335

`abs(2^n-A020729(n))`
-/

namespace A083421.P13099951934231866335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - A020729 n|

end

end A083421.P13099951934231866335

namespace A083421

/-- `abs(2^n-A020729(n))` -/
def P13099951934231866335.Spec : Prop :=
  ∀ n, P13099951934231866335.a n = A083421 n

end A083421

/-! ## A083421.P16014818849334490803

`Δ[A034478(n)-2^n]`
-/

namespace A083421.P16014818849334490803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083421.P16014818849334490803

namespace A083421

/-- `Δ[A034478(n)-2^n]` -/
def P16014818849334490803.Spec : Prop :=
  ∀ n, P16014818849334490803.a n = A083421 n

end A083421

/-! ## A083421.P5852443218501688966

`Δ[A132079(n)-2^n]`
-/

namespace A083421.P5852443218501688966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132079 n - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083421.P5852443218501688966

namespace A083421

/-- `Δ[A132079(n)-2^n]` -/
def P5852443218501688966.Spec : Prop :=
  ∀ n, P5852443218501688966.a n = A083421 n

end A083421

/-! ## A083421.P5992854320490704405

`Δ[A121177(n+1)-2^n]`
-/

namespace A083421.P5992854320490704405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (n + 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083421.P5992854320490704405

namespace A083421

/-- `Δ[A121177(n+1)-2^n]` -/
def P5992854320490704405.Spec : Prop :=
  ∀ n, P5992854320490704405.a n = A083421 n

end A083421

/-! ## A083421.P9911819486764992972

`abs(A171559(n)-5^n-5^n)`
-/

namespace A083421.P9911819486764992972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171559 n - (5 ^ n : ℤ) - (5 ^ n : ℤ)|

end

end A083421.P9911819486764992972

namespace A083421

/-- `abs(A171559(n)-5^n-5^n)` -/
def P9911819486764992972.Spec : Prop :=
  ∀ n, P9911819486764992972.a n = A083421 n

end A083421

/-! ## A083421.P16417262548767363561

`abs(A000225(n)-A081655(n))`
-/

namespace A083421.P16417262548767363561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A081655 n|

end

end A083421.P16417262548767363561

namespace A083421

/-- `abs(A000225(n)-A081655(n))` -/
def P16417262548767363561.Spec : Prop :=
  ∀ n, P16417262548767363561.a n = A083421 n

end A083421

/-! ## A083421.P10877758652456001379

`Δ[A001047(n)+2*A007798(n)]`
-/

namespace A083421.P10877758652456001379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n + 2 * A007798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083421.P10877758652456001379

namespace A083421

/-- `Δ[A001047(n)+2*A007798(n)]` -/
def P10877758652456001379.Spec : Prop :=
  ∀ n, P10877758652456001379.a n = A083421 n

end A083421

/-! ## A083421.P2409620138983341062

`∑[2*A005054(n)-A011782(n)]`
-/

namespace A083421.P2409620138983341062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005054 n - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083421.P2409620138983341062

namespace A083421

/-- `∑[2*A005054(n)-A011782(n)]` -/
def P2409620138983341062.Spec : Prop :=
  ∀ n, P2409620138983341062.a n = A083421 n

end A083421

/-! ## A083421.P9138375357414970521

`Δ[2*A003463(n)-A000051(n)]`
-/

namespace A083421.P9138375357414970521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003463 n - A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083421.P9138375357414970521

namespace A083421

/-- `Δ[2*A003463(n)-A000051(n)]` -/
def P9138375357414970521.Spec : Prop :=
  ∀ n, P9138375357414970521.a n = A083421 n

end A083421

/-! ## A083421.P6657279881924261449

`Δ[2*A003463(n)-A000079(n)]`
-/

namespace A083421.P6657279881924261449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003463 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083421.P6657279881924261449

namespace A083421

/-- `Δ[2*A003463(n)-A000079(n)]` -/
def P6657279881924261449.Spec : Prop :=
  ∀ n, P6657279881924261449.a n = A083421 n

end A083421

/-! ## A083421.P10272825827785605935

`Δ[2*A003463(n)-A000225(n)]`
-/

namespace A083421.P10272825827785605935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003463 n - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083421.P10272825827785605935

namespace A083421

/-- `Δ[2*A003463(n)-A000225(n)]` -/
def P10272825827785605935.Spec : Prop :=
  ∀ n, P10272825827785605935.a n = A083421 n

end A083421

/-! ## A083421.P5151321980094193040

`Δ[2*A047850(n)-A000051(n)]`
-/

namespace A083421.P5151321980094193040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047850 n - A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083421.P5151321980094193040

namespace A083421

/-- `Δ[2*A047850(n)-A000051(n)]` -/
def P5151321980094193040.Spec : Prop :=
  ∀ n, P5151321980094193040.a n = A083421 n

end A083421

/-! ## A083421.P17318853081341635237

`Δ[2*A003463(n)-A052548(n)]`
-/

namespace A083421.P17318853081341635237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003463 n - A052548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083421.P17318853081341635237

namespace A083421

/-- `Δ[2*A003463(n)-A052548(n)]` -/
def P17318853081341635237.Spec : Prop :=
  ∀ n, P17318853081341635237.a n = A083421 n

end A083421

/-! ## A083421.P7522236533371711845

`Δ[A000351(n)/2-A000051(n)]`
-/

namespace A083421.P7522236533371711845
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n : ℚ) / 2 - (A000051 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083421.P7522236533371711845

namespace A083421

/-- `Δ[A000351(n)/2-A000051(n)]` -/
def P7522236533371711845.Spec : Prop :=
  ∀ n, P7522236533371711845.a n = (A083421 n : ℚ)

theorem P7522236533371711845.correct : P7522236533371711845.Spec := by
  intro n
  simp only [A083421, Nat.add_sub_cancel, A083421.P7522236533371711845.f1, A083421.P7522236533371711845.a, A083421.P1399992890581231993.a, A000051, A000051.P14067217022188782580.a, A000351, A000351.P3157381177678935815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083421

/-! ## A083421.P7519455927958865917

`Δ[A000351(n)/2-A000225(n)]`
-/

namespace A083421.P7519455927958865917
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 n : ℚ) / 2 - (A000225 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083421.P7519455927958865917

namespace A083421

/-- `Δ[A000351(n)/2-A000225(n)]` -/
def P7519455927958865917.Spec : Prop :=
  ∀ n, P7519455927958865917.a n = (A083421 n : ℚ)

theorem P7519455927958865917.correct : P7519455927958865917.Spec := by
  intro n
  simp only [A083421, Nat.add_sub_cancel, A083421.P7519455927958865917.f1, A083421.P7519455927958865917.a, A083421.P1399992890581231993.a, A000225, A000225.P6535533121115206393.a, A000351, A000351.P3157381177678935815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083421

/-! ## A083421.P758782123345422946

`Δ[(A005057(n)-A000051(n))/2]`
-/

namespace A083421.P758782123345422946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005057 n - A000051 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083421.P758782123345422946

namespace A083421

/-- `Δ[(A005057(n)-A000051(n))/2]` -/
def P758782123345422946.Spec : Prop :=
  ∀ n, P758782123345422946.a n = (A083421 n : ℚ)

theorem P758782123345422946.correct : P758782123345422946.Spec := by
  intro n
  simp only [A083421, Nat.add_sub_cancel, A083421.P758782123345422946.f1, A083421.P758782123345422946.a, A083421.P1399992890581231993.a, A000051, A000051.P14067217022188782580.a, A005057, A005057.P1941828676936816176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083421

/-! ## A083421.P2812148531149378002

`(A248338(n)+A011557(n))/A000079(n)`
-/

namespace A083421.P2812148531149378002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248338 n + A011557 n : ℚ) / (A000079 n : ℚ)

end

end A083421.P2812148531149378002

namespace A083421

/-- `(A248338(n)+A011557(n))/A000079(n)` -/
def P2812148531149378002.Spec : Prop :=
  ∀ n, P2812148531149378002.a n = (A083421 n : ℚ)

end A083421

/-!
# A083423: a(n) = (5*3^n + (-3)^n)/6.

The programs for A083423, the canonical program `A083423.P5623227609196984548` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083423 has offset 0).

The definition of A083423 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*3^n+(-3)^n)/6` (program `A083423.P8484772134880386064`, by `A083423.P8484772134880386064.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083423.P5623227609196984548

`9*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083423

/-- `9*a(n-2)` -/
def P5623227609196984548.Spec : Prop :=
  ∀ n, (P5623227609196984548.a n : ℤ) = A083423 n

theorem P5623227609196984548.correct : P5623227609196984548.Spec := by
  intro n
  simp only [A083423]

end A083423

/-! ## A083423.P8484772134880386064

`(5*3^n+(-3)^n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083423.P8484772134880386064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 3 ^ n : ℤ) + (-3) ^ n : ℚ) / 6

end

end A083423.P8484772134880386064

namespace A083423

/-- `(5*3^n+(-3)^n)/6` -/
def P8484772134880386064.Spec : Prop :=
  ∀ n, P8484772134880386064.a n = (A083423 n : ℚ)

theorem P8484772134880386064.correct : P8484772134880386064.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A083423, Nat.add_sub_cancel, A083423.P8484772134880386064.a, A083423.P5623227609196984548.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A083423, Nat.add_sub_cancel, A083423.P8484772134880386064.a, A083423.P5623227609196984548.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083423

/-! ## A083423.P12717906629170794041

`ogf((1+2x)/(1-9x^2))`
-/

namespace A083423.P12717906629170794041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -9] n

end

end A083423.P12717906629170794041

namespace A083423

/-- `ogf((1+2x)/(1-9x^2))` -/
def P12717906629170794041.Spec : Prop :=
  ∀ n, P12717906629170794041.a n = A083423 n

end A083423

/-! ## A083423.P12928511765075090304

`∏[9/a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A083423.P12928511765075090304
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  9 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A083423.P12928511765075090304

namespace A083423

/-- `∏[9/a(n-1)]` -/
def P12928511765075090304.Spec : Prop :=
  ∀ n, P12928511765075090304.a n = (A083423 n : ℚ)

end A083423

/-! ## A083423.P17879541231236507415

`(gcd(2, n)+1)*3^(n-1)`
-/

namespace A083423.P17879541231236507415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n + 1 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A083423.P17879541231236507415

namespace A083423

/-- `(gcd(2, n)+1)*3^(n-1)` -/
def P17879541231236507415.Spec : Prop :=
  ∀ n, P17879541231236507415.a n = (A083423 n : ℚ)

end A083423

/-! ## A083423.P7521209375245478867

`(and(1, n+1)+2)*3^(n-1)`
-/

namespace A083423.P7521209375245478867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) + 2 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A083423.P7521209375245478867

namespace A083423

/-- `(and(1, n+1)+2)*3^(n-1)` -/
def P7521209375245478867.Spec : Prop :=
  ∀ n, P7521209375245478867.a n = (A083423 n : ℚ)

end A083423

/-! ## A083423.P17267753961681884004

`(or(1, n+2)-n)*3^(n-1)`
-/

namespace A083423.P17267753961681884004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (n + 2) : ℤ) - (n : ℤ) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A083423.P17267753961681884004

namespace A083423

/-- `(or(1, n+2)-n)*3^(n-1)` -/
def P17267753961681884004.Spec : Prop :=
  ∀ n, P17267753961681884004.a n = (A083423 n : ℚ)

end A083423

/-! ## A083423.P10664862008545899731

`(n%2+1)*3^(n-n%2)`
-/

namespace A083423.P10664862008545899731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - ((n % 2 : ℕ) : ℤ) : ℤ)

end

end A083423.P10664862008545899731

namespace A083423

/-- `(n%2+1)*3^(n-n%2)` -/
def P10664862008545899731.Spec : Prop :=
  ∀ n, P10664862008545899731.a n = (A083423 n : ℚ)

end A083423

/-! ## A083423.P28308950079363777

`A182522(or(1, n)+n)`
-/

namespace A083423.P28308950079363777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (Nat.lor 1 n + n)

end

end A083423.P28308950079363777

namespace A083423

/-- `A182522(or(1, n)+n)` -/
def P28308950079363777.Spec : Prop :=
  ∀ n, P28308950079363777.a n = A083423 n

end A083423

/-! ## A083423.P17300759333505499156

`3^(n-1)*A176059(n)`
-/

namespace A083423.P17300759333505499156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A176059 n : ℚ)

end

end A083423.P17300759333505499156

namespace A083423

/-- `3^(n-1)*A176059(n)` -/
def P17300759333505499156.Spec : Prop :=
  ∀ n, P17300759333505499156.a n = (A083423 n : ℚ)

end A083423

/-! ## A083423.P15002155149053491238

`3^(n-1)*A010693(n+1)`
-/

namespace A083423.P15002155149053491238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A010693 (n + 1) : ℚ)

end

end A083423.P15002155149053491238

namespace A083423

/-- `3^(n-1)*A010693(n+1)` -/
def P15002155149053491238.Spec : Prop :=
  ∀ n, P15002155149053491238.a n = (A083423 n : ℚ)

end A083423

/-! ## A083423.P11123603964204945710

`3^(n-2)*A010725(n+1)`
-/

namespace A083423.P11123603964204945710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A010725 (n + 1) : ℚ)

end

end A083423.P11123603964204945710

namespace A083423

/-- `3^(n-2)*A010725(n+1)` -/
def P11123603964204945710.Spec : Prop :=
  ∀ n, P11123603964204945710.a n = (A083423 n : ℚ)

end A083423

/-! ## A083423.P10151416839763930820

`3^(n-1)*A158478(n+3)`
-/

namespace A083423.P10151416839763930820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A158478 (n + 3) : ℚ)

end

end A083423.P10151416839763930820

namespace A083423

/-- `3^(n-1)*A158478(n+3)` -/
def P10151416839763930820.Spec : Prop :=
  ∀ n, P10151416839763930820.a n = (A083423 n : ℚ)

end A083423

/-! ## A083423.P5442655799543213825

`3^(n-1)*A174296(n+3)`
-/

namespace A083423.P5442655799543213825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A174296 (n + 3) : ℚ)

end

end A083423.P5442655799543213825

namespace A083423

/-- `3^(n-1)*A174296(n+3)` -/
def P5442655799543213825.Spec : Prop :=
  ∀ n, P5442655799543213825.a n = (A083423 n : ℚ)

end A083423

/-! ## A083423.P13860352439652850795

`3^(n-1)*A020639(3*(n+1))`
-/

namespace A083423.P13860352439652850795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A020639 (3 * (n + 1)) : ℚ)

end

end A083423.P13860352439652850795

namespace A083423

/-- `3^(n-1)*A020639(3*(n+1))` -/
def P13860352439652850795.Spec : Prop :=
  ∀ n, P13860352439652850795.a n = (A083423 n : ℚ)

end A083423

/-! ## A083423.P4403561597734248918

`A038754(A042948(n))`
-/

namespace A083423.P4403561597734248918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (A042948 n).toNat

end

end A083423.P4403561597734248918

namespace A083423

/-- `A038754(A042948(n))` -/
def P4403561597734248918.Spec : Prop :=
  ∀ n, P4403561597734248918.a n = A083423 n

end A083423

/-! ## A083423.P11531087813703308723

`A076738(A032766(n))`
-/

namespace A083423.P11531087813703308723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076738 (A032766 n).toNat

end

end A083423.P11531087813703308723

namespace A083423

/-- `A076738(A032766(n))` -/
def P11531087813703308723.Spec : Prop :=
  ∀ n, P11531087813703308723.a n = A083423 n

end A083423

/-! ## A083423.P5907383006763512027

`A280731(A004277(n))`
-/

namespace A083423.P5907383006763512027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280731 (A004277 n).toNat

end

end A083423.P5907383006763512027

namespace A083423

/-- `A280731(A004277(n))` -/
def P5907383006763512027.Spec : Prop :=
  ∀ n, P5907383006763512027.a n = A083423 n

end A083423

/-! ## A083423.P1661558152355190828

`A000792(A047238(n+1))`
-/

namespace A083423.P1661558152355190828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000792 (A047238 (n + 1)).toNat

end

end A083423.P1661558152355190828

namespace A083423

/-- `A000792(A047238(n+1))` -/
def P1661558152355190828.Spec : Prop :=
  ∀ n, P1661558152355190828.a n = A083423 n

end A083423

/-! ## A083423.P9072026206255783320

`A182522(A042963(n+1))`
-/

namespace A083423.P9072026206255783320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A042963 (n + 1)).toNat

end

end A083423.P9072026206255783320

namespace A083423

/-- `A182522(A042963(n+1))` -/
def P9072026206255783320.Spec : Prop :=
  ∀ n, P9072026206255783320.a n = A083423 n

end A083423

/-!
# A083424: a(n) = (5*4^n + (-2)^n)/6.

The programs for A083424, the canonical program `A083424.P7462759652629771660` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083424 has offset 0).

The definition of A083424 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*4^n+(-2)^n)/6` (program `A083424.P17765590099105858338`, by `A083424.P17765590099105858338.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083424.P7462759652629771660

`2*a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083424

/-- `2*a(n-1)+8*a(n-2)` -/
def P7462759652629771660.Spec : Prop :=
  ∀ n, (P7462759652629771660.a n : ℤ) = A083424 n

theorem P7462759652629771660.correct : P7462759652629771660.Spec := by
  intro n
  simp only [A083424]

end A083424

/-! ## A083424.P3020962474272777292

`A048573(n)*2^(n-1)`
-/

namespace A083424.P3020962474272777292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048573 n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A083424.P3020962474272777292

namespace A083424

/-- `A048573(n)*2^(n-1)` -/
def P3020962474272777292.Spec : Prop :=
  ∀ n, P3020962474272777292.a n = (A083424 n : ℚ)

end A083424

/-! ## A083424.P17765590099105858338

`(5*4^n+(-2)^n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083424.P17765590099105858338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 4 ^ n : ℤ) + (-2) ^ n : ℚ) / 6

end

end A083424.P17765590099105858338

namespace A083424

/-- `(5*4^n+(-2)^n)/6` -/
def P17765590099105858338.Spec : Prop :=
  ∀ n, P17765590099105858338.a n = (A083424 n : ℚ)

theorem P17765590099105858338.correct : P17765590099105858338.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A083424, Nat.add_sub_cancel, A083424.P17765590099105858338.a, A083424.P7462759652629771660.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A083424, Nat.add_sub_cancel, A083424.P17765590099105858338.a, A083424.P7462759652629771660.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083424

/-! ## A083424.P11527142635597078845

`ogf((1+x)/(1-2x-8x^2))`
-/

namespace A083424.P11527142635597078845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -8] n

end

end A083424.P11527142635597078845

namespace A083424

/-- `ogf((1+x)/(1-2x-8x^2))` -/
def P11527142635597078845.Spec : Prop :=
  ∀ n, P11527142635597078845.a n = A083424 n

end A083424

/-! ## A083424.P17433085674046615834

`2*(4-(4*(1-a(n-2))-a(n-1)))` with `a(0)=1, a(1)=3`
-/

namespace A083424.P17433085674046615834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (4 - (4 * (1 - a (n - 2)) - a (n - 1)))

end

end A083424.P17433085674046615834

namespace A083424

/-- `2*(4-(4*(1-a(n-2))-a(n-1)))` -/
def P17433085674046615834.Spec : Prop :=
  ∀ n, P17433085674046615834.a n = A083424 n

end A083424

/-! ## A083424.P5853094408800390197

`4^n-A003683(n)`
-/

namespace A083424.P5853094408800390197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A003683 n

end

end A083424.P5853094408800390197

namespace A083424

/-- `4^n-A003683(n)` -/
def P5853094408800390197.Spec : Prop :=
  ∀ n, P5853094408800390197.a n = A083424 n

end A083424

/-! ## A083424.P4855065607714933521

`(A084170(n)+1)*2^(n-1)`
-/

namespace A083424.P4855065607714933521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084170 n + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A083424.P4855065607714933521

namespace A083424

/-- `(A084170(n)+1)*2^(n-1)` -/
def P4855065607714933521.Spec : Prop :=
  ∀ n, P4855065607714933521.a n = (A083424 n : ℚ)

end A083424

/-! ## A083424.P11595274200000792896

`2^(n-2)*A084214(n+2)`
-/

namespace A083424.P11595274200000792896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A084214 (n + 2) : ℚ)

end

end A083424.P11595274200000792896

namespace A083424

/-- `2^(n-2)*A084214(n+2)` -/
def P11595274200000792896.Spec : Prop :=
  ∀ n, P11595274200000792896.a n = (A083424 n : ℚ)

end A083424

/-! ## A083424.P14839176429100322044

`2^(n-2)*A151794(n+2)`
-/

namespace A083424.P14839176429100322044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A151794 (n + 2) : ℚ)

end

end A083424.P14839176429100322044

namespace A083424

/-- `2^(n-2)*A151794(n+2)` -/
def P14839176429100322044.Spec : Prop :=
  ∀ n, P14839176429100322044.a n = (A083424 n : ℚ)

end A083424

/-! ## A083424.P18328819870840182255

`4*a(n-1)-A123344(n)` with `a(0)=1`
-/

namespace A083424.P18328819870840182255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) - A123344 n

end

end A083424.P18328819870840182255

namespace A083424

/-- `4*a(n-1)-A123344(n)` -/
def P18328819870840182255.Spec : Prop :=
  ∀ n, P18328819870840182255.a n = A083424 n

end A083424

/-! ## A083424.P13345681428745819107

`Δ[A084175(n)+A084152(n)]`
-/

namespace A083424.P13345681428745819107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 n + A084152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083424.P13345681428745819107

namespace A083424

/-- `Δ[A084175(n)+A084152(n)]` -/
def P13345681428745819107.Spec : Prop :=
  ∀ n, P13345681428745819107.a n = A083424 n

end A083424

/-! ## A083424.P12194660259393250529

`Δ[A001045(n)*A084214(n)]`
-/

namespace A083424.P12194660259393250529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A084214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083424.P12194660259393250529

namespace A083424

/-- `Δ[A001045(n)*A084214(n)]` -/
def P12194660259393250529.Spec : Prop :=
  ∀ n, P12194660259393250529.a n = A083424 n

end A083424

/-! ## A083424.P5334963871388836681

`A192382(n+1)+A003665(n)`
-/

namespace A083424.P5334963871388836681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192382 (n + 1) + A003665 n

end

end A083424.P5334963871388836681

namespace A083424

/-- `A192382(n+1)+A003665(n)` -/
def P5334963871388836681.Spec : Prop :=
  ∀ n, P5334963871388836681.a n = A083424 n

end A083424

/-! ## A083424.P16742814958738936588

`A084175(n+1)-A084152(n)`
-/

namespace A083424.P16742814958738936588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 (n + 1) - A084152 n

end

end A083424.P16742814958738936588

namespace A083424

/-- `A084175(n+1)-A084152(n)` -/
def P16742814958738936588.Spec : Prop :=
  ∀ n, P16742814958738936588.a n = A083424 n

end A083424

/-! ## A083424.P11167229114328884626

`A015249(n+2)-A084152(n)`
-/

namespace A083424.P11167229114328884626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015249 (n + 2) - A084152 n

end

end A083424.P11167229114328884626

namespace A083424

/-- `A015249(n+2)-A084152(n)` -/
def P11167229114328884626.Spec : Prop :=
  ∀ n, P11167229114328884626.a n = A083424 n

end A083424

/-! ## A083424.P6527706623473011765

`A084152(n+2)-A084152(n)`
-/

namespace A083424.P6527706623473011765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084152 (n + 2) - A084152 n

end

end A083424.P6527706623473011765

namespace A083424

/-- `A084152(n+2)-A084152(n)` -/
def P6527706623473011765.Spec : Prop :=
  ∀ n, P6527706623473011765.a n = A083424 n

end A083424

/-! ## A083424.P15229380238517656472

`Δ[A084152(n+1)+A084152(n)]`
-/

namespace A083424.P15229380238517656472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084152 (n + 1) + A084152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083424.P15229380238517656472

namespace A083424

/-- `Δ[A084152(n+1)+A084152(n)]` -/
def P15229380238517656472.Spec : Prop :=
  ∀ n, P15229380238517656472.a n = A083424 n

end A083424

/-! ## A083424.P12235345460876874743

`A000302(n)-A192382(n+1)/2`
-/

namespace A083424.P12235345460876874743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n : ℚ) - (A192382 (n + 1) : ℚ) / 2

end

end A083424.P12235345460876874743

namespace A083424

/-- `A000302(n)-A192382(n+1)/2` -/
def P12235345460876874743.Spec : Prop :=
  ∀ n, P12235345460876874743.a n = (A083424 n : ℚ)

end A083424

/-! ## A083424.P151167834928800101

`4^n-A001045(n)*A131577(n)`
-/

namespace A083424.P151167834928800101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - A001045 n * A131577 n

end

end A083424.P151167834928800101

namespace A083424

/-- `4^n-A001045(n)*A131577(n)` -/
def P151167834928800101.Spec : Prop :=
  ∀ n, P151167834928800101.a n = A083424 n

end A083424

/-! ## A083424.P5786053644867316010

`A000079(n)²-A192382(n+1)/2`
-/

namespace A083424.P5786053644867316010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 : ℚ) - (A192382 (n + 1) : ℚ) / 2

end

end A083424.P5786053644867316010

namespace A083424

/-- `A000079(n)²-A192382(n+1)/2` -/
def P5786053644867316010.Spec : Prop :=
  ∀ n, P5786053644867316010.a n = (A083424 n : ℚ)

end A083424

/-!
# A083425: a(n) = (5*5^n + (-1)^n)/6.

The programs for A083425, the canonical program `A083425.P422001329438991053` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083425 has offset 0).

The definition of A083425 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*5^n+(-1)^n)/6` (program `A083425.P6484244198375705981`, by `A083425.P6484244198375705981.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083425.P422001329438991053

`4*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083425

/-- `4*a(n-1)+5*a(n-2)` -/
def P422001329438991053.Spec : Prop :=
  ∀ n, (P422001329438991053.a n : ℤ) = A083425 n

theorem P422001329438991053.correct : P422001329438991053.Spec := by
  intro n
  simp only [A083425]

end A083425

/-! ## A083425.P13952587442307335307

`A015531(n+1)`
-/

namespace A083425.P13952587442307335307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 (n + 1)

end

end A083425.P13952587442307335307

namespace A083425

/-- `A015531(n+1)` -/
def P13952587442307335307.Spec : Prop :=
  ∀ n, P13952587442307335307.a n = A083425 n

end A083425

/-! ## A083425.P6484244198375705981

`(5*5^n+(-1)^n)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083425.P6484244198375705981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 5 ^ n : ℤ) + (-1) ^ n : ℚ) / 6

end

end A083425.P6484244198375705981

namespace A083425

/-- `(5*5^n+(-1)^n)/6` -/
def P6484244198375705981.Spec : Prop :=
  ∀ n, P6484244198375705981.a n = (A083425 n : ℚ)

theorem P6484244198375705981.correct : P6484244198375705981.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A083425, Nat.add_sub_cancel, A083425.P6484244198375705981.a, A083425.P422001329438991053.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A083425, Nat.add_sub_cancel, A083425.P6484244198375705981.a, A083425.P422001329438991053.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083425

/-! ## A083425.P5660196104694663935

`ogf(1/(1-4x-5x^2))`
-/

namespace A083425.P5660196104694663935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, -5] n

end

end A083425.P5660196104694663935

namespace A083425

/-- `ogf(1/(1-4x-5x^2))` -/
def P5660196104694663935.Spec : Prop :=
  ∀ n, P5660196104694663935.a n = A083425 n

end A083425

/-! ## A083425.P4200071611861429765

`xor(1, 5*a(n-1))` with `a(0)=1`
-/

namespace A083425.P4200071611861429765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (5 * a (n - 1))

end

end A083425.P4200071611861429765

namespace A083425

/-- `xor(1, 5*a(n-1))` -/
def P4200071611861429765.Spec : Prop :=
  ∀ n, (P4200071611861429765.a n : ℤ) = A083425 n

end A083425

/-! ## A083425.P10791012698086001306

`xor(1, lcm(5, a(n-1)))` with `a(0)=1`
-/

namespace A083425.P10791012698086001306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (Nat.lcm 5 (a (n - 1)))

end

end A083425.P10791012698086001306

namespace A083425

/-- `xor(1, lcm(5, a(n-1)))` -/
def P10791012698086001306.Spec : Prop :=
  ∀ n, (P10791012698086001306.a n : ℤ) = A083425 n

end A083425

/-! ## A083425.P6423423126219833774

`5^n-a(n-1)` with `a(0)=1`
-/

namespace A083425.P6423423126219833774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (5 ^ n : ℤ) - a (n - 1)

end

end A083425.P6423423126219833774

namespace A083425

/-- `5^n-a(n-1)` -/
def P6423423126219833774.Spec : Prop :=
  ∀ n, P6423423126219833774.a n = A083425 n

end A083425

/-! ## A083425.P8658753950121239903

`floor(∑[5*a(n-1)]-a(n-1))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A083425.P8658753950121239903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A083425.P8658753950121239903

namespace A083425

/-- `floor(∑[5*a(n-1)]-a(n-1))` -/
def P8658753950121239903.Spec : Prop :=
  ∀ n, P8658753950121239903.a n = A083425 n

end A083425

/-! ## A083425.P15517501736987067811

`∑[A083217(n)]`
-/

namespace A083425.P15517501736987067811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083425.P15517501736987067811

namespace A083425

/-- `∑[A083217(n)]` -/
def P15517501736987067811.Spec : Prop :=
  ∀ n, P15517501736987067811.a n = A083425 n

end A083425

/-! ## A083425.P14032925389629974625

`abs(A014986(n+1))`
-/

namespace A083425.P14032925389629974625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014986 (n + 1)|

end

end A083425.P14032925389629974625

namespace A083425

/-- `abs(A014986(n+1))` -/
def P14032925389629974625.Spec : Prop :=
  ∀ n, P14032925389629974625.a n = A083425 n

end A083425

/-! ## A083425.P11879302009675574971

`∑[abs(Δ[A015531(n)])]`
-/

namespace A083425.P11879302009675574971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083425.P11879302009675574971

namespace A083425

/-- `∑[abs(Δ[A015531(n)])]` -/
def P11879302009675574971.Spec : Prop :=
  ∀ n, P11879302009675574971.a n = A083425 n

end A083425

/-! ## A083425.P929214595633909054

`xor(1, A109500(n+1))`
-/

namespace A083425.P929214595633909054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A109500 (n + 1))

end

end A083425.P929214595633909054

namespace A083425

/-- `xor(1, A109500(n+1))` -/
def P929214595633909054.Spec : Prop :=
  ∀ n, P929214595633909054.a n = A083425 n

end A083425

/-! ## A083425.P14685098839664189605

`record[A015531(abs(1-n))]`
-/

namespace A083425.P14685098839664189605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015531 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083425.P14685098839664189605

namespace A083425

/-- `record[A015531(abs(1-n))]` -/
def P14685098839664189605.Spec : Prop :=
  ∀ n, P14685098839664189605.a n = A083425 n

end A083425

/-! ## A083425.P13978486110189522423

`A103455(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A083425.P13978486110189522423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103455 n + (1 - a (n - 1))

end

end A083425.P13978486110189522423

namespace A083425

/-- `A103455(n)+1-a(n-1)` -/
def P13978486110189522423.Spec : Prop :=
  ∀ n, P13978486110189522423.a n = A083425 n

end A083425

/-! ## A083425.P14057089510094015151

`A081340(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A083425.P14057089510094015151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A081340 n + 2 * a (n - 1)

end

end A083425.P14057089510094015151

namespace A083425

/-- `A081340(n)+2*a(n-1)` -/
def P14057089510094015151.Spec : Prop :=
  ∀ n, P14057089510094015151.a n = A083425 n

end A083425

/-! ## A083425.P11090339873327009363

`A024050(n)-a(n-1)+n` with `a(0)=1`
-/

namespace A083425.P11090339873327009363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024050 n - a (n - 1) + (n : ℤ)

end

end A083425.P11090339873327009363

namespace A083425

/-- `A024050(n)-a(n-1)+n` -/
def P11090339873327009363.Spec : Prop :=
  ∀ n, P11090339873327009363.a n = A083425 n

end A083425

/-! ## A083425.P17694412798365836488

`A104745(n)-(a(n-1)+n)` with `a(0)=1`
-/

namespace A083425.P17694412798365836488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A104745 n - (a (n - 1) + (n : ℤ))

end

end A083425.P17694412798365836488

namespace A083425

/-- `A104745(n)-(a(n-1)+n)` -/
def P17694412798365836488.Spec : Prop :=
  ∀ n, P17694412798365836488.a n = A083425 n

end A083425

/-! ## A083425.P3489182182353475406

`A000351(n)-A015531(n)`
-/

namespace A083425.P3489182182353475406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - A015531 n

end

end A083425.P3489182182353475406

namespace A083425

/-- `A000351(n)-A015531(n)` -/
def P3489182182353475406.Spec : Prop :=
  ∀ n, P3489182182353475406.a n = A083425 n

end A083425

/-! ## A083425.P3438686778483308810

`Δ[A084177(n)]-A084153(n)`
-/

namespace A083425.P3438686778483308810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A084153 n

end

end A083425.P3438686778483308810

namespace A083425

/-- `Δ[A084177(n)]-A084153(n)` -/
def P3438686778483308810.Spec : Prop :=
  ∀ n, P3438686778483308810.a n = A083425 n

end A083425

/-! ## A083425.P12853790457066162912

`A084177(n+1)-∑[A084177(n)]`
-/

namespace A083425.P12853790457066162912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084177 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083425.P12853790457066162912

namespace A083425

/-- `A084177(n+1)-∑[A084177(n)]` -/
def P12853790457066162912.Spec : Prop :=
  ∀ n, P12853790457066162912.a n = A083425 n

end A083425

/-!
# A083426: a(n) = (4*7^n+2^n)/5.

The programs for A083426, the canonical program `A083426.P14747487426713307230` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083426 has offset 0).

The definition of A083426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083426.P14747487426713307230

`(4*7^n+2^n)/5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083426

/-- `(4*7^n+2^n)/5` -/
def P14747487426713307230.Spec : Prop :=
  ∀ n, P14747487426713307230.a n = (A083426 n : ℚ)

end A083426

/-! ## A083426.P15339330809742122611

`ogf((1-3x)/(1-9x+14x^2))`
-/

namespace A083426.P15339330809742122611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -9, 14] n

end

end A083426.P15339330809742122611

namespace A083426

/-- `ogf((1-3x)/(1-9x+14x^2))` -/
def P15339330809742122611.Spec : Prop :=
  ∀ n, P15339330809742122611.a n = A083426 n

end A083426

/-! ## A083426.P7242219230306358452

`7*a(n-1)-2^(n-1)` with `a(0)=1`
-/

namespace A083426.P7242219230306358452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A083426.P7242219230306358452

namespace A083426

/-- `7*a(n-1)-2^(n-1)` -/
def P7242219230306358452.Spec : Prop :=
  ∀ n, P7242219230306358452.a n = (A083426 n : ℚ)

end A083426

/-! ## A083426.P1830491647208349420

`lcm(7, a(n-1))-2^(n-1)` with `a(0)=1`
-/

namespace A083426.P1830491647208349420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 7 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) - (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A083426.P1830491647208349420

namespace A083426

/-- `lcm(7, a(n-1))-2^(n-1)` -/
def P1830491647208349420.Spec : Prop :=
  ∀ n, P1830491647208349420.a n = (A083426 n : ℚ)

end A083426

/-! ## A083426.P5501011556789980327

`A270471(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A083426.P5501011556789980327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270471 n + 2 * a (n - 1)

end

end A083426.P5501011556789980327

namespace A083426

/-- `A270471(n)+2*a(n-1)` -/
def P5501011556789980327.Spec : Prop :=
  ∀ n, P5501011556789980327.a n = A083426 n

end A083426

/-! ## A083426.P1564572927006647292

`abs(7*a(n-1)-A011782(n))` with `a(0)=1`
-/

namespace A083426.P1564572927006647292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |7 * a (n - 1) - A011782 n|

end

end A083426.P1564572927006647292

namespace A083426

/-- `abs(7*a(n-1)-A011782(n))` -/
def P1564572927006647292.Spec : Prop :=
  ∀ n, P1564572927006647292.a n = A083426 n

end A083426

/-! ## A083426.P9921460446844380721

`floor(7*a(n-1)-A131577(n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A083426.P9921460446844380721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) - A131577 n

end

end A083426.P9921460446844380721

namespace A083426

/-- `floor(7*a(n-1)-A131577(n))` -/
def P9921460446844380721.Spec : Prop :=
  ∀ n, P9921460446844380721.a n = A083426 n

end A083426

/-! ## A083426.P3245923073145832155

`7*a(n-1)-A000007(n)-A011782(n)` with `a(0)=1`
-/

namespace A083426.P3245923073145832155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) - A000007 n - A011782 n

end

end A083426.P3245923073145832155

namespace A083426

/-- `7*a(n-1)-A000007(n)-A011782(n)` -/
def P3245923073145832155.Spec : Prop :=
  ∀ n, P3245923073145832155.a n = A083426 n

end A083426

/-!
# A083428: 

The programs for A083428, there is no canonical definition to state claims against.
-/

/-! ## A083428.P6431735868618080010

`A088628(3*(n+1)+1)`
-/

namespace A083428.P6431735868618080010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088628 (3 * (n + 1) + 1)

end

end A083428.P6431735868618080010

/-!
# A083429: Smallest multiple of n that can be formed using the digits of first n natural numbers.

The programs for A083429, there is no canonical definition to state claims against.
-/

/-! ## A083429.P17161880511776588910

`(n+1)*A083430(n+1)`
-/

namespace A083429.P17161880511776588910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083430 (n + 1)

end

end A083429.P17161880511776588910

/-! ## A083429.P16175151368548642499

`A083430(n+1)/(n+1)^(A278482(A000096(n))-1)`
-/

namespace A083429.P16175151368548642499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083430 (n + 1) : ℚ) / (n + 1 : ℚ) ^ (A278482 (A000096 n).toNat - 1 : ℤ)

end

end A083429.P16175151368548642499

/-!
# A083430: Smallest k such that k*n is a number that is a permutation of the digits of first n numbers. a(n) = A083429(n)/n.

The programs for A083430, there is no canonical definition to state claims against.
-/

/-! ## A083430.P14865933901880332856

`A083429(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083430.P14865933901880332856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083429 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A083430.P14865933901880332856

/-! ## A083430.P2812133285788172095

`A075000(n+1)%A254126(A364317(n+1))`
-/

namespace A083430.P2812133285788172095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075000 (n + 1)) (A254126 (A364317 (n + 1)).toNat)

end

end A083430.P2812133285788172095

/-!
# A083431: Largest multiple of n that can be formed using the digits of first n natural numbers.

The programs for A083431, there is no canonical definition to state claims against.
-/

/-! ## A083431.P14799449097408661891

`(n+1)*A083432(n+1)`
-/

namespace A083431.P14799449097408661891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083432 (n + 1)

end

end A083431.P14799449097408661891

/-! ## A083431.P13634693417881490838

`A078189(∑[gcd(n+1, ∑[4^n])*n!])`
-/

namespace A083431.P13634693417881490838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) * Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083431.P13634693417881490838

/-! ## A083431.P8128353066927068810

`A078189(∑[A077193(n+1)])`
-/

namespace A083431.P8128353066927068810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078189 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A083431.P8128353066927068810

/-!
# A083432: Largest k such that n*k is a number that is formed using all the digits of first n numbers. a(n) = A083431(n)/n.

The programs for A083432, there is no canonical definition to state claims against.
-/

/-! ## A083432.P14338888489616759030

`A083431(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083432.P14338888489616759030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083431 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A083432.P14338888489616759030

/-! ## A083432.P768723363962826153

`(n+1)^A008683(A020483(n))*A083431(n+1)`
-/

namespace A083432.P768723363962826153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ) * (A083431 (n + 1) : ℚ)

end

end A083432.P768723363962826153

/-! ## A083432.P15849583471336376069

`A078189(∑[gcd(n+1, ∑[4^n])*n!])/(n+1)`
-/

namespace A083432.P15849583471336376069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) * Nat.factorial n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078189 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A083432.P15849583471336376069

/-! ## A083432.P17459231991574006055

`A078189(∑[A077193(n+1)])/(n+1)`
-/

namespace A083432.P17459231991574006055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077193 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078189 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (n + 1 : ℚ)

end

end A083432.P17459231991574006055

/-!
# A083434: a(n) = smallest palindrome not included earlier and with the same prime signature as n, or 0 if no such palindrome exists.

The programs for A083434, there is no canonical definition to state claims against.
-/

/-! ## A083434.P18010182326457787190

`A010785(A065708(n+1)^A061906(n))`
-/

namespace A083434.P18010182326457787190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (SequenceMachineLib.roundAway ((A065708 (n + 1) : ℚ) ^ (A061906 n : ℤ))).toNat

end

end A083434.P18010182326457787190

/-! ## A083434.P12315531605341844882

`A248954(A065708(n+1)^A061906(n))`
-/

namespace A083434.P12315531605341844882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248954 (SequenceMachineLib.roundAway ((A065708 (n + 1) : ℚ) ^ (A061906 n : ℤ))).toNat

end

end A083434.P12315531605341844882

/-! ## A083434.P3694672972308390420

`A275772(A065708(n+1)^A061906(n))`
-/

namespace A083434.P3694672972308390420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275772 (SequenceMachineLib.roundAway ((A065708 (n + 1) : ℚ) ^ (A061906 n : ℤ))).toNat

end

end A083434.P3694672972308390420

/-! ## A083434.P11928437953767936848

`A275772(A275775(n+1)^A061906(n))`
-/

namespace A083434.P11928437953767936848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275772 (SequenceMachineLib.roundAway ((A275775 (n + 1) : ℚ) ^ (A061906 n : ℤ))).toNat

end

end A083434.P11928437953767936848

/-!
# A083435: Palindromes with distinct prime signatures that occur naturally. Smallest palindrome with a prime signature of A025487(n), or 0 if no such number exists.

The programs for A083435, there is no canonical definition to state claims against.
-/

/-! ## A083435.P1263316978862924348

`A083434(A025487(n+1))`
-/

namespace A083435.P1263316978862924348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083434 (A025487 (n + 1)).toNat

end

end A083435.P1263316978862924348

/-! ## A083435.P13744616637864109610

`A083434(A279537(n+1))`
-/

namespace A083435.P13744616637864109610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083434 (A279537 (n + 1)).toNat

end

end A083435.P13744616637864109610

/-! ## A083435.P14095924388587940674

`A083434(A325238(n+1))`
-/

namespace A083435.P14095924388587940674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083434 (A325238 (n + 1)).toNat

end

end A083435.P14095924388587940674

/-! ## A083435.P10099089025027810790

`A083434(A333964(n+1))`
-/

namespace A083435.P10099089025027810790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083434 (A333964 (n + 1)).toNat

end

end A083435.P10099089025027810790

/-! ## A083435.P11348189578724723821

`A083434(A344385(n+1))`
-/

namespace A083435.P11348189578724723821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083434 (A344385 (n + 1)).toNat

end

end A083435.P11348189578724723821

/-!
# A083437: Write decimal expansion of Pi in triangular form; sequence gives right edge.

The programs for A083437, there is no canonical definition to state claims against.
-/

/-! ## A083437.P14833353695173267293

`A000796(∑[n]+n)`
-/

namespace A083437.P14833353695173267293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (∑ j ∈ Finset.range (n + 1), f1 j + n + 1)

end

end A083437.P14833353695173267293

/-! ## A083437.P755513740222288797

`A123152(∑[n+1])-1`
-/

namespace A083437.P755513740222288797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A083437.P755513740222288797

/-! ## A083437.P15665076686762328411

`dr(A000796(C(n+1, 2)+n))`
-/

namespace A083437.P15665076686762328411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000796 (Nat.choose (n + 1) 2 + n + 1))

end

end A083437.P15665076686762328411

/-! ## A083437.P5863940125864499106

`A000796((n+3)*n/2)%10`
-/

namespace A083437.P5863940125864499106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000796 ((SequenceMachineLib.roundAway ((n + 3 : ℚ) * ((n : ℚ) / 2))).toNat + 1)) 10

end

end A083437.P5863940125864499106

/-! ## A083437.P5921113902317837116

`and(-1, A000796(n*(n+3)/2))`
-/

namespace A083437.P5921113902317837116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A000796 ((SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat + 1))

end

end A083437.P5921113902317837116

/-! ## A083437.P2558196640723043427

`dr(A000796(A000096(n)))`
-/

namespace A083437.P2558196640723043427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000796 ((A000096 n).toNat + 1))

end

end A083437.P2558196640723043427

/-! ## A083437.P549211860539899247

`dr(A000796(Δ[A005581(n)]))`
-/

namespace A083437.P549211860539899247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000796 ((f1 (n + 1) - f1 n).toNat + 1))

end

end A083437.P549211860539899247

/-! ## A083437.P14043244380421317923

`dr(A000796(A175631(n+3)))`
-/

namespace A083437.P14043244380421317923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000796 ((A175631 (n + 3)).toNat + 1))

end

end A083437.P14043244380421317923

/-! ## A083437.P13087290626565139946

`dr(A000796(A000217(n)+n))`
-/

namespace A083437.P13087290626565139946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000796 ((A000217 n + (n : ℤ)).toNat + 1))

end

end A083437.P13087290626565139946

/-! ## A083437.P6406913048243488630

`lcm(A000796(A000096(n)), A033999(n))`
-/

namespace A083437.P6406913048243488630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000796 ((A000096 n).toNat + 1)) (A033999 n)

end

end A083437.P6406913048243488630

/-! ## A083437.P9005303468099905710

`or(A000007(n), A000796(A000096(n)))`
-/

namespace A083437.P9005303468099905710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A000796 ((A000096 n).toNat + 1))

end

end A083437.P9005303468099905710

/-! ## A083437.P579653224289081752

`or(A000038(n), A000796(A000096(n)))`
-/

namespace A083437.P579653224289081752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A000796 ((A000096 n).toNat + 1))

end

end A083437.P579653224289081752

/-! ## A083437.P9409201842654608411

`dr(A000796(A161680(n)+A005843(n)))`
-/

namespace A083437.P9409201842654608411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000796 ((A161680 n + A005843 n).toNat + 1))

end

end A083437.P9409201842654608411

/-! ## A083437.P171848158099080021

`A007318(C(2, n))*A000796(A000096(n))`
-/

namespace A083437.P171848158099080021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A000796 ((A000096 n).toNat + 1)

end

end A083437.P171848158099080021

/-! ## A083437.P11878812437715928279

`A000796(A000096(n))+char[A034179(n+1)]`
-/

namespace A083437.P11878812437715928279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034179 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A000096 n).toNat + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A083437.P11878812437715928279

/-! ## A083437.P41620150618700734

`A014963(18*(n+1))*A000796(A000096(n))`
-/

namespace A083437.P41620150618700734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (18 * (n + 1)) * A000796 ((A000096 n).toNat + 1)

end

end A083437.P41620150618700734

/-! ## A083437.P4315324826707407472

`A000041(C(2, n+2))*A000796(A000096(n))`
-/

namespace A083437.P4315324826707407472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A000796 ((A000096 n).toNat + 1)

end

end A083437.P4315324826707407472

/-! ## A083437.P2101506519976763863

`A000045(gcd(n, n+1))*A000796(A000096(n))`
-/

namespace A083437.P2101506519976763863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A000796 ((A000096 n).toNat + 1)

end

end A083437.P2101506519976763863

/-! ## A083437.P9182088514259845215

`C(2, A000005(n+2))!*A000796(A000096(n))`
-/

namespace A083437.P9182088514259845215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose 2 (A000005 (n + 2)).toNat) : ℤ) * A000796 ((A000096 n).toNat + 1)

end

end A083437.P9182088514259845215

/-! ## A083437.P6192403137504716476

`sqrt(A072448(∑[n+1]))`
-/

namespace A083437.P6192403137504716476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072448 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A083437.P6192403137504716476

/-!
# A083439: a(1) = 3; then a(n+1) = smallest prime not already in the sequence such that the concatenations a(n)a(n+1) and a(n+1)a(n) are both primes.

The programs for A083439, there is no canonical definition to state claims against.
-/

/-! ## A083439.P693560498928268259

`A163646(A007096(n))`
-/

namespace A083439.P693560498928268259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163646 (A007096 n).toNat

end

end A083439.P693560498928268259

/-! ## A083439.P1160369541788090965

`A163646(A304078(n)+1)`
-/

namespace A083439.P1160369541788090965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163646 (A304078 n + 1).toNat

end

end A083439.P1160369541788090965

/-!
# A083440: Smallest n-digit palindrome with a digit sum of n.

The programs for A083440, there is no canonical definition to state claims against.
-/

/-! ## A083440.P12824804967565306529

`A073880(A103651(n+1)²+1)`
-/

namespace A083440.P12824804967565306529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073880 (A103651 (n + 1) ^ 2 + 1).toNat

end

end A083440.P12824804967565306529

/-!
# A083441: Largest n-digit palindrome with a digit sum of n.

The programs for A083441, there is no canonical definition to state claims against.
-/

/-! ## A083441.P6969157950895085963

`A109858(2^n+lcm(16, n)/16)`
-/

namespace A083441.P6969157950895085963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109858 (SequenceMachineLib.roundAway ((2 ^ n : ℚ) + (Nat.lcm 16 n : ℚ) / 16)).toNat

end

end A083441.P6969157950895085963

/-! ## A083441.P6551261421945709657

`A109858(∑[A109859(n)])`
-/

namespace A083441.P6551261421945709657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109858 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A083441.P6551261421945709657

/-!
# A083445: Largest n-digit number minus the product of its digits; i.e., a(n) = 99999... (n 9's) - 9^n.

The programs for A083445, the canonical program `A083445.P10434029491111395614` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083445 has offset 2).

The definition of A083445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083445.P2252706213849925788

`10^(n+2)-1-9^(n+2)`
-/

namespace A083445.P2252706213849925788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 2) : ℤ) - 1 - (9 ^ (n + 2) : ℤ)

end

end A083445.P2252706213849925788

namespace A083445

/-- `10^(n+2)-1-9^(n+2)` -/
def P2252706213849925788.Spec : Prop :=
  ∀ n, P2252706213849925788.a n = A083445 (n + 2)

end A083445

/-! ## A083445.P10434029491111395614

`9*A083446(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A083445

/-- `9*A083446(n+2)` -/
def P10434029491111395614.Spec : Prop :=
  ∀ n, P10434029491111395614.a n = A083445 (n + 2)

theorem P10434029491111395614.correct : P10434029491111395614.Spec := by
  intro n
  simp only [A083445, Nat.add_sub_cancel]

end A083445

/-! ## A083445.P6452120581836604127

`∑[A088924(n+2)]`
-/

namespace A083445.P6452120581836604127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088924 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083445.P6452120581836604127

namespace A083445

/-- `∑[A088924(n+2)]` -/
def P6452120581836604127.Spec : Prop :=
  ∀ n, P6452120581836604127.a n = A083445 (n + 2)

end A083445

/-! ## A083445.P12691943536789821178

`∑[A050686(2*(n+2))]`
-/

namespace A083445.P12691943536789821178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050686 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083445.P12691943536789821178

namespace A083445

/-- `∑[A050686(2*(n+2))]` -/
def P12691943536789821178.Spec : Prop :=
  ∀ n, P12691943536789821178.a n = A083445 (n + 2)

end A083445

/-! ## A083445.P5860694494739077375

`∑[record[A050686(A029579(n)+2)]]`
-/

namespace A083445.P5860694494739077375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050686 (A029579 n + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083445.P5860694494739077375

namespace A083445

/-- `∑[record[A050686(A029579(n)+2)]]` -/
def P5860694494739077375.Spec : Prop :=
  ∀ n, P5860694494739077375.a n = A083445 (n + 2)

end A083445

/-! ## A083445.P7020474703267959385

`xor(A014963(A008458(n)), A016189(n+2))`
-/

namespace A083445.P7020474703267959385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (A008458 n).toNat) (A016189 (n + 2))

end

end A083445.P7020474703267959385

namespace A083445

/-- `xor(A014963(A008458(n)), A016189(n+2))` -/
def P7020474703267959385.Spec : Prop :=
  ∀ n, P7020474703267959385.a n = A083445 (n + 2)

end A083445

/-! ## A083445.P6596801014852268209

`xor(A008480(A004016(n)+1), A016189(n+2))`
-/

namespace A083445.P6596801014852268209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008480 (A004016 n + 1).toNat) (A016189 (n + 2))

end

end A083445.P6596801014852268209

namespace A083445

/-- `xor(A008480(A004016(n)+1), A016189(n+2))` -/
def P6596801014852268209.Spec : Prop :=
  ∀ n, P6596801014852268209.a n = A083445 (n + 2)

end A083445

/-!
# A083446: a(n) = ((10^n - 1) - 9^n)/9.

The programs for A083446, the canonical program `A083446.P11633062265140926343` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083446 has offset 2).

The definition of A083446 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^(n+2)-1-9^(n+2))/9` (program `A083446.P173724553596564704`, by `A083446.P173724553596564704.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083446.P173724553596564704

`(10^(n+2)-1-9^(n+2))/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083446.P173724553596564704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ (n + 2) : ℤ) - 1 - (9 ^ (n + 2) : ℤ) : ℚ) / 9

end

end A083446.P173724553596564704

namespace A083446

/-- `(10^(n+2)-1-9^(n+2))/9` -/
def P173724553596564704.Spec : Prop :=
  ∀ n, P173724553596564704.a n = (A083446 (n + 2) : ℚ)

theorem P173724553596564704.correct : P173724553596564704.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A083446, Nat.add_sub_cancel, A083446.P173724553596564704.a, A083446.P11633062265140926343.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A083446, Nat.add_sub_cancel, A083446.P173724553596564704.a, A083446.P11633062265140926343.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A083446

/-! ## A083446.P11633062265140926343

`20*a(n-1)-109*a(n-2)+90*a(n-3)` with `a(0)=2, a(1)=30, a(2)=382`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083446

/-- `20*a(n-1)-109*a(n-2)+90*a(n-3)` -/
def P11633062265140926343.Spec : Prop :=
  ∀ n, P11633062265140926343.a n = A083446 (n + 2)

theorem P11633062265140926343.correct : P11633062265140926343.Spec := by
  intro n
  simp only [A083446, Nat.add_sub_cancel]

end A083446

/-! ## A083446.P18336648418416780788

`∑[A088924(n+1)+10^n]`
-/

namespace A083446.P18336648418416780788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088924 (n + 1) + (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083446.P18336648418416780788

namespace A083446

/-- `∑[A088924(n+1)+10^n]` -/
def P18336648418416780788.Spec : Prop :=
  ∀ n, P18336648418416780788.a n = A083446 (n + 2)

end A083446

/-! ## A083446.P8065599827500974468

`∑[A011557(n)+Δ[A016189(n)]]`
-/

namespace A083446.P8065599827500974468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016189 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083446.P8065599827500974468

namespace A083446

/-- `∑[A011557(n)+Δ[A016189(n)]]` -/
def P8065599827500974468.Spec : Prop :=
  ∀ n, P8065599827500974468.a n = A083446 (n + 2)

end A083446

/-! ## A083446.P3392441683795214402

`A002275(n+2)-A001019(n+1)`
-/

namespace A083446.P3392441683795214402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 2) - A001019 (n + 1)

end

end A083446.P3392441683795214402

namespace A083446

/-- `A002275(n+2)-A001019(n+1)` -/
def P3392441683795214402.Spec : Prop :=
  ∀ n, P3392441683795214402.a n = A083446 (n + 2)

end A083446

/-!
# A083447: a(n) = floor( n*R(n)/(n+R(n))), where R(n) is the digit reversal of n (A004086).

The programs for A083447, there is no canonical definition to state claims against.
-/

/-! ## A083447.P10438197209372551062

`floor(A061205(n+2)/A056964(n+2))`
-/

namespace A083447.P10438197209372551062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061205 (n + 2) : ℚ) / (A056964 (n + 2) : ℚ)⌋

end

end A083447.P10438197209372551062

/-!
# A083448: Concatenation of first n numbers - n!. a(n) = 1234567891011... up to n - 1*2*3*4*5*6*7*8*9*10*11... up to n.

The programs for A083448, the canonical program `A083448.P10219045664575333824` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083448 has offset 1).

The definition of A083448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083448.P10219045664575333824

`A007908(n+1)-A000142(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A083448

/-- `A007908(n+1)-A000142(n+1)` -/
def P10219045664575333824.Spec : Prop :=
  ∀ n, P10219045664575333824.a n = A083448 (n + 1)

theorem P10219045664575333824.correct : P10219045664575333824.Spec := by
  intro n
  simp only [A083448, Nat.add_sub_cancel]

end A083448

/-! ## A083448.P16526806111352561761

`A007908(n+1)-record[A098361(n)]`
-/

namespace A083448.P16526806111352561761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083448.P16526806111352561761

namespace A083448

/-- `A007908(n+1)-record[A098361(n)]` -/
def P16526806111352561761.Spec : Prop :=
  ∀ n, P16526806111352561761.a n = A083448 (n + 1)

end A083448

/-! ## A083448.P13567183986443431515

`A007908(n+1)-record[A132159(n)]`
-/

namespace A083448.P13567183986443431515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083448.P13567183986443431515

namespace A083448

/-- `A007908(n+1)-record[A132159(n)]` -/
def P13567183986443431515.Spec : Prop :=
  ∀ n, P13567183986443431515.a n = A083448 (n + 1)

end A083448

/-! ## A083448.P10955140629639444615

`A252043(A058183(n+1))-(n+1)!`
-/

namespace A083448.P10955140629639444615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252043 (A058183 (n + 1)).toNat - (Nat.factorial (n + 1) : ℤ)

end

end A083448.P10955140629639444615

namespace A083448

/-- `A252043(A058183(n+1))-(n+1)!` -/
def P10955140629639444615.Spec : Prop :=
  ∀ n, P10955140629639444615.a n = A083448 (n + 1)

end A083448

/-! ## A083448.P3458575436666121352

`A007908(n+1)-A006882(n+1)*A006882(n)`
-/

namespace A083448.P3458575436666121352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (n + 1) - A006882 (n + 1) * A006882 n

end

end A083448.P3458575436666121352

namespace A083448

/-- `A007908(n+1)-A006882(n+1)*A006882(n)` -/
def P3458575436666121352.Spec : Prop :=
  ∀ n, P3458575436666121352.a n = A083448 (n + 1)

end A083448

/-!
# A083449: a(n) = A019566(n)/9, where A019566(n) = concat(n,...,1) - concat(1,...,n).

The programs for A083449, there is no canonical definition to state claims against.
-/

/-! ## A083449.P18418928607428620553

`A019566(n+1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083449.P18418928607428620553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019566 (n + 1) : ℚ) / 9

end

end A083449.P18418928607428620553

/-! ## A083449.P13309810526747514616

`(A000422(n+1)-A007908(n+1))/9`
-/

namespace A083449.P13309810526747514616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000422 (n + 1) - A007908 (n + 1) : ℚ) / 9

end

end A083449.P13309810526747514616

/-! ## A083449.P1532356559654727875

`(A083453(n+1)+(n+1)^(n+1)-A007908(n+1))/9`
-/

namespace A083449.P1532356559654727875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083453 (n + 1) + ((n + 1) ^ (n + 1) : ℤ) - A007908 (n + 1) : ℚ) / 9

end

end A083449.P1532356559654727875

/-! ## A083449.P9938812862967918706

`(A000422(n+1)-A252043(A033061(n+1)))/9`
-/

namespace A083449.P9938812862967918706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000422 (n + 1) - A252043 (A033061 (n + 1)).toNat : ℚ) / 9

end

end A083449.P9938812862967918706

/-! ## A083449.P13124613125851493014

`(A000422(n+1)-A252043(A058183(n+1)))/9`
-/

namespace A083449.P13124613125851493014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000422 (n + 1) - A252043 (A058183 (n + 1)).toNat : ℚ) / 9

end

end A083449.P13124613125851493014

/-!
# A083451: (n concatenated n times) - n^n.

The programs for A083451, there is no canonical definition to state claims against.
-/

/-! ## A083451.P8800249233180848837

`A000461(n+1)-A000312(n+1)`
-/

namespace A083451.P8800249233180848837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000461 (n + 1) - A000312 (n + 1)

end

end A083451.P8800249233180848837

/-! ## A083451.P13127414442077061260

`(n+1)*A083452(n+1)`
-/

namespace A083451.P13127414442077061260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083452 (n + 1)

end

end A083451.P13127414442077061260

/-! ## A083451.P3052319495032756105

`A000461(n+1)-Δ[A001923(n)]`
-/

namespace A083451.P3052319495032756105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000461 (n + 1) - (f1 (n + 1) - f1 n)

end

end A083451.P3052319495032756105

/-! ## A083451.P7672694922346756574

`(n+1)*A078191(n+1)-A000312(n+1)`
-/

namespace A083451.P7672694922346756574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A078191 (n + 1) - A000312 (n + 1)

end

end A083451.P7672694922346756574

/-! ## A083451.P6760052508045629913

`record[n*(A113589(n)-A325208(n))]`
-/

namespace A083451.P6760052508045629913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A113589 n - A325208 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083451.P6760052508045629913

/-!
# A083452: a(n) = (n times concatenation of n - n^n) divided by n, or a(n) = A083451(n) /n.

The programs for A083452, there is no canonical definition to state claims against.
-/

/-! ## A083452.P12178420408065657687

`A083451(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083452.P12178420408065657687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083451 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A083452.P12178420408065657687

/-! ## A083452.P3915884165800101606

`A078191(n+1)-(n+1)^n`
-/

namespace A083452.P3915884165800101606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078191 (n + 1) - ((n + 1) ^ n : ℤ)

end

end A083452.P3915884165800101606

/-! ## A083452.P4926859894940553373

`record[A113589(n)-A325208(n)]`
-/

namespace A083452.P4926859894940553373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113589 n - A325208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083452.P4926859894940553373

/-! ## A083452.P8702319374851129563

`record[A127805(n)]-A000169(n+1)`
-/

namespace A083452.P8702319374851129563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000169 (n + 1)

end

end A083452.P8702319374851129563

/-! ## A083452.P15414875753327875700

`record[A127805(n)-A076014(n+1)]`
-/

namespace A083452.P15414875753327875700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127805 n - A076014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083452.P15414875753327875700

/-!
# A083453: a(n) = (concatenation of numbers from n to 1) - n^n.

The programs for A083453, there is no canonical definition to state claims against.
-/

/-! ## A083453.P7372115877102398422

`A000422(n+1)-(n+1)^(n+1)`
-/

namespace A083453.P7372115877102398422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (n + 1) - ((n + 1) ^ (n + 1) : ℤ)

end

end A083453.P7372115877102398422

/-! ## A083453.P17256894712609253594

`A052246(n+1)/10-A000312(n+1)`
-/

namespace A083453.P17256894712609253594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052246 (n + 1) : ℚ) / 10 - (A000312 (n + 1) : ℚ)

end

end A083453.P17256894712609253594

/-! ## A083453.P14956769520294575678

`A000422(n+1)-A045531(n+1)-A007778(n)`
-/

namespace A083453.P14956769520294575678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (n + 1) - A045531 (n + 1) - A007778 n

end

end A083453.P14956769520294575678

/-! ## A083453.P17310471989671284924

`A019566(n+1)+A007908(n+1)-A000312(n+1)`
-/

namespace A083453.P17310471989671284924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019566 (n + 1) + A007908 (n + 1) - A000312 (n + 1)

end

end A083453.P17310471989671284924

/-! ## A083453.P5444727422028740386

`A007908(n+1)+A019566(n+1)-record[A095896(n+1)]`
-/

namespace A083453.P5444727422028740386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (n + 1) + (A019566 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A083453.P5444727422028740386

/-!
# A083454: Positions of records in A084841.

The programs for A083454, there is no canonical definition to state claims against.
-/

/-! ## A083454.P4968726199075697808

`∑[A257990(A160160(p?[2*n+1]))]`
-/

namespace A083454.P4968726199075697808
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A160160 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083454.P4968726199075697808

/-! ## A083454.P1432809499889418001

`A337020(A337019(n+5))+n`
-/

namespace A083454.P1432809499889418001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337020 (A337019 (n + 5)).toNat + (n : ℤ)

end

end A083454.P1432809499889418001

/-! ## A083454.P3276516385010425440

`∑[A225538(A131577(A028233(n+1)))]`
-/

namespace A083454.P3276516385010425440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225538 (A131577 (A028233 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083454.P3276516385010425440

/-! ## A083454.P6650989129786262085

`lt[A112382(3*n), A103369(A274640(2*n))]`
-/

namespace A083454.P6650989129786262085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112382 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103369 (A274640 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A083454.P6650989129786262085

/-!
# A083456: Smallest nontrivial k such that k^n + 1 is a palindrome (k>1 for n>1).

The programs for A083456, the canonical program `A083456.P3623999968168277282` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083456 has offset 1).

The definition of A083456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8778 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083456.P3623999968168277282

`a(n-1)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=5, a(4)=2, a(5)=10`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083456

/-- `a(n-1)` -/
def P3623999968168277282.Spec : Prop :=
  ∀ n, (P3623999968168277282.a n : ℤ) = A083456 (n + 1)

theorem P3623999968168277282.correct : P3623999968168277282.Spec := by
  intro n
  simp only [A083456, Nat.add_sub_cancel]

end A083456

/-!
# A083457: Smallest nontrivial k such that k^n - 1 is a palindrome (k >1 for n>1).

The programs for A083457, the canonical program `A083457.P13260089179585694099` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083457 has offset 1).

The definition of A083457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9749 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083457.P13260089179585694099

`a(3%n)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=10, a(4)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083457

/-- `a(3%n)` -/
def P13260089179585694099.Spec : Prop :=
  ∀ n, (P13260089179585694099.a n : ℤ) = A083457 (n + 1)

theorem P13260089179585694099.correct : P13260089179585694099.Spec := by
  intro n
  simp only [A083457, Nat.add_sub_cancel]

end A083457

/-!
# A083458: Numbers n such that n^5 + 1 is a palindrome.

The programs for A083458, there is no canonical definition to state claims against.
-/

/-! ## A083458.P18227703829298912551

`10*a(n-1)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=10`
-/

namespace A083458.P18227703829298912551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6, 10] fun n a =>
  10 * a (n - 1)

end

end A083458.P18227703829298912551

/-! ## A083458.P15057679604220376682

`∩[A007926(n+1), A018073(n)]`
-/

namespace A083458.P15057679604220376682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018073 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083458.P15057679604220376682

/-! ## A083458.P16024041482026734150

`∩[A007926(n+1), A018074(n)]`
-/

namespace A083458.P16024041482026734150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018074 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083458.P16024041482026734150

/-! ## A083458.P18038611197189122392

`∩[A007926(n+1), A018142(n)]`
-/

namespace A083458.P18038611197189122392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083458.P18038611197189122392

/-! ## A083458.P12186993473899277672

`∩[A028348(n+1), A018073(n)]`
-/

namespace A083458.P12186993473899277672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018073 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A083458.P12186993473899277672

/-!
# A083459: Palindromes arising in A083458.

The programs for A083459, there is no canonical definition to state claims against.
-/

/-! ## A083459.P4502265621047368260

`1+A083458(n+1)^5`
-/

namespace A083459.P4502265621047368260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A083458 (n + 1) ^ 5

end

end A083459.P4502265621047368260

/-!
# A083460: Palindromes arising in A083456.

The programs for A083460, the canonical program `A083460.P13021508461951737120` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083460 has offset 1).

The definition of A083460 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083456, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083460.P13021508461951737120

`1+A083456(n+1)^(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A083460

/-- `1+A083456(n+1)^(n+1)` -/
def P13021508461951737120.Spec : Prop :=
  ∀ n, P13021508461951737120.a n = A083460 (n + 1)

theorem P13021508461951737120.correct : P13021508461951737120.Spec := by
  intro n
  simp only [A083460, Nat.add_sub_cancel]

end A083460

/-!
# A083461: Palindromes arising in A083457.

The programs for A083461, the canonical program `A083461.P7183069756666971818` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083461 has offset 1).

The definition of A083461 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083457, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A083461.P7183069756666971818

`A083457(n+1)^(n+1)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A083461

/-- `A083457(n+1)^(n+1)-1` -/
def P7183069756666971818.Spec : Prop :=
  ∀ n, P7183069756666971818.a n = A083461 (n + 1)

theorem P7183069756666971818.correct : P7183069756666971818.Spec := by
  intro n
  simp only [A083461, Nat.add_sub_cancel]

end A083461

/-!
# A083463: a(n) = smallest number k such that 2^n + k is a palindrome.

The programs for A083463, there is no canonical definition to state claims against.
-/

/-! ## A083463.P7449838793919255885

`A052036(2^n)`
-/

namespace A083463.P7449838793919255885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052036 (2 ^ n)

end

end A083463.P7449838793919255885

/-! ## A083463.P6980995738585924784

`A333016(n)-2^n`
-/

namespace A083463.P6980995738585924784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333016 n - (2 ^ n : ℤ)

end

end A083463.P6980995738585924784

/-! ## A083463.P15500802627981680959

`A333016(char[1]+n)%(2^n)`
-/

namespace A083463.P15500802627981680959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333016 ((if ∃ j, f1 j = n then 1 else 0) + n)) (2 ^ n : ℤ)

end

end A083463.P15500802627981680959

/-! ## A083463.P12918904234230261181

`and(A000225(n), A333016(n))`
-/

namespace A083463.P12918904234230261181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A333016 n)

end

end A083463.P12918904234230261181

/-! ## A083463.P13810684153237341519

`and(A078485(n), A333016(n))`
-/

namespace A083463.P13810684153237341519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078485 n) (A333016 n)

end

end A083463.P13810684153237341519

/-! ## A083463.P12174347120599895403

`and(A140252(n), A333016(n))`
-/

namespace A083463.P12174347120599895403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140252 n) (A333016 n)

end

end A083463.P12174347120599895403

/-! ## A083463.P541954328479359868

`xor(A000079(n), A333016(n))`
-/

namespace A083463.P541954328479359868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A333016 n)

end

end A083463.P541954328479359868

/-! ## A083463.P6687511183793122328

`and(A303611(n+2), A333016(n))`
-/

namespace A083463.P6687511183793122328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A303611 (n + 2)) (A333016 n)

end

end A083463.P6687511183793122328

/-! ## A083463.P1079406226780230637

`and(A140683(n), A333016(n))`
-/

namespace A083463.P1079406226780230637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140683 n) (A333016 n)

end

end A083463.P1079406226780230637

/-! ## A083463.P16435285330208810637

`and(A153893(n), A333016(n))`
-/

namespace A083463.P16435285330208810637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153893 n) (A333016 n)

end

end A083463.P16435285330208810637

/-! ## A083463.P14451681484930221691

`and(A054135(n+1), A333016(n))`
-/

namespace A083463.P14451681484930221691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054135 (n + 1)) (A333016 n)

end

end A083463.P14451681484930221691

/-! ## A083463.P12676767916539284586

`and(A086224(n), A333016(n))`
-/

namespace A083463.P12676767916539284586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086224 n) (A333016 n)

end

end A083463.P12676767916539284586

/-! ## A083463.P1201013495473448183

`and(A153894(n), A333016(n))`
-/

namespace A083463.P1201013495473448183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153894 n) (A333016 n)

end

end A083463.P1201013495473448183

/-! ## A083463.P15760805871438678223

`and(A086225(n), A333016(n))`
-/

namespace A083463.P15760805871438678223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086225 n) (A333016 n)

end

end A083463.P15760805871438678223

/-! ## A083463.P15051127296358708528

`and(A196305(n), A333016(n))`
-/

namespace A083463.P15051127296358708528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196305 n) (A333016 n)

end

end A083463.P15051127296358708528

/-! ## A083463.P16688150337834283272

`and(A198274(n), A333016(n))`
-/

namespace A083463.P16688150337834283272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198274 n) (A333016 n)

end

end A083463.P16688150337834283272

/-! ## A083463.P15385091804213637850

`and(A198275(n), A333016(n))`
-/

namespace A083463.P15385091804213637850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198275 n) (A333016 n)

end

end A083463.P15385091804213637850

/-! ## A083463.P10583722550433143013

`and(A171389(n), A333016(n))`
-/

namespace A083463.P10583722550433143013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171389 n) (A333016 n)

end

end A083463.P10583722550433143013

/-! ## A083463.P795756193041580445

`and(A198276(n), A333016(n))`
-/

namespace A083463.P795756193041580445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198276 n) (A333016 n)

end

end A083463.P795756193041580445

/-! ## A083463.P2708789478658186964

`and(A291557(n), A333016(n))`
-/

namespace A083463.P2708789478658186964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A291557 n) (A333016 n)

end

end A083463.P2708789478658186964

/-!
# A083464: Triangle read by rows in which row n contains the n smallest palindromes == 1 mod n and > 1.

The programs for A083464, there is no canonical definition to state claims against.
-/

/-! ## A083464.P9370099723537765683

`A329201(A134564(n+1)+A061176(n))`
-/

namespace A083464.P9370099723537765683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329201 (A134564 (n + 1) + A061176 n).toNat

end

end A083464.P9370099723537765683

/-! ## A083464.P1608165353140514814

`A147342(A147351(n+1))+A051851(n+1)`
-/

namespace A083464.P1608165353140514814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147342 (A147351 (n + 1)).toNat + A051851 (n + 1)

end

end A083464.P1608165353140514814

/-!
# A083465: Diagonal of A083464.

The programs for A083465, there is no canonical definition to state claims against.
-/

/-! ## A083465.P11878830582485350777

`A083464(∑[n+1])`
-/

namespace A083465.P11878830582485350777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083464 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083465.P11878830582485350777

/-! ## A083465.P1901035666807132400

`A004086(A083464(∑[-xor(n, -1)]))`
-/

namespace A083465.P1901035666807132400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A083464 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A083465.P1901035666807132400

/-!
# A083468: Smallest multiple of n which is the reverse concatenation of n consecutive numbers; or 0 if no such number exists.

The programs for A083468, there is no canonical definition to state claims against.
-/

/-! ## A083468.P11597642613893466518

`(n+1)*A083469(n+1)`
-/

namespace A083468.P11597642613893466518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083469 (n + 1)

end

end A083468.P11597642613893466518

/-!
# A083469: Smallest k such that n*k is a reverse concatenation of n consecutive natural numbers.

The programs for A083469, there is no canonical definition to state claims against.
-/

/-! ## A083469.P871460861458395618

`A083468(n+1)/(n+1)`
-/

namespace A083469.P871460861458395618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083468 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A083469.P871460861458395618

/-!
# A083474: a(n) = T(n)^2-n!, where T(n) is the n-th triangular number.

The programs for A083474, the canonical program `A083474.P16237984724288774656` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083474 has offset 1).

The definition of A083474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083474.P16237984724288774656

`((n+1)*(n+2)/2)²-(n+1)!`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083474

/-- `((n+1)*(n+2)/2)²-(n+1)!` -/
def P16237984724288774656.Spec : Prop :=
  ∀ n, P16237984724288774656.a n = (A083474 (n + 1) : ℚ)

end A083474

/-! ## A083474.P2991407994184486702

`Δ[-∑[n!-∑[n]²]]`
-/

namespace A083474.P2991407994184486702
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083474.P2991407994184486702

namespace A083474

/-- `Δ[-∑[n!-∑[n]²]]` -/
def P2991407994184486702.Spec : Prop :=
  ∀ n, P2991407994184486702.a n = A083474 (n + 1)

end A083474

/-! ## A083474.P7048120603995278812

`Δ[∑[∑[n]²]-∑[n!]]`
-/

namespace A083474.P7048120603995278812
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083474.P7048120603995278812

namespace A083474

/-- `Δ[∑[∑[n]²]-∑[n!]]` -/
def P7048120603995278812.Spec : Prop :=
  ∀ n, P7048120603995278812.a n = A083474 (n + 1)

end A083474

/-! ## A083474.P1725849502217537790

`∑[n+1]²-∏[n+1]`
-/

namespace A083474.P1725849502217537790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A083474.P1725849502217537790

namespace A083474

/-- `∑[n+1]²-∏[n+1]` -/
def P1725849502217537790.Spec : Prop :=
  ∀ n, P1725849502217537790.a n = A083474 (n + 1)

end A083474

/-! ## A083474.P16337257549368212206

`(C(n+2, 2)²-∏[n+1])*A014963(15*(n+1))`
-/

namespace A083474.P16337257549368212206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 2) 2 ^ 2 : ℤ) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * A014963 (15 * (n + 1))

end

end A083474.P16337257549368212206

namespace A083474

/-- `(C(n+2, 2)²-∏[n+1])*A014963(15*(n+1))` -/
def P16337257549368212206.Spec : Prop :=
  ∀ n, P16337257549368212206.a n = A083474 (n + 1)

end A083474

/-! ## A083474.P2261854438206571064

`∑[A000578(n+1)-A094258(n+1)]`
-/

namespace A083474.P2261854438206571064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) - A094258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083474.P2261854438206571064

namespace A083474

/-- `∑[A000578(n+1)-A094258(n+1)]` -/
def P2261854438206571064.Spec : Prop :=
  ∀ n, P2261854438206571064.a n = A083474 (n + 1)

end A083474

/-!
# A083476: Positions of 0's in A083475.

The programs for A083476, there is no canonical definition to state claims against.
-/

/-! ## A083476.P12619112961769955563

`eq[0, A083475(n+1)]+1`
-/

namespace A083476.P12619112961769955563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083475 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A083476.P12619112961769955563

/-! ## A083476.P8831842505073681547

`lt[A083475(n+3), 1]+3`
-/

namespace A083476.P8831842505073681547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083475 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A083476.P8831842505073681547

/-! ## A083476.P10181750626072250518

`eq[0, A083475(A028310(n))]`
-/

namespace A083476.P10181750626072250518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083475 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A083476.P10181750626072250518

/-! ## A083476.P15503484226230214313

`A020725(eq[0, A083475(n+1)])`
-/

namespace A083476.P15503484226230214313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A083476.P15503484226230214313

/-! ## A083476.P11210964980022863513

`A065475(eq[0, A083475(n+1)])`
-/

namespace A083476.P11210964980022863513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A083476.P11210964980022863513

/-!
# A083477: Smallest palindrome > 1 and == 1 (mod n-th palindrome).

The programs for A083477, there is no canonical definition to state claims against.
-/

/-! ## A083477.P14003612358516294869

`A002113(n+2)*A083478(n+1)+1`
-/

namespace A083477.P14003612358516294869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2) * A083478 (n + 1) + 1

end

end A083477.P14003612358516294869

/-! ## A083477.P11302900452466555728

`A082743(A002113(n+2))`
-/

namespace A083477.P11302900452466555728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082743 (A002113 (n + 2)).toNat

end

end A083477.P11302900452466555728

/-! ## A083477.P4390508302533469062

`A082743(A262069(n+2))`
-/

namespace A083477.P4390508302533469062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082743 (A262069 (n + 2)).toNat

end

end A083477.P4390508302533469062

/-! ## A083477.P3901389575162132202

`A082743(A085094(A085095(A082743(n))))`
-/

namespace A083477.P3901389575162132202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082743 (A085094 (A085095 (A082743 n).toNat).toNat).toNat

end

end A083477.P3901389575162132202

/-!
# A083478: a(n) is the smallest k > 0 such that k*Palindrome(n)+1 is a palindrome.

The programs for A083478, there is no canonical definition to state claims against.
-/

/-! ## A083478.P8476288796304080855

`(A083477(n+1)-1)/A002113(n+2)`
-/

namespace A083478.P8476288796304080855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083477 (n + 1) - 1 : ℚ) / (A002113 (n + 2) : ℚ)

end

end A083478.P8476288796304080855

/-! ## A083478.P16033992796657211147

`A082744(A002113(n+2))`
-/

namespace A083478.P16033992796657211147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082744 (A002113 (n + 2)).toNat

end

end A083478.P16033992796657211147

/-! ## A083478.P17877500482627586130

`A082744(A110751(n+1))`
-/

namespace A083478.P17877500482627586130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082744 (A110751 (n + 1)).toNat

end

end A083478.P17877500482627586130

/-!
# A083479: The natural numbers with all terms of A033638 inserted.

The programs for A083479, the canonical program `A083479.P91858068577157620` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083479 has offset 0).

The definition of A083479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A083479.P3872754701023219509

`∑[char[ceil(2*sqrt(n))+1+n]]`
-/

namespace A083479.P3872754701023219509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (n : ℝ)⌉ + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083479.P3872754701023219509

namespace A083479

/-- `∑[char[ceil(2*sqrt(n))+1+n]]` -/
def P3872754701023219509.Spec : Prop :=
  ∀ n, (P3872754701023219509.a n : ℤ) = A083479 n

end A083479

/-! ## A083479.P91858068577157620

`floor((a(a(n-1))-1+n)/2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083479

/-- `floor((a(a(n-1))-1+n)/2)` -/
def P91858068577157620.Spec : Prop :=
  ∀ n, P91858068577157620.a n = A083479 n

theorem P91858068577157620.correct : P91858068577157620.Spec := by
  intro n
  simp only [A083479]

end A083479

/-! ## A083479.P9150617959890740903

`floor((n-(1-a(a(n-1))))/2)` with `a(0)=0, a(1)=1`
-/

namespace A083479.P9150617959890740903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊((n : ℤ) - (1 - a (a (n - 1)).toNat) : ℚ) / 2⌋

end

end A083479.P9150617959890740903

namespace A083479

/-- `floor((n-(1-a(a(n-1))))/2)` -/
def P9150617959890740903.Spec : Prop :=
  ∀ n, P9150617959890740903.a n = A083479 n

end A083479

/-! ## A083479.P9603690904417762785

`a(a(n-1))-(a(n-1)+2)+n` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A083479.P9603690904417762785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (a (n - 1)).toNat - (a (n - 1) + 2) + (n : ℤ)

end

end A083479.P9603690904417762785

namespace A083479

/-- `a(a(n-1))-(a(n-1)+2)+n` -/
def P9603690904417762785.Spec : Prop :=
  ∀ n, P9603690904417762785.a n = A083479 n

end A083479

/-! ## A083479.P15800090016678931

`a(a(n-1))-(2-(n-a(n-1)))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A083479.P15800090016678931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (a (n - 1)).toNat - (2 - ((n : ℤ) - a (n - 1)))

end

end A083479.P15800090016678931

namespace A083479

/-- `a(a(n-1))-(2-(n-a(n-1)))` -/
def P15800090016678931.Spec : Prop :=
  ∀ n, P15800090016678931.a n = A083479 n

end A083479

/-! ## A083479.P2152613466802473753

`∑[char[comp[A173151(2*(n+1))]]]-1`
-/

namespace A083479.P2152613466802473753
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173151 (2 * (n + 1))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A083479.P2152613466802473753

namespace A083479

/-- `∑[char[comp[A173151(2*(n+1))]]]-1` -/
def P2152613466802473753.Spec : Prop :=
  ∀ n, P2152613466802473753.a n = A083479 n

end A083479

/-! ## A083479.P5947632529529265177

`n+1-A000267((n-1)%(n+1))`
-/

namespace A083479.P5947632529529265177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000267 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A083479.P5947632529529265177

namespace A083479

/-- `n+1-A000267((n-1)%(n+1))` -/
def P5947632529529265177.Spec : Prop :=
  ∀ n, P5947632529529265177.a n = A083479 n

end A083479

/-! ## A083479.P14898550589591498447

`n+1-A000267(floor(n²/(n+1)))`
-/

namespace A083479.P14898550589591498447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000267 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A083479.P14898550589591498447

namespace A083479

/-- `n+1-A000267(floor(n²/(n+1)))` -/
def P14898550589591498447.Spec : Prop :=
  ∀ n, P14898550589591498447.a n = A083479 n

end A083479

/-! ## A083479.P10970606805778247849

`n-comp[∑[A008619(n+1)]]%(n+1)`
-/

namespace A083479.P10970606805778247849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % (n + 1) : ℕ) : ℤ)

end

end A083479.P10970606805778247849

namespace A083479

/-- `n-comp[∑[A008619(n+1)]]%(n+1)` -/
def P10970606805778247849.Spec : Prop :=
  ∀ n, P10970606805778247849.a n = A083479 n

end A083479

/-! ## A083479.P8274091431874485004

`a(n-1)+1-A240025(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A083479.P8274091431874485004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (1 - A240025 (n - 1))

end

end A083479.P8274091431874485004

namespace A083479

/-- `a(n-1)+1-A240025(n-1)` -/
def P8274091431874485004.Spec : Prop :=
  ∀ n, P8274091431874485004.a n = A083479 n

end A083479

/-! ## A083479.P1356952351756024656

`A062545(n)%A080037(n)`
-/

namespace A083479.P1356952351756024656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062545 n) (A080037 n)

end

end A083479.P1356952351756024656

namespace A083479

/-- `A062545(n)%A080037(n)` -/
def P1356952351756024656.Spec : Prop :=
  ∀ n, P1356952351756024656.a n = A083479 n

end A083479

/-! ## A083479.P8701820045147259654

`n-A055086(A028310(n)-1)`
-/

namespace A083479.P8701820045147259654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055086 (A028310 n - 1).toNat

end

end A083479.P8701820045147259654

namespace A083479

/-- `n-A055086(A028310(n)-1)` -/
def P8701820045147259654.Spec : Prop :=
  ∀ n, P8701820045147259654.a n = A083479 n

end A083479

/-! ## A083479.P6532540289779600815

`n-A055086(A004273(n)-n)`
-/

namespace A083479.P6532540289779600815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055086 (A004273 n - (n : ℤ)).toNat

end

end A083479.P6532540289779600815

namespace A083479

/-- `n-A055086(A004273(n)-n)` -/
def P6532540289779600815.Spec : Prop :=
  ∀ n, P6532540289779600815.a n = A083479 n

end A083479

/-! ## A083479.P16609442260207272553

`A057427(n)+A056847(A056847(n))`
-/

namespace A083479.P16609442260207272553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A056847 (A056847 n).toNat

end

end A083479.P16609442260207272553

namespace A083479

/-- `A057427(n)+A056847(A056847(n))` -/
def P16609442260207272553.Spec : Prop :=
  ∀ n, P16609442260207272553.a n = A083479 n

end A083479

/-! ## A083479.P5483092114727622146

`A056847(A056847(n))+1-A000007(n)`
-/

namespace A083479.P5483092114727622146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A056847 n).toNat + (1 - A000007 n)

end

end A083479.P5483092114727622146

namespace A083479

/-- `A056847(A056847(n))+1-A000007(n)` -/
def P5483092114727622146.Spec : Prop :=
  ∀ n, P5483092114727622146.a n = A083479 n

end A083479

/-! ## A083479.P6258507479583184790

`A265400(A080037(n))`
-/

namespace A083479.P6258507479583184790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265400 (A080037 n).toNat

end

end A083479.P6258507479583184790

namespace A083479

/-- `A265400(A080037(n))` -/
def P6258507479583184790.Spec : Prop :=
  ∀ n, P6258507479583184790.a n = A083479 n

end A083479

/-! ## A083479.P10486307116577824654

`A265400(A049068(n+1)-A240025(n))`
-/

namespace A083479.P10486307116577824654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265400 (A049068 (n + 1) - A240025 n).toNat

end

end A083479.P10486307116577824654

namespace A083479

/-- `A265400(A049068(n+1)-A240025(n))` -/
def P10486307116577824654.Spec : Prop :=
  ∀ n, P10486307116577824654.a n = A083479 n

end A083479

/-! ## A083479.P15626668209036637177

`A265400(A265409(A265413(A049068(n+1))))`
-/

namespace A083479.P15626668209036637177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265400 (A265409 (A265413 (A049068 (n + 1)).toNat).toNat).toNat

end

end A083479.P15626668209036637177

namespace A083479

/-- `A265400(A265409(A265413(A049068(n+1))))` -/
def P15626668209036637177.Spec : Prop :=
  ∀ n, P15626668209036637177.a n = A083479 n

end A083479

/-! ## A083479.P6767453070556754244

`A056847(A056847(n))+char[A038722(n+1)]`
-/

namespace A083479.P6767453070556754244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A056847 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A083479.P6767453070556754244

namespace A083479

/-- `A056847(A056847(n))+char[A038722(n+1)]` -/
def P6767453070556754244.Spec : Prop :=
  ∀ n, P6767453070556754244.a n = A083479 n

end A083479

/-!
# A083480: Compress the triangular array A049597 by suppressing zero entries and reversing the order of each row.

The programs for A083480, there is no canonical definition to state claims against.
-/

/-! ## A083480.P9217194758207172157

`A259481(lt[0, A259481(n)])`
-/

namespace A083480.P9217194758207172157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A083480.P9217194758207172157

/-! ## A083480.P10283986140853983482

`A259481(record[(n+1)%(A259481(n+1)+n+1)])`
-/

namespace A083480.P10283986140853983482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A259481 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A083480.P10283986140853983482

/-! ## A083480.P5496641396785788743

`A259481(eq[0, A000007(A259481(n))])`
-/

namespace A083480.P5496641396785788743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A259481 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A083480.P5496641396785788743

/-! ## A083480.P3476793168102840585

`A238326(n+1)%A152388(n+1)`
-/

namespace A083480.P3476793168102840585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238326 (n + 1)) (A152388 (n + 1))

end

end A083480.P3476793168102840585

/-! ## A083480.P2892676179761807809

`and(A238326(n+1), A273236(n+1))`
-/

namespace A083480.P2892676179761807809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A238326 (n + 1)) (A273236 (n + 1))

end

end A083480.P2892676179761807809

/-!
# A083481: Squarefree part of the n-th oblong number.

The programs for A083481, the canonical program `A083481.P2036924859276303019` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083481 has offset 1).

The definition of A083481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083481.P2036924859276303019

`A007913((n+1)*(n+2))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A083481

/-- `A007913((n+1)*(n+2))` -/
def P2036924859276303019.Spec : Prop :=
  ∀ n, P2036924859276303019.a n = A083481 (n + 1)

theorem P2036924859276303019.correct : P2036924859276303019.Spec := by
  intro n
  simp only [A083481, Nat.add_sub_cancel]

end A083481

/-! ## A083481.P15340425368158237663

`lcm(n+1-A326128(n+1), A007913(n+2))`
-/

namespace A083481.P15340425368158237663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1 : ℤ) - A326128 (n + 1)) (A007913 (n + 2))

end

end A083481.P15340425368158237663

namespace A083481

/-- `lcm(n+1-A326128(n+1), A007913(n+2))` -/
def P15340425368158237663.Spec : Prop :=
  ∀ n, (P15340425368158237663.a n : ℤ) = A083481 (n + 1)

end A083481

/-! ## A083481.P16429594442522381529

`(A053143(n+1)+A007913(n+1))/A008833(n+2)`
-/

namespace A083481.P16429594442522381529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053143 (n + 1) + A007913 (n + 1) : ℚ) / (A008833 (n + 2) : ℚ)

end

end A083481.P16429594442522381529

namespace A083481

/-- `(A053143(n+1)+A007913(n+1))/A008833(n+2)` -/
def P16429594442522381529.Spec : Prop :=
  ∀ n, P16429594442522381529.a n = (A083481 (n + 1) : ℚ)

end A083481

/-! ## A083481.P10001565632077276193

`lcm(A007913(n+1), A007913(A028310(n+2)))`
-/

namespace A083481.P10001565632077276193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007913 (n + 1)) (A007913 (A028310 (n + 2)).toNat)

end

end A083481.P10001565632077276193

namespace A083481

/-- `lcm(A007913(n+1), A007913(A028310(n+2)))` -/
def P10001565632077276193.Spec : Prop :=
  ∀ n, (P10001565632077276193.a n : ℤ) = A083481 (n + 1)

end A083481

/-! ## A083481.P13356526909335560890

`A083482(n+1)/A002378(n+1)*A083482(n+1)`
-/

namespace A083481.P13356526909335560890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083482 (n + 1) : ℚ) / (A002378 (n + 1) : ℚ) * (A083482 (n + 1) : ℚ)

end

end A083481.P13356526909335560890

namespace A083481

/-- `A083482(n+1)/A002378(n+1)*A083482(n+1)` -/
def P13356526909335560890.Spec : Prop :=
  ∀ n, P13356526909335560890.a n = (A083481 (n + 1) : ℚ)

end A083481

/-! ## A083481.P1860677683081980292

`A083482(n+1)/(A000188(n+2)*A000188(n+1))`
-/

namespace A083481.P1860677683081980292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083482 (n + 1) : ℚ) / (A000188 (n + 2) * A000188 (n + 1) : ℚ)

end

end A083481.P1860677683081980292

namespace A083481

/-- `A083482(n+1)/(A000188(n+2)*A000188(n+1))` -/
def P1860677683081980292.Spec : Prop :=
  ∀ n, P1860677683081980292.a n = (A083481 (n + 1) : ℚ)

end A083481

/-! ## A083481.P508852995850712526

`A068310(2*n+3)`
-/

namespace A083481.P508852995850712526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068310 (2 * n + 3)

end

end A083481.P508852995850712526

namespace A083481

/-- `A068310(2*n+3)` -/
def P508852995850712526.Spec : Prop :=
  ∀ n, P508852995850712526.a n = A083481 (n + 1)

end A083481

/-! ## A083481.P9812171673564942311

`A049457(4*(n+1))`
-/

namespace A083481.P9812171673564942311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049457 (4 * (n + 1))

end

end A083481.P9812171673564942311

namespace A083481

/-- `A049457(4*(n+1))` -/
def P9812171673564942311.Spec : Prop :=
  ∀ n, P9812171673564942311.a n = A083481 (n + 1)

end A083481

/-! ## A083481.P13144956473112334757

`A002378(n+1)/A008833(A002378(n+1))`
-/

namespace A083481.P13144956473112334757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (n + 1) : ℚ) / (A008833 (A002378 (n + 1)).toNat : ℚ)

end

end A083481.P13144956473112334757

namespace A083481

/-- `A002378(n+1)/A008833(A002378(n+1))` -/
def P13144956473112334757.Spec : Prop :=
  ∀ n, P13144956473112334757.a n = (A083481 (n + 1) : ℚ)

end A083481

/-! ## A083481.P9271553199089060671

`A064680(A361670(n+1))`
-/

namespace A083481.P9271553199089060671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A361670 (n + 1)).toNat

end

end A083481.P9271553199089060671

namespace A083481

/-- `A064680(A361670(n+1))` -/
def P9271553199089060671.Spec : Prop :=
  ∀ n, P9271553199089060671.a n = A083481 (n + 1)

end A083481

/-! ## A083481.P1038490221961958043

`A064680(A007913(∑[n+1]))`
-/

namespace A083481.P1038490221961958043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A007913 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A083481.P1038490221961958043

namespace A083481

/-- `A064680(A007913(∑[n+1]))` -/
def P1038490221961958043.Spec : Prop :=
  ∀ n, P1038490221961958043.a n = A083481 (n + 1)

end A083481

/-! ## A083481.P10474948385107912133

`A002734((n+1)²)`
-/

namespace A083481.P10474948385107912133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002734 ((n + 1) ^ 2)

end

end A083481.P10474948385107912133

namespace A083481

/-- `A002734((n+1)²)` -/
def P10474948385107912133.Spec : Prop :=
  ∀ n, P10474948385107912133.a n = A083481 (n + 1)

end A083481

/-! ## A083481.P2290733427350271526

`A226693(2*(n+1)²)`
-/

namespace A083481.P2290733427350271526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226693 (2 * (n + 1) ^ 2)

end

end A083481.P2290733427350271526

namespace A083481

/-- `A226693(2*(n+1)²)` -/
def P2290733427350271526.Spec : Prop :=
  ∀ n, P2290733427350271526.a n = A083481 (n + 1)

end A083481

/-! ## A083481.P7914608189456276716

`A007948(A068310(n+3+n))`
-/

namespace A083481.P7914608189456276716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A068310 (n + 3 + n)).toNat

end

end A083481.P7914608189456276716

namespace A083481

/-- `A007948(A068310(n+3+n))` -/
def P7914608189456276716.Spec : Prop :=
  ∀ n, P7914608189456276716.a n = A083481 (n + 1)

end A083481

/-!
# A083482: Square root of smallest square of the type n(n+1)*k.

The programs for A083482, the canonical program `A083482.P9826563306636625719` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083482 has offset 1).

The definition of A083482 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083482.P12435943086541133925

`sqrt(A002378(n+1)*A083481(n+1))`
-/

namespace A083482.P12435943086541133925
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002378 (n + 1) * A083481 (n + 1) : ℝ)

end

end A083482.P12435943086541133925

namespace A083482

/-- `sqrt(A002378(n+1)*A083481(n+1))` -/
def P12435943086541133925.Spec : Prop :=
  ∀ n, P12435943086541133925.a n = (A083482 (n + 1) : ℝ)

end A083482

/-! ## A083482.P16879518646041814273

`sqrt((n+1)*(n+2)*A007913((n+1)*(n+2)))`
-/

namespace A083482.P16879518646041814273
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n + 1) * (n + 2) : ℤ) * A007913 ((n + 1) * (n + 2)) : ℝ)

end

end A083482.P16879518646041814273

namespace A083482

/-- `sqrt((n+1)*(n+2)*A007913((n+1)*(n+2)))` -/
def P16879518646041814273.Spec : Prop :=
  ∀ n, P16879518646041814273.a n = (A083482 (n + 1) : ℝ)

end A083482

/-! ## A083482.P9826563306636625719

`A019554(A002378(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A083482

/-- `A019554(A002378(n+1))` -/
def P9826563306636625719.Spec : Prop :=
  ∀ n, P9826563306636625719.a n = A083482 (n + 1)

theorem P9826563306636625719.correct : P9826563306636625719.Spec := by
  intro n
  simp only [A083482, Nat.add_sub_cancel]

end A083482

/-! ## A083482.P15396705671682365926

`A019554(n+1)*A019554(n+2)`
-/

namespace A083482.P15396705671682365926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) * A019554 (n + 2)

end

end A083482.P15396705671682365926

namespace A083482

/-- `A019554(n+1)*A019554(n+2)` -/
def P15396705671682365926.Spec : Prop :=
  ∀ n, P15396705671682365926.a n = A083482 (n + 1)

end A083482

/-! ## A083482.P3832400297588518136

`sqrt(A053143(n+1)*A053143(n+2))`
-/

namespace A083482.P3832400297588518136
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A053143 (n + 1) * A053143 (n + 2) : ℝ)

end

end A083482.P3832400297588518136

namespace A083482

/-- `sqrt(A053143(n+1)*A053143(n+2))` -/
def P3832400297588518136.Spec : Prop :=
  ∀ n, P3832400297588518136.a n = (A083482 (n + 1) : ℝ)

end A083482

/-! ## A083482.P3629082880628525147

`lcm(Δ[A346597(n+1)], A019554(n+1))`
-/

namespace A083482.P3629082880628525147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A019554 (n + 1))

end

end A083482.P3629082880628525147

namespace A083482

/-- `lcm(Δ[A346597(n+1)], A019554(n+1))` -/
def P3629082880628525147.Spec : Prop :=
  ∀ n, (P3629082880628525147.a n : ℤ) = A083482 (n + 1)

end A083482

/-! ## A083482.P5710814988459040484

`A000188(n+1)*A083481(n+1)*A000188(n+2)`
-/

namespace A083482.P5710814988459040484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A083481 (n + 1) * A000188 (n + 2)

end

end A083482.P5710814988459040484

namespace A083482

/-- `A000188(n+1)*A083481(n+1)*A000188(n+2)` -/
def P5710814988459040484.Spec : Prop :=
  ∀ n, P5710814988459040484.a n = A083482 (n + 1)

end A083482

/-! ## A083482.P13061904535518722902

`A002378(n+1)/(A000188(n+1)*A000188(n+2))`
-/

namespace A083482.P13061904535518722902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (n + 1) : ℚ) / (A000188 (n + 1) * A000188 (n + 2) : ℚ)

end

end A083482.P13061904535518722902

namespace A083482

/-- `A002378(n+1)/(A000188(n+1)*A000188(n+2))` -/
def P13061904535518722902.Spec : Prop :=
  ∀ n, P13061904535518722902.a n = (A083482 (n + 1) : ℚ)

end A083482

/-! ## A083482.P372093708544991039

`lcm(A019554(n+1)%A175885(n+2), A019554(n+2))`
-/

namespace A083482.P372093708544991039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A019554 (n + 1)) (A175885 (n + 2))) (A019554 (n + 2))

end

end A083482.P372093708544991039

namespace A083482

/-- `lcm(A019554(n+1)%A175885(n+2), A019554(n+2))` -/
def P372093708544991039.Spec : Prop :=
  ∀ n, (P372093708544991039.a n : ℤ) = A083482 (n + 1)

end A083482

/-! ## A083482.P11665003166819756281

`A000188(n+1)*A068310(2*n+3)*A000188(n+2)`
-/

namespace A083482.P11665003166819756281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A068310 (2 * n + 3) * A000188 (n + 2)

end

end A083482.P11665003166819756281

namespace A083482

/-- `A000188(n+1)*A068310(2*n+3)*A000188(n+2)` -/
def P11665003166819756281.Spec : Prop :=
  ∀ n, P11665003166819756281.a n = A083482 (n + 1)

end A083482

/-! ## A083482.P15945466315176368130

`sqrt(A145109(∑[n+1]))`
-/

namespace A083482.P15945466315176368130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A145109 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A083482.P15945466315176368130

namespace A083482

/-- `sqrt(A145109(∑[n+1]))` -/
def P15945466315176368130.Spec : Prop :=
  ∀ n, P15945466315176368130.a n = (A083482 (n + 1) : ℝ)

end A083482

/-! ## A083482.P9548632283107529763

`lcm(2, A038388(∑[n+1]))`
-/

namespace A083482.P9548632283107529763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A038388 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A083482.P9548632283107529763

namespace A083482

/-- `lcm(2, A038388(∑[n+1]))` -/
def P9548632283107529763.Spec : Prop :=
  ∀ n, (P9548632283107529763.a n : ℤ) = A083482 (n + 1)

end A083482

/-!
# A083483: Number of forests with two connected components in the complete graph K_{n}.

The programs for A083483, the canonical program `A083483.P12797329539736922225` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083483 has offset 1).

The definition of A083483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A083483.P12797329539736922225

`(n+1)^(n-3)*n*(n+7)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083483

/-- `(n+1)^(n-3)*n*(n+7)/2` -/
def P12797329539736922225.Spec : Prop :=
  ∀ n, P12797329539736922225.a n = (A083483 (n + 1) : ℚ)

end A083483

/-! ## A083483.P17165288941701993699

`record[A002262(n)*A105599(n+1)]`
-/

namespace A083483.P17165288941701993699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A105599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083483.P17165288941701993699

namespace A083483

/-- `record[A002262(n)*A105599(n+1)]` -/
def P17165288941701993699.Spec : Prop :=
  ∀ n, P17165288941701993699.a n = A083483 (n + 1)

end A083483

/-! ## A083483.P17096104187408804935

`record[(A002260(n+1)-1)*A105599(n+1)]`
-/

namespace A083483.P17096104187408804935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1) * A105599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083483.P17096104187408804935

namespace A083483

/-- `record[(A002260(n+1)-1)*A105599(n+1)]` -/
def P17096104187408804935.Spec : Prop :=
  ∀ n, P17096104187408804935.a n = A083483 (n + 1)

end A083483

/-! ## A083483.P4568671543698073701

`A105599(A133263(n))-A000007(n)`
-/

namespace A083483.P4568671543698073701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105599 (A133263 n).toNat - A000007 n

end

end A083483.P4568671543698073701

namespace A083483

/-- `A105599(A133263(n))-A000007(n)` -/
def P4568671543698073701.Spec : Prop :=
  ∀ n, P4568671543698073701.a n = A083483 (n + 1)

end A083483

/-! ## A083483.P11349742734659143653

`A105599(A133263(n))%A322152(n)`
-/

namespace A083483.P11349742734659143653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105599 (A133263 n).toNat) (A322152 n)

end

end A083483.P11349742734659143653

namespace A083483

/-- `A105599(A133263(n))%A322152(n)` -/
def P11349742734659143653.Spec : Prop :=
  ∀ n, P11349742734659143653.a n = A083483 (n + 1)

end A083483

/-! ## A083483.P4451913380321821920

`lcm(A026741(n), A105599(A133263(n)))`
-/

namespace A083483.P4451913380321821920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026741 n) (A105599 (A133263 n).toNat)

end

end A083483.P4451913380321821920

namespace A083483

/-- `lcm(A026741(n), A105599(A133263(n)))` -/
def P4451913380321821920.Spec : Prop :=
  ∀ n, (P4451913380321821920.a n : ℤ) = A083483 (n + 1)

end A083483

/-! ## A083483.P11662703085610839240

`and(A057428(n), A105599(A133263(n)))`
-/

namespace A083483.P11662703085610839240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A105599 (A133263 n).toNat)

end

end A083483.P11662703085610839240

namespace A083483

/-- `and(A057428(n), A105599(A133263(n)))` -/
def P11662703085610839240.Spec : Prop :=
  ∀ n, P11662703085610839240.a n = A083483 (n + 1)

end A083483

/-! ## A083483.P3907204311318174942

`record[A002620(A002260(n+1))*A105599(n+1)]`
-/

namespace A083483.P3907204311318174942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A002260 (n + 1)).toNat * A105599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083483.P3907204311318174942

namespace A083483

/-- `record[A002620(A002260(n+1))*A105599(n+1)]` -/
def P3907204311318174942.Spec : Prop :=
  ∀ n, P3907204311318174942.a n = A083483 (n + 1)

end A083483

/-!
# A083484: Square root of product of terms in row n of A083486.

The programs for A083484, there is no canonical definition to state claims against.
-/

/-! ## A083484.P15168135808397891984

`record[A125901(6*n+3)]`
-/

namespace A083484.P15168135808397891984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125901 (6 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083484.P15168135808397891984

/-! ## A083484.P17617717519211411468

`A125901(A110108(n+1))`
-/

namespace A083484.P17617717519211411468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125901 (A110108 (n + 1)).toNat

end

end A083484.P17617717519211411468

/-! ## A083484.P13120638067509848183

`A099320((A000129(n)+1)²)`
-/

namespace A083484.P13120638067509848183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099320 ((A000129 n + 1) ^ 2).toNat

end

end A083484.P13120638067509848183

/-!
# A083485: Diagonal of A083486.

The programs for A083485, there is no canonical definition to state claims against.
-/

/-! ## A083485.P11088176113151278923

`A083486(∑[n+1])`
-/

namespace A083485.P11088176113151278923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083486 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083485.P11088176113151278923

/-! ## A083485.P14818024556513499445

`abs(C(2, (n+1)²)-A083486(A133263(n+1)-2))`
-/

namespace A083485.P14818024556513499445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose 2 ((n + 1) ^ 2) : ℤ) - A083486 (A133263 (n + 1) - 2).toNat|

end

end A083485.P14818024556513499445

/-! ## A083485.P10565778163070975814

`ceil(A040001(n)/2)*A083486(A000217(n+1))`
-/

namespace A083485.P10565778163070975814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A040001 n : ℚ) / 2⌉ * A083486 (A000217 (n + 1)).toNat

end

end A083485.P10565778163070975814

/-! ## A083485.P6240259526922409629

`A125866(n+1)%2*A083486(A000217(n+1))`
-/

namespace A083485.P6240259526922409629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125866 (n + 1)) 2 * A083486 (A000217 (n + 1)).toNat

end

end A083485.P6240259526922409629

/-! ## A083485.P9772333376827825615

`A165830(n+1)%2*A083486(A000217(n+1))`
-/

namespace A083485.P9772333376827825615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165830 (n + 1)) 2 * A083486 (A000217 (n + 1)).toNat

end

end A083485.P9772333376827825615

/-! ## A083485.P8406161988042846395

`A339523(n+1)%2*A083486(A000217(n+1))`
-/

namespace A083485.P8406161988042846395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339523 (n + 1)) 2 * A083486 (A000217 (n + 1)).toNat

end

end A083485.P8406161988042846395

/-! ## A083485.P15149280602871358458

`A121262(A339523(n+1))+A083486(A000217(n+1))`
-/

namespace A083485.P15149280602871358458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A339523 (n + 1)).toNat + A083486 (A000217 (n + 1)).toNat

end

end A083485.P15149280602871358458

/-! ## A083485.P13931368567093269499

`A083486(A000217(n+1))%A068877(n+1)`
-/

namespace A083485.P13931368567093269499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083486 (A000217 (n + 1)).toNat) (A068877 (n + 1))

end

end A083485.P13931368567093269499

/-!
# A083487: Triangle read by rows: T(n,k) = 2*n*k + n + k (1 <= k <= n).

The programs for A083487, the canonical program `A083487.P8449240486603242499` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A083487 has offset 1).

The definition of A083487 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1` (program `A083487.P8449240486603242499`, by `A083487.P8449240486603242499.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A083487.P8449240486603242499

`2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A083487

/-- `2*(row(n)+1)*(col(n)+1)+row(n)+1+col(n)+1` -/
def P8449240486603242499.Spec : Prop :=
  ∀ n, (P8449240486603242499.a n : ℤ) = A083487 (n + 1)

theorem P8449240486603242499.correct : P8449240486603242499.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel]

end A083487

/-! ## A083487.P10125930311080953858

`2*(row(n)+1)*(col(n)+1)+row(n)+1+(col(n)+1)*1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083487.P10125930311080953858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triCol n + 1) + (SequenceMachineLib.triRow n + 1) + (SequenceMachineLib.triCol n + 1) * 1

end

end A083487.P10125930311080953858

namespace A083487

/-- `2*(row(n)+1)*(col(n)+1)+row(n)+1+(col(n)+1)*1` -/
def P10125930311080953858.Spec : Prop :=
  ∀ n, (P10125930311080953858.a n : ℤ) = A083487 (n + 1)

theorem P10125930311080953858.correct : P10125930311080953858.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel, A083487.P10125930311080953858.a, A083487.P8449240486603242499.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A083487

/-! ## A083487.P11671274631183550883

`A151890(comp[∑[n]])`
-/

namespace A083487.P11671274631183550883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A083487.P11671274631183550883

namespace A083487

/-- `A151890(comp[∑[n]])` -/
def P11671274631183550883.Spec : Prop :=
  ∀ n, P11671274631183550883.a n = A083487 (n + 1)

end A083487

/-! ## A083487.P10583196728937756838

`A144562(n+1)+1`
-/

namespace A083487.P10583196728937756838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) + 1

end

end A083487.P10583196728937756838

namespace A083487

/-- `A144562(n+1)+1` -/
def P10583196728937756838.Spec : Prop :=
  ∀ n, P10583196728937756838.a n = A083487 (n + 1)

theorem P10583196728937756838.correct : P10583196728937756838.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel, A083487.P10583196728937756838.a, A083487.P8449240486603242499.a, A144562, A144562.P16025350127225318845.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083487

/-! ## A083487.P14227769715088063583

`A144650(n+1)-1`
-/

namespace A083487.P14227769715088063583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) - 1

end

end A083487.P14227769715088063583

namespace A083487

/-- `A144650(n+1)-1` -/
def P14227769715088063583.Spec : Prop :=
  ∀ n, P14227769715088063583.a n = A083487 (n + 1)

theorem P14227769715088063583.correct : P14227769715088063583.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel, A083487.P14227769715088063583.a, A083487.P8449240486603242499.a, A144650, A144650.P1368958266719371934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083487

/-! ## A083487.P6148015126841476047

`A154680(n+1)+2`
-/

namespace A083487.P6148015126841476047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) + 2

end

end A083487.P6148015126841476047

namespace A083487

/-- `A154680(n+1)+2` -/
def P6148015126841476047.Spec : Prop :=
  ∀ n, P6148015126841476047.a n = A083487 (n + 1)

theorem P6148015126841476047.correct : P6148015126841476047.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel, A083487.P6148015126841476047.a, A083487.P8449240486603242499.a, A154680, A154680.P11179278242672813373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083487

/-! ## A083487.P5442048011972979188

`A154684(n+1)+3`
-/

namespace A083487.P5442048011972979188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) + 3

end

end A083487.P5442048011972979188

namespace A083487

/-- `A154684(n+1)+3` -/
def P5442048011972979188.Spec : Prop :=
  ∀ n, P5442048011972979188.a n = A083487 (n + 1)

theorem P5442048011972979188.correct : P5442048011972979188.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel, A083487.P5442048011972979188.a, A083487.P8449240486603242499.a, A154684, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083487

/-! ## A083487.P13761015771958817287

`A155705(n+1)-2`
-/

namespace A083487.P13761015771958817287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) - 2

end

end A083487.P13761015771958817287

namespace A083487

/-- `A155705(n+1)-2` -/
def P13761015771958817287.Spec : Prop :=
  ∀ n, P13761015771958817287.a n = A083487 (n + 1)

theorem P13761015771958817287.correct : P13761015771958817287.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel, A083487.P13761015771958817287.a, A083487.P8449240486603242499.a, A155705, A155705.P4288212106648644331.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083487

/-! ## A083487.P14693624119078487639

`A154681(n+1)-3`
-/

namespace A083487.P14693624119078487639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) - 3

end

end A083487.P14693624119078487639

namespace A083487

/-- `A154681(n+1)-3` -/
def P14693624119078487639.Spec : Prop :=
  ∀ n, P14693624119078487639.a n = A083487 (n + 1)

theorem P14693624119078487639.correct : P14693624119078487639.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel, A083487.P14693624119078487639.a, A083487.P8449240486603242499.a, A154681, A154681.P7152750088420565166.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083487

/-! ## A083487.P13326299752640180391

`A155724(n+1)+4`
-/

namespace A083487.P13326299752640180391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1) + 4

end

end A083487.P13326299752640180391

namespace A083487

/-- `A155724(n+1)+4` -/
def P13326299752640180391.Spec : Prop :=
  ∀ n, P13326299752640180391.a n = A083487 (n + 1)

theorem P13326299752640180391.correct : P13326299752640180391.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel, A083487.P13326299752640180391.a, A083487.P8449240486603242499.a, A155724, A155724.P13035978009969684852.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083487

/-! ## A083487.P6772072645761025165

`A154685(n+1)-4`
-/

namespace A083487.P6772072645761025165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) - 4

end

end A083487.P6772072645761025165

namespace A083487

/-- `A154685(n+1)-4` -/
def P6772072645761025165.Spec : Prop :=
  ∀ n, P6772072645761025165.a n = A083487 (n + 1)

theorem P6772072645761025165.correct : P6772072645761025165.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel, A083487.P6772072645761025165.a, A083487.P8449240486603242499.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083487

/-! ## A083487.P4191280515888048290

`A155156(n+1)/2`
-/

namespace A083487.P4191280515888048290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155156 (n + 1) : ℚ) / 2

end

end A083487.P4191280515888048290

namespace A083487

/-- `A155156(n+1)/2` -/
def P4191280515888048290.Spec : Prop :=
  ∀ n, P4191280515888048290.a n = (A083487 (n + 1) : ℚ)

theorem P4191280515888048290.correct : P4191280515888048290.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel, A083487.P4191280515888048290.a, A083487.P8449240486603242499.a, A155156, A155156.P11088672852986007837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083487

/-! ## A083487.P14119707830679234042

`A155546(n+1)+5`
-/

namespace A083487.P14119707830679234042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) + 5

end

end A083487.P14119707830679234042

namespace A083487

/-- `A155546(n+1)+5` -/
def P14119707830679234042.Spec : Prop :=
  ∀ n, P14119707830679234042.a n = A083487 (n + 1)

theorem P14119707830679234042.correct : P14119707830679234042.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel, A083487.P14119707830679234042.a, A083487.P8449240486603242499.a, A155546, A155546.P2386952917106834247.a, A154684, A154684.P4294763165931368592.a, A131421, A131421.P16745487656165401881.a, A151890, A151890.P5860764011676095584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083487

/-! ## A083487.P7360633405346418772

`A154631(n+1)-5`
-/

namespace A083487.P7360633405346418772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154631 (n + 1) - 5

end

end A083487.P7360633405346418772

namespace A083487

/-- `A154631(n+1)-5` -/
def P7360633405346418772.Spec : Prop :=
  ∀ n, P7360633405346418772.a n = A083487 (n + 1)

theorem P7360633405346418772.correct : P7360633405346418772.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel, A083487.P7360633405346418772.a, A083487.P8449240486603242499.a, A154631, A154631.P9638786672000276920.a, A154685, A154685.P15243887039204204434.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083487

/-! ## A083487.P1162025045916025619

`A155550(n+1)+6`
-/

namespace A083487.P1162025045916025619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155550 (n + 1) + 6

end

end A083487.P1162025045916025619

namespace A083487

/-- `A155550(n+1)+6` -/
def P1162025045916025619.Spec : Prop :=
  ∀ n, P1162025045916025619.a n = A083487 (n + 1)

theorem P1162025045916025619.correct : P1162025045916025619.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel, A083487.P1162025045916025619.a, A083487.P8449240486603242499.a, A155550, A155550.P8821418468961937899.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083487

/-! ## A083487.P12763029939988649136

`A144670(n+1)+7`
-/

namespace A083487.P12763029939988649136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144670 (n + 1) + 7

end

end A083487.P12763029939988649136

namespace A083487

/-- `A144670(n+1)+7` -/
def P12763029939988649136.Spec : Prop :=
  ∀ n, P12763029939988649136.a n = A083487 (n + 1)

theorem P12763029939988649136.correct : P12763029939988649136.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel, A083487.P12763029939988649136.a, A083487.P8449240486603242499.a, A144670, A144670.P16046816963376564463.a, A324937, A324937.P12117470399023503512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083487

/-! ## A083487.P7906195502553753576

`A163652(n+1)-6`
-/

namespace A083487.P7906195502553753576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163652 (n + 1) - 6

end

end A083487.P7906195502553753576

namespace A083487

/-- `A163652(n+1)-6` -/
def P7906195502553753576.Spec : Prop :=
  ∀ n, P7906195502553753576.a n = A083487 (n + 1)

theorem P7906195502553753576.correct : P7906195502553753576.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel, A083487.P7906195502553753576.a, A083487.P8449240486603242499.a, A163652, A163652.P14560044892926155095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083487

/-! ## A083487.P3563747548228628424

`A163672(n+1)-7`
-/

namespace A083487.P3563747548228628424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163672 (n + 1) - 7

end

end A083487.P3563747548228628424

namespace A083487

/-- `A163672(n+1)-7` -/
def P3563747548228628424.Spec : Prop :=
  ∀ n, P3563747548228628424.a n = A083487 (n + 1)

theorem P3563747548228628424.correct : P3563747548228628424.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel, A083487.P3563747548228628424.a, A083487.P8449240486603242499.a, A163672, A163672.P97015289542930309.a, A163652, A163652.P14560044892926155095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083487

/-! ## A083487.P16059283499148215323

`A324937(n+1)+8`
-/

namespace A083487.P16059283499148215323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324937 (n + 1) + 8

end

end A083487.P16059283499148215323

namespace A083487

/-- `A324937(n+1)+8` -/
def P16059283499148215323.Spec : Prop :=
  ∀ n, P16059283499148215323.a n = A083487 (n + 1)

theorem P16059283499148215323.correct : P16059283499148215323.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel, A083487.P16059283499148215323.a, A083487.P8449240486603242499.a, A324937, A324937.P12117470399023503512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083487

/-! ## A083487.P4901376653899512195

`A155551(n+1)+9`
-/

namespace A083487.P4901376653899512195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155551 (n + 1) + 9

end

end A083487.P4901376653899512195

namespace A083487

/-- `A155551(n+1)+9` -/
def P4901376653899512195.Spec : Prop :=
  ∀ n, P4901376653899512195.a n = A083487 (n + 1)

theorem P4901376653899512195.correct : P4901376653899512195.Spec := by
  intro n
  simp only [A083487, Nat.add_sub_cancel, A083487.P4901376653899512195.a, A083487.P8449240486603242499.a, A155551, A155551.P15753300162867372955.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A083487

/-!
# A083488: Weight distribution of [127,99,9] primitive binary BCH code.

The programs for A083488, there is no canonical definition to state claims against.
-/

/-! ## A083488.P7008863375266880537

`lcm(n+1, A151815(A185306(n+1)))`
-/

namespace A083488.P7008863375266880537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A151815 (A185306 (n + 1)).toNat)

end

end A083488.P7008863375266880537

/-! ## A083488.P1381203738821803660

`A017829(n)*A151815(A185306(n+1))`
-/

namespace A083488.P1381203738821803660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017829 n * A151815 (A185306 (n + 1)).toNat

end

end A083488.P1381203738821803660

/-! ## A083488.P11411166917378163052

`A025149(n)*A151815(A185306(n+1))`
-/

namespace A083488.P11411166917378163052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025149 n * A151815 (A185306 (n + 1)).toNat

end

end A083488.P11411166917378163052

/-! ## A083488.P7986814778194079035

`lcm(A151815(A185306(n+1)), A215366(n))`
-/

namespace A083488.P7986814778194079035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A151815 (A185306 (n + 1)).toNat) (A215366 n)

end

end A083488.P7986814778194079035

/-! ## A083488.P3900944012540867794

`A003324(n+1)*A151815(A185306(n+1))`
-/

namespace A083488.P3900944012540867794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (n + 1) * A151815 (A185306 (n + 1)).toNat

end

end A083488.P3900944012540867794

/-!
# A083489: Triangle read by rows where the n-th row gives the reverse-lexicographically earliest sequence of n distinct integers > 1 whose product equals the smallest possible square (=A081456(n)).

The programs for A083489, there is no canonical definition to state claims against.
-/

/-! ## A083489.P1784905182462719607

`A081454(A080036(n+1))`
-/

namespace A083489.P1784905182462719607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081454 (A080036 (n + 1)).toNat

end

end A083489.P1784905182462719607

/-!
# A083490: Multiples of 2 in which there is no common digit in successive terms.

The programs for A083490, there is no canonical definition to state claims against.
-/

/-! ## A083490.P3742602457575753813

`A229363(n+2)`
-/

namespace A083490.P3742602457575753813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229363 (n + 2)

end

end A083490.P3742602457575753813

/-! ## A083490.P3428004481039194594

`record[A229363(or(n, A000038(n)))]`
-/

namespace A083490.P3428004481039194594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229363 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083490.P3428004481039194594

/-! ## A083490.P15776533194664137947

`record[A229363(A080513(A008612(n)))]`
-/

namespace A083490.P15776533194664137947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229363 (A080513 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083490.P15776533194664137947

/-! ## A083490.P17742184468065063140

`record[A229363(A080513(A008624(n)))]`
-/

namespace A083490.P17742184468065063140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229363 (A080513 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083490.P17742184468065063140

/-!
# A083493: Multiples of 5 in which there is no common digit in successive terms.

The programs for A083493, there is no canonical definition to state claims against.
-/

/-! ## A083493.P15274730483172285869

`5*A050487(A032555(n+1))`
-/

namespace A083493.P15274730483172285869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A050487 (A032555 (n + 1)).toNat

end

end A083493.P15274730483172285869

/-! ## A083493.P3630166681305395078

`5*A050487(A077739(n+1))`
-/

namespace A083493.P3630166681305395078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A050487 (A077739 (n + 1)).toNat

end

end A083493.P3630166681305395078

/-! ## A083493.P2933867356391816182

`A033677((5*A050487(n+1))²)`
-/

namespace A083493.P2933867356391816182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 ((5 * A050487 (n + 1)) ^ 2).toNat

end

end A083493.P2933867356391816182

/-! ## A083493.P11101177568027083934

`∑[A130439(A333940((n+1)²))+1]`
-/

namespace A083493.P11101177568027083934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130439 (A333940 ((n + 1) ^ 2)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083493.P11101177568027083934

/-! ## A083493.P2715588540952555349

`5*∑[A075020(A080858(2*n+1))]`
-/

namespace A083493.P2715588540952555349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075020 (A080858 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A083493.P2715588540952555349

/-!
# A083495: Multiples of 7 in which there is no common digit in successive terms.

The programs for A083495, there is no canonical definition to state claims against.
-/

/-! ## A083495.P16296373186400940787

`record[7*A355270(3*(n+1))]`
-/

namespace A083495.P16296373186400940787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A355270 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083495.P16296373186400940787

/-! ## A083495.P6509695082986200232

`7*A070939(A254447(n))`
-/

namespace A083495.P6509695082986200232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A070939 (A254447 n).toNat

end

end A083495.P6509695082986200232

/-! ## A083495.P16136375246559498184

`record[lcm(7, A336264(A113722(n)))]`
-/

namespace A083495.P16136375246559498184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (A336264 (A113722 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083495.P16136375246559498184

/-! ## A083495.P5825635505229534230

`7*A026437(A032555(n+1))`
-/

namespace A083495.P5825635505229534230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A026437 (A032555 (n + 1)).toNat

end

end A083495.P5825635505229534230

/-! ## A083495.P1506081608275365286

`eq[A066099((n+4)²), A115790(n)]`
-/

namespace A083495.P1506081608275365286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 ((n + 4) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115790 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A083495.P1506081608275365286

/-!
# A083496: Multiples of 8 in which there is no common digit in successive terms.

The programs for A083496, there is no canonical definition to state claims against.
-/

/-! ## A083496.P8376664144949399806

`∑[A061142(A069608(n+3)+A002385(2*n+3))]`
-/

namespace A083496.P8376664144949399806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A069608 (n + 3) + A002385 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083496.P8376664144949399806

/-! ## A083496.P13956778772805666290

`record[8*A091255(A294386(n))]`
-/

namespace A083496.P13956778772805666290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A091255 (A294386 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A083496.P13956778772805666290

/-! ## A083496.P8525920914712971346

`∑[A074723(Δ[A016054(n+1)])]`
-/

namespace A083496.P8525920914712971346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016054 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074723 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083496.P8525920914712971346

/-! ## A083496.P17742807756304180704

`∑[A102272(∑[A091351(n+4)])]`
-/

namespace A083496.P17742807756304180704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102272 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083496.P17742807756304180704

/-!
# A083497: Multiples of 9 in which there is no common digit in successive terms.

The programs for A083497, there is no canonical definition to state claims against.
-/

/-! ## A083497.P14040678477962791539

`9*(lt[A036864(n+1), gcd(2, n)]+1)`
-/

namespace A083497.P14040678477962791539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036864 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A083497.P14040678477962791539

/-! ## A083497.P2552848630424504204

`9*A049108(A187044(n))`
-/

namespace A083497.P2552848630424504204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A049108 (A187044 n).toNat

end

end A083497.P2552848630424504204

/-! ## A083497.P616889273445518948

`∑[9*A117546(A275585(n))]`
-/

namespace A083497.P616889273445518948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A117546 (A275585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083497.P616889273445518948

/-! ## A083497.P3667587008051068295

`9*A055019(A117057(n+1))`
-/

namespace A083497.P3667587008051068295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A055019 (A117057 (n + 1)).toNat

end

end A083497.P3667587008051068295

/-! ## A083497.P6306465180733675840

`∑[9*(A037911(A177427(n))+1)]`
-/

namespace A083497.P6306465180733675840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (A037911 (A177427 n).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083497.P6306465180733675840

/-!
# A083498: a(n)= smallest multiple of n greater than n which has no digit in common with a(n-1).

The programs for A083498, there is no canonical definition to state claims against.
-/

/-! ## A083498.P15262264780923921334

`(n+1)*A083499(n+1)`
-/

namespace A083498.P15262264780923921334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083499 (n + 1)

end

end A083498.P15262264780923921334

/-! ## A083498.P4674018063863561559

`A075362(A083499(n+1)+∑[n])`
-/

namespace A083498.P4674018063863561559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A083499 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A083498.P4674018063863561559

/-!
# A083499: a(n) = A083498(n)/n.

The programs for A083499, there is no canonical definition to state claims against.
-/

/-! ## A083499.P6617277691088845776

`A083498(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083499.P6617277691088845776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083498 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A083499.P6617277691088845776

/-! ## A083499.P7129784812361006666

`(4*A083498(n+1))%A004767(n)`
-/

namespace A083499.P7129784812361006666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A083498 (n + 1)) (A004767 n)

end

end A083499.P7129784812361006666

/-! ## A083499.P14285896656376873718

`(5*A083498(n+1))%A016897(n)`
-/

namespace A083499.P14285896656376873718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * A083498 (n + 1)) (A016897 n)

end

end A083499.P14285896656376873718

/-! ## A083499.P3687178229082147605

`A118235(A083498(n+1)+A000217(n))`
-/

namespace A083499.P3687178229082147605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118235 (A083498 (n + 1) + A000217 n).toNat

end

end A083499.P3687178229082147605

/-! ## A083499.P10259001680543297938

`A008574(A083498(n+1))%A004767(n)`
-/

namespace A083499.P10259001680543297938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 (A083498 (n + 1)).toNat) (A004767 n)

end

end A083499.P10259001680543297938

/-! ## A083499.P15546485099860710387

`A022144(A083498(n+1))%A004771(n)`
-/

namespace A083499.P15546485099860710387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022144 (A083498 (n + 1)).toNat) (A004771 n)

end

end A083499.P15546485099860710387

/-! ## A083499.P15036340595720066327

`(n+1)^A008683(A064740(n+2))*A083498(n+1)`
-/

namespace A083499.P15036340595720066327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A064740 (n + 2)).toNat : ℤ) * (A083498 (n + 1) : ℚ)

end

end A083499.P15036340595720066327

