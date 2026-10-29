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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A105100: Sum of ordered 3 prime sided prime triangles.

The programs for A105100, the canonical program `A105100.P7877407466230205485` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105100 has offset 1).

The definition of A105100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105100.P4869003072522819928

`Δ[A109722(3*n)]`
-/

namespace A105100.P4869003072522819928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109722 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105100.P4869003072522819928

namespace A105100

/-- `Δ[A109722(3*n)]` -/
def P4869003072522819928.Spec : Prop :=
  ∀ n, P4869003072522819928.a n = A105100 (n + 1)

end A105100

/-! ## A105100.P9340088671542633259

`Δ[A007504(6*n)]`
-/

namespace A105100.P9340088671542633259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105100.P9340088671542633259

namespace A105100

/-- `Δ[A007504(6*n)]` -/
def P9340088671542633259.Spec : Prop :=
  ∀ n, P9340088671542633259.a n = A105100 (n + 1)

end A105100

/-! ## A105100.P13917692801013874461

`Δ[A262392(6*n)]`
-/

namespace A105100.P13917692801013874461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105100.P13917692801013874461

namespace A105100

/-- `Δ[A262392(6*n)]` -/
def P13917692801013874461.Spec : Prop :=
  ∀ n, P13917692801013874461.a n = A105100 (n + 1)

end A105100

/-! ## A105100.P5506906192530588946

`A127333(6*n+1)`
-/

namespace A105100.P5506906192530588946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (6 * n + 1)

end

end A105100.P5506906192530588946

namespace A105100

/-- `A127333(6*n+1)` -/
def P5506906192530588946.Spec : Prop :=
  ∀ n, P5506906192530588946.a n = A105100 (n + 1)

end A105100

/-! ## A105100.P886993594405069499

`Δ[A014284(6*n+1)]`
-/

namespace A105100.P886993594405069499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (6 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105100.P886993594405069499

namespace A105100

/-- `Δ[A014284(6*n+1)]` -/
def P886993594405069499.Spec : Prop :=
  ∀ n, P886993594405069499.a n = A105100 (n + 1)

end A105100

/-! ## A105100.P7877407466230205485

`Δ[A036439(A016777(2*n))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105100

/-- `Δ[A036439(A016777(2*n))]` -/
def P7877407466230205485.Spec : Prop :=
  ∀ n, P7877407466230205485.a n = A105100 (n + 1)

theorem P7877407466230205485.correct : P7877407466230205485.Spec := by
  intro n
  simp only [A105100, Nat.add_sub_cancel]

end A105100

/-! ## A105100.P13231597596888244078

`A100500(2*n+1)+A100500(2*(n+1))`
-/

namespace A105100.P13231597596888244078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100500 (2 * n + 1) + A100500 (2 * (n + 1))

end

end A105100.P13231597596888244078

namespace A105100

/-- `A100500(2*n+1)+A100500(2*(n+1))` -/
def P13231597596888244078.Spec : Prop :=
  ∀ n, P13231597596888244078.a n = A105100 (n + 1)

end A105100

/-!
# A105101: Sum of the vertices of ordered 3 prime sided prime triangles.

The programs for A105101, there is no canonical definition to state claims against.
-/

/-! ## A105101.P10009501101488798146

`A031377(2*n+1)+A031377(2*(n+1))+A031336(2*(n+1))`
-/

namespace A105101.P10009501101488798146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031377 (2 * n + 1) + (A031377 (2 * (n + 1)) + A031336 (2 * (n + 1)))

end

end A105101.P10009501101488798146

/-! ## A105101.P15220822320223613173

`A091735(2*n+1)+A091738(2*(n+1))+A031336(2*(n+1))`
-/

namespace A105101.P15220822320223613173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091735 (2 * n + 1) + (A091738 (2 * (n + 1)) + A031336 (2 * (n + 1)))

end

end A105101.P15220822320223613173

/-! ## A105101.P8603691491857103747

`A031368(3*n+1)+A031215(3*n+2)+A031215(3*(n+1))`
-/

namespace A105101.P8603691491857103747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (3 * n + 1) + (A031215 (3 * n + 2) + A031215 (3 * (n + 1)))

end

end A105101.P8603691491857103747

/-!
# A105102: A bi-Minimal Pisot substitution.

The programs for A105102, there is no canonical definition to state claims against.
-/

/-! ## A105102.P17429099894435190450

`A105105(A000401(n+1)%A113140(n))`
-/

namespace A105102.P17429099894435190450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105105 (Int.tmod (A000401 (n + 1)) (A113140 n)).toNat

end

end A105102.P17429099894435190450

/-! ## A105102.P8330570567997096090

`A104231(A023782(n+1)%A113140(n))`
-/

namespace A105102.P8330570567997096090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104231 (Int.tmod (A023782 (n + 1)) (A113140 n)).toNat

end

end A105102.P8330570567997096090

/-! ## A105102.P5647126692897102776

`A124767(A138141(n+1)+A094233(n))`
-/

namespace A105102.P5647126692897102776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A138141 (n + 1) + A094233 n).toNat

end

end A105102.P5647126692897102776

/-! ## A105102.P6515174417820078582

`A035931(A319953(n))`
-/

namespace A105102.P6515174417820078582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035931 (A319953 n).toNat

end

end A105102.P6515174417820078582

/-! ## A105102.P8691550857963438125

`A040585(A007088(n+1))`
-/

namespace A105102.P8691550857963438125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040585 (A007088 (n + 1)).toNat

end

end A105102.P8691550857963438125

/-!
# A105104: Write A102370 in binary (A103542), read backwards, omit leading zeros, convert to base 10.

The programs for A105104, there is no canonical definition to state claims against.
-/

/-! ## A105104.P15391431484265172974

`A030101(A102370(n))`
-/

namespace A105104.P15391431484265172974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A102370 n).toNat

end

end A105104.P15391431484265172974

/-! ## A105104.P2599300428186103057

`A105023(n)+n-A055945(A105023(n)+n)`
-/

namespace A105104.P2599300428186103057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105023 n + (n : ℤ) - A055945 (A105023 n + (n : ℤ)).toNat

end

end A105104.P2599300428186103057

/-! ## A105104.P5404734936739246583

`A325401(2*A102370(n))`
-/

namespace A105104.P5404734936739246583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A102370 n).toNat

end

end A105104.P5404734936739246583

/-! ## A105104.P9164328549151952391

`A325401(lcm(2, A102370(n)))`
-/

namespace A105104.P9164328549151952391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lcm 2 (A102370 n))

end

end A105104.P9164328549151952391

/-! ## A105104.P7732637277453590947

`A030101(A105023(n)+n)`
-/

namespace A105104.P7732637277453590947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A105023 n + (n : ℤ)).toNat

end

end A105104.P7732637277453590947

/-! ## A105104.P8956540015499570563

`A030101(2*A103185(n)+n)`
-/

namespace A105104.P8956540015499570563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * A103185 n + (n : ℤ)).toNat

end

end A105104.P8956540015499570563

/-! ## A105104.P10386762151884841734

`A030101(∑[A104378(n)]-A104378(n))`
-/

namespace A105104.P10386762151884841734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (∑ j ∈ Finset.range (n + 1), f1 j - A104378 n).toNat

end

end A105104.P10386762151884841734

/-! ## A105104.P4331046888080157120

`A030101(A103185(n)+A103185(n)+n)`
-/

namespace A105104.P4331046888080157120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A103185 n + (A103185 n + (n : ℤ))).toNat

end

end A105104.P4331046888080157120

/-!
# A105105: Triangle read by rows, based on the morphism f: 1-> 2->3 3->{6,5,4} 4->5 5->6 6->{3,2,1}. First row is 1. If current row is a,b,c,..., then the next row is a,b,c,...,f(a),f(b),f(c),...

The programs for A105105, there is no canonical definition to state claims against.
-/

/-! ## A105105.P16031740885869006754

`lcm(A105111(n), A156264(A001083(n+1)))`
-/

namespace A105105.P16031740885869006754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105111 n) (A156264 (A001083 (n + 1)).toNat)

end

end A105105.P16031740885869006754

/-! ## A105105.P16688029252430059239

`A030596(C(n, floor(n/4)))*A105111(n)`
-/

namespace A105105.P16688029252430059239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030596 (Nat.choose n ⌊(n : ℚ) / 4⌋.toNat) * A105111 n

end

end A105105.P16688029252430059239

/-! ## A105105.P12230777407553668320

`A066060(A105101(n+1))*A105111(n)`
-/

namespace A105105.P12230777407553668320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (A105101 (n + 1)).toNat * A105111 n

end

end A105105.P12230777407553668320

/-! ## A105105.P12997646516174069849

`A105111(n)*A334947(A302828(n+3))`
-/

namespace A105105.P12997646516174069849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105111 n * A334947 (A302828 (n + 3)).toNat

end

end A105105.P12997646516174069849

/-! ## A105105.P16467444567031099166

`A105111(n)*A139551(A024791(n+1))`
-/

namespace A105105.P16467444567031099166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105111 n * A139551 (A024791 (n + 1)).toNat

end

end A105105.P16467444567031099166

/-!
# A105106: Numbers k such that the string k101 is prime.

The programs for A105106, the canonical program `A105106.P14951231802033951928` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105106 has offset 1).

The definition of A105106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1682 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105106.P14951231802033951928

`eq[2, A105192(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105106

/-- `eq[2, A105192(n)]` -/
def P14951231802033951928.Spec : Prop :=
  ∀ n, (P14951231802033951928.a n : ℤ) = A105106 (n + 1)

theorem P14951231802033951928.correct : P14951231802033951928.Spec := by
  intro n
  simp only [A105106, Nat.add_sub_cancel]

end A105106

/-! ## A105106.P787004636540427340

`lt[A000005(A105192(n)²), 4]`
-/

namespace A105106.P787004636540427340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A105192 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A105106.P787004636540427340

namespace A105106

/-- `lt[A000005(A105192(n)²), 4]` -/
def P787004636540427340.Spec : Prop :=
  ∀ n, (P787004636540427340.a n : ℤ) = A105106 (n + 1)

end A105106

/-! ## A105106.P15138900199373866919

`lt[A000005(A105192(n)-1), 2]`
-/

namespace A105106.P15138900199373866919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A105192 n - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A105106.P15138900199373866919

namespace A105106

/-- `lt[A000005(A105192(n)-1), 2]` -/
def P15138900199373866919.Spec : Prop :=
  ∀ n, (P15138900199373866919.a n : ℤ) = A105106 (n + 1)

end A105106

/-! ## A105106.P4573012163853015955

`lt[A000045(A105192(n)+1), 3]`
-/

namespace A105106.P4573012163853015955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A105192 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A105106.P4573012163853015955

namespace A105106

/-- `lt[A000045(A105192(n)+1), 3]` -/
def P4573012163853015955.Spec : Prop :=
  ∀ n, (P4573012163853015955.a n : ℤ) = A105106 (n + 1)

end A105106

/-! ## A105106.P4348301101994311388

`lt[A105192(n), A105161(A105192(n)²)]`
-/

namespace A105106.P4348301101994311388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105161 (A105192 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105106.P4348301101994311388

namespace A105106

/-- `lt[A105192(n), A105161(A105192(n)²)]` -/
def P4348301101994311388.Spec : Prop :=
  ∀ n, (P4348301101994311388.a n : ℤ) = A105106 (n + 1)

end A105106

/-! ## A105106.P18376743083489353887

`lt[A105162(A105192(n)), A105161(n)]`
-/

namespace A105106.P18376743083489353887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105162 (A105192 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105106.P18376743083489353887

namespace A105106

/-- `lt[A105162(A105192(n)), A105161(n)]` -/
def P18376743083489353887.Spec : Prop :=
  ∀ n, (P18376743083489353887.a n : ℤ) = A105106 (n + 1)

end A105106

/-!
# A105107: Numbers n such that 10000n + 1001 is prime.

The programs for A105107, there is no canonical definition to state claims against.
-/

/-! ## A105107.P7487182165597867795

`eq[2, A105193(n)]`
-/

namespace A105107.P7487182165597867795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105107.P7487182165597867795

/-! ## A105107.P166083784989768376

`A000027(lt[A105193(n), 3])`
-/

namespace A105107.P166083784989768376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105193 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A105107.P166083784989768376

/-! ## A105107.P14091137035706829053

`lt[A020639(A105193(n)-1), 2]`
-/

namespace A105107.P14091137035706829053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A105193 n - 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A105107.P14091137035706829053

/-! ## A105107.P2565737899440335895

`lt[A000217(A105193(n)+1), 7]`
-/

namespace A105107.P2565737899440335895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A105193 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A105107.P2565737899440335895

/-! ## A105107.P6426922547926052124

`lt[A105193(n), A029618(A000217(n))]`
-/

namespace A105107.P6426922547926052124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105193 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029618 (A000217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105107.P6426922547926052124

/-!
# A105111: Triangle read by rows, based on the morphism f: 1->2, 2->3, 3->{3,5,4}, 4->5, 5->6, 6->{6,2,1}. First row is 1. If current row is a,b,c,..., then the next row is a,b,c,...,f(a),f(b),f(c),...

The programs for A105111, there is no canonical definition to state claims against.
-/

/-! ## A105111.P5665121812642150354

`A104231(lt[A281554(n+1), A286938(n)])`
-/

namespace A105111.P5665121812642150354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104231 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105111.P5665121812642150354

/-! ## A105111.P6028991316337354104

`A104231(A000401(n+1)%A113140(n))`
-/

namespace A105111.P6028991316337354104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104231 (Int.tmod (A000401 (n + 1)) (A113140 n)).toNat

end

end A105111.P6028991316337354104

/-! ## A105111.P12064644255290461435

`A104231(lt[A281554(n+1), ∑[(n+1)²]-n])`
-/

namespace A105111.P12064644255290461435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281554 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104231 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105111.P12064644255290461435

/-! ## A105111.P10418337836992522112

`A105105(n)/A066060(A105101(n+1))`
-/

namespace A105111.P10418337836992522112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105105 n : ℚ) / (A066060 (A105101 (n + 1)).toNat : ℚ)

end

end A105111.P10418337836992522112

/-! ## A105111.P2890894019906440041

`A104231(lt[A025152(n), A304751(n+4)])`
-/

namespace A105111.P2890894019906440041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025152 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304751 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104231 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105111.P2890894019906440041

/-!
# A105112: Triangle read by rows, based on the morphism f: 1->2, 2->3, 3->{3,5,5,4}, 4->5, 5->6, 6->{6,2,2,1}. First row is 1. If current row is a,b,c,..., then the next row is a,b,c,...,f(a),f(b),f(c),...

The programs for A105112, there is no canonical definition to state claims against.
-/

/-! ## A105112.P5331882298077992732

`A105113(lt[A349454(n), A246128(2*n+3)])`
-/

namespace A105112.P5331882298077992732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349454 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246128 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105113 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105112.P5331882298077992732

/-! ## A105112.P13249365957677042930

`A104231(n)+A004530(A000799(n+1))`
-/

namespace A105112.P13249365957677042930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104231 n + A004530 (A000799 (n + 1)).toNat

end

end A105112.P13249365957677042930

/-! ## A105112.P1980379754120899430

`A105113(lt[A363748(3*n), A065642(2*n+5)])`
-/

namespace A105112.P1980379754120899430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363748 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105113 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105112.P1980379754120899430

/-! ## A105112.P2285288028396179139

`A001222(A161973(n+1)^A105113(n))`
-/

namespace A105112.P2285288028396179139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A161973 (n + 1) : ℚ) ^ (A105113 n : ℤ))).toNat

end

end A105112.P2285288028396179139

/-!
# A105115: Numbers k such that the decimal representation of 1/k is neither terminating nor purely repeating.

The programs for A105115, the canonical program `A105115.P15486050954571292780` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105115 has offset 1).

The definition of A105115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5982 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105115.P15486050954571292780

`∩[A065502(n+1), A085837(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105115

/-- `∩[A065502(n+1), A085837(n+1)]` -/
def P15486050954571292780.Spec : Prop :=
  ∀ n, (P15486050954571292780.a n : ℤ) = A105115 (n + 1)

theorem P15486050954571292780.correct : P15486050954571292780.Spec := by
  intro n
  simp only [A105115, Nat.add_sub_cancel]

end A105115

/-! ## A105115.P2776932300780304016

`lt[A084680(n+1), A051626(n+1)]+1`
-/

namespace A105115.P2776932300780304016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A105115.P2776932300780304016

namespace A105115

/-- `lt[A084680(n+1), A051626(n+1)]+1` -/
def P2776932300780304016.Spec : Prop :=
  ∀ n, (P2776932300780304016.a n : ℤ) = A105115 (n + 1)

end A105115

/-! ## A105115.P8212758630162415090

`A020725(lt[A084680(n+1), A051626(n+1)])`
-/

namespace A105115.P8212758630162415090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105115.P8212758630162415090

namespace A105115

/-- `A020725(lt[A084680(n+1), A051626(n+1)])` -/
def P8212758630162415090.Spec : Prop :=
  ∀ n, P8212758630162415090.a n = A105115 (n + 1)

end A105115

/-! ## A105115.P11032834432960385773

`A326178(lt[A084680(n+1), A051626(n+1)])`
-/

namespace A105115.P11032834432960385773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105115.P11032834432960385773

namespace A105115

/-- `A326178(lt[A084680(n+1), A051626(n+1)])` -/
def P11032834432960385773.Spec : Prop :=
  ∀ n, P11032834432960385773.a n = A105115 (n + 1)

end A105115

/-! ## A105115.P9548236747727235562

`eq[A084680(n+1)+A007732(n+1), A051626(n+1)]+1`
-/

namespace A105115.P9548236747727235562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084680 (n + 1) + A007732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A105115.P9548236747727235562

namespace A105115

/-- `eq[A084680(n+1)+A007732(n+1), A051626(n+1)]+1` -/
def P9548236747727235562.Spec : Prop :=
  ∀ n, (P9548236747727235562.a n : ℤ) = A105115 (n + 1)

end A105115

/-! ## A105115.P8898013494213684528

`eq[1, A304572(A000217(n+10)-10)]`
-/

namespace A105115.P8898013494213684528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304572 (A000217 (n + 10) - 10).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105115.P8898013494213684528

namespace A105115

/-- `eq[1, A304572(A000217(n+10)-10)]` -/
def P8898013494213684528.Spec : Prop :=
  ∀ n, (P8898013494213684528.a n : ℤ) = A105115 (n + 1)

end A105115

/-!
# A105116: The part of n left of the decimal point when written in base e using a greedy algorithm representation.

The programs for A105116, there is no canonical definition to state claims against.
-/

/-! ## A105116.P4539707894643824806

`eq[A007953(n), A055640(A068522(3*n))]`
-/

namespace A105116.P4539707894643824806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A068522 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105116.P4539707894643824806

/-! ## A105116.P6392262656127309840

`lt[A003132(n), A054055(A053752(2*n+3))]`
-/

namespace A105116.P6392262656127309840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A053752 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105116.P6392262656127309840

/-! ## A105116.P4773233001680239007

`A007089(lt[A181651(3*n+4), 19])`
-/

namespace A105116.P4773233001680239007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181651 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A105116.P4773233001680239007

/-! ## A105116.P3291591477051277673

`A007089(lt[A013929(n+1), A370923(3*n+5)])`
-/

namespace A105116.P3291591477051277673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370923 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A105116.P3291591477051277673

/-!
# A105117: Minimal number of perfect powers needed to sum to prime(n).

The programs for A105117, there is no canonical definition to state claims against.
-/

/-! ## A105117.P3142404730607530595

`A274459(p?[comp[n²]])`
-/

namespace A105117.P3142404730607530595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A105117.P3142404730607530595

/-! ## A105117.P5786625851640369697

`A274459(Δ[A007504(n)])`
-/

namespace A105117.P5786625851640369697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (f1 (n + 1) - f1 n).toNat

end

end A105117.P5786625851640369697

/-! ## A105117.P7676507283138989870

`A274459(record[A051698(n)])`
-/

namespace A105117.P7676507283138989870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105117.P7676507283138989870

/-! ## A105117.P2545765996711677677

`A274459(record[A162753(n)])`
-/

namespace A105117.P2545765996711677677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105117.P2545765996711677677

/-! ## A105117.P17205944515345356121

`A274459(comp[A103164(n)])`
-/

namespace A105117.P17205944515345356121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A105117.P17205944515345356121

/-! ## A105117.P10145268103360511650

`A274459(A000040(n+1))`
-/

namespace A105117.P10145268103360511650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (A000040 (n + 1)).toNat

end

end A105117.P10145268103360511650

/-! ## A105117.P5815014555679700731

`A274459(A008578(n+2))`
-/

namespace A105117.P5815014555679700731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (A008578 (n + 2)).toNat

end

end A105117.P5815014555679700731

/-! ## A105117.P16847820837006187308

`A274459(A182986(n+2))`
-/

namespace A105117.P16847820837006187308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (A182986 (n + 2)).toNat

end

end A105117.P16847820837006187308

/-! ## A105117.P1605174076879924443

`A274459(eq[1, A003415(n)])`
-/

namespace A105117.P1605174076879924443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A105117.P1605174076879924443

/-! ## A105117.P12376707625458067631

`A274459(eq[1, A032741(n)])`
-/

namespace A105117.P12376707625458067631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A105117.P12376707625458067631

/-! ## A105117.P4564267013976799064

`A274459(eq[2, A005128(n)])`
-/

namespace A105117.P4564267013976799064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A105117.P4564267013976799064

/-! ## A105117.P15030462031938170060

`A274459(eq[2, A007012(n)])`
-/

namespace A105117.P15030462031938170060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A105117.P15030462031938170060

/-! ## A105117.P1358148547062455351

`A274459(record[A006530(n+2)])`
-/

namespace A105117.P1358148547062455351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105117.P1358148547062455351

/-! ## A105117.P425371408096512577

`A274459(record[A014963(n+2)])`
-/

namespace A105117.P425371408096512577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105117.P425371408096512577

/-! ## A105117.P3672389830293815391

`A274459(record[A020639(n+2)])`
-/

namespace A105117.P3672389830293815391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105117.P3672389830293815391

/-! ## A105117.P52396136668648125

`A274459(record[A000010(n+1)+1])`
-/

namespace A105117.P52396136668648125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105117.P52396136668648125

/-! ## A105117.P11654790611893922406

`A274459(eq[2, A000005(n+1)]+1)`
-/

namespace A105117.P11654790611893922406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A105117.P11654790611893922406

/-!
# A105118: a(n) = prime(n) + prime(n+k) mod 3, where k = (1/2)*(prime(n+1) - prime(n)).

The programs for A105118, the canonical program `A105118.P4038010861471870889` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105118 has offset 2).

The definition of A105118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105118.P4038010861471870889

`(A000040(n+2)+A000040(n+2+(A000040(n+3)-A000040(n+2))/2))%3`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105118

/-- `(A000040(n+2)+A000040(n+2+(A000040(n+3)-A000040(n+2))/2))%3` -/
def P4038010861471870889.Spec : Prop :=
  ∀ n, P4038010861471870889.a n = A105118 (n + 2)

theorem P4038010861471870889.correct : P4038010861471870889.Spec := by
  intro n
  simp only [A105118, Nat.add_sub_cancel]

end A105118

/-! ## A105118.P2423853110860822105

`A010673(A256632(n+4))`
-/

namespace A105118.P2423853110860822105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (A256632 (n + 4)).toNat

end

end A105118.P2423853110860822105

namespace A105118

/-- `A010673(A256632(n+4))` -/
def P2423853110860822105.Spec : Prop :=
  ∀ n, P2423853110860822105.a n = A105118 (n + 2)

end A105118

/-! ## A105118.P5917627738299919475

`C(2, A187818(A051701(n+1)))`
-/

namespace A105118.P5917627738299919475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A187818 (A051701 (n + 1)).toNat).toNat

end

end A105118.P5917627738299919475

namespace A105118

/-- `C(2, A187818(A051701(n+1)))` -/
def P5917627738299919475.Spec : Prop :=
  ∀ n, (P5917627738299919475.a n : ℤ) = A105118 (n + 2)

end A105118

/-! ## A105118.P5925396384167720182

`and(2, A046421(A327878(n+1)))`
-/

namespace A105118.P5925396384167720182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A046421 (A327878 (n + 1)).toNat)

end

end A105118.P5925396384167720182

namespace A105118

/-- `and(2, A046421(A327878(n+1)))` -/
def P5925396384167720182.Spec : Prop :=
  ∀ n, P5925396384167720182.a n = A105118 (n + 2)

end A105118

/-! ## A105118.P8996159989305929563

`and(2, A324978(A141654(n+1)))`
-/

namespace A105118.P8996159989305929563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A324978 (A141654 (n + 1)).toNat)

end

end A105118.P8996159989305929563

namespace A105118

/-- `and(2, A324978(A141654(n+1)))` -/
def P8996159989305929563.Spec : Prop :=
  ∀ n, P8996159989305929563.a n = A105118 (n + 2)

end A105118

/-!
# A105119: Numbers obtained by rotating right the indices in the prime signature of n.

The programs for A105119, there is no canonical definition to state claims against.
-/

/-! ## A105119.P17569656103247219482

`A069799(A225891(A069799(n+1)))`
-/

namespace A105119.P17569656103247219482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (A225891 (A069799 (n + 1)).toNat).toNat

end

end A105119.P17569656103247219482

/-! ## A105119.P951457459008484787

`A293448(A225891(A293448(n+1)))`
-/

namespace A105119.P951457459008484787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293448 (A225891 (A293448 (n + 1)).toNat).toNat

end

end A105119.P951457459008484787

/-! ## A105119.P7247644588433331850

`A242419(A242420(n+1))`
-/

namespace A105119.P7247644588433331850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (A242420 (n + 1)).toNat

end

end A105119.P7247644588433331850

/-! ## A105119.P13408343525999346689

`A242419(A225891(A242419(n+1)))`
-/

namespace A105119.P13408343525999346689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (A225891 (A242419 (n + 1)).toNat).toNat

end

end A105119.P13408343525999346689

/-! ## A105119.P13902366817159697760

`A242419(lcm(A053585(n+1), A243057(n+1)))`
-/

namespace A105119.P13902366817159697760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (Int.lcm (A053585 (n + 1)) (A243057 (n + 1)))

end

end A105119.P13902366817159697760

/-! ## A105119.P10486227208750698899

`A242419((n+1)*A243057(n+1)/A243074(n+1))`
-/

namespace A105119.P10486227208750698899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((A243057 (n + 1) : ℚ) / (A243074 (n + 1) : ℚ)))).toNat

end

end A105119.P10486227208750698899

/-!
# A105120: a(1) = 2; k(1) = 0; for n > 1: k(n) = smallest number j >= k(n-1) such that 2*a(n-1) + j is prime; a(n) = 2*a(n-1) + k(n).

The programs for A105120, there is no canonical definition to state claims against.
-/

/-! ## A105120.P13297519365218603415

`A105121(n+1)+2*a(n-1)` with `a(0)=2`
-/

namespace A105120.P13297519365218603415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A105121 (n + 1) + 2 * a (n - 1)

end

end A105120.P13297519365218603415

/-!
# A105121: Numbers k(n) from A105120.

The programs for A105121, there is no canonical definition to state claims against.
-/

/-! ## A105121.P924727701333582987

`A105120(n+1)%A105120(A028310(n))`
-/

namespace A105121.P924727701333582987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105120 (n + 1)) (A105120 (A028310 n).toNat)

end

end A105121.P924727701333582987

/-! ## A105121.P6875267638018619101

`A105120(n+1)-A004277(record[A163963(n+1)])`
-/

namespace A105121.P6875267638018619101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105120 (n + 1) - A004277 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105121.P6875267638018619101

/-!
# A105122: Positive integers n such that n^11 + 1 is semiprime.

The programs for A105122, there is no canonical definition to state claims against.
-/

/-! ## A105122.P14650529720602984505

`p?[A250178(n+1)+1]-1`
-/

namespace A105122.P14650529720602984505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250178 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A105122.P14650529720602984505

/-! ## A105122.P5777055399190158216

`xor(1, A285125(2*(n+1))+p?[A250178(n+1)+1])`
-/

namespace A105122.P5777055399190158216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250178 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A285125 (2 * (n + 1)) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A105122.P5777055399190158216

/-! ## A105122.P3045895033607366696

`∩[A006093(n+1), A250178(n+1)]`
-/

namespace A105122.P3045895033607366696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105122.P3045895033607366696

/-! ## A105122.P16753878407582632762

`∩[A068499(n+1), A250178(n+1)]`
-/

namespace A105122.P16753878407582632762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105122.P16753878407582632762

/-! ## A105122.P1600330537582634901

`A000010(p?[A250178(n+1)+1])`
-/

namespace A105122.P1600330537582634901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250178 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105122.P1600330537582634901

/-!
# A105124: Three-dimensional small Schroeder numbers.

The programs for A105124, there is no canonical definition to state claims against.
-/

/-! ## A105124.P609928915062313035

`ceil(A088594(n)/4)`
-/

namespace A105124.P609928915062313035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088594 n : ℚ) / 4⌉

end

end A105124.P609928915062313035

/-! ## A105124.P3167042821168972212

`A088594(A028310(n))/4`
-/

namespace A105124.P3167042821168972212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088594 (A028310 n).toNat : ℚ) / 4

end

end A105124.P3167042821168972212

/-! ## A105124.P6295461170316498143

`A088594(n)/dr(A088581(n))`
-/

namespace A105124.P6295461170316498143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088594 n : ℚ) / (SequenceMachineLib.digitalRoot (A088581 n) : ℚ)

end

end A105124.P6295461170316498143

/-! ## A105124.P11445057854406938220

`(A088594(n)/4)^A178334(n)`
-/

namespace A105124.P11445057854406938220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A088594 n : ℚ) / 4) ^ (A178334 n : ℤ)

end

end A105124.P11445057854406938220

/-! ## A105124.P16618909096158338307

`floor(2/A000040(n+1)+A088594(n)/4)`
-/

namespace A105124.P16618909096158338307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (A000040 (n + 1) : ℚ) + (A088594 n : ℚ) / 4⌋

end

end A105124.P16618909096158338307

/-! ## A105124.P56569387295220118

`A088594(n)/A088594(A178334(n))`
-/

namespace A105124.P56569387295220118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088594 n : ℚ) / (A088594 (A178334 n).toNat : ℚ)

end

end A105124.P56569387295220118

/-!
# A105125: Triangle read by rows: T(n,k) = n^3 + k^3, n >= 0, 0 <= k <= n.

The programs for A105125, the canonical program `A105125.P5347424633448866234` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105125 has offset 0).

The definition of A105125 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)^3+col(n)^3` (program `A105125.P5347424633448866234`, by `A105125.P5347424633448866234.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105125.P5347424633448866234

`row(n)^3+col(n)^3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105125

/-- `row(n)^3+col(n)^3` -/
def P5347424633448866234.Spec : Prop :=
  ∀ n, (P5347424633448866234.a n : ℤ) = A105125 n

theorem P5347424633448866234.correct : P5347424633448866234.Spec := by
  intro n
  simp only [A105125]

end A105125

/-! ## A105125.P5189080346245451037

`A051162(n)*A073254(n)`
-/

namespace A105125.P5189080346245451037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n * A073254 n

end

end A105125.P5189080346245451037

namespace A105125

/-- `A051162(n)*A073254(n)` -/
def P5189080346245451037.Spec : Prop :=
  ∀ n, P5189080346245451037.a n = A105125 n

theorem P5189080346245451037.correct : P5189080346245451037.Spec := by
  intro n
  simp only [A105125, Nat.add_sub_cancel, A105125.P5189080346245451037.a, A105125.P5347424633448866234.a, A051162, A051162.P4484969187050632534.a, A073254, A073254.P5875854829665146571.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105125

/-! ## A105125.P13489826409830617213

`A073254(n)*A134478(n)`
-/

namespace A105125.P13489826409830617213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n * A134478 n

end

end A105125.P13489826409830617213

namespace A105125

/-- `A073254(n)*A134478(n)` -/
def P13489826409830617213.Spec : Prop :=
  ∀ n, P13489826409830617213.a n = A105125 n

end A105125

/-! ## A105125.P16382915541319415625

`(A094727(n+1)-1)*A073254(n)`
-/

namespace A105125.P16382915541319415625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094727 (n + 1) - 1) * A073254 n

end

end A105125.P16382915541319415625

namespace A105125

/-- `(A094727(n+1)-1)*A073254(n)` -/
def P16382915541319415625.Spec : Prop :=
  ∀ n, P16382915541319415625.a n = A105125 n

theorem P16382915541319415625.correct : P16382915541319415625.Spec := by
  intro n
  simp only [A105125, Nat.add_sub_cancel, A105125.P16382915541319415625.a, A105125.P5347424633448866234.a, A073254, A073254.P5875854829665146571.a, A094727, A094727.P1041695477673985807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105125

/-! ## A105125.P13400076795084506739

`A257238(n)+A033431(A002262(n))`
-/

namespace A105125.P13400076795084506739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257238 n + A033431 (A002262 n).toNat

end

end A105125.P13400076795084506739

namespace A105125

/-- `A257238(n)+A033431(A002262(n))` -/
def P13400076795084506739.Spec : Prop :=
  ∀ n, P13400076795084506739.a n = A105125 n

end A105125

/-! ## A105125.P3062731330060476085

`A033431(A003056(n))-A257238(n)`
-/

namespace A105125.P3062731330060476085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (A003056 n).toNat - A257238 n

end

end A105125.P3062731330060476085

namespace A105125

/-- `A033431(A003056(n))-A257238(n)` -/
def P3062731330060476085.Spec : Prop :=
  ∀ n, P3062731330060476085.a n = A105125 n

end A105125

/-! ## A105125.P4476092173513681871

`A073254(n)*A294317(A061579(n))`
-/

namespace A105125.P4476092173513681871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n * A294317 (A061579 n).toNat

end

end A105125.P4476092173513681871

namespace A105125

/-- `A073254(n)*A294317(A061579(n))` -/
def P4476092173513681871.Spec : Prop :=
  ∀ n, P4476092173513681871.a n = A105125 n

end A105125

/-! ## A105125.P16133198675925597530

`(A079904(n)+A025581(n)²)*A051162(n)`
-/

namespace A105125.P16133198675925597530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079904 n + A025581 n ^ 2) * A051162 n

end

end A105125.P16133198675925597530

namespace A105125

/-- `(A079904(n)+A025581(n)²)*A051162(n)` -/
def P16133198675925597530.Spec : Prop :=
  ∀ n, P16133198675925597530.a n = A105125 n

theorem P16133198675925597530.correct : P16133198675925597530.Spec := by
  intro n
  simp only [A105125, Nat.add_sub_cancel, A105125.P16133198675925597530.a, A105125.P5347424633448866234.a, A025581, A025581.P16112744757063613497.a, A051162, A051162.P4484969187050632534.a, A079904, A079904.P681072687927778273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105125

/-! ## A105125.P3454753744252449076

`A000578(A002262(n))+A000578(A003056(n))`
-/

namespace A105125.P3454753744252449076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A002262 n).toNat + A000578 (A003056 n).toNat

end

end A105125.P3454753744252449076

namespace A105125

/-- `A000578(A002262(n))+A000578(A003056(n))` -/
def P3454753744252449076.Spec : Prop :=
  ∀ n, P3454753744252449076.a n = A105125 n

end A105125

/-! ## A105125.P4026574258456677857

`A053186(A061885(n))*A073254(n)`
-/

namespace A105125.P4026574258456677857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A061885 n).toNat * A073254 n

end

end A105125.P4026574258456677857

namespace A105125

/-- `A053186(A061885(n))*A073254(n)` -/
def P4026574258456677857.Spec : Prop :=
  ∀ n, P4026574258456677857.a n = A105125 n

end A105125

/-! ## A105125.P915671117072380409

`A003056(A245300(n))*A073254(n)`
-/

namespace A105125.P915671117072380409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A245300 n).toNat * A073254 n

end

end A105125.P915671117072380409

namespace A105125

/-- `A003056(A245300(n))*A073254(n)` -/
def P915671117072380409.Spec : Prop :=
  ∀ n, P915671117072380409.a n = A105125 n

end A105125

/-!
# A105126: Primes of the form 16n+9.

The programs for A105126, the canonical program `A105126.P17832281701404375684` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105126 has offset 1).

The definition of A105126 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A105126.anchor (n : ℕ) (hn : 1 ≤ n) : A105126 n = (Nat.nth (fun p => p.Prime ∧ p % 16 ∈ ({9} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A105.A105126`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105126.P17832281701404375684

`∪[A142038(n+1), A142045(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105126

/-- `∪[A142038(n+1), A142045(n+1)]` -/
def P17832281701404375684.Spec : Prop :=
  ∀ n, (P17832281701404375684.a n : ℤ) = A105126 (n + 1)

theorem P17832281701404375684.correct : P17832281701404375684.Spec := by
  intro n
  simp only [A105126, Nat.add_sub_cancel]

end A105126

/-! ## A105126.P2941290444656039172

`∪[A142406(n+1), A142411(n+1)]`
-/

namespace A105126.P2941290444656039172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A105126.P2941290444656039172

namespace A105126

/-- `∪[A142406(n+1), A142411(n+1)]` -/
def P2941290444656039172.Spec : Prop :=
  ∀ n, (P2941290444656039172.a n : ℤ) = A105126 (n + 1)

end A105126

/-! ## A105126.P15391174361957317781

`p?[4*4*n-7]`
-/

namespace A105126.P15391174361957317781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (4 * n) : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105126.P15391174361957317781

namespace A105126

/-- `p?[4*4*n-7]` -/
def P15391174361957317781.Spec : Prop :=
  ∀ n, P15391174361957317781.a n = A105126 (n + 1)

end A105126

/-! ## A105126.P10244694531106012889

`or(1, p?[4*4*n+9])`
-/

namespace A105126.P10244694531106012889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (4 * n) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A105126.P10244694531106012889

namespace A105126

/-- `or(1, p?[4*4*n+9])` -/
def P10244694531106012889.Spec : Prop :=
  ∀ n, (P10244694531106012889.a n : ℤ) = A105126 (n + 1)

end A105126

/-! ## A105126.P1669877829532178674

`A339900(8*n+4)`
-/

namespace A105126.P1669877829532178674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339900 (8 * n + 4)

end

end A105126.P1669877829532178674

namespace A105126

/-- `A339900(8*n+4)` -/
def P1669877829532178674.Spec : Prop :=
  ∀ n, P1669877829532178674.a n = A105126 (n + 1)

end A105126

/-! ## A105126.P4697427032820297669

`A000040(eq[8, and(14, A000040(n+1))]+1)`
-/

namespace A105126.P4697427032820297669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 14 (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A105126.P4697427032820297669

namespace A105126

/-- `A000040(eq[8, and(14, A000040(n+1))]+1)` -/
def P4697427032820297669.Spec : Prop :=
  ∀ n, P4697427032820297669.a n = A105126 (n + 1)

end A105126

/-! ## A105126.P10139811541795699707

`A008578(eq[8, and(14, A008578(n+1))]+1)`
-/

namespace A105126.P10139811541795699707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 14 (A008578 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A105126.P10139811541795699707

namespace A105126

/-- `A008578(eq[8, and(14, A008578(n+1))]+1)` -/
def P10139811541795699707.Spec : Prop :=
  ∀ n, P10139811541795699707.a n = A105126 (n + 1)

end A105126

/-! ## A105126.P8942817685708317980

`record[A006530(8*2*(n+2)+9)]`
-/

namespace A105126.P8942817685708317980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * (2 * (n + 2)) + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105126.P8942817685708317980

namespace A105126

/-- `record[A006530(8*2*(n+2)+9)]` -/
def P8942817685708317980.Spec : Prop :=
  ∀ n, P8942817685708317980.a n = A105126 (n + 1)

end A105126

/-! ## A105126.P10834767350640310252

`A000027(p?[A004768(2*n)])`
-/

namespace A105126.P10834767350640310252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105126.P10834767350640310252

namespace A105126

/-- `A000027(p?[A004768(2*n)])` -/
def P10834767350640310252.Spec : Prop :=
  ∀ n, P10834767350640310252.a n = A105126 (n + 1)

end A105126

/-! ## A105126.P2264792912202721550

`A008472(p?[A004768(2*n)])`
-/

namespace A105126.P2264792912202721550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105126.P2264792912202721550

namespace A105126

/-- `A008472(p?[A004768(2*n)])` -/
def P2264792912202721550.Spec : Prop :=
  ∀ n, P2264792912202721550.a n = A105126 (n + 1)

end A105126

/-! ## A105126.P14010784944833574385

`filter[A004768(2*n), A010051(#)]`
-/

namespace A105126.P14010784944833574385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A105126.P14010784944833574385

namespace A105126

/-- `filter[A004768(2*n), A010051(#)]` -/
def P14010784944833574385.Spec : Prop :=
  ∀ n, P14010784944833574385.a n = A105126 (n + 1)

end A105126

/-! ## A105126.P10334806877809589292

`filter[A004768(2*n), A365716(#)]`
-/

namespace A105126.P10334806877809589292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A105126.P10334806877809589292

namespace A105126

/-- `filter[A004768(2*n), A365716(#)]` -/
def P10334806877809589292.Spec : Prop :=
  ∀ n, P10334806877809589292.a n = A105126 (n + 1)

end A105126

/-! ## A105126.P11427586923181298509

`filter[A004768(2*n), A379969(#)]`
-/

namespace A105126.P11427586923181298509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A105126.P11427586923181298509

namespace A105126

/-- `filter[A004768(2*n), A379969(#)]` -/
def P11427586923181298509.Spec : Prop :=
  ∀ n, P11427586923181298509.a n = A105126 (n + 1)

end A105126

/-! ## A105126.P2999698992293449413

`∩[A004769(2*n)-2, A004139(n+2)]`
-/

namespace A105126.P2999698992293449413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004769 (2 * n) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105126.P2999698992293449413

namespace A105126

/-- `∩[A004769(2*n)-2, A004139(n+2)]` -/
def P2999698992293449413.Spec : Prop :=
  ∀ n, (P2999698992293449413.a n : ℤ) = A105126 (n + 1)

end A105126

/-! ## A105126.P8791733356774855998

`filter[A004768(2*n), A323152(#)]`
-/

namespace A105126.P8791733356774855998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A105126.P8791733356774855998

namespace A105126

/-- `filter[A004768(2*n), A323152(#)]` -/
def P8791733356774855998.Spec : Prop :=
  ∀ n, P8791733356774855998.a n = A105126 (n + 1)

end A105126

/-! ## A105126.P17150673373110807487

`filter[A004768(2*n), A323153(#)]`
-/

namespace A105126.P17150673373110807487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A105126.P17150673373110807487

namespace A105126

/-- `filter[A004768(2*n), A323153(#)]` -/
def P17150673373110807487.Spec : Prop :=
  ∀ n, P17150673373110807487.a n = A105126 (n + 1)

end A105126

/-! ## A105126.P14674323355877705329

`filter[A004768(2*n), A340371(#)]`
-/

namespace A105126.P14674323355877705329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A105126.P14674323355877705329

namespace A105126

/-- `filter[A004768(2*n), A340371(#)]` -/
def P14674323355877705329.Spec : Prop :=
  ∀ n, P14674323355877705329.a n = A105126 (n + 1)

end A105126

/-! ## A105126.P9331617536144167326

`filter[A004768(2*n), A353670(#)]`
-/

namespace A105126.P9331617536144167326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A105126.P9331617536144167326

namespace A105126

/-- `filter[A004768(2*n), A353670(#)]` -/
def P9331617536144167326.Spec : Prop :=
  ∀ n, P9331617536144167326.a n = A105126 (n + 1)

end A105126

/-! ## A105126.P10084310421902563690

`filter[A004768(2*n), A353817(#)]`
-/

namespace A105126.P10084310421902563690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A105126.P10084310421902563690

namespace A105126

/-- `filter[A004768(2*n), A353817(#)]` -/
def P10084310421902563690.Spec : Prop :=
  ∀ n, P10084310421902563690.a n = A105126 (n + 1)

end A105126

/-! ## A105126.P7417443585518317855

`∩[A002144(n+1), A296368(n)]`
-/

namespace A105126.P7417443585518317855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296368 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105126.P7417443585518317855

namespace A105126

/-- `∩[A002144(n+1), A296368(n)]` -/
def P7417443585518317855.Spec : Prop :=
  ∀ n, (P7417443585518317855.a n : ℤ) = A105126 (n + 1)

end A105126

/-!
# A105127: Primes of the form 32n+17.

The programs for A105127, the canonical program `A105127.P662147929748795778` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105127 has offset 1).

The definition of A105127 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A105127.anchor (n : ℕ) (hn : 1 ≤ n) : A105127 n = (Nat.nth (fun p => p.Prime ∧ p % 32 ∈ ({17} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A105.A105127`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105127.P662147929748795778

`∪[A142933(n+1), A142947(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105127

/-- `∪[A142933(n+1), A142947(n+1)]` -/
def P662147929748795778.Spec : Prop :=
  ∀ n, (P662147929748795778.a n : ℤ) = A105127 (n + 1)

theorem P662147929748795778.correct : P662147929748795778.Spec := by
  intro n
  simp only [A105127, Nat.add_sub_cancel]

end A105127

/-! ## A105127.P2695300912649583529

`p?[4*8*n-15]`
-/

namespace A105127.P2695300912649583529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (8 * n) : ℤ) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105127.P2695300912649583529

namespace A105127

/-- `p?[4*8*n-15]` -/
def P2695300912649583529.Spec : Prop :=
  ∀ n, P2695300912649583529.a n = A105127 (n + 1)

end A105127

/-! ## A105127.P8143976058999915619

`A339900(8*(2*n+1))`
-/

namespace A105127.P8143976058999915619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339900 (8 * (2 * n + 1))

end

end A105127.P8143976058999915619

namespace A105127

/-- `A339900(8*(2*n+1))` -/
def P8143976058999915619.Spec : Prop :=
  ∀ n, P8143976058999915619.a n = A105127 (n + 1)

end A105127

/-! ## A105127.P708649444318626864

`∩[A001132(n+1), A143031(n+1)+2]`
-/

namespace A105127.P708649444318626864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105127.P708649444318626864

namespace A105127

/-- `∩[A001132(n+1), A143031(n+1)+2]` -/
def P708649444318626864.Spec : Prop :=
  ∀ n, (P708649444318626864.a n : ℤ) = A105127 (n + 1)

end A105127

/-! ## A105127.P12304707007096300326

`∩[A038873(n+1), A143031(n+1)+2]`
-/

namespace A105127.P12304707007096300326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105127.P12304707007096300326

namespace A105127

/-- `∩[A038873(n+1), A143031(n+1)+2]` -/
def P12304707007096300326.Spec : Prop :=
  ∀ n, (P12304707007096300326.a n : ℤ) = A105127 (n + 1)

end A105127

/-! ## A105127.P15014081775544703139

`∩[A097958(n+1), A143031(n+1)+2]`
-/

namespace A105127.P15014081775544703139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105127.P15014081775544703139

namespace A105127

/-- `∩[A097958(n+1), A143031(n+1)+2]` -/
def P15014081775544703139.Spec : Prop :=
  ∀ n, (P15014081775544703139.a n : ℤ) = A105127 (n + 1)

end A105127

/-! ## A105127.P3282904226022382770

`∩[A055673(n+1), A143031(n+1)+2]`
-/

namespace A105127.P3282904226022382770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143031 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105127.P3282904226022382770

namespace A105127

/-- `∩[A055673(n+1), A143031(n+1)+2]` -/
def P3282904226022382770.Spec : Prop :=
  ∀ n, (P3282904226022382770.a n : ℤ) = A105127 (n + 1)

end A105127

/-! ## A105127.P547133049210389081

`∩[A033200(n+1), A272100(n+1)-2]`
-/

namespace A105127.P547133049210389081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105127.P547133049210389081

namespace A105127

/-- `∩[A033200(n+1), A272100(n+1)-2]` -/
def P547133049210389081.Spec : Prop :=
  ∀ n, (P547133049210389081.a n : ℤ) = A105127 (n + 1)

end A105127

/-! ## A105127.P2430762855167992030

`∩[A033203(n+1), A272100(n+1)-2]`
-/

namespace A105127.P2430762855167992030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105127.P2430762855167992030

namespace A105127

/-- `∩[A033203(n+1), A272100(n+1)-2]` -/
def P2430762855167992030.Spec : Prop :=
  ∀ n, (P2430762855167992030.a n : ℤ) = A105127 (n + 1)

end A105127

/-! ## A105127.P16651665151473097501

`∩[A214588(n+1), A272100(n+1)-2]`
-/

namespace A105127.P16651665151473097501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105127.P16651665151473097501

namespace A105127

/-- `∩[A214588(n+1), A272100(n+1)-2]` -/
def P16651665151473097501.Spec : Prop :=
  ∀ n, (P16651665151473097501.a n : ℤ) = A105127 (n + 1)

end A105127

/-! ## A105127.P15816864870203180529

`∩[A158057(2*n+1), A001132(n+2)]`
-/

namespace A105127.P15816864870203180529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105127.P15816864870203180529

namespace A105127

/-- `∩[A158057(2*n+1), A001132(n+2)]` -/
def P15816864870203180529.Spec : Prop :=
  ∀ n, (P15816864870203180529.a n : ℤ) = A105127 (n + 1)

end A105127

/-! ## A105127.P5707761451188744739

`∩[A158057(2*n+1), A002144(n+2)]`
-/

namespace A105127.P5707761451188744739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105127.P5707761451188744739

namespace A105127

/-- `∩[A158057(2*n+1), A002144(n+2)]` -/
def P5707761451188744739.Spec : Prop :=
  ∀ n, (P5707761451188744739.a n : ℤ) = A105127 (n + 1)

end A105127

/-! ## A105127.P1786477317829474221

`∩[A158057(2*n+1), A002313(n+2)]`
-/

namespace A105127.P1786477317829474221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105127.P1786477317829474221

namespace A105127

/-- `∩[A158057(2*n+1), A002313(n+2)]` -/
def P1786477317829474221.Spec : Prop :=
  ∀ n, (P1786477317829474221.a n : ℤ) = A105127 (n + 1)

end A105127

/-! ## A105127.P1023365684995960035

`∩[A158057(2*n+1), A033200(n+2)]`
-/

namespace A105127.P1023365684995960035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033200 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105127.P1023365684995960035

namespace A105127

/-- `∩[A158057(2*n+1), A033200(n+2)]` -/
def P1023365684995960035.Spec : Prop :=
  ∀ n, (P1023365684995960035.a n : ℤ) = A105127 (n + 1)

end A105127

/-! ## A105127.P15396301130466945168

`∩[A158057(2*n+1), A033203(n+2)]`
-/

namespace A105127.P15396301130466945168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105127.P15396301130466945168

namespace A105127

/-- `∩[A158057(2*n+1), A033203(n+2)]` -/
def P15396301130466945168.Spec : Prop :=
  ∀ n, (P15396301130466945168.a n : ℤ) = A105127 (n + 1)

end A105127

/-! ## A105127.P630936375395235555

`∩[A158057(2*n+1), A038873(n+2)]`
-/

namespace A105127.P630936375395235555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105127.P630936375395235555

namespace A105127

/-- `∩[A158057(2*n+1), A038873(n+2)]` -/
def P630936375395235555.Spec : Prop :=
  ∀ n, (P630936375395235555.a n : ℤ) = A105127 (n + 1)

end A105127

/-! ## A105127.P13555121775416118575

`∩[A158057(2*n+1), A045390(n+2)]`
-/

namespace A105127.P13555121775416118575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105127.P13555121775416118575

namespace A105127

/-- `∩[A158057(2*n+1), A045390(n+2)]` -/
def P13555121775416118575.Spec : Prop :=
  ∀ n, (P13555121775416118575.a n : ℤ) = A105127 (n + 1)

end A105127

/-! ## A105127.P4526541503780085446

`∩[A158057(2*n+1), A097958(n+2)]`
-/

namespace A105127.P4526541503780085446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105127.P4526541503780085446

namespace A105127

/-- `∩[A158057(2*n+1), A097958(n+2)]` -/
def P4526541503780085446.Spec : Prop :=
  ∀ n, (P4526541503780085446.a n : ℤ) = A105127 (n + 1)

end A105127

/-! ## A105127.P59114419739710688

`∩[A125169(2*n)+2, A001132(n+2)]`
-/

namespace A105127.P59114419739710688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 (2 * n) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105127.P59114419739710688

namespace A105127

/-- `∩[A125169(2*n)+2, A001132(n+2)]` -/
def P59114419739710688.Spec : Prop :=
  ∀ n, (P59114419739710688.a n : ℤ) = A105127 (n + 1)

end A105127

/-! ## A105127.P3315117133560205638

`∩[A125169(2*n)+2, A038873(n+2)]`
-/

namespace A105127.P3315117133560205638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 (2 * n) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105127.P3315117133560205638

namespace A105127

/-- `∩[A125169(2*n)+2, A038873(n+2)]` -/
def P3315117133560205638.Spec : Prop :=
  ∀ n, (P3315117133560205638.a n : ℤ) = A105127 (n + 1)

end A105127

/-!
# A105128: Primes of the form 64n+33.

The programs for A105128, the canonical program `A105128.P8512642623754124101` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105128 has offset 1).

The definition of A105128 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A105128.anchor (n : ℕ) (hn : 1 ≤ n) : A105128 n = (Nat.nth (fun p => p.Prime ∧ p % 64 = 33) (n - 1) : ℤ)` in `Proof.A105.A105128`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105128.P8512642623754124101

`p?[64*n-31]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105128

/-- `p?[64*n-31]` -/
def P8512642623754124101.Spec : Prop :=
  ∀ n, P8512642623754124101.a n = A105128 (n + 1)

theorem P8512642623754124101.correct : P8512642623754124101.Spec := by
  intro n
  simp only [A105128, Nat.add_sub_cancel]

end A105128

/-! ## A105128.P6854221505048898717

`or(1, p?[A143032(n+1)+2])`
-/

namespace A105128.P6854221505048898717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A105128.P6854221505048898717

namespace A105128

/-- `or(1, p?[A143032(n+1)+2])` -/
def P6854221505048898717.Spec : Prop :=
  ∀ n, P6854221505048898717.a n = A105128 (n + 1)

end A105128

/-! ## A105128.P15173391884226634781

`A339900(Δ[(4*n)²])`
-/

namespace A105128.P15173391884226634781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A105128.P15173391884226634781

namespace A105128

/-- `A339900(Δ[(4*n)²])` -/
def P15173391884226634781.Spec : Prop :=
  ∀ n, P15173391884226634781.a n = A105128 (n + 1)

end A105128

/-! ## A105128.P15427676529108559257

`∩[A001132(n+1), A143032(n+1)+2]`
-/

namespace A105128.P15427676529108559257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105128.P15427676529108559257

namespace A105128

/-- `∩[A001132(n+1), A143032(n+1)+2]` -/
def P15427676529108559257.Spec : Prop :=
  ∀ n, (P15427676529108559257.a n : ℤ) = A105128 (n + 1)

end A105128

/-! ## A105128.P17830546711908025606

`∩[A038873(n+1), A143032(n+1)+2]`
-/

namespace A105128.P17830546711908025606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105128.P17830546711908025606

namespace A105128

/-- `∩[A038873(n+1), A143032(n+1)+2]` -/
def P17830546711908025606.Spec : Prop :=
  ∀ n, (P17830546711908025606.a n : ℤ) = A105128 (n + 1)

end A105128

/-! ## A105128.P5446155140525149534

`∩[A097958(n+1), A143032(n+1)+2]`
-/

namespace A105128.P5446155140525149534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105128.P5446155140525149534

namespace A105128

/-- `∩[A097958(n+1), A143032(n+1)+2]` -/
def P5446155140525149534.Spec : Prop :=
  ∀ n, (P5446155140525149534.a n : ℤ) = A105128 (n + 1)

end A105128

/-! ## A105128.P9449154421215824981

`∩[A239128(2*n+1)+2, A001132(n+2)]`
-/

namespace A105128.P9449154421215824981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105128.P9449154421215824981

namespace A105128

/-- `∩[A239128(2*n+1)+2, A001132(n+2)]` -/
def P9449154421215824981.Spec : Prop :=
  ∀ n, (P9449154421215824981.a n : ℤ) = A105128 (n + 1)

end A105128

/-! ## A105128.P8853999398557287139

`∩[A239128(2*n+1)+2, A038873(n+2)]`
-/

namespace A105128.P8853999398557287139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105128.P8853999398557287139

namespace A105128

/-- `∩[A239128(2*n+1)+2, A038873(n+2)]` -/
def P8853999398557287139.Spec : Prop :=
  ∀ n, (P8853999398557287139.a n : ℤ) = A105128 (n + 1)

end A105128

/-! ## A105128.P10424549120109167929

`∩[A239128(2*n+1)+2, A097958(n+2)]`
-/

namespace A105128.P10424549120109167929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105128.P10424549120109167929

namespace A105128

/-- `∩[A239128(2*n+1)+2, A097958(n+2)]` -/
def P10424549120109167929.Spec : Prop :=
  ∀ n, (P10424549120109167929.a n : ℤ) = A105128 (n + 1)

end A105128

/-! ## A105128.P16959596679097616698

`∩[A055673(n+1), A143032(n+1)+2]`
-/

namespace A105128.P16959596679097616698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143032 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105128.P16959596679097616698

namespace A105128

/-- `∩[A055673(n+1), A143032(n+1)+2]` -/
def P16959596679097616698.Spec : Prop :=
  ∀ n, (P16959596679097616698.a n : ℤ) = A105128 (n + 1)

end A105128

/-! ## A105128.P1198531429411728357

`∩[A239128(2*n+1)+2, A055673(n+2)]`
-/

namespace A105128.P1198531429411728357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (2 * n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105128.P1198531429411728357

namespace A105128

/-- `∩[A239128(2*n+1)+2, A055673(n+2)]` -/
def P1198531429411728357.Spec : Prop :=
  ∀ n, (P1198531429411728357.a n : ℤ) = A105128 (n + 1)

end A105128

/-! ## A105128.P9409205915111677605

`∩[A002144(n+1), A063300(n+2)-2]`
-/

namespace A105128.P9409205915111677605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105128.P9409205915111677605

namespace A105128

/-- `∩[A002144(n+1), A063300(n+2)-2]` -/
def P9409205915111677605.Spec : Prop :=
  ∀ n, (P9409205915111677605.a n : ℤ) = A105128 (n + 1)

end A105128

/-! ## A105128.P6422810786317158595

`∩[A002313(n+1), A063300(n+2)-2]`
-/

namespace A105128.P6422810786317158595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105128.P6422810786317158595

namespace A105128

/-- `∩[A002313(n+1), A063300(n+2)-2]` -/
def P6422810786317158595.Spec : Prop :=
  ∀ n, (P6422810786317158595.a n : ℤ) = A105128 (n + 1)

end A105128

/-! ## A105128.P18088892770763345519

`∩[A214588(n+1), A063300(n+2)-2]`
-/

namespace A105128.P18088892770763345519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105128.P18088892770763345519

namespace A105128

/-- `∩[A214588(n+1), A063300(n+2)-2]` -/
def P18088892770763345519.Spec : Prop :=
  ∀ n, (P18088892770763345519.a n : ℤ) = A105128 (n + 1)

end A105128

/-! ## A105128.P8473941334197371976

`∩[A280084(n+1), A063300(n+2)-2]`
-/

namespace A105128.P8473941334197371976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105128.P8473941334197371976

namespace A105128

/-- `∩[A280084(n+1), A063300(n+2)-2]` -/
def P8473941334197371976.Spec : Prop :=
  ∀ n, (P8473941334197371976.a n : ℤ) = A105128 (n + 1)

end A105128

/-! ## A105128.P3586327355344986821

`∩[A095283(n+1), A063300(n+2)-2]`
-/

namespace A105128.P3586327355344986821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063300 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105128.P3586327355344986821

namespace A105128

/-- `∩[A095283(n+1), A063300(n+2)-2]` -/
def P3586327355344986821.Spec : Prop :=
  ∀ n, (P3586327355344986821.a n : ℤ) = A105128 (n + 1)

end A105128

/-! ## A105128.P6216576549623780324

`record[A006530(A143032(n+2)+2)]`
-/

namespace A105128.P6216576549623780324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A143032 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105128.P6216576549623780324

namespace A105128

/-- `record[A006530(A143032(n+2)+2)]` -/
def P6216576549623780324.Spec : Prop :=
  ∀ n, P6216576549623780324.a n = A105128 (n + 1)

end A105128

/-! ## A105128.P15106147935634769720

`record[A020639(A143032(n+2)+2)]`
-/

namespace A105128.P15106147935634769720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A143032 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105128.P15106147935634769720

namespace A105128

/-- `record[A020639(A143032(n+2)+2)]` -/
def P15106147935634769720.Spec : Prop :=
  ∀ n, P15106147935634769720.a n = A105128 (n + 1)

end A105128

/-! ## A105128.P2664525054912828873

`record[A006530(A157336(n+1)+25)]`
-/

namespace A105128.P2664525054912828873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A157336 (n + 1) + 25).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105128.P2664525054912828873

namespace A105128

/-- `record[A006530(A157336(n+1)+25)]` -/
def P2664525054912828873.Spec : Prop :=
  ∀ n, P2664525054912828873.a n = A105128 (n + 1)

end A105128

/-! ## A105128.P4114689198939797488

`record[A006530(64*(2*(n+1)+1)+2)]`
-/

namespace A105128.P4114689198939797488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (64 * (2 * (n + 1) + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105128.P4114689198939797488

namespace A105128

/-- `record[A006530(64*(2*(n+1)+1)+2)]` -/
def P4114689198939797488.Spec : Prop :=
  ∀ n, P4114689198939797488.a n = A105128 (n + 1)

end A105128

/-!
# A105129: Primes of the form 128n+65.

The programs for A105129, the canonical program `A105129.P3713624019421296250` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105129 has offset 1).

The definition of A105129 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105129.P3713624019421296250

`p?[Δ[(8*n)²]+1]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105129

/-- `p?[Δ[(8*n)²]+1]` -/
def P3713624019421296250.Spec : Prop :=
  ∀ n, P3713624019421296250.a n = A105129 (n + 1)

theorem P3713624019421296250.correct : P3713624019421296250.Spec := by
  intro n
  simp only [A105129, Nat.add_sub_cancel]

end A105129

/-! ## A105129.P11191030546197064652

`record[p?[A158071(A000265(n+1))]]`
-/

namespace A105129.P11191030546197064652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (A000265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105129.P11191030546197064652

namespace A105129

/-- `record[p?[A158071(A000265(n+1))]]` -/
def P11191030546197064652.Spec : Prop :=
  ∀ n, P11191030546197064652.a n = A105129 (n + 1)

end A105129

/-! ## A105129.P9940941732520297552

`record[p?[A158071(A109043(n+1)/2)]]`
-/

namespace A105129.P9940941732520297552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (SequenceMachineLib.roundAway ((A109043 (n + 1) : ℚ) / 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105129.P9940941732520297552

namespace A105129

/-- `record[p?[A158071(A109043(n+1)/2)]]` -/
def P9940941732520297552.Spec : Prop :=
  ∀ n, P9940941732520297552.a n = A105129 (n + 1)

end A105129

/-! ## A105129.P4312209946511944682

`record[p?[A158071(A038502(n+1)+n)]]`
-/

namespace A105129.P4312209946511944682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (A038502 (n + 1) + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105129.P4312209946511944682

namespace A105129

/-- `record[p?[A158071(A038502(n+1)+n)]]` -/
def P4312209946511944682.Spec : Prop :=
  ∀ n, P4312209946511944682.a n = A105129 (n + 1)

end A105129

/-! ## A105129.P9451971733763513052

`∩[A158071(2*n+1), A094407(n+2)]`
-/

namespace A105129.P9451971733763513052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105129.P9451971733763513052

namespace A105129

/-- `∩[A158071(2*n+1), A094407(n+2)]` -/
def P9451971733763513052.Spec : Prop :=
  ∀ n, (P9451971733763513052.a n : ℤ) = A105129 (n + 1)

end A105129

/-! ## A105129.P2149410329054283720

`∩[A158071(2*n+1), A133870(n+2)]`
-/

namespace A105129.P2149410329054283720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133870 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105129.P2149410329054283720

namespace A105129

/-- `∩[A158071(2*n+1), A133870(n+2)]` -/
def P2149410329054283720.Spec : Prop :=
  ∀ n, (P2149410329054283720.a n : ℤ) = A105129 (n + 1)

end A105129

/-! ## A105129.P12932727020671054613

`∩[A158071(2*n+1), A209554(n+2)]`
-/

namespace A105129.P12932727020671054613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209554 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105129.P12932727020671054613

namespace A105129

/-- `∩[A158071(2*n+1), A209554(n+2)]` -/
def P12932727020671054613.Spec : Prop :=
  ∀ n, (P12932727020671054613.a n : ℤ) = A105129 (n + 1)

end A105129

/-! ## A105129.P3968230771874123668

`A000027(p?[A158071(2*n+1)])`
-/

namespace A105129.P3968230771874123668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105129.P3968230771874123668

namespace A105129

/-- `A000027(p?[A158071(2*n+1)])` -/
def P3968230771874123668.Spec : Prop :=
  ∀ n, P3968230771874123668.a n = A105129 (n + 1)

end A105129

/-! ## A105129.P11616529291494478576

`∩[A158071(2*n+1), A007519(n+2)]`
-/

namespace A105129.P11616529291494478576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105129.P11616529291494478576

namespace A105129

/-- `∩[A158071(2*n+1), A007519(n+2)]` -/
def P11616529291494478576.Spec : Prop :=
  ∀ n, (P11616529291494478576.a n : ℤ) = A105129 (n + 1)

end A105129

/-! ## A105129.P2914771859552471567

`∩[A158071(2*n+1), A045390(n+2)]`
-/

namespace A105129.P2914771859552471567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105129.P2914771859552471567

namespace A105129

/-- `∩[A158071(2*n+1), A045390(n+2)]` -/
def P2914771859552471567.Spec : Prop :=
  ∀ n, (P2914771859552471567.a n : ℤ) = A105129 (n + 1)

end A105129

/-! ## A105129.P2969911577320370053

`∩[A158071(2*n+1), A209544(n+2)]`
-/

namespace A105129.P2969911577320370053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105129.P2969911577320370053

namespace A105129

/-- `∩[A158071(2*n+1), A209544(n+2)]` -/
def P2969911577320370053.Spec : Prop :=
  ∀ n, (P2969911577320370053.a n : ℤ) = A105129 (n + 1)

end A105129

/-! ## A105129.P7848145089664786431

`∩[A158071(2*n+1), A172280(n+2)]`
-/

namespace A105129.P7848145089664786431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172280 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105129.P7848145089664786431

namespace A105129

/-- `∩[A158071(2*n+1), A172280(n+2)]` -/
def P7848145089664786431.Spec : Prop :=
  ∀ n, (P7848145089664786431.a n : ℤ) = A105129 (n + 1)

end A105129

/-! ## A105129.P11945002590977060209

`∩[A158071(2*n+1), A089200(n+2)]`
-/

namespace A105129.P11945002590977060209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089200 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105129.P11945002590977060209

namespace A105129

/-- `∩[A158071(2*n+1), A089200(n+2)]` -/
def P11945002590977060209.Spec : Prop :=
  ∀ n, (P11945002590977060209.a n : ℤ) = A105129 (n + 1)

end A105129

/-! ## A105129.P9900682526714727112

`record[A006530(Δ[Δ[(2*n+1)²]²]+1)]`
-/

namespace A105129.P9900682526714727112
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105129.P9900682526714727112

namespace A105129

/-- `record[A006530(Δ[Δ[(2*n+1)²]²]+1)]` -/
def P9900682526714727112.Spec : Prop :=
  ∀ n, P9900682526714727112.a n = A105129 (n + 1)

end A105129

/-! ## A105129.P14541359877932306504

`record[A020639(Δ[Δ[(2*n+1)²]²]+1)]`
-/

namespace A105129.P14541359877932306504
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105129.P14541359877932306504

namespace A105129

/-- `record[A020639(Δ[Δ[(2*n+1)²]²]+1)]` -/
def P14541359877932306504.Spec : Prop :=
  ∀ n, P14541359877932306504.a n = A105129 (n + 1)

end A105129

/-! ## A105129.P11793753985446535790

`A007947(p?[A158071(2*n+1)])`
-/

namespace A105129.P11793753985446535790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105129.P11793753985446535790

namespace A105129

/-- `A007947(p?[A158071(2*n+1)])` -/
def P11793753985446535790.Spec : Prop :=
  ∀ n, P11793753985446535790.a n = A105129 (n + 1)

end A105129

/-! ## A105129.P3119147325610345935

`A008472(p?[A158071(2*n+1)])`
-/

namespace A105129.P3119147325610345935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105129.P3119147325610345935

namespace A105129

/-- `A008472(p?[A158071(2*n+1)])` -/
def P3119147325610345935.Spec : Prop :=
  ∀ n, P3119147325610345935.a n = A105129 (n + 1)

end A105129

/-! ## A105129.P1679032256779911528

`A000265(p?[A158071(2*n+3)])`
-/

namespace A105129.P1679032256779911528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A105129.P1679032256779911528

namespace A105129

/-- `A000265(p?[A158071(2*n+3)])` -/
def P1679032256779911528.Spec : Prop :=
  ∀ n, P1679032256779911528.a n = A105129 (n + 1)

end A105129

/-! ## A105129.P7817641798993107944

`filter[A158071(2*n+1), A010051(#)]`
-/

namespace A105129.P7817641798993107944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A105129.P7817641798993107944

namespace A105129

/-- `filter[A158071(2*n+1), A010051(#)]` -/
def P7817641798993107944.Spec : Prop :=
  ∀ n, P7817641798993107944.a n = A105129 (n + 1)

end A105129

/-! ## A105129.P7129725159543767122

`filter[A158071(2*n+1), A365716(#)]`
-/

namespace A105129.P7129725159543767122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A105129.P7129725159543767122

namespace A105129

/-- `filter[A158071(2*n+1), A365716(#)]` -/
def P7129725159543767122.Spec : Prop :=
  ∀ n, P7129725159543767122.a n = A105129 (n + 1)

end A105129

/-!
# A105130: Primes of the form 256n+129.

The programs for A105130, the canonical program `A105130.P3385915279703324010` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105130 has offset 1).

The definition of A105130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 618 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105130.P10687615943282891716

`∩[A157951(2*n+1), A133870(n+2)]`
-/

namespace A105130.P10687615943282891716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133870 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105130.P10687615943282891716

namespace A105130

/-- `∩[A157951(2*n+1), A133870(n+2)]` -/
def P10687615943282891716.Spec : Prop :=
  ∀ n, (P10687615943282891716.a n : ℤ) = A105130 (n + 1)

end A105130

/-! ## A105130.P7075066450676322366

`∩[A157951(2*n+1), A142925(n+2)]`
-/

namespace A105130.P7075066450676322366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105130.P7075066450676322366

namespace A105130

/-- `∩[A157951(2*n+1), A142925(n+2)]` -/
def P7075066450676322366.Spec : Prop :=
  ∀ n, (P7075066450676322366.a n : ℤ) = A105130 (n + 1)

end A105130

/-! ## A105130.P18129834369866588639

`∩[A157951(2*n+1), A209554(n+2)]`
-/

namespace A105130.P18129834369866588639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209554 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105130.P18129834369866588639

namespace A105130

/-- `∩[A157951(2*n+1), A209554(n+2)]` -/
def P18129834369866588639.Spec : Prop :=
  ∀ n, (P18129834369866588639.a n : ℤ) = A105130 (n + 1)

end A105130

/-! ## A105130.P7111952061708925114

`∩[A157951(2*n+1), A094407(n+2)]`
-/

namespace A105130.P7111952061708925114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105130.P7111952061708925114

namespace A105130

/-- `∩[A157951(2*n+1), A094407(n+2)]` -/
def P7111952061708925114.Spec : Prop :=
  ∀ n, (P7111952061708925114.a n : ℤ) = A105130 (n + 1)

end A105130

/-! ## A105130.P3385915279703324010

`p?[2*Δ[(8*n)²]+1]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105130

/-- `p?[2*Δ[(8*n)²]+1]` -/
def P3385915279703324010.Spec : Prop :=
  ∀ n, P3385915279703324010.a n = A105130 (n + 1)

theorem P3385915279703324010.correct : P3385915279703324010.Spec := by
  intro n
  simp only [A105130, Nat.add_sub_cancel]

end A105130

/-! ## A105130.P16109044797702655424

`or(1, p?[A157951(2*n+1)])`
-/

namespace A105130.P16109044797702655424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A105130.P16109044797702655424

namespace A105130

/-- `or(1, p?[A157951(2*n+1)])` -/
def P16109044797702655424.Spec : Prop :=
  ∀ n, P16109044797702655424.a n = A105130 (n + 1)

end A105130

/-! ## A105130.P3351435319584632223

`p?[A157951(2*n+1)]%A017500(n)`
-/

namespace A105130.P3351435319584632223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017500 n)

end

end A105130.P3351435319584632223

namespace A105130

/-- `p?[A157951(2*n+1)]%A017500(n)` -/
def P3351435319584632223.Spec : Prop :=
  ∀ n, P3351435319584632223.a n = A105130 (n + 1)

end A105130

/-! ## A105130.P696642410453382965

`A000007(n+2)+p?[A157951(2*n+1)]`
-/

namespace A105130.P696642410453382965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105130.P696642410453382965

namespace A105130

/-- `A000007(n+2)+p?[A157951(2*n+1)]` -/
def P696642410453382965.Spec : Prop :=
  ∀ n, P696642410453382965.a n = A105130 (n + 1)

theorem P696642410453382965.correct : P696642410453382965.Spec := by
  intro n
  simp only [A105130, Nat.add_sub_cancel, A105130.P696642410453382965.f1, A105130.P696642410453382965.a, A105130.P3385915279703324010.f2, A105130.P3385915279703324010.f1, A105130.P3385915279703324010.a, A000007, A000007.P6599383543502402472.a, A157951, A157951.P4580848866771164817.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105130

/-! ## A105130.P6998156881594965960

`p?[A157951(2*n+3)]%A157915(n+1)`
-/

namespace A105130.P6998156881594965960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A157915 (n + 1))

end

end A105130.P6998156881594965960

namespace A105130

/-- `p?[A157951(2*n+3)]%A157915(n+1)` -/
def P6998156881594965960.Spec : Prop :=
  ∀ n, P6998156881594965960.a n = A105130 (n + 1)

end A105130

/-! ## A105130.P3449589421943491632

`record[p?[A158071(2*A000265(n+1))]]`
-/

namespace A105130.P3449589421943491632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158071 (2 * A000265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105130.P3449589421943491632

namespace A105130

/-- `record[p?[A158071(2*A000265(n+1))]]` -/
def P3449589421943491632.Spec : Prop :=
  ∀ n, P3449589421943491632.a n = A105130 (n + 1)

end A105130

/-! ## A105130.P17742899610005718503

`∩[A157951(2*n+1), A007519(n+2)]`
-/

namespace A105130.P17742899610005718503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105130.P17742899610005718503

namespace A105130

/-- `∩[A157951(2*n+1), A007519(n+2)]` -/
def P17742899610005718503.Spec : Prop :=
  ∀ n, (P17742899610005718503.a n : ℤ) = A105130 (n + 1)

end A105130

/-! ## A105130.P16028906813422123268

`∩[A157951(2*n+1), A045390(n+2)]`
-/

namespace A105130.P16028906813422123268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105130.P16028906813422123268

namespace A105130

/-- `∩[A157951(2*n+1), A045390(n+2)]` -/
def P16028906813422123268.Spec : Prop :=
  ∀ n, (P16028906813422123268.a n : ℤ) = A105130 (n + 1)

end A105130

/-! ## A105130.P2815797771208211781

`∩[A157951(2*n+1), A209544(n+2)]`
-/

namespace A105130.P2815797771208211781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209544 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105130.P2815797771208211781

namespace A105130

/-- `∩[A157951(2*n+1), A209544(n+2)]` -/
def P2815797771208211781.Spec : Prop :=
  ∀ n, (P2815797771208211781.a n : ℤ) = A105130 (n + 1)

end A105130

/-! ## A105130.P4045912744619753945

`∩[A157951(2*n+1), A172280(n+2)]`
-/

namespace A105130.P4045912744619753945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172280 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105130.P4045912744619753945

namespace A105130

/-- `∩[A157951(2*n+1), A172280(n+2)]` -/
def P4045912744619753945.Spec : Prop :=
  ∀ n, (P4045912744619753945.a n : ℤ) = A105130 (n + 1)

end A105130

/-! ## A105130.P12610878521928024313

`∩[A157951(2*n+1), A089200(n+2)]`
-/

namespace A105130.P12610878521928024313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089200 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105130.P12610878521928024313

namespace A105130

/-- `∩[A157951(2*n+1), A089200(n+2)]` -/
def P12610878521928024313.Spec : Prop :=
  ∀ n, (P12610878521928024313.a n : ℤ) = A105130 (n + 1)

end A105130

/-! ## A105130.P3843417526016460867

`A339900(Δ[(8*n)²])`
-/

namespace A105130.P3843417526016460867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A105130.P3843417526016460867

namespace A105130

/-- `A339900(Δ[(8*n)²])` -/
def P3843417526016460867.Spec : Prop :=
  ∀ n, P3843417526016460867.a n = A105130 (n + 1)

end A105130

/-!
# A105131: Primes of the form 512n+257.

The programs for A105131, the canonical program `A105131.P10156080793421485626` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105131 has offset 1).

The definition of A105131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105131.P4187648597891030088

`∩[A158231(2*n+1), A142925(n+2)]`
-/

namespace A105131.P4187648597891030088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105131.P4187648597891030088

namespace A105131

/-- `∩[A158231(2*n+1), A142925(n+2)]` -/
def P4187648597891030088.Spec : Prop :=
  ∀ n, (P4187648597891030088.a n : ℤ) = A105131 (n + 1)

end A105131

/-! ## A105131.P10156080793421485626

`∩[A158231(2*n+1), A133870(n+2)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105131

/-- `∩[A158231(2*n+1), A133870(n+2)]` -/
def P10156080793421485626.Spec : Prop :=
  ∀ n, (P10156080793421485626.a n : ℤ) = A105131 (n + 1)

theorem P10156080793421485626.correct : P10156080793421485626.Spec := by
  intro n
  simp only [A105131, Nat.add_sub_cancel]

end A105131

/-! ## A105131.P1619875839566017075

`∩[A158231(2*n+1), A209554(n+2)]`
-/

namespace A105131.P1619875839566017075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209554 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105131.P1619875839566017075

namespace A105131

/-- `∩[A158231(2*n+1), A209554(n+2)]` -/
def P1619875839566017075.Spec : Prop :=
  ∀ n, (P1619875839566017075.a n : ℤ) = A105131 (n + 1)

end A105131

/-! ## A105131.P17445840436317602334

`∩[A158231(2*n+1), A094407(n+2)]`
-/

namespace A105131.P17445840436317602334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105131.P17445840436317602334

namespace A105131

/-- `∩[A158231(2*n+1), A094407(n+2)]` -/
def P17445840436317602334.Spec : Prop :=
  ∀ n, (P17445840436317602334.a n : ℤ) = A105131 (n + 1)

end A105131

/-! ## A105131.P5565042310137955209

`p?[Δ[(4*4*n)²]+1]`
-/

namespace A105131.P5565042310137955209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * (4 * n)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105131.P5565042310137955209

namespace A105131

/-- `p?[Δ[(4*4*n)²]+1]` -/
def P5565042310137955209.Spec : Prop :=
  ∀ n, P5565042310137955209.a n = A105131 (n + 1)

end A105131

/-! ## A105131.P4170414736634106218

`or(1, p?[A158231(2*n+1)])`
-/

namespace A105131.P4170414736634106218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A105131.P4170414736634106218

namespace A105131

/-- `or(1, p?[A158231(2*n+1)])` -/
def P4170414736634106218.Spec : Prop :=
  ∀ n, P4170414736634106218.a n = A105131 (n + 1)

end A105131

/-! ## A105131.P590489450309940704

`or(1, p?[A157951(4*n+2)])`
-/

namespace A105131.P590489450309940704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A105131.P590489450309940704

namespace A105131

/-- `or(1, p?[A157951(4*n+2)])` -/
def P590489450309940704.Spec : Prop :=
  ∀ n, P590489450309940704.a n = A105131 (n + 1)

end A105131

/-! ## A105131.P2033326587422661235

`A000007(A007918(n))+p?[A158231(2*n+1)]`
-/

namespace A105131.P2033326587422661235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A007918 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105131.P2033326587422661235

namespace A105131

/-- `A000007(A007918(n))+p?[A158231(2*n+1)]` -/
def P2033326587422661235.Spec : Prop :=
  ∀ n, P2033326587422661235.a n = A105131 (n + 1)

end A105131

/-! ## A105131.P5935857451112590658

`A000007(A016789(n))+p?[A158231(2*n+1)]`
-/

namespace A105131.P5935857451112590658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A016789 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105131.P5935857451112590658

namespace A105131

/-- `A000007(A016789(n))+p?[A158231(2*n+1)]` -/
def P5935857451112590658.Spec : Prop :=
  ∀ n, P5935857451112590658.a n = A105131 (n + 1)

end A105131

/-! ## A105131.P6976496254999110295

`A000007(A029579(n))+p?[A158231(2*n+1)]`
-/

namespace A105131.P6976496254999110295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158231 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A029579 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105131.P6976496254999110295

namespace A105131

/-- `A000007(A029579(n))+p?[A158231(2*n+1)]` -/
def P6976496254999110295.Spec : Prop :=
  ∀ n, P6976496254999110295.a n = A105131 (n + 1)

end A105131

/-!
# A105132: Primes of the form 1024n + 513.

The programs for A105132, there is no canonical definition to state claims against.
-/

/-! ## A105132.P17149806508493723301

`∩[A076338(2*n+1), A208177(n+2)]`
-/

namespace A105132.P17149806508493723301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208177 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105132.P17149806508493723301

/-! ## A105132.P4673750190906188930

`∩[A076338(2*n+1), A208178(n+2)]`
-/

namespace A105132.P4673750190906188930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208178 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105132.P4673750190906188930

/-! ## A105132.P4879654945948084859

`∩[A208177(n+1), A076338(A005408(n))]`
-/

namespace A105132.P4879654945948084859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 (A005408 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105132.P4879654945948084859

/-! ## A105132.P13056024683006366257

`∩[A076338(2*n+1), A142925(n+2)]`
-/

namespace A105132.P13056024683006366257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105132.P13056024683006366257

/-! ## A105132.P7896332929089800877

`∩[A076338(2*n+1), A133870(n+2)]`
-/

namespace A105132.P7896332929089800877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133870 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105132.P7896332929089800877

/-! ## A105132.P8300190114794163

`∩[A076338(2*n+1), A209554(n+2)]`
-/

namespace A105132.P8300190114794163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209554 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105132.P8300190114794163

/-! ## A105132.P134247018203557514

`p?[(2*n+1)*512+1]`
-/

namespace A105132.P134247018203557514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * 512 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A105132.P134247018203557514

/-! ## A105132.P2177537912463098517

`or(1, p?[A076338(2*n+1)])`
-/

namespace A105132.P2177537912463098517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A105132.P2177537912463098517

/-! ## A105132.P13913656144399169737

`xor(1, p?[A076338(n+1+n)])+1`
-/

namespace A105132.P13913656144399169737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 (n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) + 1

end

end A105132.P13913656144399169737

/-! ## A105132.P3414902086969676801

`record[p?[A076338((and(1, n)+1)²+n)]]`
-/

namespace A105132.P3414902086969676801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 ((Nat.land 1 n + 1) ^ 2 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105132.P3414902086969676801

/-! ## A105132.P11548532765521111842

`round(sqrt(p?[A076338(n+3+n)]²+1))`
-/

namespace A105132.P11548532765521111842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 (n + 3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1 : ℝ))

end

end A105132.P11548532765521111842

/-! ## A105132.P238385635161514101

`record[p?[A076338(A028234(n+1))]]`
-/

namespace A105132.P238385635161514101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 (A028234 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105132.P238385635161514101

/-!
# A105133: Numbers n such that 8n + 5 is prime.

The programs for A105133, the canonical program `A105133.P12778689426666315964` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105133 has offset 1).

The definition of A105133 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A105133.anchor (n : ℕ) (hn : 1 ≤ n) : A105133 n = (Nat.nth (fun k => (8 * k + 5).Prime) (n - 1) : ℤ)` in `Proof.A105.A105133`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105133.P12778689426666315964

`(A007521(n+1)-5)/8`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105133

/-- `(A007521(n+1)-5)/8` -/
def P12778689426666315964.Spec : Prop :=
  ∀ n, P12778689426666315964.a n = (A105133 (n + 1) : ℚ)

end A105133

/-! ## A105133.P10192031975437420925

`(floor(p?[8*n-3]/2)-2)/4`
-/

namespace A105133.P10192031975437420925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋ - 2 : ℚ) / 4

end

end A105133.P10192031975437420925

namespace A105133

/-- `(floor(p?[8*n-3]/2)-2)/4` -/
def P10192031975437420925.Spec : Prop :=
  ∀ n, P10192031975437420925.a n = (A105133 (n + 1) : ℚ)

end A105133

/-! ## A105133.P8972884869381268561

`(ceil(p?[8*n-3]/2)-3)/4`
-/

namespace A105133.P8972884869381268561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉ - 3 : ℚ) / 4

end

end A105133.P8972884869381268561

namespace A105133

/-- `(ceil(p?[8*n-3]/2)-3)/4` -/
def P8972884869381268561.Spec : Prop :=
  ∀ n, P8972884869381268561.a n = (A105133 (n + 1) : ℚ)

end A105133

/-! ## A105133.P9289336823960957006

`A005125(n+1)-1`
-/

namespace A105133.P9289336823960957006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005125 (n + 1) - 1

end

end A105133.P9289336823960957006

namespace A105133

/-- `A005125(n+1)-1` -/
def P9289336823960957006.Spec : Prop :=
  ∀ n, P9289336823960957006.a n = A105133 (n + 1)

end A105133

/-! ## A105133.P914814478056031751

`floor(A186300(n+1)/4)`
-/

namespace A105133.P914814478056031751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A186300 (n + 1) : ℚ) / 4⌋

end

end A105133.P914814478056031751

namespace A105133

/-- `floor(A186300(n+1)/4)` -/
def P914814478056031751.Spec : Prop :=
  ∀ n, P914814478056031751.a n = A105133 (n + 1)

end A105133

/-! ## A105133.P14340058414735617098

`floor(A007521(n+1)/8)`
-/

namespace A105133.P14340058414735617098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007521 (n + 1) : ℚ) / 8⌋

end

end A105133.P14340058414735617098

namespace A105133

/-- `floor(A007521(n+1)/8)` -/
def P14340058414735617098.Spec : Prop :=
  ∀ n, P14340058414735617098.a n = A105133 (n + 1)

end A105133

/-! ## A105133.P14530588552982639824

`(A230076(n+1)-1)/2`
-/

namespace A105133.P14530588552982639824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230076 (n + 1) - 1 : ℚ) / 2

end

end A105133.P14530588552982639824

namespace A105133

/-- `(A230076(n+1)-1)/2` -/
def P14530588552982639824.Spec : Prop :=
  ∀ n, P14530588552982639824.a n = (A105133 (n + 1) : ℚ)

end A105133

/-! ## A105133.P16319141595299773406

`(A186299(n+1)-2)/4`
-/

namespace A105133.P16319141595299773406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186299 (n + 1) - 2 : ℚ) / 4

end

end A105133.P16319141595299773406

namespace A105133

/-- `(A186299(n+1)-2)/4` -/
def P16319141595299773406.Spec : Prop :=
  ∀ n, P16319141595299773406.a n = (A105133 (n + 1) : ℚ)

end A105133

/-! ## A105133.P1809622385614362073

`A186300(n+1)%A005125(n+1)`
-/

namespace A105133.P1809622385614362073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186300 (n + 1)) (A005125 (n + 1))

end

end A105133.P1809622385614362073

namespace A105133

/-- `A186300(n+1)%A005125(n+1)` -/
def P1809622385614362073.Spec : Prop :=
  ∀ n, P1809622385614362073.a n = A105133 (n + 1)

end A105133

/-! ## A105133.P716154999369711463

`A230076(n+1)%A005125(n+1)`
-/

namespace A105133.P716154999369711463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230076 (n + 1)) (A005125 (n + 1))

end

end A105133.P716154999369711463

namespace A105133

/-- `A230076(n+1)%A005125(n+1)` -/
def P716154999369711463.Spec : Prop :=
  ∀ n, P716154999369711463.a n = A105133 (n + 1)

end A105133

/-! ## A105133.P7592062041376431376

`A022764(n+1)-(A005124(n+1)+1)`
-/

namespace A105133.P7592062041376431376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022764 (n + 1) - (A005124 (n + 1) + 1)

end

end A105133.P7592062041376431376

namespace A105133

/-- `A022764(n+1)-(A005124(n+1)+1)` -/
def P7592062041376431376.Spec : Prop :=
  ∀ n, P7592062041376431376.a n = A105133 (n + 1)

end A105133

/-! ## A105133.P6606076623406045206

`floor(A005125(n+1)/root(2, A038600(n+1)))`
-/

namespace A105133.P6606076623406045206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005125 (n + 1) : ℝ) / (2 : ℝ) ^ (1 / (A038600 (n + 1) : ℝ))⌋

end

end A105133.P6606076623406045206

namespace A105133

/-- `floor(A005125(n+1)/root(2, A038600(n+1)))` -/
def P6606076623406045206.Spec : Prop :=
  ∀ n, P6606076623406045206.a n = A105133 (n + 1)

end A105133

/-! ## A105133.P7851074436212972101

`eq[1, A001222(8*n+5)]`
-/

namespace A105133.P7851074436212972101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105133.P7851074436212972101

namespace A105133

/-- `eq[1, A001222(8*n+5)]` -/
def P7851074436212972101.Spec : Prop :=
  ∀ n, (P7851074436212972101.a n : ℤ) = A105133 (n + 1)

end A105133

/-! ## A105133.P4452309488657455455

`eq[2, A000005(8*n+5)]`
-/

namespace A105133.P4452309488657455455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105133.P4452309488657455455

namespace A105133

/-- `eq[2, A000005(8*n+5)]` -/
def P4452309488657455455.Spec : Prop :=
  ∀ n, (P4452309488657455455.a n : ℤ) = A105133 (n + 1)

end A105133

/-! ## A105133.P6147608637007680944

`lt[n+1, A020639(8*n+5)]`
-/

namespace A105133.P6147608637007680944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A105133.P6147608637007680944

namespace A105133

/-- `lt[n+1, A020639(8*n+5)]` -/
def P6147608637007680944.Spec : Prop :=
  ∀ n, (P6147608637007680944.a n : ℤ) = A105133 (n + 1)

end A105133

/-! ## A105133.P3965341944663076793

`lt[A001222(4*(2*n+1)+1), 2]`
-/

namespace A105133.P3965341944663076793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * (2 * n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A105133.P3965341944663076793

namespace A105133

/-- `lt[A001222(4*(2*n+1)+1), 2]` -/
def P3965341944663076793.Spec : Prop :=
  ∀ n, (P3965341944663076793.a n : ℤ) = A105133 (n + 1)

end A105133

/-! ## A105133.P7102630995101293913

`lt[A000005(4*(2*n+1)+1), 3]`
-/

namespace A105133.P7102630995101293913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * (2 * n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A105133.P7102630995101293913

namespace A105133

/-- `lt[A000005(4*(2*n+1)+1), 3]` -/
def P7102630995101293913.Spec : Prop :=
  ∀ n, (P7102630995101293913.a n : ℤ) = A105133 (n + 1)

end A105133

/-! ## A105133.P7029657878649883674

`comp[A153129(n+1)]`
-/

namespace A105133.P7029657878649883674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A105133.P7029657878649883674

namespace A105133

/-- `comp[A153129(n+1)]` -/
def P7029657878649883674.Spec : Prop :=
  ∀ n, (P7029657878649883674.a n : ℤ) = A105133 (n + 1)

end A105133

/-! ## A105133.P3547953221942140956

`eq[2, A175462(n)]`
-/

namespace A105133.P3547953221942140956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105133.P3547953221942140956

namespace A105133

/-- `eq[2, A175462(n)]` -/
def P3547953221942140956.Spec : Prop :=
  ∀ n, (P3547953221942140956.a n : ℤ) = A105133 (n + 1)

end A105133

/-! ## A105133.P4002143706466166825

`A004483(A005125(n+1))`
-/

namespace A105133.P4002143706466166825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A005125 (n + 1)).toNat

end

end A105133.P4002143706466166825

namespace A105133

/-- `A004483(A005125(n+1))` -/
def P4002143706466166825.Spec : Prop :=
  ∀ n, P4002143706466166825.a n = A105133 (n + 1)

end A105133

/-!
# A105134: Numbers n such that 16n+9 is prime.

The programs for A105134, the canonical program `A105134.P12641584828989390445` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105134 has offset 1).

The definition of A105134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105134.P12641584828989390445

`floor(A105126(n+1)/16)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A105134

/-- `floor(A105126(n+1)/16)` -/
def P12641584828989390445.Spec : Prop :=
  ∀ n, P12641584828989390445.a n = A105134 (n + 1)

theorem P12641584828989390445.correct : P12641584828989390445.Spec := by
  intro n
  simp only [A105134, Nat.add_sub_cancel]

end A105134

/-! ## A105134.P562921180104307666

`eq[1, ∑{e}[8*(2*n+1)+1, #]]`
-/

namespace A105134.P562921180104307666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (2 * n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105134.P562921180104307666

namespace A105134

/-- `eq[1, ∑{e}[8*(2*n+1)+1, #]]` -/
def P562921180104307666.Spec : Prop :=
  ∀ n, (P562921180104307666.a n : ℤ) = A105134 (n + 1)

end A105134

/-! ## A105134.P13362518185622852853

`eq[1, A101264(8*n+4)]`
-/

namespace A105134.P13362518185622852853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (8 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105134.P13362518185622852853

namespace A105134

/-- `eq[1, A101264(8*n+4)]` -/
def P13362518185622852853.Spec : Prop :=
  ∀ n, (P13362518185622852853.a n : ℤ) = A105134 (n + 1)

end A105134

/-! ## A105134.P14167197614062703954

`eq[1, A001222(16*n+9)]`
-/

namespace A105134.P14167197614062703954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (16 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105134.P14167197614062703954

namespace A105134

/-- `eq[1, A001222(16*n+9)]` -/
def P14167197614062703954.Spec : Prop :=
  ∀ n, (P14167197614062703954.a n : ℤ) = A105134 (n + 1)

end A105134

/-! ## A105134.P14553560885412365289

`eq[2, A000005(16*n+9)]`
-/

namespace A105134.P14553560885412365289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (16 * n + 9)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105134.P14553560885412365289

namespace A105134

/-- `eq[2, A000005(16*n+9)]` -/
def P14553560885412365289.Spec : Prop :=
  ∀ n, (P14553560885412365289.a n : ℤ) = A105134 (n + 1)

end A105134

/-! ## A105134.P11766975777126997047

`lt[A001222(or(9, 16*n)), 2]`
-/

namespace A105134.P11766975777126997047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor 9 (16 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A105134.P11766975777126997047

namespace A105134

/-- `lt[A001222(or(9, 16*n)), 2]` -/
def P11766975777126997047.Spec : Prop :=
  ∀ n, (P11766975777126997047.a n : ℤ) = A105134 (n + 1)

end A105134

/-! ## A105134.P7060937193151726517

`lt[A001222(4*(4*n+2)+1), 2]`
-/

namespace A105134.P7060937193151726517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * (4 * n + 2) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A105134.P7060937193151726517

namespace A105134

/-- `lt[A001222(4*(4*n+2)+1), 2]` -/
def P7060937193151726517.Spec : Prop :=
  ∀ n, (P7060937193151726517.a n : ℤ) = A105134 (n + 1)

end A105134

/-! ## A105134.P1900391980237611815

`lt[A000005(2*(8*n+4)+1), 3]`
-/

namespace A105134.P1900391980237611815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (8 * n + 4) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A105134.P1900391980237611815

namespace A105134

/-- `lt[A000005(2*(8*n+4)+1), 3]` -/
def P1900391980237611815.Spec : Prop :=
  ∀ n, (P1900391980237611815.a n : ℤ) = A105134 (n + 1)

end A105134

/-! ## A105134.P15982879680283930617

`eq[1, A365958(2*n+1)]`
-/

namespace A105134.P15982879680283930617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365958 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105134.P15982879680283930617

namespace A105134

/-- `eq[1, A365958(2*n+1)]` -/
def P15982879680283930617.Spec : Prop :=
  ∀ n, (P15982879680283930617.a n : ℤ) = A105134 (n + 1)

end A105134

/-! ## A105134.P3025046087876221105

`lt[A004771(2*n), A000010(A004768(2*n))]`
-/

namespace A105134.P3025046087876221105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A004768 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105134.P3025046087876221105

namespace A105134

/-- `lt[A004771(2*n), A000010(A004768(2*n))]` -/
def P3025046087876221105.Spec : Prop :=
  ∀ n, (P3025046087876221105.a n : ℤ) = A105134 (n + 1)

end A105134

/-! ## A105134.P16460296562165861743

`lt[A017077(n+1), A020639(A017077(2*n+1))]`
-/

namespace A105134.P16460296562165861743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017077 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105134.P16460296562165861743

namespace A105134

/-- `lt[A017077(n+1), A020639(A017077(2*n+1))]` -/
def P16460296562165861743.Spec : Prop :=
  ∀ n, (P16460296562165861743.a n : ℤ) = A105134 (n + 1)

end A105134

/-! ## A105134.P4300457117520739770

`eq[1, A345468(A016825(n))]`
-/

namespace A105134.P4300457117520739770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345468 (A016825 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105134.P4300457117520739770

namespace A105134

/-- `eq[1, A345468(A016825(n))]` -/
def P4300457117520739770.Spec : Prop :=
  ∀ n, (P4300457117520739770.a n : ℤ) = A105134 (n + 1)

end A105134

/-! ## A105134.P6778895722276798000

`eq[1, A345468(A016813(n)+1)]`
-/

namespace A105134.P6778895722276798000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345468 (A016813 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105134.P6778895722276798000

namespace A105134

/-- `eq[1, A345468(A016813(n)+1)]` -/
def P6778895722276798000.Spec : Prop :=
  ∀ n, (P6778895722276798000.a n : ℤ) = A105134 (n + 1)

end A105134

/-! ## A105134.P2296135381882153790

`lt[A305809(16*(2*n+1)+2), 3]`
-/

namespace A105134.P2296135381882153790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305809 (16 * (2 * n + 1) + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A105134.P2296135381882153790

namespace A105134

/-- `lt[A305809(16*(2*n+1)+2), 3]` -/
def P2296135381882153790.Spec : Prop :=
  ∀ n, (P2296135381882153790.a n : ℤ) = A105134 (n + 1)

end A105134

/-! ## A105134.P1048806947757640910

`eq[1, A103961(8*n+5)]`
-/

namespace A105134.P1048806947757640910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (8 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105134.P1048806947757640910

namespace A105134

/-- `eq[1, A103961(8*n+5)]` -/
def P1048806947757640910.Spec : Prop :=
  ∀ n, (P1048806947757640910.a n : ℤ) = A105134 (n + 1)

end A105134

/-! ## A105134.P6514809651967716342

`eq[2, A053989(8*n+5)]`
-/

namespace A105134.P6514809651967716342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (8 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105134.P6514809651967716342

namespace A105134

/-- `eq[2, A053989(8*n+5)]` -/
def P6514809651967716342.Spec : Prop :=
  ∀ n, (P6514809651967716342.a n : ℤ) = A105134 (n + 1)

end A105134

/-! ## A105134.P18402400643697455789

`eq[1, A091304(A004771(n)-2)]`
-/

namespace A105134.P18402400643697455789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (A004771 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105134.P18402400643697455789

namespace A105134

/-- `eq[1, A091304(A004771(n)-2)]` -/
def P18402400643697455789.Spec : Prop :=
  ∀ n, (P18402400643697455789.a n : ℤ) = A105134 (n + 1)

end A105134

/-! ## A105134.P17938998846212496911

`eq[2, A086489(A154612(n)-n)]`
-/

namespace A105134.P17938998846212496911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086489 (A154612 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105134.P17938998846212496911

namespace A105134

/-- `eq[2, A086489(A154612(n)-n)]` -/
def P17938998846212496911.Spec : Prop :=
  ∀ n, (P17938998846212496911.a n : ℤ) = A105134 (n + 1)

end A105134

/-! ## A105134.P9785547258921690519

`lt[A046092(A351236(2*(8*n+4)+1)), 83]`
-/

namespace A105134.P9785547258921690519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (A351236 (2 * (8 * n + 4) + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  83

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A105134.P9785547258921690519

namespace A105134

/-- `lt[A046092(A351236(2*(8*n+4)+1)), 83]` -/
def P9785547258921690519.Spec : Prop :=
  ∀ n, (P9785547258921690519.a n : ℤ) = A105134 (n + 1)

end A105134

/-! ## A105134.P7064992510518757454

`eq[2, A001227(4*(4*n+1)+5)]`
-/

namespace A105134.P7064992510518757454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (4 * (4 * n + 1) + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105134.P7064992510518757454

namespace A105134

/-- `eq[2, A001227(4*(4*n+1)+5)]` -/
def P7064992510518757454.Spec : Prop :=
  ∀ n, (P7064992510518757454.a n : ℤ) = A105134 (n + 1)

end A105134

/-!
# A105135: Numbers n such that 32n+17 is prime.

The programs for A105135, the canonical program `A105135.P7438831623917599193` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105135 has offset 1).

The definition of A105135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105135.P7438831623917599193

`eq[1, A101264(4*(4*n+2))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105135

/-- `eq[1, A101264(4*(4*n+2))]` -/
def P7438831623917599193.Spec : Prop :=
  ∀ n, (P7438831623917599193.a n : ℤ) = A105135 (n + 1)

theorem P7438831623917599193.correct : P7438831623917599193.Spec := by
  intro n
  simp only [A105135, Nat.add_sub_cancel]

end A105135

/-! ## A105135.P7193155834923974857

`eq[1, A001222(Δ[(4*n)²]+1)]`
-/

namespace A105135.P7193155834923974857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105135.P7193155834923974857

namespace A105135

/-- `eq[1, A001222(Δ[(4*n)²]+1)]` -/
def P7193155834923974857.Spec : Prop :=
  ∀ n, (P7193155834923974857.a n : ℤ) = A105135 (n + 1)

end A105135

/-! ## A105135.P6376450482784201115

`eq[2, A000005(Δ[(4*n)²]+1)]`
-/

namespace A105135.P6376450482784201115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105135.P6376450482784201115

namespace A105135

/-- `eq[2, A000005(Δ[(4*n)²]+1)]` -/
def P6376450482784201115.Spec : Prop :=
  ∀ n, (P6376450482784201115.a n : ℤ) = A105135 (n + 1)

end A105135

/-! ## A105135.P7646434139917261355

`eq[1, A010051(8*(4*n+2)+1)]`
-/

namespace A105135.P7646434139917261355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (8 * (4 * n + 2) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105135.P7646434139917261355

namespace A105135

/-- `eq[1, A010051(8*(4*n+2)+1)]` -/
def P7646434139917261355.Spec : Prop :=
  ∀ n, (P7646434139917261355.a n : ℤ) = A105135 (n + 1)

theorem P7646434139917261355.correct : P7646434139917261355.Spec := by
  intro n
  simp only [A105135, Nat.add_sub_cancel, A105135.P7646434139917261355.f1, A105135.P7646434139917261355.f2, A105135.P7646434139917261355.a, A105135.P7438831623917599193.f1, A105135.P7438831623917599193.f2, A105135.P7438831623917599193.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A101264, A101264.P9977125953316836564.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A105135

/-! ## A105135.P12753151159150754300

`lt[A000005(Δ[(2*2*n)²]+1), 3]`
-/

namespace A105135.P12753151159150754300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (2 * n)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A105135.P12753151159150754300

namespace A105135

/-- `lt[A000005(Δ[(2*2*n)²]+1), 3]` -/
def P12753151159150754300.Spec : Prop :=
  ∀ n, (P12753151159150754300.a n : ℤ) = A105135 (n + 1)

end A105135

/-! ## A105135.P11565289237059984303

`lt[A001222(or(1, Δ[(4*n)²]+1)), 2]`
-/

namespace A105135.P11565289237059984303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor 1 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A105135.P11565289237059984303

namespace A105135

/-- `lt[A001222(or(1, Δ[(4*n)²]+1)), 2]` -/
def P11565289237059984303.Spec : Prop :=
  ∀ n, (P11565289237059984303.a n : ℤ) = A105135 (n + 1)

end A105135

/-! ## A105135.P10289080436827209325

`(A000010(A105127(n+1))/16-1)/2`
-/

namespace A105135.P10289080436827209325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000010 (A105127 (n + 1)).toNat : ℚ) / 16 - 1) / 2

end

end A105135.P10289080436827209325

namespace A105135

/-- `(A000010(A105127(n+1))/16-1)/2` -/
def P10289080436827209325.Spec : Prop :=
  ∀ n, P10289080436827209325.a n = (A105135 (n + 1) : ℚ)

end A105135

/-! ## A105135.P761428028536788805

`eq[1, A054024(Δ[(4*n)²]+1)]`
-/

namespace A105135.P761428028536788805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105135.P761428028536788805

namespace A105135

/-- `eq[1, A054024(Δ[(4*n)²]+1)]` -/
def P761428028536788805.Spec : Prop :=
  ∀ n, (P761428028536788805.a n : ℤ) = A105135 (n + 1)

end A105135

/-! ## A105135.P6878083466250991387

`eq[2, A051686(8*n+4)]`
-/

namespace A105135.P6878083466250991387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (8 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105135.P6878083466250991387

namespace A105135

/-- `eq[2, A051686(8*n+4)]` -/
def P6878083466250991387.Spec : Prop :=
  ∀ n, (P6878083466250991387.a n : ℤ) = A105135 (n + 1)

end A105135

/-! ## A105135.P3852944948524117473

`eq[1, A345468(2*A016825(n))]`
-/

namespace A105135.P3852944948524117473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345468 (2 * A016825 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105135.P3852944948524117473

namespace A105135

/-- `eq[1, A345468(2*A016825(n))]` -/
def P3852944948524117473.Spec : Prop :=
  ∀ n, (P3852944948524117473.a n : ℤ) = A105135 (n + 1)

end A105135

/-! ## A105135.P7297578391841840554

`eq[2, A337135(32*(2*n+1)+2)]`
-/

namespace A105135.P7297578391841840554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337135 (32 * (2 * n + 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105135.P7297578391841840554

namespace A105135

/-- `eq[2, A337135(32*(2*n+1)+2)]` -/
def P7297578391841840554.Spec : Prop :=
  ∀ n, (P7297578391841840554.a n : ℤ) = A105135 (n + 1)

end A105135

/-! ## A105135.P2151980477127232417

`eq[0, A285716(Δ[8*n²]+1)]`
-/

namespace A105135.P2151980477127232417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105135.P2151980477127232417

namespace A105135

/-- `eq[0, A285716(Δ[8*n²]+1)]` -/
def P2151980477127232417.Spec : Prop :=
  ∀ n, (P2151980477127232417.a n : ℤ) = A105135 (n + 1)

end A105135

/-!
# A105136: Numbers n such that 64n+33 is prime.

The programs for A105136, the canonical program `A105136.P17428083750107149856` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105136 has offset 1).

The definition of A105136 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A105136.anchor (n : ℕ) (hn : 1 ≤ n) : A105136 n = (Nat.nth (fun k => (64 * k + 33).Prime) (n - 1) : ℤ)` in `Proof.A105.A105136`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105136.P17428083750107149856

`floor(A105128(n+1)/64)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105136

/-- `floor(A105128(n+1)/64)` -/
def P17428083750107149856.Spec : Prop :=
  ∀ n, P17428083750107149856.a n = A105136 (n + 1)

theorem P17428083750107149856.correct : P17428083750107149856.Spec := by
  intro n
  simp only [A105136, Nat.add_sub_cancel]

end A105136

/-! ## A105136.P18099324852570793137

`floor(p?[4*8*(2*n+1)+1]/64)`
-/

namespace A105136.P18099324852570793137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (8 * (2 * n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 64⌋

end

end A105136.P18099324852570793137

namespace A105136

/-- `floor(p?[4*8*(2*n+1)+1]/64)` -/
def P18099324852570793137.Spec : Prop :=
  ∀ n, P18099324852570793137.a n = A105136 (n + 1)

end A105136

/-! ## A105136.P14162454564447392229

`record[A246425(A133869(n+1))-1]`
-/

namespace A105136.P14162454564447392229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A133869 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105136.P14162454564447392229

namespace A105136

/-- `record[A246425(A133869(n+1))-1]` -/
def P14162454564447392229.Spec : Prop :=
  ∀ n, P14162454564447392229.a n = A105136 (n + 1)

end A105136

/-! ## A105136.P3495364790913915544

`eq[2, ∑{e}[Δ[(8*n)²]+2, #]]`
-/

namespace A105136.P3495364790913915544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105136.P3495364790913915544

namespace A105136

/-- `eq[2, ∑{e}[Δ[(8*n)²]+2, #]]` -/
def P3495364790913915544.Spec : Prop :=
  ∀ n, (P3495364790913915544.a n : ℤ) = A105136 (n + 1)

end A105136

/-! ## A105136.P4510686964467249546

`A004524(record[A000265(A133869(n+1))])`
-/

namespace A105136.P4510686964467249546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A133869 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A105136.P4510686964467249546

namespace A105136

/-- `A004524(record[A000265(A133869(n+1))])` -/
def P4510686964467249546.Spec : Prop :=
  ∀ n, P4510686964467249546.a n = A105136 (n + 1)

end A105136

/-! ## A105136.P2437884860446732397

`eq[2, A305973(A158057(2*n+1))]`
-/

namespace A105136.P2437884860446732397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (A158057 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105136.P2437884860446732397

namespace A105136

/-- `eq[2, A305973(A158057(2*n+1))]` -/
def P2437884860446732397.Spec : Prop :=
  ∀ n, (P2437884860446732397.a n : ℤ) = A105136 (n + 1)

end A105136

/-! ## A105136.P2449859119810447454

`eq[1, A001222(8*(8*n+4)+1)]`
-/

namespace A105136.P2449859119810447454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * (8 * n + 4) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105136.P2449859119810447454

namespace A105136

/-- `eq[1, A001222(8*(8*n+4)+1)]` -/
def P2449859119810447454.Spec : Prop :=
  ∀ n, (P2449859119810447454.a n : ℤ) = A105136 (n + 1)

end A105136

/-! ## A105136.P3886383316663251628

`eq[1, A010051(8*(8*n+4)+1)]`
-/

namespace A105136.P3886383316663251628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (8 * (8 * n + 4) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105136.P3886383316663251628

namespace A105136

/-- `eq[1, A010051(8*(8*n+4)+1)]` -/
def P3886383316663251628.Spec : Prop :=
  ∀ n, (P3886383316663251628.a n : ℤ) = A105136 (n + 1)

end A105136

/-! ## A105136.P15296482034286622825

`eq[2, A000005(8*(8*n+4)+1)]`
-/

namespace A105136.P15296482034286622825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * (8 * n + 4) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105136.P15296482034286622825

namespace A105136

/-- `eq[2, A000005(8*(8*n+4)+1)]` -/
def P15296482034286622825.Spec : Prop :=
  ∀ n, (P15296482034286622825.a n : ℤ) = A105136 (n + 1)

end A105136

/-! ## A105136.P7367166488050552954

`lt[A001222(32*(2*n+1)+1), 2]`
-/

namespace A105136.P7367166488050552954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (32 * (2 * n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A105136.P7367166488050552954

namespace A105136

/-- `lt[A001222(32*(2*n+1)+1), 2]` -/
def P7367166488050552954.Spec : Prop :=
  ∀ n, (P7367166488050552954.a n : ℤ) = A105136 (n + 1)

end A105136

/-! ## A105136.P18148093740516531322

`lt[A000005(32*(2*n+1)+1), 3]`
-/

namespace A105136.P18148093740516531322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (32 * (2 * n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A105136.P18148093740516531322

namespace A105136

/-- `lt[A000005(32*(2*n+1)+1), 3]` -/
def P18148093740516531322.Spec : Prop :=
  ∀ n, (P18148093740516531322.a n : ℤ) = A105136 (n + 1)

end A105136

/-! ## A105136.P12194789511163496311

`lt[log(A001222(Δ[(8*n)²]+2)), 1]`
-/

namespace A105136.P12194789511163496311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A001222 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2).toNat : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n

end

end A105136.P12194789511163496311

namespace A105136

/-- `lt[log(A001222(Δ[(8*n)²]+2)), 1]` -/
def P12194789511163496311.Spec : Prop :=
  ∀ n, (P12194789511163496311.a n : ℤ) = A105136 (n + 1)

end A105136

/-! ## A105136.P470192386190090102

`eq[2, A051686(8*(2*n+1))]`
-/

namespace A105136.P470192386190090102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (8 * (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105136.P470192386190090102

namespace A105136

/-- `eq[2, A051686(8*(2*n+1))]` -/
def P470192386190090102.Spec : Prop :=
  ∀ n, (P470192386190090102.a n : ℤ) = A105136 (n + 1)

end A105136

/-!
# A105137: Numbers n such that 128n+65 is prime.

The programs for A105137, the canonical program `A105137.P10062708586341460979` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105137 has offset 1).

The definition of A105137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105137.P16213709700651245842

`eq[1, A001222(Δ[(8*n)²]+1)]`
-/

namespace A105137.P16213709700651245842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105137.P16213709700651245842

namespace A105137

/-- `eq[1, A001222(Δ[(8*n)²]+1)]` -/
def P16213709700651245842.Spec : Prop :=
  ∀ n, (P16213709700651245842.a n : ℤ) = A105137 (n + 1)

end A105137

/-! ## A105137.P17325962408645361989

`lt[A000005(Δ[(8*n)²]+1), 3]`
-/

namespace A105137.P17325962408645361989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A105137.P17325962408645361989

namespace A105137

/-- `lt[A000005(Δ[(8*n)²]+1), 3]` -/
def P17325962408645361989.Spec : Prop :=
  ∀ n, (P17325962408645361989.a n : ℤ) = A105137 (n + 1)

end A105137

/-! ## A105137.P7510934065100561869

`eq[1, A010051(64*(2*n+1)+1)]`
-/

namespace A105137.P7510934065100561869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (64 * (2 * n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105137.P7510934065100561869

namespace A105137

/-- `eq[1, A010051(64*(2*n+1)+1)]` -/
def P7510934065100561869.Spec : Prop :=
  ∀ n, (P7510934065100561869.a n : ℤ) = A105137 (n + 1)

end A105137

/-! ## A105137.P10062708586341460979

`eq[1, A100995(64*(2*n+1)+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105137

/-- `eq[1, A100995(64*(2*n+1)+1)]` -/
def P10062708586341460979.Spec : Prop :=
  ∀ n, (P10062708586341460979.a n : ℤ) = A105137 (n + 1)

theorem P10062708586341460979.correct : P10062708586341460979.Spec := by
  intro n
  simp only [A105137, Nat.add_sub_cancel]

end A105137

/-! ## A105137.P14536953764891051580

`eq[2, A000005(64*(2*n+1)+1)]`
-/

namespace A105137.P14536953764891051580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (64 * (2 * n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105137.P14536953764891051580

namespace A105137

/-- `eq[2, A000005(64*(2*n+1)+1)]` -/
def P14536953764891051580.Spec : Prop :=
  ∀ n, (P14536953764891051580.a n : ℤ) = A105137 (n + 1)

end A105137

/-! ## A105137.P10090173615761578860

`lt[A001222(Δ[Δ[(1-2*n)²]²]+1), 2]`
-/

namespace A105137.P10090173615761578860
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) - f3 n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n + 1).toNat

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A105137.P10090173615761578860

namespace A105137

/-- `lt[A001222(Δ[Δ[(1-2*n)²]²]+1), 2]` -/
def P10090173615761578860.Spec : Prop :=
  ∀ n, (P10090173615761578860.a n : ℤ) = A105137 (n + 1)

end A105137

/-! ## A105137.P15366957301515968683

`eq[A001222(A158071(2*n+1)), 1]`
-/

namespace A105137.P15366957301515968683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A158071 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A105137.P15366957301515968683

namespace A105137

/-- `eq[A001222(A158071(2*n+1)), 1]` -/
def P15366957301515968683.Spec : Prop :=
  ∀ n, (P15366957301515968683.a n : ℤ) = A105137 (n + 1)

end A105137

/-! ## A105137.P4594175276211187473

`eq[1, A054024(Δ[(8*n)²]+1)]`
-/

namespace A105137.P4594175276211187473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105137.P4594175276211187473

namespace A105137

/-- `eq[1, A054024(Δ[(8*n)²]+1)]` -/
def P4594175276211187473.Spec : Prop :=
  ∀ n, (P4594175276211187473.a n : ℤ) = A105137 (n + 1)

end A105137

/-!
# A105138: Numbers n such that 256n+129 is prime.

The programs for A105138, there is no canonical definition to state claims against.
-/

/-! ## A105138.P6465530422580921528

`eq[1, A001222(A157951(2*n+1))]`
-/

namespace A105138.P6465530422580921528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A157951 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105138.P6465530422580921528

/-! ## A105138.P7437032686559616594

`eq[A001222(A158071(4*n+2)), 1]`
-/

namespace A105138.P7437032686559616594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A158071 (4 * n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A105138.P7437032686559616594

/-! ## A105138.P16629532746395901857

`eq[2, A000005(A157951(n+1+n))]`
-/

namespace A105138.P16629532746395901857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A157951 (n + 1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105138.P16629532746395901857

/-! ## A105138.P16203391420079014385

`eq[1, A001222(round(A158231(2*n+1)/2))]`
-/

namespace A105138.P16203391420079014385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A158231 (2 * n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105138.P16203391420079014385

/-! ## A105138.P1656212103285065465

`A103391(A105130(n+1))-2`
-/

namespace A105138.P1656212103285065465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A105130 (n + 1)).toNat - 2

end

end A105138.P1656212103285065465

/-!
# A105139: Numbers k such that 512*k+257 is prime.

The programs for A105139, there is no canonical definition to state claims against.
-/

/-! ## A105139.P11434664414707990583

`eq[1, A001222(A158231(2*n+1))]`
-/

namespace A105139.P11434664414707990583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A158231 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105139.P11434664414707990583

/-! ## A105139.P12984961859933846474

`eq[1, A001222(A157951(4*n+2))]`
-/

namespace A105139.P12984961859933846474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A157951 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105139.P12984961859933846474

/-! ## A105139.P11405491751689249173

`eq[1, A001222(A158071(8*n+4))]`
-/

namespace A105139.P11405491751689249173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A158071 (8 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105139.P11405491751689249173

/-! ## A105139.P13641537138912166149

`lt[A158223(n+1), A008472(A158231(2*n+1))]`
-/

namespace A105139.P13641537138912166149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A158231 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105139.P13641537138912166149

/-! ## A105139.P11314227606730420385

`lt[A158250(n+1), A008472(A158231(2*n+1))]`
-/

namespace A105139.P11314227606730420385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A158231 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105139.P11314227606730420385

/-!
# A105140: Numbers n such that 1024n+513 is prime.

The programs for A105140, there is no canonical definition to state claims against.
-/

/-! ## A105140.P3137053390427307567

`eq[1, A001222(A076338(2*n+1))]`
-/

namespace A105140.P3137053390427307567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A076338 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105140.P3137053390427307567

/-! ## A105140.P1886484439806636230

`eq[2, A000005(A158231(4*n+2))]`
-/

namespace A105140.P1886484439806636230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A158231 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105140.P1886484439806636230

/-! ## A105140.P14620437798677399923

`eq[1, A001222(A157951(8*n+4))]`
-/

namespace A105140.P14620437798677399923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A157951 (8 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105140.P14620437798677399923

/-! ## A105140.P9236536402353230007

`lt[A076338(n+1), A020639(A076338(2*n+1))]`
-/

namespace A105140.P9236536402353230007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A076338 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105140.P9236536402353230007

/-! ## A105140.P11854585817063207962

`lt[A127802(n+1), A010051(A076338(2*n+1))]`
-/

namespace A105140.P11854585817063207962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A076338 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105140.P11854585817063207962

/-!
# A105141: Triangle read by rows, based on the morphism f: 1->{1,2,1}, 2->{2,3,2}, 3->{3,1,3}. First row is 1. If current row is a,b,c,..., then the next row is a,b,c,...,f(a),f(b),f(c),...

The programs for A105141, there is no canonical definition to state claims against.
-/

/-! ## A105141.P16821984658710279884

`gcd(A000463(A319056(n)), A002636(n))`
-/

namespace A105141.P16821984658710279884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000463 (A319056 n).toNat) (A002636 n)

end

end A105141.P16821984658710279884

/-! ## A105141.P4415694802451756

`gcd(A191348(2*(n+1)), A309853(A191348(n)))`
-/

namespace A105141.P4415694802451756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A191348 (2 * (n + 1))) (A309853 (A191348 n).toNat)

end

end A105141.P4415694802451756

/-! ## A105141.P12171339699440204422

`gcd(A002828(A000045(n)), A055277(2*(n+2)))`
-/

namespace A105141.P12171339699440204422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002828 (A000045 n).toNat) (A055277 (2 * (n + 2)))

end

end A105141.P12171339699440204422

/-! ## A105141.P17928052565588082244

`A353854(A073898(n+1)%A269505(2*(n+2)))`
-/

namespace A105141.P17928052565588082244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353854 (Int.tmod (A073898 (n + 1)) (A269505 (2 * (n + 2)))).toNat

end

end A105141.P17928052565588082244

/-! ## A105141.P2435636654990241571

`A001221(A103314(2*n+1)*A129408(2*(n+1)))`
-/

namespace A105141.P2435636654990241571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A103314 (2 * n + 1) * A129408 (2 * (n + 1))).toNat

end

end A105141.P2435636654990241571

/-!
# A105142: Positive integers n such that n^12 + 1 is semiprime.

The programs for A105142, there is no canonical definition to state claims against.
-/

/-! ## A105142.P12892353991449717918

`∩[A000068(n+1), A250179(n+1)]`
-/

namespace A105142.P12892353991449717918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105142.P12892353991449717918

/-! ## A105142.P753726756093151282

`sqrt(∩[A103854(n+1), n²])`
-/

namespace A105142.P753726756093151282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103854 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A105142.P753726756093151282

/-! ## A105142.P240943190816303200

`sqrt(∩[A000290(n), A103854(n+1)])`
-/

namespace A105142.P240943190816303200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103854 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A105142.P240943190816303200

/-! ## A105142.P3339672105573539974

`sqrt(∩[A093771(n+1), A103854(n+1)])`
-/

namespace A105142.P3339672105573539974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103854 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A105142.P3339672105573539974

/-! ## A105142.P12797126200375347396

`A052410(∩[A103854(n+1), n²])`
-/

namespace A105142.P12797126200375347396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103854 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A105142.P12797126200375347396

/-!
# A105143: Binomial transform of A079619, assuming offset zero there.

The programs for A105143, there is no canonical definition to state claims against.
-/

/-! ## A105143.P10342607720049360955

`∑{#}[n, C(n, #)*A079619(#+1)]`
-/

namespace A105143.P10342607720049360955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A079619 (k + 1)

end

end A105143.P10342607720049360955

/-!
# A105147: Triangular array read by rows: T(n,k) = number of compositions of n having smallest part equal to k.

The programs for A105147, there is no canonical definition to state claims against.
-/

/-! ## A105147.P14356694298995523439

`A125104(∑[2*n]%comp[∑[n]])`
-/

namespace A105147.P14356694298995523439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125104 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A105147.P14356694298995523439

/-! ## A105147.P9516851146732284850

`A125104(∑[char[∑[n]]]²-(n+1))`
-/

namespace A105147.P9516851146732284850
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125104 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A105147.P9516851146732284850

/-! ## A105147.P856801274111370286

`xor(2, xor(2, A125104(A061579(n))))`
-/

namespace A105147.P856801274111370286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A125104 (A061579 n).toNat))

end

end A105147.P856801274111370286

/-! ## A105147.P7031250540342940686

`gcd(A000038(n), A125104(A061579(n)))`
-/

namespace A105147.P7031250540342940686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A125104 (A061579 n).toNat)

end

end A105147.P7031250540342940686

/-! ## A105147.P10231110955162906846

`lcm(A033999(n), A125104(A061579(n)))`
-/

namespace A105147.P10231110955162906846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A125104 (A061579 n).toNat)

end

end A105147.P10231110955162906846

/-! ## A105147.P15945222749430698223

`or(A000007(n), A125104(A061579(n)))`
-/

namespace A105147.P15945222749430698223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A125104 (A061579 n).toNat)

end

end A105147.P15945222749430698223

/-! ## A105147.P4556891929664037438

`(A000041(n)%2)!*A125104(A061579(n))`
-/

namespace A105147.P4556891929664037438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A125104 (A061579 n).toNat

end

end A105147.P4556891929664037438

/-! ## A105147.P8859307865129635492

`A125104(A061579(n))%∑[A000040(n+1)]`
-/

namespace A105147.P8859307865129635492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125104 (A061579 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105147.P8859307865129635492

/-! ## A105147.P15895320578016640617

`A125104(A061579(n))+A008683(4*(n+1))`
-/

namespace A105147.P15895320578016640617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125104 (A061579 n).toNat + A008683 (4 * (n + 1))

end

end A105147.P15895320578016640617

/-! ## A105147.P10442817898761549309

`A125104(A061579(n))+val(A014963(n+1), 4)`
-/

namespace A105147.P10442817898761549309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125104 (A061579 n).toNat + (SequenceMachineLib.valuation (A014963 (n + 1)).toNat 4 : ℤ)

end

end A105147.P10442817898761549309

/-! ## A105147.P13091360123526433890

`A000041(C(2, n+2))*A125104(A061579(n))`
-/

namespace A105147.P13091360123526433890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A125104 (A061579 n).toNat

end

end A105147.P13091360123526433890

/-! ## A105147.P9038587588170025880

`(A020639(2*(n+2))-1)*A125104(A061579(n))`
-/

namespace A105147.P9038587588170025880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * (n + 2)) - 1) * A125104 (A061579 n).toNat

end

end A105147.P9038587588170025880

/-! ## A105147.P11154403047083349690

`A125104(A061579(n))-A000032(A020639(n+2+n)+1)+4`
-/

namespace A105147.P11154403047083349690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125104 (A061579 n).toNat - A000032 (A020639 (n + 2 + n) + 1).toNat + 4

end

end A105147.P11154403047083349690

/-!
# A105148: Number of semiprimes k such that k is a multiple of 3 and n^3 < k <= (n+1)^3.

The programs for A105148, there is no canonical definition to state claims against.
-/

/-! ## A105148.P15780862692899055581

`Δ[A000720(A151800(floor(n^3/3)))]`
-/

namespace A105148.P15780862692899055581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 ⌊(n ^ 3 : ℚ) / 3⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105148.P15780862692899055581

/-! ## A105148.P10760952940308028629

`Δ[A230980(floor(n^3/3))]`
-/

namespace A105148.P10760952940308028629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 ⌊(n ^ 3 : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105148.P10760952940308028629

/-! ## A105148.P2794376757693238065

`Δ[A056239(A151800(A131476(n)))]`
-/

namespace A105148.P2794376757693238065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A151800 (A131476 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105148.P2794376757693238065

/-! ## A105148.P4756750774371021502

`Δ[A055679(A008611(A033431(n)))]`
-/

namespace A105148.P4756750774371021502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A008611 (A033431 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105148.P4756750774371021502

/-!
# A105149: Number of even semiprimes k such that n^2 < k <= (n+1)^2.

The programs for A105149, the canonical program `A105149.P9840650363083447811` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105149 has offset 0).

The definition of A105149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105149.P9840650363083447811

`Δ[A000720(A151800(floor(n²/2)))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A105149

/-- `Δ[A000720(A151800(floor(n²/2)))]` -/
def P9840650363083447811.Spec : Prop :=
  ∀ n, P9840650363083447811.a n = A105149 n

theorem P9840650363083447811.correct : P9840650363083447811.Spec := by
  intro n
  simp only [A105149]

end A105149

/-! ## A105149.P8013605580697253195

`Δ[A000720(A066182(A099392(n+1)))]`
-/

namespace A105149.P8013605580697253195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A066182 (A099392 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105149.P8013605580697253195

namespace A105149

/-- `Δ[A000720(A066182(A099392(n+1)))]` -/
def P8013605580697253195.Spec : Prop :=
  ∀ n, P8013605580697253195.a n = A105149 n

end A105149

/-! ## A105149.P94566619270964487

`Δ[A000720(A004277(floor((n/2)²)))]`
-/

namespace A105149.P94566619270964487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A004277 ⌊((n : ℚ) / 2) ^ 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105149.P94566619270964487

namespace A105149

/-- `Δ[A000720(A004277(floor((n/2)²)))]` -/
def P94566619270964487.Spec : Prop :=
  ∀ n, P94566619270964487.a n = A105149 n

end A105149

/-! ## A105149.P6384324731361940600

`Δ[A000720(A004275(floor((n/2)²)+1))]`
-/

namespace A105149.P6384324731361940600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A004275 (⌊((n : ℚ) / 2) ^ 2⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105149.P6384324731361940600

namespace A105149

/-- `Δ[A000720(A004275(floor((n/2)²)+1))]` -/
def P6384324731361940600.Spec : Prop :=
  ∀ n, P6384324731361940600.a n = A105149 n

end A105149

/-! ## A105149.P7268713882289708176

`Δ[A000720(A053438(A002620(n)))]`
-/

namespace A105149.P7268713882289708176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A053438 (A002620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105149.P7268713882289708176

namespace A105149

/-- `Δ[A000720(A053438(A002620(n)))]` -/
def P7268713882289708176.Spec : Prop :=
  ∀ n, P7268713882289708176.a n = A105149 n

end A105149

/-! ## A105149.P10735862316723830901

`Δ[A230980(floor(n²/2))]`
-/

namespace A105149.P10735862316723830901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 ⌊(n ^ 2 : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105149.P10735862316723830901

namespace A105149

/-- `Δ[A230980(floor(n²/2))]` -/
def P10735862316723830901.Spec : Prop :=
  ∀ n, P10735862316723830901.a n = A105149 n

end A105149

/-! ## A105149.P14165355018149745845

`A083415(∑[A266072(n)])`
-/

namespace A105149.P14165355018149745845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083415 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A105149.P14165355018149745845

namespace A105149

/-- `A083415(∑[A266072(n)])` -/
def P14165355018149745845.Spec : Prop :=
  ∀ n, P14165355018149745845.a n = A105149 n

end A105149

/-! ## A105149.P2742570251308729631

`A083415(A247375(n+1))`
-/

namespace A105149.P2742570251308729631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083415 (A247375 (n + 1)).toNat

end

end A105149.P2742570251308729631

namespace A105149

/-- `A083415(A247375(n+1))` -/
def P2742570251308729631.Spec : Prop :=
  ∀ n, P2742570251308729631.a n = A105149 n

end A105149

/-! ## A105149.P10245092330875062006

`A083415(A266723(n)-n)`
-/

namespace A105149.P10245092330875062006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083415 (A266723 n - (n : ℤ)).toNat

end

end A105149.P10245092330875062006

namespace A105149

/-- `A083415(A266723(n)-n)` -/
def P10245092330875062006.Spec : Prop :=
  ∀ n, P10245092330875062006.a n = A105149 n

end A105149

/-! ## A105149.P5322153436739886823

`Δ[A000720(A028310(floor(n²/2)))]`
-/

namespace A105149.P5322153436739886823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A028310 ⌊(n ^ 2 : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105149.P5322153436739886823

namespace A105149

/-- `Δ[A000720(A028310(floor(n²/2)))]` -/
def P5322153436739886823.Spec : Prop :=
  ∀ n, P5322153436739886823.a n = A105149 n

end A105149

/-! ## A105149.P1493856086661377937

`A230980(A007590(n+1))-A230980(A007590(n))`
-/

namespace A105149.P1493856086661377937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A007590 (n + 1)).toNat - A230980 (A007590 n).toNat

end

end A105149.P1493856086661377937

namespace A105149

/-- `A230980(A007590(n+1))-A230980(A007590(n))` -/
def P1493856086661377937.Spec : Prop :=
  ∀ n, P1493856086661377937.a n = A105149 n

end A105149

/-!
# A105150: Approximation to leading digit of n-th Fibonacci number.

The programs for A105150, the canonical program `A105150.P13334579855326262222` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105150 has offset 0).

The definition of A105150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105150.P13334579855326262222

`a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=8`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105150

/-- `a(n-5)` -/
def P13334579855326262222.Spec : Prop :=
  ∀ n, (P13334579855326262222.a n : ℤ) = A105150 n

theorem P13334579855326262222.correct : P13334579855326262222.Spec := by
  intro n
  simp only [A105150]

end A105150

/-!
# A105151: Greatest numerator among the n! ratios equal to the continued fractions which have the permutations of (1,2,3,...,n) for terms.

The programs for A105151, there is no canonical definition to state claims against.
-/

/-! ## A105151.P8461695833146769014

`(n+1)*a(n-1)+n*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=11, a(3)=48`
-/

namespace A105151.P8461695833146769014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 11, 48] fun n a =>
  (n + 1) * a (n - 1) + n * a (n - 3) + a (n - 4)

end

end A105151.P8461695833146769014

/-! ## A105151.P1109731793604540171

`A057360(Δ[n*a(n-1)])+1` with `a(0)=7`
-/

namespace A105151.P1109731793604540171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A105151.P1109731793604540171

/-!
# A105152: Number of sum of squares representations of n^2 in n dimensions disregarding order and sign.

The programs for A105152, there is no canonical definition to state claims against.
-/

/-! ## A105152.P10815703170808325606

`A255212(∑[4*n])`
-/

namespace A105152.P10815703170808325606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105152.P10815703170808325606

/-! ## A105152.P1553465505238219271

`A255212(A046092(n))%A000051(n)`
-/

namespace A105152.P1553465505238219271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255212 (A046092 n).toNat) (A000051 n)

end

end A105152.P1553465505238219271

/-! ## A105152.P2392308815069380365

`gcd(A000038(n), A255212(A046092(n)))`
-/

namespace A105152.P2392308815069380365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A255212 (A046092 n).toNat)

end

end A105152.P2392308815069380365

/-! ## A105152.P8019262145885727041

`A000034(2*n)*A255212(A046092(n))`
-/

namespace A105152.P8019262145885727041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A255212 (A046092 n).toNat

end

end A105152.P8019262145885727041

/-! ## A105152.P15000896492407862939

`A255212(A046092(n))+A010051((n+1)²)`
-/

namespace A105152.P15000896492407862939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A046092 n).toNat + A010051 ((n + 1) ^ 2)

end

end A105152.P15000896492407862939

/-! ## A105152.P6268563429894293622

`A255212(A046092(n))+A000389(n²%(n+1))`
-/

namespace A105152.P6268563429894293622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A046092 n).toNat + A000389 (n ^ 2 % (n + 1))

end

end A105152.P6268563429894293622

/-! ## A105152.P5009058904198488770

`A020639(2*(n+1))+A255212(A046092(n))-2`
-/

namespace A105152.P5009058904198488770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) + (A255212 (A046092 n).toNat - 2)

end

end A105152.P5009058904198488770

/-! ## A105152.P1564804108042777175

`and(1, A000040(n+1))^n*A255212(A046092(n))`
-/

namespace A105152.P1564804108042777175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) ^ n * A255212 (A046092 n).toNat

end

end A105152.P1564804108042777175

/-! ## A105152.P15180036281592776182

`A010051(A002145(n+1))*A255212(A046092(n))`
-/

namespace A105152.P15180036281592776182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A002145 (n + 1)).toNat * A255212 (A046092 n).toNat

end

end A105152.P15180036281592776182

/-! ## A105152.P4224125208225225845

`A010051(A103506(n+4))*A255212(A046092(n))`
-/

namespace A105152.P4224125208225225845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A103506 (n + 4)).toNat * A255212 (A046092 n).toNat

end

end A105152.P4224125208225225845

/-!
# A105153: Consider trajectory of n under repeated application of map k -> A105025(k); a(n) = length of cycle.

The programs for A105153, there is no canonical definition to state claims against.
-/

/-! ## A105153.P11527458365402879326

`A105154(A080261(n))`
-/

namespace A105153.P11527458365402879326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105154 (A080261 n).toNat

end

end A105153.P11527458365402879326

/-! ## A105153.P12615519650926313208

`A105154(A092569(xor(1, n)))`
-/

namespace A105153.P12615519650926313208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105154 (A092569 (Nat.xor 1 n)).toNat

end

end A105153.P12615519650926313208

/-! ## A105153.P16925812824318050836

`A105154(A337909(n+1)-1)`
-/

namespace A105153.P16925812824318050836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105154 (A337909 (n + 1) - 1).toNat

end

end A105153.P16925812824318050836

/-! ## A105153.P16271288688404139469

`A105154(A054429(A028310(n)))`
-/

namespace A105153.P16271288688404139469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105154 (A054429 (A028310 n).toNat).toNat

end

end A105153.P16271288688404139469

/-! ## A105153.P9299528440357279204

`A105154(A053644(n)+A035327(n))`
-/

namespace A105153.P9299528440357279204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105154 (A053644 n + A035327 n).toNat

end

end A105153.P9299528440357279204

/-! ## A105153.P13633198570825675947

`A105154(or(A035327(n), A053644(n)))`
-/

namespace A105153.P13633198570825675947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105154 (Int.lor (A035327 n) (A053644 n)).toNat

end

end A105153.P13633198570825675947

/-! ## A105153.P6462589962596040349

`A105154(A010078(n+1)-A053644(n))`
-/

namespace A105153.P6462589962596040349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105154 (A010078 (n + 1) - A053644 n).toNat

end

end A105153.P6462589962596040349

/-! ## A105153.P3306897180400379210

`A105154(A035327(A053644(n)+n))`
-/

namespace A105153.P3306897180400379210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105154 (A035327 (A053644 n + (n : ℤ)).toNat).toNat

end

end A105153.P3306897180400379210

/-! ## A105153.P11176898518656566135

`A105154(A092569(2*n)/2)`
-/

namespace A105153.P11176898518656566135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105154 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A105153.P11176898518656566135

/-!
# A105154: Consider trajectory of n under repeated application of map k -> A105027(k); a(n) = length of cycle.

The programs for A105154, there is no canonical definition to state claims against.
-/

/-! ## A105154.P8627445270933048916

`A105153(A080261(n))`
-/

namespace A105154.P8627445270933048916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105153 (A080261 n).toNat

end

end A105154.P8627445270933048916

/-! ## A105154.P14685227042060421855

`A105153(A092569(xor(1, n)))`
-/

namespace A105154.P14685227042060421855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105153 (A092569 (Nat.xor 1 n)).toNat

end

end A105154.P14685227042060421855

/-! ## A105154.P1662281073808064752

`A105153(A053644(n)+A035327(n))`
-/

namespace A105154.P1662281073808064752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105153 (A053644 n + A035327 n).toNat

end

end A105154.P1662281073808064752

/-! ## A105154.P6277679493129043174

`A105153(or(A035327(n), A053644(n)))`
-/

namespace A105154.P6277679493129043174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105153 (Int.lor (A035327 n) (A053644 n)).toNat

end

end A105154.P6277679493129043174

/-! ## A105154.P14024611451249252436

`A105153(xor(A035327(n), A053644(n)))`
-/

namespace A105154.P14024611451249252436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105153 (Int.xor (A035327 n) (A053644 n)).toNat

end

end A105154.P14024611451249252436

/-! ## A105154.P4118464990784011057

`A105153(A010078(n+1)-A053644(n))`
-/

namespace A105154.P4118464990784011057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105153 (A010078 (n + 1) - A053644 n).toNat

end

end A105154.P4118464990784011057

/-! ## A105154.P15919553635123433369

`A105153(A035327(A053644(n)+n))`
-/

namespace A105154.P15919553635123433369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105153 (A035327 (A053644 n + (n : ℤ)).toNat).toNat

end

end A105154.P15919553635123433369

/-! ## A105154.P8158529183006001464

`A105153(A092569(2*n)/2)`
-/

namespace A105154.P8158529183006001464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105153 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A105154.P8158529183006001464

/-! ## A105154.P3334690464824845182

`2^A174886(n)`
-/

namespace A105154.P3334690464824845182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A174886 n : ℤ)

end

end A105154.P3334690464824845182

/-! ## A105154.P394235870135975699

`A059268(A174886(n)+A057944(n))`
-/

namespace A105154.P394235870135975699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A174886 n + A057944 n).toNat

end

end A105154.P394235870135975699

/-!
# A105156: The sum of a triangular array made from a negative 6-fold permutation product.

The programs for A105156, there is no canonical definition to state claims against.
-/

/-! ## A105156.P7468803825725346433

`p?[A001057(n)+4]*A007504(n+1)`
-/

namespace A105156.P7468803825725346433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A007504 (n + 1)

end

end A105156.P7468803825725346433

/-! ## A105156.P7808523895837198148

`∑[A000040(n+1)]*p?[A309276(n+1)]`
-/

namespace A105156.P7808523895837198148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A105156.P7808523895837198148

/-! ## A105156.P2746191827947552444

`∑[A000040(n+1)]*p?[A001057(n)+4]`
-/

namespace A105156.P2746191827947552444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A105156.P2746191827947552444

/-! ## A105156.P2408509775762172376

`∑[A216883(n+1)]*p?[A001057(n)+4]`
-/

namespace A105156.P2408509775762172376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A105156.P2408509775762172376

/-! ## A105156.P2745431198800627354

`∑[A006093(n+1)+1]*p?[A001057(n)+4]`
-/

namespace A105156.P2745431198800627354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A105156.P2745431198800627354

/-!
# A105157: Row sums of the triangle A105160.

The programs for A105157, there is no canonical definition to state claims against.
-/

/-! ## A105157.P7495218289048844891

`A000040(xor(1, n)+1)*A007504(n+1)`
-/

namespace A105157.P7495218289048844891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.xor 1 n + 1) * A007504 (n + 1)

end

end A105157.P7495218289048844891

/-! ## A105157.P5057478675700879467

`A000040(xor(1, n)+1)*∑[A000040(n+1)]`
-/

namespace A105157.P5057478675700879467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.xor 1 n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105157.P5057478675700879467

/-! ## A105157.P12461616791826769882

`A000040(A103889(n+1))*A007504(n+1)`
-/

namespace A105157.P12461616791826769882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A103889 (n + 1)).toNat * A007504 (n + 1)

end

end A105157.P12461616791826769882

/-! ## A105157.P15200023500171877818

`A007504(n+1)*A118306(A000040(n+1))`
-/

namespace A105157.P15200023500171877818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) * A118306 (A000040 (n + 1)).toNat

end

end A105157.P15200023500171877818

/-! ## A105157.P1940807074375843726

`A000040(A004442(n)+1)*∑[A000040(n+1)]`
-/

namespace A105157.P1940807074375843726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004442 n + 1).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105157.P1940807074375843726

/-!
# A105160: Triangle T(n,k) = prime(k) times the n-th term of (3, 2, 7, 5, 13, 11,...) of a permutation of the primes.

The programs for A105160, there is no canonical definition to state claims against.
-/

/-! ## A105160.P18125993939354477477

`A037126(n+1)*A084398(A008578(A003057(n+2)))`
-/

namespace A105160.P18125993939354477477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) * A084398 (A008578 (A003057 (n + 2)).toNat).toNat

end

end A105160.P18125993939354477477

/-!
# A105161: Difference between n and the second-smallest prime larger than n.

The programs for A105161, the canonical program `A105161.P5037065569945565347` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105161 has offset 0).

The definition of A105161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105161.P12036735744046172296

`A101300(n)-n`
-/

namespace A105161.P12036735744046172296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 n - (n : ℤ)

end

end A105161.P12036735744046172296

namespace A105161

/-- `A101300(n)-n` -/
def P12036735744046172296.Spec : Prop :=
  ∀ n, P12036735744046172296.a n = A105161 n

end A105161

/-! ## A105161.P1344204801009494235

`A067792(A151800(n))-n`
-/

namespace A105161.P1344204801009494235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (A151800 n).toNat - (n : ℤ)

end

end A105161.P1344204801009494235

namespace A105161

/-- `A067792(A151800(n))-n` -/
def P1344204801009494235.Spec : Prop :=
  ∀ n, P1344204801009494235.a n = A105161 n

end A105161

/-! ## A105161.P16223034603488583224

`A067792(Δ[A117842(n)])-n`
-/

namespace A105161.P16223034603488583224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (f1 (n + 1) - f1 n).toNat - (n : ℤ)

end

end A105161.P16223034603488583224

namespace A105161

/-- `A067792(Δ[A117842(n)])-n` -/
def P16223034603488583224.Spec : Prop :=
  ∀ n, P16223034603488583224.a n = A105161 n

end A105161

/-! ## A105161.P17302264221399859629

`A067792(A007918(n+1))-n`
-/

namespace A105161.P17302264221399859629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (A007918 (n + 1)).toNat - (n : ℤ)

end

end A105161.P17302264221399859629

namespace A105161

/-- `A067792(A007918(n+1))-n` -/
def P17302264221399859629.Spec : Prop :=
  ∀ n, P17302264221399859629.a n = A105161 n

end A105161

/-! ## A105161.P16608482222013303354

`A065091(A230980(n)+1)-n`
-/

namespace A105161.P16608482222013303354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A230980 n + 1).toNat - (n : ℤ)

end

end A105161.P16608482222013303354

namespace A105161

/-- `A065091(A230980(n)+1)-n` -/
def P16608482222013303354.Spec : Prop :=
  ∀ n, P16608482222013303354.a n = A105161 n

end A105161

/-! ## A105161.P11078642965886145105

`A000040(A230980(n)+2)-n`
-/

namespace A105161.P11078642965886145105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230980 n + 2).toNat - (n : ℤ)

end

end A105161.P11078642965886145105

namespace A105161

/-- `A000040(A230980(n)+2)-n` -/
def P11078642965886145105.Spec : Prop :=
  ∀ n, P11078642965886145105.a n = A105161 n

end A105161

/-! ## A105161.P17207092849016858497

`A067792(A013632(n)+n)-n`
-/

namespace A105161.P17207092849016858497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (A013632 n + (n : ℤ)).toNat - (n : ℤ)

end

end A105161.P17207092849016858497

namespace A105161

/-- `A067792(A013632(n)+n)-n` -/
def P17207092849016858497.Spec : Prop :=
  ∀ n, P17207092849016858497.a n = A105161 n

end A105161

/-! ## A105161.P5037065569945565347

`A065091(A064427(n+1)-n)-n`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A105161

/-- `A065091(A064427(n+1)-n)-n` -/
def P5037065569945565347.Spec : Prop :=
  ∀ n, P5037065569945565347.a n = A105161 n

theorem P5037065569945565347.correct : P5037065569945565347.Spec := by
  intro n
  simp only [A105161]

end A105161

/-! ## A105161.P1721207458611944725

`A000040(∑[char[A000040(n+1)]]+2)-n`
-/

namespace A105161.P1721207458611944725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - (n : ℤ)

end

end A105161.P1721207458611944725

namespace A105161

/-- `A000040(∑[char[A000040(n+1)]]+2)-n` -/
def P1721207458611944725.Spec : Prop :=
  ∀ n, P1721207458611944725.a n = A105161 n

end A105161

/-! ## A105161.P812778834647765212

`A151800(A151800(n))+A001489(n)`
-/

namespace A105161.P812778834647765212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 n).toNat + A001489 n

end

end A105161.P812778834647765212

namespace A105161

/-- `A151800(A151800(n))+A001489(n)` -/
def P812778834647765212.Spec : Prop :=
  ∀ n, P812778834647765212.a n = A105161 n

end A105161

/-! ## A105161.P6733193358402822100

`A151800(A151800(A305429(n+1)))-n`
-/

namespace A105161.P6733193358402822100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A305429 (n + 1)).toNat).toNat - (n : ℤ)

end

end A105161.P6733193358402822100

namespace A105161

/-- `A151800(A151800(A305429(n+1)))-n` -/
def P6733193358402822100.Spec : Prop :=
  ∀ n, P6733193358402822100.a n = A105161 n

end A105161

/-! ## A105161.P7208332807910802523

`A151800(A151800(n))-A014681(A014681(n))`
-/

namespace A105161.P7208332807910802523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 n).toNat - A014681 (A014681 n).toNat

end

end A105161.P7208332807910802523

namespace A105161

/-- `A151800(A151800(n))-A014681(A014681(n))` -/
def P7208332807910802523.Spec : Prop :=
  ∀ n, P7208332807910802523.a n = A105161 n

end A105161

/-! ## A105161.P15186126744801696736

`A151800(A151800(n))-A236348(A236348(n))`
-/

namespace A105161.P15186126744801696736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 n).toNat - A236348 (A236348 n).toNat

end

end A105161.P15186126744801696736

namespace A105161

/-- `A151800(A151800(n))-A236348(A236348(n))` -/
def P15186126744801696736.Spec : Prop :=
  ∀ n, P15186126744801696736.a n = A105161 n

end A105161

/-! ## A105161.P8564042034167387753

`A003961(A151800(n))-n`
-/

namespace A105161.P8564042034167387753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A151800 n).toNat - (n : ℤ)

end

end A105161.P8564042034167387753

namespace A105161

/-- `A003961(A151800(n))-n` -/
def P8564042034167387753.Spec : Prop :=
  ∀ n, P8564042034167387753.a n = A105161 n

end A105161

/-! ## A105161.P11703794615270831010

`A066169(A007918(n+1))-n`
-/

namespace A105161.P11703794615270831010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (A007918 (n + 1)).toNat - (n : ℤ)

end

end A105161.P11703794615270831010

namespace A105161

/-- `A066169(A007918(n+1))-n` -/
def P11703794615270831010.Spec : Prop :=
  ∀ n, P11703794615270831010.a n = A105161 n

end A105161

/-! ## A105161.P18038474246572263676

`A003961(A013632(n)+n)-n`
-/

namespace A105161.P18038474246572263676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A013632 n + (n : ℤ)).toNat - (n : ℤ)

end

end A105161.P18038474246572263676

namespace A105161

/-- `A003961(A013632(n)+n)-n` -/
def P18038474246572263676.Spec : Prop :=
  ∀ n, P18038474246572263676.a n = A105161 n

end A105161

/-! ## A105161.P16757772834341460892

`A003961(A013634(n)-n)-n`
-/

namespace A105161.P16757772834341460892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A013634 n - (n : ℤ)).toNat - (n : ℤ)

end

end A105161.P16757772834341460892

namespace A105161

/-- `A003961(A013634(n)-n)-n` -/
def P16757772834341460892.Spec : Prop :=
  ∀ n, P16757772834341460892.a n = A105161 n

end A105161

/-! ## A105161.P15391421085330995235

`A013632(n)+A013632(A151800(n))`
-/

namespace A105161.P15391421085330995235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n + A013632 (A151800 n).toNat

end

end A105161.P15391421085330995235

namespace A105161

/-- `A013632(n)+A013632(A151800(n))` -/
def P15391421085330995235.Spec : Prop :=
  ∀ n, P15391421085330995235.a n = A105161 n

end A105161

/-! ## A105161.P5772631095900840394

`A013634(A151800(n))-A013634(n)`
-/

namespace A105161.P5772631095900840394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (A151800 n).toNat - A013634 n

end

end A105161.P5772631095900840394

namespace A105161

/-- `A013634(A151800(n))-A013634(n)` -/
def P5772631095900840394.Spec : Prop :=
  ∀ n, P5772631095900840394.a n = A105161 n

end A105161

/-! ## A105161.P2745985764750548110

`A013632(A007918(n+1))+A013632(n)`
-/

namespace A105161.P2745985764750548110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A007918 (n + 1)).toNat + A013632 n

end

end A105161.P2745985764750548110

namespace A105161

/-- `A013632(A007918(n+1))+A013632(n)` -/
def P2745985764750548110.Spec : Prop :=
  ∀ n, P2745985764750548110.a n = A105161 n

end A105161

/-!
# A105163: a(n) = (n^3 - 7*n + 12)/6.

The programs for A105163, the canonical program `A105163.P5874321688947924066` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105163 has offset 1).

The definition of A105163 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105163.P5874321688947924066

`ogf((1-3x+5x^2-2x^3)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105163

/-- `ogf((1-3x+5x^2-2x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P5874321688947924066.Spec : Prop :=
  ∀ n, P5874321688947924066.a n = A105163 (n + 1)

theorem P5874321688947924066.correct : P5874321688947924066.Spec := by
  intro n
  simp only [A105163, Nat.add_sub_cancel]

end A105163

/-! ## A105163.P6017453791309278245

`((n+1)^3-7*(n+1))/6+2`
-/

namespace A105163.P6017453791309278245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 3 : ℤ) - (7 * (n + 1) : ℤ) : ℚ) / 6 + 2

end

end A105163.P6017453791309278245

namespace A105163

/-- `((n+1)^3-7*(n+1))/6+2` -/
def P6017453791309278245.Spec : Prop :=
  ∀ n, P6017453791309278245.a n = (A105163 (n + 1) : ℚ)

end A105163

/-! ## A105163.P1373648480209609914

`((n+1)^3-7*(n+1)+12)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A105163.P1373648480209609914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 3 : ℤ) - (7 * (n + 1) : ℤ) + 12 : ℚ) / 6

end

end A105163.P1373648480209609914

namespace A105163

/-- `((n+1)^3-7*(n+1)+12)/6` -/
def P1373648480209609914.Spec : Prop :=
  ∀ n, P1373648480209609914.a n = (A105163 (n + 1) : ℚ)

end A105163

/-! ## A105163.P17832441515493499120

`∑[∑[xor(n, char[1])]]+1`
-/

namespace A105163.P17832441515493499120
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A105163.P17832441515493499120

namespace A105163

/-- `∑[∑[xor(n, char[1])]]+1` -/
def P17832441515493499120.Spec : Prop :=
  ∀ n, (P17832441515493499120.a n : ℤ) = A105163 (n + 1)

end A105163

/-! ## A105163.P15185779797428195922

`C(n+2, 3)+1-n`
-/

namespace A105163.P15185779797428195922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 3 + 1 : ℤ) - (n : ℤ)

end

end A105163.P15185779797428195922

namespace A105163

/-- `C(n+2, 3)+1-n` -/
def P15185779797428195922.Spec : Prop :=
  ∀ n, P15185779797428195922.a n = A105163 (n + 1)

end A105163

/-! ## A105163.P13911976560338884070

`∑[a(n-1)+n]` with `a(0)=1, a(1)=0`
-/

namespace A105163.P13911976560338884070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105163.P13911976560338884070

namespace A105163

/-- `∑[a(n-1)+n]` -/
def P13911976560338884070.Spec : Prop :=
  ∀ n, (P13911976560338884070.a n : ℤ) = A105163 (n + 1)

end A105163

/-! ## A105163.P4881768052608788942

`2-∑[a(n-1)-n]` with `a(0)=1`
-/

namespace A105163.P4881768052608788942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105163.P4881768052608788942

namespace A105163

/-- `2-∑[a(n-1)-n]` -/
def P4881768052608788942.Spec : Prop :=
  ∀ n, P4881768052608788942.a n = A105163 (n + 1)

end A105163

/-! ## A105163.P264310402573110145

`a(n-2)+n²-2` with `a(0)=1, a(1)=1`
-/

namespace A105163.P264310402573110145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (n ^ 2 : ℤ) - 2

end

end A105163.P264310402573110145

namespace A105163

/-- `a(n-2)+n²-2` -/
def P264310402573110145.Spec : Prop :=
  ∀ n, P264310402573110145.a n = A105163 (n + 1)

end A105163

/-! ## A105163.P16792469302168637591

`n²-(2-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A105163.P16792469302168637591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n ^ 2 : ℤ) - (2 - a (n - 2))

end

end A105163.P16792469302168637591

namespace A105163

/-- `n²-(2-a(n-2))` -/
def P16792469302168637591.Spec : Prop :=
  ∀ n, P16792469302168637591.a n = A105163 (n + 1)

end A105163

/-! ## A105163.P6093379806398295042

`∑[lcm(2, ∑[2*n]-2)]/2`
-/

namespace A105163.P6093379806398295042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A105163.P6093379806398295042

namespace A105163

/-- `∑[lcm(2, ∑[2*n]-2)]/2` -/
def P6093379806398295042.Spec : Prop :=
  ∀ n, P6093379806398295042.a n = (A105163 (n + 1) : ℚ)

end A105163

/-! ## A105163.P8889251089403693278

`∑[∑[gcd(n, 2*n)]-1]+2`
-/

namespace A105163.P8889251089403693278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A105163.P8889251089403693278

namespace A105163

/-- `∑[∑[gcd(n, 2*n)]-1]+2` -/
def P8889251089403693278.Spec : Prop :=
  ∀ n, P8889251089403693278.a n = A105163 (n + 1)

end A105163

/-! ## A105163.P3609756651703299692

`∑[n²-C(n, 2)]-(n-1)`
-/

namespace A105163.P3609756651703299692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 1)

end

end A105163.P3609756651703299692

namespace A105163

/-- `∑[n²-C(n, 2)]-(n-1)` -/
def P3609756651703299692.Spec : Prop :=
  ∀ n, P3609756651703299692.a n = A105163 (n + 1)

end A105163

/-! ## A105163.P10570087171111286994

`∑[∑[n%(n+1)]]-(n-1)`
-/

namespace A105163.P10570087171111286994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1)

end

end A105163.P10570087171111286994

namespace A105163

/-- `∑[∑[n%(n+1)]]-(n-1)` -/
def P10570087171111286994.Spec : Prop :=
  ∀ n, P10570087171111286994.a n = A105163 (n + 1)

end A105163

/-! ## A105163.P8456827736202435256

`∑[∑[n]+1]-lcm(n, 2*n)`
-/

namespace A105163.P8456827736202435256
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.lcm n (2 * n) : ℤ)

end

end A105163.P8456827736202435256

namespace A105163

/-- `∑[∑[n]+1]-lcm(n, 2*n)` -/
def P8456827736202435256.Spec : Prop :=
  ∀ n, P8456827736202435256.a n = A105163 (n + 1)

end A105163

/-! ## A105163.P14355022447148988571

`2-∑[∑[C(n, 2*n)-n]]`
-/

namespace A105163.P14355022447148988571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (2 * n) : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105163.P14355022447148988571

namespace A105163

/-- `2-∑[∑[C(n, 2*n)-n]]` -/
def P14355022447148988571.Spec : Prop :=
  ∀ n, P14355022447148988571.a n = A105163 (n + 1)

end A105163

/-! ## A105163.P445144049259154897

`∑[∑[n]-and(1, 2*n+1)]+2`
-/

namespace A105163.P445144049259154897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (Nat.land 1 (2 * n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A105163.P445144049259154897

namespace A105163

/-- `∑[∑[n]-and(1, 2*n+1)]+2` -/
def P445144049259154897.Spec : Prop :=
  ∀ n, P445144049259154897.a n = A105163 (n + 1)

end A105163

/-! ## A105163.P4970277095383783456

`∑[∑[n-and(1, 2*n)]]-(n-1)`
-/

namespace A105163.P4970277095383783456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 1 (2 * n) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 1)

end

end A105163.P4970277095383783456

namespace A105163

/-- `∑[∑[n-and(1, 2*n)]]-(n-1)` -/
def P4970277095383783456.Spec : Prop :=
  ∀ n, P4970277095383783456.a n = A105163 (n + 1)

end A105163

/-! ## A105163.P13233802317597303762

`n*((a(n-2)-2)/n+n)` with `a(0)=1, a(1)=1`
-/

namespace A105163.P13233802317597303762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℚ) * ((a (n - 2) - 2) / (n : ℚ) + (n : ℚ))

end

end A105163.P13233802317597303762

namespace A105163

/-- `n*((a(n-2)-2)/n+n)` -/
def P13233802317597303762.Spec : Prop :=
  ∀ n, P13233802317597303762.a n = (A105163 (n + 1) : ℚ)

end A105163

/-! ## A105163.P5427085046195957565

`n*(n-(2-a(n-2))/n)` with `a(0)=1, a(1)=1`
-/

namespace A105163.P5427085046195957565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℚ) * ((n : ℚ) - (2 - a (n - 2)) / (n : ℚ))

end

end A105163.P5427085046195957565

namespace A105163

/-- `n*(n-(2-a(n-2))/n)` -/
def P5427085046195957565.Spec : Prop :=
  ∀ n, P5427085046195957565.a n = (A105163 (n + 1) : ℚ)

end A105163

/-! ## A105163.P3662392652080772980

`floor(2*a(n-1)-a(n-2)+n)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A105163.P3662392652080772980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) - a (n - 2) + (n : ℤ)

end

end A105163.P3662392652080772980

namespace A105163

/-- `floor(2*a(n-1)-a(n-2)+n)` -/
def P3662392652080772980.Spec : Prop :=
  ∀ n, P3662392652080772980.a n = A105163 (n + 1)

end A105163

/-!
# A105165: Expansion of e in base phi.

The programs for A105165, there is no canonical definition to state claims against.
-/

/-! ## A105165.P10282368900317522239

`A000035(comp[∑[n-1]]*A313241(n))`
-/

namespace A105165.P10282368900317522239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A313241 n).toNat

end

end A105165.P10282368900317522239

/-! ## A105165.P15559429788823064101

`A000035(A007401(n+1)*A315416(n))`
-/

namespace A105165.P15559429788823064101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007401 (n + 1) * A315416 n).toNat

end

end A105165.P15559429788823064101

/-! ## A105165.P12130283745889752143

`A000035((comp[C(n, 2)]+1)*A315416(n))`
-/

namespace A105165.P12130283745889752143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ) * A315416 n).toNat

end

end A105165.P12130283745889752143

/-! ## A105165.P1979497234548894658

`A000035(lcm(2-A007401(n+1), A315523(n)))`
-/

namespace A105165.P1979497234548894658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.lcm (2 - A007401 (n + 1)) (A315523 n))

end

end A105165.P1979497234548894658

/-! ## A105165.P14316040868770033208

`A000035(A007401(n+1)*A315523(n))`
-/

namespace A105165.P14316040868770033208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007401 (n + 1) * A315523 n).toNat

end

end A105165.P14316040868770033208

/-!
# A105166: Expansion of phi in base e.

The programs for A105166, there is no canonical definition to state claims against.
-/

/-! ## A105166.P9554352235035413209

`and(A003842(A157324(n+1)), A025566(n))`
-/

namespace A105166.P9554352235035413209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003842 (A157324 (n + 1)).toNat) (A025566 n)

end

end A105166.P9554352235035413209

/-! ## A105166.P13959956134646346682

`A105700(A225118(n)+A051149(n+1))`
-/

namespace A105166.P13959956134646346682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A225118 n + A051149 (n + 1)).toNat

end

end A105166.P13959956134646346682

/-! ## A105166.P2069405444466830594

`A287368(A017377(n)*A300498(n+1))`
-/

namespace A105166.P2069405444466830594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287368 (A017377 n * A300498 (n + 1)).toNat

end

end A105166.P2069405444466830594

/-! ## A105166.P11432697373944493552

`and(A008683(2*n+1), A065339(A050791(n+1)))`
-/

namespace A105166.P11432697373944493552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (2 * n + 1)) (A065339 (A050791 (n + 1)).toNat)

end

end A105166.P11432697373944493552

/-! ## A105166.P11007212467009737479

`A143614(A239559(n+1))`
-/

namespace A105166.P11007212467009737479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143614 (A239559 (n + 1)).toNat

end

end A105166.P11007212467009737479

/-!
# A105170: Primes that are not necessary for Goldbach's conjecture.

The programs for A105170, there is no canonical definition to state claims against.
-/

/-! ## A105170.P3878153197714580082

`p?[A104275(n+1)-A251722(A341349(n+1))]`
-/

namespace A105170.P3878153197714580082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1) - A251722 (A341349 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105170.P3878153197714580082

/-!
# A105173: Numbers k such that either k*(k+1)/4 + 1 or k*(k+1)/4 - 1 or both are primes.

The programs for A105173, there is no canonical definition to state claims against.
-/

/-! ## A105173.P1946521707614154951

`eq[1, A276771(A133263(n))]`
-/

namespace A105173.P1946521707614154951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276771 (A133263 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105173.P1946521707614154951

/-! ## A105173.P9645541512071682275

`lt[A051885(n), A000001(A195162(n))]`
-/

namespace A105173.P9645541512071682275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A195162 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A105173.P9645541512071682275

/-! ## A105173.P3603988009021138985

`eq[A080791(A084702(n+1)), A293233(n+1)]`
-/

namespace A105173.P3603988009021138985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A084702 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A105173.P3603988009021138985

/-!
# A105174: Numbers k such that k*(k+1)/4 - 1 and k*(k+1)/4 + 1 are twin primes.

The programs for A105174, there is no canonical definition to state claims against.
-/

/-! ## A105174.P15744749312167712647

`floor(2*sqrt(A086816(n+1)))`
-/

namespace A105174.P15744749312167712647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (A086816 (n + 1) : ℝ)⌋

end

end A105174.P15744749312167712647

/-! ## A105174.P10231976866050089251

`floor(sqrt(2*A165966(n+1)))`
-/

namespace A105174.P10231976866050089251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A165966 (n + 1))

end

end A105174.P10231976866050089251

/-! ## A105174.P13678811053362661006

`floor(A165966(n+1)/sqrt(A086816(n+1)))`
-/

namespace A105174.P13678811053362661006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165966 (n + 1) : ℝ) / Real.sqrt (A086816 (n + 1) : ℝ)⌋

end

end A105174.P13678811053362661006

/-! ## A105174.P17888688332308278018

`round(sqrt(2*A165966(n+1)))%A027620(n)`
-/

namespace A105174.P17888688332308278018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A165966 (n + 1) : ℝ))) (A027620 n)

end

end A105174.P17888688332308278018

/-! ## A105174.P12797635547399008902

`round(sqrt(2*A165966(n+1)))+2%(A004442(n)-n)`
-/

namespace A105174.P12797635547399008902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A165966 (n + 1) : ℝ)) + Int.tmod 2 (A004442 n - (n : ℤ))

end

end A105174.P12797635547399008902

/-!
# A105179: Numbers having in decimal representation the same final digit as their largest proper divisor has; a(1) = 1.

The programs for A105179, the canonical program `A105179.P773740351260198386` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105179 has offset 1).

The definition of A105179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1613 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105179.P773740351260198386

`eq[n, A060681(n+1)%10+n]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A105179

/-- `eq[n, A060681(n+1)%10+n]+1` -/
def P773740351260198386.Spec : Prop :=
  ∀ n, (P773740351260198386.a n : ℤ) = A105179 (n + 1)

theorem P773740351260198386.correct : P773740351260198386.Spec := by
  intro n
  simp only [A105179, Nat.add_sub_cancel]

end A105179

/-!
# A105181: Numbers k such that 2^(2*(k+1)) + 2^k - 1 is prime.

The programs for A105181, there is no canonical definition to state claims against.
-/

/-! ## A105181.P18351441253880010015

`∑[A131818(A275077(comp[2*(n+1)]))]`
-/

namespace A105181.P18351441253880010015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A275077 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105181.P18351441253880010015

/-! ## A105181.P3250579061774977248

`∑[∏{e}[A013069(n), #]]`
-/

namespace A105181.P3250579061774977248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013069 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105181.P3250579061774977248

/-! ## A105181.P2144349239206197983

`∑[∏[∑{e}[A051451(n+1)+1, #]]]`
-/

namespace A105181.P2144349239206197983
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105181.P2144349239206197983

/-! ## A105181.P1016558969345143175

`∑[∏{e}[(n-2)*a(n-1), A000005(#)]]` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=7`
-/

namespace A105181.P1016558969345143175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2, 7] fun n f2 =>
  ((n : ℤ) - 2) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A000005 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105181.P1016558969345143175

/-! ## A105181.P438093561698887081

`∑[∏[A354579(A060461(n+4))]]`
-/

namespace A105181.P438093561698887081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354579 (A060461 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A105181.P438093561698887081

/-!
# A105183: a(n) = 1 + a(n-1)*(a(n-1) + 1), with a(0)=2.

The programs for A105183, the canonical program `A105183.P14545868015983352329` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105183 has offset 0).

The definition of A105183 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)*(a(n-1)+1)` (program `A105183.P14545868015983352329`, by `A105183.P14545868015983352329.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A105183.P14545868015983352329

`1+a(n-1)*(a(n-1)+1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105183

/-- `1+a(n-1)*(a(n-1)+1)` -/
def P14545868015983352329.Spec : Prop :=
  ∀ n, (P14545868015983352329.a n : ℤ) = A105183 n

theorem P14545868015983352329.correct : P14545868015983352329.Spec := by
  intro n
  simp only [A105183]

end A105183

/-! ## A105183.P7442480924598193976

`ceil((a(n-1)+1/2)²)` with `a(0)=2`
-/

namespace A105183.P7442480924598193976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈((a (n - 1) : ℚ) + (1 : ℚ) / 2) ^ 2⌉

end

end A105183.P7442480924598193976

namespace A105183

/-- `ceil((a(n-1)+1/2)²)` -/
def P7442480924598193976.Spec : Prop :=
  ∀ n, P7442480924598193976.a n = A105183 n

end A105183

/-! ## A105183.P6828431409434294002

`2*C(a(n-1)+1, 2)+1` with `a(0)=2`
-/

namespace A105183.P6828431409434294002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * Nat.choose (a (n - 1) + 1) 2 + 1

end

end A105183.P6828431409434294002

namespace A105183

/-- `2*C(a(n-1)+1, 2)+1` -/
def P6828431409434294002.Spec : Prop :=
  ∀ n, (P6828431409434294002.a n : ℤ) = A105183 n

end A105183

/-! ## A105183.P3858123663185397556

`floor((a(n-1)+1/2)²)+1` with `a(0)=2`
-/

namespace A105183.P3858123663185397556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊((a (n - 1) : ℚ) + (1 : ℚ) / 2) ^ 2⌋ + 1

end

end A105183.P3858123663185397556

namespace A105183

/-- `floor((a(n-1)+1/2)²)+1` -/
def P3858123663185397556.Spec : Prop :=
  ∀ n, P3858123663185397556.a n = A105183 n

end A105183

/-!
# A105184: Primes that can be written as concatenation of two primes in decimal representation.

The programs for A105184, there is no canonical definition to state claims against.
-/

/-! ## A105184.P12669019756369258771

`p?[A106582(n+1)]`
-/

namespace A105184.P12669019756369258771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A105184.P12669019756369258771

/-! ## A105184.P10815714377302535074

`record[A006530(A106582(n+2))]`
-/

namespace A105184.P10815714377302535074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A106582 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105184.P10815714377302535074

/-! ## A105184.P9769033981769681255

`filter[A106582(n+1), A010051(#)]`
-/

namespace A105184.P9769033981769681255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A105184.P9769033981769681255

/-! ## A105184.P6668570445623328161

`filter[A106582(n+1), A323153(#)]`
-/

namespace A105184.P6668570445623328161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A105184.P6668570445623328161

/-! ## A105184.P8555118205074886420

`filter[A106582(n+1), A380467(#)]`
-/

namespace A105184.P8555118205074886420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A105184.P8555118205074886420

/-! ## A105184.P14907526581035849021

`record[A020639(or(1, A106582(n+1)))]`
-/

namespace A105184.P14907526581035849021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A106582 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A105184.P14907526581035849021

/-! ## A105184.P9136874452373392562

`∩[A000040(n+1), A106582(n+1)]`
-/

namespace A105184.P9136874452373392562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105184.P9136874452373392562

/-! ## A105184.P6516977929373720451

`∩[A004139(n+1), A106582(n+1)]`
-/

namespace A105184.P6516977929373720451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105184.P6516977929373720451

/-! ## A105184.P4466224063421622593

`∩[A006005(n+1), A106582(n+1)]`
-/

namespace A105184.P4466224063421622593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105184.P4466224063421622593

/-! ## A105184.P12695876498911755609

`∩[A008578(n+1), A106582(n+1)]`
-/

namespace A105184.P12695876498911755609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105184.P12695876498911755609

/-! ## A105184.P13272555990513762237

`∩[A019549(n+1), A106582(n+1)]`
-/

namespace A105184.P13272555990513762237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105184.P13272555990513762237

/-! ## A105184.P2910342808867282521

`∩[A033946(n+1), A106582(n+1)]`
-/

namespace A105184.P2910342808867282521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105184.P2910342808867282521

/-! ## A105184.P9107684556698977737

`∩[A038680(n+1), A106582(n+1)]`
-/

namespace A105184.P9107684556698977737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105184.P9107684556698977737

/-! ## A105184.P15876103109835626197

`∩[A045319(n+1), A106582(n+1)]`
-/

namespace A105184.P15876103109835626197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105184.P15876103109835626197

/-! ## A105184.P17734349425638657694

`∩[A045344(n+1), A106582(n+1)]`
-/

namespace A105184.P17734349425638657694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105184.P17734349425638657694

/-! ## A105184.P4816123622714821842

`∩[A046022(n+1), A106582(n+1)]`
-/

namespace A105184.P4816123622714821842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105184.P4816123622714821842

/-! ## A105184.P7656274103009967584

`∩[A053813(n+1), A106582(n+1)]`
-/

namespace A105184.P7656274103009967584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105184.P7656274103009967584

/-! ## A105184.P6774099015395026545

`∩[A062972(n+1), A106582(n+1)]`
-/

namespace A105184.P6774099015395026545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105184.P6774099015395026545

/-! ## A105184.P12238160118354897834

`∩[A065091(n+1), A106582(n+1)]`
-/

namespace A105184.P12238160118354897834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105184.P12238160118354897834

/-! ## A105184.P12534516231832443985

`∩[A066050(n+1), A106582(n+1)]`
-/

namespace A105184.P12534516231832443985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A105184.P12534516231832443985

/-!
# A105186: Replace odd-positioned digits with 0 in ternary representation of n.

The programs for A105186, the canonical program `A105186.P17403205872318283831` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105186 has offset 0).

The definition of A105186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105186.P17403205872318283831

`n-a(floor(n/3))*3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105186

/-- `n-a(floor(n/3))*3` -/
def P17403205872318283831.Spec : Prop :=
  ∀ n, P17403205872318283831.a n = A105186 n

theorem P17403205872318283831.correct : P17403205872318283831.Spec := by
  intro n
  simp only [A105186]

end A105186

/-! ## A105186.P6670692080840446050

`9*a(floor(n/9))+(n%9)%3` with `a(0)=0`
-/

namespace A105186.P6670692080840446050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  9 * a ⌊(n : ℚ) / 9⌋.toNat + n % 9 % 3

end

end A105186.P6670692080840446050

namespace A105186

/-- `9*a(floor(n/9))+(n%9)%3` -/
def P6670692080840446050.Spec : Prop :=
  ∀ n, (P6670692080840446050.a n : ℤ) = A105186 n

end A105186

/-! ## A105186.P7589104658296025655

`n-3*a(floor(n/3))` with `a(0)=0`
-/

namespace A105186.P7589104658296025655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - 3 * a ⌊(n : ℚ) / 3⌋.toNat

end

end A105186.P7589104658296025655

namespace A105186

/-- `n-3*a(floor(n/3))` -/
def P7589104658296025655.Spec : Prop :=
  ∀ n, P7589104658296025655.a n = A105186 n

theorem P7589104658296025655.correct : P7589104658296025655.Spec := by
  intro n
  simp only [A105186, Nat.add_sub_cancel, A105186.P7589104658296025655.a, A105186.P17403205872318283831.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A105186

/-! ## A105186.P15993713851084194856

`9*a(floor(n/9))+n%3` with `a(0)=0`
-/

namespace A105186.P15993713851084194856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  9 * a ⌊(n : ℚ) / 9⌋.toNat + n % 3

end

end A105186.P15993713851084194856

namespace A105186

/-- `9*a(floor(n/9))+n%3` -/
def P15993713851084194856.Spec : Prop :=
  ∀ n, (P15993713851084194856.a n : ℤ) = A105186 n

end A105186

/-! ## A105186.P3060475065274398673

`(A065369(n)+n)/2`
-/

namespace A105186.P3060475065274398673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065369 n + (n : ℤ) : ℚ) / 2

end

end A105186.P3060475065274398673

namespace A105186

/-- `(A065369(n)+n)/2` -/
def P3060475065274398673.Spec : Prop :=
  ∀ n, P3060475065274398673.a n = (A105186 n : ℚ)

theorem P3060475065274398673.correct : P3060475065274398673.Spec := by
  intro n
  simp only [A105186, Nat.add_sub_cancel, A105186.P3060475065274398673.a, A105186.P17403205872318283831.a, A065369, A065369.P17665126162398518660.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105186

/-! ## A105186.P13982001421239012377

`A037314(A163325(n))`
-/

namespace A105186.P13982001421239012377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A163325 n).toNat

end

end A105186.P13982001421239012377

namespace A105186

/-- `A037314(A163325(n))` -/
def P13982001421239012377.Spec : Prop :=
  ∀ n, P13982001421239012377.a n = A105186 n

end A105186

/-! ## A105186.P10504998097637039826

`A037314(A163528(A163332(n)))`
-/

namespace A105186.P10504998097637039826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A163528 (A163332 n).toNat).toNat

end

end A105186.P10504998097637039826

namespace A105186

/-- `A037314(A163528(A163332(n)))` -/
def P10504998097637039826.Spec : Prop :=
  ∀ n, P10504998097637039826.a n = A105186 n

end A105186

/-! ## A105186.P3795359969057227251

`n-A163327(A037314(A163326(n)))`
-/

namespace A105186.P3795359969057227251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A163327 (A037314 (A163326 n).toNat).toNat

end

end A105186.P3795359969057227251

namespace A105186

/-- `n-A163327(A037314(A163326(n)))` -/
def P3795359969057227251.Spec : Prop :=
  ∀ n, P3795359969057227251.a n = A105186 n

end A105186

/-! ## A105186.P9214062733952953735

`A004526(A065369(n)+n)`
-/

namespace A105186.P9214062733952953735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A065369 n + (n : ℤ)).toNat

end

end A105186.P9214062733952953735

namespace A105186

/-- `A004526(A065369(n)+n)` -/
def P9214062733952953735.Spec : Prop :=
  ∀ n, P9214062733952953735.a n = A105186 n

end A105186

/-! ## A105186.P10799102880695772466

`A026741(A065369(n)+n)`
-/

namespace A105186.P10799102880695772466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A065369 n + (n : ℤ)).toNat

end

end A105186.P10799102880695772466

namespace A105186

/-- `A026741(A065369(n)+n)` -/
def P10799102880695772466.Spec : Prop :=
  ∀ n, P10799102880695772466.a n = A105186 n

end A105186

/-! ## A105186.P12189738448800435837

`A029578(A065369(n)+n)`
-/

namespace A105186.P12189738448800435837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A065369 n + (n : ℤ)).toNat

end

end A105186.P12189738448800435837

namespace A105186

/-- `A029578(A065369(n)+n)` -/
def P12189738448800435837.Spec : Prop :=
  ∀ n, P12189738448800435837.a n = A105186 n

end A105186

/-! ## A105186.P7129227286848646308

`A008619(A065369(n)+n)-1`
-/

namespace A105186.P7129227286848646308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A065369 n + (n : ℤ)).toNat - 1

end

end A105186.P7129227286848646308

namespace A105186

/-- `A008619(A065369(n)+n)-1` -/
def P7129227286848646308.Spec : Prop :=
  ∀ n, P7129227286848646308.a n = A105186 n

end A105186

/-! ## A105186.P11827037864068039152

`A037314(A163326(A163327(n)))`
-/

namespace A105186.P11827037864068039152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A163326 (A163327 n).toNat).toNat

end

end A105186.P11827037864068039152

namespace A105186

/-- `A037314(A163326(A163327(n)))` -/
def P11827037864068039152.Spec : Prop :=
  ∀ n, P11827037864068039152.a n = A105186 n

end A105186

/-! ## A105186.P13578628600246415129

`A037314(A163529(A163327(A163333(n))))`
-/

namespace A105186.P13578628600246415129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A163529 (A163327 (A163333 n).toNat).toNat).toNat

end

end A105186.P13578628600246415129

namespace A105186

/-- `A037314(A163529(A163327(A163333(n))))` -/
def P13578628600246415129.Spec : Prop :=
  ∀ n, P13578628600246415129.a n = A105186 n

end A105186

/-! ## A105186.P12821537589277204782

`A037314(A002262(A163331(n)))`
-/

namespace A105186.P12821537589277204782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A002262 (A163331 n).toNat).toNat

end

end A105186.P12821537589277204782

namespace A105186

/-- `A037314(A002262(A163331(n)))` -/
def P12821537589277204782.Spec : Prop :=
  ∀ n, P12821537589277204782.a n = A105186 n

end A105186

/-! ## A105186.P15512352593154414663

`A037314(A025581(A163329(n)))`
-/

namespace A105186.P15512352593154414663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A025581 (A163329 n).toNat).toNat

end

end A105186.P15512352593154414663

namespace A105186

/-- `A037314(A025581(A163329(n)))` -/
def P15512352593154414663.Spec : Prop :=
  ∀ n, P15512352593154414663.a n = A105186 n

end A105186

/-! ## A105186.P16599990872435969557

`A037314(A163326(3*n))`
-/

namespace A105186.P16599990872435969557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A163326 (3 * n)).toNat

end

end A105186.P16599990872435969557

namespace A105186

/-- `A037314(A163326(3*n))` -/
def P16599990872435969557.Spec : Prop :=
  ∀ n, P16599990872435969557.a n = A105186 n

end A105186

/-! ## A105186.P8684205695925882917

`A037314(A025581(A163331(3*n)))`
-/

namespace A105186.P8684205695925882917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A025581 (A163331 (3 * n)).toNat).toNat

end

end A105186.P8684205695925882917

namespace A105186

/-- `A037314(A025581(A163331(3*n)))` -/
def P8684205695925882917.Spec : Prop :=
  ∀ n, P8684205695925882917.a n = A105186 n

end A105186

/-!
# A105187: a(n) = determinant of the n X n matrix m(i,j) = (i+j+2)!/i!/j!.

The programs for A105187, the canonical program `A105187.P7429205934417591947` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105187 has offset 0).

The definition of A105187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105187.P7429205934417591947

`1/12*(n+1)*(n+2)!*(n+3)!`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105187

/-- `1/12*(n+1)*(n+2)!*(n+3)!` -/
def P7429205934417591947.Spec : Prop :=
  ∀ n, P7429205934417591947.a n = (A105187 n : ℚ)

end A105187

/-! ## A105187.P6175457376142426055

`(n+1)!²*∑[∑[(n+1)²]]`
-/

namespace A105187.P6175457376142426055
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) ^ 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A105187.P6175457376142426055

namespace A105187

/-- `(n+1)!²*∑[∑[(n+1)²]]` -/
def P6175457376142426055.Spec : Prop :=
  ∀ n, (P6175457376142426055.a n : ℤ) = A105187 n

end A105187

/-! ## A105187.P18053330471739401631

`∑[∑[(n+1)²]]*∏[(n+1)²]`
-/

namespace A105187.P18053330471739401631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f3 j)

end

end A105187.P18053330471739401631

namespace A105187

/-- `∑[∑[(n+1)²]]*∏[(n+1)²]` -/
def P18053330471739401631.Spec : Prop :=
  ∀ n, (P18053330471739401631.a n : ℤ) = A105187 n

end A105187

/-! ## A105187.P9228260730084762691

`8*C(∑[n+1], 2)*a(n-1)/A253909(n)` with `a(0)=1`
-/

namespace A105187.P9228260730084762691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (8 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℚ) * a (n - 1) / (A253909 n : ℚ)

end

end A105187.P9228260730084762691

namespace A105187

/-- `8*C(∑[n+1], 2)*a(n-1)/A253909(n)` -/
def P9228260730084762691.Spec : Prop :=
  ∀ n, P9228260730084762691.a n = (A105187 n : ℚ)

end A105187

/-! ## A105187.P5024371906327903315

`A010797(n+1)/A000142(n)`
-/

namespace A105187.P5024371906327903315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010797 (n + 1) : ℚ) / (A000142 n : ℚ)

end

end A105187.P5024371906327903315

namespace A105187

/-- `A010797(n+1)/A000142(n)` -/
def P5024371906327903315.Spec : Prop :=
  ∀ n, P5024371906327903315.a n = (A105187 n : ℚ)

end A105187

/-!
# A105188: a(n) = determinant of the n X n matrix m(i,j)=(i+j+3)!/i!/j!.

The programs for A105188, the canonical program `A105188.P14062428694587377368` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105188 has offset 0).

The definition of A105188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105188.P14062428694587377368

`1/288*(n+1)*(n+2)!*(n+3)!*(n+4)!`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105188

/-- `1/288*(n+1)*(n+2)!*(n+3)!*(n+4)!` -/
def P14062428694587377368.Spec : Prop :=
  ∀ n, P14062428694587377368.a n = (A105188 n : ℚ)

end A105188

/-! ## A105188.P15728857034421252786

`A005461(n+1)*A005990(n+2)*A000142(n)`
-/

namespace A105188.P15728857034421252786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005461 (n + 1) * A005990 (n + 2) * A000142 n

end

end A105188.P15728857034421252786

namespace A105188

/-- `A005461(n+1)*A005990(n+2)*A000142(n)` -/
def P15728857034421252786.Spec : Prop :=
  ∀ n, P15728857034421252786.a n = A105188 n

end A105188

/-! ## A105188.P17800585573897226351

`A001286(n+2)*A001755(n+4)*A000142(n)`
-/

namespace A105188.P17800585573897226351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001286 (n + 2) * A001755 (n + 4) * A000142 n

end

end A105188.P17800585573897226351

namespace A105188

/-- `A001286(n+2)*A001755(n+4)*A000142(n)` -/
def P17800585573897226351.Spec : Prop :=
  ∀ n, P17800585573897226351.a n = A105188 n

end A105188

/-! ## A105188.P3213991515993629109

`A010798(n+1)/n!`
-/

namespace A105188.P3213991515993629109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010798 (n + 1) : ℚ) / (Nat.factorial n : ℚ)

end

end A105188.P3213991515993629109

namespace A105188

/-- `A010798(n+1)/n!` -/
def P3213991515993629109.Spec : Prop :=
  ∀ n, P3213991515993629109.a n = (A105188 n : ℚ)

end A105188

/-! ## A105188.P5351418117248153203

`A010798(n+1)/A000142(n)`
-/

namespace A105188.P5351418117248153203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010798 (n + 1) : ℚ) / (A000142 n : ℚ)

end

end A105188.P5351418117248153203

namespace A105188

/-- `A010798(n+1)/A000142(n)` -/
def P5351418117248153203.Spec : Prop :=
  ∀ n, P5351418117248153203.a n = (A105188 n : ℚ)

end A105188

/-!
# A105189: Numbers n such that the string k100000000001 is prime.

The programs for A105189, there is no canonical definition to state claims against.
-/

/-! ## A105189.P16137363301532951020

`eq[1, A105190(n)]`
-/

namespace A105189.P16137363301532951020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105190 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105189.P16137363301532951020

/-! ## A105189.P9190023252841392614

`eq[2, A105191(n)]`
-/

namespace A105189.P9190023252841392614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A105189.P9190023252841392614

/-!
# A105192: Number of divisors of n101.

The programs for A105192, the canonical program `A105192.P11359607203134994014` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105192 has offset 0).

The definition of A105192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A105192.P11359607203134994014

`∏{e}[A158128(A017281(n)), #+1]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A105192

/-- `∏{e}[A158128(A017281(n)), #+1]` -/
def P11359607203134994014.Spec : Prop :=
  ∀ n, (P11359607203134994014.a n : ℤ) = A105192 n

theorem P11359607203134994014.correct : P11359607203134994014.Spec := by
  intro n
  simp only [A105192]

end A105192

/-! ## A105192.P5155726335062292074

`∏{e}[A158128(A005408(5*n)), #+1]`
-/

namespace A105192.P5155726335062292074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (A005408 (5 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A105192.P5155726335062292074

namespace A105192

/-- `∏{e}[A158128(A005408(5*n)), #+1]` -/
def P5155726335062292074.Spec : Prop :=
  ∀ n, (P5155726335062292074.a n : ℤ) = A105192 n

theorem P5155726335062292074.correct : P5155726335062292074.Spec := by
  intro n
  simp only [A105192, Nat.add_sub_cancel, A105192.P5155726335062292074.f1, A105192.P5155726335062292074.a, A105192.P11359607203134994014.f1, A105192.P11359607203134994014.a, A005408, A005408.P17437947328870227736.a, A017281, A017281.P12372910670058171543.a, A158128, A158128.P10427486004682123714.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A105192

/-! ## A105192.P16747048352915858062

`∏{e}[A158128(10*n+1)-A016972(n)%2+1, #+1]`
-/

namespace A105192.P16747048352915858062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (10 * n + 1) - Int.tmod (A016972 n) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A105192.P16747048352915858062

namespace A105192

/-- `∏{e}[A158128(10*n+1)-A016972(n)%2+1, #+1]` -/
def P16747048352915858062.Spec : Prop :=
  ∀ n, (P16747048352915858062.a n : ℤ) = A105192 n

end A105192

/-! ## A105192.P10373215907014401480

`∏{e}[A158128(10*n+1)-A190804(n+1)%2+1, #+1]`
-/

namespace A105192.P10373215907014401480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (10 * n + 1) - Int.tmod (A190804 (n + 1)) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A105192.P10373215907014401480

namespace A105192

/-- `∏{e}[A158128(10*n+1)-A190804(n+1)%2+1, #+1]` -/
def P10373215907014401480.Spec : Prop :=
  ∀ n, (P10373215907014401480.a n : ℤ) = A105192 n

end A105192

/-! ## A105192.P2149661717892617066

`A000005(A158128(10*n+1))`
-/

namespace A105192.P2149661717892617066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A158128 (10 * n + 1)).toNat

end

end A105192.P2149661717892617066

namespace A105192

/-- `A000005(A158128(10*n+1))` -/
def P2149661717892617066.Spec : Prop :=
  ∀ n, P2149661717892617066.a n = A105192 n

end A105192

/-! ## A105192.P11962104918504272016

`A000005(A017377(A017377(10*n))+2)`
-/

namespace A105192.P11962104918504272016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017377 (A017377 (10 * n)).toNat + 2).toNat

end

end A105192.P11962104918504272016

namespace A105192

/-- `A000005(A017377(A017377(10*n))+2)` -/
def P11962104918504272016.Spec : Prop :=
  ∀ n, P11962104918504272016.a n = A105192 n

end A105192

/-! ## A105192.P317292591655929115

`∑{d}[A158128(10*n+1), A323170(#)+1]`
-/

namespace A105192.P317292591655929115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158128 (10 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A323170 d + 1)

end

end A105192.P317292591655929115

namespace A105192

/-- `∑{d}[A158128(10*n+1), A323170(#)+1]` -/
def P317292591655929115.Spec : Prop :=
  ∀ n, P317292591655929115.a n = A105192 n

end A105192

/-!
# A105194: Number of distinct prime factors of the concatenation of two consecutive odd numbers.

The programs for A105194, there is no canonical definition to state claims against.
-/

/-! ## A105194.P2013617830030243998

`∑{e}[A020338(A016813(n))+2, A016042(#)]`
-/

namespace A105194.P2013617830030243998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A016813 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A016042 (Nat.factorization (f1 n).natAbs p)

end

end A105194.P2013617830030243998

/-! ## A105194.P9752702287924925655

`∑{e}[A020338(A016813(n))+2, A016056(#)]`
-/

namespace A105194.P9752702287924925655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A016813 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A016056 (Nat.factorization (f1 n).natAbs p)

end

end A105194.P9752702287924925655

/-! ## A105194.P16576627929496074466

`∑{e}[A020338(A016813(n))+2, A016068(#)]`
-/

namespace A105194.P16576627929496074466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A016813 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A016068 (Nat.factorization (f1 n).natAbs p)

end

end A105194.P16576627929496074466

/-! ## A105194.P1960374501458035106

`∑{e}[A020338(A016813(n))+2, A298444(#)]`
-/

namespace A105194.P1960374501458035106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A016813 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A298444 (Nat.factorization (f1 n).natAbs p)

end

end A105194.P1960374501458035106

/-!
# A105195: Length of shortest simple Lucas chain for n.

The programs for A105195, there is no canonical definition to state claims against.
-/

/-! ## A105195.P3411852530359726995

`A178047(n+1)-A010054(A273462(2*n+3))`
-/

namespace A105195.P3411852530359726995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178047 (n + 1) - A010054 (A273462 (2 * n + 3)).toNat

end

end A105195.P3411852530359726995

/-! ## A105195.P6536377939126550896

`A178047(n+1)-A374466(A335988(2*n+5))`
-/

namespace A105195.P6536377939126550896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178047 (n + 1) - A374466 (A335988 (2 * n + 5)).toNat

end

end A105195.P6536377939126550896

/-! ## A105195.P14748641661736750591

`A364800(A132212(n+1))`
-/

namespace A105195.P14748641661736750591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364800 (A132212 (n + 1)).toNat

end

end A105195.P14748641661736750591

/-! ## A105195.P2053370794313135027

`A266082(n+1)%A117538(n)`
-/

namespace A105195.P2053370794313135027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266082 (n + 1)) (A117538 n)

end

end A105195.P2053370794313135027

/-! ## A105195.P4167423149132370433

`and(A001988(n+1), A266082(n+1))`
-/

namespace A105195.P4167423149132370433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001988 (n + 1)) (A266082 (n + 1))

end

end A105195.P4167423149132370433

/-!
# A105196: Triangle read by rows: T(n,k) = |Stirling1(n,k)| * k^k, for 1 <= k <= n.

The programs for A105196, there is no canonical definition to state claims against.
-/

/-! ## A105196.P3596340929096902315

`A033918(n+1)*A130534(n)`
-/

namespace A105196.P3596340929096902315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (n + 1) * A130534 n

end

end A105196.P3596340929096902315

/-! ## A105196.P3071489020223800594

`abs(A008275(n+1)*A033918(n+1))`
-/

namespace A105196.P3071489020223800594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008275 (n + 1) * A033918 (n + 1)|

end

end A105196.P3071489020223800594

/-! ## A105196.P1146617376667910832

`A000169(A002260(n+1))*A028421(n)`
-/

namespace A105196.P1146617376667910832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (A002260 (n + 1)).toNat * A028421 n

end

end A105196.P1146617376667910832

/-! ## A105196.P11937897824662243242

`A000312(A002260(n+1))*A130534(n)`
-/

namespace A105196.P11937897824662243242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A002260 (n + 1)).toNat * A130534 n

end

end A105196.P11937897824662243242

/-! ## A105196.P16111609830155435276

`A033918(n+1)*A132393(A014132(n+1))`
-/

namespace A105196.P16111609830155435276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (n + 1) * A132393 (A014132 (n + 1)).toNat

end

end A105196.P16111609830155435276

/-!
# A105197: Triangle, read by rows, of Stirling numbers of second kind, S2(n,k), multiplied by k^k, for n >= 1, 1<=k<=n.

The programs for A105197, there is no canonical definition to state claims against.
-/

/-! ## A105197.P3691989984513877874

`A008277(n+1)*A033918(n+1)`
-/

namespace A105197.P3691989984513877874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A033918 (n + 1)

end

end A105197.P3691989984513877874

/-! ## A105197.P6337060481126790962

`A033918(n+1)*A048993(comp[∑[n]])`
-/

namespace A105197.P6337060481126790962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (n + 1) * A048993 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A105197.P6337060481126790962

/-! ## A105197.P5856622013669497995

`A000169(A002260(n+1))*A321331(n)`
-/

namespace A105197.P5856622013669497995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (A002260 (n + 1)).toNat * A321331 n

end

end A105197.P5856622013669497995

/-! ## A105197.P3314007912448990044

`A000312(A002260(n+1))*A008277(n+1)`
-/

namespace A105197.P3314007912448990044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A002260 (n + 1)).toNat * A008277 (n + 1)

end

end A105197.P3314007912448990044

/-! ## A105197.P3285643661394194508

`A008278(A038722(n+1))*A033918(n+1)`
-/

namespace A105197.P3285643661394194508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A038722 (n + 1)).toNat * A033918 (n + 1)

end

end A105197.P3285643661394194508

/-!
# A105198: a(n) = n(n+1)/2 mod 4.

The programs for A105198, the canonical program `A105198.P4541919411954706834` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A105198 has offset 0).

The definition of A105198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A105198.P4541919411954706834

`((n+1)^5-n^5-1)%120/30`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A105198

/-- `((n+1)^5-n^5-1)%120/30` -/
def P4541919411954706834.Spec : Prop :=
  ∀ n, P4541919411954706834.a n = (A105198 n : ℚ)

end A105198

