import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A351700: T(n,k) is the maximum number of points that can be chosen from a rectangle of n X k lattice points such that their mutual distances are distinct, where T(n,k) is a triangle read by rows, 1 <= k <= n.

The programs for A351700, there is no canonical definition to state claims against.
-/

/-! ## A351700.P6109752164080311562

`A004218(A291718(n+1))+1`
-/

namespace A351700.P6109752164080311562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A291718 (n + 1)).toNat + 1

end

end A351700.P6109752164080311562

/-! ## A351700.P12771023943059422777

`A004218(A292153(n+1))+1`
-/

namespace A351700.P12771023943059422777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A292153 (n + 1)).toNat + 1

end

end A351700.P12771023943059422777

/-! ## A351700.P10325366473295193002

`A111972(3*A292153(n+1))`
-/

namespace A351700.P10325366473295193002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (3 * A292153 (n + 1)).toNat

end

end A351700.P10325366473295193002

/-! ## A351700.P422607908104443929

`A057427(n)+A055642(A292153(n+1))`
-/

namespace A351700.P422607908104443929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A055642 (A292153 (n + 1)).toNat

end

end A351700.P422607908104443929

/-!
# A351702: In the balanced ternary representation of n, reverse the order of digits other than the most significant.

The programs for A351702, there is no canonical definition to state claims against.
-/

/-! ## A351702.P14147654589243941715

`abs(A343603(abs(A160652(n))))`
-/

namespace A351702.P14147654589243941715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A343603 |A160652 n|.toNat)|

end

end A351702.P14147654589243941715

/-! ## A351702.P3612898545176016368

`floor(A134028(3*n+1)/3)`
-/

namespace A351702.P3612898545176016368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A134028 (3 * n + 1) : ℚ) / 3⌋

end

end A351702.P3612898545176016368

/-! ## A351702.P16628027981140512141

`round(A134028(Δ[n²]+n)/3)`
-/

namespace A351702.P16628027981140512141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A134028 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat : ℚ) / 3)

end

end A351702.P16628027981140512141

/-! ## A351702.P15163794250115144700

`A008611(A134028(3*n+1))`
-/

namespace A351702.P15163794250115144700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A134028 (3 * n + 1)).toNat

end

end A351702.P15163794250115144700

/-! ## A351702.P15264094608111871147

`A002264(A134028(2*n+1+n))`
-/

namespace A351702.P15264094608111871147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A134028 (2 * n + 1 + n)).toNat

end

end A351702.P15264094608111871147

/-! ## A351702.P1059649988610326693

`abs(A160652(abs(A343602(n))))`
-/

namespace A351702.P1059649988610326693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A160652 |A343602 n|.toNat)|

end

end A351702.P1059649988610326693

/-!
# A351703: Square array T(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of e.g.f. 1/(1 - x^k * exp(x) / k!).

The programs for A351703, there is no canonical definition to state claims against.
-/

/-! ## A351703.P16556862917534136824

`A180590(A210545(n+1)+A010054(n))`
-/

namespace A351703.P16556862917534136824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180590 (A210545 (n + 1) + A010054 n).toNat

end

end A351703.P16556862917534136824

/-!
# A351704: Sums of the ascending diagonals of the triangle A162609.

The programs for A351704, the canonical program `A351704.P17094281031323990313` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351704 has offset 0).

The definition of A351704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351704.P13606400897608813946

`A361271(n)+1`
-/

namespace A351704.P13606400897608813946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361271 n + 1

end

end A351704.P13606400897608813946

namespace A351704

/-- `A361271(n)+1` -/
def P13606400897608813946.Spec : Prop :=
  ∀ n, P13606400897608813946.a n = A351704 n

theorem P13606400897608813946.correct : P13606400897608813946.Spec := by
  intro n
  simp only [A351704, Nat.add_sub_cancel, A351704.P13606400897608813946.a, A351704.P17094281031323990313.f1, A351704.P17094281031323990313.a, A008851, A008851.P13943248388909222760.a, A361271, A361271.P3303767422937233497.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A351704

/-! ## A351704.P17094281031323990313

`a(n-2)+(n+1)*∑[(n+1)%2]-A008851(n+1)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A351704

/-- `a(n-2)+(n+1)*∑[(n+1)%2]-A008851(n+1)` -/
def P17094281031323990313.Spec : Prop :=
  ∀ n, P17094281031323990313.a n = A351704 n

theorem P17094281031323990313.correct : P17094281031323990313.Spec := by
  intro n
  simp only [A351704]

end A351704

/-! ## A351704.P15863563541662981560

`∑[A123108(n)²]-A161680(A057979(n))`
-/

namespace A351704.P15863563541662981560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A161680 (A057979 n).toNat

end

end A351704.P15863563541662981560

namespace A351704

/-- `∑[A123108(n)²]-A161680(A057979(n))` -/
def P15863563541662981560.Spec : Prop :=
  ∀ n, P15863563541662981560.a n = A351704 n

end A351704

/-! ## A351704.P13284269054735781687

`Δ[A038376(n)]+∑[log2(gcd(2, n))]`
-/

namespace A351704.P13284269054735781687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038376 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℝ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A351704.P13284269054735781687

namespace A351704

/-- `Δ[A038376(n)]+∑[log2(gcd(2, n))]` -/
def P13284269054735781687.Spec : Prop :=
  ∀ n, P13284269054735781687.a n = (A351704 n : ℝ)

end A351704

/-! ## A351704.P4526842241203559247

`A008619(n)+Δ[A038376(n)]`
-/

namespace A351704.P4526842241203559247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (f1 (n + 1) - f1 n)

end

end A351704.P4526842241203559247

namespace A351704

/-- `A008619(n)+Δ[A038376(n)]` -/
def P4526842241203559247.Spec : Prop :=
  ∀ n, P4526842241203559247.a n = A351704 n

end A351704

/-! ## A351704.P3132990738170503310

`A050407(A008619(n))+A028724(n+2)`
-/

namespace A351704.P3132990738170503310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 (A008619 n).toNat + A028724 (n + 2)

end

end A351704.P3132990738170503310

namespace A351704

/-- `A050407(A008619(n))+A028724(n+2)` -/
def P3132990738170503310.Spec : Prop :=
  ∀ n, P3132990738170503310.a n = A351704 n

end A351704

/-! ## A351704.P7357819973163480602

`A008619(n)+Δ[((n+1)/4-1)*A280186(n+1)]`
-/

namespace A351704.P7357819973163480602
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / 4 - 1) * (A280186 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A351704.P7357819973163480602

namespace A351704

/-- `A008619(n)+Δ[((n+1)/4-1)*A280186(n+1)]` -/
def P7357819973163480602.Spec : Prop :=
  ∀ n, P7357819973163480602.a n = (A351704 n : ℚ)

end A351704

/-! ## A351704.P14886579761980139585

`A213500(A008805(n))+Δ[A038376(n)]`
-/

namespace A351704.P14886579761980139585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (A008805 n).toNat + (f1 (n + 1) - f1 n)

end

end A351704.P14886579761980139585

namespace A351704

/-- `A213500(A008805(n))+Δ[A038376(n)]` -/
def P14886579761980139585.Spec : Prop :=
  ∀ n, P14886579761980139585.a n = A351704 n

end A351704

/-! ## A351704.P7435554811484144581

`A134392(floor(cosh(log((n+1)²)))-n)`
-/

namespace A351704.P7435554811484144581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134392 (⌊Real.cosh (Real.log ((n + 1) ^ 2 : ℝ))⌋ - (n : ℤ)).toNat

end

end A351704.P7435554811484144581

namespace A351704

/-- `A134392(floor(cosh(log((n+1)²)))-n)` -/
def P7435554811484144581.Spec : Prop :=
  ∀ n, P7435554811484144581.a n = A351704 n

end A351704

/-! ## A351704.P4972521432917551599

`A134392(or(ceil(n²/2), char[2^n-1]))`
-/

namespace A351704.P4972521432917551599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134392 (Int.lor ⌈(n ^ 2 : ℚ) / 2⌉ ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A351704.P4972521432917551599

namespace A351704

/-- `A134392(or(ceil(n²/2), char[2^n-1]))` -/
def P4972521432917551599.Spec : Prop :=
  ∀ n, P4972521432917551599.a n = A351704 n

end A351704

/-!
# A351705: For any nonnegative number n with binary expansion Sum_{k >= 0} b_k * 2^k, a(n) is the numerator of d(n) = Sum_{k >= 0} b_k * 2^A130472(k). See A351706 for the denominators.

The programs for A351705, there is no canonical definition to state claims against.
-/

/-! ## A351705.P4524562300624951857

`p?[A241645(n)]%A239858(n+1)`
-/

namespace A351705.P4524562300624951857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A239858 (n + 1))

end

end A351705.P4524562300624951857

/-! ## A351705.P13165821978161867063

`A246591(n)+A083915(A002905(n))`
-/

namespace A351705.P13165821978161867063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246591 n + A083915 (A002905 n).toNat

end

end A351705.P13165821978161867063

/-! ## A351705.P10627190345117912063

`gcd(A000217(A227415(n)), A241816(n))`
-/

namespace A351705.P10627190345117912063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A227415 n).toNat) (A241816 n)

end

end A351705.P10627190345117912063

/-!
# A351706: For any nonnegative number n with binary expansion Sum_{k >= 0} b_k * 2^k, a(n) is the denominator of d(n) = Sum_{k >= 0} b_k * 2^A130472(k). See A351705 for the numerators.

The programs for A351706, there is no canonical definition to state claims against.
-/

/-! ## A351706.P12985052660791024404

`A062383(A059906(n))`
-/

namespace A351706.P12985052660791024404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A059906 n).toNat

end

end A351706.P12985052660791024404

/-! ## A351706.P585548669330257768

`A062383(A059905(2*n)/2)`
-/

namespace A351706.P585548669330257768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (SequenceMachineLib.roundAway ((A059905 (2 * n) : ℚ) / 2)).toNat

end

end A351706.P585548669330257768

/-! ## A351706.P15557686585948054293

`A059905(A003945(A070939(A063694(2*n))))`
-/

namespace A351706.P15557686585948054293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A003945 (A070939 (A063694 (2 * n)).toNat).toNat).toNat

end

end A351706.P15557686585948054293

/-! ## A351706.P15656983591171445767

`A371442(A003945(A070939(A063694(2*n+1))))`
-/

namespace A351706.P15656983591171445767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371442 (A003945 (A070939 (A063694 (2 * n + 1)).toNat).toNat).toNat

end

end A351706.P15656983591171445767

/-! ## A351706.P3549462627827123749

`A217871(A063695(n)/2)`
-/

namespace A351706.P3549462627827123749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217871 (SequenceMachineLib.roundAway ((A063695 n : ℚ) / 2)).toNat

end

end A351706.P3549462627827123749

/-! ## A351706.P7825742828753490592

`A217871(A059906(n)²)`
-/

namespace A351706.P7825742828753490592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217871 (A059906 n ^ 2).toNat

end

end A351706.P7825742828753490592

/-! ## A351706.P18399882059310735079

`A217871(A059906(n)^2)`
-/

namespace A351706.P18399882059310735079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217871 (A059906 n ^ 2).toNat

end

end A351706.P18399882059310735079

/-! ## A351706.P2424677081501013896

`A217871(A063695(n))`
-/

namespace A351706.P2424677081501013896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217871 (A063695 n).toNat

end

end A351706.P2424677081501013896

/-!
# A351707: G.f. A(x) satisfies: A(x) = 1 + x + x^2 + x^3 + x^4 * A(x/(1 - x)) / (1 - x)^2.

The programs for A351707, there is no canonical definition to state claims against.
-/

/-! ## A351707.P13196390065784704218

`A261104(A023427(n)*A122584(n+1))`
-/

namespace A351707.P13196390065784704218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A023427 n * A122584 (n + 1)).toNat

end

end A351707.P13196390065784704218

/-! ## A351707.P15538768583512639003

`A261514(A188624(n+1))^A320278(n)`
-/

namespace A351707.P15538768583512639003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261514 (A188624 (n + 1)).toNat : ℚ) ^ (A320278 n : ℤ)

end

end A351707.P15538768583512639003

/-! ## A351707.P6792876462603519956

`A294748(∏[∑[char[5*n]]])`
-/

namespace A351707.P6792876462603519956
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294748 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A351707.P6792876462603519956

/-! ## A351707.P18101498392122477833

`or(1, A241063(∑[n+2]-1))`
-/

namespace A351707.P18101498392122477833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A241063 (∑ j ∈ Finset.range (n + 1), f1 j - 1))

end

end A351707.P18101498392122477833

/-! ## A351707.P11873936202171992649

`A171512(A068034(n))`
-/

namespace A351707.P11873936202171992649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171512 (A068034 n).toNat

end

end A351707.P11873936202171992649

/-!
# A351708: a(n) = Sum_{p|n, p prime} (n/p)!.

The programs for A351708, the canonical program `A351708.P10067582429513291876` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351708 has offset 1).

The definition of A351708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351708.P10067582429513291876

`∑{p}[n+1, ceil(n/#)!]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A351708

/-- `∑{p}[n+1, ceil(n/#)!]` -/
def P10067582429513291876.Spec : Prop :=
  ∀ n, (P10067582429513291876.a n : ℤ) = A351708 (n + 1)

theorem P10067582429513291876.correct : P10067582429513291876.Spec := by
  intro n
  simp only [A351708, Nat.add_sub_cancel]

end A351708

/-! ## A351708.P14864919719252725932

`∑{p}[n+1, A000142((n+1)/#)]`
-/

namespace A351708.P14864919719252725932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000142 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A351708.P14864919719252725932

namespace A351708

/-- `∑{p}[n+1, A000142((n+1)/#)]` -/
def P14864919719252725932.Spec : Prop :=
  ∀ n, P14864919719252725932.a n = A351708 (n + 1)

end A351708

/-! ## A351708.P13025555304038030149

`∑{d}[n+1, A001221(#)*A062794((n+1)/#)]`
-/

namespace A351708.P13025555304038030149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A062794 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351708.P13025555304038030149

namespace A351708

/-- `∑{d}[n+1, A001221(#)*A062794((n+1)/#)]` -/
def P13025555304038030149.Spec : Prop :=
  ∀ n, P13025555304038030149.a n = A351708 (n + 1)

end A351708

/-! ## A351708.P9906735015279938401

`A112623(A374431(n+1))`
-/

namespace A351708.P9906735015279938401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112623 (A374431 (n + 1)).toNat

end

end A351708.P9906735015279938401

namespace A351708

/-- `A112623(A374431(n+1))` -/
def P9906735015279938401.Spec : Prop :=
  ∀ n, P9906735015279938401.a n = A351708 (n + 1)

end A351708

/-!
# A351709: a(n) = Sum_{p|n, p prime} p!.

The programs for A351709, there is no canonical definition to state claims against.
-/

/-! ## A351709.P15076727380208050016

`∑{p}[n+1, #!]`
-/

namespace A351709.P15076727380208050016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial p

end

end A351709.P15076727380208050016

/-! ## A351709.P7816154631910679262

`lcm(2, ∑{p}[2*n-(n-1), #!])`
-/

namespace A351709.P7816154631910679262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial p)

end

end A351709.P7816154631910679262

/-! ## A351709.P1654465394481632393

`∑{p}[n+1, A000142(#)]`
-/

namespace A351709.P1654465394481632393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000142 p

end

end A351709.P1654465394481632393

/-! ## A351709.P2940744977837840969

`∑{p}[n+1, A052596(#)]`
-/

namespace A351709.P2940744977837840969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A052596 p

end

end A351709.P2940744977837840969

/-! ## A351709.P4337144017501951513

`∑{p}[n+1, A052621(#)]`
-/

namespace A351709.P4337144017501951513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A052621 p

end

end A351709.P4337144017501951513

/-! ## A351709.P753901470480559088

`∑{p}[n+1, A062348(#)]`
-/

namespace A351709.P753901470480559088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A062348 p

end

end A351709.P753901470480559088

/-! ## A351709.P5783457285766250371

`∑{p}[n+1, A062349(#)]`
-/

namespace A351709.P5783457285766250371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A062349 p

end

end A351709.P5783457285766250371

/-! ## A351709.P11137821014487934062

`∑{p}[n+1, A062833(#)]`
-/

namespace A351709.P11137821014487934062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A062833 p

end

end A351709.P11137821014487934062

/-! ## A351709.P8797692096064057990

`∑{p}[n+1, A075071(#)]`
-/

namespace A351709.P8797692096064057990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A075071 p

end

end A351709.P8797692096064057990

/-! ## A351709.P14410160666055247770

`∑{p}[n+1, A083267(#)]`
-/

namespace A351709.P14410160666055247770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A083267 p

end

end A351709.P14410160666055247770

/-!
# A351710: a(n) = Sum_{p|n, p prime} (n-p)!.

The programs for A351710, there is no canonical definition to state claims against.
-/

/-! ## A351710.P17190027601418072620

`∑{p}[n+1, (1-#+n)!]`
-/

namespace A351710.P17190027601418072620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (1 - (p : ℤ) + (n : ℤ)).toNat

end

end A351710.P17190027601418072620

/-! ## A351710.P17309818884740403501

`∑{p}[n+1, A000142(n+1-#)]`
-/

namespace A351710.P17309818884740403501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000142 (n + 1 - p)

end

end A351710.P17309818884740403501

/-! ## A351710.P11188499230363560669

`A173887(A141036(n))%(floor((2/acot(2*n))²)-n²)`
-/

namespace A351710.P11188499230363560669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173887 (A141036 n).toNat) (⌊(2 / SequenceMachineLib.acot (2 * n : ℝ)) ^ 2⌋ - (n ^ 2 : ℤ))

end

end A351710.P11188499230363560669

/-!
# A351711: a(n) = Sum_{p|n, p prime} Sum_{d|n} gcd(d,p).

The programs for A351711, the canonical program `A351711.P10274480873794141417` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351711 has offset 1).

The definition of A351711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351711.P5108331591762609632

`A351746(n+1)+A248577(n+1)`
-/

namespace A351711.P5108331591762609632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351746 (n + 1) + A248577 (n + 1)

end

end A351711.P5108331591762609632

namespace A351711

/-- `A351746(n+1)+A248577(n+1)` -/
def P5108331591762609632.Spec : Prop :=
  ∀ n, P5108331591762609632.a n = A351711 (n + 1)

theorem P5108331591762609632.correct : P5108331591762609632.Spec := by
  intro n
  simp only [A351711, Nat.add_sub_cancel, A351711.P5108331591762609632.a, A351711.P10274480873794141417.f1, A351711.P10274480873794141417.a, A055631, A055631.P8885936990558110793.a, A248577, A248577.P10884066776821242186.a, A351746, A351746.P13626312203566205031.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A351711

/-! ## A351711.P10274480873794141417

`A248577(n+1)+∑{d}[n+1, A055631(#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A351711

/-- `A248577(n+1)+∑{d}[n+1, A055631(#)]` -/
def P10274480873794141417.Spec : Prop :=
  ∀ n, P10274480873794141417.a n = A351711 (n + 1)

theorem P10274480873794141417.correct : P10274480873794141417.Spec := by
  intro n
  simp only [A351711, Nat.add_sub_cancel]

end A351711

/-! ## A351711.P7706243027634888750

`A248577(n+1)+A319131(n+1)-A062799(n+1)`
-/

namespace A351711.P7706243027634888750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248577 (n + 1) + (A319131 (n + 1) - A062799 (n + 1))

end

end A351711.P7706243027634888750

namespace A351711

/-- `A248577(n+1)+A319131(n+1)-A062799(n+1)` -/
def P7706243027634888750.Spec : Prop :=
  ∀ n, P7706243027634888750.a n = A351711 (n + 1)

end A351711

/-! ## A351711.P3014802453673672059

`A351746(n+1)+A000005(n+1)*A001221(n+1)`
-/

namespace A351711.P3014802453673672059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351746 (n + 1) + A000005 (n + 1) * A001221 (n + 1)

end

end A351711.P3014802453673672059

namespace A351711

/-- `A351746(n+1)+A000005(n+1)*A001221(n+1)` -/
def P3014802453673672059.Spec : Prop :=
  ∀ n, P3014802453673672059.a n = A351711 (n + 1)

theorem P3014802453673672059.correct : P3014802453673672059.Spec := by
  intro n
  simp only [A351711, Nat.add_sub_cancel, A351711.P3014802453673672059.a, A351711.P10274480873794141417.f1, A351711.P10274480873794141417.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A055631, A055631.P8885936990558110793.a, A248577, A248577.P10884066776821242186.a, A351746, A351746.P13626312203566205031.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A351711

/-! ## A351711.P10431352746214672661

`A248577(n+1)+A319131(n+1)-∑{d}[n+1, A001221(#)]`
-/

namespace A351711.P10431352746214672661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248577 (n + 1) + (A319131 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A001221 d)

end

end A351711.P10431352746214672661

namespace A351711

/-- `A248577(n+1)+A319131(n+1)-∑{d}[n+1, A001221(#)]` -/
def P10431352746214672661.Spec : Prop :=
  ∀ n, P10431352746214672661.a n = A351711 (n + 1)

end A351711

/-! ## A351711.P5182942201056904623

`∑{d}[n+1, A055631(#)]+A000005(n+1)*A001221(n+1)`
-/

namespace A351711.P5182942201056904623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055631 d + A000005 (n + 1) * A001221 (n + 1)

end

end A351711.P5182942201056904623

namespace A351711

/-- `∑{d}[n+1, A055631(#)]+A000005(n+1)*A001221(n+1)` -/
def P5182942201056904623.Spec : Prop :=
  ∀ n, P5182942201056904623.a n = A351711 (n + 1)

theorem P5182942201056904623.correct : P5182942201056904623.Spec := by
  intro n
  simp only [A351711, Nat.add_sub_cancel, A351711.P5182942201056904623.f1, A351711.P5182942201056904623.a, A351711.P10274480873794141417.f1, A351711.P10274480873794141417.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A055631, A055631.P8885936990558110793.a, A248577, A248577.P10884066776821242186.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A351711

/-! ## A351711.P11606937120215998061

`∑{d}[n+1, A055631(#)]+(A325765(n)+1)*A001221(n+1)`
-/

namespace A351711.P11606937120215998061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055631 d + (A325765 n + 1) * A001221 (n + 1)

end

end A351711.P11606937120215998061

namespace A351711

/-- `∑{d}[n+1, A055631(#)]+(A325765(n)+1)*A001221(n+1)` -/
def P11606937120215998061.Spec : Prop :=
  ∀ n, P11606937120215998061.a n = A351711 (n + 1)

end A351711

/-! ## A351711.P8829555282826588133

`∑{d}[n+1, A055631(#)]+(A070824(n+1)+2)*A001221(n+1)`
-/

namespace A351711.P8829555282826588133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055631 d + (A070824 (n + 1) + 2) * A001221 (n + 1)

end

end A351711.P8829555282826588133

namespace A351711

/-- `∑{d}[n+1, A055631(#)]+(A070824(n+1)+2)*A001221(n+1)` -/
def P8829555282826588133.Spec : Prop :=
  ∀ n, P8829555282826588133.a n = A351711 (n + 1)

end A351711

/-! ## A351711.P16437661586675502678

`∑{d}[n+1, A055631(#)]+(A083399(n+1)-1)*A000005(n+1)`
-/

namespace A351711.P16437661586675502678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055631 d + (A083399 (n + 1) - 1) * A000005 (n + 1)

end

end A351711.P16437661586675502678

namespace A351711

/-- `∑{d}[n+1, A055631(#)]+(A083399(n+1)-1)*A000005(n+1)` -/
def P16437661586675502678.Spec : Prop :=
  ∀ n, P16437661586675502678.a n = A351711 (n + 1)

theorem P16437661586675502678.correct : P16437661586675502678.Spec := by
  intro n
  simp only [A351711, Nat.add_sub_cancel, A351711.P16437661586675502678.f1, A351711.P16437661586675502678.a, A351711.P10274480873794141417.f1, A351711.P10274480873794141417.a, A000005, A000005.P16091521709108585461.a, A055631, A055631.P8885936990558110793.a, A083399, A083399.P16148020281325742632.a, A248577, A248577.P10884066776821242186.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A055212, A055212.P14412881054625885538.a, A033273, A033273.P18420659424697249895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A351711

/-! ## A351711.P5484442971802447610

`A248577(n+1)+∑{d}[n+1, A000005(#)*A166260((n+1)/#)]`
-/

namespace A351711.P5484442971802447610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248577 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A000005 d * A166260 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351711.P5484442971802447610

namespace A351711

/-- `A248577(n+1)+∑{d}[n+1, A000005(#)*A166260((n+1)/#)]` -/
def P5484442971802447610.Spec : Prop :=
  ∀ n, P5484442971802447610.a n = A351711 (n + 1)

end A351711

/-! ## A351711.P12563979141679350850

`A248577(n+1)+∑{p}[n+1, #*A000005((n+1)/#)]-A062799(n+1)`
-/

namespace A351711.P12563979141679350850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248577 (n + 1) + (∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat - A062799 (n + 1))

end

end A351711.P12563979141679350850

namespace A351711

/-- `A248577(n+1)+∑{p}[n+1, #*A000005((n+1)/#)]-A062799(n+1)` -/
def P12563979141679350850.Spec : Prop :=
  ∀ n, P12563979141679350850.a n = A351711 (n + 1)

end A351711

/-! ## A351711.P6286507521957137326

`A000005(n+1)*A001221(n+1)+A319131(n+1)-A062799(n+1)`
-/

namespace A351711.P6286507521957137326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A001221 (n + 1) + (A319131 (n + 1) - A062799 (n + 1))

end

end A351711.P6286507521957137326

namespace A351711

/-- `A000005(n+1)*A001221(n+1)+A319131(n+1)-A062799(n+1)` -/
def P6286507521957137326.Spec : Prop :=
  ∀ n, P6286507521957137326.a n = A351711 (n + 1)

end A351711

/-! ## A351711.P9201674072351977964

`(A070824(n+1)+2)*A001221(n+1)+A319131(n+1)-A062799(n+1)`
-/

namespace A351711.P9201674072351977964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070824 (n + 1) + 2) * A001221 (n + 1) + (A319131 (n + 1) - A062799 (n + 1))

end

end A351711.P9201674072351977964

namespace A351711

/-- `(A070824(n+1)+2)*A001221(n+1)+A319131(n+1)-A062799(n+1)` -/
def P9201674072351977964.Spec : Prop :=
  ∀ n, P9201674072351977964.a n = A351711 (n + 1)

end A351711

/-! ## A351711.P8334393136312676210

`A248577(n+1)+∑{d}[A290641(n+1), A066328(#)]`
-/

namespace A351711.P8334393136312676210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248577 (n + 1) + ∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 d

end

end A351711.P8334393136312676210

namespace A351711

/-- `A248577(n+1)+∑{d}[A290641(n+1), A066328(#)]` -/
def P8334393136312676210.Spec : Prop :=
  ∀ n, P8334393136312676210.a n = A351711 (n + 1)

end A351711

/-! ## A351711.P14191315066436718520

`A248577(n+1)+∑{d}[n+1, A240086(#²)]`
-/

namespace A351711.P14191315066436718520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248577 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A240086 (d ^ 2)

end

end A351711.P14191315066436718520

namespace A351711

/-- `A248577(n+1)+∑{d}[n+1, A240086(#²)]` -/
def P14191315066436718520.Spec : Prop :=
  ∀ n, P14191315066436718520.a n = A351711 (n + 1)

end A351711

/-!
# A351714: Lucas-Niven numbers: numbers that are divisible by the number of terms in their minimal (or greedy) representation in terms of the Lucas numbers (A130310).

The programs for A351714, the canonical program `A351714.P12398140737547645289` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351714 has offset 1).

The definition of A351714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351714.P12398140737547645289

`lt[lcm(n, A116543(n))-n, n]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A351714

/-- `lt[lcm(n, A116543(n))-n, n]` -/
def P12398140737547645289.Spec : Prop :=
  ∀ n, (P12398140737547645289.a n : ℤ) = A351714 (n + 1)

theorem P12398140737547645289.correct : P12398140737547645289.Spec := by
  intro n
  simp only [A351714, Nat.add_sub_cancel]

end A351714

/-! ## A351714.P15320386935180905484

`∑[A266226(∑[A199101(n+1)])]`
-/

namespace A351714.P15320386935180905484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199101 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266226 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351714.P15320386935180905484

namespace A351714

/-- `∑[A266226(∑[A199101(n+1)])]` -/
def P15320386935180905484.Spec : Prop :=
  ∀ n, P15320386935180905484.a n = A351714 (n + 1)

end A351714

/-!
# A351715: Numbers k such that k and k + 1 are both Lucas-Niven numbers (A351714).

The programs for A351715, the canonical program `A351715.P1671394502304081214` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351715 has offset 1).

The definition of A351715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 785 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351715.P1671394502304081214

`A351714(lt[Δ[A351714(n+1)], 2]+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A351715

/-- `A351714(lt[Δ[A351714(n+1)], 2]+1)` -/
def P1671394502304081214.Spec : Prop :=
  ∀ n, P1671394502304081214.a n = A351715 (n + 1)

theorem P1671394502304081214.correct : P1671394502304081214.Spec := by
  intro n
  simp only [A351715, Nat.add_sub_cancel]

end A351715

/-!
# A351716: Starts of runs of 3 consecutive Lucas-Niven numbers (A351714).

The programs for A351716, the canonical program `A351716.P7007273170909431594` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351716 has offset 1).

The definition of A351716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351716.P7007273170909431594

`∩[A351715(n+1)-1, A351715(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A351716

/-- `∩[A351715(n+1)-1, A351715(n+1)]` -/
def P7007273170909431594.Spec : Prop :=
  ∀ n, (P7007273170909431594.a n : ℤ) = A351716 (n + 1)

theorem P7007273170909431594.correct : P7007273170909431594.Spec := by
  intro n
  simp only [A351716, Nat.add_sub_cancel]

end A351716

/-! ## A351716.P4109016543942598660

`∩[A351715(n+1), A023443(A351715(n+1))]`
-/

namespace A351716.P4109016543942598660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A351715 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351716.P4109016543942598660

namespace A351716

/-- `∩[A351715(n+1), A023443(A351715(n+1))]` -/
def P4109016543942598660.Spec : Prop :=
  ∀ n, (P4109016543942598660.a n : ℤ) = A351716 (n + 1)

end A351716

/-!
# A351718: Numbers whose binary and maximal Lucas representations are both palindromic.

The programs for A351718, there is no canonical definition to state claims against.
-/

/-! ## A351718.P13150702783969524651

`∩[A006995(n+1), A351717(n+1)]`
-/

namespace A351718.P13150702783969524651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351718.P13150702783969524651

/-! ## A351718.P5032102918338384047

`∩[record[A049776(n+1)-1], A351717(n+1)]`
-/

namespace A351718.P5032102918338384047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049776 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A351718.P5032102918338384047

/-! ## A351718.P11854134386107920621

`∩[eq[0, A178226(n)], A351717(n+1)]`
-/

namespace A351718.P11854134386107920621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A351718.P11854134386107920621

/-! ## A351718.P3309086496933505352

`filter[A351717(n+1), A178225(#)]`
-/

namespace A351718.P3309086496933505352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178225 (f1 j).toNat = 1) n)

end

end A351718.P3309086496933505352

/-! ## A351718.P3999820475463304400

`∩[eq[0, A055945(n)], A351717(n+1)]`
-/

namespace A351718.P3999820475463304400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A351718.P3999820475463304400

/-!
# A351719: Lazy-Lucas-Niven numbers: numbers divisible by the number of terms in their maximal (or lazy) representation in terms of the Lucas numbers (A130311).

The programs for A351719, there is no canonical definition to state claims against.
-/

/-! ## A351719.P8411822147836311707

`record[A000119(n)*A358134(n+1)]`
-/

namespace A351719.P8411822147836311707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n * A358134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351719.P8411822147836311707

/-! ## A351719.P1404478860512876325

`record[A085033(n+3)*A186188(n+1)]`
-/

namespace A351719.P1404478860512876325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085033 (n + 3) * A186188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351719.P1404478860512876325

/-! ## A351719.P11310932808918616821

`A397205(A342951(n+1))`
-/

namespace A351719.P11310932808918616821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397205 (A342951 (n + 1)).toNat

end

end A351719.P11310932808918616821

/-! ## A351719.P11536834532344527368

`∑[ceil((A049948(A165877(n)+1)+n)/2)]`
-/

namespace A351719.P11536834532344527368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049948 (A165877 n + 1).toNat + (n : ℤ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351719.P11536834532344527368

/-! ## A351719.P3229021281713026060

`A086378(n+1)+A036634(A036632(n))`
-/

namespace A351719.P3229021281713026060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086378 (n + 1) + A036634 (A036632 n).toNat

end

end A351719.P3229021281713026060

/-!
# A351720: Numbers k such that k and k + 1 are both lazy-Lucas-Niven numbers (A351719).

The programs for A351720, there is no canonical definition to state claims against.
-/

/-! ## A351720.P10324313486331310463

`∩[A351719(n+1)-1, A351719(n+1)]`
-/

namespace A351720.P10324313486331310463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351719 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351720.P10324313486331310463

/-! ## A351720.P1313788152942065015

`∩[A351719(n+1), A023443(A351719(n+1))]`
-/

namespace A351720.P1313788152942065015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A351719 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351720.P1313788152942065015

/-!
# A351721: Starts of runs of 3 consecutive lazy-Lucas-Niven numbers (A351719).

The programs for A351721, there is no canonical definition to state claims against.
-/

/-! ## A351721.P16480872824583771721

`∩[A351720(n+1)-1, A351720(n+1)]`
-/

namespace A351721.P16480872824583771721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351720 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351721.P16480872824583771721

/-!
# A351722: a(n) is the number of permutations p of {1, 2, ..., 2*n} such that for any k in 1..2*n, k and p(k) do not share a common 1-bit.

The programs for A351722, there is no canonical definition to state claims against.
-/

/-! ## A351722.P15488536500902789620

`gcd(2*floor(ϕ*(n+1))-(n+1), A113863(n))²`
-/

namespace A351722.P15488536500902789620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - (n + 1 : ℤ)) (A113863 n) ^ 2

end

end A351722.P15488536500902789620

/-! ## A351722.P14505368508609817170

`A008833(A113863(n))`
-/

namespace A351722.P14505368508609817170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A113863 n).toNat

end

end A351722.P14505368508609817170

/-! ## A351722.P6376823443846160614

`A258820(A330765(n))²`
-/

namespace A351722.P6376823443846160614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258820 (A330765 n).toNat ^ 2

end

end A351722.P6376823443846160614

/-! ## A351722.P14164003519985835644

`A305805(A287256(n))²`
-/

namespace A351722.P14164003519985835644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305805 (A287256 n).toNat ^ 2

end

end A351722.P14164003519985835644

/-! ## A351722.P12589462959415903696

`A327523(A280204(n))²`
-/

namespace A351722.P12589462959415903696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327523 (A280204 n).toNat ^ 2

end

end A351722.P12589462959415903696

/-!
# A351723: Numbers of the form x^2 + y^2 + z^2 + x*y*z with x,y,z nonnegative integers.

The programs for A351723, there is no canonical definition to state claims against.
-/

/-! ## A351723.P11815019344122568759

`eq[A163533(n), A221277(n+1)]`
-/

namespace A351723.P11815019344122568759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A351723.P11815019344122568759

/-! ## A351723.P4214146204371584379

`∩[A039099(n+1), A317551(n+1)]`
-/

namespace A351723.P4214146204371584379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A351723.P4214146204371584379

/-! ## A351723.P17766591586675225369

`lt[A059843(n+5), A379616(A360005(3*(n+1)))]`
-/

namespace A351723.P17766591586675225369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379616 (A360005 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351723.P17766591586675225369

/-! ## A351723.P10637436509475890276

`lt[A070176(2*n), A341149(A144021(2*n+5))]`
-/

namespace A351723.P10637436509475890276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341149 (A144021 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351723.P10637436509475890276

/-! ## A351723.P17071242457997797903

`eq[val(A257840(2*(n+2)), 2), A319037(2*n+3)]`
-/

namespace A351723.P17071242457997797903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A257840 (2 * (n + 2))).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319037 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A351723.P17071242457997797903

/-!
# A351725: Table T(n,k) read by rows: number of partitions of n into k parts of size 1, 5, 10 or 25.

The programs for A351725, there is no canonical definition to state claims against.
-/

/-! ## A351725.P15903641999052052357

`round(atan(A351726(n)))`
-/

namespace A351725.P15903641999052052357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A351726 n : ℝ))

end

end A351725.P15903641999052052357

/-! ## A351725.P16985793456099084948

`ceil(A351726(n)/A000008(n))`
-/

namespace A351725.P16985793456099084948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A351726 n : ℚ) / (A000008 n : ℚ)⌉

end

end A351725.P16985793456099084948

/-! ## A351725.P16367476596245142789

`ceil(A351726(n)/A000009(n))`
-/

namespace A351725.P16367476596245142789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A351726 n : ℚ) / (A000009 n : ℚ)⌉

end

end A351725.P16367476596245142789

/-! ## A351725.P6703921093201198631

`ceil(A351726(n)/A000041(n))`
-/

namespace A351725.P6703921093201198631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A351726 n : ℚ) / (A000041 n : ℚ)⌉

end

end A351725.P6703921093201198631

/-! ## A351725.P12514179904290360131

`ceil(A351726(n)/A000124(n))`
-/

namespace A351725.P12514179904290360131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A351726 n : ℚ) / (A000124 n : ℚ)⌉

end

end A351725.P12514179904290360131

/-! ## A351725.P1186670030279721219

`ceil(A351726(n)/A000125(n))`
-/

namespace A351725.P1186670030279721219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A351726 n : ℚ) / (A000125 n : ℚ)⌉

end

end A351725.P1186670030279721219

/-! ## A351725.P15791730173828772808

`ceil(A351726(n)/A000010(n+1))`
-/

namespace A351725.P15791730173828772808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A351726 n : ℚ) / (A000010 (n + 1) : ℚ)⌉

end

end A351725.P15791730173828772808

/-! ## A351725.P6899212492862797155

`ceil(A351726(n)/A000040(n+1))`
-/

namespace A351725.P6899212492862797155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A351726 n : ℚ) / (A000040 (n + 1) : ℚ)⌉

end

end A351725.P6899212492862797155

/-! ## A351725.P1277232173559390769

`ceil(A351726(n)/A018252(n+1))`
-/

namespace A351725.P1277232173559390769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A351726 n : ℚ) / (A018252 (n + 1) : ℚ)⌉

end

end A351725.P1277232173559390769

/-!
# A351726: Table T(n,k) read by rows: number of compositions of n into k parts of size 1, 5, 10 or 25.

The programs for A351726, there is no canonical definition to state claims against.
-/

/-! ## A351726.P15414550323878175952

`A055642(A309010(n))*A351725(n)`
-/

namespace A351726.P15414550323878175952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A309010 n).toNat * A351725 n

end

end A351726.P15414550323878175952

/-! ## A351726.P1278099082968378689

`A055642(A299905(n*A351725(n)))*A351725(n)`
-/

namespace A351726.P1278099082968378689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A299905 ((n : ℤ) * A351725 n).toNat).toNat * A351725 n

end

end A351726.P1278099082968378689

/-! ## A351726.P15203382157444675513

`A055642(A299905(n)/2)*A351725(n)`
-/

namespace A351726.P15203382157444675513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((A299905 n : ℚ) / 2)).toNat * A351725 n

end

end A351726.P15203382157444675513

/-! ## A351726.P425815280657088727

`A055642(A299905(n))*A351725(n)`
-/

namespace A351726.P425815280657088727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A299905 n).toNat * A351725 n

end

end A351726.P425815280657088727

/-! ## A351726.P6252552459480247193

`and(A117256(n), A152140(n))`
-/

namespace A351726.P6252552459480247193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117256 n) (A152140 n)

end

end A351726.P6252552459480247193

/-!
# A351730: Number of labeled idempotent semigroups of order n.

The programs for A351730, there is no canonical definition to state claims against.
-/

/-! ## A351730.P6767367916262248965

`A351731(n+1)/(n+1)`
-/

namespace A351730.P6767367916262248965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351731 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A351730.P6767367916262248965

/-! ## A351730.P15068954866808605601

`A058158(∑[n+1])`
-/

namespace A351730.P15068954866808605601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058158 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351730.P15068954866808605601

/-! ## A351730.P4210371414347634778

`A058157(∑[n+1])/(n+1)`
-/

namespace A351730.P4210371414347634778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058157 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A351730.P4210371414347634778

/-! ## A351730.P9896947322327979953

`A058166(A028310(∑[n]))`
-/

namespace A351730.P9896947322327979953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058166 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A351730.P9896947322327979953

/-!
# A351731: Number of labeled idempotent monoids of order n.

The programs for A351731, there is no canonical definition to state claims against.
-/

/-! ## A351731.P13207498536493707711

`(n+1)*A351730(n)`
-/

namespace A351731.P13207498536493707711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A351730 n

end

end A351731.P13207498536493707711

/-! ## A351731.P1469761868082647277

`lcm(A005496(n), A351730(n))`
-/

namespace A351731.P1469761868082647277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005496 n) (A351730 n)

end

end A351731.P1469761868082647277

/-! ## A351731.P12057454801778096015

`A351730(n)*A358854(2*n)`
-/

namespace A351731.P12057454801778096015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351730 n * A358854 (2 * n)

end

end A351731.P12057454801778096015

/-! ## A351731.P14907411068474436919

`lcm(n+1, A351730(A007953(n)))`
-/

namespace A351731.P14907411068474436919
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A351730 (A007953 n).toNat)

end

end A351731.P14907411068474436919

/-! ## A351731.P18278755155656124788

`lcm(xor(n, -1), A351730(A247167(n+1)))`
-/

namespace A351731.P18278755155656124788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.xor (n : ℤ) (-1)) (A351730 (A247167 (n + 1)).toNat)

end

end A351731.P18278755155656124788

/-!
# A351732: Number of length n word structures using an infinite alphabet with all distinct run-lengths and the first run length of a symbol less than that of previous symbols.

The programs for A351732, there is no canonical definition to state claims against.
-/

/-! ## A351732.P3568401090296309036

`A002266(A321655(n)+8)`
-/

namespace A351732.P3568401090296309036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A321655 n + 8).toNat

end

end A351732.P3568401090296309036

/-! ## A351732.P10901576435902540070

`A138997(A321655(n)+A000005(n+1))`
-/

namespace A351732.P10901576435902540070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (A321655 n + A000005 (n + 1)).toNat

end

end A351732.P10901576435902540070

/-!
# A351733: Expansion of e.g.f. exp( 2 * x * (exp(x) - 1) ).

The programs for A351733, there is no canonical definition to state claims against.
-/

/-! ## A351733.P9217474641890522524

`A361652(∑[n+3])`
-/

namespace A351733.P9217474641890522524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361652 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351733.P9217474641890522524

/-! ## A351733.P8540234781532277007

`A333159(n)*A361652(A027379(n+1))`
-/

namespace A351733.P8540234781532277007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333159 n * A361652 (A027379 (n + 1)).toNat

end

end A351733.P8540234781532277007

/-! ## A351733.P16510506871838257708

`A361652(A027379(n+1))%A008918(n+1)`
-/

namespace A351733.P16510506871838257708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361652 (A027379 (n + 1)).toNat) (A008918 (n + 1))

end

end A351733.P16510506871838257708

/-!
# A351734: Expansion of e.g.f. exp( 3 * x * (exp(x) - 1) ).

The programs for A351734, there is no canonical definition to state claims against.
-/

/-! ## A351734.P8088883167181141693

`A361652(A046691(n+2))`
-/

namespace A351734.P8088883167181141693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361652 (A046691 (n + 2)).toNat

end

end A351734.P8088883167181141693

/-! ## A351734.P902682852481314130

`A361652(A155212(n)+4)`
-/

namespace A351734.P902682852481314130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361652 (A155212 n + 4).toNat

end

end A351734.P902682852481314130

/-! ## A351734.P8366597470965736628

`A361652(eq[3, A025581(n)])`
-/

namespace A351734.P8366597470965736628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351734.P8366597470965736628

/-! ## A351734.P7750274697614621719

`A361652(A027379(n+2)-1)`
-/

namespace A351734.P7750274697614621719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361652 (A027379 (n + 2) - 1).toNat

end

end A351734.P7750274697614621719

/-!
# A351735: Expansion of e.g.f. 1/(1 - 3 * x)^x.

The programs for A351735, there is no canonical definition to state claims against.
-/

/-! ## A351735.P17841278772092299433

`A362837(A155212(n)+4)`
-/

namespace A351735.P17841278772092299433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362837 (A155212 n + 4).toNat

end

end A351735.P17841278772092299433

/-! ## A351735.P12582871287843407597

`A362837(eq[4, A193739(n)])`
-/

namespace A351735.P12582871287843407597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351735.P12582871287843407597

/-! ## A351735.P13647135786635247549

`A362837(eq[4, A258709(n)])`
-/

namespace A351735.P13647135786635247549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362837 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A351735.P13647135786635247549

/-! ## A351735.P9121592470205644532

`A362837(A000217(n+4)-4)`
-/

namespace A351735.P9121592470205644532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362837 (A000217 (n + 4) - 4).toNat

end

end A351735.P9121592470205644532

/-!
# A351736: Expansion of e.g.f. exp( x * (exp(2 * x) - 1) ).

The programs for A351736, there is no canonical definition to state claims against.
-/

/-! ## A351736.P10704596279350378179

`A362839(∑[n+3])`
-/

namespace A351736.P10704596279350378179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362839 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351736.P10704596279350378179

/-! ## A351736.P14880376997252193704

`Δ[A004525(∑[A012715(n)])]`
-/

namespace A351736.P14880376997252193704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012715 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351736.P14880376997252193704

/-!
# A351737: Expansion of e.g.f. exp( x * (exp(3 * x) - 1) ).

The programs for A351737, there is no canonical definition to state claims against.
-/

/-! ## A351737.P17059995259845742905

`A362839(A046691(n+2))`
-/

namespace A351737.P17059995259845742905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362839 (A046691 (n + 2)).toNat

end

end A351737.P17059995259845742905

/-! ## A351737.P7659220485832574357

`A362839(A155212(n)+4)`
-/

namespace A351737.P7659220485832574357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362839 (A155212 n + 4).toNat

end

end A351737.P7659220485832574357

/-! ## A351737.P13673739858244541552

`A362839(A000217(n+4)-4)`
-/

namespace A351737.P13673739858244541552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362839 (A000217 (n + 4) - 4).toNat

end

end A351737.P13673739858244541552

/-! ## A351737.P18393771060645485624

`A362839(A211024(n+3)+n)`
-/

namespace A351737.P18393771060645485624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362839 (A211024 (n + 3) + (n : ℤ)).toNat

end

end A351737.P18393771060645485624

/-!
# A351739: Expansion of e.g.f. 1/(1 + log(1-x))^x.

The programs for A351739, there is no canonical definition to state claims against.
-/

/-! ## A351739.P17126977877313417805

`A368094(2*n)+A321677(n)`
-/

namespace A351739.P17126977877313417805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368094 (2 * n) + A321677 n

end

end A351739.P17126977877313417805

/-! ## A351739.P18068304116983763444

`A120679(A049220(n+1)+1)-n%2`
-/

namespace A351739.P18068304116983763444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120679 (A049220 (n + 1) + 1).toNat - ((n % 2 : ℕ) : ℤ)

end

end A351739.P18068304116983763444

/-!
# A351740: Total number of parts in all partitions of n into parts of size 1, 5, 10 or 25.

The programs for A351740, there is no canonical definition to state claims against.
-/

/-! ## A351740.P2685291924933228219

`lt[A091889(n+1), A040731(A220571(n+1))]`
-/

namespace A351740.P2685291924933228219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040731 (A220571 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351740.P2685291924933228219

/-! ## A351740.P10183499062765509303

`lt[A208181(n+5), A169942(A208129(n+1))]`
-/

namespace A351740.P10183499062765509303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208181 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169942 (A208129 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A351740.P10183499062765509303

/-!
# A351741: Numbers k such that the concatenation of 1,2,...,k and the concatenation of k,k-1,...,1 have the same number of prime factors, counted with multiplicity.

The programs for A351741, there is no canonical definition to state claims against.
-/

/-! ## A351741.P13578685459273730470

`eq[A046460(n+1), A048288(n+1)]+1`
-/

namespace A351741.P13578685459273730470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A351741.P13578685459273730470

/-!
# A351742: Number of partitions of 2n into n parts of size 1, 5, 10 or 25.

The programs for A351742, there is no canonical definition to state claims against.
-/

/-! ## A351742.P16368484452512757165

`A351725(A210981(n))`
-/

namespace A351742.P16368484452512757165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351725 (A210981 n).toNat

end

end A351742.P16368484452512757165

/-! ## A351742.P8673833151333968675

`A351725(∑[4*n])`
-/

namespace A351742.P8673833151333968675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351725 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351742.P8673833151333968675

/-! ## A351742.P13606713386707763816

`A351725(A046092(n))%29`
-/

namespace A351742.P13606713386707763816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351725 (A046092 n).toNat) 29

end

end A351742.P13606713386707763816

/-! ## A351742.P3017156747624722227

`A351725(A046092(n-char[1]))-char[1]`
-/

namespace A351742.P3017156747624722227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351725 (A046092 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A351742.P3017156747624722227

/-! ## A351742.P12116454598134542895

`A185114(n)*A351725(A046092(n))`
-/

namespace A351742.P12116454598134542895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 n * A351725 (A046092 n).toNat

end

end A351742.P12116454598134542895

/-! ## A351742.P15735216047958307943

`or(A000007(n), A351725(A046092(n)))`
-/

namespace A351742.P15735216047958307943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A351725 (A046092 n).toNat)

end

end A351742.P15735216047958307943

/-! ## A351742.P11904193706979071860

`A000108(C(2, n))*A351725(A046092(n))`
-/

namespace A351742.P11904193706979071860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A351725 (A046092 n).toNat

end

end A351742.P11904193706979071860

/-! ## A351742.P2480375527852766301

`A007318(C(2, n))*A351725(A046092(n))`
-/

namespace A351742.P2480375527852766301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A351725 (A046092 n).toNat

end

end A351742.P2480375527852766301

/-! ## A351742.P1219326798463777872

`ceil(1/A007318(n))*A351725(A046092(n))`
-/

namespace A351742.P1219326798463777872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A351725 (A046092 n).toNat

end

end A351742.P1219326798463777872

/-! ## A351742.P14584718755012379340

`A000041(C(2, n+2))*A351725(A046092(n))`
-/

namespace A351742.P14584718755012379340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A351725 (A046092 n).toNat

end

end A351742.P14584718755012379340

/-! ## A351742.P4181158233464343998

`gcd(17, A020639(n+2))*A351725(A046092(n))`
-/

namespace A351742.P4181158233464343998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 17 (A020639 (n + 2)) : ℤ) * A351725 (A046092 n).toNat

end

end A351742.P4181158233464343998

/-! ## A351742.P1943604374256976784

`A006530(gcd(n, n+1))*A351725(A046092(n))`
-/

namespace A351742.P1943604374256976784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.gcd n (n + 1)) * A351725 (A046092 n).toNat

end

end A351742.P1943604374256976784

/-! ## A351742.P3845770562155107300

`A000010(((-1)^n)²)*A351725(A046092(n))`
-/

namespace A351742.P3845770562155107300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((-1) ^ n) ^ 2).toNat * A351725 (A046092 n).toNat

end

end A351742.P3845770562155107300

/-! ## A351742.P11501659472743362733

`A000203(((-1)^n)²)*A351725(A046092(n))`
-/

namespace A351742.P11501659472743362733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat * A351725 (A046092 n).toNat

end

end A351742.P11501659472743362733

/-! ## A351742.P9363150065988595307

`A351725(A046092(n))/A014963(∑[n+1])`
-/

namespace A351742.P9363150065988595307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351725 (A046092 n).toNat : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A351742.P9363150065988595307

/-! ## A351742.P16842798068319380909

`A014963(C(n+2, 2))*A351725(A046092(n))`
-/

namespace A351742.P16842798068319380909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (n + 2) 2) * A351725 (A046092 n).toNat

end

end A351742.P16842798068319380909

/-! ## A351742.P11429336191353652270

`A351725(A046092(n))^A014963(∑[n+5])`
-/

namespace A351742.P11429336191353652270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351725 (A046092 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A351742.P11429336191353652270

/-!
# A351743: a(1)=1. Thereafter, a(n+1) is the greatest divisor of s(n) which is prime to a(n), where s(n) is the n-th partial sum.

The programs for A351743, there is no canonical definition to state claims against.
-/

/-! ## A351743.P8398514318353509518

`gcd(A355149(n+1), A355149(A028310(n)))`
-/

namespace A351743.P8398514318353509518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A355149 (n + 1)) (A355149 (A028310 n).toNat)

end

end A351743.P8398514318353509518

/-! ## A351743.P7114724654813262752

`A355149(A028310(n)+1)-A355149(A028310(n))`
-/

namespace A351743.P7114724654813262752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355149 (A028310 n + 1).toNat - A355149 (A028310 n).toNat

end

end A351743.P7114724654813262752

/-! ## A351743.P10310325108452342043

`Δ[A355149(A028310(n))%A262464(n+1)]`
-/

namespace A351743.P10310325108452342043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355149 (A028310 n).toNat) (A262464 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A351743.P10310325108452342043

/-!
# A351744: Increment all even digits of n.

The programs for A351744, there is no canonical definition to state claims against.
-/

/-! ## A351744.P10064862141681835238

`A109846(A106746(n))`
-/

namespace A351744.P10064862141681835238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109846 (A106746 n).toNat

end

end A351744.P10064862141681835238

/-! ## A351744.P16708124034114048180

`A103181(A048379(n))+n`
-/

namespace A351744.P16708124034114048180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A048379 n).toNat + (n : ℤ)

end

end A351744.P16708124034114048180

/-! ## A351744.P3907667810016962646

`A103181(A061601(n))+n`
-/

namespace A351744.P3907667810016962646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A061601 n).toNat + (n : ℤ)

end

end A351744.P3907667810016962646

/-! ## A351744.P5802402604076258362

`A106747(A065031(n))+n`
-/

namespace A351744.P5802402604076258362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A065031 n).toNat + (n : ℤ)

end

end A351744.P5802402604076258362

/-! ## A351744.P16658887086212646967

`A306436(n)+A103181(n)`
-/

namespace A351744.P16658887086212646967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306436 n + A103181 n

end

end A351744.P16658887086212646967

/-! ## A351744.P2848132746204282647

`A256079(n)-A103181(n)`
-/

namespace A351744.P2848132746204282647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256079 n - A103181 n

end

end A351744.P2848132746204282647

/-! ## A351744.P12871092858010715594

`A087380(2*A065031(n))+n`
-/

namespace A351744.P12871092858010715594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087380 (2 * A065031 n).toNat + (n : ℤ)

end

end A351744.P12871092858010715594

/-!
# A351746: a(n) = Sum_{p|n, p prime} (p-1) * tau(n/p).

The programs for A351746, the canonical program `A351746.P13626312203566205031` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351746 has offset 1).

The definition of A351746 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351711, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A351746.P13626312203566205031

`A351711(n+1)-A248577(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A351746

/-- `A351711(n+1)-A248577(n+1)` -/
def P13626312203566205031.Spec : Prop :=
  ∀ n, P13626312203566205031.a n = A351746 (n + 1)

theorem P13626312203566205031.correct : P13626312203566205031.Spec := by
  intro n
  simp only [A351746, Nat.add_sub_cancel]

end A351746

/-! ## A351746.P11703554789521771057

`∑{d}[n+1, A055631(#)]`
-/

namespace A351746.P11703554789521771057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055631 d

end

end A351746.P11703554789521771057

namespace A351746

/-- `∑{d}[n+1, A055631(#)]` -/
def P11703554789521771057.Spec : Prop :=
  ∀ n, P11703554789521771057.a n = A351746 (n + 1)

theorem P11703554789521771057.correct : P11703554789521771057.Spec := by
  intro n
  simp only [A351746, Nat.add_sub_cancel, A351746.P11703554789521771057.f1, A351746.P11703554789521771057.a, A351746.P13626312203566205031.a, A055631, A055631.P8885936990558110793.a, A248577, A248577.P10884066776821242186.a, A351711, A351711.P10274480873794141417.f1, A351711.P10274480873794141417.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A351746

/-! ## A351746.P3497893807222773112

`A319131(n+1)-A062799(n+1)`
-/

namespace A351746.P3497893807222773112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319131 (n + 1) - A062799 (n + 1)

end

end A351746.P3497893807222773112

namespace A351746

/-- `A319131(n+1)-A062799(n+1)` -/
def P3497893807222773112.Spec : Prop :=
  ∀ n, P3497893807222773112.a n = A351746 (n + 1)

end A351746

/-! ## A351746.P13943033585265004610

`A319131(n+1)-∑{d}[n+1, A001221(#)]`
-/

namespace A351746.P13943033585265004610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319131 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A001221 d

end

end A351746.P13943033585265004610

namespace A351746

/-- `A319131(n+1)-∑{d}[n+1, A001221(#)]` -/
def P13943033585265004610.Spec : Prop :=
  ∀ n, P13943033585265004610.a n = A351746 (n + 1)

end A351746

/-! ## A351746.P2923936278020037828

`∑{d}[n+1, A000005(#)*A166260((n+1)/#)]`
-/

namespace A351746.P2923936278020037828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A166260 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351746.P2923936278020037828

namespace A351746

/-- `∑{d}[n+1, A000005(#)*A166260((n+1)/#)]` -/
def P2923936278020037828.Spec : Prop :=
  ∀ n, P2923936278020037828.a n = A351746 (n + 1)

end A351746

/-! ## A351746.P14109720398169487524

`∑{d}[n+1, A065968(#)*A130054((n+1)/#)]`
-/

namespace A351746.P14109720398169487524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065968 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A351746.P14109720398169487524

namespace A351746

/-- `∑{d}[n+1, A065968(#)*A130054((n+1)/#)]` -/
def P14109720398169487524.Spec : Prop :=
  ∀ n, P14109720398169487524.a n = A351746 (n + 1)

end A351746

/-! ## A351746.P17268378282944910571

`A351711(n+1)-A000005(n+1)*A001221(n+1)`
-/

namespace A351746.P17268378282944910571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351711 (n + 1) - A000005 (n + 1) * A001221 (n + 1)

end

end A351746.P17268378282944910571

namespace A351746

/-- `A351711(n+1)-A000005(n+1)*A001221(n+1)` -/
def P17268378282944910571.Spec : Prop :=
  ∀ n, P17268378282944910571.a n = A351746 (n + 1)

end A351746

/-! ## A351746.P4453511083250229247

`∑{d}[A290641(n+1), A066328(#)]`
-/

namespace A351746.P4453511083250229247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 d

end

end A351746.P4453511083250229247

namespace A351746

/-- `∑{d}[A290641(n+1), A066328(#)]` -/
def P4453511083250229247.Spec : Prop :=
  ∀ n, P4453511083250229247.a n = A351746 (n + 1)

end A351746

/-! ## A351746.P18204896945378514244

`∑{d}[n+1, A240086(#²)]`
-/

namespace A351746.P18204896945378514244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A240086 (d ^ 2)

end

end A351746.P18204896945378514244

namespace A351746

/-- `∑{d}[n+1, A240086(#²)]` -/
def P18204896945378514244.Spec : Prop :=
  ∀ n, P18204896945378514244.a n = A351746 (n + 1)

end A351746

/-! ## A351746.P4249305449466152280

`∑{d}[A064554(n+1), A066328(#²)]`
-/

namespace A351746.P4249305449466152280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 (d ^ 2)

end

end A351746.P4249305449466152280

namespace A351746

/-- `∑{d}[A064554(n+1), A066328(#²)]` -/
def P4249305449466152280.Spec : Prop :=
  ∀ n, P4249305449466152280.a n = A351746 (n + 1)

end A351746

/-!
# A351747: a(n) = Sum_{p|n, p prime} n^lcm(p,n/p).

The programs for A351747, there is no canonical definition to state claims against.
-/

/-! ## A351747.P15671115315721306758

`∑{e}[A093845(n+1), A093845(#)]`
-/

namespace A351747.P15671115315721306758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A093845 (Nat.factorization (f1 n).natAbs p)

end

end A351747.P15671115315721306758

/-! ## A351747.P16361089953922065622

`A072651(∑[n+1])*A286574(n)`
-/

namespace A351747.P16361089953922065622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072651 (∑ j ∈ Finset.range (n + 1), f1 j) * A286574 n

end

end A351747.P16361089953922065622

/-! ## A351747.P14815964671000915180

`A072651(∑[n+1])*A086288(n+1)`
-/

namespace A351747.P14815964671000915180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072651 (∑ j ∈ Finset.range (n + 1), f1 j) * A086288 (n + 1)

end

end A351747.P14815964671000915180

/-!
# A351749: a(n) = Sum_{p|n, p prime} sigma_p(p).

The programs for A351749, there is no canonical definition to state claims against.
-/

/-! ## A351749.P3617834661152555411

`∑{p}[n+1, #^#+1]`
-/

namespace A351749.P3617834661152555411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p ^ p + 1)

end

end A351749.P3617834661152555411

/-! ## A351749.P6137157072713766253

`A351366(n+1)+A001221(n+1)`
-/

namespace A351749.P6137157072713766253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351366 (n + 1) + A001221 (n + 1)

end

end A351749.P6137157072713766253

/-! ## A351749.P6143140278959461213

`A351366(n+1)+log2(A034444(n+1))`
-/

namespace A351749.P6143140278959461213
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A351366 (n + 1) : ℝ) + Real.logb 2 (A034444 (n + 1) : ℝ)

end

end A351749.P6143140278959461213

/-! ## A351749.P16394113150527031445

`A351366(n+1)+A001222(A007947(n+1))`
-/

namespace A351749.P16394113150527031445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351366 (n + 1) + A001222 (A007947 (n + 1)).toNat

end

end A351749.P16394113150527031445

/-!
# A351750: a(n) = Sum_{p|n, p prime} p * sigma_p(p).

The programs for A351750, there is no canonical definition to state claims against.
-/

/-! ## A351750.P4286000948828046983

`∑{p}[n+1, A321295(#)]`
-/

namespace A351750.P4286000948828046983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A321295 p

end

end A351750.P4286000948828046983

/-! ## A351750.P4719369860876477703

`∑{p}[n+1, A322406(#)]`
-/

namespace A351750.P4719369860876477703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A322406 p

end

end A351750.P4719369860876477703

/-! ## A351750.P15364126274903527299

`∑{p}[n+1, #*A174464(#)]`
-/

namespace A351750.P15364126274903527299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A174464 p

end

end A351750.P15364126274903527299

/-! ## A351750.P12796108627796544153

`∑{p}[n+1, #^A000203(#)+#]`
-/

namespace A351750.P12796108627796544153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((p : ℚ) ^ (A000203 p : ℤ) + (p : ℚ))

end

end A351750.P12796108627796544153

/-! ## A351750.P116690537025759089

`∑{p}[n+1, A345895(#)]`
-/

namespace A351750.P116690537025759089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A345895 p

end

end A351750.P116690537025759089

/-!
# A351752: Floor of the average of the numbers |x-y| over all pairs (x,y) with x*y = n, x <= y.

The programs for A351752, there is no canonical definition to state claims against.
-/

/-! ## A351752.P9465324655857387084

`floor(A079667(n+1)/A038548(n+1))`
-/

namespace A351752.P9465324655857387084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079667 (n + 1) : ℚ) / (A038548 (n + 1) : ℚ)⌋

end

end A351752.P9465324655857387084

/-! ## A351752.P154628602568798694

`floor(A079667(n+1)/(A072670(n)+1))`
-/

namespace A351752.P154628602568798694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079667 (n + 1) : ℚ) / (A072670 n + 1 : ℚ)⌋

end

end A351752.P154628602568798694

/-! ## A351752.P10066515753289551469

`floor(A079667(n+1)/Δ[A132106(n)/2])`
-/

namespace A351752.P10066515753289551469
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132106 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079667 (n + 1) : ℚ) / (f1 (n + 1) - f1 n)⌋

end

end A351752.P10066515753289551469

/-! ## A351752.P8906732053607656237

`floor(A079667(n+1)/∑{d}[n+1, A065043(#)])`
-/

namespace A351752.P8906732053607656237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079667 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), A065043 d : ℤ) : ℚ)⌋

end

end A351752.P8906732053607656237

/-! ## A351752.P13073297635996687042

`floor(A079667(n+1)/ceil(A000005(n+1)/2))`
-/

namespace A351752.P13073297635996687042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079667 (n + 1) : ℚ) / (⌈(A000005 (n + 1) : ℚ) / 2⌉ : ℚ)⌋

end

end A351752.P13073297635996687042

/-! ## A351752.P12868455382539195202

`floor(A079667(n+1)/round(A000005(2*n+1-n)/2))`
-/

namespace A351752.P12868455382539195202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079667 (n + 1) : ℚ) / (SequenceMachineLib.roundAway ((A000005 (2 * n + 1 - n) : ℚ) / 2) : ℚ)⌋

end

end A351752.P12868455382539195202

/-! ## A351752.P4241489207192349391

`floor(A079667(n+1)/A065033(A000005(n+1)))`
-/

namespace A351752.P4241489207192349391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079667 (n + 1) : ℚ) / (A065033 (A000005 (n + 1)).toNat : ℚ)⌋

end

end A351752.P4241489207192349391

/-! ## A351752.P11601746994835777448

`floor(A079667(n+1)/A004526(A000005(n+1)+1))`
-/

namespace A351752.P11601746994835777448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079667 (n + 1) : ℚ) / (A004526 (A000005 (n + 1) + 1).toNat : ℚ)⌋

end

end A351752.P11601746994835777448

/-! ## A351752.P4067941567491475789

`floor(A079667(n+1)/A246552(2*A000005(n+1)))`
-/

namespace A351752.P4067941567491475789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A079667 (n + 1) : ℚ) / (A246552 (2 * A000005 (n + 1)).toNat : ℚ)⌋

end

end A351752.P4067941567491475789

/-!
# A351754: G.f. A(x) satisfies: A(x) = 1 + x + x^2 + x^3 + x^4 + x^5 * A(x/(1 - x)) / (1 - x)^2.

The programs for A351754, there is no canonical definition to state claims against.
-/

/-! ## A351754.P3262411343716259803

`A381624(A351344(n))`
-/

namespace A351754.P3262411343716259803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381624 (A351344 n).toNat

end

end A351754.P3262411343716259803

/-! ## A351754.P9621924486715800330

`A265527(A336010(n))`
-/

namespace A351754.P9621924486715800330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265527 (A336010 n).toNat

end

end A351754.P9621924486715800330

/-! ## A351754.P11485347869180548348

`A126352(A059076(n+1))`
-/

namespace A351754.P11485347869180548348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126352 (A059076 (n + 1)).toNat

end

end A351754.P11485347869180548348

/-! ## A351754.P4186753811363590855

`A265527(A308032(n+1))`
-/

namespace A351754.P4186753811363590855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265527 (A308032 (n + 1)).toNat

end

end A351754.P4186753811363590855

/-! ## A351754.P5361673067241126615

`A297932(A146921(n+2))`
-/

namespace A351754.P5361673067241126615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297932 (A146921 (n + 2)).toNat

end

end A351754.P5361673067241126615

/-!
# A351755: G.f. A(x) satisfies: A(x) = 1 + x + x^2 + x^3 + x^4 + x^5 + x^6 * A(x/(1 - x)) / (1 - x)^2.

The programs for A351755, there is no canonical definition to state claims against.
-/

/-! ## A351755.P1266652341765661661

`A046200(A351345(n))`
-/

namespace A351755.P1266652341765661661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046200 (A351345 n).toNat

end

end A351755.P1266652341765661661

/-! ## A351755.P14515310108340856325

`A178460(n+1)+A051731(A117302(n+1))`
-/

namespace A351755.P14515310108340856325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178460 (n + 1) + A051731 (A117302 (n + 1)).toNat

end

end A351755.P14515310108340856325

/-! ## A351755.P5990825024915178649

`or(A074943(A062838(n+1)), A178460(n+1))`
-/

namespace A351755.P5990825024915178649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074943 (A062838 (n + 1)).toNat) (A178460 (n + 1))

end

end A351755.P5990825024915178649

/-! ## A351755.P14135359571131450794

`or(A113716(A236939(2*n)), A178460(n+1))`
-/

namespace A351755.P14135359571131450794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113716 (A236939 (2 * n + 10)).toNat) (A178460 (n + 1))

end

end A351755.P14135359571131450794

/-! ## A351755.P14767964674340826837

`A084250(A023423(n))`
-/

namespace A351755.P14767964674340826837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084250 (A023423 n).toNat

end

end A351755.P14767964674340826837

/-!
# A351756: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - 2*x)) / (1 - 2*x)^2.

The programs for A351756, there is no canonical definition to state claims against.
-/

/-! ## A351756.P15913179924905204655

`A005408(A105227(n)-A007732(n+1))`
-/

namespace A351756.P15913179924905204655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A105227 n - A007732 (n + 1)).toNat

end

end A351756.P15913179924905204655

/-! ## A351756.P5410696100515880002

`A255072(A331158(n))-n`
-/

namespace A351756.P5410696100515880002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A331158 n).toNat - (n : ℤ)

end

end A351756.P5410696100515880002

/-!
# A351757: G.f. A(x) satisfies: A(x) = 1 + x * A(x/(1 - 3*x)) / (1 - 3*x)^2.

The programs for A351757, there is no canonical definition to state claims against.
-/

/-! ## A351757.P5417431522557758947

`A110654(A211923(n)+A205814(n))`
-/

namespace A351757.P5417431522557758947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A211923 n + A205814 n).toNat

end

end A351757.P5417431522557758947

/-! ## A351757.P1072516045880673551

`or(A020497(A001426(n)), A258690(n))`
-/

namespace A351757.P1072516045880673551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020497 (A001426 n).toNat) (A258690 n)

end

end A351757.P1072516045880673551

/-!
# A351759: Number of words either empty or beginning with the first letter of the n-ary alphabet, where each letter of the alphabet occurs n times and letters of neighboring word positions are equal or neighbors in the alphabet.

The programs for A351759, there is no canonical definition to state claims against.
-/

/-! ## A351759.P1745566398955742144

`A208673(∑[4*n])`
-/

namespace A351759.P1745566398955742144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208673 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351759.P1745566398955742144

/-! ## A351759.P2639308739404024702

`gcd(A000038(n), A208673(A046092(n)))`
-/

namespace A351759.P2639308739404024702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A208673 (A046092 n).toNat)

end

end A351759.P2639308739404024702

/-! ## A351759.P11199742751390772199

`lcm(A033999(n), A208673(A046092(n)))`
-/

namespace A351759.P11199742751390772199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A208673 (A046092 n).toNat)

end

end A351759.P11199742751390772199

/-! ## A351759.P5649544364864002994

`or(A000007(n), A208673(A046092(n)))`
-/

namespace A351759.P5649544364864002994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A208673 (A046092 n).toNat)

end

end A351759.P5649544364864002994

/-! ## A351759.P145340492516681162

`A007318(C(2, n))*A208673(A046092(n))`
-/

namespace A351759.P145340492516681162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A208673 (A046092 n).toNat

end

end A351759.P145340492516681162

/-!
# A351760: a(n) = Sum_{1 <= i < j <= n} (i*j)^4.

The programs for A351760, the canonical program `A351760.P6138152911728798347` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351760 has offset 0).

The definition of A351760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351760.P6138152911728798347

`∑[(∑[(1-n)^4]-1)*n^4]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A351760

/-- `∑[(∑[(1-n)^4]-1)*n^4]` -/
def P6138152911728798347.Spec : Prop :=
  ∀ n, P6138152911728798347.a n = A351760 n

theorem P6138152911728798347.correct : P6138152911728798347.Spec := by
  intro n
  simp only [A351760]

end A351760

/-! ## A351760.P5510011280805774528

`A351766(n)-∑[n^8]`
-/

namespace A351760.P5510011280805774528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351766 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A351760.P5510011280805774528

namespace A351760

/-- `A351766(n)-∑[n^8]` -/
def P5510011280805774528.Spec : Prop :=
  ∀ n, P5510011280805774528.a n = A351760 n

end A351760

/-! ## A351760.P16983562590580364521

`∑[n^4*∑[n^4]]-A000542(n)`
-/

namespace A351760.P16983562590580364521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000542 n

end

end A351760.P16983562590580364521

namespace A351760

/-- `∑[n^4*∑[n^4]]-A000542(n)` -/
def P16983562590580364521.Spec : Prop :=
  ∀ n, P16983562590580364521.a n = A351760 n

end A351760

/-! ## A351760.P15151160061375824877

`A000538(n)²-A351766(n)`
-/

namespace A351760.P15151160061375824877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n ^ 2 - A351766 n

end

end A351760.P15151160061375824877

namespace A351760

/-- `A000538(n)²-A351766(n)` -/
def P15151160061375824877.Spec : Prop :=
  ∀ n, P15151160061375824877.a n = A351760 n

end A351760

/-! ## A351760.P8368917893610673694

`∑[A000583(n)]²-A351766(n)`
-/

namespace A351760.P8368917893610673694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A351766 n

end

end A351760.P8368917893610673694

namespace A351760

/-- `∑[A000583(n)]²-A351766(n)` -/
def P8368917893610673694.Spec : Prop :=
  ∀ n, P8368917893610673694.a n = A351760 n

end A351760

/-!
# A351761: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = n! * Sum_{j=0..n} k^(n-j) * (n-j)^j/j!.

The programs for A351761, there is no canonical definition to state claims against.
-/

/-! ## A351761.P2820528702987680752

`A089867(A396448(n))`
-/

namespace A351761.P2820528702987680752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A396448 n).toNat

end

end A351761.P2820528702987680752

/-! ## A351761.P5154267363103006845

`A246935(n)+A145395(A102480(n))`
-/

namespace A351761.P5154267363103006845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246935 n + A145395 (A102480 n).toNat

end

end A351761.P5154267363103006845

/-! ## A351761.P12111318196031737025

`A342120(n)+A145395(A102480(n))`
-/

namespace A351761.P12111318196031737025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342120 n + A145395 (A102480 n).toNat

end

end A351761.P12111318196031737025

/-! ## A351761.P5760179078688922805

`A089840(A102480(n))*A321884(n)`
-/

namespace A351761.P5760179078688922805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 (A102480 n).toNat * A321884 n

end

end A351761.P5760179078688922805

/-! ## A351761.P17208353221654550222

`A353122(A070914(n))+A349971(n+1)`
-/

namespace A351761.P17208353221654550222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353122 (A070914 n).toNat + A349971 (n + 1)

end

end A351761.P17208353221654550222

/-!
# A351762: Expansion of e.g.f. 1/(1 - 2*x*exp(x)).

The programs for A351762, there is no canonical definition to state claims against.
-/

/-! ## A351762.P7386594720866288021

`A351761(∑[n+3])`
-/

namespace A351762.P7386594720866288021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351761 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351762.P7386594720866288021

/-! ## A351762.P3805464280140782698

`record[A351761(A069981(n))]`
-/

namespace A351762.P3805464280140782698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351761 (A069981 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351762.P3805464280140782698

/-!
# A351763: Expansion of e.g.f. 1/(1 - 3*x*exp(x)).

The programs for A351763, there is no canonical definition to state claims against.
-/

/-! ## A351763.P14445660599549875848

`A351761(∑[n+4]+2)`
-/

namespace A351763.P14445660599549875848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351761 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A351763.P14445660599549875848

/-! ## A351763.P4467307050085646870

`record[A351761(abs(A046691(n)))]`
-/

namespace A351763.P4467307050085646870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351761 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A351763.P4467307050085646870

/-!
# A351765: a(n) = n! * Sum_{k=0..n} n^(n-k) * (n-k)^k/k!.

The programs for A351765, there is no canonical definition to state claims against.
-/

/-! ## A351765.P11511218317608410575

`A351761(∑[4*n])`
-/

namespace A351765.P11511218317608410575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351761 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351765.P11511218317608410575

/-!
# A351766: a(n) = Sum_{j=1..n} Sum_{i=1..j} (i*j)^4.

The programs for A351766, the canonical program `A351766.P7961265696596970189` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351766 has offset 0).

The definition of A351766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351766.P7961265696596970189

`∑[n^4*∑[n^4]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A351766

/-- `∑[n^4*∑[n^4]]` -/
def P7961265696596970189.Spec : Prop :=
  ∀ n, (P7961265696596970189.a n : ℤ) = A351766 n

theorem P7961265696596970189.correct : P7961265696596970189.Spec := by
  intro n
  simp only [A351766]

end A351766

/-! ## A351766.P2337663792060742533

`A351760(n)+∑[n^8]`
-/

namespace A351766.P2337663792060742533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351760 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A351766.P2337663792060742533

namespace A351766

/-- `A351760(n)+∑[n^8]` -/
def P2337663792060742533.Spec : Prop :=
  ∀ n, P2337663792060742533.a n = A351766 n

end A351766

/-! ## A351766.P16203986263683476057

`A000538(n)²-A351760(n)`
-/

namespace A351766.P16203986263683476057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n ^ 2 - A351760 n

end

end A351766.P16203986263683476057

namespace A351766

/-- `A000538(n)²-A351760(n)` -/
def P16203986263683476057.Spec : Prop :=
  ∀ n, P16203986263683476057.a n = A351766 n

end A351766

/-! ## A351766.P10554547754078346635

`∑[A000583(n)]²-A351760(n)`
-/

namespace A351766.P10554547754078346635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A351760 n

end

end A351766.P10554547754078346635

namespace A351766

/-- `∑[A000583(n)]²-A351760(n)` -/
def P10554547754078346635.Spec : Prop :=
  ∀ n, P10554547754078346635.a n = A351766 n

end A351766

/-! ## A351766.P11432005963646955632

`a(n-1)+A000538(n)*A000583(n)` with `a(0)=0`
-/

namespace A351766.P11432005963646955632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000538 n * A000583 n

end

end A351766.P11432005963646955632

namespace A351766

/-- `a(n-1)+A000538(n)*A000583(n)` -/
def P11432005963646955632.Spec : Prop :=
  ∀ n, P11432005963646955632.a n = A351766 n

end A351766

/-!
# A351767: Expansion of e.g.f. exp( x/(1-x)^3 ) / (1-x)^3.

The programs for A351767, there is no canonical definition to state claims against.
-/

/-! ## A351767.P13761928908180521832

`A361616(∑[n+3]+n+3)`
-/

namespace A351767.P13761928908180521832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361616 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A351767.P13761928908180521832

/-!
# A351768: a(n) = n! * Sum_{k=0..n} k^(n-k) * (n-k)^k/k!.

The programs for A351768, there is no canonical definition to state claims against.
-/

/-! ## A351768.P17904821528616077228

`A066286(xor(1, a(n-1)))` with `a(0)=1`
-/

namespace A351768.P17904821528616077228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066286 (Int.xor 1 (a (n - 1))).toNat

end

end A351768.P17904821528616077228

/-!
# A351770: a(n) = Sum_{j=1..n} Sum_{i=1..j} (i*j)^5.

The programs for A351770, the canonical program `A351770.P3077694870351182174` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351770 has offset 0).

The definition of A351770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A351770.P3077694870351182174

`∑[n^5*∑[n^5]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A351770

/-- `∑[n^5*∑[n^5]]` -/
def P3077694870351182174.Spec : Prop :=
  ∀ n, (P3077694870351182174.a n : ℤ) = A351770 n

theorem P3077694870351182174.correct : P3077694870351182174.Spec := by
  intro n
  simp only [A351770]

end A351770

/-! ## A351770.P13737390741227871798

`∑[n^5]²-A351805(n)`
-/

namespace A351770.P13737390741227871798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A351805 n

end

end A351770.P13737390741227871798

namespace A351770

/-- `∑[n^5]²-A351805(n)` -/
def P13737390741227871798.Spec : Prop :=
  ∀ n, P13737390741227871798.a n = A351770 n

theorem P13737390741227871798.correct : P13737390741227871798.Spec := by
  intro n
  simp only [A351770, Nat.add_sub_cancel, A351770.P13737390741227871798.f1, A351770.P13737390741227871798.a, A351770.P3077694870351182174.f2, A351770.P3077694870351182174.f1, A351770.P3077694870351182174.a, A351805, A351805.P5958132597516484844.f1, A351805.P5958132597516484844.f3, A351805.P5958132597516484844.f2, A351805.P5958132597516484844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A351770

/-! ## A351770.P18045209774922941699

`A351805(n)+A023002(n)`
-/

namespace A351770.P18045209774922941699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351805 n + A023002 n

end

end A351770.P18045209774922941699

namespace A351770

/-- `A351805(n)+A023002(n)` -/
def P18045209774922941699.Spec : Prop :=
  ∀ n, P18045209774922941699.a n = A351770 n

end A351770

/-! ## A351770.P11648869460159053720

`A351805(n)+∑[A008454(n)]`
-/

namespace A351770.P11648869460159053720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351805 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A351770.P11648869460159053720

namespace A351770

/-- `A351805(n)+∑[A008454(n)]` -/
def P11648869460159053720.Spec : Prop :=
  ∀ n, P11648869460159053720.a n = A351770 n

end A351770

/-! ## A351770.P2490832020816618930

`abs(A000539(n)²-A351805(n))`
-/

namespace A351770.P2490832020816618930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000539 n ^ 2 - A351805 n|

end

end A351770.P2490832020816618930

namespace A351770

/-- `abs(A000539(n)²-A351805(n))` -/
def P2490832020816618930.Spec : Prop :=
  ∀ n, P2490832020816618930.a n = A351770 n

end A351770

/-!
# A351772: G.f. A(x) = Sum_{n>=0} x^n*F(x)^n/(1 - x*F(x)^(n+4)), where F(x) is the g.f. of A350117.

The programs for A351772, there is no canonical definition to state claims against.
-/

/-! ## A351772.P15006197652562628849

`A279967(((n+1)²/∏{p}[n+1, #]+1)^n)`
-/

namespace A351772.P15006197652562628849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279967 (SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) + 1) ^ n)).toNat

end

end A351772.P15006197652562628849

/-!
# A351773: a(n) = Sum_{d|n} Sum_{p|n, p prime} p^d.

The programs for A351773, there is no canonical definition to state claims against.
-/

/-! ## A351773.P14580177691201762662

`A353977((n+1)^(n+1))`
-/

namespace A351773.P14580177691201762662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353977 ((n + 1) ^ (n + 1))

end

end A351773.P14580177691201762662

/-!
# A351774: a(n) = Sum_{d|n} Sum_{p|n, p prime} d^p.

The programs for A351774, there is no canonical definition to state claims against.
-/

/-! ## A351774.P13335708548976612226

`∑{d}[∑{p}[n+1, lcm(#, ((n+1)/#)²)], A093845(#)]`
-/

namespace A351774.P13335708548976612226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Int.lcm (p : ℤ) (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (p : ℚ)) ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A093845 d

end

end A351774.P13335708548976612226

/-!
# A351776: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = n! * Sum_{j=0..n} (-k)^(n-j) * (n-j)^j/j!.

The programs for A351776, there is no canonical definition to state claims against.
-/

/-! ## A351776.P5886616220365613068

`A055642(A316622(n))*A292861(n)`
-/

namespace A351776.P5886616220365613068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A316622 n).toNat * A292861 n

end

end A351776.P5886616220365613068

/-! ## A351776.P5385961598318432489

`A292861(n)*A335434(A102480(n))`
-/

namespace A351776.P5385961598318432489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292861 n * A335434 (A102480 n).toNat

end

end A351776.P5385961598318432489

/-! ## A351776.P7019890785999422617

`A051903(A052216(n+1))*A292861(n)`
-/

namespace A351776.P7019890785999422617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A052216 (n + 1)).toNat * A292861 n

end

end A351776.P7019890785999422617

/-! ## A351776.P16111607463364065372

`A055642(A321716(n))*A292861(n)`
-/

namespace A351776.P16111607463364065372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A321716 n).toNat * A292861 n

end

end A351776.P16111607463364065372

/-! ## A351776.P14673432380165578218

`A131258(A096901(n+1))*A292861(n)`
-/

namespace A351776.P14673432380165578218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131258 (A096901 (n + 1)).toNat * A292861 n

end

end A351776.P14673432380165578218

/-!
# A351777: Expansion of e.g.f. 1/(1 + 2*x*exp(x)).

The programs for A351777, there is no canonical definition to state claims against.
-/

/-! ## A351777.P11532565757619267299

`A351776(∑[n+3])`
-/

namespace A351777.P11532565757619267299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351776 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351777.P11532565757619267299

/-!
# A351778: Expansion of e.g.f. 1/(1 + 3*x*exp(x)).

The programs for A351778, there is no canonical definition to state claims against.
-/

/-! ## A351778.P12758806981886552705

`A351776(∑[n+4]+2)`
-/

namespace A351778.P12758806981886552705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351776 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A351778.P12758806981886552705

/-!
# A351779: a(n) = n! * Sum_{k=0..n} (-n)^(n-k) * (n-k)^k/k!.

The programs for A351779, there is no canonical definition to state claims against.
-/

/-! ## A351779.P3299614018480140601

`A351776(∑[4*n])`
-/

namespace A351779.P3299614018480140601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351776 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351779.P3299614018480140601

/-! ## A351779.P13207290102698191479

`A057427(3*(n+1))*A351776(A046092(n))`
-/

namespace A351779.P13207290102698191479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * (n + 1)) * A351776 (A046092 n).toNat

end

end A351779.P13207290102698191479

/-!
# A351780: a(n) = n! * Sum_{k=0..n} (-k)^(n-k) * (n-k)^k/k!.

The programs for A351780, there is no canonical definition to state claims against.
-/

/-! ## A351780.P8559534244478361371

`A291944(2^n)-2^n`
-/

namespace A351780.P8559534244478361371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291944 (2 ^ n) - (2 ^ n : ℤ)

end

end A351780.P8559534244478361371

/-!
# A351781: a(n) = (n-1)^n*(n-1)!^n.

The programs for A351781, the canonical program `A351781.P7678071495414917247` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351781 has offset 1).

The definition of A351781 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^(n+1)*n!^(n+1)` (program `A351781.P7678071495414917247`, by `A351781.P7678071495414917247.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A351781.P7678071495414917247

`n^(n+1)*n!^(n+1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A351781

/-- `n^(n+1)*n!^(n+1)` -/
def P7678071495414917247.Spec : Prop :=
  ∀ n, (P7678071495414917247.a n : ℤ) = A351781 (n + 1)

theorem P7678071495414917247.correct : P7678071495414917247.Spec := by
  intro n
  simp only [A351781, Nat.add_sub_cancel]

end A351781

/-! ## A351781.P13213942224831459084

`Δ[n!]^(n+1)`
-/

namespace A351781.P13213942224831459084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ (n + 1)

end

end A351781.P13213942224831459084

namespace A351781

/-- `Δ[n!]^(n+1)` -/
def P13213942224831459084.Spec : Prop :=
  ∀ n, P13213942224831459084.a n = A351781 (n + 1)

theorem P13213942224831459084.correct : P13213942224831459084.Spec := by
  intro n
  simp only [A351781, Nat.add_sub_cancel, A351781.P13213942224831459084.f1, A351781.P13213942224831459084.a, A351781.P7678071495414917247.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A351781

/-! ## A351781.P3469833942923971330

`(n*n!)^(n+1)`
-/

namespace A351781.P3469833942923971330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * Nat.factorial n) ^ (n + 1)

end

end A351781.P3469833942923971330

namespace A351781

/-- `(n*n!)^(n+1)` -/
def P3469833942923971330.Spec : Prop :=
  ∀ n, (P3469833942923971330.a n : ℤ) = A351781 (n + 1)

theorem P3469833942923971330.correct : P3469833942923971330.Spec := by
  intro n
  simp only [A351781, Nat.add_sub_cancel, A351781.P3469833942923971330.a, A351781.P7678071495414917247.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A351781

/-! ## A351781.P8966694876515346944

`Δ[n!]^n*Δ[n!]`
-/

namespace A351781.P8966694876515346944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ n * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A351781.P8966694876515346944

namespace A351781

/-- `Δ[n!]^n*Δ[n!]` -/
def P8966694876515346944.Spec : Prop :=
  ∀ n, P8966694876515346944.a n = A351781 (n + 1)

theorem P8966694876515346944.correct : P8966694876515346944.Spec := by
  intro n
  simp only [A351781, Nat.add_sub_cancel, A351781.P8966694876515346944.f1, A351781.P8966694876515346944.f2, A351781.P8966694876515346944.a, A351781.P7678071495414917247.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A351781

/-! ## A351781.P6908477656679073848

`A001563(n)^(n+1)`
-/

namespace A351781.P6908477656679073848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n ^ (n + 1)

end

end A351781.P6908477656679073848

namespace A351781

/-- `A001563(n)^(n+1)` -/
def P6908477656679073848.Spec : Prop :=
  ∀ n, P6908477656679073848.a n = A351781 (n + 1)

theorem P6908477656679073848.correct : P6908477656679073848.Spec := by
  intro n
  simp only [A351781, Nat.add_sub_cancel, A351781.P6908477656679073848.a, A351781.P7678071495414917247.a, A001563, A001563.P7265670906522758193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A351781

/-!
# A351782: a(n) = n-2 if n is a multiple of 4, a(n) = n-1 otherwise.

The programs for A351782, the canonical program `A351782.P3781955377035776016` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A351782 has offset 1).

The definition of A351782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A351782.P3781955377035776016

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=4`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A351782

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P3781955377035776016.Spec : Prop :=
  ∀ n, P3781955377035776016.a n = A351782 (n + 1)

theorem P3781955377035776016.correct : P3781955377035776016.Spec := by
  intro n
  simp only [A351782, Nat.add_sub_cancel]

end A351782

/-! ## A351782.P12599569669932768058

`n-A121262(n+1)`
-/

namespace A351782.P12599569669932768058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A121262 (n + 1)

end

end A351782.P12599569669932768058

namespace A351782

/-- `n-A121262(n+1)` -/
def P12599569669932768058.Spec : Prop :=
  ∀ n, P12599569669932768058.a n = A351782 (n + 1)

end A351782

/-! ## A351782.P12591284811252807110

`n-char[or(3, n)]`
-/

namespace A351782.P12591284811252807110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A351782.P12591284811252807110

namespace A351782

/-- `n-char[or(3, n)]` -/
def P12591284811252807110.Spec : Prop :=
  ∀ n, P12591284811252807110.a n = A351782 (n + 1)

end A351782

/-! ## A351782.P7789042965707653771

`xor(n, char[or(3, n)])`
-/

namespace A351782.P7789042965707653771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (if ∃ j, f1 j = n then 1 else 0)

end

end A351782.P7789042965707653771

namespace A351782

/-- `xor(n, char[or(3, n)])` -/
def P7789042965707653771.Spec : Prop :=
  ∀ n, (P7789042965707653771.a n : ℤ) = A351782 (n + 1)

end A351782

/-! ## A351782.P15525673518449089142

`and(n, or(∑[n], -2))`
-/

namespace A351782.P15525673518449089142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-2))

end

end A351782.P15525673518449089142

namespace A351782

/-- `and(n, or(∑[n], -2))` -/
def P15525673518449089142.Spec : Prop :=
  ∀ n, P15525673518449089142.a n = A351782 (n + 1)

end A351782

/-! ## A351782.P7873757416204501472

`n-C(n, 3)%2`
-/

namespace A351782.P7873757416204501472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.choose n 3 % 2 : ℕ) : ℤ)

end

end A351782.P7873757416204501472

namespace A351782

/-- `n-C(n, 3)%2` -/
def P7873757416204501472.Spec : Prop :=
  ∀ n, P7873757416204501472.a n = A351782 (n + 1)

end A351782

/-! ## A351782.P17555961951502682957

`n-and(1, C(n, 3))`
-/

namespace A351782.P17555961951502682957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 1 (Nat.choose n 3) : ℤ)

end

end A351782.P17555961951502682957

namespace A351782

/-- `n-and(1, C(n, 3))` -/
def P17555961951502682957.Spec : Prop :=
  ∀ n, P17555961951502682957.a n = A351782 (n + 1)

end A351782

/-! ## A351782.P2494409627540813950

`xor(n, C(n%4, 3))`
-/

namespace A351782.P2494409627540813950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.choose (n % 4) 3)

end

end A351782.P2494409627540813950

namespace A351782

/-- `xor(n, C(n%4, 3))` -/
def P2494409627540813950.Spec : Prop :=
  ∀ n, (P2494409627540813950.a n : ℤ) = A351782 (n + 1)

end A351782

/-! ## A351782.P17502294933501195478

`xor(n, and(1, C(n, 3)))`
-/

namespace A351782.P17502294933501195478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.land 1 (Nat.choose n 3))

end

end A351782.P17502294933501195478

namespace A351782

/-- `xor(n, and(1, C(n, 3)))` -/
def P17502294933501195478.Spec : Prop :=
  ∀ n, (P17502294933501195478.a n : ℤ) = A351782 (n + 1)

end A351782

/-! ## A351782.P8292444163419715969

`n-C(n, or(3, n))`
-/

namespace A351782.P8292444163419715969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose n (Nat.lor 3 n) : ℤ)

end

end A351782.P8292444163419715969

namespace A351782

/-- `n-C(n, or(3, n))` -/
def P8292444163419715969.Spec : Prop :=
  ∀ n, P8292444163419715969.a n = A351782 (n + 1)

end A351782

/-! ## A351782.P5485891423350951452

`and(n, -and(2, n)!)`
-/

namespace A351782.P5485891423350951452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(Nat.factorial (Nat.land 2 n) : ℤ))

end

end A351782.P5485891423350951452

namespace A351782

/-- `and(n, -and(2, n)!)` -/
def P5485891423350951452.Spec : Prop :=
  ∀ n, P5485891423350951452.a n = A351782 (n + 1)

end A351782

/-! ## A351782.P2307632258535754700

`n-Δ[floor(n/4)]`
-/

namespace A351782.P2307632258535754700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A351782.P2307632258535754700

namespace A351782

/-- `n-Δ[floor(n/4)]` -/
def P2307632258535754700.Spec : Prop :=
  ∀ n, P2307632258535754700.a n = A351782 (n + 1)

end A351782

/-! ## A351782.P1366999789899306459

`ceil(n-and(3, n)/3)`
-/

namespace A351782.P1366999789899306459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) - (Nat.land 3 n : ℚ) / 3⌉

end

end A351782.P1366999789899306459

namespace A351782

/-- `ceil(n-and(3, n)/3)` -/
def P1366999789899306459.Spec : Prop :=
  ∀ n, P1366999789899306459.a n = A351782 (n + 1)

end A351782

/-! ## A351782.P18080760658927537303

`round(n-and(3, n)/4)`
-/

namespace A351782.P18080760658927537303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) - (Nat.land 3 n : ℚ) / 4)

end

end A351782.P18080760658927537303

namespace A351782

/-- `round(n-and(3, n)/4)` -/
def P18080760658927537303.Spec : Prop :=
  ∀ n, P18080760658927537303.a n = A351782 (n + 1)

end A351782

/-! ## A351782.P5829694102868559854

`and(n, and(2, n)!-4)`
-/

namespace A351782.P5829694102868559854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((Nat.factorial (Nat.land 2 n) : ℤ) - 4)

end

end A351782.P5829694102868559854

namespace A351782

/-- `and(n, and(2, n)!-4)` -/
def P5829694102868559854.Spec : Prop :=
  ∀ n, P5829694102868559854.a n = A351782 (n + 1)

end A351782

/-! ## A351782.P1062275961359678001

`and(n, ∑[n]%2-2)`
-/

namespace A351782.P1062275961359678001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ) - 2)

end

end A351782.P1062275961359678001

namespace A351782

/-- `and(n, ∑[n]%2-2)` -/
def P1062275961359678001.Spec : Prop :=
  ∀ n, P1062275961359678001.a n = A351782 (n + 1)

end A351782

/-! ## A351782.P6240841719865979498

`and(n, and(1, ∑[n])-2)`
-/

namespace A351782.P6240841719865979498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 2)

end

end A351782.P6240841719865979498

namespace A351782

/-- `and(n, and(1, ∑[n])-2)` -/
def P6240841719865979498.Spec : Prop :=
  ∀ n, P6240841719865979498.a n = A351782 (n + 1)

end A351782

/-! ## A351782.P2607614610801754389

`ceil(n-n/or(3, n))`
-/

namespace A351782.P2607614610801754389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) - (n : ℚ) / (Nat.lor 3 n : ℚ)⌉

end

end A351782.P2607614610801754389

namespace A351782

/-- `ceil(n-n/or(3, n))` -/
def P2607614610801754389.Spec : Prop :=
  ∀ n, P2607614610801754389.a n = A351782 (n + 1)

end A351782

/-! ## A351782.P151129878816913793

`ceil(n-acot((n+1)%4))`
-/

namespace A351782.P151129878816913793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) - SequenceMachineLib.acot (((n + 1) % 4 : ℕ) : ℝ)⌉

end

end A351782.P151129878816913793

namespace A351782

/-- `ceil(n-acot((n+1)%4))` -/
def P151129878816913793.Spec : Prop :=
  ∀ n, P151129878816913793.a n = A351782 (n + 1)

end A351782

/-! ## A351782.P13694365529807493560

`and(n, a(n-2)-n)` with `a(0)=0, a(1)=1`
-/

namespace A351782.P13694365529807493560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.land (n : ℤ) (a (n - 2) - (n : ℤ))

end

end A351782.P13694365529807493560

namespace A351782

/-- `and(n, a(n-2)-n)` -/
def P13694365529807493560.Spec : Prop :=
  ∀ n, P13694365529807493560.a n = A351782 (n + 1)

end A351782

/-!
# A351783: Number of grains of sand required to be added to one cell at the origin in an initially empty and infinite 3D cubic grid for the 3D sandpile model such that the distance from the origin of the furthest nonempty cell along the axes is n.

The programs for A351783, there is no canonical definition to state claims against.
-/

/-! ## A351783.P4868460581782409474

`3*n*A269396(floor(18^(n/3)))`
-/

namespace A351783.P4868460581782409474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) * A269396 ⌊(18 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋.toNat

end

end A351783.P4868460581782409474

/-!
# A351784: Number of cells containing one or more grains of sand after n grains of sand are added to one cell in an initially empty and infinite 3D cubic grid for the 3D sandpile model.

The programs for A351784, there is no canonical definition to state claims against.
-/

/-! ## A351784.P213282672959419420

`A349991(4*A349991(n))`
-/

namespace A351784.P213282672959419420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349991 (4 * A349991 n).toNat

end

end A351784.P213282672959419420

/-!
# A351785: Symmetric array T(n, k), n, k >= 0, read by antidiagonals; for any m >= 0 with binary expansion Sum_{i >= 0} b_i*2^i, let d(m) = Sum_{i >= 0} b_i * 2^A130472(i); let t be the inverse of d; T(n, k) = t(d(n) + d(k)).

The programs for A351785, there is no canonical definition to state claims against.
-/

/-! ## A351785.P3959182816621631011

`A054240(n)%A062567(A347288(n))`
-/

namespace A351785.P3959182816621631011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054240 n) (A062567 (A347288 n).toNat)

end

end A351785.P3959182816621631011

/-! ## A351785.P7468275180386394573

`gcd(A054240(n), A056594(A157156(n)))`
-/

namespace A351785.P7468275180386394573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054240 n) (A056594 (A157156 n).toNat)

end

end A351785.P7468275180386394573

/-! ## A351785.P18025316443872203816

`A053829(A054240(n))%∑[A000112(n)]`
-/

namespace A351785.P18025316443872203816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053829 (A054240 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A351785.P18025316443872203816

/-!
# A351786: Symmetric array T(n, k), n, k >= 0, read by antidiagonals; for any m >= 0 with binary expansion Sum_{i >= 0} b_i*2^i, let d(m) = Sum_{i >= 0} b_i * 2^A130472(i); let t be the inverse of d; T(n, k) = t(d(n) * d(k)).

The programs for A351786, there is no canonical definition to state claims against.
-/

/-! ## A351786.P1148378954611466356

`A029835(A176791(n))`
-/

namespace A351786.P1148378954611466356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029835 (A176791 n).toNat

end

end A351786.P1148378954611466356

/-! ## A351786.P1152144900799791620

`A319572(A168619(n))`
-/

namespace A351786.P1152144900799791620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319572 (A168619 n).toNat

end

end A351786.P1152144900799791620

/-! ## A351786.P18197823050433074816

`A341935(A370049(n))`
-/

namespace A351786.P18197823050433074816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341935 (A370049 n).toNat

end

end A351786.P18197823050433074816

/-! ## A351786.P14472312523338571544

`A000523(2^A329331(n))`
-/

namespace A351786.P14472312523338571544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A329331 n : ℤ))).toNat

end

end A351786.P14472312523338571544

/-! ## A351786.P4817107512423262082

`A007814(2^A329331(n))`
-/

namespace A351786.P4817107512423262082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A329331 n : ℤ))).toNat

end

end A351786.P4817107512423262082

/-!
# A351787: a(1) = 1; a(n+1) = a(n) + Sum_{d|n} a(n/d) * a(d).

The programs for A351787, there is no canonical definition to state claims against.
-/

/-! ## A351787.P11780817273037737656

`ceil(cosh(sin(n)))*A351797(n+1)`
-/

namespace A351787.P11780817273037737656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A351797 (n + 1)

end

end A351787.P11780817273037737656

/-! ## A351787.P17931413660267311543

`A036453(n+1)*A351797(n+1)`
-/

namespace A351787.P17931413660267311543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A351797 (n + 1)

end

end A351787.P17931413660267311543

/-! ## A351787.P14508475975039643190

`A001227(A000040(n+1))*A351797(n+1)`
-/

namespace A351787.P14508475975039643190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A000040 (n + 1)).toNat * A351797 (n + 1)

end

end A351787.P14508475975039643190

/-! ## A351787.P1816901977245284245

`A117277(A000040(2*(n+1)))*A351797(n+1)`
-/

namespace A351787.P1816901977245284245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117277 (A000040 (2 * (n + 1))).toNat * A351797 (n + 1)

end

end A351787.P1816901977245284245

/-! ## A351787.P630725084741277181

`A000122(n²)*A351797(n+1)`
-/

namespace A351787.P630725084741277181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A351797 (n + 1)

end

end A351787.P630725084741277181

/-!
# A351791: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = n! * Sum_{j=0..n} (-k * (n-j))^j/j!.

The programs for A351791, there is no canonical definition to state claims against.
-/

/-! ## A351791.P9639211424052511478

`A384216(n)+A000122(A173876(n+1))`
-/

namespace A351791.P9639211424052511478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384216 n + A000122 (A173876 (n + 1)).toNat

end

end A351791.P9639211424052511478

/-! ## A351791.P11561281744534962541

`A384216(n)+A121373(A319613(n+1))`
-/

namespace A351791.P11561281744534962541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384216 n + A121373 (A319613 (n + 1)).toNat

end

end A351791.P11561281744534962541

/-! ## A351791.P17612330845272955927

`A384216(n)+A349136(A109379(n+1))`
-/

namespace A351791.P17612330845272955927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384216 n + A349136 (A109379 (n + 1)).toNat

end

end A351791.P17612330845272955927

/-! ## A351791.P16986467506896958087

`A001221(A067756(n+1))*A384216(n)`
-/

namespace A351791.P16986467506896958087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A067756 (n + 1)).toNat * A384216 n

end

end A351791.P16986467506896958087

/-! ## A351791.P3743899539808044436

`A384216(n)+A000007(A000292(2*(n+2)))`
-/

namespace A351791.P3743899539808044436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384216 n + A000007 (A000292 (2 * (n + 2))).toNat

end

end A351791.P3743899539808044436

/-!
# A351792: Expansion of e.g.f. 1/(1 - x*exp(-3*x)).

The programs for A351792, there is no canonical definition to state claims against.
-/

/-! ## A351792.P6926600189773593973

`A351791(∑[n+4]+2)`
-/

namespace A351792.P6926600189773593973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351791 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A351792.P6926600189773593973

/-!
# A351793: Expansion of e.g.f. 1/(1 - x*exp(-4*x)).

The programs for A351793, there is no canonical definition to state claims against.
-/

/-! ## A351793.P16433933345823049991

`A351791(∑[n+5]+5)`
-/

namespace A351793.P16433933345823049991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351791 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A351793.P16433933345823049991

/-!
# A351795: a(n) = n! * Sum_{k=0..n} (k * (n-k))^k/k!.

The programs for A351795, there is no canonical definition to state claims against.
-/

/-! ## A351795.P15798761684577014166

`∑{d}[n!, A244360(#)]`
-/

namespace A351795.P15798761684577014166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A244360 d

end

end A351795.P15798761684577014166

/-!
# A351797: a(1) = 1; a(n+1) = -a(n) + 2 * Sum_{d|n} a(n/d) * a(d).

The programs for A351797, there is no canonical definition to state claims against.
-/

/-! ## A351797.P6163663711195886445

`ceil(A351787(n+1)/2)`
-/

namespace A351797.P6163663711195886445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A351787 (n + 1) : ℚ) / 2⌉

end

end A351797.P6163663711195886445

/-! ## A351797.P14174646336324290879

`A351787(n+1)/A036453(n+1)`
-/

namespace A351797.P14174646336324290879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351787 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A351797.P14174646336324290879

/-! ## A351797.P12734659043760073382

`A351787(n+1)/(A057427(n)+1)`
-/

namespace A351797.P12734659043760073382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351787 (n + 1) : ℚ) / (A057427 n + 1 : ℚ)

end

end A351797.P12734659043760073382

/-! ## A351797.P15755779217776597365

`A351787(n+1)/A280560(2*n)`
-/

namespace A351797.P15755779217776597365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351787 (n + 1) : ℚ) / (A280560 (2 * n) : ℚ)

end

end A351797.P15755779217776597365

/-! ## A351797.P5143154015033554889

`A351787(n+1)/A001227(A000040(n+1))`
-/

namespace A351797.P5143154015033554889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351787 (n + 1) : ℚ) / (A001227 (A000040 (n + 1)).toNat : ℚ)

end

end A351797.P5143154015033554889

/-!
# A351798: a(0) = 1; a(n) = (1/2) * Sum_{k=0..n-1} (k+1) * (k+2) * a(k) * a(n-k-1).

The programs for A351798, there is no canonical definition to state claims against.
-/

/-! ## A351798.P9884683204286622164

`A005046(n)-A117173(A001472(n))`
-/

namespace A351798.P9884683204286622164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005046 n - A117173 (A001472 n).toNat

end

end A351798.P9884683204286622164

