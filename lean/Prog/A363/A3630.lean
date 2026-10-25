import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A363000: a(n) = numerator(R(n, n, 1)), where R are the rational polynomials R(n, k, x) = Sum_{u=0..k} ( Sum_{j=0..u} x^j * binomial(u, j) * (j + 1)^n ) / (u + 1).

The programs for A363000, there is no canonical definition to state claims against.
-/

/-! ## A363000.P15363979045297163746

`A000400(n)-A006577(A144097(n))`
-/

namespace A363000.P15363979045297163746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n - A006577 (A144097 n).toNat

end

end A363000.P15363979045297163746

/-!
# A363001: a(n) = denominator(R(n, n, 1)) where R(n, k, x) = Sum_{u=0..k} ( Sum_{j=0..u} x^j * binomial(u, j) * (j + 1)^n ) / (u + 1).

The programs for A363001, there is no canonical definition to state claims against.
-/

/-! ## A363001.P13533361380619841034

`A331597(A279257(n)+n)`
-/

namespace A363001.P13533361380619841034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331597 (A279257 n + (n : ℤ)).toNat

end

end A363001.P13533361380619841034

/-! ## A363001.P590542874811245365

`A006882(A272565(n!+n))`
-/

namespace A363001.P590542874811245365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A272565 (Nat.factorial n + n)).toNat

end

end A363001.P590542874811245365

/-! ## A363001.P13412209391945103158

`∏{p}[A092398(A228693(n+1)), #]`
-/

namespace A363001.P13412209391945103158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092398 (A228693 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A363001.P13412209391945103158

/-! ## A363001.P2148067695041279671

`A331597(A351200(n)+A022998(n))`
-/

namespace A363001.P2148067695041279671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331597 (A351200 n + A022998 n).toNat

end

end A363001.P2148067695041279671

/-!
# A363004: Number of sequences of n distinct positive integers whose Gilbreath transform is (1, 1, ..., 1).

The programs for A363004, there is no canonical definition to state claims against.
-/

/-! ## A363004.P12166593458997538486

`A248610(A000568(n))`
-/

namespace A363004.P12166593458997538486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248610 (A000568 n).toNat

end

end A363004.P12166593458997538486

/-! ## A363004.P18009314772317387622

`A064626(∑[A232475(n)])`
-/

namespace A363004.P18009314772317387622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064626 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A363004.P18009314772317387622

/-! ## A363004.P2664053799087408742

`A064626(A028391(n)^floor(n/4))`
-/

namespace A363004.P2664053799087408742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064626 (SequenceMachineLib.roundAway ((A028391 n : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ))).toNat

end

end A363004.P2664053799087408742

/-!
# A363005: Number of sequences of n distinct integers whose Gilbreath transform is (1, 1, ..., 1).

The programs for A363005, there is no canonical definition to state claims against.
-/

/-! ## A363005.P4148847520284634088

`A032544(2^(n+1)-(n+1))`
-/

namespace A363005.P4148847520284634088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032544 (2 ^ (n + 1) - (n + 1))

end

end A363005.P4148847520284634088

/-! ## A363005.P6624707101562867672

`A224704(n)*A366320(A056355(n))`
-/

namespace A363005.P6624707101562867672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224704 n * A366320 (A056355 n).toNat

end

end A363005.P6624707101562867672

/-!
# A363006: a(n) = 1/((d-1)*n + 1)*Sum_{i=0..n} binomial((d - 1)*n+1, n-i) * binomial((d-1)*n+i, i), with d = 6.

The programs for A363006, there is no canonical definition to state claims against.
-/

/-! ## A363006.P13150707317181530529

`A336534(eq[6, A195663(n)])`
-/

namespace A363006.P13150707317181530529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A363006.P13150707317181530529

/-! ## A363006.P13383740131621306919

`A336534(Δ[A026054(n+3)])`
-/

namespace A363006.P13383740131621306919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 (f1 (n + 1) - f1 n).toNat

end

end A363006.P13383740131621306919

/-! ## A363006.P9974962374308390423

`record[A336534(A060577(n)+n)]`
-/

namespace A363006.P9974962374308390423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 (A060577 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363006.P9974962374308390423

/-! ## A363006.P5615105359814039118

`A336534(A000217(n+4)+2*n+5)`
-/

namespace A363006.P5615105359814039118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 (A000217 (n + 4) + (2 * n + 5 : ℤ)).toNat

end

end A363006.P5615105359814039118

/-!
# A363007: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. 1/(1 - f^k(x)), where f(x) = exp(x) - 1.

The programs for A363007, there is no canonical definition to state claims against.
-/

/-! ## A363007.P3671763965173405300

`A239086(A111528(n))`
-/

namespace A363007.P3671763965173405300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A111528 n).toNat

end

end A363007.P3671763965173405300

/-! ## A363007.P1549630773251035689

`A185284(2*n+1)+A111528(n)`
-/

namespace A363007.P1549630773251035689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n + 1) + A111528 n

end

end A363007.P1549630773251035689

/-! ## A363007.P3519692648863230155

`A111528(n)+A070139(A156953(n))`
-/

namespace A363007.P3519692648863230155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 n + A070139 (A156953 n).toNat

end

end A363007.P3519692648863230155

/-! ## A363007.P16803955545539565533

`or(A079978(A001610(n)), A111528(n))`
-/

namespace A363007.P16803955545539565533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079978 (A001610 n).toNat) (A111528 n)

end

end A363007.P16803955545539565533

/-! ## A363007.P123243145057696047

`or(A111528(n), A359370(A169954(n)))`
-/

namespace A363007.P123243145057696047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111528 n) (A359370 (A169954 n).toNat)

end

end A363007.P123243145057696047

/-!
# A363008: Expansion of e.g.f. 1/(2 - exp(exp(exp(exp(x) - 1) - 1) - 1)).

The programs for A363008, there is no canonical definition to state claims against.
-/

/-! ## A363008.P1585427069705602694

`A153278(eq[2, A008284(n+1)])`
-/

namespace A363008.P1585427069705602694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A363008.P1585427069705602694

/-! ## A363008.P9933429096689434833

`A153278(A065475(n+1)+A034856(n+1))`
-/

namespace A363008.P9933429096689434833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153278 (A065475 (n + 1) + A034856 (n + 1)).toNat

end

end A363008.P9933429096689434833

/-! ## A363008.P11802816157874500297

`A153278(A260196(n+1)+A034856(n+2))`
-/

namespace A363008.P11802816157874500297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153278 (A260196 (n + 1) + A034856 (n + 2)).toNat

end

end A363008.P11802816157874500297

/-! ## A363008.P4390036675872685800

`A153278(A238531(n+2)+A028310(2*n))`
-/

namespace A363008.P4390036675872685800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153278 (A238531 (n + 2) + A028310 (2 * n)).toNat

end

end A363008.P4390036675872685800

/-!
# A363009: Expansion of e.g.f. 1/(2 - exp(exp(exp(exp(exp(x) - 1) - 1) - 1) - 1)).

The programs for A363009, there is no canonical definition to state claims against.
-/

/-! ## A363009.P4871910206289505379

`A153278(lt[A010054(n), A010054(n+4)])`
-/

namespace A363009.P4871910206289505379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153278 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A363009.P4871910206289505379

/-! ## A363009.P14150540408914795007

`A363007(A055999(n+3))`
-/

namespace A363009.P14150540408914795007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363007 (A055999 (n + 3)).toNat

end

end A363009.P14150540408914795007

/-!
# A363010: a(n) = n! * [x^n] 1/(1 - f^n(x)), where f(x) = exp(x) - 1.

The programs for A363010, there is no canonical definition to state claims against.
-/

/-! ## A363010.P4943882735153647072

`A153278(floor(sqrt(A002061(n)))²+n²)`
-/

namespace A363010.P4943882735153647072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153278 (Int.sqrt (A002061 n) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A363010.P4943882735153647072

/-! ## A363010.P4504760066680498435

`A153278((A028310(n)-1)*2*n+1)`
-/

namespace A363010.P4504760066680498435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153278 ((A028310 n - 1) * (2 * n : ℤ) + 1).toNat

end

end A363010.P4504760066680498435

/-!
# A363011: Indices of record highs in A362816.

The programs for A363011, there is no canonical definition to state claims against.
-/

/-! ## A363011.P10964527027069215085

`∑[A331527(A229865(n))]`
-/

namespace A363011.P10964527027069215085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331527 (A229865 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363011.P10964527027069215085

/-!
# A363012: a(n) = Sum_{d|n} d*tau(d)*phi(d)*mu(n/d).

The programs for A363012, the canonical program `A363012.P16784957771045360227` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363012 has offset 1).

The definition of A363012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363012.P16784957771045360227

`∑{d}[n+1, A046692(#)*A127469((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A363012

/-- `∑{d}[n+1, A046692(#)*A127469((n+1)/#)]` -/
def P16784957771045360227.Spec : Prop :=
  ∀ n, P16784957771045360227.a n = A363012 (n + 1)

theorem P16784957771045360227.correct : P16784957771045360227.Spec := by
  intro n
  simp only [A363012, Nat.add_sub_cancel]

end A363012

/-!
# A363013: a(n) is the number of prime factors (counted with multiplicity) of the n-th cubefull number (A036966).

The programs for A363013, there is no canonical definition to state claims against.
-/

/-! ## A363013.P15219706013109392690

`A001222(A036966(n+1))`
-/

namespace A363013.P15219706013109392690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A036966 (n + 1)).toNat

end

end A363013.P15219706013109392690

/-! ## A363013.P8974123672091138222

`A360729(A371185(n+1))`
-/

namespace A363013.P8974123672091138222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360729 (A371185 (n + 1)).toNat

end

end A363013.P8974123672091138222

/-! ## A363013.P11187382497451806548

`∑{e}[∪[A370787(n+1), A370788(n+1)], #]`
-/

namespace A363013.P11187382497451806548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370787 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370788 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A363013.P11187382497451806548

/-! ## A363013.P14330731138974462341

`∑{e}[A001694(A371185(n+1)), A000027(#)]`
-/

namespace A363013.P14330731138974462341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A371185 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000027 (Nat.factorization (f1 n).natAbs p)

end

end A363013.P14330731138974462341

/-! ## A363013.P17604593646124544411

`A001222(record[A001694(n+1)*A112526(A306458(n+1))])`
-/

namespace A363013.P17604593646124544411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1) * A112526 (A306458 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A363013.P17604593646124544411

/-! ## A363013.P7552975541376238630

`∑{e}[record[A057521(A337050(n+1))], #]`
-/

namespace A363013.P7552975541376238630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A337050 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A363013.P7552975541376238630

/-! ## A363013.P4336301393431632172

`A001222(record[A360540(n+1)])`
-/

namespace A363013.P4336301393431632172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A363013.P4336301393431632172

/-! ## A363013.P5699582948586660937

`A366076(A036966(2*n+1-n))`
-/

namespace A363013.P5699582948586660937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366076 (A036966 (2 * n + 1 - n)).toNat

end

end A363013.P5699582948586660937

/-!
# A363014: Cubefull numbers (A036966) with a record gap to the next cubefull number.

The programs for A363014, there is no canonical definition to state claims against.
-/

/-! ## A363014.P13812450758389716751

`A119318(A336424(3*n+5)+n²)`
-/

namespace A363014.P13812450758389716751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119318 (A336424 (3 * n + 5) + (n ^ 2 : ℤ)).toNat

end

end A363014.P13812450758389716751

/-! ## A363014.P3627004589147559234

`A119318(A022560(n)+A001222(3*n+5))`
-/

namespace A363014.P3627004589147559234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119318 (A022560 n + A001222 (3 * n + 5)).toNat

end

end A363014.P3627004589147559234

/-! ## A363014.P6853079670687580773

`record[A360540(A274193(n))]`
-/

namespace A363014.P6853079670687580773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360540 (A274193 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363014.P6853079670687580773

/-!
# A363015: Expansion of g.f. A(x) satisfying 3 = Sum_{n=-oo..+oo} x^n * A(x)^n * (1 + x^n)^(2*n+1).

The programs for A363015, there is no canonical definition to state claims against.
-/

/-! ## A363015.P15336734837416625408

`A055400(A216858(n))+A003263(n+1)`
-/

namespace A363015.P15336734837416625408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A216858 n).toNat + A003263 (n + 1)

end

end A363015.P15336734837416625408

/-! ## A363015.P4512245975910307494

`A136710(2*n+3)*A229133(A280486(n))`
-/

namespace A363015.P4512245975910307494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136710 (2 * n + 3) * A229133 (A280486 n).toNat

end

end A363015.P4512245975910307494

/-!
# A363016: a(n) is the least integer k such that the k-th, (k+1)-th, ..., (k+n-1)-th primes are congruent to 1 mod 4.

The programs for A363016, there is no canonical definition to state claims against.
-/

/-! ## A363016.P3861358720902608830

`A000720(A057624(n+1))`
-/

namespace A363016.P3861358720902608830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A057624 (n + 1)).toNat

end

end A363016.P3861358720902608830

/-! ## A363016.P15547645497524783864

`A000720(A376396(∑[n]+1))`
-/

namespace A363016.P15547645497524783864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A376396 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A363016.P15547645497524783864

/-! ## A363016.P8954404458037883023

`A061395(2*A057624(n+1))`
-/

namespace A363016.P8954404458037883023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A057624 (n + 1)).toNat

end

end A363016.P8954404458037883023

/-! ## A363016.P3305286482548107965

`A061395(lcm(2, A057624(n+1)))`
-/

namespace A363016.P3305286482548107965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A057624 (n + 1)))

end

end A363016.P3305286482548107965

/-!
# A363022: Expansion of Sum_{k>0} x^(2*k)/(1+x^k)^3.

The programs for A363022, the canonical program `A363022.P8132570921243997596` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363022 has offset 1).

The definition of A363022 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321543, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363022.P2426469689094643450

`∑{d}[n+1, (-1)^#*C(#, 2)]`
-/

namespace A363022.P2426469689094643450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1) ^ d * (Nat.choose d 2 : ℤ)

end

end A363022.P2426469689094643450

namespace A363022

/-- `∑{d}[n+1, (-1)^#*C(#, 2)]` -/
def P2426469689094643450.Spec : Prop :=
  ∀ n, P2426469689094643450.a n = A363022 (n + 1)

end A363022

/-! ## A363022.P8132570921243997596

`(A002129(n+1)-A321543(n+1))/2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A363022

/-- `(A002129(n+1)-A321543(n+1))/2` -/
def P8132570921243997596.Spec : Prop :=
  ∀ n, P8132570921243997596.a n = (A363022 (n + 1) : ℚ)

end A363022

/-! ## A363022.P4479267812804301926

`A363617(n+1)+A363598(n+1)`
-/

namespace A363022.P4479267812804301926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363617 (n + 1) + A363598 (n + 1)

end

end A363022.P4479267812804301926

namespace A363022

/-- `A363617(n+1)+A363598(n+1)` -/
def P4479267812804301926.Spec : Prop :=
  ∀ n, P4479267812804301926.a n = A363022 (n + 1)

end A363022

/-! ## A363022.P6831271373225160019

`A002129(n+1)-A320900(n+1)`
-/

namespace A363022.P6831271373225160019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (n + 1) - A320900 (n + 1)

end

end A363022.P6831271373225160019

namespace A363022

/-- `A002129(n+1)-A320900(n+1)` -/
def P6831271373225160019.Spec : Prop :=
  ∀ n, P6831271373225160019.a n = A363022 (n + 1)

end A363022

/-! ## A363022.P4650032542140952796

`A320900(n+1)-A321543(n+1)`
-/

namespace A363022.P4650032542140952796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320900 (n + 1) - A321543 (n + 1)

end

end A363022.P4650032542140952796

namespace A363022

/-- `A320900(n+1)-A321543(n+1)` -/
def P4650032542140952796.Spec : Prop :=
  ∀ n, P4650032542140952796.a n = A363022 (n + 1)

end A363022

/-! ## A363022.P6615984472191021779

`A325940(n+1)-A363615(n+1)`
-/

namespace A363022.P6615984472191021779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325940 (n + 1) - A363615 (n + 1)

end

end A363022.P6615984472191021779

namespace A363022

/-- `A325940(n+1)-A363615(n+1)` -/
def P6615984472191021779.Spec : Prop :=
  ∀ n, P6615984472191021779.a n = A363022 (n + 1)

end A363022

/-! ## A363022.P8839946525949290651

`A048272(n+1)-(A363615(n+1)+A002129(n+1))`
-/

namespace A363022.P8839946525949290651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) - (A363615 (n + 1) + A002129 (n + 1))

end

end A363022.P8839946525949290651

namespace A363022

/-- `A048272(n+1)-(A363615(n+1)+A002129(n+1))` -/
def P8839946525949290651.Spec : Prop :=
  ∀ n, P8839946525949290651.a n = A363022 (n + 1)

end A363022

/-! ## A363022.P7314808577263537016

`A002129(n+1)-(A363598(n+1)+A320901(n+1))`
-/

namespace A363022.P7314808577263537016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (n + 1) - (A363598 (n + 1) + A320901 (n + 1))

end

end A363022.P7314808577263537016

namespace A363022

/-- `A002129(n+1)-(A363598(n+1)+A320901(n+1))` -/
def P7314808577263537016.Spec : Prop :=
  ∀ n, P7314808577263537016.a n = A363022 (n + 1)

end A363022

/-! ## A363022.P5934043697538080121

`A002129(n+1)+A363630(n+1)-A363629(n+1)`
-/

namespace A363022.P5934043697538080121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (n + 1) + (A363630 (n + 1) - A363629 (n + 1))

end

end A363022.P5934043697538080121

namespace A363022

/-- `A002129(n+1)+A363630(n+1)-A363629(n+1)` -/
def P5934043697538080121.Spec : Prop :=
  ∀ n, P5934043697538080121.a n = A363022 (n + 1)

end A363022

/-!
# A363023: Primes having only {1, 6, 9} as digits.

The programs for A363023, the canonical program `A363023.P365986864827298199` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363023 has offset 1).

The definition of A363023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363023.P7131480819573354922

`∩[A386037(n+1), A386131(n+1)]`
-/

namespace A363023.P7131480819573354922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P7131480819573354922

namespace A363023

/-- `∩[A386037(n+1), A386131(n+1)]` -/
def P7131480819573354922.Spec : Prop :=
  ∀ n, (P7131480819573354922.a n : ℤ) = A363023 (n + 1)

end A363023

/-! ## A363023.P17139618418906214762

`∩[A386037(n+1), A386101(n+1)]`
-/

namespace A363023.P17139618418906214762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P17139618418906214762

namespace A363023

/-- `∩[A386037(n+1), A386101(n+1)]` -/
def P17139618418906214762.Spec : Prop :=
  ∀ n, (P17139618418906214762.a n : ℤ) = A363023 (n + 1)

end A363023

/-! ## A363023.P4655526979955223506

`∩[A386101(n+1), A386131(n+1)]`
-/

namespace A363023.P4655526979955223506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P4655526979955223506

namespace A363023

/-- `∩[A386101(n+1), A386131(n+1)]` -/
def P4655526979955223506.Spec : Prop :=
  ∀ n, (P4655526979955223506.a n : ℤ) = A363023 (n + 1)

end A363023

/-! ## A363023.P365986864827298199

`∩[A386037(n+1), A386137(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A363023

/-- `∩[A386037(n+1), A386137(n+1)]` -/
def P365986864827298199.Spec : Prop :=
  ∀ n, (P365986864827298199.a n : ℤ) = A363023 (n + 1)

theorem P365986864827298199.correct : P365986864827298199.Spec := by
  intro n
  simp only [A363023, Nat.add_sub_cancel]

end A363023

/-! ## A363023.P8730607858607997839

`∩[A386101(n+1), A386137(n+1)]`
-/

namespace A363023.P8730607858607997839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P8730607858607997839

namespace A363023

/-- `∩[A386101(n+1), A386137(n+1)]` -/
def P8730607858607997839.Spec : Prop :=
  ∀ n, (P8730607858607997839.a n : ℤ) = A363023 (n + 1)

end A363023

/-! ## A363023.P10697609263332370990

`∩[A386037(n+1), A386125(n+1)]`
-/

namespace A363023.P10697609263332370990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P10697609263332370990

namespace A363023

/-- `∩[A386037(n+1), A386125(n+1)]` -/
def P10697609263332370990.Spec : Prop :=
  ∀ n, (P10697609263332370990.a n : ℤ) = A363023 (n + 1)

end A363023

/-! ## A363023.P14518764792585521494

`∩[A386101(n+1), A386125(n+1)]`
-/

namespace A363023.P14518764792585521494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P14518764792585521494

namespace A363023

/-- `∩[A386101(n+1), A386125(n+1)]` -/
def P14518764792585521494.Spec : Prop :=
  ∀ n, (P14518764792585521494.a n : ℤ) = A363023 (n + 1)

end A363023

/-! ## A363023.P15690201999535244315

`∩[A386037(n+1), A386136(n+1)]`
-/

namespace A363023.P15690201999535244315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P15690201999535244315

namespace A363023

/-- `∩[A386037(n+1), A386136(n+1)]` -/
def P15690201999535244315.Spec : Prop :=
  ∀ n, (P15690201999535244315.a n : ℤ) = A363023 (n + 1)

end A363023

/-! ## A363023.P14796244468742287934

`∩[A386101(n+1), A386136(n+1)]`
-/

namespace A363023.P14796244468742287934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P14796244468742287934

namespace A363023

/-- `∩[A386101(n+1), A386136(n+1)]` -/
def P14796244468742287934.Spec : Prop :=
  ∀ n, (P14796244468742287934.a n : ℤ) = A363023 (n + 1)

end A363023

/-! ## A363023.P5779389264258356356

`∩[A386037(n+1), A386116(n+1)]`
-/

namespace A363023.P5779389264258356356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P5779389264258356356

namespace A363023

/-- `∩[A386037(n+1), A386116(n+1)]` -/
def P5779389264258356356.Spec : Prop :=
  ∀ n, (P5779389264258356356.a n : ℤ) = A363023 (n + 1)

end A363023

/-! ## A363023.P13600305314884675408

`∩[A386101(n+1), A386116(n+1)]`
-/

namespace A363023.P13600305314884675408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P13600305314884675408

namespace A363023

/-- `∩[A386101(n+1), A386116(n+1)]` -/
def P13600305314884675408.Spec : Prop :=
  ∀ n, (P13600305314884675408.a n : ℤ) = A363023 (n + 1)

end A363023

/-! ## A363023.P6854283113120594438

`∩[A386116(n+1), A386125(n+1)]`
-/

namespace A363023.P6854283113120594438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P6854283113120594438

namespace A363023

/-- `∩[A386116(n+1), A386125(n+1)]` -/
def P6854283113120594438.Spec : Prop :=
  ∀ n, (P6854283113120594438.a n : ℤ) = A363023 (n + 1)

end A363023

/-! ## A363023.P3242727535453007917

`∩[A386116(n+1), A386131(n+1)]`
-/

namespace A363023.P3242727535453007917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P3242727535453007917

namespace A363023

/-- `∩[A386116(n+1), A386131(n+1)]` -/
def P3242727535453007917.Spec : Prop :=
  ∀ n, (P3242727535453007917.a n : ℤ) = A363023 (n + 1)

end A363023

/-! ## A363023.P13969496756541539495

`∩[A386116(n+1), A386136(n+1)]`
-/

namespace A363023.P13969496756541539495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P13969496756541539495

namespace A363023

/-- `∩[A386116(n+1), A386136(n+1)]` -/
def P13969496756541539495.Spec : Prop :=
  ∀ n, (P13969496756541539495.a n : ℤ) = A363023 (n + 1)

end A363023

/-! ## A363023.P13726540314279811027

`∩[A386116(n+1), A386137(n+1)]`
-/

namespace A363023.P13726540314279811027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P13726540314279811027

namespace A363023

/-- `∩[A386116(n+1), A386137(n+1)]` -/
def P13726540314279811027.Spec : Prop :=
  ∀ n, (P13726540314279811027.a n : ℤ) = A363023 (n + 1)

end A363023

/-! ## A363023.P15085504888702459935

`∩[A057770(n+1), A386101(n+1)]`
-/

namespace A363023.P15085504888702459935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P15085504888702459935

namespace A363023

/-- `∩[A057770(n+1), A386101(n+1)]` -/
def P15085504888702459935.Spec : Prop :=
  ∀ n, (P15085504888702459935.a n : ℤ) = A363023 (n + 1)

end A363023

/-! ## A363023.P4365278002596563112

`∩[A057770(n+1), A386116(n+1)]`
-/

namespace A363023.P4365278002596563112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P4365278002596563112

namespace A363023

/-- `∩[A057770(n+1), A386116(n+1)]` -/
def P4365278002596563112.Spec : Prop :=
  ∀ n, (P4365278002596563112.a n : ℤ) = A363023 (n + 1)

end A363023

/-! ## A363023.P6492736552025253070

`∩[A057770(n+1), A386125(n+1)]`
-/

namespace A363023.P6492736552025253070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P6492736552025253070

namespace A363023

/-- `∩[A057770(n+1), A386125(n+1)]` -/
def P6492736552025253070.Spec : Prop :=
  ∀ n, (P6492736552025253070.a n : ℤ) = A363023 (n + 1)

end A363023

/-! ## A363023.P7549203492137700044

`∩[A057770(n+1), A386131(n+1)]`
-/

namespace A363023.P7549203492137700044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P7549203492137700044

namespace A363023

/-- `∩[A057770(n+1), A386131(n+1)]` -/
def P7549203492137700044.Spec : Prop :=
  ∀ n, (P7549203492137700044.a n : ℤ) = A363023 (n + 1)

end A363023

/-! ## A363023.P15655370519844918331

`∩[A057770(n+1), A386136(n+1)]`
-/

namespace A363023.P15655370519844918331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363023.P15655370519844918331

namespace A363023

/-- `∩[A057770(n+1), A386136(n+1)]` -/
def P15655370519844918331.Spec : Prop :=
  ∀ n, (P15655370519844918331.a n : ℤ) = A363023 (n + 1)

end A363023

/-!
# A363024: Primes of the form 3^(k-1) - 2^k.

The programs for A363024, there is no canonical definition to state claims against.
-/

/-! ## A363024.P6969134257653372235

`A003063(A363375(n+1))`
-/

namespace A363024.P6969134257653372235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003063 (A363375 (n + 1)).toNat

end

end A363024.P6969134257653372235

/-!
# A363025: Sum of divisors of 5*n-2 of form 5*k+2.

The programs for A363025, the canonical program `A363025.P16048530436688451139` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363025 has offset 1).

The definition of A363025 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363025.P16048530436688451139

`A284280(5*(n+1)-2)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A363025

/-- `A284280(5*(n+1)-2)` -/
def P16048530436688451139.Spec : Prop :=
  ∀ n, P16048530436688451139.a n = A363025 (n + 1)

theorem P16048530436688451139.correct : P16048530436688451139.Spec := by
  intro n
  simp only [A363025, Nat.add_sub_cancel]

end A363025

/-! ## A363025.P6721893946517195519

`A363900(5*n+3)`
-/

namespace A363025.P6721893946517195519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363900 (5 * n + 3)

end

end A363025.P6721893946517195519

namespace A363025

/-- `A363900(5*n+3)` -/
def P6721893946517195519.Spec : Prop :=
  ∀ n, P6721893946517195519.a n = A363025 (n + 1)

end A363025

/-! ## A363025.P2418258512517336719

`A284152(A016885(n))-A284281(A016885(n))`
-/

namespace A363025.P2418258512517336719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284152 (A016885 n).toNat - A284281 (A016885 n).toNat

end

end A363025.P2418258512517336719

namespace A363025

/-- `A284152(A016885(n))-A284281(A016885(n))` -/
def P2418258512517336719.Spec : Prop :=
  ∀ n, P2418258512517336719.a n = A363025 (n + 1)

end A363025

/-! ## A363025.P6127808853444209681

`A374968(A094603(3*n+5))%A255064(3*n+1)`
-/

namespace A363025.P6127808853444209681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374968 (A094603 (3 * n + 5)).toNat) (A255064 (3 * n + 1))

end

end A363025.P6127808853444209681

namespace A363025

/-- `A374968(A094603(3*n+5))%A255064(3*n+1)` -/
def P6127808853444209681.Spec : Prop :=
  ∀ n, P6127808853444209681.a n = A363025 (n + 1)

end A363025

/-!
# A363026: Sum of divisors of 5*n-3 of form 5*k+2.

The programs for A363026, the canonical program `A363026.P15677157071995467369` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363026 has offset 1).

The definition of A363026 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363026.P15677157071995467369

`A284280(5*(n+1)-3)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A363026

/-- `A284280(5*(n+1)-3)` -/
def P15677157071995467369.Spec : Prop :=
  ∀ n, P15677157071995467369.a n = A363026 (n + 1)

theorem P15677157071995467369.correct : P15677157071995467369.Spec := by
  intro n
  simp only [A363026, Nat.add_sub_cancel]

end A363026

/-! ## A363026.P4958013504350384381

`A363897(A016873(n))`
-/

namespace A363026.P4958013504350384381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363897 (A016873 n).toNat

end

end A363026.P4958013504350384381

namespace A363026

/-- `A363897(A016873(n))` -/
def P4958013504350384381.Spec : Prop :=
  ∀ n, P4958013504350384381.a n = A363026 (n + 1)

end A363026

/-! ## A363026.P5767935354042280377

`A363897(A017317(n)/2)`
-/

namespace A363026.P5767935354042280377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363897 (SequenceMachineLib.roundAway ((A017317 n : ℚ) / 2)).toNat

end

end A363026.P5767935354042280377

namespace A363026

/-- `A363897(A017317(n)/2)` -/
def P5767935354042280377.Spec : Prop :=
  ∀ n, P5767935354042280377.a n = A363026 (n + 1)

end A363026

/-! ## A363026.P2109915115352929678

`A363897(A166520(2*n+1)+1)`
-/

namespace A363026.P2109915115352929678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363897 (A166520 (2 * n + 1) + 1).toNat

end

end A363026.P2109915115352929678

namespace A363026

/-- `A363897(A166520(2*n+1)+1)` -/
def P2109915115352929678.Spec : Prop :=
  ∀ n, P2109915115352929678.a n = A363026 (n + 1)

end A363026

/-! ## A363026.P9026734469369169653

`A363897(A005843(2*n+1)+n)`
-/

namespace A363026.P9026734469369169653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363897 (A005843 (2 * n + 1) + (n : ℤ)).toNat

end

end A363026.P9026734469369169653

namespace A363026

/-- `A363897(A005843(2*n+1)+n)` -/
def P9026734469369169653.Spec : Prop :=
  ∀ n, P9026734469369169653.a n = A363026 (n + 1)

end A363026

/-! ## A363026.P12908811331100787706

`A363897(A016777(n)+2*n+1)`
-/

namespace A363026.P12908811331100787706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363897 (A016777 n + (2 * n + 1 : ℤ)).toNat

end

end A363026.P12908811331100787706

namespace A363026

/-- `A363897(A016777(n)+2*n+1)` -/
def P12908811331100787706.Spec : Prop :=
  ∀ n, P12908811331100787706.a n = A363026 (n + 1)

end A363026

/-! ## A363026.P9058852448982538506

`A363897(A017053(n)-A046666(2*(n+3)))`
-/

namespace A363026.P9058852448982538506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363897 (A017053 n - A046666 (2 * (n + 3))).toNat

end

end A363026.P9058852448982538506

namespace A363026

/-- `A363897(A017053(n)-A046666(2*(n+3)))` -/
def P9058852448982538506.Spec : Prop :=
  ∀ n, P9058852448982538506.a n = A363026 (n + 1)

end A363026

/-!
# A363027: Sum of divisors of 5*n-4 of form 5*k+2.

The programs for A363027, the canonical program `A363027.P4064144166879926127` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363027 has offset 1).

The definition of A363027 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284280, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363027.P4064144166879926127

`A284280(5*n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A363027

/-- `A284280(5*n+1)` -/
def P4064144166879926127.Spec : Prop :=
  ∀ n, P4064144166879926127.a n = A363027 (n + 1)

theorem P4064144166879926127.correct : P4064144166879926127.Spec := by
  intro n
  simp only [A363027, Nat.add_sub_cancel]

end A363027

/-! ## A363027.P12827553477607928737

`A363899(n+1+4*n)`
-/

namespace A363027.P12827553477607928737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363899 (n + 1 + 4 * n)

end

end A363027.P12827553477607928737

namespace A363027

/-- `A363899(n+1+4*n)` -/
def P12827553477607928737.Spec : Prop :=
  ∀ n, P12827553477607928737.a n = A363027 (n + 1)

end A363027

/-! ## A363027.P9757441904912040697

`and(-1, A363899(A016861(n)))`
-/

namespace A363027.P9757441904912040697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A363899 (A016861 n).toNat)

end

end A363027.P9757441904912040697

namespace A363027

/-- `and(-1, A363899(A016861(n)))` -/
def P9757441904912040697.Spec : Prop :=
  ∀ n, P9757441904912040697.a n = A363027 (n + 1)

end A363027

/-!
# A363028: Expansion of Sum_{k>0} k * x^(2*k-1) / (1 - x^(5*k-3)).

The programs for A363028, the canonical program `A363028.P10748860771806218141` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363028 has offset 1).

The definition of A363028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363028.P10748860771806218141

`A363926(5*n+4)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A363028

/-- `A363926(5*n+4)` -/
def P10748860771806218141.Spec : Prop :=
  ∀ n, P10748860771806218141.a n = A363028 (n + 1)

theorem P10748860771806218141.correct : P10748860771806218141.Spec := by
  intro n
  simp only [A363028, Nat.add_sub_cancel]

end A363028

/-! ## A363028.P2258499611706223681

`A345378(A286028(n+1))`
-/

namespace A363028.P2258499611706223681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345378 (A286028 (n + 1)).toNat

end

end A363028.P2258499611706223681

namespace A363028

/-- `A345378(A286028(n+1))` -/
def P2258499611706223681.Spec : Prop :=
  ∀ n, P2258499611706223681.a n = A363028 (n + 1)

end A363028

/-! ## A363028.P10948543118650602218

`A345378(A286696(n+1))`
-/

namespace A363028.P10948543118650602218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345378 (A286696 (n + 1)).toNat

end

end A363028.P10948543118650602218

namespace A363028

/-- `A345378(A286696(n+1))` -/
def P10948543118650602218.Spec : Prop :=
  ∀ n, P10948543118650602218.a n = A363028 (n + 1)

end A363028

/-!
# A363029: Expansion of Sum_{k>0} k * x^(4*k-2) / (1 - x^(5*k-3)).

The programs for A363029, the canonical program `A363029.P12163374075559595381` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363029 has offset 1).

The definition of A363029 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363029.P12163374075559595381

`A363926(A016885(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A363029

/-- `A363926(A016885(n))` -/
def P12163374075559595381.Spec : Prop :=
  ∀ n, P12163374075559595381.a n = A363029 (n + 1)

theorem P12163374075559595381.correct : P12163374075559595381.Spec := by
  intro n
  simp only [A363029, Nat.add_sub_cancel]

end A363029

/-! ## A363029.P5522231284361085192

`A363926(A016861(n)+2)`
-/

namespace A363029.P5522231284361085192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363926 (A016861 n + 2).toNat

end

end A363029.P5522231284361085192

namespace A363029

/-- `A363926(A016861(n)+2)` -/
def P5522231284361085192.Spec : Prop :=
  ∀ n, P5522231284361085192.a n = A363029 (n + 1)

theorem P5522231284361085192.correct : P5522231284361085192.Spec := by
  intro n
  simp only [A363029, Nat.add_sub_cancel, A363029.P5522231284361085192.a, A363029.P12163374075559595381.a, A016861, A016861.P12760207785627616280.a, A016885, A016885.P12442016633976001399.a, A363926, A363926.P69574837358207021.a, A001877, A001877.P11806035189121010381.f1, A001877.P11806035189121010381.a, A284280, A284280.P10246323075996560872.f1, A284280.P10246323075996560872.a, A047412, A047412.P4762915060399373107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363029

/-! ## A363029.P11007502440965248799

`A363926(25*n+15)`
-/

namespace A363029.P11007502440965248799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363926 (25 * n + 15)

end

end A363029.P11007502440965248799

namespace A363029

/-- `A363926(25*n+15)` -/
def P11007502440965248799.Spec : Prop :=
  ∀ n, P11007502440965248799.a n = A363029 (n + 1)

end A363029

/-! ## A363029.P14752372370310211831

`A095407(A387317(n+3))`
-/

namespace A363029.P14752372370310211831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095407 (A387317 (n + 3)).toNat

end

end A363029.P14752372370310211831

namespace A363029

/-- `A095407(A387317(n+3))` -/
def P14752372370310211831.Spec : Prop :=
  ∀ n, P14752372370310211831.a n = A363029 (n + 1)

end A363029

/-! ## A363029.P6244127850127496938

`and(A020659(A297570(n)), A163575(n+1))`
-/

namespace A363029.P6244127850127496938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020659 (A297570 n).toNat) (A163575 (n + 1))

end

end A363029.P6244127850127496938

namespace A363029

/-- `and(A020659(A297570(n)), A163575(n+1))` -/
def P6244127850127496938.Spec : Prop :=
  ∀ n, P6244127850127496938.a n = A363029 (n + 1)

end A363029

/-!
# A363030: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k-3)).

The programs for A363030, the canonical program `A363030.P10568656945390429790` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363030 has offset 1).

The definition of A363030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363030.P10568656945390429790

`A363926(5*n+2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A363030

/-- `A363926(5*n+2)` -/
def P10568656945390429790.Spec : Prop :=
  ∀ n, P10568656945390429790.a n = A363030 (n + 1)

theorem P10568656945390429790.correct : P10568656945390429790.Spec := by
  intro n
  simp only [A363030, Nat.add_sub_cancel]

end A363030

/-! ## A363030.P7355525212511711446

`gcd(A057567(n+1)%A347911(n+2), n%2)+n`
-/

namespace A363030.P7355525212511711446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A057567 (n + 1)) (A347911 (n + 2))) ((n % 2 : ℕ) : ℤ) + n

end

end A363030.P7355525212511711446

namespace A363030

/-- `gcd(A057567(n+1)%A347911(n+2), n%2)+n` -/
def P7355525212511711446.Spec : Prop :=
  ∀ n, (P7355525212511711446.a n : ℤ) = A363030 (n + 1)

end A363030

/-!
# A363031: a(n) = sigma(6*n+1). Sum of the divisors of 6*n+1, n >= 0.

The programs for A363031, the canonical program `A363031.P17719480416991960385` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363031 has offset 0).

The definition of A363031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363031.P17719480416991960385

`A000203(6*n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A363031

/-- `A000203(6*n+1)` -/
def P17719480416991960385.Spec : Prop :=
  ∀ n, P17719480416991960385.a n = A363031 n

theorem P17719480416991960385.correct : P17719480416991960385.Spec := by
  intro n
  simp only [A363031]

end A363031

/-! ## A363031.P4654714075395249834

`∑{d}[6*n+1, #]`
-/

namespace A363031.P4654714075395249834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A363031.P4654714075395249834

namespace A363031

/-- `∑{d}[6*n+1, #]` -/
def P4654714075395249834.Spec : Prop :=
  ∀ n, (P4654714075395249834.a n : ℤ) = A363031 n

end A363031

/-! ## A363031.P2416239913828570793

`A072815(n)+A016921(n)`
-/

namespace A363031.P2416239913828570793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 n + A016921 n

end

end A363031.P2416239913828570793

namespace A363031

/-- `A072815(n)+A016921(n)` -/
def P2416239913828570793.Spec : Prop :=
  ∀ n, P2416239913828570793.a n = A363031 n

end A363031

/-! ## A363031.P12345838481356388129

`A008438(3*n)`
-/

namespace A363031.P12345838481356388129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (3 * n)

end

end A363031.P12345838481356388129

namespace A363031

/-- `A008438(3*n)` -/
def P12345838481356388129.Spec : Prop :=
  ∀ n, P12345838481356388129.a n = A363031 n

theorem P12345838481356388129.correct : P12345838481356388129.Spec := by
  intro n
  simp only [A363031, Nat.add_sub_cancel, A363031.P12345838481356388129.a, A363031.P17719480416991960385.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008438, A008438.P10724248590758397010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363031

/-! ## A363031.P6317368222537323847

`A144614(2*n)`
-/

namespace A363031.P6317368222537323847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144614 (2 * n)

end

end A363031.P6317368222537323847

namespace A363031

/-- `A144614(2*n)` -/
def P6317368222537323847.Spec : Prop :=
  ∀ n, P6317368222537323847.a n = A363031 n

theorem P6317368222537323847.correct : P6317368222537323847.Spec := by
  intro n
  simp only [A363031, Nat.add_sub_cancel, A363031.P6317368222537323847.a, A363031.P17719480416991960385.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A144614, A144614.P17938140406171166888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A363031

/-! ## A363031.P4798882776280740689

`A033686(4*n)`
-/

namespace A363031.P4798882776280740689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033686 (4 * n)

end

end A363031.P4798882776280740689

namespace A363031

/-- `A033686(4*n)` -/
def P4798882776280740689.Spec : Prop :=
  ∀ n, P4798882776280740689.a n = A363031 n

end A363031

/-! ## A363031.P18397111631437871575

`A366442(Δ[n²])`
-/

namespace A363031.P18397111631437871575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366442 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A363031.P18397111631437871575

namespace A363031

/-- `A366442(Δ[n²])` -/
def P18397111631437871575.Spec : Prop :=
  ∀ n, P18397111631437871575.a n = A363031 n

end A363031

/-! ## A363031.P7980124614010193724

`A365412(2*n)/3`
-/

namespace A363031.P7980124614010193724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365412 (2 * n) : ℚ) / 3

end

end A363031.P7980124614010193724

namespace A363031

/-- `A365412(2*n)/3` -/
def P7980124614010193724.Spec : Prop :=
  ∀ n, P7980124614010193724.a n = (A363031 n : ℚ)

end A363031

/-! ## A363031.P13342875925814690137

`A363891(2*n+1)+A363889(2*n+1)`
-/

namespace A363031.P13342875925814690137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363891 (2 * n + 1) + A363889 (2 * n + 1)

end

end A363031.P13342875925814690137

namespace A363031

/-- `A363891(2*n+1)+A363889(2*n+1)` -/
def P13342875925814690137.Spec : Prop :=
  ∀ n, P13342875925814690137.a n = A363031 n

end A363031

/-! ## A363031.P12566207889630358758

`A134077(3*n)`
-/

namespace A363031.P12566207889630358758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134077 (3 * n)

end

end A363031.P12566207889630358758

namespace A363031

/-- `A134077(3*n)` -/
def P12566207889630358758.Spec : Prop :=
  ∀ n, P12566207889630358758.a n = A363031 n

end A363031

/-! ## A363031.P9588354996215487199

`A185717(3*n)`
-/

namespace A363031.P9588354996215487199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185717 (3 * n)

end

end A363031.P9588354996215487199

namespace A363031

/-- `A185717(3*n)` -/
def P9588354996215487199.Spec : Prop :=
  ∀ n, P9588354996215487199.a n = A363031 n

end A363031

/-! ## A363031.P13605823167726668827

`A252651(3*n)`
-/

namespace A363031.P13605823167726668827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252651 (3 * n)

end

end A363031.P13605823167726668827

namespace A363031

/-- `A252651(3*n)` -/
def P13605823167726668827.Spec : Prop :=
  ∀ n, P13605823167726668827.a n = A363031 n

end A363031

/-! ## A363031.P13086240991206359338

`A005880(3*n)/2`
-/

namespace A363031.P13086240991206359338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005880 (3 * n) : ℚ) / 2

end

end A363031.P13086240991206359338

namespace A363031

/-- `A005880(3*n)/2` -/
def P13086240991206359338.Spec : Prop :=
  ∀ n, P13086240991206359338.a n = (A363031 n : ℚ)

end A363031

/-! ## A363031.P10364446449697293459

`A069184(A007310(2*n+1))`
-/

namespace A363031.P10364446449697293459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069184 (A007310 (2 * n + 1)).toNat

end

end A363031.P10364446449697293459

namespace A363031

/-- `A069184(A007310(2*n+1))` -/
def P10364446449697293459.Spec : Prop :=
  ∀ n, P10364446449697293459.a n = A363031 n

end A363031

/-! ## A363031.P9749208342974628322

`A134079(4*n)`
-/

namespace A363031.P9749208342974628322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134079 (4 * n)

end

end A363031.P9749208342974628322

namespace A363031

/-- `A134079(4*n)` -/
def P9749208342974628322.Spec : Prop :=
  ∀ n, P9749208342974628322.a n = A363031 n

end A363031

/-! ## A363031.P10717676459823907749

`A118272(4*n)`
-/

namespace A363031.P10717676459823907749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118272 (4 * n)

end

end A363031.P10717676459823907749

namespace A363031

/-- `A118272(4*n)` -/
def P10717676459823907749.Spec : Prop :=
  ∀ n, P10717676459823907749.a n = A363031 n

end A363031

/-! ## A363031.P2543678586269409579

`A121443(6*n+1)`
-/

namespace A363031.P2543678586269409579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121443 (6 * n + 1)

end

end A363031.P2543678586269409579

namespace A363031

/-- `A121443(6*n+1)` -/
def P2543678586269409579.Spec : Prop :=
  ∀ n, P2543678586269409579.a n = A363031 n

end A363031

/-! ## A363031.P13224721754501416354

`A133739(6*n+1)`
-/

namespace A363031.P13224721754501416354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133739 (6 * n + 1)

end

end A363031.P13224721754501416354

namespace A363031

/-- `A133739(6*n+1)` -/
def P13224721754501416354.Spec : Prop :=
  ∀ n, P13224721754501416354.a n = A363031 n

end A363031

/-! ## A363031.P8197066108188344395

`A232356(6*n+1)`
-/

namespace A363031.P8197066108188344395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232356 (6 * n + 1)

end

end A363031.P8197066108188344395

namespace A363031

/-- `A232356(6*n+1)` -/
def P8197066108188344395.Spec : Prop :=
  ∀ n, P8197066108188344395.a n = A363031 n

end A363031

/-! ## A363031.P14052910709540528057

`A245092(A017533(n))`
-/

namespace A363031.P14052910709540528057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A017533 n).toNat

end

end A363031.P14052910709540528057

namespace A363031

/-- `A245092(A017533(n))` -/
def P14052910709540528057.Spec : Prop :=
  ∀ n, P14052910709540528057.a n = A363031 n

end A363031

/-!
# A363032: Expansion of Sum_{k>0} k * x^(3*k-1) / (1 - x^(5*k-3)).

The programs for A363032, the canonical program `A363032.P6425717790834151494` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363032 has offset 1).

The definition of A363032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363032.P6425717790834151494

`A363926(5*n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A363032

/-- `A363926(5*n+1)` -/
def P6425717790834151494.Spec : Prop :=
  ∀ n, P6425717790834151494.a n = A363032 (n + 1)

theorem P6425717790834151494.correct : P6425717790834151494.Spec := by
  intro n
  simp only [A363032, Nat.add_sub_cancel]

end A363032

/-! ## A363032.P6990783057164291207

`A363926(A016861(n))%A016861(n)`
-/

namespace A363032.P6990783057164291207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363926 (A016861 n).toNat) (A016861 n)

end

end A363032.P6990783057164291207

namespace A363032

/-- `A363926(A016861(n))%A016861(n)` -/
def P6990783057164291207.Spec : Prop :=
  ∀ n, P6990783057164291207.a n = A363032 (n + 1)

end A363032

/-!
# A363033: Sum of divisors of 5*n-1 of form 5*k+3.

The programs for A363033, the canonical program `A363033.P3715738251278879840` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363033 has offset 1).

The definition of A363033 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363033.P3715738251278879840

`A284281(5*(n+1)-1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A363033

/-- `A284281(5*(n+1)-1)` -/
def P3715738251278879840.Spec : Prop :=
  ∀ n, P3715738251278879840.a n = A363033 (n + 1)

theorem P3715738251278879840.correct : P3715738251278879840.Spec := by
  intro n
  simp only [A363033, Nat.add_sub_cancel]

end A363033

/-! ## A363033.P6134339207550561446

`A363899(A008587(n)+4)`
-/

namespace A363033.P6134339207550561446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363899 (A008587 n + 4).toNat

end

end A363033.P6134339207550561446

namespace A363033

/-- `A363899(A008587(n)+4)` -/
def P6134339207550561446.Spec : Prop :=
  ∀ n, P6134339207550561446.a n = A363033 (n + 1)

end A363033

/-! ## A363033.P13841138112610323862

`A363899(A016957(n)-n)`
-/

namespace A363033.P13841138112610323862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363899 (A016957 n - (n : ℤ)).toNat

end

end A363033.P13841138112610323862

namespace A363033

/-- `A363899(A016957(n)-n)` -/
def P13841138112610323862.Spec : Prop :=
  ∀ n, P13841138112610323862.a n = A363033 (n + 1)

end A363033

/-! ## A363033.P2663679726124249983

`A363899(A004767(n)+n+1)`
-/

namespace A363033.P2663679726124249983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363899 (A004767 n + (n + 1 : ℤ)).toNat

end

end A363033.P2663679726124249983

namespace A363033

/-- `A363899(A004767(n)+n+1)` -/
def P2663679726124249983.Spec : Prop :=
  ∀ n, P2663679726124249983.a n = A363033 (n + 1)

end A363033

/-! ## A363033.P17483692544863978359

`A363899(A008586(n+1)+n)`
-/

namespace A363033.P17483692544863978359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363899 (A008586 (n + 1) + (n : ℤ)).toNat

end

end A363033.P17483692544863978359

namespace A363033

/-- `A363899(A008586(n+1)+n)` -/
def P17483692544863978359.Spec : Prop :=
  ∀ n, P17483692544863978359.a n = A363033 (n + 1)

end A363033

/-! ## A363033.P13285480396560152921

`A363899(A014601(2*(n+1))+n)`
-/

namespace A363033.P13285480396560152921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363899 (A014601 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A363033.P13285480396560152921

namespace A363033

/-- `A363899(A014601(2*(n+1))+n)` -/
def P13285480396560152921.Spec : Prop :=
  ∀ n, P13285480396560152921.a n = A363033 (n + 1)

end A363033

/-! ## A363033.P4361393556398434082

`A363899(lt[A000010(n+1), A138997(n+1)])`
-/

namespace A363033.P4361393556398434082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363899 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A363033.P4361393556398434082

namespace A363033

/-- `A363899(lt[A000010(n+1), A138997(n+1)])` -/
def P4361393556398434082.Spec : Prop :=
  ∀ n, P4361393556398434082.a n = A363033 (n + 1)

end A363033

/-! ## A363033.P13205070292793389365

`A363899(lt[A187790(n+1), A138997(n+1)])`
-/

namespace A363033.P13205070292793389365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363899 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A363033.P13205070292793389365

namespace A363033

/-- `A363899(lt[A187790(n+1), A138997(n+1)])` -/
def P13205070292793389365.Spec : Prop :=
  ∀ n, P13205070292793389365.a n = A363033 (n + 1)

end A363033

/-! ## A363033.P15757266091901464857

`A363899(A005843(3*(n+1))-A027656(2*(n+1)))`
-/

namespace A363033.P15757266091901464857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363899 (A005843 (3 * (n + 1)) - A027656 (2 * (n + 1))).toNat

end

end A363033.P15757266091901464857

namespace A363033

/-- `A363899(A005843(3*(n+1))-A027656(2*(n+1)))` -/
def P15757266091901464857.Spec : Prop :=
  ∀ n, P15757266091901464857.a n = A363033 (n + 1)

end A363033

/-! ## A363033.P8162723270680435412

`A363899(lt[A138997(2*n+1), A138997(2*(n+1))])`
-/

namespace A363033.P8162723270680435412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363899 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A363033.P8162723270680435412

namespace A363033

/-- `A363899(lt[A138997(2*n+1), A138997(2*(n+1))])` -/
def P8162723270680435412.Spec : Prop :=
  ∀ n, P8162723270680435412.a n = A363033 (n + 1)

end A363033

/-!
# A363034: Sum of divisors of 5*n-2 of form 5*k+3.

The programs for A363034, the canonical program `A363034.P8832158960344729897` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363034 has offset 1).

The definition of A363034 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363034.P8832158960344729897

`A284281(5*(n+1)-2)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A363034

/-- `A284281(5*(n+1)-2)` -/
def P8832158960344729897.Spec : Prop :=
  ∀ n, P8832158960344729897.a n = A363034 (n + 1)

theorem P8832158960344729897.correct : P8832158960344729897.Spec := by
  intro n
  simp only [A363034, Nat.add_sub_cancel]

end A363034

/-! ## A363034.P12907159535934389146

`A363897(4*n+n+3)`
-/

namespace A363034.P12907159535934389146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363897 (4 * n + (n + 3))

end

end A363034.P12907159535934389146

namespace A363034

/-- `A363897(4*n+n+3)` -/
def P12907159535934389146.Spec : Prop :=
  ∀ n, P12907159535934389146.a n = A363034 (n + 1)

end A363034

/-!
# A363035: Sum of divisors of 5*n-3 of form 5*k+3.

The programs for A363035, the canonical program `A363035.P2703347928261583590` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363035 has offset 1).

The definition of A363035 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363035.P2703347928261583590

`A284281(5*(n+1)-3)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A363035

/-- `A284281(5*(n+1)-3)` -/
def P2703347928261583590.Spec : Prop :=
  ∀ n, P2703347928261583590.a n = A363035 (n + 1)

theorem P2703347928261583590.correct : P2703347928261583590.Spec := by
  intro n
  simp only [A363035, Nat.add_sub_cancel]

end A363035

/-! ## A363035.P14527502693952118808

`A363900(5*n+2)`
-/

namespace A363035.P14527502693952118808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363900 (5 * n + 2)

end

end A363035.P14527502693952118808

namespace A363035

/-- `A363900(5*n+2)` -/
def P14527502693952118808.Spec : Prop :=
  ∀ n, P14527502693952118808.a n = A363035 (n + 1)

end A363035

/-! ## A363035.P4054914694342459851

`A284281(A016861(n)+1)%A016861(n)`
-/

namespace A363035.P4054914694342459851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284281 (A016861 n + 1).toNat) (A016861 n)

end

end A363035.P4054914694342459851

namespace A363035

/-- `A284281(A016861(n)+1)%A016861(n)` -/
def P4054914694342459851.Spec : Prop :=
  ∀ n, P4054914694342459851.a n = A363035 (n + 1)

end A363035

/-! ## A363035.P3253808819365184400

`A141044(n+4)+A284281(A016861(n)+1)-1`
-/

namespace A363035.P3253808819365184400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (n + 4) + (A284281 (A016861 n + 1).toNat - 1)

end

end A363035.P3253808819365184400

namespace A363035

/-- `A141044(n+4)+A284281(A016861(n)+1)-1` -/
def P3253808819365184400.Spec : Prop :=
  ∀ n, P3253808819365184400.a n = A363035 (n + 1)

end A363035

/-! ## A363035.P18050077988056045219

`A284281(A016861(n)+1)^A266227(A050376(n+1))`
-/

namespace A363035.P18050077988056045219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284281 (A016861 n + 1).toNat : ℚ) ^ (A266227 (A050376 (n + 1)).toNat : ℤ)

end

end A363035.P18050077988056045219

namespace A363035

/-- `A284281(A016861(n)+1)^A266227(A050376(n+1))` -/
def P18050077988056045219.Spec : Prop :=
  ∀ n, P18050077988056045219.a n = (A363035 (n + 1) : ℚ)

end A363035

/-! ## A363035.P1589596872885250367

`A284281(A016861(n)+1)^A266227(A375709(n+1))`
-/

namespace A363035.P1589596872885250367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284281 (A016861 n + 1).toNat : ℚ) ^ (A266227 (A375709 (n + 1)).toNat : ℤ)

end

end A363035.P1589596872885250367

namespace A363035

/-- `A284281(A016861(n)+1)^A266227(A375709(n+1))` -/
def P1589596872885250367.Spec : Prop :=
  ∀ n, P1589596872885250367.a n = (A363035 (n + 1) : ℚ)

end A363035

/-! ## A363035.P2256633746870481736

`A284281(A016861(n)+1)+A010815(A339465(n+1))`
-/

namespace A363035.P2256633746870481736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (A016861 n + 1).toNat + A010815 (A339465 (n + 1)).toNat

end

end A363035.P2256633746870481736

namespace A363035

/-- `A284281(A016861(n)+1)+A010815(A339465(n+1))` -/
def P2256633746870481736.Spec : Prop :=
  ∀ n, P2256633746870481736.a n = A363035 (n + 1)

end A363035

/-! ## A363035.P14502960426664847483

`A284281(A016861(n)+1)+A162297(A326258(n+1))`
-/

namespace A363035.P14502960426664847483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284281 (A016861 n + 1).toNat + A162297 (A326258 (n + 1)).toNat

end

end A363035.P14502960426664847483

namespace A363035

/-- `A284281(A016861(n)+1)+A162297(A326258(n+1))` -/
def P14502960426664847483.Spec : Prop :=
  ∀ n, P14502960426664847483.a n = A363035 (n + 1)

end A363035

/-!
# A363037: Expansion of Sum_{k>0} x^k / (1 + x^(4*k)).

The programs for A363037, the canonical program `A363037.P17593486041959232839` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363037 has offset 1).

The definition of A363037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363037.P11543872783658794039

`∑{d}[n+1, A014017(#-1)]`
-/

namespace A363037.P11543872783658794039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A014017 (d - 1)

end

end A363037.P11543872783658794039

namespace A363037

/-- `∑{d}[n+1, A014017(#-1)]` -/
def P11543872783658794039.Spec : Prop :=
  ∀ n, P11543872783658794039.a n = A363037 (n + 1)

end A363037

/-! ## A363037.P2787727992823370628

`∑{d}[(n+1)/2^val(n+1, 2), A118828(#)]`
-/

namespace A363037.P2787727992823370628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A118828 d

end

end A363037.P2787727992823370628

namespace A363037

/-- `∑{d}[(n+1)/2^val(n+1, 2), A118828(#)]` -/
def P2787727992823370628.Spec : Prop :=
  ∀ n, P2787727992823370628.a n = A363037 (n + 1)

end A363037

/-! ## A363037.P6487879432618267325

`A027414(A000265(n+1))`
-/

namespace A363037.P6487879432618267325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027414 (A000265 (n + 1)).toNat

end

end A363037.P6487879432618267325

namespace A363037

/-- `A027414(A000265(n+1))` -/
def P6487879432618267325.Spec : Prop :=
  ∀ n, P6487879432618267325.a n = A363037 (n + 1)

end A363037

/-! ## A363037.P16039461431125093076

`A364032(n+1)+A035185(n+1)`
-/

namespace A363037.P16039461431125093076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364032 (n + 1) + A035185 (n + 1)

end

end A363037.P16039461431125093076

namespace A363037

/-- `A364032(n+1)+A035185(n+1)` -/
def P16039461431125093076.Spec : Prop :=
  ∀ n, P16039461431125093076.a n = A363037 (n + 1)

theorem P16039461431125093076.correct : P16039461431125093076.Spec := by
  intro n
  simp only [A363037, Nat.add_sub_cancel, A363037.P16039461431125093076.a, A363037.P17593486041959232839.a, A035185, A035185.P8037574016802671635.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A188171, A188171.P17289095504074848112.a, A364032, A364032.P15572008137104778974.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A002654, A002654.P11574922253888480122.a, A188170, A188170.P7143844993511574485.f1, A188170.P7143844993511574485.a, A253513, A253513.P7768194327896133816.a, A001826, A001826.P1518250824516108745.a, A122046, A122046.P14111764381793131601.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A363037

/-! ## A363037.P14954623569314920581

`A374061(n+1)+A216282(n+1)`
-/

namespace A363037.P14954623569314920581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374061 (n + 1) + A216282 (n + 1)

end

end A363037.P14954623569314920581

namespace A363037

/-- `A374061(n+1)+A216282(n+1)` -/
def P14954623569314920581.Spec : Prop :=
  ∀ n, P14954623569314920581.a n = A363037 (n + 1)

theorem P14954623569314920581.correct : P14954623569314920581.Spec := by
  intro n
  simp only [A363037, Nat.add_sub_cancel, A363037.P14954623569314920581.a, A363037.P17593486041959232839.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A188171, A188171.P17289095504074848112.a, A216282, A216282.P5463168406655024554.a, A374061, A374061.P16980433022031769018.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A002654, A002654.P11574922253888480122.a, A035185, A035185.P8037574016802671635.a, A253513, A253513.P7768194327896133816.a, A001826, A001826.P1518250824516108745.a, A364032, A364032.P15572008137104778974.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A188170, A188170.P7143844993511574485.f1, A188170.P7143844993511574485.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A363037

/-! ## A363037.P16422144584744064897

`A002325(n+1)-A364032(n+1)`
-/

namespace A363037.P16422144584744064897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1) - A364032 (n + 1)

end

end A363037.P16422144584744064897

namespace A363037

/-- `A002325(n+1)-A364032(n+1)` -/
def P16422144584744064897.Spec : Prop :=
  ∀ n, P16422144584744064897.a n = A363037 (n + 1)

end A363037

/-! ## A363037.P17593486041959232839

`A188169(n+1)-A188171(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A363037

/-- `A188169(n+1)-A188171(n+1)` -/
def P17593486041959232839.Spec : Prop :=
  ∀ n, P17593486041959232839.a n = A363037 (n + 1)

theorem P17593486041959232839.correct : P17593486041959232839.Spec := by
  intro n
  simp only [A363037, Nat.add_sub_cancel]

end A363037

/-! ## A363037.P15925665308326929230

`2*A188169(n+1)-A001826(n+1)`
-/

namespace A363037.P15925665308326929230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188169 (n + 1) - A001826 (n + 1)

end

end A363037.P15925665308326929230

namespace A363037

/-- `2*A188169(n+1)-A001826(n+1)` -/
def P15925665308326929230.Spec : Prop :=
  ∀ n, P15925665308326929230.a n = A363037 (n + 1)

theorem P15925665308326929230.correct : P15925665308326929230.Spec := by
  intro n
  simp only [A363037, Nat.add_sub_cancel, A363037.P15925665308326929230.a, A363037.P17593486041959232839.a, A001826, A001826.P1518250824516108745.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A188171, A188171.P17289095504074848112.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A002654, A002654.P11574922253888480122.a, A253513, A253513.P7768194327896133816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A363037

/-! ## A363037.P15645434123399029298

`A001826(n+1)-2*A188171(n+1)`
-/

namespace A363037.P15645434123399029298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (n + 1) - 2 * A188171 (n + 1)

end

end A363037.P15645434123399029298

namespace A363037

/-- `A001826(n+1)-2*A188171(n+1)` -/
def P15645434123399029298.Spec : Prop :=
  ∀ n, P15645434123399029298.a n = A363037 (n + 1)

theorem P15645434123399029298.correct : P15645434123399029298.Spec := by
  intro n
  simp only [A363037, Nat.add_sub_cancel, A363037.P15645434123399029298.a, A363037.P17593486041959232839.a, A001826, A001826.P1518250824516108745.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A188171, A188171.P17289095504074848112.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A002654, A002654.P11574922253888480122.a, A253513, A253513.P7768194327896133816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A363037

/-! ## A363037.P16546044308030491330

`∑{d}[n+1, A023900(#)*A364031((n+1)/#)]`
-/

namespace A363037.P16546044308030491330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A364031 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A363037.P16546044308030491330

namespace A363037

/-- `∑{d}[n+1, A023900(#)*A364031((n+1)/#)]` -/
def P16546044308030491330.Spec : Prop :=
  ∀ n, P16546044308030491330.a n = A363037 (n + 1)

end A363037

/-! ## A363037.P13136280205469559065

`A002325(n+1)+A188172(n+1)-A188170(n+1)`
-/

namespace A363037.P13136280205469559065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (n + 1) + (A188172 (n + 1) - A188170 (n + 1))

end

end A363037.P13136280205469559065

namespace A363037

/-- `A002325(n+1)+A188172(n+1)-A188170(n+1)` -/
def P13136280205469559065.Spec : Prop :=
  ∀ n, P13136280205469559065.a n = A363037 (n + 1)

theorem P13136280205469559065.correct : P13136280205469559065.Spec := by
  intro n
  simp only [A363037, Nat.add_sub_cancel, A363037.P13136280205469559065.a, A363037.P17593486041959232839.a, A002325, A002325.P14825616568919519912.a, A188169, A188169.P9022130587462569637.f1, A188169.P9022130587462569637.a, A188170, A188170.P7143844993511574485.f1, A188170.P7143844993511574485.a, A188171, A188171.P17289095504074848112.a, A188172, A188172.P3980200347470981964.f1, A188172.P3980200347470981964.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, A002654, A002654.P11574922253888480122.a, A122046, A122046.P14111764381793131601.a, A253513, A253513.P7768194327896133816.a, A001826, A001826.P1518250824516108745.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A363037

/-! ## A363037.P10827036260997203073

`A035185(n+1)+A188170(n+1)-A188172(n+1)`
-/

namespace A363037.P10827036260997203073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (n + 1) + (A188170 (n + 1) - A188172 (n + 1))

end

end A363037.P10827036260997203073

namespace A363037

/-- `A035185(n+1)+A188170(n+1)-A188172(n+1)` -/
def P10827036260997203073.Spec : Prop :=
  ∀ n, P10827036260997203073.a n = A363037 (n + 1)

end A363037

/-!
# A363040: a(n) is the smallest number which can be represented as the sum of n distinct perfect powers (A001597) in exactly n ways, or -1 if no such number exists.

The programs for A363040, there is no canonical definition to state claims against.
-/

/-! ## A363040.P13948138666428852255

`A353685(∑[∑[A051006(2*n+1)]])`
-/

namespace A363040.P13948138666428852255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051006 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353685 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A363040.P13948138666428852255

/-!
# A363041: Triangle read by rows: T(n,k) = Stirling2(n+1,k)/binomial(k+1,2) if n-k is even, else 0 (1 <= k <= n).

The programs for A363041, there is no canonical definition to state claims against.
-/

/-! ## A363041.P3483018895039862662

`A330101(A164652(n))`
-/

namespace A363041.P3483018895039862662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330101 (A164652 n).toNat

end

end A363041.P3483018895039862662

/-! ## A363041.P15551322293737004669

`A209389(A164652(n)+1)`
-/

namespace A363041.P15551322293737004669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209389 (A164652 n + 1).toNat

end

end A363041.P15551322293737004669

/-! ## A363041.P12497120527260109496

`comp[∑[4*n]]%2*A063987(A188644(n))`
-/

namespace A363041.P12497120527260109496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) * A063987 (A188644 n).toNat

end

end A363041.P12497120527260109496

/-! ## A363041.P3509443567831073570

`A164652(n)^A288942(2^∑{digits}[n, #%C(n, #)])`
-/

namespace A363041.P3509443567831073570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164652 n : ℚ) ^ (A288942 (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum) : ℤ)

end

end A363041.P3509443567831073570

/-! ## A363041.P4252672203461129458

`A127321(A157155(n)*A178116(n))`
-/

namespace A363041.P4252672203461129458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A157155 n * A178116 n).toNat

end

end A363041.P4252672203461129458

/-!
# A363042: Row sums of A363041.

The programs for A363042, there is no canonical definition to state claims against.
-/

/-! ## A363042.P5066240562243321606

`floor((A099952(n+1)+A002421(n+3))/5)`
-/

namespace A363042.P5066240562243321606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A099952 (n + 1) + A002421 (n + 3) : ℚ) / 5⌋

end

end A363042.P5066240562243321606

/-! ## A363042.P9208618605097328467

`A105518(A000828(n))+A000108(n)`
-/

namespace A363042.P9208618605097328467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 (A000828 n).toNat + A000108 n

end

end A363042.P9208618605097328467

/-! ## A363042.P10710826927392482759

`A104429(n)+A001221(A059167(n))`
-/

namespace A363042.P10710826927392482759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104429 n + A001221 (A059167 n).toNat

end

end A363042.P10710826927392482759

/-!
# A363043: Triangle read by rows: T(n,k) is the number of unlabeled graphs with n nodes and packing chromatic number k, 1 <= k <= n.

The programs for A363043, there is no canonical definition to state claims against.
-/

/-! ## A363043.P5398892280159555832

`A000062(A160449(n))%A333218(3*n+4)`
-/

namespace A363043.P5398892280159555832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000062 (A160449 n).toNat) (A333218 (3 * n + 4))

end

end A363043.P5398892280159555832

/-! ## A363043.P7347972411491193835

`gcd(A178106(2*(n+1)), A252462(A133713(n+2)))`
-/

namespace A363043.P7347972411491193835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178106 (2 * (n + 1))) (A252462 (A133713 (n + 2)).toNat)

end

end A363043.P7347972411491193835

/-!
# A363044: Triangle read by rows: T(n,k) is the number of unlabeled connected graphs with n nodes and packing chromatic number k, 1 <= k <= n.

The programs for A363044, there is no canonical definition to state claims against.
-/

/-! ## A363044.P211782805117353498

`A353698(A122542(n)²²)`
-/

namespace A363044.P211782805117353498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353698 ((A122542 n ^ 2) ^ 2).toNat

end

end A363044.P211782805117353498

/-! ## A363044.P5022639936994907721

`A304331(floor(exp(A048993(n))))`
-/

namespace A363044.P5022639936994907721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304331 ⌊Real.exp (A048993 n : ℝ)⌋.toNat

end

end A363044.P5022639936994907721

/-! ## A363044.P6366824356231685529

`A007953(A332670(n)^A089258(n))`
-/

namespace A363044.P6366824356231685529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A332670 n : ℚ) ^ (A089258 n : ℤ))).toNat

end

end A363044.P6366824356231685529

/-! ## A363044.P17624520055329480546

`A007953(A136431(n)^A136431(n+1))`
-/

namespace A363044.P17624520055329480546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A136431 n : ℚ) ^ (A136431 (n + 1) : ℤ))).toNat

end

end A363044.P17624520055329480546

/-! ## A363044.P14443585533789289421

`A007953(A055105(n+1)^A304717(n+3))`
-/

namespace A363044.P14443585533789289421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A055105 (n + 1) : ℚ) ^ (A304717 (n + 3) : ℤ))).toNat

end

end A363044.P14443585533789289421

/-!
# A363045: Number of partitions of n whose greatest part is a multiple of 3.

The programs for A363045, there is no canonical definition to state claims against.
-/

/-! ## A363045.P18396207738481698049

`A000041(n)-(A373015(n)+A373014(n))`
-/

namespace A363045.P18396207738481698049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A373015 n + A373014 n)

end

end A363045.P18396207738481698049

/-! ## A363045.P12340847638121945821

`∑[A128115(A283980(2*n+3))]-2*n`
-/

namespace A363045.P12340847638121945821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128115 (A283980 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n : ℤ)

end

end A363045.P12340847638121945821

/-! ## A363045.P10764698779300293765

`A321346(2*n)-A014378(A014378(n))`
-/

namespace A363045.P10764698779300293765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321346 (2 * n) - A014378 (A014378 n).toNat

end

end A363045.P10764698779300293765

/-! ## A363045.P7083409431607104805

`A087897(2*n+3)+A057428(A000129(n))`
-/

namespace A363045.P7083409431607104805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (2 * n + 3) + A057428 (A000129 n).toNat

end

end A363045.P7083409431607104805

/-! ## A363045.P17036944162889582318

`A087897(2*n+3)+A057428(A029964(n+1))`
-/

namespace A363045.P17036944162889582318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 (2 * n + 3) + A057428 (A029964 (n + 1)).toNat

end

end A363045.P17036944162889582318

/-!
# A363046: Number of partitions of n whose greatest part is a multiple of 4.

The programs for A363046, there is no canonical definition to state claims against.
-/

/-! ## A363046.P6193143733403815963

`(A292136(n)+A027187(n))/2`
-/

namespace A363046.P6193143733403815963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292136 n + A027187 n : ℚ) / 2

end

end A363046.P6193143733403815963

/-! ## A363046.P947173993345548709

`A026741(A292136(n)+A027187(n))`
-/

namespace A363046.P947173993345548709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A292136 n + A027187 n).toNat

end

end A363046.P947173993345548709

/-! ## A363046.P1892601988182778321

`A109700(eq[1, A339086(n)])`
-/

namespace A363046.P1892601988182778321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A363046.P1892601988182778321

/-! ## A363046.P15298345830744436050

`A308733(n)+A302777(A161190(3*(n+1)))`
-/

namespace A363046.P15298345830744436050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308733 n + A302777 (A161190 (3 * (n + 1))).toNat

end

end A363046.P15298345830744436050

/-! ## A363046.P4233719587670379532

`A277210(3*n+4)-A000035(A000051(n))`
-/

namespace A363046.P4233719587670379532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277210 (3 * n + 4) - A000035 (A000051 n).toNat

end

end A363046.P4233719587670379532

/-!
# A363047: Number of partitions of n whose greatest part is a multiple of 5.

The programs for A363047, there is no canonical definition to state claims against.
-/

/-! ## A363047.P8640588925005543982

`A308823(n)+A010054(A008859(n))`
-/

namespace A363047.P8640588925005543982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308823 n + A010054 (A008859 n).toNat

end

end A363047.P8640588925005543982

/-! ## A363047.P14799885797347259281

`A308823(n)+A000007(A022315(n))`
-/

namespace A363047.P14799885797347259281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308823 n + A000007 (A022315 n).toNat

end

end A363047.P14799885797347259281

/-! ## A363047.P16615587548435177983

`A308823(n)+A034188(A022324(n))`
-/

namespace A363047.P16615587548435177983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308823 n + A034188 (A022324 n).toNat

end

end A363047.P16615587548435177983

/-! ## A363047.P7029072896484457624

`A308823(n)+A034188(A022325(n))`
-/

namespace A363047.P7029072896484457624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308823 n + A034188 (A022325 n).toNat

end

end A363047.P7029072896484457624

/-! ## A363047.P2968376499674694756

`A308823(n)+A151933(A048726(n))`
-/

namespace A363047.P2968376499674694756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308823 n + A151933 (A048726 n).toNat

end

end A363047.P2968376499674694756

/-!
# A363048: Triangle T(n,k), n >= 0, 0 <= k <= n, read by rows, where T(n,k) is the number of partitions of n whose greatest part is a multiple of k.

The programs for A363048, there is no canonical definition to state claims against.
-/

/-! ## A363048.P68974636745929079

`or(A269250(A144554(n+1)), A327029(n))`
-/

namespace A363048.P68974636745929079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A269250 (A144554 (n + 1)).toNat) (A327029 n)

end

end A363048.P68974636745929079

/-! ## A363048.P6731230546739394888

`A022554(A381886(n))%A241210(2*(n+1))`
-/

namespace A363048.P6731230546739394888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022554 (A381886 n).toNat) (A241210 (2 * (n + 1)))

end

end A363048.P6731230546739394888

/-! ## A363048.P7385237327787181398

`A099563(A137452(n)²)`
-/

namespace A363048.P7385237327787181398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A137452 n ^ 2).toNat

end

end A363048.P7385237327787181398

/-! ## A363048.P13844265814581099521

`A325678(A263322(n+1))`
-/

namespace A363048.P13844265814581099521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A263322 (n + 1)).toNat

end

end A363048.P13844265814581099521

/-! ## A363048.P12822648651413755195

`A211795(A256893(n))%7`
-/

namespace A363048.P12822648651413755195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211795 (A256893 n).toNat) 7

end

end A363048.P12822648651413755195

/-!
# A363049: Even numbers k having fewer prime factors, counted with multiplicity, than k-1.

The programs for A363049, there is no canonical definition to state claims against.
-/

/-! ## A363049.P4255045580687672517

`∩[2*n, A339910(n+1)]`
-/

namespace A363049.P4255045580687672517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363049.P4255045580687672517

/-! ## A363049.P2548914053929651110

`∩[A339910(n+1), A100319(n+1)]`
-/

namespace A363049.P2548914053929651110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363049.P2548914053929651110

/-! ## A363049.P14608855423139191656

`∩[A339910(n+1), A115036(n+1)]`
-/

namespace A363049.P14608855423139191656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363049.P14608855423139191656

/-! ## A363049.P7417233303988029768

`∩[A339910(n+1), A348005(n+1)]`
-/

namespace A363049.P7417233303988029768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363049.P7417233303988029768

/-! ## A363049.P17715462580007407175

`∩[A339910(n+1), A076772(n)]`
-/

namespace A363049.P17715462580007407175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076772 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363049.P17715462580007407175

/-! ## A363049.P7484756098039917915

`∩[A339910(n+1), A005843(n)]`
-/

namespace A363049.P7484756098039917915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363049.P7484756098039917915

/-! ## A363049.P14616407354574984743

`∩[A339910(n+1), A020739(n)]`
-/

namespace A363049.P14616407354574984743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363049.P14616407354574984743

/-! ## A363049.P3033733491794814264

`∩[A339910(n+1), A020744(n)]`
-/

namespace A363049.P3033733491794814264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363049.P3033733491794814264

/-! ## A363049.P318737381792010502

`∩[A339910(n+1), A051755(n+2)]`
-/

namespace A363049.P318737381792010502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363049.P318737381792010502

/-! ## A363049.P13496070924566457992

`∩[A339910(n+1), A096851(n+1)]`
-/

namespace A363049.P13496070924566457992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339910 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363049.P13496070924566457992

/-!
# A363051: a(n) = Sum_{b=0..floor(sqrt(n/2)), n-b^2 is square} b.

The programs for A363051, there is no canonical definition to state claims against.
-/

/-! ## A363051.P9262862574503409511

`A069843(A000040(n+1)*A138337(n+1))`
-/

namespace A363051.P9262862574503409511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069843 (A000040 (n + 1) * A138337 (n + 1)).toNat

end

end A363051.P9262862574503409511

/-! ## A363051.P16257918834554459487

`A357879(A359625(n+1))`
-/

namespace A363051.P16257918834554459487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357879 (A359625 (n + 1)).toNat

end

end A363051.P16257918834554459487

/-! ## A363051.P4088023089186849328

`(A192954(3*n)*A325702(3*(n+1)))%3`
-/

namespace A363051.P4088023089186849328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192954 (3 * n) * A325702 (3 * (n + 1))) 3

end

end A363051.P4088023089186849328

/-! ## A363051.P15832925569359386374

`val(A103354(n+1)*A324516(3*n+5)+1, 2)`
-/

namespace A363051.P15832925569359386374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A103354 (n + 1) * A324516 (3 * n + 5) + 1).toNat 2

end

end A363051.P15832925569359386374

/-! ## A363051.P17376509646010527600

`A261222(A027423(n))%A060118(n)`
-/

namespace A363051.P17376509646010527600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261222 (A027423 n).toNat) (A060118 n)

end

end A363051.P17376509646010527600

/-!
# A363053: Sum of divisors of 5*n-4 of form 5*k+3.

The programs for A363053, the canonical program `A363053.P13013895526662378901` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363053 has offset 1).

The definition of A363053 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284281, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363053.P13013895526662378901

`A284281(5*n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A363053

/-- `A284281(5*n+1)` -/
def P13013895526662378901.Spec : Prop :=
  ∀ n, P13013895526662378901.a n = A363053 (n + 1)

theorem P13013895526662378901.correct : P13013895526662378901.Spec := by
  intro n
  simp only [A363053, Nat.add_sub_cancel]

end A363053

/-! ## A363053.P3468293616094967229

`A363898(A008587(n)+1)`
-/

namespace A363053.P3468293616094967229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363898 (A008587 n + 1).toNat

end

end A363053.P3468293616094967229

namespace A363053

/-- `A363898(A008587(n)+1)` -/
def P3468293616094967229.Spec : Prop :=
  ∀ n, P3468293616094967229.a n = A363053 (n + 1)

end A363053

/-! ## A363053.P16656397820512108696

`A363898(A005843(n)+3*n+1)`
-/

namespace A363053.P16656397820512108696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363898 (A005843 n + (3 * n + 1 : ℤ)).toNat

end

end A363053.P16656397820512108696

namespace A363053

/-- `A363898(A005843(n)+3*n+1)` -/
def P16656397820512108696.Spec : Prop :=
  ∀ n, P16656397820512108696.a n = A363053 (n + 1)

end A363053

/-! ## A363053.P18293747616564349752

`A363898(eq[A284280(n+1), A363897(n+1)])`
-/

namespace A363053.P18293747616564349752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363898 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A363053.P18293747616564349752

namespace A363053

/-- `A363898(eq[A284280(n+1), A363897(n+1)])` -/
def P18293747616564349752.Spec : Prop :=
  ∀ n, P18293747616564349752.a n = A363053 (n + 1)

end A363053

/-! ## A363053.P4174299617109806747

`A363898(eq[A284280(2*(n+1)), A363898(2*(n+1))])`
-/

namespace A363053.P4174299617109806747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284280 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363898 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363898 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A363053.P4174299617109806747

namespace A363053

/-- `A363898(eq[A284280(2*(n+1)), A363898(2*(n+1))])` -/
def P4174299617109806747.Spec : Prop :=
  ∀ n, P4174299617109806747.a n = A363053 (n + 1)

end A363053

/-!
# A363054: Look and say sequence: describe the previous term (method A, starting with 20).

The programs for A363054, there is no canonical definition to state claims against.
-/

/-! ## A363054.P4286466426361857176

`A158081(n+3)-3`
-/

namespace A363054.P4286466426361857176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158081 (n + 3) - 3

end

end A363054.P4286466426361857176

/-!
# A363056: Graph bandwidth of the n X n queen graph.

The programs for A363056, there is no canonical definition to state claims against.
-/

/-! ## A363056.P13304046198717822196

`A194147(n+1)-A189631(n+1)`
-/

namespace A363056.P13304046198717822196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194147 (n + 1) - A189631 (n + 1)

end

end A363056.P13304046198717822196

/-! ## A363056.P15736243982466573058

`A320840(A084684(n+1))`
-/

namespace A363056.P15736243982466573058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320840 (A084684 (n + 1)).toNat

end

end A363056.P15736243982466573058

/-! ## A363056.P16473875534254135831

`A335599(A182185(n+1))`
-/

namespace A363056.P16473875534254135831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335599 (A182185 (n + 1)).toNat

end

end A363056.P16473875534254135831

/-! ## A363056.P17523555917349138103

`∑[A253894(∑[A001790(n)])]`
-/

namespace A363056.P17523555917349138103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253894 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363056.P17523555917349138103

/-!
# A363057: Run lengths of the Fibonacci word (A003849).

The programs for A363057, the canonical program `A363057.P493503618799946074` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363057 has offset 1).

The definition of A363057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363057.P9998563593937973165

`Δ[floor(ceil(n/2)/ϕ)]+1`
-/

namespace A363057.P9998563593937973165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(n : ℚ) / 2⌉ : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A363057.P9998563593937973165

namespace A363057

/-- `Δ[floor(ceil(n/2)/ϕ)]+1` -/
def P9998563593937973165.Spec : Prop :=
  ∀ n, P9998563593937973165.a n = A363057 (n + 1)

end A363057

/-! ## A363057.P12220838942964967576

`gcd(a(floor(n/ϕ))+1, gcd(4, n))` with `a(0)=1`
-/

namespace A363057.P12220838942964967576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd (a ⌊(n : ℝ) / Real.goldenRatio⌋.toNat + 1) (Nat.gcd 4 n)

end

end A363057.P12220838942964967576

namespace A363057

/-- `gcd(a(floor(n/ϕ))+1, gcd(4, n))` -/
def P12220838942964967576.Spec : Prop :=
  ∀ n, (P12220838942964967576.a n : ℤ) = A363057 (n + 1)

end A363057

/-! ## A363057.P15270816249507912906

`A284620(n+1)!`
-/

namespace A363057.P15270816249507912906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A284620 (n + 1)).toNat

end

end A363057.P15270816249507912906

namespace A363057

/-- `A284620(n+1)!` -/
def P15270816249507912906.Spec : Prop :=
  ∀ n, (P15270816249507912906.a n : ℤ) = A363057 (n + 1)

end A363057

/-! ## A363057.P493503618799946074

`A001468(A142150(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A363057

/-- `A001468(A142150(n))` -/
def P493503618799946074.Spec : Prop :=
  ∀ n, P493503618799946074.a n = A363057 (n + 1)

theorem P493503618799946074.correct : P493503618799946074.Spec := by
  intro n
  simp only [A363057, Nat.add_sub_cancel]

end A363057

/-! ## A363057.P1252186840841677791

`A000034(A163873(n+1))`
-/

namespace A363057.P1252186840841677791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A163873 (n + 1)).toNat

end

end A363057.P1252186840841677791

namespace A363057

/-- `A000034(A163873(n+1))` -/
def P1252186840841677791.Spec : Prop :=
  ∀ n, P1252186840841677791.a n = A363057 (n + 1)

end A363057

/-! ## A363057.P1462194631188729617

`gcd(n, A001468(A004525(n)))`
-/

namespace A363057.P1462194631188729617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A001468 (A004525 n).toNat)

end

end A363057.P1462194631188729617

namespace A363057

/-- `gcd(n, A001468(A004525(n)))` -/
def P1462194631188729617.Spec : Prop :=
  ∀ n, (P1462194631188729617.a n : ℤ) = A363057 (n + 1)

end A363057

/-! ## A363057.P9085311303300812155

`round(sqrt(A108103(n+2)))`
-/

namespace A363057.P9085311303300812155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A108103 (n + 2) : ℝ))

end

end A363057.P9085311303300812155

namespace A363057

/-- `round(sqrt(A108103(n+2)))` -/
def P9085311303300812155.Spec : Prop :=
  ∀ n, P9085311303300812155.a n = A363057 (n + 1)

end A363057

/-! ## A363057.P4921007203517958012

`Δ[comp[A003623(n+1)]]`
-/

namespace A363057.P4921007203517958012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A363057.P4921007203517958012

namespace A363057

/-- `Δ[comp[A003623(n+1)]]` -/
def P4921007203517958012.Spec : Prop :=
  ∀ n, P4921007203517958012.a n = A363057 (n + 1)

end A363057

/-! ## A363057.P11921296188324276815

`Δ[A188010(n+2)]`
-/

namespace A363057.P11921296188324276815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363057.P11921296188324276815

namespace A363057

/-- `Δ[A188010(n+2)]` -/
def P11921296188324276815.Spec : Prop :=
  ∀ n, P11921296188324276815.a n = A363057 (n + 1)

end A363057

/-! ## A363057.P11883780261084643643

`A245977(A188468(n+1))`
-/

namespace A363057.P11883780261084643643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245977 (A188468 (n + 1)).toNat

end

end A363057.P11883780261084643643

namespace A363057

/-- `A245977(A188468(n+1))` -/
def P11883780261084643643.Spec : Prop :=
  ∀ n, P11883780261084643643.a n = A363057 (n + 1)

end A363057

/-!
# A363058: Number of ways to get n points in a bridge hand.

The programs for A363058, there is no canonical definition to state claims against.
-/

/-! ## A363058.P18272385641123618877

`A156723(A023201(n+1)+A001511(n+1))`
-/

namespace A363058.P18272385641123618877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156723 (A023201 (n + 1) + A001511 (n + 1)).toNat

end

end A363058.P18272385641123618877

/-! ## A363058.P1301205039450964266

`A196155(A168497(n+1))`
-/

namespace A363058.P1301205039450964266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196155 (A168497 (n + 1)).toNat

end

end A363058.P1301205039450964266

/-! ## A363058.P4471873223203293744

`A342083(A000079(n+2))+ceil(n-sqrt(n))`
-/

namespace A363058.P4471873223203293744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342083 (A000079 (n + 2)).toNat + ⌈(n : ℝ) - Real.sqrt (n : ℝ)⌉

end

end A363058.P4471873223203293744

/-! ## A363058.P12669475068630054459

`A069905(n)+A000720(A123065(n+1))`
-/

namespace A363058.P12669475068630054459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n + A000720 (A123065 (n + 1)).toNat

end

end A363058.P12669475068630054459

/-! ## A363058.P14656057568729433467

`A085118(n+1)-A078880(A099615(n+3))`
-/

namespace A363058.P14656057568729433467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1) - A078880 (A099615 (n + 3)).toNat

end

end A363058.P14656057568729433467

/-!
# A363059: Numbers k such that the number of divisors of k^2 equals the number of divisors of phi(k), where phi is the Euler totient function.

The programs for A363059, there is no canonical definition to state claims against.
-/

/-! ## A363059.P16229634223619198758

`eq[A048691(n+1), A062821(n+1)]+1`
-/

namespace A363059.P16229634223619198758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A363059.P16229634223619198758

/-! ## A363059.P11090746830357568430

`eq[A000005((n+1)²), A062821(n+1)]+1`
-/

namespace A363059.P11090746830357568430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A363059.P11090746830357568430

/-!
# A363060: Numbers k such that 5 is the first digit of 2^k.

The programs for A363060, the canonical program `A363060.P4728981238833991095` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363060 has offset 1).

The definition of A363060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3958 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363060.P4728981238833991095

`eq[5, A008952(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A363060

/-- `eq[5, A008952(n)]` -/
def P4728981238833991095.Spec : Prop :=
  ∀ n, (P4728981238833991095.a n : ℤ) = A363060 (n + 1)

theorem P4728981238833991095.correct : P4728981238833991095.Spec := by
  intro n
  simp only [A363060, Nat.add_sub_cancel]

end A363060

/-! ## A363060.P13795703306238864637

`eq[5, A000030(A247243(n+1))]`
-/

namespace A363060.P13795703306238864637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A247243 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363060.P13795703306238864637

namespace A363060

/-- `eq[5, A000030(A247243(n+1))]` -/
def P13795703306238864637.Spec : Prop :=
  ∀ n, (P13795703306238864637.a n : ℤ) = A363060 (n + 1)

end A363060

/-!
# A363061: Number of k <= P(n) such that rad(k) | P(n), where rad(n) = A007947(n) and P(n) = A002110(n).

The programs for A363061, there is no canonical definition to state claims against.
-/

/-! ## A363061.P1967656336257885531

`A010846(A002110(n))`
-/

namespace A363061.P1967656336257885531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A002110 n).toNat

end

end A363061.P1967656336257885531

/-! ## A363061.P2345768424302336332

`A383180(2^n-1)`
-/

namespace A363061.P2345768424302336332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383180 (2 ^ n - 1)

end

end A363061.P2345768424302336332

/-! ## A363061.P7141294258019860971

`record[A383180(A006068(n))]`
-/

namespace A363061.P7141294258019860971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383180 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363061.P7141294258019860971

/-! ## A363061.P10373161883813189802

`A364225(A098719(n+1))`
-/

namespace A363061.P10373161883813189802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364225 (A098719 (n + 1)).toNat

end

end A363061.P10373161883813189802

/-! ## A363061.P3127180914714331901

`A394753(A331938(n))`
-/

namespace A363061.P3127180914714331901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394753 (A331938 n).toNat

end

end A363061.P3127180914714331901

/-!
# A363064: Number of connected Laplacian integral graphs on n vertices.

The programs for A363064, there is no canonical definition to state claims against.
-/

/-! ## A363064.P7726591176293220514

`A196545(n+1)+A130836(A242193(n+1))`
-/

namespace A363064.P7726591176293220514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196545 (n + 1) + A130836 (A242193 (n + 1)).toNat

end

end A363064.P7726591176293220514

/-!
# A363065: Number of Laplacian integral graphs on n vertices.

The programs for A363065, there is no canonical definition to state claims against.
-/

/-! ## A363065.P4331214008473747006

`A108141(A148122(n+1))`
-/

namespace A363065.P4331214008473747006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A148122 (n + 1)).toNat

end

end A363065.P4331214008473747006

/-! ## A363065.P11589835431236191017

`A108141(A148123(n+1))`
-/

namespace A363065.P11589835431236191017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A148123 (n + 1)).toNat

end

end A363065.P11589835431236191017

/-! ## A363065.P15076582037261452684

`Δ[A325781(∑[A333313(n)])]`
-/

namespace A363065.P15076582037261452684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333313 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A363065.P15076582037261452684

/-!
# A363066: Number of partitions p of n such that (1/3)*max(p) is a part of p.

The programs for A363066, there is no canonical definition to state claims against.
-/

/-! ## A363066.P6022963822133638257

`A277210(3*n)`
-/

namespace A363066.P6022963822133638257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277210 (3 * n)

end

end A363066.P6022963822133638257

/-! ## A363066.P2599082282862898989

`or(A000038(n+1), A277210(A008585(n)))`
-/

namespace A363066.P2599082282862898989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 (n + 1)) (A277210 (A008585 n).toNat)

end

end A363066.P2599082282862898989

/-! ## A363066.P11784493638604976540

`A277210(A008585(n))%A014551(n)`
-/

namespace A363066.P11784493638604976540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277210 (A008585 n).toNat) (A014551 n)

end

end A363066.P11784493638604976540

/-! ## A363066.P10639010984293411222

`A277210(A008585(n))+and(n, A198633(n))`
-/

namespace A363066.P10639010984293411222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277210 (A008585 n).toNat + Int.land (n : ℤ) (A198633 n)

end

end A363066.P10639010984293411222

/-! ## A363066.P4607841310594190131

`A277210(A008585(n))/A339890(A106972(n+1))`
-/

namespace A363066.P4607841310594190131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277210 (A008585 n).toNat : ℚ) / (A339890 (A106972 (n + 1)).toNat : ℚ)

end

end A363066.P4607841310594190131

/-! ## A363066.P4025413064153166036

`A277210(A008585(n))/A339890(A227756(n+1))`
-/

namespace A363066.P4025413064153166036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277210 (A008585 n).toNat : ℚ) / (A339890 (A227756 (n + 1)).toNat : ℚ)

end

end A363066.P4025413064153166036

/-! ## A363066.P11271428451142306179

`A277210(A008585(n))+and(n, A159490(n))`
-/

namespace A363066.P11271428451142306179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277210 (A008585 n).toNat + Int.land (n : ℤ) (A159490 n)

end

end A363066.P11271428451142306179

/-!
# A363067: Number of partitions p of n such that (1/4)*max(p) is a part of p.

The programs for A363067, there is no canonical definition to state claims against.
-/

/-! ## A363067.P2796841483465790290

`A117957(4*n)`
-/

namespace A363067.P2796841483465790290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117957 (4 * n)

end

end A363067.P2796841483465790290

/-! ## A363067.P2896027168960310433

`A117957(A008574(n))+A000007(n)`
-/

namespace A363067.P2896027168960310433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117957 (A008574 n).toNat + A000007 n

end

end A363067.P2896027168960310433

/-! ## A363067.P13275437273540410876

`A117957(A008574(n))+A063524(n+1)`
-/

namespace A363067.P13275437273540410876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117957 (A008574 n).toNat + A063524 (n + 1)

end

end A363067.P13275437273540410876

/-! ## A363067.P11017116772026733194

`A326168(A018293(n+1))+A026811(n)`
-/

namespace A363067.P11017116772026733194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326168 (A018293 (n + 1)).toNat + A026811 n

end

end A363067.P11017116772026733194

/-!
# A363068: Number of partitions p of n such that (1/5)*max(p) is a part of p.

The programs for A363068, there is no canonical definition to state claims against.
-/

/-! ## A363068.P8662910025549697008

`A277264(5*n)`
-/

namespace A363068.P8662910025549697008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277264 (5 * n)

end

end A363068.P8662910025549697008

/-! ## A363068.P6851921833492220626

`A026812(n)+A010054(A349323(3*n+4))`
-/

namespace A363068.P6851921833492220626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 n + A010054 (A349323 (3 * n + 4)).toNat

end

end A363068.P6851921833492220626

/-! ## A363068.P5483415278147058351

`A026812(n)+A000007(A001911(n))`
-/

namespace A363068.P5483415278147058351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 n + A000007 (A001911 n).toNat

end

end A363068.P5483415278147058351

/-! ## A363068.P14879550814662097518

`A026812(n)+A003982(A001045(n))`
-/

namespace A363068.P14879550814662097518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 n + A003982 (A001045 n).toNat

end

end A363068.P14879550814662097518

/-! ## A363068.P483129396329342549

`A026812(n)+A000007(A022087(n))`
-/

namespace A363068.P483129396329342549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 n + A000007 (A022087 n).toNat

end

end A363068.P483129396329342549

/-!
# A363069: Size of the largest subset of {1,2,...,n} such that no two elements sum to a perfect square.

The programs for A363069, there is no canonical definition to state claims against.
-/

/-! ## A363069.P7785443294524257099

`A088462(n+1)+∑{p}[A090192(n+1), val(#, 5)]`
-/

namespace A363069.P7785443294524257099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation p 5 : ℕ) : ℤ)

end

end A363069.P7785443294524257099

/-!
# A363070: Take the terms 0..n of the infinite Fibonacci word A003849, regard them as a number in Fibonacci base.

The programs for A363070, the canonical program `A363070.P873385235688535805` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363070 has offset 0).

The definition of A363070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363070.P16211403830029864553

`a(n-1)+a(n-2)+A005713(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A363070.P16211403830029864553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) + A005713 (n - 1)

end

end A363070.P16211403830029864553

namespace A363070

/-- `a(n-1)+a(n-2)+A005713(n-1)` -/
def P16211403830029864553.Spec : Prop :=
  ∀ n, P16211403830029864553.a n = A363070 n

end A363070

/-! ## A363070.P873385235688535805

`a(n-1)+a(n-2)+A003849(n)+A003849(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A363070

/-- `a(n-1)+a(n-2)+A003849(n)+A003849(n-1)` -/
def P873385235688535805.Spec : Prop :=
  ∀ n, P873385235688535805.a n = A363070 n

theorem P873385235688535805.correct : P873385235688535805.Spec := by
  intro n
  simp only [A363070]

end A363070

/-! ## A363070.P7532637009767296656

`A022290(A182028(n))`
-/

namespace A363070.P7532637009767296656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A182028 n).toNat

end

end A363070.P7532637009767296656

namespace A363070

/-- `A022290(A182028(n))` -/
def P7532637009767296656.Spec : Prop :=
  ∀ n, P7532637009767296656.a n = A363070 n

end A363070

/-! ## A363070.P17803530603854872849

`(A018145(n)-1)%A213974(3*n+1)`
-/

namespace A363070.P17803530603854872849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018145 n - 1) (A213974 (3 * n + 1))

end

end A363070.P17803530603854872849

namespace A363070

/-- `(A018145(n)-1)%A213974(3*n+1)` -/
def P17803530603854872849.Spec : Prop :=
  ∀ n, P17803530603854872849.a n = A363070 n

end A363070

/-! ## A363070.P7336598257551250739

`A018145(n)-A245477(A056040(n))`
-/

namespace A363070.P7336598257551250739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018145 n - A245477 (A056040 n).toNat

end

end A363070.P7336598257551250739

namespace A363070

/-- `A018145(n)-A245477(A056040(n))` -/
def P7336598257551250739.Spec : Prop :=
  ∀ n, P7336598257551250739.a n = A363070 n

end A363070

/-!
# A363071: Number of partitions of [n] into m blocks that are ordered with increasing least elements and where block j contains n+1-j (m in {0..ceiling(n/2)}, j in {1..m}).

The programs for A363071, there is no canonical definition to state claims against.
-/

/-! ## A363071.P17145424777596803851

`A171367(abs(1-n))+A171367(n)`
-/

namespace A363071.P17145424777596803851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171367 |1 - (n : ℤ)|.toNat + A171367 n

end

end A363071.P17145424777596803851

/-! ## A363071.P5472161749538621335

`A185283(A126472(n))`
-/

namespace A363071.P5472161749538621335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A126472 n).toNat

end

end A363071.P5472161749538621335

/-! ## A363071.P15064653806180915369

`A140516(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A363071.P15064653806180915369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A140516 (a (n - 1)).toNat

end

end A363071.P15064653806180915369

/-! ## A363071.P12873755365489789060

`A121208(A035055(n))`
-/

namespace A363071.P12873755365489789060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121208 (A035055 n).toNat

end

end A363071.P12873755365489789060

/-! ## A363071.P15166196223221777875

`A120401(A075853(n))`
-/

namespace A363071.P15166196223221777875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120401 (A075853 n).toNat

end

end A363071.P15166196223221777875

/-!
# A363073: Number of set partitions of [n] such that each element is contained in a block whose block size parity coincides with the parity of the element.

The programs for A363073, there is no canonical definition to state claims against.
-/

/-! ## A363073.P15322070831527918925

`and(A098504(n), A325468(A098504(n)))`
-/

namespace A363073.P15322070831527918925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A098504 n) (A325468 (A098504 n).toNat)

end

end A363073.P15322070831527918925

/-! ## A363073.P14212753615559853023

`A353856(A188183(n+1)%A026385(n))`
-/

namespace A363073.P14212753615559853023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353856 (Int.tmod (A188183 (n + 1)) (A026385 n)).toNat

end

end A363073.P14212753615559853023

/-! ## A363073.P17652372109096996877

`A068933(A048994(n+2)+A000032(n+2))`
-/

namespace A363073.P17652372109096996877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068933 (A048994 (n + 2) + A000032 (n + 2)).toNat

end

end A363073.P17652372109096996877

/-!
# A363074: Prime numbers that are the exact average of two consecutive odd semiprimes.

The programs for A363074, there is no canonical definition to state claims against.
-/

/-! ## A363074.P5146497286360101863

`record[A006530(Δ[A046315(n+3)²])]`
-/

namespace A363074.P5146497286360101863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 3) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363074.P5146497286360101863

/-!
# A363076: Number of partitions of n such that 4*(least part) + 1 = greatest part.

The programs for A363076, there is no canonical definition to state claims against.
-/

/-! ## A363076.P12850819211011048672

`A214411(A096812(n))+A026811(n)`
-/

namespace A363076.P12850819211011048672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (A096812 n).toNat + A026811 n

end

end A363076.P12850819211011048672

/-!
# A363080: Number of hexagonal lattice points within a hexagram centered at a lattice point and with outermost vertices at the six lattice points n steps outward from the central point.

The programs for A363080, the canonical program `A363080.P6055736893882002010` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363080 has offset 0).

The definition of A363080 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363080.P6055736893882002010

`6*ceil(n*(n+1)/3)+1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A363080

/-- `6*ceil(n*(n+1)/3)+1` -/
def P6055736893882002010.Spec : Prop :=
  ∀ n, P6055736893882002010.a n = A363080 n

theorem P6055736893882002010.correct : P6055736893882002010.Spec := by
  intro n
  simp only [A363080]

end A363080

/-! ## A363080.P2108009446766216340

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=5, a(2)=0, a(3)=6, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A363080.P2108009446766216340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 0, 6, 6] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363080.P2108009446766216340

namespace A363080

/-- `∑[∑[floor(a(n-3))]]` -/
def P2108009446766216340.Spec : Prop :=
  ∀ n, (P2108009446766216340.a n : ℤ) = A363080 n

end A363080

/-! ## A363080.P15875861327427260975

`∑[A008458(A004396(n))]`
-/

namespace A363080.P15875861327427260975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363080.P15875861327427260975

namespace A363080

/-- `∑[A008458(A004396(n))]` -/
def P15875861327427260975.Spec : Prop :=
  ∀ n, P15875861327427260975.a n = A363080 n

end A363080

/-! ## A363080.P1531595110921772041

`∑[A008458(A008458(n)-A219529(n))]`
-/

namespace A363080.P1531595110921772041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008458 n - A219529 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363080.P1531595110921772041

namespace A363080

/-- `∑[A008458(A008458(n)-A219529(n))]` -/
def P1531595110921772041.Spec : Prop :=
  ∀ n, P1531595110921772041.a n = A363080 n

end A363080

/-! ## A363080.P4854403976695841281

`∑[A008486(2*A004396(n))]`
-/

namespace A363080.P4854403976695841281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363080.P4854403976695841281

namespace A363080

/-- `∑[A008486(2*A004396(n))]` -/
def P4854403976695841281.Spec : Prop :=
  ∀ n, P4854403976695841281.a n = A363080 n

end A363080

/-! ## A363080.P17707132340309272420

`∑[A022998(A074305(n))+A008576(n)]`
-/

namespace A363080.P17707132340309272420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A074305 n).toNat + A008576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363080.P17707132340309272420

namespace A363080

/-- `∑[A022998(A074305(n))+A008576(n)]` -/
def P17707132340309272420.Spec : Prop :=
  ∀ n, P17707132340309272420.a n = A363080 n

end A363080

/-! ## A363080.P11864836893420863611

`A016921(A069905(2*n+1))`
-/

namespace A363080.P11864836893420863611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A069905 (2 * n + 1)).toNat

end

end A363080.P11864836893420863611

namespace A363080

/-- `A016921(A069905(2*n+1))` -/
def P11864836893420863611.Spec : Prop :=
  ∀ n, P11864836893420863611.a n = A363080 n

end A363080

/-! ## A363080.P9671793966703244061

`A016777(2*A004396(∑[n]))`
-/

namespace A363080.P9671793966703244061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * A004396 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A363080.P9671793966703244061

namespace A363080

/-- `A016777(2*A004396(∑[n]))` -/
def P9671793966703244061.Spec : Prop :=
  ∀ n, P9671793966703244061.a n = A363080 n

end A363080

/-! ## A363080.P856051742275333914

`A016777(2*A069905(2*n+1))`
-/

namespace A363080.P856051742275333914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * A069905 (2 * n + 1)).toNat

end

end A363080.P856051742275333914

namespace A363080

/-- `A016777(2*A069905(2*n+1))` -/
def P856051742275333914.Spec : Prop :=
  ∀ n, P856051742275333914.a n = A363080 n

end A363080

/-! ## A363080.P2887854782446876249

`A047241(A008810(n+1)+A008810(n))`
-/

namespace A363080.P2887854782446876249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A008810 (n + 1) + A008810 n).toNat

end

end A363080.P2887854782446876249

namespace A363080

/-- `A047241(A008810(n+1)+A008810(n))` -/
def P2887854782446876249.Spec : Prop :=
  ∀ n, P2887854782446876249.a n = A363080 n

end A363080

/-! ## A363080.P9211385711883002726

`abs(A138341(∑[2*n]))`
-/

namespace A363080.P9211385711883002726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138341 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A363080.P9211385711883002726

namespace A363080

/-- `abs(A138341(∑[2*n]))` -/
def P9211385711883002726.Spec : Prop :=
  ∀ n, P9211385711883002726.a n = A363080 n

end A363080

/-! ## A363080.P13775342055020696287

`A061891(n²+n+1)`
-/

namespace A363080.P13775342055020696287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061891 (n ^ 2 + (n + 1))

end

end A363080.P13775342055020696287

namespace A363080

/-- `A061891(n²+n+1)` -/
def P13775342055020696287.Spec : Prop :=
  ∀ n, P13775342055020696287.a n = A363080 n

end A363080

/-! ## A363080.P16408655280920734232

`A249916(n²+n+1)`
-/

namespace A363080.P16408655280920734232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249916 (n ^ 2 + (n + 1))

end

end A363080.P16408655280920734232

namespace A363080

/-- `A249916(n²+n+1)` -/
def P16408655280920734232.Spec : Prop :=
  ∀ n, P16408655280920734232.a n = A363080 n

end A363080

/-!
# A363082: Numbers k neither squarefree nor prime power such that q*r > k, where q = A053669(k) is the smallest prime that does not divide k and r = A007947(k) is the squarefree kernel.

The programs for A363082, there is no canonical definition to state claims against.
-/

/-! ## A363082.P3595318527901803503

`∪[A364998(n+1), A364999(n+1)]`
-/

namespace A363082.P3595318527901803503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363082.P3595318527901803503

/-!
# A363085: Sum of the refactorable unitary divisors of n.

The programs for A363085, there is no canonical definition to state claims against.
-/

/-! ## A363085.P686310486094145259

`A333214(A122377(n+1)%A096508(n+1))`
-/

namespace A363085.P686310486094145259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333214 (Int.tmod (A122377 (n + 1)) (A096508 (n + 1))).toNat

end

end A363085.P686310486094145259

/-! ## A363085.P5472133187046961199

`and(A005382(A193286(3*n+5)), A335182(n+1))`
-/

namespace A363085.P5472133187046961199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005382 (A193286 (3 * n + 5)).toNat) (A335182 (n + 1))

end

end A363085.P5472133187046961199

/-!
# A363088: Positive numbers k for which sin(k) >= cos(k).

The programs for A363088, there is no canonical definition to state claims against.
-/

/-! ## A363088.P8439337040771754254

`lt[cos(n), sin(n)]`
-/

namespace A363088.P8439337040771754254
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363088.P8439337040771754254

/-! ## A363088.P57928036947680924

`lt[0, sin(4-n)]`
-/

namespace A363088.P57928036947680924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (4 - (n : ℤ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A363088.P57928036947680924

/-! ## A363088.P11138652653134374267

`lt[cos(n+7), 0]`
-/

namespace A363088.P11138652653134374267
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 7 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A363088.P11138652653134374267

/-! ## A363088.P5106980202318044400

`2*n-floor(atan(tan(n-1)))`
-/

namespace A363088.P5106980202318044400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ⌊Real.arctan (Real.tan ((n : ℤ) - 1 : ℝ))⌋

end

end A363088.P5106980202318044400

/-! ## A363088.P4153884769746833081

`ceil(2*n-atan(tan(n-1)))`
-/

namespace A363088.P4153884769746833081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) - Real.arctan (Real.tan ((n : ℤ) - 1 : ℝ))⌉

end

end A363088.P4153884769746833081

/-! ## A363088.P15203063697236365283

`A026311(n+4)-5`
-/

namespace A363088.P15203063697236365283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026311 (n + 4) - 5

end

end A363088.P15203063697236365283

/-! ## A363088.P612876252382590908

`A246440(n+4)-6`
-/

namespace A363088.P612876252382590908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246440 (n + 4) - 6

end

end A363088.P612876252382590908

/-! ## A363088.P2730413241220681981

`comp[A246303(n+1)-5]`
-/

namespace A363088.P2730413241220681981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246303 (n + 1) - 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A363088.P2730413241220681981

/-! ## A363088.P87406559940547789

`comp[A246441(n+1)-6]`
-/

namespace A363088.P87406559940547789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246441 (n + 1) - 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A363088.P87406559940547789

/-! ## A363088.P9700770303605766562

`comp[A131503(n+1)-7]`
-/

namespace A363088.P9700770303605766562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1) - 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A363088.P9700770303605766562

/-!
# A363089: Positive numbers k for which cos(k) > sin(k).

The programs for A363089, the canonical program `A363089.P14748233185514513525` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363089 has offset 1).

The definition of A363089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363089.P14748233185514513525

`lt[sin(abs(1-n)), cos(n+1)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A363089

/-- `lt[sin(abs(1-n)), cos(n+1)]` -/
def P14748233185514513525.Spec : Prop :=
  ∀ n, (P14748233185514513525.a n : ℤ) = A363089 (n + 1)

theorem P14748233185514513525.correct : P14748233185514513525.Spec := by
  intro n
  simp only [A363089, Nat.add_sub_cancel]

end A363089

/-! ## A363089.P17287923525932405311

`A246303(n+4)-5`
-/

namespace A363089.P17287923525932405311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246303 (n + 4) - 5

end

end A363089.P17287923525932405311

namespace A363089

/-- `A246303(n+4)-5` -/
def P17287923525932405311.Spec : Prop :=
  ∀ n, P17287923525932405311.a n = A363089 (n + 1)

end A363089

/-! ## A363089.P13590964380581421848

`∑[A000027(Δ[A246303(n+3)])]`
-/

namespace A363089.P13590964380581421848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246303 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363089.P13590964380581421848

namespace A363089

/-- `∑[A000027(Δ[A246303(n+3)])]` -/
def P13590964380581421848.Spec : Prop :=
  ∀ n, P13590964380581421848.a n = A363089 (n + 1)

end A363089

/-! ## A363089.P6389351985614683014

`∑[A007954(Δ[A246303(n+3)])]`
-/

namespace A363089.P6389351985614683014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246303 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363089.P6389351985614683014

namespace A363089

/-- `∑[A007954(Δ[A246303(n+3)])]` -/
def P6389351985614683014.Spec : Prop :=
  ∀ n, P6389351985614683014.a n = A363089 (n + 1)

end A363089

/-! ## A363089.P2937420040804902767

`lt[A134893(n+1), A134891(n+1)]+1`
-/

namespace A363089.P2937420040804902767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134891 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A363089.P2937420040804902767

namespace A363089

/-- `lt[A134893(n+1), A134891(n+1)]+1` -/
def P2937420040804902767.Spec : Prop :=
  ∀ n, (P2937420040804902767.a n : ℤ) = A363089 (n + 1)

end A363089

/-! ## A363089.P12967912067150971896

`lt[A141330(n+1), A141334(n+1)]+1`
-/

namespace A363089.P12967912067150971896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141334 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A363089.P12967912067150971896

namespace A363089

/-- `lt[A141330(n+1), A141334(n+1)]+1` -/
def P12967912067150971896.Spec : Prop :=
  ∀ n, (P12967912067150971896.a n : ℤ) = A363089 (n + 1)

end A363089

/-!
# A363090: Number of 3-dimensional directed animals of size n.

The programs for A363090, there is no canonical definition to state claims against.
-/

/-! ## A363090.P15447754924791936893

`∑[∑[A353905(A316370(n))]]`
-/

namespace A363090.P15447754924791936893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353905 (A316370 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363090.P15447754924791936893

/-! ## A363090.P15697766803423198754

`A005185(A262440(n+1)-n)`
-/

namespace A363090.P15697766803423198754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A262440 (n + 1) - (n : ℤ)).toNat

end

end A363090.P15697766803423198754

/-!
# A363092: a(n) = 4*a(n-1) - 8*a(n-2) with a(0) = a(1) = 1.

The programs for A363092, the canonical program `A363092.P3466192866574582024` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363092 has offset 0).

The definition of A363092 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-8*a(n-2)` (program `A363092.P3466192866574582024`, by `A363092.P3466192866574582024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A363092.P3466192866574582024

`4*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A363092

/-- `4*a(n-1)-8*a(n-2)` -/
def P3466192866574582024.Spec : Prop :=
  ∀ n, P3466192866574582024.a n = A363092 n

theorem P3466192866574582024.correct : P3466192866574582024.Spec := by
  intro n
  simp only [A363092]

end A363092

/-! ## A363092.P10143756909446845339

`ogf((1-3x)/(1-4x+8x^2))`
-/

namespace A363092.P10143756909446845339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -4, 8] n

end

end A363092.P10143756909446845339

namespace A363092

/-- `ogf((1-3x)/(1-4x+8x^2))` -/
def P10143756909446845339.Spec : Prop :=
  ∀ n, P10143756909446845339.a n = A363092 n

end A363092

/-! ## A363092.P16897889673323561216

`A134142(3*n)/2`
-/

namespace A363092.P16897889673323561216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134142 (3 * n) : ℚ) / 2

end

end A363092.P16897889673323561216

namespace A363092

/-- `A134142(3*n)/2` -/
def P16897889673323561216.Spec : Prop :=
  ∀ n, P16897889673323561216.a n = (A363092 n : ℚ)

end A363092

/-! ## A363092.P3401384602750931205

`A137429(3*n+1)/A137429(A019425(2*(n+1)))`
-/

namespace A363092.P3401384602750931205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137429 (3 * n + 1) : ℚ) / (A137429 (A019425 (2 * (n + 1))).toNat : ℚ)

end

end A363092.P3401384602750931205

namespace A363092

/-- `A137429(3*n+1)/A137429(A019425(2*(n+1)))` -/
def P3401384602750931205.Spec : Prop :=
  ∀ n, P3401384602750931205.a n = (A363092 n : ℚ)

end A363092

/-!
# A363093: Leading digit of 7^n.

The programs for A363093, the canonical program `A363093.P7686654996455914041` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363093 has offset 0).

The definition of A363093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363093.P7686654996455914041

`floor(7^n/10^floor(n*log(7)/log(10)))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A363093

/-- `floor(7^n/10^floor(n*log(7)/log(10)))` -/
def P7686654996455914041.Spec : Prop :=
  ∀ n, P7686654996455914041.a n = A363093 n

theorem P7686654996455914041.correct : P7686654996455914041.Spec := by
  intro n
  simp only [A363093]

end A363093

/-!
# A363094: Number of partitions of n whose least part is a multiple of 3.

The programs for A363094, there is no canonical definition to state claims against.
-/

/-! ## A363094.P12566160164916012378

`A238783(2*(n+1))-A010060(A387953(2*n+1))`
-/

namespace A363094.P12566160164916012378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238783 (2 * (n + 1)) - A010060 (A387953 (2 * n + 1)).toNat

end

end A363094.P12566160164916012378

/-!
# A363097: a(0) = 1, a(n) = n + phi(a(n-1)), where phi is Euler totient function.

The programs for A363097, the canonical program `A363097.P13840407431328399285` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363097 has offset 0).

The definition of A363097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363097.P13840407431328399285

`A000010(a(n-1))+n` with `a(0)=1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A363097

/-- `A000010(a(n-1))+n` -/
def P13840407431328399285.Spec : Prop :=
  ∀ n, P13840407431328399285.a n = A363097 n

theorem P13840407431328399285.correct : P13840407431328399285.Spec := by
  intro n
  simp only [A363097]

end A363097

/-! ## A363097.P10049449730157766513

`n-(A000007(n)-A000010(a(n-1)))` with `a(0)=1`
-/

namespace A363097.P10049449730157766513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (A000007 n - A000010 (a (n - 1)).toNat)

end

end A363097.P10049449730157766513

namespace A363097

/-- `n-(A000007(n)-A000010(a(n-1)))` -/
def P10049449730157766513.Spec : Prop :=
  ∀ n, P10049449730157766513.a n = A363097 n

end A363097

/-! ## A363097.P6276981276474615540

`A384710(a(n-1))+n` with `a(0)=1, a(1)=2`
-/

namespace A363097.P6276981276474615540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A384710 (a (n - 1)).toNat + (n : ℤ)

end

end A363097.P6276981276474615540

namespace A363097

/-- `A384710(a(n-1))+n` -/
def P6276981276474615540.Spec : Prop :=
  ∀ n, P6276981276474615540.a n = A363097 n

end A363097

/-! ## A363097.P2197896978679165189

`sqrt(A127473(a(n-1)))+n` with `a(0)=1`
-/

namespace A363097.P2197896978679165189
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.sqrt (A127473 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ) + (n : ℝ)

end

end A363097.P2197896978679165189

namespace A363097

/-- `sqrt(A127473(a(n-1)))+n` -/
def P2197896978679165189.Spec : Prop :=
  ∀ n, P2197896978679165189.a n = (A363097 n : ℝ)

end A363097

/-! ## A363097.P3060009500101372988

`A109606(a(n-1))+1+n` with `a(0)=1`
-/

namespace A363097.P3060009500101372988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109606 (a (n - 1)).toNat + 1 + (n : ℤ)

end

end A363097.P3060009500101372988

namespace A363097

/-- `A109606(a(n-1))+1+n` -/
def P3060009500101372988.Spec : Prop :=
  ∀ n, P3060009500101372988.a n = A363097 n

theorem P3060009500101372988.correct : P3060009500101372988.Spec := by
  intro n
  simp only [A363097, Nat.add_sub_cancel, A363097.P3060009500101372988.a, A363097.P13840407431328399285.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A363097

/-! ## A363097.P5041402831881992332

`A039649(a(n-1))-1+n` with `a(0)=1`
-/

namespace A363097.P5041402831881992332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A039649 (a (n - 1)).toNat - 1 + (n : ℤ)

end

end A363097.P5041402831881992332

namespace A363097

/-- `A039649(a(n-1))-1+n` -/
def P5041402831881992332.Spec : Prop :=
  ∀ n, P5041402831881992332.a n = A363097 n

theorem P5041402831881992332.correct : P5041402831881992332.Spec := by
  intro n
  simp only [A363097, Nat.add_sub_cancel, A363097.P5041402831881992332.a, A363097.P13840407431328399285.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A363097

/-! ## A363097.P8117802574109078871

`A055034(lcm(2, a(n-1)))+n` with `a(0)=1`
-/

namespace A363097.P8117802574109078871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055034 (Int.lcm 2 (a (n - 1))) + (n : ℤ)

end

end A363097.P8117802574109078871

namespace A363097

/-- `A055034(lcm(2, a(n-1)))+n` -/
def P8117802574109078871.Spec : Prop :=
  ∀ n, P8117802574109078871.a n = A363097 n

end A363097

/-! ## A363097.P11238607790348610385

`A225530(a(n-1))+n` with `a(0)=1, a(1)=2`
-/

namespace A363097.P11238607790348610385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A225530 (a (n - 1)).toNat + (n : ℤ)

end

end A363097.P11238607790348610385

namespace A363097

/-- `A225530(a(n-1))+n` -/
def P11238607790348610385.Spec : Prop :=
  ∀ n, P11238607790348610385.a n = A363097 n

end A363097

