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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

/-!
# A322100: Number of minimal transitive permutation groups of degree n.

The programs for A322100, there is no canonical definition to state claims against.
-/

/-! ## A322100.P5917936186678258488

`A102363(A337363(n+1))-A046079(A187829(n+1))`
-/

namespace A322100.P5917936186678258488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (A337363 (n + 1)).toNat - A046079 (A187829 (n + 1)).toNat

end

end A322100.P5917936186678258488

/-! ## A322100.P5236294913838967270

`A377051(A171002(n+1)%A329739(n))`
-/

namespace A322100.P5236294913838967270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377051 (Int.tmod (A171002 (n + 1)) (A329739 n)).toNat

end

end A322100.P5236294913838967270

/-!
# A322102: Numbers that can be written as the average of two positive cubes in more than one way.

The programs for A322102, there is no canonical definition to state claims against.
-/

/-! ## A322102.P14904924762927808642

`∩[A001235(n+1), A339993(n+1)]/2`
-/

namespace A322102.P14904924762927808642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339993 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A322102.P14904924762927808642

/-! ## A322102.P2000365692851700056

`∩[A001235(n+1), A339994(n+1)]/2`
-/

namespace A322102.P2000365692851700056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339994 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A322102.P2000365692851700056

/-! ## A322102.P2064758313209023899

`A379466(n+1)/A000005(A178584(n+1))`
-/

namespace A322102.P2064758313209023899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379466 (n + 1) : ℚ) / (A000005 (A178584 (n + 1)).toNat : ℚ)

end

end A322102.P2064758313209023899

/-!
# A322103: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = Sum_{d|n} sigma_k(d).

The programs for A322103, there is no canonical definition to state claims against.
-/

/-! ## A322103.P15739681436548706830

`A326641(A051129(comp[∑[n]]))`
-/

namespace A322103.P15739681436548706830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326641 (A051129 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A322103.P15739681436548706830

/-! ## A322103.P4047418340154154565

`A279027(or(3, A125105(n+1)))`
-/

namespace A322103.P4047418340154154565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279027 (Int.lor 3 (A125105 (n + 1))).toNat

end

end A322103.P4047418340154154565

/-! ## A322103.P18427477024909337294

`A070939(lcm(A059268(n), A308674(n+1)))`
-/

namespace A322103.P18427477024909337294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.lcm (A059268 n) (A308674 (n + 1)))

end

end A322103.P18427477024909337294

/-!
# A322104: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = Sum_{d|n} d*sigma_k(d).

The programs for A322104, there is no canonical definition to state claims against.
-/

/-! ## A322104.P17940135961950910242

`A006530(C(A014249(n+1), A091538(n)))`
-/

namespace A322104.P17940135961950910242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A014249 (n + 1)).toNat (A091538 n).toNat)

end

end A322104.P17940135961950910242

/-!
# A322107: Denominator of the least possible squared diameter of an enclosing circle of a strictly convex lattice n-gon. Numerators are A322106.

The programs for A322107, there is no canonical definition to state claims against.
-/

/-! ## A322107.P11599602813056727077

`A359313(A183079(n+2))`
-/

namespace A322107.P11599602813056727077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359313 (A183079 (n + 2)).toNat

end

end A322107.P11599602813056727077

/-! ## A322107.P12555027162386151046

`A091088(A034870(n)!)²`
-/

namespace A322107.P12555027162386151046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (Nat.factorial (A034870 n).toNat) ^ 2

end

end A322107.P12555027162386151046

/-! ## A322107.P2435022387495988720

`A334387(A261959(n+3))²`
-/

namespace A322107.P2435022387495988720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334387 (A261959 (n + 3)).toNat ^ 2

end

end A322107.P2435022387495988720

/-! ## A322107.P16035908141389911703

`A324910(A029868(n+5))²`
-/

namespace A322107.P16035908141389911703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324910 (A029868 (n + 5)).toNat ^ 2

end

end A322107.P16035908141389911703

/-! ## A322107.P15320158302268297816

`dr(A087647(A087647(n+1)))²`
-/

namespace A322107.P15320158302268297816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A087647 (A087647 (n + 1)).toNat) ^ 2

end

end A322107.P15320158302268297816

/-!
# A322108: Distance of n-th iteration in an alternating rectangular spiral.

The programs for A322108, the canonical program `A322108.P12712330402385209247` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322108 has offset 1).

The definition of A322108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322108.P12712330402385209247

`∑[ceil(Δ[C(3*n, 3)]/18)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322108

/-- `∑[ceil(Δ[C(3*n, 3)]/18)]` -/
def P12712330402385209247.Spec : Prop :=
  ∀ n, P12712330402385209247.a n = A322108 (n + 1)

theorem P12712330402385209247.correct : P12712330402385209247.Spec := by
  intro n
  simp only [A322108, Nat.add_sub_cancel]

end A322108

/-! ## A322108.P11989412010869622344

`∑[ceil(∑[abs(1-3*n)/2])]`
-/

namespace A322108.P11989412010869622344
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|1 - (3 * n : ℤ)| : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322108.P11989412010869622344

namespace A322108

/-- `∑[ceil(∑[abs(1-3*n)/2])]` -/
def P11989412010869622344.Spec : Prop :=
  ∀ n, P11989412010869622344.a n = A322108 (n + 1)

end A322108

/-! ## A322108.P10054206802867908388

`∑[or(1, n)]+ceil(n*(n/2)²)`
-/

namespace A322108.P10054206802867908388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈(n : ℚ) * ((n : ℚ) / 2) ^ 2⌉

end

end A322108.P10054206802867908388

namespace A322108

/-- `∑[or(1, n)]+ceil(n*(n/2)²)` -/
def P10054206802867908388.Spec : Prop :=
  ∀ n, P10054206802867908388.a n = A322108 (n + 1)

end A322108

/-! ## A322108.P15247828733337088739

`n*(C(n, 2)+3)-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A322108.P15247828733337088739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n * (Nat.choose n 2 + 3) : ℤ) - a (n - 2)

end

end A322108.P15247828733337088739

namespace A322108

/-- `n*(C(n, 2)+3)-a(n-2)` -/
def P15247828733337088739.Spec : Prop :=
  ∀ n, P15247828733337088739.a n = A322108 (n + 1)

end A322108

/-! ## A322108.P9235803365058123475

`floor(2-a(n-1)/n+a(n-1)+n²)` with `a(0)=1`
-/

namespace A322108.P9235803365058123475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊2 - (a (n - 1) : ℚ) / (n : ℚ) + (a (n - 1) + (n ^ 2 : ℤ) : ℚ)⌋

end

end A322108.P9235803365058123475

namespace A322108

/-- `floor(2-a(n-1)/n+a(n-1)+n²)` -/
def P9235803365058123475.Spec : Prop :=
  ∀ n, P9235803365058123475.a n = A322108 (n + 1)

end A322108

/-! ## A322108.P13196768798722765350

`floor(a(n-1)-(a(n-1)/n-2-n²))` with `a(0)=1`
-/

namespace A322108.P13196768798722765350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) - ((a (n - 1) : ℚ) / (n : ℚ) - 2 - (n ^ 2 : ℚ))⌋

end

end A322108.P13196768798722765350

namespace A322108

/-- `floor(a(n-1)-(a(n-1)/n-2-n²))` -/
def P13196768798722765350.Spec : Prop :=
  ∀ n, P13196768798722765350.a n = A322108 (n + 1)

end A322108

/-! ## A322108.P1401413537644312059

`floor(a(n-1)+2-a(n-1)/n)+n*n` with `a(0)=1`
-/

namespace A322108.P1401413537644312059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) + 2 : ℚ) - (a (n - 1) : ℚ) / (n : ℚ)⌋ + (n * n : ℤ)

end

end A322108.P1401413537644312059

namespace A322108

/-- `floor(a(n-1)+2-a(n-1)/n)+n*n` -/
def P1401413537644312059.Spec : Prop :=
  ∀ n, P1401413537644312059.a n = A322108 (n + 1)

end A322108

/-! ## A322108.P10568641392988099118

`A019298(n)+A001972(n)`
-/

namespace A322108.P10568641392988099118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 n + A001972 n

end

end A322108.P10568641392988099118

namespace A322108

/-- `A019298(n)+A001972(n)` -/
def P10568641392988099118.Spec : Prop :=
  ∀ n, P10568641392988099118.a n = A322108 (n + 1)

end A322108

/-! ## A322108.P9588296902036249127

`A358042(n)+A275580(n)`
-/

namespace A322108.P9588296902036249127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358042 n + A275580 n

end

end A322108.P9588296902036249127

namespace A322108

/-- `A358042(n)+A275580(n)` -/
def P9588296902036249127.Spec : Prop :=
  ∀ n, P9588296902036249127.a n = A322108 (n + 1)

end A322108

/-!
# A322109: Heinz numbers of integer partitions that are the vertex-degrees of some set multipartition (multiset of nonempty sets) with no singletons.

The programs for A322109, there is no canonical definition to state claims against.
-/

/-! ## A322109.P1655417174304729073

`∪[A320924(n+1), A389414(n+1)]`
-/

namespace A322109.P1655417174304729073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322109.P1655417174304729073

/-! ## A322109.P8855134511072446025

`∪[A320924(n+1), A392380(n+1)]`
-/

namespace A322109.P8855134511072446025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322109.P8855134511072446025

/-! ## A322109.P11605424395726449102

`∪[A357976(n+1), A389414(n+1)]`
-/

namespace A322109.P11605424395726449102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322109.P11605424395726449102

/-! ## A322109.P875720590683082806

`∪[A357976(n+1), A392380(n+1)]`
-/

namespace A322109.P875720590683082806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322109.P875720590683082806

/-! ## A322109.P13912718306087649104

`A048098(lt[A249868(n+1), A000203(n+1)])`
-/

namespace A322109.P13912718306087649104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322109.P13912718306087649104

/-!
# A322111: Number of non-isomorphic self-dual connected multiset partitions of weight n with multiset density -1.

The programs for A322111, there is no canonical definition to state claims against.
-/

/-! ## A322111.P4841120870073199568

`ceil(sqrt(8^ceil(n/2))/5)`
-/

namespace A322111.P4841120870073199568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((8 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) : ℝ) / 5⌉

end

end A322111.P4841120870073199568

/-! ## A322111.P6963480749887770854

`∑[ceil(sqrt(sqrt((n*n%2)!)))-1]+1`
-/

namespace A322111.P6963480749887770854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (Nat.factorial (n * (n % 2)) : ℝ))⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A322111.P6963480749887770854

/-! ## A322111.P6206869519823926270

`3*a(n-2)-a(3%a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A322111.P6206869519823926270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  3 * a (n - 2) - a (Int.tmod 3 (a (n - 2))).toNat

end

end A322111.P6206869519823926270

/-! ## A322111.P13724340998219930024

`A003080(ceil(n/2))`
-/

namespace A322111.P13724340998219930024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003080 ⌈(n : ℚ) / 2⌉.toNat

end

end A322111.P13724340998219930024

/-! ## A322111.P3650774297841479333

`A114509(ceil(n/2))`
-/

namespace A322111.P3650774297841479333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114509 ⌈(n : ℚ) / 2⌉.toNat

end

end A322111.P3650774297841479333

/-!
# A322114: Regular triangle read by rows where T(n,k) is the number of unlabeled connected graphs with loops with n edges and k vertices, 1 <= k <= n+1.

The programs for A322114, there is no canonical definition to state claims against.
-/

/-! ## A322114.P2776055499387923421

`A122445(∑[A109925(A187829(n+1))])`
-/

namespace A322114.P2776055499387923421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322114.P2776055499387923421

/-! ## A322114.P8551469924021936234

`A171871(A043320(n+1))+A171871(n)`
-/

namespace A322114.P8551469924021936234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171871 (A043320 (n + 1)).toNat + A171871 n

end

end A322114.P8551469924021936234

/-! ## A322114.P14614056483447320915

`A171871(A044917(n+1))+A171871(n)`
-/

namespace A322114.P14614056483447320915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171871 (A044917 (n + 1)).toNat + A171871 n

end

end A322114.P14614056483447320915

/-! ## A322114.P13469721414797929719

`A171871(A161953(n+1))+A171871(n)`
-/

namespace A322114.P13469721414797929719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171871 (A161953 (n + 1)).toNat + A171871 n

end

end A322114.P13469721414797929719

/-! ## A322114.P4980878953074759566

`A171871(A187829(n+1))+A171871(n)`
-/

namespace A322114.P4980878953074759566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171871 (A187829 (n + 1)).toNat + A171871 n

end

end A322114.P4980878953074759566

/-!
# A322116: Main diagonal of triangle A321600; a(n) = A321600(n,n-1) for n >= 1.

The programs for A322116, the canonical program `A322116.P12637040877841416653` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322116 has offset 1).

The definition of A322116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322116.P12637040877841416653

`or(2, 3^(n+1)-3)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322116

/-- `or(2, 3^(n+1)-3)` -/
def P12637040877841416653.Spec : Prop :=
  ∀ n, P12637040877841416653.a n = A322116 (n + 1)

theorem P12637040877841416653.correct : P12637040877841416653.Spec := by
  intro n
  simp only [A322116, Nat.add_sub_cancel]

end A322116

/-! ## A322116.P4752014432191132349

`Δ[or(1, ∑[3^n])]-2`
-/

namespace A322116.P4752014432191132349
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2

end

end A322116.P4752014432191132349

namespace A322116

/-- `Δ[or(1, ∑[3^n])]-2` -/
def P4752014432191132349.Spec : Prop :=
  ∀ n, P4752014432191132349.a n = A322116 (n + 1)

end A322116

/-! ## A322116.P17636766963743287520

`ogf((2+6x^2)/(1-3x-x^2+3x^3))`
-/

namespace A322116.P17636766963743287520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, 6] [1, -3, -1, 3] n

end

end A322116.P17636766963743287520

namespace A322116

/-- `ogf((2+6x^2)/(1-3x-x^2+3x^3))` -/
def P17636766963743287520.Spec : Prop :=
  ∀ n, P17636766963743287520.a n = A322116 (n + 1)

end A322116

/-! ## A322116.P8078152155819254873

`2*(∑[3^n]-n%2)`
-/

namespace A322116.P8078152155819254873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n % 2 : ℕ) : ℤ))

end

end A322116.P8078152155819254873

namespace A322116

/-- `2*(∑[3^n]-n%2)` -/
def P8078152155819254873.Spec : Prop :=
  ∀ n, P8078152155819254873.a n = A322116 (n + 1)

end A322116

/-! ## A322116.P7574872335893894720

`4*abs(∑[(-3)^n])-2`
-/

namespace A322116.P7574872335893894720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * |∑ j ∈ Finset.range (n + 1), f1 j| - 2

end

end A322116.P7574872335893894720

namespace A322116

/-- `4*abs(∑[(-3)^n])-2` -/
def P7574872335893894720.Spec : Prop :=
  ∀ n, P7574872335893894720.a n = A322116 (n + 1)

end A322116

/-! ## A322116.P3338839881585704269

`∑[2*A084182(n)]`
-/

namespace A322116.P3338839881585704269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322116.P3338839881585704269

namespace A322116

/-- `∑[2*A084182(n)]` -/
def P3338839881585704269.Spec : Prop :=
  ∀ n, P3338839881585704269.a n = A322116 (n + 1)

end A322116

/-! ## A322116.P8362969628903942243

`2*(∑[A102345(n)]-1)`
-/

namespace A322116.P8362969628903942243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A322116.P8362969628903942243

namespace A322116

/-- `2*(∑[A102345(n)]-1)` -/
def P8362969628903942243.Spec : Prop :=
  ∀ n, P8362969628903942243.a n = A322116 (n + 1)

end A322116

/-! ## A322116.P14891913416267650053

`2*(A152011(n+1)-1)`
-/

namespace A322116.P14891913416267650053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A152011 (n + 1) - 1)

end

end A322116.P14891913416267650053

namespace A322116

/-- `2*(A152011(n+1)-1)` -/
def P14891913416267650053.Spec : Prop :=
  ∀ n, P14891913416267650053.a n = A322116 (n + 1)

end A322116

/-! ## A322116.P9249503371953233042

`2*(A103425(n+1)-2)`
-/

namespace A322116.P9249503371953233042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A103425 (n + 1) - 2)

end

end A322116.P9249503371953233042

namespace A322116

/-- `2*(A103425(n+1)-2)` -/
def P9249503371953233042.Spec : Prop :=
  ∀ n, P9249503371953233042.a n = A322116 (n + 1)

end A322116

/-! ## A322116.P17379720855559928619

`2*(A067771(n)-A010693(n))`
-/

namespace A322116.P17379720855559928619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A067771 n - A010693 n)

end

end A322116.P17379720855559928619

namespace A322116

/-- `2*(A067771(n)-A010693(n))` -/
def P17379720855559928619.Spec : Prop :=
  ∀ n, P17379720855559928619.a n = A322116 (n + 1)

end A322116

/-! ## A322116.P13065537654010886543

`xor(A058481(n+1), A176040(n))`
-/

namespace A322116.P13065537654010886543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A058481 (n + 1)) (A176040 n)

end

end A322116.P13065537654010886543

namespace A322116

/-- `xor(A058481(n+1), A176040(n))` -/
def P13065537654010886543.Spec : Prop :=
  ∀ n, P13065537654010886543.a n = A322116 (n + 1)

end A322116

/-! ## A322116.P10714153427567838508

`2*(A003462(n+1)-A059841(n+1))`
-/

namespace A322116.P10714153427567838508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003462 (n + 1) - A059841 (n + 1))

end

end A322116.P10714153427567838508

namespace A322116

/-- `2*(A003462(n+1)-A059841(n+1))` -/
def P10714153427567838508.Spec : Prop :=
  ∀ n, P10714153427567838508.a n = A322116 (n + 1)

end A322116

/-! ## A322116.P4400731448883201621

`2*(A246360(2*(n+1))-A040001(n+1))`
-/

namespace A322116.P4400731448883201621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A246360 (2 * (n + 1)) - A040001 (n + 1))

end

end A322116.P4400731448883201621

namespace A322116

/-- `2*(A246360(2*(n+1))-A040001(n+1))` -/
def P4400731448883201621.Spec : Prop :=
  ∀ n, P4400731448883201621.a n = A322116 (n + 1)

end A322116

/-! ## A322116.P17754269921341128670

`abs(A168589(n+1)+1)`
-/

namespace A322116.P17754269921341128670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168589 (n + 1) + 1|

end

end A322116.P17754269921341128670

namespace A322116

/-- `abs(A168589(n+1)+1)` -/
def P17754269921341128670.Spec : Prop :=
  ∀ n, P17754269921341128670.a n = A322116 (n + 1)

end A322116

/-!
# A322117: Number of non-isomorphic blobs (2-connected weak antichains) of multisets of weight n.

The programs for A322117, there is no canonical definition to state claims against.
-/

/-! ## A322117.P13251588904504789962

`A322138(n)+ceil(n/98)`
-/

namespace A322117.P13251588904504789962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322138 n + ⌈(n : ℚ) / 98⌉

end

end A322117.P13251588904504789962

/-! ## A322117.P16530497500106211770

`A322401(n)+A322138(n)`
-/

namespace A322117.P16530497500106211770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322401 n + A322138 n

end

end A322117.P16530497500106211770

/-! ## A322117.P5187325160448970588

`abs(A057428(n)-A322138(n))`
-/

namespace A322117.P5187325160448970588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057428 n - A322138 n|

end

end A322117.P5187325160448970588

/-! ## A322117.P14615361901331908133

`A322138(n)+1-A000007(n)`
-/

namespace A322117.P14615361901331908133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322138 n + 1 - A000007 n

end

end A322117.P14615361901331908133

/-! ## A322117.P13038066375368799835

`A335405(∑{p}[n+1, gcd(n, #)])+A322138(n)`
-/

namespace A322117.P13038066375368799835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335405 (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p) + A322138 n

end

end A322117.P13038066375368799835

/-!
# A322118: Number of non-isomorphic connected multiset partitions of weight n with no singletons that cannot be capped by a tree.

The programs for A322118, there is no canonical definition to state claims against.
-/

/-! ## A322118.P11433667819764820557

`A007306(round(sqrt(A336525(n))))`
-/

namespace A322118.P11433667819764820557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (SequenceMachineLib.roundAway (Real.sqrt (A336525 n : ℝ))).toNat

end

end A322118.P11433667819764820557

/-! ## A322118.P5108300793485515847

`A080107(n)-A181834(A326493(n))`
-/

namespace A322118.P5108300793485515847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080107 n - A181834 (A326493 n).toNat

end

end A322118.P5108300793485515847

/-!
# A322119: Factorial expansion of (1-sqrt(5))/2 = Sum_{n>=1} a(n)/n!.

The programs for A322119, there is no canonical definition to state claims against.
-/

/-! ## A322119.P7849046842046985826

`n-A068451(n+1)`
-/

namespace A322119.P7849046842046985826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A068451 (n + 1)

end

end A322119.P7849046842046985826

/-! ## A322119.P8350623025572376474

`-(A068451(n+1)+A001489(n))`
-/

namespace A322119.P8350623025572376474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A068451 (n + 1) + A001489 n)

end

end A322119.P8350623025572376474

/-! ## A322119.P3203697448452653007

`A024000(A068451(n+1)+1)+n`
-/

namespace A322119.P3203697448452653007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A068451 (n + 1) + 1).toNat + (n : ℤ)

end

end A322119.P3203697448452653007

/-! ## A322119.P8164010747866433138

`A024000(A068451(n+1))+A023443(n)`
-/

namespace A322119.P8164010747866433138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A068451 (n + 1)).toNat + A023443 n

end

end A322119.P8164010747866433138

/-! ## A322119.P11873435131190961105

`A068451(n+1)*A209615(A134965(n+1))+n`
-/

namespace A322119.P11873435131190961105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068451 (n + 1) * A209615 (A134965 (n + 1)).toNat + (n : ℤ)

end

end A322119.P11873435131190961105

/-! ## A322119.P6634844610788298289

`(A068451(n+1)+A001489(n))*A115638(2*n+1)`
-/

namespace A322119.P6634844610788298289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A068451 (n + 1) + A001489 n) * A115638 (2 * n + 1)

end

end A322119.P6634844610788298289

/-!
# A322121: Composite numbers m such that b^(m-1) == 1 (mod (b^2-1)*m) has a solution b.

The programs for A322121, there is no canonical definition to state claims against.
-/

/-! ## A322121.P11668325934735812458

`∩[A181782(n+1), A287918(n+1)]`
-/

namespace A322121.P11668325934735812458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322121.P11668325934735812458

/-! ## A322121.P14165311176924091825

`lt[A325836(n+1), log(A166974(n))]`
-/

namespace A322121.P14165311176924091825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325836 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A166974 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A322121.P14165311176924091825

/-! ## A322121.P17387252518235777293

`∩[A307699(n+1)-1, A333039(n+1)]`
-/

namespace A322121.P17387252518235777293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307699 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322121.P17387252518235777293

/-! ## A322121.P15289673946780347787

`A181782(∑[A282838(n+1)!])`
-/

namespace A322121.P15289673946780347787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A282838 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181782 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322121.P15289673946780347787

/-!
# A322122: Number of positive integers that are not the sum of 3 squares and a nonnegative (2n + 1)-st power.

The programs for A322122, there is no canonical definition to state claims against.
-/

/-! ## A322122.P2999254462579079263

`A066272(n+1)*A253554(A001517(n))`
-/

namespace A322122.P2999254462579079263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1) * A253554 (A001517 n).toNat

end

end A322122.P2999254462579079263

/-!
# A322123: Fermat pseudoprimes to base 2 that are tetradecagonal.

The programs for A322123, there is no canonical definition to state claims against.
-/

/-! ## A322123.P12861810504309726809

`∩[A001567(n+1), A033576(n)]`
-/

namespace A322123.P12861810504309726809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033576 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322123.P12861810504309726809

/-! ## A322123.P13381519924472419600

`∩[A051866(2*n+1), A001567(n+1)]`
-/

namespace A322123.P13381519924472419600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322123.P13381519924472419600

/-! ## A322123.P14605646814907677549

`∩[A001567(n+1), A051866(A004273(n))]`
-/

namespace A322123.P14605646814907677549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 (A004273 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322123.P14605646814907677549

/-! ## A322123.P12701781412371539232

`∩[A001567(n+1), A051866(A005408(n))]`
-/

namespace A322123.P12701781412371539232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 (A005408 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322123.P12701781412371539232

/-!
# A322126: Number of permutations of the multiset {1,1,1,1,1,2,2,2,2,2,3,3,3,3,3,...,n,n,n,n,n} with no two consecutive terms equal.

The programs for A322126, there is no canonical definition to state claims against.
-/

/-! ## A322126.P7920198493133269511

`n!*A190833(n)`
-/

namespace A322126.P7920198493133269511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A190833 n

end

end A322126.P7920198493133269511

/-! ## A322126.P16018929170816571386

`A000142(n)*A190833(n)`
-/

namespace A322126.P16018929170816571386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A190833 n

end

end A322126.P16018929170816571386

/-! ## A322126.P15745446026455391042

`A068106(A000096(n))*A190833(n)`
-/

namespace A322126.P15745446026455391042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A000096 n).toNat * A190833 n

end

end A322126.P15745446026455391042

/-! ## A322126.P4575859811578183731

`A166350(A179865(n+1))*A190833(n)`
-/

namespace A322126.P4575859811578183731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (A179865 (n + 1)).toNat * A190833 n

end

end A322126.P4575859811578183731

/-! ## A322126.P2872406217213631192

`n!*A322013(A052905(n)+10)`
-/

namespace A322126.P2872406217213631192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A322013 (A052905 n + 10).toNat

end

end A322126.P2872406217213631192

/-!
# A322127: Triangular array, read by rows: T(n,k) = numerator of binomial(n-1, n-k)/k!, 1 <= k <= n.

The programs for A322127, the canonical program `A322127.P10117294907008591163` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322127 has offset 1).

The definition of A322127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322127.P10117294907008591163

`A007318(n)/gcd(A007318(n), A166350(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A322127

/-- `A007318(n)/gcd(A007318(n), A166350(n+1))` -/
def P10117294907008591163.Spec : Prop :=
  ∀ n, P10117294907008591163.a n = (A322127 (n + 1) : ℚ)

end A322127

/-! ## A322127.P15292004857471384844

`lcm(A008459(n), A121757(n))/A121757(n)`
-/

namespace A322127.P15292004857471384844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A008459 n) (A121757 n) : ℚ) / (A121757 n : ℚ)

end

end A322127.P15292004857471384844

namespace A322127

/-- `lcm(A008459(n), A121757(n))/A121757(n)` -/
def P15292004857471384844.Spec : Prop :=
  ∀ n, P15292004857471384844.a n = (A322127 (n + 1) : ℚ)

end A322127

/-! ## A322127.P11470148601435688447

`gcd(A135021(n), A259879(n))`
-/

namespace A322127.P11470148601435688447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135021 n) (A259879 n)

end

end A322127.P11470148601435688447

namespace A322127

/-- `gcd(A135021(n), A259879(n))` -/
def P11470148601435688447.Spec : Prop :=
  ∀ n, (P11470148601435688447.a n : ℤ) = A322127 (n + 1)

end A322127

/-! ## A322127.P16917397480574415816

`gcd(A133805(n), A362586(n))`
-/

namespace A322127.P16917397480574415816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133805 n) (A362586 n)

end

end A322127.P16917397480574415816

namespace A322127

/-- `gcd(A133805(n), A362586(n))` -/
def P16917397480574415816.Spec : Prop :=
  ∀ n, (P16917397480574415816.a n : ℤ) = A322127 (n + 1)

end A322127

/-! ## A322127.P12767928475336264310

`gcd(A007318(n+1), A276440(A245334(n)))`
-/

namespace A322127.P12767928475336264310
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 (n + 1)) (A276440 (A245334 n).toNat)

end

end A322127.P12767928475336264310

namespace A322127

/-- `gcd(A007318(n+1), A276440(A245334(n)))` -/
def P12767928475336264310.Spec : Prop :=
  ∀ n, (P12767928475336264310.a n : ℤ) = A322127 (n + 1)

end A322127

/-!
# A322128: Triangular array, read by rows: T(n,k) = denominator of binomial(n-1, n-k)/k!, 1 <= k <= n.

The programs for A322128, the canonical program `A322128.P9004028817101297461` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322128 has offset 1).

The definition of A322128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322128.P9004028817101297461

`lcm(A007318(n), A166350(n+1))/A007318(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A322128

/-- `lcm(A007318(n), A166350(n+1))/A007318(n)` -/
def P9004028817101297461.Spec : Prop :=
  ∀ n, P9004028817101297461.a n = (A322128 (n + 1) : ℚ)

end A322128

/-! ## A322128.P6224012340469811689

`A166350(n+1)/gcd(A132749(n), A166350(n+1))`
-/

namespace A322128.P6224012340469811689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166350 (n + 1) : ℚ) / (Int.gcd (A132749 n) (A166350 (n + 1)) : ℚ)

end

end A322128.P6224012340469811689

namespace A322128

/-- `A166350(n+1)/gcd(A132749(n), A166350(n+1))` -/
def P6224012340469811689.Spec : Prop :=
  ∀ n, P6224012340469811689.a n = (A322128 (n + 1) : ℚ)

end A322128

/-! ## A322128.P18362622104253479127

`A181511(n+1)/A001263(n+1)*A322127(n+1)`
-/

namespace A322128.P18362622104253479127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181511 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ) * (A322127 (n + 1) : ℚ)

end

end A322128.P18362622104253479127

namespace A322128

/-- `A181511(n+1)/A001263(n+1)*A322127(n+1)` -/
def P18362622104253479127.Spec : Prop :=
  ∀ n, P18362622104253479127.a n = (A322128 (n + 1) : ℚ)

end A322128

/-! ## A322128.P11010893257983127124

`A002260(n+1)!/gcd(A002260(n+1)!, A007318(n))`
-/

namespace A322128.P11010893257983127124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℚ) / (Int.gcd (Nat.factorial (A002260 (n + 1)).toNat : ℤ) (A007318 n) : ℚ)

end

end A322128.P11010893257983127124

namespace A322128

/-- `A002260(n+1)!/gcd(A002260(n+1)!, A007318(n))` -/
def P11010893257983127124.Spec : Prop :=
  ∀ n, P11010893257983127124.a n = (A322128 (n + 1) : ℚ)

end A322128

/-! ## A322128.P16119393617736694987

`A121757(n)/gcd(A117440(n)², A121757(n))`
-/

namespace A322128.P16119393617736694987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121757 n : ℚ) / (Int.gcd (A117440 n ^ 2) (A121757 n) : ℚ)

end

end A322128.P16119393617736694987

namespace A322128

/-- `A121757(n)/gcd(A117440(n)², A121757(n))` -/
def P16119393617736694987.Spec : Prop :=
  ∀ n, P16119393617736694987.a n = (A322128 (n + 1) : ℚ)

end A322128

/-! ## A322128.P15497504379417644002

`A322127(n+1)/A008459(n)*A121757(n)`
-/

namespace A322128.P15497504379417644002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322127 (n + 1) : ℚ) / (A008459 n : ℚ) * (A121757 n : ℚ)

end

end A322128.P15497504379417644002

namespace A322128

/-- `A322127(n+1)/A008459(n)*A121757(n)` -/
def P15497504379417644002.Spec : Prop :=
  ∀ n, P15497504379417644002.a n = (A322128 (n + 1) : ℚ)

end A322128

/-! ## A322128.P6908496366811479591

`lcm(A008459(n), A121757(n))/A008459(n)`
-/

namespace A322128.P6908496366811479591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A008459 n) (A121757 n) : ℚ) / (A008459 n : ℚ)

end

end A322128.P6908496366811479591

namespace A322128

/-- `lcm(A008459(n), A121757(n))/A008459(n)` -/
def P6908496366811479591.Spec : Prop :=
  ∀ n, P6908496366811479591.a n = (A322128 (n + 1) : ℚ)

end A322128

/-!
# A322129: Digital roots of A057084.

The programs for A322129, the canonical program `A322129.P3221787464660009409` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322129 has offset 1).

The definition of A322129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322129.P3221787464660009409

`dr(a(n-1)-64*a(n-2))` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322129

/-- `dr(a(n-1)-64*a(n-2))` -/
def P3221787464660009409.Spec : Prop :=
  ∀ n, (P3221787464660009409.a n : ℤ) = A322129 (n + 1)

theorem P3221787464660009409.correct : P3221787464660009409.Spec := by
  intro n
  simp only [A322129, Nat.add_sub_cancel]

end A322129

/-!
# A322130: Fermat pseudoprimes to base 2 that are hexagonal.

The programs for A322130, there is no canonical definition to state claims against.
-/

/-! ## A322130.P18379382788134183758

`∩[A001567(n+1), A014634(n)]`
-/

namespace A322130.P18379382788134183758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014634 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322130.P18379382788134183758

/-! ## A322130.P6128892198062542109

`∩[A293622(n+1), A014634(n)]`
-/

namespace A322130.P6128892198062542109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014634 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322130.P6128892198062542109

/-! ## A322130.P16747618326505402956

`∩[A000217(2*n+1), A001567(n+2)]`
-/

namespace A322130.P16747618326505402956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322130.P16747618326505402956

/-! ## A322130.P7308185103448895959

`∩[A001567(n+1), A000384(n)]`
-/

namespace A322130.P7308185103448895959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322130.P7308185103448895959

/-! ## A322130.P18154550539724256024

`∩[A001567(n+1), A276914(n)]`
-/

namespace A322130.P18154550539724256024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276914 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322130.P18154550539724256024

/-! ## A322130.P17669384390235457148

`∩[A293622(n+1), A000384(n)]`
-/

namespace A322130.P17669384390235457148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322130.P17669384390235457148

/-! ## A322130.P4283543970666936185

`∩[A293622(n+1), A276914(n)]`
-/

namespace A322130.P4283543970666936185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276914 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322130.P4283543970666936185

/-! ## A322130.P17091139628070686806

`∩[A001567(n+1), n*A004273(n)]`
-/

namespace A322130.P17091139628070686806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322130.P17091139628070686806

/-! ## A322130.P12087206498865980820

`∩[A014493(2*n+1), A001567(n+2)]`
-/

namespace A322130.P12087206498865980820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322130.P12087206498865980820

/-! ## A322130.P6761807619160972118

`∩[A035608(2*n+1)+A035608(2*n), A001567(n+2)]`
-/

namespace A322130.P6761807619160972118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035608 (2 * n + 1) + A035608 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322130.P6761807619160972118

/-!
# A322131: In the decimal expansion of n, replace each digit d with 2*d.

The programs for A322131, there is no canonical definition to state claims against.
-/

/-! ## A322131.P16830332792423235587

`2*A330336(n)`
-/

namespace A322131.P16830332792423235587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330336 n

end

end A322131.P16830332792423235587

/-! ## A322131.P9739090899525709403

`A330336(A005843(n)/2)+A330336(n)`
-/

namespace A322131.P9739090899525709403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330336 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A330336 n

end

end A322131.P9739090899525709403

/-! ## A322131.P454820131698901299

`A330336(n)+A330336(n%A000040(n+1))`
-/

namespace A322131.P454820131698901299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330336 n + A330336 (Int.tmod (n : ℤ) (A000040 (n + 1))).toNat

end

end A322131.P454820131698901299

/-! ## A322131.P1751969243266395316

`A330336(n)+A330336(n)%A330319(n+1)`
-/

namespace A322131.P1751969243266395316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330336 n + Int.tmod (A330336 n) (A330319 (n + 1))

end

end A322131.P1751969243266395316

/-! ## A322131.P3557272613324485772

`A330336(n)+A330336(n)%A004402(n)`
-/

namespace A322131.P3557272613324485772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330336 n + Int.tmod (A330336 n) (A004402 n)

end

end A322131.P3557272613324485772

/-! ## A322131.P12453887854475554678

`A330336(n)+A330336(n)/A000001(A007918(n))`
-/

namespace A322131.P12453887854475554678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330336 n : ℚ) + (A330336 n : ℚ) / (A000001 (A007918 n).toNat : ℚ)

end

end A322131.P12453887854475554678

/-! ## A322131.P233415601250395950

`A005843(A330336(n))`
-/

namespace A322131.P233415601250395950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A330336 n).toNat

end

end A322131.P233415601250395950

/-! ## A322131.P18329216139578573439

`A004277(A330336(n)+1)-2`
-/

namespace A322131.P18329216139578573439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A330336 n + 1).toNat - 2

end

end A322131.P18329216139578573439

/-! ## A322131.P15694827628657776881

`A330336(n)+A330336(n)/A007318(A000096(n))`
-/

namespace A322131.P15694827628657776881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330336 n : ℚ) + (A330336 n : ℚ) / (A007318 (A000096 n).toNat : ℚ)

end

end A322131.P15694827628657776881

/-!
# A322132: Number of compositions of n that can be rearranged into a palindrome.

The programs for A322132, there is no canonical definition to state claims against.
-/

/-! ## A322132.P10246270849139399243

`Δ[A123578(Δ[A341344(n)])]`
-/

namespace A322132.P10246270849139399243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341344 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A322132.P10246270849139399243

/-! ## A322132.P18382387878389564653

`A020639(n!)*A056514(n)`
-/

namespace A322132.P18382387878389564653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial n) * A056514 n

end

end A322132.P18382387878389564653

/-! ## A322132.P15653711113752083867

`A304912(n)-A166408(A304912(n))`
-/

namespace A322132.P15653711113752083867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304912 n - A166408 (A304912 n).toNat

end

end A322132.P15653711113752083867

/-! ## A322132.P2600825177996716135

`A020639(A000142(n))*A056514(n)`
-/

namespace A322132.P2600825177996716135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000142 n).toNat * A056514 n

end

end A322132.P2600825177996716135

/-! ## A322132.P5423995543830850209

`A191140(A098859(n)+A061128(n+1))`
-/

namespace A322132.P5423995543830850209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191140 (A098859 n + A061128 (n + 1)).toNat

end

end A322132.P5423995543830850209

/-!
# A322133: Regular triangle read by rows where T(n,k) is the number of non-isomorphic connected multiset partitions of weight n with k vertices.

The programs for A322133, there is no canonical definition to state claims against.
-/

/-! ## A322133.P2836390772842608087

`A176839(A143395(n)+1)-A274107(A065941(n))`
-/

namespace A322133.P2836390772842608087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176839 (A143395 n + 1).toNat - A274107 (A065941 n).toNat

end

end A322133.P2836390772842608087

/-! ## A322133.P3693080706970639512

`A276543(n+1)+A081603(A114153(n))`
-/

namespace A322133.P3693080706970639512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276543 (n + 1) + A081603 (A114153 n).toNat

end

end A322133.P3693080706970639512

/-! ## A322133.P485373557304472515

`A007895(A111845(n))*A077042(n)`
-/

namespace A322133.P485373557304472515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A111845 n).toNat * A077042 n

end

end A322133.P485373557304472515

/-!
# A322135: Table of truncated square pyramid numbers, read by antidiagonals.

The programs for A322135, there is no canonical definition to state claims against.
-/

/-! ## A322135.P9437597243931409286

`A008935(A089633(n)+1)`
-/

namespace A322135.P9437597243931409286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008935 (A089633 n + 1).toNat

end

end A322135.P9437597243931409286

/-! ## A322135.P5546347900184416815

`A008935(A023758(n+2))`
-/

namespace A322135.P5546347900184416815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008935 (A023758 (n + 2)).toNat

end

end A322135.P5546347900184416815

/-! ## A322135.P3703582323043104543

`A008935(record[A059893(n+1)])`
-/

namespace A322135.P3703582323043104543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008935 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322135.P3703582323043104543

/-! ## A322135.P3632153793533947069

`A008935(record[A073138(n+1)])`
-/

namespace A322135.P3632153793533947069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008935 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322135.P3632153793533947069

/-! ## A322135.P7320296064814037257

`A008935(A043569(n+1)/2)`
-/

namespace A322135.P7320296064814037257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008935 (SequenceMachineLib.roundAway ((A043569 (n + 1) : ℚ) / 2)).toNat

end

end A322135.P7320296064814037257

/-! ## A322135.P13717329464128620844

`A000330(A002024(n+1))-A000330(A025581(n))`
-/

namespace A322135.P13717329464128620844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A002024 (n + 1)).toNat - A000330 (A025581 n).toNat

end

end A322135.P13717329464128620844

/-! ## A322135.P8173247927484038297

`A000330(A123578(n+1))-A000330(A025581(n))`
-/

namespace A322135.P8173247927484038297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A123578 (n + 1)).toNat - A000330 (A025581 n).toNat

end

end A322135.P8173247927484038297

/-! ## A322135.P14505452576098896149

`A000330(A002024(n+1))-A000330(A004736(n+1)-1)`
-/

namespace A322135.P14505452576098896149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A002024 (n + 1)).toNat - A000330 (A004736 (n + 1) - 1).toNat

end

end A322135.P14505452576098896149

/-! ## A322135.P12140556107793121899

`A344235(A038722(n+1)+A002024(n+1))`
-/

namespace A322135.P12140556107793121899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344235 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A322135.P12140556107793121899

/-!
# A322136: Numbers whose number of prime factors counted with multiplicity exceeds half their sum of prime indices by at least 1.

The programs for A322136, there is no canonical definition to state claims against.
-/

/-! ## A322136.P13770112380802019934

`lt[n+3, exp(∑{e}[n, #])]`
-/

namespace A322136.P13770112380802019934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp ((∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p : ℕ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A322136.P13770112380802019934

/-! ## A322136.P15787310090665266530

`lt[n+3, ∏{e}[n, exp(#)]]`
-/

namespace A322136.P15787310090665266530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Real.exp (Nat.factorization (f3 n) p : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A322136.P15787310090665266530

/-! ## A322136.P9419212068841893014

`lt[log(n+3), ∑{e}[n, #]]`
-/

namespace A322136.P9419212068841893014
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 3 : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A322136.P9419212068841893014

/-! ## A322136.P13976737783847767341

`2*A363949(n+1)`
-/

namespace A322136.P13976737783847767341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A363949 (n + 1)

end

end A322136.P13976737783847767341

/-! ## A322136.P17103389738365822403

`4*A344296(n+1)`
-/

namespace A322136.P17103389738365822403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A344296 (n + 1)

end

end A322136.P17103389738365822403

/-!
# A322137: Number of labeled connected graphs with n edges (the vertices are {1,2,...,k} for some k).

The programs for A322137, there is no canonical definition to state claims against.
-/

/-! ## A322137.P17601890577380132600

`A291842(n^A110656(n))`
-/

namespace A322137.P17601890577380132600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291842 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A110656 n : ℤ))).toNat

end

end A322137.P17601890577380132600

/-! ## A322137.P7352505660537079685

`∏{e}[A000351(n), A291842(#)]`
-/

namespace A322137.P7352505660537079685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A291842 (Nat.factorization (f1 n).natAbs p)

end

end A322137.P7352505660537079685

/-! ## A322137.P2480386453144988602

`A291842(n^A236362(n+1))`
-/

namespace A322137.P2480386453144988602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291842 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A236362 (n + 1) : ℤ))).toNat

end

end A322137.P2480386453144988602

/-! ## A322137.P10111241131415169834

`A291842(n^A293901(n+1))`
-/

namespace A322137.P10111241131415169834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291842 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A293901 (n + 1) : ℤ))).toNat

end

end A322137.P10111241131415169834

/-! ## A322137.P15989292188821443187

`A291842(n^A306446(n+1))`
-/

namespace A322137.P15989292188821443187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291842 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A306446 (n + 1) : ℤ))).toNat

end

end A322137.P15989292188821443187

/-!
# A322138: Number of non-isomorphic weight-n blobs (2-connected weak antichains) of multisets with no singletons.

The programs for A322138, there is no canonical definition to state claims against.
-/

/-! ## A322138.P5065902189591563641

`A322117(n)-ceil(n/19)`
-/

namespace A322138.P5065902189591563641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322117 n - ⌈(n : ℚ) / 19⌉

end

end A322138.P5065902189591563641

/-! ## A322138.P16279379651056579925

`abs(A322117(n)+A057428(n))`
-/

namespace A322138.P16279379651056579925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A322117 n + A057428 n|

end

end A322138.P16279379651056579925

/-! ## A322138.P17334313435136552724

`abs(A057427(n)-A322117(n))`
-/

namespace A322138.P17334313435136552724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057427 n - A322117 n|

end

end A322138.P17334313435136552724

/-! ## A322138.P18439529614447142165

`abs(A322117(n)-A322401(n))`
-/

namespace A322138.P18439529614447142165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A322117 n - A322401 n|

end

end A322138.P18439529614447142165

/-! ## A322138.P3464834659640805273

`A000007(n)+A322117(n)-1`
-/

namespace A322138.P3464834659640805273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A322117 n - 1)

end

end A322138.P3464834659640805273

/-!
# A322139: Number of labeled 2-connected simple graphs with n edges (the vertices are {1,2,...,k} for some k).

The programs for A322139, there is no canonical definition to state claims against.
-/

/-! ## A322139.P10980853866722134309

`A341979(and(2^n, -2))`
-/

namespace A322139.P10980853866722134309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341979 ((Int.land (2 ^ n : ℤ) (-2)).toNat + 59)

end

end A322139.P10980853866722134309

/-! ## A322139.P2090335018433385607

`A341979(lcm(2^n, round(sqrt(n))))`
-/

namespace A322139.P2090335018433385607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341979 (Int.lcm (2 ^ n : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))) + 59)

end

end A322139.P2090335018433385607

/-! ## A322139.P1862987470276892234

`A341979(2^n)+floor(acot(n))`
-/

namespace A322139.P1862987470276892234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341979 (2 ^ n + 59) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A322139.P1862987470276892234

/-!
# A322140: Number of labeled 2-connected multigraphs with n edges (the vertices are {1,2,...,k} for some k).

The programs for A322140, there is no canonical definition to state claims against.
-/

/-! ## A322140.P14649353743824762484

`A081753(A148072(n)²)`
-/

namespace A322140.P14649353743824762484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A148072 n ^ 2).toNat

end

end A322140.P14649353743824762484

/-! ## A322140.P2059519087973670936

`A081753(A148073(n)²)`
-/

namespace A322140.P2059519087973670936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A148073 n ^ 2).toNat

end

end A322140.P2059519087973670936

/-! ## A322140.P3454800831968855888

`A081753(A148074(n)²)`
-/

namespace A322140.P3454800831968855888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A148074 n ^ 2).toNat

end

end A322140.P3454800831968855888

/-!
# A322141: a(n) is the sum of the even-indexed terms of the n-th row of the triangle A237591.

The programs for A322141, there is no canonical definition to state claims against.
-/

/-! ## A322141.P3873482018597853491

`n+1-A240542(n+1)`
-/

namespace A322141.P3873482018597853491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A240542 (n + 1)

end

end A322141.P3873482018597853491

/-! ## A322141.P4127996125560277039

`∑[1-A067742(n+1)]`
-/

namespace A322141.P4127996125560277039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A067742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322141.P4127996125560277039

/-! ## A322141.P3777417601970992971

`∑[2-A348406(n+1)]`
-/

namespace A322141.P3777417601970992971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A348406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322141.P3777417601970992971

/-! ## A322141.P2719569087041101607

`(n+1-A380231(n+1))/2`
-/

namespace A322141.P2719569087041101607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A380231 (n + 1) : ℚ) / 2

end

end A322141.P2719569087041101607

/-! ## A322141.P9261377795746639753

`(n+1)%A240542(C(n+1, n))`
-/

namespace A322141.P9261377795746639753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A240542 (Nat.choose (n + 1) n))

end

end A322141.P9261377795746639753

/-! ## A322141.P12321578491236395926

`abs(∑[2-A348406(-xor(n, -1))])`
-/

namespace A322141.P12321578491236395926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A348406 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A322141.P12321578491236395926

/-! ## A322141.P5949376083683644708

`1-(A240542(Δ[n²]-n)-n)`
-/

namespace A322141.P5949376083683644708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A240542 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (n : ℤ))

end

end A322141.P5949376083683644708

/-! ## A322141.P12142827111376139154

`floor(n+1-A338723(n+1)/2)`
-/

namespace A322141.P12142827111376139154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) - (A338723 (n + 1) : ℚ) / 2⌋

end

end A322141.P12142827111376139154

/-! ## A322141.P9734683448028236781

`A285999(n+1)-A248517(n+1)`
-/

namespace A322141.P9734683448028236781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285999 (n + 1) - A248517 (n + 1)

end

end A322141.P9734683448028236781

/-! ## A322141.P9190450579932073449

`A000027(n+1)%A240542(n+1)`
-/

namespace A322141.P9190450579932073449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A240542 (n + 1))

end

end A322141.P9190450579932073449

/-! ## A322141.P13757802408258287545

`A087156(n+1)%A240542(n+1)`
-/

namespace A322141.P13757802408258287545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087156 (n + 1)) (A240542 (n + 1))

end

end A322141.P13757802408258287545

/-! ## A322141.P4190380320207680131

`A178915(n+1)%A240542(n+1)`
-/

namespace A322141.P4190380320207680131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178915 (n + 1)) (A240542 (n + 1))

end

end A322141.P4190380320207680131

/-! ## A322141.P16477740567325033245

`1-A065033(A338723(n+1))+n`
-/

namespace A322141.P16477740567325033245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065033 (A338723 (n + 1)).toNat + (n : ℤ)

end

end A322141.P16477740567325033245

/-! ## A322141.P8118351757834734372

`A060401(n+1)%A240542(n+1)`
-/

namespace A322141.P8118351757834734372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A240542 (n + 1))

end

end A322141.P8118351757834734372

/-!
# A322142: Powernacci numbers: a(n) = 2^(a(n-1) + a(n-2)) with a(0) = 0 and a(1) = 1.

The programs for A322142, there is no canonical definition to state claims against.
-/

/-! ## A322142.P15555050509714717597

`floor(2^floor(sinh(n-1)))`
-/

namespace A322142.P15555050509714717597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (⌊Real.sinh ((n : ℤ) - 1 : ℝ)⌋ : ℤ)⌋

end

end A322142.P15555050509714717597

/-!
# A322143: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = Sum_{d|n, d==1 (mod 4)} d^k - Sum_{d|n, d==3 (mod 4)} d^k.

The programs for A322143, there is no canonical definition to state claims against.
-/

/-! ## A322143.P3590943488784610842

`A377703(A102272(n+1))-A285425(n+1)`
-/

namespace A322143.P3590943488784610842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377703 (A102272 (n + 1)).toNat - A285425 (n + 1)

end

end A322143.P3590943488784610842

/-!
# A322145: Number of permutations of 9 copies of 1..n with no element equal to another within a distance of 1.

The programs for A322145, there is no canonical definition to state claims against.
-/

/-! ## A322145.P4066890213627770597

`n!*A321669(n)`
-/

namespace A322145.P4066890213627770597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A321669 n

end

end A322145.P4066890213627770597

/-! ## A322145.P10182501246869530147

`A000142(n)*A321669(n)`
-/

namespace A322145.P10182501246869530147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A321669 n

end

end A322145.P10182501246869530147

/-! ## A322145.P7663901023979396600

`abs(A133942(n)*A321669(n))`
-/

namespace A322145.P7663901023979396600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133942 n * A321669 n|

end

end A322145.P7663901023979396600

/-! ## A322145.P9026495445304906126

`∏[A028310(n)]*A321669(n)`
-/

namespace A322145.P9026495445304906126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A321669 n

end

end A322145.P9026495445304906126

/-!
# A322146: 

The programs for A322146, there is no canonical definition to state claims against.
-/

/-! ## A322146.P2635722728432188996

`n!*A321670(n)`
-/

namespace A322146.P2635722728432188996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A321670 n

end

end A322146.P2635722728432188996

/-! ## A322146.P1622466181893542747

`A000142(n)*A321670(n)`
-/

namespace A322146.P1622466181893542747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A321670 n

end

end A322146.P1622466181893542747

/-! ## A322146.P10780216697761330434

`abs(A133942(n)*A321670(n))`
-/

namespace A322146.P10780216697761330434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133942 n * A321670 n|

end

end A322146.P10780216697761330434

/-! ## A322146.P8044121517128336687

`∏[A028310(n)]*A321670(n)`
-/

namespace A322146.P8044121517128336687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A321670 n

end

end A322146.P8044121517128336687

/-!
# A322148: Regular triangle where T(n,k) is the number of labeled connected multigraphs with loops with n edges and k vertices.

The programs for A322148, there is no canonical definition to state claims against.
-/

/-! ## A322148.P17977466419946952024

`or(A049323(n), A117054(A086645(n)))`
-/

namespace A322148.P17977466419946952024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049323 n) (A117054 (A086645 n).toNat)

end

end A322148.P17977466419946952024

/-! ## A322148.P12228019492503192293

`or(A049323(n), A328686(A034801(n)))`
-/

namespace A322148.P12228019492503192293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049323 n) (A328686 (A034801 n).toNat)

end

end A322148.P12228019492503192293

/-! ## A322148.P18313543875439464460

`or(A049323(n), A284574(A219755(n)))`
-/

namespace A322148.P18313543875439464460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049323 n) (A284574 (A219755 n).toNat)

end

end A322148.P18313543875439464460

/-! ## A322148.P14259757347140352231

`or(A049323(n), A117054(A303896(n+1)))`
-/

namespace A322148.P14259757347140352231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049323 n) (A117054 (A303896 (n + 1)).toNat)

end

end A322148.P14259757347140352231

/-! ## A322148.P15037480279550077614

`A083896(A000079(n))+A049323(n)`
-/

namespace A322148.P15037480279550077614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083896 (A000079 n).toNat + A049323 n

end

end A322148.P15037480279550077614

/-!
# A322151: Number of labeled connected graphs with loops with n edges (the vertices are {1,2,...,k} for some k).

The programs for A322151, there is no canonical definition to state claims against.
-/

/-! ## A322151.P15586817962005636620

`A004396(A000357(n))+A004275(n)`
-/

namespace A322151.P15586817962005636620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A000357 n).toNat + A004275 n

end

end A322151.P15586817962005636620

/-! ## A322151.P17830775356542197648

`A054238(n)+A000265(A226738(n))`
-/

namespace A322151.P17830775356542197648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 n + A000265 (A226738 n).toNat

end

end A322151.P17830775356542197648

/-!
# A322152: Number of labeled connected multigraphs with loops with n edges (the vertices are {1,2,...,k} for some k).

The programs for A322152, there is no canonical definition to state claims against.
-/

/-! ## A322152.P10813984263575892446

`A004396(∑[∑[A352357(n)]])`
-/

namespace A322152.P10813984263575892446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352357 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322152.P10813984263575892446

/-! ## A322152.P14834972614400713919

`A368927(n)-A322438(A331783(2*n+5))`
-/

namespace A322152.P14834972614400713919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368927 n - A322438 (A331783 (2 * n + 5)).toNat

end

end A322152.P14834972614400713919

/-!
# A322155: Consecutive terms that appear more than once in A014237.

The programs for A322155, there is no canonical definition to state claims against.
-/

/-! ## A322155.P18120113999164111095

`∩[A014237(2*n+3), A014237(2*(n+2))]`
-/

namespace A322155.P18120113999164111095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014237 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014237 (2 * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322155.P18120113999164111095

/-! ## A322155.P2145213456725995889

`record[A076555(A014689(n+1))-A008864(n+1)]`
-/

namespace A322155.P2145213456725995889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076555 (A014689 (n + 1)).toNat - A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322155.P2145213456725995889

/-! ## A322155.P15253901830401655011

`A014237(∩[A334142(2*n+3), A014692(n+4)])`
-/

namespace A322155.P15253901830401655011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014237 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A322155.P15253901830401655011

/-!
# A322156: Irregular triangle where row n includes all decreasing sequences S = {k_0 = n, k_1, k_2, ..., k_m} in reverse lexicographic order such that the sum of subsequent terms k_j for all i < j <= m does not exceed any k_i.

The programs for A322156, there is no canonical definition to state claims against.
-/

/-! ## A322156.P1281946106911369665

`gcd(A358371(2*n+1), A395925(A358374(n+1)))`
-/

namespace A322156.P1281946106911369665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A358371 (2 * n + 1)) (A395925 (A358374 (n + 1)).toNat)

end

end A322156.P1281946106911369665

/-! ## A322156.P6607463451235711513

`A034693(A056941(A003972(n+1)+1))`
-/

namespace A322156.P6607463451235711513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A056941 (A003972 (n + 1) + 1).toNat).toNat

end

end A322156.P6607463451235711513

/-! ## A322156.P106567688740084692

`A036584(A036802(n+1)+A036658(n))`
-/

namespace A322156.P106567688740084692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 (A036802 (n + 1) + A036658 n).toNat

end

end A322156.P106567688740084692

/-! ## A322156.P2477216398535954865

`A102820(A102831(n+1)-A015395(n))`
-/

namespace A322156.P2477216398535954865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102820 (A102831 (n + 1) - A015395 n).toNat

end

end A322156.P2477216398535954865

/-! ## A322156.P9227186602943842975

`A066099(A046523(n+1)*A288343(n))`
-/

namespace A322156.P9227186602943842975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A046523 (n + 1) * A288343 n).toNat

end

end A322156.P9227186602943842975

/-!
# A322157: The successive approximations up to 5^n for 5-adic integer 7^(1/5).

The programs for A322157, there is no canonical definition to state claims against.
-/

/-! ## A322157.P9108325099355669552

`A001281(A035014(n+1)%A020729(n))`
-/

namespace A322157.P9108325099355669552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.tmod (A035014 (n + 1)) (A020729 n)).toNat

end

end A322157.P9108325099355669552

/-! ## A322157.P13974573757813025016

`A026741(A035014(n+5)%A020729(n))`
-/

namespace A322157.P13974573757813025016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A035014 (n + 5)) (A020729 n)).toNat

end

end A322157.P13974573757813025016

/-!
# A322159: Decimal expansion of 1 - 1/sqrt(5).

The programs for A322159, there is no canonical definition to state claims against.
-/

/-! ## A322159.P14535026825197010825

`9-A010476(n)`
-/

namespace A322159.P14535026825197010825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A010476 (n + 1)

end

end A322159.P14535026825197010825

/-! ## A322159.P11768953018975755884

`9-A134974(A000007(n)+n)`
-/

namespace A322159.P11768953018975755884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A134974 ((A000007 n + (n : ℤ)).toNat + 1)

end

end A322159.P11768953018975755884

/-! ## A322159.P3729211226112380061

`9-(A134974(n)+A000038(n))`
-/

namespace A322159.P3729211226112380061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A134974 (n + 1) + A000038 n)

end

end A322159.P3729211226112380061

/-! ## A322159.P385251863625209144

`9-A344212(n+1)`
-/

namespace A322159.P385251863625209144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A344212 (n + 1 + 1)

end

end A322159.P385251863625209144

/-!
# A322160: Fermat pseudoprimes to base 2 that are octadecagonal.

The programs for A322160, there is no canonical definition to state claims against.
-/

/-! ## A322160.P899972095812180998

`∩[A001567(n+1), A051870(n)]`
-/

namespace A322160.P899972095812180998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051870 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322160.P899972095812180998

/-! ## A322160.P8346941368836124387

`∩[A001567(n+1), A152995(n)-n²]`
-/

namespace A322160.P8346941368836124387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152995 n - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322160.P8346941368836124387

/-! ## A322160.P6887492303268471646

`∩[A001567(n+1), A139273(n)-4*n]`
-/

namespace A322160.P6887492303268471646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139273 n - (4 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322160.P6887492303268471646

/-! ## A322160.P4761472091047685069

`∩[A001567(n+1), A014635(n)-5*n]`
-/

namespace A322160.P4761472091047685069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n - (5 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322160.P4761472091047685069

/-!
# A322161: Numbers k such that m = 8k^2 + 2k + 33 and 8m - 7 are both primes.

The programs for A322161, there is no canonical definition to state claims against.
-/

/-! ## A322161.P9475917537106814016

`A191969(lt[A087606(3*n+4), A087606(n+1)])`
-/

namespace A322161.P9475917537106814016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087606 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191969 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322161.P9475917537106814016

/-!
# A322163: Minimal number of steps needed to get from n to 1, where for n > 1 the next step is to either n-1 or max(a,b) for any a > 1 and b > 1 such that ab=n.

The programs for A322163, there is no canonical definition to state claims against.
-/

/-! ## A322163.P8796165415666853492

`A075167(n+1)-A124760(A212106(A151510(n)))`
-/

namespace A322163.P8796165415666853492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (n + 1) - A124760 (A212106 (A151510 n).toNat).toNat

end

end A322163.P8796165415666853492

/-! ## A322163.P9942449987119948232

`A338379(A075167(n+1)^A318191(n))`
-/

namespace A322163.P9942449987119948232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338379 (SequenceMachineLib.roundAway ((A075167 (n + 1) : ℚ) ^ (A318191 n : ℤ))).toNat

end

end A322163.P9942449987119948232

/-! ## A322163.P4562903138967150270

`A332894(n+1)-A327201(A333758(n+3))`
-/

namespace A322163.P4562903138967150270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332894 (n + 1) - A327201 (A333758 (n + 3)).toNat

end

end A322163.P4562903138967150270

/-! ## A322163.P340287430442384774

`A252464(n+1)-A086080(A213709(n+4))`
-/

namespace A322163.P340287430442384774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A086080 (A213709 (n + 4)).toNat

end

end A322163.P340287430442384774

/-! ## A322163.P2022774374883427101

`A069010(A056000(n)*A336008(2*(n+1)))`
-/

namespace A322163.P2022774374883427101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A056000 n * A336008 (2 * (n + 1))).toNat

end

end A322163.P2022774374883427101

/-!
# A322164: Numbers n > 1 such that phi(n) <= phi(k) + phi(n-k) for all 1 <= k <= n-1, where phi(n) is the Euler totient function (A000010).

The programs for A322164, there is no canonical definition to state claims against.
-/

/-! ## A322164.P14486593438876316573

`A244052(n+1)+char[n^6]`
-/

namespace A322164.P14486593438876316573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244052 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A322164.P14486593438876316573

/-! ## A322164.P1048161809042604479

`A322586(n²+1)+A244052(n+1)`
-/

namespace A322164.P1048161809042604479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322586 (n ^ 2 + 1) + A244052 (n + 1)

end

end A322164.P1048161809042604479

/-! ## A322164.P9998434372391661857

`xor(A129283(C(2, n+1)), A244052(n+1))`
-/

namespace A322164.P9998434372391661857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A129283 (Nat.choose 2 (n + 1))) (A244052 (n + 1))

end

end A322164.P9998434372391661857

/-! ## A322164.P2395875998390819026

`A244052(n+1)+1-char[A108872(n+1)]`
-/

namespace A322164.P2395875998390819026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244052 (n + 1) + 1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A322164.P2395875998390819026

/-! ## A322164.P12754057088246685073

`A292547(A005187(n))+A244052(n+1)`
-/

namespace A322164.P12754057088246685073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292547 (A005187 n).toNat + A244052 (n + 1)

end

end A322164.P12754057088246685073

/-!
# A322168: Sequence gives the values of the trace A+D of the 2 X 2 matrices [[A,B],[C,D]] in a binary tree of the special linear monoid, SL(2,Z+).

The programs for A322168, the canonical program `A322168.P14803382909734286249` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322168 has offset 1).

The definition of A322168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322168.P15880306319879678758

`A002487(A062050(n+1))+A002487(A080079(n+1))`
-/

namespace A322168.P15880306319879678758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A062050 (n + 1)).toNat + A002487 (A080079 (n + 1)).toNat

end

end A322168.P15880306319879678758

namespace A322168

/-- `A002487(A062050(n+1))+A002487(A080079(n+1))` -/
def P15880306319879678758.Spec : Prop :=
  ∀ n, P15880306319879678758.a n = A322168 (n + 1)

end A322168

/-! ## A322168.P14803382909734286249

`A007305(2*(n+2))-(A007305(2*n+3)-A002487(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A322168

/-- `A007305(2*(n+2))-(A007305(2*n+3)-A002487(n+1))` -/
def P14803382909734286249.Spec : Prop :=
  ∀ n, P14803382909734286249.a n = A322168 (n + 1)

theorem P14803382909734286249.correct : P14803382909734286249.Spec := by
  intro n
  simp only [A322168, Nat.add_sub_cancel]

end A322168

/-! ## A322168.P10828588781326863505

`A020944(A004755(n+1))+A002487(A080079(n+1))`
-/

namespace A322168.P10828588781326863505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020944 (A004755 (n + 1)).toNat + A002487 (A080079 (n + 1)).toNat

end

end A322168.P10828588781326863505

namespace A322168

/-- `A020944(A004755(n+1))+A002487(A080079(n+1))` -/
def P10828588781326863505.Spec : Prop :=
  ∀ n, P10828588781326863505.a n = A322168 (n + 1)

end A322168

/-! ## A322168.P926118041054777722

`A028310(A174980(n))+A020951(A171763(n+1))`
-/

namespace A322168.P926118041054777722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A174980 n).toNat + A020951 (A171763 (n + 1)).toNat

end

end A322168.P926118041054777722

namespace A322168

/-- `A028310(A174980(n))+A020951(A171763(n+1))` -/
def P926118041054777722.Spec : Prop :=
  ∀ n, P926118041054777722.a n = A322168 (n + 1)

end A322168

/-! ## A322168.P16369479436109468396

`A020951(A171763(n+1))+A002487(A080079(n+1))`
-/

namespace A322168.P16369479436109468396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A171763 (n + 1)).toNat + A002487 (A080079 (n + 1)).toNat

end

end A322168.P16369479436109468396

namespace A322168

/-- `A020951(A171763(n+1))+A002487(A080079(n+1))` -/
def P16369479436109468396.Spec : Prop :=
  ∀ n, P16369479436109468396.a n = A322168 (n + 1)

end A322168

/-! ## A322168.P11080997706023969733

`A070879(n)+A020944(A004755(n+1))`
-/

namespace A322168.P11080997706023969733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070879 n + A020944 (A004755 (n + 1)).toNat

end

end A322168.P11080997706023969733

namespace A322168

/-- `A070879(n)+A020944(A004755(n+1))` -/
def P11080997706023969733.Spec : Prop :=
  ∀ n, P11080997706023969733.a n = A322168 (n + 1)

end A322168

/-! ## A322168.P11018831326762841092

`A070879(n)+A002487(A062050(n+1))`
-/

namespace A322168.P11018831326762841092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070879 n + A002487 (A062050 (n + 1)).toNat

end

end A322168.P11018831326762841092

namespace A322168

/-- `A070879(n)+A002487(A062050(n+1))` -/
def P11018831326762841092.Spec : Prop :=
  ∀ n, P11018831326762841092.a n = A322168 (n + 1)

end A322168

/-! ## A322168.P1203818493334392892

`A070879(n)+A020951(A171763(n+1))`
-/

namespace A322168.P1203818493334392892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070879 n + A020951 (A171763 (n + 1)).toNat

end

end A322168.P1203818493334392892

namespace A322168

/-- `A070879(n)+A020951(A171763(n+1))` -/
def P1203818493334392892.Spec : Prop :=
  ∀ n, P1203818493334392892.a n = A322168 (n + 1)

end A322168

/-!
# A322169: Digits of the 5-adic integer 7^(1/5).

The programs for A322169, there is no canonical definition to state claims against.
-/

/-! ## A322169.P4462654810125158324

`(A322157(n+1)-A322157(n))/5^n`
-/

namespace A322169.P4462654810125158324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322157 (n + 1) - A322157 n : ℚ) / (5 ^ n : ℚ)

end

end A322169.P4462654810125158324

/-! ## A322169.P2741918942551939222

`Δ[A322157(n)]/A000351(n)`
-/

namespace A322169.P2741918942551939222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322157 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000351 n : ℚ)

end

end A322169.P2741918942551939222

/-! ## A322169.P2794811010252424723

`dr((A322157(n+1)-A322157(n))*A000079(n))`
-/

namespace A322169.P2794811010252424723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((A322157 (n + 1) - A322157 n) * A000079 n)

end

end A322169.P2794811010252424723

/-!
# A322170: Triangle T(n, k) read by rows, n > 0 and 0 < k <= 3^(n-1): T(n, k) = A321768(n, k) * A321769(n, k) / 2.

The programs for A322170, there is no canonical definition to state claims against.
-/

/-! ## A322170.P8702736821445018315

`A321768(n+1)/2*A321769(n+1)`
-/

namespace A322170.P8702736821445018315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321768 (n + 1) : ℚ) / 2 * (A321769 (n + 1) : ℚ)

end

end A322170.P8702736821445018315

/-! ## A322170.P5743041169088749054

`A321768(n+1)*A321782(n+1)*A321783(n+1)`
-/

namespace A322170.P5743041169088749054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321768 (n + 1) * A321782 (n + 1) * A321783 (n + 1)

end

end A322170.P5743041169088749054

/-! ## A322170.P11951914262572934559

`A014682(A321769(n+1))*A321768(n+1)`
-/

namespace A322170.P11951914262572934559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A321769 (n + 1)).toNat * A321768 (n + 1)

end

end A322170.P11951914262572934559

/-! ## A322170.P14756886766665560911

`A321784(n+1)*A321785(n+1)*A014682(A321769(n+1))`
-/

namespace A322170.P14756886766665560911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321784 (n + 1) * A321785 (n + 1) * A014682 (A321769 (n + 1)).toNat

end

end A322170.P14756886766665560911

/-! ## A322170.P8883003399460680979

`(A322181(n+1)-A321784(n+1)²)*A014682(A321769(n+1))`
-/

namespace A322170.P8883003399460680979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A322181 (n + 1) - A321784 (n + 1) ^ 2) * A014682 (A321769 (n + 1)).toNat

end

end A322170.P8883003399460680979

/-! ## A322170.P10107472324687779228

`(A321782(n+1)²-A321783(n+1)²)*A014682(A321769(n+1))`
-/

namespace A322170.P10107472324687779228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321782 (n + 1) ^ 2 - A321783 (n + 1) ^ 2) * A014682 (A321769 (n + 1)).toNat

end

end A322170.P10107472324687779228

/-!
# A322171: Expansion of x*(3 + 5*x + x^2 + x^3)/((1 - x)^2*(1 + x^2)).

The programs for A322171, the canonical program `A322171.P744029907249338137` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322171 has offset 1).

The definition of A322171 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+5x+x^2+x^3)/(1-2x+2x^2-2x^3+x^4))` (program `A322171.P744029907249338137`, by `A322171.P744029907249338137.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322171.P744029907249338137

`ogf((3+5x+x^2+x^3)/(1-2x+2x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A322171

/-- `ogf((3+5x+x^2+x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P744029907249338137.Spec : Prop :=
  ∀ n, P744029907249338137.a n = A322171 (n + 1)

theorem P744029907249338137.correct : P744029907249338137.Spec := by
  intro n
  simp only [A322171, Nat.add_sub_cancel]

end A322171

/-! ## A322171.P2852871795720876495

`5*(n+1)-2*sin(π*(n+1)/2)-cos(π*(n+1)/2)`
-/

namespace A322171.P2852871795720876495
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℝ) - 2 * Real.sin (Real.pi * (n + 1 : ℝ) / 2) - Real.cos (Real.pi * (n + 1 : ℝ) / 2)

end

end A322171.P2852871795720876495

namespace A322171

/-- `5*(n+1)-2*sin(π*(n+1)/2)-cos(π*(n+1)/2)` -/
def P2852871795720876495.Spec : Prop :=
  ∀ n, P2852871795720876495.a n = (A322171 (n + 1) : ℝ)

end A322171

/-! ## A322171.P16203699841924125594

`5*(n+1)-A228826(n)`
-/

namespace A322171.P16203699841924125594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A228826 n

end

end A322171.P16203699841924125594

namespace A322171

/-- `5*(n+1)-A228826(n)` -/
def P16203699841924125594.Spec : Prop :=
  ∀ n, P16203699841924125594.a n = A322171 (n + 1)

end A322171

/-! ## A322171.P16580279452106384765

`a(n-4)+20` with `a(0)=3, a(1)=11, a(2)=17, a(3)=19`
-/

namespace A322171.P16580279452106384765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 11, 17, 19] fun n a =>
  a (n - 4) + 20

end

end A322171.P16580279452106384765

namespace A322171

/-- `a(n-4)+20` -/
def P16580279452106384765.Spec : Prop :=
  ∀ n, (P16580279452106384765.a n : ℤ) = A322171 (n + 1)

end A322171

/-! ## A322171.P15147593376250442584

`∑[10-a(n-2)]` with `a(0)=3, a(1)=8, a(2)=6`
-/

namespace A322171.P15147593376250442584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 8, 6] fun n f1 =>
  10 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322171.P15147593376250442584

namespace A322171

/-- `∑[10-a(n-2)]` -/
def P15147593376250442584.Spec : Prop :=
  ∀ n, P15147593376250442584.a n = A322171 (n + 1)

end A322171

/-! ## A322171.P16855119489950589840

`10*n-a(n-2)` with `a(0)=3, a(1)=11`
-/

namespace A322171.P16855119489950589840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 11] fun n a =>
  (10 * n : ℤ) - a (n - 2)

end

end A322171.P16855119489950589840

namespace A322171

/-- `10*n-a(n-2)` -/
def P16855119489950589840.Spec : Prop :=
  ∀ n, P16855119489950589840.a n = A322171 (n + 1)

end A322171

/-! ## A322171.P1947854160291814218

`gcd(2, n)*and(3, 3*n)+5*n+3`
-/

namespace A322171.P1947854160291814218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n * Nat.land 3 (3 * n) + (5 * n + 3)

end

end A322171.P1947854160291814218

namespace A322171

/-- `gcd(2, n)*and(3, 3*n)+5*n+3` -/
def P1947854160291814218.Spec : Prop :=
  ∀ n, (P1947854160291814218.a n : ℤ) = A322171 (n + 1)

end A322171

/-! ## A322171.P7308467853752111793

`A002081(n)+A001903(n)`
-/

namespace A322171.P7308467853752111793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n + A001903 n

end

end A322171.P7308467853752111793

namespace A322171

/-- `A002081(n)+A001903(n)` -/
def P7308467853752111793.Spec : Prop :=
  ∀ n, P7308467853752111793.a n = A322171 (n + 1)

end A322171

/-! ## A322171.P11129397565028096692

`A017329(n)-A002081(n)`
-/

namespace A322171.P11129397565028096692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - A002081 n

end

end A322171.P11129397565028096692

namespace A322171

/-- `A017329(n)-A002081(n)` -/
def P11129397565028096692.Spec : Prop :=
  ∀ n, P11129397565028096692.a n = A322171 (n + 1)

end A322171

/-! ## A322171.P16876678040430239555

`A002081(n)+A001148(A159966(n))`
-/

namespace A322171.P16876678040430239555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 n + A001148 (A159966 n).toNat

end

end A322171.P16876678040430239555

namespace A322171

/-- `A002081(n)+A001148(A159966(n))` -/
def P16876678040430239555.Spec : Prop :=
  ∀ n, P16876678040430239555.a n = A322171 (n + 1)

end A322171

/-! ## A322171.P12386585911258148054

`A002081(n+2)-5`
-/

namespace A322171.P12386585911258148054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 (n + 2) - 5

end

end A322171.P12386585911258148054

namespace A322171

/-- `A002081(n+2)-5` -/
def P12386585911258148054.Spec : Prop :=
  ∀ n, P12386585911258148054.a n = A322171 (n + 1)

end A322171

/-! ## A322171.P4633659985820926483

`10*n+5-A102039(n+2)`
-/

namespace A322171.P4633659985820926483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 5 : ℤ) - A102039 (n + 2)

end

end A322171.P4633659985820926483

namespace A322171

/-- `10*n+5-A102039(n+2)` -/
def P4633659985820926483.Spec : Prop :=
  ∀ n, P4633659985820926483.a n = A322171 (n + 1)

end A322171

/-! ## A322171.P8381237020298803022

`∑[A077750(n+1)]+2*n+1`
-/

namespace A322171.P8381237020298803022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A322171.P8381237020298803022

namespace A322171

/-- `∑[A077750(n+1)]+2*n+1` -/
def P8381237020298803022.Spec : Prop :=
  ∀ n, P8381237020298803022.a n = A322171 (n + 1)

end A322171

/-! ## A322171.P1128724467317251997

`A008587(n+1)+A008587(n)-A102039(n+2)`
-/

namespace A322171.P1128724467317251997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (n + 1) + (A008587 n - A102039 (n + 2))

end

end A322171.P1128724467317251997

namespace A322171

/-- `A008587(n+1)+A008587(n)-A102039(n+2)` -/
def P1128724467317251997.Spec : Prop :=
  ∀ n, P1128724467317251997.a n = A322171 (n + 1)

end A322171

/-! ## A322171.P16282975733572582405

`∑[A000689(n+2)]-1`
-/

namespace A322171.P16282975733572582405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000689 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A322171.P16282975733572582405

namespace A322171

/-- `∑[A000689(n+2)]-1` -/
def P16282975733572582405.Spec : Prop :=
  ∀ n, P16282975733572582405.a n = A322171 (n + 1)

end A322171

/-! ## A322171.P15881171309510535451

`∑[A267317(n+2)]+n`
-/

namespace A322171.P15881171309510535451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267317 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A322171.P15881171309510535451

namespace A322171

/-- `∑[A267317(n+2)]+n` -/
def P15881171309510535451.Spec : Prop :=
  ∀ n, P15881171309510535451.a n = A322171 (n + 1)

end A322171

/-! ## A322171.P8306013639958813739

`2*(A235700(n+3)-3)+1`
-/

namespace A322171.P8306013639958813739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A235700 (n + 3) - 3) + 1

end

end A322171.P8306013639958813739

namespace A322171

/-- `2*(A235700(n+3)-3)+1` -/
def P8306013639958813739.Spec : Prop :=
  ∀ n, P8306013639958813739.a n = A322171 (n + 1)

end A322171

/-! ## A322171.P13609187793255243285

`A235699(n+3)-4`
-/

namespace A322171.P13609187793255243285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235699 (n + 3) - 4

end

end A322171.P13609187793255243285

namespace A322171

/-- `A235699(n+3)-4` -/
def P13609187793255243285.Spec : Prop :=
  ∀ n, P13609187793255243285.a n = A322171 (n + 1)

end A322171

/-! ## A322171.P11312582335806573124

`A045572(A047481(n+2))`
-/

namespace A322171.P11312582335806573124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (A047481 (n + 2)).toNat

end

end A322171.P11312582335806573124

namespace A322171

/-- `A045572(A047481(n+2))` -/
def P11312582335806573124.Spec : Prop :=
  ∀ n, P11312582335806573124.a n = A322171 (n + 1)

end A322171

/-! ## A322171.P3206410458230569240

`A045572(A047508(n+1)+1)`
-/

namespace A322171.P3206410458230569240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (A047508 (n + 1) + 1).toNat

end

end A322171.P3206410458230569240

namespace A322171

/-- `A045572(A047508(n+1)+1)` -/
def P3206410458230569240.Spec : Prop :=
  ∀ n, P3206410458230569240.a n = A322171 (n + 1)

end A322171

/-!
# A322172: Primes that are not base-7 deletable primes (written in base 10).

The programs for A322172, there is no canonical definition to state claims against.
-/

/-! ## A322172.P13900277759151599870

`p?[xor(∑{e}[n+1, #]+1, A088725(2*n+1))]`
-/

namespace A322172.P13900277759151599870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1 : ℕ) : ℤ) (A088725 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322172.P13900277759151599870

/-! ## A322172.P1638802325104100985

`p?[A109823(A091897(n+1))]`
-/

namespace A322172.P1638802325104100985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109823 (A091897 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322172.P1638802325104100985

/-!
# A322173: Base-6 deletable primes (written in base 10).

The programs for A322173, there is no canonical definition to state claims against.
-/

/-! ## A322173.P17210589423853111708

`p?[A184522(A184522(n+1)%A184428(n+1))]`
-/

namespace A322173.P17210589423853111708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184522 (Int.tmod (A184522 (n + 1)) (A184428 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322173.P17210589423853111708

/-! ## A322173.P381061440327140177

`A000040(lt[A344120(3*n+4), A001511(n+1)])`
-/

namespace A322173.P381061440327140177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344120 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322173.P381061440327140177

/-! ## A322173.P11909157845640113690

`p?[A259361(A325440(n+1)²)]`
-/

namespace A322173.P11909157845640113690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A325440 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322173.P11909157845640113690

/-! ## A322173.P13484391256362579631

`lt[A032742(n+1), A344086(n)]+1`
-/

namespace A322173.P13484391256362579631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A322173.P13484391256362579631

/-! ## A322173.P8440038878262370605

`A322864(A162950(n+2))`
-/

namespace A322173.P8440038878262370605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322864 (A162950 (n + 2)).toNat

end

end A322173.P8440038878262370605

/-!
# A322174: Primes that are not base-6 deletable primes (written in base 10).

The programs for A322174, there is no canonical definition to state claims against.
-/

/-! ## A322174.P4245613253943122005

`p?[A039590(n+1)-A010894(n)]`
-/

namespace A322174.P4245613253943122005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039590 (n + 1) - A010894 (n + 21)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A322174.P4245613253943122005

/-! ## A322174.P16613941419805377027

`∩[A039590(n+1), A141639(n+1)]`
-/

namespace A322174.P16613941419805377027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322174.P16613941419805377027

/-!
# A322175: Determinant of the symmetric n X n matrix M defined by M(i,j) = mu(gcd(i,j)) for 1 <= i,j <= n where mu is the Moebius function.

The programs for A322175, the canonical program `A322175.P18275701556869106149` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322175 has offset 0).

The definition of A322175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322175.P18275701556869106149

`a(n-1)*A007427(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A322175

/-- `a(n-1)*A007427(n)` -/
def P18275701556869106149.Spec : Prop :=
  ∀ n, P18275701556869106149.a n = A322175 n

theorem P18275701556869106149.correct : P18275701556869106149.Spec := by
  intro n
  simp only [A322175]

end A322175

/-!
# A322177: If n = Product (p_j^k_j) then a(n) = Sum (prime(p_j)^prime(k_j)).

The programs for A322177, there is no canonical definition to state claims against.
-/

/-! ## A322177.P1560670971040478531

`A304251(A304203(n+1))`
-/

namespace A322177.P1560670971040478531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304251 (A304203 (n + 1)).toNat

end

end A322177.P1560670971040478531

/-! ## A322177.P13020531006231554418

`A008475(A321874(n+1))`
-/

namespace A322177.P13020531006231554418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A321874 (n + 1)).toNat

end

end A322177.P13020531006231554418

/-! ## A322177.P18444425083837539667

`A286875(or(1, A321874(n+1)))`
-/

namespace A322177.P18444425083837539667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286875 (Int.lor 1 (A321874 (n + 1))).toNat

end

end A322177.P18444425083837539667

/-! ## A322177.P11450327022138407272

`∑{d}[A321874(n+1), A092509(#)]`
-/

namespace A322177.P11450327022138407272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A092509 d

end

end A322177.P11450327022138407272

/-! ## A322177.P8632647916493523600

`A286875(A321874(n+1)+A000007(n))`
-/

namespace A322177.P8632647916493523600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286875 (A321874 (n + 1) + A000007 n).toNat

end

end A322177.P8632647916493523600

/-!
# A322178: The number of permutations of {1,2,...,n,1,2,...,n} with the property that b(1) >= b(2) >= ... >= b(n) (there are b(k) numbers between the two k's for k=1..n).

The programs for A322178, there is no canonical definition to state claims against.
-/

/-! ## A322178.P5000250332056594964

`A332762(∑[n]+n)`
-/

namespace A322178.P5000250332056594964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332762 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A322178.P5000250332056594964

/-! ## A322178.P1140751774098334553

`or(1, A332762(A000096(n)))`
-/

namespace A322178.P1140751774098334553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A332762 (A000096 n).toNat)

end

end A322178.P1140751774098334553

/-! ## A322178.P12997947445070952123

`or(1, A332762(A347553(n+3)))`
-/

namespace A322178.P12997947445070952123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A332762 (A347553 (n + 3)).toNat)

end

end A322178.P12997947445070952123

/-! ## A322178.P10772139758036215930

`A332762(n*(n+3)/2)%A154676(n+4)`
-/

namespace A322178.P10772139758036215930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332762 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat) (A154676 (n + 4))

end

end A322178.P10772139758036215930

/-! ## A322178.P1685243614396235073

`A332762(A000096(n))+A185237(n)`
-/

namespace A322178.P1685243614396235073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332762 (A000096 n).toNat + A185237 n

end

end A322178.P1685243614396235073

/-!
# A322179: The number of permutations of {1,2,...,n,1,2,...,n} with the property that there are k or more numbers between the two k's in the set for k=1,...,n.

The programs for A322179, there is no canonical definition to state claims against.
-/

/-! ## A322179.P16883974152377092303

`A037228(A228938(n))`
-/

namespace A322179.P16883974152377092303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037228 (A228938 n).toNat

end

end A322179.P16883974152377092303

/-! ## A322179.P6352743325964800749

`A351723(A000186(n)+1)`
-/

namespace A322179.P6352743325964800749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351723 (A000186 n + 1).toNat

end

end A322179.P6352743325964800749

/-!
# A322180: The number of permutations of {1,2,...,n,1,2,...,n} with the property that there are k or fewer numbers between the two k's in the set for k=1,...,n.

The programs for A322180, there is no canonical definition to state claims against.
-/

/-! ## A322180.P4838179165961395716

`A026408((n+1)^n-n)`
-/

namespace A322180.P4838179165961395716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026408 ((n + 1) ^ n - n)

end

end A322180.P4838179165961395716

/-!
# A322181: Triangle T(n, k) read by rows, n > 0 and 0 < k <= 3^(n-1): T(n, k) = A321768(n, k) + A321769(n, k) + A321770(n, k).

The programs for A322181, there is no canonical definition to state claims against.
-/

/-! ## A322181.P12820350240577227446

`A321768(n+1)+A321784(n+1)²`
-/

namespace A322181.P12820350240577227446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321768 (n + 1) + A321784 (n + 1) ^ 2

end

end A322181.P12820350240577227446

/-! ## A322181.P17421631280487513692

`2*A321782(n+1)*A321784(n+1)`
-/

namespace A322181.P17421631280487513692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A321782 (n + 1) * A321784 (n + 1))

end

end A322181.P17421631280487513692

/-! ## A322181.P460049884200242416

`A321769(n+1)+2*A321782(n+1)²`
-/

namespace A322181.P460049884200242416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321769 (n + 1) + 2 * A321782 (n + 1) ^ 2

end

end A322181.P460049884200242416

/-! ## A322181.P12307228837923702230

`A004277(A321782(n+1))*A321784(n+1)`
-/

namespace A322181.P12307228837923702230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A321782 (n + 1)).toNat * A321784 (n + 1)

end

end A322181.P12307228837923702230

/-! ## A322181.P12141604258516909272

`A321768(n+1)+A321770(n+1)+A321769(n+1)`
-/

namespace A322181.P12141604258516909272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321768 (n + 1) + (A321770 (n + 1) + A321769 (n + 1))

end

end A322181.P12141604258516909272

/-! ## A322181.P1467295190263114015

`(A321785(n+1)+A321784(n+1))*A321784(n+1)`
-/

namespace A322181.P1467295190263114015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A321785 (n + 1) + A321784 (n + 1)) * A321784 (n + 1)

end

end A322181.P1467295190263114015

/-! ## A322181.P12348622451790100796

`A321769(n+1)/A321783(n+1)*A321784(n+1)`
-/

namespace A322181.P12348622451790100796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321769 (n + 1) : ℚ) / (A321783 (n + 1) : ℚ) * (A321784 (n + 1) : ℚ)

end

end A322181.P12348622451790100796

/-! ## A322181.P7028922113193745816

`A321768(n+1)+(A321783(n+1)+A321782(n+1))²`
-/

namespace A322181.P7028922113193745816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321768 (n + 1) + (A321783 (n + 1) + A321782 (n + 1)) ^ 2

end

end A322181.P7028922113193745816

/-! ## A322181.P14802594241263991995

`A321768(n+1)+(A321768(n+1)/A321785(n+1))²`
-/

namespace A322181.P14802594241263991995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321768 (n + 1) : ℚ) + ((A321768 (n + 1) : ℚ) / (A321785 (n + 1) : ℚ)) ^ 2

end

end A322181.P14802594241263991995

/-!
# A322182: a(1) = 1, and for any n > 0, a(n+1) is the number of occurrences of the n-th digit of the sequence among the first n digits of the sequence.

The programs for A322182, there is no canonical definition to state claims against.
-/

/-! ## A322182.P6044723636153909948

`A158416(lt[A263673(n), A080386(n+1)])`
-/

namespace A322182.P6044723636153909948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322182.P6044723636153909948

/-! ## A322182.P9728268244874803221

`A152271(A084981(n+1)%A084563(n+1))`
-/

namespace A322182.P9728268244874803221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (Int.tmod (A084981 (n + 1)) (A084563 (n + 1))).toNat

end

end A322182.P9728268244874803221

/-! ## A322182.P17310137467094785073

`A158416(lt[A263673(n), A014574(3*(n+1))])`
-/

namespace A322182.P17310137467094785073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322182.P17310137467094785073

/-! ## A322182.P5638017719592717114

`A158416(lt[A263673(n), A133263(3*(n+1))])`
-/

namespace A322182.P5638017719592717114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A322182.P5638017719592717114

/-! ## A322182.P13828286221374093529

`A152271(A084981(n+1))+A000035((4*n)²)`
-/

namespace A322182.P13828286221374093529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A084981 (n + 1)).toNat + A000035 ((4 * n) ^ 2)

end

end A322182.P13828286221374093529

/-!
# A322185: a(n) = sigma(2*n) * binomial(2*n,n)/2, for n >= 1.

The programs for A322185, the canonical program `A322185.P8829666999664919020` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322185 has offset 1).

The definition of A322185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322185.P8829666999664919020

`∑{d}[2*(n+1), #*A001405(2*n+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A322185

/-- `∑{d}[2*(n+1), #*A001405(2*n+1)]` -/
def P8829666999664919020.Spec : Prop :=
  ∀ n, P8829666999664919020.a n = A322185 (n + 1)

theorem P8829666999664919020.correct : P8829666999664919020.Spec := by
  intro n
  simp only [A322185, Nat.add_sub_cancel]

end A322185

/-! ## A322185.P15119369835164424147

`A001700(n)*A062731(n+1)`
-/

namespace A322185.P15119369835164424147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A062731 (n + 1)

end

end A322185.P15119369835164424147

namespace A322185

/-- `A001700(n)*A062731(n+1)` -/
def P15119369835164424147.Spec : Prop :=
  ∀ n, P15119369835164424147.a n = A322185 (n + 1)

end A322185

/-! ## A322185.P13350436555745118725

`A000203(2*(n+1))*A001700(n)`
-/

namespace A322185.P13350436555745118725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) * A001700 n

end

end A322185.P13350436555745118725

namespace A322185

/-- `A000203(2*(n+1))*A001700(n)` -/
def P13350436555745118725.Spec : Prop :=
  ∀ n, P13350436555745118725.a n = A322185 (n + 1)

end A322185

/-! ## A322185.P13221700996940477086

`A000203(2*(n+1))*Δ[A024718(n)]`
-/

namespace A322185.P13221700996940477086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) * (f1 (n + 1) - f1 n)

end

end A322185.P13221700996940477086

namespace A322185

/-- `A000203(2*(n+1))*Δ[A024718(n)]` -/
def P13221700996940477086.Spec : Prop :=
  ∀ n, P13221700996940477086.a n = A322185 (n + 1)

end A322185

/-! ## A322185.P17345955660904878263

`A000203(2*(n+1))*A088218(n+1)`
-/

namespace A322185.P17345955660904878263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) * A088218 (n + 1)

end

end A322185.P17345955660904878263

namespace A322185

/-- `A000203(2*(n+1))*A088218(n+1)` -/
def P17345955660904878263.Spec : Prop :=
  ∀ n, P17345955660904878263.a n = A322185 (n + 1)

end A322185

/-! ## A322185.P18357357924280885218

`A000203(2*(n+1))*A001405(2*n+1)`
-/

namespace A322185.P18357357924280885218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) * A001405 (2 * n + 1)

end

end A322185.P18357357924280885218

namespace A322185

/-- `A000203(2*(n+1))*A001405(2*n+1)` -/
def P18357357924280885218.Spec : Prop :=
  ∀ n, P18357357924280885218.a n = A322185 (n + 1)

end A322185

/-! ## A322185.P376660610842076565

`A000203(2*(n+1))/2*A000984(n+1)`
-/

namespace A322185.P376660610842076565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (2 * (n + 1)) : ℚ) / 2 * (A000984 (n + 1) : ℚ)

end

end A322185.P376660610842076565

namespace A322185

/-- `A000203(2*(n+1))/2*A000984(n+1)` -/
def P376660610842076565.Spec : Prop :=
  ∀ n, P376660610842076565.a n = (A322185 (n + 1) : ℚ)

end A322185

/-! ## A322185.P8734347351442643992

`A000203(2*(n+1))*A366108(2*n+3)`
-/

namespace A322185.P8734347351442643992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) * A366108 (2 * n + 3)

end

end A322185.P8734347351442643992

namespace A322185

/-- `A000203(2*(n+1))*A366108(2*n+3)` -/
def P8734347351442643992.Spec : Prop :=
  ∀ n, P8734347351442643992.a n = A322185 (n + 1)

end A322185

/-! ## A322185.P224091442495572726

`(A014495(2*n+1)+1)*A000203(2*(n+1))`
-/

namespace A322185.P224091442495572726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014495 (2 * n + 1) + 1) * A000203 (2 * (n + 1))

end

end A322185.P224091442495572726

namespace A322185

/-- `(A014495(2*n+1)+1)*A000203(2*(n+1))` -/
def P224091442495572726.Spec : Prop :=
  ∀ n, P224091442495572726.a n = A322185 (n + 1)

end A322185

/-! ## A322185.P9878658027373863416

`(A051920(2*n+1)-1)*A000203(2*(n+1))`
-/

namespace A322185.P9878658027373863416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051920 (2 * n + 1) - 1) * A000203 (2 * (n + 1))

end

end A322185.P9878658027373863416

namespace A322185

/-- `(A051920(2*n+1)-1)*A000203(2*(n+1))` -/
def P9878658027373863416.Spec : Prop :=
  ∀ n, P9878658027373863416.a n = A322185 (n + 1)

end A322185

/-! ## A322185.P16053964521593098585

`(A036256(2*n+1)-A036256(2*n))*A000203(2*(n+1))`
-/

namespace A322185.P16053964521593098585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036256 (2 * n + 1) - A036256 (2 * n)) * A000203 (2 * (n + 1))

end

end A322185.P16053964521593098585

namespace A322185

/-- `(A036256(2*n+1)-A036256(2*n))*A000203(2*(n+1))` -/
def P16053964521593098585.Spec : Prop :=
  ∀ n, P16053964521593098585.a n = A322185 (n + 1)

end A322185

/-! ## A322185.P12320927881238727858

`A000203(2*(n+1))*A141811(∑[n]+1)`
-/

namespace A322185.P12320927881238727858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) * A141811 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A322185.P12320927881238727858

namespace A322185

/-- `A000203(2*(n+1))*A141811(∑[n]+1)` -/
def P12320927881238727858.Spec : Prop :=
  ∀ n, P12320927881238727858.a n = A322185 (n + 1)

end A322185

/-! ## A322185.P9831444553291807888

`C(comp[2*n], n)*A000203(Δ[n²]+1)`
-/

namespace A322185.P9831444553291807888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) n : ℤ) * A000203 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat

end

end A322185.P9831444553291807888

namespace A322185

/-- `C(comp[2*n], n)*A000203(Δ[n²]+1)` -/
def P9831444553291807888.Spec : Prop :=
  ∀ n, P9831444553291807888.a n = A322185 (n + 1)

end A322185

/-!
# A322186: G.f.: exp( Sum_{n>=1} A322185(n)*x^n/n ), where A322185(n) = sigma(2*n) * binomial(2*n,n)/2.

The programs for A322186, there is no canonical definition to state claims against.
-/

/-! ## A322186.P8440931808346300246

`A350949(A000079(n))+A046902(n)`
-/

namespace A322186.P8440931808346300246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350949 (A000079 n).toNat + A046902 n

end

end A322186.P8440931808346300246

/-! ## A322186.P3184177952367173995

`A189663(A181375(n+1))+A057428(n)`
-/

namespace A322186.P3184177952367173995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A181375 (n + 1)).toNat + A057428 n

end

end A322186.P3184177952367173995

/-!
# A322187: a(n) is the coefficient of x^n*y^n/n in log( Product_{n>=1} 1/(1 - x^(2*n-1) - y^(2*n-1)) ), for n >= 1.

The programs for A322187, the canonical program `A322187.P1965569117878174367` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322187 has offset 1).

The definition of A322187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322187.P8384035311022919614

`∑{d}[n+1, A319997(#)*A382503((n+1)/#)]`
-/

namespace A322187.P8384035311022919614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319997 d * A382503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322187.P8384035311022919614

namespace A322187

/-- `∑{d}[n+1, A319997(#)*A382503((n+1)/#)]` -/
def P8384035311022919614.Spec : Prop :=
  ∀ n, P8384035311022919614.a n = A322187 (n + 1)

end A322187

/-! ## A322187.P1237727267171208873

`∑{d}[n+1, A033999(#-1)*A081875((n+1)/#)]`
-/

namespace A322187.P1237727267171208873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A081875 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322187.P1237727267171208873

namespace A322187

/-- `∑{d}[n+1, A033999(#-1)*A081875((n+1)/#)]` -/
def P1237727267171208873.Spec : Prop :=
  ∀ n, P1237727267171208873.a n = A322187 (n + 1)

end A322187

/-! ## A322187.P1965569117878174367

`∑{d}[n+1, A001700(#-1)*A193356((n+1)/#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A322187

/-- `∑{d}[n+1, A001700(#-1)*A193356((n+1)/#)]` -/
def P1965569117878174367.Spec : Prop :=
  ∀ n, P1965569117878174367.a n = A322187 (n + 1)

theorem P1965569117878174367.correct : P1965569117878174367.Spec := by
  intro n
  simp only [A322187, Nat.add_sub_cancel]

end A322187

/-! ## A322187.P2834318729615763144

`A222248(A349659(n+1)+A001700(n))`
-/

namespace A322187.P2834318729615763144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (A349659 (n + 1) + A001700 n).toNat

end

end A322187.P2834318729615763144

namespace A322187

/-- `A222248(A349659(n+1)+A001700(n))` -/
def P2834318729615763144.Spec : Prop :=
  ∀ n, P2834318729615763144.a n = A322187 (n + 1)

end A322187

/-!
# A322188: G.f.: exp( Sum_{n>=1} A322187(n)*x^n/n ), where A322187(n) is the coefficient of x^n*y^n/n in log( Product_{n>=1} 1/(1 - x^(2*n-1) - y^(2*n-1)) ).

The programs for A322188, there is no canonical definition to state claims against.
-/

/-! ## A322188.P7452024856312958334

`A360274(n)+A111900(A046161(n))`
-/

namespace A322188.P7452024856312958334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360274 n + A111900 (A046161 n).toNat

end

end A322188.P7452024856312958334

/-! ## A322188.P15519270265112620639

`A121902(A008989(n))+A120588(n+1)`
-/

namespace A322188.P15519270265112620639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A008989 n).toNat + A120588 (n + 1)

end

end A322188.P15519270265112620639

/-! ## A322188.P12190708356297620411

`A108954(A000237(n+2)-A035353(n))`
-/

namespace A322188.P12190708356297620411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A000237 (n + 2) - A035353 n).toNat

end

end A322188.P12190708356297620411

/-!
# A322190: E.g.f.: A(x,y) = (cosh(x)*cosh(y) + sinh(x) + sinh(y)) / (1 - sinh(x)*sinh(y)), where A(x,y) = Sum_{n>=0} Sum_{k>=0} T(n,k) * x^n*y^k/(n!*k!), as a square table of coefficients T(n,k) read by antidiagonals.

The programs for A322190, there is no canonical definition to state claims against.
-/

/-! ## A322190.P10053333053354266338

`A322620(n)/A007318(n)`
-/

namespace A322190.P10053333053354266338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322620 n : ℚ) / (A007318 n : ℚ)

end

end A322190.P10053333053354266338

/-! ## A322190.P16770207589614248765

`A322620(n)/Δ[A102363(n)]`
-/

namespace A322190.P16770207589614248765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322620 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A322190.P16770207589614248765

/-! ## A322190.P4434137926199667204

`2/A028326(n)*A322620(n)`
-/

namespace A322190.P4434137926199667204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A322620 n : ℚ)

end

end A322190.P4434137926199667204

/-! ## A322190.P15286726945702494775

`A322620(n)/floor((A131061(n)+3)/4)`
-/

namespace A322190.P15286726945702494775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322620 n : ℚ) / (⌊(A131061 n + 3 : ℚ) / 4⌋ : ℚ)

end

end A322190.P15286726945702494775

/-! ## A322190.P10257781161535879987

`A322620(n)/(A034852(n)+A034851(n))`
-/

namespace A322190.P10257781161535879987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322620 n : ℚ) / (A034852 n + A034851 n : ℚ)

end

end A322190.P10257781161535879987

/-! ## A322190.P12933121988990443011

`A322620(n)/A004525(A028326(n))`
-/

namespace A322190.P12933121988990443011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322620 n : ℚ) / (A004525 (A028326 n).toNat : ℚ)

end

end A322190.P12933121988990443011

/-!
# A322191: a(n) = coefficient of x^n*y^n/n in log( Product_{n>=1} 1/(1 - (x^(2*n) - y^(2*n))/(x - y)) ), for n >= 1.

The programs for A322191, there is no canonical definition to state claims against.
-/

/-! ## A322191.P1753849245202010268

`A112234(A077241(n))`
-/

namespace A322191.P1753849245202010268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112234 (A077241 n).toNat

end

end A322191.P1753849245202010268

/-!
# A322192: G.f.: exp( Sum_{n>=1} A322191(n)*x^n/n ), where A322191(n) is the coefficient of x^n*y^n/n in log( Product_{n>=1} 1/(1 - (x^(2*n) - y^(2*n))/(x - y)) ).

The programs for A322192, there is no canonical definition to state claims against.
-/

/-! ## A322192.P15223754153335345208

`A202015(p?[∑[and(3, n)]+2])`
-/

namespace A322192.P15223754153335345208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202015 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A322192.P15223754153335345208

/-! ## A322192.P11188235461561775857

`A202015(p?[∑[(n+2)%3]+n])`
-/

namespace A322192.P11188235461561775857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202015 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A322192.P11188235461561775857

/-! ## A322192.P8795725528582394435

`A202015(p?[lcm(1-n%3-n, n-1)])`
-/

namespace A322192.P8795725528582394435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((n % 3 : ℕ) : ℤ) - (n : ℤ)) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202015 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A322192.P8795725528582394435

/-!
# A322193: E.g.f.: C(x,y) = cosh(x)*cosh(y) / (1 - sinh(x)*sinh(y)), where C(x,y) = Sum_{n>=0} Sum_{k=0..2*n} T(n,k) * x^(2*n-k)*y^k/((2*n-k)!*k!), as a triangle of coefficients T(n,k) read by rows.

The programs for A322193, there is no canonical definition to state claims against.
-/

/-! ## A322193.P2622820936711088838

`A322621(n)/A034870(n)`
-/

namespace A322193.P2622820936711088838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322621 n : ℚ) / (A034870 n : ℚ)

end

end A322193.P2622820936711088838

/-! ## A322193.P2164519771769305592

`A322190(A161983(n))`
-/

namespace A322193.P2164519771769305592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322190 (A161983 n).toNat

end

end A322193.P2164519771769305592

/-! ## A322193.P3600714519095278306

`A322190(A007606(n+1)-1)`
-/

namespace A322193.P3600714519095278306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322190 (A007606 (n + 1) - 1).toNat

end

end A322193.P3600714519095278306

/-! ## A322193.P5935354688127159776

`A322190(eq[1, A057211(n+1)])`
-/

namespace A322193.P5935354688127159776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322190 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322193.P5935354688127159776

/-! ## A322193.P6139228461105394893

`A322190(2*n-A196199(n))`
-/

namespace A322193.P6139228461105394893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322190 ((2 * n : ℤ) - A196199 n).toNat

end

end A322193.P6139228461105394893

/-! ## A322193.P2403988859547850659

`A322190(n-A196199(n)+n)`
-/

namespace A322193.P2403988859547850659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322190 ((n : ℤ) - A196199 n + (n : ℤ)).toNat

end

end A322193.P2403988859547850659

/-! ## A322193.P9065225949855401812

`A322190(n-(A196199(n)-n))`
-/

namespace A322193.P9065225949855401812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322190 ((n : ℤ) - (A196199 n - (n : ℤ))).toNat

end

end A322193.P9065225949855401812

/-! ## A322193.P11642581052760514384

`A322190(A057428(n)+A007606(n+1))`
-/

namespace A322193.P11642581052760514384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322190 (A057428 n + A007606 (n + 1)).toNat

end

end A322193.P11642581052760514384

/-! ## A322193.P9409732416371523073

`A322190(A316670(n+1))`
-/

namespace A322193.P9409732416371523073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322190 (A316670 (n + 1)).toNat

end

end A322193.P9409732416371523073

/-!
# A322194: E.g.f.: S(x,y) = (sinh(x) + sinh(y)) / (1 - sinh(x)*sinh(y)), where S(x,y) = Sum_{n>=0} Sum_{k=0..2*n+1} T(n,k) * x^(2*n+1-k)*y^k/((2*n+1-k)!*k!), as a triangle of coefficients T(n,k) read by rows.

The programs for A322194, there is no canonical definition to state claims against.
-/

/-! ## A322194.P17862220184328076883

`A322622(n+1)/A034871(n)`
-/

namespace A322194.P17862220184328076883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322622 (n + 1) : ℚ) / (A034871 n : ℚ)

end

end A322194.P17862220184328076883

/-! ## A322194.P10741240181321011238

`A322622(n+1)/A007318(A162917(n+1))`
-/

namespace A322194.P10741240181321011238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322622 (n + 1) : ℚ) / (A007318 (A162917 (n + 1)).toNat : ℚ)

end

end A322194.P10741240181321011238

/-! ## A322194.P2047808224492608793

`A322190(A053187(n)+n)`
-/

namespace A322194.P2047808224492608793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322190 (A053187 n + (n : ℤ)).toNat

end

end A322194.P2047808224492608793

/-! ## A322194.P13854573185084408068

`A322190(A000194(n)²+n)`
-/

namespace A322194.P13854573185084408068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322190 (A000194 n ^ 2 + (n : ℤ)).toNat

end

end A322194.P13854573185084408068

/-! ## A322194.P11392176253503634777

`A322190(A162917(n+1))`
-/

namespace A322194.P11392176253503634777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322190 (A162917 (n + 1)).toNat

end

end A322194.P11392176253503634777

/-! ## A322194.P12595509412070854789

`A322190(eq[0, A057211(n+1)])`
-/

namespace A322194.P12595509412070854789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322190 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322194.P12595509412070854789

/-! ## A322194.P14297526113024152278

`A322190(eq[A007318(n), A155997(n)])`
-/

namespace A322194.P14297526113024152278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322190 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A322194.P14297526113024152278

/-! ## A322194.P5793998553985442063

`A322190(eq[A007318(n), A155998(n)])`
-/

namespace A322194.P5793998553985442063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322190 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A322194.P5793998553985442063

/-! ## A322194.P7682124430582295984

`A322190(eq[A155997(n), A155998(n)])`
-/

namespace A322194.P7682124430582295984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322190 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A322194.P7682124430582295984

/-!
# A322195: a(n) = [x^n*y^n/n!^2] (cosh(x)*cosh(y) + sinh(x) + sinh(y)) / (1 - sinh(x)*sinh(y)), for n >= 0.

The programs for A322195, there is no canonical definition to state claims against.
-/

/-! ## A322195.P16131152713432410230

`A322193(∑[2*n])`
-/

namespace A322195.P16131152713432410230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322193 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322195.P16131152713432410230

/-! ## A322195.P10580675554238364526

`or(2, A322193(A002378(n)))-2`
-/

namespace A322195.P10580675554238364526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A322193 (A002378 n).toNat) - 2

end

end A322195.P10580675554238364526

/-! ## A322195.P14400785074208240968

`or(A000007(n), A322193(A002378(n)))`
-/

namespace A322195.P14400785074208240968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A322193 (A002378 n).toNat)

end

end A322195.P14400785074208240968

/-! ## A322195.P17324093101067804590

`A322193(n²)*A322193(A002378(n))`
-/

namespace A322195.P17324093101067804590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322193 (n ^ 2) * A322193 (A002378 n).toNat

end

end A322195.P17324093101067804590

/-! ## A322195.P13031522915597277833

`A322193(A002378(n))+A000007(n+1)`
-/

namespace A322195.P13031522915597277833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322193 (A002378 n).toNat + A000007 (n + 1)

end

end A322195.P13031522915597277833

/-!
# A322196: a(n) = [x^(n+1)*y^n/((n+1)!*n!)] (cosh(x)*cosh(y) + sinh(x) + sinh(y)) / (1 - sinh(x)*sinh(y)), for n >= 0.

The programs for A322196, there is no canonical definition to state claims against.
-/

/-! ## A322196.P8089415927486015056

`A322194((n+1)²)`
-/

namespace A322196.P8089415927486015056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322194 ((n + 1) ^ 2)

end

end A322196.P8089415927486015056

/-! ## A322196.P20933697694593826

`record[A322194(A318274(n)²)]`
-/

namespace A322196.P20933697694593826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322194 (A318274 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322196.P20933697694593826

/-! ## A322196.P8208372028437632190

`record[A322194(∑[A008619(n)])]`
-/

namespace A322196.P8208372028437632190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322194 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322196.P8208372028437632190

/-! ## A322196.P15659228782187120469

`record[A322194(A075362(n+1))]`
-/

namespace A322196.P15659228782187120469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322194 (A075362 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322196.P15659228782187120469

/-! ## A322196.P17240739758384903735

`A322190(2*(n+1)²)`
-/

namespace A322196.P17240739758384903735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322190 (2 * (n + 1) ^ 2)

end

end A322196.P17240739758384903735

/-!
# A322197: Antidiagonal sums of square table A322190.

The programs for A322197, there is no canonical definition to state claims against.
-/

/-! ## A322197.P15081680065482470838

`A076225(A150805(n))`
-/

namespace A322197.P15081680065482470838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076225 (A150805 n).toNat

end

end A322197.P15081680065482470838

/-! ## A322197.P9566065262270896439

`A076225(A327214(n))`
-/

namespace A322197.P9566065262270896439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076225 (A327214 n).toNat

end

end A322197.P9566065262270896439

/-! ## A322197.P4865286294770707539

`A335359(A150162(n+1))`
-/

namespace A322197.P4865286294770707539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335359 (A150162 (n + 1)).toNat

end

end A322197.P4865286294770707539

/-!
# A322198: a(n) is the coefficient of x^n*y^n in Product_{n>=1} 1/(1 - x^(2*n-1) - y^(2*n-1)).

The programs for A322198, there is no canonical definition to state claims against.
-/

/-! ## A322198.P15691202339912304290

`A069013(xor(A001700(n+1), A057732(n+1)))`
-/

namespace A322198.P15691202339912304290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069013 (Int.xor (A001700 (n + 1)) (A057732 (n + 1))).toNat

end

end A322198.P15691202339912304290

/-! ## A322198.P17050117499100664361

`A065361(A054640(n))`
-/

namespace A322198.P17050117499100664361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A054640 n).toNat

end

end A322198.P17050117499100664361

/-!
# A322199: Expansion of Product_{k>=1} 1/(1 - (2^k + 1) * x^k).

The programs for A322199, there is no canonical definition to state claims against.
-/

/-! ## A322199.P17793840113081467406

`A269172(A261565(n))-A296515(n)`
-/

namespace A322199.P17793840113081467406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A261565 n).toNat - A296515 n

end

end A322199.P17793840113081467406

/-! ## A322199.P16152899114002069854

`A103221(A011782(2*(n+2))-A056347(n+1))`
-/

namespace A322199.P16152899114002069854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A011782 (2 * (n + 2)) - A056347 (n + 1)).toNat

end

end A322199.P16152899114002069854

