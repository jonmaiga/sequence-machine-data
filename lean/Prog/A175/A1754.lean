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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
# A175404: Numbers k with property that k + Fibonacci(k) is prime.

The programs for A175404, there is no canonical definition to state claims against.
-/

/-! ## A175404.P18172301277122108928

`A193592(A116827(n+1))+n`
-/

namespace A175404.P18172301277122108928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A116827 (n + 1)).toNat + (n : ℤ)

end

end A175404.P18172301277122108928

/-! ## A175404.P8002118183178856473

`A046157(A046089(n+1))+A046097(n+1)`
-/

namespace A175404.P8002118183178856473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046157 (A046089 (n + 1)).toNat + A046097 (n + 1)

end

end A175404.P8002118183178856473

/-! ## A175404.P13384132632029823473

`eq[A124755(n+2)+1, A334299(A121048(n+1))]`
-/

namespace A175404.P13384132632029823473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124755 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334299 (A121048 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175404.P13384132632029823473

/-!
# A175405: Numbers m such that the resulting number h after iterations of {((((D_1^D_2)^D_3)^D_4)^...)^D_k, where D_k is the k-th digit D of the number r and k is the digit number of the number r in the decimal expansion of r (A055642)} needed to reach a one-digit number starting at r = n is equal to 1 (h = 1).

The programs for A175405, there is no canonical definition to state claims against.
-/

/-! ## A175405.P12601818114356071211

`eq[1, A175398(n)]`
-/

namespace A175405.P12601818114356071211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175398 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175405.P12601818114356071211

/-! ## A175405.P14447330329743071925

`eq[1, A175400(n)]`
-/

namespace A175405.P14447330329743071925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175405.P14447330329743071925

/-! ## A175405.P1920239028080860373

`lt[A175398(n+1), 2]+1`
-/

namespace A175405.P1920239028080860373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175398 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A175405.P1920239028080860373

/-! ## A175405.P16847056203065613767

`lt[A175400(n+1), 2]+1`
-/

namespace A175405.P16847056203065613767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175400 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A175405.P16847056203065613767

/-! ## A175405.P12318687209164387347

`record[(n+2)/A175400(n+2)]`
-/

namespace A175405.P12318687209164387347
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A175400 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175405.P12318687209164387347

/-!
# A175406: The greatest integer k such that (1+1/n)^k <= 2.

The programs for A175406, the canonical program `A175406.P17367285734640983161` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175406 has offset 1).

The definition of A175406 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175406.P17367285734640983161

`floor(log(2)/log(1+1/(n+1)))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175406

/-- `floor(log(2)/log(1+1/(n+1)))` -/
def P17367285734640983161.Spec : Prop :=
  ∀ n, P17367285734640983161.a n = A175406 (n + 1)

theorem P17367285734640983161.correct : P17367285734640983161.Spec := by
  intro n
  simp only [A175406, Nat.add_sub_cancel]

end A175406

/-! ## A175406.P13634321576044745979

`round(log(A057744(n+1)))`
-/

namespace A175406.P13634321576044745979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A057744 (n + 1) : ℝ))

end

end A175406.P13634321576044745979

namespace A175406

/-- `round(log(A057744(n+1)))` -/
def P13634321576044745979.Spec : Prop :=
  ∀ n, P13634321576044745979.a n = A175406 (n + 1)

end A175406

/-! ## A175406.P5137154371620101287

`round(log(A294627(n+2)))`
-/

namespace A175406.P5137154371620101287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A294627 (n + 2) : ℝ))

end

end A175406.P5137154371620101287

namespace A175406

/-- `round(log(A294627(n+2)))` -/
def P5137154371620101287.Spec : Prop :=
  ∀ n, P5137154371620101287.a n = A175406 (n + 1)

end A175406

/-! ## A175406.P12682413935550743825

`round(log(A397213(n+2)))`
-/

namespace A175406.P12682413935550743825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A397213 (n + 2) : ℝ))

end

end A175406.P12682413935550743825

namespace A175406

/-- `round(log(A397213(n+2)))` -/
def P12682413935550743825.Spec : Prop :=
  ∀ n, P12682413935550743825.a n = A175406 (n + 1)

end A175406

/-! ## A175406.P15369432690874663138

`∑[char[round(log2(sinh(n+1)))]]`
-/

namespace A175406.P15369432690874663138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Real.sinh (n + 1 : ℝ)))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175406.P15369432690874663138

namespace A175406

/-- `∑[char[round(log2(sinh(n+1)))]]` -/
def P15369432690874663138.Spec : Prop :=
  ∀ n, (P15369432690874663138.a n : ℤ) = A175406 (n + 1)

end A175406

/-! ## A175406.P15901241652316341739

`ceil(log2(A229946(n)+A000032(n)))`
-/

namespace A175406.P15901241652316341739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A229946 n + A000032 n : ℝ)⌉

end

end A175406.P15901241652316341739

namespace A175406

/-- `ceil(log2(A229946(n)+A000032(n)))` -/
def P15901241652316341739.Spec : Prop :=
  ∀ n, P15901241652316341739.a n = A175406 (n + 1)

end A175406

/-! ## A175406.P6127998501691055466

`A028310(A094500(n+1)-1)`
-/

namespace A175406.P6127998501691055466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A094500 (n + 1) - 1).toNat

end

end A175406.P6127998501691055466

namespace A175406

/-- `A028310(A094500(n+1)-1)` -/
def P6127998501691055466.Spec : Prop :=
  ∀ n, P6127998501691055466.a n = A175406 (n + 1)

end A175406

/-! ## A175406.P7891779035685162428

`A094500(n+1)+A057428(n)`
-/

namespace A175406.P7891779035685162428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094500 (n + 1) + A057428 n

end

end A175406.P7891779035685162428

namespace A175406

/-- `A094500(n+1)+A057428(n)` -/
def P7891779035685162428.Spec : Prop :=
  ∀ n, P7891779035685162428.a n = A175406 (n + 1)

end A175406

/-! ## A175406.P4870246352562041896

`A094500(n+1)-A057427(n)`
-/

namespace A175406.P4870246352562041896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094500 (n + 1) - A057427 n

end

end A175406.P4870246352562041896

namespace A175406

/-- `A094500(n+1)-A057427(n)` -/
def P4870246352562041896.Spec : Prop :=
  ∀ n, P4870246352562041896.a n = A175406 (n + 1)

end A175406

/-! ## A175406.P9303068749856641894

`A094500(n+1)-A178334(n)`
-/

namespace A175406.P9303068749856641894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094500 (n + 1) - A178334 n

end

end A175406.P9303068749856641894

namespace A175406

/-- `A094500(n+1)-A178334(n)` -/
def P9303068749856641894.Spec : Prop :=
  ∀ n, P9303068749856641894.a n = A175406 (n + 1)

end A175406

/-!
# A175407: a(n) = the least integer k such that (1+1/n)^k >= 3.

The programs for A175407, the canonical program `A175407.P3933980106413333913` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175407 has offset 1).

The definition of A175407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175407.P3933980106413333913

`ceil(log(3)/Δ[log(n+1)])`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175407

/-- `ceil(log(3)/Δ[log(n+1)])` -/
def P3933980106413333913.Spec : Prop :=
  ∀ n, P3933980106413333913.a n = A175407 (n + 1)

theorem P3933980106413333913.correct : P3933980106413333913.Spec := by
  intro n
  simp only [A175407, Nat.add_sub_cancel]

end A175407

/-! ## A175407.P10439560166788070835

`A003059(A080754(∑[n+1]))`
-/

namespace A175407.P10439560166788070835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A080754 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A175407.P10439560166788070835

namespace A175407

/-- `A003059(A080754(∑[n+1]))` -/
def P10439560166788070835.Spec : Prop :=
  ∀ n, P10439560166788070835.a n = A175407 (n + 1)

end A175407

/-! ## A175407.P6266132926383812834

`A000196(A003151(∑[n+1]))+1`
-/

namespace A175407.P6266132926383812834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A003151 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 1

end

end A175407.P6266132926383812834

namespace A175407

/-- `A000196(A003151(∑[n+1]))+1` -/
def P6266132926383812834.Spec : Prop :=
  ∀ n, P6266132926383812834.a n = A175407 (n + 1)

end A175407

/-! ## A175407.P4968255725579903502

`A000196(∑[A003153(n+1)])+1`
-/

namespace A175407.P4968255725579903502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A175407.P4968255725579903502

namespace A175407

/-- `A000196(∑[A003153(n+1)])+1` -/
def P4968255725579903502.Spec : Prop :=
  ∀ n, P4968255725579903502.a n = A175407 (n + 1)

end A175407

/-! ## A175407.P12493702262511182278

`A003059(A003151(∑[n+1])+1)`
-/

namespace A175407.P12493702262511182278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A003151 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A175407.P12493702262511182278

namespace A175407

/-- `A003059(A003151(∑[n+1])+1)` -/
def P12493702262511182278.Spec : Prop :=
  ∀ n, P12493702262511182278.a n = A175407 (n + 1)

end A175407

/-!
# A175408: a(n) + a(n - 1) is alternatively a cube or a square.

The programs for A175408, there is no canonical definition to state claims against.
-/

/-! ## A175408.P13426801612588329400

`A130532(n+8)`
-/

namespace A175408.P13426801612588329400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130532 (n + 8)

end

end A175408.P13426801612588329400

/-!
# A175409: Successive numbers of consecutive positive terms to add when rearranging the alternating harmonic series to sum to log[7/3].

The programs for A175409, there is no canonical definition to state claims against.
-/

/-! ## A175409.P4133483823280038087

`Δ[ceil((49*n+12)/36)]`
-/

namespace A175409.P4133483823280038087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(49 * n + 12 : ℚ) / 36⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175409.P4133483823280038087

/-! ## A175409.P7408740877093058142

`Δ[floor(e*(n+1)/2)]%A309033(n+1)`
-/

namespace A175409.P7408740877093058142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * ((n + 1 : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A309033 (n + 1))

end

end A175409.P7408740877093058142

/-! ## A175409.P6825168272263427345

`gcd(Δ[A279607(n+1)], A354905(n))`
-/

namespace A175409.P6825168272263427345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279607 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A354905 n)

end

end A175409.P6825168272263427345

/-!
# A175410: a(n) = (b(m)-1)*b(m) = Sum_{n=b(m)+1,...,c(m)}n, b=A046174, c=A046175, m=n+1.

The programs for A175410, there is no canonical definition to state claims against.
-/

/-! ## A175410.P9226394890077006200

`A011916(n+1)*A011916(n+2)`
-/

namespace A175410.P9226394890077006200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011916 (n + 1) * A011916 (n + 2)

end

end A175410.P9226394890077006200

/-! ## A175410.P3041855776042894234

`A011922(n+2)*A123480(n+1)`
-/

namespace A175410.P3041855776042894234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011922 (n + 2) * A123480 (n + 1)

end

end A175410.P3041855776042894234

/-! ## A175410.P2229215596914878824

`A046174(n+2)²-A046174(n+2)`
-/

namespace A175410.P2229215596914878824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046174 (n + 2) ^ 2 - A046174 (n + 2)

end

end A175410.P2229215596914878824

/-! ## A175410.P9348007239894382474

`∑[A104008(n+1)+A102341(2*n+1)]`
-/

namespace A175410.P9348007239894382474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104008 (n + 1) + A102341 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175410.P9348007239894382474

/-! ## A175410.P9213617424202012993

`∑[A102341(2*n+1)+A102341(2*(n+1))]`
-/

namespace A175410.P9213617424202012993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102341 (2 * n + 1) + A102341 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175410.P9213617424202012993

/-!
# A175411: a(n) = Sum_{i=(n*n-n+2)/2..(n*n+n)/2} i!.

The programs for A175411, there is no canonical definition to state claims against.
-/

/-! ## A175411.P7155103460561109996

`Δ[A007489(∑[n])]`
-/

namespace A175411.P7155103460561109996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175411.P7155103460561109996

/-! ## A175411.P11549179985429321503

`Δ[A003422(∑[n]+1)]`
-/

namespace A175411.P11549179985429321503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175411.P11549179985429321503

/-! ## A175411.P11617583636652859708

`A211370(A176145(n+4))`
-/

namespace A175411.P11617583636652859708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211370 (A176145 (n + 4)).toNat

end

end A175411.P11617583636652859708

/-! ## A175411.P5585593852366952712

`abs(Δ[A003422(A000124(n))])`
-/

namespace A175411.P5585593852366952712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A175411.P5585593852366952712

/-! ## A175411.P17615062534470545549

`abs(Δ[A007489(A000217(n))])`
-/

namespace A175411.P17615062534470545549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A175411.P17615062534470545549

/-!
# A175412: Those primes p where p+{the number of divisors of (p+1)} is prime.

The programs for A175412, the canonical program `A175412.P16355508386573627050` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175412 has offset 1).

The definition of A175412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175412.P16355508386573627050

`p?[n*A001222(A000005(n+1)+n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A175412

/-- `p?[n*A001222(A000005(n+1)+n)]` -/
def P16355508386573627050.Spec : Prop :=
  ∀ n, P16355508386573627050.a n = A175412 (n + 1)

theorem P16355508386573627050.correct : P16355508386573627050.Spec := by
  intro n
  simp only [A175412, Nat.add_sub_cancel]

end A175412

/-! ## A175412.P14220062176564607215

`p?[n*A032741(A000005(n+1)+n)]`
-/

namespace A175412.P14220062176564607215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 (A000005 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175412.P14220062176564607215

namespace A175412

/-- `p?[n*A032741(A000005(n+1)+n)]` -/
def P14220062176564607215.Spec : Prop :=
  ∀ n, P14220062176564607215.a n = A175412 (n + 1)

end A175412

/-! ## A175412.P12121203475810434085

`p?[n*A032741(A032741(n+1)+n+1)]`
-/

namespace A175412.P12121203475810434085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A032741 (A032741 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175412.P12121203475810434085

namespace A175412

/-- `p?[n*A032741(A032741(n+1)+n+1)]` -/
def P12121203475810434085.Spec : Prop :=
  ∀ n, P12121203475810434085.a n = A175412 (n + 1)

end A175412

/-! ## A175412.P1374827768411038142

`eq[A323161(A062249(n+1)), A323161(n+1)]`
-/

namespace A175412.P1374827768411038142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (A062249 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175412.P1374827768411038142

namespace A175412

/-- `eq[A323161(A062249(n+1)), A323161(n+1)]` -/
def P1374827768411038142.Spec : Prop :=
  ∀ n, (P1374827768411038142.a n : ℤ) = A175412 (n + 1)

end A175412

/-! ## A175412.P16351380482532147572

`p?[(n+1)*A063647(A000005(n+2)+n+1)]`
-/

namespace A175412.P16351380482532147572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A063647 (A000005 (n + 2) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175412.P16351380482532147572

namespace A175412

/-- `p?[(n+1)*A063647(A000005(n+2)+n+1)]` -/
def P16351380482532147572.Spec : Prop :=
  ∀ n, P16351380482532147572.a n = A175412 (n + 1)

end A175412

/-!
# A175413: Those positive integers n that when written in binary, the lengths of the runs of 1 are distinct and the lengths of the runs of 0's are distinct.

The programs for A175413, there is no canonical definition to state claims against.
-/

/-! ## A175413.P14955244263654299518

`eq[A005811(n+1), A297770(n+1)]+1`
-/

namespace A175413.P14955244263654299518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A175413.P14955244263654299518

/-! ## A175413.P5214723707706421390

`lt[A037834(n+1), A297770(n+1)]+1`
-/

namespace A175413.P5214723707706421390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A175413.P5214723707706421390

/-! ## A175413.P11140886701344807227

`eq[A005811(n), A297770(A028310(n))]`
-/

namespace A175413.P11140886701344807227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175413.P11140886701344807227

/-! ## A175413.P13930918502502565409

`eq[A005811(n), A297770(A000007(n)+n)]`
-/

namespace A175413.P13930918502502565409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175413.P13930918502502565409

/-! ## A175413.P17388240195586915354

`eq[A005811(n), A297770(A101279(2*n+1))]`
-/

namespace A175413.P17388240195586915354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A101279 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175413.P17388240195586915354

/-! ## A175413.P418161022578471085

`∪[A044813(n+1), A175414(n+1)]`
-/

namespace A175413.P418161022578471085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175413.P418161022578471085

/-! ## A175413.P17988930372572626401

`eq[A005811(n), A297770(A137735(n²))]`
-/

namespace A175413.P17988930372572626401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A137735 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175413.P17988930372572626401

/-!
# A175414: Those positive integers that when written in binary, the lengths of the runs of 1 are distinct and the lengths of the runs of 0's are distinct, and at least one run of 0's is the same length as a run of 1's.

The programs for A175414, there is no canonical definition to state claims against.
-/

/-! ## A175414.P7890217759001018897

`∩[A123466(n+1), A175413(n+1)]`
-/

namespace A175414.P7890217759001018897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175414.P7890217759001018897

/-! ## A175414.P12066508798890394351

`∩[comp[A044813(n+1)], A175413(n+1)]`
-/

namespace A175414.P12066508798890394351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044813 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A175414.P12066508798890394351

/-!
# A175415: Those positive integers n that when written in binary, each run of 0's and 1's has a length which divides the number of binary digits of n.

The programs for A175415, there is no canonical definition to state claims against.
-/

/-! ## A175415.P13511407312446282804

`eq[A029837(n+1)%A284559(n), A106347(3*n+2)]`
-/

namespace A175415.P13511407312446282804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029837 (n + 1)) (A284559 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106347 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175415.P13511407312446282804

/-!
# A175417: Exponent of 2 minus sum of all other exponents, in the prime power factorization of n!

The programs for A175417, the canonical program `A175417.P5052014933814601224` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175417 has offset 0).

The definition of A175417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175417.P5052014933814601224

`2*A011371(n)-A022559(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A175417

/-- `2*A011371(n)-A022559(n)` -/
def P5052014933814601224.Spec : Prop :=
  ∀ n, P5052014933814601224.a n = A175417 n

theorem P5052014933814601224.correct : P5052014933814601224.Spec := by
  intro n
  simp only [A175417]

end A175417

/-! ## A175417.P16679855126592229267

`∑[∑{d}[n, A049076(A014963(#)+1)-2]]`
-/

namespace A175417.P16679855126592229267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A049076 (A014963 d + 1).toNat - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175417.P16679855126592229267

namespace A175417

/-- `∑[∑{d}[n, A049076(A014963(#)+1)-2]]` -/
def P16679855126592229267.Spec : Prop :=
  ∀ n, P16679855126592229267.a n = A175417 n

end A175417

/-! ## A175417.P13737562635215121495

`A005843(A011371(n))-A022559(n)`
-/

namespace A175417.P13737562635215121495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A011371 n).toNat - A022559 n

end

end A175417.P13737562635215121495

namespace A175417

/-- `A005843(A011371(n))-A022559(n)` -/
def P13737562635215121495.Spec : Prop :=
  ∀ n, P13737562635215121495.a n = A175417 n

end A175417

/-! ## A175417.P13791915846884598640

`A011371(n)-∑[A087436(A028310(n))]`
-/

namespace A175417.P13791915846884598640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175417.P13791915846884598640

namespace A175417

/-- `A011371(n)-∑[A087436(A028310(n))]` -/
def P13791915846884598640.Spec : Prop :=
  ∀ n, P13791915846884598640.a n = A175417 n

end A175417

/-! ## A175417.P5316211731363870587

`A005187(n)-(A022559(n)+A000120(n))`
-/

namespace A175417.P5316211731363870587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - (A022559 n + A000120 n)

end

end A175417.P5316211731363870587

namespace A175417

/-- `A005187(n)-(A022559(n)+A000120(n))` -/
def P5316211731363870587.Spec : Prop :=
  ∀ n, P5316211731363870587.a n = A175417 n

theorem P5316211731363870587.correct : P5316211731363870587.Spec := by
  intro n
  simp only [A175417, Nat.add_sub_cancel, A175417.P5316211731363870587.a, A175417.P5052014933814601224.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, A011371, A011371.P12398255777927387864.a, A022559, A022559.P10554250414511796107.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175417

/-! ## A175417.P1600671389995187196

`A005843(A005187(n)-n)-A022559(n)`
-/

namespace A175417.P1600671389995187196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005187 n - (n : ℤ)).toNat - A022559 n

end

end A175417.P1600671389995187196

namespace A175417

/-- `A005843(A005187(n)-n)-A022559(n)` -/
def P1600671389995187196.Spec : Prop :=
  ∀ n, P1600671389995187196.a n = A175417 n

end A175417

/-! ## A175417.P3100959837267574217

`A087436(n+1)+A011371(n)-∑[A087436(n+1)]`
-/

namespace A175417.P3100959837267574217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1) + (A011371 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175417.P3100959837267574217

namespace A175417

/-- `A087436(n+1)+A011371(n)-∑[A087436(n+1)]` -/
def P3100959837267574217.Spec : Prop :=
  ∀ n, P3100959837267574217.a n = A175417 n

end A175417

/-!
# A175418: Complement of A175397, where A175397 = numbers such that both arithmetic means of distinct and all prime factors are not integers.

The programs for A175418, there is no canonical definition to state claims against.
-/

/-! ## A175418.P14122192078577061422

`comp[A175397(n+1)-1]+1`
-/

namespace A175418.P14122192078577061422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175397 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175418.P14122192078577061422

/-! ## A175418.P7592979985101498755

`lt[char[A175397(n+1)]*A209074(n+1), n]`
-/

namespace A175418.P7592979985101498755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175397 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A209074 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A175418.P7592979985101498755

/-! ## A175418.P18276912819423367573

`lt[char[A175397(n+1)], n/A206339(n+1)]`
-/

namespace A175418.P18276912819423367573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175397 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A206339 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A175418.P18276912819423367573

/-! ## A175418.P4915521644098385630

`lt[char[A175397(n+1)], n/A051049(n)]`
-/

namespace A175418.P4915521644098385630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175397 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A051049 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A175418.P4915521644098385630

/-! ## A175418.P3811191441689411194

`lt[char[A175397(n+1)], n/A005009(n)]`
-/

namespace A175418.P3811191441689411194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175397 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A005009 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A175418.P3811191441689411194

/-! ## A175418.P1554353784189519023

`eq[char[A175397(n+1)], A151933(n)]`
-/

namespace A175418.P1554353784189519023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175397 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A175418.P1554353784189519023

/-!
# A175420: Sequence of numbers after 1st step of iteration defined in A175419.

The programs for A175420, there is no canonical definition to state claims against.
-/

/-! ## A175420.P9392102214861348813

`A007954(A079475(n))`
-/

namespace A175420.P9392102214861348813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A079475 n).toNat

end

end A175420.P9392102214861348813

/-! ## A175420.P6557117247339236675

`A007954(A051022(n))+A007954(A056967(n))`
-/

namespace A175420.P6557117247339236675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A051022 n).toNat + A007954 (A056967 n).toNat

end

end A175420.P6557117247339236675

/-! ## A175420.P636049352604357897

`A007954(A055649(n))+A007954(A056967(n))`
-/

namespace A175420.P636049352604357897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A055649 n).toNat + A007954 (A056967 n).toNat

end

end A175420.P636049352604357897

/-! ## A175420.P16071871750773992889

`char[A004086(n)]*A087179(A054842(n))`
-/

namespace A175420.P16071871750773992889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A087179 (A054842 n).toNat

end

end A175420.P16071871750773992889

/-!
# A175421: Sequence of numbers after 2nd step of iteration defined in A175419.

The programs for A175421, there is no canonical definition to state claims against.
-/

/-! ## A175421.P9036754620249333971

`A175420(A175420(n))`
-/

namespace A175421.P9036754620249333971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175420 (A175420 n).toNat

end

end A175421.P9036754620249333971

/-! ## A175421.P1154348462906665471

`A175423(n)%A248379(n+1)`
-/

namespace A175421.P1154348462906665471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175423 n) (A248379 (n + 1))

end

end A175421.P1154348462906665471

/-! ## A175421.P1909420039415270276

`A175423(n)+A005088(A079901(n))`
-/

namespace A175421.P1909420039415270276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175423 n + A005088 (A079901 n).toNat

end

end A175421.P1909420039415270276

/-! ## A175421.P6073354113984408866

`A175423(n)+A025468(A251764(n))`
-/

namespace A175421.P6073354113984408866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175423 n + A025468 (A251764 n).toNat

end

end A175421.P6073354113984408866

/-! ## A175421.P17768662295797096469

`A175423(n)%A000043(A022301(n))`
-/

namespace A175421.P17768662295797096469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175423 n) (A000043 (A022301 n).toNat)

end

end A175421.P17768662295797096469

/-!
# A175422: Sequence of numbers after 3rd step of iteration defined in A175419.

The programs for A175422, there is no canonical definition to state claims against.
-/

/-! ## A175422.P17658251342363688355

`A175420(A175421(n))`
-/

namespace A175422.P17658251342363688355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175420 (A175421 n).toNat

end

end A175422.P17658251342363688355

/-! ## A175422.P10023754396820130820

`A175423(A175420(n))%A175405(n+1)`
-/

namespace A175422.P10023754396820130820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175423 (A175420 n).toNat) (A175405 (n + 1))

end

end A175422.P10023754396820130820

/-! ## A175422.P13761888540386275789

`A175423(n)%A185200(n)`
-/

namespace A175422.P13761888540386275789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175423 n) (A185200 n)

end

end A175422.P13761888540386275789

/-! ## A175422.P68033091714124199

`A175423(A175420(n)%A242994(n+5))`
-/

namespace A175422.P68033091714124199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175423 (Int.tmod (A175420 n) (A242994 (n + 5))).toNat

end

end A175422.P68033091714124199

/-! ## A175422.P18367972497647660235

`A175420(A175423(n))%A175374(2*n)`
-/

namespace A175422.P18367972497647660235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175420 (A175423 n).toNat) (A175374 (2 * n))

end

end A175422.P18367972497647660235

/-!
# A175423: Sequence of numbers after 4th step of iteration defined in A175419.

The programs for A175423, there is no canonical definition to state claims against.
-/

/-! ## A175423.P10145228311562808782

`A175420(A175422(n))`
-/

namespace A175423.P10145228311562808782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175420 (A175422 n).toNat

end

end A175423.P10145228311562808782

/-! ## A175423.P7227366019569656494

`A175422(A175422(n)%Δ[n²])`
-/

namespace A175423.P7227366019569656494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175422 (Int.tmod (A175422 n) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A175423.P7227366019569656494

/-! ## A175423.P6363765342627086623

`A175422(and(-1, A175422(n)))`
-/

namespace A175423.P6363765342627086623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175422 (Int.land (-1) (A175422 n)).toNat

end

end A175423.P6363765342627086623

/-! ## A175423.P7275353909729723009

`A175422(A175422(2*n-n))`
-/

namespace A175423.P7275353909729723009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175422 (A175422 (2 * n - n)).toNat

end

end A175423.P7275353909729723009

/-! ## A175423.P13893804063233129525

`A175422(A175422(n)+A000007(2*n+3))`
-/

namespace A175423.P13893804063233129525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175422 (A175422 n + A000007 (2 * n + 3)).toNat

end

end A175423.P13893804063233129525

/-!
# A175426: Starting values for which iteration of the map x->A175420(x) never reaches a single-digit value.

The programs for A175426, there is no canonical definition to state claims against.
-/

/-! ## A175426.P7862488541533087695

`eq[n+8, A336193(n+1)]+1`
-/

namespace A175426.P7862488541533087695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175426.P7862488541533087695

/-! ## A175426.P14051959087294782833

`A336483(A099820(n)+5)`
-/

namespace A175426.P14051959087294782833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336483 (A099820 n + 5).toNat

end

end A175426.P14051959087294782833

/-! ## A175426.P9226178672404575312

`A345508(A007088(n)+9)`
-/

namespace A175426.P9226178672404575312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345508 (A007088 n + 9).toNat

end

end A175426.P9226178672404575312

/-! ## A175426.P8629459252586273744

`A076310(A099820(n)+16)`
-/

namespace A175426.P8629459252586273744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 (A099820 n + 16).toNat

end

end A175426.P8629459252586273744

/-!
# A175427: Starting values which reach a single-digit number after a finite number of iterations of the map x->A175429(x).

The programs for A175427, there is no canonical definition to state claims against.
-/

/-! ## A175427.P11135970435943011480

`lt[A175423(n), 10]`
-/

namespace A175427.P11135970435943011480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175423 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A175427.P11135970435943011480

/-! ## A175427.P9887442694949988771

`lt[-1, A175419(n)]`
-/

namespace A175427.P9887442694949988771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175419 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175427.P9887442694949988771

/-! ## A175427.P4741833075000544475

`lt[-1, A175424(n)]`
-/

namespace A175427.P4741833075000544475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175427.P4741833075000544475

/-! ## A175427.P6068151420157136584

`comp[A175426(n+1)]`
-/

namespace A175427.P6068151420157136584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175427.P6068151420157136584

/-! ## A175427.P11858564406298916299

`comp[A032810(n+3)+3]`
-/

namespace A175427.P11858564406298916299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 3) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A175427.P11858564406298916299

/-!
# A175428: a(n) is the smallest positive integer such that a(n)+a(n-1) is a cube and a(n) is not in {a(1), ..., a(n-1)}.

The programs for A175428, there is no canonical definition to state claims against.
-/

/-! ## A175428.P3228758787768376185

`∑[eq[2, A086834(n+4)]]`
-/

namespace A175428.P3228758787768376185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175428.P3228758787768376185

/-! ## A175428.P6108108700696119888

`∑[∑[record[A250131(n+1)]]]`
-/

namespace A175428.P6108108700696119888
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175428.P6108108700696119888

/-! ## A175428.P14428634717846407711

`∑[∑[record[A131305(3*n)]]]`
-/

namespace A175428.P14428634717846407711
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131305 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175428.P14428634717846407711

/-!
# A175429: Number of primes that are permutations of first n primes.

The programs for A175429, there is no canonical definition to state claims against.
-/

/-! ## A175429.P18290550162809954245

`A331489(A106361(n+1))+A124762(3*n+2)`
-/

namespace A175429.P18290550162809954245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331489 (A106361 (n + 1)).toNat + A124762 (3 * n + 2)

end

end A175429.P18290550162809954245

/-! ## A175429.P8995607696714015017

`A027751(2*(n+2)*n!)`
-/

namespace A175429.P8995607696714015017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027751 (2 * ((n + 2) * Nat.factorial n))

end

end A175429.P8995607696714015017

/-!
# A175430: a(n) = (n-1)! * (n+1)!.

The programs for A175430, the canonical program `A175430.P3251829551078163269` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175430 has offset 1).

The definition of A175430 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*(n+2)!` (program `A175430.P3251829551078163269`, by `A175430.P3251829551078163269.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A175430.P3251829551078163269

`n!*(n+2)!`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175430

/-- `n!*(n+2)!` -/
def P3251829551078163269.Spec : Prop :=
  ∀ n, (P3251829551078163269.a n : ℤ) = A175430 (n + 1)

theorem P3251829551078163269.correct : P3251829551078163269.Spec := by
  intro n
  simp only [A175430, Nat.add_sub_cancel]

end A175430

/-! ## A175430.P17672806302182130699

`2*A010791(n)`
-/

namespace A175430.P17672806302182130699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010791 n

end

end A175430.P17672806302182130699

namespace A175430

/-- `2*A010791(n)` -/
def P17672806302182130699.Spec : Prop :=
  ∀ n, P17672806302182130699.a n = A175430 (n + 1)

end A175430

/-! ## A175430.P13635510336167050419

`A179442(n+1)*(n+1)`
-/

namespace A175430.P13635510336167050419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179442 (n + 1) * (n + 1 : ℤ)

end

end A175430.P13635510336167050419

namespace A175430

/-- `A179442(n+1)*(n+1)` -/
def P13635510336167050419.Spec : Prop :=
  ∀ n, P13635510336167050419.a n = A175430 (n + 1)

end A175430

/-! ## A175430.P14653673355470300936

`n!/∏[1/(n+2)]`
-/

namespace A175430.P14653673355470300936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A175430.P14653673355470300936

namespace A175430

/-- `n!/∏[1/(n+2)]` -/
def P14653673355470300936.Spec : Prop :=
  ∀ n, P14653673355470300936.a n = (A175430 (n + 1) : ℚ)

end A175430

/-! ## A175430.P10237107455558196457

`record[abs(2-n)!*n!]`
-/

namespace A175430.P10237107455558196457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |2 - (n : ℤ)|.toNat * Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175430.P10237107455558196457

namespace A175430

/-- `record[abs(2-n)!*n!]` -/
def P10237107455558196457.Spec : Prop :=
  ∀ n, (P10237107455558196457.a n : ℤ) = A175430 (n + 1)

end A175430

/-!
# A175431: Numbers m such that sigma(m) is not a nontrivial power, i.e., sigma(m) = A000203(n) is not equal a^b where a and b are greater than 1.

The programs for A175431, the canonical program `A175431.P13219315261267939419` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175431 has offset 1).

The definition of A175431 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5651 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175431.P10464165768791836023

`eq[1, A175432(n+1)]+1`
-/

namespace A175431.P10464165768791836023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175431.P10464165768791836023

namespace A175431

/-- `eq[1, A175432(n+1)]+1` -/
def P10464165768791836023.Spec : Prop :=
  ∀ n, (P10464165768791836023.a n : ℤ) = A175431 (n + 1)

end A175431

/-! ## A175431.P3193941306141470250

`lt[n, A175433(n+1)]+1`
-/

namespace A175431.P3193941306141470250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175433 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A175431.P3193941306141470250

namespace A175431

/-- `lt[n, A175433(n+1)]+1` -/
def P3193941306141470250.Spec : Prop :=
  ∀ n, (P3193941306141470250.a n : ℤ) = A175431 (n + 1)

end A175431

/-! ## A175431.P16108695612599833028

`comp[A065496(n+1)-1]+1`
-/

namespace A175431.P16108695612599833028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065496 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A175431.P16108695612599833028

namespace A175431

/-- `comp[A065496(n+1)-1]+1` -/
def P16108695612599833028.Spec : Prop :=
  ∀ n, (P16108695612599833028.a n : ℤ) = A175431 (n + 1)

end A175431

/-! ## A175431.P10129269785281736526

`eq[ceil(acot(n)), A175432(A028310(n))]`
-/

namespace A175431.P10129269785281736526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175432 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175431.P10129269785281736526

namespace A175431

/-- `eq[ceil(acot(n)), A175432(A028310(n))]` -/
def P10129269785281736526.Spec : Prop :=
  ∀ n, (P10129269785281736526.a n : ℤ) = A175431 (n + 1)

end A175431

/-! ## A175431.P15691650627166324194

`record[A175433(n+1)-A001065(n+1)]`
-/

namespace A175431.P15691650627166324194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175433 (n + 1) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175431.P15691650627166324194

namespace A175431

/-- `record[A175433(n+1)-A001065(n+1)]` -/
def P15691650627166324194.Spec : Prop :=
  ∀ n, P15691650627166324194.a n = A175431 (n + 1)

end A175431

/-! ## A175431.P13219315261267939419

`eq[1, A089723(A000203(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A175431

/-- `eq[1, A089723(A000203(n+1))]+1` -/
def P13219315261267939419.Spec : Prop :=
  ∀ n, (P13219315261267939419.a n : ℤ) = A175431 (n + 1)

theorem P13219315261267939419.correct : P13219315261267939419.Spec := by
  intro n
  simp only [A175431, Nat.add_sub_cancel]

end A175431

/-! ## A175431.P18416110529903343318

`eq[1, A253641(∑{d}[n+1, #])]+1`
-/

namespace A175431.P18416110529903343318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A175431.P18416110529903343318

namespace A175431

/-- `eq[1, A253641(∑{d}[n+1, #])]+1` -/
def P18416110529903343318.Spec : Prop :=
  ∀ n, (P18416110529903343318.a n : ℤ) = A175431 (n + 1)

end A175431

/-! ## A175431.P9544688888915331964

`lt[A075802(∑{d}[a(n-1)+1, #]), 1]+1` with `a(0)=8, a(1)=8, a(2)=3`
-/

namespace A175431.P9544688888915331964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8, 8, 3] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A175431.P9544688888915331964

namespace A175431

/-- `lt[A075802(∑{d}[a(n-1)+1, #]), 1]+1` -/
def P9544688888915331964.Spec : Prop :=
  ∀ n, (P9544688888915331964.a n : ℤ) = A175431 (n + 1)

end A175431

/-!
# A175432: a(n) = the greatest number k such that sigma(n) = m^k for any m >= 1 (sigma = A000203).

The programs for A175432, the canonical program `A175432.P11265473257221529298` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175432 has offset 1).

The definition of A175432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175432.P14874636219315783860

`A052409(∑{d}[n+1, #]+floor(acot(n)))`
-/

namespace A175432.P14874636219315783860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A175432.P14874636219315783860

namespace A175432

/-- `A052409(∑{d}[n+1, #]+floor(acot(n)))` -/
def P14874636219315783860.Spec : Prop :=
  ∀ n, P14874636219315783860.a n = A175432 (n + 1)

end A175432

/-! ## A175432.P2105700002871802213

`A052409(A000203(n+1)+floor(acot(n)))`
-/

namespace A175432.P2105700002871802213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A000203 (n + 1) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A175432.P2105700002871802213

namespace A175432

/-- `A052409(A000203(n+1)+floor(acot(n)))` -/
def P2105700002871802213.Spec : Prop :=
  ∀ n, P2105700002871802213.a n = A175432 (n + 1)

end A175432

/-! ## A175432.P11265473257221529298

`A052409(A000203(n+1)+C(2, (n+1)²))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A175432

/-- `A052409(A000203(n+1)+C(2, (n+1)²))` -/
def P11265473257221529298.Spec : Prop :=
  ∀ n, P11265473257221529298.a n = A175432 (n + 1)

theorem P11265473257221529298.correct : P11265473257221529298.Spec := by
  intro n
  simp only [A175432, Nat.add_sub_cancel]

end A175432

/-! ## A175432.P10697096240191536855

`A052409(A000203(n+1)+A000007(n))`
-/

namespace A175432.P10697096240191536855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A000203 (n + 1) + A000007 n).toNat

end

end A175432.P10697096240191536855

namespace A175432

/-- `A052409(A000203(n+1)+A000007(n))` -/
def P10697096240191536855.Spec : Prop :=
  ∀ n, P10697096240191536855.a n = A175432 (n + 1)

end A175432

/-! ## A175432.P7070016525566632403

`A052409(A000203(n+1)+A000038(n))`
-/

namespace A175432.P7070016525566632403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A000203 (n + 1) + A000038 n).toNat

end

end A175432.P7070016525566632403

namespace A175432

/-- `A052409(A000203(n+1)+A000038(n))` -/
def P7070016525566632403.Spec : Prop :=
  ∀ n, P7070016525566632403.a n = A175432 (n + 1)

end A175432

/-! ## A175432.P6620749751821649783

`A052409(A000203(n+1)*A054977(n))`
-/

namespace A175432.P6620749751821649783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A000203 (n + 1) * A054977 n).toNat

end

end A175432.P6620749751821649783

namespace A175432

/-- `A052409(A000203(n+1)*A054977(n))` -/
def P6620749751821649783.Spec : Prop :=
  ∀ n, P6620749751821649783.a n = A175432 (n + 1)

end A175432

/-! ## A175432.P17964078879477084032

`gcd(A000122(n), A052409(A000203(n+1)))`
-/

namespace A175432.P17964078879477084032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 n) (A052409 (A000203 (n + 1)).toNat)

end

end A175432.P17964078879477084032

namespace A175432

/-- `gcd(A000122(n), A052409(A000203(n+1)))` -/
def P17964078879477084032.Spec : Prop :=
  ∀ n, (P17964078879477084032.a n : ℤ) = A175432 (n + 1)

end A175432

/-! ## A175432.P14659051872491855016

`A052409(A000203(n+1))+A019590(n+2)`
-/

namespace A175432.P14659051872491855016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A000203 (n + 1)).toNat + A019590 (n + 2)

end

end A175432.P14659051872491855016

namespace A175432

/-- `A052409(A000203(n+1))+A019590(n+2)` -/
def P14659051872491855016.Spec : Prop :=
  ∀ n, P14659051872491855016.a n = A175432 (n + 1)

end A175432

/-! ## A175432.P17331375226981478763

`A052409(A185012(n+2)+A000203(n+1))`
-/

namespace A175432.P17331375226981478763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A185012 (n + 2) + A000203 (n + 1)).toNat

end

end A175432.P17331375226981478763

namespace A175432

/-- `A052409(A185012(n+2)+A000203(n+1))` -/
def P17331375226981478763.Spec : Prop :=
  ∀ n, P17331375226981478763.a n = A175432 (n + 1)

end A175432

/-! ## A175432.P6173571412062829802

`A052409(A049084(2*(n+1))+A000203(n+1))`
-/

namespace A175432.P6173571412062829802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A049084 (2 * (n + 1)) + A000203 (n + 1)).toNat

end

end A175432.P6173571412062829802

namespace A175432

/-- `A052409(A049084(2*(n+1))+A000203(n+1))` -/
def P6173571412062829802.Spec : Prop :=
  ∀ n, P6173571412062829802.a n = A175432 (n + 1)

end A175432

/-! ## A175432.P5710578739100994709

`A253641(A276528(n+1))`
-/

namespace A175432.P5710578739100994709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A276528 (n + 1)).toNat

end

end A175432.P5710578739100994709

namespace A175432

/-- `A253641(A276528(n+1))` -/
def P5710578739100994709.Spec : Prop :=
  ∀ n, P5710578739100994709.a n = A175432 (n + 1)

end A175432

/-! ## A175432.P15541079633291140283

`A253641(∑{d}[n+1, #])`
-/

namespace A175432.P15541079633291140283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A175432.P15541079633291140283

namespace A175432

/-- `A253641(∑{d}[n+1, #])` -/
def P15541079633291140283.Spec : Prop :=
  ∀ n, P15541079633291140283.a n = A175432 (n + 1)

end A175432

/-! ## A175432.P7966500089395992137

`A253641(A000203(n+1))`
-/

namespace A175432.P7966500089395992137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A000203 (n + 1)).toNat

end

end A175432.P7966500089395992137

namespace A175432

/-- `A253641(A000203(n+1))` -/
def P7966500089395992137.Spec : Prop :=
  ∀ n, P7966500089395992137.a n = A175432 (n + 1)

end A175432

/-! ## A175432.P15226532823495493934

`A253641(A088580(n+1)-1)`
-/

namespace A175432.P15226532823495493934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A088580 (n + 1) - 1).toNat

end

end A175432.P15226532823495493934

namespace A175432

/-- `A253641(A088580(n+1)-1)` -/
def P15226532823495493934.Spec : Prop :=
  ∀ n, P15226532823495493934.a n = A175432 (n + 1)

end A175432

/-! ## A175432.P3221920914279102358

`A253641(A074400(n+1)/2)`
-/

namespace A175432.P3221920914279102358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A175432.P3221920914279102358

namespace A175432

/-- `A253641(A074400(n+1)/2)` -/
def P3221920914279102358.Spec : Prop :=
  ∀ n, P3221920914279102358.a n = A175432 (n + 1)

end A175432

/-! ## A175432.P7761154156372772924

`A253641(A178645(n+1)+A175067(n+1))`
-/

namespace A175432.P7761154156372772924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A178645 (n + 1) + A175067 (n + 1)).toNat

end

end A175432.P7761154156372772924

namespace A175432

/-- `A253641(A178645(n+1)+A175067(n+1))` -/
def P7761154156372772924.Spec : Prop :=
  ∀ n, P7761154156372772924.a n = A175432 (n + 1)

end A175432

/-! ## A175432.P13644028560427914221

`A052409(A208546(16*n)+A000203(n+1))`
-/

namespace A175432.P13644028560427914221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A208546 (16 * n) + A000203 (n + 1)).toNat

end

end A175432.P13644028560427914221

namespace A175432

/-- `A052409(A208546(16*n)+A000203(n+1))` -/
def P13644028560427914221.Spec : Prop :=
  ∀ n, P13644028560427914221.a n = A175432 (n + 1)

end A175432

/-!
# A175433: a(n) = the smallest number m such that sigma(n) = m^k for any k >= 1 (sigma = A000203).

The programs for A175433, the canonical program `A175433.P5929849587678979571` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175433 has offset 1).

The definition of A175433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175433.P5929849587678979571

`A052410(∑{d}[n+1, #])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A175433

/-- `A052410(∑{d}[n+1, #])` -/
def P5929849587678979571.Spec : Prop :=
  ∀ n, P5929849587678979571.a n = A175433 (n + 1)

theorem P5929849587678979571.correct : P5929849587678979571.Spec := by
  intro n
  simp only [A175433, Nat.add_sub_cancel]

end A175433

/-! ## A175433.P4711528147779433137

`A052410(Δ[A160664(n)])`
-/

namespace A175433.P4711528147779433137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (n + 1) - f1 n).toNat

end

end A175433.P4711528147779433137

namespace A175433

/-- `A052410(Δ[A160664(n)])` -/
def P4711528147779433137.Spec : Prop :=
  ∀ n, P4711528147779433137.a n = A175433 (n + 1)

end A175433

/-! ## A175433.P16320295783000741917

`A052410(A000203(n+1))`
-/

namespace A175433.P16320295783000741917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A000203 (n + 1)).toNat

end

end A175433.P16320295783000741917

namespace A175433

/-- `A052410(A000203(n+1))` -/
def P16320295783000741917.Spec : Prop :=
  ∀ n, P16320295783000741917.a n = A175433 (n + 1)

end A175433

/-! ## A175433.P16296550356774271275

`A052410(sqrt(A072861(n+1)))`
-/

namespace A175433.P16296550356774271275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A175433.P16296550356774271275

namespace A175433

/-- `A052410(sqrt(A072861(n+1)))` -/
def P16296550356774271275.Spec : Prop :=
  ∀ n, P16296550356774271275.a n = A175433 (n + 1)

end A175433

/-! ## A175433.P1569215620794100582

`A052410(A039653(n+1)+1)`
-/

namespace A175433.P1569215620794100582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A039653 (n + 1) + 1).toNat

end

end A175433.P1569215620794100582

namespace A175433

/-- `A052410(A039653(n+1)+1)` -/
def P1569215620794100582.Spec : Prop :=
  ∀ n, P1569215620794100582.a n = A175433 (n + 1)

end A175433

/-! ## A175433.P13942709171548417630

`A052410(A239050(n+1)/4)`
-/

namespace A175433.P13942709171548417630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 4)).toNat

end

end A175433.P13942709171548417630

namespace A175433

/-- `A052410(A239050(n+1)/4)` -/
def P13942709171548417630.Spec : Prop :=
  ∀ n, P13942709171548417630.a n = A175433 (n + 1)

end A175433

/-! ## A175433.P12564213874602584174

`A052410(A319528(n+1)/8)`
-/

namespace A175433.P12564213874602584174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (SequenceMachineLib.roundAway ((A319528 (n + 1) : ℚ) / 8)).toNat

end

end A175433.P12564213874602584174

namespace A175433

/-- `A052410(A319528(n+1)/8)` -/
def P12564213874602584174.Spec : Prop :=
  ∀ n, P12564213874602584174.a n = A175433 (n + 1)

end A175433

/-! ## A175433.P11341362797767354688

`A052410(A001065(n+1)+1+n)`
-/

namespace A175433.P11341362797767354688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A175433.P11341362797767354688

namespace A175433

/-- `A052410(A001065(n+1)+1+n)` -/
def P11341362797767354688.Spec : Prop :=
  ∀ n, P11341362797767354688.a n = A175433 (n + 1)

end A175433

/-! ## A175433.P4453453456420641256

`A052410(A178645(n+1)+A175067(n+1))`
-/

namespace A175433.P4453453456420641256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A178645 (n + 1) + A175067 (n + 1)).toNat

end

end A175433.P4453453456420641256

namespace A175433

/-- `A052410(A178645(n+1)+A175067(n+1))` -/
def P4453453456420641256.Spec : Prop :=
  ∀ n, P4453453456420641256.a n = A175433 (n + 1)

end A175433

/-! ## A175433.P11159101187062805924

`A052410(A072861(n+1))`
-/

namespace A175433.P11159101187062805924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A072861 (n + 1)).toNat

end

end A175433.P11159101187062805924

namespace A175433

/-- `A052410(A072861(n+1))` -/
def P11159101187062805924.Spec : Prop :=
  ∀ n, P11159101187062805924.a n = A175433 (n + 1)

end A175433

/-!
# A175434: (Digit sum of 2^n) mod n.

The programs for A175434, the canonical program `A175434.P3715413086087298136` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175434 has offset 1).

The definition of A175434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175434.P3715413086087298136

`A001370(n+1)%(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A175434

/-- `A001370(n+1)%(n+1)` -/
def P3715413086087298136.Spec : Prop :=
  ∀ n, P3715413086087298136.a n = A175434 (n + 1)

theorem P3715413086087298136.correct : P3715413086087298136.Spec := by
  intro n
  simp only [A175434, Nat.add_sub_cancel]

end A175434

/-! ## A175434.P5632367980675016414

`∑{digits}[2^(n+1), #]%(n+1)`
-/

namespace A175434.P5632367980675016414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum % (n + 1)

end

end A175434.P5632367980675016414

namespace A175434

/-- `∑{digits}[2^(n+1), #]%(n+1)` -/
def P5632367980675016414.Spec : Prop :=
  ∀ n, (P5632367980675016414.a n : ℤ) = A175434 (n + 1)

end A175434

/-! ## A175434.P14763467097728157728

`(∑{digits}[2*a(n-1)+1, #]+1)%(n+1)` with `a(0)=1`
-/

namespace A175434.P14763467097728157728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 1) % (n + 1)

end

end A175434.P14763467097728157728

namespace A175434

/-- `(∑{digits}[2*a(n-1)+1, #]+1)%(n+1)` -/
def P14763467097728157728.Spec : Prop :=
  ∀ n, (P14763467097728157728.a n : ℤ) = A175434 (n + 1)

end A175434

/-! ## A175434.P11617107491287247341

`(∑{digits}[record[A324713(n+1)], #]+1)%(n+1)`
-/

namespace A175434.P11617107491287247341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324713 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1) % (n + 1)

end

end A175434.P11617107491287247341

namespace A175434

/-- `(∑{digits}[record[A324713(n+1)], #]+1)%(n+1)` -/
def P11617107491287247341.Spec : Prop :=
  ∀ n, (P11617107491287247341.a n : ℤ) = A175434 (n + 1)

end A175434

/-! ## A175434.P16583169816711449834

`(∑{digits}[A000079(n+1)+1, #]+n)%(n+1)`
-/

namespace A175434.P16583169816711449834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + n) % (n + 1)

end

end A175434.P16583169816711449834

namespace A175434

/-- `(∑{digits}[A000079(n+1)+1, #]+n)%(n+1)` -/
def P16583169816711449834.Spec : Prop :=
  ∀ n, (P16583169816711449834.a n : ℤ) = A175434 (n + 1)

end A175434

/-!
# A175435: (Digit sum of 3^n) mod n.

The programs for A175435, the canonical program `A175435.P4675412527778873767` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175435 has offset 1).

The definition of A175435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175435.P4675412527778873767

`A004166(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175435

/-- `A004166(n+1)%(n+1)` -/
def P4675412527778873767.Spec : Prop :=
  ∀ n, P4675412527778873767.a n = A175435 (n + 1)

theorem P4675412527778873767.correct : P4675412527778873767.Spec := by
  intro n
  simp only [A175435, Nat.add_sub_cancel]

end A175435

/-! ## A175435.P10496473782985790302

`∑{digits}[3^(n+1), #]%(n+1)`
-/

namespace A175435.P10496473782985790302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum % (n + 1)

end

end A175435.P10496473782985790302

namespace A175435

/-- `∑{digits}[3^(n+1), #]%(n+1)` -/
def P10496473782985790302.Spec : Prop :=
  ∀ n, (P10496473782985790302.a n : ℤ) = A175435 (n + 1)

end A175435

/-! ## A175435.P16027278131109435999

`A000027(∑{digits}[3*a(n-1), #])%(n+1)` with `a(0)=3`
-/

namespace A175435.P16027278131109435999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum) (n + 1 : ℤ)

end

end A175435.P16027278131109435999

namespace A175435

/-- `A000027(∑{digits}[3*a(n-1), #])%(n+1)` -/
def P16027278131109435999.Spec : Prop :=
  ∀ n, P16027278131109435999.a n = A175435 (n + 1)

end A175435

/-! ## A175435.P11208220530842297932

`A004159(A182751(n+1))%(n+1)`
-/

namespace A175435.P11208220530842297932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004159 (A182751 (n + 1)).toNat) (n + 1 : ℤ)

end

end A175435.P11208220530842297932

namespace A175435

/-- `A004159(A182751(n+1))%(n+1)` -/
def P11208220530842297932.Spec : Prop :=
  ∀ n, P11208220530842297932.a n = A175435 (n + 1)

end A175435

/-!
# A175436: Records in A169784.

The programs for A175436, there is no canonical definition to state claims against.
-/

/-! ## A175436.P15537003813904272971

`record[A169784(n)]`
-/

namespace A175436.P15537003813904272971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175436.P15537003813904272971

/-! ## A175436.P7841824527958188825

`A169784(A175437(n+1))`
-/

namespace A175436.P7841824527958188825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169784 (A175437 (n + 1)).toNat

end

end A175436.P7841824527958188825

/-! ## A175436.P3776221676809735168

`record[A033737(25*n)]`
-/

namespace A175436.P3776221676809735168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033737 (25 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175436.P3776221676809735168

/-! ## A175436.P9097683437523895744

`A033737(25*A175437(n+1))`
-/

namespace A175436.P9097683437523895744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033737 (25 * A175437 (n + 1)).toNat

end

end A175436.P9097683437523895744

/-! ## A175436.P12998088856184240370

`record[A033737(A008607(n))+1]-1`
-/

namespace A175436.P12998088856184240370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033737 (A008607 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A175436.P12998088856184240370

/-!
# A175438: Primes such that even and odd digits separately are in ascending order.

The programs for A175438, there is no canonical definition to state claims against.
-/

/-! ## A175438.P7503049740462771759

`A000040(A175439(n+1))`
-/

namespace A175438.P7503049740462771759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A175439 (n + 1)).toNat

end

end A175438.P7503049740462771759

/-! ## A175438.P1180456376784726859

`A008578(A175439(n+1)+1)`
-/

namespace A175438.P1180456376784726859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A175439 (n + 1) + 1).toNat

end

end A175438.P1180456376784726859

/-! ## A175438.P17954498572292496606

`A006005(A175439(n+1))+A000007(n)`
-/

namespace A175438.P17954498572292496606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A175439 (n + 1)).toNat + A000007 n

end

end A175438.P17954498572292496606

/-! ## A175438.P2788442999205728662

`A006005(A175439(n+1))+A008683(A008574(n))`
-/

namespace A175438.P2788442999205728662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A175439 (n + 1)).toNat + A008683 (A008574 n).toNat

end

end A175438.P2788442999205728662

/-! ## A175438.P9386577704136513405

`A073846(2*A175439(n+1))`
-/

namespace A175438.P9386577704136513405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A175439 (n + 1)).toNat

end

end A175438.P9386577704136513405

/-!
# A175439: Indices of primes with even and odd digits separately in ascending order.

The programs for A175439, there is no canonical definition to state claims against.
-/

/-! ## A175439.P6704864927975140189

`A000720(A175438(n+1))`
-/

namespace A175439.P6704864927975140189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A175438 (n + 1)).toNat

end

end A175439.P6704864927975140189

/-! ## A175439.P4922068433561476517

`A061395(2*A175438(n+1))`
-/

namespace A175439.P4922068433561476517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A175438 (n + 1)).toNat

end

end A175439.P4922068433561476517

/-! ## A175439.P4486463230226935321

`A061395(lcm(2, A175438(n+1)))`
-/

namespace A175439.P4486463230226935321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A175438 (n + 1)))

end

end A175439.P4486463230226935321

/-! ## A175439.P3179666401060921070

`∑{d}[A175438(n+1), A056239(#)]`
-/

namespace A175439.P3179666401060921070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A175439.P3179666401060921070

/-! ## A175439.P1246846790574397145

`A344616(2*A175438(n+1))+1`
-/

namespace A175439.P1246846790574397145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (2 * A175438 (n + 1)).toNat + 1

end

end A175439.P1246846790574397145

/-! ## A175439.P16873390189857166100

`A056239(A175438(n+1)%A000412(n))`
-/

namespace A175439.P16873390189857166100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A175438 (n + 1)) (A000412 n)).toNat

end

end A175439.P16873390189857166100

/-! ## A175439.P2988822099436331573

`A056239(or(A000035(n), A175438(n+1)))`
-/

namespace A175439.P2988822099436331573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor (A000035 n) (A175438 (n + 1))).toNat

end

end A175439.P2988822099436331573

/-! ## A175439.P7453191031802789702

`A252464(2*A175438(n+1)-A175438(n+1))`
-/

namespace A175439.P7453191031802789702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (2 * A175438 (n + 1) - A175438 (n + 1)).toNat

end

end A175439.P7453191031802789702

/-! ## A175439.P15983815727484003210

`A252464(2*A175438(n+1))-1`
-/

namespace A175439.P15983815727484003210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (2 * A175438 (n + 1)).toNat - 1

end

end A175439.P15983815727484003210

/-!
# A175441: Denominator of the harmonic mean of the first n positive integers.

The programs for A175441, the canonical program `A175441.P11345916668563517181` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175441 has offset 1).

The definition of A175441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175441.P13735079301771063539

`A368373(n+1)/A000034(n)`
-/

namespace A175441.P13735079301771063539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368373 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A175441.P13735079301771063539

namespace A175441

/-- `A368373(n+1)/A000034(n)` -/
def P13735079301771063539.Spec : Prop :=
  ∀ n, P13735079301771063539.a n = (A175441 (n + 1) : ℚ)

end A175441

/-! ## A175441.P12365972879240738539

`gcd(A001008(n+1), A368373(n+1))`
-/

namespace A175441.P12365972879240738539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001008 (n + 1)) (A368373 (n + 1))

end

end A175441.P12365972879240738539

namespace A175441

/-- `gcd(A001008(n+1), A368373(n+1))` -/
def P12365972879240738539.Spec : Prop :=
  ∀ n, (P12365972879240738539.a n : ℤ) = A175441 (n + 1)

end A175441

/-! ## A175441.P9857350693540158456

`A001008(n+1)/gcd(n+1, A093818(n+1))`
-/

namespace A175441.P9857350693540158456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A093818 (n + 1)) : ℚ)

end

end A175441.P9857350693540158456

namespace A175441

/-- `A001008(n+1)/gcd(n+1, A093818(n+1))` -/
def P9857350693540158456.Spec : Prop :=
  ∀ n, P9857350693540158456.a n = (A175441 (n + 1) : ℚ)

end A175441

/-! ## A175441.P11345916668563517181

`lcm(A001008(n+1), A103517(n))/A103517(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A175441

/-- `lcm(A001008(n+1), A103517(n))/A103517(n)` -/
def P11345916668563517181.Spec : Prop :=
  ∀ n, P11345916668563517181.a n = (A175441 (n + 1) : ℚ)

end A175441

/-! ## A175441.P10663701397711771049

`A001008(n+1)/gcd(A002547(n+1), A103517(n))`
-/

namespace A175441.P10663701397711771049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) / (Int.gcd (A002547 (n + 1)) (A103517 n) : ℚ)

end

end A175441.P10663701397711771049

namespace A175441

/-- `A001008(n+1)/gcd(A002547(n+1), A103517(n))` -/
def P10663701397711771049.Spec : Prop :=
  ∀ n, P10663701397711771049.a n = (A175441 (n + 1) : ℚ)

end A175441

/-! ## A175441.P18411185595215628951

`A096617(n+1)/gcd(A103517(n)², A096617(n+1))`
-/

namespace A175441.P18411185595215628951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096617 (n + 1) : ℚ) / (Int.gcd (A103517 n ^ 2) (A096617 (n + 1)) : ℚ)

end

end A175441.P18411185595215628951

namespace A175441

/-- `A096617(n+1)/gcd(A103517(n)², A096617(n+1))` -/
def P18411185595215628951.Spec : Prop :=
  ∀ n, P18411185595215628951.a n = (A175441 (n + 1) : ℚ)

end A175441

/-! ## A175441.P4850126799025512732

`A001008(n+1)/gcd(A000027(n+1), A126083(n+1))`
-/

namespace A175441.P4850126799025512732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A126083 (n + 1)) : ℚ)

end

end A175441.P4850126799025512732

namespace A175441

/-- `A001008(n+1)/gcd(A000027(n+1), A126083(n+1))` -/
def P4850126799025512732.Spec : Prop :=
  ∀ n, P4850126799025512732.a n = (A175441 (n + 1) : ℚ)

end A175441

/-! ## A175441.P7192646471315333473

`A001008(n+1)/gcd(A027612(n+1), A159353(n+1))`
-/

namespace A175441.P7192646471315333473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) / (Int.gcd (A027612 (n + 1)) (A159353 (n + 1)) : ℚ)

end

end A175441.P7192646471315333473

namespace A175441

/-- `A001008(n+1)/gcd(A027612(n+1), A159353(n+1))` -/
def P7192646471315333473.Spec : Prop :=
  ∀ n, P7192646471315333473.a n = (A175441 (n + 1) : ℚ)

end A175441

/-! ## A175441.P11504461342504056454

`A035048(2*(n+1))/gcd(A035048(2*(n+1)), A045661(2*n+1))`
-/

namespace A175441.P11504461342504056454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035048 (2 * (n + 1)) : ℚ) / (Int.gcd (A035048 (2 * (n + 1))) (A045661 (2 * n + 1)) : ℚ)

end

end A175441.P11504461342504056454

namespace A175441

/-- `A035048(2*(n+1))/gcd(A035048(2*(n+1)), A045661(2*n+1))` -/
def P11504461342504056454.Spec : Prop :=
  ∀ n, P11504461342504056454.a n = (A175441 (n + 1) : ℚ)

end A175441

/-! ## A175441.P8482778807419784490

`lcm(A025529(n+1), A081528(n+1))/A081528(n+1)`
-/

namespace A175441.P8482778807419784490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A025529 (n + 1)) (A081528 (n + 1)) : ℚ) / (A081528 (n + 1) : ℚ)

end

end A175441.P8482778807419784490

namespace A175441

/-- `lcm(A025529(n+1), A081528(n+1))/A081528(n+1)` -/
def P8482778807419784490.Spec : Prop :=
  ∀ n, P8482778807419784490.a n = (A175441 (n + 1) : ℚ)

end A175441

/-!
# A175442: a(n)>a(n-1), a(n) = smallest prime such that a(n)+a(n-1) is multiple of m, a(1)=2, m=3.

The programs for A175442, the canonical program `A175442.P4363524815792533233` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175442 has offset 1).

The definition of A175442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5980 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175442.P4363524815792533233

`A045344(A270189(n+2))-C(3, (n+1)²)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A175442

/-- `A045344(A270189(n+2))-C(3, (n+1)²)` -/
def P4363524815792533233.Spec : Prop :=
  ∀ n, P4363524815792533233.a n = A175442 (n + 1)

theorem P4363524815792533233.correct : P4363524815792533233.Spec := by
  intro n
  simp only [A175442, Nat.add_sub_cancel]

end A175442

/-! ## A175442.P11667787014345472421

`A045344(A270189(floor((n-1)/(n+2))+n+2))`
-/

namespace A175442.P11667787014345472421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A270189 (⌊((n : ℤ) - 1 : ℚ) / (n + 2 : ℚ)⌋ + (n : ℤ) + 2).toNat).toNat

end

end A175442.P11667787014345472421

namespace A175442

/-- `A045344(A270189(floor((n-1)/(n+2))+n+2))` -/
def P11667787014345472421.Spec : Prop :=
  ∀ n, P11667787014345472421.a n = A175442 (n + 1)

end A175442

/-! ## A175442.P9177916508120411827

`A045344(A270189(n+2)-A000007(n))`
-/

namespace A175442.P9177916508120411827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A270189 (n + 2) - A000007 n).toNat

end

end A175442.P9177916508120411827

namespace A175442

/-- `A045344(A270189(n+2)-A000007(n))` -/
def P9177916508120411827.Spec : Prop :=
  ∀ n, P9177916508120411827.a n = A175442 (n + 1)

end A175442

/-! ## A175442.P18312753485412585977

`A045344(A270189(n+2))%(A033664(3*n+1)+1)`
-/

namespace A175442.P18312753485412585977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045344 (A270189 (n + 2)).toNat) (A033664 (3 * n + 1) + 1)

end

end A175442.P18312753485412585977

namespace A175442

/-- `A045344(A270189(n+2))%(A033664(3*n+1)+1)` -/
def P18312753485412585977.Spec : Prop :=
  ∀ n, P18312753485412585977.a n = A175442 (n + 1)

end A175442

/-! ## A175442.P8147480595231298569

`p?[A064429(2*n)-A051698(n)]`
-/

namespace A175442.P8147480595231298569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (2 * n) - A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175442.P8147480595231298569

namespace A175442

/-- `p?[A064429(2*n)-A051698(n)]` -/
def P8147480595231298569.Spec : Prop :=
  ∀ n, P8147480595231298569.a n = A175442 (n + 1)

end A175442

/-! ## A175442.P10908084592960368591

`A045344(A270189(n+2))%A033664(A033664(3*n+1))`
-/

namespace A175442.P10908084592960368591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045344 (A270189 (n + 2)).toNat) (A033664 (A033664 (3 * n + 1)).toNat)

end

end A175442.P10908084592960368591

namespace A175442

/-- `A045344(A270189(n+2))%A033664(A033664(3*n+1))` -/
def P10908084592960368591.Spec : Prop :=
  ∀ n, P10908084592960368591.a n = A175442 (n + 1)

end A175442

/-! ## A175442.P10489824365272310385

`p?[A246166(A016789(n))]`
-/

namespace A175442.P10489824365272310385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246166 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175442.P10489824365272310385

namespace A175442

/-- `p?[A246166(A016789(n))]` -/
def P10489824365272310385.Spec : Prop :=
  ∀ n, P10489824365272310385.a n = A175442 (n + 1)

end A175442

/-! ## A175442.P17169041314879140186

`A181351(A101635(n+1))`
-/

namespace A175442.P17169041314879140186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181351 (A101635 (n + 1)).toNat

end

end A175442.P17169041314879140186

namespace A175442

/-- `A181351(A101635(n+1))` -/
def P17169041314879140186.Spec : Prop :=
  ∀ n, P17169041314879140186.a n = A175442 (n + 1)

end A175442

/-! ## A175442.P12952702906543072662

`A101635(n+1)%A000917(n)`
-/

namespace A175442.P12952702906543072662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101635 (n + 1)) (A000917 n)

end

end A175442.P12952702906543072662

namespace A175442

/-- `A101635(n+1)%A000917(n)` -/
def P12952702906543072662.Spec : Prop :=
  ∀ n, P12952702906543072662.a n = A175442 (n + 1)

end A175442

/-!
# A175443: a(1)=2, a(n+1) = smallest prime > a(n) such that a(n+1)+a(n) is multiple of 5.

The programs for A175443, there is no canonical definition to state claims against.
-/

/-! ## A175443.P7001743546950397117

`record[A003631(n+1)%A255832(n+1)]`
-/

namespace A175443.P7001743546950397117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003631 (n + 1)) (A255832 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175443.P7001743546950397117

/-! ## A175443.P6709326051847474529

`A308711(record[A269502(n+1)])`
-/

namespace A175443.P6709326051847474529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308711 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A175443.P6709326051847474529

/-!
# A175444: a(n)>a(n-1), a(n) = smallest prime such that a(n)+a(n-1) is multiple of m, a(1)=2, m=7.

The programs for A175444, there is no canonical definition to state claims against.
-/

/-! ## A175444.P1487441094656238658

`p?[xor(A147843(n), A304498(n))]`
-/

namespace A175444.P1487441094656238658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A147843 n) (A304498 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175444.P1487441094656238658

/-! ## A175444.P7778523638873927105

`∩[A040062(n+1), A304498(n)]`
-/

namespace A175444.P7778523638873927105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304498 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175444.P7778523638873927105

/-! ## A175444.P2826640993456006462

`∩[A040078(n+1), A304498(n)]`
-/

namespace A175444.P2826640993456006462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304498 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175444.P2826640993456006462

/-! ## A175444.P5135465778787147416

`∩[A103664(n+1), A304498(n)]`
-/

namespace A175444.P5135465778787147416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304498 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175444.P5135465778787147416

/-!
# A175446: a(n)>a(n-1), a(n) = smallest prime such that a(n)+a(n-1) is multiple of m, a(1)=2, m=11.

The programs for A175446, there is no canonical definition to state claims against.
-/

/-! ## A175446.P8628546393702337692

`A108659((n+2)^∑{p}[n+1, gcd(n, #)])`
-/

namespace A175446.P8628546393702337692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108659 ((n + 2) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p))

end

end A175446.P8628546393702337692

/-!
# A175447: a(n)>a(n-1), a(n) = smallest prime such that a(n)+a(n-1) is multiple of m, a(1)=2, m=13.

The programs for A175447, there is no canonical definition to state claims against.
-/

/-! ## A175447.P7750404122853108138

`A154755(A019455(n))`
-/

namespace A175447.P7750404122853108138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154755 (A019455 n).toNat

end

end A175447.P7750404122853108138

/-!
# A175448: a(n)>a(n-1), a(n) = smallest prime such that a(n)+a(n-1) is multiple of m, a(1)=2, m=15.

The programs for A175448, there is no canonical definition to state claims against.
-/

/-! ## A175448.P14772783517614558458

`p?[A346951(n+1)+A047221(n+1)]`
-/

namespace A175448.P14772783517614558458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346951 (n + 1) + A047221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175448.P14772783517614558458

/-! ## A175448.P15752254345033259062

`record[A177980(A177964(n+1))/A177984(n)]`
-/

namespace A175448.P15752254345033259062
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177980 (A177964 (n + 1)).toNat : ℚ) / (A177984 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175448.P15752254345033259062

/-! ## A175448.P9755342179422643539

`record[A177980(A177964(n+1))/A350512(n)]`
-/

namespace A175448.P9755342179422643539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177980 (A177964 (n + 1)).toNat : ℚ) / (A350512 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175448.P9755342179422643539

/-! ## A175448.P11952331179797213321

`record[A177980(A177964(n+1))/A181370(n+1)]`
-/

namespace A175448.P11952331179797213321
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177980 (A177964 (n + 1)).toNat : ℚ) / (A181370 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175448.P11952331179797213321

/-!
# A175449: a(n)>a(n-1), a(n) = smallest prime such that a(n)+a(n-1) is multiple of m, a(1)=2, m=17.

The programs for A175449, there is no canonical definition to state claims against.
-/

/-! ## A175449.P7670775384866185821

`A146315(A007913(2*n+1)+10*n)`
-/

namespace A175449.P7670775384866185821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146315 (A007913 (2 * n + 1) + (10 * n : ℤ)).toNat

end

end A175449.P7670775384866185821

/-!
# A175450: a(n)>a(n-1), a(n) = smallest prime greater than a(n-1) such that a(n)+a(n-1) is multiple of m, a(1)=2, m=19.

The programs for A175450, there is no canonical definition to state claims against.
-/

/-! ## A175450.P2732251982851602323

`∑[A008600(4*n+17)%A270429(10*n+6)]`
-/

namespace A175450.P2732251982851602323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008600 (4 * n + 17)) (A270429 (10 * n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175450.P2732251982851602323

/-!
# A175451: a(n)>a(n-1), a(n) = smallest prime such that a(n)+a(n-1) is multiple of m, a(1)=2, m=21.

The programs for A175451, there is no canonical definition to state claims against.
-/

/-! ## A175451.P13460060931728261973

`p?[A166544(n+1)*A283983(n)]`
-/

namespace A175451.P13460060931728261973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166544 (n + 1) * A283983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175451.P13460060931728261973

/-!
# A175453: a(1)=1. a(n) = sum a(k), where k, taken over the runs (of both 0's and 1's) in binary n, equals the length of each run.

The programs for A175453, there is no canonical definition to state claims against.
-/

/-! ## A175453.P15789612586974347647

`A070939(A175930(n+1))%(A000096(A000700(n)+8)+10)`
-/

namespace A175453.P15789612586974347647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A175930 (n + 1)).toNat) (A000096 (A000700 n + 8).toNat + 10)

end

end A175453.P15789612586974347647

/-! ## A175453.P5836171888146868874

`A070939(A175930(n+1))%A255422(∑[n+3])`
-/

namespace A175453.P5836171888146868874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A175930 (n + 1)).toNat) (A255422 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A175453.P5836171888146868874

/-! ## A175453.P12562565210656019229

`A070939(A175930(n+1))+A000007(A052313(n))`
-/

namespace A175453.P12562565210656019229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A175930 (n + 1)).toNat + A000007 (A052313 n).toNat

end

end A175453.P12562565210656019229

/-! ## A175453.P5847547196274488140

`A070939(A175930(n+1))+2%A166046(n)-2`
-/

namespace A175453.P5847547196274488140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A175930 (n + 1)).toNat + Int.tmod 2 (A166046 n) - 2

end

end A175453.P5847547196274488140

/-! ## A175453.P8091984532350388307

`A163817(A083251(n+1))+A070939(A175930(n+1))`
-/

namespace A175453.P8091984532350388307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163817 (A083251 (n + 1)).toNat + A070939 (A175930 (n + 1)).toNat

end

end A175453.P8091984532350388307

/-! ## A175453.P9475923676767749496

`A003415(A005385(n+1))*A070939(A175930(n+1))`
-/

namespace A175453.P9475923676767749496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A005385 (n + 1)).toNat * A070939 (A175930 (n + 1)).toNat

end

end A175453.P9475923676767749496

/-! ## A175453.P1375066290078206068

`A070939(A175930(n+1)%A201216(n+1))`
-/

namespace A175453.P1375066290078206068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A175930 (n + 1)) (A201216 (n + 1))).toNat

end

end A175453.P1375066290078206068

/-! ## A175453.P11759750074819690874

`A070939(A175930(n+1))+A000038(A005383(n+1))`
-/

namespace A175453.P11759750074819690874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A175930 (n + 1)).toNat + A000038 (A005383 (n + 1)).toNat

end

end A175453.P11759750074819690874

/-! ## A175453.P5166099001959807857

`A070939(A175930(n+1)-A141743(n))`
-/

namespace A175453.P5166099001959807857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A175930 (n + 1) - A141743 n).toNat

end

end A175453.P5166099001959807857

/-! ## A175453.P10476118579048530898

`A070939(or(A141743(n), A175930(n+1)))`
-/

namespace A175453.P10476118579048530898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.lor (A141743 n) (A175930 (n + 1))).toNat

end

end A175453.P10476118579048530898

/-! ## A175453.P509698764559079011

`A070939(xor(A141743(n), A175930(n+1)))`
-/

namespace A175453.P509698764559079011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.xor (A141743 n) (A175930 (n + 1))).toNat

end

end A175453.P509698764559079011

/-! ## A175453.P9237110096408519338

`A070939(or(A108244(n+1), A175930(n+1)))`
-/

namespace A175453.P9237110096408519338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.lor (A108244 (n + 1)) (A175930 (n + 1))).toNat

end

end A175453.P9237110096408519338

/-! ## A175453.P15734154425552173701

`A070939(xor(A108244(n+1), A175930(n+1)))`
-/

namespace A175453.P15734154425552173701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.xor (A108244 (n + 1)) (A175930 (n + 1))).toNat

end

end A175453.P15734154425552173701

/-! ## A175453.P13484625064417203333

`A070939(or(A175930(n+1), A178306(n)))`
-/

namespace A175453.P13484625064417203333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.lor (A175930 (n + 1)) (A178306 n)).toNat

end

end A175453.P13484625064417203333

/-! ## A175453.P8435576340396716182

`A070939(A175930(n+1)-A163817(n²))`
-/

namespace A175453.P8435576340396716182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A175930 (n + 1) - A163817 (n ^ 2)).toNat

end

end A175453.P8435576340396716182

/-!
# A175454: a(n) = number of divisors of n(n+1) that divide neither n nor n+1.

The programs for A175454, the canonical program `A175454.P11737271793219422854` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175454 has offset 1).

The definition of A175454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175454.P11737271793219422854

`(A000005(n+1)-1)*(A000005(n+2)-1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A175454

/-- `(A000005(n+1)-1)*(A000005(n+2)-1)` -/
def P11737271793219422854.Spec : Prop :=
  ∀ n, P11737271793219422854.a n = A175454 (n + 1)

theorem P11737271793219422854.correct : P11737271793219422854.Spec := by
  intro n
  simp only [A175454, Nat.add_sub_cancel]

end A175454

/-! ## A175454.P3997654297587047863

`(A000005(n+2)-1)*A032741(n+1)`
-/

namespace A175454.P3997654297587047863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 2) - 1) * A032741 (n + 1)

end

end A175454.P3997654297587047863

namespace A175454

/-- `(A000005(n+2)-1)*A032741(n+1)` -/
def P3997654297587047863.Spec : Prop :=
  ∀ n, P3997654297587047863.a n = A175454 (n + 1)

theorem P3997654297587047863.correct : P3997654297587047863.Spec := by
  intro n
  simp only [A175454, Nat.add_sub_cancel, A175454.P3997654297587047863.a, A175454.P11737271793219422854.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175454

/-! ## A175454.P8699953243359222956

`A338117(2*(n+1))*A338117(2*(n+2))`
-/

namespace A175454.P8699953243359222956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (2 * (n + 1)) * A338117 (2 * (n + 2))

end

end A175454.P8699953243359222956

namespace A175454

/-- `A338117(2*(n+1))*A338117(2*(n+2))` -/
def P8699953243359222956.Spec : Prop :=
  ∀ n, P8699953243359222956.a n = A175454 (n + 1)

end A175454

/-! ## A175454.P14809066084504142089

`A023443(A000005(n+2))*A032741(n+1)`
-/

namespace A175454.P14809066084504142089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A000005 (n + 2)).toNat * A032741 (n + 1)

end

end A175454.P14809066084504142089

namespace A175454

/-- `A023443(A000005(n+2))*A032741(n+1)` -/
def P14809066084504142089.Spec : Prop :=
  ∀ n, P14809066084504142089.a n = A175454 (n + 1)

end A175454

/-! ## A175454.P2387045946422818767

`(A294882(n+2)+A294881(n+2))*A032741(n+1)`
-/

namespace A175454.P2387045946422818767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A294882 (n + 2) + A294881 (n + 2)) * A032741 (n + 1)

end

end A175454.P2387045946422818767

namespace A175454

/-- `(A294882(n+2)+A294881(n+2))*A032741(n+1)` -/
def P2387045946422818767.Spec : Prop :=
  ∀ n, P2387045946422818767.a n = A175454 (n + 1)

end A175454

/-! ## A175454.P14242855083627894624

`(A294892(n+2)+A294891(n+2))*A032741(n+1)`
-/

namespace A175454.P14242855083627894624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A294892 (n + 2) + A294891 (n + 2)) * A032741 (n + 1)

end

end A175454.P14242855083627894624

namespace A175454

/-- `(A294892(n+2)+A294891(n+2))*A032741(n+1)` -/
def P14242855083627894624.Spec : Prop :=
  ∀ n, P14242855083627894624.a n = A175454 (n + 1)

end A175454

/-! ## A175454.P3195516542760843587

`A032741(n+1)*A296081(n+2)*A296082(n+2)`
-/

namespace A175454.P3195516542760843587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) * A296081 (n + 2) * A296082 (n + 2)

end

end A175454.P3195516542760843587

namespace A175454

/-- `A032741(n+1)*A296081(n+2)*A296082(n+2)` -/
def P3195516542760843587.Spec : Prop :=
  ∀ n, P3195516542760843587.a n = A175454 (n + 1)

end A175454

/-! ## A175454.P12784989569029145905

`A032741(n+1)*A325765(n+1)`
-/

namespace A175454.P12784989569029145905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) * A325765 (n + 1)

end

end A175454.P12784989569029145905

namespace A175454

/-- `A032741(n+1)*A325765(n+1)` -/
def P12784989569029145905.Spec : Prop :=
  ∀ n, P12784989569029145905.a n = A175454 (n + 1)

end A175454

/-! ## A175454.P15629308483508889902

`A032741(n+1)*A032741(n+2)`
-/

namespace A175454.P15629308483508889902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) * A032741 (n + 2)

end

end A175454.P15629308483508889902

namespace A175454

/-- `A032741(n+1)*A032741(n+2)` -/
def P15629308483508889902.Spec : Prop :=
  ∀ n, P15629308483508889902.a n = A175454 (n + 1)

theorem P15629308483508889902.correct : P15629308483508889902.Spec := by
  intro n
  simp only [A175454, Nat.add_sub_cancel, A175454.P15629308483508889902.a, A175454.P11737271793219422854.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175454

/-! ## A175454.P7372842653999140622

`(A320111(2*(n+1))-1)*A325765(n+1)`
-/

namespace A175454.P7372842653999140622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A320111 (2 * (n + 1)) - 1) * A325765 (n + 1)

end

end A175454.P7372842653999140622

namespace A175454

/-- `(A320111(2*(n+1))-1)*A325765(n+1)` -/
def P7372842653999140622.Spec : Prop :=
  ∀ n, P7372842653999140622.a n = A175454 (n + 1)

end A175454

/-!
# A175455: a(n) = H(n) * (lcm(1,2,...,n))^2, where H(n) = harmonic numbers (1/1 + 1/2 + ... + 1/n).

The programs for A175455, the canonical program `A175455.P17277564749251597446` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175455 has offset 1).

The definition of A175455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175455.P17277564749251597446

`A025529(n+1)*A003418(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A175455

/-- `A025529(n+1)*A003418(n+1)` -/
def P17277564749251597446.Spec : Prop :=
  ∀ n, P17277564749251597446.a n = A175455 (n + 1)

theorem P17277564749251597446.correct : P17277564749251597446.Spec := by
  intro n
  simp only [A175455, Nat.add_sub_cancel]

end A175455

/-! ## A175455.P9473772719621608332

`A001008(n+1)/A002805(n+1)*A003418(n+1)²`
-/

namespace A175455.P9473772719621608332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ) * (A003418 (n + 1) ^ 2 : ℚ)

end

end A175455.P9473772719621608332

namespace A175455

/-- `A001008(n+1)/A002805(n+1)*A003418(n+1)²` -/
def P9473772719621608332.Spec : Prop :=
  ∀ n, P9473772719621608332.a n = (A175455 (n + 1) : ℚ)

end A175455

/-! ## A175455.P7955352797318390756

`A000142(n+1)*A025529(n+1)/A025527(n+1)`
-/

namespace A175455.P7955352797318390756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) * A025529 (n + 1) : ℚ) / (A025527 (n + 1) : ℚ)

end

end A175455.P7955352797318390756

namespace A175455

/-- `A000142(n+1)*A025529(n+1)/A025527(n+1)` -/
def P7955352797318390756.Spec : Prop :=
  ∀ n, P7955352797318390756.a n = (A175455 (n + 1) : ℚ)

end A175455

/-! ## A175455.P2904032130213794676

`Δ[A173185(n)]*A025529(n+1)`
-/

namespace A175455.P2904032130213794676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A025529 (n + 1)

end

end A175455.P2904032130213794676

namespace A175455

/-- `Δ[A173185(n)]*A025529(n+1)` -/
def P2904032130213794676.Spec : Prop :=
  ∀ n, P2904032130213794676.a n = A175455 (n + 1)

end A175455

/-! ## A175455.P1397445036534826589

`Δ[A236856(n)]*A025529(n+1)`
-/

namespace A175455.P1397445036534826589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A025529 (n + 1)

end

end A175455.P1397445036534826589

namespace A175455

/-- `Δ[A236856(n)]*A025529(n+1)` -/
def P1397445036534826589.Spec : Prop :=
  ∀ n, P1397445036534826589.a n = A175455 (n + 1)

end A175455

/-! ## A175455.P4614998860846956998

`A110566(n+1)²*A064167(n+1)`
-/

namespace A175455.P4614998860846956998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110566 (n + 1) ^ 2 * A064167 (n + 1)

end

end A175455.P4614998860846956998

namespace A175455

/-- `A110566(n+1)²*A064167(n+1)` -/
def P4614998860846956998.Spec : Prop :=
  ∀ n, P4614998860846956998.a n = A175455 (n + 1)

end A175455

/-! ## A175455.P18075778417543525494

`(n+1)*A002944(n+1)*A025529(n+1)`
-/

namespace A175455.P18075778417543525494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002944 (n + 1) * A025529 (n + 1)

end

end A175455.P18075778417543525494

namespace A175455

/-- `(n+1)*A002944(n+1)*A025529(n+1)` -/
def P18075778417543525494.Spec : Prop :=
  ∀ n, P18075778417543525494.a n = A175455 (n + 1)

end A175455

/-! ## A175455.P15639183650541977752

`A025529(n+1)*A051451(A065515(n+1))`
-/

namespace A175455.P15639183650541977752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025529 (n + 1) * A051451 (A065515 (n + 1)).toNat

end

end A175455.P15639183650541977752

namespace A175455

/-- `A025529(n+1)*A051451(A065515(n+1))` -/
def P15639183650541977752.Spec : Prop :=
  ∀ n, P15639183650541977752.a n = A175455 (n + 1)

end A175455

/-! ## A175455.P11088069673069412211

`A001008(n+1)*A110566(n+1)*Δ[A173185(n)]`
-/

namespace A175455.P11088069673069412211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) * A110566 (n + 1) * (f1 (n + 1) - f1 n)

end

end A175455.P11088069673069412211

namespace A175455

/-- `A001008(n+1)*A110566(n+1)*Δ[A173185(n)]` -/
def P11088069673069412211.Spec : Prop :=
  ∀ n, P11088069673069412211.a n = A175455 (n + 1)

end A175455

/-! ## A175455.P11879443147367093826

`A001008(n+1)*A110566(n+1)*Δ[A236856(n)]`
-/

namespace A175455.P11879443147367093826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) * A110566 (n + 1) * (f1 (n + 1) - f1 n)

end

end A175455.P11879443147367093826

namespace A175455

/-- `A001008(n+1)*A110566(n+1)*Δ[A236856(n)]` -/
def P11879443147367093826.Spec : Prop :=
  ∀ n, P11879443147367093826.a n = A175455 (n + 1)

end A175455

/-! ## A175455.P10838273523983919396

`(A027457(n+1)+A003418(n+1))*A003418(n+1)`
-/

namespace A175455.P10838273523983919396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027457 (n + 1) + A003418 (n + 1)) * A003418 (n + 1)

end

end A175455.P10838273523983919396

namespace A175455

/-- `(A027457(n+1)+A003418(n+1))*A003418(n+1)` -/
def P10838273523983919396.Spec : Prop :=
  ∀ n, P10838273523983919396.a n = A175455 (n + 1)

end A175455

/-! ## A175455.P11231824415382373415

`(A025529(n+1)-A027457(n+1))*A025529(n+1)`
-/

namespace A175455.P11231824415382373415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) - A027457 (n + 1)) * A025529 (n + 1)

end

end A175455.P11231824415382373415

namespace A175455

/-- `(A025529(n+1)-A027457(n+1))*A025529(n+1)` -/
def P11231824415382373415.Spec : Prop :=
  ∀ n, P11231824415382373415.a n = A175455 (n + 1)

end A175455

/-! ## A175455.P14880270367014897404

`A001008(n+1)*A003418(n+1)*A110566(n+1)`
-/

namespace A175455.P14880270367014897404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) * A003418 (n + 1) * A110566 (n + 1)

end

end A175455.P14880270367014897404

namespace A175455

/-- `A001008(n+1)*A003418(n+1)*A110566(n+1)` -/
def P14880270367014897404.Spec : Prop :=
  ∀ n, P14880270367014897404.a n = A175455 (n + 1)

theorem P14880270367014897404.correct : P14880270367014897404.Spec := by
  intro n
  simp only [A175455, Nat.add_sub_cancel, A175455.P14880270367014897404.a, A175455.P17277564749251597446.a, A001008, A001008.P14452720140578332173.a, A003418, A003418.P6976248655893080794.a, A025529, A025529.P506781626872594642.a, A110566, A110566.P14389672270171223314.a, A000254, A000254.P9428527937712228311.a, A002805, A002805.P15380155363923936140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175455

/-! ## A175455.P3380543537269705499

`A002805(n+1)*A025529(n+1)*A110566(n+1)`
-/

namespace A175455.P3380543537269705499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) * A025529 (n + 1) * A110566 (n + 1)

end

end A175455.P3380543537269705499

namespace A175455

/-- `A002805(n+1)*A025529(n+1)*A110566(n+1)` -/
def P3380543537269705499.Spec : Prop :=
  ∀ n, P3380543537269705499.a n = A175455 (n + 1)

end A175455

/-! ## A175455.P17690270144643482730

`A001008(n+1)*A002805(n+1)*A110566(n+1)²`
-/

namespace A175455.P17690270144643482730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) * A002805 (n + 1) * A110566 (n + 1) ^ 2

end

end A175455.P17690270144643482730

namespace A175455

/-- `A001008(n+1)*A002805(n+1)*A110566(n+1)²` -/
def P17690270144643482730.Spec : Prop :=
  ∀ n, P17690270144643482730.a n = A175455 (n + 1)

end A175455

/-!
# A175456: (Digit sum of 5^n) mod n.

The programs for A175456, there is no canonical definition to state claims against.
-/

/-! ## A175456.P16171206341777130325

`A066001(n+1)%(n+1)`
-/

namespace A175456.P16171206341777130325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066001 (n + 1)) (n + 1 : ℤ)

end

end A175456.P16171206341777130325

/-! ## A175456.P12636581417965698539

`∑{digits}[5^(n+1), #]%(n+1)`
-/

namespace A175456.P12636581417965698539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum % (n + 1)

end

end A175456.P12636581417965698539

/-! ## A175456.P13031698367102934464

`log2(∏{digits}[5*a(n-1), 2^#])%(n+1)` with `a(0)=5`
-/

namespace A175456.P13031698367102934464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ))) (n + 1 : ℤ)

end

end A175456.P13031698367102934464

/-!
# A175457: (Digit sum of 6^n) mod n.

The programs for A175457, the canonical program `A175457.P18245557606766183687` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175457 has offset 1).

The definition of A175457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175457.P18245557606766183687

`A066002(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A175457

/-- `A066002(n+1)%(n+1)` -/
def P18245557606766183687.Spec : Prop :=
  ∀ n, P18245557606766183687.a n = A175457 (n + 1)

theorem P18245557606766183687.correct : P18245557606766183687.Spec := by
  intro n
  simp only [A175457, Nat.add_sub_cancel]

end A175457

/-! ## A175457.P5966834309368965713

`∑{digits}[6^(n+1), #]%(n+1)`
-/

namespace A175457.P5966834309368965713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum % (n + 1)

end

end A175457.P5966834309368965713

namespace A175457

/-- `∑{digits}[6^(n+1), #]%(n+1)` -/
def P5966834309368965713.Spec : Prop :=
  ∀ n, (P5966834309368965713.a n : ℤ) = A175457 (n + 1)

end A175457

/-! ## A175457.P13133575376652576727

`A000027(∑{digits}[6*a(n-1), #])%(n+1)` with `a(0)=6`
-/

namespace A175457.P13133575376652576727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum) (n + 1 : ℤ)

end

end A175457.P13133575376652576727

namespace A175457

/-- `A000027(∑{digits}[6*a(n-1), #])%(n+1)` -/
def P13133575376652576727.Spec : Prop :=
  ∀ n, P13133575376652576727.a n = A175457 (n + 1)

end A175457

/-! ## A175457.P6458505177191103862

`log2(∏{digits}[6*a(n-1), 2^#])%(n+1)` with `a(0)=6`
-/

namespace A175457.P6458505177191103862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ))) (n + 1 : ℤ)

end

end A175457.P6458505177191103862

namespace A175457

/-- `log2(∏{digits}[6*a(n-1), 2^#])%(n+1)` -/
def P6458505177191103862.Spec : Prop :=
  ∀ n, P6458505177191103862.a n = A175457 (n + 1)

end A175457

/-!
# A175458: a(0)=0. a(n) = a(n-1) - n, if a(n-1) - n = a (positive) prime. Otherwise a(n) = a(n-1) + n.

The programs for A175458, there is no canonical definition to state claims against.
-/

/-! ## A175458.P8910276134361629477

`∑[n*A057077(A056514(n))]`
-/

namespace A175458.P8910276134361629477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057077 (A056514 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175458.P8910276134361629477

/-! ## A175458.P2155782368217017968

`∑[A071669(n)/A057077(A056514(n))]`
-/

namespace A175458.P2155782368217017968
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071669 n : ℚ) / (A057077 (A056514 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175458.P2155782368217017968

/-! ## A175458.P4614548920663016649

`∑[A347520(n)/A057077(A056514(n))]`
-/

namespace A175458.P4614548920663016649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347520 n : ℚ) / (A057077 (A056514 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175458.P4614548920663016649

/-! ## A175458.P14339342044364452227

`∑[n*A009001(A163088(n))]`
-/

namespace A175458.P14339342044364452227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A009001 (A163088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175458.P14339342044364452227

/-! ## A175458.P14598332855381162353

`∑[A057077(A163088(n))*A071669(n)]`
-/

namespace A175458.P14598332855381162353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A163088 n).toNat * A071669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175458.P14598332855381162353

/-!
# A175459: a(1)=4. a(n) = a(n-1) + n, if a(n-1)+n is composite. Otherwise a(n) = a(n-1)*n.

The programs for A175459, there is no canonical definition to state claims against.
-/

/-! ## A175459.P3017608025442763760

`A129344(2*(n+1))+A049615(A007228(n))`
-/

namespace A175459.P3017608025442763760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129344 (2 * (n + 1)) + A049615 (A007228 n).toNat

end

end A175459.P3017608025442763760

/-!
# A175461: Semiprimes of form 8n+5.

The programs for A175461, the canonical program `A175461.P7243031227193031304` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175461 has offset 1).

The definition of A175461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175461.P1021050428264551927

`A004770(A175463(n+1)+1)`
-/

namespace A175461.P1021050428264551927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (A175463 (n + 1) + 1).toNat

end

end A175461.P1021050428264551927

namespace A175461

/-- `A004770(A175463(n+1)+1)` -/
def P1021050428264551927.Spec : Prop :=
  ∀ n, P1021050428264551927.a n = A175461 (n + 1)

end A175461

/-! ## A175461.P9783883925517374771

`filter[A004770(n+1), A064911(#)]`
-/

namespace A175461.P9783883925517374771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A175461.P9783883925517374771

namespace A175461

/-- `filter[A004770(n+1), A064911(#)]` -/
def P9783883925517374771.Spec : Prop :=
  ∀ n, P9783883925517374771.a n = A175461 (n + 1)

end A175461

/-! ## A175461.P6008461237561313325

`filter[A055045(n+1), A064911(#)]`
-/

namespace A175461.P6008461237561313325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A175461.P6008461237561313325

namespace A175461

/-- `filter[A055045(n+1), A064911(#)]` -/
def P6008461237561313325.Spec : Prop :=
  ∀ n, P6008461237561313325.a n = A175461 (n + 1)

end A175461

/-! ## A175461.P17527104403699377973

`filter[A004770(n+1), A280710(#)]`
-/

namespace A175461.P17527104403699377973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A175461.P17527104403699377973

namespace A175461

/-- `filter[A004770(n+1), A280710(#)]` -/
def P17527104403699377973.Spec : Prop :=
  ∀ n, P17527104403699377973.a n = A175461 (n + 1)

end A175461

/-! ## A175461.P11928098775531566408

`filter[A047608(n+1), A280710(#)]`
-/

namespace A175461.P11928098775531566408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A175461.P11928098775531566408

namespace A175461

/-- `filter[A047608(n+1), A280710(#)]` -/
def P11928098775531566408.Spec : Prop :=
  ∀ n, P11928098775531566408.a n = A175461 (n + 1)

end A175461

/-! ## A175461.P13360107294284223163

`filter[A055045(n+1), A280710(#)]`
-/

namespace A175461.P13360107294284223163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A175461.P13360107294284223163

namespace A175461

/-- `filter[A055045(n+1), A280710(#)]` -/
def P13360107294284223163.Spec : Prop :=
  ∀ n, P13360107294284223163.a n = A175461 (n + 1)

end A175461

/-! ## A175461.P7243031227193031304

`filter[A004770(n+1), A340370(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A175461

/-- `filter[A004770(n+1), A340370(#)]` -/
def P7243031227193031304.Spec : Prop :=
  ∀ n, P7243031227193031304.a n = A175461 (n + 1)

theorem P7243031227193031304.correct : P7243031227193031304.Spec := by
  intro n
  simp only [A175461, Nat.add_sub_cancel]

end A175461

/-! ## A175461.P8833244420510664455

`filter[A004770(n+1), A353477(#)]`
-/

namespace A175461.P8833244420510664455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353477 (f1 j).toNat = 1) n)

end

end A175461.P8833244420510664455

namespace A175461

/-- `filter[A004770(n+1), A353477(#)]` -/
def P8833244420510664455.Spec : Prop :=
  ∀ n, P8833244420510664455.a n = A175461 (n + 1)

end A175461

/-! ## A175461.P4189023979212175242

`filter[A004770(n+1), A353480(#)]`
-/

namespace A175461.P4189023979212175242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A175461.P4189023979212175242

namespace A175461

/-- `filter[A004770(n+1), A353480(#)]` -/
def P4189023979212175242.Spec : Prop :=
  ∀ n, P4189023979212175242.a n = A175461 (n + 1)

end A175461

/-! ## A175461.P8713722126137545437

`filter[A004770(n+1), A353481(#)]`
-/

namespace A175461.P8713722126137545437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A175461.P8713722126137545437

namespace A175461

/-- `filter[A004770(n+1), A353481(#)]` -/
def P8713722126137545437.Spec : Prop :=
  ∀ n, P8713722126137545437.a n = A175461 (n + 1)

end A175461

/-! ## A175461.P12351563466149587633

`filter[A004770(n+1), A353482(#)]`
-/

namespace A175461.P12351563466149587633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353482 (f1 j).toNat = 1) n)

end

end A175461.P12351563466149587633

namespace A175461

/-- `filter[A004770(n+1), A353482(#)]` -/
def P12351563466149587633.Spec : Prop :=
  ∀ n, P12351563466149587633.a n = A175461 (n + 1)

end A175461

/-! ## A175461.P5288419948328103940

`filter[A008576(n+1), A353477(#)]`
-/

namespace A175461.P5288419948328103940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353477 (f1 j).toNat = 1) n)

end

end A175461.P5288419948328103940

namespace A175461

/-- `filter[A008576(n+1), A353477(#)]` -/
def P5288419948328103940.Spec : Prop :=
  ∀ n, P5288419948328103940.a n = A175461 (n + 1)

end A175461

/-! ## A175461.P15310746432528713980

`filter[A004770(n+1), A359828(#)]`
-/

namespace A175461.P15310746432528713980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A175461.P15310746432528713980

namespace A175461

/-- `filter[A004770(n+1), A359828(#)]` -/
def P15310746432528713980.Spec : Prop :=
  ∀ n, P15310746432528713980.a n = A175461 (n + 1)

end A175461

/-! ## A175461.P3107099047256187301

`filter[A047436(n+1), A353477(#)]`
-/

namespace A175461.P3107099047256187301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353477 (f1 j).toNat = 1) n)

end

end A175461.P3107099047256187301

namespace A175461

/-- `filter[A047436(n+1), A353477(#)]` -/
def P3107099047256187301.Spec : Prop :=
  ∀ n, P3107099047256187301.a n = A175461 (n + 1)

end A175461

/-! ## A175461.P6204469901551308361

`filter[A047436(n+1), A353480(#)]`
-/

namespace A175461.P6204469901551308361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A175461.P6204469901551308361

namespace A175461

/-- `filter[A047436(n+1), A353480(#)]` -/
def P6204469901551308361.Spec : Prop :=
  ∀ n, P6204469901551308361.a n = A175461 (n + 1)

end A175461

/-! ## A175461.P17784973743573488530

`filter[A047436(n+1), A353481(#)]`
-/

namespace A175461.P17784973743573488530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A175461.P17784973743573488530

namespace A175461

/-- `filter[A047436(n+1), A353481(#)]` -/
def P17784973743573488530.Spec : Prop :=
  ∀ n, P17784973743573488530.a n = A175461 (n + 1)

end A175461

/-! ## A175461.P5797420702946940243

`filter[A047436(n+1), A353482(#)]`
-/

namespace A175461.P5797420702946940243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353482 (f1 j).toNat = 1) n)

end

end A175461.P5797420702946940243

namespace A175461

/-- `filter[A047436(n+1), A353482(#)]` -/
def P5797420702946940243.Spec : Prop :=
  ∀ n, P5797420702946940243.a n = A175461 (n + 1)

end A175461

/-! ## A175461.P11386608071421049466

`filter[A047550(n+1), A353477(#)]`
-/

namespace A175461.P11386608071421049466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353477 (f1 j).toNat = 1) n)

end

end A175461.P11386608071421049466

namespace A175461

/-- `filter[A047550(n+1), A353477(#)]` -/
def P11386608071421049466.Spec : Prop :=
  ∀ n, P11386608071421049466.a n = A175461 (n + 1)

end A175461

/-! ## A175461.P12350627267869073165

`filter[A047550(n+1), A353482(#)]`
-/

namespace A175461.P12350627267869073165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353482 (f1 j).toNat = 1) n)

end

end A175461.P12350627267869073165

namespace A175461

/-- `filter[A047550(n+1), A353482(#)]` -/
def P12350627267869073165.Spec : Prop :=
  ∀ n, P12350627267869073165.a n = A175461 (n + 1)

end A175461

/-! ## A175461.P14901324106356637864

`filter[A047608(n+1), A353477(#)]`
-/

namespace A175461.P14901324106356637864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353477 (f1 j).toNat = 1) n)

end

end A175461.P14901324106356637864

namespace A175461

/-- `filter[A047608(n+1), A353477(#)]` -/
def P14901324106356637864.Spec : Prop :=
  ∀ n, P14901324106356637864.a n = A175461 (n + 1)

end A175461

/-!
# A175462: Number of divisors of integers of the form 5 + 8n.

The programs for A175462, the canonical program `A175462.P10194132088798794636` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175462 has offset 0).

The definition of A175462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175462.P10194132088798794636

`A000005(5+8*n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A175462

/-- `A000005(5+8*n)` -/
def P10194132088798794636.Spec : Prop :=
  ∀ n, P10194132088798794636.a n = A175462 n

theorem P10194132088798794636.correct : P10194132088798794636.Spec := by
  intro n
  simp only [A175462]

end A175462

/-! ## A175462.P15349601886700145932

`∏{e}[Δ[(2*n)²]+1, #+1]`
-/

namespace A175462.P15349601886700145932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A175462.P15349601886700145932

namespace A175462

/-- `∏{e}[Δ[(2*n)²]+1, #+1]` -/
def P15349601886700145932.Spec : Prop :=
  ∀ n, (P15349601886700145932.a n : ℤ) = A175462 n

end A175462

/-! ## A175462.P4584759481043002655

`lcm(2, A000005(A004770(n+1)))`
-/

namespace A175462.P4584759481043002655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000005 (A004770 (n + 1)).toNat)

end

end A175462.P4584759481043002655

namespace A175462

/-- `lcm(2, A000005(A004770(n+1)))` -/
def P4584759481043002655.Spec : Prop :=
  ∀ n, (P4584759481043002655.a n : ℤ) = A175462 n

end A175462

/-! ## A175462.P8808811380652441449

`A052928(A000005(record[lcm(4, n+1)]+1))`
-/

namespace A175462.P8808811380652441449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A175462.P8808811380652441449

namespace A175462

/-- `A052928(A000005(record[lcm(4, n+1)]+1))` -/
def P8808811380652441449.Spec : Prop :=
  ∀ n, P8808811380652441449.a n = A175462 n

end A175462

/-! ## A175462.P11691055884859752621

`A359240(2*(n+1))+A359227(2*(n+1))`
-/

namespace A175462.P11691055884859752621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359240 (2 * (n + 1)) + A359227 (2 * (n + 1))

end

end A175462.P11691055884859752621

namespace A175462

/-- `A359240(2*(n+1))+A359227(2*(n+1))` -/
def P11691055884859752621.Spec : Prop :=
  ∀ n, P11691055884859752621.a n = A175462 n

end A175462

/-! ## A175462.P2196910248682059914

`A320111(A008574(2*n+1)+1)`
-/

namespace A175462.P2196910248682059914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A008574 (2 * n + 1) + 1).toNat

end

end A175462.P2196910248682059914

namespace A175462

/-- `A320111(A008574(2*n+1)+1)` -/
def P2196910248682059914.Spec : Prop :=
  ∀ n, P2196910248682059914.a n = A175462 n

end A175462

/-! ## A175462.P10820825134526125061

`A320111(A016825(2*n+1)-1)`
-/

namespace A175462.P10820825134526125061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A016825 (2 * n + 1) - 1).toNat

end

end A175462.P10820825134526125061

namespace A175462

/-- `A320111(A016825(2*n+1)-1)` -/
def P10820825134526125061.Spec : Prop :=
  ∀ n, P10820825134526125061.a n = A175462 n

end A175462

/-! ## A175462.P7307840896837613679

`A099774(4*n+3)`
-/

namespace A175462.P7307840896837613679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (4 * n + 3)

end

end A175462.P7307840896837613679

namespace A175462

/-- `A099774(4*n+3)` -/
def P7307840896837613679.Spec : Prop :=
  ∀ n, P7307840896837613679.a n = A175462 n

end A175462

/-! ## A175462.P4691774680949552824

`2*A193773(A008574(n)+2)`
-/

namespace A175462.P4691774680949552824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193773 (A008574 n + 2).toNat

end

end A175462.P4691774680949552824

namespace A175462

/-- `2*A193773(A008574(n)+2)` -/
def P4691774680949552824.Spec : Prop :=
  ∀ n, P4691774680949552824.a n = A175462 n

end A175462

/-! ## A175462.P9078109899799980717

`A095374(A016873(n)-n)+1`
-/

namespace A175462.P9078109899799980717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095374 (A016873 n - (n : ℤ)).toNat + 1

end

end A175462.P9078109899799980717

namespace A175462

/-- `A095374(A016873(n)-n)+1` -/
def P9078109899799980717.Spec : Prop :=
  ∀ n, P9078109899799980717.a n = A175462 n

end A175462

/-! ## A175462.P15951851202904705860

`A001227(8*n+5)`
-/

namespace A175462.P15951851202904705860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (8 * n + 5)

end

end A175462.P15951851202904705860

namespace A175462

/-- `A001227(8*n+5)` -/
def P15951851202904705860.Spec : Prop :=
  ∀ n, P15951851202904705860.a n = A175462 n

end A175462

/-! ## A175462.P14995672693212724351

`A048272(8*n+5)`
-/

namespace A175462.P14995672693212724351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (8 * n + 5)

end

end A175462.P14995672693212724351

namespace A175462

/-- `A048272(8*n+5)` -/
def P14995672693212724351.Spec : Prop :=
  ∀ n, P14995672693212724351.a n = A175462 n

end A175462

/-! ## A175462.P618928766430505556

`A112329(8*n+5)`
-/

namespace A175462.P618928766430505556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (8 * n + 5)

end

end A175462.P618928766430505556

namespace A175462

/-- `A112329(8*n+5)` -/
def P618928766430505556.Spec : Prop :=
  ∀ n, P618928766430505556.a n = A175462 n

end A175462

/-! ## A175462.P4785961463562381399

`A132881(4*(2*n+1)+1)`
-/

namespace A175462.P4785961463562381399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132881 (4 * (2 * n + 1) + 1)

end

end A175462.P4785961463562381399

namespace A175462

/-- `A132881(4*(2*n+1)+1)` -/
def P4785961463562381399.Spec : Prop :=
  ∀ n, P4785961463562381399.a n = A175462 n

end A175462

/-! ## A175462.P2308022516463582007

`A161841(6*n+5+2*n)`
-/

namespace A175462.P2308022516463582007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161841 (6 * n + 5 + 2 * n)

end

end A175462.P2308022516463582007

namespace A175462

/-- `A161841(6*n+5+2*n)` -/
def P2308022516463582007.Spec : Prop :=
  ∀ n, P2308022516463582007.a n = A175462 n

end A175462

/-! ## A175462.P12399362615391046835

`A228441(A017113(n)+1)`
-/

namespace A175462.P12399362615391046835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228441 (A017113 n + 1).toNat

end

end A175462.P12399362615391046835

namespace A175462

/-- `A228441(A017113(n)+1)` -/
def P12399362615391046835.Spec : Prop :=
  ∀ n, P12399362615391046835.a n = A175462 n

end A175462

/-! ## A175462.P18267712820030253100

`A348952(A051062(n)+2)`
-/

namespace A175462.P18267712820030253100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348952 (A051062 n + 2).toNat

end

end A175462.P18267712820030253100

namespace A175462

/-- `A348952(A051062(n)+2)` -/
def P18267712820030253100.Spec : Prop :=
  ∀ n, P18267712820030253100.a n = A175462 n

end A175462

/-! ## A175462.P6445952939243116684

`A069283(A017113(n)+1)+1`
-/

namespace A175462.P6445952939243116684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A017113 n + 1).toNat + 1

end

end A175462.P6445952939243116684

namespace A175462

/-- `A069283(A017113(n)+1)+1` -/
def P6445952939243116684.Spec : Prop :=
  ∀ n, P6445952939243116684.a n = A175462 n

end A175462

/-! ## A175462.P1802478103450122619

`A070824(A017137(n)-1)+2`
-/

namespace A175462.P1802478103450122619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A017137 n - 1).toNat + 2

end

end A175462.P1802478103450122619

namespace A175462

/-- `A070824(A017137(n)-1)+2` -/
def P1802478103450122619.Spec : Prop :=
  ∀ n, P1802478103450122619.a n = A175462 n

end A175462

/-! ## A175462.P418101759566454465

`A069735(A008574(2*n+1)+1)`
-/

namespace A175462.P418101759566454465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069735 (A008574 (2 * n + 1) + 1).toNat

end

end A175462.P418101759566454465

namespace A175462

/-- `A069735(A008574(2*n+1)+1)` -/
def P418101759566454465.Spec : Prop :=
  ∀ n, P418101759566454465.a n = A175462 n

end A175462

/-!
# A175463: Numbers k such that 8*k + 5 is semiprime.

The programs for A175463, the canonical program `A175463.P6343770137382140270` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175463 has offset 1).

The definition of A175463 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175461, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A175463.P6343770137382140270

`(A175461(n+1)-5)/8`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A175463

/-- `(A175461(n+1)-5)/8` -/
def P6343770137382140270.Spec : Prop :=
  ∀ n, P6343770137382140270.a n = (A175463 (n + 1) : ℚ)

end A175463

/-! ## A175463.P14566411079128291735

`eq[2, A001222(8*n+5)]`
-/

namespace A175463.P14566411079128291735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175463.P14566411079128291735

namespace A175463

/-- `eq[2, A001222(8*n+5)]` -/
def P14566411079128291735.Spec : Prop :=
  ∀ n, (P14566411079128291735.a n : ℤ) = A175463 (n + 1)

end A175463

/-! ## A175463.P548705930192397630

`eq[2, ∑{e}[8*n+5, #]]`
-/

namespace A175463.P548705930192397630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175463.P548705930192397630

namespace A175463

/-- `eq[2, ∑{e}[8*n+5, #]]` -/
def P548705930192397630.Spec : Prop :=
  ∀ n, (P548705930192397630.a n : ℤ) = A175463 (n + 1)

end A175463

/-! ## A175463.P15185974882912291143

`eq[1, A281116(8*n+5)]`
-/

namespace A175463.P15185974882912291143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (8 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175463.P15185974882912291143

namespace A175463

/-- `eq[1, A281116(8*n+5)]` -/
def P15185974882912291143.Spec : Prop :=
  ∀ n, (P15185974882912291143.a n : ℤ) = A175463 (n + 1)

end A175463

/-! ## A175463.P18048990860876036163

`eq[2, A046645(9*n+5-n)]`
-/

namespace A175463.P18048990860876036163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (9 * n + 5 - n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175463.P18048990860876036163

namespace A175463

/-- `eq[2, A046645(9*n+5-n)]` -/
def P18048990860876036163.Spec : Prop :=
  ∀ n, (P18048990860876036163.a n : ℤ) = A175463 (n + 1)

end A175463

/-! ## A175463.P18143386320638154253

`floor(A175461(n+1)/8)`
-/

namespace A175463.P18143386320638154253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175461 (n + 1) : ℚ) / 8⌋

end

end A175463.P18143386320638154253

namespace A175463

/-- `floor(A175461(n+1)/8)` -/
def P18143386320638154253.Spec : Prop :=
  ∀ n, P18143386320638154253.a n = A175463 (n + 1)

end A175463

/-! ## A175463.P18304466660822461055

`eq[3, A181796(8*n+5)]`
-/

namespace A175463.P18304466660822461055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181796 (8 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A175463.P18304466660822461055

namespace A175463

/-- `eq[3, A181796(8*n+5)]` -/
def P18304466660822461055.Spec : Prop :=
  ∀ n, (P18304466660822461055.a n : ℤ) = A175463 (n + 1)

end A175463

/-! ## A175463.P9222635323311973053

`A132292(A175461(n+1))`
-/

namespace A175463.P9222635323311973053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A175461 (n + 1)).toNat

end

end A175463.P9222635323311973053

namespace A175463

/-- `A132292(A175461(n+1))` -/
def P9222635323311973053.Spec : Prop :=
  ∀ n, P9222635323311973053.a n = A175463 (n + 1)

end A175463

/-!
# A175465: a(n) is the number of elements in the largest set of same-sized run-lengths (of either 0's or 1's) in the binary representation of n.

The programs for A175465, the canonical program `A175465.P11451667669696796713` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175465 has offset 1).

The definition of A175465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175465.P11451667669696796713

`A051903(A382255(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A175465

/-- `A051903(A382255(n+1))` -/
def P11451667669696796713.Spec : Prop :=
  ∀ n, P11451667669696796713.a n = A175465 (n + 1)

theorem P11451667669696796713.correct : P11451667669696796713.Spec := by
  intro n
  simp only [A175465, Nat.add_sub_cancel]

end A175465

/-! ## A175465.P18122541378937201824

`A091050(A002145(n+1)*A382255(n+1))`
-/

namespace A175465.P18122541378937201824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (A002145 (n + 1) * A382255 (n + 1)).toNat

end

end A175465.P18122541378937201824

namespace A175465

/-- `A091050(A002145(n+1)*A382255(n+1))` -/
def P18122541378937201824.Spec : Prop :=
  ∀ n, P18122541378937201824.a n = A175465 (n + 1)

end A175465

/-! ## A175465.P9803030487152687287

`A091050(A382255(n+1))%A210955(2*n+5)`
-/

namespace A175465.P9803030487152687287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091050 (A382255 (n + 1)).toNat) (A210955 (2 * n + 5))

end

end A175465.P9803030487152687287

namespace A175465

/-- `A091050(A382255(n+1))%A210955(2*n+5)` -/
def P9803030487152687287.Spec : Prop :=
  ∀ n, P9803030487152687287.a n = A175465 (n + 1)

end A175465

/-! ## A175465.P16671776739216848809

`A091050(A382255(n+1)%A251962(3*n+2))`
-/

namespace A175465.P16671776739216848809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (Int.tmod (A382255 (n + 1)) (A251962 (3 * n + 2))).toNat

end

end A175465.P16671776739216848809

namespace A175465

/-- `A091050(A382255(n+1)%A251962(3*n+2))` -/
def P16671776739216848809.Spec : Prop :=
  ∀ n, P16671776739216848809.a n = A175465 (n + 1)

end A175465

/-!
# A175466: Table read by antidiagonals: a(m,n) = the largest positive integer occurring, when written in binary, as a substring in both binary m and binary n.

The programs for A175466, there is no canonical definition to state claims against.
-/

/-! ## A175466.P12786186617791797916

`A082858(lt[A326454(n), A157156(n)])`
-/

namespace A175466.P12786186617791797916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326454 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157156 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A175466.P12786186617791797916

/-! ## A175466.P12576499873910402842

`A082858(lt[A105705(n), A055921(n)²])`
-/

namespace A175466.P12576499873910402842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055921 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A175466.P12576499873910402842

/-! ## A175466.P13731314543980978160

`A082858(lt[A326454(n), A116469(n+1)])`
-/

namespace A175466.P13731314543980978160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326454 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A175466.P13731314543980978160

/-! ## A175466.P3888049353812538836

`A082858(lt[1, A376935(n)])`
-/

namespace A175466.P3888049353812538836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A175466.P3888049353812538836

/-! ## A175466.P7705360257953260881

`gcd(A211400(n+1), A300119(n+1))`
-/

namespace A175466.P7705360257953260881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211400 (n + 1)) (A300119 (n + 1))

end

end A175466.P7705360257953260881

/-!
# A175467: Write n in binary. Place a 0 between every pair of adjacent 1's, and place a 1 between every pair of adjacent 0's. a(n) is the decimal equivalent of the result.

The programs for A175467, there is no canonical definition to state claims against.
-/

/-! ## A175467.P12578135115035651563

`A090079(A374625(n+1))`
-/

namespace A175467.P12578135115035651563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (A374625 (n + 1)).toNat

end

end A175467.P12578135115035651563

/-! ## A175467.P12723343650651421483

`A090078(A375156(n+1))`
-/

namespace A175467.P12723343650651421483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090078 (A375156 (n + 1)).toNat

end

end A175467.P12723343650651421483

/-! ## A175467.P5209357882204691076

`A090079(xor(1, A179888(n+1)))`
-/

namespace A175467.P5209357882204691076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (Int.xor 1 (A179888 (n + 1))).toNat

end

end A175467.P5209357882204691076

/-! ## A175467.P5551221715245216992

`A090079(floor(A179888(n+1)/2))`
-/

namespace A175467.P5551221715245216992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 ⌊(A179888 (n + 1) : ℚ) / 2⌋.toNat

end

end A175467.P5551221715245216992

/-! ## A175467.P15491965832391441993

`A000975(∑[A034947(A010078(n+1))])`
-/

namespace A175467.P15491965832391441993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A010078 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175467.P15491965832391441993

/-! ## A175467.P14427332543203131715

`A000975(∑[A034947(A080079(n+1))])`
-/

namespace A175467.P14427332543203131715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A080079 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A175467.P14427332543203131715

/-! ## A175467.P17477001967676280139

`A090079(A147992(n+1)-A000035(n))`
-/

namespace A175467.P17477001967676280139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (A147992 (n + 1) - A000035 n).toNat

end

end A175467.P17477001967676280139

/-! ## A175467.P7948223368233631561

`A090079(A000034(n)*A147992(n+1))`
-/

namespace A175467.P7948223368233631561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (A000034 n * A147992 (n + 1)).toNat

end

end A175467.P7948223368233631561

/-! ## A175467.P10528940951526698566

`A090079(xor(A000035(n), A147992(n+1)))`
-/

namespace A175467.P10528940951526698566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (Int.xor (A000035 n) (A147992 (n + 1))).toNat

end

end A175467.P10528940951526698566

/-! ## A175467.P16649990126663730206

`A090079(A147992(n+1)+1-A000034(n))`
-/

namespace A175467.P16649990126663730206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (A147992 (n + 1) + (1 - A000034 n)).toNat

end

end A175467.P16649990126663730206

/-!
# A175468: Those positive integers n such that n = (2^m +1)*k, each for some positive integer m, and k < 2^m.

The programs for A175468, there is no canonical definition to state claims against.
-/

/-! ## A175468.P6704088893508219040

`lt[n*A327187(n), n]`
-/

namespace A175468.P6704088893508219040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327187 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A175468.P6704088893508219040

/-! ## A175468.P6206298074826669870

`lt[n*A327195(n), n]`
-/

namespace A175468.P6206298074826669870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327195 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A175468.P6206298074826669870

/-! ## A175468.P780884459678775447

`lt[A327187(n+1), 1]+1`
-/

namespace A175468.P780884459678775447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327187 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A175468.P780884459678775447

/-! ## A175468.P4143475644555472013

`lt[A327195(n+1), 1]+1`
-/

namespace A175468.P4143475644555472013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327195 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A175468.P4143475644555472013

/-! ## A175468.P15492226273256862339

`eq[A000007(n), A327187(n)]`
-/

namespace A175468.P15492226273256862339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175468.P15492226273256862339

/-! ## A175468.P13151667792178435663

`eq[A000007(n), A327191(n)]`
-/

namespace A175468.P13151667792178435663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175468.P13151667792178435663

/-! ## A175468.P11575319852489686258

`eq[A000007(n), A327195(n)]`
-/

namespace A175468.P11575319852489686258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175468.P11575319852489686258

/-! ## A175468.P7749171471351972309

`eq[A000038(n), A327187(n)]`
-/

namespace A175468.P7749171471351972309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175468.P7749171471351972309

/-! ## A175468.P7207256411716168387

`eq[A000038(n), A327191(n)]`
-/

namespace A175468.P7207256411716168387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175468.P7207256411716168387

/-! ## A175468.P3205569193944362025

`eq[A000038(n), A327195(n)]`
-/

namespace A175468.P3205569193944362025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175468.P3205569193944362025

/-! ## A175468.P6797480445009635732

`eq[A130706(n), A327187(n)]`
-/

namespace A175468.P6797480445009635732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175468.P6797480445009635732

/-! ## A175468.P5531209122313899384

`eq[A130706(n), A327191(n)]`
-/

namespace A175468.P5531209122313899384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175468.P5531209122313899384

/-! ## A175468.P3433562096124627632

`eq[A130706(n), A327195(n)]`
-/

namespace A175468.P3433562096124627632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175468.P3433562096124627632

/-! ## A175468.P442278374217080915

`eq[A166926(n), A327187(n)]`
-/

namespace A175468.P442278374217080915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175468.P442278374217080915

/-! ## A175468.P512274497928311745

`eq[A166926(n), A327191(n)]`
-/

namespace A175468.P512274497928311745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175468.P512274497928311745

/-! ## A175468.P17816462911357312094

`eq[A166926(n), A327195(n)]`
-/

namespace A175468.P17816462911357312094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175468.P17816462911357312094

/-! ## A175468.P4995203988964352901

`eq[A167891(n), A327187(n)]`
-/

namespace A175468.P4995203988964352901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175468.P4995203988964352901

/-! ## A175468.P7983447081870207790

`eq[A167891(n), A327191(n)]`
-/

namespace A175468.P7983447081870207790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175468.P7983447081870207790

/-! ## A175468.P9790141879548677254

`eq[A167891(n), A327195(n)]`
-/

namespace A175468.P9790141879548677254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167891 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175468.P9790141879548677254

/-! ## A175468.P15027318601555019590

`eq[A169585(n), A327187(n)]`
-/

namespace A175468.P15027318601555019590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175468.P15027318601555019590

/-!
# A175469: a(n) = The value of k in the representation of A175468(n). See A175468 for definition.

The programs for A175469, there is no canonical definition to state claims against.
-/

/-! ## A175469.P17684954126152319932

`A080941(A175468(n+1))`
-/

namespace A175469.P17684954126152319932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080941 (A175468 (n + 1)).toNat

end

end A175469.P17684954126152319932

/-! ## A175469.P4783461073521012250

`A327188(or(1, A175468(n+1)))`
-/

namespace A175469.P4783461073521012250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327188 (Int.lor 1 (A175468 (n + 1))).toNat

end

end A175469.P4783461073521012250

/-! ## A175469.P2780064969081474658

`A327186(A175468(abs(xor(n, -1))))`
-/

namespace A175469.P2780064969081474658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327186 (A175468 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A175469.P2780064969081474658

/-! ## A175469.P6817499333483989818

`A327186(A175468(-xor(n, -1)))`
-/

namespace A175469.P6817499333483989818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327186 (A175468 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A175469.P6817499333483989818

/-! ## A175469.P9887821449630216300

`A327186(lt[n*A327195(n), n])`
-/

namespace A175469.P9887821449630216300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327195 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327186 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A175469.P9887821449630216300

/-! ## A175469.P7339655829511558082

`A327188(lt[n*A327195(n), n])`
-/

namespace A175469.P7339655829511558082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A327195 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327188 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A175469.P7339655829511558082

/-! ## A175469.P4909443618102153085

`A327186(and(-2, A175468(n+1)))`
-/

namespace A175469.P4909443618102153085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327186 (Int.land (-2) (A175468 (n + 1))).toNat

end

end A175469.P4909443618102153085

/-! ## A175469.P9295158732480517250

`A327192(and(-2, A175468(n+1)))`
-/

namespace A175469.P9295158732480517250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327192 (Int.land (-2) (A175468 (n + 1))).toNat

end

end A175469.P9295158732480517250

/-! ## A175469.P4333167705213145920

`A327193(A175468(n+1)+char[1])`
-/

namespace A175469.P4333167705213145920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327193 (A175468 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A175469.P4333167705213145920

/-! ## A175469.P4095643906141639605

`A327186(A175468(n+1)-char[1])`
-/

namespace A175469.P4095643906141639605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327186 (A175468 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A175469.P4095643906141639605

/-!
# A175470: a(n) = The value of m in the representation of A175468(n). See A175468 for definition.

The programs for A175470, there is no canonical definition to state claims against.
-/

/-! ## A175470.P12389901796414537408

`floor(log2(A175468(n+1)/A175469(n+1)))`
-/

namespace A175470.P12389901796414537408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((A175468 (n + 1) : ℚ) / (A175469 (n + 1) : ℚ) : ℝ)⌋

end

end A175470.P12389901796414537408

/-! ## A175470.P13075807535635349663

`A000523(A175468(n+1)/A175469(n+1))`
-/

namespace A175470.P13075807535635349663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((A175468 (n + 1) : ℚ) / (A175469 (n + 1) : ℚ))).toNat

end

end A175470.P13075807535635349663

/-! ## A175470.P6779623802895560228

`A001222(A175468(n+1)/A175469(n+1)-1)`
-/

namespace A175470.P6779623802895560228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A175468 (n + 1) : ℚ) / (A175469 (n + 1) : ℚ) - 1)).toNat

end

end A175470.P6779623802895560228

/-! ## A175470.P5016294187851719287

`A037861(A175468(n+1)/A175469(n+1))+3`
-/

namespace A175470.P5016294187851719287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (SequenceMachineLib.roundAway ((A175468 (n + 1) : ℚ) / (A175469 (n + 1) : ℚ))).toNat + 3

end

end A175470.P5016294187851719287

/-! ## A175470.P13483262992775667484

`A000005(A330925(A175468(n+1)/A175469(n+1)))`
-/

namespace A175470.P13483262992775667484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A330925 (SequenceMachineLib.roundAway ((A175468 (n + 1) : ℚ) / (A175469 (n + 1) : ℚ))).toNat).toNat

end

end A175470.P13483262992775667484

/-!
# A175471: Numbers n such that n^2 contains no digit less than 5.

The programs for A175471, there is no canonical definition to state claims against.
-/

/-! ## A175471.P15981079746877436348

`lt[4, A028908(n)%10]`
-/

namespace A175471.P15981079746877436348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028908 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A175471.P15981079746877436348

/-!
# A175479: a(1)=1. For n >= 1, if a(n) = 0, then append to the sequence the digits of binary n+1 (most significant digits first and least significant digits last). If a(n) = 1, then append to the sequence the digits of binary n+1 in reverse order (least significant digits first and most significant digits last).

The programs for A175479, there is no canonical definition to state claims against.
-/

/-! ## A175479.P8708613268885004556

`A179763(A384659(n+2))`
-/

namespace A175479.P8708613268885004556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179763 (A384659 (n + 2)).toNat

end

end A175479.P8708613268885004556

/-! ## A175479.P11051598659106656789

`A267292(A240840(n+4)+A004600(2*n+1))`
-/

namespace A175479.P11051598659106656789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267292 (A240840 (n + 4) + A004600 (2 * n + 1)).toNat

end

end A175479.P11051598659106656789

/-! ## A175479.P6610302570756130072

`A030308(A205398(n+1)%A046691(A242971(n)))`
-/

namespace A175479.P6610302570756130072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (Int.tmod (A205398 (n + 1)) (A046691 (A242971 n).toNat)).toNat

end

end A175479.P6610302570756130072

/-! ## A175479.P16278915990680131190

`A088911(or(n, ∑[A247907(n)]))`
-/

namespace A175479.P16278915990680131190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 (Int.lor (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A175479.P16278915990680131190

/-! ## A175479.P11448056968703219200

`A196936(A073751(n+1))%2`
-/

namespace A175479.P11448056968703219200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196936 (A073751 (n + 1)).toNat) 2

end

end A175479.P11448056968703219200

/-!
# A175480: a(1)=1. For n >= 1, if a(n) = 1, then append to the sequence the digits of binary n+1 (most significant digits first and least significant digits last). If a(n) = 0, then append to the sequence the digits of binary n+1 in reverse order (least significant digits first and most significant digits last).

The programs for A175480, there is no canonical definition to state claims against.
-/

/-! ## A175480.P10419134715670093106

`A070950(xor(7, A356064(2*n+1)))`
-/

namespace A175480.P10419134715670093106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070950 (Int.xor 7 (A356064 (2 * n + 1))).toNat

end

end A175480.P10419134715670093106

/-! ## A175480.P13833573145871672031

`A030190(A325027(n+1)+A244360(n+1))`
-/

namespace A175480.P13833573145871672031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 (A325027 (n + 1) + A244360 (n + 1)).toNat

end

end A175480.P13833573145871672031

/-! ## A175480.P15310081091179751029

`A008966(A227610(n+1)+A182801(2*(n+2)))`
-/

namespace A175480.P15310081091179751029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A227610 (n + 1) + A182801 (2 * (n + 2))).toNat

end

end A175480.P15310081091179751029

/-! ## A175480.P9127556659328860277

`A030308(A052905(5*n+1)-A000194(5*n+1))`
-/

namespace A175480.P9127556659328860277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 (A052905 (5 * n + 1) - A000194 (5 * n + 1)).toNat

end

end A175480.P9127556659328860277

/-! ## A175480.P16447543839106299481

`A188398(gcd(∑{d}[n+1, #]-2*(n+1), A336414(n)))`
-/

namespace A175480.P16447543839106299481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188398 (Int.gcd (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (2 * (n + 1) : ℤ)) (A336414 n))

end

end A175480.P16447543839106299481

/-!
# A175482: a(n) = lesser prime factor of A175461(n).

The programs for A175482, there is no canonical definition to state claims against.
-/

/-! ## A175482.P16619430913327108800

`p?[A052126(8*n+5)]`
-/

namespace A175482.P16619430913327108800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (8 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175482.P16619430913327108800

/-! ## A175482.P9813876971547091464

`p?[A326067(8*n+5)]`
-/

namespace A175482.P9813876971547091464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326067 (8 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175482.P9813876971547091464

/-! ## A175482.P16333268194734849986

`p?[A339423(8*n+5)]`
-/

namespace A175482.P16333268194734849986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339423 (8 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175482.P16333268194734849986

/-! ## A175482.P8350344690060703091

`p?[A345933(8*n+5)]`
-/

namespace A175482.P8350344690060703091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345933 (8 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175482.P8350344690060703091

/-! ## A175482.P15771299217399630730

`p?[A351425(8*n+5)]`
-/

namespace A175482.P15771299217399630730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351425 (8 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175482.P15771299217399630730

/-! ## A175482.P15647600776989921367

`p?[A070821(A113770(n))]`
-/

namespace A175482.P15647600776989921367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (A113770 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175482.P15647600776989921367

/-! ## A175482.P13555756438002472640

`A011776(A175461(n+1))`
-/

namespace A175482.P13555756438002472640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A175461 (n + 1)).toNat

end

end A175482.P13555756438002472640

/-! ## A175482.P12516998910342729778

`A076820(2*A175461(n+1))`
-/

namespace A175482.P12516998910342729778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (2 * A175461 (n + 1)).toNat

end

end A175482.P12516998910342729778

/-! ## A175482.P11306565469704557494

`A051119(or(1, A175461(n+1)))`
-/

namespace A175482.P11306565469704557494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (Int.lor 1 (A175461 (n + 1))).toNat

end

end A175482.P11306565469704557494

/-! ## A175482.P15870395696258032521

`A076820(or(1, A175461(n+1)))`
-/

namespace A175482.P15870395696258032521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (Int.lor 1 (A175461 (n + 1))).toNat

end

end A175482.P15870395696258032521

/-!
# A175483: a(n) = larger prime factor of A175461(n).

The programs for A175483, there is no canonical definition to state claims against.
-/

/-! ## A175483.P346467816299603662

`p?[A184726(4*(n+1))]`
-/

namespace A175483.P346467816299603662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184726 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175483.P346467816299603662

/-! ## A175483.P3384191132435139226

`p?[A032742(8*n+5)]`
-/

namespace A175483.P3384191132435139226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (8 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175483.P3384191132435139226

/-! ## A175483.P8743927387210908077

`p?[A079880(8*n+13)]`
-/

namespace A175483.P8743927387210908077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079880 (8 * n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175483.P8743927387210908077

/-! ## A175483.P9370590188136205553

`p?[A089196(8*n+4)+1]`
-/

namespace A175483.P9370590188136205553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089196 (8 * n + 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175483.P9370590188136205553

/-! ## A175483.P7202544268284956805

`p?[A054576(A113770(n))]`
-/

namespace A175483.P7202544268284956805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A113770 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175483.P7202544268284956805

/-! ## A175483.P12992209923872061007

`A002034(A175461(n+1))`
-/

namespace A175483.P12992209923872061007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A175461 (n + 1)).toNat

end

end A175483.P12992209923872061007

/-! ## A175483.P8533118212981388982

`p?[A093803(sqrt(A017126(n)))]`
-/

namespace A175483.P8533118212981388982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (SequenceMachineLib.roundAway (Real.sqrt (A017126 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175483.P8533118212981388982

/-! ## A175483.P1703532947427848623

`A006530(2*A175461(n+1))`
-/

namespace A175483.P1703532947427848623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A175461 (n + 1)).toNat

end

end A175483.P1703532947427848623

/-! ## A175483.P4308705152643436517

`p?[A054576(A005843(8*n+5))]`
-/

namespace A175483.P4308705152643436517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A005843 (8 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175483.P4308705152643436517

/-!
# A175484: a(n) = (1/2)*(A175482(n)+A175483(n)).

The programs for A175484, there is no canonical definition to state claims against.
-/

/-! ## A175484.P6385964555843477688

`1/2*(A175482(n+1)+A175483(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175484.P6385964555843477688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A175482 (n + 1) + A175483 (n + 1) : ℚ)

end

end A175484.P6385964555843477688

/-! ## A175484.P10701684781106041843

`∑{p}[A175461(n+1), #/2]`
-/

namespace A175484.P10701684781106041843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175461 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / 2

end

end A175484.P10701684781106041843

/-! ## A175484.P11646643862254429902

`A067620(A175461(n+1))`
-/

namespace A175484.P11646643862254429902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067620 (A175461 (n + 1)).toNat

end

end A175484.P11646643862254429902

/-! ## A175484.P1908078152708929382

`A349134(or(1, A175461(n+1)))`
-/

namespace A175484.P1908078152708929382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349134 (Int.lor 1 (A175461 (n + 1))).toNat

end

end A175484.P1908078152708929382

/-! ## A175484.P5179085733601236679

`∑{d}[A175461(n+1), A349432(#)]`
-/

namespace A175484.P5179085733601236679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A349432 d

end

end A175484.P5179085733601236679

/-! ## A175484.P8877976798251421388

`A000265(∑{p}[A175461(n+1), #])`
-/

namespace A175484.P8877976798251421388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A175484.P8877976798251421388

/-! ## A175484.P6349058170306004611

`A001281(∑{p}[A175461(n+1), #])`
-/

namespace A175484.P6349058170306004611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A175484.P6349058170306004611

/-! ## A175484.P2169869350374320381

`A004525(∑{p}[A175461(n+1), #])`
-/

namespace A175484.P2169869350374320381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A175484.P2169869350374320381

/-! ## A175484.P194505308982885102

`A004526(∑{p}[A175461(n+1), #])`
-/

namespace A175484.P194505308982885102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A175484.P194505308982885102

/-! ## A175484.P736270022419236102

`A349134(A175461(A000027(n+1)))`
-/

namespace A175484.P736270022419236102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349134 (A175461 (A000027 (n + 1)).toNat).toNat

end

end A175484.P736270022419236102

/-!
# A175485: Numerators of averages of squares of the first n positive integers.

The programs for A175485, the canonical program `A175485.P14769879156462798739` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175485 has offset 1).

The definition of A175485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A175485.P14769879156462798739

`(n+2)*(2*(n+1)+1)*gcd(6, n+1)/6`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175485

/-- `(n+2)*(2*(n+1)+1)*gcd(6, n+1)/6` -/
def P14769879156462798739.Spec : Prop :=
  ∀ n, P14769879156462798739.a n = (A175485 (n + 1) : ℚ)

end A175485

/-! ## A175485.P3029377556001247937

`gcd(C(2*(n+2), 2), ∑[(n+1)²])`
-/

namespace A175485.P3029377556001247937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose (2 * (n + 2)) 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175485.P3029377556001247937

namespace A175485

/-- `gcd(C(2*(n+2), 2), ∑[(n+1)²])` -/
def P3029377556001247937.Spec : Prop :=
  ∀ n, (P3029377556001247937.a n : ℤ) = A175485 (n + 1)

end A175485

/-! ## A175485.P2221517979804482419

`lcm(n+1, ∑[(n+1)²])/(n+1)`
-/

namespace A175485.P2221517979804482419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A175485.P2221517979804482419

namespace A175485

/-- `lcm(n+1, ∑[(n+1)²])/(n+1)` -/
def P2221517979804482419.Spec : Prop :=
  ∀ n, P2221517979804482419.a n = (A175485 (n + 1) : ℚ)

end A175485

/-! ## A175485.P3039580264555639338

`∑[(n+1)²]/gcd(n+1, ∑[n²])`
-/

namespace A175485.P3039580264555639338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A175485.P3039580264555639338

namespace A175485

/-- `∑[(n+1)²]/gcd(n+1, ∑[n²])` -/
def P3039580264555639338.Spec : Prop :=
  ∀ n, P3039580264555639338.a n = (A175485 (n + 1) : ℚ)

end A175485

/-! ## A175485.P4484114960878553864

`gcd((n+2)*(2*n+3), ∑[∑[2*n+1]])`
-/

namespace A175485.P4484114960878553864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 2) * (2 * n + 3)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175485.P4484114960878553864

namespace A175485

/-- `gcd((n+2)*(2*n+3), ∑[∑[2*n+1]])` -/
def P4484114960878553864.Spec : Prop :=
  ∀ n, (P4484114960878553864.a n : ℤ) = A175485 (n + 1)

end A175485

/-! ## A175485.P468778535938983955

`∑[(n+1)²]/(n+1-a(n-1)%(n+1))` with `a(0)=1`
-/

namespace A175485.P468778535938983955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((n + 1 : ℤ) - Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) (n + 1 : ℤ) : ℚ)

end

end A175485.P468778535938983955

namespace A175485

/-- `∑[(n+1)²]/(n+1-a(n-1)%(n+1))` -/
def P468778535938983955.Spec : Prop :=
  ∀ n, P468778535938983955.a n = (A175485 (n + 1) : ℚ)

end A175485

/-! ## A175485.P8656178460370966166

`∑[(n+1)²]/A060789(n+1)`
-/

namespace A175485.P8656178460370966166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A060789 (n + 1) : ℚ)

end

end A175485.P8656178460370966166

namespace A175485

/-- `∑[(n+1)²]/A060789(n+1)` -/
def P8656178460370966166.Spec : Prop :=
  ∀ n, P8656178460370966166.a n = (A175485 (n + 1) : ℚ)

end A175485

/-! ## A175485.P17085300458183191295

`A108678(n)/A129202(n)`
-/

namespace A175485.P17085300458183191295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108678 n : ℚ) / (A129202 n : ℚ)

end

end A175485.P17085300458183191295

namespace A175485

/-- `A108678(n)/A129202(n)` -/
def P17085300458183191295.Spec : Prop :=
  ∀ n, P17085300458183191295.a n = (A175485 (n + 1) : ℚ)

end A175485

/-! ## A175485.P91501702649993153

`A060789(n+2)*A146535(n+2)`
-/

namespace A175485.P91501702649993153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (n + 2) * A146535 (n + 2)

end

end A175485.P91501702649993153

namespace A175485

/-- `A060789(n+2)*A146535(n+2)` -/
def P91501702649993153.Spec : Prop :=
  ∀ n, P91501702649993153.a n = A175485 (n + 1)

end A175485

/-! ## A175485.P14163945152857888357

`A306368(2*n)/A089128(n)`
-/

namespace A175485.P14163945152857888357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306368 (2 * n) : ℚ) / (A089128 n : ℚ)

end

end A175485.P14163945152857888357

namespace A175485

/-- `A306368(2*n)/A089128(n)` -/
def P14163945152857888357.Spec : Prop :=
  ∀ n, P14163945152857888357.a n = (A175485 (n + 1) : ℚ)

end A175485

/-! ## A175485.P779413650883174486

`A306368(2*n)/A089145(n+3)`
-/

namespace A175485.P779413650883174486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306368 (2 * n) : ℚ) / (A089145 (n + 3) : ℚ)

end

end A175485.P779413650883174486

namespace A175485

/-- `A306368(2*n)/A089145(n+3)` -/
def P779413650883174486.Spec : Prop :=
  ∀ n, P779413650883174486.a n = (A175485 (n + 1) : ℚ)

end A175485

/-! ## A175485.P15242414579623677308

`A027626(2*n+1)/A000034(n+1)`
-/

namespace A175485.P15242414579623677308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027626 (2 * n + 1) : ℚ) / (A000034 (n + 1) : ℚ)

end

end A175485.P15242414579623677308

namespace A175485

/-- `A027626(2*n+1)/A000034(n+1)` -/
def P15242414579623677308.Spec : Prop :=
  ∀ n, P15242414579623677308.a n = (A175485 (n + 1) : ℚ)

end A175485

/-! ## A175485.P11827731627411166448

`A060789(n+2)*A145064(2*n+1)`
-/

namespace A175485.P11827731627411166448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (n + 2) * A145064 (2 * n + 1)

end

end A175485.P11827731627411166448

namespace A175485

/-- `A060789(n+2)*A145064(2*n+1)` -/
def P11827731627411166448.Spec : Prop :=
  ∀ n, P11827731627411166448.a n = A175485 (n + 1)

end A175485

/-! ## A175485.P5348082892356145883

`A027626(2*n+1)/A014695(2*n+1)`
-/

namespace A175485.P5348082892356145883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027626 (2 * n + 1) : ℚ) / (A014695 (2 * n + 1) : ℚ)

end

end A175485.P5348082892356145883

namespace A175485

/-- `A027626(2*n+1)/A014695(2*n+1)` -/
def P5348082892356145883.Spec : Prop :=
  ∀ n, P5348082892356145883.a n = (A175485 (n + 1) : ℚ)

end A175485

/-! ## A175485.P16919055102060774847

`A118392(2*(n+1))/A014695(2*n+1)²`
-/

namespace A175485.P16919055102060774847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118392 (2 * (n + 1)) : ℚ) / (A014695 (2 * n + 1) ^ 2 : ℚ)

end

end A175485.P16919055102060774847

namespace A175485

/-- `A118392(2*(n+1))/A014695(2*n+1)²` -/
def P16919055102060774847.Spec : Prop :=
  ∀ n, P16919055102060774847.a n = (A175485 (n + 1) : ℚ)

end A175485

/-! ## A175485.P17910219223655127815

`A027626(2*n)/A060789(2*(n+1))*A060789(n+2)`
-/

namespace A175485.P17910219223655127815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027626 (2 * n) : ℚ) / (A060789 (2 * (n + 1)) : ℚ) * (A060789 (n + 2) : ℚ)

end

end A175485.P17910219223655127815

namespace A175485

/-- `A027626(2*n)/A060789(2*(n+1))*A060789(n+2)` -/
def P17910219223655127815.Spec : Prop :=
  ∀ n, P17910219223655127815.a n = (A175485 (n + 1) : ℚ)

end A175485

/-! ## A175485.P8701005491936601774

`A051176(2*n+3)*A060789(n+2)`
-/

namespace A175485.P8701005491936601774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (2 * n + 3) * A060789 (n + 2)

end

end A175485.P8701005491936601774

namespace A175485

/-- `A051176(2*n+3)*A060789(n+2)` -/
def P8701005491936601774.Spec : Prop :=
  ∀ n, P8701005491936601774.a n = A175485 (n + 1)

end A175485

/-! ## A175485.P5314826603703804981

`A051724(2*n+3)*A060789(n+2)`
-/

namespace A175485.P5314826603703804981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (2 * n + 3) * A060789 (n + 2)

end

end A175485.P5314826603703804981

namespace A175485

/-- `A051724(2*n+3)*A060789(n+2)` -/
def P5314826603703804981.Spec : Prop :=
  ∀ n, P5314826603703804981.a n = A175485 (n + 1)

end A175485

/-! ## A175485.P2950600709259759256

`A060789(2*n+3)*A060789(n+2)`
-/

namespace A175485.P2950600709259759256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (2 * n + 3) * A060789 (n + 2)

end

end A175485.P2950600709259759256

namespace A175485

/-- `A060789(2*n+3)*A060789(n+2)` -/
def P2950600709259759256.Spec : Prop :=
  ∀ n, P2950600709259759256.a n = A175485 (n + 1)

end A175485

/-! ## A175485.P9936389261573567737

`A264388(2*n+5)`
-/

namespace A175485.P9936389261573567737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264388 (2 * n + 5)

end

end A175485.P9936389261573567737

namespace A175485

/-- `A264388(2*n+5)` -/
def P9936389261573567737.Spec : Prop :=
  ∀ n, P9936389261573567737.a n = A175485 (n + 1)

end A175485

/-!
# A175486: Composite numbers of form 8n+5 with all prime factors of form 8m+5.

The programs for A175486, there is no canonical definition to state claims against.
-/

/-! ## A175486.P16591835185014054311

`∩[A004627(n+1), A046340(n+1)]`
-/

namespace A175486.P16591835185014054311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175486.P16591835185014054311

/-!
# A175487: a(n) = smallest prime > a(n-1) such that (a(n-1)+a(n)) is a multiple of nextprime(a(n-1)).

The programs for A175487, there is no canonical definition to state claims against.
-/

/-! ## A175487.P4388396598059316180

`A163981(A000720(a(n-1)))` with `a(0)=2`
-/

namespace A175487.P4388396598059316180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A163981 (A000720 (a (n - 1)).toNat).toNat

end

end A175487.P4388396598059316180

/-! ## A175487.P17386145046549178709

`A163981(A061395(a(n-1)))` with `a(0)=2`
-/

namespace A175487.P17386145046549178709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A163981 (A061395 (a (n - 1)).toNat).toNat

end

end A175487.P17386145046549178709

/-! ## A175487.P2369285844959791509

`A163981(A056239(a(n-1)))` with `a(0)=2`
-/

namespace A175487.P2369285844959791509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A163981 (A056239 (a (n - 1)).toNat).toNat

end

end A175487.P2369285844959791509

/-!
# A175488: Triangle read by rows: T(n,m) = the largest positive integer that, when written in binary, occurs as a substring both in binary m and in binary n.

The programs for A175488, there is no canonical definition to state claims against.
-/

/-! ## A175488.P8068046783114898515

`A175466(A004736(∑[n+2])+A245300(n)-1)`
-/

namespace A175488.P8068046783114898515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175466 (A004736 (∑ j ∈ Finset.range (n + 1), f1 j) + (A245300 n - 1)).toNat

end

end A175488.P8068046783114898515

/-! ## A175488.P11750130986069440491

`A082859(A014132(n+1))+A000007(A014641(n))`
-/

namespace A175488.P11750130986069440491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082859 (A014132 (n + 1)).toNat + A000007 (A014641 n).toNat

end

end A175488.P11750130986069440491

/-! ## A175488.P16820342877323675010

`A082859(lt[0, n*A287697(n)])`
-/

namespace A175488.P16820342877323675010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A287697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082859 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A175488.P16820342877323675010

/-! ## A175488.P9530335722744175812

`gcd(A002260(n+1), A080778(A007318(n)))`
-/

namespace A175488.P9530335722744175812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1)) (A080778 (A007318 n).toNat)

end

end A175488.P9530335722744175812

/-! ## A175488.P16983465843147322344

`A050412(A089072(n+1))`
-/

namespace A175488.P16983465843147322344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050412 (A089072 (n + 1)).toNat

end

end A175488.P16983465843147322344

/-!
# A175490: a(n) = Product_{k=1..n} b(k,n), where b(k,n) is the largest positive integer that, when written in binary, occurs as a substring in both binary k and binary n.

The programs for A175490, there is no canonical definition to state claims against.
-/

/-! ## A175490.P17338793667110771434

`(n+1)*A356149(n^n)`
-/

namespace A175490.P17338793667110771434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A356149 (n ^ n)

end

end A175490.P17338793667110771434

/-! ## A175490.P9833582088956134282

`A340514((n+1)*floor(n/2)!)`
-/

namespace A175490.P9833582088956134282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340514 ((n + 1) * Nat.factorial ⌊(n : ℚ) / 2⌋.toNat)

end

end A175490.P9833582088956134282

/-!
# A175491: a(1)=1. a(n+1) = Sum_{k=1..n} a(b(k,n)), where b(k,n) is the largest positive integer that, when written in binary, occurs as a substring in both binary k and binary n.

The programs for A175491, there is no canonical definition to state claims against.
-/

/-! ## A175491.P13837115508777247998

`∑[lt[A222641(n+1)+1, 6]]+1-n`
-/

namespace A175491.P13837115508777247998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222641 (n + 1) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - (n : ℤ)

end

end A175491.P13837115508777247998

/-! ## A175491.P9302091455853590814

`A368200(A060962(n))`
-/

namespace A175491.P9302091455853590814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368200 (A060962 n).toNat

end

end A175491.P9302091455853590814

/-! ## A175491.P18339046034816460091

`A262978(A241727(n))`
-/

namespace A175491.P18339046034816460091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262978 (A241727 (n + 45)).toNat

end

end A175491.P18339046034816460091

/-! ## A175491.P17902151458575679821

`∑[A370461(A000032(n))]`
-/

namespace A175491.P17902151458575679821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370461 (A000032 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175491.P17902151458575679821

/-! ## A175491.P17424791555411272529

`A182220(A035998(n+2))`
-/

namespace A175491.P17424791555411272529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (A035998 (n + 2)).toNat

end

end A175491.P17424791555411272529

/-!
# A175493: a(n) = Product_{k=1..n} k^d(k), where d(k) = number of divisors of k.

The programs for A175493, there is no canonical definition to state claims against.
-/

/-! ## A175493.P728254062275439199

`∏[∏{d}[n+1, #²]]`
-/

namespace A175493.P728254062275439199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175493.P728254062275439199

/-! ## A175493.P7055640978344518294

`∏[∏[ratio[∏{d}[n, #]]²]]`
-/

namespace A175493.P7055640978344518294
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f3 (n + 1) : ℚ) / (f3 n : ℚ)) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175493.P7055640978344518294

/-! ## A175493.P7792555332130890671

`∏[∏{d}[n+1, #]^2]`
-/

namespace A175493.P7792555332130890671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f2 n), d) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A175493.P7792555332130890671

/-! ## A175493.P13430075809763634406

`exp(∑[log(∏{d}[n+1, #])])²`
-/

namespace A175493.P13430075809763634406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A175493.P13430075809763634406

/-! ## A175493.P2419388199834461183

`2^∑[∑{d}[n+1, log2(#²)]]`
-/

namespace A175493.P2419388199834461183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Real.logb 2 (d ^ 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175493.P2419388199834461183

/-!
# A175494: a(n) = floor(n^(1/d(n))), where d(n) = number of divisors of n.

The programs for A175494, the canonical program `A175494.P12089649886581109430` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175494 has offset 1).

The definition of A175494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175494.P12089649886581109430

`floor(root(n+1, ∏{e}[n+1, #+1]))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A175494

/-- `floor(root(n+1, ∏{e}[n+1, #+1]))` -/
def P12089649886581109430.Spec : Prop :=
  ∀ n, P12089649886581109430.a n = A175494 (n + 1)

theorem P12089649886581109430.correct : P12089649886581109430.Spec := by
  intro n
  simp only [A175494, Nat.add_sub_cancel]

end A175494

/-! ## A175494.P8600353255158646536

`floor(root(n+1, Δ[A006218(n)]))`
-/

namespace A175494.P8600353255158646536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (1 / (f1 (n + 1) - f1 n : ℝ))⌋

end

end A175494.P8600353255158646536

namespace A175494

/-- `floor(root(n+1, Δ[A006218(n)]))` -/
def P8600353255158646536.Spec : Prop :=
  ∀ n, P8600353255158646536.a n = A175494 (n + 1)

end A175494

/-! ## A175494.P3767357884568826728

`floor(root(n+1, A000005(n+1)))`
-/

namespace A175494.P3767357884568826728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (1 / (A000005 (n + 1) : ℝ))⌋

end

end A175494.P3767357884568826728

namespace A175494

/-- `floor(root(n+1, A000005(n+1)))` -/
def P3767357884568826728.Spec : Prop :=
  ∀ n, P3767357884568826728.a n = A175494 (n + 1)

theorem P3767357884568826728.correct : P3767357884568826728.Spec := by
  intro n
  simp only [A175494, Nat.add_sub_cancel, A175494.P3767357884568826728.a, A175494.P12089649886581109430.f1, A175494.P12089649886581109430.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175494

/-! ## A175494.P15077232983606336262

`floor(root(n+1, ∑{d}[n+1, A020985(#)²]))`
-/

namespace A175494.P15077232983606336262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (1 / ((∑ d ∈ Nat.divisors (f1 n), A020985 d ^ 2 : ℤ) : ℝ))⌋

end

end A175494.P15077232983606336262

namespace A175494

/-- `floor(root(n+1, ∑{d}[n+1, A020985(#)²]))` -/
def P15077232983606336262.Spec : Prop :=
  ∀ n, P15077232983606336262.a n = A175494 (n + 1)

end A175494

/-! ## A175494.P2230562708011200994

`floor(root(n+1, A038040(n+1)/(n+1)))`
-/

namespace A175494.P2230562708011200994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (1 / ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ))⌋

end

end A175494.P2230562708011200994

namespace A175494

/-- `floor(root(n+1, A038040(n+1)/(n+1)))` -/
def P2230562708011200994.Spec : Prop :=
  ∀ n, P2230562708011200994.a n = A175494 (n + 1)

theorem P2230562708011200994.correct : P2230562708011200994.Spec := by
  intro n
  simp only [A175494, Nat.add_sub_cancel, A175494.P2230562708011200994.a, A175494.P12089649886581109430.f1, A175494.P12089649886581109430.a, A038040, A038040.P16512896840577774730.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A175494

/-! ## A175494.P6210458460876834975

`floor(root(A010000(n), A062011(n+1)))`
-/

namespace A175494.P6210458460876834975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010000 n : ℝ) ^ (1 / (A062011 (n + 1) : ℝ))⌋

end

end A175494.P6210458460876834975

namespace A175494

/-- `floor(root(A010000(n), A062011(n+1)))` -/
def P6210458460876834975.Spec : Prop :=
  ∀ n, P6210458460876834975.a n = A175494 (n + 1)

end A175494

/-! ## A175494.P11865733907660086573

`floor(root(n+1, A096737(n+1)))`
-/

namespace A175494.P11865733907660086573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (1 / (A096737 (n + 1) : ℝ))⌋

end

end A175494.P11865733907660086573

namespace A175494

/-- `floor(root(n+1, A096737(n+1)))` -/
def P11865733907660086573.Spec : Prop :=
  ∀ n, P11865733907660086573.a n = A175494 (n + 1)

end A175494

/-!
# A175495: Positive integers k such that k < 2^d(k), where d(k) is the number of divisors of k.

The programs for A175495, the canonical program `A175495.P2939561428549324534` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175495 has offset 1).

The definition of A175495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175495.P1573180904281952612

`lt[n, 2^A000005(n+1)]+1`
-/

namespace A175495.P1573180904281952612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000005 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 1

end

end A175495.P1573180904281952612

namespace A175495

/-- `lt[n, 2^A000005(n+1)]+1` -/
def P1573180904281952612.Spec : Prop :=
  ∀ n, (P1573180904281952612.a n : ℤ) = A175495 (n + 1)

end A175495

/-! ## A175495.P2939561428549324534

`lt[n, A000079(A000005(n+1))]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A175495

/-- `lt[n, A000079(A000005(n+1))]+1` -/
def P2939561428549324534.Spec : Prop :=
  ∀ n, (P2939561428549324534.a n : ℤ) = A175495 (n + 1)

theorem P2939561428549324534.correct : P2939561428549324534.Spec := by
  intro n
  simp only [A175495, Nat.add_sub_cancel]

end A175495

/-! ## A175495.P14669384593022447628

`lt[2*n, A011782(A000005(n+1)+2)]+1`
-/

namespace A175495.P14669384593022447628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000005 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A175495.P14669384593022447628

namespace A175495

/-- `lt[2*n, A011782(A000005(n+1)+2)]+1` -/
def P14669384593022447628.Spec : Prop :=
  ∀ n, (P14669384593022447628.a n : ℤ) = A175495 (n + 1)

end A175495

/-! ## A175495.P324150639917115702

`lt[log2(n+1), ∏{e}[n+1, #+1]]+1`
-/

namespace A175495.P324150639917115702
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 1 : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A175495.P324150639917115702

namespace A175495

/-- `lt[log2(n+1), ∏{e}[n+1, #+1]]+1` -/
def P324150639917115702.Spec : Prop :=
  ∀ n, (P324150639917115702.a n : ℤ) = A175495 (n + 1)

end A175495

/-! ## A175495.P4512094939988029143

`lt[n, A100587(n+1)]+1`
-/

namespace A175495.P4512094939988029143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100587 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A175495.P4512094939988029143

namespace A175495

/-- `lt[n, A100587(n+1)]+1` -/
def P4512094939988029143.Spec : Prop :=
  ∀ n, (P4512094939988029143.a n : ℤ) = A175495 (n + 1)

end A175495

/-! ## A175495.P8147087580371253835

`record[(n+1)/A175494(n+1)]`
-/

namespace A175495.P8147087580371253835
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A175494 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175495.P8147087580371253835

namespace A175495

/-- `record[(n+1)/A175494(n+1)]` -/
def P8147087580371253835.Spec : Prop :=
  ∀ n, P8147087580371253835.a n = (A175495 (n + 1) : ℚ)

end A175495

/-! ## A175495.P5756062308063603276

`record[(n+1)%A338506(n+1)]`
-/

namespace A175495.P5756062308063603276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A338506 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175495.P5756062308063603276

namespace A175495

/-- `record[(n+1)%A338506(n+1)]` -/
def P5756062308063603276.Spec : Prop :=
  ∀ n, P5756062308063603276.a n = A175495 (n + 1)

end A175495

/-! ## A175495.P17297089112017805177

`lt[n, 2*A100577(n+1)]+1`
-/

namespace A175495.P17297089112017805177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100577 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A175495.P17297089112017805177

namespace A175495

/-- `lt[n, 2*A100577(n+1)]+1` -/
def P17297089112017805177.Spec : Prop :=
  ∀ n, (P17297089112017805177.a n : ℤ) = A175495 (n + 1)

end A175495

/-! ## A175495.P6063703608935579983

`lt[log2(n+1), Δ[A006218(n)]]+1`
-/

namespace A175495.P6063703608935579983
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 1 : ℝ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A175495.P6063703608935579983

namespace A175495

/-- `lt[log2(n+1), Δ[A006218(n)]]+1` -/
def P6063703608935579983.Spec : Prop :=
  ∀ n, (P6063703608935579983.a n : ℤ) = A175495 (n + 1)

end A175495

/-! ## A175495.P1404096366134692114

`record[and(A000027(n+1), A100587(n+1))]`
-/

namespace A175495.P1404096366134692114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000027 (n + 1)) (A100587 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175495.P1404096366134692114

namespace A175495

/-- `record[and(A000027(n+1), A100587(n+1))]` -/
def P1404096366134692114.Spec : Prop :=
  ∀ n, P1404096366134692114.a n = A175495 (n + 1)

end A175495

/-! ## A175495.P2640645022326867428

`∪[A135772(n+1), A346695(n+1)]`
-/

namespace A175495.P2640645022326867428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A175495.P2640645022326867428

namespace A175495

/-- `∪[A135772(n+1), A346695(n+1)]` -/
def P2640645022326867428.Spec : Prop :=
  ∀ n, (P2640645022326867428.a n : ℤ) = A175495 (n + 1)

end A175495

/-!
# A175496: Positive integers k where k is not squarefree but the number of divisors of k is a power of 2.

The programs for A175496, the canonical program `A175496.P16856827143371470346` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A175496 has offset 1).

The definition of A175496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A175496.P17290812738733628848

`filter[A013929(n+1), A359473(#)]`
-/

namespace A175496.P17290812738733628848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P17290812738733628848

namespace A175496

/-- `filter[A013929(n+1), A359473(#)]` -/
def P17290812738733628848.Spec : Prop :=
  ∀ n, P17290812738733628848.a n = A175496 (n + 1)

end A175496

/-! ## A175496.P2465946746602456004

`filter[A301517(n+1), A359473(#)]`
-/

namespace A175496.P2465946746602456004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P2465946746602456004

namespace A175496

/-- `filter[A301517(n+1), A359473(#)]` -/
def P2465946746602456004.Spec : Prop :=
  ∀ n, P2465946746602456004.a n = A175496 (n + 1)

end A175496

/-! ## A175496.P16856827143371470346

`filter[A336593(n+1), A359473(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A175496

/-- `filter[A336593(n+1), A359473(#)]` -/
def P16856827143371470346.Spec : Prop :=
  ∀ n, P16856827143371470346.a n = A175496 (n + 1)

theorem P16856827143371470346.correct : P16856827143371470346.Spec := by
  intro n
  simp only [A175496, Nat.add_sub_cancel]

end A175496

/-! ## A175496.P7587640360103643522

`filter[A240111(n+1), A359473(#)]`
-/

namespace A175496.P7587640360103643522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P7587640360103643522

namespace A175496

/-- `filter[A240111(n+1), A359473(#)]` -/
def P7587640360103643522.Spec : Prop :=
  ∀ n, P7587640360103643522.a n = A175496 (n + 1)

end A175496

/-! ## A175496.P412248936824158533

`filter[A376142(n+1), A359473(#)]`
-/

namespace A175496.P412248936824158533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P412248936824158533

namespace A175496

/-- `filter[A376142(n+1), A359473(#)]` -/
def P412248936824158533.Spec : Prop :=
  ∀ n, P412248936824158533.a n = A175496 (n + 1)

end A175496

/-! ## A175496.P10148347719800874253

`filter[A060476(n+2), A359473(#)]`
-/

namespace A175496.P10148347719800874253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060476 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P10148347719800874253

namespace A175496

/-- `filter[A060476(n+2), A359473(#)]` -/
def P10148347719800874253.Spec : Prop :=
  ∀ n, P10148347719800874253.a n = A175496 (n + 1)

end A175496

/-! ## A175496.P18260987325177748128

`filter[A295661(n+1), A359473(#)]`
-/

namespace A175496.P18260987325177748128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P18260987325177748128

namespace A175496

/-- `filter[A295661(n+1), A359473(#)]` -/
def P18260987325177748128.Spec : Prop :=
  ∀ n, P18260987325177748128.a n = A175496 (n + 1)

end A175496

/-! ## A175496.P15022062978821022542

`filter[A046099(n+1), A359473(#)]`
-/

namespace A175496.P15022062978821022542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P15022062978821022542

namespace A175496

/-- `filter[A046099(n+1), A359473(#)]` -/
def P15022062978821022542.Spec : Prop :=
  ∀ n, P15022062978821022542.a n = A175496 (n + 1)

end A175496

/-! ## A175496.P8851692406034336335

`filter[A048108(n+1), A359473(#)]`
-/

namespace A175496.P8851692406034336335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P8851692406034336335

namespace A175496

/-- `filter[A048108(n+1), A359473(#)]` -/
def P8851692406034336335.Spec : Prop :=
  ∀ n, P8851692406034336335.a n = A175496 (n + 1)

end A175496

/-! ## A175496.P14088254281207181190

`filter[A046790(n+1), A359473(#)]`
-/

namespace A175496.P14088254281207181190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P14088254281207181190

namespace A175496

/-- `filter[A046790(n+1), A359473(#)]` -/
def P14088254281207181190.Spec : Prop :=
  ∀ n, P14088254281207181190.a n = A175496 (n + 1)

end A175496

/-! ## A175496.P6674507676758664086

`filter[A062171(n+1), A359473(#)]`
-/

namespace A175496.P6674507676758664086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P6674507676758664086

namespace A175496

/-- `filter[A062171(n+1), A359473(#)]` -/
def P6674507676758664086.Spec : Prop :=
  ∀ n, P6674507676758664086.a n = A175496 (n + 1)

end A175496

/-! ## A175496.P11337561983617163737

`filter[A074661(n+1), A359473(#)]`
-/

namespace A175496.P11337561983617163737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P11337561983617163737

namespace A175496

/-- `filter[A074661(n+1), A359473(#)]` -/
def P11337561983617163737.Spec : Prop :=
  ∀ n, P11337561983617163737.a n = A175496 (n + 1)

end A175496

/-! ## A175496.P10575973247687170062

`filter[A274141(n+1), A359473(#)]`
-/

namespace A175496.P10575973247687170062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P10575973247687170062

namespace A175496

/-- `filter[A274141(n+1), A359473(#)]` -/
def P10575973247687170062.Spec : Prop :=
  ∀ n, P10575973247687170062.a n = A175496 (n + 1)

end A175496

/-! ## A175496.P16298693694539800248

`filter[A252849(n+1), A359473(#)]`
-/

namespace A175496.P16298693694539800248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P16298693694539800248

namespace A175496

/-- `filter[A252849(n+1), A359473(#)]` -/
def P16298693694539800248.Spec : Prop :=
  ∀ n, P16298693694539800248.a n = A175496 (n + 1)

end A175496

/-! ## A175496.P4520653762754688757

`filter[A051144(n+1), A359473(#)]`
-/

namespace A175496.P4520653762754688757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P4520653762754688757

namespace A175496

/-- `filter[A051144(n+1), A359473(#)]` -/
def P4520653762754688757.Spec : Prop :=
  ∀ n, P4520653762754688757.a n = A175496 (n + 1)

end A175496

/-! ## A175496.P2379186157048028212

`filter[A049199(n+1), A359473(#)]`
-/

namespace A175496.P2379186157048028212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P2379186157048028212

namespace A175496

/-- `filter[A049199(n+1), A359473(#)]` -/
def P2379186157048028212.Spec : Prop :=
  ∀ n, P2379186157048028212.a n = A175496 (n + 1)

end A175496

/-! ## A175496.P5722513259358366790

`filter[A080756(n+1), A359473(#)]`
-/

namespace A175496.P5722513259358366790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P5722513259358366790

namespace A175496

/-- `filter[A080756(n+1), A359473(#)]` -/
def P5722513259358366790.Spec : Prop :=
  ∀ n, P5722513259358366790.a n = A175496 (n + 1)

end A175496

/-! ## A175496.P11255514038629181609

`filter[A162966(n+2), A359473(#)]`
-/

namespace A175496.P11255514038629181609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A175496.P11255514038629181609

namespace A175496

/-- `filter[A162966(n+2), A359473(#)]` -/
def P11255514038629181609.Spec : Prop :=
  ∀ n, P11255514038629181609.a n = A175496 (n + 1)

end A175496

/-! ## A175496.P16400491887459586916

`∩[A013929(n+1), A036537(n+1)]`
-/

namespace A175496.P16400491887459586916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175496.P16400491887459586916

namespace A175496

/-- `∩[A013929(n+1), A036537(n+1)]` -/
def P16400491887459586916.Spec : Prop :=
  ∀ n, (P16400491887459586916.a n : ℤ) = A175496 (n + 1)

end A175496

/-!
# A175497: Numbers k with the property that k^2 is a product of two distinct triangular numbers.

The programs for A175497, there is no canonical definition to state claims against.
-/

/-! ## A175497.P5434980698302935423

`sqrt(A169836(n+1))`
-/

namespace A175497.P5434980698302935423
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A169836 (n + 1) : ℝ)

end

end A175497.P5434980698302935423

/-!
# A175498: a(1)=1. a(n) = the smallest positive integer not occurring earlier such that a(n)-a(n-1) doesn't equal a(k)-a(k-1) for any k with 2 <= k <= n-1.

The programs for A175498, there is no canonical definition to state claims against.
-/

/-! ## A175498.P17542089467641655038

`A257883(n+1)+1`
-/

namespace A175498.P17542089467641655038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257883 (n + 1) + 1

end

end A175498.P17542089467641655038

/-! ## A175498.P15498752597245926051

`A175499(n)+a(n-1)` with `a(0)=1`
-/

namespace A175498.P15498752597245926051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175499 n + a (n - 1)

end

end A175498.P15498752597245926051

/-! ## A175498.P14201404937785859140

`∑[A175499(round(sqrt(n²+1)))]`
-/

namespace A175498.P14201404937785859140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175499 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A175498.P14201404937785859140

/-! ## A175498.P4189520493010176883

`∑[A175499(abs(1-n)+1)]-1`
-/

namespace A175498.P4189520493010176883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175499 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A175498.P4189520493010176883

/-! ## A175498.P14852538498872453298

`A257884(n+1)+2-A175499(n+1)`
-/

namespace A175498.P14852538498872453298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257884 (n + 1) + (2 - A175499 (n + 1))

end

end A175498.P14852538498872453298

/-! ## A175498.P13758669934273387321

`A327844(∑[n+1])`
-/

namespace A175498.P13758669934273387321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A175498.P13758669934273387321

/-!
# A175499: a(n) = A175498(n+1)-A175498(n).

The programs for A175499, there is no canonical definition to state claims against.
-/

/-! ## A175499.P6352877995923675524

`A175498(n+2)-A175498(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A175499.P6352877995923675524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175498 (n + 2) - A175498 (n + 1)

end

end A175499.P6352877995923675524

/-! ## A175499.P4446937923512457090

`Δ[A175498(n+1)]`
-/

namespace A175499.P4446937923512457090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175499.P4446937923512457090

/-! ## A175499.P11364532918996282782

`Δ[A257883(n+1)]`
-/

namespace A175499.P11364532918996282782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175499.P11364532918996282782

/-! ## A175499.P4167622812847810415

`Δ[abs(A175498(Δ[n²]-n)-1)]`
-/

namespace A175499.P4167622812847810415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A175498 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175499.P4167622812847810415

/-! ## A175499.P2498230215241283352

`A257883(n+2)-A257883(n+1)`
-/

namespace A175499.P2498230215241283352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257883 (n + 2) - A257883 (n + 1)

end

end A175499.P2498230215241283352

/-! ## A175499.P14473172962787699401

`A028310(A257884(n+1))-A257884(A028310(n))`
-/

namespace A175499.P14473172962787699401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A257884 (n + 1)).toNat - A257884 (A028310 n).toNat

end

end A175499.P14473172962787699401

/-! ## A175499.P16010501440995911217

`Δ[A327844(∑[n+1])]`
-/

namespace A175499.P16010501440995911217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A175499.P16010501440995911217

