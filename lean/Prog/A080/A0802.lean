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
import Seq.B000.C029
import Seq.B000.C031
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A080200: Numbers that do not occur as differences between terms of the Mian-Chowla sequence A005282.

The programs for A080200, there is no canonical definition to state claims against.
-/

/-! ## A080200.P10209166328961110754

`∑[A318360(A165673(n+1)+a(n-1))]` with `a(0)=33`
-/

namespace A080200.P10209166328961110754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [33] fun n f1 =>
  A318360 (A165673 (n + 1) + f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080200.P10209166328961110754

/-!
# A080203: Steffi sequence; the numbers of pairs of unequal permutations of all the digits 1, ..., b-1 in base b whose ratio is an integer.

The programs for A080203, there is no canonical definition to state claims against.
-/

/-! ## A080203.P8844362715724686368

`A080202(A133263(round(sqrt(n²+1))))`
-/

namespace A080203.P8844362715724686368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080202 (A133263 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A080203.P8844362715724686368

/-! ## A080203.P18238357361769046022

`A080202(A133263(n)+A000038(n))`
-/

namespace A080203.P18238357361769046022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080202 (A133263 n + A000038 n).toNat

end

end A080203.P18238357361769046022

/-! ## A080203.P7928492836236984534

`A080202(or(A000038(n), A133263(n)))`
-/

namespace A080203.P7928492836236984534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080202 (Int.lor (A000038 n) (A133263 n)).toNat

end

end A080203.P7928492836236984534

/-! ## A080203.P16650563468418743623

`A080202(xor(A000038(n), A133263(n)))`
-/

namespace A080203.P16650563468418743623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080202 (Int.xor (A000038 n) (A133263 n)).toNat

end

end A080203.P16650563468418743623

/-!
# A080204: Number of fixed points under n-fold inflation for the substitution rule a->abc, b->ab, c->b that underlies the Kolakoski (3,1) sequence.

The programs for A080204, the canonical program `A080204.P9660020606088513651` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080204 has offset 1).

The definition of A080204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080204.P9660020606088513651

`2*a(n-1)+a(n-3)+2` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080204

/-- `2*a(n-1)+a(n-3)+2` -/
def P9660020606088513651.Spec : Prop :=
  ∀ n, (P9660020606088513651.a n : ℤ) = A080204 (n + 1)

theorem P9660020606088513651.correct : P9660020606088513651.Spec := by
  intro n
  simp only [A080204, Nat.add_sub_cancel]

end A080204

/-! ## A080204.P2424872348703958388

`ogf((1+3x^2-2x^3)/(1-3x+2x^2-x^3+x^4))`
-/

namespace A080204.P2424872348703958388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3, -2] [1, -3, 2, -1, 1] n

end

end A080204.P2424872348703958388

namespace A080204

/-- `ogf((1+3x^2-2x^3)/(1-3x+2x^2-x^3+x^4))` -/
def P2424872348703958388.Spec : Prop :=
  ∀ n, P2424872348703958388.a n = A080204 (n + 1)

end A080204

/-! ## A080204.P3379007641352314801

`∑[abs(Δ[A332647(n)])]`
-/

namespace A080204.P3379007641352314801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332647 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080204.P3379007641352314801

namespace A080204

/-- `∑[abs(Δ[A332647(n)])]` -/
def P3379007641352314801.Spec : Prop :=
  ∀ n, P3379007641352314801.a n = A080204 (n + 1)

end A080204

/-! ## A080204.P16198225851734908293

`A332647(n+1)-1`
-/

namespace A080204.P16198225851734908293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332647 (n + 1) - 1

end

end A080204.P16198225851734908293

namespace A080204

/-- `A332647(n+1)-1` -/
def P16198225851734908293.Spec : Prop :=
  ∀ n, P16198225851734908293.a n = A080204 (n + 1)

end A080204

/-! ## A080204.P1492002979733848523

`record[A332647(n)]-A054977(n)`
-/

namespace A080204.P1492002979733848523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332647 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A054977 n

end

end A080204.P1492002979733848523

namespace A080204

/-- `record[A332647(n)]-A054977(n)` -/
def P1492002979733848523.Spec : Prop :=
  ∀ n, P1492002979733848523.a n = A080204 (n + 1)

end A080204

/-! ## A080204.P6459208517651176138

`∑[Δ[A332647(n)]*A158388(n)]`
-/

namespace A080204.P6459208517651176138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332647 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A158388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080204.P6459208517651176138

namespace A080204

/-- `∑[Δ[A332647(n)]*A158388(n)]` -/
def P6459208517651176138.Spec : Prop :=
  ∀ n, P6459208517651176138.a n = A080204 (n + 1)

end A080204

/-! ## A080204.P7987318780503573406

`A332814(A332812(n+1))+A332647(n+1)`
-/

namespace A080204.P7987318780503573406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332814 (A332812 (n + 1)).toNat + A332647 (n + 1)

end

end A080204.P7987318780503573406

namespace A080204

/-- `A332814(A332812(n+1))+A332647(n+1)` -/
def P7987318780503573406.Spec : Prop :=
  ∀ n, P7987318780503573406.a n = A080204 (n + 1)

end A080204

/-! ## A080204.P5449038031314303053

`Δ[∑[A332647(n)]-A023443(n)]`
-/

namespace A080204.P5449038031314303053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332647 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A023443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080204.P5449038031314303053

namespace A080204

/-- `Δ[∑[A332647(n)]-A023443(n)]` -/
def P5449038031314303053.Spec : Prop :=
  ∀ n, P5449038031314303053.a n = A080204 (n + 1)

end A080204

/-!
# A080208: a(n) is the least k such that the generalized Fermat number (k+1)^(2^n) + k^(2^n) is prime.

The programs for A080208, there is no canonical definition to state claims against.
-/

/-! ## A080208.P1642480571016559980

`A253633(n)-1`
-/

namespace A080208.P1642480571016559980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253633 n - 1

end

end A080208.P1642480571016559980

/-! ## A080208.P16626825509487764213

`A260196(n+2)+A253633(n)`
-/

namespace A080208.P16626825509487764213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A253633 n

end

end A080208.P16626825509487764213

/-! ## A080208.P3022948872572328753

`abs(A253633(n)+A057428(n+1))`
-/

namespace A080208.P3022948872572328753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A253633 n + A057428 (n + 1)|

end

end A080208.P3022948872572328753

/-! ## A080208.P2073983895307028805

`A113679(n+2)+A253633(n)+1`
-/

namespace A080208.P2073983895307028805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 (n + 2) + (A253633 n + 1)

end

end A080208.P2073983895307028805

/-! ## A080208.P3745103999262566100

`A295731(C(2, n+2))+A253633(n)`
-/

namespace A080208.P3745103999262566100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 (Nat.choose 2 (n + 2)) + A253633 n

end

end A080208.P3745103999262566100

/-!
# A080209: Gilbreath transform of the sequence of Sophie Germain primes (A005384), i.e., the diagonal of leading successive absolute differences of A005384.

The programs for A080209, there is no canonical definition to state claims against.
-/

/-! ## A080209.P13870218401150196910

`and(A117155(2*n+1), A117207(A117195(n+1)))`
-/

namespace A080209.P13870218401150196910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117155 (2 * n + 1)) (A117207 (A117195 (n + 1)).toNat)

end

end A080209.P13870218401150196910

/-! ## A080209.P10244754121613390052

`A336124(A001030(n+1)^A252463(n+1))`
-/

namespace A080209.P10244754121613390052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336124 (SequenceMachineLib.roundAway ((A001030 (n + 1) : ℚ) ^ (A252463 (n + 1) : ℤ))).toNat

end

end A080209.P10244754121613390052

/-! ## A080209.P8278650674694492163

`gcd(A024766(n+1), A083399(A024766(n+1)))`
-/

namespace A080209.P8278650674694492163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024766 (n + 1)) (A083399 (A024766 (n + 1)).toNat)

end

end A080209.P8278650674694492163

/-! ## A080209.P4163455883907339396

`A107338(A098792(n+2))`
-/

namespace A080209.P4163455883907339396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107338 (A098792 (n + 2)).toNat

end

end A080209.P4163455883907339396

/-!
# A080210: Lower bound for the multiplicity of a disjoint covering system of congruences.

The programs for A080210, there is no canonical definition to state claims against.
-/

/-! ## A080210.P16192077861441404579

`A086765(A348990(n+1)%A046196(3*(n+1)))`
-/

namespace A080210.P16192077861441404579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086765 (Int.tmod (A348990 (n + 1)) (A046196 (3 * (n + 1)))).toNat

end

end A080210.P16192077861441404579

/-! ## A080210.P7975916670363667763

`A086765(A348990(n+1))%A099591(3*n+1)`
-/

namespace A080210.P7975916670363667763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086765 (A348990 (n + 1)).toNat) (A099591 (3 * n + 1))

end

end A080210.P7975916670363667763

/-! ## A080210.P10572263745873336336

`A134332(n+1)+A124761(A226441(n+1))`
-/

namespace A080210.P10572263745873336336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134332 (n + 1) + A124761 (A226441 (n + 1)).toNat

end

end A080210.P10572263745873336336

/-! ## A080210.P7500752705741410457

`A134332(n+1)+A010060(A109983(3*n+4))`
-/

namespace A080210.P7500752705741410457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134332 (n + 1) + A010060 (A109983 (3 * n + 4)).toNat

end

end A080210.P7500752705741410457

/-! ## A080210.P5520144016720350908

`A134332(A134332(n+1)*A302032(n+1))`
-/

namespace A080210.P5520144016720350908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134332 (A134332 (n + 1) * A302032 (n + 1)).toNat

end

end A080210.P5520144016720350908

/-!
# A080211: a(n) = binomial(n, smallest prime factor of n).

The programs for A080211, there is no canonical definition to state claims against.
-/

/-! ## A080211.P17150911128813263802

`C(n+1, A020639(n+1))`
-/

namespace A080211.P17150911128813263802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A020639 (n + 1)).toNat

end

end A080211.P17150911128813263802

/-! ## A080211.P3683841263985397489

`C(n+1, A063918(n+1))`
-/

namespace A080211.P3683841263985397489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A063918 (n + 1)).toNat

end

end A080211.P3683841263985397489

/-! ## A080211.P15416624137287840996

`C(n+1, sqrt(A088377(n+1)))`
-/

namespace A080211.P15416624137287840996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (SequenceMachineLib.roundAway (Real.sqrt (A088377 (n + 1) : ℝ))).toNat

end

end A080211.P15416624137287840996

/-! ## A080211.P234140115010380109

`C(n+1, (n+1)/A032742(n+1))`
-/

namespace A080211.P234140115010380109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ))).toNat

end

end A080211.P234140115010380109

/-! ## A080211.P17889821583113061387

`C(n+1, A006530(A028233(n+1)))`
-/

namespace A080211.P17889821583113061387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A006530 (A028233 (n + 1)).toNat).toNat

end

end A080211.P17889821583113061387

/-! ## A080211.P7248042941295761447

`C(n+1, A028233(A007947(n+1)))`
-/

namespace A080211.P7248042941295761447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A028233 (A007947 (n + 1)).toNat).toNat

end

end A080211.P7248042941295761447

/-! ## A080211.P18164751665975521832

`A074909(A020639(n+1)+∑[n])`
-/

namespace A080211.P18164751665975521832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A020639 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A080211.P18164751665975521832

/-! ## A080211.P13991300324927408277

`A007318(∑[n+1]+A020639(n+1))`
-/

namespace A080211.P13991300324927408277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A020639 (n + 1)).toNat

end

end A080211.P13991300324927408277

/-! ## A080211.P13519520084651652080

`A007318(A134869(n+1)+A057237(n+1))`
-/

namespace A080211.P13519520084651652080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A134869 (n + 1) + A057237 (n + 1)).toNat

end

end A080211.P13519520084651652080

/-! ## A080211.P8538954740636802776

`C(n+1, A014673((n+1)²))`
-/

namespace A080211.P8538954740636802776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A014673 ((n + 1) ^ 2)).toNat

end

end A080211.P8538954740636802776

/-!
# A080212: Binomial(n, smallest odd prime factor of n).

The programs for A080212, there is no canonical definition to state claims against.
-/

/-! ## A080212.P3780950562686722514

`C(n+1, A078701(n+1))`
-/

namespace A080212.P3780950562686722514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A078701 (n + 1)).toNat

end

end A080212.P3780950562686722514

/-! ## A080212.P4221467874329613570

`C(n+1, A119288(2*(n+1)))`
-/

namespace A080212.P4221467874329613570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A119288 (2 * (n + 1))).toNat

end

end A080212.P4221467874329613570

/-! ## A080212.P6240528412930632527

`C(n+1, A020639(∏{p}[2*(n+1), #]/2))`
-/

namespace A080212.P6240528412930632527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A020639 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / 2)).toNat).toNat

end

end A080212.P6240528412930632527

/-! ## A080212.P7103027999219680850

`C(n+1, A020639(∏{p}[n+1, #^(#%2)]))`
-/

namespace A080212.P7103027999219680850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A020639 (∏ p ∈ Nat.primeFactors (f1 n), p ^ (p % 2))).toNat

end

end A080212.P7103027999219680850

/-!
# A080213: a(n) = binomial(n, greatest prime factor of n).

The programs for A080213, the canonical program `A080213.P4118106251419514332` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080213 has offset 1).

The definition of A080213 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080213.P4118106251419514332

`C(n+1, A006530(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A080213

/-- `C(n+1, A006530(n+1))` -/
def P4118106251419514332.Spec : Prop :=
  ∀ n, (P4118106251419514332.a n : ℤ) = A080213 (n + 1)

theorem P4118106251419514332.correct : P4118106251419514332.Spec := by
  intro n
  simp only [A080213, Nat.add_sub_cancel]

end A080213

/-! ## A080213.P544663863318104634

`C(n+1, A020639(A053585(n+1)))`
-/

namespace A080213.P544663863318104634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A020639 (A053585 (n + 1)).toNat).toNat

end

end A080213.P544663863318104634

namespace A080213

/-- `C(n+1, A020639(A053585(n+1)))` -/
def P544663863318104634.Spec : Prop :=
  ∀ n, (P544663863318104634.a n : ℤ) = A080213 (n + 1)

end A080213

/-! ## A080213.P16415447221795608680

`C(n+1, A088387(A007947(n+1)))`
-/

namespace A080213.P16415447221795608680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A088387 (A007947 (n + 1)).toNat).toNat

end

end A080213.P16415447221795608680

namespace A080213

/-- `C(n+1, A088387(A007947(n+1)))` -/
def P16415447221795608680.Spec : Prop :=
  ∀ n, (P16415447221795608680.a n : ℤ) = A080213 (n + 1)

end A080213

/-! ## A080213.P9213050353281951749

`A074909(A006530(n+1)+∑[n])`
-/

namespace A080213.P9213050353281951749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (A006530 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A080213.P9213050353281951749

namespace A080213

/-- `A074909(A006530(n+1)+∑[n])` -/
def P9213050353281951749.Spec : Prop :=
  ∀ n, P9213050353281951749.a n = A080213 (n + 1)

end A080213

/-! ## A080213.P5921525512668279656

`A007318(A000217(n+1)+A006530(2*(n+1)))`
-/

namespace A080213.P5921525512668279656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 1) + A006530 (2 * (n + 1))).toNat

end

end A080213.P5921525512668279656

namespace A080213

/-- `A007318(A000217(n+1)+A006530(2*(n+1)))` -/
def P5921525512668279656.Spec : Prop :=
  ∀ n, P5921525512668279656.a n = A080213 (n + 1)

end A080213

/-! ## A080213.P863836178179785425

`C(n+1, A085392((n+1)²))`
-/

namespace A080213.P863836178179785425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A085392 ((n + 1) ^ 2)).toNat

end

end A080213.P863836178179785425

namespace A080213

/-- `C(n+1, A085392((n+1)²))` -/
def P863836178179785425.Spec : Prop :=
  ∀ n, (P863836178179785425.a n : ℤ) = A080213 (n + 1)

end A080213

/-! ## A080213.P15488554640117947379

`C(n+1, A087039((n+1)²))`
-/

namespace A080213.P15488554640117947379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A087039 ((n + 1) ^ 2)).toNat

end

end A080213.P15488554640117947379

namespace A080213

/-- `C(n+1, A087039((n+1)²))` -/
def P15488554640117947379.Spec : Prop :=
  ∀ n, (P15488554640117947379.a n : ℤ) = A080213 (n + 1)

end A080213

/-!
# A080214: Binomial(greatest prime factor of n, smallest prime factor of n).

The programs for A080214, there is no canonical definition to state claims against.
-/

/-! ## A080214.P13974760245435065689

`C(A006530(n+1), A020639(n+1))`
-/

namespace A080214.P13974760245435065689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat (A020639 (n + 1)).toNat

end

end A080214.P13974760245435065689

/-! ## A080214.P6146243149299201792

`C(A006530(n+1), A046665(n+1))`
-/

namespace A080214.P6146243149299201792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat (A046665 (n + 1)).toNat

end

end A080214.P6146243149299201792

/-! ## A080214.P16965222647751543515

`C(A053585(∏{p}[n+1, #]), A046665(n+1))`
-/

namespace A080214.P16965222647751543515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A053585 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat (A046665 (n + 1)).toNat

end

end A080214.P16965222647751543515

/-! ## A080214.P11504240086200095606

`C(A006530(n+1), (n+1)/A032742(n+1))`
-/

namespace A080214.P11504240086200095606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ))).toNat

end

end A080214.P11504240086200095606

/-! ## A080214.P17663920338484218843

`C((n+1)/A052126(n+1), A046665(n+1))`
-/

namespace A080214.P17663920338484218843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A052126 (n + 1) : ℚ))).toNat (A046665 (n + 1)).toNat

end

end A080214.P17663920338484218843

/-! ## A080214.P10773317852505496654

`C(A006530(n+1), A006530(A028233(n+1)))`
-/

namespace A080214.P10773317852505496654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat (A006530 (A028233 (n + 1)).toNat).toNat

end

end A080214.P10773317852505496654

/-! ## A080214.P7652048231175263172

`C(A020639(A053585(n+1)), A020639(n+1))`
-/

namespace A080214.P7652048231175263172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (A053585 (n + 1)).toNat).toNat (A020639 (n + 1)).toNat

end

end A080214.P7652048231175263172

/-! ## A080214.P16622458072591274484

`C(A014963(A053585(n+1)), A046665(n+1))`
-/

namespace A080214.P16622458072591274484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014963 (A053585 (n + 1)).toNat).toNat (A046665 (n + 1)).toNat

end

end A080214.P16622458072591274484

/-! ## A080214.P14452719013817287999

`C(A046665(n+1)+A020639(n+1), A020639(n+1))`
-/

namespace A080214.P14452719013817287999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A046665 (n + 1) + A020639 (n + 1)).toNat (A020639 (n + 1)).toNat

end

end A080214.P14452719013817287999

/-! ## A080214.P8941536450418352390

`C(A006530(n+1), A074320(n+1)-A006530(n+1))`
-/

namespace A080214.P8941536450418352390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat (A074320 (n + 1) - A006530 (n + 1)).toNat

end

end A080214.P8941536450418352390

/-! ## A080214.P6427371029548084185

`C(A074320(n+1)-A020639(n+1), A020639(n+1))`
-/

namespace A080214.P6427371029548084185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A074320 (n + 1) - A020639 (n + 1)).toNat (A020639 (n + 1)).toNat

end

end A080214.P6427371029548084185

/-! ## A080214.P10483409735998572942

`C(A318884(n+1)-A318886(n+1), A046665(n+1))`
-/

namespace A080214.P10483409735998572942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A318884 (n + 1) - A318886 (n + 1)).toNat (A046665 (n + 1)).toNat

end

end A080214.P10483409735998572942

/-! ## A080214.P14662742958593293666

`C(A006530(n+1), A014673(2*(n+1)))`
-/

namespace A080214.P14662742958593293666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat (A014673 (2 * (n + 1))).toNat

end

end A080214.P14662742958593293666

/-! ## A080214.P8625414480524362479

`C(A085392(2*(n+1)), A020639(n+1))`
-/

namespace A080214.P8625414480524362479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A085392 (2 * (n + 1))).toNat (A020639 (n + 1)).toNat

end

end A080214.P8625414480524362479

/-! ## A080214.P5071822825566639667

`C(A085392(2*(n+1)), A014673(2*(n+1)))`
-/

namespace A080214.P5071822825566639667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A085392 (2 * (n + 1))).toNat (A014673 (2 * (n + 1))).toNat

end

end A080214.P5071822825566639667

/-! ## A080214.P17165816201292289181

`C(A051664(n+1)-A070536(n+1), A046665(n+1))`
-/

namespace A080214.P17165816201292289181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051664 (n + 1) - A070536 (n + 1)).toNat (A046665 (n + 1)).toNat

end

end A080214.P17165816201292289181

/-! ## A080214.P3009783789666041011

`C(A032742(A066048(3*(n+1))), A046665(n+1))`
-/

namespace A080214.P3009783789666041011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A032742 (A066048 (3 * (n + 1))).toNat).toNat (A046665 (n + 1)).toNat

end

end A080214.P3009783789666041011

/-! ## A080214.P4352164979973507647

`C(A027746(A022559(n+1)+1), A046665(n+1))`
-/

namespace A080214.P4352164979973507647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A027746 (A022559 (n + 1) + 1).toNat).toNat (A046665 (n + 1)).toNat

end

end A080214.P4352164979973507647

/-! ## A080214.P9909029636367393846

`A007318(A000217(A006530(n+1))+A020639(n+1))`
-/

namespace A080214.P9909029636367393846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (A006530 (n + 1)).toNat + A020639 (n + 1)).toNat

end

end A080214.P9909029636367393846

/-!
# A080215: Binomial(greatest prime factor of n, smallest odd prime factor of n).

The programs for A080215, there is no canonical definition to state claims against.
-/

/-! ## A080215.P7644712438693103611

`C(A006530(n+1), A078701(n+1))`
-/

namespace A080215.P7644712438693103611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat (A078701 (n + 1)).toNat

end

end A080215.P7644712438693103611

/-! ## A080215.P5377366210964101296

`C(A025492(∏{p}[n+1, #]), (n+1)/A108738(n+1))`
-/

namespace A080215.P5377366210964101296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025492 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A108738 (n + 1) : ℚ))).toNat

end

end A080215.P5377366210964101296

/-! ## A080215.P17634351141561762444

`C(A223491(∏{p}[n+1, #]), (n+1)/A108738(n+1))`
-/

namespace A080215.P17634351141561762444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A223491 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A108738 (n + 1) : ℚ))).toNat

end

end A080215.P17634351141561762444

/-! ## A080215.P6378497231338172742

`C(A070229(n+1)-(n+1), (n+1)/A108738(n+1))`
-/

namespace A080215.P6378497231338172742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A070229 (n + 1) - (n + 1 : ℤ)).toNat (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A108738 (n + 1) : ℚ))).toNat

end

end A080215.P6378497231338172742

/-! ## A080215.P5678369666697751503

`C(A070229(n+1)-(n+1), A020639((n+1)/2^val(n+1, 2)))`
-/

namespace A080215.P5678369666697751503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A070229 (n + 1) - (n + 1 : ℤ)).toNat (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat).toNat

end

end A080215.P5678369666697751503

/-! ## A080215.P16230103260797820880

`C(A006530(n+1), A020639(A000265(n+1)))`
-/

namespace A080215.P16230103260797820880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat (A020639 (A000265 (n + 1)).toNat).toNat

end

end A080215.P16230103260797820880

/-! ## A080215.P9040288445628727873

`C(A070229(n+1)-(n+1), A020639(A007947(2*(n+1))/2))`
-/

namespace A080215.P9040288445628727873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A070229 (n + 1) - (n + 1 : ℤ)).toNat (A020639 (SequenceMachineLib.roundAway ((A007947 (2 * (n + 1)) : ℚ) / 2)).toNat).toNat

end

end A080215.P9040288445628727873

/-! ## A080215.P7016154177948534279

`C(A074320(n+1)-A020639(n+1), (n+1)/A108738(n+1))`
-/

namespace A080215.P7016154177948534279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A074320 (n + 1) - A020639 (n + 1)).toNat (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A108738 (n + 1) : ℚ))).toNat

end

end A080215.P7016154177948534279

/-!
# A080218: Monotonically increasing sequence such that every positive integer n appears if and only if d(n) doesn't (d(n)=number of divisors of n, A000005).

The programs for A080218, the canonical program `A080218.P8051704122228594511` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080218 has offset 1).

The definition of A080218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080218.P6113544394326246967

`eq[1, A262684(n+1)]+1`
-/

namespace A080218.P6113544394326246967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080218.P6113544394326246967

namespace A080218

/-- `eq[1, A262684(n+1)]+1` -/
def P6113544394326246967.Spec : Prop :=
  ∀ n, (P6113544394326246967.a n : ℤ) = A080218 (n + 1)

end A080218

/-! ## A080218.P8051704122228594511

`comp[A182859(n+1)-1]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A080218

/-- `comp[A182859(n+1)-1]+1` -/
def P8051704122228594511.Spec : Prop :=
  ∀ n, (P8051704122228594511.a n : ℤ) = A080218 (n + 1)

theorem P8051704122228594511.correct : P8051704122228594511.Spec := by
  intro n
  simp only [A080218, Nat.add_sub_cancel]

end A080218

/-! ## A080218.P2400945425427121763

`record[(n+1)*C(2, a(A000005(n+1)-1))]` with `a(0)=3, a(1)=2`
-/

namespace A080218.P2400945425427121763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  (n + 1) * Nat.choose 2 (f1 (A000005 (n + 1) - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080218.P2400945425427121763

namespace A080218

/-- `record[(n+1)*C(2, a(A000005(n+1)-1))]` -/
def P2400945425427121763.Spec : Prop :=
  ∀ n, (P2400945425427121763.a n : ℤ) = A080218 (n + 1)

end A080218

/-! ## A080218.P17634238795414219540

`lt[A003849(10*a(A000005(n+1)-1)+1), 1]+1` with `a(0)=10, a(1)=2`
-/

namespace A080218.P17634238795414219540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, 2] fun n f1 =>
  A003849 (10 * f1 (A000005 (n + 1) - 1).toNat + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080218.P17634238795414219540

namespace A080218

/-- `lt[A003849(10*a(A000005(n+1)-1)+1), 1]+1` -/
def P17634238795414219540.Spec : Prop :=
  ∀ n, (P17634238795414219540.a n : ℤ) = A080218 (n + 1)

end A080218

/-! ## A080218.P5016357974848232361

`filter[A213367(n+1), A262684(#)]`
-/

namespace A080218.P5016357974848232361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A080218.P5016357974848232361

namespace A080218

/-- `filter[A213367(n+1), A262684(#)]` -/
def P5016357974848232361.Spec : Prop :=
  ∀ n, P5016357974848232361.a n = A080218 (n + 1)

end A080218

/-! ## A080218.P4816815123181986727

`filter[A163162(n+1), A262684(#)]`
-/

namespace A080218.P4816815123181986727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A080218.P4816815123181986727

namespace A080218

/-- `filter[A163162(n+1), A262684(#)]` -/
def P4816815123181986727.Spec : Prop :=
  ∀ n, P4816815123181986727.a n = A080218 (n + 1)

end A080218

/-! ## A080218.P12418966798789600158

`filter[A373868(n+1), A262684(#)]`
-/

namespace A080218.P12418966798789600158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A080218.P12418966798789600158

namespace A080218

/-- `filter[A373868(n+1), A262684(#)]` -/
def P12418966798789600158.Spec : Prop :=
  ∀ n, P12418966798789600158.a n = A080218 (n + 1)

end A080218

/-! ## A080218.P11929786196333136417

`lt[A262683(n+1), 1]+1`
-/

namespace A080218.P11929786196333136417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262683 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080218.P11929786196333136417

namespace A080218

/-- `lt[A262683(n+1), 1]+1` -/
def P11929786196333136417.Spec : Prop :=
  ∀ n, (P11929786196333136417.a n : ℤ) = A080218 (n + 1)

end A080218

/-! ## A080218.P6896603881845676898

`A262692(2*A262691(n+1)+1)`
-/

namespace A080218.P6896603881845676898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262692 (2 * A262691 (n + 1) + 1).toNat

end

end A080218.P6896603881845676898

namespace A080218

/-- `A262692(2*A262691(n+1)+1)` -/
def P6896603881845676898.Spec : Prop :=
  ∀ n, P6896603881845676898.a n = A080218 (n + 1)

end A080218

/-! ## A080218.P2502836124448144808

`A262692(A262691(n+1)+A262691(n+1)+1)`
-/

namespace A080218.P2502836124448144808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262692 (A262691 (n + 1) + (A262691 (n + 1) + 1)).toNat

end

end A080218.P2502836124448144808

namespace A080218

/-- `A262692(A262691(n+1)+A262691(n+1)+1)` -/
def P2502836124448144808.Spec : Prop :=
  ∀ n, P2502836124448144808.a n = A080218 (n + 1)

end A080218

/-!
# A080220: a(1)=2; then if n is prime, a(n) is the smallest prime number greater than a(n-1), if n is composite a(n)=a(n-1)+1.

The programs for A080220, there is no canonical definition to state claims against.
-/

/-! ## A080220.P2630537211492930572

`A055377(n+4)+record[A153112(n)]`
-/

namespace A080220.P2630537211492930572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (n + 4) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080220.P2630537211492930572

/-! ## A080220.P9011541019279804204

`p?[A105560(A300951(n))]+n`
-/

namespace A080220.P9011541019279804204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A300951 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ)

end

end A080220.P9011541019279804204

/-! ## A080220.P17089787493418627166

`A006530(A139550(n+4))+n`
-/

namespace A080220.P17089787493418627166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139550 (n + 4)).toNat + (n : ℤ)

end

end A080220.P17089787493418627166

/-! ## A080220.P18000511674445877026

`A006530(A282503(n+4))+n`
-/

namespace A080220.P18000511674445877026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A282503 (n + 4)).toNat + (n : ℤ)

end

end A080220.P18000511674445877026

/-! ## A080220.P9204880014184865959

`A055377(n+4)%A325881(2*n+5)+n`
-/

namespace A080220.P9204880014184865959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055377 (n + 4)) (A325881 (2 * n + 5)) + (n : ℤ)

end

end A080220.P9204880014184865959

/-!
# A080221: n is Harshad (divisible by the sum of its digits) in a(n) bases from 1 to n.

The programs for A080221, there is no canonical definition to state claims against.
-/

/-! ## A080221.P4488886498421641070

`1-A357823(n+1)+n`
-/

namespace A080221.P4488886498421641070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A357823 (n + 1) + (n : ℤ)

end

end A080221.P4488886498421641070

/-! ## A080221.P8781927115946547228

`A024000(A357823(n+1))+n`
-/

namespace A080221.P8781927115946547228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A357823 (n + 1)).toNat + (n : ℤ)

end

end A080221.P8781927115946547228

/-! ## A080221.P15604258078175741102

`A260196(n)*A357823(n+1)+1+n`
-/

namespace A080221.P15604258078175741102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n * A357823 (n + 1) + 1 + (n : ℤ)

end

end A080221.P15604258078175741102

/-! ## A080221.P12782374921998674328

`A280193(A017281(n))*A357823(n+1)+n+1`
-/

namespace A080221.P12782374921998674328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (A017281 n).toNat * A357823 (n + 1) + (n + 1 : ℤ)

end

end A080221.P12782374921998674328

/-! ## A080221.P18292868618244090651

`A137849(n+1)-A225654(A243745(n))`
-/

namespace A080221.P18292868618244090651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137849 (n + 1) - A225654 (A243745 (n + 10)).toNat

end

end A080221.P18292868618244090651

/-!
# A080222: Record-setting differences between adjacent elements of the Mian-Chowla sequence A005282.

The programs for A080222, there is no canonical definition to state claims against.
-/

/-! ## A080222.P7631736464767492290

`record[Δ[A005282(n+1)]]`
-/

namespace A080222.P7631736464767492290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005282 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080222.P7631736464767492290

/-! ## A080222.P12193957292645608250

`record[Δ[A025582(n+1)]]`
-/

namespace A080222.P12193957292645608250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025582 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080222.P12193957292645608250

/-! ## A080222.P15714602638099251812

`record[Δ[A284917(n+1)]+1]`
-/

namespace A080222.P15714602638099251812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284917 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080222.P15714602638099251812

/-! ## A080222.P6002111210420179479

`record[A005282(n+2)-A005282(n+1)]`
-/

namespace A080222.P6002111210420179479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005282 (n + 2) - A005282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080222.P6002111210420179479

/-! ## A080222.P18313715596974141285

`record[A025582(n+2)-A025582(n+1)]`
-/

namespace A080222.P18313715596974141285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025582 (n + 2) - A025582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080222.P18313715596974141285

/-!
# A080223: Record-setting differences between adjacent elements of the Mian-Chowla sequence variant A051788.

The programs for A080223, there is no canonical definition to state claims against.
-/

/-! ## A080223.P32522717575126001

`record[Δ[A051788(n+1)]]`
-/

namespace A080223.P32522717575126001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051788 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080223.P32522717575126001

/-! ## A080223.P7589822451722956063

`record[A051788(n+2)-A051788(n+1)]`
-/

namespace A080223.P7589822451722956063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051788 (n + 2) - A051788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080223.P7589822451722956063

/-! ## A080223.P10209749693155076767

`record[Δ[eq[2, A281511(n+1)]]]`
-/

namespace A080223.P10209749693155076767
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281511 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080223.P10209749693155076767

/-! ## A080223.P8534963600416341676

`A000040(n+2)-A001222(A018030(n+1))`
-/

namespace A080223.P8534963600416341676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A001222 (A018030 (n + 1)).toNat

end

end A080223.P8534963600416341676

/-!
# A080224: Number of abundant divisors of n.

The programs for A080224, the canonical program `A080224.P15248761020012364030` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080224 has offset 1).

The definition of A080224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080224.P6027666065015850062

`A294929(n+1)+A294937(n+1)`
-/

namespace A080224.P6027666065015850062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294929 (n + 1) + A294937 (n + 1)

end

end A080224.P6027666065015850062

namespace A080224

/-- `A294929(n+1)+A294937(n+1)` -/
def P6027666065015850062.Spec : Prop :=
  ∀ n, P6027666065015850062.a n = A080224 (n + 1)

theorem P6027666065015850062.correct : P6027666065015850062.Spec := by
  intro n
  simp only [A080224, Nat.add_sub_cancel, A080224.P6027666065015850062.a, A080224.P15248761020012364030.f1, A080224.P15248761020012364030.a, A294929, A294929.P2023919567513394110.a, A294937, A294937.P16064831210993750001.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080224

/-! ## A080224.P15248761020012364030

`∑{d}[n+1, A294937(#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A080224

/-- `∑{d}[n+1, A294937(#)]` -/
def P15248761020012364030.Spec : Prop :=
  ∀ n, P15248761020012364030.a n = A080224 (n + 1)

theorem P15248761020012364030.correct : P15248761020012364030.Spec := by
  intro n
  simp only [A080224, Nat.add_sub_cancel]

end A080224

/-! ## A080224.P12455054689198611499

`A341620(n+1)-A080225(n+1)`
-/

namespace A080224.P12455054689198611499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1) - A080225 (n + 1)

end

end A080224.P12455054689198611499

namespace A080224

/-- `A341620(n+1)-A080225(n+1)` -/
def P12455054689198611499.Spec : Prop :=
  ∀ n, P12455054689198611499.a n = A080224 (n + 1)

theorem P12455054689198611499.correct : P12455054689198611499.Spec := by
  intro n
  simp only [A080224, Nat.add_sub_cancel, A080224.P12455054689198611499.a, A080224.P15248761020012364030.f1, A080224.P15248761020012364030.a, A080225, A080225.P3972253355863549371.f1, A080225.P3972253355863549371.a, A294937, A294937.P16064831210993750001.a, A341620, A341620.P4191397084300056986.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080224

/-! ## A080224.P1080290584997435046

`A337345(n+1)-A378662(n+1)`
-/

namespace A080224.P1080290584997435046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1) - A378662 (n + 1)

end

end A080224.P1080290584997435046

namespace A080224

/-- `A337345(n+1)-A378662(n+1)` -/
def P1080290584997435046.Spec : Prop :=
  ∀ n, P1080290584997435046.a n = A080224 (n + 1)

theorem P1080290584997435046.correct : P1080290584997435046.Spec := by
  intro n
  simp only [A080224, Nat.add_sub_cancel, A080224.P1080290584997435046.a, A080224.P15248761020012364030.f1, A080224.P15248761020012364030.a, A294937, A294937.P16064831210993750001.a, A337345, A337345.P1594935461271935527.a, A378662, A378662.P11219609030214075406.f1, A378662.P11219609030214075406.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, A341612, A341612.P3068073104531840485.a, A252742, A252742.P12034946379470004791.a, A003961, A003961.P5996473960037614004.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080224

/-! ## A080224.P6350710747992215707

`A000005(n+1)-(A080226(n+1)+A080225(n+1))`
-/

namespace A080224.P6350710747992215707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A080226 (n + 1) + A080225 (n + 1))

end

end A080224.P6350710747992215707

namespace A080224

/-- `A000005(n+1)-(A080226(n+1)+A080225(n+1))` -/
def P6350710747992215707.Spec : Prop :=
  ∀ n, P6350710747992215707.a n = A080224 (n + 1)

end A080224

/-! ## A080224.P14207431063134878458

`A000005(n+1)-(A294935(n+1)+A294928(n+1))`
-/

namespace A080224.P14207431063134878458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A294935 (n + 1) + A294928 (n + 1))

end

end A080224.P14207431063134878458

namespace A080224

/-- `A000005(n+1)-(A294935(n+1)+A294928(n+1))` -/
def P14207431063134878458.Spec : Prop :=
  ∀ n, P14207431063134878458.a n = A080224 (n + 1)

end A080224

/-! ## A080224.P18036827837084106292

`A337345(n+1)-(A378663(n+1)+A080225(n+1))`
-/

namespace A080224.P18036827837084106292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1) - (A378663 (n + 1) + A080225 (n + 1))

end

end A080224.P18036827837084106292

namespace A080224

/-- `A337345(n+1)-(A378663(n+1)+A080225(n+1))` -/
def P18036827837084106292.Spec : Prop :=
  ∀ n, P18036827837084106292.a n = A080224 (n + 1)

theorem P18036827837084106292.correct : P18036827837084106292.Spec := by
  intro n
  simp only [A080224, Nat.add_sub_cancel, A080224.P18036827837084106292.a, A080224.P15248761020012364030.f1, A080224.P15248761020012364030.a, A080225, A080225.P3972253355863549371.f1, A080225.P3972253355863549371.a, A294937, A294937.P16064831210993750001.a, A337345, A337345.P1594935461271935527.a, A378663, A378663.P6986709549582363223.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, A378662, A378662.P11219609030214075406.f1, A378662.P11219609030214075406.a, A341612, A341612.P3068073104531840485.a, A252742, A252742.P12034946379470004791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080224

/-! ## A080224.P5131964160892462048

`A174341(n)*A341508(n+1)`
-/

namespace A080224.P5131964160892462048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174341 n * A341508 (n + 1)

end

end A080224.P5131964160892462048

namespace A080224

/-- `A174341(n)*A341508(n+1)` -/
def P5131964160892462048.Spec : Prop :=
  ∀ n, P5131964160892462048.a n = A080224 (n + 1)

end A080224

/-! ## A080224.P8345354640647895620

`A181722(n+1)*A341508(n+1)`
-/

namespace A080224.P8345354640647895620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181722 (n + 1) * A341508 (n + 1)

end

end A080224.P8345354640647895620

namespace A080224

/-- `A181722(n+1)*A341508(n+1)` -/
def P8345354640647895620.Spec : Prop :=
  ∀ n, P8345354640647895620.a n = A080224 (n + 1)

end A080224

/-! ## A080224.P12943264218786697297

`A341508(A003557(A064549(n+1)))`
-/

namespace A080224.P12943264218786697297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341508 (A003557 (A064549 (n + 1)).toNat).toNat

end

end A080224.P12943264218786697297

namespace A080224

/-- `A341508(A003557(A064549(n+1)))` -/
def P12943264218786697297.Spec : Prop :=
  ∀ n, P12943264218786697297.a n = A080224 (n + 1)

end A080224

/-!
# A080225: Number of perfect divisors of n.

The programs for A080225, the canonical program `A080225.P3972253355863549371` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080225 has offset 1).

The definition of A080225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080225.P3972253355863549371

`∑{d}[n+1, val(A000203(#), 2*#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080225

/-- `∑{d}[n+1, val(A000203(#), 2*#)]` -/
def P3972253355863549371.Spec : Prop :=
  ∀ n, (P3972253355863549371.a n : ℤ) = A080225 (n + 1)

theorem P3972253355863549371.correct : P3972253355863549371.Spec := by
  intro n
  simp only [A080225, Nat.add_sub_cancel]

end A080225

/-! ## A080225.P5748582019178223354

`A000330(A187794(n+1))%3`
-/

namespace A080225.P5748582019178223354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000330 (A187794 (n + 1)).toNat) 3

end

end A080225.P5748582019178223354

namespace A080225

/-- `A000330(A187794(n+1))%3` -/
def P5748582019178223354.Spec : Prop :=
  ∀ n, P5748582019178223354.a n = A080225 (n + 1)

end A080225

/-! ## A080225.P17784244987370670164

`A341620(n+1)-A080224(n+1)`
-/

namespace A080225.P17784244987370670164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1) - A080224 (n + 1)

end

end A080225.P17784244987370670164

namespace A080225

/-- `A341620(n+1)-A080224(n+1)` -/
def P17784244987370670164.Spec : Prop :=
  ∀ n, P17784244987370670164.a n = A080225 (n + 1)

theorem P17784244987370670164.correct : P17784244987370670164.Spec := by
  intro n
  simp only [A080225, Nat.add_sub_cancel, A080225.P17784244987370670164.a, A080225.P3972253355863549371.f1, A080225.P3972253355863549371.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A080224, A080224.P15248761020012364030.f1, A080224.P15248761020012364030.a, A341620, A341620.P4191397084300056986.a, A294937, A294937.P16064831210993750001.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080225

/-! ## A080225.P18337772600255029828

`A378662(n+1)-A378663(n+1)`
-/

namespace A080225.P18337772600255029828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378662 (n + 1) - A378663 (n + 1)

end

end A080225.P18337772600255029828

namespace A080225

/-- `A378662(n+1)-A378663(n+1)` -/
def P18337772600255029828.Spec : Prop :=
  ∀ n, P18337772600255029828.a n = A080225 (n + 1)

theorem P18337772600255029828.correct : P18337772600255029828.Spec := by
  intro n
  simp only [A080225, Nat.add_sub_cancel, A080225.P18337772600255029828.a, A080225.P3972253355863549371.f1, A080225.P3972253355863549371.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A378662, A378662.P11219609030214075406.f1, A378662.P11219609030214075406.a, A378663, A378663.P6986709549582363223.a, A341612, A341612.P3068073104531840485.a, A252742, A252742.P12034946379470004791.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, A003961, A003961.P5996473960037614004.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080225

/-! ## A080225.P7106944606814573134

`A000005(n+1)-(A080226(n+1)+A080224(n+1))`
-/

namespace A080225.P7106944606814573134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A080226 (n + 1) + A080224 (n + 1))

end

end A080225.P7106944606814573134

namespace A080225

/-- `A000005(n+1)-(A080226(n+1)+A080224(n+1))` -/
def P7106944606814573134.Spec : Prop :=
  ∀ n, P7106944606814573134.a n = A080225 (n + 1)

end A080225

/-! ## A080225.P15160052162646956623

`A294927(n+1)+A294936(n+1)-A080224(n+1)`
-/

namespace A080225.P15160052162646956623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294927 (n + 1) + (A294936 (n + 1) - A080224 (n + 1))

end

end A080225.P15160052162646956623

namespace A080225

/-- `A294927(n+1)+A294936(n+1)-A080224(n+1)` -/
def P15160052162646956623.Spec : Prop :=
  ∀ n, P15160052162646956623.a n = A080225 (n + 1)

end A080225

/-! ## A080225.P647635080171805821

`A341620(n+1)+A378662(n+1)-A337345(n+1)`
-/

namespace A080225.P647635080171805821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1) + (A378662 (n + 1) - A337345 (n + 1))

end

end A080225.P647635080171805821

namespace A080225

/-- `A341620(n+1)+A378662(n+1)-A337345(n+1)` -/
def P647635080171805821.Spec : Prop :=
  ∀ n, P647635080171805821.a n = A080225 (n + 1)

theorem P647635080171805821.correct : P647635080171805821.Spec := by
  intro n
  simp only [A080225, Nat.add_sub_cancel, A080225.P647635080171805821.a, A080225.P3972253355863549371.f1, A080225.P3972253355863549371.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A337345, A337345.P1594935461271935527.a, A341620, A341620.P4191397084300056986.a, A378662, A378662.P11219609030214075406.f1, A378662.P11219609030214075406.a, A080224, A080224.P15248761020012364030.f1, A080224.P15248761020012364030.a, A341612, A341612.P3068073104531840485.a, A252742, A252742.P12034946379470004791.a, A294935, A294935.P4767353041558056281.f1, A294935.P4767353041558056281.a, A294937, A294937.P16064831210993750001.a, A003961, A003961.P5996473960037614004.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080225

/-! ## A080225.P8378894283587451092

`A294927(n+1)+1-A294934(n+1)-A080224(n+1)`
-/

namespace A080225.P8378894283587451092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294927 (n + 1) + (1 - A294934 (n + 1)) - A080224 (n + 1)

end

end A080225.P8378894283587451092

namespace A080225

/-- `A294927(n+1)+1-A294934(n+1)-A080224(n+1)` -/
def P8378894283587451092.Spec : Prop :=
  ∀ n, P8378894283587451092.a n = A080225 (n + 1)

end A080225

/-! ## A080225.P6023478800204475492

`A000120(∑{p}[A325471(n+1), A325471(#+1)])`
-/

namespace A080225.P6023478800204475492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A325471 (p + 1)).toNat

end

end A080225.P6023478800204475492

namespace A080225

/-- `A000120(∑{p}[A325471(n+1), A325471(#+1)])` -/
def P6023478800204475492.Spec : Prop :=
  ∀ n, P6023478800204475492.a n = A080225 (n + 1)

end A080225

/-! ## A080225.P17893944377940116309

`A001222(A000015(A325471(n+1)))`
-/

namespace A080225.P17893944377940116309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000015 (A325471 (n + 1)).toNat).toNat

end

end A080225.P17893944377940116309

namespace A080225

/-- `A001222(A000015(A325471(n+1)))` -/
def P17893944377940116309.Spec : Prop :=
  ∀ n, P17893944377940116309.a n = A080225 (n + 1)

end A080225

/-! ## A080225.P2737094257532147167

`A025427(A187794(n+1)²)`
-/

namespace A080225.P2737094257532147167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (A187794 (n + 1) ^ 2).toNat

end

end A080225.P2737094257532147167

namespace A080225

/-- `A025427(A187794(n+1)²)` -/
def P2737094257532147167.Spec : Prop :=
  ∀ n, P2737094257532147167.a n = A080225 (n + 1)

end A080225

/-! ## A080225.P6928425841728816431

`n%A000005(A068956(A187794(n+1)+2))`
-/

namespace A080225.P6928425841728816431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000005 (A068956 (A187794 (n + 1) + 2).toNat).toNat)

end

end A080225.P6928425841728816431

namespace A080225

/-- `n%A000005(A068956(A187794(n+1)+2))` -/
def P6928425841728816431.Spec : Prop :=
  ∀ n, P6928425841728816431.a n = A080225 (n + 1)

end A080225

/-! ## A080225.P9707132172019897756

`A027152(n)%A325469(n+1)`
-/

namespace A080225.P9707132172019897756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027152 n) (A325469 (n + 1))

end

end A080225.P9707132172019897756

namespace A080225

/-- `A027152(n)%A325469(n+1)` -/
def P9707132172019897756.Spec : Prop :=
  ∀ n, P9707132172019897756.a n = A080225 (n + 1)

end A080225

/-! ## A080225.P14430485801734721335

`A056187(n)%A325469(n+1)`
-/

namespace A080225.P14430485801734721335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056187 n) (A325469 (n + 1))

end

end A080225.P14430485801734721335

namespace A080225

/-- `A056187(n)%A325469(n+1)` -/
def P14430485801734721335.Spec : Prop :=
  ∀ n, P14430485801734721335.a n = A080225 (n + 1)

end A080225

/-! ## A080225.P10628078415227414117

`A001112(n)%A325469(n+1)`
-/

namespace A080225.P10628078415227414117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001112 n) (A325469 (n + 1))

end

end A080225.P10628078415227414117

namespace A080225

/-- `A001112(n)%A325469(n+1)` -/
def P10628078415227414117.Spec : Prop :=
  ∀ n, P10628078415227414117.a n = A080225 (n + 1)

end A080225

/-! ## A080225.P14887463671659727849

`A002589(n)%A325469(n+1)`
-/

namespace A080225.P14887463671659727849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002589 n) (A325469 (n + 1))

end

end A080225.P14887463671659727849

namespace A080225

/-- `A002589(n)%A325469(n+1)` -/
def P14887463671659727849.Spec : Prop :=
  ∀ n, P14887463671659727849.a n = A080225 (n + 1)

end A080225

/-! ## A080225.P7826190160302514155

`A005087(A325470(n+1)²)`
-/

namespace A080225.P7826190160302514155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A325470 (n + 1) ^ 2).toNat

end

end A080225.P7826190160302514155

namespace A080225

/-- `A005087(A325470(n+1)²)` -/
def P7826190160302514155.Spec : Prop :=
  ∀ n, P7826190160302514155.a n = A080225 (n + 1)

end A080225

/-! ## A080225.P13726039178045888139

`A285381(n)%A325469(n+1)`
-/

namespace A080225.P13726039178045888139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285381 n) (A325469 (n + 1))

end

end A080225.P13726039178045888139

namespace A080225

/-- `A285381(n)%A325469(n+1)` -/
def P13726039178045888139.Spec : Prop :=
  ∀ n, P13726039178045888139.a n = A080225 (n + 1)

end A080225

/-!
# A080226: Number of deficient divisors of n.

The programs for A080226, the canonical program `A080226.P17485032280116406483` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080226 has offset 1).

The definition of A080226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080226.P5443820196524821726

`A294926(n+1)+A294934(n+1)`
-/

namespace A080226.P5443820196524821726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294926 (n + 1) + A294934 (n + 1)

end

end A080226.P5443820196524821726

namespace A080226

/-- `A294926(n+1)+A294934(n+1)` -/
def P5443820196524821726.Spec : Prop :=
  ∀ n, P5443820196524821726.a n = A080226 (n + 1)

theorem P5443820196524821726.correct : P5443820196524821726.Spec := by
  intro n
  simp only [A080226, Nat.add_sub_cancel, A080226.P5443820196524821726.a, A080226.P17485032280116406483.f1, A080226.P17485032280116406483.a, A294926, A294926.P4076781104688311516.a, A294934, A294934.P6887900065844113771.f1, A294934.P6887900065844113771.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080226

/-! ## A080226.P17485032280116406483

`∑{d}[n+1, A294934(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080226

/-- `∑{d}[n+1, A294934(#)]` -/
def P17485032280116406483.Spec : Prop :=
  ∀ n, P17485032280116406483.a n = A080226 (n + 1)

theorem P17485032280116406483.correct : P17485032280116406483.Spec := by
  intro n
  simp only [A080226, Nat.add_sub_cancel]

end A080226

/-! ## A080226.P12277991254807024774

`∑{d}[n+1, 1-A294936(#)]`
-/

namespace A080226.P12277991254807024774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A294936 d)

end

end A080226.P12277991254807024774

namespace A080226

/-- `∑{d}[n+1, 1-A294936(#)]` -/
def P12277991254807024774.Spec : Prop :=
  ∀ n, P12277991254807024774.a n = A080226 (n + 1)

theorem P12277991254807024774.correct : P12277991254807024774.Spec := by
  intro n
  simp only [A080226, Nat.add_sub_cancel, A080226.P12277991254807024774.f1, A080226.P12277991254807024774.a, A080226.P17485032280116406483.f1, A080226.P17485032280116406483.a, A294934, A294934.P6887900065844113771.f1, A294934.P6887900065844113771.a, A294936, A294936.P10769920400480544505.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080226

/-! ## A080226.P16166545717549505488

`Δ[A006218(n)]-A341620(n+1)`
-/

namespace A080226.P16166545717549505488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A341620 (n + 1)

end

end A080226.P16166545717549505488

namespace A080226

/-- `Δ[A006218(n)]-A341620(n+1)` -/
def P16166545717549505488.Spec : Prop :=
  ∀ n, P16166545717549505488.a n = A080226 (n + 1)

end A080226

/-! ## A080226.P6710980827114576387

`Δ[A054519(n)]-A341620(n+1)`
-/

namespace A080226.P6710980827114576387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A341620 (n + 1)

end

end A080226.P6710980827114576387

namespace A080226

/-- `Δ[A054519(n)]-A341620(n+1)` -/
def P6710980827114576387.Spec : Prop :=
  ∀ n, P6710980827114576387.a n = A080226 (n + 1)

end A080226

/-! ## A080226.P8643746163161988032

`A000005(n+1)-A341620(n+1)`
-/

namespace A080226.P8643746163161988032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A341620 (n + 1)

end

end A080226.P8643746163161988032

namespace A080226

/-- `A000005(n+1)-A341620(n+1)` -/
def P8643746163161988032.Spec : Prop :=
  ∀ n, P8643746163161988032.a n = A080226 (n + 1)

end A080226

/-! ## A080226.P526736528655969976

`A000005(n+1)-(A080225(n+1)+A080224(n+1))`
-/

namespace A080226.P526736528655969976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A080225 (n + 1) + A080224 (n + 1))

end

end A080226.P526736528655969976

namespace A080226

/-- `A000005(n+1)-(A080225(n+1)+A080224(n+1))` -/
def P526736528655969976.Spec : Prop :=
  ∀ n, P526736528655969976.a n = A080226 (n + 1)

end A080226

/-! ## A080226.P8346600475112805060

`A032741(n+1)+A294934(n+1)-A294927(n+1)`
-/

namespace A080226.P8346600475112805060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + (A294934 (n + 1) - A294927 (n + 1))

end

end A080226.P8346600475112805060

namespace A080226

/-- `A032741(n+1)+A294934(n+1)-A294927(n+1)` -/
def P8346600475112805060.Spec : Prop :=
  ∀ n, P8346600475112805060.a n = A080226 (n + 1)

end A080226

/-! ## A080226.P16522468692516514074

`A125747(n+1)+A302110(n+1)-A341620(n+1)`
-/

namespace A080226.P16522468692516514074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125747 (n + 1) + (A302110 (n + 1) - A341620 (n + 1))

end

end A080226.P16522468692516514074

namespace A080226

/-- `A125747(n+1)+A302110(n+1)-A341620(n+1)` -/
def P16522468692516514074.Spec : Prop :=
  ∀ n, P16522468692516514074.a n = A080226 (n + 1)

end A080226

/-! ## A080226.P2501509599586613984

`A000120(A100587(n+1))-A341620(n+1)`
-/

namespace A080226.P2501509599586613984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A100587 (n + 1)).toNat - A341620 (n + 1)

end

end A080226.P2501509599586613984

namespace A080226

/-- `A000120(A100587(n+1))-A341620(n+1)` -/
def P2501509599586613984.Spec : Prop :=
  ∀ n, P2501509599586613984.a n = A080226 (n + 1)

end A080226

/-!
# A080227: a(n) = n*a(n-1) + (1/2)*(1+(-1)^n), a(0)=0.

The programs for A080227, the canonical program `A080227.P3683662195373511834` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080227 has offset 0).

The definition of A080227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080227.P3683662195373511834

`(n-1)*(a(n-1)+a(n-2))+1` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080227

/-- `(n-1)*(a(n-1)+a(n-2))+1` -/
def P3683662195373511834.Spec : Prop :=
  ∀ n, P3683662195373511834.a n = A080227 n

theorem P3683662195373511834.correct : P3683662195373511834.Spec := by
  intro n
  simp only [A080227]

end A080227

/-! ## A080227.P1529958933125016665

`n*a(n-1)+1/2*(1+(-1)^n)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080227.P1529958933125016665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * a (n - 1) + (1 : ℚ) / 2 * (1 + (-1) ^ n : ℚ)

end

end A080227.P1529958933125016665

namespace A080227

/-- `n*a(n-1)+1/2*(1+(-1)^n)` -/
def P1529958933125016665.Spec : Prop :=
  ∀ n, P1529958933125016665.a n = (A080227 n : ℚ)

end A080227

/-! ## A080227.P10595582492813153013

`or(1, n*a(n-1))` with `a(0)=0, a(1)=0`
-/

namespace A080227.P10595582492813153013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  Nat.lor 1 (n * a (n - 1))

end

end A080227.P10595582492813153013

namespace A080227

/-- `or(1, n*a(n-1))` -/
def P10595582492813153013.Spec : Prop :=
  ∀ n, (P10595582492813153013.a n : ℤ) = A080227 n

end A080227

/-! ## A080227.P12420579228680493176

`or(1, a(n-1)/tan(acot(n)))` with `a(0)=0, a(1)=0`
-/

namespace A080227.P12420579228680493176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  Int.lor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.tan (SequenceMachineLib.acot (n : ℝ))))

end

end A080227.P12420579228680493176

namespace A080227

/-- `or(1, a(n-1)/tan(acot(n)))` -/
def P12420579228680493176.Spec : Prop :=
  ∀ n, P12420579228680493176.a n = A080227 n

end A080227

/-! ## A080227.P16183653092947484956

`or(1, a(n-1)/cot(atan(n)))` with `a(0)=0, a(1)=0`
-/

namespace A080227.P16183653092947484956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  Int.lor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.cot (Real.arctan (n : ℝ))))

end

end A080227.P16183653092947484956

namespace A080227

/-- `or(1, a(n-1)/cot(atan(n)))` -/
def P16183653092947484956.Spec : Prop :=
  ∀ n, P16183653092947484956.a n = A080227 n

end A080227

/-! ## A080227.P18208051968581090124

`char[2*n]+n*a(n-1)` with `a(0)=0`
-/

namespace A080227.P18208051968581090124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + n * a (n - 1)

end

end A080227.P18208051968581090124

namespace A080227

/-- `char[2*n]+n*a(n-1)` -/
def P18208051968581090124.Spec : Prop :=
  ∀ n, (P18208051968581090124.a n : ℤ) = A080227 n

end A080227

/-! ## A080227.P16280628070187792549

`and(n*a(n-1), -2)+1` with `a(0)=0, a(1)=0`
-/

namespace A080227.P16280628070187792549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  Int.land ((n : ℤ) * a (n - 1)) (-2) + 1

end

end A080227.P16280628070187792549

namespace A080227

/-- `and(n*a(n-1), -2)+1` -/
def P16280628070187792549.Spec : Prop :=
  ∀ n, P16280628070187792549.a n = A080227 n

end A080227

/-! ## A080227.P8396037432469962705

`or(1, a(n-1)/n^(-1))` with `a(0)=0, a(1)=0`
-/

namespace A080227.P8396037432469962705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  Int.lor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ)))

end

end A080227.P8396037432469962705

namespace A080227

/-- `or(1, a(n-1)/n^(-1))` -/
def P8396037432469962705.Spec : Prop :=
  ∀ n, P8396037432469962705.a n = A080227 n

end A080227

/-! ## A080227.P16369026473321308364

`n*a(n-1)-n%2+1` with `a(0)=0`
-/

namespace A080227.P16369026473321308364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * a (n - 1) - ((n % 2 : ℕ) : ℤ) + 1

end

end A080227.P16369026473321308364

namespace A080227

/-- `n*a(n-1)-n%2+1` -/
def P16369026473321308364.Spec : Prop :=
  ∀ n, P16369026473321308364.a n = A080227 n

end A080227

/-! ## A080227.P12501812973779258689

`gcd(2, n)+n*a(n-1)-1` with `a(0)=0`
-/

namespace A080227.P12501812973779258689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.gcd 2 n : ℤ) + ((n : ℤ) * a (n - 1) - 1)

end

end A080227.P12501812973779258689

namespace A080227

/-- `gcd(2, n)+n*a(n-1)-1` -/
def P12501812973779258689.Spec : Prop :=
  ∀ n, P12501812973779258689.a n = A080227 n

end A080227

/-!
# A080228: Numbers containing the digits 0, 1, 2, 5 or 8 only.

The programs for A080228, there is no canonical definition to state claims against.
-/

/-! ## A080228.P2060213389385833076

`∪[A053701(n+1), A080792(n+1)]`
-/

namespace A080228.P2060213389385833076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080228.P2060213389385833076

/-! ## A080228.P4271948272343265273

`A007095(A163327(record[A163327(n)]))`
-/

namespace A080228.P4271948272343265273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A163327 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A080228.P4271948272343265273

/-! ## A080228.P10578316901517856080

`record[A222238(A222235(A007095(n)))]`
-/

namespace A080228.P10578316901517856080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A222235 (A007095 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080228.P10578316901517856080

/-! ## A080228.P15494021251175330466

`eq[n, A222253(A222236(A004179(n)))]`
-/

namespace A080228.P15494021251175330466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222236 (A004179 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080228.P15494021251175330466

/-! ## A080228.P7878236303342922246

`eq[A004179(n), A222249(A222239(n))]`
-/

namespace A080228.P7878236303342922246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A222239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080228.P7878236303342922246

/-! ## A080228.P17526310048411968779

`eq[n, A222251(A222237(A222234(n)))]`
-/

namespace A080228.P17526310048411968779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A222237 (A222234 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080228.P17526310048411968779

/-! ## A080228.P10503135987716767244

`eq[n, A222244(A222237(A222236(n)))]`
-/

namespace A080228.P10503135987716767244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A222237 (A222236 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080228.P10503135987716767244

/-! ## A080228.P15633364934868212970

`eq[n, A222244(A222241(A222237(n)))]`
-/

namespace A080228.P15633364934868212970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 (A222241 (A222237 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080228.P15633364934868212970

/-! ## A080228.P434141262429435029

`eq[A222234(n), A222253(A222241(n))]`
-/

namespace A080228.P434141262429435029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222241 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080228.P434141262429435029

/-! ## A080228.P12191650625271312928

`eq[A222234(n), A222249(A222244(n))]`
-/

namespace A080228.P12191650625271312928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A222244 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080228.P12191650625271312928

/-! ## A080228.P8442985090181010117

`eq[A222237(n), A222241(A222251(n))]`
-/

namespace A080228.P8442985090181010117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A222251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080228.P8442985090181010117

/-! ## A080228.P13449138271937571714

`eq[A222239(n), A222242(A222241(n))]`
-/

namespace A080228.P13449138271937571714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A222241 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080228.P13449138271937571714

/-! ## A080228.P5566406838964077172

`eq[A222237(n), A222251(A222244(n))]`
-/

namespace A080228.P5566406838964077172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A222244 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080228.P5566406838964077172

/-! ## A080228.P6369803239703028384

`eq[A222239(n), A222249(A222242(n))]`
-/

namespace A080228.P6369803239703028384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A222242 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080228.P6369803239703028384

/-! ## A080228.P10730882814260946358

`eq[A222239(n), A222249(A222244(n))]`
-/

namespace A080228.P10730882814260946358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A222244 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080228.P10730882814260946358

/-! ## A080228.P6662622956984462885

`eq[A222239(n), A222241(A222249(n))]`
-/

namespace A080228.P6662622956984462885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A222249 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080228.P6662622956984462885

/-! ## A080228.P12885861337581007734

`record[A222250(n)-A107128(A222226(n))]`
-/

namespace A080228.P12885861337581007734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 n - A107128 (A222226 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080228.P12885861337581007734

/-! ## A080228.P3246951487918079515

`record[A222251(A222244(n))-A136400(n)]`
-/

namespace A080228.P3246951487918079515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A222244 n).toNat - A136400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080228.P3246951487918079515

/-!
# A080230: Engel expansion for (positive) constant defined in A078756.

The programs for A080230, there is no canonical definition to state claims against.
-/

/-! ## A080230.P856140040615772918

`A352827(xor(1, n)+(n+2)*2^(n-1)-1)`
-/

namespace A080230.P856140040615772918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352827 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) + ((n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1))).toNat

end

end A080230.P856140040615772918

/-!
# A080232: Triangle T(n,k) of differences of pairs of consecutive terms of triangle A071919.

The programs for A080232, the canonical program `A080232.P13824147444040966453` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080232 has offset 0).

The definition of A080232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080232.P13824147444040966453

`T(n-1,k-1)+T(n-1,k)` with `a(0)=1, a(1)=1, a(2)=-1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080232

/-- `T(n-1,k-1)+T(n-1,k)` -/
def P13824147444040966453.Spec : Prop :=
  ∀ n, P13824147444040966453.a n = A080232 n

theorem P13824147444040966453.correct : P13824147444040966453.Spec := by
  intro n
  simp only [A080232]

end A080232

/-! ## A080232.P9293870662423348259

`A037012(floor(acot(n)+n))`
-/

namespace A080232.P9293870662423348259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A080232.P9293870662423348259

namespace A080232

/-- `A037012(floor(acot(n)+n))` -/
def P9293870662423348259.Spec : Prop :=
  ∀ n, P9293870662423348259.a n = A080232 n

end A080232

/-! ## A080232.P15530208185572291282

`or(char[∑[n]], A037012(n))`
-/

namespace A080232.P15530208185572291282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A037012 n)

end

end A080232.P15530208185572291282

namespace A080232

/-- `or(char[∑[n]], A037012(n))` -/
def P15530208185572291282.Spec : Prop :=
  ∀ n, P15530208185572291282.a n = A080232 n

end A080232

/-! ## A080232.P127134636959415212

`A037012(C(2, n²)+n)`
-/

namespace A080232.P127134636959415212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (Nat.choose 2 (n ^ 2) + n)

end

end A080232.P127134636959415212

namespace A080232

/-- `A037012(C(2, n²)+n)` -/
def P127134636959415212.Spec : Prop :=
  ∀ n, P127134636959415212.a n = A080232 n

end A080232

/-! ## A080232.P1739950817251113421

`A037012(xor(n, C(2, n²)))`
-/

namespace A080232.P1739950817251113421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (Nat.xor n (Nat.choose 2 (n ^ 2)))

end

end A080232.P1739950817251113421

namespace A080232

/-- `A037012(xor(n, C(2, n²)))` -/
def P1739950817251113421.Spec : Prop :=
  ∀ n, P1739950817251113421.a n = A080232 n

end A080232

/-! ## A080232.P1456795225754902418

`C(2, n+2)-A008482(n)`
-/

namespace A080232.P1456795225754902418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) - A008482 n

end

end A080232.P1456795225754902418

namespace A080232

/-- `C(2, n+2)-A008482(n)` -/
def P1456795225754902418.Spec : Prop :=
  ∀ n, P1456795225754902418.a n = A080232 n

end A080232

/-! ## A080232.P1823079129802796691

`A259525(n-1)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A080232.P1823079129802796691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A259525 (n - 1) - a (n - 1)

end

end A080232.P1823079129802796691

namespace A080232

/-- `A259525(n-1)-a(n-1)` -/
def P1823079129802796691.Spec : Prop :=
  ∀ n, P1823079129802796691.a n = A080232 n

end A080232

/-! ## A080232.P17565664223935621709

`Δ[A007318(n-1)+2-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A080232.P17565664223935621709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A007318 (n - 1) + (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080232.P17565664223935621709

namespace A080232

/-- `Δ[A007318(n-1)+2-a(n-1)]` -/
def P17565664223935621709.Spec : Prop :=
  ∀ n, P17565664223935621709.a n = A080232 n

end A080232

/-! ## A080232.P4624552964894329349

`A037012(A028310(n))`
-/

namespace A080232.P4624552964894329349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (A028310 n).toNat

end

end A080232.P4624552964894329349

namespace A080232

/-- `A037012(A028310(n))` -/
def P4624552964894329349.Spec : Prop :=
  ∀ n, P4624552964894329349.a n = A080232 n

end A080232

/-! ## A080232.P120361099777598081

`A037012(A000007(n)+n)`
-/

namespace A080232.P120361099777598081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (A000007 n + (n : ℤ)).toNat

end

end A080232.P120361099777598081

namespace A080232

/-- `A037012(A000007(n)+n)` -/
def P120361099777598081.Spec : Prop :=
  ∀ n, P120361099777598081.a n = A080232 n

end A080232

/-! ## A080232.P7935678566307457870

`A000007(n)-A008482(n)`
-/

namespace A080232.P7935678566307457870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A008482 n

end

end A080232.P7935678566307457870

namespace A080232

/-- `A000007(n)-A008482(n)` -/
def P7935678566307457870.Spec : Prop :=
  ∀ n, P7935678566307457870.a n = A080232 n

end A080232

/-! ## A080232.P8284045735798946954

`A000038(n)-A112467(n)`
-/

namespace A080232.P8284045735798946954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A112467 n

end

end A080232.P8284045735798946954

namespace A080232

/-- `A000038(n)-A112467(n)` -/
def P8284045735798946954.Spec : Prop :=
  ∀ n, P8284045735798946954.a n = A080232 n

end A080232

/-! ## A080232.P9176183855111300422

`A037012(or(n, A036987(n)))`
-/

namespace A080232.P9176183855111300422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (Int.lor (n : ℤ) (A036987 n)).toNat

end

end A080232.P9176183855111300422

namespace A080232

/-- `A037012(or(n, A036987(n)))` -/
def P9176183855111300422.Spec : Prop :=
  ∀ n, P9176183855111300422.a n = A080232 n

end A080232

/-! ## A080232.P2244702980960523620

`A037012(xor(n, A000007(n)))`
-/

namespace A080232.P2244702980960523620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (Int.xor (n : ℤ) (A000007 n)).toNat

end

end A080232.P2244702980960523620

namespace A080232

/-- `A037012(xor(n, A000007(n)))` -/
def P2244702980960523620.Spec : Prop :=
  ∀ n, P2244702980960523620.a n = A080232 n

end A080232

/-! ## A080232.P10300300342895106060

`Δ[A097805(n)]^A167407(n)`
-/

namespace A080232.P10300300342895106060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A167407 n : ℤ)

end

end A080232.P10300300342895106060

namespace A080232

/-- `Δ[A097805(n)]^A167407(n)` -/
def P10300300342895106060.Spec : Prop :=
  ∀ n, P10300300342895106060.a n = (A080232 n : ℚ)

end A080232

/-! ## A080232.P2526676760413992212

`A037012(n)+A057428(n)+1`
-/

namespace A080232.P2526676760413992212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 n + (A057428 n + 1)

end

end A080232.P2526676760413992212

namespace A080232

/-- `A037012(n)+A057428(n)+1` -/
def P2526676760413992212.Spec : Prop :=
  ∀ n, P2526676760413992212.a n = A080232 n

end A080232

/-! ## A080232.P2032573917124987832

`A057428(n)+1-A008482(n)`
-/

namespace A080232.P2032573917124987832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (1 - A008482 n)

end

end A080232.P2032573917124987832

namespace A080232

/-- `A057428(n)+1-A008482(n)` -/
def P2032573917124987832.Spec : Prop :=
  ∀ n, P2032573917124987832.a n = A080232 n

end A080232

/-! ## A080232.P11830280295701179207

`A037012(A036987(2*n)+n)`
-/

namespace A080232.P11830280295701179207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (A036987 (2 * n) + (n : ℤ)).toNat

end

end A080232.P11830280295701179207

namespace A080232

/-- `A037012(A036987(2*n)+n)` -/
def P11830280295701179207.Spec : Prop :=
  ∀ n, P11830280295701179207.a n = A080232 n

end A080232

/-!
# A080233: Triangle T(n,k) obtained by taking differences of consecutive pairs of row elements of Pascal's triangle A007318.

The programs for A080233, the canonical program `A080233.P15572603627752373411` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080233 has offset 0).

The definition of A080233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080233.P8780357068020442761

`2*C(row(n), col(n))-C(row(n)+1, col(n))`
-/

namespace A080233.P8780357068020442761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) - (Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n) : ℤ)

end

end A080233.P8780357068020442761

namespace A080233

/-- `2*C(row(n), col(n))-C(row(n)+1, col(n))` -/
def P8780357068020442761.Spec : Prop :=
  ∀ n, P8780357068020442761.a n = A080233 n

end A080233

/-! ## A080233.P7415764045888696046

`A214292(n)+A156644(n)`
-/

namespace A080233.P7415764045888696046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214292 n + A156644 n

end

end A080233.P7415764045888696046

namespace A080233

/-- `A214292(n)+A156644(n)` -/
def P7415764045888696046.Spec : Prop :=
  ∀ n, P7415764045888696046.a n = A080233 n

end A080233

/-! ## A080233.P17631841724118136841

`A028326(n)-A074909(n)`
-/

namespace A080233.P17631841724118136841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A074909 n

end

end A080233.P17631841724118136841

namespace A080233

/-- `A028326(n)-A074909(n)` -/
def P17631841724118136841.Spec : Prop :=
  ∀ n, P17631841724118136841.a n = A080233 n

end A080233

/-! ## A080233.P1344914422771999878

`A135278(n)-A051601(n)`
-/

namespace A080233.P1344914422771999878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - A051601 n

end

end A080233.P1344914422771999878

namespace A080233

/-- `A135278(n)-A051601(n)` -/
def P1344914422771999878.Spec : Prop :=
  ∀ n, P1344914422771999878.a n = A080233 n

end A080233

/-! ## A080233.P17664609382311837057

`A124927(n)-A325191(n)`
-/

namespace A080233.P17664609382311837057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n - A325191 n

end

end A080233.P17664609382311837057

namespace A080233

/-- `A124927(n)-A325191(n)` -/
def P17664609382311837057.Spec : Prop :=
  ∀ n, P17664609382311837057.a n = A080233 n

end A080233

/-! ## A080233.P5996187930141399485

`A074909(n+1)-A051601(n)`
-/

namespace A080233.P5996187930141399485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) - A051601 n

end

end A080233.P5996187930141399485

namespace A080233

/-- `A074909(n+1)-A051601(n)` -/
def P5996187930141399485.Spec : Prop :=
  ∀ n, P5996187930141399485.a n = A080233 n

end A080233

/-! ## A080233.P4611218613230072894

`A109128(n)+1-A074909(n)`
-/

namespace A080233.P4611218613230072894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (1 - A074909 n)

end

end A080233.P4611218613230072894

namespace A080233

/-- `A109128(n)+1-A074909(n)` -/
def P4611218613230072894.Spec : Prop :=
  ∀ n, P4611218613230072894.a n = A080233 n

end A080233

/-! ## A080233.P10080437529979105665

`2*A007318(n)-A074909(n)`
-/

namespace A080233.P10080437529979105665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A074909 n

end

end A080233.P10080437529979105665

namespace A080233

/-- `2*A007318(n)-A074909(n)` -/
def P10080437529979105665.Spec : Prop :=
  ∀ n, P10080437529979105665.a n = A080233 n

end A080233

/-! ## A080233.P17882468926356585236

`2*A080232(n)-A080234(n)`
-/

namespace A080233.P17882468926356585236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080232 n - A080234 n

end

end A080233.P17882468926356585236

namespace A080233

/-- `2*A080232(n)-A080234(n)` -/
def P17882468926356585236.Spec : Prop :=
  ∀ n, P17882468926356585236.a n = A080233 n

end A080233

/-! ## A080233.P7022789821769883432

`Δ[2*A102363(n)]-A074909(n)`
-/

namespace A080233.P7022789821769883432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A074909 n

end

end A080233.P7022789821769883432

namespace A080233

/-- `Δ[2*A102363(n)]-A074909(n)` -/
def P7022789821769883432.Spec : Prop :=
  ∀ n, P7022789821769883432.a n = A080233 n

end A080233

/-! ## A080233.P10434305790664119627

`A029656(n+1)-A029637(n+1)`
-/

namespace A080233.P10434305790664119627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1) - A029637 (n + 1)

end

end A080233.P10434305790664119627

namespace A080233

/-- `A029656(n+1)-A029637(n+1)` -/
def P10434305790664119627.Spec : Prop :=
  ∀ n, P10434305790664119627.a n = A080233 n

end A080233

/-! ## A080233.P12461709991572313528

`3*A007318(n)-A029656(n+1)`
-/

namespace A080233.P12461709991572313528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007318 n - A029656 (n + 1)

end

end A080233.P12461709991572313528

namespace A080233

/-- `3*A007318(n)-A029656(n+1)` -/
def P12461709991572313528.Spec : Prop :=
  ∀ n, P12461709991572313528.a n = A080233 n

end A080233

/-! ## A080233.P2723454226659339706

`A028326(n)-A007318(A007401(n+1))`
-/

namespace A080233.P2723454226659339706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A007318 (A007401 (n + 1)).toNat

end

end A080233.P2723454226659339706

namespace A080233

/-- `A028326(n)-A007318(A007401(n+1))` -/
def P2723454226659339706.Spec : Prop :=
  ∀ n, P2723454226659339706.a n = A080233 n

end A080233

/-! ## A080233.P15572603627752373411

`2*A074909(A056943(n))-A074909(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080233

/-- `2*A074909(A056943(n))-A074909(n)` -/
def P15572603627752373411.Spec : Prop :=
  ∀ n, P15572603627752373411.a n = A080233 n

theorem P15572603627752373411.correct : P15572603627752373411.Spec := by
  intro n
  simp only [A080233]

end A080233

/-! ## A080233.P15964025843186868722

`2*A074909(A083920(n))-A074909(n)`
-/

namespace A080233.P15964025843186868722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074909 (A083920 n).toNat - A074909 n

end

end A080233.P15964025843186868722

namespace A080233

/-- `2*A074909(A083920(n))-A074909(n)` -/
def P15964025843186868722.Spec : Prop :=
  ∀ n, P15964025843186868722.a n = A080233 n

end A080233

/-! ## A080233.P5141929680099445168

`2*A074909(A271439(n))-A074909(n)`
-/

namespace A080233.P5141929680099445168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074909 (A271439 n).toNat - A074909 n

end

end A080233.P5141929680099445168

namespace A080233

/-- `2*A074909(A271439(n))-A074909(n)` -/
def P5141929680099445168.Spec : Prop :=
  ∀ n, P5141929680099445168.a n = A080233 n

end A080233

/-! ## A080233.P8176879567379923048

`A010054(n)+Δ[A007318(A038722(n+1))]`
-/

namespace A080233.P8176879567379923048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + (f1 (n + 1) - f1 n)

end

end A080233.P8176879567379923048

namespace A080233

/-- `A010054(n)+Δ[A007318(A038722(n+1))]` -/
def P8176879567379923048.Spec : Prop :=
  ∀ n, P8176879567379923048.a n = A080233 n

end A080233

/-! ## A080233.P16588602043591568167

`2*A007318(n)-A007318(A007401(n+1))`
-/

namespace A080233.P16588602043591568167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A007318 (A007401 (n + 1)).toNat

end

end A080233.P16588602043591568167

namespace A080233

/-- `2*A007318(n)-A007318(A007401(n+1))` -/
def P16588602043591568167.Spec : Prop :=
  ∀ n, P16588602043591568167.a n = A080233 n

end A080233

/-! ## A080233.P1775818436621219341

`A029635(n)+A029653(n)-A029656(n+1)`
-/

namespace A080233.P1775818436621219341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n + (A029653 n - A029656 (n + 1))

end

end A080233.P1775818436621219341

namespace A080233

/-- `A029635(n)+A029653(n)-A029656(n+1)` -/
def P1775818436621219341.Spec : Prop :=
  ∀ n, P1775818436621219341.a n = A080233 n

end A080233

/-!
# A080234: Triangle whose rows are the differences of consecutive pairs of row elements of A080232.

The programs for A080234, the canonical program `A080234.P10983705409938521708` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080234 has offset 0).

The definition of A080234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080234.P10983705409938521708

`A051632(n-1)-a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A080234

/-- `A051632(n-1)-a(n-1)` -/
def P10983705409938521708.Spec : Prop :=
  ∀ n, P10983705409938521708.a n = A080234 n

theorem P10983705409938521708.correct : P10983705409938521708.Spec := by
  intro n
  simp only [A080234]

end A080234

/-! ## A080234.P7724111418300499223

`2*A080232(n)-A080233(n)`
-/

namespace A080234.P7724111418300499223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080232 n - A080233 n

end

end A080234.P7724111418300499223

namespace A080234

/-- `2*A080232(n)-A080233(n)` -/
def P7724111418300499223.Spec : Prop :=
  ∀ n, P7724111418300499223.a n = A080234 n

end A080234

/-! ## A080234.P15752414338095957562

`A029656(n+1)-A096940(A028310(n))`
-/

namespace A080234.P15752414338095957562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1) - A096940 (A028310 n).toNat

end

end A080234.P15752414338095957562

namespace A080234

/-- `A029656(n+1)-A096940(A028310(n))` -/
def P15752414338095957562.Spec : Prop :=
  ∀ n, P15752414338095957562.a n = A080234 n

end A080234

/-! ## A080234.P15040475397991698432

`A029656(n+1)-A096940(gcd(n, A010816(n)))`
-/

namespace A080234.P15040475397991698432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1) - A096940 (Int.gcd (n : ℤ) (A010816 n))

end

end A080234.P15040475397991698432

namespace A080234

/-- `A029656(n+1)-A096940(gcd(n, A010816(n)))` -/
def P15040475397991698432.Spec : Prop :=
  ∀ n, P15040475397991698432.a n = A080234 n

end A080234

/-! ## A080234.P15984380380548686632

`A029656(n+1)-A093562(A061579(n))`
-/

namespace A080234.P15984380380548686632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1) - A093562 (A061579 n).toNat

end

end A080234.P15984380380548686632

namespace A080234

/-- `A029656(n+1)-A093562(A061579(n))` -/
def P15984380380548686632.Spec : Prop :=
  ∀ n, P15984380380548686632.a n = A080234 n

end A080234

/-! ## A080234.P4223671249694715947

`A029638(n+1)-A096940(A038722(n+1))`
-/

namespace A080234.P4223671249694715947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029638 (n + 1) - A096940 (A038722 (n + 1)).toNat

end

end A080234.P4223671249694715947

namespace A080234

/-- `A029638(n+1)-A096940(A038722(n+1))` -/
def P4223671249694715947.Spec : Prop :=
  ∀ n, P4223671249694715947.a n = A080234 n

end A080234

/-! ## A080234.P8957852916075304177

`A029656(n+1)-A096940(A066182(n+1))`
-/

namespace A080234.P8957852916075304177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1) - A096940 (A066182 (n + 1)).toNat

end

end A080234.P8957852916075304177

namespace A080234

/-- `A029656(n+1)-A096940(A066182(n+1))` -/
def P8957852916075304177.Spec : Prop :=
  ∀ n, P8957852916075304177.a n = A080234 n

end A080234

/-! ## A080234.P5497241730989309742

`A000038(n)-A182533(comp[∑[n]])`
-/

namespace A080234.P5497241730989309742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A182533 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A080234.P5497241730989309742

namespace A080234

/-- `A000038(n)-A182533(comp[∑[n]])` -/
def P5497241730989309742.Spec : Prop :=
  ∀ n, P5497241730989309742.a n = A080234 n

end A080234

/-! ## A080234.P2000883523341995668

`A029653(A007401(n+1))-A096940(A028310(n))`
-/

namespace A080234.P2000883523341995668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (A007401 (n + 1)).toNat - A096940 (A028310 n).toNat

end

end A080234.P2000883523341995668

namespace A080234

/-- `A029653(A007401(n+1))-A096940(A028310(n))` -/
def P2000883523341995668.Spec : Prop :=
  ∀ n, P2000883523341995668.a n = A080234 n

end A080234

/-!
# A080236: Triangle of differences of consecutive pairs of row elements of triangle A080233.

The programs for A080236, the canonical program `A080236.P11120207343015903809` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080236 has offset 0).

The definition of A080236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080236.P11120207343015903809

`2*A080233(n)-A302764(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A080236

/-- `2*A080233(n)-A302764(n+1)` -/
def P11120207343015903809.Spec : Prop :=
  ∀ n, P11120207343015903809.a n = A080236 n

theorem P11120207343015903809.correct : P11120207343015903809.Spec := by
  intro n
  simp only [A080236]

end A080236

/-! ## A080236.P9072507705741740321

`A080234(comp[∑[n-1]])`
-/

namespace A080236.P9072507705741740321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080234 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A080236.P9072507705741740321

namespace A080236

/-- `A080234(comp[∑[n-1]])` -/
def P9072507705741740321.Spec : Prop :=
  ∀ n, P9072507705741740321.a n = A080236 n

end A080236

/-! ## A080236.P9123733132539034515

`A051632(comp[∑[n-1]])-A051632(n)`
-/

namespace A080236.P9123733132539034515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051632 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - A051632 n

end

end A080236.P9123733132539034515

namespace A080236

/-- `A051632(comp[∑[n-1]])-A051632(n)` -/
def P9123733132539034515.Spec : Prop :=
  ∀ n, P9123733132539034515.a n = A080236 n

end A080236

/-! ## A080236.P7051647618269253709

`or(A000007(n), A080234(A007401(n+1)))`
-/

namespace A080236.P7051647618269253709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A080234 (A007401 (n + 1)).toNat)

end

end A080236.P7051647618269253709

namespace A080236

/-- `or(A000007(n), A080234(A007401(n+1)))` -/
def P7051647618269253709.Spec : Prop :=
  ∀ n, P7051647618269253709.a n = A080236 n

end A080236

/-! ## A080236.P15143655061981719249

`A080234(A007401(n+1))+A000007(n+1)`
-/

namespace A080236.P15143655061981719249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080234 (A007401 (n + 1)).toNat + A000007 (n + 1)

end

end A080236.P15143655061981719249

namespace A080236

/-- `A080234(A007401(n+1))+A000007(n+1)` -/
def P15143655061981719249.Spec : Prop :=
  ∀ n, P15143655061981719249.a n = A080236 n

end A080236

/-! ## A080236.P8575064753069600798

`2*A080233(n)-A080233(A007401(n+1))`
-/

namespace A080236.P8575064753069600798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080233 n - A080233 (A007401 (n + 1)).toNat

end

end A080236.P8575064753069600798

namespace A080236

/-- `2*A080233(n)-A080233(A007401(n+1))` -/
def P8575064753069600798.Spec : Prop :=
  ∀ n, P8575064753069600798.a n = A080236 n

end A080236

/-! ## A080236.P18089750203288852522

`-A182533(A014132(A014132(n+1)))`
-/

namespace A080236.P18089750203288852522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A182533 (A014132 (A014132 (n + 1)).toNat).toNat

end

end A080236.P18089750203288852522

namespace A080236

/-- `-A182533(A014132(A014132(n+1)))` -/
def P18089750203288852522.Spec : Prop :=
  ∀ n, P18089750203288852522.a n = A080236 n

end A080236

/-!
# A080237: Start with 1 and apply the process: k-th run is 1, 2, 3, ..., a(k-1)+1.

The programs for A080237, there is no canonical definition to state claims against.
-/

/-! ## A080237.P18036967891054858572

`A007814(A014486(n+1))`
-/

namespace A080237.P18036967891054858572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A014486 (n + 1)).toNat

end

end A080237.P18036967891054858572

/-! ## A080237.P10536299261538127648

`A295568(n+1)-1`
-/

namespace A080237.P10536299261538127648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295568 (n + 1) - 1

end

end A080237.P10536299261538127648

/-! ## A080237.P11071709051580885665

`val(A063171(n+1), 2)`
-/

namespace A080237.P11071709051580885665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A063171 (n + 1)).toNat 2

end

end A080237.P11071709051580885665

/-! ## A080237.P2340127213428086612

`val(A071152(n+1), 5)`
-/

namespace A080237.P2340127213428086612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071152 (n + 1)).toNat 5

end

end A080237.P2340127213428086612

/-! ## A080237.P17150061316870399688

`A071159(n+1)%10`
-/

namespace A080237.P17150061316870399688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071159 (n + 1)) 10

end

end A080237.P17150061316870399688

/-! ## A080237.P13426503095558975864

`A166931(n+1)%A295568(n+1)`
-/

namespace A080237.P13426503095558975864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A295568 (n + 1))

end

end A080237.P13426503095558975864

/-! ## A080237.P39813244091715718

`A127229(n+5)%A295568(n+1)`
-/

namespace A080237.P39813244091715718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A295568 (n + 1))

end

end A080237.P39813244091715718

/-! ## A080237.P8509523962421046153

`Δ[A085225(n)]-1`
-/

namespace A080237.P8509523962421046153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A080237.P8509523962421046153

/-! ## A080237.P4633240828824414972

`val(A083937(n+1), 2)`
-/

namespace A080237.P4633240828824414972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A083937 (n + 1)).toNat 2

end

end A080237.P4633240828824414972

/-! ## A080237.P17611960429373807289

`val(A083931(n+1), 4)`
-/

namespace A080237.P17611960429373807289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A083931 (n + 1)).toNat 4

end

end A080237.P17611960429373807289

/-! ## A080237.P16245559653395815480

`val(A083932(n+1), 4)`
-/

namespace A080237.P16245559653395815480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A083932 (n + 1)).toNat 4

end

end A080237.P16245559653395815480

/-! ## A080237.P10121170917748131187

`val(A083933(n+1), 4)`
-/

namespace A080237.P10121170917748131187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A083933 (n + 1)).toNat 4

end

end A080237.P10121170917748131187

/-! ## A080237.P15945673698691980324

`val(A057547(n+1), 2)-1`
-/

namespace A080237.P15945673698691980324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A057547 (n + 1)).toNat 2 : ℤ) - 1

end

end A080237.P15945673698691980324

/-! ## A080237.P14941362120615305349

`val(Δ[7*∑[A014486(n)]], 2)`
-/

namespace A080237.P14941362120615305349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A080237.P14941362120615305349

/-! ## A080237.P17124577365414506126

`A007001(A082854(n+1))`
-/

namespace A080237.P17124577365414506126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007001 (A082854 (n + 1)).toNat

end

end A080237.P17124577365414506126

/-! ## A080237.P8355438974507273320

`A007001(A082853(n+1)+1)`
-/

namespace A080237.P8355438974507273320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007001 (A082853 (n + 1) + 1).toNat

end

end A080237.P8355438974507273320

/-! ## A080237.P17492567738317136670

`Δ[A085223(n+1)]-1`
-/

namespace A080237.P17492567738317136670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A080237.P17492567738317136670

/-! ## A080237.P10078599358054641157

`A057515(A057504(n+1))`
-/

namespace A080237.P10078599358054641157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A057504 (n + 1)).toNat

end

end A080237.P10078599358054641157

/-! ## A080237.P9885630430366935183

`A057515(A057506(n+1))`
-/

namespace A080237.P9885630430366935183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A057506 (n + 1)).toNat

end

end A080237.P9885630430366935183

/-! ## A080237.P7140109420944135275

`A057515(A074683(n+1))`
-/

namespace A080237.P7140109420944135275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A074683 (n + 1)).toNat

end

end A080237.P7140109420944135275

/-!
# A080238: Largest squarefree number dividing sum of cubes of divisors of n.

The programs for A080238, the canonical program `A080238.P10307931751839070652` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080238 has offset 1).

The definition of A080238 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080238.P10307931751839070652

`A007947(A001158(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080238

/-- `A007947(A001158(n+1))` -/
def P10307931751839070652.Spec : Prop :=
  ∀ n, P10307931751839070652.a n = A080238 (n + 1)

theorem P10307931751839070652.correct : P10307931751839070652.Spec := by
  intro n
  simp only [A080238, Nat.add_sub_cancel]

end A080238

/-! ## A080238.P1389124965680242960

`∏{p}[∑{d}[n+1, #^3], #]`
-/

namespace A080238.P1389124965680242960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A080238.P1389124965680242960

namespace A080238

/-- `∏{p}[∑{d}[n+1, #^3], #]` -/
def P1389124965680242960.Spec : Prop :=
  ∀ n, (P1389124965680242960.a n : ℤ) = A080238 (n + 1)

end A080238

/-! ## A080238.P10477915152689649191

`exp(∑{p}[∑{d}[n+1, #^3], log(#)])`
-/

namespace A080238.P10477915152689649191
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d ^ 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (p : ℝ))

end

end A080238.P10477915152689649191

namespace A080238

/-- `exp(∑{p}[∑{d}[n+1, #^3], log(#)])` -/
def P10477915152689649191.Spec : Prop :=
  ∀ n, P10477915152689649191.a n = (A080238 (n + 1) : ℝ)

end A080238

/-! ## A080238.P3641251392145727209

`∏{p}[sqrt(A356534(n+1)), #]`
-/

namespace A080238.P3641251392145727209
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A356534 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A080238.P3641251392145727209

namespace A080238

/-- `∏{p}[sqrt(A356534(n+1)), #]` -/
def P3641251392145727209.Spec : Prop :=
  ∀ n, (P3641251392145727209.a n : ℤ) = A080238 (n + 1)

end A080238

/-! ## A080238.P16946138196267475906

`∏{p}[A281372(n+1)/(n+1), #]`
-/

namespace A080238.P16946138196267475906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281372 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A080238.P16946138196267475906

namespace A080238

/-- `∏{p}[A281372(n+1)/(n+1), #]` -/
def P16946138196267475906.Spec : Prop :=
  ∀ n, (P16946138196267475906.a n : ℤ) = A080238 (n + 1)

end A080238

/-! ## A080238.P7836603667424852207

`∏{p}[A282099(n+1)/(n+1)², #]`
-/

namespace A080238.P7836603667424852207
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282099 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A080238.P7836603667424852207

namespace A080238

/-- `∏{p}[A282099(n+1)/(n+1)², #]` -/
def P7836603667424852207.Spec : Prop :=
  ∀ n, (P7836603667424852207.a n : ℤ) = A080238 (n + 1)

end A080238

/-! ## A080238.P12226200623142954505

`∏{p}[A282213(n+1)/(n+1)^3, #]`
-/

namespace A080238.P12226200623142954505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282213 (n + 1) : ℚ) / ((n + 1) ^ 3 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A080238.P12226200623142954505

namespace A080238

/-- `∏{p}[A282213(n+1)/(n+1)^3, #]` -/
def P12226200623142954505.Spec : Prop :=
  ∀ n, (P12226200623142954505.a n : ℤ) = A080238 (n + 1)

end A080238

/-! ## A080238.P13217728864587479652

`∏{p}[A280025(n+1)/(n+1)²², #]`
-/

namespace A080238.P13217728864587479652
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280025 (n + 1) : ℚ) / (((n + 1) ^ 2) ^ 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A080238.P13217728864587479652

namespace A080238

/-- `∏{p}[A280025(n+1)/(n+1)²², #]` -/
def P13217728864587479652.Spec : Prop :=
  ∀ n, (P13217728864587479652.a n : ℤ) = A080238 (n + 1)

end A080238

/-! ## A080238.P1220755682175534794

`∏{p}[A092345(n+1)-A000203(n+1), #]`
-/

namespace A080238.P1220755682175534794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092345 (n + 1) - A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A080238.P1220755682175534794

namespace A080238

/-- `∏{p}[A092345(n+1)-A000203(n+1), #]` -/
def P1220755682175534794.Spec : Prop :=
  ∀ n, (P1220755682175534794.a n : ℤ) = A080238 (n + 1)

end A080238

/-!
# A080239: Antidiagonal sums of triangle A035317.

The programs for A080239, the canonical program `A080239.P9224271304406769550` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080239 has offset 1).

The definition of A080239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080239.P9224271304406769550

`a(n-1)+a(n-2)+a(n-4)-a(n-5)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6, a(5)=9`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080239

/-- `a(n-1)+a(n-2)+a(n-4)-a(n-5)-a(n-6)` -/
def P9224271304406769550.Spec : Prop :=
  ∀ n, P9224271304406769550.a n = A080239 (n + 1)

theorem P9224271304406769550.correct : P9224271304406769550.Spec := by
  intro n
  simp only [A080239, Nat.add_sub_cancel]

end A080239

/-! ## A080239.P6135413740010824520

`∑[ogf(-1/(-1+x^2+x^3+2x^4+x^5))]`
-/

namespace A080239.P6135413740010824520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -1, -1, -2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080239.P6135413740010824520

namespace A080239

/-- `∑[ogf(-1/(-1+x^2+x^3+2x^4+x^5))]` -/
def P6135413740010824520.Spec : Prop :=
  ∀ n, P6135413740010824520.a n = A080239 (n + 1)

end A080239

/-! ## A080239.P10710087799685638908

`A006498(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A080239.P10710087799685638908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A006498 n + a (n - 2)

end

end A080239.P10710087799685638908

namespace A080239

/-- `A006498(n)+a(n-2)` -/
def P10710087799685638908.Spec : Prop :=
  ∀ n, P10710087799685638908.a n = A080239 (n + 1)

end A080239

/-! ## A080239.P15517369394971744599

`A052952(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A080239.P15517369394971744599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A052952 n - a (n - 2)

end

end A080239.P15517369394971744599

namespace A080239

/-- `A052952(n)-a(n-2)` -/
def P15517369394971744599.Spec : Prop :=
  ∀ n, P15517369394971744599.a n = A080239 (n + 1)

end A080239

/-! ## A080239.P6169133127630455831

`∑[A074677(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A080239.P6169133127630455831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A074677 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080239.P6169133127630455831

namespace A080239

/-- `∑[A074677(n+1)-a(n-1)]` -/
def P6169133127630455831.Spec : Prop :=
  ∀ n, P6169133127630455831.a n = A080239 (n + 1)

end A080239

/-! ## A080239.P10166286334205531796

`A000045(n+1)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A080239.P10166286334205531796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  A000045 (n + 1) + a (n - 4)

end

end A080239.P10166286334205531796

namespace A080239

/-- `A000045(n+1)+a(n-4)` -/
def P10166286334205531796.Spec : Prop :=
  ∀ n, P10166286334205531796.a n = A080239 (n + 1)

end A080239

/-! ## A080239.P8855784537632805067

`floor(A293411(n+1)/2)`
-/

namespace A080239.P8855784537632805067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293411 (n + 1) : ℚ) / 2⌋

end

end A080239.P8855784537632805067

namespace A080239

/-- `floor(A293411(n+1)/2)` -/
def P8855784537632805067.Spec : Prop :=
  ∀ n, P8855784537632805067.a n = A080239 (n + 1)

end A080239

/-! ## A080239.P2585636090986796137

`A097083(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A080239.P2585636090986796137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A097083 (n + 1) - a (n - 1)

end

end A080239.P2585636090986796137

namespace A080239

/-- `A097083(n+1)-a(n-1)` -/
def P2585636090986796137.Spec : Prop :=
  ∀ n, P2585636090986796137.a n = A080239 (n + 1)

end A080239

/-! ## A080239.P3149138930090020554

`Δ[A192758(n+1)]`
-/

namespace A080239.P3149138930090020554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080239.P3149138930090020554

namespace A080239

/-- `Δ[A192758(n+1)]` -/
def P3149138930090020554.Spec : Prop :=
  ∀ n, P3149138930090020554.a n = A080239 (n + 1)

end A080239

/-! ## A080239.P14761887829985588001

`Δ[A097083(n+1)-A008621(n)]`
-/

namespace A080239.P14761887829985588001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097083 (n + 1) - A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080239.P14761887829985588001

namespace A080239

/-- `Δ[A097083(n+1)-A008621(n)]` -/
def P14761887829985588001.Spec : Prop :=
  ∀ n, P14761887829985588001.a n = A080239 (n + 1)

end A080239

/-! ## A080239.P7514075072666842109

`A192758(n+2)-A192758(n+1)`
-/

namespace A080239.P7514075072666842109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192758 (n + 2) - A192758 (n + 1)

end

end A080239.P7514075072666842109

namespace A080239

/-- `A192758(n+2)-A192758(n+1)` -/
def P7514075072666842109.Spec : Prop :=
  ∀ n, P7514075072666842109.a n = A080239 (n + 1)

end A080239

/-! ## A080239.P7930715362520155465

`floor(∑[a(n-1)+a(n-2)]/5)` with `a(0)=5, a(1)=3, a(2)=4`
-/

namespace A080239.P7930715362520155465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 3, 4] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A080239.P7930715362520155465

namespace A080239

/-- `floor(∑[a(n-1)+a(n-2)]/5)` -/
def P7930715362520155465.Spec : Prop :=
  ∀ n, P7930715362520155465.a n = A080239 (n + 1)

end A080239

/-! ## A080239.P10163476417370836004

`floor(A001612(n+3)/5)`
-/

namespace A080239.P10163476417370836004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001612 (n + 3) : ℚ) / 5⌋

end

end A080239.P10163476417370836004

namespace A080239

/-- `floor(A001612(n+3)/5)` -/
def P10163476417370836004.Spec : Prop :=
  ∀ n, P10163476417370836004.a n = A080239 (n + 1)

end A080239

/-! ## A080239.P13668615062153631028

`floor(A169986(n+3)/5)`
-/

namespace A080239.P13668615062153631028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A169986 (n + 3) : ℚ) / 5⌋

end

end A080239.P13668615062153631028

namespace A080239

/-- `floor(A169986(n+3)/5)` -/
def P13668615062153631028.Spec : Prop :=
  ∀ n, P13668615062153631028.a n = A080239 (n + 1)

end A080239

/-! ## A080239.P5398658130513262836

`round(A001610(n+2)/5)`
-/

namespace A080239.P5398658130513262836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001610 (n + 2) : ℚ) / 5)

end

end A080239.P5398658130513262836

namespace A080239

/-- `round(A001610(n+2)/5)` -/
def P5398658130513262836.Spec : Prop :=
  ∀ n, P5398658130513262836.a n = A080239 (n + 1)

end A080239

/-! ## A080239.P16346315830643714028

`ceil(∑[A000032(n+1)]/5)`
-/

namespace A080239.P16346315830643714028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5⌉

end

end A080239.P16346315830643714028

namespace A080239

/-- `ceil(∑[A000032(n+1)]/5)` -/
def P16346315830643714028.Spec : Prop :=
  ∀ n, P16346315830643714028.a n = A080239 (n + 1)

end A080239

/-! ## A080239.P9693383228918466111

`floor((A000032(n+3)+1)/5)`
-/

namespace A080239.P9693383228918466111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000032 (n + 3) + 1 : ℚ) / 5⌋

end

end A080239.P9693383228918466111

namespace A080239

/-- `floor((A000032(n+3)+1)/5)` -/
def P9693383228918466111.Spec : Prop :=
  ∀ n, P9693383228918466111.a n = A080239 (n + 1)

end A080239

/-! ## A080239.P14209968170489941729

`A202453(A000982(n+1))`
-/

namespace A080239.P14209968170489941729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202453 (A000982 (n + 1)).toNat

end

end A080239.P14209968170489941729

namespace A080239

/-- `A202453(A000982(n+1))` -/
def P14209968170489941729.Spec : Prop :=
  ∀ n, P14209968170489941729.a n = A080239 (n + 1)

end A080239

/-! ## A080239.P6840641924331863714

`A202453(A074133(n+1))`
-/

namespace A080239.P6840641924331863714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202453 (A074133 (n + 1)).toNat

end

end A080239.P6840641924331863714

namespace A080239

/-- `A202453(A074133(n+1))` -/
def P6840641924331863714.Spec : Prop :=
  ∀ n, P6840641924331863714.a n = A080239 (n + 1)

end A080239

/-! ## A080239.P9087197936360196044

`A202453(A080827(n+1))`
-/

namespace A080239.P9087197936360196044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202453 (A080827 (n + 1)).toNat

end

end A080239.P9087197936360196044

namespace A080239

/-- `A202453(A080827(n+1))` -/
def P9087197936360196044.Spec : Prop :=
  ∀ n, P9087197936360196044.a n = A080239 (n + 1)

end A080239

/-!
# A080240: Define two sequences by A_n = mex{A_i,B_i : 0 <= i < n} for n >= 0, B_0=0, B_1=1 and for n >= 2, B_n = 2B_{n-1}+(-1)^{A_n}. Sequence gives A_n.

The programs for A080240, there is no canonical definition to state claims against.
-/

/-! ## A080240.P17318061848119387527

`lt[A036580(n+1), A055938(A238189(n+5))]`
-/

namespace A080240.P17318061848119387527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (A238189 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080240.P17318061848119387527

/-! ## A080240.P11856763616529115276

`lt[A027641(A268715(n)), A280375(n+4)]`
-/

namespace A080240.P11856763616529115276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (A268715 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280375 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080240.P11856763616529115276

/-! ## A080240.P17351832001800098563

`lt[A286243(2*n+1), A006881(A113463(n+1))]`
-/

namespace A080240.P17351832001800098563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286243 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (A113463 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080240.P17351832001800098563

/-! ## A080240.P9176360737168263283

`lt[A324687(A061397(n+4)), A324713(3*n+4)]`
-/

namespace A080240.P9176360737168263283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324687 (A061397 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324713 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080240.P9176360737168263283

/-! ## A080240.P17406546403781379840

`comp[A209900(A143095(2*n+1))]`
-/

namespace A080240.P17406546403781379840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209900 (A143095 (2 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080240.P17406546403781379840

/-! ## A080240.P220636533418558803

`lt[A000120(A098412(n+1)), A184160(n+4)]`
-/

namespace A080240.P220636533418558803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A098412 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184160 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080240.P220636533418558803

/-! ## A080240.P10544301103608447242

`comp[A325419(A006519(2*(n+2))%A128372(2*n+3)+1)-1]`
-/

namespace A080240.P10544301103608447242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325419 (Int.tmod (A006519 (2 * (n + 2))) (A128372 (2 * n + 3)) + 1).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A080240.P10544301103608447242

/-!
# A080241: Define two sequences by A_n = mex{A_i,B_i : 0 <= i < n} for n >= 0, B_0=0, B_1=1 and for n >= 2, B_n = 2B_{n-1}+(-1)^{A_n}. Sequence gives B_n.

The programs for A080241, there is no canonical definition to state claims against.
-/

/-! ## A080241.P10463198514065477548

`A077465(n+1)-A000010(A003945(n))`
-/

namespace A080241.P10463198514065477548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077465 (n + 1) - A000010 (A003945 n).toNat

end

end A080241.P10463198514065477548

/-! ## A080241.P2184514958529024268

`A077465(n+1)-A000010(A042950(n))`
-/

namespace A080241.P2184514958529024268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077465 (n + 1) - A000010 (A042950 n).toNat

end

end A080241.P2184514958529024268

/-! ## A080241.P16890035915285160732

`A004280(A128174(3*n+4)+a(n-1)+1)` with `a(0)=0, a(1)=1`
-/

namespace A080241.P16890035915285160732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004280 (A128174 (3 * n + 4) + a (n - 1) + 1).toNat

end

end A080241.P16890035915285160732

/-! ## A080241.P13310633137694347084

`A077465(n+1)-A062383(A001045(n))`
-/

namespace A080241.P13310633137694347084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077465 (n + 1) - A062383 (A001045 n).toNat

end

end A080241.P13310633137694347084

/-! ## A080241.P1532687793062001812

`A260239(A077168(n))%A000079(n)`
-/

namespace A080241.P1532687793062001812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260239 (A077168 n).toNat) (A000079 n)

end

end A080241.P1532687793062001812

/-!
# A080242: Table of coefficients of polynomials P(n,x) defined by the relation P(n,x) = (1+x)*P(n-1,x) + (-x)^(n+1).

The programs for A080242, the canonical program `A080242.P6426782860955634572` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080242 has offset 0).

The definition of A080242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080242.P6426782860955634572

`A035317(∑[A068344(n)²])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A080242

/-- `A035317(∑[A068344(n)²])` -/
def P6426782860955634572.Spec : Prop :=
  ∀ n, P6426782860955634572.a n = A080242 n

theorem P6426782860955634572.correct : P6426782860955634572.Spec := by
  intro n
  simp only [A080242]

end A080242

/-! ## A080242.P13974742990328920667

`A035317(n-A095861(n+1))`
-/

namespace A080242.P13974742990328920667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 ((n : ℤ) - A095861 (n + 1)).toNat

end

end A080242.P13974742990328920667

namespace A080242

/-- `A035317(n-A095861(n+1))` -/
def P13974742990328920667.Spec : Prop :=
  ∀ n, P13974742990328920667.a n = A080242 n

end A080242

/-! ## A080242.P1008521822125734768

`A035317(∑[A140685(n+1)-1])`
-/

namespace A080242.P1008521822125734768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140685 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080242.P1008521822125734768

namespace A080242

/-- `A035317(∑[A140685(n+1)-1])` -/
def P1008521822125734768.Spec : Prop :=
  ∀ n, P1008521822125734768.a n = A080242 n

end A080242

/-! ## A080242.P4597099090963419694

`A035317(∑[A059841(A000005(2*n+1))])`
-/

namespace A080242.P4597099090963419694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A000005 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A080242.P4597099090963419694

namespace A080242

/-- `A035317(∑[A059841(A000005(2*n+1))])` -/
def P4597099090963419694.Spec : Prop :=
  ∀ n, P4597099090963419694.a n = A080242 n

end A080242

/-! ## A080242.P17685776951411021381

`A059259(record[(n+1)%(A059259(n+1)+n+1)])`
-/

namespace A080242.P17685776951411021381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A059259 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080242.P17685776951411021381

namespace A080242

/-- `A059259(record[(n+1)%(A059259(n+1)+n+1)])` -/
def P17685776951411021381.Spec : Prop :=
  ∀ n, P17685776951411021381.a n = A080242 n

end A080242

/-!
# A080243: Signed super-Catalan or little Schroeder numbers.

The programs for A080243, the canonical program `A080243.P6426181956936067807` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080243 has offset 0).

The definition of A080243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080243.P15783091527412647909

`(-1)^n*A001003(n)`
-/

namespace A080243.P15783091527412647909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001003 n

end

end A080243.P15783091527412647909

namespace A080243

/-- `(-1)^n*A001003(n)` -/
def P15783091527412647909.Spec : Prop :=
  ∀ n, P15783091527412647909.a n = A080243 n

end A080243

/-! ## A080243.P18116942704618376003

`A001003(n-char[1])/(-1)^n`
-/

namespace A080243.P18116942704618376003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 (n - (if ∃ j, f1 j = n then 1 else 0)) : ℚ) / ((-1) ^ n : ℚ)

end

end A080243.P18116942704618376003

namespace A080243

/-- `A001003(n-char[1])/(-1)^n` -/
def P18116942704618376003.Spec : Prop :=
  ∀ n, P18116942704618376003.a n = (A080243 n : ℚ)

end A080243

/-! ## A080243.P3389483337341890515

`A001003(n)*A033999(n)`
-/

namespace A080243.P3389483337341890515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n * A033999 n

end

end A080243.P3389483337341890515

namespace A080243

/-- `A001003(n)*A033999(n)` -/
def P3389483337341890515.Spec : Prop :=
  ∀ n, P3389483337341890515.a n = A080243 n

end A080243

/-! ## A080243.P17255822568804221837

`A033999(n)*A104219(∑[n])`
-/

namespace A080243.P17255822568804221837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A104219 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080243.P17255822568804221837

namespace A080243

/-- `A033999(n)*A104219(∑[n])` -/
def P17255822568804221837.Spec : Prop :=
  ∀ n, P17255822568804221837.a n = A080243 n

end A080243

/-! ## A080243.P9370177656154324120

`A001003(n)*A062157(n+1)`
-/

namespace A080243.P9370177656154324120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n * A062157 (n + 1)

end

end A080243.P9370177656154324120

namespace A080243

/-- `A001003(n)*A062157(n+1)` -/
def P9370177656154324120.Spec : Prop :=
  ∀ n, P9370177656154324120.a n = A080243 n

end A080243

/-! ## A080243.P4149244225150426342

`A001003(n)*A056594(2*n)`
-/

namespace A080243.P4149244225150426342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n * A056594 (2 * n)

end

end A080243.P4149244225150426342

namespace A080243

/-- `A001003(n)*A056594(2*n)` -/
def P4149244225150426342.Spec : Prop :=
  ∀ n, P4149244225150426342.a n = A080243 n

end A080243

/-! ## A080243.P12462771121084024428

`A001003(n)*A009531(2*n+1)`
-/

namespace A080243.P12462771121084024428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n * A009531 (2 * n + 1)

end

end A080243.P12462771121084024428

namespace A080243

/-- `A001003(n)*A009531(2*n+1)` -/
def P12462771121084024428.Spec : Prop :=
  ∀ n, P12462771121084024428.a n = A080243 n

end A080243

/-! ## A080243.P6674076817215720136

`A001003(n)*A076756(A000217(n))`
-/

namespace A080243.P6674076817215720136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n * A076756 (A000217 n).toNat

end

end A080243.P6674076817215720136

namespace A080243

/-- `A001003(n)*A076756(A000217(n))` -/
def P6674076817215720136.Spec : Prop :=
  ∀ n, P6674076817215720136.a n = A080243 n

end A080243

/-! ## A080243.P1391199524022089175

`A001003(n)/A103137(n)*abs(A103137(n))`
-/

namespace A080243.P1391199524022089175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 n : ℚ) / (A103137 n : ℚ) * (|A103137 n| : ℚ)

end

end A080243.P1391199524022089175

namespace A080243

/-- `A001003(n)/A103137(n)*abs(A103137(n))` -/
def P1391199524022089175.Spec : Prop :=
  ∀ n, P1391199524022089175.a n = (A080243 n : ℚ)

end A080243

/-! ## A080243.P383908775650458843

`A112478(n+1)/2`
-/

namespace A080243.P383908775650458843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112478 (n + 1) : ℚ) / 2

end

end A080243.P383908775650458843

namespace A080243

/-- `A112478(n+1)/2` -/
def P383908775650458843.Spec : Prop :=
  ∀ n, P383908775650458843.a n = (A080243 n : ℚ)

end A080243

/-! ## A080243.P13270508584175924427

`round(A109771(n+1)/4)`
-/

namespace A080243.P13270508584175924427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A109771 (n + 1) : ℚ) / 4)

end

end A080243.P13270508584175924427

namespace A080243

/-- `round(A109771(n+1)/4)` -/
def P13270508584175924427.Spec : Prop :=
  ∀ n, P13270508584175924427.a n = A080243 n

end A080243

/-! ## A080243.P9875636418897583618

`∏[A006318(n)/A085403(n)]`
-/

namespace A080243.P9875636418897583618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006318 n : ℚ) / (A085403 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A080243.P9875636418897583618

namespace A080243

/-- `∏[A006318(n)/A085403(n)]` -/
def P9875636418897583618.Spec : Prop :=
  ∀ n, P9875636418897583618.a n = (A080243 n : ℚ)

end A080243

/-! ## A080243.P6278638386856563969

`A155069(n+1)/A280560(n)`
-/

namespace A080243.P6278638386856563969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155069 (n + 1) : ℚ) / (A280560 n : ℚ)

end

end A080243.P6278638386856563969

namespace A080243

/-- `A155069(n+1)/A280560(n)` -/
def P6278638386856563969.Spec : Prop :=
  ∀ n, P6278638386856563969.a n = (A080243 n : ℚ)

end A080243

/-! ## A080243.P4566541291136959437

`A006318(n)/A176742(2*n)`
-/

namespace A080243.P4566541291136959437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006318 n : ℚ) / (A176742 (2 * n) : ℚ)

end

end A080243.P4566541291136959437

namespace A080243

/-- `A006318(n)/A176742(2*n)` -/
def P4566541291136959437.Spec : Prop :=
  ∀ n, P4566541291136959437.a n = (A080243 n : ℚ)

end A080243

/-! ## A080243.P16020939676314349648

`(A000007(n)-A103137(n+1))/2`
-/

namespace A080243.P16020939676314349648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 n - A103137 (n + 1) : ℚ) / 2

end

end A080243.P16020939676314349648

namespace A080243

/-- `(A000007(n)-A103137(n+1))/2` -/
def P16020939676314349648.Spec : Prop :=
  ∀ n, P16020939676314349648.a n = (A080243 n : ℚ)

end A080243

/-! ## A080243.P13733679527357359510

`A033999(n+1)/2*A085403(n+1)`
-/

namespace A080243.P13733679527357359510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) : ℚ) / 2 * (A085403 (n + 1) : ℚ)

end

end A080243.P13733679527357359510

namespace A080243

/-- `A033999(n+1)/2*A085403(n+1)` -/
def P13733679527357359510.Spec : Prop :=
  ∀ n, P13733679527357359510.a n = (A080243 n : ℚ)

end A080243

/-! ## A080243.P11784926617874316606

`A103137(n+1)/(A033322(n+2)-2)`
-/

namespace A080243.P11784926617874316606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103137 (n + 1) : ℚ) / (A033322 (n + 2) - 2 : ℚ)

end

end A080243.P11784926617874316606

namespace A080243

/-- `A103137(n+1)/(A033322(n+2)-2)` -/
def P11784926617874316606.Spec : Prop :=
  ∀ n, P11784926617874316606.a n = (A080243 n : ℚ)

end A080243

/-! ## A080243.P6426181956936067807

`A176479(n)/A181983(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A080243

/-- `A176479(n)/A181983(n+1)` -/
def P6426181956936067807.Spec : Prop :=
  ∀ n, P6426181956936067807.a n = (A080243 n : ℚ)

end A080243

/-!
# A080244: Signed generalized Fibonacci numbers.

The programs for A080244, there is no canonical definition to state claims against.
-/

/-! ## A080244.P10210410786502680174

`A006603(n)*A033999(n)`
-/

namespace A080244.P10210410786502680174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006603 n * A033999 n

end

end A080244.P10210410786502680174

/-! ## A080244.P14049363646064543368

`A006603(n)*A087960(2*n)`
-/

namespace A080244.P14049363646064543368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006603 n * A087960 (2 * n)

end

end A080244.P14049363646064543368

/-! ## A080244.P11179184448739240599

`A006603(n)*A009531(2*n+1)`
-/

namespace A080244.P11179184448739240599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006603 n * A009531 (2 * n + 1)

end

end A080244.P11179184448739240599

/-! ## A080244.P10061589278826382408

`A006603(n)/A009531(A005408(n))`
-/

namespace A080244.P10061589278826382408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006603 n : ℚ) / (A009531 (A005408 n).toNat : ℚ)

end

end A080244.P10061589278826382408

/-! ## A080244.P440707851347954509

`A001003(n)/A080243(n)*A006603(n)`
-/

namespace A080244.P440707851347954509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001003 n : ℚ) / (A080243 n : ℚ) * (A006603 n : ℚ)

end

end A080244.P440707851347954509

/-! ## A080244.P10059968787783057323

`A006603(n)/A103137(n)*abs(A103137(n))`
-/

namespace A080244.P10059968787783057323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006603 n : ℚ) / (A103137 n : ℚ) * (|A103137 n| : ℚ)

end

end A080244.P10059968787783057323

/-!
# A080245: Inverse of coordination sequence array A113413.

The programs for A080245, the canonical program `A080245.P10278613617857588123` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080245 has offset 0).

The definition of A080245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9047 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080245.P3857997551016278116

`(and(2, comp[∑[n]]+n)-1)*A080247(n)`
-/

namespace A080245.P3857997551016278116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A080247 n

end

end A080245.P3857997551016278116

namespace A080245

/-- `(and(2, comp[∑[n]]+n)-1)*A080247(n)` -/
def P3857997551016278116.Spec : Prop :=
  ∀ n, P3857997551016278116.a n = A080245 n

end A080245

/-! ## A080245.P11171885353479297620

`A080247(n)*A097807(n)`
-/

namespace A080245.P11171885353479297620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 n * A097807 n

end

end A080245.P11171885353479297620

namespace A080245

/-- `A080247(n)*A097807(n)` -/
def P11171885353479297620.Spec : Prop :=
  ∀ n, P11171885353479297620.a n = A080245 n

end A080245

/-! ## A080245.P11408507674243579523

`A080247(n)/A097807(comp[∑[n]])`
-/

namespace A080245.P11408507674243579523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080247 n : ℚ) / (A097807 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ)

end

end A080245.P11408507674243579523

namespace A080245

/-- `A080247(n)/A097807(comp[∑[n]])` -/
def P11408507674243579523.Spec : Prop :=
  ∀ n, P11408507674243579523.a n = (A080245 n : ℚ)

end A080245

/-! ## A080245.P1989674278340940128

`((A121574(n)+1)%3-1)*A080247(n)`
-/

namespace A080245.P1989674278340940128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A121574 n + 1) 3 - 1) * A080247 n

end

end A080245.P1989674278340940128

namespace A080245

/-- `((A121574(n)+1)%3-1)*A080247(n)` -/
def P1989674278340940128.Spec : Prop :=
  ∀ n, P1989674278340940128.a n = A080245 n

end A080245

/-! ## A080245.P14116052254356821080

`A033999(A025581(n))*A080247(n)`
-/

namespace A080245.P14116052254356821080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A080247 n

end

end A080245.P14116052254356821080

namespace A080245

/-- `A033999(A025581(n))*A080247(n)` -/
def P14116052254356821080.Spec : Prop :=
  ∀ n, P14116052254356821080.a n = A080245 n

end A080245

/-! ## A080245.P8813152591142454184

`A033999(A051933(n))*A080247(n)`
-/

namespace A080245.P8813152591142454184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051933 n).toNat * A080247 n

end

end A080245.P8813152591142454184

namespace A080245

/-- `A033999(A051933(n))*A080247(n)` -/
def P8813152591142454184.Spec : Prop :=
  ∀ n, P8813152591142454184.a n = A080245 n

end A080245

/-! ## A080245.P2057417135931195373

`A009531(A099375(n))*A080247(n)`
-/

namespace A080245.P2057417135931195373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A080247 n

end

end A080245.P2057417135931195373

namespace A080245

/-- `A009531(A099375(n))*A080247(n)` -/
def P2057417135931195373.Spec : Prop :=
  ∀ n, P2057417135931195373.a n = A080245 n

end A080245

/-! ## A080245.P18375276560174816814

`A080246(n)/A113413(n)*A080247(n)`
-/

namespace A080245.P18375276560174816814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080246 n : ℚ) / (A113413 n : ℚ) * (A080247 n : ℚ)

end

end A080245.P18375276560174816814

namespace A080245

/-- `A080246(n)/A113413(n)*A080247(n)` -/
def P18375276560174816814.Spec : Prop :=
  ∀ n, P18375276560174816814.a n = (A080245 n : ℚ)

end A080245

/-! ## A080245.P10278613617857588123

`A033999(A051933(n))*A106579(A099375(n)+1+n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A080245

/-- `A033999(A051933(n))*A106579(A099375(n)+1+n)` -/
def P10278613617857588123.Spec : Prop :=
  ∀ n, P10278613617857588123.a n = A080245 n

theorem P10278613617857588123.correct : P10278613617857588123.Spec := by
  intro n
  simp only [A080245]

end A080245

/-!
# A080246: Signed version of A035607.

The programs for A080246, the canonical program `A080246.P6751845829053389394` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080246 has offset 0).

The definition of A080246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080246.P6751845829053389394

`T(n-1,k-1)-T(n-1,k)-T(n-2,k-1)` with `a(0)=1, a(1)=-2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080246

/-- `T(n-1,k-1)-T(n-1,k)-T(n-2,k-1)` -/
def P6751845829053389394.Spec : Prop :=
  ∀ n, P6751845829053389394.a n = A080246 n

theorem P6751845829053389394.correct : P6751845829053389394.Spec := by
  intro n
  simp only [A080246]

end A080246

/-! ## A080246.P11423906562524194389

`A097807(n)*A113413(n)`
-/

namespace A080246.P11423906562524194389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A113413 n

end

end A080246.P11423906562524194389

namespace A080246

/-- `A097807(n)*A113413(n)` -/
def P11423906562524194389.Spec : Prop :=
  ∀ n, P11423906562524194389.a n = A080246 n

end A080246

/-! ## A080246.P7588859666323732072

`A033999(A025581(n))*A113413(n)`
-/

namespace A080246.P7588859666323732072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A113413 n

end

end A080246.P7588859666323732072

namespace A080246

/-- `A033999(A025581(n))*A113413(n)` -/
def P7588859666323732072.Spec : Prop :=
  ∀ n, P7588859666323732072.a n = A080246 n

end A080246

/-! ## A080246.P813949125603445098

`A033999(A051933(n))*A113413(n)`
-/

namespace A080246.P813949125603445098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051933 n).toNat * A113413 n

end

end A080246.P813949125603445098

namespace A080246

/-- `A033999(A051933(n))*A113413(n)` -/
def P813949125603445098.Spec : Prop :=
  ∀ n, P813949125603445098.a n = A080246 n

end A080246

/-! ## A080246.P13725565792197622069

`A009531(A099375(n))*A113413(n)`
-/

namespace A080246.P13725565792197622069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A113413 n

end

end A080246.P13725565792197622069

namespace A080246

/-- `A009531(A099375(n))*A113413(n)` -/
def P13725565792197622069.Spec : Prop :=
  ∀ n, P13725565792197622069.a n = A080246 n

end A080246

/-! ## A080246.P1428771404785398572

`A080245(n)/A080247(n)*A113413(n)`
-/

namespace A080246.P1428771404785398572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080245 n : ℚ) / (A080247 n : ℚ) * (A113413 n : ℚ)

end

end A080246.P1428771404785398572

namespace A080246

/-- `A080245(n)/A080247(n)*A113413(n)` -/
def P1428771404785398572.Spec : Prop :=
  ∀ n, P1428771404785398572.a n = (A080246 n : ℚ)

end A080246

/-! ## A080246.P14704560625795865547

`A033999(A063656(n))*A113413(n)`
-/

namespace A080246.P14704560625795865547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063656 n).toNat * A113413 n

end

end A080246.P14704560625795865547

namespace A080246

/-- `A033999(A063656(n))*A113413(n)` -/
def P14704560625795865547.Spec : Prop :=
  ∀ n, P14704560625795865547.a n = A080246 n

end A080246

/-! ## A080246.P13391717969932599185

`A034947(A143218(n+1))*A113413(n)`
-/

namespace A080246.P13391717969932599185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A143218 (n + 1)).toNat * A113413 n

end

end A080246.P13391717969932599185

namespace A080246

/-- `A034947(A143218(n+1))*A113413(n)` -/
def P13391717969932599185.Spec : Prop :=
  ∀ n, P13391717969932599185.a n = A080246 n

end A080246

/-! ## A080246.P70267931774946197

`A008836(A130321(n))*A113413(n)`
-/

namespace A080246.P70267931774946197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A113413 n

end

end A080246.P70267931774946197

namespace A080246

/-- `A008836(A130321(n))*A113413(n)` -/
def P70267931774946197.Spec : Prop :=
  ∀ n, P70267931774946197.a n = A080246 n

end A080246

/-! ## A080246.P17514379501683501410

`A113413(n)*A309873(A054582(n))`
-/

namespace A080246.P17514379501683501410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 n * A309873 (A054582 n).toNat

end

end A080246.P17514379501683501410

namespace A080246

/-- `A113413(n)*A309873(A054582(n))` -/
def P17514379501683501410.Spec : Prop :=
  ∀ n, P17514379501683501410.a n = A080246 n

end A080246

/-!
# A080247: Formal inverse of triangle A080246. Unsigned version of A080245.

The programs for A080247, the canonical program `A080247.P7183130527300381836` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080247 has offset 0).

The definition of A080247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080247.P7183130527300381836

`A033877(A038722(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080247

/-- `A033877(A038722(n+1))` -/
def P7183130527300381836.Spec : Prop :=
  ∀ n, P7183130527300381836.a n = A080247 n

theorem P7183130527300381836.correct : P7183130527300381836.Spec := by
  intro n
  simp only [A080247]

end A080247

/-! ## A080247.P1178347171040994999

`A033877(A061579(n)+1)`
-/

namespace A080247.P1178347171040994999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (A061579 n + 1).toNat

end

end A080247.P1178347171040994999

namespace A080247

/-- `A033877(A061579(n)+1)` -/
def P1178347171040994999.Spec : Prop :=
  ∀ n, P1178347171040994999.a n = A080247 n

end A080247

/-! ## A080247.P6755045846179184476

`A122538(A014132(n+1))`
-/

namespace A080247.P6755045846179184476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 (A014132 (n + 1)).toNat

end

end A080247.P6755045846179184476

namespace A080247

/-- `A122538(A014132(n+1))` -/
def P6755045846179184476.Spec : Prop :=
  ∀ n, P6755045846179184476.a n = A080247 n

end A080247

/-! ## A080247.P9687677738801661445

`A106579(A099375(n)+1+n)`
-/

namespace A080247.P9687677738801661445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (A099375 n + 1 + (n : ℤ)).toNat

end

end A080247.P9687677738801661445

namespace A080247

/-- `A106579(A099375(n)+1+n)` -/
def P9687677738801661445.Spec : Prop :=
  ∀ n, P9687677738801661445.a n = A080247 n

end A080247

/-! ## A080247.P6411775614888104100

`A033877(A002024(n+1)²-n)`
-/

namespace A080247.P6411775614888104100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A080247.P6411775614888104100

namespace A080247

/-- `A033877(A002024(n+1)²-n)` -/
def P6411775614888104100.Spec : Prop :=
  ∀ n, P6411775614888104100.a n = A080247 n

end A080247

/-! ## A080247.P18158789470529885878

`A106579(A038722(n+1)+A002024(n+1))`
-/

namespace A080247.P18158789470529885878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A080247.P18158789470529885878

namespace A080247

/-- `A106579(A038722(n+1)+A002024(n+1))` -/
def P18158789470529885878.Spec : Prop :=
  ∀ n, P18158789470529885878.a n = A080247 n

end A080247

/-! ## A080247.P13981735830397534931

`abs(A080245(n))`
-/

namespace A080247.P13981735830397534931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080245 n|

end

end A080247.P13981735830397534931

namespace A080247

/-- `abs(A080245(n))` -/
def P13981735830397534931.Spec : Prop :=
  ∀ n, P13981735830397534931.a n = A080247 n

end A080247

/-! ## A080247.P2079235125734230005

`A080245(n)*A097807(n)`
-/

namespace A080247.P2079235125734230005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080245 n * A097807 n

end

end A080247.P2079235125734230005

namespace A080247

/-- `A080245(n)*A097807(n)` -/
def P2079235125734230005.Spec : Prop :=
  ∀ n, P2079235125734230005.a n = A080247 n

end A080247

/-! ## A080247.P15323029959356581686

`gcd(A000038(n), A080245(n))`
-/

namespace A080247.P15323029959356581686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A080245 n)

end

end A080247.P15323029959356581686

namespace A080247

/-- `gcd(A000038(n), A080245(n))` -/
def P15323029959356581686.Spec : Prop :=
  ∀ n, (P15323029959356581686.a n : ℤ) = A080247 n

end A080247

/-! ## A080247.P3664288934120839418

`lcm(A020985(n), A080245(n))`
-/

namespace A080247.P3664288934120839418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A080245 n)

end

end A080247.P3664288934120839418

namespace A080247

/-- `lcm(A020985(n), A080245(n))` -/
def P3664288934120839418.Spec : Prop :=
  ∀ n, (P3664288934120839418.a n : ℤ) = A080247 n

end A080247

/-! ## A080247.P12577529968434993235

`A080245(n)/A080246(n)*A113413(n)`
-/

namespace A080247.P12577529968434993235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080245 n : ℚ) / (A080246 n : ℚ) * (A113413 n : ℚ)

end

end A080247.P12577529968434993235

namespace A080247

/-- `A080245(n)/A080246(n)*A113413(n)` -/
def P12577529968434993235.Spec : Prop :=
  ∀ n, P12577529968434993235.a n = (A080247 n : ℚ)

end A080247

/-! ## A080247.P14184410628286471036

`A183875(n+1)/A130321(n)`
-/

namespace A080247.P14184410628286471036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183875 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A080247.P14184410628286471036

namespace A080247

/-- `A183875(n+1)/A130321(n)` -/
def P14184410628286471036.Spec : Prop :=
  ∀ n, P14184410628286471036.a n = (A080247 n : ℚ)

end A080247

/-!
# A080248: Stirling-like number triangle defined by sequence A000217.

The programs for A080248, the canonical program `A080248.P930912212863348118` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080248 has offset 0).

The definition of A080248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080248.P930912212863348118

`(col(n)+1)*(col(n)+2)/2*T(n-1,k)+T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080248

/-- `(col(n)+1)*(col(n)+2)/2*T(n-1,k)+T(n-1,k-1)` -/
def P930912212863348118.Spec : Prop :=
  ∀ n, P930912212863348118.a n = (A080248 n : ℚ)

end A080248

/-! ## A080248.P12833834636252642785

`A071951(n+1)/A130321(n)`
-/

namespace A080248.P12833834636252642785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071951 (n + 1) : ℚ) / (A130321 n : ℚ)

end

end A080248.P12833834636252642785

namespace A080248

/-- `A071951(n+1)/A130321(n)` -/
def P12833834636252642785.Spec : Prop :=
  ∀ n, P12833834636252642785.a n = (A080248 n : ℚ)

end A080248

/-! ## A080248.P12259401685584228665

`A071951(n+1)/A000079(A025581(n))`
-/

namespace A080248.P12259401685584228665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071951 (n + 1) : ℚ) / (A000079 (A025581 n).toNat : ℚ)

end

end A080248.P12259401685584228665

namespace A080248

/-- `A071951(n+1)/A000079(A025581(n))` -/
def P12259401685584228665.Spec : Prop :=
  ∀ n, P12259401685584228665.a n = (A080248 n : ℚ)

end A080248

/-! ## A080248.P9754160755631352423

`A071951(n+1)/A016116(A099375(n))`
-/

namespace A080248.P9754160755631352423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071951 (n + 1) : ℚ) / (A016116 (A099375 n).toNat : ℚ)

end

end A080248.P9754160755631352423

namespace A080248

/-- `A071951(n+1)/A016116(A099375(n))` -/
def P9754160755631352423.Spec : Prop :=
  ∀ n, P9754160755631352423.a n = (A080248 n : ℚ)

end A080248

/-! ## A080248.P2447443850973333393

`A071951(n+1)/A059268(A061579(n))`
-/

namespace A080248.P2447443850973333393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071951 (n + 1) : ℚ) / (A059268 (A061579 n).toNat : ℚ)

end

end A080248.P2447443850973333393

namespace A080248

/-- `A071951(n+1)/A059268(A061579(n))` -/
def P2447443850973333393.Spec : Prop :=
  ∀ n, P2447443850973333393.a n = (A080248 n : ℚ)

end A080248

/-! ## A080248.P7265049222230902590

`A071951(n+1)/A131577(A004736(n+1))`
-/

namespace A080248.P7265049222230902590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071951 (n + 1) : ℚ) / (A131577 (A004736 (n + 1)).toNat : ℚ)

end

end A080248.P7265049222230902590

namespace A080248

/-- `A071951(n+1)/A131577(A004736(n+1))` -/
def P7265049222230902590.Spec : Prop :=
  ∀ n, P7265049222230902590.a n = (A080248 n : ℚ)

end A080248

/-! ## A080248.P4924570556460176715

`A191935(A038722(n+1))/A130321(n)`
-/

namespace A080248.P4924570556460176715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191935 (A038722 (n + 1)).toNat : ℚ) / (A130321 n : ℚ)

end

end A080248.P4924570556460176715

namespace A080248

/-- `A191935(A038722(n+1))/A130321(n)` -/
def P4924570556460176715.Spec : Prop :=
  ∀ n, P4924570556460176715.a n = (A080248 n : ℚ)

end A080248

/-! ## A080248.P7557520799142245248

`A191935(A038722(n+1))/A000079(A025581(n))`
-/

namespace A080248.P7557520799142245248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191935 (A038722 (n + 1)).toNat : ℚ) / (A000079 (A025581 n).toNat : ℚ)

end

end A080248.P7557520799142245248

namespace A080248

/-- `A191935(A038722(n+1))/A000079(A025581(n))` -/
def P7557520799142245248.Spec : Prop :=
  ∀ n, P7557520799142245248.a n = (A080248 n : ℚ)

end A080248

/-! ## A080248.P3777266204462950276

`A191935(A038722(n+1))/A059268(A061579(n))`
-/

namespace A080248.P3777266204462950276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191935 (A038722 (n + 1)).toNat : ℚ) / (A059268 (A061579 n).toNat : ℚ)

end

end A080248.P3777266204462950276

namespace A080248

/-- `A191935(A038722(n+1))/A059268(A061579(n))` -/
def P3777266204462950276.Spec : Prop :=
  ∀ n, P3777266204462950276.a n = (A080248 n : ℚ)

end A080248

/-! ## A080248.P9323075626186325939

`A071951(n+1)/A003958(A175840(n))`
-/

namespace A080248.P9323075626186325939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071951 (n + 1) : ℚ) / (A003958 (A175840 n).toNat : ℚ)

end

end A080248.P9323075626186325939

namespace A080248

/-- `A071951(n+1)/A003958(A175840(n))` -/
def P9323075626186325939.Spec : Prop :=
  ∀ n, P9323075626186325939.a n = (A080248 n : ℚ)

end A080248

/-!
# A080249: Stirling-like number triangle defined by the sequence A000292=C(n+3,3).

The programs for A080249, the canonical program `A080249.P13615924142674968941` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080249 has offset 0).

The definition of A080249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080249.P13615924142674968941

`T(n-1,k-1)+A000292(col(n)+1)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080249

/-- `T(n-1,k-1)+A000292(col(n)+1)*T(n-1,k)` -/
def P13615924142674968941.Spec : Prop :=
  ∀ n, P13615924142674968941.a n = A080249 n

theorem P13615924142674968941.correct : P13615924142674968941.Spec := by
  intro n
  simp only [A080249]

end A080249

/-! ## A080249.P11814125717319442888

`A089504(n+1)/6^A025581(n)`
-/

namespace A080249.P11814125717319442888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089504 (n + 1) : ℚ) / (6 : ℚ) ^ (A025581 n : ℤ)

end

end A080249.P11814125717319442888

namespace A080249

/-- `A089504(n+1)/6^A025581(n)` -/
def P11814125717319442888.Spec : Prop :=
  ∀ n, P11814125717319442888.a n = (A080249 n : ℚ)

end A080249

/-! ## A080249.P1650860973549581794

`A089504(n+1)/A000400(A025581(n))`
-/

namespace A080249.P1650860973549581794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089504 (n + 1) : ℚ) / (A000400 (A025581 n).toNat : ℚ)

end

end A080249.P1650860973549581794

namespace A080249

/-- `A089504(n+1)/A000400(A025581(n))` -/
def P1650860973549581794.Spec : Prop :=
  ∀ n, P1650860973549581794.a n = (A080249 n : ℚ)

end A080249

/-! ## A080249.P11378121359805215130

`A089504(n+1)/A000400(log2(A130321(n)))`
-/

namespace A080249.P11378121359805215130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089504 (n + 1) : ℚ) / (A000400 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat : ℚ)

end

end A080249.P11378121359805215130

namespace A080249

/-- `A089504(n+1)/A000400(log2(A130321(n)))` -/
def P11378121359805215130.Spec : Prop :=
  ∀ n, P11378121359805215130.a n = (A080249 n : ℚ)

end A080249

/-! ## A080249.P7553519997594727934

`A125975(A112500(n))`
-/

namespace A080249.P7553519997594727934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125975 (A112500 n).toNat

end

end A080249.P7553519997594727934

namespace A080249

/-- `A125975(A112500(n))` -/
def P7553519997594727934.Spec : Prop :=
  ∀ n, P7553519997594727934.a n = A080249 n

end A080249

/-!
# A080250: Expansion of 1/((1-x)(1-4x)(1-10x)(1-20x)).

The programs for A080250, there is no canonical definition to state claims against.
-/

/-! ## A080250.P18364425256565357019

`∑[A000079(n)*A016299(n)]`
-/

namespace A080250.P18364425256565357019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A016299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080250.P18364425256565357019

/-! ## A080250.P11617058438210489495

`∑[∑[A011782(n)]*A016299(n)]`
-/

namespace A080250.P11617058438210489495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A016299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080250.P11617058438210489495

/-! ## A080250.P18274790090077013132

`∑[Δ[A000918(n)]*A016299(n)]`
-/

namespace A080250.P18274790090077013132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A016299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080250.P18274790090077013132

/-! ## A080250.P14741338433166869294

`∑[A016116(2*n)*A016299(n)]`
-/

namespace A080250.P14741338433166869294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) * A016299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080250.P14741338433166869294

/-! ## A080250.P16104525217828561821

`A089514(n)/6^n`
-/

namespace A080250.P16104525217828561821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089514 n : ℚ) / (6 ^ n : ℚ)

end

end A080250.P16104525217828561821

/-!
# A080251: Paired decomposition of tetrahedral numbers A000292 arranged as number triangle.

The programs for A080251, the canonical program `A080251.P16627620130656438930` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080251 has offset 0).

The definition of A080251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080251.P16627620130656438930

`A003991(ceil(A004201(n+1)/2))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A080251

/-- `A003991(ceil(A004201(n+1)/2))` -/
def P16627620130656438930.Spec : Prop :=
  ∀ n, P16627620130656438930.a n = A080251 n

theorem P16627620130656438930.correct : P16627620130656438930.Spec := by
  intro n
  simp only [A080251]

end A080251

/-! ## A080251.P7732861364660265076

`A003991(round(A004201(n+1)/2))`
-/

namespace A080251.P7732861364660265076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (SequenceMachineLib.roundAway ((A004201 (n + 1) : ℚ) / 2)).toNat

end

end A080251.P7732861364660265076

namespace A080251

/-- `A003991(round(A004201(n+1)/2))` -/
def P7732861364660265076.Spec : Prop :=
  ∀ n, P7732861364660265076.a n = A080251 n

end A080251

/-! ## A080251.P15995186561139266523

`A057058(n+1)*A057059(n+1)`
-/

namespace A080251.P15995186561139266523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 (n + 1) * A057059 (n + 1)

end

end A080251.P15995186561139266523

namespace A080251

/-- `A057058(n+1)*A057059(n+1)` -/
def P15995186561139266523.Spec : Prop :=
  ∀ n, P15995186561139266523.a n = A080251 n

end A080251

/-! ## A080251.P3971543651964479003

`(A141419(n+1)+A057059(n+1))/2`
-/

namespace A080251.P3971543651964479003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141419 (n + 1) + A057059 (n + 1) : ℚ) / 2

end

end A080251.P3971543651964479003

namespace A080251

/-- `(A141419(n+1)+A057059(n+1))/2` -/
def P3971543651964479003.Spec : Prop :=
  ∀ n, P3971543651964479003.a n = (A080251 n : ℚ)

end A080251

/-! ## A080251.P14613752031754593180

`A002260(A057027(n+1))*A057059(n+1)`
-/

namespace A080251.P14613752031754593180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A057027 (n + 1)).toNat * A057059 (n + 1)

end

end A080251.P14613752031754593180

namespace A080251

/-- `A002260(A057027(n+1))*A057059(n+1)` -/
def P14613752031754593180.Spec : Prop :=
  ∀ n, P14613752031754593180.a n = A080251 n

end A080251

/-! ## A080251.P42387017128460383

`(A003057(n+2)-A057058(n+1))*A057058(n+1)`
-/

namespace A080251.P42387017128460383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) - A057058 (n + 1)) * A057058 (n + 1)

end

end A080251.P42387017128460383

namespace A080251

/-- `(A003057(n+2)-A057058(n+1))*A057058(n+1)` -/
def P42387017128460383.Spec : Prop :=
  ∀ n, P42387017128460383.a n = A080251 n

end A080251

/-! ## A080251.P9441153383009249412

`(A003057(n+2)-A057059(n+1))*A057059(n+1)`
-/

namespace A080251.P9441153383009249412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) - A057059 (n + 1)) * A057059 (n + 1)

end

end A080251.P9441153383009249412

namespace A080251

/-- `(A003057(n+2)-A057059(n+1))*A057059(n+1)` -/
def P9441153383009249412.Spec : Prop :=
  ∀ n, P9441153383009249412.a n = A080251 n

end A080251

/-! ## A080251.P6695505023814139743

`A003991(A057027(n+1))`
-/

namespace A080251.P6695505023814139743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A057027 (n + 1)).toNat

end

end A080251.P6695505023814139743

namespace A080251

/-- `A003991(A057027(n+1))` -/
def P6695505023814139743.Spec : Prop :=
  ∀ n, P6695505023814139743.a n = A080251 n

end A080251

/-! ## A080251.P2167669835203516794

`A004736(A057027(n+1))*A057058(n+1)`
-/

namespace A080251.P2167669835203516794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A057027 (n + 1)).toNat * A057058 (n + 1)

end

end A080251.P2167669835203516794

namespace A080251

/-- `A004736(A057027(n+1))*A057058(n+1)` -/
def P2167669835203516794.Spec : Prop :=
  ∀ n, P2167669835203516794.a n = A080251 n

end A080251

/-! ## A080251.P1424525346090944843

`A003991(A059399(n+1))`
-/

namespace A080251.P1424525346090944843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A059399 (n + 1)).toNat

end

end A080251.P1424525346090944843

namespace A080251

/-- `A003991(A059399(n+1))` -/
def P1424525346090944843.Spec : Prop :=
  ∀ n, P1424525346090944843.a n = A080251 n

end A080251

/-! ## A080251.P3804323905513123699

`A128590(A038722(n+1))`
-/

namespace A080251.P3804323905513123699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128590 (A038722 (n + 1)).toNat

end

end A080251.P3804323905513123699

namespace A080251

/-- `A128590(A038722(n+1))` -/
def P3804323905513123699.Spec : Prop :=
  ∀ n, P3804323905513123699.a n = A080251 n

end A080251

/-! ## A080251.P3030667335975013438

`A094053(A057027(n+1)+round(sqrt(2*n+1)))`
-/

namespace A080251.P3030667335975013438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (A057027 (n + 1) + SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A080251.P3030667335975013438

namespace A080251

/-- `A094053(A057027(n+1)+round(sqrt(2*n+1)))` -/
def P3030667335975013438.Spec : Prop :=
  ∀ n, P3030667335975013438.a n = A080251 n

end A080251

/-! ## A080251.P12518008900069607433

`A128590(A378762(n+1))`
-/

namespace A080251.P12518008900069607433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128590 (A378762 (n + 1)).toNat

end

end A080251.P12518008900069607433

namespace A080251

/-- `A128590(A378762(n+1))` -/
def P12518008900069607433.Spec : Prop :=
  ∀ n, P12518008900069607433.a n = A080251 n

end A080251

/-! ## A080251.P12888993785125910535

`A003991(A008619(A061885(n)))`
-/

namespace A080251.P12888993785125910535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A008619 (A061885 n).toNat).toNat

end

end A080251.P12888993785125910535

namespace A080251

/-- `A003991(A008619(A061885(n)))` -/
def P12888993785125910535.Spec : Prop :=
  ∀ n, P12888993785125910535.a n = A080251 n

end A080251

/-! ## A080251.P10367760787288979439

`A003991(A008621(2*A061885(n)))`
-/

namespace A080251.P10367760787288979439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A008621 (2 * A061885 n).toNat).toNat

end

end A080251.P10367760787288979439

namespace A080251

/-- `A003991(A008621(2*A061885(n)))` -/
def P10367760787288979439.Spec : Prop :=
  ∀ n, P10367760787288979439.a n = A080251 n

end A080251

/-! ## A080251.P11155299697369441727

`A243866(A341706(n+1))`
-/

namespace A080251.P11155299697369441727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243866 (A341706 (n + 1)).toNat

end

end A080251.P11155299697369441727

namespace A080251

/-- `A243866(A341706(n+1))` -/
def P11155299697369441727.Spec : Prop :=
  ∀ n, P11155299697369441727.a n = A080251 n

end A080251

/-!
# A080252: a(n) = n*a(n-1)+4*a(n-2)-4*(n-2)*a(n-3).

The programs for A080252, the canonical program `A080252.P4201427987342128680` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080252 has offset 0).

The definition of A080252 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)+4*a(n-2)-4*(n-2)*a(n-3)` (program `A080252.P4201427987342128680`, by `A080252.P4201427987342128680.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080252.P4201427987342128680

`n*a(n-1)+4*a(n-2)-4*(n-2)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080252

/-- `n*a(n-1)+4*a(n-2)-4*(n-2)*a(n-3)` -/
def P4201427987342128680.Spec : Prop :=
  ∀ n, P4201427987342128680.a n = A080252 n

theorem P4201427987342128680.correct : P4201427987342128680.Spec := by
  intro n
  simp only [A080252]

end A080252

/-! ## A080252.P8196098483448278698

`(A010842(n)-A000023(n))/4`
-/

namespace A080252.P8196098483448278698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010842 n - A000023 n : ℚ) / 4

end

end A080252.P8196098483448278698

namespace A080252

/-- `(A010842(n)-A000023(n))/4` -/
def P8196098483448278698.Spec : Prop :=
  ∀ n, P8196098483448278698.a n = (A080252 n : ℚ)

end A080252

/-! ## A080252.P12067740126820029787

`A131575(n)²+n*a(n-1)` with `a(0)=0`
-/

namespace A080252.P12067740126820029787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A131575 n ^ 2 + (n : ℤ) * a (n - 1)

end

end A080252.P12067740126820029787

namespace A080252

/-- `A131575(n)²+n*a(n-1)` -/
def P12067740126820029787.Spec : Prop :=
  ∀ n, P12067740126820029787.a n = A080252 n

end A080252

/-! ## A080252.P6450156012282216062

`A159697(n)%(2^n)+n*a(n-1)` with `a(0)=0`
-/

namespace A080252.P6450156012282216062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A159697 n) (2 ^ n : ℤ) + (n : ℤ) * a (n - 1)

end

end A080252.P6450156012282216062

namespace A080252

/-- `A159697(n)%(2^n)+n*a(n-1)` -/
def P6450156012282216062.Spec : Prop :=
  ∀ n, P6450156012282216062.a n = A080252 n

end A080252

/-! ## A080252.P16714911617427991860

`and(A001045(n+1), A001787(n))+n*a(n-1)` with `a(0)=0`
-/

namespace A080252.P16714911617427991860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (A001045 (n + 1)) (A001787 n) + (n : ℤ) * a (n - 1)

end

end A080252.P16714911617427991860

namespace A080252

/-- `and(A001045(n+1), A001787(n))+n*a(n-1)` -/
def P16714911617427991860.Spec : Prop :=
  ∀ n, P16714911617427991860.a n = A080252 n

end A080252

/-!
# A080253: a(n) is the number of elements in the Coxeter complex of type B_n (or C_n).

The programs for A080253, there is no canonical definition to state claims against.
-/

/-! ## A080253.P10194376133071886307

`A162313(∑[n])`
-/

namespace A080253.P10194376133071886307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162313 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080253.P10194376133071886307

/-! ## A080253.P2736627332482039310

`record[A162313(n)]`
-/

namespace A080253.P2736627332482039310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080253.P2736627332482039310

/-! ## A080253.P6289227524212810853

`A355219(n)/2^n`
-/

namespace A080253.P6289227524212810853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355219 n : ℚ) / (2 ^ n : ℚ)

end

end A080253.P6289227524212810853

/-! ## A080253.P17989035700954927032

`floor(A355219(n)/A000079(n))`
-/

namespace A080253.P17989035700954927032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A355219 n : ℚ) / (A000079 n : ℚ)⌋

end

end A080253.P17989035700954927032

/-! ## A080253.P16081549194200331725

`round(A355219(n)/A011782(n+1))`
-/

namespace A080253.P16081549194200331725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A355219 n : ℚ) / (A011782 (n + 1) : ℚ))

end

end A080253.P16081549194200331725

/-!
# A080254: For n>3, a(n) is the number of elements in the Coxeter complex of type D_n (although the sequence starts at n=0. See comments below for precise explanation).

The programs for A080254, there is no canonical definition to state claims against.
-/

/-! ## A080254.P11238104475658647612

`A109613(n*(n+2)^(n-1))`
-/

namespace A080254.P11238104475658647612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.roundAway ((n : ℚ) * (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A080254.P11238104475658647612

/-!
# A080255: Antisquares: of the form a*p^k where p is prime, k is odd and a is nonsquare modulo p.

The programs for A080255, there is no canonical definition to state claims against.
-/

/-! ## A080255.P16017922953968208214

`eq[3, A089311(A141224(n+1))]`
-/

namespace A080255.P16017922953968208214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089311 (A141224 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080255.P16017922953968208214

/-! ## A080255.P8928699791216378948

`A279458(lt[A215021(n+1), A119370(n)])`
-/

namespace A080255.P8928699791216378948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279458 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A080255.P8928699791216378948

/-! ## A080255.P5001540330488694081

`A028260(A172540(n+1)+A093373(n+1))`
-/

namespace A080255.P5001540330488694081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (A172540 (n + 1) + A093373 (n + 1)).toNat

end

end A080255.P5001540330488694081

/-! ## A080255.P12815328945487997493

`∩[A056556(A002414(n+1)), A119899(n+1)]`
-/

namespace A080255.P12815328945487997493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A002414 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080255.P12815328945487997493

/-!
# A080256: Sum of numbers of distinct and of all prime factors of n.

The programs for A080256, the canonical program `A080256.P7120327596299936655` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080256 has offset 1).

The definition of A080256 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A001222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080256.P7120327596299936655

`A001221(n+1)+A001222(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A080256

/-- `A001221(n+1)+A001222(n+1)` -/
def P7120327596299936655.Spec : Prop :=
  ∀ n, P7120327596299936655.a n = A080256 (n + 1)

theorem P7120327596299936655.correct : P7120327596299936655.Spec := by
  intro n
  simp only [A080256, Nat.add_sub_cancel]

end A080256

/-! ## A080256.P10557788499503737959

`∑{e}[n+1, #+1]`
-/

namespace A080256.P10557788499503737959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A080256.P10557788499503737959

namespace A080256

/-- `∑{e}[n+1, #+1]` -/
def P10557788499503737959.Spec : Prop :=
  ∀ n, (P10557788499503737959.a n : ℤ) = A080256 (n + 1)

end A080256

/-! ## A080256.P12982717120853458885

`log2(∏{e}[n+1, 2^(#+1)])`
-/

namespace A080256.P12982717120853458885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ (Nat.factorization (f1 n) p + 1) : ℕ) : ℝ)

end

end A080256.P12982717120853458885

namespace A080256

/-- `log2(∏{e}[n+1, 2^(#+1)])` -/
def P12982717120853458885.Spec : Prop :=
  ∀ n, P12982717120853458885.a n = (A080256 (n + 1) : ℝ)

end A080256

/-! ## A080256.P232599988371274192

`∑{p}[n+1, val(n+1, #)+1]`
-/

namespace A080256.P232599988371274192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) p + 1)

end

end A080256.P232599988371274192

namespace A080256

/-- `∑{p}[n+1, val(n+1, #)+1]` -/
def P232599988371274192.Spec : Prop :=
  ∀ n, (P232599988371274192.a n : ℤ) = A080256 (n + 1)

end A080256

/-! ## A080256.P1227588841230412172

`val(A124511(n+1), 2)`
-/

namespace A080256.P1227588841230412172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A124511 (n + 1)).toNat 2

end

end A080256.P1227588841230412172

namespace A080256

/-- `val(A124511(n+1), 2)` -/
def P1227588841230412172.Spec : Prop :=
  ∀ n, (P1227588841230412172.a n : ℤ) = A080256 (n + 1)

end A080256

/-! ## A080256.P253549994875197734

`val(ceil(A124512(n+1)/4), 2)`
-/

namespace A080256.P253549994875197734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ⌈(A124512 (n + 1) : ℚ) / 4⌉.toNat 2

end

end A080256.P253549994875197734

namespace A080256

/-- `val(ceil(A124512(n+1)/4), 2)` -/
def P253549994875197734.Spec : Prop :=
  ∀ n, (P253549994875197734.a n : ℤ) = A080256 (n + 1)

end A080256

/-! ## A080256.P10076398362158283708

`A001222(∏{e}[n+1, 2^(#+1)])`
-/

namespace A080256.P10076398362158283708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ (Nat.factorization (f1 n) p + 1))

end

end A080256.P10076398362158283708

namespace A080256

/-- `A001222(∏{e}[n+1, 2^(#+1)])` -/
def P10076398362158283708.Spec : Prop :=
  ∀ n, P10076398362158283708.a n = A080256 (n + 1)

end A080256

/-! ## A080256.P17278923734298112266

`A001222(A124508(n+1))`
-/

namespace A080256.P17278923734298112266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A124508 (n + 1)).toNat

end

end A080256.P17278923734298112266

namespace A080256

/-- `A001222(A124508(n+1))` -/
def P17278923734298112266.Spec : Prop :=
  ∀ n, P17278923734298112266.a n = A080256 (n + 1)

end A080256

/-! ## A080256.P3895782180395564162

`A318994(A181819(n+1))`
-/

namespace A080256.P3895782180395564162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318994 (A181819 (n + 1)).toNat

end

end A080256.P3895782180395564162

namespace A080256

/-- `A318994(A181819(n+1))` -/
def P3895782180395564162.Spec : Prop :=
  ∀ n, P3895782180395564162.a n = A080256 (n + 1)

end A080256

/-! ## A080256.P4250086632447863856

`A253783(A329607(n+1))`
-/

namespace A080256.P4250086632447863856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253783 (A329607 (n + 1)).toNat

end

end A080256.P4250086632447863856

namespace A080256

/-- `A253783(A329607(n+1))` -/
def P4250086632447863856.Spec : Prop :=
  ∀ n, P4250086632447863856.a n = A080256 (n + 1)

end A080256

/-! ## A080256.P17558583908736313647

`A001221(n+1)+Δ[A022559(n)]`
-/

namespace A080256.P17558583908736313647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (f1 (n + 1) - f1 n)

end

end A080256.P17558583908736313647

namespace A080256

/-- `A001221(n+1)+Δ[A022559(n)]` -/
def P17558583908736313647.Spec : Prop :=
  ∀ n, P17558583908736313647.a n = A080256 (n + 1)

end A080256

/-! ## A080256.P18332157093812403075

`A378309(n+1)+A087624(n+1)`
-/

namespace A080256.P18332157093812403075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378309 (n + 1) + A087624 (n + 1)

end

end A080256.P18332157093812403075

namespace A080256

/-- `A378309(n+1)+A087624(n+1)` -/
def P18332157093812403075.Spec : Prop :=
  ∀ n, P18332157093812403075.a n = A080256 (n + 1)

end A080256

/-! ## A080256.P16690294253411189548

`A289641(n+1)+A249767(n+1)`
-/

namespace A080256.P16690294253411189548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289641 (n + 1) + A249767 (n + 1)

end

end A080256.P16690294253411189548

namespace A080256

/-- `A289641(n+1)+A249767(n+1)` -/
def P16690294253411189548.Spec : Prop :=
  ∀ n, P16690294253411189548.a n = A080256 (n + 1)

theorem P16690294253411189548.correct : P16690294253411189548.Spec := by
  intro n
  simp only [A080256, Nat.add_sub_cancel, A080256.P16690294253411189548.a, A080256.P7120327596299936655.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A249767, A249767.P12062249745912461612.a, A289641, A289641.P3974398798159448761.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008683, A008683.P18254306604665478110.a, A059841, A059841.P7264174615531153985.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080256

/-! ## A080256.P1287717266035024245

`A008474(n+1)-A055631(n+1)`
-/

namespace A080256.P1287717266035024245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (n + 1) - A055631 (n + 1)

end

end A080256.P1287717266035024245

namespace A080256

/-- `A008474(n+1)-A055631(n+1)` -/
def P1287717266035024245.Spec : Prop :=
  ∀ n, P1287717266035024245.a n = A080256 (n + 1)

theorem P1287717266035024245.correct : P1287717266035024245.Spec := by
  intro n
  simp only [A080256, Nat.add_sub_cancel, A080256.P1287717266035024245.a, A080256.P7120327596299936655.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A008474, A008474.P119709174749842562.a, A055631, A055631.P8885936990558110793.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A059841, A059841.P7264174615531153985.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080256

/-! ## A080256.P15795939029457817723

`A000005(n+1)-A135767(n+1)`
-/

namespace A080256.P15795939029457817723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A135767 (n + 1)

end

end A080256.P15795939029457817723

namespace A080256

/-- `A000005(n+1)-A135767(n+1)` -/
def P15795939029457817723.Spec : Prop :=
  ∀ n, P15795939029457817723.a n = A080256 (n + 1)

theorem P15795939029457817723.correct : P15795939029457817723.Spec := by
  intro n
  simp only [A080256, Nat.add_sub_cancel, A080256.P15795939029457817723.a, A080256.P7120327596299936655.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A135767, A135767.P1732622784085476699.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080256

/-! ## A080256.P2321079152964791700

`A163523(n+1)-A081707(n+1)`
-/

namespace A080256.P2321079152964791700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163523 (n + 1) - A081707 (n + 1)

end

end A080256.P2321079152964791700

namespace A080256

/-- `A163523(n+1)-A081707(n+1)` -/
def P2321079152964791700.Spec : Prop :=
  ∀ n, P2321079152964791700.a n = A080256 (n + 1)

theorem P2321079152964791700.correct : P2321079152964791700.Spec := by
  intro n
  simp only [A080256, Nat.add_sub_cancel, A080256.P2321079152964791700.a, A080256.P7120327596299936655.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A081707, A081707.P11488317504414789232.a, A163523, A163523.P17500706477665394313.a, A000005, A000005.P16091521709108585461.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080256

/-! ## A080256.P6457785648082694694

`A229109(n+1)-A069345(n+1)`
-/

namespace A080256.P6457785648082694694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229109 (n + 1) - A069345 (n + 1)

end

end A080256.P6457785648082694694

namespace A080256

/-- `A229109(n+1)-A069345(n+1)` -/
def P6457785648082694694.Spec : Prop :=
  ∀ n, P6457785648082694694.a n = A080256 (n + 1)

theorem P6457785648082694694.correct : P6457785648082694694.Spec := by
  intro n
  simp only [A080256, Nat.add_sub_cancel, A080256.P6457785648082694694.a, A080256.P7120327596299936655.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A069345, A069345.P4010349656515474516.a, A229109, A229109.P7396241872602068631.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080256

/-! ## A080256.P1708582636607293256

`A255201(n+1)-A046660(n+1)`
-/

namespace A080256.P1708582636607293256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255201 (n + 1) - A046660 (n + 1)

end

end A080256.P1708582636607293256

namespace A080256

/-- `A255201(n+1)-A046660(n+1)` -/
def P1708582636607293256.Spec : Prop :=
  ∀ n, P1708582636607293256.a n = A080256 (n + 1)

theorem P1708582636607293256.correct : P1708582636607293256.Spec := by
  intro n
  simp only [A080256, Nat.add_sub_cancel, A080256.P1708582636607293256.a, A080256.P7120327596299936655.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A046660, A046660.P3614759855976580945.a, A255201, A255201.P10260826747868353202.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080256

/-! ## A080256.P10990828201038853679

`A064800(n+1)-A378993(n+1)`
-/

namespace A080256.P10990828201038853679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1) - A378993 (n + 1)

end

end A080256.P10990828201038853679

namespace A080256

/-- `A064800(n+1)-A378993(n+1)` -/
def P10990828201038853679.Spec : Prop :=
  ∀ n, P10990828201038853679.a n = A080256 (n + 1)

theorem P10990828201038853679.correct : P10990828201038853679.Spec := by
  intro n
  simp only [A080256, Nat.add_sub_cancel, A080256.P10990828201038853679.a, A080256.P7120327596299936655.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A064800, A064800.P9178262813478475092.a, A378993, A378993.P12473165963195423861.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080256

/-! ## A080256.P6039453313957198722

`A001221(n+1)+A073093(n+1)-1`
-/

namespace A080256.P6039453313957198722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A073093 (n + 1) - 1)

end

end A080256.P6039453313957198722

namespace A080256

/-- `A001221(n+1)+A073093(n+1)-1` -/
def P6039453313957198722.Spec : Prop :=
  ∀ n, P6039453313957198722.a n = A080256 (n + 1)

theorem P6039453313957198722.correct : P6039453313957198722.Spec := by
  intro n
  simp only [A080256, Nat.add_sub_cancel, A080256.P6039453313957198722.a, A080256.P7120327596299936655.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A073093, A073093.P258081957281391684.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080256

/-!
# A080257: Numbers having at least two distinct or a total of at least three prime factors.

The programs for A080257, the canonical program `A080257.P6699646768947114599` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080257 has offset 1).

The definition of A080257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080257.P1917899095952818523

`lt[2, A074206(n)]`
-/

namespace A080257.P1917899095952818523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080257.P1917899095952818523

namespace A080257

/-- `lt[2, A074206(n)]` -/
def P1917899095952818523.Spec : Prop :=
  ∀ n, (P1917899095952818523.a n : ℤ) = A080257 (n + 1)

end A080257

/-! ## A080257.P4491995551498885667

`lt[3, A077462(n)]`
-/

namespace A080257.P4491995551498885667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080257.P4491995551498885667

namespace A080257

/-- `lt[3, A077462(n)]` -/
def P4491995551498885667.Spec : Prop :=
  ∀ n, (P4491995551498885667.a n : ℤ) = A080257 (n + 1)

end A080257

/-! ## A080257.P6699646768947114599

`lt[6, A226602(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080257

/-- `lt[6, A226602(n)]` -/
def P6699646768947114599.Spec : Prop :=
  ∀ n, (P6699646768947114599.a n : ℤ) = A080257 (n + 1)

theorem P6699646768947114599.correct : P6699646768947114599.Spec := by
  intro n
  simp only [A080257, Nat.add_sub_cancel]

end A080257

/-! ## A080257.P6389320789739940086

`lt[2, A117621(n+1)]`
-/

namespace A080257.P6389320789739940086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080257.P6389320789739940086

namespace A080257

/-- `lt[2, A117621(n+1)]` -/
def P6389320789739940086.Spec : Prop :=
  ∀ n, (P6389320789739940086.a n : ℤ) = A080257 (n + 1)

end A080257

/-! ## A080257.P2067759018134616499

`lt[1, A160135(n+1)]+1`
-/

namespace A080257.P2067759018134616499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080257.P2067759018134616499

namespace A080257

/-- `lt[1, A160135(n+1)]+1` -/
def P2067759018134616499.Spec : Prop :=
  ∀ n, (P2067759018134616499.a n : ℤ) = A080257 (n + 1)

end A080257

/-! ## A080257.P8216008761656187717

`lt[3, A000005(n+1)]+1`
-/

namespace A080257.P8216008761656187717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080257.P8216008761656187717

namespace A080257

/-- `lt[3, A000005(n+1)]+1` -/
def P8216008761656187717.Spec : Prop :=
  ∀ n, (P8216008761656187717.a n : ℤ) = A080257 (n + 1)

end A080257

/-! ## A080257.P15586352598652966824

`lt[A020639(n+1)², n]+1`
-/

namespace A080257.P15586352598652966824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080257.P15586352598652966824

namespace A080257

/-- `lt[A020639(n+1)², n]+1` -/
def P15586352598652966824.Spec : Prop :=
  ∀ n, (P15586352598652966824.a n : ℤ) = A080257 (n + 1)

end A080257

/-! ## A080257.P15086252495182149999

`eq[A302048(n), A339579(n+1)]`
-/

namespace A080257.P15086252495182149999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080257.P15086252495182149999

namespace A080257

/-- `eq[A302048(n), A339579(n+1)]` -/
def P15086252495182149999.Spec : Prop :=
  ∀ n, (P15086252495182149999.a n : ℤ) = A080257 (n + 1)

end A080257

/-! ## A080257.P17185978009455343059

`∪[A226025(n+1), A020739(n)]`
-/

namespace A080257.P17185978009455343059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080257.P17185978009455343059

namespace A080257

/-- `∪[A226025(n+1), A020739(n)]` -/
def P17185978009455343059.Spec : Prop :=
  ∀ n, (P17185978009455343059.a n : ℤ) = A080257 (n + 1)

end A080257

/-! ## A080257.P4748643739690124696

`∪[A176525(n+1), A033942(n+1)]`
-/

namespace A080257.P4748643739690124696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176525 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080257.P4748643739690124696

namespace A080257

/-- `∪[A176525(n+1), A033942(n+1)]` -/
def P4748643739690124696.Spec : Prop :=
  ∀ n, (P4748643739690124696.a n : ℤ) = A080257 (n + 1)

end A080257

/-! ## A080257.P225931373186597647

`filter[A213367(n+1), A066247(#)]`
-/

namespace A080257.P225931373186597647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A080257.P225931373186597647

namespace A080257

/-- `filter[A213367(n+1), A066247(#)]` -/
def P225931373186597647.Spec : Prop :=
  ∀ n, P225931373186597647.a n = A080257 (n + 1)

end A080257

/-! ## A080257.P8831895497905407582

`filter[A213367(n+2), A005171(#)]`
-/

namespace A080257.P8831895497905407582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A080257.P8831895497905407582

namespace A080257

/-- `filter[A213367(n+2), A005171(#)]` -/
def P8831895497905407582.Spec : Prop :=
  ∀ n, P8831895497905407582.a n = A080257 (n + 1)

end A080257

/-! ## A080257.P1380580516071271715

`lt[1, A293813(n)]`
-/

namespace A080257.P1380580516071271715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080257.P1380580516071271715

namespace A080257

/-- `lt[1, A293813(n)]` -/
def P1380580516071271715.Spec : Prop :=
  ∀ n, (P1380580516071271715.a n : ℤ) = A080257 (n + 1)

end A080257

/-! ## A080257.P2285785392486510636

`lt[1, A357311(n)]`
-/

namespace A080257.P2285785392486510636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357311 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080257.P2285785392486510636

namespace A080257

/-- `lt[1, A357311(n)]` -/
def P2285785392486510636.Spec : Prop :=
  ∀ n, (P2285785392486510636.a n : ℤ) = A080257 (n + 1)

end A080257

/-! ## A080257.P6620488649394771961

`lt[2, A032741(n)]`
-/

namespace A080257.P6620488649394771961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080257.P6620488649394771961

namespace A080257

/-- `lt[2, A032741(n)]` -/
def P6620488649394771961.Spec : Prop :=
  ∀ n, (P6620488649394771961.a n : ℤ) = A080257 (n + 1)

end A080257

/-! ## A080257.P4217309511441180189

`lt[2, A072721(n)]`
-/

namespace A080257.P4217309511441180189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080257.P4217309511441180189

namespace A080257

/-- `lt[2, A072721(n)]` -/
def P4217309511441180189.Spec : Prop :=
  ∀ n, (P4217309511441180189.a n : ℤ) = A080257 (n + 1)

end A080257

/-! ## A080257.P5256809168302520465

`lt[2, A078898(n)]`
-/

namespace A080257.P5256809168302520465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080257.P5256809168302520465

namespace A080257

/-- `lt[2, A078898(n)]` -/
def P5256809168302520465.Spec : Prop :=
  ∀ n, (P5256809168302520465.a n : ℤ) = A080257 (n + 1)

end A080257

/-! ## A080257.P10490743126200039295

`lt[2, A104725(n)]`
-/

namespace A080257.P10490743126200039295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080257.P10490743126200039295

namespace A080257

/-- `lt[2, A104725(n)]` -/
def P10490743126200039295.Spec : Prop :=
  ∀ n, (P10490743126200039295.a n : ℤ) = A080257 (n + 1)

end A080257

/-! ## A080257.P13359276352383282438

`lt[2, A143862(n)]`
-/

namespace A080257.P13359276352383282438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143862 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080257.P13359276352383282438

namespace A080257

/-- `lt[2, A143862(n)]` -/
def P13359276352383282438.Spec : Prop :=
  ∀ n, (P13359276352383282438.a n : ℤ) = A080257 (n + 1)

end A080257

/-! ## A080257.P11508992808887206469

`lt[2, A211110(n)]`
-/

namespace A080257.P11508992808887206469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080257.P11508992808887206469

namespace A080257

/-- `lt[2, A211110(n)]` -/
def P11508992808887206469.Spec : Prop :=
  ∀ n, (P11508992808887206469.a n : ℤ) = A080257 (n + 1)

end A080257

/-!
# A080258: Either 4th power of a prime, or product of a prime and the square of a different prime.

The programs for A080258, the canonical program `A080258.P17237642647837230985` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080258 has offset 1).

The definition of A080258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080258.P17237642647837230985

`∪[A030514(n+1), A054753(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A080258

/-- `∪[A030514(n+1), A054753(n+1)]` -/
def P17237642647837230985.Spec : Prop :=
  ∀ n, (P17237642647837230985.a n : ℤ) = A080258 (n + 1)

theorem P17237642647837230985.correct : P17237642647837230985.Spec := by
  intro n
  simp only [A080258, Nat.add_sub_cancel]

end A080258

/-! ## A080258.P16289223934433253417

`filter[A064499(n+1), A353798(#)]`
-/

namespace A080258.P16289223934433253417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A080258.P16289223934433253417

namespace A080258

/-- `filter[A064499(n+1), A353798(#)]` -/
def P16289223934433253417.Spec : Prop :=
  ∀ n, P16289223934433253417.a n = A080258 (n + 1)

end A080258

/-! ## A080258.P7054006518590921054

`filter[A374904(n+1), A353798(#)]`
-/

namespace A080258.P7054006518590921054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A080258.P7054006518590921054

namespace A080258

/-- `filter[A374904(n+1), A353798(#)]` -/
def P7054006518590921054.Spec : Prop :=
  ∀ n, P7054006518590921054.a n = A080258 (n + 1)

end A080258

/-! ## A080258.P15878515885211505158

`filter[A376715(n+1), A353798(#)]`
-/

namespace A080258.P15878515885211505158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A080258.P15878515885211505158

namespace A080258

/-- `filter[A376715(n+1), A353798(#)]` -/
def P15878515885211505158.Spec : Prop :=
  ∀ n, P15878515885211505158.a n = A080258 (n + 1)

end A080258

/-! ## A080258.P9004088974823523245

`filter[A182852(n+1), A353798(#)]`
-/

namespace A080258.P9004088974823523245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A080258.P9004088974823523245

namespace A080258

/-- `filter[A182852(n+1), A353798(#)]` -/
def P9004088974823523245.Spec : Prop :=
  ∀ n, P9004088974823523245.a n = A080258 (n + 1)

end A080258

/-! ## A080258.P14006656101452709245

`filter[A166982(n+1), A353798(#)]`
-/

namespace A080258.P14006656101452709245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A080258.P14006656101452709245

namespace A080258

/-- `filter[A166982(n+1), A353798(#)]` -/
def P14006656101452709245.Spec : Prop :=
  ∀ n, P14006656101452709245.a n = A080258 (n + 1)

end A080258

/-! ## A080258.P1949036591040633685

`filter[A268375(n+1), A353798(#)]`
-/

namespace A080258.P1949036591040633685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A080258.P1949036591040633685

namespace A080258

/-- `filter[A268375(n+1), A353798(#)]` -/
def P1949036591040633685.Spec : Prop :=
  ∀ n, P1949036591040633685.a n = A080258 (n + 1)

end A080258

/-! ## A080258.P464925306637541123

`eq[4, A033273(n+1)]+1`
-/

namespace A080258.P464925306637541123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A080258.P464925306637541123

namespace A080258

/-- `eq[4, A033273(n+1)]+1` -/
def P464925306637541123.Spec : Prop :=
  ∀ n, (P464925306637541123.a n : ℤ) = A080258 (n + 1)

end A080258

/-! ## A080258.P5463402598343462088

`filter[A369254(n+1), A353798(#)]`
-/

namespace A080258.P5463402598343462088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A080258.P5463402598343462088

namespace A080258

/-- `filter[A369254(n+1), A353798(#)]` -/
def P5463402598343462088.Spec : Prop :=
  ∀ n, P5463402598343462088.a n = A080258 (n + 1)

end A080258

/-! ## A080258.P10883165855892372354

`filter[A265640(n+1), A353798(#)]`
-/

namespace A080258.P10883165855892372354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A080258.P10883165855892372354

namespace A080258

/-- `filter[A265640(n+1), A353798(#)]` -/
def P10883165855892372354.Spec : Prop :=
  ∀ n, P10883165855892372354.a n = A080258 (n + 1)

end A080258

/-! ## A080258.P13933979666796977659

`filter[A245303(n+1), A353798(#)]`
-/

namespace A080258.P13933979666796977659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A080258.P13933979666796977659

namespace A080258

/-- `filter[A245303(n+1), A353798(#)]` -/
def P13933979666796977659.Spec : Prop :=
  ∀ n, P13933979666796977659.a n = A080258 (n + 1)

end A080258

/-! ## A080258.P2923897808988446728

`filter[A381311(n+1), A353798(#)]`
-/

namespace A080258.P2923897808988446728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A080258.P2923897808988446728

namespace A080258

/-- `filter[A381311(n+1), A353798(#)]` -/
def P2923897808988446728.Spec : Prop :=
  ∀ n, P2923897808988446728.a n = A080258 (n + 1)

end A080258

/-! ## A080258.P15680322851203929146

`filter[A130091(n+1), A353798(#)]`
-/

namespace A080258.P15680322851203929146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A080258.P15680322851203929146

namespace A080258

/-- `filter[A130091(n+1), A353798(#)]` -/
def P15680322851203929146.Spec : Prop :=
  ∀ n, P15680322851203929146.a n = A080258 (n + 1)

end A080258

/-! ## A080258.P2933645243564315225

`filter[A162645(n+1), A353798(#)]`
-/

namespace A080258.P2933645243564315225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A080258.P2933645243564315225

namespace A080258

/-- `filter[A162645(n+1), A353798(#)]` -/
def P2933645243564315225.Spec : Prop :=
  ∀ n, P2933645243564315225.a n = A080258 (n + 1)

end A080258

/-! ## A080258.P10886794600377715305

`filter[A384519(n+1), A353798(#)]`
-/

namespace A080258.P10886794600377715305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A080258.P10886794600377715305

namespace A080258

/-- `filter[A384519(n+1), A353798(#)]` -/
def P10886794600377715305.Spec : Prop :=
  ∀ n, P10886794600377715305.a n = A080258 (n + 1)

end A080258

/-! ## A080258.P16985624298664882774

`filter[A368714(n+1), A353798(#)]`
-/

namespace A080258.P16985624298664882774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A080258.P16985624298664882774

namespace A080258

/-- `filter[A368714(n+1), A353798(#)]` -/
def P16985624298664882774.Spec : Prop :=
  ∀ n, P16985624298664882774.a n = A080258 (n + 1)

end A080258

/-! ## A080258.P2473080704378180186

`filter[A240112(n+1), A353798(#)]`
-/

namespace A080258.P2473080704378180186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A080258.P2473080704378180186

namespace A080258

/-- `filter[A240112(n+1), A353798(#)]` -/
def P2473080704378180186.Spec : Prop :=
  ∀ n, P2473080704378180186.a n = A080258 (n + 1)

end A080258

/-! ## A080258.P4712635543879672767

`filter[A072587(n+1), A353798(#)]`
-/

namespace A080258.P4712635543879672767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A080258.P4712635543879672767

namespace A080258

/-- `filter[A072587(n+1), A353798(#)]` -/
def P4712635543879672767.Spec : Prop :=
  ∀ n, P4712635543879672767.a n = A080258 (n + 1)

end A080258

/-! ## A080258.P10309299111323890887

`filter[A326111(n+1), A353798(#)]`
-/

namespace A080258.P10309299111323890887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353798 (f1 j).toNat = 1) n)

end

end A080258.P10309299111323890887

namespace A080258

/-- `filter[A326111(n+1), A353798(#)]` -/
def P10309299111323890887.Spec : Prop :=
  ∀ n, P10309299111323890887.a n = A080258 (n + 1)

end A080258

/-!
# A080259: Numbers whose squarefree kernel is not a primorial number, i.e., A007947(a(n)) is not in A002110.

The programs for A080259, the canonical program `A080259.P15760386087156708994` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080259 has offset 1).

The definition of A080259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080259.P10474870784226823394

`lt[1, A079068(n+1)]+1`
-/

namespace A080259.P10474870784226823394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080259.P10474870784226823394

namespace A080259

/-- `lt[1, A079068(n+1)]+1` -/
def P10474870784226823394.Spec : Prop :=
  ∀ n, (P10474870784226823394.a n : ℤ) = A080259 (n + 1)

end A080259

/-! ## A080259.P15760386087156708994

`lt[A341629(n+1), 1]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A080259

/-- `lt[A341629(n+1), 1]+1` -/
def P15760386087156708994.Spec : Prop :=
  ∀ n, (P15760386087156708994.a n : ℤ) = A080259 (n + 1)

theorem P15760386087156708994.correct : P15760386087156708994.Spec := by
  intro n
  simp only [A080259, Nat.add_sub_cancel]

end A080259

/-! ## A080259.P4111572570061116726

`∪[A073492(n+1), A144396(n+1)]`
-/

namespace A080259.P4111572570061116726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080259.P4111572570061116726

namespace A080259

/-- `∪[A073492(n+1), A144396(n+1)]` -/
def P4111572570061116726.Spec : Prop :=
  ∀ n, (P4111572570061116726.a n : ℤ) = A080259 (n + 1)

end A080259

/-! ## A080259.P6351508095036862851

`lt[A001221(n+1), A061395(n+1)]+1`
-/

namespace A080259.P6351508095036862851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A080259.P6351508095036862851

namespace A080259

/-- `lt[A001221(n+1), A061395(n+1)]+1` -/
def P6351508095036862851.Spec : Prop :=
  ∀ n, (P6351508095036862851.a n : ℤ) = A080259 (n + 1)

end A080259

/-! ## A080259.P1705679222879754601

`lt[1, A286469(n+1)]+1`
-/

namespace A080259.P1705679222879754601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286469 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080259.P1705679222879754601

namespace A080259

/-- `lt[1, A286469(n+1)]+1` -/
def P1705679222879754601.Spec : Prop :=
  ∀ n, (P1705679222879754601.a n : ℤ) = A080259 (n + 1)

end A080259

/-! ## A080259.P4730303391618181258

`lt[A297155(n+1), A252735(n+1)]+1`
-/

namespace A080259.P4730303391618181258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A080259.P4730303391618181258

namespace A080259

/-- `lt[A297155(n+1), A252735(n+1)]+1` -/
def P4730303391618181258.Spec : Prop :=
  ∀ n, (P4730303391618181258.a n : ℤ) = A080259 (n + 1)

end A080259

/-! ## A080259.P1775539009874168430

`∪[A016945(n), A384011(n+1)]`
-/

namespace A080259.P1775539009874168430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080259.P1775539009874168430

namespace A080259

/-- `∪[A016945(n), A384011(n+1)]` -/
def P1775539009874168430.Spec : Prop :=
  ∀ n, (P1775539009874168430.a n : ℤ) = A080259 (n + 1)

end A080259

/-! ## A080259.P5520494561281127372

`∪[A020742(n), A384011(n+1)]`
-/

namespace A080259.P5520494561281127372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080259.P5520494561281127372

namespace A080259

/-- `∪[A020742(n), A384011(n+1)]` -/
def P5520494561281127372.Spec : Prop :=
  ∀ n, (P5520494561281127372.a n : ℤ) = A080259 (n + 1)

end A080259

/-!
# A080260: a(n)=1+(1/12)(n*(n+1)*(n+3)*(4-n)).

The programs for A080260, the canonical program `A080260.P15187244394388488546` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080260 has offset 0).

The definition of A080260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080260.P15187244394388488546

`1+n*(n+1)*(n+3)*(4-n)/12`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080260

/-- `1+n*(n+1)*(n+3)*(4-n)/12` -/
def P15187244394388488546.Spec : Prop :=
  ∀ n, P15187244394388488546.a n = (A080260 n : ℚ)

end A080260

/-! ## A080260.P8929685905807280945

`1+1/12*n*(n+1)*(n+3)*(4-n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080260.P8929685905807280945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (1 : ℚ) / 12 * ((n * (n + 1) * (n + 3) : ℤ) * (4 - (n : ℤ)) : ℚ)

end

end A080260.P8929685905807280945

namespace A080260

/-- `1+1/12*n*(n+1)*(n+3)*(4-n)` -/
def P8929685905807280945.Spec : Prop :=
  ∀ n, P8929685905807280945.a n = (A080260 n : ℚ)

end A080260

/-! ## A080260.P17638610334820680759

`floor(∑[∑[∑[a(n-1)-2]]]-n)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A080260.P17638610334820680759
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f3 =>
  f3 (n - 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A080260.P17638610334820680759

namespace A080260

/-- `floor(∑[∑[∑[a(n-1)-2]]]-n)` -/
def P17638610334820680759.Spec : Prop :=
  ∀ n, P17638610334820680759.a n = A080260 n

end A080260

/-! ## A080260.P1122983751536402748

`∑[∑[A140139(n+1)-n²]]`
-/

namespace A080260.P1122983751536402748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1) - (n ^ 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080260.P1122983751536402748

namespace A080260

/-- `∑[∑[A140139(n+1)-n²]]` -/
def P1122983751536402748.Spec : Prop :=
  ∀ n, P1122983751536402748.a n = A080260 n

end A080260

/-! ## A080260.P18041926764964897251

`∑[∑[1-A103505(n)+n]+1]`
-/

namespace A080260.P18041926764964897251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A103505 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080260.P18041926764964897251

namespace A080260

/-- `∑[∑[1-A103505(n)+n]+1]` -/
def P18041926764964897251.Spec : Prop :=
  ∀ n, P18041926764964897251.a n = A080260 n

end A080260

/-! ## A080260.P8801509063851802216

`∑[A003600(n)-∑[3*C(n, 2)]]`
-/

namespace A080260.P8801509063851802216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080260.P8801509063851802216

namespace A080260

/-- `∑[A003600(n)-∑[3*C(n, 2)]]` -/
def P8801509063851802216.Spec : Prop :=
  ∀ n, P8801509063851802216.a n = A080260 n

end A080260

/-! ## A080260.P4667286029662490723

`∑[n+1-∑[n*A289207(n)]]`
-/

namespace A080260.P4667286029662490723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A289207 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080260.P4667286029662490723

namespace A080260

/-- `∑[n+1-∑[n*A289207(n)]]` -/
def P4667286029662490723.Spec : Prop :=
  ∀ n, P4667286029662490723.a n = A080260 n

end A080260

/-! ## A080260.P648707325050716912

`∑[floor((n+2)/acot(n))-A000330(n)]`
-/

namespace A080260.P648707325050716912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋ - A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080260.P648707325050716912

namespace A080260

/-- `∑[floor((n+2)/acot(n))-A000330(n)]` -/
def P648707325050716912.Spec : Prop :=
  ∀ n, P648707325050716912.a n = A080260 n

end A080260

/-! ## A080260.P197470644894459531

`∑[A027379(n)-A006527(n)]`
-/

namespace A080260.P197470644894459531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n - A006527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080260.P197470644894459531

namespace A080260

/-- `∑[A027379(n)-A006527(n)]` -/
def P197470644894459531.Spec : Prop :=
  ∀ n, P197470644894459531.a n = A080260 n

end A080260

/-! ## A080260.P4787392110095595432

`∑[A179297(n+1)-A057427(n)]`
-/

namespace A080260.P4787392110095595432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179297 (n + 1) - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080260.P4787392110095595432

namespace A080260

/-- `∑[A179297(n+1)-A057427(n)]` -/
def P4787392110095595432.Spec : Prop :=
  ∀ n, P4787392110095595432.a n = A080260 n

end A080260

/-! ## A080260.P2805980594202113749

`∑[A000007(n)-(∑[A067998(n)]-n)]`
-/

namespace A080260.P2805980594202113749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080260.P2805980594202113749

namespace A080260

/-- `∑[A000007(n)-(∑[A067998(n)]-n)]` -/
def P2805980594202113749.Spec : Prop :=
  ∀ n, P2805980594202113749.a n = A080260 n

end A080260

/-! ## A080260.P1370700081978914381

`∑[A179297(n+1)-(1-A000007(n))]`
-/

namespace A080260.P1370700081978914381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179297 (n + 1) - (1 - A000007 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080260.P1370700081978914381

namespace A080260

/-- `∑[A179297(n+1)-(1-A000007(n))]` -/
def P1370700081978914381.Spec : Prop :=
  ∀ n, P1370700081978914381.a n = A080260 n

end A080260

/-! ## A080260.P3340966689735962115

`∑[A008619(A004275(n))-∑[n*(n-2)]]`
-/

namespace A080260.P3340966689735962115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004275 n).toNat - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080260.P3340966689735962115

namespace A080260

/-- `∑[A008619(A004275(n))-∑[n*(n-2)]]` -/
def P3340966689735962115.Spec : Prop :=
  ∀ n, P3340966689735962115.a n = A080260 n

end A080260

/-!
# A080261: Simple involution of natural numbers: complement [binary_width(n)/2] least significant bits in the binary expansion of n.

The programs for A080261, the canonical program `A080261.P12885710306341528978` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080261 has offset 0).

The definition of A080261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080261.P14007463840852347960

`xor(n, A292370(2^ceil(log2(n+1))))`
-/

namespace A080261.P14007463840852347960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A292370 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat)

end

end A080261.P14007463840852347960

namespace A080261

/-- `xor(n, A292370(2^ceil(log2(n+1))))` -/
def P14007463840852347960.Spec : Prop :=
  ∀ n, P14007463840852347960.a n = A080261 n

end A080261

/-! ## A080261.P12206691281516559710

`xor(n, A092323(A103128(n+1)))`
-/

namespace A080261.P12206691281516559710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A092323 (A103128 (n + 1)).toNat)

end

end A080261.P12206691281516559710

namespace A080261

/-- `xor(n, A092323(A103128(n+1)))` -/
def P12206691281516559710.Spec : Prop :=
  ∀ n, P12206691281516559710.a n = A080261 n

end A080261

/-! ## A080261.P12885710306341528978

`xor(n, A003817(A000196(A004526(n))))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080261

/-- `xor(n, A003817(A000196(A004526(n))))` -/
def P12885710306341528978.Spec : Prop :=
  ∀ n, P12885710306341528978.a n = A080261 n

theorem P12885710306341528978.correct : P12885710306341528978.Spec := by
  intro n
  simp only [A080261]

end A080261

/-! ## A080261.P13963479234026630894

`xor(n, A057918(2^ceil(log2(n+1))))`
-/

namespace A080261.P13963479234026630894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A057918 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat)

end

end A080261.P13963479234026630894

namespace A080261

/-- `xor(n, A057918(2^ceil(log2(n+1))))` -/
def P13963479234026630894.Spec : Prop :=
  ∀ n, P13963479234026630894.a n = A080261 n

end A080261

/-! ## A080261.P2580474263735615674

`xor(n, A056966(A003817(n)))`
-/

namespace A080261.P2580474263735615674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A056966 (A003817 n).toNat)

end

end A080261.P2580474263735615674

namespace A080261

/-- `xor(n, A056966(A003817(n)))` -/
def P2580474263735615674.Spec : Prop :=
  ∀ n, P2580474263735615674.a n = A080261 n

end A080261

/-! ## A080261.P18324229001601471081

`xor(n, A058305(A062383(n)))`
-/

namespace A080261.P18324229001601471081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A058305 (A062383 n).toNat)

end

end A080261.P18324229001601471081

namespace A080261

/-- `xor(n, A058305(A062383(n)))` -/
def P18324229001601471081.Spec : Prop :=
  ∀ n, P18324229001601471081.a n = A080261 n

end A080261

/-! ## A080261.P15514206379687613886

`xor(n, A059906(∑[A048298(n)]))`
-/

namespace A080261.P15514206379687613886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A059906 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A080261.P15514206379687613886

namespace A080261

/-- `xor(n, A059906(∑[A048298(n)]))` -/
def P15514206379687613886.Spec : Prop :=
  ∀ n, P15514206379687613886.a n = A080261 n

end A080261

/-! ## A080261.P15867670216433178463

`xor(n, A327193(∑[A048298(n)]))`
-/

namespace A080261.P15867670216433178463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A327193 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A080261.P15867670216433178463

namespace A080261

/-- `xor(n, A327193(∑[A048298(n)]))` -/
def P15867670216433178463.Spec : Prop :=
  ∀ n, P15867670216433178463.a n = A080261 n

end A080261

/-! ## A080261.P7424165467617349432

`xor(n, A066955(A062383(2*n)))`
-/

namespace A080261.P7424165467617349432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A066955 (A062383 (2 * n)).toNat)

end

end A080261.P7424165467617349432

namespace A080261

/-- `xor(n, A066955(A062383(2*n)))` -/
def P7424165467617349432.Spec : Prop :=
  ∀ n, P7424165467617349432.a n = A080261 n

end A080261

/-! ## A080261.P14103255168564752980

`xor(n, A042951(A130149(n)))`
-/

namespace A080261.P14103255168564752980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A042951 (A130149 n).toNat)

end

end A080261.P14103255168564752980

namespace A080261

/-- `xor(n, A042951(A130149(n)))` -/
def P14103255168564752980.Spec : Prop :=
  ∀ n, P14103255168564752980.a n = A080261 n

end A080261

/-!
# A080262: Cunningham numbers: of the form a^b +- 1, where a, b >= 2.

The programs for A080262, there is no canonical definition to state claims against.
-/

/-! ## A080262.P10453225010113919126

`∪[A045542(n+1), A216765(n+1)]`
-/

namespace A080262.P10453225010113919126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080262.P10453225010113919126

/-! ## A080262.P11092220344819162342

`∪[∑[A053289(n+1)], A216765(n+1)]`
-/

namespace A080262.P11092220344819162342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053289 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A080262.P11092220344819162342

/-! ## A080262.P8887642280973000968

`∪[∑[A076412(n+1)], A216765(n+1)]`
-/

namespace A080262.P8887642280973000968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A080262.P8887642280973000968

/-! ## A080262.P3557134504700182903

`∪[A216765(n+1), abs(A157985(n+2))-1]`
-/

namespace A080262.P3557134504700182903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 2)| - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080262.P3557134504700182903

/-! ## A080262.P14269539474000288172

`∪[Δ[A076408(n+1)]-1, A216765(n+1)]`
-/

namespace A080262.P14269539474000288172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076408 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A080262.P14269539474000288172

/-! ## A080262.P17068569868956377893

`∪[lt[1, A295924(n+1)], A216765(n+1)]`
-/

namespace A080262.P17068569868956377893
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295924 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f4 j = (x : ℤ)) n

end

end A080262.P17068569868956377893

/-!
# A080265: A014486-index of the stunted binomial-mod-2 zigzag trees. See A080263.

The programs for A080265, there is no canonical definition to state claims against.
-/

/-! ## A080265.P4523949327722564254

`A080266(n)+A080270(n)-A080271(n)`
-/

namespace A080265.P4523949327722564254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080266 n + (A080270 n - A080271 n)

end

end A080265.P4523949327722564254

/-!
# A080266: a(n) = A080301(A080263(n)).

The programs for A080266, there is no canonical definition to state claims against.
-/

/-! ## A080266.P11541096745133645245

`A080265(n)+A080271(n)-A080270(n)`
-/

namespace A080266.P11541096745133645245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080265 n + (A080271 n - A080270 n)

end

end A080266.P11541096745133645245

/-!
# A080267: a(n) = Sum_{d divides n} d*2^(n-n/d).

The programs for A080267, the canonical program `A080267.P13654059577511968325` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080267 has offset 1).

The definition of A080267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080267.P13654059577511968325

`∑{d}[n+1, A001787(n+1)/A001787(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080267

/-- `∑{d}[n+1, A001787(n+1)/A001787(#)]` -/
def P13654059577511968325.Spec : Prop :=
  ∀ n, P13654059577511968325.a n = (A080267 (n + 1) : ℚ)

end A080267

/-! ## A080267.P7409289454450938288

`∑{d}[n+1, A036289(n+1)/A036289(#)]`
-/

namespace A080267.P7409289454450938288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A036289 (n + 1) : ℚ) / (A036289 d : ℚ)

end

end A080267.P7409289454450938288

namespace A080267

/-- `∑{d}[n+1, A036289(n+1)/A036289(#)]` -/
def P7409289454450938288.Spec : Prop :=
  ∀ n, P7409289454450938288.a n = (A080267 (n + 1) : ℚ)

end A080267

/-! ## A080267.P9815593617984750992

`∑{d}[n+1, A134401(n+1)/A134401(#)]`
-/

namespace A080267.P9815593617984750992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A134401 (n + 1) : ℚ) / (A134401 d : ℚ)

end

end A080267.P9815593617984750992

namespace A080267

/-- `∑{d}[n+1, A134401(n+1)/A134401(#)]` -/
def P9815593617984750992.Spec : Prop :=
  ∀ n, P9815593617984750992.a n = (A080267 (n + 1) : ℚ)

end A080267

/-! ## A080267.P9684610637145460319

`∑{d}[n+1, A167667(n+1)/A167667(#)]`
-/

namespace A080267.P9684610637145460319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A167667 (n + 1) : ℚ) / (A167667 d : ℚ)

end

end A080267.P9684610637145460319

namespace A080267

/-- `∑{d}[n+1, A167667(n+1)/A167667(#)]` -/
def P9684610637145460319.Spec : Prop :=
  ∀ n, P9684610637145460319.a n = (A080267 (n + 1) : ℚ)

end A080267

/-!
# A080270: Positions of A080268 in A014486.

The programs for A080270, there is no canonical definition to state claims against.
-/

/-! ## A080270.P8677130712602604338

`A080265(n)+A080271(n)-A080266(n)`
-/

namespace A080270.P8677130712602604338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080265 n + (A080271 n - A080266 n)

end

end A080270.P8677130712602604338

/-!
# A080271: a(n) = A080301(A080268(n)).

The programs for A080271, there is no canonical definition to state claims against.
-/

/-! ## A080271.P10254176830198773906

`A080266(n)+A080270(n)-A080265(n)`
-/

namespace A080271.P10254176830198773906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080266 n + (A080270 n - A080265 n)

end

end A080271.P10254176830198773906

/-!
# A080272: Orbit size of each tree A080263(n) under Donaghey's "Map M" Catalan automorphism.

The programs for A080272, there is no canonical definition to state claims against.
-/

/-! ## A080272.P15826755064441577829

`A080302(n+1)*A110591(n)`
-/

namespace A080272.P15826755064441577829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080302 (n + 1) * A110591 n

end

end A080272.P15826755064441577829

/-! ## A080272.P5408916892123683708

`lcm(A000196(n)!, A080302(n+1))`
-/

namespace A080272.P5408916892123683708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A000196 n).toNat : ℤ) (A080302 (n + 1))

end

end A080272.P5408916892123683708

/-! ## A080272.P12690744396350295038

`Δ[A068670(n)]*A080302(n+1)`
-/

namespace A080272.P12690744396350295038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A080302 (n + 1)

end

end A080272.P12690744396350295038

/-! ## A080272.P17354878149595838385

`A080302(n+1)*A110592(n+1)`
-/

namespace A080272.P17354878149595838385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080302 (n + 1) * A110592 (n + 1)

end

end A080272.P17354878149595838385

/-! ## A080272.P6856904392190549912

`A080292(n+1)/3*Δ[A068670(n)]`
-/

namespace A080272.P6856904392190549912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068670 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080292 (n + 1) : ℚ) / 3 * (f1 (n + 1) - f1 n : ℚ)

end

end A080272.P6856904392190549912

/-!
# A080273: Orbit size of each tree A080263(n) under Meeussen's bf<->df map on binary trees.

The programs for A080273, there is no canonical definition to state claims against.
-/

/-! ## A080273.P15814527056686136526

`A057542(record[abs(or(2, n-1))]+n)`
-/

namespace A080273.P15814527056686136526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 2 ((n : ℤ) - 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057542 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)).toNat

end

end A080273.P15814527056686136526

/-!
# A080275: a(n)=(-1)^n(1 - (1/12)n(n + 1)(12 - n + n^2)).

The programs for A080275, the canonical program `A080275.P12646920223701949968` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080275 has offset 0).

The definition of A080275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080275.P12646920223701949968

`(-1)^n*(1-1/12*n*(n+1)*(12-n+n²))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080275

/-- `(-1)^n*(1-1/12*n*(n+1)*(12-n+n²))` -/
def P12646920223701949968.Spec : Prop :=
  ∀ n, P12646920223701949968.a n = (A080275 n : ℚ)

end A080275

/-! ## A080275.P6246527883194932780

`(2-A136396(n))/A033999(n)`
-/

namespace A080275.P6246527883194932780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - A136396 n : ℚ) / (A033999 n : ℚ)

end

end A080275.P6246527883194932780

namespace A080275

/-- `(2-A136396(n))/A033999(n)` -/
def P6246527883194932780.Spec : Prop :=
  ∀ n, P6246527883194932780.a n = (A080275 n : ℚ)

end A080275

/-! ## A080275.P4608440165449203751

`xor(2-A136396(n), -A010673(n))`
-/

namespace A080275.P4608440165449203751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 - A136396 n) (-A010673 n)

end

end A080275.P4608440165449203751

namespace A080275

/-- `xor(2-A136396(n), -A010673(n))` -/
def P4608440165449203751.Spec : Prop :=
  ∀ n, P4608440165449203751.a n = A080275 n

end A080275

/-! ## A080275.P18045071024546031508

`(2-A136396(n))/A209615(A120880(n))`
-/

namespace A080275.P18045071024546031508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - A136396 n : ℚ) / (A209615 (A120880 n).toNat : ℚ)

end

end A080275.P18045071024546031508

namespace A080275

/-- `(2-A136396(n))/A209615(A120880(n))` -/
def P18045071024546031508.Spec : Prop :=
  ∀ n, P18045071024546031508.a n = (A080275 n : ℚ)

end A080275

/-!
# A080276: Variation on Connell sequence (A001614). In this one, a(1)=1, terms a(n) onwards are generated in "blocks" as the next a(n-1) odd numbers > a(n-1) if the previous block ends with a(n-1) even and the next a(n-1) even numbers > a(n-1) if the previous block ends with a(n-1) odd.

The programs for A080276, the canonical program `A080276.P12338812403715459248` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080276 has offset 1).

The definition of A080276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080276.P12338812403715459248

`comp[comp[∑[ceil(3^n/6)]]+n]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080276

/-- `comp[comp[∑[ceil(3^n/6)]]+n]` -/
def P12338812403715459248.Spec : Prop :=
  ∀ n, (P12338812403715459248.a n : ℤ) = A080276 (n + 1)

theorem P12338812403715459248.correct : P12338812403715459248.Spec := by
  intro n
  simp only [A080276, Nat.add_sub_cancel]

end A080276

/-! ## A080276.P3458191071330297340

`∑[char[comp[3*a(n-1)-n]]]+n` with `a(0)=1`
-/

namespace A080276.P3458191071330297340
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  3 * f3 (n - 1) - (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A080276.P3458191071330297340

namespace A080276

/-- `∑[char[comp[3*a(n-1)-n]]]+n` -/
def P3458191071330297340.Spec : Prop :=
  ∀ n, (P3458191071330297340.a n : ℤ) = A080276 (n + 1)

end A080276

/-! ## A080276.P4081305126802774128

`∑[1-char[3*a(n-1)-n]]+n` with `a(0)=1`
-/

namespace A080276.P4081305126802774128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  3 * f2 (n - 1) - (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A080276.P4081305126802774128

namespace A080276

/-- `∑[1-char[3*a(n-1)-n]]+n` -/
def P4081305126802774128.Spec : Prop :=
  ∀ n, P4081305126802774128.a n = A080276 (n + 1)

end A080276

/-! ## A080276.P16803022287094482015

`Δ[n²]-∑[char[A164039(n)]]`
-/

namespace A080276.P16803022287094482015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164039 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A080276.P16803022287094482015

namespace A080276

/-- `Δ[n²]-∑[char[A164039(n)]]` -/
def P16803022287094482015.Spec : Prop :=
  ∀ n, P16803022287094482015.a n = A080276 (n + 1)

end A080276

/-! ## A080276.P2465426956997120039

`lt[n, A076039(n+1)]+1`
-/

namespace A080276.P2465426956997120039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076039 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080276.P2465426956997120039

namespace A080276

/-- `lt[n, A076039(n+1)]+1` -/
def P2465426956997120039.Spec : Prop :=
  ∀ n, (P2465426956997120039.a n : ℤ) = A080276 (n + 1)

end A080276

/-! ## A080276.P6550085061743988053

`lt[n, A085059(n+1)]+1`
-/

namespace A080276.P6550085061743988053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A080276.P6550085061743988053

namespace A080276

/-- `lt[n, A085059(n+1)]+1` -/
def P6550085061743988053.Spec : Prop :=
  ∀ n, (P6550085061743988053.a n : ℤ) = A080276 (n + 1)

end A080276

/-! ## A080276.P6031415566030616809

`record[n+2-A046702(n+2)]`
-/

namespace A080276.P6031415566030616809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A046702 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080276.P6031415566030616809

namespace A080276

/-- `record[n+2-A046702(n+2)]` -/
def P6031415566030616809.Spec : Prop :=
  ∀ n, P6031415566030616809.a n = A080276 (n + 1)

end A080276

/-! ## A080276.P4365188726673100088

`record[A134023(n)+floor(n/3)]`
-/

namespace A080276.P4365188726673100088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134023 n + ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080276.P4365188726673100088

namespace A080276

/-- `record[A134023(n)+floor(n/3)]` -/
def P4365188726673100088.Spec : Prop :=
  ∀ n, P4365188726673100088.a n = A080276 (n + 1)

end A080276

/-! ## A080276.P3899082477207716906

`ceil(record[A006166(xor(1, n))]/2)`
-/

namespace A080276.P3899082477207716906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006166 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌉

end

end A080276.P3899082477207716906

namespace A080276

/-- `ceil(record[A006166(xor(1, n))]/2)` -/
def P3899082477207716906.Spec : Prop :=
  ∀ n, P3899082477207716906.a n = A080276 (n + 1)

end A080276

/-! ## A080276.P2067427374487824616

`record[or(1, n)-A167878(n)/2]`
-/

namespace A080276.P2067427374487824616
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℚ) - (A167878 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080276.P2067427374487824616

namespace A080276

/-- `record[or(1, n)-A167878(n)/2]` -/
def P2067427374487824616.Spec : Prop :=
  ∀ n, P2067427374487824616.a n = (A080276 (n + 1) : ℚ)

end A080276

/-!
# A080277: Partial sums of A038712.

The programs for A080277, the canonical program `A080277.P16328719892052367531` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080277 has offset 1).

The definition of A080277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080277.P16328719892052367531

`n+1+2*a(floor((n+1)/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080277

/-- `n+1+2*a(floor((n+1)/2)-1)` -/
def P16328719892052367531.Spec : Prop :=
  ∀ n, (P16328719892052367531.a n : ℤ) = A080277 (n + 1)

theorem P16328719892052367531.correct : P16328719892052367531.Spec := by
  intro n
  simp only [A080277, Nat.add_sub_cancel]

end A080277

/-! ## A080277.P15786972826639748655

`A136013(2*(n+1))`
-/

namespace A080277.P15786972826639748655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136013 (2 * (n + 1))

end

end A080277.P15786972826639748655

namespace A080277

/-- `A136013(2*(n+1))` -/
def P15786972826639748655.Spec : Prop :=
  ∀ n, P15786972826639748655.a n = A080277 (n + 1)

end A080277

/-! ## A080277.P16624644172060953647

`∑[xor(n, n+1)]`
-/

namespace A080277.P16624644172060953647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080277.P16624644172060953647

namespace A080277

/-- `∑[xor(n, n+1)]` -/
def P16624644172060953647.Spec : Prop :=
  ∀ n, (P16624644172060953647.a n : ℤ) = A080277 (n + 1)

end A080277

/-! ## A080277.P7902712748817295979

`∑[∑{d}[2^val(n+1, 2), #]]`
-/

namespace A080277.P7902712748817295979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080277.P7902712748817295979

namespace A080277

/-- `∑[∑{d}[2^val(n+1, 2), #]]` -/
def P7902712748817295979.Spec : Prop :=
  ∀ n, (P7902712748817295979.a n : ℤ) = A080277 (n + 1)

end A080277

/-! ## A080277.P10932328773370822242

`∑[∑{d}[or(n, n+1)-n, #]]`
-/

namespace A080277.P10932328773370822242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080277.P10932328773370822242

namespace A080277

/-- `∑[∑{d}[or(n, n+1)-n, #]]` -/
def P10932328773370822242.Spec : Prop :=
  ∀ n, (P10932328773370822242.a n : ℤ) = A080277 (n + 1)

end A080277

/-! ## A080277.P7688595170972243506

`a(n-1)+xor(n, n+1)` with `a(0)=1`
-/

namespace A080277.P7688595170972243506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.xor n (n + 1)

end

end A080277.P7688595170972243506

namespace A080277

/-- `a(n-1)+xor(n, n+1)` -/
def P7688595170972243506.Spec : Prop :=
  ∀ n, (P7688595170972243506.a n : ℤ) = A080277 (n + 1)

end A080277

/-! ## A080277.P4843238874957878440

`∑[∑{d}[and(n+1, -(n+1)), #]]`
-/

namespace A080277.P4843238874957878440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080277.P4843238874957878440

namespace A080277

/-- `∑[∑{d}[and(n+1, -(n+1)), #]]` -/
def P4843238874957878440.Spec : Prop :=
  ∀ n, (P4843238874957878440.a n : ℤ) = A080277 (n + 1)

end A080277

/-! ## A080277.P16222738649000557373

`-∑[-xor(n, 2*n-(n-1))]`
-/

namespace A080277.P16222738649000557373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) ((2 * n : ℤ) - ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080277.P16222738649000557373

namespace A080277

/-- `-∑[-xor(n, 2*n-(n-1))]` -/
def P16222738649000557373.Spec : Prop :=
  ∀ n, P16222738649000557373.a n = A080277 (n + 1)

end A080277

/-! ## A080277.P1312557489819345442

`∑[or(n, n+1)-and(n, n+1)]`
-/

namespace A080277.P1312557489819345442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (n + 1) : ℤ) - (Nat.land n (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080277.P1312557489819345442

namespace A080277

/-- `∑[or(n, n+1)-and(n, n+1)]` -/
def P1312557489819345442.Spec : Prop :=
  ∀ n, P1312557489819345442.a n = A080277 (n + 1)

end A080277

/-! ## A080277.P8437163330363902184

`∑[∑{d}[n+1-and(n, n+1), #]]`
-/

namespace A080277.P8437163330363902184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080277.P8437163330363902184

namespace A080277

/-- `∑[∑{d}[n+1-and(n, n+1), #]]` -/
def P8437163330363902184.Spec : Prop :=
  ∀ n, (P8437163330363902184.a n : ℤ) = A080277 (n + 1)

end A080277

/-! ## A080277.P10352352686893175173

`∑[and(2*n+1, -(2*n+3))]`
-/

namespace A080277.P10352352686893175173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (-(2 * n + 3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080277.P10352352686893175173

namespace A080277

/-- `∑[and(2*n+1, -(2*n+3))]` -/
def P10352352686893175173.Spec : Prop :=
  ∀ n, P10352352686893175173.a n = A080277 (n + 1)

end A080277

/-! ## A080277.P12409187055491451002

`(n+1)²-∑[2*and(n, n+1)]`
-/

namespace A080277.P12409187055491451002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A080277.P12409187055491451002

namespace A080277

/-- `(n+1)²-∑[2*and(n, n+1)]` -/
def P12409187055491451002.Spec : Prop :=
  ∀ n, P12409187055491451002.a n = A080277 (n + 1)

end A080277

/-! ## A080277.P17264242343986516268

`∑[2*n+1-2*and(n, n+1)]`
-/

namespace A080277.P17264242343986516268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (2 * Nat.land n (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080277.P17264242343986516268

namespace A080277

/-- `∑[2*n+1-2*and(n, n+1)]` -/
def P17264242343986516268.Spec : Prop :=
  ∀ n, P17264242343986516268.a n = A080277 (n + 1)

end A080277

/-! ## A080277.P6550725743344170693

`∑[2*or(n, n+1)-(2*n+1)]`
-/

namespace A080277.P6550725743344170693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor n (n + 1) : ℤ) - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080277.P6550725743344170693

namespace A080277

/-- `∑[2*or(n, n+1)-(2*n+1)]` -/
def P6550725743344170693.Spec : Prop :=
  ∀ n, P6550725743344170693.a n = A080277 (n + 1)

end A080277

/-! ## A080277.P3825930714151094064

`∑[-or(2*(n+1), -(2*n+1))]`
-/

namespace A080277.P3825930714151094064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (2 * (n + 1) : ℤ) (-(2 * n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080277.P3825930714151094064

namespace A080277

/-- `∑[-or(2*(n+1), -(2*n+1))]` -/
def P3825930714151094064.Spec : Prop :=
  ∀ n, P3825930714151094064.a n = A080277 (n + 1)

end A080277

/-! ## A080277.P2713912555326337508

`∑[A038712(n+1)]`
-/

namespace A080277.P2713912555326337508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080277.P2713912555326337508

namespace A080277

/-- `∑[A038712(n+1)]` -/
def P2713912555326337508.Spec : Prop :=
  ∀ n, P2713912555326337508.a n = A080277 (n + 1)

end A080277

/-! ## A080277.P5328197826203773545

`∑[sqrt(A059152(n))-1]`
-/

namespace A080277.P5328197826203773545
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059152 n : ℝ) - 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080277.P5328197826203773545

namespace A080277

/-- `∑[sqrt(A059152(n))-1]` -/
def P5328197826203773545.Spec : Prop :=
  ∀ n, P5328197826203773545.a n = (A080277 (n + 1) : ℝ)

end A080277

/-! ## A080277.P13799834750277650628

`∑[A171977(n+1)-1]`
-/

namespace A080277.P13799834750277650628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080277.P13799834750277650628

namespace A080277

/-- `∑[A171977(n+1)-1]` -/
def P13799834750277650628.Spec : Prop :=
  ∀ n, P13799834750277650628.a n = A080277 (n + 1)

end A080277

/-! ## A080277.P14868625944518591352

`∑[A100892(n+1)/2]`
-/

namespace A080277.P14868625944518591352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100892 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080277.P14868625944518591352

namespace A080277

/-- `∑[A100892(n+1)/2]` -/
def P14868625944518591352.Spec : Prop :=
  ∀ n, P14868625944518591352.a n = (A080277 (n + 1) : ℚ)

end A080277

/-! ## A080277.P15036921927334962353

`A326300(n+1)-(n+1)`
-/

namespace A080277.P15036921927334962353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326300 (n + 1) - (n + 1 : ℤ)

end

end A080277.P15036921927334962353

namespace A080277

/-- `A326300(n+1)-(n+1)` -/
def P15036921927334962353.Spec : Prop :=
  ∀ n, P15036921927334962353.a n = A080277 (n + 1)

end A080277

/-!
# A080278: a(n) = (3^(v_3(n) + 1) - 1)/2, where v_3(n) = highest power of 3 dividing n = A007949(n).

The programs for A080278, the canonical program `A080278.P16077055743499868279` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080278 has offset 1).

The definition of A080278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080278.P8462925599748005126

`(3^(val(n+1, 3)+1)-1)/2`
-/

namespace A080278.P8462925599748005126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (SequenceMachineLib.valuation (n + 1) 3 + 1) : ℤ) - 1 : ℚ) / 2

end

end A080278.P8462925599748005126

namespace A080278

/-- `(3^(val(n+1, 3)+1)-1)/2` -/
def P8462925599748005126.Spec : Prop :=
  ∀ n, P8462925599748005126.a n = (A080278 (n + 1) : ℚ)

end A080278

/-! ## A080278.P16077055743499868279

`(3^(A007949(n+1)+1)-1)/2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080278

/-- `(3^(A007949(n+1)+1)-1)/2` -/
def P16077055743499868279.Spec : Prop :=
  ∀ n, P16077055743499868279.a n = (A080278 (n + 1) : ℚ)

end A080278

/-! ## A080278.P14086965575130786645

`A000203(n+1)/(A000203(3*(n+1))-3*A000203(n+1))`
-/

namespace A080278.P14086965575130786645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A000203 (3 * (n + 1)) - 3 * A000203 (n + 1) : ℚ)

end

end A080278.P14086965575130786645

namespace A080278

/-- `A000203(n+1)/(A000203(3*(n+1))-3*A000203(n+1))` -/
def P14086965575130786645.Spec : Prop :=
  ∀ n, P14086965575130786645.a n = (A080278 (n + 1) : ℚ)

end A080278

/-! ## A080278.P7258013224082246172

`∑{d}[3^val(n+1, 3), #]`
-/

namespace A080278.P7258013224082246172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A080278.P7258013224082246172

namespace A080278

/-- `∑{d}[3^val(n+1, 3), #]` -/
def P7258013224082246172.Spec : Prop :=
  ∀ n, (P7258013224082246172.a n : ℤ) = A080278 (n + 1)

end A080278

/-! ## A080278.P1708917909623770367

`Δ[3*a(floor(n/3))+n]` with `a(0)=0`
-/

namespace A080278.P1708917909623770367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  3 * f1 ⌊(n : ℚ) / 3⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A080278.P1708917909623770367

namespace A080278

/-- `Δ[3*a(floor(n/3))+n]` -/
def P1708917909623770367.Spec : Prop :=
  ∀ n, P1708917909623770367.a n = A080278 (n + 1)

end A080278

/-! ## A080278.P16481669024732585394

`floor(3^(val(n+1, 3)+1)/2)`
-/

namespace A080278.P16481669024732585394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ (SequenceMachineLib.valuation (n + 1) 3 + 1) : ℚ) / 2⌋

end

end A080278.P16481669024732585394

namespace A080278

/-- `floor(3^(val(n+1, 3)+1)/2)` -/
def P16481669024732585394.Spec : Prop :=
  ∀ n, P16481669024732585394.a n = A080278 (n + 1)

end A080278

/-! ## A080278.P1137375171634150254

`∑{d}[A038500(n+1), #]`
-/

namespace A080278.P1137375171634150254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A080278.P1137375171634150254

namespace A080278

/-- `∑{d}[A038500(n+1), #]` -/
def P1137375171634150254.Spec : Prop :=
  ∀ n, (P1137375171634150254.a n : ℤ) = A080278 (n + 1)

end A080278

/-! ## A080278.P3735707235454611954

`(A074724(n+1)-1)/2`
-/

namespace A080278.P3735707235454611954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074724 (n + 1) - 1 : ℚ) / 2

end

end A080278.P3735707235454611954

namespace A080278

/-- `(A074724(n+1)-1)/2` -/
def P3735707235454611954.Spec : Prop :=
  ∀ n, P3735707235454611954.a n = (A080278 (n + 1) : ℚ)

end A080278

/-! ## A080278.P10184724933213369517

`(A088838(n+1)-1)/3`
-/

namespace A080278.P10184724933213369517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088838 (n + 1) - 1 : ℚ) / 3

end

end A080278.P10184724933213369517

namespace A080278

/-- `(A088838(n+1)-1)/3` -/
def P10184724933213369517.Spec : Prop :=
  ∀ n, P10184724933213369517.a n = (A080278 (n + 1) : ℚ)

end A080278

/-! ## A080278.P15534993661569231990

`A000203(3^val(n+1, 3))`
-/

namespace A080278.P15534993661569231990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (3 ^ SequenceMachineLib.valuation (n + 1) 3)

end

end A080278.P15534993661569231990

namespace A080278

/-- `A000203(3^val(n+1, 3))` -/
def P15534993661569231990.Spec : Prop :=
  ∀ n, P15534993661569231990.a n = A080278 (n + 1)

end A080278

/-! ## A080278.P2709427632928248926

`A000203(gcd(n+1, (2*n+5)²²²))`
-/

namespace A080278.P2709427632928248926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd (n + 1) ((((2 * n + 5) ^ 2) ^ 2) ^ 2))

end

end A080278.P2709427632928248926

namespace A080278

/-- `A000203(gcd(n+1, (2*n+5)²²²))` -/
def P2709427632928248926.Spec : Prop :=
  ∀ n, P2709427632928248926.a n = A080278 (n + 1)

end A080278

/-! ## A080278.P16331109335889128516

`A000203(A038500(n+1))`
-/

namespace A080278.P16331109335889128516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A038500 (n + 1)).toNat

end

end A080278.P16331109335889128516

namespace A080278

/-- `A000203(A038500(n+1))` -/
def P16331109335889128516.Spec : Prop :=
  ∀ n, P16331109335889128516.a n = A080278 (n + 1)

end A080278

/-! ## A080278.P1259560678469821642

`A000593(A065331(n+1))`
-/

namespace A080278.P1259560678469821642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A065331 (n + 1)).toNat

end

end A080278.P1259560678469821642

namespace A080278

/-- `A000593(A065331(n+1))` -/
def P1259560678469821642.Spec : Prop :=
  ∀ n, P1259560678469821642.a n = A080278 (n + 1)

end A080278

/-! ## A080278.P11651760883773468446

`A072079(A000265(n+1))`
-/

namespace A080278.P11651760883773468446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072079 (A000265 (n + 1)).toNat

end

end A080278.P11651760883773468446

namespace A080278

/-- `A072079(A000265(n+1))` -/
def P11651760883773468446.Spec : Prop :=
  ∀ n, P11651760883773468446.a n = A080278 (n + 1)

end A080278

/-! ## A080278.P7875246154059321895

`A072079(A072963(n+1))`
-/

namespace A080278.P7875246154059321895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072079 (A072963 (n + 1)).toNat

end

end A080278.P7875246154059321895

namespace A080278

/-- `A072079(A072963(n+1))` -/
def P7875246154059321895.Spec : Prop :=
  ∀ n, P7875246154059321895.a n = A080278 (n + 1)

end A080278

/-! ## A080278.P10057455220750318939

`A072079(A097706(n+1))`
-/

namespace A080278.P10057455220750318939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072079 (A097706 (n + 1)).toNat

end

end A080278.P10057455220750318939

namespace A080278

/-- `A072079(A097706(n+1))` -/
def P10057455220750318939.Spec : Prop :=
  ∀ n, P10057455220750318939.a n = A080278 (n + 1)

end A080278

/-! ## A080278.P2444492494231854201

`A072079(A132740(n+1))`
-/

namespace A080278.P2444492494231854201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072079 (A132740 (n + 1)).toNat

end

end A080278.P2444492494231854201

namespace A080278

/-- `A072079(A132740(n+1))` -/
def P2444492494231854201.Spec : Prop :=
  ∀ n, P2444492494231854201.a n = A080278 (n + 1)

end A080278

/-! ## A080278.P14567200249198606668

`A072079(A248101(n+1))`
-/

namespace A080278.P14567200249198606668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072079 (A248101 (n + 1)).toNat

end

end A080278.P14567200249198606668

namespace A080278

/-- `A072079(A248101(n+1))` -/
def P14567200249198606668.Spec : Prop :=
  ∀ n, P14567200249198606668.a n = A080278 (n + 1)

end A080278

/-! ## A080278.P5010775787249342515

`A003969(A318666(n+1))`
-/

namespace A080278.P5010775787249342515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003969 (A318666 (n + 1)).toNat

end

end A080278.P5010775787249342515

namespace A080278

/-- `A003969(A318666(n+1))` -/
def P5010775787249342515.Spec : Prop :=
  ∀ n, P5010775787249342515.a n = A080278 (n + 1)

end A080278

/-! ## A080278.P10484898852211069545

`A000593(A370180(n+1))`
-/

namespace A080278.P10484898852211069545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A370180 (n + 1)).toNat

end

end A080278.P10484898852211069545

namespace A080278

/-- `A000593(A370180(n+1))` -/
def P10484898852211069545.Spec : Prop :=
  ∀ n, P10484898852211069545.a n = A080278 (n + 1)

end A080278

/-!
# A080280: Numbers n such that Pi^(n*e)-e^n is closer to its nearest integer than any value of Pi^(k*e)-e^k for 1 <= k < n.

The programs for A080280, there is no canonical definition to state claims against.
-/

/-! ## A080280.P10545474039845167330

`∑[A332899(7^n+1)]`
-/

namespace A080280.P10545474039845167330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (7 ^ n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080280.P10545474039845167330

/-!
# A080287: Successively larger gaps in Ulam numbers start at this Ulam number.

The programs for A080287, there is no canonical definition to state claims against.
-/

/-! ## A080287.P8213665169965109256

`A002858(A274522(n+1))`
-/

namespace A080287.P8213665169965109256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (A274522 (n + 1)).toNat

end

end A080287.P8213665169965109256

/-! ## A080287.P6360625219430739643

`A048951(A274522(n+1))/A020639(lcm(2, n+1))`
-/

namespace A080287.P6360625219430739643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048951 (A274522 (n + 1)).toNat : ℚ) / (A020639 (Nat.lcm 2 (n + 1)) : ℚ)

end

end A080287.P6360625219430739643

/-! ## A080287.P446099996622750860

`1/2*A000010(C(2, n)!)*A048951(A274522(n+1))`
-/

namespace A080287.P446099996622750860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000010 (Nat.factorial (Nat.choose 2 n)) : ℚ) * (A048951 (A274522 (n + 1)).toNat : ℚ)

end

end A080287.P446099996622750860

/-! ## A080287.P17327136324606850276

`A048951(A274522(n+1))/A020639(A029613(n))`
-/

namespace A080287.P17327136324606850276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048951 (A274522 (n + 1)).toNat : ℚ) / (A020639 (A029613 n).toNat : ℚ)

end

end A080287.P17327136324606850276

/-! ## A080287.P7419516508890009195

`A048951(A274522(n+1))/A020639(A048951(n+1))`
-/

namespace A080287.P7419516508890009195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048951 (A274522 (n + 1)).toNat : ℚ) / (A020639 (A048951 (n + 1)).toNat : ℚ)

end

end A080287.P7419516508890009195

/-!
# A080288: Successively larger gaps between Ulam numbers.

The programs for A080288, there is no canonical definition to state claims against.
-/

/-! ## A080288.P101680925260468723

`record[A068800(n+1)]`
-/

namespace A080288.P101680925260468723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080288.P101680925260468723

/-! ## A080288.P12849054833694867620

`record[A072832(n+1)]`
-/

namespace A080288.P12849054833694867620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080288.P12849054833694867620

/-! ## A080288.P114024997620965350

`A072832(A274522(n+1))`
-/

namespace A080288.P114024997620965350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072832 (A274522 (n + 1)).toNat

end

end A080288.P114024997620965350

/-! ## A080288.P13374308813604165984

`record[A002858(n+2)-A002858(n+1)]`
-/

namespace A080288.P13374308813604165984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 2) - A002858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080288.P13374308813604165984

/-! ## A080288.P6368750139514173217

`record[A072832(A028310(n))%(A001966(n)-n)]`
-/

namespace A080288.P6368750139514173217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072832 (A028310 n).toNat) (A001966 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080288.P6368750139514173217

/-!
# A080289: Integers n for which the ratio phi(n)/pi(n) is smaller than for any subsequent n. Here phi(n) is Euler's totient function and pi(n) is the number of primes that are at most n.

The programs for A080289, there is no canonical definition to state claims against.
-/

/-! ## A080289.P5356199924156529080

`∩[A036913(n+1), A372308(n+1)]`
-/

namespace A080289.P5356199924156529080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080289.P5356199924156529080

/-! ## A080289.P15402335309479020048

`∩[A165412(n+1), A293188(n+1)]`
-/

namespace A080289.P15402335309479020048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080289.P15402335309479020048

/-! ## A080289.P10896255892989422442

`∩[A178858(n+1), A293188(n+1)]`
-/

namespace A080289.P10896255892989422442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080289.P10896255892989422442

/-! ## A080289.P16454466193960148302

`∩[A178860(n+1), A293188(n+1)]`
-/

namespace A080289.P16454466193960148302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080289.P16454466193960148302

/-! ## A080289.P8274102807258647335

`∩[A178862(n+1), A293188(n+1)]`
-/

namespace A080289.P8274102807258647335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080289.P8274102807258647335

/-!
# A080290: a(n) = n^n * (n + 2 - (1/12) * (n^2-1)).

The programs for A080290, the canonical program `A080290.P6721025426834129453` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080290 has offset 1).

The definition of A080290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080290.P6721025426834129453

`(n+1)^(n+1)*(n+3-((n+1)²-1)/12)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080290

/-- `(n+1)^(n+1)*(n+3-((n+1)²-1)/12)` -/
def P6721025426834129453.Spec : Prop :=
  ∀ n, P6721025426834129453.a n = (A080290 (n + 1) : ℚ)

end A080290

/-! ## A080290.P3335494900069984815

`(n+1)^(n+1)*(n+3-1/12*((n+1)²-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080290.P3335494900069984815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℚ) * ((n + 3 : ℚ) - (1 : ℚ) / 12 * (((n + 1) ^ 2 : ℤ) - 1 : ℚ))

end

end A080290.P3335494900069984815

namespace A080290

/-- `(n+1)^(n+1)*(n+3-1/12*((n+1)²-1))` -/
def P3335494900069984815.Spec : Prop :=
  ∀ n, P3335494900069984815.a n = (A080290 (n + 1) : ℚ)

end A080290

/-!
# A080291: a(n) = (-1)^(n+1) * n^n * (n + (1/12) * (n^2-1)).

The programs for A080291, the canonical program `A080291.P10334432867598214554` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080291 has offset 1).

The definition of A080291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080291.P10334432867598214554

`(-1)^(n+2)*(n+1)^(n+1)*(n+1+((n+1)²-1)/12)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080291

/-- `(-1)^(n+2)*(n+1)^(n+1)*(n+1+((n+1)²-1)/12)` -/
def P10334432867598214554.Spec : Prop :=
  ∀ n, P10334432867598214554.a n = (A080291 (n + 1) : ℚ)

end A080291

/-! ## A080291.P15788677262820297180

`(-1)^(n+2)*(n+1)^(n+1)*(n+1+1/12*((n+1)²-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080291.P15788677262820297180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (n + 2) * ((n + 1) ^ (n + 1) : ℤ) : ℚ) * ((n + 1 : ℚ) + (1 : ℚ) / 12 * (((n + 1) ^ 2 : ℤ) - 1 : ℚ))

end

end A080291.P15788677262820297180

namespace A080291

/-- `(-1)^(n+2)*(n+1)^(n+1)*(n+1+1/12*((n+1)²-1))` -/
def P15788677262820297180.Spec : Prop :=
  ∀ n, P15788677262820297180.a n = (A080291 (n + 1) : ℚ)

end A080291

/-! ## A080291.P3824599098509240291

`(-(n+1))^n*∑[A155212(n)]/2`
-/

namespace A080291.P3824599098509240291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((-(n + 1 : ℤ)) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / 2

end

end A080291.P3824599098509240291

namespace A080291

/-- `(-(n+1))^n*∑[A155212(n)]/2` -/
def P3824599098509240291.Spec : Prop :=
  ∀ n, P3824599098509240291.a n = (A080291 (n + 1) : ℚ)

end A080291

/-!
# A080292: Orbit size of each tree A080293(n) under Donaghey's "Map M" Catalan automorphism.

The programs for A080292, there is no canonical definition to state claims against.
-/

/-! ## A080292.P11350800220033475167

`A080272(2*n)/A080977(n)`
-/

namespace A080292.P11350800220033475167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080272 (2 * n) : ℚ) / (A080977 n : ℚ)

end

end A080292.P11350800220033475167

/-!
# A080295: A014486-index of the branch-reduced binomial-mod-2 binary trees.

The programs for A080295, there is no canonical definition to state claims against.
-/

/-! ## A080295.P15285909000115756856

`A080296(n)+A080320(n)-A080321(n)`
-/

namespace A080295.P15285909000115756856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080296 n + (A080320 n - A080321 n)

end

end A080295.P15285909000115756856

/-!
# A080296: a(n) = A080301(A080293(n)).

The programs for A080296, there is no canonical definition to state claims against.
-/

/-! ## A080296.P1605539501014380907

`A080295(n)+A080321(n)-A080320(n)`
-/

namespace A080296.P1605539501014380907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080295 n + (A080321 n - A080320 n)

end

end A080296.P1605539501014380907

/-!
# A080298: Positions of A080299 in A014486.

The programs for A080298, there is no canonical definition to state claims against.
-/

/-! ## A080298.P4699963211153271755

`A057117(A080312(n))`
-/

namespace A080298.P4699963211153271755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057117 (A080312 n).toNat

end

end A080298.P4699963211153271755

/-! ## A080298.P3483614719087333857

`A130988(or(A080116(n), A083930(n)))`
-/

namespace A080298.P3483614719087333857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130988 (Int.lor (A080116 n) (A083930 n)).toNat

end

end A080298.P3483614719087333857

/-! ## A080298.P833628792656798260

`A130988(A083930(n)+A080116(n²))`
-/

namespace A080298.P833628792656798260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130988 (A083930 n + A080116 (n ^ 2)).toNat

end

end A080298.P833628792656798260

/-! ## A080298.P9551138857559618610

`A130988(A083930(n)-A328959(n+1))`
-/

namespace A080298.P9551138857559618610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130988 (A083930 n - A328959 (n + 1)).toNat

end

end A080298.P9551138857559618610

/-! ## A080298.P902427695917117643

`A130988(or(A083930(n), A179758(n+1)))`
-/

namespace A080298.P902427695917117643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130988 (Int.lor (A083930 n) (A179758 (n + 1))).toNat

end

end A080298.P902427695917117643

/-!
# A080299: A014486-encoding of plane binary trees (Stanley's d) whose interior zigzag-tree (Stanley's c, i.e., tree obtained by discarding the outermost edges of the binary tree) is isomorphic to a valid plane binary tree (Stanley's d).

The programs for A080299, there is no canonical definition to state claims against.
-/

/-! ## A080299.P11381802864607152071

`A080310(A014486(n))`
-/

namespace A080299.P11381802864607152071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080310 (A014486 n).toNat

end

end A080299.P11381802864607152071

/-! ## A080299.P16114115098506311342

`A080303(A194045(n))/2`
-/

namespace A080299.P16114115098506311342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080303 (A194045 n).toNat : ℚ) / 2

end

end A080299.P16114115098506311342

/-! ## A080299.P4333548830494391829

`2*A080303(A194045(n)+1)`
-/

namespace A080299.P4333548830494391829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080303 (A194045 n + 1).toNat

end

end A080299.P4333548830494391829

/-! ## A080299.P8321445281334243154

`A080303(2*A014486(n))/2`
-/

namespace A080299.P8321445281334243154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080303 (2 * A014486 n).toNat : ℚ) / 2

end

end A080299.P8321445281334243154

/-! ## A080299.P9011149612007155510

`record[A080303(2*n)/2*A080116(n)]`
-/

namespace A080299.P9011149612007155510
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080303 (2 * n) : ℚ) / 2 * (A080116 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080299.P9011149612007155510

